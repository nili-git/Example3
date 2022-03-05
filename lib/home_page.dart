import 'package:places_autocomplete/Categories2.dart';
import 'package:places_autocomplete/Categories3.dart';
import 'package:places_autocomplete/Categories4.dart';
import 'package:places_autocomplete/Categories5.dart';
import 'package:places_autocomplete/description_page1.dart';
import 'package:flutter/material.dart';
//import 'package:google_fonts/google_fonts.dart';
import 'package:places_autocomplete/description_page2.dart';
import 'package:places_autocomplete/description_page3.dart';
import 'package:places_autocomplete/favourite.dart';
import 'package:places_autocomplete/profile_page.dart';
import 'package:places_autocomplete/src/screens/home_screen.dart';
import 'package:places_autocomplete/Categories1.dart';
import 'package:places_autocomplete/user_addedplaces1.dart';
import 'package:places_autocomplete/user_addedplaces2.dart';
import 'package:places_autocomplete/user_addedplaces3.dart';
//import 'bottomnavigate.dart';


class FrontpageWidget extends StatefulWidget {
    // static const routeName = '/FrontpageWidget';
 // const FrontpageWidget({ Key? key }) : super(key: key);

  @override
  _FrontpageWidgetState createState() => _FrontpageWidgetState();
}

class _FrontpageWidgetState extends State<FrontpageWidget> {
    String choiceChipsValue;
  TextEditingController textController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textController = TextEditingController();
  }
  
//  int _selectedIndex = 0;
//   List<Widget> meroWidget = <Widget>[

//     HamroOption(" Welcome to Home", Color(0xFF3944F7)),
//      HamroOption(" Welcome to About",  Color(0xFFB41618)),
//       HamroOption("Welcome to Settings", Color(0xFF3DBE29)),
   
//   ];
  
// _onItemTap(int index){
// setState(() {
//   _selectedIndex = index;
// });
// }

  @override
  Widget build(BuildContext context) {
 return Scaffold(
  //  appBar: AppBar(
  //    leading: Icon(Icons.menu),
  //  ),

   backgroundColor: Colors.lightGreen[400],
   // backgroundColor: Colors.lightBlueAccent,
      key: scaffoldKey,
     // backgroundColor: Color(0xFF1E2429),
      // drawer: Drawer(
      //   child: ListView(children: [
      //     UserAccountsDrawerHeader(
      //     accountName: Text("Nili"),
      //     accountEmail: Text("nili@gmail.com")
      //     ),
      //     ListTile(
      //       title: Text("Purchase", 
      //       //  style: GoogleFonts.lato(),
      //        ),
      //       subtitle: Text("Purchase Item"),
      //       leading: Icon(Icons.shop),
      //       onTap: (){     
      //      Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfilepageWidget()));
                  
      //         print("Purchase pressed");
      //       },
      //     ),
          
      //      ListTile(
      //       title: Text("Sales"),
      //       subtitle: Text("Sales Item"),
      //       leading: Icon(Icons.shop),
      //       onTap: (){
      //             Navigator.pop(context);
      //         print("Sales pressed");
      //       },
      //     ),
      //      ListTile(
      //       title: Text("Report"),
      //       subtitle: Text("Report Item"),
      //       leading: Icon(Icons.shop),
      //       onTap: (){
      //             Navigator.pop(context);
      //         print("Report pressed");
      //       },
      //     ),
      //      ListTile(
      //       title: Text("Users"),
      //       subtitle: Text("Users Item"),
      //       leading: Icon(Icons.supervised_user_circle),
      //       onTap: (){
      //             Navigator.pop(context);
      //         print("Users pressed");
      //       },
      //     ),
      //   ],
      //   ),
      // ),

      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fitWidth,
                    image: Image.network(
                     'assets/img6.jpg',
                    ).image,
                  ),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 4,
                      color: Colors.transparent,
                      offset: Offset(0, 2),
                    )
                  ],
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(16),
                    bottomRight: Radius.circular(16),
                    topLeft: Radius.circular(0),
                    topRight: Radius.circular(0),
                  ),
                ),
                child: Container(
                  width: 100,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Color(0xFF1E2429), Color(0x00111417)],
                      stops: [0, 1],
                      begin: AlignmentDirectional(0, -1),
                      end: AlignmentDirectional(0, 1),
                    ),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(16),
                      bottomRight: Radius.circular(16),
                      topLeft: Radius.circular(0),
                      topRight: Radius.circular(0),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(16, 56, 16, 0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              'Hey',
                              style: TextStyle(
                                fontFamily: 'Lexend Deca',
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(4, 0, 0, 0),
                              child: Text(
                                '[Username]',
                                style: TextStyle(
                                  fontFamily: 'Lexend Deca',
                                  color: Color(0xFFEE8B60),
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                          child: Text(
                            'Where do you want to go?',
                            style: TextStyle(
                              fontFamily: 'Lexend Deca',
                              color: Colors.white,
                              fontSize: 35,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),

                        // Padding(
                        //   padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 12),
                        //   child: Container(
                        //     width: MediaQuery.of(context).size.width * 0.96,
                        //     height: 50,
                        //     decoration: BoxDecoration(
                        //       color: Color(0x9AFFFFFF),
                        //       borderRadius: BorderRadius.circular(8),
                        //     ),
                        //     child: Row(
                        //       mainAxisSize: MainAxisSize.max,
                        //       children: [
                        //         Expanded(
                        //           child: Padding(
                        //             padding: EdgeInsetsDirectional.fromSTEB(
                        //                 16, 0, 0, 0),
                        //             child: TextFormField(
                        //               controller: textController,
                        //               obscureText: false,
                        //               decoration: InputDecoration(
                        //                 hintText: 'Search for places...',
                        //                 hintStyle:
                        //                     TextStyle(
                        //                   fontFamily: 'Lexend Deca',
                        //                   color: Color(0xFF1A1F24),
                        //                   fontSize: 14,
                        //                   fontWeight: FontWeight.normal,
                        //                 ),
                        //                 enabledBorder: UnderlineInputBorder(
                        //                   borderSide: BorderSide(
                        //                     color: Color(0x00000000),
                        //                     width: 1,
                        //                   ),
                        //                   borderRadius: const BorderRadius.only(
                        //                     topLeft: Radius.circular(4.0),
                        //                     topRight: Radius.circular(4.0),
                        //                   ),
                        //                 ),
                        //                 focusedBorder: UnderlineInputBorder(
                        //                   borderSide: BorderSide(
                        //                     color: Color(0x00000000),
                        //                     width: 1,
                        //                   ),
                        //                   borderRadius: const BorderRadius.only(
                        //                     topLeft: Radius.circular(4.0),
                        //                     topRight: Radius.circular(4.0),
                        //                   ),
                        //                 ),
                        //               ),
                        //               style:
                        //                   TextStyle(
                        //                 fontFamily: 'Lexend Deca',
                        //                 color: Color(0xFF1A1F24),
                        //                 fontSize: 14,
                        //                 fontWeight: FontWeight.normal,
                        //               ),
                        //             ),
                        //           ),
                        //         ),
                        //         Card(
                        //           clipBehavior: Clip.antiAliasWithSaveLayer,
                        //           color: Color(0xFF1E2429),
                        //           shape: RoundedRectangleBorder(
                        //             borderRadius: BorderRadius.circular(8),
                        //           ),

                        //           child: TextButton.icon(
                        //             label: Text("search here"),
                        //     //        style: ButtonStyle(
                        //     //       shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        //     //      RoundedRectangleBorder(
                        //     //       borderRadius: BorderRadius.zero,
                        //     //      side: BorderSide(color: Colors.red)
                        //     //     ),
                        //     //   ),
                        //     // ),
                        //             icon: Icon(
                        //               Icons.search_outlined,
                        //               color: Colors.white,
                        //               size: 24,
                        //             ),
                        //             onPressed: ( ) {
                        //                Navigator.pop(context);
                        //               print('IconButton pressed ...');
                        //             },
                        //           ),
                        //         ),
                        //       ],
                        //     ),
                        //   ),
                        // )

                      ],
                    ),
                  ),
                ),
              ),



              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(8, 4, 0, 0),
                child: Row(
                children: [
                  
                TextButton.icon(onPressed: (){},
                 icon: Icon(Icons.place),
                 label: Text('Popular',style: TextStyle(color: Colors.red),),
                 ),
                SizedBox(width:30),


                //  GestureDetector(
                //     onTap: (){
                //     Navigator.push(context, MaterialPageRoute(builder: (context)=>Favourite1()));
                //   },
                //     TextButton.icon(onPressed: (){
                //    //    Navigator.push(context, MaterialPageRoute(builder: (context)=>Favourite1()));
                //     },
                //    icon: Icon(Icons.favorite), 
                //     label: Text('favourites',
                // style: TextStyle(color: Colors.red),),
                //    ),
                //  //),
                 SizedBox(width:30),


           
               // GestureDetector(
                  //  onTap: (){
                  //   Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
                  // },
                   TextButton.icon(onPressed: (){
                     Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
                  },
                   icon: Icon(Icons.location_pin), 
                   label: Text('places Nearby me',style: TextStyle(color: Colors.red),),
                   ),
                //),
                 SizedBox(width:30),

              // ChoiceChip(  
              //  label: Text('Popular',style: TextStyle(color: Colors.red),),
              //   selected: true,
              // ),

            //   SizedBox(width:20),

              
            //  GestureDetector(
            //       onTap: (){
            //         Navigator.pop(context);
            //   //Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
            //       },
            //     child: ChoiceChip(
            //     label: Text('favourites',
            //     style: TextStyle(color: Colors.red),),
              
            //     selected: false,
            //   ),
            //  ),

            //   SizedBox(width:20),

            //   GestureDetector(
            //       onTap: (){
            //   Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
            //       },
            //     child: ChoiceChip(
            //       label: Text('places Nearby me',style: TextStyle(color: Colors.red),),
            //       selected: false,
            //     ),
            //   ),
            //   SizedBox(width:20),
      
            ],
          ),
                //  FlutterFlowChoiceChips(
                //   initialOption: choiceChipsValue ??= 'Popular',
                //   options: [
                //     ChipData('Popular'),
                //     ChipData('favourites'),
                //     ChipData('places Nearby me')
                //   ],
                //   onChanged: (val) => setState(() => choiceChipsValue = val),
                //   selectedChipStyle: ChipStyle(
                //     backgroundColor: Color(0xFF4B39EF),
                //     textStyle: TextStyle(
                //       fontFamily: 'Lexend Deca',
                //       color: Colors.white,
                //       fontSize: 14,
                //       fontWeight: FontWeight.normal,
                //     ),
                //     iconColor: Colors.white,
                //     iconSize: 18,
                //     elevation: 4,
                //   ),
                //   unselectedChipStyle: ChipStyle(
                //     backgroundColor: Color(0xFF262D34),
                //     textStyle: TextStyle(
                //       fontFamily: 'Lexend Deca',
                //       color: Colors.white,
                //       fontSize: 14,
                //       fontWeight: FontWeight.normal,
                //     ),
                //     iconColor: Color(0xFF262D34),
                //     iconSize: 18,
                //     elevation: 0,
                //   ),
                //   chipSpacing: 12,
                // ),
           ),


              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16, 8, 16, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      'Categories',
                      style: TextStyle(
                        fontFamily: 'Lexend Deca',
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),
              ),


          GestureDetector(
                onTap: (){
                 Navigator.push(context, MaterialPageRoute(builder: (context)=>CategoryWidget1()));
                },
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(16, 8, 0, 8),
                          child: Container(
                            width: 250,
                            height: 170,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.fitWidth,
                                image: Image.network(
                                 'assets/img4.jpg',
                                ).image,
                              ),
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 3,
                                  color: Color(0x64000000),
                                  offset: Offset(0, 2),
                                )
                              ],
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding:
                                      EdgeInsetsDirectional.fromSTEB(8, 4, 8, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Card(
                                        clipBehavior: Clip.antiAliasWithSaveLayer,
                                        color: Color(0xFF1E2429),
                                        elevation: 2,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(30),
                                        ),
                                        // child: Padding(
                                        //   padding: EdgeInsetsDirectional.fromSTEB(
                                        //       8, 8, 8, 8),
                                        //   child: Icon(
                                        //     Icons.favorite_border,
                                        //     color: Colors.white,
                                        //     size: 24,
                                        //   ),
                                        // ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 250,
                                  height: 60,
                                  decoration: BoxDecoration(
                                    color: Color(0xFF090F13),
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(8),
                                      bottomRight: Radius.circular(8),
                                      topLeft: Radius.circular(0),
                                      topRight: Radius.circular(0),
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
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                        //  Image.network(
                                        //   'https://media.istockphoto.com/photos/aerial-shot-of-houses-scattered-across-a-large-farmland-in-the-nepal-picture-id1326681895?b=1&k=20&m=1326681895&s=170667a&w=0&h=x3mowyEWvKFpCJt1TO8W2YxgsqdsxbgfvHBA3mrSQf8=',
                                        //   width: MediaQuery.of(context).size.width,
                                        // ),
                                            Text(
                                              'Holy Places',
                                              style: TextStyle(
                                                fontFamily: 'Lexend Deca',
                                                color: Colors.white,
                                                fontSize: 19,
                                                fontWeight: FontWeight.normal,
                                              ),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),  
                   // ),

                  

                        GestureDetector(
                            onTap: (){
                       Navigator.push(context, MaterialPageRoute(builder: (context)=>CategoryWidget2()));
                         },
                         child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(16, 8, 0, 8),
                            child: Container(
                              width: 250,
                              height: 170,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.fitWidth,
                                  image: Image.network(
                                  'assets/img2.jpg',
                                  ).image,
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 3,
                                    color: Color(0x64000000),
                                    offset: Offset(0, 2),
                                  )
                                ],
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding:
                                        EdgeInsetsDirectional.fromSTEB(8, 4, 8, 0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Card(
                                          clipBehavior: Clip.antiAliasWithSaveLayer,
                                          color: Color(0xFF1E2429),
                                          elevation: 2,
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(30),
                                          ),
                                          // child: Padding(
                                          //   padding: EdgeInsetsDirectional.fromSTEB(
                                          //       8, 8, 8, 8),
                                          //   child: Icon(
                                          //     Icons.favorite_border,
                                          //     color: Colors.white,
                                          //     size: 24,
                                          //   ),
                                          // ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: 250,
                                    height: 60,
                                    decoration: BoxDecoration(
                                      color: Color(0xFF090F13),
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(8),
                                        bottomRight: Radius.circular(8),
                                        topLeft: Radius.circular(0),
                                        topRight: Radius.circular(0),
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
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                          //  Image.network(
                                          //   'https://media.istockphoto.com/photos/aerial-shot-of-houses-scattered-across-a-large-farmland-in-the-nepal-picture-id1326681895?b=1&k=20&m=1326681895&s=170667a&w=0&h=x3mowyEWvKFpCJt1TO8W2YxgsqdsxbgfvHBA3mrSQf8=',
                                          //   width: MediaQuery.of(context).size.width,
                                          // ),
                                              Text(
                                                'Parks',
                                                style: TextStyle(
                                                  fontFamily: 'Lexend Deca',
                                                  color: Colors.white,
                                                  fontSize: 19,
                                                  fontWeight: FontWeight.normal,
                                                ),
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                       ),

                      


                //         GestureDetector(
                //              onTap: (){
                //  Navigator.push(context, MaterialPageRoute(builder: (context)=>CategoryWidget2()));
                // },
                //           child: Padding(
                //             padding: EdgeInsetsDirectional.fromSTEB(16, 8, 0, 8),
                //             child: Container(
                //               width: 250,
                //               height: 170,
                //               decoration: BoxDecoration(
                //                 image: DecorationImage(
                //                   fit: BoxFit.fitWidth,
                //                   image: Image.network(
                //                    'assets/img2.jpg',
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
                //                     padding:
                //                         EdgeInsetsDirectional.fromSTEB(8, 4, 8, 0),
                //                     child: Row(
                //                       mainAxisSize: MainAxisSize.max,
                //                       mainAxisAlignment:
                //                           MainAxisAlignment.spaceBetween,
                //                       children: [
                //                         Card(
                //                           clipBehavior: Clip.antiAliasWithSaveLayer,
                //                           color: Color(0xFF1E2429),
                //                           elevation: 2,
                //                           shape: RoundedRectangleBorder(
                //                             borderRadius: BorderRadius.circular(30),
                //                           ),
                //                           // child: Padding(
                //                           //   padding: EdgeInsetsDirectional.fromSTEB(
                //                           //       8, 8, 8, 8),
                //                           //   child: Icon(
                //                           //     Icons.favorite_border,
                //                           //     color: Colors.white,
                //                           //     size: 24,
                //                           //   ),
                //                           // ),
                //                         ),
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
                //                               //                    Image.network(
                //                                  //   'https://media.istockphoto.com/photos/aerial-shot-of-houses-scattered-across-a-large-farmland-in-the-nepal-picture-id1326681895?b=1&k=20&m=1326681895&s=170667a&w=0&h=x3mowyEWvKFpCJt1TO8W2YxgsqdsxbgfvHBA3mrSQf8=',
                //                                //   width: MediaQuery.of(context).size.width,
                //                               //   height: MediaQuery.of(context).size.height,
                //                                  //   ),

                //                                      // ),
                //                               Text(
                //                                 'Parks',
                //                                 style: TextStyle(
                //                                   fontFamily: 'Lexend Deca',
                //                                   color: Colors.white,
                //                                   fontSize: 18,
                //                                   fontWeight: FontWeight.normal,
                //                                 ),
                //                               )
                //                             ],
                //                           ),
                //                         ),
                //                       ],
                //                     ),
                //                   )
                //                 ],
                //               ),
                //             ),
                //           ),
                //         ),




                       GestureDetector(
                            onTap: (){
                 Navigator.push(context, MaterialPageRoute(builder: (context)=>CategoryWidget3()));
                },
                         child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(16, 8, 0, 8),
                            child: Container(
                              width: 250,
                              height: 170,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.fitWidth,
                                  image: Image.network(
                                   'assets/img15.jpg',
                                  ).image,
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 3,
                                    color: Color(0x64000000),
                                    offset: Offset(0, 2),
                                  )
                                ],
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding:
                                        EdgeInsetsDirectional.fromSTEB(8, 4, 8, 0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Card(
                                          clipBehavior: Clip.antiAliasWithSaveLayer,
                                          color: Color(0xFF1E2429),
                                          elevation: 2,
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(30),
                                          ),
                                          // child: Padding(
                                          //   padding: EdgeInsetsDirectional.fromSTEB(
                                          //       8, 8, 8, 8),
                                          //   child: Icon(
                                          //     Icons.favorite_border,
                                          //     color: Colors.white,
                                          //     size: 24,
                                          //   ),
                                          // ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: 250,
                                    height: 60,
                                    decoration: BoxDecoration(
                                      color: Color(0xFF090F13),
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(8),
                                        bottomRight: Radius.circular(8),
                                        topLeft: Radius.circular(0),
                                        topRight: Radius.circular(0),
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
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                          //  Image.network(
                                          //   'https://media.istockphoto.com/photos/aerial-shot-of-houses-scattered-across-a-large-farmland-in-the-nepal-picture-id1326681895?b=1&k=20&m=1326681895&s=170667a&w=0&h=x3mowyEWvKFpCJt1TO8W2YxgsqdsxbgfvHBA3mrSQf8=',
                                          //   width: MediaQuery.of(context).size.width,
                                          // ),
                                              Text(
                                                'Restaurant and Cafe',
                                                style: TextStyle(
                                                  fontFamily: 'Lexend Deca',
                                                  color: Colors.white,
                                                  fontSize: 19,
                                                  fontWeight: FontWeight.normal,
                                                ),
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                       ),
                        

                            GestureDetector(
                                 onTap: (){
                 Navigator.push(context, MaterialPageRoute(builder: (context)=>CategoryWidget4()));
                },
                              child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(16, 8, 0, 8),
                          child: Container(
                              width: 250,
                              height: 170,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.fitWidth,
                                  image: Image.network(
                                   'assets/img16.jpg',
                                  ).image,
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 3,
                                    color: Color(0x64000000),
                                    offset: Offset(0, 2),
                                  )
                                ],
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding:
                                        EdgeInsetsDirectional.fromSTEB(8, 4, 8, 0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Card(
                                          clipBehavior: Clip.antiAliasWithSaveLayer,
                                          color: Color(0xFF1E2429),
                                          elevation: 2,
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(30),
                                          ),
                                          // child: Padding(
                                          //   padding: EdgeInsetsDirectional.fromSTEB(
                                          //       8, 8, 8, 8),
                                          //   child: Icon(
                                          //     Icons.favorite_border,
                                          //     color: Colors.white,
                                          //     size: 24,
                                          //   ),
                                          // ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: 250,
                                    height: 60,
                                    decoration: BoxDecoration(
                                      color: Color(0xFF090F13),
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(8),
                                        bottomRight: Radius.circular(8),
                                        topLeft: Radius.circular(0),
                                        topRight: Radius.circular(0),
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
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                          //  Image.network(
                                          //   'https://media.istockphoto.com/photos/aerial-shot-of-houses-scattered-across-a-large-farmland-in-the-nepal-picture-id1326681895?b=1&k=20&m=1326681895&s=170667a&w=0&h=x3mowyEWvKFpCJt1TO8W2YxgsqdsxbgfvHBA3mrSQf8=',
                                          //   width: MediaQuery.of(context).size.width,
                                          // ),
                                              Text(
                                                'Shopping Malls',
                                                style: TextStyle(
                                                  fontFamily: 'Lexend Deca',
                                                  color: Colors.white,
                                                  fontSize: 19,
                                                  fontWeight: FontWeight.normal,
                                                ),
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                          ),
                        ),
                            ),



                         GestureDetector(
                              onTap: (){
                 Navigator.push(context, MaterialPageRoute(builder: (context)=>CategoryWidget5()));
                },
                           child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(16, 8, 0, 8),
                            child: Container(
                              width: 250,
                              height: 170,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.fitWidth,
                                  image: Image.network(
                                   'assets/img17.jpg',
                                  ).image,
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 3,
                                    color: Color(0x64000000),
                                    offset: Offset(0, 2),
                                  )
                                ],
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding:
                                        EdgeInsetsDirectional.fromSTEB(8, 4, 8, 0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Card(
                                          clipBehavior: Clip.antiAliasWithSaveLayer,
                                          color: Color(0xFF1E2429),
                                          elevation: 2,
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(30),
                                          ),
                                          // child: Padding(
                                          //   padding: EdgeInsetsDirectional.fromSTEB(
                                          //       8, 8, 8, 8),
                                          //   child: Icon(
                                          //     Icons.favorite_border,
                                          //     color: Colors.white,
                                          //     size: 24,
                                          //   ),
                                          // ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: 250,
                                    height: 60,
                                    decoration: BoxDecoration(
                                      color: Color(0xFF090F13),
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(8),
                                        bottomRight: Radius.circular(8),
                                        topLeft: Radius.circular(0),
                                        topRight: Radius.circular(0),
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
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                          //  Image.network(
                                          //   'https://media.istockphoto.com/photos/aerial-shot-of-houses-scattered-across-a-large-farmland-in-the-nepal-picture-id1326681895?b=1&k=20&m=1326681895&s=170667a&w=0&h=x3mowyEWvKFpCJt1TO8W2YxgsqdsxbgfvHBA3mrSQf8=',
                                          //   width: MediaQuery.of(context).size.width,
                                          // ),
                                              Text(
                                                'Rivers',
                                                style: TextStyle(
                                                  fontFamily: 'Lexend Deca',
                                                  color: Colors.white,
                                                  fontSize: 19,
                                                  fontWeight: FontWeight.normal,
                                                ),
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                        ),
                         ),




                        // Padding(
                        //   padding: EdgeInsetsDirectional.fromSTEB(16, 8, 0, 8),
                        //   child: Container(
                        //     width: 250,
                        //     height: 170,
                        //     decoration: BoxDecoration(
                        //       image: DecorationImage(
                        //         fit: BoxFit.fitWidth,
                        //         image: Image.network(
                        //           'assets/images/austin-neill-hgO1wFPXl3I-unsplash.jpg',
                        //         ).image,
                        //       ),
                        //       boxShadow: [
                        //         BoxShadow(
                        //           blurRadius: 3,
                        //           color: Color(0x64000000),
                        //           offset: Offset(0, 2),
                        //         )
                        //       ],
                        //       borderRadius: BorderRadius.circular(8),
                        //     ),
                        //     child: Column(
                        //       mainAxisSize: MainAxisSize.max,
                        //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //       children: [
                        //         Padding(
                        //           padding:
                        //               EdgeInsetsDirectional.fromSTEB(8, 4, 8, 0),
                        //           child: Row(
                        //             mainAxisSize: MainAxisSize.max,
                        //             mainAxisAlignment:
                        //                 MainAxisAlignment.spaceBetween,
                        //             children: [
                        //               Card(
                        //                 clipBehavior: Clip.antiAliasWithSaveLayer,
                        //                 color: Color(0x9839D2C0),
                        //                 elevation: 0,
                        //                 shape: RoundedRectangleBorder(
                        //                   borderRadius: BorderRadius.circular(8),
                        //                 ),
                        //                 child: Padding(
                        //                   padding: EdgeInsetsDirectional.fromSTEB(
                        //                       6, 2, 6, 2),
                        //                   child: Text(
                        //                     '1,365 ATTENDING',
                        //                     style: TextStyle(
                        //                       fontFamily: 'Lexend Deca',
                        //                       color: Colors.white,
                        //                       fontSize: 14,
                        //                       fontWeight: FontWeight.normal,
                        //                     ),
                        //                   ),
                        //                 ),
                        //               ),
                        //               Card(
                        //                 clipBehavior: Clip.antiAliasWithSaveLayer,
                        //                 color: Color(0xFF1E2429),
                        //                 elevation: 2,
                        //                 shape: RoundedRectangleBorder(
                        //                   borderRadius: BorderRadius.circular(30),
                        //                 ),
                        //                 child: Padding(
                        //                   padding: EdgeInsetsDirectional.fromSTEB(
                        //                       8, 8, 8, 8),
                        //                   child: Icon(
                        //                     Icons.favorite_border,
                        //                     color: Colors.white,
                        //                     size: 24,
                        //                   ),
                        //                 ),
                        //               )
                        //             ],
                        //           ),
                        //         ),
                        //         Container(
                        //           width: 250,
                        //           height: 60,
                        //           decoration: BoxDecoration(
                        //             color: Color(0xFF090F13),
                        //             borderRadius: BorderRadius.only(
                        //               bottomLeft: Radius.circular(8),
                        //               bottomRight: Radius.circular(8),
                        //               topLeft: Radius.circular(0),
                        //               topRight: Radius.circular(0),
                        //             ),
                        //           ),
                        //           child: Row(
                        //             mainAxisSize: MainAxisSize.max,
                        //             children: [
                        //               Container(
                        //                 width: 60,
                        //                 height: 100,
                        //                 decoration: BoxDecoration(
                        //                   color: Color(0xFFEE8B60),
                        //                   borderRadius: BorderRadius.only(
                        //                     bottomLeft: Radius.circular(8),
                        //                     bottomRight: Radius.circular(0),
                        //                     topLeft: Radius.circular(0),
                        //                     topRight: Radius.circular(0),
                        //                   ),
                        //                 ),
                        //                 child: Column(
                        //                   mainAxisSize: MainAxisSize.max,
                        //                   mainAxisAlignment:
                        //                       MainAxisAlignment.center,
                        //                   children: [
                        //                     Padding(
                        //                       padding:
                        //                           EdgeInsetsDirectional.fromSTEB(
                        //                               4, 4, 4, 4),
                        //                       child: Text(
                        //                         '14',
                        //                         textAlign: TextAlign.center,
                        //                         style: TextStyle(
                        //                           fontFamily: 'Lexend Deca',
                        //                           color: Colors.white,
                        //                           fontSize: 20,
                        //                           fontWeight: FontWeight.bold,
                        //                         ),
                        //                       ),
                        //                     )
                        //                   ],
                        //                 ),
                        //               ),

                        //               Padding(
                        //                 padding: EdgeInsetsDirectional.fromSTEB(
                        //                     8, 0, 0, 0),
                        //                 child: Column(
                        //                   mainAxisSize: MainAxisSize.max,
                        //                   mainAxisAlignment:
                        //                       MainAxisAlignment.center,
                        //                   crossAxisAlignment:
                        //                       CrossAxisAlignment.start,
                        //                   children: [
                        //                     Text(
                        //                       'San Antonio Music Festi…',
                        //                       style: TextStyle(
                        //                         fontFamily: 'Lexend Deca',
                        //                         color: Colors.white,
                        //                         fontSize: 14,
                        //                         fontWeight: FontWeight.normal,
                        //                       ),
                        //                     ),
                        //                     // Text(
                        //                     //   'Sam’s Burger Joint',
                        //                     //   style: TextStyle(
                        //                     //     fontFamily: 'Lexend Deca',
                        //                     //     color: Colors.white,
                        //                     //     fontSize: 12,
                        //                     //     fontWeight: FontWeight.normal,
                        //                     //   ),
                        //                     // ),
                        //                   ],
                        //                 ),
                        //               ),

                        //             ],
                        //           ),
                        //         )
                        //       ],
                        //     ),
                        //   ),
                        // ),


                      ],
                    ),
                  ),
                ),
              ),



         Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16, 8, 16, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      'Famous Places',
                      style: TextStyle(
                        fontFamily: 'Lexend Deca',
                        color: Colors.white,
                        fontSize: 19,
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),
              ),

              
        GestureDetector(
                  onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>DescriptionPageWidget1()));
                  },
              
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(16, 8, 0, 8),
                          child: Container(
                            width: 130,
                            height: 170,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: Image.network(
                                  'assets/img1.jpg',
                                ).image,
                              
                              ),
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 3,
                                  color: Color(0x64000000),
                                  offset: Offset(0, 2),
                                )
                              ],
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding:
                                      EdgeInsetsDirectional.fromSTEB(8, 4, 8, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Card(
                                        clipBehavior: Clip.antiAliasWithSaveLayer,
                                        color: Color(0xFF1E2429),
                                        elevation: 2,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(30),
                                        ),
                                        child: Padding(
                                          padding: EdgeInsetsDirectional.fromSTEB(
                                              8, 8, 8, 8),
                                          child: Icon(
                                            Icons.favorite_border,
                                            color: Colors.white,
                                            size: 24,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 250,
                                  height: 60,
                                  decoration: BoxDecoration(
                                    color: Color(0xFF090F13),
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(8),
                                      bottomRight: Radius.circular(8),
                                      topLeft: Radius.circular(0),
                                      topRight: Radius.circular(0),
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
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Hill park',
                                              style: TextStyle(
                                                fontFamily: 'Lexend Deca',
                                                color: Colors.white,
                                                fontSize: 18,
                                              ),
                                            ),
                                        ],
                                      ),
                                     )
                                    ],
                                   ),
                                   ),
                                   ],
                                    ),
                                   ),
                                  ),

                        
                   GestureDetector(
                            onTap: (){
                           Navigator.push(context, MaterialPageRoute(builder: (context)=>DescriptionPageWidget2()));
                            },
          
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(16, 8, 0, 8),
                            child: Container(
                              width: 130,
                              height: 170,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: Image.network(
                                    'assets/img2.jpg',
                                  ).image,
                                ),
                                
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 3,
                                    color: Color(0x64000000),
                                    offset: Offset(0, 2),
                                  )
                                ],
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding:
                                        EdgeInsetsDirectional.fromSTEB(8, 4, 8, 0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Card(
                                          clipBehavior: Clip.antiAliasWithSaveLayer,
                                          color: Color(0xFF1E2429),
                                          elevation: 2,
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(30),
                                          ),
                                          child: Padding(
                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                8, 8, 8, 8),
                                            child: Icon(
                                              Icons.favorite_border,
                                              color: Colors.white,
                                              size: 24,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),

                                  Container(
                                    width: 250,
                                    height: 60,
                                    decoration: BoxDecoration(
                                      color: Color(0xFF090F13),
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(8),
                                        bottomRight: Radius.circular(8),
                                        topLeft: Radius.circular(0),
                                        topRight: Radius.circular(0),
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
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Phulbari',
                                                style: TextStyle(
                                                  fontFamily: 'Lexend Deca',
                                                  color: Colors.white,
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.normal,
                                                ),
                                              ),
                               
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),




                  GestureDetector(
                            onTap: (){
                             Navigator.push(context, MaterialPageRoute(builder: (context)=>DescriptionPageWidget3()));
                            },
                        
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(16, 8, 0, 8),
                            child: Container(
                              width: 130,
                              height: 170,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: Image.network(
                                    'assets/img3.jpg',
                                  ).image,
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 3,
                                    color: Color(0x64000000),
                                    offset: Offset(0, 2),
                                  )
                                ],
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding:
                                        EdgeInsetsDirectional.fromSTEB(8, 4, 8, 0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Card(
                                          clipBehavior: Clip.antiAliasWithSaveLayer,
                                          color: Color(0xFF1E2429),
                                          elevation: 2,
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(30),
                                          ),
                                          child: Padding(
                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                8, 8, 8, 8),
                                            child: Icon(
                                              Icons.favorite_border,
                                              color: Colors.white,
                                              size: 24,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: 250,
                                    height: 60,
                                    decoration: BoxDecoration(
                                      color: Color(0xFF090F13),
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(8),
                                        bottomRight: Radius.circular(8),
                                        topLeft: Radius.circular(0),
                                        topRight: Radius.circular(0),
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
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Banbatika',
                                                style: TextStyle(
                                                  fontFamily: 'Lexend Deca',
                                                  color: Colors.white,
                                                  fontSize: 18,
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
                        ),


                      ],
                    ),
                  ),
                ),
               ),


             Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16, 8, 16, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      'Users Added Places',
                      style: TextStyle(
                        fontFamily: 'Lexend Deca',
                        color: Colors.white,
                        fontSize: 19,
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),
              ),

                GestureDetector(
                  onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>UserAdded1()));
                  },
              
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(16, 8, 0, 8),
                          child: Container(
                            width: 130,
                            height: 170,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: Image.network(
                                  'assets/img19.jpg',
                                ).image,
                              
                              ),
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 3,
                                  color: Color(0x64000000),
                                  offset: Offset(0, 2),
                                )
                              ],
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding:
                                      EdgeInsetsDirectional.fromSTEB(8, 4, 8, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Card(
                                        clipBehavior: Clip.antiAliasWithSaveLayer,
                                        color: Color(0xFF1E2429),
                                        elevation: 2,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(30),
                                        ),
                                        // child: Padding(
                                        //   padding: EdgeInsetsDirectional.fromSTEB(
                                        //       8, 8, 8, 8),
                                        //   child: Icon(
                                        //     Icons.favorite_border,
                                        //     color: Colors.white,
                                        //     size: 24,
                                        //   ),
                                        // ),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 250,
                                  height: 60,
                                  decoration: BoxDecoration(
                                    color: Color(0xFF090F13),
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(8),
                                      bottomRight: Radius.circular(8),
                                      topLeft: Radius.circular(0),
                                      topRight: Radius.circular(0),
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
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Mahuwari',
                                              style: TextStyle(
                                                fontFamily: 'Lexend Deca',
                                                color: Colors.white,
                                                fontSize: 18,
                                              ),
                                            ),
                                        ],
                                      ),
                                     )
                                    ],
                                   ),
                                   ),
                                   ],
                                    ),
                                   ),
                                  ),

                        
                   GestureDetector(
                            onTap: (){
                           Navigator.push(context, MaterialPageRoute(builder: (context)=>UserAdded2()));
                            },
          
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(16, 8, 0, 8),
                            child: Container(
                              width: 130,
                              height: 170,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: Image.network(
                                    'assets/img20.jpg',
                                  ).image,
                                  
                                ),
                                
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 3,
                                    color: Color(0x64000000),
                                    offset: Offset(0, 2),
                                  )
                                ],
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding:
                                        EdgeInsetsDirectional.fromSTEB(8, 4, 8, 0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Card(
                                          clipBehavior: Clip.antiAliasWithSaveLayer,
                                          color: Color(0xFF1E2429),
                                          elevation: 2,
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(30),
                                          ),
                                          // child: Padding(
                                          //   padding: EdgeInsetsDirectional.fromSTEB(
                                          //       8, 8, 8, 8),
                                          //   child: Icon(
                                          //     Icons.favorite_border,
                                          //     color: Colors.white,
                                          //     size: 24,
                                          //   ),
                                          // ),
                                        )
                                      ],
                                    ),
                                  ),

                                  Container(
                                    width: 250,
                                    height: 60,
                                    decoration: BoxDecoration(
                                      color: Color(0xFF090F13),
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(8),
                                        bottomRight: Radius.circular(8),
                                        topLeft: Radius.circular(0),
                                        topRight: Radius.circular(0),
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
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Bhoot Khola',
                                                style: TextStyle(
                                                  fontFamily: 'Lexend Deca',
                                                  color: Colors.white,
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.normal,
                                                ),
                                              ),
                               
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),




                  GestureDetector(
                            onTap: (){
                             Navigator.push(context, MaterialPageRoute(builder: (context)=>UserAdded3()));
                            },
                        
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(16, 8, 0, 8),
                            child: Container(
                              width: 130,
                              height: 170,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: Image.network(
                                    'assets/img21.jpg',
                                  ).image,
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 3,
                                    color: Color(0x64000000),
                                    offset: Offset(0, 2),
                                  )
                                ],
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding:
                                        EdgeInsetsDirectional.fromSTEB(8, 4, 8, 0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Card(
                                          clipBehavior: Clip.antiAliasWithSaveLayer,
                                          color: Color(0xFF1E2429),
                                          elevation: 2,
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(30),
                                          ),
                                          // child: Padding(
                                          //   padding: EdgeInsetsDirectional.fromSTEB(
                                          //       8, 8, 8, 8),
                                          //   child: Icon(
                                          //     Icons.favorite_border,
                                          //     color: Colors.white,
                                          //     size: 24,
                                          //   ),
                                          // ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: 250,
                                    height: 60,
                                    decoration: BoxDecoration(
                                      color: Color(0xFF090F13),
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(8),
                                        bottomRight: Radius.circular(8),
                                        topLeft: Radius.circular(0),
                                        topRight: Radius.circular(0),
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
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Charange',
                                                style: TextStyle(
                                                  fontFamily: 'Lexend Deca',
                                                  color: Colors.white,
                                                  fontSize: 18,
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
                        ),

                        


                      ],
                    ),
                  ),
                ),
               ),






            ],
          ),
        ),
      ),

  



      //  bottomNavigationBar: BottomNavigationBar(
      //   items: <BottomNavigationBarItem>[
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home,
      //       ),
      //       backgroundColor: Colors.black,
            
      //       label: "Home",
      //     ),
      //      BottomNavigationBarItem(
      //         icon: Icon(Icons.add),
      //       label: "Add places",
            
      //      ),
      //      BottomNavigationBarItem(
      //         icon: Icon(Icons.favorite),
      //       label: "Favourites",
      //      ),
      //       BottomNavigationBarItem(
      //          icon: Icon(Icons.person),
      //       label: "Profile",
            
      //       ),
      //   ],

      //      currentIndex: _selectedIndex,
      //       onTap: _onItemTap
      // ),



    );
  }
}

// class HamroOption extends StatelessWidget {
//  final String title;
//  final Color color;
//  HamroOption(this.title, this.color);
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(15.0),
//       child: Container(
//         decoration: BoxDecoration(
//         color: color,
//         borderRadius: BorderRadius.circular(10),
//         ),
//         height: 60,
//         width: double.infinity,
//         child: Center(
//           child: Text(title,
//            style: TextStyle(fontSize: 30,
//            color: Colors.white),
//           ),
//         ),
//       ),
//     );
//   }
// }