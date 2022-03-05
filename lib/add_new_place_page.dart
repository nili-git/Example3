import 'package:flutter/material.dart';

class FormScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FormScreenState();
  }
}

class FormScreenState extends State<FormScreen> {
  String _placename;
  String _address;
  String _description;
  String _imageurl;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Widget _buildplacename() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Place Name'),
      maxLength: 100,
      validator: (String value) {
        if (value.isEmpty) {
          return 'Place Name is Required';
        }

        return null;
      },
      onSaved: (String value) {
        _placename = value;
      },
    );
  }

  Widget _buildaddress() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Address'),
      maxLength: 100,
      validator: (String value) {
        if (value.isEmpty) {
          return 'Address is Required';
        }

        return null;
      },
      onSaved: (String value) {
        _address = value;
      },
    );
  }

  Widget _builddescription() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Description'),
      maxLength: 1000,
      validator: (String value) {
        if (value.isEmpty) {
          return 'Place description is Required';
        }

        return null;
      },
      onSaved: (String value) {
        _description = value;
      },
    );
  }

  Widget _builURL() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Image Url'),
      keyboardType: TextInputType.url,
      validator: (String value) {
        if (value.isEmpty) {
          return 'Image URL is Required';
        }

        return null;
      },
      onSaved: (String value) {
        _imageurl = value;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add New Place"),
         backgroundColor: Colors.lightGreen[400],
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(50),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                _buildplacename(),
                _buildaddress(),
                _builddescription(),
                _builURL(),
                SizedBox(height: 50),
                RaisedButton(
                  child: Text(
                    'Add this place',
                    style: TextStyle(color: Colors.blue, fontSize: 16),
                  ),
                  onPressed: () {
                    if (!_formKey.currentState.validate()) {
                      return;
                    }

                    _formKey.currentState.save();

                    print(_placename);
                    print(_address);
                    print(_imageurl);
                    print(_description);
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}





// // import 'dart:io';
// import 'package:flutter/material.dart';
// // import 'package:google_fonts/google_fonts.dart';

// class AddNewplaceWidget extends StatefulWidget {
//   AddNewplaceWidget({Key key}) : super(key: key);

//   @override
//   _AddNewplaceWidgetState createState() => _AddNewplaceWidgetState();
// }

// class _AddNewplaceWidgetState extends State<AddNewplaceWidget> {
//   String uploadedFileUrl = '';
//   TextEditingController textController1;
//   TextEditingController textController2;
//   TextEditingController textController3;
//   // var placePickerValue = FFPlace();
//   //bool _loadingButton = false;
//   final scaffoldKey = GlobalKey<ScaffoldState>();

//   @override
//   void initState() {
//     super.initState();
//     textController1 = TextEditingController();
//     textController2 = TextEditingController();
//     textController3 = TextEditingController();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       key: scaffoldKey,
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         automaticallyImplyLeading: false,
        
//         title: Text(
//           'Add New Place',
//           style: TextStyle(
//             fontFamily: 'Lexend Deca',
//             color: Color(0xFF090F13),
//             fontSize: 22,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//         actions: [
//           Padding(
//             padding: EdgeInsetsDirectional.fromSTEB(0, 0, 12, 0),
//             // child: FlutterFlowIconButton(
//             //   borderColor: Colors.transparent,
//             //   borderRadius: 30,
//             //   buttonSize: 48,
//             //   icon: Icon(
//             //     Icons.close_rounded,
//             //     color: Color(0xFF95A1AC),
//             //     size: 30,
//             //   ),
//             //   onPressed: () async {
//             //     Navigator.pop(context);
//             //   },
//             // ),
//           )
//         ],
//         centerTitle: false,
//         elevation: 0,
//       ),
//       backgroundColor: Colors.white,
//       body: Column(
//         mainAxisSize: MainAxisSize.max,
//         children: [
//           Row(
//             mainAxisSize: MainAxisSize.max,
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Padding(
//                 padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 12),
//                 child: Container(
//                   width: MediaQuery.of(context).size.width * 0.94,
//                   decoration: BoxDecoration(),
//                   child: Column(
//                     mainAxisSize: MainAxisSize.max,
//                     children: [
//                       Padding(
//                         padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
//                         child: Container(
//                           width: MediaQuery.of(context).size.width * 0.96,
//                           height: 150,
//                           decoration: BoxDecoration(
//                             color: Color(0xFFF1F5F8),
//                             image: DecorationImage(
//                               fit: BoxFit.cover,
//                               image: Image.asset(
//                                 'assets/img2.jpg',
//                               ).image,
//                             ),
//                             boxShadow: [
//                               BoxShadow(
//                                 blurRadius: 6,
//                                 color: Color(0x3A000000),
//                                 offset: Offset(0, 2),
//                               )
//                             ],
//                             borderRadius: BorderRadius.circular(30),
//                           ),
//                         ),
//                       ),
//                       Divider(),
//                       TextFormField(
//                         controller: textController1,
//                         obscureText: false,
//                         decoration: InputDecoration(
//                           hintText: 'Name of the place',
//                           hintStyle: TextStyle(
//                             fontFamily: 'Poppins',
//                             color: Color(0xFF1BE218),
//                             fontWeight: FontWeight.bold,
//                             fontStyle: FontStyle.italic,
//                           ),
//                           enabledBorder: OutlineInputBorder(
//                             borderSide: BorderSide(
//                               color: Color(0x00000000),
//                               width: 1,
//                             ),
//                             borderRadius: const BorderRadius.only(
//                               topLeft: Radius.circular(4.0),
//                               topRight: Radius.circular(4.0),
//                             ),
//                           ),
//                           focusedBorder: OutlineInputBorder(
//                             borderSide: BorderSide(
//                               color: Color(0x00000000),
//                               width: 1,
//                             ),
//                             borderRadius: const BorderRadius.only(
//                               topLeft: Radius.circular(4.0),
//                               topRight: Radius.circular(4.0),
//                             ),
//                           ),
//                           filled: true,
//                         ),
//                         style: TextStyle(
//                           fontFamily: 'Poppins',
//                           color: Color(0xFF1BE218),
//                           fontWeight: FontWeight.bold,
//                           fontStyle: FontStyle.italic,
//                         ),
//                       ),
//                       Divider(),
//                       TextFormField(
//                         controller: textController2,
//                         obscureText: false,
//                         decoration: InputDecoration(
//                           hintText: 'Address',
//                           hintStyle: TextStyle(
//                             fontFamily: 'Poppins',
//                             color: Color(0xFF1BE218),
//                             fontStyle: FontStyle.italic,
//                           ),
//                           enabledBorder: OutlineInputBorder(
//                             borderSide: BorderSide(
//                               color: Color(0x00000000),
//                               width: 1,
//                             ),
//                             borderRadius: const BorderRadius.only(
//                               topLeft: Radius.circular(4.0),
//                               topRight: Radius.circular(4.0),
//                             ),
//                           ),
//                           focusedBorder: OutlineInputBorder(
//                             borderSide: BorderSide(
//                               color: Color(0x00000000),
//                               width: 1,
//                             ),
//                             borderRadius: const BorderRadius.only(
//                               topLeft: Radius.circular(4.0),
//                               topRight: Radius.circular(4.0),
//                             ),
//                           ),
//                           filled: true,
//                         ),
//                         style: TextStyle(
//                           fontFamily: 'Poppins',
//                           color: Color(0xFF1BE218),
//                           fontStyle: FontStyle.italic,
//                         ),
//                       ),
//                       Divider(),
//                       Padding(
//                         padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
//                         child: Row(
//                           mainAxisSize: MainAxisSize.max,
//                           children: [
//                             Expanded(
//                               child: TextFormField(
//                                 controller: textController3,
//                                 obscureText: false,
//                                 decoration: InputDecoration(
//                                   hintText: 'Description...',
//                                   hintStyle:
//                                       TextStyle(
//                                     fontFamily: 'Lexend Deca',
//                                     color: Color(0xFF8B97A2),
//                                     fontSize: 14,
//                                     fontWeight: FontWeight.normal,
//                                   ),
//                                   enabledBorder: OutlineInputBorder(
//                                     borderSide: BorderSide(
//                                       color: Color(0xFFDBE2E7),
//                                       width: 2,
//                                     ),
//                                     borderRadius: BorderRadius.circular(8),
//                                   ),
//                                   focusedBorder: OutlineInputBorder(
//                                     borderSide: BorderSide(
//                                       color: Color(0xFFDBE2E7),
//                                       width: 2,
//                                     ),
//                                     borderRadius: BorderRadius.circular(8),
//                                   ),
//                                   contentPadding:
//                                       EdgeInsetsDirectional.fromSTEB(
//                                           20, 32, 20, 12),
//                                 ),
//                                 style: TextStyle(
//                                   fontFamily: 'Lexend Deca',
//                                   color: Color(0xFF090F13),
//                                   fontSize: 14,
//                                   fontWeight: FontWeight.normal,
//                                   fontStyle: FontStyle.italic,
//                                 ),
//                                 textAlign: TextAlign.start,
//                                 maxLines: 4,
//                               ),
//                             )
//                           ],
//                         ),
//                       )
//                     ],
//                   ),
//                 ),
//               )
//             ],
//           ),
//           Padding(
//             padding: EdgeInsetsDirectional.fromSTEB(12, 0, 12, 0),
//             // child: FlutterFlowPlacePicker(
//             //   iOSGoogleMapsApiKey: '',
//             //   androidGoogleMapsApiKey: '',
//             //   webGoogleMapsApiKey: '',
//             //   onSelect: (place) => setState(() => placePickerValue = place),
//             //   defaultText: 'Tag Location',
//             //   icon: Icon(
//             //     Icons.place,
//             //     color: Color(0xFF95A1AC),
//             //     size: 16,
//             //   ),
//             //   buttonOptions: FFButtonOptions(
//             //     width: double.infinity,
//             //     height: 50,
//             //     color: Color(0x4A686363),
//             //     textStyle: TextStyle(
//             //       fontFamily: 'Lexend Deca',
//             //       color: Color(0xFF0F1010),
//             //       fontSize: 16,
//             //       fontWeight: FontWeight.w500,
//             //     ),
//             //     borderSide: BorderSide(
//             //       color: Color(0xFFDBE2E7),
//             //       width: 2,
//             //     ),
//             //     borderRadius: 8,
//             //   ),
//             // ),
//           ),
//           Padding(
//             padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
//             // child: FFButtonWidget(
//             //   onPressed: () {
//             //     print('Button pressed ...');
//             //   },
//             //   text: 'Add ',
//             //   options: FFButtonOptions(
//             //     width: 270,
//             //     height: 60,
//             //     color: Color(0xFFEF4C39),
//             //     textStyle: TextStyle(
//             //       fontFamily: 'Lexend Deca',
//             //       color: Colors.white,
//             //       fontSize: 16,
//             //       fontWeight: FontWeight.w500,
//             //     ),
//             //     elevation: 3,
//             //     borderSide: BorderSide(
//             //       color: Colors.transparent,
//             //       width: 1,
//             //     ),
//             //     borderRadius: 8,
//             //   ),
//             //   loading: _loadingButton,
//             // ),
//           )
//         ],
//       ),
//     );
//   }
// }