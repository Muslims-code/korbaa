import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class RelativeTile extends StatelessWidget {
  final IconData icon;
  final bool showRatings;
  const RelativeTile({
    super.key,
    required this.icon,
    this.showRatings = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Container(
        padding: EdgeInsets.only(bottom: 10),
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(width: 0.5, color: Color(0xff86929B)),
          ),
        ),
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
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
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
                      Text(
                        '18/10/2023',
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
                  showRatings
                      ? Column(
                          children: [
                            RatingBarIndicator(
                              itemSize: 15,
                              rating: 2.75,
                              unratedColor: Color(0xffD9D9D9),
                              direction: Axis.horizontal,
                              itemCount: 5,
                              itemPadding: EdgeInsets.symmetric(horizontal: 0),
                              itemBuilder: (context, _) => Icon(
                                Icons.star,
                                color: Colors.amber,
                                size: 10,
                              ),
                            ),
                            RichText(
                                textAlign: TextAlign.center,
                                text: TextSpan(
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {},
                                  text: "أظهر الملاحظة",
                                  style: const TextStyle(
                                    fontSize: 10,
                                    fontFamily: "El Messiri",
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xff0a4d68),
                                    height: 12 / 10,
                                  ),
                                ))
                          ],
                        )
                      : IconButton(
                          splashRadius: 20,
                          onPressed: () {},
                          splashColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          icon: Icon(
                            icon,
                          ),
                        ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
