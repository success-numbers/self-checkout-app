import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomPhoneSearchTextField extends StatefulWidget {
  final String label;
  final TextAlign? labelAlign;
  final String? helperText;
  final int minLines;
  final int maxLines;
  final Widget? icon;
  final Widget? suffixIcon;
  final Widget? suffix;
  final String? initialValue;
  final String? hint;
  final ValueChanged<String>? onValueChange;
  final String? errorText;
  final TextInputType? textInputType;
  final TextEditingController? controller;
  final TextEditingController? countryController;
  final bool obscureText;
  final FocusNode? focusNode;
  final FormFieldValidator<String>? validator;
  final TextStyle style;
  final TextAlign textAlign;
  final TextCapitalization textCapitalization;
  final GestureTapCallback? onTap;
  final Function()? onSearchPressed;
  final bool? enabled;
  final CrossAxisAlignment crossAxisAlignment;
  final ValueChanged<String>? onFieldSubmitted;
  final List<TextInputFormatter>? inputFormatters;
  final InputDecoration? decoration;
  final String? countryCode;
  final Color? searchButtonColor;

  CustomPhoneSearchTextField({
    Key? key,
    this.icon,
    this.suffixIcon,
    this.suffix,
    this.onSearchPressed,
    this.helperText,
    required this.label,
    this.labelAlign,
    this.maxLines = 1,
    this.minLines = 1,
    this.countryCode = "+91",
    this.countryController,
    this.initialValue,
    this.hint,
    this.onValueChange,
    this.textInputType,
    this.errorText,
    this.inputFormatters,
    this.controller,
    this.focusNode,
    this.onTap,
    this.validator,
    this.enabled,
    this.onFieldSubmitted,
    this.textCapitalization = TextCapitalization.none,
    this.obscureText = false,
    this.searchButtonColor,
    this.style = const TextStyle(
      fontWeight: FontWeight.w600,
    ),
    this.crossAxisAlignment = CrossAxisAlignment.start,
    this.textAlign = TextAlign.start,
    this.decoration,
  }) : super(key: key);

  @override
  _CustomPhoneSearchTextFieldState createState() =>
      _CustomPhoneSearchTextFieldState();
}

class _CustomPhoneSearchTextFieldState
    extends State<CustomPhoneSearchTextField> {
  String? countryCode;

  @override
  void initState() {
    super.initState();
    countryCode = widget.countryCode;
    widget.countryController?.text = widget.countryCode!;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: widget.crossAxisAlignment,
        children: [
          if (widget.label.isNotEmpty)
            Row(
              children: [
                Expanded(
                  child: Text(
                    widget.label,
                    style: const TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF6B7281),
                    ),
                    textAlign: widget.labelAlign,
                  ),
                ),
              ],
            ),
          if (widget.helperText != null && widget.helperText!.isNotEmpty)
            Text(
              widget.helperText!,
              style: const TextStyle(
                fontStyle: FontStyle.italic,
                color: Colors.black38,
                fontSize: 12,
              ),
            ),
          const SizedBox(
            height: 1,
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(12)
                ),
              ),
              child: Align(
                alignment: Alignment.centerLeft,
                child: TextFormField(
                  readOnly: true,
                  autovalidateMode: AutovalidateMode.always,
                  validator: widget.validator,
                  focusNode: widget.focusNode,
                  controller: widget.controller,
                  keyboardType: widget.textInputType,
                  initialValue: widget.initialValue,
                  minLines: widget.minLines,
                  maxLines: widget.maxLines,
                  onChanged: (String value) {
                    // Combine countryCode and value
                    String combinedValue = '${widget.countryCode}$value';
                    if (widget.onValueChange != null) {
                      widget.onValueChange!(value);
                    }
                  },
                  obscureText: widget.obscureText,
                  cursorColor: const Color(0xFFB1B4E6),
                  textAlign: widget.textAlign,
                  inputFormatters: widget.inputFormatters,
                  style: widget.style,
                  onTap: widget.onTap,
                  onFieldSubmitted: widget.onFieldSubmitted,
                  enabled: widget.enabled,
                  textCapitalization: widget.textCapitalization,
                  decoration: widget.decoration ??
                      InputDecoration(
                        errorStyle: const TextStyle(
                          height: 1,
                          overflow: TextOverflow.fade,
                        ),
                        focusedBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.only(
                            topLeft:  Radius.circular(12),
                            bottomLeft:  Radius.circular(12),
                            topRight: Radius.circular(12),
                            bottomRight: Radius.circular(12),
                          ),
                          borderSide: BorderSide(
                            color: Color(0xFFB1B4E6),
                            width: 2.0,
                          ),
                        ),
                        prefixIconConstraints: BoxConstraints(minWidth: 40, minHeight: 40),
                        prefixIcon: _buildCountryCodeDropdown(),
                        suffixIcon: SizedBox(
                          height: double.infinity,
                          width: 80,
                          child: ClipRRect(
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(12),
                              bottomRight: Radius.circular(12),
                              topLeft: Radius.zero,
                              bottomLeft: Radius.zero,
                            ),
                            child: MaterialButton(
                              onPressed: () {
                                if (widget.onSearchPressed != null) {
                                  widget.onSearchPressed!();
                                }
                              },
                              color: widget.searchButtonColor,
                              child: Icon(
                                Icons.search,
                                color: Colors.white,
                                size: 28,
                              ),
                            ),
                          ),
                        ),
                        contentPadding: const EdgeInsets.symmetric(
                          vertical: 14,
                          horizontal: 14.2,
                        ),
                        border: const OutlineInputBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(12),
                            topRight: Radius.circular(12),
                            bottomRight: Radius.circular(12),
                            bottomLeft: Radius.circular(12),
                          ),
                          borderSide: BorderSide(
                            color: Color(0xFFB1B4E6),
                            width: 2.0,
                          ),
                        ),
                        isDense: true,
                        errorText: widget.errorText,
                        hintText: widget.hint,
                      ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCountryCodeDropdown() {
    // Replace this with your actual country code dropdown widget
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: EdgeInsets.only(left: 18),
          child: DropdownButton<String>(
            underline: Container(
              height: 0,
              color: Colors.transparent,
            ),
            items: ['+1', '+91', '+44'].map((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
            onChanged: (String? value) {
              // Handle country code selection
              if (value != null) {
                setState(() {
                  countryCode = value;
                  widget.countryController?.text = value;
                });
              }
            },
            value: countryCode,
          ),
        ),
        SizedBox(
          height: 30,
          child: VerticalDivider(
            color: Colors.black87,
            width: 30,
          ),
        )
      ],
    );
  }
}
