import 'package:flutter/material.dart';
//import 'package:app/home_page.dart';

class DescriptionPageWidget3 extends StatefulWidget {
  //const DescriptionPageWidget({ Key? key }) : super(key: key);

  @override
  _DescriptionPageWidget3State createState() => _DescriptionPageWidget3State();
}

class _DescriptionPageWidget3State extends State<DescriptionPageWidget3> {
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
        
        title: Text(
          'place detail',
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
                  'assets/img3.jpg',
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
                      'Banbatika',
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
                      ' Its mostly famous by its decorating places, cute & beautiful animals. This is a one place to celebrate a picnic moment and many occasions to celebrate. Banbatika has many animals known as anaconda (अजिङ्गर), white mouses, ostrich, deer, leopards, rabbits and many more. Banbatika is one beautiful resort for a tourist.',
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
            ),

          ],
        ),
      ),
    );
  }
}