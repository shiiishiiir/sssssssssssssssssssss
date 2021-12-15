import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:http/http.dart' as http;

class WeatherAppApi extends StatefulWidget {
  const WeatherAppApi({Key? key}) : super(key: key);

  @override
  _WeatherAppApiState createState() => _WeatherAppApiState();
}

class _WeatherAppApiState extends State<WeatherAppApi> {
  var cityname, maintemp, min, max, humidity, pressure, sunrise, sunset;

  Future sunRiseSet() async {
    final RiseSetApi = await http.get(Uri.parse(
        "https://api.sunrise-sunset.org/json?lat=36.7201600&lng=-4.4203400"));
    var sunData = jsonDecode(RiseSetApi.body);

    setState(() {
      this.sunrise = sunData["results"]["sunrise"];
      this.sunset = sunData["results"]["sunset"];
    });
  }

  Future getWeather() async {
    final response = await http.get(Uri.parse(
        "https://api.openweathermap.org/data/2.5/weather?q=dhaka&units=metric&appid=b86b060ae230d41116cf002d51fe6a7c"));

    var showData = jsonDecode(response.body);

    setState(() {
      this.cityname = showData["name"];
      this.maintemp = showData["main"]["temp"];
      this.min = showData["main"]["temp_min"];
      this.max = showData["main"]["temp_max"];
      this.pressure = showData["main"]["pressure"];
      this.humidity = showData["main"]["humidity"];
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    this.getWeather();
    this.sunRiseSet();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Center(
          child: Text(
            "Weather Updates",
            style: TextStyle(fontFamily: "azonix"),
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(11.0),
            child: Card(
              elevation: 10,
              color: Colors.tealAccent[100],
              child: Container(
                height: MediaQuery.of(context).size.height / 3,
                width: MediaQuery.of(context).size.width,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(50)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "You Are On ",
                          style: TextStyle(
                            fontSize: 30,
                          ),
                        ),
                        Text(
                          cityname != null ? cityname.toString() : "Cox",
                          style: TextStyle(
                              fontSize: 35,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic,
                              fontFamily: "azonix"),
                        ),
                      ],
                    ),
                    Text(
                      maintemp != null
                          ? "here is " + maintemp.toString() + '\u00B0 C '
                          : "here is 36\u00B0 hot",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.redAccent),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding:
                  const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 10),
              child: ListView(
                children: <Widget>[
                  ListTile(
                    leading: FaIcon(FontAwesomeIcons.temperatureLow),
                    title: Text("Minimum Temperature"),
                    tileColor: Colors.tealAccent,
                    trailing: Text(
                        min != null ? min.toString() + "\u00B0 C" : "20\u00B0"),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ListTile(
                    leading: FaIcon(FontAwesomeIcons.temperatureHigh),
                    tileColor: Colors.greenAccent,
                    title: Text("Maximum Temperature"),
                    trailing: Text(
                        max != null ? max.toString() + "\u00B0 C" : "30\u00B0"),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ListTile(
                    leading: FaIcon(FontAwesomeIcons.snowflake),
                    title: Text("Pressure"),
                    tileColor: Colors.tealAccent,
                    trailing: Text(pressure.toString() + " Pa"),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ListTile(
                    leading: FaIcon(FontAwesomeIcons.wind),
                    title: Text("Humidity"),
                    tileColor: Colors.greenAccent,
                    trailing: Text(humidity.toString()),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ListTile(
                    leading: FaIcon(FontAwesomeIcons.cloudSun),
                    title: Text("Sunrise"),
                    tileColor: Colors.tealAccent,
                    trailing: Text(sunrise.toString()),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ListTile(
                    leading: FaIcon(FontAwesomeIcons.sun),
                    title: Text("Sunset"),
                    tileColor: Colors.greenAccent,
                    trailing: Text(sunset.toString()),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
