import 'package:dropdown_search/dropdown_search.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../entity/config/code_value_entity.dart';
import '../repositories/config_repository.dart';

typedef CodeValueDropDownBuilder = String Function(CodeValueEntity value);

class CodeValueDropDown extends StatelessWidget {
  final ValueChanged<CodeValueEntity?>? onChanged;
  final String category;
  final CrossAxisAlignment crossAxisAlignment;
  final String label;
  final String? helperText;
  final String? errorText;
  final FormFieldValidator<CodeValueEntity>? validator;
  final CodeValueEntity? value;
  final CodeValueDropDownBuilder builder;
  final bool enabled;
  const CodeValueDropDown({
    Key? key,
    required this.onChanged,
    required this.category,
    this.crossAxisAlignment = CrossAxisAlignment.start,
    required this.label,
    this.helperText,
    this.errorText,
    this.validator,
    this.value,
    this.enabled = true,
    this.builder = defaultBuilder,
  }) : super(key: key);

  static String defaultBuilder(CodeValueEntity u) {
    return u.description ?? u.code;
  }

  @override
  Widget build(BuildContext context) {
    return CustomDropDown<CodeValueEntity>(
      label: label,
      helperText: helperText,
      errorText: errorText,
      validator: validator,
      value: value,
      onChanged: onChanged,
      itemAsString: builder,
      enabled: enabled,
      crossAxisAlignment: crossAxisAlignment,
      filterFn: (user, filter) =>
          user.code.toLowerCase().contains(filter.toLowerCase()) ||
          user.description!.toLowerCase().contains(filter.toLowerCase()),
      asyncItems: (filter) async {
        return await context
            .read<ConfigRepository>()
            .getCodeByCategory(category);
      },
    );
  }
}

class CustomDropDown<T> extends StatelessWidget {
  final ValueChanged<T?>? onChanged;
  final CrossAxisAlignment crossAxisAlignment;
  final String label;
  final String? helperText;
  final String? errorText;
  final FormFieldValidator<T>? validator;
  final DropdownSearchOnFind<T>? asyncItems;
  final T? value;
  final bool enabled;
  final DropdownSearchFilterFn<T>? filterFn;
  final DropdownSearchItemAsString<T>? itemAsString;
  final double bottomPadding;
  final DropDownDecoratorProps? dropdownDecoration;
  const CustomDropDown({
    Key? key,
    required this.onChanged,
    this.crossAxisAlignment = CrossAxisAlignment.start,
    required this.label,
    this.helperText,
    this.errorText,
    this.validator,
    this.value,
    this.enabled = true,
    this.filterFn,
    this.asyncItems,
    this.itemAsString,
    this.bottomPadding = 12,
    this.dropdownDecoration,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: crossAxisAlignment,
      children: [
        if (label.isNotEmpty)
        Text(
          label,
          style: const TextStyle(
              fontWeight: FontWeight.w400, color: Color(0xFF6B7281)),
        ).tr(),
        if (helperText != null && helperText!.isNotEmpty)
          Text(helperText!,
              style: const TextStyle(
                  fontStyle: FontStyle.italic,
                  color: Colors.black38,
                  fontSize: 12)).tr(),
        if ((helperText != null && helperText!.isNotEmpty) || (label.isNotEmpty))
        const SizedBox(
          height: 1,
        ),
        DropdownSearch<T>(
          selectedItem: value,
          validator: validator,
          filterFn: filterFn,
          asyncItems: asyncItems,
          itemAsString: itemAsString,
          onChanged: onChanged,
          enabled: enabled,
          // Below config is for the pop up that gets open after searching.
          popupProps: const PopupProps.menu(
            showSearchBox: true,
            searchDelay: Duration(milliseconds: 100),
            searchFieldProps: TextFieldProps(
              decoration: InputDecoration(
                errorStyle: TextStyle(height: 1, overflow: TextOverflow.fade),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFFB1B4E6), width: 2.0),
                ),
                contentPadding: EdgeInsets.all(12),
                border: OutlineInputBorder(),
                isDense: true,
              ),
            ),
          ),
          autoValidateMode: AutovalidateMode.always,
          // Below config is for the dropdown button.
          dropdownDecoratorProps: dropdownDecoration ?? DropDownDecoratorProps(
            dropdownSearchDecoration:  InputDecoration(
              errorStyle: const TextStyle(height: 0.65),
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xFFB1B4E6), width: 2.0),
              ),
              contentPadding: const EdgeInsets.all(10),
              border: const OutlineInputBorder(),
              isDense: true,
              errorText: errorText,
            ),
          ),
          dropdownButtonProps: const DropdownButtonProps(
            splashRadius: 1.0,

          ),
        ),
        SizedBox(
          height: bottomPadding,
        ),
      ],
    );
  }
}

class CustomDropDownMultiSelect<T> extends StatelessWidget {
  final ValueChanged<List<T>>? onChanged;
  final CrossAxisAlignment crossAxisAlignment;
  final String label;
  final String? helperText;
  final String? errorText;
  final FormFieldValidator<T>? validator;
  final DropdownSearchOnFind<T>? asyncItems;
  final List<T> value;
  final bool enabled;
  final DropdownSearchFilterFn<T>? filterFn;
  final DropdownSearchItemAsString<T>? itemAsString;
  final double bottomPadding;
  final DropDownDecoratorProps? dropdownDecoration;
  const CustomDropDownMultiSelect({
    Key? key,
    required this.onChanged,
    this.crossAxisAlignment = CrossAxisAlignment.start,
    required this.label,
    this.helperText,
    this.errorText,
    this.validator,
    this.value = const [],
    this.enabled = true,
    this.filterFn,
    this.asyncItems,
    this.itemAsString,
    this.bottomPadding = 12,
    this.dropdownDecoration,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: crossAxisAlignment,
      children: [
        if (label.isNotEmpty)
          Text(
            label,
            style: const TextStyle(
                fontWeight: FontWeight.w400, color: Color(0xFF6B7281)),
          ).tr(),
        if (helperText != null && helperText!.isNotEmpty)
          Text(helperText!,
              style: const TextStyle(
                  fontStyle: FontStyle.italic,
                  color: Colors.black38,
                  fontSize: 12)).tr(),
        if ((helperText != null && helperText!.isNotEmpty) || (label.isNotEmpty))
          const SizedBox(
            height: 1,
          ),
        DropdownSearch<T>.multiSelection(
          selectedItems: value,
          // validator: validator,
          filterFn: filterFn,
          asyncItems: asyncItems,
          itemAsString: itemAsString,
          onChanged: onChanged,
          enabled: enabled,
          // Below config is for the pop up that gets open after searching.
          popupProps: const PopupPropsMultiSelection.menu(
            showSearchBox: true,
            searchDelay: Duration(milliseconds: 100),
            searchFieldProps: TextFieldProps(
              decoration: InputDecoration(
                errorStyle: TextStyle(height: 1, overflow: TextOverflow.fade),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFFB1B4E6), width: 2.0),
                ),
                contentPadding: EdgeInsets.all(12),
                border: OutlineInputBorder(),
                isDense: true,
              ),
            ),
          ),
          autoValidateMode: AutovalidateMode.always,
          // Below config is for the dropdown button.
          dropdownDecoratorProps: dropdownDecoration ?? DropDownDecoratorProps(
            dropdownSearchDecoration:  InputDecoration(
              errorStyle: const TextStyle(height: 0.65),
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xFFB1B4E6), width: 2.0),
              ),
              contentPadding: const EdgeInsets.all(10),
              border: const OutlineInputBorder(),
              isDense: true,
              errorText: errorText,
            ),
          ),
          dropdownButtonProps: const DropdownButtonProps(
            splashRadius: 1.0,

          ),
        ),
        SizedBox(
          height: bottomPadding,
        ),
      ],
    );
  }
}

class CustomDropdownButton<T> extends StatelessWidget {
  final List<DropdownMenuItem<T>>? items;
  final T? value;
  final ValueChanged<T?>? onChanged;
  final String? label;
  const CustomDropdownButton({Key? key, this.items, this.value, this.onChanged, this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (label != null && label!.isNotEmpty)
          Text(
            label!,
            style: const TextStyle(
                fontWeight: FontWeight.w400, color: Color(0xFF6B7281)),
          ).tr(),
        const SizedBox(
          height: 1,
        ),
        DropdownButtonFormField<T>(
          value: value,
          items: items,
          isDense: true,
          isExpanded: true,decoration: const InputDecoration(
            errorStyle: TextStyle(height: 1, overflow: TextOverflow.fade),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xFFB1B4E6), width: 2.0),
            ),
            contentPadding: EdgeInsets.all(12),
            border: OutlineInputBorder(),
            isDense: true,
          ),
          onChanged: onChanged,
        ),
      ],
    );
  }
}

