import '../controller/transaction_history_one_controller.dart';
import 'package:get/get.dart';

class TransactionHistoryOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TransactionHistoryOneController());
  }
}
