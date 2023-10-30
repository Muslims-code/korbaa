import 'package:flutter/material.dart';
import 'package:korbaa/widgets/widgets.dart';

class AddRelativeScreen extends StatefulWidget {
  const AddRelativeScreen({Key? key}) : super(key: key);

  @override
  State<AddRelativeScreen> createState() => _AddRelativeScreenState();
}

class _AddRelativeScreenState extends State<AddRelativeScreen> {
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
                  EditText(
                    searchController: TextEditingController(),
                  ),
                ],
              ),
            )));
  }
}
