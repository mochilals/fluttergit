import 'package:flutter/material.dart';

class tanggal extends StatefulWidget {
  const tanggal({Key? key, this.title = 'Default Title'}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<tanggal> {
  DateTime selectedDate = DateTime.now();
  Future<Null> _selectedDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2016, 8),
        lastDate: DateTime(2101));

    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text("${selectedDate.toLocal()}".split(" ")[0]),
          SizedBox(
            height: 20.0,
          ),
          ElevatedButton(
            onPressed: () => {
              _selectedDate(context),
              print(selectedDate.day + selectedDate.month + selectedDate.year)
            },
            child: Text('Pilih Tanggal'),
          )
        ],
      ),
    );
  }
}
