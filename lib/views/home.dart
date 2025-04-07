import 'package:flutter/material.dart';

import 'data.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              constraints: BoxConstraints(
                minWidth: double.infinity,
                maxHeight: 189,
              ),
              padding: EdgeInsets.only(right: 15, top: 25, left: 15),
              decoration: BoxDecoration(
                color: Color.fromRGBO(208, 218, 255, 1),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Pay Later",
                            style: TextStyle(
                              fontFamily: "Avenir",
                              fontWeight: FontWeight.w900,
                              fontSize: 28,
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                "everywhere",
                                style: TextStyle(
                                  fontFamily: "Avenir",
                                  fontWeight: FontWeight.w900,
                                  fontSize: 28,
                                ),
                              ),
                              SizedBox(width: 10),
                              Container(
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                width: 20,
                                height: 20,
                                child: Text(
                                  "!",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromRGBO(39, 79, 237, 1),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "Shopping Limit: ₦0",
                            style: TextStyle(
                              color: Color.fromRGBO(32, 41, 74, 1),
                              fontFamily: "Avenir",
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                            ),
                          ),
                          SizedBox(height: 7),
                          Container(
                            width: 134,
                            height: 37,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(39, 79, 237, 1),
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: TextButton(
                              style: TextButton.styleFrom(
                                backgroundColor: Colors.transparent,
                                shadowColor: Colors.transparent,
                              ),
                              onPressed: () {},
                              child: Text(
                                "Activate Credit",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: "Axisforma",
                                  fontSize: 13,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(bottom: 15),
                        constraints: BoxConstraints(maxHeight: 40),
                        filled: true,
                        fillColor: Color.fromRGBO(241, 243, 254, 1),
                        hintText: "Search for products or stores",
                        hintStyle: TextStyle(
                          fontFamily: "Avenir",
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                        prefixIcon: Icon(
                          Icons.search_sharp,
                          size: 18,
                          color: Color.fromRGBO(148, 148, 184, 1),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide.none,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide.none,
                        ),
                        hoverColor: Color.fromRGBO(241, 243, 254, 1),
                      ),
                      style: TextStyle(),
                    ),
                  ),
                  SizedBox(width: 20),
                  Container(
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(241, 243, 254, 1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: EdgeInsets.all(10),
                    child: Image.asset(
                      "assets/images/scan.png",
                      width: 24,
                      height: 24,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Color.fromRGBO(241, 243, 254, 1),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 200,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: firstRowData.length,
                      itemBuilder: (context, item) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 15),
                          child: Container(
                            padding: EdgeInsets.all(9),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            width: 161,
                            child: Stack(
                              children: [
                                Column(
                                  children: [
                                    Image.asset(
                                      firstRowData[item]["product_image"],
                                      fit: BoxFit.contain,
                                    ),
                                    SizedBox(height: 15),
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        firstRowData[item]["product_name"],
                                        style: TextStyle(
                                          fontFamily: "Avenir",
                                          fontWeight: FontWeight.w800,
                                          fontSize: 14,
                                          color: Color.fromRGBO(26, 26, 26, 1),
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          firstRowData[item]["new_product_price"],
                                          style: TextStyle(
                                            fontWeight: FontWeight.w800,
                                            fontSize: 14,
                                            color: Color.fromRGBO(
                                              39,
                                              79,
                                              237,
                                              1,
                                            ),
                                            fontFamily: "Avenir",
                                          ),
                                        ),
                                        Text(
                                          firstRowData[item]["actual_product_price"],
                                          style: TextStyle(
                                            fontFamily: "Avenir",
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
                                            color: Color.fromRGBO(
                                              179,
                                              179,
                                              204,
                                              1,
                                            ),
                                            decoration:
                                                TextDecoration.lineThrough,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Positioned(
                                  child: Container(
                                    height: 50,
                                    width: 50,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black12,
                                          offset: Offset(4.0, 4.0),
                                          blurRadius: 15.0,
                                          spreadRadius: 1.0,
                                        ),
                                        BoxShadow(
                                          color: Colors.white,
                                          offset: Offset(-4.0, -4.0),
                                          blurRadius: 15.0,
                                          spreadRadius: 1.0,
                                        ),
                                      ],
                                    ),
                                    child: Image.asset(
                                      firstRowData[item]["product_logo"],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(height: 15),
                  SizedBox(
                    height: 200,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: secondRowData.length,
                      itemBuilder: (context, item) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 15),
                          child: Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            width: 161,
                            child: Stack(
                              children: [
                                Column(
                                  children: [
                                    Image.asset(
                                      secondRowData[item]["product_image"],
                                      fit: BoxFit.contain,
                                    ),
                                    SizedBox(height: 15),
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        secondRowData[item]["product_name"],
                                        style: TextStyle(
                                          fontFamily: "Avenir",
                                          fontWeight: FontWeight.w800,
                                          fontSize: 14,
                                          color: Color.fromRGBO(26, 26, 26, 1),
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          secondRowData[item]["new_product_price"],
                                          style: TextStyle(
                                            fontWeight: FontWeight.w800,
                                            fontSize: 14,
                                            color: Color.fromRGBO(
                                              39,
                                              79,
                                              237,
                                              1,
                                            ),
                                            fontFamily: "Avenir",
                                          ),
                                        ),
                                        Text(
                                          secondRowData[item]["actual_product_price"],
                                          style: TextStyle(
                                            fontFamily: "Avenir",
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
                                            color: Color.fromRGBO(
                                              179,
                                              179,
                                              204,
                                              1,
                                            ),
                                            decoration:
                                                TextDecoration.lineThrough,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Positioned(
                                  child: Container(
                                    height: 50,
                                    width: 50,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black12,
                                          offset: Offset(4.0, 4.0),
                                          blurRadius: 15.0,
                                          spreadRadius: 1.0,
                                        ),
                                        BoxShadow(
                                          color: Colors.white,
                                          offset: Offset(-4.0, -4.0),
                                          blurRadius: 15.0,
                                          spreadRadius: 1.0,
                                        ),
                                      ],
                                    ),
                                    child: Image.asset(
                                      secondRowData[item]["product_logo"],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Featured Merchants",
                    style: TextStyle(
                      fontFamily: "Avenir",
                      fontSize: 16,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  Text(
                    "View all",
                    style: TextStyle(
                      fontFamily: "Product Sans",
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Color.fromRGBO(39, 79, 237, 1),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 400,
              child: GridView(
                padding: EdgeInsets.zero,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                ),
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Stack(
                        children: [
                          Image.asset(
                            "assets/images/Frame_37022.png",
                            width: 60,
                            height: 60,
                          ),
                          Positioned(
                            right: 0,
                            child: Image.asset(
                              "assets/images/Notification_dot.png",
                              width: 11,
                              height: 11,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 8,),
                      Text(
                        "Justrite",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontFamily: "Avenir",
                          fontSize: 12,
                          color: Color.fromRGBO(26, 26, 26, 1),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Stack(
                        children: [
                          Image.asset(
                            "assets/images/Frame_37717.png",
                            width: 60,
                            height: 60,
                          ),
                          Positioned(
                            right: 0,
                            child: Image.asset(
                              "assets/images/Notification_dot.png",
                              width: 11,
                              height: 11,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 8,),
                      Text("Orile Restaurant", style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontFamily: "Avenir",
                        fontSize: 12,
                        color: Color.fromRGBO(26, 26, 26, 1),
                      ),),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top:8.0),
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            Image.asset(
                              "assets/images/Frame_37718.png",
                              width: 60,
                              height: 60,
                            ),
                            Positioned(
                              right: 0,
                              child: Image.asset(
                                "assets/images/Notification_dot.png",
                                width: 11,
                                height: 11,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 7,),
                        Text("Slot", style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontFamily: "Avenir",
                          fontSize: 12,
                          color: Color.fromRGBO(26, 26, 26, 1),
                        ),),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            Image.asset(
                              "assets/images/Frame_12575.png",
                              width: 60,
                              height: 60,
                            ),
                            Positioned(
                              right: 0,
                              child: Image.asset(
                                "assets/images/Notification_dot.png",
                                width: 11,
                                height: 11,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 8,),
                        Text("Pointek", style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontFamily: "Avenir",
                          fontSize: 12,
                          color: Color.fromRGBO(26, 26, 26, 1),
                        ),),
                      ],
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Stack(
                        children: [
                          Image.asset(
                            "assets/images/Frame_37719.png",
                            width: 60,
                            height: 60,
                          ),
                          Positioned(
                            right: 0,
                            child: Image.asset(
                              "assets/images/Notification_dot.png",
                              width: 11,
                              height: 11,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 8,),
                      Text("ogabassey", style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontFamily: "Avenir",
                        fontSize: 12,
                        color: Color.fromRGBO(26, 26, 26, 1),
                      ),),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Stack(
                        children: [
                          Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(254, 43, 94, 1),
                              shape: BoxShape.circle,
                            ),
                            child: Image.asset(
                              "assets/images/Frame_13081.png",
                              width: 60,
                              height: 60,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 8,),
                      Text("Casper Stores", style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontFamily: "Avenir",
                        fontSize: 12,
                        color: Color.fromRGBO(26, 26, 26, 1),
                      ),),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            Image.asset(
                              "assets/images/Frame_13019.png",
                              width: 60,
                              height:60,
                            ),
                          ],
                        ),
                        SizedBox(height: 8,),
                        Text("DreamWorks", style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontFamily: "Avenir",
                          fontSize: 12,
                          color: Color.fromRGBO(26, 26, 26, 1),
                        ),),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            Image.asset(
                              "assets/images/Frame_37720.png",
                              width: 60,
                              height: 60,
                            ),
                            Positioned(
                              right: 0,
                              child: Image.asset(
                                "assets/images/Notification_dot.png",
                                width: 11,
                                height: 11,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 8,),
                        Text("Hubmart", style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontFamily: "Avenir",
                          fontSize: 12,
                          color: Color.fromRGBO(26, 26, 26, 1),
                        ),),
                      ],
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Stack(
                        children: [
                          Image.asset(
                            "assets/images/Frame_37720.png",
                            width: 60,
                            height: 60,
                          ),
                          Positioned(
                            right: 0,
                            child: Image.asset(
                              "assets/images/Notification_dot.png",
                              width: 11,
                              height: 11,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 8,),
                      Text("Just Used", style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontFamily: "Avenir",
                        fontSize: 12,
                        color: Color.fromRGBO(26, 26, 26, 1),
                      ),),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Stack(
                        children: [
                          Image.asset(
                            "assets/images/Frame_37409.png",
                            width: 60,
                            height: 60,
                          ),
                          Positioned(
                            right: 0,
                            child: Image.asset(
                              "assets/images/Notification_dot.png",
                              width: 11,
                              height: 11,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 8,),
                      Text("Just Fones", style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontFamily: "Avenir",
                        fontSize: 12,
                        color: Color.fromRGBO(26, 26, 26, 1),
                      ),),
                    ],
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
