import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'package:vant_widget/widgets/cell.dart';
import 'package:vant_widget/widgets/cell_group.dart';

import 'routes/index.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vant Flutter',
      locale: const Locale('zh', 'CH'),
      localizationsDelegates: const [
        AppLocalizations.delegate, // Add this line
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('zh', 'CH'),
        Locale('en', 'US'),
      ],
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Vant Flutter Demo Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: const Text("Flutter Vant Kit"),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.translate_outlined),
            onPressed: () {},
          ),
        ],
      ),
      body: Container(
        color: const Color(0xfff7f8fa),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                CellGroup(
                  title: AppLocalizations.of(context)!.base_title,
                  border: false,
                  children: <Widget>[
                    PageCell(
                      AppLocalizations.of(context)!.base_button_title,
                          (ctx) => const DemoButton(),
                      padding: false,
                    ),
                    PageCell(
                      AppLocalizations.of(context)!.base_cell_title,
                          (ctx) => const DemoCell(),
                      padding: false,
                    ),
                    PageCell(
                      AppLocalizations.of(context)!.base_image_title,
                          (ctx) => const DemoImage(),
                      padding: true,
                    ),
                    PageCell(
                      AppLocalizations.of(context)!.base_avatar_title,
                          (ctx) => const DemoAvatar(),
                      padding: true,
                    ),
                  ],
                ),
                CellGroup(
                  title: AppLocalizations.of(context)!.form_title,
                  border: false,
                  children: <Widget>[
                    PageCell(
                      AppLocalizations.of(context)!.form_calendar_title,
                          (ctx) => const DemoCalendar(),
                      padding: false,
                    ),
                    PageCell(
                      AppLocalizations.of(context)!.form_checkbox_title,
                          (ctx) => const DemoCheckbox(),
                      padding: true,
                    ),
                    PageCell(
                      AppLocalizations.of(context)!.form_field_title,
                          (ctx) => const DemoField(),
                      padding: false,
                    ),
                    PageCell(
                      AppLocalizations.of(context)!.form_number_keyboard_title,
                          (ctx) => const DemoNumberKeyboard(),
                      padding: true,
                    ),
                    PageCell(
                      AppLocalizations.of(context)!.form_password_input_title,
                          (ctx) => const DemoPasswordInput(),
                      padding: true,
                    ),
                    PageCell(
                      AppLocalizations.of(context)!.form_picker_title,
                          (ctx) => const DemoPicker(),
                      padding: false,
                    ),
                    PageCell(
                      AppLocalizations.of(context)!.form_radio_title,
                          (ctx) => const DemoRadio(),
                      padding: true,
                    ),
                    PageCell(
                      AppLocalizations.of(context)!.form_rate_title,
                          (ctx) => const DemoRate(),
                      padding: false,
                    ),
                    PageCell(
                      AppLocalizations.of(context)!.form_search_title,
                          (ctx) => const DemoSearch(),
                      padding: false,
                    ),
                    PageCell(
                      AppLocalizations.of(context)!.form_stepper_title,
                          (ctx) => const DemoStepper(),
                      padding: false,
                    ),
                    PageCell(
                      AppLocalizations.of(context)!.form_image_wall_title,
                          (ctx) => const DemoImageWall(),
                      padding: false,
                    ),
                  ],
                ),
                CellGroup(
                  title: AppLocalizations.of(context)!.action_title,
                  border: false,
                  children: <Widget>[
                    PageCell(
                      AppLocalizations.of(context)!.action_action_sheet_title,
                          (ctx) => const DemoActionSheet(),
                      padding: false,
                    ),
                    PageCell(
                      AppLocalizations.of(context)!.action_dialog_title,
                          (ctx) => const DemoDialog(),
                      padding: false,
                    ),
                    PageCell(
                      AppLocalizations.of(context)!.action_loading_title,
                          (ctx) => const DemoLoading(),
                      padding: true,
                    ),
                    PageCell(
                      AppLocalizations.of(context)!.action_share_sheet_title,
                          (ctx) => const DemoShareSheet(),
                      padding: false,
                    ),
                  ],
                ),
                CellGroup(
                  title: AppLocalizations.of(context)!.display_title,
                  border: false,
                  children: <Widget>[
                    PageCell(
                      AppLocalizations.of(context)!.display_badge_title,
                          (ctx) => const DemoBadge(),
                      padding: true,
                    ),
                    PageCell(
                      AppLocalizations.of(context)!.display_circle_title,
                          (ctx) => const DemoCircle(),
                      padding: true,
                    ),
                    PageCell(
                      AppLocalizations.of(context)!.display_collapse_title,
                          (ctx) => const DemoCollapse(),
                      padding: false,
                    ),
                    PageCell(
                      AppLocalizations.of(context)!.display_divider_title,
                          (ctx) => const DemoDivider(),
                      padding: true,
                    ),
                    PageCell(
                      AppLocalizations.of(context)!.display_image_preview_title,
                          (ctx) => const DemoImagePreview(),
                      padding: false,
                    ),
                    PageCell(
                      AppLocalizations.of(context)!.display_list_title,
                          (ctx) => const DemoList(),
                      padding: false,
                      withScaffold: false,
                    ),
                    PageCell(
                      AppLocalizations.of(context)!.display_notice_bar_title,
                          (ctx) => const DemoNoticeBar(),
                      padding: false,
                    ),
                    PageCell(
                      AppLocalizations.of(context)!.display_panel_title,
                          (ctx) => const DemoPanel(),
                      padding: false,
                    ),
                    PageCell(
                      AppLocalizations.of(context)!.display_price_title,
                          (ctx) => const DemoPrice(),
                      padding: true,
                    ),
                    PageCell(
                      AppLocalizations.of(context)!.display_progress_title,
                          (ctx) => const DemoProgress(),
                      padding: true,
                    ),
                    PageCell(
                      AppLocalizations.of(context)!.display_skeleton_title,
                          (ctx) => const DemoSkeleton(),
                      padding: true,
                    ),
                    PageCell(
                      AppLocalizations.of(context)!.display_steps_title,
                          (ctx) => const DemoSteps(),
                      padding: false,
                    ),
                    PageCell(
                      AppLocalizations.of(context)!.display_swipe_title,
                          (ctx) => const DemoSwipe(),
                      padding: false,
                    ),
                    PageCell(
                      AppLocalizations.of(context)!.display_tag_title,
                          (ctx) => const DemoTag(),
                      padding: true,
                    ),
                  ],
                ),
                CellGroup(
                  title: AppLocalizations.of(context)!.navigation_title,
                  border: false,
                  children: <Widget>[
                    PageCell(
                      AppLocalizations.of(context)!.navigation_pagination_title,
                          (ctx) => const DemoPagination(),
                      padding: true,
                    ),
                    PageCell(
                      AppLocalizations.of(context)!.navigation_sidebar_title,
                          (ctx) => const DemoSidebar(),
                      padding: true,
                    ),
                    PageCell(
                      AppLocalizations.of(context)!
                          .navigation_tree_select_title,
                          (ctx) => const DemoTreeSelect(),
                      padding: false,
                    ),
                  ],
                ),
                CellGroup(
                  title: AppLocalizations.of(context)!.business_title,
                  border: false,
                  children: <Widget>[
                    PageCell(
                      AppLocalizations.of(context)!.business_address_edit_title,
                          (ctx) => const DemoAddressEdit(),
                      padding: false,
                    ),
                    PageCell(
                      AppLocalizations.of(context)!.business_address_list_title,
                          (ctx) => const DemoAddressList(),
                      padding: false,
                    ),
                    PageCell(
                      AppLocalizations.of(context)!.business_card_title,
                          (ctx) => const DemoCard(),
                      padding: false,
                    ),
                    PageCell(
                      AppLocalizations.of(context)!.business_contact_card_title,
                          (ctx) => const DemoContactCard(),
                      padding: false,
                    ),
                    PageCell(
                      AppLocalizations.of(context)!.business_coupon_title,
                          (ctx) => const DemoCoupon(),
                      padding: false,
                    ),
                    PageCell(
                      AppLocalizations.of(context)!.business_goods_action_title,
                          (ctx) => const DemoGoodsAction(),
                      padding: false,
                    ),
                    PageCell(
                      AppLocalizations.of(context)!.business_submit_bar_title,
                          (ctx) => const DemoSubmitBar(),
                      padding: false,
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class PageCell extends StatelessWidget {
  const PageCell(
      this.title,
      this.builder, {
        super.key,
        this.withScaffold = true,
        this.padding = true,
      });

  final String title;
  final WidgetBuilder builder;
  final bool withScaffold;
  final bool padding;

  void _openPage(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      if (!withScaffold) {
        return builder(context);
      }
      return PageScaffold(
        title: title,
        body: builder(context),
        padding: padding,
      );
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Cell(
      title: title,
      isLink: true,
      onClick: () => _openPage(context),
    );
  }
}

class PageScaffold extends StatelessWidget {
  const PageScaffold({super.key, this.title, this.body, this.padding = false});

  final String? title;
  final Widget? body;
  final bool padding;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff7f8fa),
      appBar: AppBar(
        title: Text(title!),
        centerTitle: true,
      ),
      body: SafeArea(
        child:
        Container(padding: EdgeInsets.all(padding ? 16.0 : 0), child: body),
      ),
    );
  }
}
