import 'package:get/get.dart';import 'chat_one_item_model.dart';/// This class defines the variables used in the [chat_one_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ChatOneModel {Rx<List<ChatOneItemModel>> chatOneItemList = Rx(List.generate(5,(index) => ChatOneItemModel()));

 }
