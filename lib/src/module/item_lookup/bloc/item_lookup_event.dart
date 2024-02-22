part of 'item_lookup_bloc.dart';

abstract class ItemLookupEvent {}

class InitializeItemLookupEvent extends ItemLookupEvent{}

class ItemLookupByItemIdEvent extends ItemLookupEvent{
  String itemId;

  ItemLookupByItemIdEvent({required this.itemId});
}