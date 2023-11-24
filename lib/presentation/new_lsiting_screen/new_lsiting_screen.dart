import 'package:rent24/widgets/custom_button.dart';

import '../../components/text_field1.dart';

import 'package:flutter/material.dart';
import 'package:rent24/core/app_export.dart';
import 'package:dropdown_below/dropdown_below.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:multi_dropdown/enum/app_enums.dart';
import 'package:multi_dropdown/models/chip_config.dart';
import 'package:multi_dropdown/models/network_config.dart';
import 'package:multi_dropdown/models/value_item.dart';
import 'package:multi_dropdown/multiselect_dropdown.dart';
import 'package:multi_dropdown/widgets/hint_text.dart';
import 'package:multi_dropdown/widgets/selection_chip.dart';
import 'package:multi_dropdown/widgets/single_selected_item.dart';

// ignore_for_file: must_be_immutable
class NewLsitingScreen extends StatefulWidget {
  @override
  State<NewLsitingScreen> createState() => _NewLsitingScreenState();
}

class _NewLsitingScreenState extends State<NewLsitingScreen> {
  TextEditingController itemNameController = new TextEditingController();
  String _selectedMeasurement = "";

  List<String> listType = [
    "Accommodation",
    "Ride",
    "Event Center",
  ];

  final MultiSelectController _controller = MultiSelectController();

  final List<ValueItem> _selectedOptions = [];

  void setSelectedMeasurementType(String selectedMeasurement) {
    setState(() {
      _selectedMeasurement = selectedMeasurement;

      //  print("Selected Measurement: " + selectedMeasurement);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: ColorConstant.gray50,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () {
              // Add navigation logic here to go back
            },
          ),
          //   Text('Your Title'),

          title: Text('Add New Listing', style: TextStyle(color: Colors.black)),
        ),
        body: Container(
          color: Colors.white,
          width: double.maxFinite,
          height: double.maxFinite,
          padding: EdgeInsets.only(top: 3, left: 10, right: 10, bottom: 10),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 20),
                TextField1(
                    readOnly: false,
                    label: "Item Name",
                    hint: "",
                    type: TextInputType.text,
                    controller: itemNameController),

                const SizedBox(height: 30),

                MultiSelectDropDown(
                  onOptionSelected: (List<ValueItem> selectedOptions) {},
                  options: const <ValueItem>[
                    ValueItem(label: 'Accommodation', value: 'accommodation'),
                    ValueItem(label: 'Rides', value: 'rides'),
                    ValueItem(label: 'Events', value: 'events'),
                  ],
                  selectionType: SelectionType.single,
                  chipConfig: const ChipConfig(wrapType: WrapType.wrap),
                  dropdownHeight: 300,
                  hint: "Select type",
                  optionTextStyle: const TextStyle(fontSize: 16),
                  selectedOptionIcon: const Icon(Icons.check_circle),
                ),

                const SizedBox(height: 30),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text("Features, select as many as may apply"),
                ),

                const SizedBox(height: 10),

                MultiSelectDropDown(
                  showClearIcon: true,
                  controller: _controller,
                  onOptionSelected: (options) {
                    debugPrint(options.toString());
                  },
                  options: const <ValueItem>[
                    ValueItem(label: 'Electricity', value: '1'),
                    ValueItem(label: 'Water', value: '2'),
                    ValueItem(label: 'Parking Space', value: '3'),
                  ],
                  disabledOptions: const [
                    // ValueItem(label: 'Electricity', value: '1')
                  ],
                  selectionType: SelectionType.multi,
                  chipConfig: const ChipConfig(
                      wrapType: WrapType.wrap,
                      backgroundColor: Color(0xFF5C5CFF)),
                  dropdownHeight: 300,
                  hint: "Select Features",
                  optionTextStyle: const TextStyle(
                    fontSize: 16,
                  ),
                  selectedOptionIcon:
                      const Icon(Icons.check_circle, color: Color(0xFF5C5CFF)),
                  selectedOptionBackgroundColor:
                      Color.fromARGB(255, 224, 224, 224),
                  selectedOptionTextColor: Color.fromARGB(255, 113, 69, 255),
                ),

                const SizedBox(height: 30),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text("Select a state"),
                ),
                const SizedBox(height: 10),

                MultiSelectDropDown(
                  onOptionSelected: (List<ValueItem> selectedOptions) {},
                  options: const <ValueItem>[
                    ValueItem(label: 'Abia', value: 'AB'),
                    ValueItem(label: 'Adamawa', value: 'AD'),
                    ValueItem(label: 'Akwa Ibom', value: 'AK'),
                    ValueItem(label: 'Anambra', value: 'AN'),
                    ValueItem(label: 'Bauchi', value: 'BA'),
                    ValueItem(label: 'Bayelsa', value: 'BY'),
                    ValueItem(label: 'Benue', value: 'BE'),
                    ValueItem(label: 'Borno', value: 'BO'),
                    ValueItem(label: 'Cross River', value: 'CR'),
                    ValueItem(label: 'Delta', value: 'DE'),
                    ValueItem(label: 'Ebonyi', value: 'EB'),
                    ValueItem(label: 'Edo', value: 'ED'),
                    ValueItem(label: 'Ekiti', value: 'EK'),
                    ValueItem(label: 'Enugu', value: 'EN'),
                    ValueItem(label: 'Gombe', value: 'GO'),
                    ValueItem(label: 'Imo', value: 'IM'),
                    ValueItem(label: 'Jigawa', value: 'JI'),
                    ValueItem(label: 'Kaduna', value: 'KD'),
                    ValueItem(label: 'Kano', value: 'KN'),
                    ValueItem(label: 'Katsina', value: 'KT'),
                    ValueItem(label: 'Kebbi', value: 'KE'),
                    ValueItem(label: 'Kogi', value: 'KO'),
                    ValueItem(label: 'Kwara', value: 'KW'),
                    ValueItem(label: 'Lagos', value: 'LA'),
                    ValueItem(label: 'Nasarawa', value: 'NA'),
                    ValueItem(label: 'Niger', value: 'NI'),
                    ValueItem(label: 'Ogun', value: 'OG'),
                    ValueItem(label: 'Ondo', value: 'ON'),
                    ValueItem(label: 'Osun', value: 'OS'),
                    ValueItem(label: 'Oyo', value: 'OY'),
                    ValueItem(label: 'Plateau', value: 'PL'),
                    ValueItem(label: 'Rivers', value: 'RI'),
                    ValueItem(label: 'Sokoto', value: 'SO'),
                    ValueItem(label: 'Taraba', value: 'TA'),
                    ValueItem(label: 'Yobe', value: 'YO'),
                    ValueItem(label: 'Zamfara', value: 'ZA'),
                  ],
                  selectionType: SelectionType.single,
                  chipConfig: const ChipConfig(wrapType: WrapType.wrap),
                  dropdownHeight: 300,
                  hint: "Select state",
                  optionTextStyle: const TextStyle(fontSize: 16),
                  selectedOptionIcon:
                      const Icon(Icons.check_circle, color: Color(0xFF5C5CFF)),
                  selectedOptionBackgroundColor:
                      Color.fromARGB(255, 224, 224, 224),
                  selectedOptionTextColor: Color.fromARGB(255, 113, 69, 255),
                ),

                const SizedBox(height: 30),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text("Select an Area"),
                ),
                const SizedBox(height: 10),

                MultiSelectDropDown(
                  onOptionSelected: (List<ValueItem> selectedOptions) {},
                  options: const <ValueItem>[
                    ValueItem(label: 'Abia', value: 'AB'),
                    ValueItem(label: 'Adamawa', value: 'AD'),
                    ValueItem(label: 'Akwa Ibom', value: 'AK'),
                    ValueItem(label: 'Anambra', value: 'AN'),
                    ValueItem(label: 'Bauchi', value: 'BA'),
                    ValueItem(label: 'Bayelsa', value: 'BY'),
                    ValueItem(label: 'Benue', value: 'BE'),
                    ValueItem(label: 'Borno', value: 'BO'),
                    ValueItem(label: 'Cross River', value: 'CR'),
                    ValueItem(label: 'Delta', value: 'DE'),
                    ValueItem(label: 'Ebonyi', value: 'EB'),
                    ValueItem(label: 'Edo', value: 'ED'),
                    ValueItem(label: 'Ekiti', value: 'EK'),
                    ValueItem(label: 'Enugu', value: 'EN'),
                    ValueItem(label: 'Gombe', value: 'GO'),
                    ValueItem(label: 'Imo', value: 'IM'),
                    ValueItem(label: 'Jigawa', value: 'JI'),
                    ValueItem(label: 'Kaduna', value: 'KD'),
                    ValueItem(label: 'Kano', value: 'KN'),
                    ValueItem(label: 'Katsina', value: 'KT'),
                    ValueItem(label: 'Kebbi', value: 'KE'),
                    ValueItem(label: 'Kogi', value: 'KO'),
                    ValueItem(label: 'Kwara', value: 'KW'),
                    ValueItem(label: 'Lagos', value: 'LA'),
                    ValueItem(label: 'Nasarawa', value: 'NA'),
                    ValueItem(label: 'Niger', value: 'NI'),
                    ValueItem(label: 'Ogun', value: 'OG'),
                    ValueItem(label: 'Ondo', value: 'ON'),
                    ValueItem(label: 'Osun', value: 'OS'),
                    ValueItem(label: 'Oyo', value: 'OY'),
                    ValueItem(label: 'Plateau', value: 'PL'),
                    ValueItem(label: 'Rivers', value: 'RI'),
                    ValueItem(label: 'Sokoto', value: 'SO'),
                    ValueItem(label: 'Taraba', value: 'TA'),
                    ValueItem(label: 'Yobe', value: 'YO'),
                    ValueItem(label: 'Zamfara', value: 'ZA'),
                  ],
                  selectionType: SelectionType.single,
                  chipConfig: const ChipConfig(wrapType: WrapType.wrap),
                  dropdownHeight: 300,
                  hint: "Select an Area",
                  optionTextStyle: const TextStyle(fontSize: 16),
                  // selectedOptionIcon: const Icon(Icons.check_circle),
                  selectedOptionIcon:
                      const Icon(Icons.check_circle, color: Color(0xFF5C5CFF)),
                  selectedOptionBackgroundColor:
                      Color.fromARGB(255, 224, 224, 224),
                  selectedOptionTextColor: Color.fromARGB(255, 113, 69, 255),
                ),

                const SizedBox(height: 30),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text("Select Duration"),
                ),
                const SizedBox(height: 10),

                MultiSelectDropDown(
                  onOptionSelected: (List<ValueItem> selectedOptions) {},
                  options: const <ValueItem>[
                    ValueItem(label: 'Hourly', value: 'hourly'),
                    ValueItem(label: 'Daily', value: 'daily'),
                    ValueItem(label: 'Weekly', value: 'weekly'),
                    ValueItem(label: 'Monthly', value: 'monthly'),
                    ValueItem(label: 'Yearly', value: 'yearly'),
                  ],
                  selectionType: SelectionType.single,
                  chipConfig: const ChipConfig(wrapType: WrapType.wrap),
                  dropdownHeight: 300,
                  hint: "Duration",
                  optionTextStyle: const TextStyle(fontSize: 16),
                  selectedOptionIcon:
                      const Icon(Icons.check_circle, color: Color(0xFF5C5CFF)),
                  selectedOptionBackgroundColor:
                      Color.fromARGB(255, 224, 224, 224),
                  selectedOptionTextColor: Color.fromARGB(255, 113, 69, 255),
                ),
                const SizedBox(height: 30),

                TextField1(
                    readOnly: false,
                    label: "Item Price",
                    hint: "",
                    type: TextInputType.text,
                    controller: itemNameController),

                const SizedBox(height: 30),

                CustomButton(
                    height: getVerticalSize(60),
                    text: "Add Listing".tr,
                    margin: getMargin(left: 1, top: 25),
                    variant: ButtonVariant.FillIndigoA200,
                    onTap: () {
                      // onTapLogin();
                    }),

                // Your content goes here
              ],
            ),
          ),
        ));
  }

  onTapAddlist() {
    Get.toNamed(
      AppRoutes.homePageScreen,
    );
  }
}
