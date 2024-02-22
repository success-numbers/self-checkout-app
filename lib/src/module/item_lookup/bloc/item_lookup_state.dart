part of 'item_lookup_bloc.dart';

enum ItemLookupStatus {
  initial,
  loading,
  loaded,
  error,
}

class ItemLookupState {
  List<LineItemEntity> searchItems;
  ItemLookupStatus status;

  ItemLookupState({
    this.searchItems = const [],
    this.status = ItemLookupStatus.initial
  });

  ItemLookupState copyWith({
    List<LineItemEntity>? searchItems,
    ItemLookupStatus? status
  }){
    return ItemLookupState(
      searchItems: searchItems ?? this.searchItems,
      status: status ?? this.status
    );
  }
}