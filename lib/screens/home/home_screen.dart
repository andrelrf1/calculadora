import 'package:calculadora/core/app_settings.dart';
import 'package:calculadora/core/custom_theme.dart';
import 'package:calculadora/screens/calculator/calculator_screen.dart';
import 'package:calculadora/screens/history/history_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  late final TabController _tabCtrl;

  @override
  void initState() {
    _tabCtrl = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: context.watch<AppSettings>().lightTheme
            ? CustomTheme.scaffoldBackgroundLight
            : CustomTheme.scaffoldBackgroundDark,
      ),
      child: Align(
        alignment: Alignment.center,
        child: AspectRatio(
          aspectRatio: 0.5,
          child: Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0.0,
              bottom: TabBar(
                controller: _tabCtrl,
                physics: NeverScrollableScrollPhysics(),
                labelColor: Colors.grey[900],
                unselectedLabelColor: Colors.grey[900],
                automaticIndicatorColorAdjustment: false,
                labelStyle: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'DMSans',
                ),
                unselectedLabelStyle: TextStyle(
                  fontSize: 16.0,
                  fontFamily: 'DMSans',
                ),
                indicator: _TabIndicator(color: Theme.of(context).primaryColor),
                tabs: [
                  Tab(text: 'Standard'),
                  Tab(text: 'Scientific'),
                ],
              ),
            ),
            body: TabBarView(
              controller: _tabCtrl,
              physics: NeverScrollableScrollPhysics(),
              children: [
                CalculatorScreen(),
                HistoryScreen(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _TabIndicator extends Decoration {
  final BoxPainter _painter;
  final Color? color;

  _TabIndicator({this.color}) : _painter = _TabIndicatorPainter(color: color);

  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) => _painter;
}

class _TabIndicatorPainter extends BoxPainter {
  final Paint _paint;
  final Color? color;

  _TabIndicatorPainter({required this.color})
      : _paint = Paint()
          ..color = color != null ? color : Colors.blue
          ..isAntiAlias = true;

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration cfg) {
    final double _xPos = offset.dx + cfg.size!.width / 2;

    canvas.drawRRect(
      RRect.fromRectAndCorners(
        Rect.fromLTRB(_xPos - 10, 40, _xPos + 10, 37),
        bottomLeft: const Radius.circular(5.0),
        bottomRight: const Radius.circular(5.0),
        topLeft: const Radius.circular(5.0),
        topRight: const Radius.circular(5.0),
      ),
      _paint,
    );
  }
}
