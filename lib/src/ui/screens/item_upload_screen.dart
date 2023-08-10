import 'dart:typed_data';

import 'package:flutter/material.dart';

class ItemUploadScreen extends StatefulWidget {
  const ItemUploadScreen({super.key});

  @override
  State<ItemUploadScreen> createState() => _ItemUploadScreenState();
}

class _ItemUploadScreenState extends State<ItemUploadScreen> {
  bool isUploadImage = false;
  Uint8List? imageFileUnit8List;

  TextEditingController sellerNameCotroller =TextEditingController();
  TextEditingController phoneCotroller =TextEditingController();
  TextEditingController itemNameCotroller =TextEditingController();
  TextEditingController descriptionController=TextEditingController();
  TextEditingController priceController=TextEditingController();

    Widget uploadItemScreen(){
      return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        title:const Text("Item Upload screen"),
        leading: IconButton(onPressed: (){}, icon:const Icon(Icons.cloud_upload,color: Colors.white,)),
      ),
      body: ListView(
       children: [ 
        isUploadImage == true? const LinearProgressIndicator(color: Colors.white,):Container(),

        SizedBox(
          height: 230,
          width: MediaQuery.of(context).size.width*0.4,
          child:Center(
            child:imageFileUnit8List != null?
             Image.memory(
              imageFileUnit8List!,
              ):
              const Icon(Icons.image_not_supported,color: Colors.white,) ,)
          
        ),

        const Divider(color: Colors.white,thickness: 2,),

        //seller name
        ListTile(
          leading: const Icon(Icons.person_pin_rounded,color: Colors.white70,),
          title: SizedBox(
            width: 250,
            child: TextFormField(
              style:const TextStyle(color: Colors.grey),
              controller: sellerNameCotroller,
              decoration:const InputDecoration(
                hintText: 'seller name',
                hintStyle: TextStyle(color: Colors.grey),
                border: InputBorder.none
              ),
            ),
            ),
        ),
        const Divider(color: Colors.grey,thickness: 1,),

        //seller phone
        ListTile(
          leading: const Icon(Icons.phone_iphone_rounded,color: Colors.white70,),
          title: SizedBox(
            width: 250,
            child: TextFormField(
              style:const TextStyle(color: Colors.grey),
              controller: phoneCotroller,
              decoration:const InputDecoration(
                hintText: 'seller phone no',
                hintStyle: TextStyle(color: Colors.grey),
                border: InputBorder.none
              ),
            ),
            ),
        ),
        const Divider(color: Colors.grey,thickness: 1,),

        //item name
        ListTile(
          leading: const Icon(Icons.title, color: Colors.white70,),
          title: SizedBox(
            width: 250,
            child: TextFormField(
              style:const TextStyle(color: Colors.grey),
              controller: itemNameCotroller,
              decoration:const InputDecoration(
                hintText: 'item name',
                hintStyle: TextStyle(color: Colors.grey),
                border: InputBorder.none
              ),
            ),
            ),
        ),
        const Divider(color: Colors.grey,thickness: 1,),

        //item description
        ListTile(
          leading: const Icon(Icons.description,color: Colors.white70,),
          title: SizedBox(
            width: 250,
            child: TextFormField(
              style:const TextStyle(color: Colors.grey),
              controller: descriptionController,
              decoration:const InputDecoration(
                hintText: 'item description',
                hintStyle: TextStyle(color: Colors.grey),
                border: InputBorder.none
              ),
            ),
            ),
        ),
        const Divider(color: Colors.grey,thickness: 1,),

        //item price
        ListTile(
          leading: const Icon(Icons.price_change,color:Colors.white70,),
          title: SizedBox(
            width: 250,
            child: TextFormField(
              style:const TextStyle(color: Colors.grey),
              controller: priceController,
              decoration:const InputDecoration(
                hintText: 'item price',
                hintStyle: TextStyle(color: Colors.grey),
                border: InputBorder.none
              ),
            ),
            ),
        ),
        const Divider(color: Colors.grey,thickness: 1,),

        
        

      ]),
    );
    }
  
  Widget defaultScreen(){
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar( 
        title:const Text("Upload ner item"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.add_photo_alternate,
              color: Colors.white,
              size: 200,
            ),

            ElevatedButton(
              onPressed: (){
                showDialogBox();
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black54
              ),
             child: const Text('Add ew Item',style: TextStyle(color: Colors.white70),))
          ],
        ),
      ),
    );
    
  }

  showDialogBox(){
  return showDialog(
    context: context,
     builder: (c){
      return SimpleDialog(
        backgroundColor: Colors.black,
        title:const Text("Item Image",style: TextStyle(color: Colors.white70,fontWeight: FontWeight.bold),),
        children: [
          SimpleDialogOption(
            onPressed: (){

            },
            child:const Text("capture image with camera",style: TextStyle(color: Colors.grey),),
          ),

          SimpleDialogOption(
            onPressed: (){

            },
            child:const Text("select image from gallery",style: TextStyle(color: Colors.grey),),
          ),

          SimpleDialogOption(
            onPressed: (){
              Navigator.of(context).pop();
            },
            child:const Text("cancle",style: TextStyle(color: Colors.grey),),
          ),
        ],
      );
     } 
     );
 }
 
 
  @override
  Widget build(BuildContext context) {
   
    return  defaultScreen();
  }
}