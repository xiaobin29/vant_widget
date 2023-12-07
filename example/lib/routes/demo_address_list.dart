import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import '../utils/index.dart';
import 'package:vant_flutter/main.dart';

class DemoAddressList extends StatefulWidget {
  @override
  _DemoAddressList createState() => _DemoAddressList();
}

class _DemoAddressList extends State<DemoAddressList> {
  Widget title(String title) {
    return Padding(
      padding: EdgeInsets.only(bottom: 20),
      child: Text(title, style: TextStyle(fontSize: 14, color: Colors.grey)),
    );
  }

  @override
  Widget build(BuildContext context) {
    List<AddressInfo> list = [
      AddressInfo(
          name: AppLocalizations.of(context)!.example_name,
          tel: "18345234123",
          province: AppLocalizations.of(context)!.example_province,
          city: AppLocalizations.of(context)!.example_city,
          county: AppLocalizations.of(context)!.example_county,
          addressDetail: AppLocalizations.of(context)!.example_address,
          postalCode: "515000",
          isDefault: true),
      AddressInfo(
          name: AppLocalizations.of(context)!.example_name2,
          tel: "18345234123",
          province: AppLocalizations.of(context)!.example_province,
          city: AppLocalizations.of(context)!.example_city,
          county: AppLocalizations.of(context)!.example_county,
          addressDetail: AppLocalizations.of(context)!.example_address,
          postalCode: "515000",
          isDefault: false),
    ];
    List<AddressInfo> disabledList = [
      AddressInfo(
          name: AppLocalizations.of(context)!.example_name3,
          tel: "18345234123",
          province: AppLocalizations.of(context)!.example_province,
          city: AppLocalizations.of(context)!.example_city,
          county: AppLocalizations.of(context)!.example_county,
          addressDetail: AppLocalizations.of(context)!.example_address,
          postalCode: "515000",
          isDefault: false)
    ];

    return AddressList(
      id: 0,
      list: list,
      top: title(AppLocalizations.of(context)!.basic_usage),
      disabledList: disabledList,
      onSelect: (item, i) {
        Utils.toast(item.toString());
      },
      onEdit: (item, i) {
        Utils.toast(AppLocalizations.of(context)!.edit);
      },
      onAdd: () {
        Utils.toast(AppLocalizations.of(context)!.add);
      },
    );
  }
}
