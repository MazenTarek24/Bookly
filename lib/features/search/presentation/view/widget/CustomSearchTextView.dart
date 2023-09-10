import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../viewmodel/search_cubit.dart';

class CustomSearchTextField extends StatelessWidget {

  TextEditingController searchController = TextEditingController();

  CustomSearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    final searchCubit = BlocProvider.of<SearchCubit>(context);

    return TextField(
      controller: searchController,
      onChanged: (value) {
        print("Search query: $value");
        // Add this line to debug
        if(value.isNotEmpty && value !=null) {
          searchCubit.getSearchBooks(value);
        }else{

        }
      },
      decoration: InputDecoration(
          enabledBorder: buildOutlineInputBorder(),
          focusedBorder: buildOutlineInputBorder(),
          hintText: "Search",
          suffixIcon: IconButton(
              onPressed: () {
                searchCubit.getSearchBooks(searchController.text);
              },
              icon: const Icon(
                FontAwesomeIcons.magnifyingGlass,
                size: 22,
              ))),
    );
  }
}

OutlineInputBorder buildOutlineInputBorder() {
  return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(
          color: Colors.white
      )
  );
}