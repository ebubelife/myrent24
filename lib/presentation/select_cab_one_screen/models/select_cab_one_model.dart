import 'package:get/get.dart';import 'select_cab_one_item_model.dart';/// This class defines the variables used in the [select_cab_one_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SelectCabOneModel {Rx<List<SelectCabOneItemModel>> selectCabOneItemList = Rx(List.generate(2,(index) => SelectCabOneItemModel()));

 }
