import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class list_1 extends StatelessWidget {
  bool is_selected = false;
  @override
  Widget build(BuildContext context) {
    List<Map<dynamic, dynamic>> fastfood = [
      {
        "name": "McDonald's",
        "diraction": "It is 4 km away from you",
        "type1": "fastfood",
        "offer": " 10% cash back",
        "image":
            "https://www.mcdonalds.com/content/dam/sites/ArabiaGWS/english/nfl/app-promo/mcd-logo-app-promo-475x360.png",
      },
      {
        "name": "hardee's",
        "diraction": "It is 3 km away from you",
        "type1": "fastfood",
        "offer": " 15% cash back",
        "image":
            "https://play-lh.googleusercontent.com/qS08Meln-CfQfIl-iThcLSbUJRi3pgQTq6IdOdJo-NwAY-VsS3AUkld91HRH-iSzKK5c",
      },
      {
        "name": "cookdoor",
        "diraction": "It is 10 km away from you",
        "type1": "fastfood",
        "offer": " 5% cash back",
        "image":
            "https://blogger.googleusercontent.com/img/a/AVvXsEix8JVwPRXjezW2IjQ3oQfnBdesxc0vUoJWbxOCY8jGJJ9F0Ecl6QA8sIjiSR_YRUYvP-gB4xEE-fSVEGzcWxACa874pm7cRzm1U8E6eeip5cdR1OiucDDZeqCeKlq6HZKuTNjYvBR8fj6Y_dHMmsHFODxDHdeETtsKrJA0RqKhATEZ0FQAOeSIh4xE=w1200-h675-p-k-no-nu",
      },
    ];
    return Container(
      child: Column(
        children: [
          ListView.separated(
            itemCount: fastfood.length,
            itemBuilder: (context, index) {
              Map<dynamic, dynamic> item = fastfood[index];
              return Container(
                width: 400,
                margin: EdgeInsets.symmetric(
                  horizontal: 5,
                  vertical: 5,
                ),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Text(
                          item["name"],
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(item["type1"]),
                        Text(item["offer"]),
                        Text(item["diraction"]),
                      ],
                    ),
                    SizedBox(
                      width: 95,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Image.network(
                        item["image"],
                        height: 100,
                        width: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(color: Colors.grey.shade300),
              );
            },
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return SizedBox();
            },
            scrollDirection: Axis.vertical,
          )
        ],
      ),
    );
  }
}
