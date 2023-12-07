import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import '../utils/index.dart';
import 'package:vant_widget/main.dart';

class DemoAddressEdit extends StatefulWidget {
  const DemoAddressEdit({super.key});

  @override
  _DemoAddressEdit createState() => _DemoAddressEdit();
}

class _DemoAddressEdit extends State<DemoAddressEdit> {
  var textController = TextEditingController();

  Widget title(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 12),
      child: Text(title, style: const TextStyle(fontSize: 14, color: Colors.grey)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          title(AppLocalizations.of(context)!.basic_usage),
          AddressEdit(
            showDelete: true,
            showSetDefault: true,
            addressInfo: {
              "name": AppLocalizations.of(context)!.example_name,
              "tel": "18345234123",
              "province": AppLocalizations.of(context)!.example_province,
              "city": AppLocalizations.of(context)!.example_city,
              "county": AppLocalizations.of(context)!.example_county,
              "provinceId": 0,
              "cityId": 1,
              "countyId": 0,
              "addressDetail": AppLocalizations.of(context)!.example_address,
              "postalCode": "515000",
              "isDefault": true
            },
            children: <Widget>[
              Field(
                label: AppLocalizations.of(context)!.remark,
                placeholder: AppLocalizations.of(context)!.placeholder_remark,
                controller: textController,
              )
            ],
            onSave: (map) {
              Utils.toast("Saved! ${map.toString()}");
            },
          )
        ],
      ),
    );
  }
}
