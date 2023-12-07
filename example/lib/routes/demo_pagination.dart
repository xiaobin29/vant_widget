import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:vant_widget/main.dart';

class DemoPagination extends StatefulWidget {
  const DemoPagination({super.key});

  @override
  _DemoPagination createState() => _DemoPagination();
}

class _DemoPagination extends State<DemoPagination> {
  Widget title(String title) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
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
        const Pagination(
          totalItems: 36,
        ),
        title(AppLocalizations.of(context)!.simple_mode),
        const Pagination(
          totalItems: 120,
          mode: 'simple',
        ),
      ],
    ));
  }
}
