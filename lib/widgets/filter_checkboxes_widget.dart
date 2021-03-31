import 'package:ecom_app/models/filter_info_model.dart';
import 'package:flutter/material.dart';

class FilterCheckboxesWidget extends StatefulWidget {
  final List<FilterInfoModel> _brandFilterInfoModels;
  final List<FilterInfoModel> _colorFilterInfoModels;
  final List<int> _priceRange;
  final List<int> _warrantyRange;

  FilterCheckboxesWidget(this._brandFilterInfoModels, 
    this._colorFilterInfoModels, this._priceRange, this._warrantyRange);

  @override
  _FilterCheckboxesWidgetState createState() => _FilterCheckboxesWidgetState();
}

class _FilterCheckboxesWidgetState extends State<FilterCheckboxesWidget> {
  @override
  Widget build(BuildContext context) {
    final List<CheckboxListTile> _brandCheckboxes = [];
    final List<CheckboxListTile> _colorCheckboxes = [];

    initCheckboxes(_brandCheckboxes, widget._brandFilterInfoModels);
    initCheckboxes(_colorCheckboxes, widget._colorFilterInfoModels);

    return Card(
      child: ListView(
        padding: EdgeInsets.all(15),
        children: [
          // brand checkboxes
          Text(
            'Brands',
            style: Theme.of(context).textTheme.headline6,  
          ),
          Divider(),
          Column(children: _brandCheckboxes),
          SizedBox(height: 10),

          // color checkboxes
          Text(
            'Colors',
            style: Theme.of(context).textTheme.headline6,  
          ),
          Divider(),
          Column(children: _colorCheckboxes),
        ],
      ),
    );
  }

  void initCheckboxes(List<CheckboxListTile> checkboxes, List<FilterInfoModel> 
    filterInfoModels) {
    final int modelCount = filterInfoModels.length;

    for(var i = 0; i < modelCount; i++) {
      checkboxes.add(
        CheckboxListTile(
          value: filterInfoModels[i].isChecked,
          title: Text(filterInfoModels[i].name),
          onChanged: (bool value) => setState(() {
            filterInfoModels[i].isChecked = value;
          }),
        )
      );
    }
  }
}