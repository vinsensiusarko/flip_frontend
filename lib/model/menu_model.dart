import '../constant/app_constant.dart';

class MenuModel {
  final String icon;
  final String text;

  MenuModel({required this.icon, required this.text});
}

final List<MenuModel> listMenu = [
  MenuModel(icon: ewalletIcon, text: 'E-Wallet'),
  MenuModel(icon: flipGlobeIcon, text: 'Flip Globe'),
  MenuModel(icon: topUpIcon, text: 'Top Up & Bills'),
  MenuModel(icon: investmentIcon, text: 'Investment'),
  MenuModel(icon: zakatIcon, text: 'Zakat & Sedekah'),
  MenuModel(icon: subscriptionIcon, text: 'Subscription'),
  MenuModel(icon: requestIcon, text: 'Request'),
  MenuModel(icon: moreIcon, text: 'More'),
];

final List<MenuModel> listBottomSheet = [
  MenuModel(icon: ewalletIcon, text: 'E-Wallet'),
  MenuModel(icon: flipGlobeIcon, text: 'Flip Globe'),
  MenuModel(icon: topUpIcon, text: 'Top Up & Bills'),
  MenuModel(icon: investmentIcon, text: 'Investment'),
  MenuModel(icon: zakatIcon, text: 'Zakat & Sedekah'),
  MenuModel(icon: subscriptionIcon, text: 'Subscription'),
  MenuModel(icon: requestIcon, text: 'Request'),
  MenuModel(icon: refundIcon, text: 'Refund'),
  MenuModel(icon: withdrawIcon, text: 'Withdrawal')
];