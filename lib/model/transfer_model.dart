import 'package:flip_frontend/constant/app_constant.dart';

class TransferModel {
  final String icon;
  final String transfer;
  final String description;
  final bool isNew;
  final bool isBank;


  TransferModel({
    required this.icon,
    required this.transfer,
    required this.description,
    required this.isNew,
    required this.isBank,
  });
}

final List<TransferModel> listTransfer = [
  TransferModel(icon: balanceFlipIcon, transfer: 'Balance on Flip', description: 'Transfer or pay to Balance on Flip', isNew: true, isBank: false),
  TransferModel(icon: bankFlipIcon, transfer: 'Bank Accounts', description: 'Transfer to 1 bank at a time', isNew: false, isBank: true),
  TransferModel(icon: manyBankFlipIcon, transfer: 'Many Bank Accounts', description: 'Transfer to many banks at once', isNew: false, isBank: true),
];