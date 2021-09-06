import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'newcard.dart';

class MyHomePage extends StatelessWidget {
  final List<Map<String, dynamic>> myList = [
    {
      'Dental': ['assets/images/dental.svg', '26 Doctors'],
    },
    {
      'Heart': ['assets/images/heart.svg', '18 Doctors'],
    },
    {
      'Brain': ['assets/images/brain.svg', '32 Doctors'],
    },
    {
      'Bone': ['assets/images/bone.svg', '36 Doctors'],
    }
  ];

  final List<Map<String, dynamic>> myList2 = [
    {
      'user1': [
        'assets/images/img1.png',
        'Dr. Fred Mask',
        'Heart surgen',
        '4.3',
        '5.4 km'
      ],
    },
    {
      'user2': [
        'assets/images/img2.png',
        'Dr. Stella Kane ',
        'Bone Specialist',
        '4.9',
        '3.1 km'
      ],
    },
    {
      'user3': [
        'assets/images/img3.png',
        'Dr. Zac Wolff',
        'Eyes Specialist',
        '4.6',
        '4.6 km'
      ],
    }
  ];

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
      child: Scaffold(
        backgroundColor: Color(0xff053F5E),
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Color(0xff053F5E),
          leading: Padding(
            padding: const EdgeInsets.all(15.0),
            child: SvgPicture.asset(
              'assets/images/menu.svg',
              height: 5,
              width: 5,
            ),
          ),
          actions: [
            SvgPicture.asset(
              'assets/images/notification.svg',
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Container(
                  height: 35,
                  width: 40,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/ahmed.png'),
                        fit: BoxFit.fill),
                  ),
                  child: Text(''),
                ),
              ),
            ),
          ],
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color(0xffF6F6F6),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40),
              topRight: Radius.circular(40),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        'Hi, Olivia',
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        'Welcome Back',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      //Second Widgets
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
                        ),
                        child: Stack(
                          children: [
                            TextField(
                              decoration: InputDecoration(
                                hintText: 'Search...',
                                filled: true,
                                fillColor: Colors.white,
                                border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10.0),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              right: 0,
                              top: 1,
                              bottom: 1,
                              child: Container(
                                padding: EdgeInsets.all(15),
                                decoration: BoxDecoration(
                                    color: Color(0xff107163),
                                    borderRadius: BorderRadius.circular(10)),
                                child: SvgPicture.asset(
                                  'assets/images/search.svg',
                                ),
                                height: 15,
                                width: 55,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),

                  //Thired Widgits
                  Row(
                    children: [
                      Text(
                        'Category',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      Text(
                        'See All',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.normal),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Flexible(
                        child: Container(
                          height: 150,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: false,
                            physics: BouncingScrollPhysics(),
                            itemCount: myList.length,
                            itemBuilder: (context, index) => Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 5),
                              child: Container(
                                width: 120,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Color(0xff107163),
                                ),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    SvgPicture.asset(
                                        myList[index].values.first[0]),
                                    Text(
                                      myList[index].keys.first,
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16),
                                    ),
                                    Container(
                                      alignment: Alignment.center,
                                      height: 30,
                                      width: 90,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Colors.white.withOpacity(0.1)),
                                      child: Text(
                                        myList[index].values.first[1],
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  //Four Widgets
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Text(
                        'Top rate ',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      Text(
                        'See All',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.normal),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),

                  SingleChildScrollView(),
                  //Five Widgets
                  Newcard('assets/images/img1.png', 'Dr. Fred Mask',
                      'Heart surgen', '4.3', '5.4 km'),
                  Newcard('assets/images/img2.png', 'Dr. Stella Kane ',
                      'Bone Specialist', '4.9', '3.1 km'),
                  Newcard('assets/images/img3.png', 'Dr. Zac Wolff',
                      'Eyes Specialist', '4.6', '4.6 km'),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
