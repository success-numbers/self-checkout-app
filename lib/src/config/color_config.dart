import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

import '../entity/pos/entity.dart';

class ColorConstants {
  static Map<String, Color> categoryColor = {};
  static Map<String, Color> brandColor = {};
  static Map<String, Color> courseColor = {};

  static Color getCourseColor(String course) {
    if (courseColor.containsKey(course)) {
      return courseColor[course]!;
    }
    final color = Color((Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);
    courseColor[course] = color;
    return color;
  }

  static Color getCategoryColor(String category) {
    if (categoryColor.containsKey(category)) {
      return categoryColor[category]!;
    }
    final color = Color((Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);
    categoryColor[category] = color;
    return color;
  }

  static Color getBrandColor(String category) {
    if (brandColor.containsKey(category)) {
      return brandColor[category]!;
    }
    final color = Color((Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);
    brandColor[category] = color;
    return color;
  }

  static Color getColorForTransactionType(TransactionType type) {
    switch(type) {
      case TransactionType.sale:
        return const Color(0xFF4CAF50);
      case TransactionType.returns:
        return const Color(0xFFE91E63);
      case TransactionType.receipt:
        return const Color(0xFF2196F3);
      case TransactionType.refund:
        return const Color(0xFF9C27B0);
      case TransactionType.exchange:
        return const Color(0xFFFF9800);
      case TransactionType.payment:
        return const Color(0xFF795548);
    }
  }

  static String getIconPathForTransactionLine(String status) {
    switch(status) {
      case "pending":
        return "assets/icons/order-svgrepo-com.svg";
      case "in_progress":
        return "assets/icons/cooking-pot-fill-svgrepo-com.svg";
      case "ready":
        return "assets/icons/food-dish-svgrepo-com.svg";
      case "delivered":
        return "assets/icons/task-complete-svgrepo-com.svg";
      default:
        return "";
    }
  }

  static Color getColorForTransactionLine(String status) {
    switch(status) {
      case "pending":
        return Colors.red;
      case "in_progress":
        return Colors.orange;
      case "ready":
        return Colors.green;
      case "delivered":
        return const Color(0xFF795548);
      default:
        return Colors.black;
    }
  }
}