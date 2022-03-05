import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
//import 'package:places_autocomplete/description_page1.dart';
//import 'package:places_autocomplete/description_page2.dart';
//import 'package:places_autocomplete/description_page3.dart';

class CategoryWidget3 extends StatefulWidget {
 // const TemplesWidget1({ Key? key }) : super(key: key);

  @override
  _CategoryWidget3State createState() => _CategoryWidget3State();
}

class _CategoryWidget3State extends State<CategoryWidget3> {

    List places = List();
  Future getdata() async {
    var url = 'http://192.168.100.6/php/readresturentandcafe.php';
    var response =
        await http.get(Uri.parse(url), headers: {"Accept": "application/json"});

    var jsondata = json.decode(response.body);
    setState(() {
      places = jsondata;
    });
  }

  @override
  void initState() {
    super.initState();
    getdata();
  }


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
          'Resturant and Cafe',
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
      body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: ListView.builder(
              itemCount: places.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DescriptionOfPlace(
                                placename: places[index]['place_name'],
                                address: places[index]['address'],
                                description: places[index]['des'],
                                imageurl: places[index]['image_url'],
                                time: places[index]['time'],
                                distance: places[index]['distance'],
                              )),
                    );
                  },
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(16, 18, 16, 5),
                    child: Container(
                      height: 170,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: Image.network(
                            places[index]['image_url'],
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
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      8, 0, 0, 0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        places[index]['place_name'],
                                        style: TextStyle(
                                          fontFamily: 'cursive',
                                          color: Colors.white,
                                          fontSize: 15,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              })

          //: CircularProgressIndicator();
          ),
    );
  }
}

class DescriptionOfPlace extends StatefulWidget {
  final placename;
  final address;
  final description;
  final imageurl;
  final time;
  final distance;
  DescriptionOfPlace(
      {this.placename,
      this.address,
      this.description,
      this.imageurl,
      this.time,
      this.distance});

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
                  widget.imageurl,
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
                        '${widget.time} / ${widget.distance}',
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
//                 Navigator.push(context, MaterialPageRoute(builder: (context)=>DescriptionPageWidget1()));
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
//                                     'assets/img30.jpg',
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
//                                           child: Padding(
//                                             padding: EdgeInsetsDirectional.fromSTEB(
//                                                 8, 8, 8, 8),
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
//                                                 'Refresh Cafe',
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
//                              Navigator.push(context, MaterialPageRoute(builder: (context)=>DescriptionPageWidget2()));
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
//                                       'assets/img31.jpg',
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
//                                             child: Padding(
//                                               padding: EdgeInsetsDirectional.fromSTEB(
//                                                   8, 8, 8, 8),
//                                               child: Icon(
//                                                 Icons.favorite_border,
//                                                 color: Colors.white,
//                                                 size: 24,
//                                               ),
//                                             ),
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
//                                                   'Darkwood ',
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
//                                Navigator.push(context, MaterialPageRoute(builder: (context)=>DescriptionPageWidget3()));
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
//                                       'assets/img32.jpg',
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
//                                             child: Padding(
//                                               padding: EdgeInsetsDirectional.fromSTEB(
//                                                   8, 8, 8, 8),
//                                               child: Icon(
//                                                 Icons.favorite_border,
//                                                 color: Colors.white,
//                                                 size: 24,
//                                               ),
//                                             ),
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
//                                                   'Club Denevo',
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
//                 Navigator.push(context, MaterialPageRoute(builder: (context)=>DescriptionPageWidget1()));
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
//                                     'assets/img33.jpg',
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
//                                           child: Padding(
//                                             padding: EdgeInsetsDirectional.fromSTEB(
//                                                 8, 8, 8, 8),
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
//                                                 'Galaxy Cafe',
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
//                              Navigator.push(context, MaterialPageRoute(builder: (context)=>DescriptionPageWidget2()));
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
//                                       'assets/img34.jpg',
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
//                                             child: Padding(
//                                               padding: EdgeInsetsDirectional.fromSTEB(
//                                                   8, 8, 8, 8),
//                                               child: Icon(
//                                                 Icons.favorite_border,
//                                                 color: Colors.white,
//                                                 size: 24,
//                                               ),
//                                             ),
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
//                                                   'Garden Cafe',
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
//                                Navigator.push(context, MaterialPageRoute(builder: (context)=>DescriptionPageWidget3()));
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
//                                       'assets/img35.jpg',
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
//                                             child: Padding(
//                                               padding: EdgeInsetsDirectional.fromSTEB(
//                                                   8, 8, 8, 8),
//                                               child: Icon(
//                                                 Icons.favorite_border,
//                                                 color: Colors.white,
//                                                 size: 24,
//                                               ),
//                                             ),
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
//                                                   'Amrapali',
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