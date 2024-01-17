import 'package:flutter/material.dart';
import 'package:sample_slicing/ui/screen/login/signin.dart';
import 'package:sample_slicing/ui/widget/template.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override

  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();
  bool _isPasswordVisible1 = true;
  bool _isFocused1 = false;
  bool _isPasswordVisible2 = true;
  bool _isFocused2 = false;
  final _formKey = GlobalKey<FormState>();
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(

        child: Container(
            height: MediaQuery.of(context).size.height,
            child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: double.infinity,
                      child: Image.asset("assets/img/login/top.png", fit: BoxFit.fill,)),
                          Container(
                            width: 320,
                            height: 500,
                            padding: EdgeInsets.all(20),
                            // margin: EdgeInsets.only(bottom: 100),
                            decoration: BoxDecoration(
                              color: Colors.white,
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  offset: Offset(5.0, 5.0),
                                  blurRadius: 10.0,
                                )
                              ],
                            ),
                            //Input Section
                            child: Form(
                              key: _formKey,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  //Img
                                  Container(
                                      child: Image.asset("assets/img/login/user.png", fit: BoxFit.fill,),
                                    alignment: Alignment.topRight,
                                    height: 50,
                                    margin: EdgeInsets.fromLTRB(0, 10 , 40, 0),
                                  ),
                                  //Text
                                  Container(
                                      child: Text("Sign Up",style:TextStyleTemplate.HeadingBold,),
                                      margin: EdgeInsets.only(right: 170,),
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      TextFormField(
                                        controller: _emailController,
                                        keyboardType: TextInputType.emailAddress,
                                        decoration: InputDecoration(
                                          labelText: 'Email',
                                          labelStyle: TextStyleTemplate.LabelText,
                                            suffixIcon:Icon(Icons.email,textDirection: TextDirection.rtl,)                                        ),
                                        validator: (value) {
                                          if (value!.isEmpty) {
                                            return 'Email tidak boleh kosong';
                                          } else if (!RegExp(r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$').hasMatch(value)) {
                                            return 'Format email tidak valid';
                                          }
                                          return null;
                                        },
                                      ),
                                      SizedBox(height: 16),
                                      TextFormField(
                                        controller: _usernameController,
                                        decoration: InputDecoration(
                                          labelText: 'Nama Pengguna',
                                          labelStyle:TextStyleTemplate.LabelText,
                                            suffixIcon:Icon(Icons.person,textDirection: TextDirection.rtl,)                                        ),
                                        validator: (value) {
                                          if (value!.isEmpty) {
                                            return 'Nama Pengguna tidak boleh kosong';
                                          }
                                          return null;
                                        },
                                      ),
                                      SizedBox(height: 16),

                                      TextFormField(
                                        controller: _passwordController,
                                        obscureText: _isPasswordVisible1,
                                        onTap: (){
                                          setState(() {
                                            _isFocused1 = true;
                                          });
                                        },
                                        onEditingComplete: () {
                                          setState(() {
                                            _isFocused1 = false;
                                          });
                                        },
                                        decoration: InputDecoration(
                                            labelText: 'Password',
                                            labelStyle:TextStyleTemplate.LabelText,
                                            suffixIcon:IconButton(
                                              onPressed: () {
                                                setState(() {
                                                  _isPasswordVisible1 = !_isPasswordVisible1;
                                                });
                                              },
                                              icon: _isFocused1 ? (_isPasswordVisible1
                                                  ? Icon(Icons.visibility_off)
                                                  : Icon(Icons.visibility)) : Icon(Icons.lock),
                                            )
                                        ),
                                        validator: (value) {
                                          if (value!.isEmpty) {
                                            return 'Password tidak boleh kosong';
                                          } else if (value.length < 6) {
                                            return 'Password minimal 6 karakter';
                                          }
                                          return null;
                                        },
                                      ),
                                      SizedBox(height: 16),

                                      TextFormField(
                                        controller: _passwordController,
                                        obscureText: _isPasswordVisible2,
                                        onTap: (){
                                          setState(() {
                                            _isFocused2 = true;
                                          });
                                        },
                                        onEditingComplete: () {
                                          setState(() {
                                            _isFocused2 = false;
                                          });
                                        },
                                        decoration: InputDecoration(
                                            labelText: 'Konfirmasi Password',
                                            labelStyle: TextStyleTemplate.LabelText,
                                            suffixIcon:IconButton(
                                              onPressed: () {
                                                setState(() {
                                                  _isPasswordVisible2 = !_isPasswordVisible2;
                                                });
                                              },
                                              icon: _isFocused2 ? (_isPasswordVisible2
                                                  ? Icon(Icons.visibility_off)
                                                  : Icon(Icons.visibility)) : Icon(Icons.lock),
                                            )
                                        ),
                                        validator: (value) {
                                          if (value!.isEmpty) {
                                            return 'Konfirmasi Password tidak boleh kosong';
                                          } else if (value != _passwordController.text) {
                                            return 'Password tidak cocok';
                                          }
                                          return null;
                                        },
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 60),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                            ),
                            onPressed: (){
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => SignIn(),
                                  ),
                                );
                            },
                            child: Text(
                                "Sign In ?",
                            style: TextStyle(
                              fontFamily: "Raleway",
                              fontWeight: FontWeight.normal,
                              color: Colors.blueAccent
                            ),
                            ),
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.transparent,
                            shape: RoundedRectangleBorder(
                              side: BorderSide(color: Colors.transparent, width: 10),
                              borderRadius: BorderRadius.circular(400),
                            ),
                            fixedSize: Size(100, 100),
                            shadowColor: Colors.transparent.withOpacity(0.1)
                          ),
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              print('Nama Pengguna: ${_usernameController.text}');
                              print('Email: ${_emailController.text}');
                              print('Password: ${_passwordController.text}');
                              print('Konfirmasi Password: ${_confirmPasswordController.text}');
                            }
                          },
                          child: Container(
                            child: Image.asset('assets/img/login/go.png'),
                          ),
                        ),
                      ],
                    ),
                    Container(
                        margin: EdgeInsets.only(top: 80),
                        width: double.infinity,
                        child: Image.asset("assets/img/login/bottom.png", fit: BoxFit.fill,)),
                    ],
                ),
              ),
        ),
      ),
    );
  }
}
