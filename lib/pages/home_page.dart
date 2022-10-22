import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  String name = "-";
  List<String> names = [];

  @override
  initState() {
    super.initState();

    // name = await getName();

    // getName().then((value) {
    //   name = value;
    //   setState(() {});
    // });

    fetchDataFinal();

  }

  Future<void> fetchDataFinal() async{
    names = await getData();
    setState(() {

    });
  }



  Future<String> getName() async {
    return Future.delayed(Duration(seconds: 4), () {
      return "Juan Carlos";
    });
  }

  Future<List<String>> getData () async {
    return Future.delayed(Duration(seconds: 3),(){
      return ["Juan", "Cristian", "Jaime", "Rolando", "Luis"];
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Futures"),
      ),
      body: FutureBuilder(
        future: getData(),
        builder: (BuildContext context, AsyncSnapshot snapshot){
          print(snapshot.hasData);
          print(snapshot.connectionState);
          print(snapshot.data);
          return Text("Hola");
        },
      ),
    );
  }
}
