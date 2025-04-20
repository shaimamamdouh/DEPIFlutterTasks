import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.deepPurpleAccent,
        appBar: AppBar(title: Text("My Info",style: TextStyle(fontSize: 30,color: Colors.deepPurple,fontWeight:FontWeight.bold )),),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              CircleAvatar(
                radius:105,
                backgroundColor: Colors.black,
                child: CircleAvatar(//to make circle image
                  radius:100,
                  backgroundImage: NetworkImage(
                    'https://riseuplabs.com/wp-content/uploads/2021/07/mobile-application-development-guidelines-riseuplabs.jpg',
                  ),
                ),
              ),

               Text("shaima",style: TextStyle(fontSize: 50,color: Colors.white,fontWeight:FontWeight.bold ),),
              Text("Mobile Developer",style: TextStyle(fontSize: 25,color: Colors.white,fontWeight:FontWeight.bold )),

              Container(
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.indigo
                ),
                child: Row(
                  children: [
                    Spacer(flex:1,),
                    Icon(Icons.phone,color: Colors.black,size: 30,),
                    Spacer(flex:1,),
                    Text("01069636853",style:TextStyle(fontSize: 30,color: Colors.white,fontWeight:FontWeight.bold )),
                    Spacer(flex:7,),

                  ],
                ),
              ),

              Container(
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.indigo
                ),
                child: Row(
                  children: [
                    Spacer(flex:1,),
                    Icon(Icons.email,color: Colors.black,size: 30,),
                    Spacer(flex:1,),// بتسيب مسافة بين الويدجت في الصف
                    Text("mamsha7300@gmail.com",style:TextStyle(fontSize: 25,color: Colors.white,fontWeight:FontWeight.bold )),
                    Spacer(flex:3,),
                  ],
                ),
              )

            ],
          ),
        ),
      ),

    );
  }
}

