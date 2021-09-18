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
      height: height * 1,
      width: width * 1,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                "assets/background.jpg",
              ),
              fit: BoxFit.cover)),
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 10),
              child: Row(
                children: [

                  Container(
                    width: 123,
                    height: 40.5,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                              "assets/Logo.png",
                            ),
                            fit: BoxFit.fill)),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.all(
                      Radius.circular(2),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                            color:
                            Color(0xffF92200), //                   <--- border color
                            width: 1.0,
                          ),
                          color: Color(0xffF92200),
                      ),
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
                          SizedBox(
                            width: 5,
                          ),
                          textWidget("Call Waiter", 0.035, Colors.white, width),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 5,
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
                      width: width * 0.25,
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


                ],
              ),
            ),

            SizedBox(height: 40,),



            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Row(
                            children: [
                              Container(

                                decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors
                                          .white, //                   <--- border color
                                      width: 1.0,
                                    ),
                                    color: Colors.transparent,
                                  shape: BoxShape.circle,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: Icon(
                                    Icons.restaurant_menu,
                                    color: Colors.white,
                                    size: width*0.045,
                                  ),
                                ),
                              ),
                              SizedBox(width: 10,),
                              textWidget("Check out the menu", 0.05, Colors.white, width),
                            ],
                          ),
                        ),
                        SizedBox(height: 10,),
                        Container(
                          height: height*0.65,
                          width: width*0.7,
                          color: Colors.white,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Row(
                            children: [
                              Container(

                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors
                                        .white, //                   <--- border color
                                    width: 1.0,
                                  ),
                                  color: Colors.transparent,
                                  shape: BoxShape.circle,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: Icon(
                                    Icons.filter_list,
                                    color: Colors.white,
                                    size: width*0.045,
                                  ),
                                ),
                              ),
                              SizedBox(width: 10,),
                              textWidget("Filters", 0.05, Colors.white, width),
                            ],
                          ),
                        ),
                        SizedBox(height: 10,),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors
                                    .white, //                   <--- border color
                                width: 1.0,
                              ),
                              color: Colors.transparent),
                          height: height*0.65,
                          width: width*0.3,
                          //color: Colors.white,
                        ),
                      ],
                    )
                  ],
                ),




// Order Items
                Container(
                  height: height*0.08,
                  width: width*1,
                  color: Color(0xffF92200),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [


                      textWidget("Order Items", 0.04, Colors.white, width),
                      SizedBox(width: 10,),
                      CircleAvatar(
                        radius: width*0.03,
                        backgroundColor: Colors.white,
                        child: Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: Color(0xffF92200),
                          size: width*0.037,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),



          ],
        ),
      ),
    ));
  }
}
