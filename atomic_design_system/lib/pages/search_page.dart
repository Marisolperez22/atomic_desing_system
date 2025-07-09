import 'package:flutter/material.dart';

import '../molecules/custom_search_bar.dart';
import '../templates/basic_template_layout.dart';

/// A page that provides a search interface for products or content.
///
/// This widget renders a search bar with a button, allowing the user to input
/// text and trigger filtering actions. It uses a `BasicLayoutTemplate` as its
/// layout container.
///
/// The search bar interactions are handled via [onSearchChanged] and [onSearchPressed]
/// callbacks passed in from the parent.
class SearchPage extends StatefulWidget {
  /// Callback triggered when the search button is pressed.
  final void Function() onSearchPressed;

  /// Callback triggered whenever the search text changes.
  final void Function(String) onSearchChanged;

  const SearchPage({
    super.key,
    required this.onSearchPressed,
    required this.onSearchChanged,
  });

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return BasicLayoutTemplate(
      title: 'Buscar',
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: CustomSearchBar(
              hintText: 'Buscar productos...',
              buttonText: 'Filtrar',
              onSearchChanged: widget.onSearchChanged,
              onSearchPressed: widget.onSearchPressed,
            ),
          ),
        ],
      ),
    );
  }
}
