import 'package:flutter/material.dart';
import 'package:korbaa/widgets/widgets.dart';

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
  String dropDownValue = 'في الشهر';
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
                          child: Icon(
                            Icons.person,
                            size: 100,
                            color: Colors.white,
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
                              onPressed: () {},
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
                      searchController: TextEditingController(),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 30, vertical: 0),
                    child: EditText(
                      icon: Icons.phone,
                      hint: 'اكتب رقم القريب',
                      searchController: TextEditingController(),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 20),
                    child: EditText(
                      icon: Icons.home,
                      hint: 'أضف عنوان القريب',
                      searchController: TextEditingController(),
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
                            searchController: TextEditingController(),
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
                  )
                ],
              ),
            )));
  }
}
