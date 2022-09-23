import 'package:flutter/material.dart';
import 'package:linkedinui/LoginScreen/joinNow.dart';
class signupui extends StatefulWidget {
  const signupui({super.key});

  @override
  State<signupui> createState() => _signupuiState();
}

class _signupuiState extends State<signupui> {
  bool onTap = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 35,left: 10,right: 10),
        child: Column(children: [
          Container(
            padding: EdgeInsets.only(top: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset('assets/LinkedinLogoTitle.png',height: 20 ),
                Text('Join now',style: TextStyle(color: Color.fromARGB(255, 5, 79, 139)),),
              ],
            ),
          ),
          SizedBox(
                  height: 30,
                  ),
          Container(
             alignment: Alignment.centerLeft,
            child: Text("Sign in",style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.w600),)
            ),
            TextFormField(decoration: InputDecoration(
              label: Text('Email or Phone'),
            ),),
          SizedBox(
            height: 10,
          ),
           TextFormField(obscureText: true,
            decoration: InputDecoration(
            label: Text('Password'),
             suffixIcon: InkWell(
              onTap: () {                
              },
              child: Icon(Icons.visibility),
             )
           ),),
            SizedBox(
            height: 15,
          ),
          Container(
            alignment: Alignment.centerLeft,
            child: Row(
              children: [
                Checkbox(value: onTap,  activeColor: Colors.green,onChanged: (context){setState(() {
                  onTap =!onTap;
                });}),
                Text("Remember me.",style: TextStyle(color: Colors.grey[700]),),
                SizedBox(
                  width: 5,
                ),
              Text("Learn more",style: TextStyle(color: Color.fromARGB(255, 5, 84, 150),fontWeight: FontWeight.w500),)
              ],
            ),
          ),
          SizedBox(
            height: 2,
          ),
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(left: 15),
            child: Text("Forgot Password ?")),
            SizedBox(
              height: 15,
            ),
            ElevatedButton(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder:(context)=>JoinNow() ),);
            }, 
            child: Text('Continue'),
            
            style:ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
          
              ),
              minimumSize: Size.fromHeight(45),
              backgroundColor: Color.fromARGB(255, 11, 73, 124)
            )
              ),
              SizedBox(
                height: 10,
              ),
              Text("or"),
               SizedBox(
                height: 10,
              ),
              OutlinedButton(onPressed: (){}, 
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
               SizedBox(
                height: 10,
              ),
              OutlinedButton(onPressed: (){}, 
              child:Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                 Text("Sign in with Apple",style: TextStyle(color: Colors.grey[700]),),
                
              ],),
              style: OutlinedButton.styleFrom(
              
                 shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16),
                 ),
                 minimumSize: Size.fromHeight(45),
              ),
              ),
              

        ],),

      ),
    );
  }
}