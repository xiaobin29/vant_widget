import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:vant_widget/main.dart';

class DemoGoodsAction extends StatefulWidget {
  const DemoGoodsAction({super.key});

  @override
  State<DemoGoodsAction> createState() => _DemoGoodsAction();
}

class _DemoGoodsAction extends State<DemoGoodsAction> {
  Widget title(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      child:
          Text(title, style: const TextStyle(fontSize: 14, color: Colors.grey)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          title(AppLocalizations.of(context)!.basic_usage),
          GoodsAction(
            actions: [
              ActionButtonItem(
                  text: AppLocalizations.of(context)!.service,
                  icon: Icons.chat_bubble_outline),
              ActionButtonItem(
                  text: AppLocalizations.of(context)!.shopping_cart,
                  icon: Icons.add_shopping_cart),
            ],
            buttons: [
              ButtonItem(
                  text: AppLocalizations.of(context)!.add_to_cart,
                  color: const LinearGradient(
                      colors: [Color(0xffffd01e), Color(0xffff8917)])),
              ButtonItem(
                  text: AppLocalizations.of(context)!.buy_now,
                  color: const LinearGradient(
                      colors: [Color(0xffff6034), Color(0xffee0a24)])),
            ],
          ),
          title(AppLocalizations.of(context)!.logo_hint),
          GoodsAction(
            actions: [
              ActionButtonItem(
                  text: AppLocalizations.of(context)!.service,
                  icon: Icons.chat_bubble_outline),
              ActionButtonItem(
                  text: AppLocalizations.of(context)!.shopping_cart,
                  icon: Icons.add_shopping_cart,
                  info: "5"),
              ActionButtonItem(
                  text: AppLocalizations.of(context)!.shop,
                  icon: Icons.store,
                  info: "12"),
            ],
            buttons: [
              ButtonItem(
                  text: AppLocalizations.of(context)!.add_to_cart,
                  color: const LinearGradient(
                      colors: [Color(0xffffd01e), Color(0xffff8917)])),
              ButtonItem(
                  text: AppLocalizations.of(context)!.buy_now,
                  color: const LinearGradient(
                      colors: [Color(0xffff6034), Color(0xffee0a24)])),
            ],
          ),
          title(AppLocalizations.of(context)!.load_and_disable_state),
          GoodsAction(
            actions: [
              ActionButtonItem(
                  text: AppLocalizations.of(context)!.service,
                  icon: Icons.chat_bubble_outline),
              ActionButtonItem(
                  text: AppLocalizations.of(context)!.shopping_cart,
                  icon: Icons.add_shopping_cart),
            ],
            buttons: [
              ButtonItem(
                  text: AppLocalizations.of(context)!.add_to_cart,
                  disabled: true,
                  color: const LinearGradient(
                      colors: [Color(0xffffd01e), Color(0xffff8917)])),
              ButtonItem(
                  text: AppLocalizations.of(context)!.buy_now,
                  loading: true,
                  color: const LinearGradient(
                      colors: [Color(0xffff6034), Color(0xffee0a24)])),
            ],
          ),
          title(AppLocalizations.of(context)!.custom_content),
          GoodsAction(
            actions: [
              ActionButtonItem(
                  customText: Text(AppLocalizations.of(context)!.service,
                      style: const TextStyle(
                          color: Colors.blueAccent, fontSize: 12)),
                  customIcon: const Icon(Icons.chat_bubble_outline,
                      color: Colors.blueAccent, size: 16)),
              ActionButtonItem(
                  text: AppLocalizations.of(context)!.shopping_cart,
                  icon: Icons.add_shopping_cart),
            ],
            buttons: [
              ButtonItem(
                  text: AppLocalizations.of(context)!.add_to_cart,
                  color: const Color(0xffbe99ff)),
              ButtonItem(
                  text: AppLocalizations.of(context)!.buy_now,
                  color: const Color(0xff7232dd)),
            ],
          ),
        ],
      ),
    );
  }
}
