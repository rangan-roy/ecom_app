import 'package:ecom_app/widgets/search_page_widgets/search_result_widget.dart';
import 'package:flutter/material.dart';

class SearchPage extends SearchDelegate<String> {
  @override 
  List<Widget> buildActions(BuildContext context) {
    return <Widget>[
      IconButton(
        icon: Icon(Icons.cancel),
        onPressed: () => query = '',
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () => Navigator.of(context).pop(),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    if(query.isEmpty) {
      return SizedBox();
    } else return SearchResultWidget(query);
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return SizedBox();
  }
}