import '../constant/app_constant.dart';

class RecentModel {
  final String icon;
  final String name;
  final String amount;
  final String transfer;
  final String status;
  final String date;


  RecentModel({
    required this.icon,
    required this.name,
    required this.amount,
    required this.transfer,
    required this.status,
    required this.date,
  });
}

final List<RecentModel> listRecent = [
  RecentModel(icon: ewalletIcon, name: 'E-Wallet', amount: 'Rp. 2.000.000', transfer: 'Mandiri to BCA', status: 'Successful', date: '05 Juli 2024'),
  RecentModel(icon: flipGlobeIcon, name: 'Flip Globe', amount: 'Rp. 54.500.000', transfer: 'BRI to Mandiri', status: 'Checking', date: '30 Juni 2024'),
  RecentModel(icon: topUpIcon, name: 'Top Up & Bills', amount: 'Rp. 50.000', transfer: 'Balence to BRI', status: 'Successful', date: '27 Maret 2024'),
  RecentModel(icon: investmentIcon, name: 'Top Up', amount: 'Rp. 7.000.000', transfer: 'From Mandiri', status: 'Successful', date: '11 September 2023'),
];