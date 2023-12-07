import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:vant_flutter/main.dart';

class DemoPrice extends StatefulWidget {
  @override
  _DemoPrice createState() => _DemoPrice();
}

class _DemoPrice extends State<DemoPrice> {
  Widget title(String title) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Text(title, style: TextStyle(fontSize: 14, color: Colors.grey)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          title(AppLocalizations.of(context)!.basic_usage),
          Price(
            value: 1234.567,
          ),
          title(AppLocalizations.of(context)!.keep_three_decimal),
          Price(
            value: 1234.567,
            decimal: 3,
          ),
          title(AppLocalizations.of(context)!.custom_decimal),
          Price(
            currency: "\$",
            color: Colors.red,
            value: 1234.567,
          ),
          title(AppLocalizations.of(context)!.display_in_thousands),
          Price(
            thousands: true,
            value: 10010.01,
          ),
        ],
      ),
    );
  }
}
