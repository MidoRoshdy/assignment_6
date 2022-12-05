import 'package:flutter/material.dart';
import 'list_1.dart';
import 'assets.dart';
import 'list_2.dart';
import 'all_list.dart';

class page_1 extends StatefulWidget {
  @override
  State<page_1> createState() => page_one();
}

class page_one extends State<page_1> {
  int pageindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            Container(
              color: Color.fromARGB(255, 83, 212, 159),
              child: Row(
                children: [
                  SizedBox(
                    width: 20,
                    height: 80,
                  ),
                  Icon(
                    Icons.keyboard_backspace,
                    size: 30,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Text(
                    "Restaurants and cafes",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Container(
              color: Color.fromARGB(255, 83, 212, 159),
              padding: EdgeInsets.all(10),
              child: TextField(
                  decoration: InputDecoration(
                      hintText: "Find offers here",
                      hoverColor: Colors.white,
                      filled: true,
                      fillColor: Colors.white,
                      prefixIcon: Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Icon(
                            Icons.manage_search_sharp,
                            size: 40,
                            color: Colors.black,
                          )),
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 27, vertical: 8),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40)))),
            ),
            Container(
              color: Colors.grey[300],
              child: Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  InkWell(
                    child: Text(
                      "all_offers",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    onTap: () {
                      pageindex = 0;
                      setState(() {});
                    },
                  ),
                  SizedBox(
                    width: 60,
                  ),
                  InkWell(
                    child: Text(
                      "fastfood",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    onTap: () {
                      pageindex = 1;

                      setState(() {});
                    },
                  ),
                  SizedBox(
                    width: 60,
                  ),
                  InkWell(
                    child: Text(
                      "coffe",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    onTap: () {
                      pageindex = 2;
                      setState(() {});
                    },
                  ),
                ],
              ),
            ),
            (Container(
                child: pageindex == 0
                    ? all_list()
                    : pageindex == 1
                        ? list_1()
                        : pageindex == 2
                            ? list_2()
                            : all_list())),
          ],
        ),
      ),
    ));
  }
}
