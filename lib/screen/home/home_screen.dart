import 'package:flip_frontend/constant/app_constant.dart';
import 'package:flip_frontend/style/app_style.dart';
import 'package:flip_frontend/util/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';

import '../../component/promo_carousel.dart';
import '../../model/menu_model.dart';
import '../../model/recent_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverAppBar(
            onStretchTrigger: () async {
              // Triggers
            },
            stretch: true,
            stretchTriggerOffset: 300,
            expandedHeight: 200,
            centerTitle: false,
            backgroundColor: kOrangeTomato,
            automaticallyImplyLeading: false,
            title: const Text(
              "Helo, Arka",
              style: TextStyle(
                color: Colors.white
              ),
            ),
            actions: [
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: kPadding8),
                    height: 32,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(kBorderRadius100),
                      color: Colors.white,
                    ),
                    child: Center(
                      child: Row(
                        children: [
                          SvgPicture.asset(earnIcon),
                          const SizedBox(width: kPadding4),
                          const Text(
                            'Earn more here',
                            style: TextStyle(
                              color: Colors.black
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: SizeConfig.blockSizeHorizontal! * 2.5),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, "/help");
                    },
                    child: CircleAvatar(
                      radius: kBorderRadius16,
                      backgroundColor: Colors.white,
                      child: SvgPicture.asset(notificationIcon),
                    ),
                  ),
                  const SizedBox(width: kPadding16)
                ],
              ),
            ],
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                children: [
                  SvgPicture.asset(
                    subtractImage,
                    width: double.infinity,
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      width: double.infinity,
                      margin: const EdgeInsets.symmetric(
                        vertical: kPadding16,
                        horizontal: kPadding16
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: kPadding16,
                        vertical: kPadding14
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(kBorderRadius15),
                        color: kBlack000.withOpacity(0.1)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Since using Flip, you\'ve saved\nRp. 500.000,00',
                                style: TextStyle(
                                  color: Colors.white
                                ),
                              ),
                              const SizedBox(height: kPadding16),
                              Container(
                                height: 28,
                                padding: const EdgeInsets.only(left: kPadding6),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(kBorderRadius100),
                                  border: Border.all(color: Colors.white)
                                ),
                                child: const Row(
                                  children: [
                                    Text(
                                      'Invite Friend to Use Flip',
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                    Icon(
                                      Icons.arrow_right_sharp,
                                      color: Colors.white,
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                          Image.asset(
                            coinImage,
                            width: SizeConfig.blockSizeHorizontal! * 25,
                          )
                        ],
                      ),
                    ),
                  )
                ],
              )
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              color: kOrangeTomato,
              height: 20,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: 16,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(16),
                        topRight: Radius.circular(16)
                      )
                    ),
                  ),
                  Container(
                    height: 4,
                    width: double.infinity,
                    color: Colors.white,
                    child: SvgPicture.asset(
                      dividerIcon,
                      height: 4,
                      width: 50,
                    ),
                  )
                ],
              ),
            ),
          ),
          const SliverPadding(
            padding: EdgeInsets.only(top: kPadding8),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: kPadding16
                ),
                padding: const EdgeInsets.symmetric(
                  vertical: kPadding14,
                  horizontal: kPadding16,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(kBorderRadius12),
                  border: Border.all(
                    color: kGreyE3,
                    width: 1,
                  )
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Text(
                            'Balance',
                            style: TextStyle(
                              fontSize: 16
                            ),
                          ),
                          const Text(
                            'Rp. 16.800.000,00',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const Text(
                                'Flip Coin Rp. 140.000,00',
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                              SizedBox(width: SizeConfig.blockSizeHorizontal! * 1),
                              GestureDetector(
                                onTap: () {
                                  showDialog(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return AlertDialog(
                                          title: const Text(
                                            "What’s Flip Coin?",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold
                                            ),
                                          ),
                                          content: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              const Text(
                                                "Flip Coin is a total of money from the refund of failed transactions, unique code of successful transactions, and cashback. This coin can be moved into your bank accounts, but not to Flip balance.",
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 18
                                                ),
                                              ),
                                              const SizedBox(height: 6),
                                              ElevatedButton(
                                                onPressed: () => Navigator.pop(context),
                                                child: const Text(
                                                  "Okay, got it",
                                                  style: TextStyle(
                                                      color: kOrangeTomato,
                                                      fontSize: 18
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        );
                                      }
                                  );
                                },
                                child: SvgPicture.asset(infoIcon),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(width: SizeConfig.blockSizeHorizontal! * 2.5),
                    const VerticalDivider(
                      color: kGreyE3,
                      thickness: 1,
                      width: 1,
                    ),
                    SizedBox(width: SizeConfig.blockSizeHorizontal! * 2.5),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SvgPicture.asset(addIcon),
                        const Text('Top Up')
                      ],
                    )
                  ],
                ),
              )
            ]),
          ),
          SliverPadding(
            padding: const EdgeInsets.only(
              top: kPadding20,
              left: kPadding16,
              right: kPadding16
            ),
            sliver: SliverGrid.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                mainAxisSpacing: kPadding16,
                crossAxisSpacing: 0,
              ),
              itemCount: listMenu.length,
              itemBuilder: (context, index) {
                final item = listMenu[index];
                return GestureDetector(
                  onTap: () {
                    bottomSheet();
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SvgPicture.asset(item.icon),
                      Text(
                        item.text,
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                );
              },
            )
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              const Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: kPadding16
                ),
                child: PromoCarousel(),
              )
            ]),
          ),
          const SliverPadding(
            padding: EdgeInsets.only(top: kPadding22),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: kPadding16
                ),
                child: const Text(
                  'Quick Actions',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
              SizedBox(height: SizeConfig.blockSizeHorizontal! * 2),
              Container(
                margin: const EdgeInsets.symmetric(
                    horizontal: kPadding16
                ),
                padding: const EdgeInsets.symmetric(
                  vertical: kPadding14,
                  horizontal: kPadding16,
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(kBorderRadius12),
                    border: Border.all(
                      color: kGreyE3,
                      width: 1,
                    )
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: ListTile(
                        leading: CircleAvatar(
                          radius: kBorderRadius24,
                          backgroundColor: Colors.grey,
                          child: Image.asset(avatarIcon)
                        ),
                        title: const Text(
                          'Bessie',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600
                          ),
                        ),
                        subtitle: const Text(
                          'BRI',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.normal
                          ),
                        ),
                      )
                    ),
                  ],
                ),
              ),
              SizedBox(height: SizeConfig.blockSizeHorizontal! * 14),
              Container(
                margin: const EdgeInsets.symmetric(
                    horizontal: kPadding16
                ),
                child: const Text(
                  'Recent Transactions',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ]),
          ),
          SliverPadding(
            padding: const EdgeInsets.only(
              top: kPadding20,
              bottom: kPadding32
            ),
            sliver: SliverList.builder(
              itemCount: listRecent.length,
              itemBuilder: (context, index) {
                final item = listRecent[index];
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
                    leading: CircleAvatar(
                      radius: 14,
                      child: SvgPicture.asset(item.icon),
                    ),
                    title: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          item.name,
                          style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                        Text(
                          item.amount,
                          style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ],
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              item.transfer,
                              style: const TextStyle(
                                  fontSize: 16
                              ),
                            ),
                            Text(
                              item.status,
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                color: item.status == "Checking" ? const Color(0xff4788D2) :  item.status == "Successful" ? const Color(0xff46BFAE) : Colors.red,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          item.date,
                          style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.normal
                          ),
                        ),
                      ],
                    ),
                    dense: true,
                    isThreeLine: true,
                    visualDensity: VisualDensity.comfortable,
                  )
                );
              },
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "See all transactions on the ",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12
                    ),
                  ),
                  Text(
                    "Transactions page.",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ],
              ),
              SizedBox(height: SizeConfig.blockSizeHorizontal! * 12),
            ]),
          )
        ],
      ),
    );
  }

  bottomSheet() {
    return showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        builder: (context) {
          return Container(
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
                    "All Products & Services",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                Flexible(
                  child: GridView.count(
                    physics: const NeverScrollableScrollPhysics(),
                    padding: const EdgeInsets.all(kPadding20),
                    shrinkWrap: true,
                    crossAxisCount: 4,
                    children: List.generate(listBottomSheet.length, (index) {
                      final item = listBottomSheet[index];
                      return Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SvgPicture.asset(item.icon),
                          Text(
                            item.text,
                            textAlign: TextAlign.center,
                          )
                        ],
                      );
                    })
                  ),
                )
              ],
            ),
          );
        }
    );
  }

  bottomSheetList() {
    return showModalBottomSheet(
      context: context,
      clipBehavior: Clip.hardEdge,

      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20),
        ),
      ),
      constraints: const BoxConstraints(),
      builder: (context) {
        return StatefulBuilder(
          builder: (context, state) {
            return const Stack(
              alignment: Alignment.topLeft,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: 40,
                    left: 40,
                  ),
                  child: Text(
                    'All Products & Services',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                Expanded(
                  child: Text("data")
                )
              ],
            );
          },
        );
      },
    );
  }
}

