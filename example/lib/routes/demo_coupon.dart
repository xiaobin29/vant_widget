import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:vant_widget/main.dart';

class DemoCoupon extends StatefulWidget {
  const DemoCoupon({super.key});

  @override
  _DemoCoupon createState() => _DemoCoupon();
}

class _DemoCoupon extends State<DemoCoupon> {
  String? _discount;
  int? _chosenCoupon;

  Widget title(String title) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Text(title, style: const TextStyle(fontSize: 14, color: Colors.grey)),
    );
  }

  @override
  Widget build(BuildContext context) {
    List<CouponItem> coupons = List.generate(10, (i) {
      return CouponItem(
          condition: AppLocalizations.of(context)!.example_coupon_condition,
          description: AppLocalizations.of(context)!.description,
          reason: AppLocalizations.of(context)!.example_coupon_reason,
          value: 150,
          name: AppLocalizations.of(context)!.example_coupon_name,
          startAt: DateFormat("yyyy-MM-dd").format(DateTime.parse("20170310")),
          endAt: DateFormat("yyyy-MM-dd").format(DateTime.parse("20171210")),
          valueDesc: i % 2 == 0 ? '8.5' : '1.5',
          unitDesc:
              i % 2 == 0 ? AppLocalizations.of(context)!.discount : AppLocalizations.of(context)!.yuan);
    });
    return SingleChildScrollView(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        title(AppLocalizations.of(context)!.basic_usage),
        Cell(
          title: AppLocalizations.of(context)!.coupon,
          value: _discount ?? "${coupons.length}${AppLocalizations.of(context)!.available}",
          isLink: true,
          onClick: () {
            Coupon(
              chosenCoupon: _chosenCoupon,
              coupons: coupons,
              disabledCoupons: coupons.sublist(0, 2),
              onSelect: (val) {
                setState(() {
                  _chosenCoupon = val;
                  String value = (coupons[val].value! / 100).toStringAsFixed(2);
                  _discount = "-¥$value";
                });
              },
            ).show(context);
          },
        )
      ],
    ));
  }
}
