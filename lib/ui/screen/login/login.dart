import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override

  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: double.infinity,
                    child: Image.asset("assets/img/login/top.png", fit: BoxFit.fill,)),
                        Container(
                          width: 300,
                          height: 400,
                          // margin: EdgeInsets.only(bottom: 100),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(20))),
                          //Input Section
                          child: Form(
                            key: _formKey,
                            child: Column(
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
                                    child: Text("Sign Up",style: TextStyle(
                                      fontSize: 18,
                                      fontFamily: 'Raleway',
                                      fontWeight: FontWeight.bold
                                    ),),
                                    margin: EdgeInsets.only(right: 150),
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    TextFormField(
                                      controller: _usernameController,
                                      decoration: InputDecoration(
                                        labelText: 'Nama Pengguna',
                                        icon: Icon(Icons.person),
                                      ),
                                      validator: (value) {
                                        if (value!.isEmpty) {
                                          return 'Nama Pengguna tidak boleh kosong';
                                        }
                                        return null;
                                      },
                                    ),
                                    SizedBox(height: 16),

                                    TextFormField(
                                      controller: _emailController,
                                      keyboardType: TextInputType.emailAddress,
                                      decoration: InputDecoration(
                                        labelText: 'Email',
                                        icon: Icon(Icons.email),
                                      ),
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
                                      controller: _passwordController,
                                      obscureText: true,
                                      decoration: InputDecoration(
                                        labelText: 'Password',
                                        icon: Icon(Icons.lock),
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
                                      controller: _confirmPasswordController,
                                      obscureText: true,
                                      decoration: InputDecoration(
                                        labelText: 'Konfirmasi Password',
                                        icon: Icon(Icons.lock),
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
                                    ElevatedButton(
                                      onPressed: () {
                                        if (_formKey.currentState!.validate()) {
                                          // Form validation passed, perform sign up logic here
                                          print('Nama Pengguna: ${_usernameController.text}');
                                          print('Email: ${_emailController.text}');
                                          print('Password: ${_passwordController.text}');
                                          print('Konfirmasi Password: ${_confirmPasswordController.text}');
                                        }
                                      },
                                      child: Container(
                                        child: Image.asset('assets/img/login/go.png'),
                                      ),
                                    )
                                  ],
                                )],
                            ),
                          ),
                        ),
                  Container(
                      margin: EdgeInsets.only(top: 80),
                      width: double.infinity,
                      child: Image.asset("assets/img/login/bottom.png", fit: BoxFit.fill,)),
                  ],
              ),
            ),
      ),
    );
  }
}
