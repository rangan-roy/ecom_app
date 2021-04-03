import 'package:ecom_app/models/filter_info_model.dart';
import 'package:ecom_app/widgets/filter/title_and_text_fields.dart';
import 'package:ecom_app/widgets/filter/title_with_column.dart';
import 'package:flutter/material.dart';

class Filter extends StatefulWidget {
  final List<FilterInfoModel> _brandFilterInfoModels;
  final List<FilterInfoModel> _colorFilterInfoModels;
  final List<int> _priceRange;
  final List<int> _warrantyRange;

  Filter(this._brandFilterInfoModels, 
    this._colorFilterInfoModels, this._priceRange, this._warrantyRange);

  @override
  _FilterState createState() => _FilterState();
}

class _FilterState extends State<Filter> {
  @override
  Widget build(BuildContext context) {
    final List<CheckboxListTile> _brandCheckboxes = [];
    final List<CheckboxListTile> _colorCheckboxes = [];

    // initialize checkboxes variables
    initCheckboxes(_brandCheckboxes, widget._brandFilterInfoModels);
    initCheckboxes(_colorCheckboxes, widget._colorFilterInfoModels);

    // text field controllers
    final TextEditingController _minPriceController = TextEditingController(
      text: widget._priceRange[0].toString()
    );
    final TextEditingController _maxPriceController = TextEditingController(
      text: widget._priceRange[1].toString()
    );
    final TextEditingController _minWarrantyController = TextEditingController(
      text: widget._warrantyRange[0].toString()
    );
    final TextEditingController _maxWarrantyController = TextEditingController(
      text: widget._warrantyRange[1].toString()
    );

    return Card(
      child: ListView(
        padding: EdgeInsets.all(15),
        children: [
          // brand checkboxes
          TitleWithColumn('Brands', _brandCheckboxes),
          SizedBox(height: 10),

          // color checkboxes
          TitleWithColumn('Colors', _colorCheckboxes),
          SizedBox(height: 10),

          // price range text fields
          TitleAndTextFields('Price Range (Taka)', _minPriceController, 
            _maxPriceController, widget._priceRange),
          SizedBox(height: 20),

          // warranty range text fields
          TitleAndTextFields('Warranty Range (Month)', 
            _minWarrantyController, _maxWarrantyController,
            widget._warrantyRange),
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
          title: Text('${filterInfoModels[i].name} (${filterInfoModels[i].count
            } Products)'),
          controlAffinity: ListTileControlAffinity.leading,
          onChanged: (bool value) => setState(() {
            filterInfoModels[i].isChecked = value;
          }),
        )
      );
    }
  }
}