// import 'package:connectfoodfrontend/pages/splash.dart';
import 'package:connectfoodfrontend/components/page_state.dart';
import 'package:connectfoodfrontend/pages/welcome.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:connectfoodfrontend/bloc/auth_bloc.dart';

void main() {
  runApp(
    BlocProvider(
      create: (context) =>AuthBloc(apiUrl: 'http://blogapp.tryasp.net'),
      child: MaterialApp(
        home: Welcome(),
      ),
    ),
  );
}
