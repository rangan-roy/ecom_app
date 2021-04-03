import 'package:ecom_app/widgets/search/search_result.dart';
import 'package:flutter/material.dart';

class Search extends SearchDelegate<String> {
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
    } else return SearchResult(query);
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return SizedBox();
  }
}