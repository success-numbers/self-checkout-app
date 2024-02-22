import 'package:path_provider/path_provider.dart';

class Constants {
  static const printAndEmail = "PRINT_AND_EMAIL";
  static const print = "PRINT";
  static const cancel = "CANCEL";
  static String baseImagePath = "";
  static String basePath = "";
  static String dbPath = "";
  static String dummyImagePath = "https://cdn.iconscout.com/icon/premium/png-128-thumb/no-image-2840056-2359564.png";
  static List<double> tipChips = [10.00,20.00,50.00,100.00,150.00,200.00];
  static List<double> cashDenominationMultiplier = [5.00,10.00,20.00,50.00,100.00,200.00,500.00,1000.00];
  static String serviceItemTip = 'TIP0001';
  static String serviceItemTaxGrpId= 'VAT0';
  static String translationUrl = "";
  static String restApiBaseUrl = "";
  static String imageKitPublicKey = "";

  static Future<String> getImageBasePath() async {
    final appDoc = await getApplicationSupportDirectory();
    baseImagePath = "${appDoc.path}/images/";
    return baseImagePath;
  }

  static Future<String> getDbBasePath() async {
    final appDoc = await getApplicationSupportDirectory();
    dbPath = appDoc.path;
    return dbPath;
  }

  static Future<String> getTmpPath() async {
    final appDoc = await getTemporaryDirectory();
    return appDoc.path;
  }
}

class UrlConstants {
  static const sampleProductDataUrl = "https://xpos-user-dev.s3.ap-south-1.amazonaws.com/feed_data/product_min.zip";
  static const sampleProductsImagesUrl = "https://xpos-user-dev.s3.ap-south-1.amazonaws.com/feed_data/parchi_image_min.zip";
  static const fullProductDataUrl = "https://xpos-user-dev.s3.ap-south-1.amazonaws.com/feed_data/products_full_load.zip";
  static const fullProductsImagesUrl = "https://xpos-user-dev.s3.ap-south-1.amazonaws.com/feed_data/parchi_image.zip";
}