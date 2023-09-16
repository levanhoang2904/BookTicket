import 'package:flutter/material.dart';

class My_Home_Page extends StatelessWidget {
  const My_Home_Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: double.infinity,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            child: Image(image: AssetImage('assets/togo.jpg')),
          ),
          Container(
            color: Color.fromRGBO(0, 0, 0, 0.6),
          ),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "TOGO",
                  style: TextStyle(
                      fontSize: 60,
                      color: Colors.white,
                      fontWeight: FontWeight.w700),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 20),
                  child: TextButton(
                      onPressed: () {
                        print("da click buy ticket");
                      },
                      style: TextButton.styleFrom(
                          backgroundColor: Colors.orange,
                          foregroundColor: Colors.white),
                      child: const Text(
                        "Buy Ticket",
                        style: TextStyle(fontWeight: FontWeight.w700),
                      )),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 20),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                          iconSize: 20,
                          onPressed: () {},
                          icon: const Icon(
                            Icons.star,
                            color: Colors.white,
                          )),
                      IconButton(
                          iconSize: 20,
                          onPressed: () {},
                          icon: Icon(
                            Icons.star,
                            color: Colors.white,
                          )),
                      IconButton(
                          iconSize: 20,
                          onPressed: () {},
                          icon: Icon(
                            Icons.star,
                            color: Colors.white,
                          )),
                      IconButton(
                          iconSize: 20,
                          onPressed: () {},
                          icon: Icon(
                            Icons.star,
                            color: Colors.white,
                          )),
                      IconButton(
                          iconSize: 20,
                          onPressed: () {},
                          icon: Icon(
                            Icons.star,
                            color: Colors.white,
                          ))
                    ],
                  ),
                ),
                Container(
                  width: 200,
                  child: const ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    child: Image(
                      image: AssetImage('assets/togo.jpg'),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    ));
  }
}
