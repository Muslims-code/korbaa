import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: "El Messiri",
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
          backgroundColor: const Color(0xffC0D1DD),
          appBar: AppBar(
            elevation: 0.0,
            title: Text(
              "مرحبا ",
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
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Container(
                  width: 310,
                  height: 215,
                  margin: EdgeInsets.symmetric(horizontal: 25),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 8.0, right: 8.0, left: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "زيارة مرتقبة",
                              style: TextStyle(
                                fontFamily: "El Messiri",
                                fontSize: 15,
                                fontWeight: FontWeight.w700,
                                color: Color(0xff000000).withOpacity(0.7),
                                height: 23 / 15,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            Icon(
                              Icons.comment,
                              color: Colors.black.withOpacity(0.7),
                              size: 16,
                            )
                          ],
                        ),
                      ),
                      Divider(
                        color: Color(0xff86929B),
                        thickness: 1,
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset("assets/uncle1.png"),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "قم بزيارة",
                                  style: const TextStyle(
                                    fontFamily: "El Messiri",
                                    fontSize: 10,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff000000),
                                    height: 16 / 10,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                Text(
                                  "عمي أحمد",
                                  style: const TextStyle(
                                    fontFamily: "El Messiri",
                                    fontSize: 20,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff000000),
                                    height: 31 / 20,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                Text(
                                  "في أقرب وقت",
                                  style: const TextStyle(
                                    fontFamily: "El Messiri",
                                    fontSize: 10,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff000000),
                                    height: 16 / 10,
                                  ),
                                  textAlign: TextAlign.center,
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            ButtonIcon(
                              icon: Icons.call,
                              text: "اتصل",
                              backgroundColor: const Color(0xff0A4D68),
                              textColor: const Color(0xffC0D1DD),
                              onPressed: () {},
                            ),
                            ButtonIcon(
                              icon: Icons.check_circle,
                              text: "تمت الزيارة",
                              backgroundColor: Colors.white,
                              textColor: const Color(0xff0A4D68),
                              onPressed: () {},
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 40.0,
                      ),
                      Text(
                        'الزيارات',
                        style: const TextStyle(
                          fontFamily: "El Messiri",
                          fontSize: 25.0,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff000000),
                          height: 31 / 20,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      Container(
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/uncle1.png',
                              height: 40.0,
                              width: 40.0,
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Column(
                              children: [
                                Text(
                                  'يوسف محمد',
                                   style: const TextStyle(
                                    fontFamily: "El Messiri",
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xff000000),
                                    height: 31 / 20,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                             Text('18/10/2023',
                             style: TextStyle(
                             fontFamily: "El Messiri",
                             fontSize: 10.0,
                             fontWeight: FontWeight.w700,
                             color: Color(0xff86929B),
                             height: 31 / 20,
                             
                                  ),
                                  textAlign: TextAlign.center,
                            ),
                              ],
                            ),
                            SizedBox(
                              width: 150.0,
                            ),
                            Icon(Icons.call),
                          ],
                        ),
                      ),
                        SizedBox(
                          height: 15.0,
                        ),
                        Divider(
                          thickness: 1.0,
                          height: 5.0,
                        ),
                        Container(
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/uncle1.png',
                              height: 40.0,
                              width: 40.0,
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Column(
                              children: [
                                Text(
                                  'يوسف محمد',
                                   style: const TextStyle(
                                    fontFamily: "El Messiri",
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xff000000),
                                    height: 31 / 20,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                             Text('18/10/2023',
                             style: TextStyle(
                             fontFamily: "El Messiri",
                             fontSize: 10.0,
                             fontWeight: FontWeight.w700,
                             color: Color(0xff86929B),
                             height: 31 / 20,
                             
                                  ),
                                  textAlign: TextAlign.center,
                            ),
                              ],
                            ),
                            SizedBox(
                              width: 150.0,
                            ),
                            Icon(Icons.call),
                          ],
                        ),
                      ),
                        SizedBox(
                          height: 15.0,
                        ),
                        Divider(
                          thickness: 1.0,
                          height: 5.0,
                        ),                        
                        Container(
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/uncle1.png',
                              height: 40.0,
                              width: 40.0,
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Column(
                              children: [
                                Text(
                                  'يوسف محمد',
                                   style: const TextStyle(
                                    fontFamily: "El Messiri",
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xff000000),
                                    height: 31 / 20,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                             Text('18/10/2023',
                             style: TextStyle(
                             fontFamily: "El Messiri",
                             fontSize: 10.0,
                             fontWeight: FontWeight.w700,
                             color: Color(0xff86929B),
                             height: 31 / 20,
                             
                                  ),
                                  textAlign: TextAlign.center,
                            ),
                              ],
                            ),
                            SizedBox(
                              width: 150.0,
                            ),
                            Icon(Icons.call),
                          ],
                        ),
                      ),
                        SizedBox(
                          height: 15.0,
                        ),
                        Divider(
                          thickness: 1.0,
                          height: 5.0,
                        ),
                        Container(
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/uncle1.png',
                              height: 40.0,
                              width: 40.0,
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Column(
                              children: [
                                Text(
                                  'يوسف محمد',
                                   style: const TextStyle(
                                    fontFamily: "El Messiri",
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xff000000),
                                    height: 31 / 20,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                             Text('18/10/2023',
                             style: TextStyle(
                             fontFamily: "El Messiri",
                             fontSize: 10.0,
                             fontWeight: FontWeight.w700,
                             color: Color(0xff86929B),
                             height: 31 / 20,
                             
                                  ),
                                  textAlign: TextAlign.center,
                            ),
                              ],
                            ),
                            SizedBox(
                              width: 150.0,
                            ),
                            Icon(Icons.call),
                          ],
                        ),
                      ),
                        SizedBox(
                          height: 15.0,
                        ),
                        Divider(
                          thickness: 1.0,
                          height: 5.0,
                        ),
                        Container(
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/uncle1.png',
                              height: 40.0,
                              width: 40.0,
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Column(
                              children: [
                                Text(
                                  'يوسف محمد',
                                   style: const TextStyle(
                                    fontFamily: "El Messiri",
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xff000000),
                                    height: 31 / 20,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                             Text('18/10/2023',
                             style: TextStyle(
                             fontFamily: "El Messiri",
                             fontSize: 10.0,
                             fontWeight: FontWeight.w700,
                             color: Color(0xff86929B),
                             height: 31 / 20,
                             
                                  ),
                                  textAlign: TextAlign.center,
                            ),
                              ],
                            ),
                            SizedBox(
                              width: 150.0,
                            ),
                            Icon(Icons.call),
                          ],
                        ),
                      ),
                        SizedBox(
                          height: 15.0,
                        ),
                        Divider(
                          thickness: 1.0,
                          height: 5.0,
                        ),
                        Container(
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/uncle1.png',
                              height: 40.0,
                              width: 40.0,
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Column(
                              children: [
                                Text(
                                  'يوسف محمد',
                                   style: const TextStyle(
                                    fontFamily: "El Messiri",
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xff000000),
                                    height: 31 / 20,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                             Text('18/10/2023',
                             style: TextStyle(
                             fontFamily: "El Messiri",
                             fontSize: 10.0,
                             fontWeight: FontWeight.w700,
                             color: Color(0xff86929B),
                             height: 31 / 20,
                             
                                  ),
                                  textAlign: TextAlign.center,
                            ),
                              ],
                            ),
                            SizedBox(
                              width: 150.0,
                            ),
                            Icon(Icons.call),
                          ],
                        ),
                      ),
                      
                    ],
                  ),
                ),
              ),
            ],
          )),
    );
  }
}

class ButtonIcon extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color textColor;
  final Color backgroundColor;
  final VoidCallback onPressed;
  const ButtonIcon({
    required this.backgroundColor,
    required this.onPressed,
    required this.textColor,
    required this.icon,
    required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: ElevatedButton.icon(
        onPressed: onPressed,
        icon: Icon(
          icon,
          color: textColor,
          size: 18,
        ),
        label: Text(
          text,
          style: TextStyle(
            fontFamily: "El Messiri",
            fontSize: 15,
            fontWeight: FontWeight.w700,
            color: textColor,
            height: 23 / 15,
          ),
          textAlign: TextAlign.center,
        ),
        style: ElevatedButton.styleFrom(
            elevation: 0,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
                side: BorderSide(color: const Color(0xff0A4D68))),
            backgroundColor: backgroundColor,
            padding: EdgeInsetsDirectional.symmetric(
                horizontal: 10.0, vertical: 15)),
      ),
    );
  }
}
