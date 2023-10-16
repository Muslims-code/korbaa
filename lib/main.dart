import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

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
          title: Text("مـرحــبا",
            style: TextStyle(
              fontSize: 25.0,
              color: Color(0xff0A4D68),
              fontFamily: 'ElMessiri-VariableFont_wght'
            )),
          backgroundColor: const Color(0xffC0D1DD),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              // now my change
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16)
                ),
                height: 228,
                width: 310,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("زيارة مرتقبة",
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'ElMessiri-VariableFont_wght',
                          fontSize: 16.0,
                        ),
                        ),
                        Icon(
                          Icons.comment
                        )
                      ],
                    ),
                    Divider(
                      color: Colors.black,
                      thickness: 1.5,
                      height: 25.5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('IMAGE'),
                        SizedBox(
                          width: 25.0,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("قم بزيارة",
                            style: TextStyle(
                              fontFamily: 'ElMessiri-VariableFont_wght',
                              color: Colors.black,
                              fontSize: 10.0
                            ),
                            ),
                            Text('عمي احمد',
                            style: TextStyle(
                              fontFamily: 'ElMessiri-VariableFont_wght',
                              color: Colors.black,
                              fontSize: 20.0
                            ),), 
                            Text('في اقرب وقت',
                            style: TextStyle(
                              fontFamily: 'ElMessiri-VariableFont_wght',
                              color: Colors.black,
                              fontSize: 10.0
                            ),
                            )
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    ElevatedButton.icon(onPressed: (){}, icon: Icon(Icons.call), label: Text('اتصل الآن'),
                    style:  ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff0A4D68),
                      padding: EdgeInsetsDirectional.symmetric(horizontal: 10.0)
                    ),
                    ),
                    ],
                ),
              ),
            ),
          ],
        )
      ),
    );
  }
}