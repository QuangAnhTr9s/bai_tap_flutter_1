import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: AppBar(centerTitle: true,
        title: const Text("Bai tap 1"),
      ),*/
      body: Container(
        padding: const EdgeInsets.fromLTRB(15, 50, 10, 15),
        child: Column(
          children: [
            const Text('Hang thu nhat', style: TextStyle(fontSize: 24, color: Colors.grey, fontWeight: FontWeight.bold)),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
              Expanded(flex: 1,
                  child: Text('Hang thu hai 1', style: TextStyle(fontSize: 24, color: Colors.grey, fontWeight: FontWeight.bold),)),
              Expanded(flex: 1,
                  child: Text('Hang thu hai 2', style: TextStyle(fontSize: 24, color: Colors.grey, fontWeight: FontWeight.bold),)),
            ],),
            const Text.rich(TextSpan(children: [
              TextSpan(text: 'Hang thu ba ', style: TextStyle(fontSize: 18, color: Colors.grey,)),
              TextSpan(text: 'bold 1', style: TextStyle(fontSize: 18, color: Colors.yellow,fontWeight: FontWeight.bold)),
            ])),
            const Divider(height: 20, thickness: 8, color: Color.fromARGB(100, 161, 158, 158),),
            Row(mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Stack(
                //Stack lấy khung là size của Wiget lớn nhất
                //dùng Positioned sẽ mất một phần của Positioned nếu tràn ra Wiget lớn nhất
                //=> dùng clipBehavior: Clip.none
                clipBehavior: Clip.none,
                children: [
                Container(height: 120,width: 120,color: Colors.green,),
                Positioned(left: 60, top: 60, child: Container(height: 120,width: 120,color: Colors.red,)),
                Positioned(left: 120, top: 120, child: Container(height: 120,width: 120,color: Colors.yellow,)),
                ],)
            ])
          ],
        ),
      )
    );
  }
}
