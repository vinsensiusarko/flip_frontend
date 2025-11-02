import 'package:flip_frontend/constant/app_constant.dart';
import 'package:flip_frontend/style/app_style.dart';
import 'package:flip_frontend/util/size_config.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class HelpScreen extends StatefulWidget {
  const HelpScreen({super.key});

  @override
  State<HelpScreen> createState() => _HelpScreenState();
}

class _HelpScreenState extends State<HelpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundColor: Colors.grey.withOpacity(0.05),
              radius: 100,
              child: Image.asset(flipLogo)
            ),
            SizedBox(height: SizeConfig.blockSizeVertical! * 4),
            const Text(
              'Test Halaman Bantuan',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 22
              ),
            ),
            SizedBox(height:  SizeConfig.blockSizeVertical! * 4),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, "/loading"),
              child: const Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.downloading,
                    size: 16,
                  ),
                  SizedBox(width: kPadding8),
                  Text(
                    'Show Loading',
                    style: TextStyle(
                      fontSize: 16
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height:  SizeConfig.blockSizeVertical! * 4),
            ElevatedButton(
              onPressed: () {
                Fluttertoast.showToast(
                  msg: "Koneksi tidak stabil, pastikan jaringan internet Kakak lancar, ya.",
                  toastLength: Toast.LENGTH_SHORT,
                  gravity: ToastGravity.BOTTOM,
                  backgroundColor: Colors.black,
                  textColor: Colors.white,
                  fontSize: 16,
                );
              },
              child: const Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.notifications,
                    size: 16,
                  ),
                  SizedBox(width: kPadding8),
                  Text(
                    'Show Toast',
                    style: TextStyle(
                        fontSize: 16
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}