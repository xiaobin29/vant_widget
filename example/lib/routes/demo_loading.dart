import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:vant_widget/main.dart';

class DemoLoading extends StatefulWidget {
  const DemoLoading({super.key});

  @override
  _DemoLoading createState() => _DemoLoading();
}

class _DemoLoading extends State<DemoLoading> {
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
          const Loading(),
          title(AppLocalizations.of(context)!.custom_color),
          const Loading(
            color: Colors.blueAccent,
          ),
          title(AppLocalizations.of(context)!.load_text),
          Loading(
            color: Colors.blueAccent,
            text: AppLocalizations.of(context)!.loading,
          ),
          title(AppLocalizations.of(context)!.vertical_arrangement),
          Loading(
            color: Colors.blueAccent,
            text: AppLocalizations.of(context)!.loading,
            size: 20,
            vertical: true,
          ),
          title(AppLocalizations.of(context)!.custom_loading),
          SizedBox(
            width: 100,
            child: Loading(
              loading: Image.network(
                  "https://loading.io/mod/spinner/lava-lamp/sample.gif"),
              text: AppLocalizations.of(context)!.loading,
            ),
          ),
          title(AppLocalizations.of(context)!.show_loading),
          NButton(
            text: AppLocalizations.of(context)!.show_loading,
            type: "primary",
            onClick: () {
              showDialog(
                  context: context,
                  barrierDismissible: true,
                  builder: (context) {
                    return Center(
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4.0),
                            color: Colors.white),
                        padding: const EdgeInsets.all(20),
                        child: Loading(
                          color: Colors.blueAccent,
                          text: AppLocalizations.of(context)!.loading,
                        ),
                      ),
                    );
                  });
            },
          )
        ],
      ),
    );
  }
}
