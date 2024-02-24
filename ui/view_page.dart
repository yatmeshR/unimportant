import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:futurehire/view_page/data/internShip_list.dart';

class ViewPage extends StatefulWidget {
  const ViewPage({super.key});

  @override
  State<ViewPage> createState() => _ViewPageState();
}

class _ViewPageState extends State<ViewPage> {
  int selectedHotelIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(216, 230, 228, 1),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Heading
            Padding(
              padding: EdgeInsets.only(left: 25.w,right: 25.w,top: 10.h),
              child: Text(
                "Available Internships",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    fontFamily: 'Poppins'),
              ),
            ),

            SizedBox(
              height: 25.h,
            ),

            //   List of Internship
            Expanded(
              child: ListView.builder(
                  itemCount: internship.length,
                  itemBuilder: (context, index) {
                    final intern = internship[index];
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedHotelIndex = index;
                        });
                      },
                      child: Padding(
                        padding: EdgeInsets.only(left: 25.w, right: 25.w, top: 20.h),
                        child: Container(
                          width: 336.w,
                          height: selectedHotelIndex == index ? 167.h : 96.h,
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(245, 245, 245, 1),
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(24),
                                  bottomRight: Radius.circular(24))),
                          child: Row(
                            children: [
                              //   image
                              SizedBox(
                                height: 96.h,
                                child: Image.asset(intern.imagePath),
                              ),

                              // details
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  //   heading
                                  Container(
                                    padding: EdgeInsets.only(left: 12, top: 6),
                                    child: Row(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                            height: selectedHotelIndex == index
                                                ? 22.h
                                                : 20.h,

                                            child: Text(
                                              intern.title,
                                              style: TextStyle(
                                                  fontFamily: "Poppins",
                                                  fontSize:
                                                  selectedHotelIndex ==
                                                      index
                                                      ? 20
                                                      : 15,
                                                  fontWeight: FontWeight.w600),
                                            )),
                                        Container(
                                            height: selectedHotelIndex == index
                                                ? 27.h
                                                : 20.h,
                                            child: Text(
                                              intern.subTitle,
                                              style: TextStyle(
                                                  fontFamily: "Poppins",
                                                  fontSize:
                                                  selectedHotelIndex ==
                                                      index
                                                      ? 20
                                                      : 15,
                                                  fontWeight: FontWeight.bold),
                                            )),
                                      ],
                                    ),
                                  ),

                                  //   Stipend
                                  Padding(
                                    padding: selectedHotelIndex == index ? EdgeInsets.symmetric(horizontal: 12, vertical: 8):EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                                    child: Container(
                                      height: selectedHotelIndex == index ? 26.h: 24.h,
                                      width: selectedHotelIndex == index ? 191.w: 134.w,
                                      decoration: BoxDecoration(
                                        color: selectedHotelIndex == index
                                            ? Color.fromRGBO(5, 20, 31, 1)
                                            : Color.fromRGBO(245, 245, 245, 1),
                                        borderRadius: selectedHotelIndex == index
                                            ? BorderRadius.circular(30)
                                            : BorderRadius.circular(0),
                                      ),
                                      child: Row(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(left: 8.0.w),
                                            child: SizedBox(
                                              width: 17.w,
                                              height: 17.h,
                                              child: Image.asset(
                                                "images/grommet-icons_money.png",
                                                color:  selectedHotelIndex == index ? Colors.white: Colors.black ,),
                                            ),
                                          ),
                                          SizedBox(width: 12.w),
                                          Text(
                                            intern.payment,
                                            style: TextStyle(
                                                fontSize: 12,
                                                color: selectedHotelIndex == index
                                                    ? Colors.white
                                                    : Colors.black),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),

                                  // location
                                  Padding(
                                    padding: selectedHotelIndex == index ? EdgeInsets.symmetric(horizontal: 12, vertical: 8):EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                                    child: Container(
                                      height: selectedHotelIndex == index ? 26.h: 24.h,
                                      width: selectedHotelIndex == index ? 191.w: 134.w,
                                      decoration: BoxDecoration(
                                        color: selectedHotelIndex == index
                                            ? Color.fromRGBO(5, 20, 31, 1)
                                            : Color.fromRGBO(245, 245, 245, 1),
                                        borderRadius: selectedHotelIndex == index
                                            ? BorderRadius.circular(30)
                                            : BorderRadius.circular(0),
                                      ),
                                      child: Row(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(left: 6.0),
                                            child: SizedBox(
                                              width: 12.w,
                                              height: 14.h,
                                              child:
                                              Image.asset("images/Vector.png",
                                                color:  selectedHotelIndex == index ? Colors.white: Colors.black ,),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 12.w,
                                          ),
                                          Text(
                                            intern.location,
                                            style: TextStyle(
                                                fontSize: 12,
                                                color: selectedHotelIndex == index
                                                    ? Colors.white
                                                    : Colors.black),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
