import 'package:flutter/material.dart';
import 'package:weather_app/slider_dot.dart';
import 'package:weather_app/weather_model.dart';
//import 'package:weather_app/weather_model.dart';
import 'single_weather.dart';
import 'package:transformer_page_view/transformer_page_view.dart';

class WeatherHomePage extends StatefulWidget {
  const WeatherHomePage({Key? key}) : super(key: key);

  @override
  State<WeatherHomePage> createState() => _WeatherHomePageState();
}

class _WeatherHomePageState extends State<WeatherHomePage> {
  int _currentPage = 0;
  String bgImg = '';

  _onPageChanged(int index) {
  setState(() {
    _currentPage = index;
  });
  }
  @override
  Widget build(BuildContext context) {
    if(locationList[_currentPage].weatherType == 'Sunny') {
      bgImg = 'assets/images/sunny_day.jpg';
    }else if (locationList[_currentPage].weatherType == 'Night') {
      bgImg = 'assets/images/night_image.jpg';
    }else if (locationList[_currentPage].weatherType == 'Rainy') {
      bgImg = 'assets/images/rainy_day.png';
    }else if (locationList[_currentPage].weatherType == 'Cloudy') {
      bgImg = 'assets/images/cloudy.jpg';
    }
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(''),
        leading: IconButton( onPressed: () =>{},
        icon: const Icon(
          Icons.search,
          size: 30,
          color: Colors.white,
        ),
        ),
        actions: [
          // ignore: avoid_unnecessary_containers
          Container(
            child: GestureDetector(
              // ignore: avoid_print
              onTap: () => print('menu clicked'),
              child: Image.asset('assets/images/menu.png',
              ),
            ),
          )
        ],
      ),
      // ignore: avoid_unnecessary_containers
      body: Container(
        child: Stack(
          children: [
            Image.asset(bgImg,
            fit: BoxFit.cover,
              height: double.infinity,
              width: double.infinity,
            ),
            Container(
            decoration: const BoxDecoration(color: Colors.black38),
            ),
            Container(
              margin: EdgeInsets.only(top: 140.0, left: 15.0,),
              child: Row(
                children: [
                    for(int i = 0; i < locationList.length; i++)
                      if( i == _currentPage )
                        SliderDot(true)
                  else
                      SliderDot(false)
                  ]
              ),
            ),
            PageView.builder(
              scrollDirection: Axis.horizontal,
                onPageChanged: _onPageChanged,
                itemCount: locationList.length,
                itemBuilder: (ctx, i) => SingleWeather(i),
            ),
          ],
        ),
      ),
    );
  }
}


