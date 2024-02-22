import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lottie/lottie.dart';
import 'package:selfcheckout/src/config/route_config.dart';

import '../../config/theme_settings.dart';
import '../../widgets/store_user_widget.dart';
import '../../widgets/widgets.dart';
import '../home_med/home_view.dart';
import '../loading_payment/loading_progress_indicator.dart';
import '../payment_screen/bloc/payment_bloc.dart';

class ReceiptScreen extends StatelessWidget {
  const ReceiptScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.background,
      body: BlocConsumer<PaymentBloc, PaymentState>(
        listener: (context, state){
          if(state.paymentProcessStep == PaymentProcessStep.redirect){
            Navigator.pushNamedAndRemoveUntil(context, RouteConfig.homeScreenMed, (route) => false);
          }
        },
        builder: (context, state) {
          return LoadingPaymentProgressIndicator(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const AppMedLogoPng(
                  height: 120,
                  width: 180,
                ),
                Card(
                  color: AppColor.background2,
                  child: Container(
                    width: 450,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10.0, vertical: 16),
                                child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Expanded(
                                        flex: 8,
                                        child: Text("Tender Amount",
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                                fontWeight: FontWeight
                                                    .w700,
                                                fontSize: 16,
                                                decoration:
                                                TextDecoration.none))),
                                    const Expanded(
                                        flex: 2,
                                        child: Text("AED",
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                                fontSize: 16,
                                                decoration:
                                                TextDecoration.none))),
                                    Expanded(
                                        flex: 2,
                                        child: Text(state.cartTotal.toStringAsFixed(2),
                                            textAlign: TextAlign.end,
                                            style: const TextStyle(
                                                fontSize: 16,
                                                decoration:
                                                TextDecoration.none))),
                                    const SizedBox(
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
                                color: AppColor.color2,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              const Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 10.0, vertical: 16),
                                child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                        flex: 8,
                                        child: Text(
                                            "Payment has been received from:",
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                                fontSize: 14,
                                                decoration:
                                                TextDecoration.none))),
                                    SizedBox(
                                      width: 40,
                                    )
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10.0, vertical: 1),
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Expanded(
                                            flex: 8,
                                            child: Text(
                                                "Credit/Debit Card No: ######\n ######5436",
                                                textAlign: TextAlign
                                                    .start,
                                                style: TextStyle(
                                                    fontWeight:
                                                    FontWeight.w700,
                                                    fontSize: 14,
                                                    decoration: TextDecoration
                                                        .none))),
                                        const Expanded(
                                            flex: 2,
                                            child: Text("AED",
                                                textAlign: TextAlign
                                                    .start,
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    decoration: TextDecoration
                                                        .none))),
                                        Expanded(
                                            flex: 2,
                                            child: Text(state.cartTotal.toStringAsFixed(2),
                                                textAlign: TextAlign.end,
                                                style: const TextStyle(
                                                    fontSize: 16,
                                                    decoration: TextDecoration
                                                        .none))),
                                        const SizedBox(
                                          width: 40,
                                        )
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Column(
                  children: [
                    Lottie.asset(
                      'assets/lottie/done_progress.json',
                      width: 150,
                      height: 150,
                    ),
                    Text(
                      "TransId: ${state.trans?.transId}",
                      style: const TextStyle(fontSize: 14),
                    ),
                    const Text(
                      "Your payment is done successfully !",
                      style: TextStyle(fontSize: 24),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "How would you like your receipt ?",
                      style: TextStyle(fontSize: 14),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 18.0, vertical: 10),
                            child: SizedBox(
                              width: 140,
                              child: ElevatedButton(
                                onPressed: () {
                                  BlocProvider.of<PaymentBloc>(context).add(PayPrintAction());
                                },
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                        20.0),
                                  ),
                                ),
                                child: const Text(
                                  "PRINT",
                                  style: TextStyle(
                                  ),
                                ),
                              ),
                            )),
                        Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 18.0, vertical: 10),
                            child: SizedBox(
                              width: 140, // Adjust the width as needed
                              child: ElevatedButton(
                                onPressed: () {
                                  BlocProvider.of<PaymentBloc>(context).add(PayEmailAction());
                                },
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                        20.0),
                                  ),
                                ),
                                child: const Text(
                                  "EMAIL",
                                ),
                              ),
                            )),
                        Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 18.0, vertical: 10),
                            child: SizedBox(
                              width: 140,
                              child: ElevatedButton(
                                onPressed: () {
                                  BlocProvider.of<PaymentBloc>(context).add(PayEmailAndPrintAction());
                                },
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                        20.0),
                                  ),
                                ),
                                child: const Text(
                                  "PRINT & EMAIL",
                                  style: TextStyle(
                                  ),
                                ),
                              ),
                            )),
                      ],
                    )
                  ],
                )

              ],
            ),
          );
        },
      ),
    );
  }
}

// class PaymentLineItemInfo extends StatelessWidget {
//   final TransactionPaymentLineItemEntity payLineItem;
//   const PaymentLineItemInfo({super.key, required this.payLineItem});
//
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 80,
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.start,
//         children: [
//           // Item Name and image
//           Container(
//             width: 80,
//             height: 80,
//             decoration: const BoxDecoration(
//                 borderRadius: BorderRadius.all(Radius.circular(15)),
//                 color: AppColor.color2),
//           ),
//           const SizedBox(
//             width: 5,
//           ),
//           Expanded(
//             //Item Details
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 children: [
//                   Expanded(
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Expanded(
//                               flex: 6,
//                               child: Text("Payment has been received from:",
//                                   style: const TextStyle(
//                                       color: AppColor.color4,
//                                       fontWeight: FontWeight.w700,
//                                       fontSize: 20,
//                                       decoration: TextDecoration.none))),
//                           Expanded(
//                               flex: 2,
//                               child: Text(lineItem.unitPrice!.toStringAsFixed(2),
//                                   textAlign: TextAlign.start,
//                                   style: const TextStyle(
//                                       color: AppColor.color4,
//                                       fontWeight: FontWeight.w700,
//                                       fontSize: 20,
//                                       decoration: TextDecoration.none))),
//                           Expanded(
//                               flex: 2,
//                               child: Text(lineItem.quantity!.toStringAsFixed(2),
//                                   textAlign: TextAlign.center,
//                                   style: const TextStyle(
//                                       color: AppColor.color4,
//                                       fontWeight: FontWeight.w700,
//                                       fontSize: 20,
//                                       decoration: TextDecoration.none))),
//                           Expanded(
//                               flex: 2,
//                               child: Text(lineItem.totalBasePrice!.toStringAsFixed(2),
//                                   textAlign: TextAlign.end,
//                                   style: const TextStyle(
//                                       color: AppColor.color4,
//                                       fontWeight: FontWeight.w700,
//                                       fontSize: 20,
//                                       decoration: TextDecoration.none))),
//                         ],
//                       )),
//                   const Divider(
//                     color: AppColor.color2,
//                     thickness: 2,
//                     height: 5,
//                   )
//                 ],
//               )),
//           BlocBuilder<MedBloc, MedState>(builder: (context, state) {
//             return Padding(
//               padding: EdgeInsets.only(left: 15),
//               child: Material(
//                 color: Colors.transparent,
//                 child: IconButton(
//                     onPressed: () {
//                       if (state.employeeLoggedIn) {
//                         BlocProvider.of<SelfCheckoutBloc>(context)
//                             .add(RemoveItemFromCartEvent(lineItem: lineItem));
//                       } else {
//                         BlocProvider.of<MedBloc>(context).add(
//                             ShowErrorPromptEvent(
//                                 message: "Employee LogIn is required."));
//                       }
//                     },
//                     icon: Icon(
//                       Icons.highlight_remove_rounded,
//                       color: state.employeeLoggedIn ? Colors.red : Colors.grey,
//                     )),
//               ),
//             );
//           })
//         ],
//       ),
//     );
//   }
// }

class PaymentCardLoader extends StatelessWidget {
  final double containerHeight;
  final double containerWidth;
  final double iconHeight;
  final double rupayIconHeight;
  final String amountDesc;

  const PaymentCardLoader({Key? key,
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
                const SizedBox(
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
          const CircularProgressIndicator(),
          const SizedBox(
            height: 2,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Amount: ${amountDesc}",
                style: const TextStyle(fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                height: 5,
              ),
              const Text("Please insert/tap your card in the payment device."),
            ],
          )
        ],
      ),
    );
  }
}

class OrderCartSummary extends StatelessWidget {
  const OrderCartSummary({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class TenderOptions extends StatefulWidget {
  const TenderOptions({super.key});

  @override
  State<StatefulWidget> createState() => _TenderOptionsState();
}

class _TenderOptionsState extends State<TenderOptions> {
  final List<String> itemList = List.generate(5, (index) => 'Tender $index');
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
        itemCount: itemList.length,
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            onTap: () {
              setState(() {
                if (selectedIndex == index) {
                  selectedIndex = -1;
                } else {
                  selectedIndex = index;
                }
              });
            },
            child: Card(
              color: selectedIndex == index
                  ? AppColor.color2
                  : AppColor.background2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Icon
                  Icon(
                    Icons.credit_card_rounded,
                    size: 40.0,
                    color: selectedIndex == index
                        ? AppColor.background2
                        : AppColor.color4,
                  ),
                  // Text
                  Text(
                    itemList[index],
                    style: TextStyle(
                      color: selectedIndex == index
                          ? AppColor.background2
                          : AppColor.color4,
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
