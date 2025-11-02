import 'package:flip_frontend/util/size_config.dart';
import 'package:flutter/material.dart';

import '../../constant/app_constant.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
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
              'Test Halaman Akun',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 22
              ),
            )
          ],
        ),
      ),
    );
  }
}
