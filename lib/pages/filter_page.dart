import 'package:ecom_app/models/filter_info_model.dart';
import 'package:ecom_app/widgets/filter_page_widgets/filter_title_with_text_fields_widget.dart';
import 'package:ecom_app/widgets/filter_page_widgets/title_with_column_widget.dart';
import 'package:flutter/material.dart';

class FilterPage extends StatefulWidget {
  final List<FilterInfoModel> _brandFilterInfoModels;
  final List<FilterInfoModel> _colorFilterInfoModels;
  final List<int> _priceRange;
  final List<int> _warrantyRange;

  FilterPage(this._brandFilterInfoModels, 
    this._colorFilterInfoModels, this._priceRange, this._warrantyRange);

  @override
  _FilterPageState createState() => _FilterPageState();
}

class _FilterPageState extends State<FilterPage> {
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
          TitleWithColumnWidget('Brands', _brandCheckboxes),
          SizedBox(height: 10),

          // color checkboxes
          TitleWithColumnWidget('Colors', _colorCheckboxes),
          SizedBox(height: 10),

          // price range text fields
          FilterTitleWithTextFields('Price Range (Taka)', _minPriceController, 
            _maxPriceController, widget._priceRange),
          SizedBox(height: 20),

          // warranty range text fields
          FilterTitleWithTextFields('Warranty Range (Month)', 
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
          title: Text(filterInfoModels[i].name),
          controlAffinity: ListTileControlAffinity.leading,
          onChanged: (bool value) => setState(() {
            filterInfoModels[i].isChecked = value;
          }),
        )
      );
    }
  }
}