import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:vant_widget/main.dart';

class DemoPrice extends StatefulWidget {
  const DemoPrice({super.key});

  @override
  _DemoPrice createState() => _DemoPrice();
}

class _DemoPrice extends State<DemoPrice> {
  Widget title(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
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
          const Price(
            value: 1234.567,
          ),
          title(AppLocalizations.of(context)!.keep_three_decimal),
          const Price(
            value: 1234.567,
            decimal: 3,
          ),
          title(AppLocalizations.of(context)!.custom_decimal),
          const Price(
            currency: "\$",
            color: Colors.red,
            value: 1234.567,
          ),
          title(AppLocalizations.of(context)!.display_in_thousands),
          const Price(
            thousands: true,
            value: 10010.01,
          ),
        ],
      ),
    );
  }
}
