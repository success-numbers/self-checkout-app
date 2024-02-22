import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:selfcheckout/src/config/route_config.dart';

import '../../config/theme_settings.dart';
import '../../entity/line_item_entity.dart';
import '../../widgets/store_user_widget.dart';
import '../../widgets/tabular_widget.dart';
import '../../widgets/widgets.dart';
import '../home_med/bloc/med_bloc.dart';
import '../item_lookup/bloc/item_lookup_bloc.dart';
import '../item_lookup/item_lookup.dart';
import '../payment_screen/payment_screen.dart';
import 'bloc/self_checkout_bloc.dart';

class SelfCheckoutScreen extends StatelessWidget {
  const SelfCheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) =>
                SelfCheckoutBloc()
                  ..add(InitializeCartEvent())
                  ..add(AddCustomerToTransEvent(customer: BlocProvider.of<MedBloc>(context).state.currentCustomer!))
        ),
        BlocProvider(
            create: (context) =>
                ItemLookupBloc(itemRepository: RepositoryProvider.of(context))
                  ..add(InitializeItemLookupEvent())),
      ],
      child: SafeArea(
        child: Scaffold(
          backgroundColor: AppColor.background,
          body: BlocBuilder<MedBloc, MedState>(
            builder: (context, state) {
              return Column(
                children: [
                  Expanded(child: BlocBuilder<MedBloc, MedState>(
                    builder: (context, state) {
                      return LayoutBuilder(builder: (context, constrain) {
                        if (state.step == MedListStep.payment) {
                          return const PaymentScreen();
                        }
                        return Column(
                          children: [
                            MedStoreUserWidget(
                              onPressed: () {
                                if (state.step == MedListStep.cart) {
                                  showDialog(
                                      context: context,
                                      builder: (ctx) {
                                        return AlertDialog(
                                          content: const Text(
                                            "Do you want to exit cart?",
                                            style: TextStyle(color: AppColor.textColorPrimary),
                                          ),
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(15.0),
                                          ),
                                          backgroundColor: AppColor.background2,
                                          actions: [
                                            TextButton(
                                                onPressed: () {
                                                  Navigator.of(context).pushNamedAndRemoveUntil(RouteConfig.homeScreenMed, (route) => false);
                                                },
                                                child: const Text("Yes", style: TextStyle(color: AppColor.textColorPrimary))
                                            ),
                                            TextButton(
                                                onPressed: () => Navigator.maybePop(context),
                                                child: const Text("No", style: TextStyle(color: AppColor.textColorPrimary))
                                            )
                                          ],
                                        );
                                      }
                                  );
                                } else if (state.step == MedListStep.payment) {
                                  BlocProvider.of<MedBloc>(context).add(
                                      UpdateActionStep(step: MedListStep.cart));
                                } else {
                                  Navigator.maybePop(context);
                                }
                              },
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                        child: Container(
                                      decoration: const BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(15))),
                                      child: TabContainer(
                                        tabs: const [
                                          TabHeader(
                                            header: "Cart",
                                            icon: Icons.shopping_cart_outlined,
                                            color: AppColor.textColorPrimary,
                                          ),
                                          TabHeader(
                                            header: "Item Lookup",
                                            icon: Icons.search_rounded,
                                            color: AppColor.textColorPrimary,
                                          ),
                                        ],
                                        isStringTabs: false,
                                        colors: const [
                                          AppColor.background2,
                                          AppColor.background2
                                        ],
                                        radius: 15,
                                        children: [
                                          const CartDetails(),
                                          ItemLookup(),
                                        ],
                                      ),
                                    )),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    SizedBox(
                                        width: 300,
                                        child: BlocBuilder<SelfCheckoutBloc, SelfCheckoutState>(
                                          builder: (context, state){
                                            return Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                const CustomerCard(),
                                                const SizedBox(height: 10,),
                                                SizedBox(height: 100, child: OfferButton(),),
                                                const Spacer(),
                                                TransSummary(
                                                  itemsCount: state.trans.lineItems.length,
                                                  totalPrice: state.trans.lineItems.fold(0.0, (sum, item) => sum + item.totalBasePrice!),
                                                ),
                                                SizedBox(
                                                  height: 80,
                                                  width: double.infinity,
                                                  child: CustomButton(
                                                      borderRadius: 10,
                                                      padding: 15,
                                                      text: "Proceed to Pay",
                                                      fontSize: 23,
                                                      textColor: AppColor.background,
                                                      buttonColor: state.trans.lineItems.isNotEmpty ? AppColor.color3 : Colors.grey,
                                                      onPressed: () {
                                                        if(state.trans.lineItems.isNotEmpty) {
                                                          BlocProvider.of<MedBloc>(context).add(UpdateActionStep(step: MedListStep.payment));
                                                        } else {

                                                        }
                                                        // Navigator.of(context)
                                                        //     .pushNamed(RouteConfig.paymentScreen);
                                                      }
                                                  ),
                                                )
                                              ],
                                            );
                                          },
                                        )
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        );
                      });
                    },
                  ))
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}

class TabHeader extends StatelessWidget {
  final String header;
  final IconData icon;
  final Color color;
  const TabHeader(
      {super.key,
      required this.header,
      required this.icon,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, top: 10, bottom: 10, right: 10),
      child: Row(
        children: [
          Icon(
            icon,
            color: color,
          ),
          const SizedBox(
            width: 10,
          ),
          Text(header,
              style: TextStyle(
                  color: color,
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                  decoration: TextDecoration.none))
        ],
      ),
    );
  }
}

class CartDetails extends StatelessWidget {
  const CartDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 15),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                  child: Column(
                children: [
                  const SizedBox(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                            flex: 8,
                            child: Text("Item",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    color: AppColor.textColorPrimary,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 20,
                                    decoration: TextDecoration.none))),
                        Expanded(
                            flex: 2,
                            child: Text("Price",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    color: AppColor.textColorPrimary,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 20,
                                    decoration: TextDecoration.none))),
                        Expanded(
                            flex: 2,
                            child: Text("Qty",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: AppColor.textColorPrimary,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 20,
                                    decoration: TextDecoration.none))),
                        Expanded(
                            flex: 2,
                            child: Text("Total",
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                    color: AppColor.textColorPrimary,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 20,
                                    decoration: TextDecoration.none))),
                        SizedBox(
                          width: 40,
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Divider(
                    height: 5,
                    thickness: 2,
                    color: AppColor.textColorPrimary,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  BlocBuilder<SelfCheckoutBloc, SelfCheckoutState>(
                      buildWhen: (prevState, currState) {
                    return prevState != currState;
                  }, builder: (context, state) {
                    return Expanded(
                        child: ListView.separated(
                      itemCount: state.trans.lineItems.length,
                      itemBuilder: (ctx, idx) {
                        // return Container();
                        return ItemInfo(
                          lineItem: state.trans.lineItems[idx],
                        );
                      },
                      separatorBuilder: (BuildContext context, int index) {
                        return const SizedBox(
                          height: 15,
                        );
                      },
                    ));
                  })
                ],
              )),
              SizedBox(
                height: 50,
                width: 130,
                child: CustomButton(
                    borderRadius: 8,
                    padding: 2,
                    text: "Exit Cart",
                    fontSize: 16,
                    textColor: AppColor.textColorSecondary,
                    buttonColor: AppColor.color6,
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (ctx) {
                            return AlertDialog(
                              content: const Text(
                                "Do you want to exit cart?",
                                style: TextStyle(color: AppColor.textColorPrimary),
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              backgroundColor: AppColor.background2,
                              actions: [
                                TextButton(
                                    onPressed: () {
                                      Navigator.of(context).pushNamedAndRemoveUntil(RouteConfig.homeScreenMed, (route) => false);
                                    },
                                    child: const Text("Yes", style: TextStyle(color: AppColor.textColorPrimary),)),
                                TextButton(
                                    onPressed: () =>
                                        Navigator.maybePop(context),
                                    child: const Text("No", style: TextStyle(color: AppColor.textColorPrimary)))
                              ],
                            );
                          });
                    }),
              )
            ],
          ),
          Opacity(
            opacity: 0.3,
            child: SizedBox(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    'assets/icons/barcode_scanner.svg',
                    colorFilter: const ColorFilter.mode(
                        AppColor.textColorTertiary, BlendMode.srcIn),
                    height: 100,
                  ),
                  const Text("Please scan your item to add into cart",
                      style: TextStyle(
                          color: AppColor.textColorTertiary,
                          fontWeight: FontWeight.w700,
                          fontSize: 18,
                          decoration: TextDecoration.none))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class ItemInfo extends StatelessWidget {
  final LineItemEntity lineItem;
  const ItemInfo({super.key, required this.lineItem});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // Item Name and image
          Container(
            width: 80,
            height: 80,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                color: AppColor.color2),
            clipBehavior: Clip.hardEdge,
            child: Image.network(
              "${lineItem.itemThumbnail}",
              fit: BoxFit.fill,
              width: double.maxFinite,
            )
          ),
          const SizedBox(
            width: 5,
          ),
          Expanded(
              //Item Details
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                            flex: 6,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(lineItem.itemDescription!,
                                    overflow: TextOverflow.ellipsis,
                                    style: const TextStyle(
                                        color: AppColor.textColorPrimary,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 17,
                                        decoration: TextDecoration.none)),
                                const SizedBox(height: 10,),
                                Text(lineItem.itemId!,
                                    overflow: TextOverflow.ellipsis,
                                    style: const TextStyle(
                                        color: AppColor.textColorTertiary,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 15,
                                        decoration: TextDecoration.none))
                              ],
                            )),
                        const SizedBox(width: 5,),
                        Expanded(
                            flex: 2,
                            child: Text(lineItem.unitPrice!.toStringAsFixed(2),
                                textAlign: TextAlign.start,
                                style: const TextStyle(
                                    color: AppColor.textColorPrimary,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 17,
                                    decoration: TextDecoration.none))),
                        Expanded(
                            flex: 2,
                            child: Text(lineItem.quantity!.toStringAsFixed(2),
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                    color: AppColor.textColorPrimary,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 17,
                                    decoration: TextDecoration.none))),
                        Expanded(
                            flex: 2,
                            child: Text(lineItem.totalBasePrice!.toStringAsFixed(2),
                                textAlign: TextAlign.end,
                                style: const TextStyle(
                                    color: AppColor.textColorPrimary,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 17,
                                    decoration: TextDecoration.none))),
                      ],
                    )
                  ),
                  const Divider(
                    color: AppColor.textColorTertiary,
                    thickness: 2,
                    height: 5,
                  )
                ],
              )
          ),
          BlocBuilder<MedBloc, MedState>(builder: (context, state) {
            return Padding(
              padding: EdgeInsets.only(left: 15),
              child: Material(
                color: Colors.transparent,
                child: IconButton(
                    onPressed: () {
                      if (state.employeeLoggedIn) {
                        BlocProvider.of<SelfCheckoutBloc>(context)
                            .add(RemoveItemFromCartEvent(lineItem: lineItem));
                      } else {
                        BlocProvider.of<MedBloc>(context).add(
                            ShowErrorPromptEvent(
                                message: "Employee LogIn is required."));
                      }
                    },
                    icon: Icon(
                      Icons.highlight_remove_rounded,
                      color: state.employeeLoggedIn ? Colors.red : Colors.grey,
                    )),
              ),
            );
          })
        ],
      ),
    );
  }
}


class TransSummary extends StatelessWidget {
  final int itemsCount;
  final double totalPrice;
  const TransSummary({super.key, required this.itemsCount, required this.totalPrice});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Subtotal: ($itemsCount items)", style: TextStyle(color: AppColor.textColorPrimary, fontWeight: FontWeight.bold, fontSize: 20, decoration: TextDecoration.none)),
            Text(totalPrice.toStringAsFixed(2), style: TextStyle(color: AppColor.textColorPrimary, fontWeight: FontWeight.bold, fontSize: 40, decoration: TextDecoration.none)),
          ],
        )
    );
  }
}
class CustomButton extends StatelessWidget {

  final double borderRadius;
  final double padding;
  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  final Color buttonColor;
  final Color textColor;
  final void Function()? onPressed;

  const CustomButton({
    super.key,
    required this.borderRadius,
    required this.padding,
    required this.text,
    required this.textColor,
    this.fontSize = 20,
    this.fontWeight = FontWeight.bold,
    required this.buttonColor,
    required this.onPressed
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: buttonColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: TextButton(
        onPressed: onPressed,
        child: Padding(
            padding: EdgeInsets.all(padding),
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                text,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: textColor,
                  fontWeight: fontWeight,
                  fontSize: fontSize,
                ),
                textAlign: TextAlign.center,
              ),
            )
        ),
      ),
    );
  }
}

class OfferButton extends StatefulWidget {
  @override
  _OfferButtonState createState() => _OfferButtonState();
}

class _OfferButtonState extends State<OfferButton> {
  bool isOfferApplied = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AnimatedPositioned(
          duration: Duration(milliseconds: 200),
          top: 0.0,
          left: isOfferApplied ? 170.0 : 0.0,
          right: isOfferApplied ? 0.0 : 100.0,
          child: CustomButton(
              borderRadius: 10,
              padding: 15,
              text: isOfferApplied ? "Apply" : "Show Offers",
              fontSize: 20,
              textColor: AppColor.textColorPrimary,
              buttonColor: AppColor.color2,
              onPressed: (){
                setState(() {
                  isOfferApplied = !isOfferApplied;
                });
              }
          ),
        ),
        AnimatedPositioned(
            duration: Duration(milliseconds: 200),
            top: 0.0,
            // left: isOfferApplied ? 0.0 : 100.0,
            left: isOfferApplied ? 0.0 : -300.0,
            right: isOfferApplied ? 130 : 300,
            child: CustomButton(
                borderRadius: 10,
                padding: 18,
                text: "PRM01234568",
                fontSize: 15,
                textColor: AppColor.textColorPrimary,
                buttonColor: AppColor.background2,
                onPressed: (){}
            )
        ),
      ],
    );
  }
}


class CustomerCard extends StatelessWidget {
  const CustomerCard({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MedBloc, MedState>(
        builder: (context, state){
          return SizedBox(
            height: 200,
            child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  gradient: const LinearGradient(
                    colors: [
                      AppColor.color7,
                      AppColor.color8
                    ], // Adjust the colors of the gradient
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(state.currentCustomer!.name!, style: TextStyle(color: AppColor.textColorSecondary, fontWeight: FontWeight.bold, fontSize: 25)),
                              SizedBox(height: 15,),
                              Text("Loyalty Points: ${state.currentCustomer!.loyalyticBalance}", style: TextStyle(color: AppColor.textColorSecondary, fontWeight: FontWeight.normal, fontSize: 15)),
                              Expanded(
                                  child: Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Text(
                                        formatText(state.currentCustomer!.loyalyticId!),
                                        style: TextStyle(color: AppColor.textColorSecondary, fontWeight: FontWeight.bold, fontSize: 15)),
                                  )
                              ),
                            ],
                          )
                      ),
                      ClipOval(
                        clipBehavior: Clip.hardEdge,
                        child: Container(
                          width: 60,
                          height: 60,
                          color: AppColor.background2,
                          child: Image.asset(
                            "assets/icons/person_icon.png",
                            fit: BoxFit.fitWidth,
                            alignment: Alignment.center,
                          ),
                        ),
                      )
                    ],
                  ),
                )
            ),
          );
        }
    );
  }

  String formatText(String originalText) {
    // Your custom formatting logic here
    // For example, let's add a dash after every two characters
    int chunkSize = 4;
    List<String> chunks = [];
    int i = 0;
    for (int j = 1 ; i < originalText.length - chunkSize && j < 4; i += chunkSize, j++) {
      chunks.add(originalText.substring(i, i + chunkSize));
    }
    if(i < originalText.length){
      chunks.add(originalText.substring(i));
    }
    return chunks.join('   ');
  }
}
