import 'package:flutter/material.dart';
import '../config/theme_settings.dart';
import '../module/calculator/calculator.dart';
import '../util/text_input_formatter/money_editing_controller.dart';
import 'extension/retail_extension.dart';

class MoneyInputPad extends StatefulWidget {
  final String? header;
  final double? initialAmount;
  final double? maximumAmount;
  const MoneyInputPad(
      {super.key, this.header, this.initialAmount, this.maximumAmount});

  @override
  State<MoneyInputPad> createState() => _MoneyInputPadState();
}

class _MoneyInputPadState extends State<MoneyInputPad> {
  late MoneyEditingController myController;
  String? error;

  @override
  void initState() {
    super.initState();
    myController = MoneyEditingController(
        formatter: getCurrencyFormatter(context),
        moneyValue: widget.initialAmount ?? 0.00);
    myController.addListener(() {
      setState(() {
        MoneyTextEditingValue ctrlValue =
            myController.value as MoneyTextEditingValue;
        if (widget.maximumAmount != null &&
            ctrlValue.moneyValue > widget.maximumAmount!) {
          error = "Maximum Accepted Amount is ${ctrlValue.moneyValue}";
        } else {
          error = null;
        }
      });
    });
  }

  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return NumberInputPad(
      header: widget.header,
      controller: myController,
      error: error,
      onDone: () {
        try {
          MoneyTextEditingValue value =
              myController.value as MoneyTextEditingValue;
          Navigator.of(context).pop(value.moneyValue);
        } catch (e) {
          Navigator.of(context).pop(0);
        }
      },
    );
  }
}

class NumberInputPad extends StatelessWidget {
  final String? header;
  final String? error;
  final TextEditingController controller;
  // onDoneFunction
  final Function()? onDone;
  final bool isDecimalPad;
  final double buttonSize;
  const NumberInputPad(
      {Key? key,
      this.header,
      this.error,
      required this.controller,
      this.onDone,
      this.isDecimalPad = true,
      this.buttonSize = 65})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      margin: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          if (header != null)
            FittedBox(
              child: Text(
                header!,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                ),
                textAlign: TextAlign.left,
              ),
            ),
          if (error != null)
            FittedBox(
              child: Text(
                error!,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w900,
                  color: Colors.red,
                ),
                textAlign: TextAlign.left,
              ),
            ),
          if (header != null || error != null)
            const Divider(
              thickness: 2,
              color: Colors.grey,
            ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: AbsorbPointer(
              child: TextFormField(
                enabled: true,
                controller: controller,
                autocorrect: false,
                textAlign: TextAlign.right,
                style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w900,
                ),
                autofocus: false,
                autovalidateMode: AutovalidateMode.always,
                validator: (value) {
                  // if ((double.tryParse(value ?? "") ?? 0) == 0) {
                  //   return 'Must be a non zero numeric value.';
                  // }
                  // return null;
                },
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.all(0.0),
                ),
                keyboardType: TextInputType.number,
                cursorColor: Colors.black,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Center(
            child: Keypad(
              buttonSize: buttonSize,
              controller: controller,
              isDecimalPad: isDecimalPad,
              onDone: (error != null && error!.isNotEmpty)
                  ? null
                  : onDone != null
                      ? onDone!
                      : () {
                          Navigator.of(context).pop(controller.text);
                        },
              doneButtonColor: AppColor.primary,
            ),
          )
        ],
      ),
    );
  }
}
