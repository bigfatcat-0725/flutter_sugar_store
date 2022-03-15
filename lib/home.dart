import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: double.infinity,
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 80,
              color: Color(0xFFFF91A4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    "assets/macaron2.svg",
                    width: 50,
                    height: 50,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Sugar Week 20% OFF",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                      Text(
                        "code : sugar2022 ",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Column(
                      children: [
                        Image.asset(
                          "assets/menu-candy.png",
                          width: MediaQuery.of(context).size.width * 0.17,
                          height: 50,
                        ),
                        Text(
                          "Candies",
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Column(
                      children: [
                        Image.asset(
                          "assets/menu-chocolate.png",
                          width: MediaQuery.of(context).size.width * 0.17,
                          height: 50,
                        ),
                        Text(
                          "Chocolates",
                          style: TextStyle(color: Colors.black54),
                        ),
                      ],
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Column(
                      children: [
                        Image.asset(
                          "assets/menu-cookie.png",
                          width: MediaQuery.of(context).size.width * 0.17,
                          height: 50,
                        ),
                        Text(
                          "Cookies",
                          style: TextStyle(color: Colors.black54),
                        ),
                      ],
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Column(
                      children: [
                        Image.asset(
                          "assets/menu-cupcake.png",
                          width: MediaQuery.of(context).size.width * 0.17,
                          height: 50,
                        ),
                        Text(
                          "Cupcakes",
                          style: TextStyle(color: Colors.black54),
                        ),
                      ],
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Column(
                      children: [
                        Image.asset(
                          "assets/menu-donut.png",
                          width: MediaQuery.of(context).size.width * 0.17,
                          height: 50,
                        ),
                        Text(
                          "Donuts",
                          style: TextStyle(color: Colors.black54),
                        ),
                      ],
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Column(
                      children: [
                        Image.asset(
                          "assets/menu-macarons.png",
                          width: MediaQuery.of(context).size.width * 0.17,
                          height: 50,
                        ),
                        Text(
                          "Macarons",
                          style: TextStyle(color: Colors.black54),
                        ),
                      ],
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Column(
                      children: [
                        Image.asset(
                          "assets/menu-surprise.png",
                          width: MediaQuery.of(context).size.width * 0.17,
                          height: 50,
                        ),
                        Text(
                          "GiftBox",
                          style: TextStyle(color: Colors.black54),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: double.infinity,
              height: 800,
              child: GridView.count(
                crossAxisCount: 2,
                children: List.generate(
                  10,
                  (index) {
                    return Center(
                      child: Container(
                        width: 170,
                        height: 170,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xFFDDDDDD),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Candy $index',
                              style: TextStyle(color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
