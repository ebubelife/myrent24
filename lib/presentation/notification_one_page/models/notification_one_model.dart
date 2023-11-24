import 'package:get/get.dart';import 'notification_item_model.dart';/// This class defines the variables used in the [notification_one_page],
/// and is typically used to hold data that is passed between different parts of the application.
class NotificationOneModel {Rx<List<NotificationItemModel>> notificationItemList = Rx(List.generate(3,(index) => NotificationItemModel()));

 }
