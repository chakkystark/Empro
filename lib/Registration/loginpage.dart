import 'package:Empro/Widgets/selectlanguagewidget.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 70,
                      child: Image.asset(
                        'assets/images/login_head.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    SizedBox(
                      height: 70,
                      child: Image.asset(
                        'assets/images/logo.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      'Login',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 250, left: 20),
                child: Container(
                  child: SelectLanguage(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20),
                child: Divider(),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  child: buildRowformobilenumber(size),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/verifyOTP');
                },
                child: Text(
                  'Send OTP',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w300),
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/signuppage');
                },
                child: Text(
                  'Sign up',
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.w300),
                ),
              ),
              Row(
                children: [
                  Expanded(
                      flex: 2, child: Image.asset('assets/images/sample1.png')),
                  Expanded(
                      flex: 2, child: Image.asset('assets/images/sample2.png')),
                  Expanded(
                      flex: 2, child: Image.asset('assets/images/sample3.png')),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Row buildRowformobilenumber(Size size) {
    return Row(
      children: <Widget>[
        Container(
          width: 50,
          height: 50,
          alignment: Alignment.center,
          color: Colors.grey[400],
          child: Text(
            '+ 91',
            style: TextStyle(color: Colors.black, fontSize: 18),
          ),
        ),
        Container(
          width: size.width * 0.65,
          height: 50,
          child: TextField(
            onSubmitted: (_) {},
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              hintText: 'Mobile no',
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                  borderRadius: BorderRadius.circular(2)),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue),
                  borderRadius: BorderRadius.circular(2)),
            ),
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontFamily: 'SF-Pro',
            ),
          ),
        ),
      ],
    );
  }
}
