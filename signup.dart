import 'package:flutter/material.dart';
import 'package:mech_app/screens/LoginPage.dart';
import 'package:mech_app/screens/home.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final FocusNode focusfullname = FocusNode();
  final FocusNode focusemail = FocusNode();
  final FocusNode focusphone = FocusNode();
  final FocusNode focuscity = FocusNode();
  final FocusNode focuspassword = FocusNode();
  final FocusNode focusconfirmpassword = FocusNode();

  final TextEditingController fullnameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController cityController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmpasswordController =
      TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(30),
      child: Column(
        children: <Widget>[
          const Text(
            'Create an Account',
            style: TextStyle(color: Colors.grey, fontSize: 20.0),
          ),
          const Padding(padding: EdgeInsets.all(8)),
          Card(
            elevation: 5,
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            // ignore: sized_box_for_whitespace
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(
                      top: 20, bottom: 20, right: 25, left: 25),
                  child: TextField(
                    focusNode: focusfullname,
                    controller: fullnameController,
                    keyboardType: TextInputType.name,
                    style: const TextStyle(fontSize: 16.0, color: Colors.black),
                    decoration: const InputDecoration(
                        hintText: "Full Name :",
                        hintStyle:
                            TextStyle(fontSize: 18.0, color: Colors.grey)),
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.only(
                        top: 20, bottom: 20, right: 25, left: 25),
                    child: TextField(
                      focusNode: focusemail,
                      controller: emailController,
                      keyboardType: TextInputType.emailAddress,
                      style:
                          const TextStyle(fontSize: 16.0, color: Colors.black),
                      decoration: const InputDecoration(
                          hintText: "Email :",
                          hintStyle:
                              TextStyle(fontSize: 18.0, color: Colors.grey)),
                    )),
                Padding(
                    padding: const EdgeInsets.only(
                        top: 20, bottom: 20, right: 25, left: 25),
                    child: TextField(
                      focusNode: focusphone,
                      controller: phoneController,
                      keyboardType: TextInputType.phone,
                      style:
                          const TextStyle(fontSize: 16.0, color: Colors.black),
                      decoration: const InputDecoration(
                          hintText: "Phone :",
                          hintStyle:
                              TextStyle(fontSize: 18.0, color: Colors.grey)),
                    )),
                Padding(
                    padding: const EdgeInsets.only(
                        top: 20, bottom: 20, right: 25, left: 25),
                    child: TextField(
                      focusNode: focuscity,
                      controller: cityController,
                      keyboardType: TextInputType.text,
                      style:
                          const TextStyle(fontSize: 16.0, color: Colors.black),
                      decoration: const InputDecoration(
                          hintText: "City :",
                          hintStyle:
                              TextStyle(fontSize: 18.0, color: Colors.grey)),
                    )),
                Padding(
                    padding: const EdgeInsets.only(
                        top: 20, bottom: 20, right: 25, left: 25),
                    child: TextField(
                      focusNode: focuspassword,
                      controller: passwordController,
                      style:
                          const TextStyle(fontSize: 16.0, color: Colors.black),
                      decoration: const InputDecoration(
                          hintText: "Password :",
                          hintStyle:
                              TextStyle(fontSize: 18.0, color: Colors.grey)),
                    )),
                Padding(
                    padding: const EdgeInsets.only(
                        top: 20, bottom: 20, right: 25, left: 25),
                    child: TextField(
                      focusNode: focusconfirmpassword,
                      controller: confirmpasswordController,
                      style:
                          const TextStyle(fontSize: 16.0, color: Colors.black),
                      decoration: const InputDecoration(
                          hintText: "Confirm Password :",
                          hintStyle:
                              TextStyle(fontSize: 18.0, color: Colors.grey)),
                    )),
                Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        TextButton(
                            child: const Text(
                              'SignUp',
                              style: TextStyle(
                                  color: Colors.purple, fontSize: 22.0),
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => mainPage(key: const ValueKey(0)) ));
                            })
                      ],
                    )
                  ],
                ),
                const Padding(padding: EdgeInsets.all(20)),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        TextButton(
                            child: const Text(
                              'Login to Account',
                              style: TextStyle(
                                  color: Colors.purple, fontSize: 14.0),
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            })
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
