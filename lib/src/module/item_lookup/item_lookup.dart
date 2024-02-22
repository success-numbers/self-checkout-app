import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:selfcheckout/src/widgets/my_loader.dart';
import '../../config/theme_settings.dart';
import '../../widgets/custom_search_text_field.dart';
import '../../widgets/store_user_widget.dart';
import '../home_med/bloc/med_bloc.dart';
import '../self_checkout_med/bloc/self_checkout_bloc.dart';
import 'bloc/item_lookup_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ItemLookup extends StatelessWidget {
  TextEditingController itemSearchController = TextEditingController();

  ItemLookup({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(15),
      child: BlocBuilder<MedBloc, MedState>(
        builder: (context, state) {
          if (state.employeeLoggedIn) {
            return Column(
              children: [
                Card(
                  color: AppColor.background2,
                  elevation: 0,
                  child: CustomSearchTextField(
                    label: '',
                    hint: 'Please enter item id',
                    searchButtonColor: AppColor.color3,
                    controller: itemSearchController,
                    onSearchPressed: (){
                      BlocProvider.of<ItemLookupBloc>(context).add(ItemLookupByItemIdEvent(itemId: itemSearchController.text));
                    },
                  ),
                ),
                const SizedBox(height: 15,),
                Expanded(
                    child: BlocBuilder<ItemLookupBloc, ItemLookupState>(
                      builder: (context, state) {
                        return AnimatedSwitcher(
                          duration: Duration(milliseconds: 200),
                          child: state.status == ItemLookupStatus.loading ?
                          const Center(
                            child: MyLoader(
                              color: AppColor.primary,
                            ),
                          )
                          : GridView.builder(
                            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                              maxCrossAxisExtent: 200.0,
                              mainAxisSpacing: 8.0,
                              crossAxisSpacing: 8.0,
                              childAspectRatio: 0.85,
                            ),
                            itemCount: state.searchItems.length,
                            itemBuilder: (BuildContext ctx, int idx) {
                              return Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(15)),
                                    color: AppColor.background,
                                ),
                                padding: EdgeInsets.all(10),
                                width: 80,
                                child: Column(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        decoration: const BoxDecoration(
                                          borderRadius: BorderRadius.all(Radius.circular(10)),
                                          color: AppColor.background,
                                        ),
                                        clipBehavior: Clip.hardEdge,
                                        child: Image.network(
                                          "${state.searchItems[idx].itemThumbnail}",
                                          fit: BoxFit.fill,
                                          width: double.maxFinite,
                                          loadingBuilder: (BuildContext context, Widget child, ImageChunkEvent? loadingProgress) {
                                            if (loadingProgress == null) {
                                              // If the image is fully loaded, return the original child (the image)
                                              return child;
                                            } else {
                                              // If the image is still loading, return a loading indicator
                                              return CircularProgressIndicator(
                                                value: loadingProgress.expectedTotalBytes != null
                                                    ? loadingProgress.cumulativeBytesLoaded / (loadingProgress.expectedTotalBytes ?? 1)
                                                    : null,
                                              );
                                            }
                                          },
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 5,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Expanded(
                                            flex: 7,
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                    state.searchItems[idx].itemDescription!,
                                                    overflow: TextOverflow.ellipsis,
                                                    style: TextStyle(color: AppColor.textColorPrimary, fontWeight: FontWeight.w700, fontSize: 13, decoration: TextDecoration.none)
                                                ),
                                                Text(
                                                    state.searchItems[idx].itemId!,
                                                    overflow: TextOverflow.ellipsis,
                                                    style: TextStyle(color: AppColor.textColorPrimary, fontWeight: FontWeight.w700, fontSize: 11, decoration: TextDecoration.none)
                                                )
                                              ],
                                            )
                                        ),
                                        Text(state.searchItems[idx].unitPrice!.toStringAsFixed(2), style: TextStyle(color: AppColor.textColorPrimary, fontWeight: FontWeight.w700, fontSize: 15, decoration: TextDecoration.none))
                                      ],
                                    ),
                                    SizedBox(height: 10,),
                                    SizedBox(
                                      width: double.infinity,
                                      child: ElevatedButton(
                                        onPressed: () async {
                                          showDialog(
                                              context: context,
                                              barrierDismissible: false,
                                              builder: (ctx) {
                                                return Center(child: CircularProgressIndicator(color: AppColor.color3,),);
                                              }
                                          );
                                          await Future.delayed(const Duration(seconds: 1));
                                          Navigator.of(context).pop();
                                          FToast().init(context).showToast(
                                              child: Container(
                                                padding: EdgeInsets.all(15),
                                                decoration: BoxDecoration(color: Colors.lightGreen, borderRadius: BorderRadius.circular(10)),
                                                child: Text("Item added to cart!", style: TextStyle(color: AppColor.textColorSecondary),),
                                              )
                                          );
                                          BlocProvider.of<SelfCheckoutBloc>(context).add(AddItemToCartEvent(lineItem: state.searchItems[idx]));
                                        },
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: AppColor.color3,
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(10.0), // Adjust border radius as needed
                                          ),
                                        ),
                                        child: const Text("Add to Cart"),
                                      )
                                    )
                                  ],
                                ),
                              );
                            }
                          )
                        );
                      },
                    )
                )
              ],
            );
          } else {
            return const SizedBox(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.lock_outline_rounded,
                    color: AppColor.textColorTertiary,
                    size: 60,
                  ),
                  Text("Employee log in required", style: TextStyle(color: AppColor.textColorTertiary, fontWeight: FontWeight.w600, fontSize: 25, decoration: TextDecoration.none)),
                  SizedBox(height: 15,),
                  /*ElevatedButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (ctx) {
                          return const EmployeeLoginScreen();
                        }
                      );
                    },
                    child: Text("Log In")
                  )*/
                ],
              ),
            );
          }
        },
      ),
    );
  }
}