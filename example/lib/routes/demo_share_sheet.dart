import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:vant_widget/main.dart';

import '../utils/index.dart';

class DemoShareSheet extends StatefulWidget {
  const DemoShareSheet({super.key});

  @override
  _DemoShareSheet createState() => _DemoShareSheet();
}

class _DemoShareSheet extends State<DemoShareSheet> {
  Widget title(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
      child: Text(title, style: const TextStyle(fontSize: 14, color: Colors.grey)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        title(AppLocalizations.of(context)!.basic_usage),
        Cell(
          title: AppLocalizations.of(context)!.show_share_panel,
          isLink: true,
          onClick: () {
            ShareSheet(
                title: AppLocalizations.of(context)!.share_to_friend,
                options: [
                  ShareSheetItem(
                      name: AppLocalizations.of(context)!.wechat,
                      icon: Image.network(
                          'https://img01.yzcdn.cn/vant/share-sheet-wechat.png')),
                  ShareSheetItem(
                      name: AppLocalizations.of(context)!.wechat_group,
                      icon: Image.network(
                          'https://img01.yzcdn.cn/vant/share-sheet-wechat-moments.png')),
                  ShareSheetItem(
                      name: AppLocalizations.of(context)!.weibo,
                      icon: Image.network(
                          'https://img01.yzcdn.cn/vant/share-sheet-weibo.png')),
                  ShareSheetItem(
                      name: AppLocalizations.of(context)!.qq,
                      icon: Image.network(
                          'https://img01.yzcdn.cn/vant/share-sheet-qq.png')),
                  ShareSheetItem(
                    name: AppLocalizations.of(context)!.copy_link,
                    icon: const Icon(
                      Icons.link,
                    ),
                  ),
                  ShareSheetItem(
                    name: AppLocalizations.of(context)!.share_paper,
                    icon: const Icon(
                      Icons.image,
                    ),
                  ),
                  ShareSheetItem(
                    name: AppLocalizations.of(context)!.qrcode,
                    icon: const Icon(
                      Icons.qr_code,
                    ),
                  ),
                ],
                onSelect: (option, index) {
                  Utils.toast(option.name);
                }).show(context);
          },
        ),
        title(AppLocalizations.of(context)!.show_multi_line_options),
        Cell(
          title: AppLocalizations.of(context)!.show_share_panel,
          isLink: true,
          onClick: () {
            ShareSheet(
                title: AppLocalizations.of(context)!.share_to_friend,
                wrap: true,
                options: [
                  ShareSheetItem(
                      name: AppLocalizations.of(context)!.wechat,
                      icon: Image.network(
                          'https://img01.yzcdn.cn/vant/share-sheet-wechat.png')),
                  ShareSheetItem(
                      name: AppLocalizations.of(context)!.wechat_group,
                      icon: Image.network(
                          'https://img01.yzcdn.cn/vant/share-sheet-wechat-moments.png')),
                  ShareSheetItem(
                      name: AppLocalizations.of(context)!.weibo,
                      icon: Image.network(
                          'https://img01.yzcdn.cn/vant/share-sheet-weibo.png')),
                  ShareSheetItem(
                      name: AppLocalizations.of(context)!.qq,
                      icon: Image.network(
                          'https://img01.yzcdn.cn/vant/share-sheet-qq.png')),
                  ShareSheetItem(
                    name: AppLocalizations.of(context)!.copy_link,
                    icon: const Icon(
                      Icons.link,
                    ),
                  ),
                  ShareSheetItem(
                    name: AppLocalizations.of(context)!.share_paper,
                    icon: const Icon(
                      Icons.image,
                    ),
                  ),
                  ShareSheetItem(
                    name: AppLocalizations.of(context)!.qrcode,
                    icon: const Icon(
                      Icons.qr_code,
                    ),
                  ),
                ]).show(context);
          },
        ),
        title(AppLocalizations.of(context)!.custom_icon),
        Cell(
          title: AppLocalizations.of(context)!.show_share_panel,
          isLink: true,
          onClick: () {
            ShareSheet(
                title: AppLocalizations.of(context)!.share_to_friend,
                description: AppLocalizations.of(context)!.description,
                options: [
                  ShareSheetItem(
                      name: AppLocalizations.of(context)!.name,
                      icon: Image.network(
                          'https://img01.yzcdn.cn/vant/custom-icon-fire.png')),
                  ShareSheetItem(
                      name: AppLocalizations.of(context)!.name,
                      icon: Image.network(
                          'https://img01.yzcdn.cn/vant/custom-icon-light.png')),
                  ShareSheetItem(
                      name: AppLocalizations.of(context)!.name,
                      icon: Image.network(
                          'https://img01.yzcdn.cn/vant/custom-icon-water.png'))
                ]).show(context);
          },
        ),
        title(AppLocalizations.of(context)!.display_description),
        Cell(
          title: AppLocalizations.of(context)!.show_share_panel,
          isLink: true,
          onClick: () {
            ShareSheet(
                title: AppLocalizations.of(context)!.share_to_friend,
                description: AppLocalizations.of(context)!.description,
                options: [
                  ShareSheetItem(
                      name: AppLocalizations.of(context)!.wechat,
                      icon: Image.network(
                          'https://img01.yzcdn.cn/vant/share-sheet-wechat.png')),
                  ShareSheetItem(
                      name: AppLocalizations.of(context)!.wechat_group,
                      icon: Image.network(
                          'https://img01.yzcdn.cn/vant/share-sheet-wechat-moments.png')),
                  ShareSheetItem(
                    name: AppLocalizations.of(context)!.share_paper,
                    description: AppLocalizations.of(context)!.description,
                    icon: const Icon(
                      Icons.image,
                    ),
                  ),
                  ShareSheetItem(
                    name: AppLocalizations.of(context)!.qrcode,
                    icon: const Icon(
                      Icons.qr_code,
                    ),
                  ),
                ]).show(context);
          },
        ),
      ],
    ));
  }
}
