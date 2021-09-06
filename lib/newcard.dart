import 'package:doctor_app/time.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

// ignore: must_be_immutable
class Newcard extends StatelessWidget {
  String? pic;
  String? name;
  String? subname;
  String? rate;
  String? line;
//, String name, String subname, String rate, String line
  Newcard(String pic, String name, String subname, String rate, String line) {
    this.pic = pic;
    this.name = name;
    this.subname = subname;
    this.rate = rate;
    this.line = line;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade300,
                offset: Offset(0, 3),
                spreadRadius: 2,
                blurRadius: 10,
              ),
            ],
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            children: [
              Container(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Container(
                    height: 75,
                    width: 75,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(pic.toString()), fit: BoxFit.fill),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 100,
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => TimePage()),
                    );
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Dr. Fred Mask',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Text(
                        'Heart surgen',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 50,
                width: 120,
                alignment: Alignment.bottomCenter,
                // color: Colors.red,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.asset(
                      'assets/images/star.svg',
                      height: 15,
                    ),
                    Text('4.7'),
                    Text('|'),
                    SvgPicture.asset(
                      'assets/images/location.svg',
                      height: 15,
                    ),
                    Text('5.3 km'),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 5,
        )
      ],
    );
  }
}
