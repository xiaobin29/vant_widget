import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vant_widget/main.dart';

class DemoSkeleton extends StatefulWidget {
  const DemoSkeleton({super.key});

  @override
  _DemoSkeleton createState() => _DemoSkeleton();
}

class _DemoSkeleton extends State<DemoSkeleton> {
  bool _loading = true;

  Widget title(String title) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 30, 0, 20),
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
          const Skeleton(
            row: 3,
            title: true,
          ),
          title(AppLocalizations.of(context)!.show_avatar),
          const Skeleton(
            row: 3,
            title: true,
            avatar: true,
            avatarShape: "round",
          ),
          title(AppLocalizations.of(context)!.show_sub_components),
          CupertinoSwitch(
            value: _loading,
            onChanged: (value) {
              setState(() {
                _loading = value;
              });
            },
          ),
          const SizedBox(height: 6),
          Skeleton(
            row: 3,
            title: true,
            avatarShape: "round",
            loading: !_loading,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(AppLocalizations.of(context)!.about_vant,
                    style:
                        const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                const SizedBox(
                  height: 10,
                ),
                Text(AppLocalizations.of(context)!.example_skeletion,
                    style: const TextStyle(fontSize: 14, height: 1.5))
              ],
            ),
          )
        ]));
  }
}
