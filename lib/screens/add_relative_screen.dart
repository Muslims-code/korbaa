import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:korbaa/cubits/visits/visits_cubit.dart';
import 'package:korbaa/widgets/widgets.dart';

import '../models/models.dart';

class AddRelativeScreen extends StatefulWidget {
  const AddRelativeScreen({Key? key}) : super(key: key);

  @override
  State<AddRelativeScreen> createState() => _AddRelativeScreenState();
}

class _AddRelativeScreenState extends State<AddRelativeScreen> {
  // Dropdown Items
  var items = [
    'في الشهر',
    'في الأسبوع',
    'في السنة',
  ];
  TextEditingController nameController = TextEditingController();
  TextEditingController numberController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController visitCountController = TextEditingController();

  String dropDownValue = 'في الشهر';

  FrequencyUnit textToFrequencyUnit(String text) {
    switch (text) {
      case 'في الأسبوع':
        return FrequencyUnit.week;
      case 'في السنة':
        return FrequencyUnit.year;
      default:
        return FrequencyUnit.month;
    }
  }

  XFile? image;

  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
            backgroundColor: const Color(0xffC0D1DD),
            appBar: AppBar(
              leading: IconButton(
                splashRadius: 20,
                icon: Icon(Icons.arrow_back_ios_rounded),
                onPressed: () {
                  Navigator.pop(context);
                },
                color: Color(0xff0a4d68),
              ),
              elevation: 0.0,
              title: Text(
                'إضافة قريب',
                style: const TextStyle(
                  fontFamily: "El Messiri",
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff0a4d68),
                  height: 39 / 25,
                ),
                textAlign: TextAlign.center,
              ),
              backgroundColor: const Color(0xffC0D1DD),
            ),
            body: Center(
              child: Column(
                children: [
                  Stack(
                    children: [
                      Container(
                          width: 150,
                          height: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: const Color(0xff0a4d68),
                          ),
                          child: image == null
                              ? Icon(
                                  Icons.person,
                                  size: 100,
                                  color: Colors.white,
                                )
                              : ClipRRect(
                                  borderRadius: BorderRadius.circular(100),
                                  child: Image.file(
                                    File(image!.path),
                                    fit: BoxFit.cover,
                                  ),
                                )),
                      Positioned(
                        child: Container(
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: Colors.black,
                            ),
                            child: IconButton(
                              splashRadius: 1,
                              onPressed: () async {
                                final ImagePicker picker = ImagePicker();
                                image = await picker.pickImage(
                                    source: ImageSource.gallery);
                                setState(() {});
                              },
                              icon: Icon(
                                Icons.edit,
                                size: 15,
                                color: Colors.white,
                              ),
                            )),
                        bottom: 5,
                        right: 10,
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 20),
                    child: EditText(
                      icon: Icons.person,
                      hint: 'اكتب اسم القريب',
                      searchController: nameController,
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 30, vertical: 0),
                    child: EditText(
                      icon: Icons.phone,
                      hint: 'اكتب رقم القريب',
                      searchController: numberController,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 20),
                    child: EditText(
                      icon: Icons.home,
                      hint: 'أضف عنوان القريب',
                      searchController: addressController,
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            right: 30, left: 30, top: 20, bottom: 10),
                        child: Text("كم مرة تود زيارة القريب ؟"),
                      ),
                    ],
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: EditText(
                            isNumber: true,
                            icon: Icons.numbers,
                            hint: 'اكتب عدد المرات',
                            searchController: visitCountController,
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          flex: 1,
                          child: DropdownButtonHideUnderline(
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                              ),
                              child: DropdownButton(
                                dropdownColor: Colors.white,

                                // Initial Value
                                value: dropDownValue,
                                isDense: true,

                                padding: EdgeInsets.all(7),
                                borderRadius: BorderRadius.circular(10),
                                // Down Arrow Icon
                                icon: const Icon(Icons.keyboard_arrow_down),

                                // Array list of items
                                items: items.map((String items) {
                                  return DropdownMenuItem(
                                    value: items,
                                    child: Text(items),
                                  );
                                }).toList(),
                                // After selecting the desired option,it will
                                // change button value to selected value
                                onChanged: (String? newValue) {
                                  setState(() {
                                    dropDownValue = newValue!;
                                  });
                                },
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                    width: double.maxFinite,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          backgroundColor: const Color(0xff0A4D68),
                          padding: EdgeInsetsDirectional.symmetric(
                              horizontal: 10.0, vertical: 15)),
                      onPressed: () {
                        if (nameController.text.isNotEmpty &&
                            numberController.text.isNotEmpty &&
                            addressController.text.isNotEmpty &&
                            visitCountController.text.isNotEmpty) {
                          final relative = Relative(
                            name: nameController.text,
                            phone: numberController.text,
                            address: addressController.text,
                            image: image?.path,
                            visitFrequency: Frequency(
                              visitCount: int.parse(visitCountController.text),
                              frequencyVariable: 1,
                              unit: textToFrequencyUnit(dropDownValue),
                            ),
                          );
                          context.read<VisitsCubit>().addRelative(relative);
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                "الرجاء ملء جميع الحقول",
                                style: TextStyle(
                                  fontFamily: "El Messiri",
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                ),
                              ),
                              backgroundColor: Colors.red,
                            ),
                          );
                        }
                      },
                      child: Text(
                        "إضافة",
                        style: TextStyle(
                          fontFamily: "El Messiri",
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )));
  }
}
