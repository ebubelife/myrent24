import '../controller/transaction_history_controller.dart';
import 'package:get/get.dart';

class TransactionHistoryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TransactionHistoryController());
  }
}
