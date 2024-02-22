import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../entity/line_item_entity.dart';
import '../../../repositories/item_repository.dart';

part 'item_lookup_event.dart';
part 'item_lookup_state.dart';

class ItemLookupBloc extends Bloc<ItemLookupEvent, ItemLookupState>{
  final ItemRepository itemRepository;

  ItemLookupBloc({required this.itemRepository}) : super(ItemLookupState()) {
    on<InitializeItemLookupEvent>(_onInitializeItemLookupEvent);
    on<ItemLookupByItemIdEvent>(_onItemLookupByItemIdEvent);
  }

  void _onInitializeItemLookupEvent(InitializeItemLookupEvent event, Emitter<ItemLookupState> emit){
    LineItemEntity lineItemEntity1 = LineItemEntity(
      itemDescription: "True Honey Manuka Mgo 1500 - 250 Gm",
      itemId: "001714961978",
      unitPrice: 50.00,
      unitCost: 50.00,
      baseUnitPrice: 50.00,
      quantity: 1,
      totalBasePrice: 50.00,
      totalBaseUnitPrice: 50.00,
      netAmount: 50.00,
      grossAmount: 50.00,
      category: "Skincare",
      groupId: "Moisturizers",
      itemThumbnail: "https://www.nahdionline.com/media/catalog/product/1/0/102085631_mainimage.jpg?optimize=high&bg-color=255,255,255&fit=bounds&height=454&width=454&canvas=454:454"
    );
    LineItemEntity lineItemEntity2 = LineItemEntity(
      itemDescription: "Accez Comb Set",
      itemId: "001714961979",
      unitPrice: 64.75,
      unitCost: 64.75,
      baseUnitPrice: 64.75,
      quantity: 1,
      totalBasePrice: 64.75,
      totalBaseUnitPrice: 64.75,
      netAmount: 64.75,
      grossAmount: 64.75,
      category: "Serum",
      groupId: "Moisturizers",
      itemThumbnail: "https://www.nahdionline.com/media/catalog/product/a/c/accez-comb-set-3-pcs_1_1.jpg?optimize=high&bg-color=255,255,255&fit=bounds&height=454&width=454&canvas=454:454"
    );
    LineItemEntity lineItemEntity3 = LineItemEntity(
        itemDescription: "Beurer Clean Facial Brush",
        itemId: "001714986694",
        unitPrice: 27.50,
        unitCost: 27.50,
        baseUnitPrice: 27.50,
        quantity: 1,
        totalBasePrice: 27.50,
        netAmount: 27.50,
        totalBaseUnitPrice: 27.50,
        grossAmount: 27.50,
        category: "Mask",
        groupId: "Moisturizers",
        itemThumbnail: "https://www.nahdionline.com/media/catalog/product/b/e/beurer-clean-facial-brush-fc-45-1100x1100.jpg?optimize=high&bg-color=255,255,255&fit=bounds&height=454&width=454&canvas=454:454"
    );
    emit(state.copyWith(searchItems: [lineItemEntity1, lineItemEntity2, lineItemEntity3]));
  }

  void _onItemLookupByItemIdEvent(ItemLookupByItemIdEvent event, Emitter<ItemLookupState> emit) async{
      emit(state.copyWith(status: ItemLookupStatus.loading));
      try{
        LineItemEntity lineItem = await itemRepository.searchItemByItemId(event.itemId);
        emit(state.copyWith(searchItems: [lineItem], status: ItemLookupStatus.loaded));
      }catch(e){
        emit(state.copyWith(status: ItemLookupStatus.initial));
      }
  }
}
