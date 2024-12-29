import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pet_flutter/list/bloc/list_page_bloc.dart';
import 'package:pet_flutter/list/list_widget.dart';
import 'package:provider/provider.dart';

class ListPage extends StatelessWidget {
  const ListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        BlocProvider(
          create: (context) => ListPageBloc()..add(Initialize()),
        ),
      ],
      child: const ListWidget(),
    );
  }
}
