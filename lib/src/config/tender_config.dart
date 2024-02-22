import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const tenderList = ["CASH", "CARD", "CHECK", "CORP ACCOUNT", "GIFT CARD"];

Map<String, Widget> tenderIconMapping = {
  "CASH": Image.asset("assets/icons/cash-payment.png", height: 30, width: 30,),
  "CARD": const Icon(FontAwesomeIcons.creditCard),
  "CHECK": const Icon(FontAwesomeIcons.moneyCheck,),
  "GIFT CARD": const Icon(FontAwesomeIcons.gift,),
  "CORP ACCOUNT": const Icon(FontAwesomeIcons.store,),
  "OTHER": const Icon(FontAwesomeIcons.question,),
};