import 'package:isar/isar.dart';
import 'package:logging/logging.dart';

import '../config/store_config_manager.dart';
import '../database/db_provider.dart';
import '../entity/pos/entity.dart';
import '../model/api/api_sequence_response.dart';
import '../util/helper/rest_api.dart';

class SequenceRepository with DatabaseProvider {
  final log = Logger('BusinessRepository');

  final RestApiClient restClient;

  SequenceRepository({required this.restClient});

  Future<SequenceEntity> getNextSequence(SequenceType type) async {
    var date = DateTime.now();
    int seq = int.parse('${date.year}'
        '${date.month.toString().padLeft(2, '0')}'
        '${date.day.toString().padLeft(2, '0')}'
        '${date.hour.toString().padLeft(2, '0')}'
        '${date.minute.toString().padLeft(2, '0')}'
        '${date.second.toString().padLeft(2, '0')}');

    if (type == SequenceType.transaction) {
      try {
        var response = await restClient.get(
            restOptions: RestOptions(
                path:
                "/seq/${StoreConfigCacheManager.storeId}/${StoreConfigCacheManager.workstationId}"));
        if (response.statusCode == 200) {
          ApiSequenceResponse seqRes = ApiSequenceResponse.fromJson(
              restClient.parsedResponse(response));
          seq = seqRes.seqValue!;
        }
      }catch(e){
        log.severe("sequence could not be fetched.", e);
      }
    }

    await db.writeTxn(() async {
      if (type == SequenceType.transaction) {
        await db.sequenceEntitys.put(SequenceEntity(
            name: type,
            nextSeq: seq,
            pattern: '{store}-{wkst}-{counter}',
            createAt: DateTime.now())
          ..lastSeqCreatedAt = DateTime.now());
      } else {
        var seq = await db.sequenceEntitys.getByName(type);
        if (seq != null) {
          seq.nextSeq++;
          seq.lastSeqCreatedAt = DateTime.now();
          await db.sequenceEntitys.put(seq);
        } else {
          String pattern = '{uuid}';

          await db.sequenceEntitys.put(SequenceEntity(
              name: type,
              nextSeq: 1,
              pattern: pattern,
              createAt: DateTime.now())
            ..lastSeqCreatedAt = DateTime.now());
        }
      }
    });
    // Use the pattern to generate the sequence
    var nextSeq = await db.sequenceEntitys.getByName(type);
    return nextSeq!;
  }

  Future<void> saveSequence(SequenceEntity sequenceEntity) async {
    await db.writeTxn(() async {
      sequenceEntity.lastChangedAt = DateTime.now();
      sequenceEntity.syncState = 200;
      await db.sequenceEntitys.put(sequenceEntity);
    });
  }

  Future<List<SequenceEntity>> getAllSequences() async {
    List<SequenceType> types = SequenceType.values;
    List<SequenceEntity> sequences = [];
    await db.writeTxn(() async {
      var allSeq = await db.sequenceEntitys.where().findAll();
      for (var type in types) {
        bool exist = false;
        for (var seq in allSeq) {
          if (seq.name.value == type.value) {
            sequences.add(seq);
            exist = true;
            break;
          }
        }
        if (!exist) {
          String pattern = '{uuid}';

          if (type == SequenceType.transaction) {
            pattern = '{store}-{wkst}-{counter}';
          }

          var tmp = SequenceEntity(
              name: type,
              nextSeq: 1,
              pattern: pattern,
              createAt: DateTime.now());
          await db.sequenceEntitys.putByName(tmp);
          sequences.add(tmp);
        }
      }
    });

    return sequences;
  }
}
