import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class CategoryWidget1 extends StatefulWidget {
 // const CategoryWidget1({ Key? key }) : super(key: key);

  @override
  _CategoryWidget1State createState() => _CategoryWidget1State();
}

class _CategoryWidget1State extends State<CategoryWidget1> {
  List holyplaces = List();
  Future getdata() async {
    var url = 'http://192.168.100.174/php/readholyplaces.php';
    var response = await http.get(Uri.parse(url), headers: {"Accept": "application/json", "Access-Control-Allow-Origin": "*"});
    var jsondata = json.decode(response.body);
    setState(() {
          holyplaces = jsondata;
        });
  }

  @override
  void initState(){
    super.initState();
    getdata();
  }


  @override
  Widget build(BuildContext context) {
    return Container(

      width: MediaQuery.of(context).size.width,
      height: 170,
      child: ListView.builder(
        //scrollDirection: Axis.horizontal,
        itemCount: holyplaces.length,
        itemBuilder: (context, index){
          return GestureDetector(
            onTap: () {
             Navigator.push(context, MaterialPageRoute(builder: (context) => DescriptionOfPlace(
                placename: holyplaces[index]['place_name'],
                address: holyplaces[index]['address'],
                description: holyplaces[index]['description'],
                imageurl: holyplaces[index]['image_url'],
                time: holyplaces[index]['time'],
                distance: holyplaces[index]['distance'],
                
             )),
            );
            },
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(6, 8, 6, 5),
              child: Container(
                height: 170,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: Image.network(
                      holyplaces[index]['image_url'],
                    ).image,
                    ),
                    borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                      ),
                      Container(
                        width: 250,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.black87,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(8),
                            bottomRight: Radius.circular(8),
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          ),

                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                               padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                               child: Column(
                                 mainAxisSize: MainAxisSize.max,
                                 mainAxisAlignment: MainAxisAlignment.center,
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children: [
                                   Text(
                                     holyplaces[index]['place_name'],
                                     style: TextStyle(fontFamily: 'Lexend Deca',
                                     color: Colors.white,
                                     fontSize: 15,
                                     fontWeight: FontWeight.normal,
                                     ),

                                   ),
                                 ],
                               ),
                            ),
                          ],
                        ),
                      ),
                  ],
                ),
                ),),
          );
        }),
      
    );
  }
}

class DescriptionOfPlace extends StatefulWidget {
 // const DescriptionOfPlace({ Key? key }) : super(key: key);
  final placename;
  final address;
  final description;
  final imageurl;
  final time;
  final distance;
  DescriptionOfPlace({
    this.placename, this.address, this.description,  this.imageurl, this.time, this.distance
  });

  @override
  _DescriptionOfPlaceState createState() => _DescriptionOfPlaceState();
}

class _DescriptionOfPlaceState extends State<DescriptionOfPlace> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        backgroundColor: Color(0xFF090F13),
        automaticallyImplyLeading: false,
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
              size: 20.0,
            ),
            onPressed: () {
              Navigator.pop(context);
            }),
        title: Text(
          'Place Details',
          style: TextStyle(
            fontFamily: 'cursive',
            color: Colors.white,
            fontSize: 18,
          ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 0,
      ),
      backgroundColor: Color(0xFF262D34),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Image.asset(
                  'assets/img1.jpg',
                  width: MediaQuery.of(context).size.width,
                  height: 230,
                  fit: BoxFit.cover,
                )
              ],
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20, 12, 20, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Text(
                      '${widget.placename}',
                      style: TextStyle(
                        fontFamily: 'cursive',
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20, 4, 20, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Text(
                      '${widget.address}',
                      style: TextStyle(
                        fontFamily: 'cursive',
                        color: Color(0xFF39D2C0),
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20, 12, 20, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Text(
                      '${widget.description}',
                      style: TextStyle(
                        fontFamily: 'Lexend Deca',
                        color: Color(0xFF8B97A2),
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20, 12, 20, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 25, 0, 0),
                      child: Text(
                        '${widget.time} / ${widget.distance}' ,
                        style: TextStyle(
                          fontFamily: 'cursive',
                          color: Color(0xFF39D2C0),
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 25, 0, 24),
                child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.green),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: Colors.green)))),
                  onPressed: () {
                    Navigator.pop(context);
                    print('Button pressed ...');
                  },
                  child: Text(
                    'Lets Go',
                  ),
                ))
          ],
        ),
      ),
    );
  }
}



// import 'package:places_autocomplete/bolbamdham.dart';
// //import 'package:places_autocomplete/description_page1.dart';
// //import 'package:places_autocomplete/description_page2.dart';
// //import 'package:places_autocomplete/description_page3.dart';
// import 'package:places_autocomplete/jitgadhi.dart';
// import 'package:places_autocomplete/lumbini.dart';
// import 'package:places_autocomplete/mukundasen.dart';
// import 'package:places_autocomplete/ramapithecus.dart';
// import 'package:places_autocomplete/sidhababa.dart';

// class CategoryWidget1 extends StatefulWidget {
//  // const TemplesWidget1({ Key? key }) : super(key: key);

//   @override
//   _CategoryWidget1State createState() => _CategoryWidget1State();
// }

// class _CategoryWidget1State extends State<CategoryWidget1> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(

//     appBar: AppBar(
//         backgroundColor: Color(0xFF090F13),
//         automaticallyImplyLeading: false,
//          leading: IconButton(icon: Icon(Icons.arrow_back, color: Colors.white, size: 20.0,),
//                      onPressed: () {
//                        Navigator.pop(context);
//                      }),
//     ),

//       body: SingleChildScrollView(
//         child: SafeArea(
//           child: Column(
//             children: [ 
//          GestureDetector(
//                     onTap: (){
//                 Navigator.push(context, MaterialPageRoute(builder: (context)=>Sidhababa1()));
//                     },
                
//                   child: Padding(
//                     padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
//                     child: SingleChildScrollView(
//                       scrollDirection: Axis.horizontal,
//                       child: Row(
//                         mainAxisSize: MainAxisSize.max,
//                         children: [
//                           Padding(
//                             padding: EdgeInsetsDirectional.fromSTEB(16, 8, 0, 8),
//                             child: Container(
//                               width: 130,
//                               height: 170,
//                               decoration: BoxDecoration(
//                                 image: DecorationImage(
//                                   fit: BoxFit.cover,
//                                   image: Image.network(
//                                     'assets/img22.jpg',
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
//                                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                 children: [
//                                   Padding(
//                                     padding:
//                                         EdgeInsetsDirectional.fromSTEB(8, 4, 8, 0),
//                                     child: Row(
//                                       mainAxisSize: MainAxisSize.max,
//                                       mainAxisAlignment: MainAxisAlignment.end,
//                                       children: [
//                                         Card(
//                                           clipBehavior: Clip.antiAliasWithSaveLayer,
//                                           color: Color(0xFF1E2429),
//                                           elevation: 2,
//                                           shape: RoundedRectangleBorder(
//                                             borderRadius: BorderRadius.circular(30),
//                                           ),
//                                           // child: Padding(
//                                           //   padding: EdgeInsetsDirectional.fromSTEB(
//                                           //       8, 8, 8, 8),
//                                           //   child: Icon(
//                                           //     Icons.favorite_border,
//                                           //     color: Colors.white,
//                                           //     size: 24,
//                                           //   ),
//                                           // ),
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
//                                           padding: EdgeInsetsDirectional.fromSTEB(
//                                               8, 0, 0, 0),
//                                           child: Column(
//                                             mainAxisSize: MainAxisSize.max,
//                                             mainAxisAlignment:
//                                                 MainAxisAlignment.center,
//                                             crossAxisAlignment:
//                                                 CrossAxisAlignment.start,
//                                             children: [
//                                               Text(
//                                                 'Sidha Baba',
//                                                 style: TextStyle(
//                                                   fontFamily: 'Lexend Deca',
//                                                   color: Colors.white,
//                                                   fontSize: 18,
//                                                 ),
//                                               ),
//                                           ],
//                                         ),
//                                        )
//                                       ],
//                                      ),
//                                      ),
//                                      ],
//                                       ),
//                                      ),
//                                     ),

                          
//                      GestureDetector(
//                               onTap: (){
//                              Navigator.push(context, MaterialPageRoute(builder: (context)=>Lumbini1()));
//                               },
            
//                             child: Padding(
//                               padding: EdgeInsetsDirectional.fromSTEB(16, 8, 0, 8),
//                               child: Container(
//                                 width: 130,
//                                 height: 170,
//                                 decoration: BoxDecoration(
//                                   image: DecorationImage(
//                                     fit: BoxFit.cover,
//                                     image: Image.network(
//                                       'assets/img23.jpg',
//                                     ).image,
//                                   ),
                                  
//                                   boxShadow: [
//                                     BoxShadow(
//                                       blurRadius: 3,
//                                       color: Color(0x64000000),
//                                       offset: Offset(0, 2),
//                                     )
//                                   ],
//                                   borderRadius: BorderRadius.circular(8),
//                                 ),
//                                 child: Column(
//                                   mainAxisSize: MainAxisSize.max,
//                                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                   children: [
//                                     Padding(
//                                       padding:
//                                           EdgeInsetsDirectional.fromSTEB(8, 4, 8, 0),
//                                       child: Row(
//                                         mainAxisSize: MainAxisSize.max,
//                                         mainAxisAlignment: MainAxisAlignment.end,
//                                         children: [
//                                           Card(
//                                             clipBehavior: Clip.antiAliasWithSaveLayer,
//                                             color: Color(0xFF1E2429),
//                                             elevation: 2,
//                                             shape: RoundedRectangleBorder(
//                                               borderRadius: BorderRadius.circular(30),
//                                             ),
//                                             // child: Padding(
//                                             //   padding: EdgeInsetsDirectional.fromSTEB(
//                                             //       8, 8, 8, 8),
//                                             //   child: Icon(
//                                             //     Icons.favorite_border,
//                                             //     color: Colors.white,
//                                             //     size: 24,
//                                             //   ),
//                                             // ),
//                                           )
//                                         ],
//                                       ),
//                                     ),

//                                     Container(
//                                       width: 250,
//                                       height: 60,
//                                       decoration: BoxDecoration(
//                                         color: Color(0xFF090F13),
//                                         borderRadius: BorderRadius.only(
//                                           bottomLeft: Radius.circular(8),
//                                           bottomRight: Radius.circular(8),
//                                           topLeft: Radius.circular(0),
//                                           topRight: Radius.circular(0),
//                                         ),
//                                       ),
//                                       child: Row(
//                                         mainAxisSize: MainAxisSize.max,
//                                         children: [
//                                           Padding(
//                                             padding: EdgeInsetsDirectional.fromSTEB(
//                                                 8, 0, 0, 0),
//                                             child: Column(
                                              
//                                               mainAxisSize: MainAxisSize.max,
//                                               mainAxisAlignment:
//                                                   MainAxisAlignment.center,
//                                               crossAxisAlignment:
//                                                   CrossAxisAlignment.start,
//                                               children: [
//                                                 Text(
//                                                   'Lumbini',
//                                                   style: TextStyle(
//                                                     fontFamily: 'Lexend Deca',
//                                                     color: Colors.white,
//                                                     fontSize: 18,
//                                                     fontWeight: FontWeight.normal,
//                                                   ),
//                                                 ),
                                 
//                                               ],
//                                             ),
//                                           )
//                                         ],
//                                       ),
//                                     )
//                                   ],
//                                 ),
//                               ),
//                             ),
//                           ),




//                     GestureDetector(
//                               onTap: (){
//                                Navigator.push(context, MaterialPageRoute(builder: (context)=>Jitgadhi1()));
//                               },
                          
//                             child: Padding(
//                               padding: EdgeInsetsDirectional.fromSTEB(16, 8, 0, 8),
//                               child: Container(
//                                 width: 130,
//                                 height: 170,
//                                 decoration: BoxDecoration(
//                                   image: DecorationImage(
//                                     fit: BoxFit.cover,
//                                     image: Image.network(
//                                       'assets/img5.jpg',
//                                     ).image,
//                                   ),
//                                   boxShadow: [
//                                     BoxShadow(
//                                       blurRadius: 3,
//                                       color: Color(0x64000000),
//                                       offset: Offset(0, 2),
//                                     )
//                                   ],
//                                   borderRadius: BorderRadius.circular(8),
//                                 ),
//                                 child: Column(
//                                   mainAxisSize: MainAxisSize.max,
//                                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                   children: [
//                                     Padding(
//                                       padding:
//                                           EdgeInsetsDirectional.fromSTEB(8, 4, 8, 0),
//                                       child: Row(
//                                         mainAxisSize: MainAxisSize.max,
//                                         mainAxisAlignment: MainAxisAlignment.end,
//                                         children: [
//                                           Card(
//                                             clipBehavior: Clip.antiAliasWithSaveLayer,
//                                             color: Color(0xFF1E2429),
//                                             elevation: 2,
//                                             shape: RoundedRectangleBorder(
//                                               borderRadius: BorderRadius.circular(30),
//                                             ),
//                                             // child: Padding(
//                                             //   padding: EdgeInsetsDirectional.fromSTEB(
//                                             //       8, 8, 8, 8),
//                                             //   child: Icon(
//                                             //     Icons.favorite_border,
//                                             //     color: Colors.white,
//                                             //     size: 24,
//                                             //   ),
//                                             // ),
//                                           )
//                                         ],
//                                       ),
//                                     ),
//                                     Container(
//                                       width: 250,
//                                       height: 60,
//                                       decoration: BoxDecoration(
//                                         color: Color(0xFF090F13),
//                                         borderRadius: BorderRadius.only(
//                                           bottomLeft: Radius.circular(8),
//                                           bottomRight: Radius.circular(8),
//                                           topLeft: Radius.circular(0),
//                                           topRight: Radius.circular(0),
//                                         ),
//                                       ),
//                                       child: Row(
//                                         mainAxisSize: MainAxisSize.max,
//                                         children: [
//                                           Padding(
//                                             padding: EdgeInsetsDirectional.fromSTEB(
//                                                 8, 0, 0, 0),
//                                             child: Column(
//                                               mainAxisSize: MainAxisSize.max,
//                                               mainAxisAlignment:
//                                                   MainAxisAlignment.center,
//                                               crossAxisAlignment:
//                                                   CrossAxisAlignment.start,
//                                               children: [
//                                                 Text(
//                                                   'Jitgadhi',
//                                                   style: TextStyle(
//                                                     fontFamily: 'Lexend Deca',
//                                                     color: Colors.white,
//                                                     fontSize: 18,
//                                                     fontWeight: FontWeight.normal,
//                                                   ),
//                                                 )
//                                               ],
//                                             ),
//                                           ),
//                                         ],
//                                       ),
//                                     )
//                                   ],
//                                 ),
//                               ),
//                             ),
//                           ),


//                         ],
//                       ),
//                     ),
//                   ),
//                  ),




//     GestureDetector(
//                     onTap: (){
//                 Navigator.push(context, MaterialPageRoute(builder: (context)=>MukundaSen1()));
//                     },
                
//                   child: Padding(
//                     padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
//                     child: SingleChildScrollView(
//                       scrollDirection: Axis.horizontal,
//                       child: Row(
//                         mainAxisSize: MainAxisSize.max,
//                         children: [
//                           Padding(
//                             padding: EdgeInsetsDirectional.fromSTEB(16, 8, 0, 8),
//                             child: Container(
//                               width: 130,
//                               height: 170,
//                               decoration: BoxDecoration(
//                                 image: DecorationImage(
//                                   fit: BoxFit.cover,
//                                   image: Image.network(
//                                     'assets/img24.jpg',
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
//                                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                 children: [
//                                   Padding(
//                                     padding:
//                                         EdgeInsetsDirectional.fromSTEB(8, 4, 8, 0),
//                                     child: Row(
//                                       mainAxisSize: MainAxisSize.max,
//                                       mainAxisAlignment: MainAxisAlignment.end,
//                                       children: [
//                                         Card(
//                                           clipBehavior: Clip.antiAliasWithSaveLayer,
//                                           color: Color(0xFF1E2429),
//                                           elevation: 2,
//                                           shape: RoundedRectangleBorder(
//                                             borderRadius: BorderRadius.circular(30),
//                                           ),
//                                           // child: Padding(
//                                           //   padding: EdgeInsetsDirectional.fromSTEB(
//                                           //       8, 8, 8, 8),
//                                           //   child: Icon(
//                                           //     Icons.favorite_border,
//                                           //     color: Colors.white,
//                                           //     size: 24,
//                                           //   ),
//                                           // ),
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
//                                           padding: EdgeInsetsDirectional.fromSTEB(
//                                               8, 0, 0, 0),
//                                           child: Column(
//                                             mainAxisSize: MainAxisSize.max,
//                                             mainAxisAlignment:
//                                                 MainAxisAlignment.center,
//                                             crossAxisAlignment:
//                                                 CrossAxisAlignment.start,
//                                             children: [
//                                               Text(
//                                                 'Mukunda Sen',
//                                                 style: TextStyle(
//                                                   fontFamily: 'Lexend Deca',
//                                                   color: Colors.white,
//                                                   fontSize: 18,
//                                                 ),
//                                               ),
//                                           ],
//                                         ),
//                                        )
//                                       ],
//                                      ),
//                                      ),
//                                      ],
//                                       ),
//                                      ),
//                                     ),

                          
//                      GestureDetector(
//                               onTap: (){
//                              Navigator.push(context, MaterialPageRoute(builder: (context)=>Ramapithecus1()));
//                               },
            
//                             child: Padding(
//                               padding: EdgeInsetsDirectional.fromSTEB(16, 8, 0, 8),
//                               child: Container(
//                                 width: 130,
//                                 height: 170,
//                                 decoration: BoxDecoration(
//                                   image: DecorationImage(
//                                     fit: BoxFit.cover,
//                                     image: Image.network(
//                                       'assets/img25.jpg',
//                                     ).image,
//                                   ),
                                  
//                                   boxShadow: [
//                                     BoxShadow(
//                                       blurRadius: 3,
//                                       color: Color(0x64000000),
//                                       offset: Offset(0, 2),
//                                     )
//                                   ],
//                                   borderRadius: BorderRadius.circular(8),
//                                 ),
//                                 child: Column(
//                                   mainAxisSize: MainAxisSize.max,
//                                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                   children: [
//                                     Padding(
//                                       padding:
//                                           EdgeInsetsDirectional.fromSTEB(8, 4, 8, 0),
//                                       child: Row(
//                                         mainAxisSize: MainAxisSize.max,
//                                         mainAxisAlignment: MainAxisAlignment.end,
//                                         children: [
//                                           Card(
//                                             clipBehavior: Clip.antiAliasWithSaveLayer,
//                                             color: Color(0xFF1E2429),
//                                             elevation: 2,
//                                             shape: RoundedRectangleBorder(
//                                               borderRadius: BorderRadius.circular(30),
//                                             ),
//                                             // child: Padding(
//                                             //   padding: EdgeInsetsDirectional.fromSTEB(
//                                             //       8, 8, 8, 8),
//                                             //   child: Icon(
//                                             //     Icons.favorite_border,
//                                             //     color: Colors.white,
//                                             //     size: 24,
//                                             //   ),
//                                             // ),
//                                           )
//                                         ],
//                                       ),
//                                     ),

//                                     Container(
//                                       width: 250,
//                                       height: 60,
//                                       decoration: BoxDecoration(
//                                         color: Color(0xFF090F13),
//                                         borderRadius: BorderRadius.only(
//                                           bottomLeft: Radius.circular(8),
//                                           bottomRight: Radius.circular(8),
//                                           topLeft: Radius.circular(0),
//                                           topRight: Radius.circular(0),
//                                         ),
//                                       ),
//                                       child: Row(
//                                         mainAxisSize: MainAxisSize.max,
//                                         children: [
//                                           Padding(
//                                             padding: EdgeInsetsDirectional.fromSTEB(
//                                                 8, 0, 0, 0),
//                                             child: Column(
                                              
//                                               mainAxisSize: MainAxisSize.max,
//                                               mainAxisAlignment:
//                                                   MainAxisAlignment.center,
//                                               crossAxisAlignment:
//                                                   CrossAxisAlignment.start,
//                                               children: [
//                                                 Text(
//                                                   'Ramapithecus',
//                                                   style: TextStyle(
//                                                     fontFamily: 'Lexend Deca',
//                                                     color: Colors.white,
//                                                     fontSize: 18,
//                                                     fontWeight: FontWeight.normal,
//                                                   ),
//                                                 ),
                                 
//                                               ],
//                                             ),
//                                           )
//                                         ],
//                                       ),
//                                     )
//                                   ],
//                                 ),
//                               ),
//                             ),
//                           ),




//                     GestureDetector(
//                               onTap: (){
//                                Navigator.push(context, MaterialPageRoute(builder: (context)=>BolbamDham1()));
//                               },
                          
//                             child: Padding(
//                               padding: EdgeInsetsDirectional.fromSTEB(16, 8, 0, 8),
//                               child: Container(
//                                 width: 130,
//                                 height: 170,
//                                 decoration: BoxDecoration(
//                                   image: DecorationImage(
//                                     fit: BoxFit.cover,
//                                     image: Image.network(
//                                       'assets/img26.jpg',
//                                     ).image,
//                                   ),
//                                   boxShadow: [
//                                     BoxShadow(
//                                       blurRadius: 3,
//                                       color: Color(0x64000000),
//                                       offset: Offset(0, 2),
//                                     )
//                                   ],
//                                   borderRadius: BorderRadius.circular(8),
//                                 ),
//                                 child: Column(
//                                   mainAxisSize: MainAxisSize.max,
//                                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                   children: [
//                                     Padding(
//                                       padding:
//                                           EdgeInsetsDirectional.fromSTEB(8, 4, 8, 0),
//                                       child: Row(
//                                         mainAxisSize: MainAxisSize.max,
//                                         mainAxisAlignment: MainAxisAlignment.end,
//                                         children: [
//                                           Card(
//                                             clipBehavior: Clip.antiAliasWithSaveLayer,
//                                             color: Color(0xFF1E2429),
//                                             elevation: 2,
//                                             shape: RoundedRectangleBorder(
//                                               borderRadius: BorderRadius.circular(30),
//                                             ),
//                                             // child: Padding(
//                                             //   padding: EdgeInsetsDirectional.fromSTEB(
//                                             //       8, 8, 8, 8),
//                                             //   child: Icon(
//                                             //     Icons.favorite_border,
//                                             //     color: Colors.white,
//                                             //     size: 24,
//                                             //   ),
//                                             // ),
//                                           )
//                                         ],
//                                       ),
//                                     ),
//                                     Container(
//                                       width: 250,
//                                       height: 60,
//                                       decoration: BoxDecoration(
//                                         color: Color(0xFF090F13),
//                                         borderRadius: BorderRadius.only(
//                                           bottomLeft: Radius.circular(8),
//                                           bottomRight: Radius.circular(8),
//                                           topLeft: Radius.circular(0),
//                                           topRight: Radius.circular(0),
//                                         ),
//                                       ),
//                                       child: Row(
//                                         mainAxisSize: MainAxisSize.max,
//                                         children: [
//                                           Padding(
//                                             padding: EdgeInsetsDirectional.fromSTEB(
//                                                 8, 0, 0, 0),
//                                             child: Column(
//                                               mainAxisSize: MainAxisSize.max,
//                                               mainAxisAlignment:
//                                                   MainAxisAlignment.center,
//                                               crossAxisAlignment:
//                                                   CrossAxisAlignment.start,
//                                               children: [
//                                                 Text('Bolbam Dham',
//                                                   //'Murgiya Jharbaira',
//                                                   style: TextStyle(
//                                                     fontFamily: 'Lexend Deca',
//                                                     color: Colors.white,
//                                                     fontSize: 18,
//                                                     fontWeight: FontWeight.normal,
//                                                   ),
//                                                 )
//                                               ],
//                                             ),
//                                           ),
//                                         ],
//                                       ),
//                                     )
//                                   ],
//                                 ),
//                               ),
//                             ),
//                           ),


//                         ],
//                       ),
//                     ),
//                   ),
//                  ),






    
//             ],
//         ),
//     ),
//       ),
//     );
//   }
// }