import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/home/widgets/custom_button.dart';

class NewAndHotScreen extends StatelessWidget {
  const NewAndHotScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize:const Size.fromHeight(90),
          child:AppBar(
            elevation: 0,
            title:const Text("New & Hot",style: TextStyle(color: Colors.white),),
          actions: [
            const Icon(Icons.notifications,size: 30,color: Colors.white,),
            sizedBoxW10,
            Container(height: 30,width: 30,decoration:const BoxDecoration(
              color: Colors.blue,
              image: DecorationImage(image: AssetImage("assets/usericon.png"))
            ),),
            sizedBoxW10,
          ],
          bottom:  TabBar(
            isScrollable: true,
            indicator: BoxDecoration(color: Colors.white,
            borderRadius: BorderRadius10),
            unselectedLabelColor: Colors.white,
            labelColor: Colors.black,
            labelStyle:const TextStyle(fontSize: 15,fontWeight: FontWeight.bold),
            tabs: [
            Tab(text: "🍿Comming Soon",),
            Tab(text: "🔥Everyone\'s Watching ",),
            Tab(text: "🎮 Games",)
          ],
          ),
          )),
        body:TabBarView(children: [
          _buildCommingSoon("Comming soon",context),
           _buildEveryonesWatch("EveryOne watch"),
            _buildGames("Games")
        ])),
      );
  }
 Widget _buildCommingSoon(String title,BuildContext context){
  Size MediaSize=MediaQuery.sizeOf(context);
    return ListView(children: [
      SizedBoxH10,
      Row(children: [
       const SizedBox(width: 50,
       height: 500,
       child: Column(children: [
        Text("FEB",style: TextStyle(fontSize: 20,color: Colors.grey),),
        Text("11",style: TextStyle(
          letterSpacing: 4,
          fontSize: 30,
          fontWeight: FontWeight.bold
        ),),
       ],),),
      SizedBox(
      width: MediaSize.width-50,
      height: 500,child: SizedBox(
        width: double.infinity,
        height: 200,
        child: Column(
          children: [
            Stack(
              children: [
                Image(image: AssetImage("assets/thelastkindom.jpg"),fit: BoxFit.cover,),
                Positioned(
                  bottom: 10,
                  right: 10,
                  child: CircleAvatar(child: Icon(CupertinoIcons.volume_off,color: kwhite),
                  backgroundColor: kbalck.withOpacity(0.8),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Text("LAST KINGDOM",style:TextStyle(fontSize: 30,fontWeight: FontWeight.w500),),
                Row(children: [
                 // CustomButton(icon: CupertinoIcons.bell, title: Text(""),)
                ],)
              ],
            )
          ],
        ),
      ),)
      ],)
    ],);
  }

   Widget _buildEveryonesWatch(String title){
    return Center(child: Text(title),);
  }

   Widget _buildGames(String title){
    return Center(child: Text(title),);
  }
}