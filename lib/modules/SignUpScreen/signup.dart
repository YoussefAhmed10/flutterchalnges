import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutterchalnge/shared/componet.dart';

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var namecontrller = TextEditingController();
    var emailcontrller = TextEditingController();
    var passwordcontrller = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.white,
          statusBarIconBrightness: Brightness.dark,
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Let\'s Get Started!',
                  style: TextStyle(
                    fontFamily: 'NotoSansJP',
                    fontSize: 26,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  'Create an account to ASH to get all feature',
                  style: TextStyle(
                    color: Colors.grey,
                    fontFamily: 'Roboto',
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 40),
                buildFormField(
                  controller: namecontrller,
                  type: TextInputType.text,
                  prfix: Icon(Icons.person_outlined),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  placeHolder: 'Youssef Ahmed',
                ),
                SizedBox(height: 20),
                buildFormField(
                  controller: emailcontrller,
                  type: TextInputType.emailAddress,
                  prfix: Icon(Icons.email_outlined),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  placeHolder: 'Please Enter Your Email',
                ),
                SizedBox(height: 20),
                buildFormField(
                  controller: emailcontrller,
                  type: TextInputType.number,
                  prfix: Icon(Icons.phone_android_outlined),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  placeHolder: 'Phone',
                ),
                SizedBox(height: 20),
                buildFormField(
                  controller: passwordcontrller,
                  type: TextInputType.text,
                  prfix: Icon(Icons.lock_outlined),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  placeHolder: 'Password',
                ),
                SizedBox(height: 20),
                buildFormField(
                  controller: passwordcontrller,
                  type: TextInputType.text,
                  prfix: Icon(Icons.lock_outlined),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  placeHolder: 'Confirm Password',
                ),
                SizedBox(height: 40),
                buildElavtedButton(
                  wid: Text('Sign UP'),
                  color: Colors.blue[900]!,
                  padd: EdgeInsets.symmetric(horizontal: 60, vertical: 20),
                  border: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
                SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don\'t have an Account? ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        letterSpacing: 0.6,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SignUpScreen(),
                          ),
                        );
                      },
                      child: Text(
                        'SignIn',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
