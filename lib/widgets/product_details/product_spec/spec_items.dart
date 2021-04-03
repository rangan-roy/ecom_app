import 'package:flutter/material.dart';

class SpecItems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade100),
        borderRadius: BorderRadius.circular(3),
      ),
      child: Table(
        border: TableBorder.symmetric(
          inside: BorderSide(color: Colors.grey.shade100),
        ),
        children: [
          getTableRow('Brand', 'M & H'),
          getTableRow('Brand', 'M & H'),
          getTableRow('Brand', 'M & H'),
        ],
      ),
    );
  }

  TableRow getTableRow(String specName, String specValue) {
    return TableRow(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(specName),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(specValue),
        ),
      ],
    );
  }
}