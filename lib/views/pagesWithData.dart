import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather/models/weather_Model.dart';
import 'package:weather/providers/weatherProvider.dart';

class dataPage extends StatelessWidget {
  Weathermodel? data;

  @override
  Widget build(BuildContext context) {
    data = Provider.of<Weatherprovider>(context).Weathermode;
    return Container(
      color: Colors.amber[300],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Spacer(
            flex: 3,
          ),
          ListTile(
            title: Center(
                child: Text(
              data?.name ?? "",
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.w900),
            )),
            subtitle: Center(
                child: Text(
              data?.date ?? "",
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
                  data?.temp ?? "",
                  style: TextStyle(fontSize: 32),
                ),
                SizedBox(
                  width: 1,
                ),
                Column(
                  children: [
                    Text(
                      data?.humidity ?? "",
                      style: TextStyle(fontSize: 24),
                    ),
                    Text(
                      data?.maxTemp ?? "",
                      style: TextStyle(fontSize: 24),
                    )
                  ],
                )
              ],
            ),
          ),
          Spacer(),
          Text(
            data?.condition ?? "",
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
