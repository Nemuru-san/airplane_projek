import 'package:airplane_projek/cubit/auth_cubit.dart';
import 'package:airplane_projek/cubit/page_cubit.dart';
import 'package:airplane_projek/ui/widgets/costumeButton.dart';
import 'package:flutter/material.dart';
import '../../shared/thame.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class settingPage extends StatelessWidget {
  const settingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        // TODO: implement listener
        if (state is AuthFailed) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              backgroundColor: ktextColorRed,
              content: Text(state.error),
            ),
          );
        } else if (state is AuthInitial) {
          context.read<PageCubit>().setPage(0);

          Navigator.pushNamedAndRemoveUntil(
              context, '/sign-in', (route) => false);
        }
      },
      builder: (context, state) {
        if (state is AuthLoading) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }

        return Center(
            child: costumeButton(
          title: 'Sign Out',
          onPressed: () {
            context.read<AuthCubit>().signOut();
          },
          width: 220,
        ));
      },
    );
  }
}
