// import 'package:flutter/material.dart';
// import 'package:syncfusion_flutter_charts/charts.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         // This is the theme of your application.
//         //
//         // Try running your application with "flutter run". You'll see the
//         // application has a blue toolbar. Then, without quitting the app, try
//         // changing the primarySwatch below to Colors.green and then invoke
//         // "hot reload" (press "r" in the console where you ran "flutter run",
//         // or simply save your changes to "hot reload" in a Flutter IDE).
//         // Notice that the counter didn't reset back to zero; the application
//         // is not restarted.
//         primarySwatch: Colors.blue,
//       ),
//       home: MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }
//
// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key? key, required this.title}) : super(key: key);
//
//   // This widget is the home page of your application. It is stateful, meaning
//   // that it has a State object (defined below) that contains fields that affect
//   // how it looks.
//
//   // This class is the configuration for the state. It holds the values (in this
//   // case the title) provided by the parent (in this case the App widget) and
//   // used by the build method of the State. Fields in a Widget subclass are
//   // always marked "final".
//
//   final String title;
//
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   late List<GDPData> _chartData;
//   late TooltipBehavior _tooltipBehavior;
//
//   @override
//   void initState() {
//     _chartData = getChartData();
//     _tooltipBehavior = TooltipBehavior(enable: true);
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//
//     return SafeArea(
//         child: Scaffold(
//             appBar: AppBar(
//             title: Text('Stats')
//         ),
//             body: SfCircularChart(
//               title:
//               ChartTitle(text: 'Operator use and percentage'),
//               legend:
//               Legend(isVisible: true, overflowMode: LegendItemOverflowMode.wrap,
//               iconBorderWidth: 30),
//               tooltipBehavior: _tooltipBehavior,
//               series: <CircularSeries>[
//                 RadialBarSeries<GDPData, String>(
//                     dataSource: _chartData,
//                     xValueMapper: (GDPData data, _) => data.operator,
//                     yValueMapper: (GDPData data, _) => data.gdp,
//                     dataLabelSettings: DataLabelSettings(isVisible: true),
//                     enableTooltip: true,
//                     maximumValue: 40000)
//               ],
//             )));
//   }
//
//   List<GDPData> getChartData() {
//     final List<GDPData> chartData = [
//       GDPData('Addition', 1600),
//       GDPData('Subtraction', 2490),
//       GDPData('Multiplication', 2900),
//       GDPData('Division', 23050),
//     ];
//     return chartData;
//   }
// }
//
// class GDPData {
//   GDPData(this.operator, this.gdp);
//   final String operator;
//   final int gdp;
// }