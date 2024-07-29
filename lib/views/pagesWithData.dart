import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class dataPage extends StatelessWidget {
  const dataPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber[300],
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Spacer(
            flex: 3,
          ),
          ListTile(
            title: Center(
                child: Text(
              "cairo",
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.w900),
            )),
            subtitle: Center(
                child: Text(
              "updated :- 12:12Pm",
              style: TextStyle(fontSize: 24),
            )),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 23),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image(
                    image: AssetImage(
                  "images/snow.png",
                )),
                Text(
                  "30",
                  style: TextStyle(fontSize: 32),
                ),
                SizedBox(
                  width: 1,
                ),
                Column(
                  children: [
                    Text(
                      "bbb",
                      style: TextStyle(fontSize: 24),
                    ),
                    Text(
                      "sss",
                      style: TextStyle(fontSize: 24),
                    )
                  ],
                )
              ],
            ),
          ),
          Spacer(),
          Text(
            "clear",
            style: TextStyle(fontSize: 40),
          ),
          Spacer(
            flex: 3,
          )
        ],
      ),
    );
  }
}
