// @dart=2.9
import 'package:flutter/material.dart';
import 'package:location/location.dart';
import 'package:flutter/material.dart';  
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/services.dart';
import '/camera_screen.dart';
import 'dart:math';

void main() {
    SystemChrome.setPreferredOrientations([
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.landscapeRight,
    DeviceOrientation.portraitUp
  ]);
  runApp(CameraScreen());
}

// class ShareLocationScreen extends StatefulWidget{

//   @override
//   _ShareLocationScreenState createState() => _ShareLocationScreenState();
// }

// class _ShareLocationScreenState extends State<ShareLocationScreen>{
//   LocationData locationData;

//   @override
//   void initState(){
//     super.initState();
//     retrieveLocation();
//   }

//   void retrieveLocation() async{
//     LocationData locationData;
//     var locationService = Location();
//     locationData = await locationService.getLocation();
//     setState( () {});
//   }

//   @override
//   Widget build(BuildContext context){
//     if (locationData == null){
//       print("none");
//     }
//     else
//     {return MaterialApp(
//     home: Scaffold(
//     body: Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         Text('Latitude: ${locationData.latitude}', style: Theme.of(context).textTheme.headline3),
//         Text('Longitude: ${locationData.longitude}', style: Theme.of(context).textTheme.headline3),
//         RaisedButton(child: Text('Share'),
//         onPressed: () {}
//         ,)
//       ],
//     )
//   )
//   );}
//   }
// }



// class Tabs extends StatelessWidget {
//   static const tabs = [
//     Tab(icon: Icon(Icons.account_box_rounded)),
//     Tab(icon: Icon(Icons.subject_rounded)),
//     Tab(icon: Icon(Icons.quiz)),

//   ];

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData(fontFamily: 'Comic'),
//       home: DefaultTabController(
//         length: 3,
//         child: Scaffold(
//         backgroundColor: Colors.yellow,
//           appBar: AppBar(
//             backgroundColor: Colors.purple,
//             centerTitle: true,
//             title: const Text('Call Me Maybe'),
//             bottom: TabBar(
//               tabs: tabs),
//             ),
//           body: TabBarView(
//         ),
//       ),
//     );
//     );
//   }
// }

// class ShareLocationScreen extends Statelesswidget {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Text('Latitude: LATITUDE', style: Theme.of(context).textTheme.display1),
//           Text('Longitude: LONGITUDE', style: Theme.of(context).textTheme.display1),
//           RaisedButton(
//             child: Text('Share'),
//             onPressed: () {
//              }
//           ), // RaisedButton
//         ],
//       ) // Column
//    ); // Center
//   }
// }

