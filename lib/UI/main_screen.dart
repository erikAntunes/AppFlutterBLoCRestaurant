import 'package:flutter/cupertino.dart';
import 'package:restaurant_finder/BLoC/bloc_provider.dart';
import 'package:restaurant_finder/BLoC/location_bloc.dart';
import '../DataLayer/location.dart';
import 'location_screen.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<Location>(
      // 1
      stream: BlocProvider.of<LocationBloc>(context).locationStream,
      builder: (context, snapshot) {
        final location = snapshot.data;

        // 2
        if (location == null) {
          return LocationScreen();
        }

        // This will be changed this later
        return Container();
      },
    );
  }
}
