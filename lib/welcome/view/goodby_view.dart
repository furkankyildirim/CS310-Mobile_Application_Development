import 'package:flutter/material.dart';
//import 'package:week_5/routes/login.dart';
//import 'package:week_5/routes/signup.dart';
//import 'package:week_5/util/colors.dart';
import 'package:sabanci_talks/util/colors.dart';
//import 'package:week_5/util/styles.dart';
import 'package:sabanci_talks/sign_up/view/sign_up_view.dart';
import 'package:sabanci_talks/sign_in/view/sign_in_view.dart';
//import 'package:sabanci_talks/home/view/home_view.dart';
import 'package:sabanci_talks/util/styles.dart';
import "package:sabanci_talks/util/dimensions.dart";
import "package:sabanci_talks/util/dimensions.dart";

class DeleteAccount extends StatelessWidget {
  const DeleteAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(""),
        backgroundColor: Colors.white10,
        leading: BackButton(color: AppColors.primary),
        elevation: 0,
      ),
      body: SafeArea(
        maintainBottomViewPadding: false,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const Spacer(),
            Center(
              child: Padding(
                //padding: Dimen.regularPadding,
                padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 3),
                child: Text(
                  'Void',
                  style: voidStyle,
                ),
              ),
            ),
            const Spacer(),
            Center(
              child: Padding(
                //padding: Dimen.regularPadding,
                padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 3),
                child: Text(
                  'Goodby!',
                  style: welcomeStyle,
                ),
              ),
            ),
            const SizedBox(),
            Center(
              child: Padding(
                //padding: Dimen.regularPadding,
                padding: Dimen.regularDoubleParentPadding,
                child: Text(
                  'Account once deleted cannot be restored later. We delete all your data from our servers.',
                  style: smallTextStyle,
                ),
              ),
            ),
            const Spacer(),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => SignIn()));
                      },
                      child: const Padding(
                        padding: EdgeInsets.symmetric(vertical: 15.0),
                        child: Text(
                          'Delete My Account',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      style: OutlinedButton.styleFrom(
                        backgroundColor: AppColors.primary,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 15.0),
              child: Text(
                'Hope we will meet again!',
                style: TextStyle(
                    color: AppColors.primary,
                    fontSize: 12.0,
                    fontWeight: FontWeight.w600),
              ),
            ),
            const Spacer(),
            Padding(
                padding: Dimen.regularPadding,
                child: Text("@ 2022 Void", style: smallTextStyle))
          ],
        ),
      ),
    );
  }
}