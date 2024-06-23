import 'package:flutter/material.dart';

class Weekly_Forecast extends StatefulWidget {
  const Weekly_Forecast({super.key, required this.screanHeight});
  final double screanHeight;

  @override
  State<Weekly_Forecast> createState() => _Weekly_ForecastState();
}

class _Weekly_ForecastState extends State<Weekly_Forecast> {
  int selectedIndex = -1; // Declare as a member variable

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: widget.screanHeight * 0.5,
      left: 0,
      height: 590,
      width: 364,
      child: Container(
        decoration: const BoxDecoration(
          color: Color(0xff2E335A),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(12),
            topRight: Radius.circular(12),
          ),
        ),
        child: Column(
          children: [
            IconButton(
                onPressed: () {}, icon: Image.asset('asstes/Indicator.png')),
            Container(
              margin: EdgeInsets.all(8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Hourly Forecast',
                    style: TextStyle(
                      color: Color(0xffEBEBF5).withOpacity(0.5),
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    'Weekly Forecast',
                    style: TextStyle(
                      color: Color(0xffEBEBF5).withOpacity(0.5),
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(8),
              width: 350,
              height: 146,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 7,
                itemBuilder: (BuildContext context, int index) {
                  return InkWell(
                    onTap: () {
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                    child: Container(
                      height: 146,
                      width: 60,
                      margin: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: selectedIndex == index
                            ? Color(0xff40CBD8)
                            : const Color(0xff48319D),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            '12 Am',
                            style: TextStyle(
                              color: selectedIndex == index
                                  ? const Color.fromARGB(204, 0, 0, 0)
                                  : Colors.white,
                              fontSize: 16,
                            ),
                          ),
                          Image.asset('asstes/Weather_Icon.png'),
                          Text(
                            '19°',
                            style: TextStyle(
                              color: selectedIndex == index
                                  ? const Color.fromARGB(204, 0, 0, 0)
                                  : Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
