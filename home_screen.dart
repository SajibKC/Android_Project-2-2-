import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:project/hotel_screen.dart';
import 'package:project/screens/ticket_view.dart';
import 'package:project/utils/app_info_list.dart';

import '../utils/app_styles.dart';

class HomeScreen extends StatelessWidget {
  final Map<String,dynamic> hotel;
  const HomeScreen({Key? key, required this.hotel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('Hotel price is ${hotel['price']}');
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const Gap(40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Good Morning",
                          style: Styles.headLineStyle3,
                        ),
                        const Gap(5),
                        Text(
                          "Book Tickets",
                          style: Styles.headLineStyle1,
                        ),
                      ],
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/images/img_1.png")),
                      ),
                    ),
                  ],
                ),
                const Gap(25),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xFFF4F6FD)),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  child: Row(
                    children: [
                      const Icon(FluentSystemIcons.ic_fluent_search_regular,
                          color: Color(0xFFBFC205)),
                      Text(
                        "Search",
                        style: Styles.headLineStyle4,
                      ),
                    ],
                  ),
                ),
                const Gap(40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Upcoming Flights",
                      style: Styles.headLineStyle2,
                    ),
                    InkWell(
                        onTap: () {
                          print("Your are tapped");
                        },
                        child: Text(
                          "View all",
                          style: Styles.textStyle
                              .copyWith(color: Styles.primaryColor),
                        ))
                  ],
                )
              ],
            ),
          ),
          const Gap(15),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: ticketList.map((singleTicket) => TicketView(ticket: singleTicket,)).toList(),
            ),
          ),
          const Gap(15),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Hotels",
                  style: Styles.headLineStyle2,
                ),
                InkWell(
                    onTap: () {
                      print("Your are tapped");
                    },
                    child: Text(
                      "View all",
                      style:
                          Styles.textStyle.copyWith(color: Styles.primaryColor),
                    ))
              ],
            ),
          ),
          const Gap(15),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(right: 20),
            child: Row(
              children: [
                //HotelScreen(),
                //HotelScreen(),
                //HotelScreen(),
                //HotelScreen(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
