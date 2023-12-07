import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import '../utils/index.dart';
import 'package:vant_widget/main.dart';

class DemoNoticeBar extends StatefulWidget {
  const DemoNoticeBar({super.key});

  @override
  _DemoNoticeBar createState() => _DemoNoticeBar();
}

class _DemoNoticeBar extends State<DemoNoticeBar> {
  Widget title(String title) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 30, 0, 10),
      child: Text(title, style: const TextStyle(fontSize: 14, color: Colors.grey)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        title(AppLocalizations.of(context)!.basic_usage),
        NoticeBar(
          text: AppLocalizations.of(context)!.example_notice_bar,
          leftIcon: Icons.volume_up,
        ),
        title(AppLocalizations.of(context)!.no_scrolling),
        NoticeBar(
          scrollable: false,
          leftIcon: Icons.volume_up,
          text: AppLocalizations.of(context)!.example_notice_bar,
        ),
        title(AppLocalizations.of(context)!.multi_line_display),
        NoticeBar(
          scrollable: false,
          wrapable: true,
          text: AppLocalizations.of(context)!.example_notice_bar,
        ),
        title(AppLocalizations.of(context)!.notice_bar_mode),
        NoticeBar(
          text: AppLocalizations.of(context)!.example_notice_bar,
          mode: "closeable",
          onClose: () {
            Utils.toast("NoticeBar closed");
          },
        ),
        const SizedBox(
          height: 4,
        ),
        NoticeBar(
          text: AppLocalizations.of(context)!.example_notice_bar,
          mode: "link",
          onClick: () {
            Utils.toast("NoticeBar clicked");
          },
        ),
        title(AppLocalizations.of(context)!.custom_style),
        NoticeBar(
          text: AppLocalizations.of(context)!.example_notice_bar,
          leftIcon: Icons.info_outline,
          background: const Color(0xffecf9ff),
          color: const Color(0xff1989fa),
        )
      ],
    );
  }
}
