import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:vant_flutter/main.dart';

import '../utils/index.dart';

class DemoContactCard extends StatefulWidget {
  @override
  _DemoContactCard createState() => _DemoContactCard();
}

class _DemoContactCard extends State<DemoContactCard> {
  Widget title(String title) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 16),
      child: Text(title, style: TextStyle(fontSize: 14, color: Colors.grey)),
    );
  }

  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          title(AppLocalizations.of(context)!.add_contacts),
          ContactCard(
              type: 'add', onClick: () => {Utils.toast(AppLocalizations.of(context)!.add)}),
          title(AppLocalizations.of(context)!.add_contacts),
          ContactCard(
            type: 'edit',
            name: AppLocalizations.of(context)!.example_name,
            tel: '13000000000',
            onClick: () => {Utils.toast(AppLocalizations.of(context)!.edit)},
          ),
          title(AppLocalizations.of(context)!.disabled_edit),
          ContactCard(
              type: 'edit',
              name: AppLocalizations.of(context)!.example_name,
              tel: '13000000000',
              editAble: false)
        ],
      ),
    );
  }
}
