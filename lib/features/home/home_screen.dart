
import 'package:flutter/material.dart';
import 'package:quiz_app/widgets/custom_slideshow.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      drawer: const Drawer(),

      appBar: AppBar(
        title: const Text(
          'Quiz App',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      body: Column(
        children: [
          CustomSlideshow(
            imageUrls: [
              'https://images.unsplash.com/photo-1507525428034-b723cf961d3e',
              'https://images.unsplash.com/photo-1519125323398-675f0ddb6308',
              'https://images.unsplash.com/photo-1522202176988-66273c2fd55f',
            ], 
          ),
          SizedBox(height: 20),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:[
                Text("The Highlighted One⭐",style: TextStyle(fontSize: 23,fontWeight: FontWeight.w600),),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children:[

                  CircleAvatar(radius:45,backgroundImage: NetworkImage("https://images.unsplash.com/photo-1507525428034-b723cf961d3e"),),
                  CircleAvatar(radius:45,backgroundImage: NetworkImage("https://images.unsplash.com/photo-1507525428034-b723cf961d3e"),),
                  CircleAvatar(radius:45,backgroundImage: NetworkImage("https://images.unsplash.com/photo-1507525428034-b723cf961d3e"),),
                  CircleAvatar(radius:45,backgroundImage: NetworkImage("https://images.unsplash.com/photo-1507525428034-b723cf961d3e"),),
                 
                ])
              ],
            ),
          )
        ],
      ),
    );
  }
}
