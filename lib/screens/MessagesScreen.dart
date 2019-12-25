import 'package:char_app/AppStyleModeNotifier.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'ChatScreen.dart';

class MessageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //accesing the provider
    final appStyleMode = Provider.of<AppStyleModeNotifier>(context);
    return Scaffold(
      backgroundColor: appStyleMode.primaryBackgroundColor,
      body: Container(
        padding: EdgeInsets.only(left: 32, right: 32, top: 32),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              //Container for top header
              Container(
                margin: EdgeInsets.only(top: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("Messages", style: GoogleFonts.roboto(fontSize: 30, fontWeight: FontWeight.w900, textStyle: TextStyle(color: appStyleMode.primaryTextColor)),),
                    Icon(Icons.search, size: 30, color: appStyleMode.primaryTextColor,)
                  ],
                ),
              ),

              SizedBox(height: 32,), //for spacing,
              
              //Container for the list of messages
              Container(
                width: double.infinity,
                child: ListView.separated(
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      child: Container(
                        child: Row(
                          children: <Widget>[
                            //Image of person
                            CircleAvatar(
                              child: ClipOval(
                                child: Image.asset("assets/maaz.jpg", fit: BoxFit.contain,),
                              ),
                              radius: 30,
                            ),

                            //horizontal space
                            SizedBox(width: 32,),

                            //Message and name
                            Expanded(
                              child: Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text("Maaz Aftab", style: GoogleFonts.roboto(fontSize: 20, fontWeight: FontWeight.w500, textStyle: TextStyle(
                                        color: index == 0 ? appStyleMode.primaryTextColorDark: appStyleMode.primaryTextColor
                                    )),),

                                    SizedBox(height: 8,),

                                    Text("Hello Saadm I am busy right now in some meeting", style: GoogleFonts.roboto(textStyle: TextStyle(
                                        color: appStyleMode.primaryTextColorLight
                                    )),)

                                  ],
                                ),
                              ),
                            ),

                            SizedBox(width: 32,),

                            //Container for time and notification
                            Container(
                              child: Column(
                                children: <Widget>[
                                  Text("5 min", style: GoogleFonts.roboto(fontWeight: FontWeight.w500,textStyle: TextStyle(
                                      color: appStyleMode.primaryTextColor
                                  )),),

                                  SizedBox(height: 16,),

                                  Container(
                                    padding: EdgeInsets.all(6),
                                    decoration: BoxDecoration(
                                        color: Colors.blue,
                                        borderRadius: BorderRadius.all(Radius.circular(5))
                                    ),
                                    child: Text("1", style: GoogleFonts.roboto(textStyle: TextStyle(color: Colors.white)),),
                                  )
                                ],
                              ),
                            )

                          ],
                        ),
                      ),
                      onTap: (){
                        //Navigation
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => ChatScreen()
                        ));
                      },
                    );
                  }, 
                  separatorBuilder: (context, index) => Divider(height: 32,),
                  itemCount: 8,
                  shrinkWrap: true,
                  controller: ScrollController(keepScrollOffset: false),
                ),
              )
            ],
          ),
        ),
      ),

      //Floating Action Button
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          appStyleMode.switchMode();
        },
        child: Icon(Icons.add),
      ),

    );
  }
}
