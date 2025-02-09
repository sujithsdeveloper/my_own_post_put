import 'package:flutter/material.dart';


class DummyScreenTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter DataTable Example'),
        ),
        body: DataTable(
          columns: [
            DataColumn(label: Text('ID')),
            DataColumn(label: Text('Name')),
            DataColumn(label: Text('Age')),
          ],
          rows: [
            DataRow(cells: [
              DataCell(Text('1')),
              DataCell(Text('Gokul')),
              DataCell(Text('25')),
            ]),
            DataRow(cells: [
              DataCell(Text('2')),
              DataCell(Text('Aarav')),
              DataCell(Text('30')),
            ]),
            DataRow(cells: [
              DataCell(Text('3')),
              DataCell(Text('Meera')),
              DataCell(Text('28')),
            ]),
          ],
        ),
      ),
    );
  }
}
