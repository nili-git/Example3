import 'package:flutter/material.dart';
//import 'package:app/home_page.dart';


class Ramapithecus1 extends StatefulWidget {
  //const DescriptionPageWidget({ Key? key }) : super(key: key);

  @override
  _Ramapithecus1State createState() => _Ramapithecus1State();
}

class _Ramapithecus1State extends State<Ramapithecus1> {
  // bool _loadingButton = false;
  final scaffoldKey = GlobalKey<ScaffoldState>();

 
  @override
  Widget build(BuildContext context) {
   return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xFF090F13),
        automaticallyImplyLeading: false,
         leading: IconButton(icon: Icon(Icons.arrow_back, color: Colors.white, size: 20.0,),
                     onPressed: () {
                       Navigator.pop(context);
                     }),

        // Padding(
        //             padding: const EdgeInsets.symmetric(horizontal: 1.0, vertical: 30.0),
        //             child: IconButton(icon: Icon(Icons.arrow_back, color: Colors.black, size: 40.0,),
        //              onPressed: () {
        //                Navigator.pop(context);
        //              }),
        //           ),

        title: Text(
          'place details',
          style: TextStyle(
            fontFamily: 'Lexend Deca',
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.bold,
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
                    'assets/img25.jpg',
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
                      'Ramapithecus',
                      style: TextStyle(
                        fontFamily: 'Lexend Deca',
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
                    'butwal-9 Rupandehi, Nepal',
                      style: TextStyle(
                        fontFamily: 'Lexend Deca',
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
                      'Ramapithecus, fossil primate dating from the Middle and Late Miocene epochs (about 16.6 million to 5.3 million years ago). For a time in the 1960s and ???70s, Ramapithecus was thought to be a distinct genus that was the first direct ancestor of modern humans (Homo sapiens) before it became regarded as that of the orangutan ancestor Sivapithecus.',
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
                        '30min to go / 2km form here / Natural place ',
                        style: TextStyle(
                          fontFamily: 'Lexend Deca',
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
              child: RaisedButton(
                onPressed: () {
                    Navigator.pop(context);
                  // print('ButtonPrimary pressed ...');
                },
                child:Text( 'Lets Go',),
                // options: FFButtonOptions(
                //   width: 250,
                //   height: 50,
                //   color: Color(0xFFE15E1B),
                //   textStyle: TextStyle(
                //     fontFamily: 'Oswald',
                //     color: Colors.white,
                //     fontSize: 20,
                //     fontWeight: FontWeight.bold,
                //   ),
                //   borderSide: BorderSide(
                //     color: Colors.transparent,
                //     width: 1,
                //   ),
                //   borderRadius: 20,
                // ),
                // loading: _loadingButton,
              ),
            )
          ],
        ),
      ),
    );
  }
}