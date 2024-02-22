import 'package:flutter/material.dart';
import 'package:selfcheckout/src/module/splash_screen/splash_screen_view.dart';
import '../../src/model/model.dart';
import '../../src/module/all_customer/all_customer_view.dart';
import '../../src/module/business/bloc/business_bloc.dart';
import '../../src/module/business/business_view.dart';

import '../entity/pos/employee_entity.dart';
import '../entity/pos/table_entity.dart';
import '../module/home_med/home_view.dart';
import '../module/payment_screen/payment_screen.dart';
import '../module/receipt/receipt_screen.dart';
import '../module/self_checkout_med/self_checkout_screen.dart';

import '../module/loyalytics_customer/loyalytic_customer_details.dart';
import '../module/loyalytics_customer/loyalytic_customer_view.dart';

class RouteConfig {
  static const String splashScreen = "/";
  static const String aboutScreen = "/about";
  static const String homeScreen = "/home";
  static const String editItemScreen = "/edit-item";
  static const String editSaleLineItemScreen = "/edit-sale-line-item";
  static const String allItemsScreen = "/list-items";
  static const String allReceiptScreen = "/list-receipt";
  static const String allCustomerScreen = "/all-customer";
  static const String loadItemsInBulkScreen = "/load-in-bulk";
  static const String createReceiptScreen = "/create-receipt";
  static const String loyalyticCustomerScreen = "/loyalytic-customer-screen";
  static const String loyalyticsCustomerDetailsScreen = "/loyalytic-customer-details-screen";
  static const String receiptMedScreen = "/receipt-med-screen";

  static const String createRestaurantOrder = "/create-restaurant-order";
  static const String createReturnReceiptScreen = "/return-receipt";
  static const String receiptDisplayScreen = "/receipt-display";
  static const String invoiceDisplayScreen = "/invoice-display";
  static const String invoiceViewScreen = "/invoice-view";
  static const String businessViewScreen = "/business-view";
  static const String receiptSettingViewScreen = "/receipt-setting";
  static const String invoiceSettingViewScreen = "/invoice-setting";
  static const String customerDetailScreen = "/customer-detail";
  static const String orderSummaryScreen = "/order-summary";
  static const String localeScreen = "/locale-screen";
  static const String taxConfigurationScreen = "/tax-config";
  static const String employeeDetailScreen = "/employee-detail";
  static const String employeeScreen = "/employee";
  static const String sequenceConfigScreen = "/sequence-config";
  static const String bulkImportScreen = "/bulk-import";
  static const String bulkExportScreen = "/bulk-export";
  static const String createDealScreen = "/deals";
  static const String tableManagement = "/table-management";
  static const String newTableConfig = "/new-table-config";
  static const String dineInViewScreen = "/dine-in-view";
  static const String reportViewScreen = "/report-view";
  static const String printerSettingView = "/printer-setting-view";
  static const String printScreen = "/print-screen";
  static const String shiftReport = "/shift-report";
  static const String paymentScreen = "/payment-screen";
  static const String selfCheckoutMed = "/self-checkout-med";
  static const String homeScreenMed = "/home-med";

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splashScreen:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case homeScreen:
        return MaterialPageRoute(builder: (_) => const HomeMedScreen());
      case allCustomerScreen:
        return MaterialPageRoute(builder: (_) => const AllCustomerView());
      case loyalyticCustomerScreen:
        return MaterialPageRoute(builder: (_) => const LoyalyticCustomerView());
      case loyalyticsCustomerDetailsScreen:
        return MaterialPageRoute(builder: (_) => const LoyalyticCustomerDetailsView());
      case receiptMedScreen:
        return MaterialPageRoute(builder: (_) => const ReceiptScreen());
      case businessViewScreen:
        var bId = settings.arguments;
        if (bId is int) {
          return MaterialPageRoute(
              builder: (_) => BusinessView(
                    operation: BusinessOperation.update,
                    businessId: bId,
                  ));
        }
        return MaterialPageRoute(builder: (_) => const BusinessView());
      case paymentScreen:
        return MaterialPageRoute(builder: (_) => const PaymentScreen());
      case selfCheckoutMed:
        return MaterialPageRoute(builder: (_) => const SelfCheckoutScreen());
      case homeScreenMed:
        return MaterialPageRoute(builder: (_) => const HomeMedScreen());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
