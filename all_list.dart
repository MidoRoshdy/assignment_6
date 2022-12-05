import 'package:flutter/material.dart';
import 'assets.dart';

class all_list extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bool is_selected = false;
    List<Map<dynamic, dynamic>> all_offers = [
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
      {
        "name": "costa_cafe",
        "diraction": "It is 2.5 km away from you",
        "type1": "coffe",
        "offer": " 9% cash back",
        "image":
            "https://costacafe842894765.files.wordpress.com/2018/03/300px-costalogo-svg.png",
      },
      {
        "name": "coffe_house",
        "diraction": "It is 2 km away from you",
        "type1": "coffe",
        "offer": " 20% cash back",
        "image":
            "https://i.etsystatic.com/7222101/r/il/3a3d68/2209447150/il_570xN.2209447150_5hok.jpg",
      },
      {
        "name": "starbucks",
        "diraction": "It is 7.5 km away from you",
        "type1": "coffe",
        "offer": " 10% cash back",
        "image":
            "https://upload.wikimedia.org/wikipedia/en/thumb/d/d3/Starbucks_Corporation_Logo_2011.svg/1200px-Starbucks_Corporation_Logo_2011.svg.png",
      },
    ];
    return Container(
      child: Column(
        children: [
          ListView.separated(
            itemCount: all_offers.length,
            itemBuilder: (context, index) {
              Map<dynamic, dynamic> item = all_offers[index];
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
