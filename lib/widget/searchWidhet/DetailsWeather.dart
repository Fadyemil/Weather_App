import 'package:flutter/material.dart';

class DetailsWeather extends StatelessWidget {
  const DetailsWeather(
      {super.key, required this.screanHeight, required this.screanWidth});

  final double screanHeight;
  final double screanWidth;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 7,
      itemBuilder: (context, index) {
        return Container(
          height: 270,
          child: Stack(
            children: [
              Positioned(
                top: screanHeight * 0.05,
                left: 0,
                height: 184,
                width: 342,
                child: Container(
                  child: Image.asset('asstes/Rectangle 1.png'),
                ),
              ),
              Positioned(
                top: screanHeight * 0.01,
                left: screanWidth * 0.5,
                child: Container(
                  width: 160,
                  height: 160,
                  child: Image.asset('asstes/Moon_cloud_fast_wind.png'),
                ),
              ),
              Positioned(
                top: screanHeight * 0.07,
                left: screanWidth * 0.1,
                child: Container(
                  width: 160,
                  height: 160,
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '19°',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            "H:24",
                            style: TextStyle(
                              color: Color(0xffFFFFFF),
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(width: 12),
                          Text(
                            "L:18",
                            style: TextStyle(
                              color: Color(0xffFFFFFF),
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        'Montreal, Canada',
                        style: TextStyle(
                          color: Color(0xffFFFFFF),
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
