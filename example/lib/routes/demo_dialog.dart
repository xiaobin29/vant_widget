import 'dart:async';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:vant_widget/main.dart';

class DemoDialog extends StatefulWidget {
  const DemoDialog({super.key});

  @override
  _DemoDialog createState() => _DemoDialog();
}

class _DemoDialog extends State<DemoDialog> {
  void _showDialog1(BuildContext context) {
    showDialog(
      context: context,
      builder: (_) {
        return NDialog(
          title: AppLocalizations.of(context)!.title,
          message: AppLocalizations.of(context)!.example_content,
        );
      },
    );
  }

  void _showDialog2(BuildContext context) {
    showDialog(
      context: context,
      builder: (_) {
        return NDialog(
          message: AppLocalizations.of(context)!.example_content,
        );
      },
    );
  }

  void _showDialog3(BuildContext context) {
    showDialog(
      context: context,
      builder: (_) {
        return NDialog(
          title: AppLocalizations.of(context)!.title,
          message: AppLocalizations.of(context)!.example_content,
          showCancelButton: true,
        );
      },
    );
  }

  void _showDialog4(BuildContext context) {
    showDialog(
      context: context,
      builder: (_) {
        return NDialog(
            title: AppLocalizations.of(context)!.title,
            message: AppLocalizations.of(context)!.example_content,
            showCancelButton: true,
            confirmButtonColor: Colors.blueAccent,
            confirmTextColor: Colors.white,
            confirmButtonText: "OK",
            cancelButtonColor: Colors.red,
            cancelTextColor: Colors.white,
            cancelButtonText: "CANCEL",
            titleAlign: AlignmentDirectional.centerStart,
            messageAlign: TextAlign.start);
      },
    );
  }

  void _showDialog5(BuildContext context) {
    showDialog(
      context: context,
      builder: (_) {
        return NDialog(
          title: AppLocalizations.of(context)!.title,
          message: AppLocalizations.of(context)!.example_content,
          showCancelButton: true,
          beforeClose: () {
            return Future.delayed(const Duration(seconds: 1), () {
              return true;
            });
          },
        );
      },
    );
  }

  void _showDialog6(BuildContext context) {
    showDialog(
      context: context,
      builder: (_) {
        return NDialog(
          title: AppLocalizations.of(context)!.title,
          showCancelButton: true,
          beforeClose: () {
            return Future.delayed(
                const Duration(seconds: 1), () {} as FutureOr<bool> Function()?);
          },
          child: Container(
            padding: const EdgeInsets.all(24),
            child: Image.network("https://img.yzcdn.cn/vant/apple-1.jpg"),
          ),
        );
      },
    );
  }

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
        children: <Widget>[
          title(AppLocalizations.of(context)!.basic_usage),
          CellGroup(
            children: [
              Cell(
                title: AppLocalizations.of(context)!.tip_dialog,
                isLink: true,
                onClick: () {
                  _showDialog1(context);
                },
              ),
              Cell(
                title: AppLocalizations.of(context)!.tip_dialog_no_title,
                isLink: true,
                onClick: () {
                  _showDialog2(context);
                },
              ),
              Cell(
                title: AppLocalizations.of(context)!.confirm_dialog,
                isLink: true,
                onClick: () {
                  _showDialog3(context);
                },
              ),
            ],
          ),
          title(AppLocalizations.of(context)!.async_call),
          Cell(
            title: AppLocalizations.of(context)!.async_call,
            isLink: true,
            onClick: () {
              _showDialog5(context);
            },
          ),
          title(AppLocalizations.of(context)!.custom_confirm_dialog),
          Cell(
            title: AppLocalizations.of(context)!.custom_confirm_dialog,
            isLink: true,
            onClick: () {
              _showDialog4(context);
            },
          ),
          title(AppLocalizations.of(context)!.custom_content),
          Cell(
            title: AppLocalizations.of(context)!.custom_content,
            isLink: true,
            onClick: () {
              _showDialog6(context);
            },
          ),
        ],
      ),
    );
  }
}
