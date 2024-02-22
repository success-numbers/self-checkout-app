import 'dart:convert';

import 'package:logging/logging.dart';
import 'package:selfcheckout/src/database/db_provider.dart';
import 'package:selfcheckout/src/entity/line_item_entity.dart';
import 'package:selfcheckout/src/util/helper/rest_api.dart';


class ItemRepository with DatabaseProvider {
  final log = Logger('ItemRepository');
  final RestApiClient restClient;

  ItemRepository({required this.restClient});
  
  Future<LineItemEntity> searchItemByItemId(String itemId) async{
    try{
      var rawResp = await restClient.get(
          restOptions: RestOptions(
            path: "/mock/getItemById?searchId=$itemId",
            queryParameters: {'searchId' : itemId}
          ));
      if(rawResp.statusCode == 200){
        LineItemEntity lineItem = LineItemEntity.fromJson(json.decode(rawResp.body));
        return lineItem;
      } else {
        throw "${rawResp.statusCode}";
      }
    }catch(e){
      log.severe('Error while fetching item: ', e.toString());
      rethrow;
    }
  }
}