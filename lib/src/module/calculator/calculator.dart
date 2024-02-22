import 'package:flutter/material.dart';

class Keypad extends StatefulWidget {
  final TextEditingController? controller;
  final bool? isDecimalPad;
  final double? buttonSize;
  final Color? doneButtonColor;
  final void Function()? onDone;
  const Keypad(
      {Key? key,
      this.controller,
      this.isDecimalPad,
      this.onDone,
      this.buttonSize,
      this.doneButtonColor})
      : super(key: key);

  @override
  State<Keypad> createState() => _KeypadState();
}

class _KeypadState extends State<Keypad> {
  late TextEditingController? controller;

  @override
  void initState() {
    super.initState();
    if (widget.controller == null) {
      controller = TextEditingController();
    } else {
      controller = widget.controller;
    }
  }

  void onClick(String val) {
    String tmp = controller!.text;

    if (val == "<" && tmp.isNotEmpty) {
      tmp = tmp.substring(0, tmp.length - 1);
    } else if (val != "<") {
      tmp = tmp + val;
    }

    controller!.value = TextEditingValue(
        text: tmp, selection: TextSelection.collapsed(offset: tmp.length));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _CalenderCard(
              size: widget.buttonSize,
              text: "7",
              onClick: () {
                onClick("7");
              },
            ),
            _CalenderCard(
              size: widget.buttonSize,
              text: "8",
              onClick: () {
                onClick("8");
              },
            ),
            _CalenderCard(
              size: widget.buttonSize,
              text: "9",
              onClick: () {
                onClick("9");
              },
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _CalenderCard(
              size: widget.buttonSize,
              text: "4",
              onClick: () {
                onClick("4");
              },
            ),
            _CalenderCard(
              size: widget.buttonSize,
              text: "5",
              onClick: () {
                onClick("5");
              },
            ),
            _CalenderCard(
              size: widget.buttonSize,
              text: "6",
              onClick: () {
                onClick("6");
              },
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _CalenderCard(
              size: widget.buttonSize,
              text: "1",
              onClick: () {
                onClick("1");
              },
            ),
            _CalenderCard(
              size: widget.buttonSize,
              text: "2",
              onClick: () {
                onClick("2");
              },
            ),
            _CalenderCard(
              size: widget.buttonSize,
              text: "3",
              onClick: () {
                onClick("3");
              },
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            widget.isDecimalPad ?? false
                ? _CalenderCard(
                    size: widget.buttonSize,
                    text: ".",
                    onClick: () {
                      onClick(".");
                    },
                  )
                : _CalenderCard(
                    size: widget.buttonSize,
                    text: "+/-",
                    onClick: () {
                      onClick("<");
                    },
                  ),
            _CalenderCard(
              size: widget.buttonSize,
              text: "0",
              onClick: () {
                onClick("0");
              },
            ),
            _CalenderCard(
              size: widget.buttonSize,
              text: "<",
              onClick: () {
                onClick("<");
              },
            )
          ],
        ),
        IgnorePointer(
          ignoring: widget.onDone == null,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                margin: const EdgeInsets.all(2),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0.0)),
                child: InkWell(
                  onTap: widget.onDone,
                  child: Container(
                    color: widget.onDone != null ? widget.doneButtonColor : Colors.grey,
                    child: SizedBox(
                      height: widget.buttonSize ?? 80,
                      width: (widget.buttonSize ?? 80) * 3 + 10,
                      child: const Center(
                          child: Text(
                            'Done',
                            style: TextStyle(fontWeight: FontWeight.w900,color: Colors.white),
                          )),
                    ),
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}

class _CalenderCard extends StatelessWidget {
  final String text;
  final Function()? onClick;
  final double? size;
  const _CalenderCard({Key? key, required this.text, this.onClick, this.size})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(2),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0.0)),
      child: InkWell(
        onTap: onClick,
        child: SizedBox(
          height: size ?? 80,
          width: size ?? 80,
          child: Center(
              child: Text(
            text,
            style: const TextStyle(fontSize: 24),
          )),
        ),
      ),
    );
  }
}
