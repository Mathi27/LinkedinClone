import 'package:flutter/material.dart';
import 'package:linkedinui/MainScreen/mainHomeScreen.dart';

class JoinNow extends StatefulWidget {
  const JoinNow({super.key});

  @override
  State<JoinNow> createState() => _JoinNowState();
}

class _JoinNowState extends State<JoinNow> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 55,left: 10,right: 10),
        child: Column(
          children: [ 
          Container(
            alignment: Alignment.centerLeft,
            child: Image.asset('assets/LinkedinLogoTitle.png',height: 20 )),
           SizedBox(
            height: 30,
           ),
           Container(
            alignment: Alignment.centerLeft,
            child: Text("Join LinkedIn",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500),)),
            SizedBox(
              height: 10,
            ),
            Container(child: Row(
              children: [
                Text("or",style: TextStyle(color: Colors.black),),
                SizedBox(
                  width: 5,
                ),
                Text("sign in",style: TextStyle(color: Color.fromARGB(255, 21, 86, 139)),),
              ],
            )),
            SizedBox(
              height: 15,
            ),
            TextFormField(
              decoration: InputDecoration(
                label: Text("Email or Phone"),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            ElevatedButton(onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>mainHomeScreenPage()),);

            }, child: Text('Continue'),
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
             minimumSize: Size.fromHeight(45),
              backgroundColor: Color.fromARGB(255, 11, 73, 124)  
            ),
            ),
            SizedBox(
              height: 10,
            ),
            
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Text("or",style: TextStyle(fontSize: 14),),
               ],
             ),
            SizedBox(
                height: 10,
              ),
              OutlinedButton(onPressed: (){
              }, 
              child: Row(     
                mainAxisAlignment: MainAxisAlignment.center,
                 
               children: [
                
                 Text("Sign in with Google",
                 style: TextStyle(color: Colors.grey[700],),
                 ),
              ],),
              style: OutlinedButton.styleFrom(
                 minimumSize: Size.fromHeight(45),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16),
                ),
              
              ),
                            
              ),
        ],
           
        ),
      ),
    );
  }
}