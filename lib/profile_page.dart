import 'package:flutter/material.dart';
//import 'places_autocomplete/src/services/user_added%20_places.dart';
// import 'package:places_autocomplete/description_page1.dart';
// import 'package:places_autocomplete/description_page2.dart';
// import 'package:places_autocomplete/description_page3.dart';
//import 'package:places_autocomplete/src/services/user_added%20_places.dart';
//import 'package:places_autocomplete/src/services/user_added%20_places.dart';
import 'package:places_autocomplete/src/services/user_added%20_places.dart';


class ProfilepageWidget extends StatefulWidget {
  @override
  _ProfilepageWidgetState createState() => _ProfilepageWidgetState();
}

class _ProfilepageWidgetState extends State<ProfilepageWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile Page"),
        backgroundColor: Colors.lightGreen[400],
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
              size: 20.0,
            ),
            onPressed: () {
              Navigator.pop(context);
            }),
      ),
      body: SafeArea(
        child: Column(children: [
          Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 210,
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Stack(
                                children: [
                                  Align(
                                    alignment: AlignmentDirectional(0, 0),
                                    child: Image.asset(
                                      'assets/img11.jpg',
                                      width: MediaQuery.of(context).size.width,
                                      height: 130,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(0.85, 0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 90, 0, 0),
                                      child: Container(
                                        width: 80,
                                        height: 80,
                                        clipBehavior: Clip.antiAlias,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                        ),
                                        child: Image.asset(
                                          'assets/img12.jpg',
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        24, 140, 0, 0),
                                    child: Text(
                                      '[User Name Here]',
                                      style: TextStyle(),
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(-1, 0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          24, 174, 0, 0),
                                      child: Text(
                                        'User.name@domainname.com',
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                          fontFamily: 'Poppins',
                                          color: Colors.red,
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(24, 12, 0, 12),
                        child: Text(
                          'Places added by me',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
              UserAddedPlaces(),
              // GestureDetector(
              //   onTap: () {
              //     Navigator.push(
              //         context,
              //         MaterialPageRoute(
              //             builder: (context) => DescriptionPageWidget1()));
              //   },
              //   child: Padding(
              //     padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
              //     child: SingleChildScrollView(
              //       scrollDirection: Axis.horizontal,
              //       child: Row(
              //         mainAxisSize: MainAxisSize.max,
              //         children: [
              //           Padding(
              //             padding: EdgeInsetsDirectional.fromSTEB(16, 8, 0, 8),
              //             child: Container(
              //               width: 130,
              //               height: 170,
              //               decoration: BoxDecoration(
              //                 image: DecorationImage(
              //                   fit: BoxFit.cover,
              //                   image: Image.network(
              //                     'assets/img1.jpg',
              //                   ).image,
              //                 ),
              //                 boxShadow: [
              //                   BoxShadow(
              //                     blurRadius: 3,
              //                     color: Color(0x64000000),
              //                     offset: Offset(0, 2),
              //                   )
              //                 ],
              //                 borderRadius: BorderRadius.circular(8),
              //               ),
              //               child: Column(
              //                 mainAxisSize: MainAxisSize.max,
              //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //                 children: [
              //                   Padding(
              //                     padding: EdgeInsetsDirectional.fromSTEB(
              //                         8, 4, 8, 0),
              //                     child: Row(
              //                       mainAxisSize: MainAxisSize.max,
              //                       mainAxisAlignment: MainAxisAlignment.end,
              //                       children: [
              //                         Card(
              //                           clipBehavior:
              //                               Clip.antiAliasWithSaveLayer,
              //                           color: Color(0xFF1E2429),
              //                           elevation: 2,
              //                           shape: RoundedRectangleBorder(
              //                             borderRadius:
              //                                 BorderRadius.circular(30),
              //                           ),
              //                           child: Padding(
              //                             padding:
              //                                 EdgeInsetsDirectional.fromSTEB(
              //                                     8, 8, 8, 8),
              //                             child: Icon(
              //                               Icons.favorite_border,
              //                               color: Colors.white,
              //                               size: 24,
              //                             ),
              //                           ),
              //                         )
              //                       ],
              //                     ),
              //                   ),
              //                   Container(
              //                     width: 250,
              //                     height: 60,
              //                     decoration: BoxDecoration(
              //                       color: Color(0xFF090F13),
              //                       borderRadius: BorderRadius.only(
              //                         bottomLeft: Radius.circular(8),
              //                         bottomRight: Radius.circular(8),
              //                         topLeft: Radius.circular(0),
              //                         topRight: Radius.circular(0),
              //                       ),
              //                     ),
              //                     child: Row(
              //                       mainAxisSize: MainAxisSize.max,
              //                       children: [
              //                         Padding(
              //                           padding: EdgeInsetsDirectional.fromSTEB(
              //                               8, 0, 0, 0),
              //                           child: Column(
              //                             mainAxisSize: MainAxisSize.max,
              //                             mainAxisAlignment:
              //                                 MainAxisAlignment.center,
              //                             crossAxisAlignment:
              //                                 CrossAxisAlignment.start,
              //                             children: [
              //                               Text(
              //                                 'Hill park',
              //                                 style: TextStyle(
              //                                   fontFamily: 'Lexend Deca',
              //                                   color: Colors.white,
              //                                   fontSize: 18,
              //                                 ),
              //                               ),
              //                             ],
              //                           ),
              //                         )
              //                       ],
              //                     ),
              //                   ),
              //                 ],
              //               ),
              //             ),
              //           ),
              //           GestureDetector(
              //             onTap: () {
              //               Navigator.push(
              //                   context,
              //                   MaterialPageRoute(
              //                       builder: (context) =>
              //                           DescriptionPageWidget2()));
              //             },
              //             child: Padding(
              //               padding:
              //                   EdgeInsetsDirectional.fromSTEB(16, 8, 0, 8),
              //               child: Container(
              //                 width: 130,
              //                 height: 170,
              //                 decoration: BoxDecoration(
              //                   image: DecorationImage(
              //                     fit: BoxFit.cover,
              //                     image: Image.network(
              //                       'assets/img2.jpg',
              //                     ).image,
              //                   ),
              //                   boxShadow: [
              //                     BoxShadow(
              //                       blurRadius: 3,
              //                       color: Color(0x64000000),
              //                       offset: Offset(0, 2),
              //                     )
              //                   ],
              //                   borderRadius: BorderRadius.circular(8),
              //                 ),
              //                 child: Column(
              //                   mainAxisSize: MainAxisSize.max,
              //                   mainAxisAlignment:
              //                       MainAxisAlignment.spaceBetween,
              //                   children: [
              //                     Padding(
              //                       padding: EdgeInsetsDirectional.fromSTEB(
              //                           8, 4, 8, 0),
              //                       child: Row(
              //                         mainAxisSize: MainAxisSize.max,
              //                         mainAxisAlignment: MainAxisAlignment.end,
              //                         children: [
              //                           Card(
              //                             clipBehavior:
              //                                 Clip.antiAliasWithSaveLayer,
              //                             color: Color(0xFF1E2429),
              //                             elevation: 2,
              //                             shape: RoundedRectangleBorder(
              //                               borderRadius:
              //                                   BorderRadius.circular(30),
              //                             ),
              //                             child: Padding(
              //                               padding:
              //                                   EdgeInsetsDirectional.fromSTEB(
              //                                       8, 8, 8, 8),
              //                               child: Icon(
              //                                 Icons.favorite_border,
              //                                 color: Colors.white,
              //                                 size: 24,
              //                               ),
              //                             ),
              //                           )
              //                         ],
              //                       ),
              //                     ),
              //                     Container(
              //                       width: 250,
              //                       height: 60,
              //                       decoration: BoxDecoration(
              //                         color: Color(0xFF090F13),
              //                         borderRadius: BorderRadius.only(
              //                           bottomLeft: Radius.circular(8),
              //                           bottomRight: Radius.circular(8),
              //                           topLeft: Radius.circular(0),
              //                           topRight: Radius.circular(0),
              //                         ),
              //                       ),
              //                       child: Row(
              //                         mainAxisSize: MainAxisSize.max,
              //                         children: [
              //                           Padding(
              //                             padding:
              //                                 EdgeInsetsDirectional.fromSTEB(
              //                                     8, 0, 0, 0),
              //                             child: Column(
              //                               mainAxisSize: MainAxisSize.max,
              //                               mainAxisAlignment:
              //                                   MainAxisAlignment.center,
              //                               crossAxisAlignment:
              //                                   CrossAxisAlignment.start,
              //                               children: [
              //                                 Text(
              //                                   'Phulbari',
              //                                   style: TextStyle(
              //                                     fontFamily: 'Lexend Deca',
              //                                     color: Colors.white,
              //                                     fontSize: 18,
              //                                     fontWeight: FontWeight.normal,
              //                                   ),
              //                                 ),
              //                               ],
              //                             ),
              //                           )
              //                         ],
              //                       ),
              //                     )
              //                   ],
              //                 ),
              //               ),
              //             ),
              //           ),
              //           GestureDetector(
              //             onTap: () {
              //               Navigator.push(
              //                   context,
              //                   MaterialPageRoute(
              //                       builder: (context) =>
              //                           DescriptionPageWidget3()));
              //             },
              //             child: Padding(
              //               padding:
              //                   EdgeInsetsDirectional.fromSTEB(16, 8, 0, 8),
              //               child: Container(
              //                 width: 130,
              //                 height: 170,
              //                 decoration: BoxDecoration(
              //                   image: DecorationImage(
              //                     fit: BoxFit.cover,
              //                     image: Image.network(
              //                       'assets/img3.jpg',
              //                     ).image,
              //                   ),
              //                   boxShadow: [
              //                     BoxShadow(
              //                       blurRadius: 3,
              //                       color: Color(0x64000000),
              //                       offset: Offset(0, 2),
              //                     )
              //                   ],
              //                   borderRadius: BorderRadius.circular(8),
              //                 ),
              //                 child: Column(
              //                   mainAxisSize: MainAxisSize.max,
              //                   mainAxisAlignment:
              //                       MainAxisAlignment.spaceBetween,
              //                   children: [
              //                     Padding(
              //                       padding: EdgeInsetsDirectional.fromSTEB(
              //                           8, 4, 8, 0),
              //                       child: Row(
              //                         mainAxisSize: MainAxisSize.max,
              //                         mainAxisAlignment: MainAxisAlignment.end,
              //                         children: [
              //                           Card(
              //                             clipBehavior:
              //                                 Clip.antiAliasWithSaveLayer,
              //                             color: Color(0xFF1E2429),
              //                             elevation: 2,
              //                             shape: RoundedRectangleBorder(
              //                               borderRadius:
              //                                   BorderRadius.circular(30),
              //                             ),
              //                             child: Padding(
              //                               padding:
              //                                   EdgeInsetsDirectional.fromSTEB(
              //                                       8, 8, 8, 8),
              //                               child: Icon(
              //                                 Icons.favorite_border,
              //                                 color: Colors.white,
              //                                 size: 24,
              //                               ),
              //                             ),
              //                           )
              //                         ],
              //                       ),
              //                     ),
              //                     Container(
              //                       width: 250,
              //                       height: 60,
              //                       decoration: BoxDecoration(
              //                         color: Color(0xFF090F13),
              //                         borderRadius: BorderRadius.only(
              //                           bottomLeft: Radius.circular(8),
              //                           bottomRight: Radius.circular(8),
              //                           topLeft: Radius.circular(0),
              //                           topRight: Radius.circular(0),
              //                         ),
              //                       ),
              //                       child: Row(
              //                         mainAxisSize: MainAxisSize.max,
              //                         children: [
              //                           Padding(
              //                             padding:
              //                                 EdgeInsetsDirectional.fromSTEB(
              //                                     8, 0, 0, 0),
              //                             child: Column(
              //                               mainAxisSize: MainAxisSize.max,
              //                               mainAxisAlignment:
              //                                   MainAxisAlignment.center,
              //                               crossAxisAlignment:
              //                                   CrossAxisAlignment.start,
              //                               children: [
              //                                 Text(
              //                                   'Banbatika',
              //                                   style: TextStyle(
              //                                     fontFamily: 'Lexend Deca',
              //                                     color: Colors.white,
              //                                     fontSize: 18,
              //                                     fontWeight: FontWeight.normal,
              //                                   ),
              //                                 )
              //                               ],
              //                             ),
              //                           ),
              //                         ],
              //                       ),
              //                     )
              //                   ],
              //                 ),
              //               ),
              //             ),
              //           ),
              //         ],
              //       ),
              //     ),
              //   ),
              // ),
              // GestureDetector(
              //   onTap: () {
              //     Navigator.push(
              //         context,
              //         MaterialPageRoute(
              //             builder: (context) => DescriptionPageWidget1()));
              //   },
              //   child: Padding(
              //     padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
              //     child: SingleChildScrollView(
              //       scrollDirection: Axis.horizontal,
              //       child: Row(
              //         mainAxisSize: MainAxisSize.max,
              //         children: [
              //           Padding(
              //             padding: EdgeInsetsDirectional.fromSTEB(16, 8, 0, 8),
              //             child: Container(
              //               width: 130,
              //               height: 170,
              //               decoration: BoxDecoration(
              //                 image: DecorationImage(
              //                   fit: BoxFit.cover,
              //                   image: Image.network(
              //                     'assets/img1.jpg',
              //                   ).image,
              //                 ),
              //                 boxShadow: [
              //                   BoxShadow(
              //                     blurRadius: 3,
              //                     color: Color(0x64000000),
              //                     offset: Offset(0, 2),
              //                   )
              //                 ],
              //                 borderRadius: BorderRadius.circular(8),
              //               ),
              //               child: Column(
              //                 mainAxisSize: MainAxisSize.max,
              //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //                 children: [
              //                   Padding(
              //                     padding: EdgeInsetsDirectional.fromSTEB(
              //                         8, 4, 8, 0),
              //                     child: Row(
              //                       mainAxisSize: MainAxisSize.max,
              //                       mainAxisAlignment: MainAxisAlignment.end,
              //                       children: [
              //                         Card(
              //                           clipBehavior:
              //                               Clip.antiAliasWithSaveLayer,
              //                           color: Color(0xFF1E2429),
              //                           elevation: 2,
              //                           shape: RoundedRectangleBorder(
              //                             borderRadius:
              //                                 BorderRadius.circular(30),
              //                           ),
              //                           child: Padding(
              //                             padding:
              //                                 EdgeInsetsDirectional.fromSTEB(
              //                                     8, 8, 8, 8),
              //                             child: Icon(
              //                               Icons.favorite_border,
              //                               color: Colors.white,
              //                               size: 24,
              //                             ),
              //                           ),
              //                         )
              //                       ],
              //                     ),
              //                   ),
              //                   Container(
              //                     width: 250,
              //                     height: 60,
              //                     decoration: BoxDecoration(
              //                       color: Color(0xFF090F13),
              //                       borderRadius: BorderRadius.only(
              //                         bottomLeft: Radius.circular(8),
              //                         bottomRight: Radius.circular(8),
              //                         topLeft: Radius.circular(0),
              //                         topRight: Radius.circular(0),
              //                       ),
              //                     ),
              //                     child: Row(
              //                       mainAxisSize: MainAxisSize.max,
              //                       children: [
              //                         Padding(
              //                           padding: EdgeInsetsDirectional.fromSTEB(
              //                               8, 0, 0, 0),
              //                           child: Column(
              //                             mainAxisSize: MainAxisSize.max,
              //                             mainAxisAlignment:
              //                                 MainAxisAlignment.center,
              //                             crossAxisAlignment:
              //                                 CrossAxisAlignment.start,
              //                             children: [
              //                               Text(
              //                                 'Hill park',
              //                                 style: TextStyle(
              //                                   fontFamily: 'Lexend Deca',
              //                                   color: Colors.white,
              //                                   fontSize: 18,
              //                                 ),
              //                               ),
              //                             ],
              //                           ),
              //                         )
              //                       ],
              //                     ),
              //                   ),
              //                 ],
              //               ),
              //             ),
              //           ),
              //           GestureDetector(
              //             onTap: () {
              //               Navigator.push(
              //                   context,
              //                   MaterialPageRoute(
              //                       builder: (context) =>
              //                           DescriptionPageWidget2()));
              //             },
              //             child: Padding(
              //               padding:
              //                   EdgeInsetsDirectional.fromSTEB(16, 8, 0, 8),
              //               child: Container(
              //                 width: 130,
              //                 height: 170,
              //                 decoration: BoxDecoration(
              //                   image: DecorationImage(
              //                     fit: BoxFit.cover,
              //                     image: Image.network(
              //                       'assets/img2.jpg',
              //                     ).image,
              //                   ),
              //                   boxShadow: [
              //                     BoxShadow(
              //                       blurRadius: 3,
              //                       color: Color(0x64000000),
              //                       offset: Offset(0, 2),
              //                     )
              //                   ],
              //                   borderRadius: BorderRadius.circular(8),
              //                 ),
              //                 child: Column(
              //                   mainAxisSize: MainAxisSize.max,
              //                   mainAxisAlignment:
              //                       MainAxisAlignment.spaceBetween,
              //                   children: [
              //                     Padding(
              //                       padding: EdgeInsetsDirectional.fromSTEB(
              //                           8, 4, 8, 0),
              //                       child: Row(
              //                         mainAxisSize: MainAxisSize.max,
              //                         mainAxisAlignment: MainAxisAlignment.end,
              //                         children: [
              //                           Card(
              //                             clipBehavior:
              //                                 Clip.antiAliasWithSaveLayer,
              //                             color: Color(0xFF1E2429),
              //                             elevation: 2,
              //                             shape: RoundedRectangleBorder(
              //                               borderRadius:
              //                                   BorderRadius.circular(30),
              //                             ),
              //                             child: Padding(
              //                               padding:
              //                                   EdgeInsetsDirectional.fromSTEB(
              //                                       8, 8, 8, 8),
              //                               child: Icon(
              //                                 Icons.favorite_border,
              //                                 color: Colors.white,
              //                                 size: 24,
              //                               ),
              //                             ),
              //                           )
              //                         ],
              //                       ),
              //                     ),
              //                     Container(
              //                       width: 250,
              //                       height: 60,
              //                       decoration: BoxDecoration(
              //                         color: Color(0xFF090F13),
              //                         borderRadius: BorderRadius.only(
              //                           bottomLeft: Radius.circular(8),
              //                           bottomRight: Radius.circular(8),
              //                           topLeft: Radius.circular(0),
              //                           topRight: Radius.circular(0),
              //                         ),
              //                       ),
              //                       child: Row(
              //                         mainAxisSize: MainAxisSize.max,
              //                         children: [
              //                           Padding(
              //                             padding:
              //                                 EdgeInsetsDirectional.fromSTEB(
              //                                     8, 0, 0, 0),
              //                             child: Column(
              //                               mainAxisSize: MainAxisSize.max,
              //                               mainAxisAlignment:
              //                                   MainAxisAlignment.center,
              //                               crossAxisAlignment:
              //                                   CrossAxisAlignment.start,
              //                               children: [
              //                                 Text(
              //                                   'Phulbari',
              //                                   style: TextStyle(
              //                                     fontFamily: 'Lexend Deca',
              //                                     color: Colors.white,
              //                                     fontSize: 18,
              //                                     fontWeight: FontWeight.normal,
              //                                   ),
              //                                 ),
              //                               ],
              //                             ),
              //                           )
              //                         ],
              //                       ),
              //                     )
              //                   ],
              //                 ),
              //               ),
              //             ),
              //           ),
              //           GestureDetector(
              //             onTap: () {
              //               Navigator.push(
              //                   context,
              //                   MaterialPageRoute(
              //                       builder: (context) =>
              //                           DescriptionPageWidget3()));
              //             },
              //             child: Padding(
              //               padding:
              //                   EdgeInsetsDirectional.fromSTEB(16, 8, 0, 8),
              //               child: Container(
              //                 width: 130,
              //                 height: 170,
              //                 decoration: BoxDecoration(
              //                   image: DecorationImage(
              //                     fit: BoxFit.cover,
              //                     image: Image.network(
              //                       'assets/img3.jpg',
              //                     ).image,
              //                   ),
              //                   boxShadow: [
              //                     BoxShadow(
              //                       blurRadius: 3,
              //                       color: Color(0x64000000),
              //                       offset: Offset(0, 2),
              //                     )
              //                   ],
              //                   borderRadius: BorderRadius.circular(8),
              //                 ),
              //                 child: Column(
              //                   mainAxisSize: MainAxisSize.max,
              //                   mainAxisAlignment:
              //                       MainAxisAlignment.spaceBetween,
              //                   children: [
              //                     Padding(
              //                       padding: EdgeInsetsDirectional.fromSTEB(
              //                           8, 4, 8, 0),
              //                       child: Row(
              //                         mainAxisSize: MainAxisSize.max,
              //                         mainAxisAlignment: MainAxisAlignment.end,
              //                         children: [
              //                           Card(
              //                             clipBehavior:
              //                                 Clip.antiAliasWithSaveLayer,
              //                             color: Color(0xFF1E2429),
              //                             elevation: 2,
              //                             shape: RoundedRectangleBorder(
              //                               borderRadius:
              //                                   BorderRadius.circular(30),
              //                             ),
              //                             child: Padding(
              //                               padding:
              //                                   EdgeInsetsDirectional.fromSTEB(
              //                                       8, 8, 8, 8),
              //                               child: Icon(
              //                                 Icons.favorite_border,
              //                                 color: Colors.white,
              //                                 size: 24,
              //                               ),
              //                             ),
              //                           )
              //                         ],
              //                       ),
              //                     ),
              //                     Container(
              //                       width: 250,
              //                       height: 60,
              //                       decoration: BoxDecoration(
              //                         color: Color(0xFF090F13),
              //                         borderRadius: BorderRadius.only(
              //                           bottomLeft: Radius.circular(8),
              //                           bottomRight: Radius.circular(8),
              //                           topLeft: Radius.circular(0),
              //                           topRight: Radius.circular(0),
              //                         ),
              //                       ),
              //                       child: Row(
              //                         mainAxisSize: MainAxisSize.max,
              //                         children: [
              //                           Padding(
              //                             padding:
              //                                 EdgeInsetsDirectional.fromSTEB(
              //                                     8, 0, 0, 0),
              //                             child: Column(
              //                               mainAxisSize: MainAxisSize.max,
              //                               mainAxisAlignment:
              //                                   MainAxisAlignment.center,
              //                               crossAxisAlignment:
              //                                   CrossAxisAlignment.start,
              //                               children: [
              //                                 Text(
              //                                   'Banbatika',
              //                                   style: TextStyle(
              //                                     fontFamily: 'Lexend Deca',
              //                                     color: Colors.white,
              //                                     fontSize: 18,
              //                                     fontWeight: FontWeight.normal,
              //                                   ),
              //                                 )
              //                               ],
              //                             ),
              //                           ),
              //                         ],
              //                       ),
              //                     )
              //                   ],
              //                 ),
              //               ),
              //             ),
              //           ),
              //         ],
              //       ),
              //     ),
              //   ),
              // ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // ignore: deprecated_member_use
                    ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.red),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18.0),
                                      side: BorderSide(color: Colors.red)))),
                      onPressed: () {
                        Navigator.pop(context);
                        print('Button pressed ...');
                      },
                      child: Text(
                        'Log Out',
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}






// import 'package:flutter/material.dart';
// import 'package:places_autocomplete/description_page1.dart';
// import 'package:places_autocomplete/description_page2.dart';
// import 'package:places_autocomplete/description_page3.dart';

// class ProfilepageWidget extends StatefulWidget {
//   @override
//   _ProfilepageWidgetState createState() => _ProfilepageWidgetState();
// }

// class _ProfilepageWidgetState extends State<ProfilepageWidget> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Profile Page"),
//         backgroundColor: Colors.lightGreen[400],
//         leading: IconButton(
//             icon: Icon(
//               Icons.arrow_back,
//               color: Colors.white,
//               size: 20.0,
//             ),
//             onPressed: () {
//               Navigator.pop(context);
//             }),
//       ),
//       body: SafeArea(
//         child: ListView(children: [
//           Column(
//             mainAxisSize: MainAxisSize.max,
//             children: [
//               Row(
//                 mainAxisSize: MainAxisSize.max,
//                 children: [
//                   Container(
//                     width: MediaQuery.of(context).size.width,
//                     height: 210,
//                     decoration: BoxDecoration(
//                       color: Colors.white,
//                     ),
//                     child: Column(
//                       mainAxisSize: MainAxisSize.max,
//                       children: [
//                         Row(
//                           mainAxisSize: MainAxisSize.max,
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Expanded(
//                               child: Stack(
//                                 children: [
//                                   Align(
//                                     alignment: AlignmentDirectional(0, 0),
//                                     child: Image.asset(
//                                       'assets/img11.jpg',
//                                       width: MediaQuery.of(context).size.width,
//                                       height: 130,
//                                       fit: BoxFit.cover,
//                                     ),
//                                   ),
//                                   Align(
//                                     alignment: AlignmentDirectional(0.85, 0),
//                                     child: Padding(
//                                       padding: EdgeInsetsDirectional.fromSTEB(
//                                           0, 90, 0, 0),
//                                       child: Container(
//                                         width: 80,
//                                         height: 80,
//                                         clipBehavior: Clip.antiAlias,
//                                         decoration: BoxDecoration(
//                                           shape: BoxShape.circle,
//                                         ),
//                                         child: Image.asset(
//                                           'assets/img12.jpg',
//                                         ),
//                                       ),
//                                     ),
//                                   ),
//                                   Padding(
//                                     padding: EdgeInsetsDirectional.fromSTEB(
//                                         24, 140, 0, 0),
//                                     child: Text(
//                                       '[User Name Here]',
//                                       style: TextStyle(),
//                                     ),
//                                   ),
//                                   Align(
//                                     alignment: AlignmentDirectional(-1, 0),
//                                     child: Padding(
//                                       padding: EdgeInsetsDirectional.fromSTEB(
//                                           24, 174, 0, 0),
//                                       child: Text(
//                                         'User.name@domainname.com',
//                                         textAlign: TextAlign.start,
//                                         style: TextStyle(
//                                           fontFamily: 'Poppins',
//                                           color: Colors.red,
//                                         ),
//                                       ),
//                                     ),
//                                   )
//                                 ],
//                               ),
//                             )
//                           ],
//                         )
//                       ],
//                     ),
//                   )
//                 ],
//               ),
//               Column(
//                 mainAxisSize: MainAxisSize.max,
//                 children: [
//                   Row(
//                     mainAxisSize: MainAxisSize.max,
//                     children: [
//                       Padding(
//                         padding: EdgeInsetsDirectional.fromSTEB(24, 12, 0, 12),
//                         child: Text(
//                           'Places added by me',
//                           style: TextStyle(
//                             fontFamily: 'Poppins',
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                       )
//                     ],
//                   )
//                 ],
//               ),
//               GestureDetector(
//                 onTap: () {
//                   Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                           builder: (context) => DescriptionPageWidget1()));
//                 },
//                 child: Padding(
//                   padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
//                   child: SingleChildScrollView(
//                     scrollDirection: Axis.horizontal,
//                     child: Row(
//                       mainAxisSize: MainAxisSize.max,
//                       children: [
//                         Padding(
//                           padding: EdgeInsetsDirectional.fromSTEB(16, 8, 0, 8),
//                           child: Container(
//                             width: 130,
//                             height: 170,
//                             decoration: BoxDecoration(
//                               image: DecorationImage(
//                                 fit: BoxFit.cover,
//                                 image: Image.network(
//                                   'assets/img1.jpg',
//                                 ).image,
//                               ),
//                               boxShadow: [
//                                 BoxShadow(
//                                   blurRadius: 3,
//                                   color: Color(0x64000000),
//                                   offset: Offset(0, 2),
//                                 )
//                               ],
//                               borderRadius: BorderRadius.circular(8),
//                             ),
//                             child: Column(
//                               mainAxisSize: MainAxisSize.max,
//                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                               children: [
//                                 Padding(
//                                   padding: EdgeInsetsDirectional.fromSTEB(
//                                       8, 4, 8, 0),
//                                   child: Row(
//                                     mainAxisSize: MainAxisSize.max,
//                                     mainAxisAlignment: MainAxisAlignment.end,
//                                     children: [
//                                       Card(
//                                         clipBehavior:
//                                             Clip.antiAliasWithSaveLayer,
//                                         color: Color(0xFF1E2429),
//                                         elevation: 2,
//                                         shape: RoundedRectangleBorder(
//                                           borderRadius:
//                                               BorderRadius.circular(30),
//                                         ),
//                                         child: Padding(
//                                           padding:
//                                               EdgeInsetsDirectional.fromSTEB(
//                                                   8, 8, 8, 8),
//                                           child: Icon(
//                                             Icons.favorite_border,
//                                             color: Colors.white,
//                                             size: 24,
//                                           ),
//                                         ),
//                                       )
//                                     ],
//                                   ),
//                                 ),
//                                 Container(
//                                   width: 250,
//                                   height: 60,
//                                   decoration: BoxDecoration(
//                                     color: Color(0xFF090F13),
//                                     borderRadius: BorderRadius.only(
//                                       bottomLeft: Radius.circular(8),
//                                       bottomRight: Radius.circular(8),
//                                       topLeft: Radius.circular(0),
//                                       topRight: Radius.circular(0),
//                                     ),
//                                   ),
//                                   child: Row(
//                                     mainAxisSize: MainAxisSize.max,
//                                     children: [
//                                       Padding(
//                                         padding: EdgeInsetsDirectional.fromSTEB(
//                                             8, 0, 0, 0),
//                                         child: Column(
//                                           mainAxisSize: MainAxisSize.max,
//                                           mainAxisAlignment:
//                                               MainAxisAlignment.center,
//                                           crossAxisAlignment:
//                                               CrossAxisAlignment.start,
//                                           children: [
//                                             Text(
//                                               'Hill park',
//                                               style: TextStyle(
//                                                 fontFamily: 'Lexend Deca',
//                                                 color: Colors.white,
//                                                 fontSize: 18,
//                                               ),
//                                             ),
//                                           ],
//                                         ),
//                                       )
//                                     ],
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                         GestureDetector(
//                           onTap: () {
//                             Navigator.push(
//                                 context,
//                                 MaterialPageRoute(
//                                     builder: (context) =>
//                                         DescriptionPageWidget2()));
//                           },
//                           child: Padding(
//                             padding:
//                                 EdgeInsetsDirectional.fromSTEB(16, 8, 0, 8),
//                             child: Container(
//                               width: 130,
//                               height: 170,
//                               decoration: BoxDecoration(
//                                 image: DecorationImage(
//                                   fit: BoxFit.cover,
//                                   image: Image.network(
//                                     'assets/img2.jpg',
//                                   ).image,
//                                 ),
//                                 boxShadow: [
//                                   BoxShadow(
//                                     blurRadius: 3,
//                                     color: Color(0x64000000),
//                                     offset: Offset(0, 2),
//                                   )
//                                 ],
//                                 borderRadius: BorderRadius.circular(8),
//                               ),
//                               child: Column(
//                                 mainAxisSize: MainAxisSize.max,
//                                 mainAxisAlignment:
//                                     MainAxisAlignment.spaceBetween,
//                                 children: [
//                                   Padding(
//                                     padding: EdgeInsetsDirectional.fromSTEB(
//                                         8, 4, 8, 0),
//                                     child: Row(
//                                       mainAxisSize: MainAxisSize.max,
//                                       mainAxisAlignment: MainAxisAlignment.end,
//                                       children: [
//                                         Card(
//                                           clipBehavior:
//                                               Clip.antiAliasWithSaveLayer,
//                                           color: Color(0xFF1E2429),
//                                           elevation: 2,
//                                           shape: RoundedRectangleBorder(
//                                             borderRadius:
//                                                 BorderRadius.circular(30),
//                                           ),
//                                           child: Padding(
//                                             padding:
//                                                 EdgeInsetsDirectional.fromSTEB(
//                                                     8, 8, 8, 8),
//                                             child: Icon(
//                                               Icons.favorite_border,
//                                               color: Colors.white,
//                                               size: 24,
//                                             ),
//                                           ),
//                                         )
//                                       ],
//                                     ),
//                                   ),
//                                   Container(
//                                     width: 250,
//                                     height: 60,
//                                     decoration: BoxDecoration(
//                                       color: Color(0xFF090F13),
//                                       borderRadius: BorderRadius.only(
//                                         bottomLeft: Radius.circular(8),
//                                         bottomRight: Radius.circular(8),
//                                         topLeft: Radius.circular(0),
//                                         topRight: Radius.circular(0),
//                                       ),
//                                     ),
//                                     child: Row(
//                                       mainAxisSize: MainAxisSize.max,
//                                       children: [
//                                         Padding(
//                                           padding:
//                                               EdgeInsetsDirectional.fromSTEB(
//                                                   8, 0, 0, 0),
//                                           child: Column(
//                                             mainAxisSize: MainAxisSize.max,
//                                             mainAxisAlignment:
//                                                 MainAxisAlignment.center,
//                                             crossAxisAlignment:
//                                                 CrossAxisAlignment.start,
//                                             children: [
//                                               Text(
//                                                 'Phulbari',
//                                                 style: TextStyle(
//                                                   fontFamily: 'Lexend Deca',
//                                                   color: Colors.white,
//                                                   fontSize: 18,
//                                                   fontWeight: FontWeight.normal,
//                                                 ),
//                                               ),
//                                             ],
//                                           ),
//                                         )
//                                       ],
//                                     ),
//                                   )
//                                 ],
//                               ),
//                             ),
//                           ),
//                         ),
//                         GestureDetector(
//                           onTap: () {
//                             Navigator.push(
//                                 context,
//                                 MaterialPageRoute(
//                                     builder: (context) =>
//                                         DescriptionPageWidget3()));
//                           },
//                           child: Padding(
//                             padding:
//                                 EdgeInsetsDirectional.fromSTEB(16, 8, 0, 8),
//                             child: Container(
//                               width: 130,
//                               height: 170,
//                               decoration: BoxDecoration(
//                                 image: DecorationImage(
//                                   fit: BoxFit.cover,
//                                   image: Image.network(
//                                     'assets/img3.jpg',
//                                   ).image,
//                                 ),
//                                 boxShadow: [
//                                   BoxShadow(
//                                     blurRadius: 3,
//                                     color: Color(0x64000000),
//                                     offset: Offset(0, 2),
//                                   )
//                                 ],
//                                 borderRadius: BorderRadius.circular(8),
//                               ),
//                               child: Column(
//                                 mainAxisSize: MainAxisSize.max,
//                                 mainAxisAlignment:
//                                     MainAxisAlignment.spaceBetween,
//                                 children: [
//                                   Padding(
//                                     padding: EdgeInsetsDirectional.fromSTEB(
//                                         8, 4, 8, 0),
//                                     child: Row(
//                                       mainAxisSize: MainAxisSize.max,
//                                       mainAxisAlignment: MainAxisAlignment.end,
//                                       children: [
//                                         Card(
//                                           clipBehavior:
//                                               Clip.antiAliasWithSaveLayer,
//                                           color: Color(0xFF1E2429),
//                                           elevation: 2,
//                                           shape: RoundedRectangleBorder(
//                                             borderRadius:
//                                                 BorderRadius.circular(30),
//                                           ),
//                                           child: Padding(
//                                             padding:
//                                                 EdgeInsetsDirectional.fromSTEB(
//                                                     8, 8, 8, 8),
//                                             child: Icon(
//                                               Icons.favorite_border,
//                                               color: Colors.white,
//                                               size: 24,
//                                             ),
//                                           ),
//                                         )
//                                       ],
//                                     ),
//                                   ),
//                                   Container(
//                                     width: 250,
//                                     height: 60,
//                                     decoration: BoxDecoration(
//                                       color: Color(0xFF090F13),
//                                       borderRadius: BorderRadius.only(
//                                         bottomLeft: Radius.circular(8),
//                                         bottomRight: Radius.circular(8),
//                                         topLeft: Radius.circular(0),
//                                         topRight: Radius.circular(0),
//                                       ),
//                                     ),
//                                     child: Row(
//                                       mainAxisSize: MainAxisSize.max,
//                                       children: [
//                                         Padding(
//                                           padding:
//                                               EdgeInsetsDirectional.fromSTEB(
//                                                   8, 0, 0, 0),
//                                           child: Column(
//                                             mainAxisSize: MainAxisSize.max,
//                                             mainAxisAlignment:
//                                                 MainAxisAlignment.center,
//                                             crossAxisAlignment:
//                                                 CrossAxisAlignment.start,
//                                             children: [
//                                               Text(
//                                                 'Banbatika',
//                                                 style: TextStyle(
//                                                   fontFamily: 'Lexend Deca',
//                                                   color: Colors.white,
//                                                   fontSize: 18,
//                                                   fontWeight: FontWeight.normal,
//                                                 ),
//                                               )
//                                             ],
//                                           ),
//                                         ),
//                                       ],
//                                     ),
//                                   )
//                                 ],
//                               ),
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//               GestureDetector(
//                 onTap: () {
//                   Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                           builder: (context) => DescriptionPageWidget1()));
//                 },
//                 child: Padding(
//                   padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
//                   child: SingleChildScrollView(
//                     scrollDirection: Axis.horizontal,
//                     child: Row(
//                       mainAxisSize: MainAxisSize.max,
//                       children: [
//                         Padding(
//                           padding: EdgeInsetsDirectional.fromSTEB(16, 8, 0, 8),
//                           child: Container(
//                             width: 130,
//                             height: 170,
//                             decoration: BoxDecoration(
//                               image: DecorationImage(
//                                 fit: BoxFit.cover,
//                                 image: Image.network(
//                                   'assets/img1.jpg',
//                                 ).image,
//                               ),
//                               boxShadow: [
//                                 BoxShadow(
//                                   blurRadius: 3,
//                                   color: Color(0x64000000),
//                                   offset: Offset(0, 2),
//                                 )
//                               ],
//                               borderRadius: BorderRadius.circular(8),
//                             ),
//                             child: Column(
//                               mainAxisSize: MainAxisSize.max,
//                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                               children: [
//                                 Padding(
//                                   padding: EdgeInsetsDirectional.fromSTEB(
//                                       8, 4, 8, 0),
//                                   child: Row(
//                                     mainAxisSize: MainAxisSize.max,
//                                     mainAxisAlignment: MainAxisAlignment.end,
//                                     children: [
//                                       Card(
//                                         clipBehavior:
//                                             Clip.antiAliasWithSaveLayer,
//                                         color: Color(0xFF1E2429),
//                                         elevation: 2,
//                                         shape: RoundedRectangleBorder(
//                                           borderRadius:
//                                               BorderRadius.circular(30),
//                                         ),
//                                         child: Padding(
//                                           padding:
//                                               EdgeInsetsDirectional.fromSTEB(
//                                                   8, 8, 8, 8),
//                                           child: Icon(
//                                             Icons.favorite_border,
//                                             color: Colors.white,
//                                             size: 24,
//                                           ),
//                                         ),
//                                       )
//                                     ],
//                                   ),
//                                 ),
//                                 Container(
//                                   width: 250,
//                                   height: 60,
//                                   decoration: BoxDecoration(
//                                     color: Color(0xFF090F13),
//                                     borderRadius: BorderRadius.only(
//                                       bottomLeft: Radius.circular(8),
//                                       bottomRight: Radius.circular(8),
//                                       topLeft: Radius.circular(0),
//                                       topRight: Radius.circular(0),
//                                     ),
//                                   ),
//                                   child: Row(
//                                     mainAxisSize: MainAxisSize.max,
//                                     children: [
//                                       Padding(
//                                         padding: EdgeInsetsDirectional.fromSTEB(
//                                             8, 0, 0, 0),
//                                         child: Column(
//                                           mainAxisSize: MainAxisSize.max,
//                                           mainAxisAlignment:
//                                               MainAxisAlignment.center,
//                                           crossAxisAlignment:
//                                               CrossAxisAlignment.start,
//                                           children: [
//                                             Text(
//                                               'Hill park',
//                                               style: TextStyle(
//                                                 fontFamily: 'Lexend Deca',
//                                                 color: Colors.white,
//                                                 fontSize: 18,
//                                               ),
//                                             ),
//                                           ],
//                                         ),
//                                       )
//                                     ],
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                         GestureDetector(
//                           onTap: () {
//                             Navigator.push(
//                                 context,
//                                 MaterialPageRoute(
//                                     builder: (context) =>
//                                         DescriptionPageWidget2()));
//                           },
//                           child: Padding(
//                             padding:
//                                 EdgeInsetsDirectional.fromSTEB(16, 8, 0, 8),
//                             child: Container(
//                               width: 130,
//                               height: 170,
//                               decoration: BoxDecoration(
//                                 image: DecorationImage(
//                                   fit: BoxFit.cover,
//                                   image: Image.network(
//                                     'assets/img2.jpg',
//                                   ).image,
//                                 ),
//                                 boxShadow: [
//                                   BoxShadow(
//                                     blurRadius: 3,
//                                     color: Color(0x64000000),
//                                     offset: Offset(0, 2),
//                                   )
//                                 ],
//                                 borderRadius: BorderRadius.circular(8),
//                               ),
//                               child: Column(
//                                 mainAxisSize: MainAxisSize.max,
//                                 mainAxisAlignment:
//                                     MainAxisAlignment.spaceBetween,
//                                 children: [
//                                   Padding(
//                                     padding: EdgeInsetsDirectional.fromSTEB(
//                                         8, 4, 8, 0),
//                                     child: Row(
//                                       mainAxisSize: MainAxisSize.max,
//                                       mainAxisAlignment: MainAxisAlignment.end,
//                                       children: [
//                                         Card(
//                                           clipBehavior:
//                                               Clip.antiAliasWithSaveLayer,
//                                           color: Color(0xFF1E2429),
//                                           elevation: 2,
//                                           shape: RoundedRectangleBorder(
//                                             borderRadius:
//                                                 BorderRadius.circular(30),
//                                           ),
//                                           child: Padding(
//                                             padding:
//                                                 EdgeInsetsDirectional.fromSTEB(
//                                                     8, 8, 8, 8),
//                                             child: Icon(
//                                               Icons.favorite_border,
//                                               color: Colors.white,
//                                               size: 24,
//                                             ),
//                                           ),
//                                         )
//                                       ],
//                                     ),
//                                   ),
//                                   Container(
//                                     width: 250,
//                                     height: 60,
//                                     decoration: BoxDecoration(
//                                       color: Color(0xFF090F13),
//                                       borderRadius: BorderRadius.only(
//                                         bottomLeft: Radius.circular(8),
//                                         bottomRight: Radius.circular(8),
//                                         topLeft: Radius.circular(0),
//                                         topRight: Radius.circular(0),
//                                       ),
//                                     ),
//                                     child: Row(
//                                       mainAxisSize: MainAxisSize.max,
//                                       children: [
//                                         Padding(
//                                           padding:
//                                               EdgeInsetsDirectional.fromSTEB(
//                                                   8, 0, 0, 0),
//                                           child: Column(
//                                             mainAxisSize: MainAxisSize.max,
//                                             mainAxisAlignment:
//                                                 MainAxisAlignment.center,
//                                             crossAxisAlignment:
//                                                 CrossAxisAlignment.start,
//                                             children: [
//                                               Text(
//                                                 'Phulbari',
//                                                 style: TextStyle(
//                                                   fontFamily: 'Lexend Deca',
//                                                   color: Colors.white,
//                                                   fontSize: 18,
//                                                   fontWeight: FontWeight.normal,
//                                                 ),
//                                               ),
//                                             ],
//                                           ),
//                                         )
//                                       ],
//                                     ),
//                                   )
//                                 ],
//                               ),
//                             ),
//                           ),
//                         ),
//                         GestureDetector(
//                           onTap: () {
//                             Navigator.push(
//                                 context,
//                                 MaterialPageRoute(
//                                     builder: (context) =>
//                                         DescriptionPageWidget3()));
//                           },
//                           child: Padding(
//                             padding:
//                                 EdgeInsetsDirectional.fromSTEB(16, 8, 0, 8),
//                             child: Container(
//                               width: 130,
//                               height: 170,
//                               decoration: BoxDecoration(
//                                 image: DecorationImage(
//                                   fit: BoxFit.cover,
//                                   image: Image.network(
//                                     'assets/img3.jpg',
//                                   ).image,
//                                 ),
//                                 boxShadow: [
//                                   BoxShadow(
//                                     blurRadius: 3,
//                                     color: Color(0x64000000),
//                                     offset: Offset(0, 2),
//                                   )
//                                 ],
//                                 borderRadius: BorderRadius.circular(8),
//                               ),
//                               child: Column(
//                                 mainAxisSize: MainAxisSize.max,
//                                 mainAxisAlignment:
//                                     MainAxisAlignment.spaceBetween,
//                                 children: [
//                                   Padding(
//                                     padding: EdgeInsetsDirectional.fromSTEB(
//                                         8, 4, 8, 0),
//                                     child: Row(
//                                       mainAxisSize: MainAxisSize.max,
//                                       mainAxisAlignment: MainAxisAlignment.end,
//                                       children: [
//                                         Card(
//                                           clipBehavior:
//                                               Clip.antiAliasWithSaveLayer,
//                                           color: Color(0xFF1E2429),
//                                           elevation: 2,
//                                           shape: RoundedRectangleBorder(
//                                             borderRadius:
//                                                 BorderRadius.circular(30),
//                                           ),
//                                           child: Padding(
//                                             padding:
//                                                 EdgeInsetsDirectional.fromSTEB(
//                                                     8, 8, 8, 8),
//                                             child: Icon(
//                                               Icons.favorite_border,
//                                               color: Colors.white,
//                                               size: 24,
//                                             ),
//                                           ),
//                                         )
//                                       ],
//                                     ),
//                                   ),
//                                   Container(
//                                     width: 250,
//                                     height: 60,
//                                     decoration: BoxDecoration(
//                                       color: Color(0xFF090F13),
//                                       borderRadius: BorderRadius.only(
//                                         bottomLeft: Radius.circular(8),
//                                         bottomRight: Radius.circular(8),
//                                         topLeft: Radius.circular(0),
//                                         topRight: Radius.circular(0),
//                                       ),
//                                     ),
//                                     child: Row(
//                                       mainAxisSize: MainAxisSize.max,
//                                       children: [
//                                         Padding(
//                                           padding:
//                                               EdgeInsetsDirectional.fromSTEB(
//                                                   8, 0, 0, 0),
//                                           child: Column(
//                                             mainAxisSize: MainAxisSize.max,
//                                             mainAxisAlignment:
//                                                 MainAxisAlignment.center,
//                                             crossAxisAlignment:
//                                                 CrossAxisAlignment.start,
//                                             children: [
//                                               Text(
//                                                 'Banbatika',
//                                                 style: TextStyle(
//                                                   fontFamily: 'Lexend Deca',
//                                                   color: Colors.white,
//                                                   fontSize: 18,
//                                                   fontWeight: FontWeight.normal,
//                                                 ),
//                                               )
//                                             ],
//                                           ),
//                                         ),
//                                       ],
//                                     ),
//                                   )
//                                 ],
//                               ),
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//               Padding(
//                 padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
//                 child: Row(
//                   mainAxisSize: MainAxisSize.max,
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     // ignore: deprecated_member_use
//                     RaisedButton(
//                       onPressed: () {
//                         Navigator.pop(context);
//                         print('Button pressed ...');
//                       },
//                       child: Text(
//                         'Log Out',
//                       ),
//                     )
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ]),
//       ),
//     );
//   }
// }








// // import 'package:flutter/material.dart';
// // import 'package:places_autocomplete/description_page1.dart';
// // import 'package:places_autocomplete/description_page2.dart';
// // import 'package:places_autocomplete/description_page3.dart';
// // //import 'package:app/tabs_screen.dart';
// // // import 'package:google_fonts/google_fonts.dart';


// // class ProfilepageWidget extends StatefulWidget {
// //   //const ProfilepageWidget({ Key? key }) : super(key: key);

// //   @override
// //   _ProfilepageWidgetState createState() => _ProfilepageWidgetState();
// // }

// // class _ProfilepageWidgetState extends State<ProfilepageWidget> {
// //   // bool _loadingButton = false;
// //   final scaffoldKey = GlobalKey<ScaffoldState>();
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text("Profile Page"),
// //         backgroundColor: Colors.lightGreen[400],
// //       leading: IconButton(icon: Icon(Icons.arrow_back, color: Colors.white, size: 20.0,),
// //                      onPressed: () {
// //                        Navigator.pop(context);
// //                      }),
// //       ),

// //       key: scaffoldKey,
// //       body: SafeArea(
// //         child: ListView(children: [
// //           Column(
// //           mainAxisSize: MainAxisSize.max,
// //           children: [
// //             Row(
// //               mainAxisSize: MainAxisSize.max,
// //               children: [
// //                 Container(
// //                   width: MediaQuery.of(context).size.width,
// //                   height: 210,
// //                   decoration: BoxDecoration(
// //                     color: Colors.white,
// //                   ),
// //                   child: Column(
// //                     mainAxisSize: MainAxisSize.max,
// //                     children: [
// //                       Row(
// //                         mainAxisSize: MainAxisSize.max,
// //                         crossAxisAlignment: CrossAxisAlignment.start,
// //                         children: [
// //                           Expanded(
// //                             child: Stack(
// //                               children: [
// //                                 Align(
// //                                   alignment: AlignmentDirectional(0, 0),
// //                                   child: Image.asset(
// //                                     'assets/img11.jpg',
// //                                     width: MediaQuery.of(context).size.width,
// //                                     height: 130,
// //                                     fit: BoxFit.cover,
// //                                   ),
// //                                 ),
// //                                 Align(
// //                                   alignment: AlignmentDirectional(0.85, 0),
// //                                   child: Padding(
// //                                     padding: EdgeInsetsDirectional.fromSTEB(
// //                                         0, 90, 0, 0),
// //                                     child: Container(
// //                                       width: 80,
// //                                       height: 80,
// //                                       clipBehavior: Clip.antiAlias,
// //                                       decoration: BoxDecoration(
// //                                         shape: BoxShape.circle,
// //                                       ),
// //                                       child: Image.asset(
// //                                        'assets/img12.jpg',
// //                                       ),
// //                                     ),
// //                                   ),
// //                                 ),
// //                                 Padding(
// //                                   padding: EdgeInsetsDirectional.fromSTEB(
// //                                       24, 140, 0, 0),
// //                                   child: Text(
// //                                     '[User Name Here]',
// //                                     style: TextStyle(),
// //                                   ),
// //                                 ),
// //                                 Align(
// //                                   alignment: AlignmentDirectional(-1, 0),
// //                                   child: Padding(
// //                                     padding: EdgeInsetsDirectional.fromSTEB(
// //                                         24, 174, 0, 0),
// //                                     child: Text(
// //                                       'User.name@domainname.com',
// //                                       textAlign: TextAlign.start,
// //                                       style:
// //                                           TextStyle(
// //                                         fontFamily: 'Poppins',
// //                                         color: Colors.red,
// //                                       ),
// //                                     ),
// //                                   ),
// //                                 )
// //                               ],
// //                             ),
// //                           )
// //                         ],
// //                       )
// //                     ],
// //                   ),
// //                 )
// //               ],
// //             ),
// //             Column(
// //               mainAxisSize: MainAxisSize.max,
// //               children: [
// //                 Row(
// //                   mainAxisSize: MainAxisSize.max,
// //                   children: [
// //                     Padding(
// //                       padding: EdgeInsetsDirectional.fromSTEB(24, 12, 0, 12),
// //                       child: Text('Places added by me',
// //                        // 'Account Settings',
// //                         style: TextStyle(
// //                           fontFamily: 'Poppins',
// //                           fontWeight: FontWeight.bold,
// //                         ),
// //                       ),
// //                     )
// //                   ],
// //                 )
// //               ],
// //              ),


             
// //             //  Padding(
// //             //     padding: EdgeInsetsDirectional.fromSTEB(16, 8, 16, 0),
// //             //     child: Row(
// //             //       mainAxisSize: MainAxisSize.max,
// //             //       children: [
// //             //         Text(
// //             //           'User/s Added Places',
// //             //           style: TextStyle(
// //             //             fontFamily: 'Lexend Deca',
// //             //             color: Colors.white,
// //             //             fontSize: 19,
// //             //             fontWeight: FontWeight.w500,
// //             //           ),
// //             //         )
// //             //       ],
// //             //     ),
// //             //   ),

// //                SingleChildScrollView(
// //                   child: GestureDetector(
// //                     onTap: (){
// //               Navigator.push(context, MaterialPageRoute(builder: (context)=>DescriptionPageWidget1()));
// //                     },
              
// //                   child: Padding(
// //                     padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
// //                     child: SingleChildScrollView(
// //                       scrollDirection: Axis.horizontal,
// //                       child: Row(
// //                         mainAxisSize: MainAxisSize.max,
// //                         children: [
// //                           Padding(
// //                             padding: EdgeInsetsDirectional.fromSTEB(16, 8, 0, 8),
// //                             child: Container(
// //                               width: 130,
// //                               height: 170,
// //                               decoration: BoxDecoration(
// //                                 image: DecorationImage(
// //                                   fit: BoxFit.cover,
// //                                   image: Image.network(
// //                                     'assets/img1.jpg',
// //                                   ).image,
                                
// //                                 ),
// //                                 boxShadow: [
// //                                   BoxShadow(
// //                                     blurRadius: 3,
// //                                     color: Color(0x64000000),
// //                                     offset: Offset(0, 2),
// //                                   )
// //                                 ],
// //                                 borderRadius: BorderRadius.circular(8),
// //                               ),
// //                               child: Column(
// //                                 mainAxisSize: MainAxisSize.max,
// //                                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //                                 children: [
// //                                   Padding(
// //                                     padding:
// //                                         EdgeInsetsDirectional.fromSTEB(8, 4, 8, 0),
// //                                     child: Row(
// //                                       mainAxisSize: MainAxisSize.max,
// //                                       mainAxisAlignment: MainAxisAlignment.end,
// //                                       children: [
// //                                         Card(
// //                                           clipBehavior: Clip.antiAliasWithSaveLayer,
// //                                           color: Color(0xFF1E2429),
// //                                           elevation: 2,
// //                                           shape: RoundedRectangleBorder(
// //                                             borderRadius: BorderRadius.circular(30),
// //                                           ),
// //                                           child: Padding(
// //                                             padding: EdgeInsetsDirectional.fromSTEB(
// //                                                 8, 8, 8, 8),
// //                                             child: Icon(
// //                                               Icons.favorite_border,
// //                                               color: Colors.white,
// //                                               size: 24,
// //                                             ),
// //                                           ),
// //                                         )
// //                                       ],
// //                                     ),
// //                                   ),
// //                                   Container(
// //                                     width: 250,
// //                                     height: 60,
// //                                     decoration: BoxDecoration(
// //                                       color: Color(0xFF090F13),
// //                                       borderRadius: BorderRadius.only(
// //                                         bottomLeft: Radius.circular(8),
// //                                         bottomRight: Radius.circular(8),
// //                                         topLeft: Radius.circular(0),
// //                                         topRight: Radius.circular(0),
// //                                       ),
// //                                     ),
                                    
// //                                     child: Row(
// //                                       mainAxisSize: MainAxisSize.max,
// //                                       children: [
// //                                         Padding(
// //                                           padding: EdgeInsetsDirectional.fromSTEB(
// //                                               8, 0, 0, 0),
// //                                           child: Column(
// //                                             mainAxisSize: MainAxisSize.max,
// //                                             mainAxisAlignment:
// //                                                 MainAxisAlignment.center,
// //                                             crossAxisAlignment:
// //                                                 CrossAxisAlignment.start,
// //                                             children: [
// //                                               Text(
// //                                                 'Hill park',
// //                                                 style: TextStyle(
// //                                                   fontFamily: 'Lexend Deca',
// //                                                   color: Colors.white,
// //                                                   fontSize: 18,
// //                                                 ),
// //                                               ),
// //                                           ],
// //                                         ),
// //                                        )
// //                                       ],
// //                                      ),
// //                                      ),
// //                                      ],
// //                                       ),
// //                                      ),
// //                                     ),

                          
// //                      GestureDetector(
// //                               onTap: (){
// //                              Navigator.push(context, MaterialPageRoute(builder: (context)=>DescriptionPageWidget2()));
// //                               },
          
// //                             child: Padding(
// //                               padding: EdgeInsetsDirectional.fromSTEB(16, 8, 0, 8),
// //                               child: Container(
// //                                 width: 130,
// //                                 height: 170,
// //                                 decoration: BoxDecoration(
// //                                   image: DecorationImage(
// //                                     fit: BoxFit.cover,
// //                                     image: Image.network(
// //                                       'assets/img2.jpg',
// //                                     ).image,
// //                                   ),
                                  
// //                                   boxShadow: [
// //                                     BoxShadow(
// //                                       blurRadius: 3,
// //                                       color: Color(0x64000000),
// //                                       offset: Offset(0, 2),
// //                                     )
// //                                   ],
// //                                   borderRadius: BorderRadius.circular(8),
// //                                 ),
// //                                 child: Column(
// //                                   mainAxisSize: MainAxisSize.max,
// //                                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //                                   children: [
// //                                     Padding(
// //                                       padding:
// //                                           EdgeInsetsDirectional.fromSTEB(8, 4, 8, 0),
// //                                       child: Row(
// //                                         mainAxisSize: MainAxisSize.max,
// //                                         mainAxisAlignment: MainAxisAlignment.end,
// //                                         children: [
// //                                           Card(
// //                                             clipBehavior: Clip.antiAliasWithSaveLayer,
// //                                             color: Color(0xFF1E2429),
// //                                             elevation: 2,
// //                                             shape: RoundedRectangleBorder(
// //                                               borderRadius: BorderRadius.circular(30),
// //                                             ),
// //                                             child: Padding(
// //                                               padding: EdgeInsetsDirectional.fromSTEB(
// //                                                   8, 8, 8, 8),
// //                                               child: Icon(
// //                                                 Icons.favorite_border,
// //                                                 color: Colors.white,
// //                                                 size: 24,
// //                                               ),
// //                                             ),
// //                                           )
// //                                         ],
// //                                       ),
// //                                     ),

// //                                     Container(
// //                                       width: 250,
// //                                       height: 60,
// //                                       decoration: BoxDecoration(
// //                                         color: Color(0xFF090F13),
// //                                         borderRadius: BorderRadius.only(
// //                                           bottomLeft: Radius.circular(8),
// //                                           bottomRight: Radius.circular(8),
// //                                           topLeft: Radius.circular(0),
// //                                           topRight: Radius.circular(0),
// //                                         ),
// //                                       ),
// //                                       child: Row(
// //                                         mainAxisSize: MainAxisSize.max,
// //                                         children: [
// //                                           Padding(
// //                                             padding: EdgeInsetsDirectional.fromSTEB(
// //                                                 8, 0, 0, 0),
// //                                             child: Column(
                                              
// //                                               mainAxisSize: MainAxisSize.max,
// //                                               mainAxisAlignment:
// //                                                   MainAxisAlignment.center,
// //                                               crossAxisAlignment:
// //                                                   CrossAxisAlignment.start,
// //                                               children: [
// //                                                 Text(
// //                                                   'Phulbari',
// //                                                   style: TextStyle(
// //                                                     fontFamily: 'Lexend Deca',
// //                                                     color: Colors.white,
// //                                                     fontSize: 18,
// //                                                     fontWeight: FontWeight.normal,
// //                                                   ),
// //                                                 ),
                                 
// //                                               ],
// //                                             ),
// //                                           )
// //                                         ],
// //                                       ),
// //                                     )
// //                                   ],
// //                                 ),
// //                               ),
// //                             ),
// //                           ),




// //                     GestureDetector(
// //                               onTap: (){
// //                                Navigator.push(context, MaterialPageRoute(builder: (context)=>DescriptionPageWidget3()));
// //                               },
                          
// //                             child: Padding(
// //                               padding: EdgeInsetsDirectional.fromSTEB(16, 8, 0, 8),
// //                               child: Container(
// //                                 width: 130,
// //                                 height: 170,
// //                                 decoration: BoxDecoration(
// //                                   image: DecorationImage(
// //                                     fit: BoxFit.cover,
// //                                     image: Image.network(
// //                                       'assets/img3.jpg',
// //                                     ).image,
// //                                   ),
// //                                   boxShadow: [
// //                                     BoxShadow(
// //                                       blurRadius: 3,
// //                                       color: Color(0x64000000),
// //                                       offset: Offset(0, 2),
// //                                     )
// //                                   ],
// //                                   borderRadius: BorderRadius.circular(8),
// //                                 ),
// //                                 child: Column(
// //                                   mainAxisSize: MainAxisSize.max,
// //                                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //                                   children: [
// //                                     Padding(
// //                                       padding:
// //                                           EdgeInsetsDirectional.fromSTEB(8, 4, 8, 0),
// //                                       child: Row(
// //                                         mainAxisSize: MainAxisSize.max,
// //                                         mainAxisAlignment: MainAxisAlignment.end,
// //                                         children: [
// //                                           Card(
// //                                             clipBehavior: Clip.antiAliasWithSaveLayer,
// //                                             color: Color(0xFF1E2429),
// //                                             elevation: 2,
// //                                             shape: RoundedRectangleBorder(
// //                                               borderRadius: BorderRadius.circular(30),
// //                                             ),
// //                                             child: Padding(
// //                                               padding: EdgeInsetsDirectional.fromSTEB(
// //                                                   8, 8, 8, 8),
// //                                               child: Icon(
// //                                                 Icons.favorite_border,
// //                                                 color: Colors.white,
// //                                                 size: 24,
// //                                               ),
// //                                             ),
// //                                           )
// //                                         ],
// //                                       ),
// //                                     ),
// //                                     Container(
// //                                       width: 250,
// //                                       height: 60,
// //                                       decoration: BoxDecoration(
// //                                         color: Color(0xFF090F13),
// //                                         borderRadius: BorderRadius.only(
// //                                           bottomLeft: Radius.circular(8),
// //                                           bottomRight: Radius.circular(8),
// //                                           topLeft: Radius.circular(0),
// //                                           topRight: Radius.circular(0),
// //                                         ),
// //                                       ),
// //                                       child: Row(
// //                                         mainAxisSize: MainAxisSize.max,
// //                                         children: [
// //                                           Padding(
// //                                             padding: EdgeInsetsDirectional.fromSTEB(
// //                                                 8, 0, 0, 0),
// //                                             child: Column(
// //                                               mainAxisSize: MainAxisSize.max,
// //                                               mainAxisAlignment:
// //                                                   MainAxisAlignment.center,
// //                                               crossAxisAlignment:
// //                                                   CrossAxisAlignment.start,
// //                                               children: [
// //                                                 Text(
// //                                                   'Banbatika',
// //                                                   style: TextStyle(
// //                                                     fontFamily: 'Lexend Deca',
// //                                                     color: Colors.white,
// //                                                     fontSize: 18,
// //                                                     fontWeight: FontWeight.normal,
// //                                                   ),
// //                                                 )
// //                                               ],
// //                                             ),
// //                                           ),
// //                                         ],
// //                                       ),
// //                                     )
// //                                   ],
// //                                 ),
// //                               ),
// //                             ),
// //                           ),


// //                         ],
// //                       ),
// //                     ),
// //                   ),
// //                ),
// //                 ),




// //         Expanded(
// //           child: SingleChildScrollView(
// //                     child: GestureDetector(
// //                       onTap: (){
// //                 Navigator.push(context, MaterialPageRoute(builder: (context)=>DescriptionPageWidget1()));
// //                       },
                
// //                     child: Padding(
// //                       padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
// //                       child: SingleChildScrollView(
// //                         scrollDirection: Axis.horizontal,
// //                         child: Row(
// //                           mainAxisSize: MainAxisSize.max,
// //                           children: [
// //                             Padding(
// //                               padding: EdgeInsetsDirectional.fromSTEB(16, 8, 0, 8),
// //                               child: Container(
// //                                 width: 130,
// //                                 height: 170,
// //                                 decoration: BoxDecoration(
// //                                   image: DecorationImage(
// //                                     fit: BoxFit.cover,
// //                                     image: Image.network(
// //                                       'assets/img1.jpg',
// //                                     ).image,
                                  
// //                                   ),
// //                                   boxShadow: [
// //                                     BoxShadow(
// //                                       blurRadius: 3,
// //                                       color: Color(0x64000000),
// //                                       offset: Offset(0, 2),
// //                                     )
// //                                   ],
// //                                   borderRadius: BorderRadius.circular(8),
// //                                 ),
// //                                 child: Column(
// //                                   mainAxisSize: MainAxisSize.max,
// //                                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //                                   children: [
// //                                     Padding(
// //                                       padding:
// //                                           EdgeInsetsDirectional.fromSTEB(8, 4, 8, 0),
// //                                       child: Row(
// //                                         mainAxisSize: MainAxisSize.max,
// //                                         mainAxisAlignment: MainAxisAlignment.end,
// //                                         children: [
// //                                           Card(
// //                                             clipBehavior: Clip.antiAliasWithSaveLayer,
// //                                             color: Color(0xFF1E2429),
// //                                             elevation: 2,
// //                                             shape: RoundedRectangleBorder(
// //                                               borderRadius: BorderRadius.circular(30),
// //                                             ),
// //                                             child: Padding(
// //                                               padding: EdgeInsetsDirectional.fromSTEB(
// //                                                   8, 8, 8, 8),
// //                                               child: Icon(
// //                                                 Icons.favorite_border,
// //                                                 color: Colors.white,
// //                                                 size: 24,
// //                                               ),
// //                                             ),
// //                                           )
// //                                         ],
// //                                       ),
// //                                     ),
// //                                     Container(
// //                                       width: 250,
// //                                       height: 60,
// //                                       decoration: BoxDecoration(
// //                                         color: Color(0xFF090F13),
// //                                         borderRadius: BorderRadius.only(
// //                                           bottomLeft: Radius.circular(8),
// //                                           bottomRight: Radius.circular(8),
// //                                           topLeft: Radius.circular(0),
// //                                           topRight: Radius.circular(0),
// //                                         ),
// //                                       ),
                                      
// //                                       child: Row(
// //                                         mainAxisSize: MainAxisSize.max,
// //                                         children: [
// //                                           Padding(
// //                                             padding: EdgeInsetsDirectional.fromSTEB(
// //                                                 8, 0, 0, 0),
// //                                             child: Column(
// //                                               mainAxisSize: MainAxisSize.max,
// //                                               mainAxisAlignment:
// //                                                   MainAxisAlignment.center,
// //                                               crossAxisAlignment:
// //                                                   CrossAxisAlignment.start,
// //                                               children: [
// //                                                 Text(
// //                                                   'Hill park',
// //                                                   style: TextStyle(
// //                                                     fontFamily: 'Lexend Deca',
// //                                                     color: Colors.white,
// //                                                     fontSize: 18,
// //                                                   ),
// //                                                 ),
// //                                             ],
// //                                           ),
// //                                          )
// //                                         ],
// //                                        ),
// //                                        ),
// //                                        ],
// //                                         ),
// //                                        ),
// //                                       ),

                            
// //                        GestureDetector(
// //                                 onTap: (){
// //                                Navigator.push(context, MaterialPageRoute(builder: (context)=>DescriptionPageWidget2()));
// //                                 },
            
// //                               child: Padding(
// //                                 padding: EdgeInsetsDirectional.fromSTEB(16, 8, 0, 8),
// //                                 child: Container(
// //                                   width: 130,
// //                                   height: 170,
// //                                   decoration: BoxDecoration(
// //                                     image: DecorationImage(
// //                                       fit: BoxFit.cover,
// //                                       image: Image.network(
// //                                         'assets/img2.jpg',
// //                                       ).image,
// //                                     ),
                                    
// //                                     boxShadow: [
// //                                       BoxShadow(
// //                                         blurRadius: 3,
// //                                         color: Color(0x64000000),
// //                                         offset: Offset(0, 2),
// //                                       )
// //                                     ],
// //                                     borderRadius: BorderRadius.circular(8),
// //                                   ),
// //                                   child: Column(
// //                                     mainAxisSize: MainAxisSize.max,
// //                                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //                                     children: [
// //                                       Padding(
// //                                         padding:
// //                                             EdgeInsetsDirectional.fromSTEB(8, 4, 8, 0),
// //                                         child: Row(
// //                                           mainAxisSize: MainAxisSize.max,
// //                                           mainAxisAlignment: MainAxisAlignment.end,
// //                                           children: [
// //                                             Card(
// //                                               clipBehavior: Clip.antiAliasWithSaveLayer,
// //                                               color: Color(0xFF1E2429),
// //                                               elevation: 2,
// //                                               shape: RoundedRectangleBorder(
// //                                                 borderRadius: BorderRadius.circular(30),
// //                                               ),
// //                                               child: Padding(
// //                                                 padding: EdgeInsetsDirectional.fromSTEB(
// //                                                     8, 8, 8, 8),
// //                                                 child: Icon(
// //                                                   Icons.favorite_border,
// //                                                   color: Colors.white,
// //                                                   size: 24,
// //                                                 ),
// //                                               ),
// //                                             )
// //                                           ],
// //                                         ),
// //                                       ),

// //                                       Container(
// //                                         width: 250,
// //                                         height: 60,
// //                                         decoration: BoxDecoration(
// //                                           color: Color(0xFF090F13),
// //                                           borderRadius: BorderRadius.only(
// //                                             bottomLeft: Radius.circular(8),
// //                                             bottomRight: Radius.circular(8),
// //                                             topLeft: Radius.circular(0),
// //                                             topRight: Radius.circular(0),
// //                                           ),
// //                                         ),
// //                                         child: Row(
// //                                           mainAxisSize: MainAxisSize.max,
// //                                           children: [
// //                                             Padding(
// //                                               padding: EdgeInsetsDirectional.fromSTEB(
// //                                                   8, 0, 0, 0),
// //                                               child: Column(
                                                
// //                                                 mainAxisSize: MainAxisSize.max,
// //                                                 mainAxisAlignment:
// //                                                     MainAxisAlignment.center,
// //                                                 crossAxisAlignment:
// //                                                     CrossAxisAlignment.start,
// //                                                 children: [
// //                                                   Text(
// //                                                     'Phulbari',
// //                                                     style: TextStyle(
// //                                                       fontFamily: 'Lexend Deca',
// //                                                       color: Colors.white,
// //                                                       fontSize: 18,
// //                                                       fontWeight: FontWeight.normal,
// //                                                     ),
// //                                                   ),
                                   
// //                                                 ],
// //                                               ),
// //                                             )
// //                                           ],
// //                                         ),
// //                                       )
// //                                     ],
// //                                   ),
// //                                 ),
// //                               ),
// //                             ),




// //                       GestureDetector(
// //                                 onTap: (){
// //                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>DescriptionPageWidget3()));
// //                                 },
                            
// //                               child: Padding(
// //                                 padding: EdgeInsetsDirectional.fromSTEB(16, 8, 0, 8),
// //                                 child: Container(
// //                                   width: 130,
// //                                   height: 170,
// //                                   decoration: BoxDecoration(
// //                                     image: DecorationImage(
// //                                       fit: BoxFit.cover,
// //                                       image: Image.network(
// //                                         'assets/img3.jpg',
// //                                       ).image,
// //                                     ),
// //                                     boxShadow: [
// //                                       BoxShadow(
// //                                         blurRadius: 3,
// //                                         color: Color(0x64000000),
// //                                         offset: Offset(0, 2),
// //                                       )
// //                                     ],
// //                                     borderRadius: BorderRadius.circular(8),
// //                                   ),
// //                                   child: Column(
// //                                     mainAxisSize: MainAxisSize.max,
// //                                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //                                     children: [
// //                                       Padding(
// //                                         padding:
// //                                             EdgeInsetsDirectional.fromSTEB(8, 4, 8, 0),
// //                                         child: Row(
// //                                           mainAxisSize: MainAxisSize.max,
// //                                           mainAxisAlignment: MainAxisAlignment.end,
// //                                           children: [
// //                                             Card(
// //                                               clipBehavior: Clip.antiAliasWithSaveLayer,
// //                                               color: Color(0xFF1E2429),
// //                                               elevation: 2,
// //                                               shape: RoundedRectangleBorder(
// //                                                 borderRadius: BorderRadius.circular(30),
// //                                               ),
// //                                               child: Padding(
// //                                                 padding: EdgeInsetsDirectional.fromSTEB(
// //                                                     8, 8, 8, 8),
// //                                                 child: Icon(
// //                                                   Icons.favorite_border,
// //                                                   color: Colors.white,
// //                                                   size: 24,
// //                                                 ),
// //                                               ),
// //                                             )
// //                                           ],
// //                                         ),
// //                                       ),
// //                                       Container(
// //                                         width: 250,
// //                                         height: 60,
// //                                         decoration: BoxDecoration(
// //                                           color: Color(0xFF090F13),
// //                                           borderRadius: BorderRadius.only(
// //                                             bottomLeft: Radius.circular(8),
// //                                             bottomRight: Radius.circular(8),
// //                                             topLeft: Radius.circular(0),
// //                                             topRight: Radius.circular(0),
// //                                           ),
// //                                         ),
// //                                         child: Row(
// //                                           mainAxisSize: MainAxisSize.max,
// //                                           children: [
// //                                             Padding(
// //                                               padding: EdgeInsetsDirectional.fromSTEB(
// //                                                   8, 0, 0, 0),
// //                                               child: Column(
// //                                                 mainAxisSize: MainAxisSize.max,
// //                                                 mainAxisAlignment:
// //                                                     MainAxisAlignment.center,
// //                                                 crossAxisAlignment:
// //                                                     CrossAxisAlignment.start,
// //                                                 children: [
// //                                                   Text(
// //                                                     'Banbatika',
// //                                                     style: TextStyle(
// //                                                       fontFamily: 'Lexend Deca',
// //                                                       color: Colors.white,
// //                                                       fontSize: 18,
// //                                                       fontWeight: FontWeight.normal,
// //                                                     ),
// //                                                   )
// //                                                 ],
// //                                               ),
// //                                             ),
// //                                           ],
// //                                         ),
// //                                       )
// //                                     ],
// //                                   ),
// //                                 ),
// //                               ),
// //                             ),


// //                           ],
// //                         ),
// //                       ),
// //                     ),
// //                  ),
// //                ),
// //         ),


// //             // Expanded(
// //             //   child: ListView(
// //             //     padding: EdgeInsets.zero,
// //             //     scrollDirection: Axis.vertical,
// //             //     children: [
// //             //       Row(
// //             //         mainAxisSize: MainAxisSize.max,
// //             //         children: [
// //             //           Container(
// //             //             width: MediaQuery.of(context).size.width,
// //             //             height: 50,
// //             //             decoration: BoxDecoration(
// //             //               color: Colors.white,
// //             //               shape: BoxShape.rectangle,
// //             //             ),
// //             //             child: Row(
// //             //               mainAxisSize: MainAxisSize.max,
// //             //               children: [
// //             //                 Padding(
// //             //                   padding:
// //             //                       EdgeInsetsDirectional.fromSTEB(24, 0, 0, 0),
// //             //                   child: Text(
// //             //                     'Order History',
// //             //                     // style: FlutterFlowTheme.bodyText1,
// //             //                   ),
// //             //                 ),
// //             //                 Expanded(
// //             //                   child: Align(
// //             //                     alignment: AlignmentDirectional(0.9, 0),
// //             //                     child: Icon(
// //             //                       Icons.arrow_forward_ios,
// //             //                       color: Color(0xFF95A1AC),
// //             //                       size: 18,
// //             //                     ),
// //             //                   ),
// //             //                 )
// //             //               ],
// //             //             ),
// //             //           )
// //             //         ],
// //             //       ),
// //             //       Padding(
// //             //         padding: EdgeInsetsDirectional.fromSTEB(0, 1, 0, 0),
// //             //         child: Row(
// //             //           mainAxisSize: MainAxisSize.max,
// //             //           children: [
// //             //             Container(
// //             //               width: MediaQuery.of(context).size.width,
// //             //               height: 50,
// //             //               decoration: BoxDecoration(
// //             //                 color: Colors.white,
// //             //                 shape: BoxShape.rectangle,
// //             //               ),
// //             //               child: Row(
// //             //                 mainAxisSize: MainAxisSize.max,
// //             //                 children: [
// //             //                   Padding(
// //             //                     padding:
// //             //                         EdgeInsetsDirectional.fromSTEB(24, 0, 0, 0),
// //             //                     child: Text(
// //             //                       'Settings',
// //             //                       // style: FlutterFlowTheme.bodyText1,
// //             //                     ),
// //             //                   ),
// //             //                   Expanded(
// //             //                     child: Align(
// //             //                       alignment: AlignmentDirectional(0.9, 0),
// //             //                       child: Icon(
// //             //                         Icons.arrow_forward_ios,
// //             //                         color: Color(0xFF95A1AC),
// //             //                         size: 18,
// //             //                       ),
// //             //                     ),
// //             //                   )
// //             //                 ],
// //             //               ),
// //             //             )
// //             //           ],
// //             //         ),
// //             //       ),
// //             //       Padding(
// //             //         padding: EdgeInsetsDirectional.fromSTEB(0, 1, 0, 0),
// //             //         child: Row(
// //             //           mainAxisSize: MainAxisSize.max,
// //             //           children: [
// //             //             Container(
// //             //               width: MediaQuery.of(context).size.width,
// //             //               height: 50,
// //             //               decoration: BoxDecoration(
// //             //                 color: Colors.white,
// //             //                 shape: BoxShape.rectangle,
// //             //               ),
// //             //               child: Row(
// //             //                 mainAxisSize: MainAxisSize.max,
// //             //                 children: [
// //             //                   Padding(
// //             //                     padding:
// //             //                         EdgeInsetsDirectional.fromSTEB(24, 0, 0, 0),
// //             //                     child: Text(
// //             //                       'Notifications',
// //             //                       // style: FlutterFlowTheme.bodyText1,
// //             //                     ),
// //             //                   ),
// //             //                   Expanded(
// //             //                     child: Align(
// //             //                       alignment: AlignmentDirectional(0.9, 0),
// //             //                       child: Icon(
// //             //                         Icons.arrow_forward_ios,
// //             //                         color: Color(0xFF95A1AC),
// //             //                         size: 18,
// //             //                       ),
// //             //                     ),
// //             //                   )
// //             //                 ],
// //             //               ),
// //             //             )
// //             //           ],
// //             //         ),
// //             //       ),
// //             //       Padding(
// //             //         padding: EdgeInsetsDirectional.fromSTEB(0, 1, 0, 0),
// //             //         child: Row(
// //             //           mainAxisSize: MainAxisSize.max,
// //             //           children: [
// //             //             Container(
// //             //               width: MediaQuery.of(context).size.width,
// //             //               height: 50,
// //             //               decoration: BoxDecoration(
// //             //                 color: Colors.white,
// //             //                 shape: BoxShape.rectangle,
// //             //               ),
// //             //               child: Row(
// //             //                 mainAxisSize: MainAxisSize.max,
// //             //                 children: [
// //             //                   Padding(
// //             //                     padding:
// //             //                         EdgeInsetsDirectional.fromSTEB(24, 0, 0, 0),
// //             //                     child: Text(
// //             //                       'Change Password',
// //             //                       // style: FlutterFlowTheme.bodyText1,
// //             //                     ),
// //             //                   ),
// //             //                   Expanded(
// //             //                     child: Align(
// //             //                       alignment: AlignmentDirectional(0.9, 0),
// //             //                       child: Icon(
// //             //                         Icons.arrow_forward_ios,
// //             //                         color: Color(0xFF95A1AC),
// //             //                         size: 18,
// //             //                       ),
// //             //                     ),
// //             //                   )
// //             //                 ],
// //             //               ),
// //             //             )
// //             //           ],
// //             //         ),
// //             //       ),

// //                   Padding(
// //                     padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
// //                     child: Row(
// //                       mainAxisSize: MainAxisSize.max,
// //                       mainAxisAlignment: MainAxisAlignment.center,
// //                       children: [
// //                         RaisedButton(
// //                           onPressed: () {
// //                             Navigator.pop(context);
// //                             print('Button pressed ...');
// //                           },
// //                           child:Text( 'Log Out',),
// //                           // options: FFButtonOptions(
// //                           //   width: 90,
// //                           //   height: 40,
// //                           //   color: Colors.white,
// //                           //   textStyle: TextStyle(
// //                           //     fontFamily: 'Poppins',
// //                           //     color: Colors.green,
// //                           //   ),
// //                           //   elevation: 3,
// //                           //   borderSide: BorderSide(
// //                           //     color: Colors.transparent,
// //                           //     width: 1,
// //                           //   ),
// //                           //   borderRadius: 8,
// //                           // ),
// //                           // loading: _loadingButton,
// //                         )
// //                       ],
// //                     ),
// //                   ),

// //                 ],
// //               ),
// //            // ),
// //          // ],
// //        // ),
// //      // ),
// //         ],
// //       ),
// //     ),
// //     );
// //   }
// // }