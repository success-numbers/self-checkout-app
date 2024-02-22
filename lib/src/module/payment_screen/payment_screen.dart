import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:selfcheckout/src/module/self_checkout_med/self_checkout_screen.dart';

import '../../config/theme_settings.dart';
import '../../entity/line_item_entity.dart';
import '../../entity/trn_payment_line_item.dart';
import '../../widgets/store_user_widget.dart';
import '../../widgets/widgets.dart';
import '../home_med/bloc/med_bloc.dart';
import '../receipt/receipt_screen.dart';
import '../self_checkout_med/bloc/self_checkout_bloc.dart';
import 'bloc/payment_bloc.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PaymentBloc(
        loadingProgressBloc: RepositoryProvider.of(context),
        checkoutBloc: RepositoryProvider.of(context),
        medRepo: RepositoryProvider.of(context)
      )..add(InitializeTenderEvent()),
      child: BlocConsumer<PaymentBloc, PaymentState>(
        listener: (context, state) {},
        builder: (context, state) {
          return Column(
            children: [
              // if(state.loaderState != PaymentLoaderState.inprogress)
              Expanded(
                child: LayoutBuilder(builder: (context, constrain) {
                  if (state.paymentProcessStep == PaymentProcessStep.pay) {
                    return Stack(
                      children: [
                        Column(
                          children: [
                            MedStoreUserWidget(
                              onPressed: () {
                                BlocProvider.of<MedBloc>(context)
                                  ..add(EmployeeLoggedEvent(employeeLoggedIn: false))
                                  ..add(UpdateActionStep(step: MedListStep.cart));
                              },
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Row(
                                  children: [
                                    const Expanded(
                                      flex: 7,
                                      child: TenderOptions(),
                                    ),
                                    const VerticalDivider(
                                      color: AppColor.color1,
                                      width: 10,
                                      thickness: 1,
                                    ),
                                    Expanded(
                                      flex: 3,
                                      child: BlocBuilder<SelfCheckoutBloc, SelfCheckoutState>(
                                        builder: (context, cartState){
                                          return Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Expanded(child: OrderCartSummary(lineItems: cartState.trans.lineItems?? [],)),
                                              TransSummary(
                                                itemsCount: cartState.trans.lineItems.length,
                                                totalPrice: cartState.trans.lineItems.fold(0.0, (sum, item) => sum + item.totalBasePrice!),
                                              ),
                                              SizedBox(
                                                height: 80,
                                                width: double.infinity,
                                                child: CustomButton(
                                                    borderRadius: 15,
                                                    padding: 15,
                                                    text: "Pay",
                                                    textColor: AppColor.background2,
                                                    buttonColor: state.tender?.tenderId != null ? AppColor.color3 : Colors.grey,
                                                    onPressed: () {
                                                      // if(state.tender?.tenderId != null) {
                                                        BlocProvider.of<PaymentBloc>(context)
                                                          .add(PayActionEvent(trans: cartState.trans));
                                                      // }
                                                    }),
                                              )
                                            ],
                                          );
                                        },
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        if (state.loaderState == PaymentLoaderState.inprogress)
                          Container(
                            width: double.maxFinite,
                            height: double.maxFinite,
                            color: Colors.black45,
                            child: AlertDialog(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    10.0), // Adjust the radius value as needed
                              ),
                              content: PaymentCardLoader(
                                amountDesc: state.cartTotal.toStringAsFixed(2),
                              ),
                            ),
                          ),
                      ],
                    );
                  }
                  if (state.paymentProcessStep == PaymentProcessStep.complete) {
                    return ReceiptScreen();
                  }
                  return Container();
                }),
              ),
            ],
          );
        },
      ),
    );
  }
}

class PaymentCardLoader extends StatelessWidget {
  final double containerHeight;
  final double containerWidth;
  final double iconHeight;
  final double rupayIconHeight;
  final String amountDesc;

  const PaymentCardLoader(
      {Key? key,
      this.containerHeight = 240,
      this.containerWidth = 360,
      this.iconHeight = 30,
      this.rupayIconHeight = 35,
      this.amountDesc = ""})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: containerHeight,
      width: containerWidth,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: AspectRatio(
                        aspectRatio: 1.6,
                        child: SvgPicture.asset(
                          "assets/icons/apple-pay.svg",
                          height: iconHeight,
                          alignment: Alignment.center,
                        ),
                      ),
                    ),
                    Expanded(
                      child: AspectRatio(
                        aspectRatio: 1.6,
                        child: SvgPicture.asset(
                          "assets/icons/visa.svg",
                          height: iconHeight,
                          alignment: Alignment.center,
                        ),
                      ),
                    ),
                    Expanded(
                      child: AspectRatio(
                        aspectRatio: 1.6,
                        child: SvgPicture.asset(
                          "assets/icons/mastercard.svg",
                          height: iconHeight,
                          alignment: Alignment.center,
                        ),
                      ),
                    ),
                    Expanded(
                      child: AspectRatio(
                        aspectRatio: 1.6,
                        child: SvgPicture.asset(
                          "assets/icons/samsung-pay.svg",
                          height: iconHeight,
                          alignment: Alignment.center,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                SvgPicture.asset(
                  "assets/icons/rupay2.svg",
                  height: rupayIconHeight,
                  alignment: Alignment.center,
                ),
              ],
            ),
          ),
          CircularProgressIndicator(),
          SizedBox(
            height: 2,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Amount: ${amountDesc}",
                style: TextStyle(fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 5,
              ),
              Text("Please insert/tap your card in the payment device."),
            ],
          )
        ],
      ),
    );
  }
}


class OrderCartSummary extends StatelessWidget {
  final List<LineItemEntity> lineItems;
  const OrderCartSummary({required this.lineItems, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Cart Summary:",
          style: TextStyle(
              fontSize:18,
              fontWeight: FontWeight.bold,
              color: AppColor.textColorTertiary,
          ),),
        SizedBox(height: 20,),
        Expanded(
            child: ListView.separated(
              itemCount: lineItems.length,
              itemBuilder: (ctx, idx) {
                // return Container();
                return Row(
                  children: [
                    Expanded(
                      flex: 7,
                      child: Baseline(
                        baseline: 0.0,
                        baselineType: TextBaseline.alphabetic,
                        child: Text(
                          "${lineItems[idx].itemDescription}  (x${lineItems[idx].quantity})",
                          style: TextStyle(
                            fontSize: 16.0,
                            color: AppColor.textColorTertiary,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      )
                    ),
                    /*Baseline(
                      baseline: 0.0,
                      baselineType: TextBaseline.alphabetic,
                      child: Text(
                        "  (x${lineItems[idx].quantity})",
                        style: TextStyle(fontSize: 16.0),
                      ),
                    ),*/
                    const SizedBox(width: 5,),
                    // Text("${state.lineItems?[idx].itemDescription}  (x${state.lineItems?[idx].quantity})"),
                    const Expanded(
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Divider(
                            thickness: 1,
                            color: AppColor.color1,
                          ),
                        )
                    ),
                    const SizedBox(width: 5,),
                    Baseline(
                      baseline: 0.0,
                      baselineType: TextBaseline.alphabetic,
                      child: Text(
                        "${lineItems[idx].totalBasePrice?.toStringAsFixed(2)}",
                        style: TextStyle(
                          fontSize: 16.0,
                          color: AppColor.textColorTertiary,
                        ),
                      ),
                    ),
                    // Text("${state.lineItems?[idx].totalBasePrice}")
                  ],
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return const SizedBox(height: 10,);
              },
            )
        )
      ],
    );
  }
}

class TenderOptions extends StatefulWidget {
  const TenderOptions({super.key});

  @override
  State<StatefulWidget> createState() => _TenderOptionsState();
}


class _TenderOptionsState extends State<TenderOptions> {
  final List<String> tenderList = [
    "Credit/Debit Card",
    "Loyalytic Points",
    "Gift Cards",
    "Digital Wallet",
    "Digital Credit Note"
  ];
  final List<String> tenderIdList = [
    "VISA",
    "LOYALYTICPOINTS",
    "GIFTCARD",
    "EWALLET",
    "CREDITNOTE"
  ];
  final List<IconData> icons = [
    Icons.credit_card_rounded,
    Icons.currency_bitcoin_rounded,
    Icons.card_giftcard_rounded,
    Icons.wallet_rounded,
    Icons.receipt_long_rounded
  ];
  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.background,
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200.0,
          mainAxisSpacing: 8.0,
          crossAxisSpacing: 8.0,
          childAspectRatio: 1.0,
        ),
        itemCount: tenderList.length,
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            onTap: () {
              setState(() {
                if (selectedIndex == index) {
                  selectedIndex = -1;
                  // BlocProvider.of<PaymentBloc>(context).add(UpdateTenderEvent(
                  //     tender: TransactionPaymentLineItemEntity(
                  //         tenderId: null
                  //     )
                  // ));
                } else {
                  selectedIndex = index;
                  // BlocProvider.of<PaymentBloc>(context).add(UpdateTenderEvent(
                  //   tender: TransactionPaymentLineItemEntity(
                  //     tenderId: tenderIdList[index]
                  //   )
                  // ));
                }
              });
            },
            child: Card(
              color: selectedIndex == index
                  ? AppColor.color1
                  : AppColor.background2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Icon
                  Icon(
                    icons[index],
                    size: 40.0,
                    color: selectedIndex == index
                        ? AppColor.background2
                        : AppColor.textColorTertiary,
                  ),
                  const SizedBox(height: 15,),
                  Text(
                    tenderList[index],
                    style: TextStyle(
                      color: selectedIndex == index
                          ? AppColor.background2
                          : AppColor.textColorTertiary,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

}
