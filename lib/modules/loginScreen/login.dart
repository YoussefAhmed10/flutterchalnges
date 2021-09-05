import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutterchalnge/modules/SignUpScreen/signup.dart';
import 'package:flutterchalnge/shared/componet.dart';

class LogInScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var emailcontrller = TextEditingController();
    var passwordcontrller = TextEditingController();
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Image.asset(
                    'assets/images/login.jpg',
                    width: 248,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Welcome Back!',
                    style: TextStyle(
                      fontFamily: 'NotoSansJP',
                      fontSize: 26,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Log in to your account of ASH',
                    style: TextStyle(
                      color: Colors.grey,
                      fontFamily: 'Roboto',
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(height: 20),
                  buildFormField(
                    controller: emailcontrller,
                    type: TextInputType.emailAddress,
                    prfix: Icon(Icons.person_outlined),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    placeHolder: 'JOoOo',
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
                  Align(
                    alignment: Alignment.bottomRight,
                    child: TextButton(
                      child: Text(
                        'Forget Password?',
                        style: TextStyle(
                          color: Color.fromRGBO(1, 98, 205, 1),
                        ),
                      ),
                      onPressed: () {},
                    ),
                  ),
                  SizedBox(height: 5),
                  buildElavtedButton(
                    wid: Text('LOG IN'),
                    color: Colors.blue[900]!,
                    padd: EdgeInsets.symmetric(horizontal: 60, vertical: 20),
                    border: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Or continuo With ',
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(height: 25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 150,
                        height: 50,
                        child: buildElavtedButton(
                          wid: Row(
                            children: [
                              Text(
                                'F',
                                style: TextStyle(
                                  fontFamily: 'NotoSansJP',
                                  fontSize: 20,
                                ),
                              ),
                              SizedBox(width: 25),
                              Text(
                                'Facebook',
                                style: TextStyle(
                                  fontFamily: 'NotoSansJP',
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                          color: Color.fromRGBO(17, 153, 246, 1),
                          // padd:
                          //     EdgeInsets.symmetric(horizontal: 35, vertical: 10),
                          border: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                      Container(
                        width: 150,
                        height: 50,
                        child: buildElavtedButton(
                          wid: Row(
                            children: [
                              Text(
                                'G',
                                style: TextStyle(
                                  fontFamily: 'NotoSansJP',
                                  fontSize: 18,
                                ),
                              ),
                              SizedBox(width: 25),
                              Text(
                                'Google',
                                style: TextStyle(
                                  fontFamily: 'NotoSansJP',
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                          color: Color.fromRGBO(234, 67, 53, 1),
                          // padd:
                          //     EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                          border: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
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
                          'SignUp',
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
      ),
    );
  }
}
