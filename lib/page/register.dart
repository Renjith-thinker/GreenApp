import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:testproject/model/user_model.dart';
import 'package:testproject/page/home_screen.dart';

class Page4 extends StatefulWidget {
  const Page4({Key? key}) : super(key: key);

  @override
  _Page4State createState() => _Page4State();
}

class _Page4State extends State<Page4> {
  double ratio = 1;
  late String _name;
  late String _phoneNumber;
  late String _email;
  late String _password;
  final _auth = FirebaseAuth.instance;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final TextEditingController fnameController = new TextEditingController();
  final TextEditingController snameController = new TextEditingController();
  final TextEditingController emailController = new TextEditingController();
  final TextEditingController passwordController = new TextEditingController();
  final TextEditingController passwordConfirmController =
      new TextEditingController();
  // fname field
  @override
  Widget build(BuildContext context) {
    final fnameField = TextFormField(
      autofocus: false,
      controller: fnameController,
      keyboardType: TextInputType.name,
      validator: (value) {
        RegExp regex = new RegExp(r'^.{3,}$');
        if (value!.isEmpty) {
          return ("First Name can't be Empty");
        }
        if (!regex.hasMatch(value)) {
          return ("Enter Valid First Name(Min. 3 Character)");
        }
        return null;
      },
      onSaved: (value) {
        fnameController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.account_circle),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "First Name",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          )),
    );
    //sname field
    final secondNameField = TextFormField(
      autofocus: false,
      controller: snameController,
      keyboardType: TextInputType.name,
      validator: (value) {
        RegExp regex = new RegExp(r'^.{3,}$');
        if (value!.isEmpty) {
          return ("Second Name can't be Empty");
        }
        return null;
      },
      onSaved: (value) {
        snameController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.account_circle),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Second Name",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          )),
    );
    //password field
    final passwordField = TextFormField(
      autofocus: false,
      controller: passwordController,
      obscureText: true,
      validator: (value) {
        RegExp regex = new RegExp(r'^.{6,}$');
        if (value!.isEmpty) {
          return ("Password is Requied for login");
        }
        if (!regex.hasMatch(value)) {
          return ("Enter Valid Password(Min. 6 Character)");
        }
      },
      onSaved: (value) {
        passwordController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.vpn_key),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Enter Password",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          )),
    );
    //passconfirm field
    final passwordConfirmField = TextFormField(
      autofocus: false,
      controller: passwordConfirmController,
      obscureText: true,
      validator: (value) {
        if (passwordConfirmController.text.length > 6 &&
            passwordConfirmController.text != value) {
          return "Password doesn't match";
        }
        return null;
      },
      onSaved: (value) {
        passwordConfirmController.text = value!;
      },
      textInputAction: TextInputAction.done,
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.vpn_key),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Confirm Password ",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          )),
    );
    //email field
    final emailField = TextFormField(
      autofocus: false,
      controller: emailController,
      keyboardType: TextInputType.emailAddress,
      validator: (value) {
        if (value!.isEmpty) {
          return ("Please Enter Your Email");
        }
        if (!RegExp("[a-z0-9]+@[a-z]+.[a-z]{2,3}").hasMatch(value)) {
          return ("Please Enter a vaild email");
        }
        ;
        return null;
      },
      onSaved: (value) {
        emailController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.mail),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Email",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          )),
    );
    final SignUpButton = Material(
        elevation: 5,
        borderRadius: BorderRadius.circular(30),
        color: Colors.green,
        child: MaterialButton(
          padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          minWidth: MediaQuery.of(context).size.width,
          onPressed: () {
            signUp(emailController.text, passwordController.text);
          },
          child: const Text(
            'SignUp',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ));

    //@override
    //Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.green,
            )
            //icon: icon),
            ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            color: Color.fromARGB(255, 239, 246, 239),
            child: Padding(
              padding: const EdgeInsets.all(36),
              child: Form(
                key: _formKey,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(
                        height: 180,
                        child: Image.asset(
                          "assets/logo8_17_232936.png",
                          fit: BoxFit.contain,
                        ),
                      ),
                      SizedBox(height: 45),
                      fnameField,
                      SizedBox(height: 20),
                      secondNameField,
                      SizedBox(height: 20),
                      emailField,
                      SizedBox(height: 20),
                      passwordField,
                      SizedBox(height: 20),
                      passwordConfirmField,
                      SizedBox(height: 20),
                      SignUpButton,
                      SizedBox(height: 10)
                    ]),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void signUp(String email, String password) async {
    if (_formKey.currentState!.validate()) {
      await _auth
          .createUserWithEmailAndPassword(email: email, password: password)
          .then((value) => {postDetaildToFirestore()})
          .catchError((e) {
        Fluttertoast.showToast(msg: e!.message);
      });
    }
  }

  postDetaildToFirestore() async {
    FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
    User? user = _auth.currentUser;
    UserModel userModel = UserModel();
    userModel.email = user!.email;
    userModel.uid = user.uid;
    userModel.firstName = fnameController.text;
    userModel.secondName = snameController.text;

    await firebaseFirestore
        .collection("users")
        .doc(user.uid)
        .set(userModel.toMap());
    Fluttertoast.showToast(msg: "Account created successfully");
    Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => HomeScreen()),
        (route) => false);
  }
}
