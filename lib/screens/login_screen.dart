import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:wifikir_start/chart.dart';
import 'package:wifikir_start/screens/register_screen.dart';
import 'package:wifikir_start/utilities/constants.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../Home.dart';

//import '../Home.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _rememberMe = false;
  bool passwordVisible = false;
  final emailController = TextEditingController();
  final passController = TextEditingController();

  Widget _buildEmailTF() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          '',
          style: kLabelStyle,
        ),
        SizedBox(height: 25.0),
        Container(
          alignment: Alignment.centerLeft,
          // decoration: kBoxDecorationStyle,
          height: 55.0,
          child: TextField(
            controller: emailController,
            keyboardType: TextInputType.emailAddress,
            // controller: txt,
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'OpenSans',
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14.0),
              prefixIcon: Icon(
                Icons.email,
                color: Colors.white,
              ),
              // txt.text = "My Stringt",
              hintText: 'Mail adresini giriniz',
              hintStyle: kHintTextStyle,
              errorStyle:
                  TextStyle(color: Colors.yellow, fontFamily: 'RobotoMono'),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildPasswordTF() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          '',
          style: kLabelStyle,
        ),
       // SizedBox(height: 10.0),
        Container(
          alignment: Alignment.centerLeft,
          //decoration: kBoxDecorationStyle,
          height: 60.0,
          child: TextField(
            controller: passController,
            obscureText: passwordVisible,
            // maxLength: 20,
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'OpenSans',
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14.0),
              prefixIcon: Icon(
                Icons.lock,
                color: Colors.white,
              ),
              hintText: 'Şifrenizi Giriniz',
              hintStyle: kHintTextStyle,
              errorStyle:
                  TextStyle(color: Colors.yellow, fontFamily: 'RobotoMono'),
              suffixIcon: IconButton(
                icon: Icon(
                  // Based on passwordVisible state choose the icon
                  passwordVisible ? Icons.visibility : Icons.visibility_off,
                  color: Theme.of(context).canvasColor, //.primaryColorDark,
                ),
                onPressed: () {
                  // Update the state i.e. toogle the state of passwordVisible variable
                  setState(() {
                    passwordVisible
                        ? passwordVisible = false
                        : passwordVisible = true;
                  });
                },
              ),
            ),
          ),
        )
      ],
    );
  }
  // Widget _buildForgotPasswordBtn() {
  //   return Container(
  //     alignment: Alignment.topRight,
  //     child:FlatButton(
  //       onPressed: () => print('Şifremi Unuttum Button Pressed'),
  //       padding: EdgeInsets.only(right:10.0),
  //       child: Text(
  //         'Şifremi Unuttum?',
  //         style: kLabelStyle,
  //       ),
  //     ),
  //   );
  // }

  Widget _buildRememberMeCheckbox() {
    return Container(
      height: 30.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Theme(
            data: ThemeData(unselectedWidgetColor: Colors.white),
            child: Checkbox(
              value: _rememberMe,
              checkColor: Colors.green,
              activeColor: Colors.white,
              onChanged: (value) {
                setState(() {
                  _rememberMe = value!;
                });
              },
            ),
          ),
          Text(
            'Beni Hatırla',
            style: kLabelStyle,textAlign: TextAlign.start,
          ),
          Text(
            '                            Şifremi Unuttum?',
            style: kLabelStyle,
            textAlign: TextAlign.end,
          ),
        ],
      ),
    );
  }

  Widget _buildLoginBtn() {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 25.0),
        width: double.infinity,
        child: RaisedButton(
            elevation: 5.0,
            padding: EdgeInsets.all(5.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            color: Colors.white,
            child: Text(
              'GİRİŞ YAP',
              style: TextStyle(
                color: Color(0xFFD51D0E),
                letterSpacing: 1.5,
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'OpenSans',
              ),
            ),
            onPressed: () {
              //onpress action for button
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => chart()));

              //   {
              //         return StateLessPage(
              //           var1:emailController.text, var2: passController.text,);
              //       }
              //   ),
              //   );
            }));
  }

  Widget _buildSignInWithText() {
    return Column(
      children: <Widget>[
        Text(
          '- Ya Da -',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(height: 0),
        Text(
          'ile Giriş Yap',
          style: kLabelStyle,
        ),
      ],
    );
  }

  Widget _buildSocialBtn(VoidCallback onTap, AssetImage logo,
      {required Null Function() onPressed}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 40.0,
        width: 40.0,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              offset: Offset(0, 2),
              blurRadius: 6.0,
            ),
          ],
          image: DecorationImage(
              image:logo,// AssetImage("assets/logos/favicon_1.png"),
          ),
        ),
      ),
    );
  }

  Widget _buildSocialBtnRow() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          _buildSocialBtn(
            () => print('Facebook ile giriş yap'),
            AssetImage('assets/logos/facebook.jpg'),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => Home()));
            },
          ),
          _buildSocialBtn(
            () => print('Google ile giriş yap'),
            AssetImage('assets/logos/google.jpg'),
            onPressed: () {},
          )
        ],
      ),
    );
  }

  Widget _buildSignupBtn() {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (_) => registerScreen()));
      },
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: 'Bir hesabın var mı? ',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                fontWeight: FontWeight.w400,
              ),
            ),
            TextSpan(
              text: 'Üye Ol',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Stack(
            children: <Widget>[
              Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xFFEA4803),    //Color(0xFFCB4903), //0xFF73AEF5
                      Color(0xFFEA4803),     // Color(0xFFCB4903), //0xFF61A4F1
                    Color(0xFFEA4803),       // Color(0xFFCB4903), //0xFF478DE0
                      Color(0xFFFF5105),     // Color(0xFFCB4903), //0xFF398AE5
                      // Color(0xFF8A15BD), //0xFF73AEF5
                      // Color(0xFF832AAA), //0xFF61A4F1
                      // Color(0xFF741A9C), //0xFF478DE0
                      // Color(0xFF52106F), //0xFF398AE5
                    ],
                    stops: [0.1, 0.4, 0.7, 0.9],
                  ),
                ),
              ),
              Container(
                height: double.infinity,
                child: SingleChildScrollView(
                  physics: AlwaysScrollableScrollPhysics(),
                  padding: EdgeInsets.symmetric(
                    horizontal: 30.0,
                    vertical: 80.0,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image(image:  AssetImage("assets/logos/favicon_1.png"),width: 87),
                      Text(
                        'WiFikir',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'OpenSans',
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10.0),
                      _buildEmailTF(),
                      SizedBox(
                        height: 2.0,
                      ),
                      _buildPasswordTF(),
                      _buildRememberMeCheckbox(),
                      // _buildForgotPasswordBtn(),
                      _buildLoginBtn(),
                      // _buildSignInWithText(),
                      // _buildSocialBtnRow(),
                      _buildSignupBtn(),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
