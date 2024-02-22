import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'custom_button.dart';

Future<T?> printAllOrPrintNewOrCancelDialog<T>(BuildContext context, String title,
    {String? content, String? yesText1, String? yesText2, String? cancelText}) {
  return showDialog<T>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text(title).tr(),
        content: Text(content ?? '').tr(),
        actions: [
          SizedBox(
            width: 100,
            child: RejectButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              label: (cancelText ?? '_cancel').tr(),
            ),
          ),
          SizedBox(
            width: 100,
            child: AcceptButton(
              onPressed: () {
                Navigator.of(context).pop(yesText1);
              },
              label: (yesText1 ?? '_ok').tr(),
            ),
          ),
          SizedBox(
            width: 100,
            child: AcceptButton(
              onPressed: () {
                Navigator.of(context).pop(yesText2);
              },
              label: (yesText2 ?? '_ok').tr(),
            ),
          ),
        ],
      );
    },
  );
}