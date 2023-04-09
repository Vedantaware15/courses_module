import 'dummy.dart';
import 'item.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Courses module ',
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      home: Exec(),
    );
  }
}

class Exec extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 36, 8, 63),
      appBar: AppBar(
        title: const Text(
          'C O U R E S E S',
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
      ),
      
      body: ListView.builder(
        
        itemBuilder: (context, index) {
          return Item(
              post: DUMMY_EVENTS[index].post,
              imageUrl: DUMMY_EVENTS[index].imageUrl,
              name: DUMMY_EVENTS[index].name);
        },
        itemCount: DUMMY_EVENTS.length,
        
      
      ),
      
      
      
    );

  }
}
