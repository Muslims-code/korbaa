import 'package:flutter/material.dart';
import 'package:korbaa/widgets/widgets.dart';
import 'package:korbaa/screens/screens.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomePage> {
  int clickedButton = 0;

  static const List<Widget> _pages = <Widget>[
    HomeWidget(),
    RelativesScreen(),
    LogsScreen(),
  ];
  static const List<String> titles = <String>[
    'مرحبا',
    'قائمة الأقارب',
    'السجلات'
  ];
  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
            floatingActionButton: clickedButton == 1
                ? FloatingActionButton(
                    backgroundColor: Colors.white,
                    onPressed: () {},
                    child: Icon(
                      Icons.add,
                      color: Colors.black,
                    ),
                  )
                : null,
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerFloat,
            bottomNavigationBar: BottomNavigationBar(
              iconSize: 25,
              backgroundColor: Color(0xffC0D1DD),
              unselectedItemColor: Colors.white,
              selectedItemColor: Colors.black,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              elevation: 0,
              currentIndex: clickedButton,
              onTap: (index) {
                setState(() {
                  clickedButton = index;
                });
              },
              items: [
                BottomNavigationBarItem(
                    icon: Icon(Icons.home_rounded), label: "home"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.people_alt_rounded), label: "person"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.history), label: "person"),
              ],
            ),
            backgroundColor: const Color(0xffC0D1DD),
            appBar: AppBar(
              elevation: 0.0,
              title: Text(
                titles[clickedButton],
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
            body: _pages[clickedButton]));
  }
}

class HomeWidget extends StatelessWidget {
  const HomeWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
              child: Container(
            width: 310,
            height: 200,
            margin: const EdgeInsets.symmetric(horizontal: 25),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(16)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.only(top: 8.0, right: 8.0, left: 8.0),
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
                  padding: const EdgeInsets.all(.0),
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
              ],
            ),
          )),
          Padding(
            padding: const EdgeInsets.only(right: 23, top: 20),
            child: Row(
              children: [
                Text(
                  "الزيارات",
                  style: const TextStyle(
                    fontFamily: "El Messiri",
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff000000),
                    height: 31 / 20,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
                clipBehavior: Clip.hardEdge,
                physics: const BouncingScrollPhysics(),
                itemCount: 20,
                itemBuilder: (context, index) => const RelativeTile(
                      icon: Icons.phone,
                    )),
          )
        ]);
  }
}
