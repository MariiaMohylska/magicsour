import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:magicsour/blocs/bloc_factory.dart';
import 'package:magicsour/blocs/search/search_bloc.dart';
import 'package:magicsour/ui_kit/search/search_content.dart';
import 'package:magicsour/ui_kit/search/search_tabs.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  SearchScreenState createState() => SearchScreenState();
}

class SearchScreenState extends State<SearchScreen> {
  bool _isGenerating = true;
  final SearchBloc _searchBloc = BlocFactory.searchBloc;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchBloc, SearchState>(
        bloc: _searchBloc,
        builder: (context, state) {
          _isGenerating = state is SearchGenerateState;

          return SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SearchTabs(
                  isGenerating: _isGenerating,
                  generatingOnPressed: () {
                    setState(() {
                      if(!_isGenerating) {
                        _searchBloc.add(const SearchEvent.changeToGenerate());
                      }
                    });
                    },
                  searchOnPressed: () {
                    setState(() {
                      if(_isGenerating) {
                        _searchBloc.add(const SearchEvent.changeToSearch());
                      }
                    });
                  },
                ),
                SearchContent(
                  isGenerating: _isGenerating,
                  searchBloc: _searchBloc,
                  onSearch: (searchDetails) {
                    _searchBloc.add(SearchEvent.search(details: searchDetails));
                  },
                ),
              ],
            ),
          );
        });
  }
}
