import 'dart:async';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:vant_widget/main.dart';

class DemoList extends StatefulWidget {
  const DemoList({super.key});

  @override
  _DemoList createState() => _DemoList();
}

class _DemoList extends State<DemoList> with SingleTickerProviderStateMixin {
  TabController? _tabController;
  final List<int> _dataList1 = [];
  final List<int> _dataList2 = [];
  bool _finished1 = false;
  bool _finished2 = false;
  bool _error = false;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 2);
  }

  Widget _buildItem(int i) {
    return Cell(
      isLink: true,
      title: "$i",
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.display_list_title),
        bottom: TabBar(
          tabs: <Widget>[
            Tab(text: AppLocalizations.of(context)!.basic_usage),
            Tab(text: AppLocalizations.of(context)!.error_tip),
          ],
          controller: _tabController,
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          NList(
            finished: _finished1,
            finishedText: AppLocalizations.of(context)!.no_more,
            child: List.generate(
                _dataList1.length, (i) => _buildItem(_dataList1[i])),
            onLoad: () {
              return Future.delayed(const Duration(milliseconds: 300), () {
                setState(() {
                  _dataList1
                      .addAll(List.generate(10, (i) => i + _dataList1.length));
                  _finished1 = _dataList1.length >= 40;
                });
              });
            },
          ),
          NList(
            finished: _finished2,
            finishedText: AppLocalizations.of(context)!.no_more,
            error: _error,
            errorText: AppLocalizations.of(context)!.request_error,
            child: List.generate(
                _dataList2.length, (i) => _buildItem(_dataList2[i])),
            onLoad: () {
              if (_dataList2.isNotEmpty) {
                setState(() {
                  _error = _dataList2.length == 10 && !_error;
                });
              }
              if (!_error) {
                return Future.delayed(const Duration(milliseconds: 300), () {
                  setState(() {
                    _dataList2.addAll(
                        List.generate(10, (i) => i + _dataList2.length));
                    _finished2 = _dataList2.length >= 30;
                  });
                });
              }
            },
          ),
        ],
      ),
    );
  }
}
