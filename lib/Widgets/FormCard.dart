import 'package:flutter/material.dart';
import 'package:flutter_login_page_ui/CustomIcons.dart';
import 'package:flutter_login_page_ui/Widgets/SocialIcons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FormCard extends StatelessWidget {
  Widget horizontalLine() => Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: Container(
          width: ScreenUtil.getInstance().setWidth(120),
          height: 1.0,
          color: Colors.black26.withOpacity(.2),
        ),
  );
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(left: 28.0, right: 28.0, top: 60.0),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Image.asset(
                  "assets/logo.png",
                  width: ScreenUtil.getInstance().setWidth(110),
                  height: ScreenUtil.getInstance().setHeight(110),
                ),
                Text("LOGO",
                    style: TextStyle(
                        fontFamily: "Poppins-Bold",
                        fontSize: ScreenUtil.getInstance().setSp(46),
                        letterSpacing: .6,
                        fontWeight: FontWeight.bold))
              ],
            ),
            SizedBox(
              height: ScreenUtil.getInstance().setHeight(180),
            ),
            Container(
              width: double.infinity,
              height: ScreenUtil.getInstance().setHeight(500),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8.0),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black12,
                        offset: Offset(0.0, 15.0),
                        blurRadius: 15.0),
                    BoxShadow(
                        color: Colors.black12,
                        offset: Offset(0.0, -10.0),
                        blurRadius: 10.0),
                  ]),
              child: Padding(
                padding: EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("Login",
                        style: TextStyle(
                            fontSize: ScreenUtil.getInstance().setSp(45),
                            fontFamily: "Poppins-Bold",
                            letterSpacing: .6)),
                    SizedBox(
                      height: ScreenUtil.getInstance().setHeight(30),
                    ),
                    Text("Username",
                        style: TextStyle(
                            fontFamily: "Poppins-Medium",
                            fontSize: ScreenUtil.getInstance().setSp(26))),
                    TextField(
                      decoration: InputDecoration(
                          hintText: "username",
                          hintStyle:
                              TextStyle(color: Colors.grey, fontSize: 12.0)),
                    ),
                    SizedBox(
                      height: ScreenUtil.getInstance().setHeight(30),
                    ),
                    Text("PassWord",
                        style: TextStyle(
                            fontFamily: "Poppins-Medium",
                            fontSize: ScreenUtil.getInstance().setSp(26))),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: "Password",
                          hintStyle:
                              TextStyle(color: Colors.grey, fontSize: 12.0)),
                    ),
                    SizedBox(
                      height: ScreenUtil.getInstance().setHeight(35),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Text(
                          "Forgot Password?",
                          style: TextStyle(
                              color: Colors.blue,
                              fontFamily: "Poppins-Medium",
                              fontSize: ScreenUtil.getInstance().setSp(28)),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: ScreenUtil.getInstance().setHeight(40)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                InkWell(
                  child: Container(
                    width: ScreenUtil.getInstance().setWidth(330),
                    height: ScreenUtil.getInstance().setHeight(100),
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [Color(0xFF17ead9), Color(0xFF6078ea)]),
                        borderRadius: BorderRadius.circular(6.0),
                        boxShadow: [
                          BoxShadow(
                              color: Color(0xFF6078ea).withOpacity(.3),
                              offset: Offset(0.0, 8.0),
                              blurRadius: 8.0)
                        ]),
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: () {
                          Navigator.popAndPushNamed(context, '/');
                        },
                        child: Center(
                          child: Text("SIGNIN",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: "Poppins-Bold",
                                  fontSize: 18,
                                  letterSpacing: 1.0)),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: ScreenUtil.getInstance().setHeight(40),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                horizontalLine(),
                Text("Social Login",
                    style: TextStyle(
                        fontSize: 16.0, fontFamily: "Poppins-Medium")),
                horizontalLine()
              ],
            ),
            SizedBox(
              height: ScreenUtil.getInstance().setHeight(40),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SocialIcon(
                  colors: [
                    Color(0xFF102397),
                    Color(0xFF187adf),
                    Color(0xFF00eaf8),
                  ],
                  iconData: CustomIcons.facebook,
                  onPressed: () {},
                ),
                SocialIcon(
                  colors: [
                    Color(0xFFff4f38),
                    Color(0xFFff355d),
                  ],
                  iconData: CustomIcons.googlePlus,
                  onPressed: () {},
                ),
              ],
            ),
            SizedBox(
              height: ScreenUtil.getInstance().setHeight(30),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "New User? ",
                  style: TextStyle(fontFamily: "Poppins-Medium"),
                ),
                InkWell(
                  onTap: () {},
                  child: Text("SignUp",
                      style: TextStyle(
                          color: Color(0xFF5d74e3),
                          fontFamily: "Poppins-Bold")),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
