import 'dart:io';

import 'package:flip_frontend/constant/app_constant.dart';
import 'package:flip_frontend/model/transfer_model.dart';
import 'package:flip_frontend/screen/account/account_screen.dart';
import 'package:flip_frontend/screen/help/help_screen.dart';
import 'package:flip_frontend/screen/transaction/transactions_screen.dart';
import 'package:flip_frontend/style/app_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';

import 'home/home_screen.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  DateTime? backPressTime;

  int selectedIndex = 0;

  final pages = const [
    HomeScreen(),
    TransactionsScreen(),
    HelpScreen(),
    AccountScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvoked: (bool key) {
        bool backStatus = onWillPop();
        if (backStatus) {
          exit(0);
        }
      },
      child: Scaffold(
        body: pages.elementAt(selectedIndex),
        floatingActionButton: InkWell(
          onTap: () {
            showModalBottomSheet(
              context: context,
              isScrollControlled: true,
              builder: (context) {
                return Container(
                  height: MediaQuery.of(context).size.height / 2,
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.symmetric(
                      vertical: kPadding24
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(
                          bottom: 10
                        ),
                        height: 4,
                        width: double.infinity,
                        child: SvgPicture.asset(
                          dividerIcon,
                          height: 4,
                          width: 50,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(
                          left: kPadding16
                        ),
                        child: const Text(
                          "Where are you transferring money to?",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                      Expanded(
                        child: ListView.builder(
                          itemCount: listTransfer.length,
                          itemBuilder: (context, index) {
                            final item = listTransfer[index];
                            return Container(
                                margin: const EdgeInsets.symmetric(
                                  vertical: kPadding8,
                                  horizontal: kPadding16,
                                ),
                                padding: const EdgeInsets.symmetric(
                                  vertical: kPadding14,
                                ),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(kBorderRadius12),
                                    border: Border.all(
                                      color: kGreyE3,
                                      width: 1,
                                    )
                                ),
                                child: ListTile(
                                  dense: true,
                                  leading: SvgPicture.asset(
                                    item.icon,
                                    width: 50,
                                  ),
                                  title: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Flexible(
                                        child: Text(
                                          item.transfer,
                                          style: const TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold
                                          ),
                                        ),
                                      ),
                                      const SizedBox(width: kPadding4),
                                      item.isNew == true ? SvgPicture.asset(newIcon) : Container(),
                                    ],
                                  ),
                                  subtitle: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          item.isBank == true ? SvgPicture.asset(bankIcon) : Container(),
                                          item.isBank == true ? const SizedBox(width: kPadding4) : Container(),
                                          Flexible(
                                            child: Text(
                                              item.description,
                                              overflow: TextOverflow.ellipsis,
                                              style: const TextStyle(
                                                  fontSize: 14
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                )
                            );
                          },
                        ),
                      )
                    ],
                  ),
                );
              }
            );
          },
          child: Container(
            margin: const EdgeInsets.only(
              top: 46
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.transparent,
                  child: SvgPicture.asset(transferIcon),
                ),
                const Text(
                  "Transfer",
                  style: TextStyle(
                    color: kOrangeTomato,
                    fontSize: 14,
                    fontWeight: FontWeight.bold
                  ),
                )
              ],
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20)
          ),
          child: BottomAppBar(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      pages[selectedIndex = 0];
                    });
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SvgPicture.asset(homeIcon),
                      const Text(
                        "Home",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12
                        ),
                      )
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      pages[selectedIndex = 1];
                    });
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SvgPicture.asset(transactionsIcon),
                      const Text(
                        "Transaction",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(width: kPadding32),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      pages[selectedIndex = 2];
                    });
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SvgPicture.asset(helpIcon),
                      const Text(
                        "Help",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12
                        ),
                      )
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      pages[selectedIndex = 3];
                    });
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SvgPicture.asset(peopleIcon),
                      const Text(
                        "Account",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  onWillPop() {
    DateTime now = DateTime.now();
    if (backPressTime == null ||
        now.difference(backPressTime!) >= const Duration(seconds: 2)) {
      backPressTime = now;
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          backgroundColor: Colors.black,
          content: Text(
            "Press back once again to exit",
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
          behavior: SnackBarBehavior.floating,
          duration: Duration(milliseconds: 1500),
        ),
      );
      return false;
    } else {
      return true;
    }
  }
}
