// ignore_for_file: non_constant_identifier_names, camel_case_types, prefer_const_constructors_in_immutables, sized_box_for_whitespace, prefer_const_constructors, avoid_print

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../model/coolors.dart';

class product_screen extends StatefulWidget {
  product_screen({Key? key}) : super(key: key);

  @override
  State<product_screen> createState() => _product_screenState();
}

class _product_screenState extends State<product_screen> {
  @override
  Widget build(BuildContext context) {
    final screen_size = MediaQuery.of(context).size;
    print(screen_size);
    return Scaffold(
      backgroundColor: Coolors.main_color,
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Container(
            height: screen_size.height,
            width: screen_size.width,
            child: Image.asset(
              "assets/back.jpg",
              fit: BoxFit.cover,
            ),
          ),
          Center(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Coolors.fiv_color,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 30,
                    offset: Offset(20, 10),
                  ),
                ],
              ),
              height: screen_size.height * 0.63371356147,
              width: screen_size.width * 0.5,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 15.0,
                    ),
                    child: Text(
                      "Add a client ",
                      style: GoogleFonts.aBeeZee(
                        color: Coolors.sec_color,
                        fontSize: 30,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      // Name Input
                      Padding(
                        padding: EdgeInsets.only(top: 70),
                        child: Container(
                          width: screen_size.width * 0.20833333333,
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: "Client Name ",
                              suffixIcon: Icon(
                                Icons.person,
                              ),
                            ),
                            //controller: emailController,
                          ),
                        ),
                      ),
                      // Phone Input
                      Padding(
                        padding: EdgeInsets.only(top: 70),
                        child: Container(
                          width: screen_size.width * 0.20833333333,
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: "Client Phone Number ",
                              suffixIcon: Icon(
                                Icons.phone,
                              ),
                            ),
                            //controller: emailController,
                          ),
                        ),
                      ),
                    ],
                  ),
                  // Addrese input
                  Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: Container(
                      width: screen_size.width * 0.3125,
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: "Client Addrese",
                          suffixIcon: Icon(
                            Icons.place,
                          ),
                        ),
                        //controller: emailController,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      // Email input
                      Padding(
                        padding: EdgeInsets.only(top: 20),
                        child: Container(
                          width: screen_size.width * 0.20833333333,
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: "Client Email",
                              suffixIcon: Icon(
                                Icons.email,
                              ),
                            ),
                            //controller: emailController,
                          ),
                        ),
                      ),
                      // Product id Input
                      Padding(
                        padding: EdgeInsets.only(top: 20),
                        child: Container(
                          width: screen_size.width * 0.20833333333,
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: "Product id",
                              suffixIcon: Icon(
                                Icons.pin_rounded,
                              ),
                            ),
                            //controller: emailController,
                          ),
                        ),
                      ),
                    ],
                  ),
                  // Add Button
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: InkWell(
                      onTap: () {},
                      child: Center(
                        child: Container(
                          margin: EdgeInsets.only(top: 60),
                          height: 40,
                          width: 200,
                          decoration: BoxDecoration(
                            color: Coolors.sec_color,
                            borderRadius: BorderRadius.circular(18),
                          ),
                          child: Center(
                            child: Text(
                              "Add",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
