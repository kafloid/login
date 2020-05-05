import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/auth.dart';
import '../pages/home.dart';
import '../pages/login.dart';

class MainPage extends StatefulWidget{

  @override
  _MainPageState createState() => _MainPageState();
}
  
class _MainPageState extends State<MainPage> {

  /* ChangeNotifierProvider<Auth>(
          create: (context) => Auth(),
          child: MyApp(),
        ), */


  @override
    Widget build(BuildContext context) {
      return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(primarySwatch: Colors.teal),
        home: FutureBuilder(
        // get the Provider, and call the getUser method
        future: Provider.of<Auth>(context).getUser(),
        // wait for the future to resolve and render the appropriate
        // widget for HomePage or LoginPage
        builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return snapshot.hasData ? Home() : Login();
          } else {
            return Container(color: Colors.white);
          }
        },
      ),
    );
  }
  
}

class LoadingCircle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: CircularProgressIndicator(),
        alignment: Alignment(0.0, 0.0),
      ),
    );
  }
}