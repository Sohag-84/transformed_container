import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.green,
            title: const Text("Transformed container",style: TextStyle(color: Colors.red,fontSize: 20)),
            centerTitle: true,
            leading: const Icon(Icons.menu,),
            leadingWidth: 50,
            iconTheme: const IconThemeData(size: 40,color: Colors.red),
            actions: [
              IconButton(onPressed: (){}, icon: const Icon(Icons.more_vert))
            ],
            actionsIconTheme: const IconThemeData(size: 30,color: Colors.white),
          ),
          body: Container(
            width: 400,
            height: 200,
            padding: const EdgeInsets.all(8),
            margin: const EdgeInsets.all(40),
            transform: Matrix4.rotationZ(0.1),
            decoration: BoxDecoration(color: Colors.orange,
                borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.black,style: BorderStyle.solid,width: 3)
            ),
            alignment: Alignment.center,
            child: const Text("I love flutter",
              style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold,),
            ),
          ),
        ),
      ),
    );
  }
}


