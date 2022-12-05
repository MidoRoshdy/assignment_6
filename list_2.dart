import 'package:flutter/material.dart';

class list_2 extends StatelessWidget {
  bool is_selected = false;
  @override
  Widget build(BuildContext context) {
    List<Map<dynamic, dynamic>> coffe = [
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
            itemCount: coffe.length,
            itemBuilder: (context, index) {
              Map<dynamic, dynamic> item = coffe[index];
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
