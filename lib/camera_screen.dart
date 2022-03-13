import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:url_launcher/url_launcher.dart';

class pic extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Comic'),
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Text('Wasteagram'),
        ),
        body: Center(child: Text("Image here"))
      ),
    )
    );
  }
}

class CameraScreen extends StatefulWidget {
  @override
  _CameraScreenState createState() => _CameraScreenState();
}
class _CameraScreenState extends State<CameraScreen>
  with TickerProviderStateMixin {
    late AnimationController controller;
    @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 5),
    )..addListener(() {
        setState(() {});
      });
    controller.repeat(reverse: true);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  XFile? image;

  void getImage() async{
    // File image;
    // imageFile = File(await ImagePicker().getImage(source: ImageSource.gallery).then((pickedFile) => pickedFile.path));

    image = await ImagePicker().pickImage(source: ImageSource.camera);
    setState( () {});
  }

  @override
  Widget build(BuildContext context) {
    if (image == null){
      return MaterialApp(
        home: Scaffold(
        appBar: AppBar(title: Text('Wasteagram'),),
        body: 
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircularProgressIndicator(
                value: controller.value,)
              ]
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                ElevatedButton(
                  child: Icon(Icons.camera_alt_outlined),
                  onPressed: (){
                    getImage();
                  }
                )
              ]
            ),
          ]
        // Align(
        //   alignment: Alignment.bottomCenter,
        //   child: ElevatedButton(
        //     child: Icon(Icons.camera_alt_outlined),
        //     onPressed: (){
        //       getImage();
        //     }
        //   )
        )
      )
    );
    }
    else{
      return MaterialApp(
        home: Scaffold(
        body: Column(
          children: <Widget>[Image.file(File(image!.path)),
            Builder(builder: (context){
            return ElevatedButton(onPressed: (){
              Navigator.push(context,MaterialPageRoute(builder: (context) => pic()));
            },
            child: Text("Post It!"),);
          },
            )]

        )
      ));
    }
  }
}

    // else{
    //   return MaterialApp(
    //     home: Scaffold(
    //     body: Center(child: Icon(Icons.book)),
    //       ElevatedButton: Builder(builder: (context){
    //         return FloatingActionButton(onPressed: (){
    //         Navigator.push(context,MaterialPageRoute(builder: (context) => pic()));
    //         },
    //         child: const Icon(Icons.add_rounded),);
    //       }
    //     )
    //   ));
    // }