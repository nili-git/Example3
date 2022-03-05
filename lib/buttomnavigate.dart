import 'package:flutter/material.dart';
import 'package:places_autocomplete/favourite.dart'; 
import 'package:places_autocomplete/profile_page.dart';
import 'package:places_autocomplete/add_new_place_page.dart';
//import 'add_new_place_page.dart'; 

import 'home_page.dart'; 

 

class Bottomnavigate extends StatefulWidget { 

@override 

_BottomnavigateState createState() => _BottomnavigateState(); 

} 

 

class _BottomnavigateState extends State<Bottomnavigate> { 
 int _selectedIndex = 0;
 List<Widget> meroWidget = <Widget>[
  FrontpageWidget(), Favourite1(), FormScreen(), ProfilepageWidget()
  ];

_onItemTap(int index){
setState(() {
  _selectedIndex = index;
});
}




// int _currentIndex = 0; 
//  final List _children = [ FrontpageWidget(), Favourite1(), FormScreen(), ProfilepageWidget()]; 
// void onTabTapped(int index) { 

//  setState(() { 
// _currentIndex = index; 
// }); 
//  } 

@override 
Widget build(BuildContext context) { 
return Scaffold( 
   
 body: Center(
        child: meroWidget.elementAt(_selectedIndex),
        
      ),
      
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
            backgroundColor: Colors.black,
          ),
           BottomNavigationBarItem(
             icon:  Icon(Icons.favorite), 
            label: "Favourite",
           ),
            BottomNavigationBarItem(
              icon:  Icon(Icons.add),
            label: "Add Place",
            
            ),
             BottomNavigationBarItem(
              icon: Icon(Icons.person),
            label: "Profile",
            
            ),

        ],

           currentIndex: _selectedIndex,
            onTap: _onItemTap
      ),










//  body: _children[_currentIndex], 

//  bottomNavigationBar: BottomNavigationBar( 

//  //currentIndex: 0, 

//  //onTap: onTabTapped, 

//     items: [ 

//  BottomNavigationBarItem( 

//  icon: new Icon(Icons.home), 

//   title: new Text('Home'),
//  // backgroundColor: Colors.black, 

//  ), 

//  BottomNavigationBarItem( 

//   icon: new Icon(Icons.favorite), 

//   title: new Text('Favorite'), 
//   //backgroundColor: Colors.black, 

//  ), 

//  BottomNavigationBarItem( 

//   icon: new Icon(Icons.add), 

//   title: new Text('Add place'), 
//   //backgroundColor: Colors.black, 

//  ), 


//  BottomNavigationBarItem( 

//  icon: Icon(Icons.person), title: Text('Profile')) ,

 

//  ], 


//  ), 

 ); 
 } 

} 