import 'package:intl/intl.dart';

class UtilServices {
  String priceToCurrenty(double price) {
    NumberFormat numberFormat = NumberFormat.simpleCurrency(locale: 'pt_BR');

    return numberFormat.format(price);
  }
}
