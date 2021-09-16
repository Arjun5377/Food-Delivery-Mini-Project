import 'package:flutter/material.dart';
import 'package:food_delivery/Widgets/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Container(
          height: height*1,
      width: width*1,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                "assets/background.jpg",
              ),
              fit: BoxFit.cover)),
      child: SafeArea(
        child: Row(
          children: [
            Row(
              children: [
                Container(
                  height: height * 0.15,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            "assets/Logo.jpg",
                          ),
                          fit: BoxFit.cover)),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.all(
                    Radius.circular(2),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors
                              .red, //                   <--- border color
                          width: 1.0,
                        ),
                        color: Colors.red),
                    height: height * 0.05,
                    width: width * 0.3,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.call,
                          color: Colors.white,
                          size: 15,

                        ),
                        SizedBox(width: 5,),
                        textWidget("Call Waiter", 0.035, Colors.white, width),

                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.all(
                    Radius.circular(2),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors
                              .white, //                   <--- border color
                          width: 1.0,
                        ),
                        color: Colors.transparent),
                    height: height * 0.05,
                    width: width * 0.3,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        textWidget("More", 0.035, Colors.white, width),
                        Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: Colors.white,
                          size: 15,

                        ),
                      ],
                    ),
                  ),
                ),

                //textWidget("Hello World", 48, Colors.white, width),
              ],
            )
          ],
        ),
      ),
    ));
  }
}
