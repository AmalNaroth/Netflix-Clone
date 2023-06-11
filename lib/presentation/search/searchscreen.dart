import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/domain/search/search.dart';
import 'package:netflix/domain/search/search_functions.dart';
import 'package:netflix/notifier/valunotifier.dart';
import 'package:netflix/presentation/search/widgets/search_idle.dart';
import 'package:netflix/presentation/search/widgets/search_result.dart';

TextEditingController searchControllor = TextEditingController();

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            CupertinoSearchTextField(
              backgroundColor: Colors.grey.withOpacity(.5),
              prefixIcon: const Icon(
                CupertinoIcons.search,
                color: Colors.grey,
              ),
              suffixIcon: const Icon(
                CupertinoIcons.xmark_circle_fill,
                color: Colors.grey,
              ),
              style: const TextStyle(color: Colors.white),
              controller: searchControllor,
              onChanged: (value) {
                getimageSearchGrid(value.trim());
                 searchScreenNotifier.notifyListeners();
              },
            ),
            SizedBoxH10,
            ValueListenableBuilder(
              valueListenable: searchScreenNotifier,
              builder: (BuildContext context,List<Result> valueList, Widget? child) {
                return  Expanded( child:(searchControllor.text.trim().isEmpty) ? SearchIdleWidget() : searchScreenNotifier.value.isNotEmpty ?
                SearchResultWidget(data: valueList,):Center(child: Text("No data found"),));
              },
            )
          ],
        ),
      )),
    );
  }
}
