//  import 'package:flyeasy/utils/app_layout.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:gap/gap.dart';

// import '../utils/app_styles.dart';

// class Search extends StatelessWidget {
//    const Search({super.key});
 
//    @override
//    Widget build(BuildContext context) {

//      // STARTING THE FIRST ROW NYC -> LDN

//      final size = AppLayout.getSize(context);
//      return SizedBox(
//        width:size.width,
//        height: 200,
//        child: Container(
//          margin: const EdgeInsets.only(left: 16),
//          child: Column(
//            mainAxisSize: MainAxisSize.min,
//            children: [
//              // THE BELOW CONTAINER IS FOR THE BLUE PART OF THE TICKET

//              Container(
//                decoration:  const BoxDecoration(
//                  color: Color (0xFF526799),
//                  borderRadius: BorderRadius.only(topLeft: Radius.circular(21),
//                  topRight: Radius.circular(21))
//                ),
//                padding: const EdgeInsets.all(16),
//                child: Column(
//                  children: [
//                    Row(
//                      children: [
//                        Text("NYC",style: Styles.headLineStyle3.copyWith(color: Colors.white),),
//                        Expanded(child: Container()),
//                        ThickContainer(),
//                        Expanded(child: Stack(
//                          children: [
//                            SizedBox(
//                              height: 24,
//                              child: LayoutBuilder(            // the lines betn nyc and lndn to be dynamic as to fit devices of different screen size

//                                builder: (BuildContext context, BoxConstraints constraints) {
//                                  return Flex(
//                                    direction: Axis.horizontal,
//                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                    mainAxisSize: MainAxisSize.max,
//                                    children: List.generate((constraints.constrainWidth()/6).floor(), (index) => const SizedBox(
//                                      width: 3, height: 1, child: DecoratedBox(decoration: BoxDecoration(
//                                        color: Colors.white
//                                    ),),
//                                    )),
//                                  );
//                                },

//                              ),
//                            ),
//                            Center(child: Transform.rotate(angle: 1.5,child: Icon(Icons.local_airport_rounded, color: Colors.white,),)),  // rotating the airplane logo in ticket

//                          ]
//                        )),

//                        ThickContainer(),
//                        Expanded(child: Container()),
//                        Text("LDN",style: Styles.headLineStyle3.copyWith(color: Colors.white),)
//                      ],
//                    ),
//                    const Gap(3),

//                    //ENDING THE FIRST ROW   (THE FIRST BLUE ROW. THE TICKET)
//                    //ROWS AND COLUMNS ALWAYS TAKE CHILDREN AND THEN LIST OF CHILDREN [] -> THIS IS A LIST
//                    //STARTING ANOTHER ROW

//                    Row(
//                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                      children: [
//                        SizedBox(
//                          width: 100,child: Text('New York',style:Styles.headLineStyle4.copyWith(color: Colors.white),),
//                        ),
//                        Text("8H 30M",style: Styles.headLineStyle4.copyWith(color: Colors.white),),
//                        SizedBox(
//                          width: 100,child: Text('London',textAlign:TextAlign.end,style:Styles.headLineStyle4.copyWith(color: Colors.white),),
//                        ),
//                      ],

//                    ),
//                  ],
//                ),
//              ),

//              // THE BELOW CONTAINER IS FOR THE ORANGE PART OF THE TICKET

//              Container(

//              ),
//            ],
//          ),
//        ),

//      );
//    }
//  }
 