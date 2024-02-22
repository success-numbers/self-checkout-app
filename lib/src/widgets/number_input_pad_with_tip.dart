import 'package:flutter/material.dart';
import '../config/theme_settings.dart';
import '../module/calculator/calculator.dart';
import '../util/text_input_formatter/money_editing_controller.dart';
import 'custom_text_field.dart';
import 'extension/retail_extension.dart';

class MoneyInputPadWithTip extends StatefulWidget {
  final String? header;
  final double? initialAmount;
  final double? maximumAmount;
  final bool isCashPad;

  const MoneyInputPadWithTip(
      {super.key,
      this.header,
      this.initialAmount,
      this.maximumAmount,
      this.isCashPad = false});

  @override
  State<MoneyInputPadWithTip> createState() => _MoneyInputPadState();
}

class _MoneyInputPadState extends State<MoneyInputPadWithTip> {
  late MoneyEditingController myController;
  late MoneyEditingController tipController;
  late MoneyEditingController finalExecuteController;

  Key numberInputPadKey = UniqueKey(); // Create a unique key

  String? error;
  late bool isTipFieldFocussed;
  @override
  void initState() {
    super.initState();
    isTipFieldFocussed = false;
    myController = MoneyEditingController(
        formatter: getCurrencyFormatter(context),
        moneyValue: widget.initialAmount ?? 0.00);
    tipController = MoneyEditingController(
        formatter: getCurrencyFormatter(context), moneyValue: 0);
    finalExecuteController = MoneyEditingController(
        formatter: getCurrencyFormatter(context),
        moneyValue: widget.initialAmount ?? 0.00);
    myController.addListener(() {
      setState(() {
        MoneyTextEditingValue ctrlValue =
            myController.value as MoneyTextEditingValue;
        if (!isTipFieldFocussed) {
          finalExecuteController.value = MoneyEditingController(
                  formatter: getCurrencyFormatter(context),
                  moneyValue: ctrlValue.moneyValue)
              .value;
        }

        MoneyTextEditingValue tipValue =
            tipController.value as MoneyTextEditingValue;
        if (!widget.isCashPad &&
            widget.maximumAmount != null &&
            ctrlValue.moneyValue >
                (widget.maximumAmount! + tipValue.moneyValue)) {
          error =
              "Maximum Accepted Amount is ${widget.maximumAmount! + tipValue.moneyValue}";
        } else if (ctrlValue.moneyValue < tipValue.moneyValue) {
          error = "Minimium Accepted Amount is ${tipValue.moneyValue}";
        } else {
          error = null;
        }
      });
    });

    tipController.addListener(() {
      setState(() {
        MoneyTextEditingValue moneyValue =
            finalExecuteController.value as MoneyTextEditingValue;
        MoneyTextEditingValue tipValue =
            tipController.value as MoneyTextEditingValue;
        myController.value = MoneyEditingController(
                formatter: getCurrencyFormatter(context),
                moneyValue: moneyValue.moneyValue + tipValue.moneyValue)
            .value;
      });
    });
  }

  @override
  void dispose() {
    myController.dispose();
    tipController.dispose();
    super.dispose();
  }

  void onFocusChange(bool c) {
    setState(() {
      isTipFieldFocussed = c;
      numberInputPadKey = UniqueKey(); // Create a new key
    });
  }

  @override
  Widget build(BuildContext context) {
    return NumberInputPad(
      key: numberInputPadKey, // Provide the key here
      header: widget.header,
      keyPadController: isTipFieldFocussed ? tipController : myController,
      isTipFieldFocussed: isTipFieldFocussed,
      moneyController: myController,
      tipController: tipController,
      error: error,
      onFocusChange: onFocusChange,
      onDone: () {
        try {
          MoneyTextEditingValue value =
              myController.value as MoneyTextEditingValue;
          MoneyTextEditingValue tipValue =
              tipController.value as MoneyTextEditingValue;
          Navigator.of(context).pop({
            'finalTenderMoney': value.moneyValue,
            'tipAmount': tipValue.moneyValue
          });
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
  final TextEditingController keyPadController;
  final TextEditingController moneyController;
  final bool isTipFieldFocussed;
  final TextEditingController? tipController;
  // onDoneFunction
  final Function()? onDone;
  final Function(bool)? onFocusChange;

  final bool isDecimalPad;
  final double buttonSize;
  const NumberInputPad(
      {Key? key,
      this.header,
      this.error,
      required this.isTipFieldFocussed,
      required this.keyPadController,
      required this.moneyController,
      this.tipController,
      this.onDone,
      this.isDecimalPad = true,
      this.buttonSize = 65,
      this.onFocusChange})
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
              child: SizedBox(
                height: 16,
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
            ),
          if (error == null)
            const SizedBox(
              height: 16,
            ),
          GestureDetector(
            onTap: () {
              onFocusChange!(true);
            },
            child: AbsorbPointer(
                child: CustomTextField(
              label: 'Tip',
              hint: 'Enter the tip',
              controller: tipController,
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.attach_money),
                errorStyle:
                    const TextStyle(height: 1, overflow: TextOverflow.fade),
                // focusedBorder: const OutlineInputBorder(
                //   borderSide: BorderSide(color: Color(0xFFB1B4E6), width: 2.0),
                // ),
                enabledBorder: isTipFieldFocussed
                    ? const OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xFF8289FF), width: 2.0),
                      )
                    : null,
                contentPadding: const EdgeInsets.all(14.2),
                border: InputBorder.none,
                isDense: true,
              ),
            )),
          ),
          if (header != null || error != null)
            const Divider(
              thickness: 2,
              color: Colors.grey,
            ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: GestureDetector(
              onTap: () {
                onFocusChange!(false);
              },
              child: AbsorbPointer(
                child: TextFormField(
                  enabled: true,
                  controller: moneyController,
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
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding: const EdgeInsets.all(0.0),
                    enabledBorder: !isTipFieldFocussed ?
                        const OutlineInputBorder(
                      borderSide:
                      BorderSide(color: Color(0xFF8289FF), width: 2.0),
                        ) : null,
                  ),
                  keyboardType: TextInputType.number,
                  cursorColor: Colors.black,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          if (!isTipFieldFocussed)
            Center(
                child: Keypad(
              buttonSize: buttonSize,
              controller: moneyController,
              isDecimalPad: isDecimalPad,
              onDone: (error != null && error!.isNotEmpty)
                  ? null
                  : onDone != null
                      ? onDone!
                      : () {
                          Navigator.of(context).pop(keyPadController.text);
                        },
              doneButtonColor: AppColor.primary,
            )),
          if (isTipFieldFocussed)
            Center(
                child: Keypad(
              buttonSize: buttonSize,
              controller: tipController,
              isDecimalPad: isDecimalPad,
              onDone: (error != null && error!.isNotEmpty)
                  ? null
                  : onDone != null
                      ? onDone!
                      : () {
                          Navigator.of(context).pop(tipController?.text);
                        },
              doneButtonColor: AppColor.primary,
            ))
        ],
      ),
    );
  }
}
