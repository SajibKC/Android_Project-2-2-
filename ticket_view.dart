import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:project/utils/app_layout.dart';
import 'package:project/utils/app_styles.dart';
import 'package:project/widgets/thick_container.dart';

class TicketView extends StatefulWidget{
  const TicketView ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    final size= AppLayout.getSize(context);
    return SizedBox(
      width: size.width,
      height: 200,
      child: Container(
        margin: const EdgeInsets.only(left: 16),
        child: Column(
          mainAxisSize: MainAxisSize.min,padding: const EdgeInsets.all(16),
          children: [

            //showing the blue part of the card
            Container(
              decoration: const BoxDecoration(
                color: Color(0xFF526799),
                borderRadius: BorderRadius.only(topLeft: Radius.circular(21),
                    topRight:Radius.circular(21)
                ),

              ),
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text("NYC",style: Styles.headLineStyle3.copyWith(color: Colors.white),),

                      Expanded(child: Container()),
                      const ThickContainer(),
                      Expanded(child: Stack(
                        children: [
                          SizedBox(
                            height: 24,
                            child: LayoutBuilder(

                              builder: (BuildContext context, BoxConstraints constraints){
                                if (kDebugMode) {
                                  print("The width is ${constraints.constrainWidth()}");
                                }
                                return Flex(
                                    direction: Axis.horizontal,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    mainAxisSize: MainAxisSize.max,
                                    children: List.generate((constraints.constrainWidth()/6.floor()) as int, (index) => const SizedBox(
                                width:3,height:1,child: DecoratedBox(decoration:BoxDecoration(
                                color: Colors.white
                                )),
                                ),
                                ),
                              },
                            ),
                          ),
                          Center(child: Transform.rotate(angle: 1.5,child: const Icon(Icons.local_airport_rounded, color: Colors.white))),


                          ThickContainer()
                        ],

                      )),
                      const ThickContainer(),

                      Expanded(child: Container()),
                      const Spacer()
                      Text("London",style: Styles.headLineStyle3,)

                    ],
                  ),
                  const Gap(3),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 100,child: Text('New-York',style: Styles.headLineStyle4.copyWith(color: Colors.white))
                      ),
                      Text("8H 30M",style: Styles.headLineStyle3.copyWith(color: Colors.white)),
                      SizedBox(
                        width: 100,child: Text('London',textAlign: TextAlign.end,style: Styles.headLineStyle4.copyWith(color: Colors.white),),
                      ),
                    ],
                  )
                ],
              ),
            ),

    //showing the orange part of the card
    Container(
    color: Styles.orangeColor,
    child: Row(
    children: [
    const SizedBox(
    height: 20,
    width: 10,
    child: DecoratedBox(
    decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.only(
    topRight: Radius.circular(10),
    bottomRight: Radius.circular(10)
    )
    ),
    ),
    ),
    Expanded(child: Padding(
    padding: const EdgeInsets.all(12.0),
    child: LayoutBuilder(
    builder: (BuildContext context,BoxConstraints constraints){
    return Flex(
    direction: Axis.horizontal,
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    mainAxisSize: MainAxisSize.max,
    children: List.generate((constraints.constrainWidth()/15).floor(), (index) => const SizedBox(
    width: 5,height: 1,
    child: DecoratedBox(
    decoration: BoxDecoration(
    color: Colors.white
    ),
    ),
    )),
    );
    },
    ),
    )),
    const SizedBox(
    height: 20,
    width: 10,
    child: DecoratedBox(
    decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.only(
    topLeft: Radius.circular(10),
    bottomLeft: Radius.circular(10)
    )
    ),
    ),
    )
    ],
    ),
    )

    //showing the bottom part of the orange card
    Container(
    decoration:  BoxDecoration(
    color: Styles.orangeColor,
    borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(21),
    bottomRight:Radius.circular(21))
    ),
    padding:  const EdgeInsets.all(16),
    child: Column(
    children: [
    Row(
    children: [
    Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Text("1 May", style: Styles.headLineStyle3.copyWith(color: Colors.white),),
    const Gap(5),
    Text("Date",style: Styles.headLineStyle4.copyWith(color: Colors.white),)

    ],
    ),

    Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Text("1 May", style: Styles.headLineStyle3.copyWith(color: Colors.white),),
    Text("Date",style: Styles.headLineStyle4.copyWith(color: Colors.white),)

    ],
    )
    ],
    )
    ],
    ),

    ),
    ]

    )
    ],
    ),
    ),

    )
  }
}