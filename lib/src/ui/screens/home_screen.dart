import 'package:ar_app/src/ui/screens/item_upload_screen.dart';
import 'package:flutter/material.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title:const Text('AR App'),
        actions: [
          IconButton(onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const ItemUploadScreen()));

          }, icon:const Icon(Icons.add,color: Colors.black,)),
        ],
      ),
      body:const Placeholder(),
    );
  }
}