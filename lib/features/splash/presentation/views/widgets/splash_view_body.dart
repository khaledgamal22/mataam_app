import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mataam_app/constant.dart';
import 'package:mataam_app/features/splash/data/repos/splash_repo_implementation.dart';
import 'package:mataam_app/features/splash/presentation/view_models/login_cubit/login_cubit.dart';
import 'package:mataam_app/features/splash/presentation/view_models/register_cubit/register_cubit.dart';
import 'package:mataam_app/core/utilits/widgets/custom_button.dart';
import 'package:mataam_app/features/splash/presentation/views/widgets/login_sheet.dart';
import 'package:mataam_app/features/splash/presentation/views/widgets/register_sheet.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/logo.png',
            height: MediaQuery.of(context).size.height * 0.3,
          ),
          const SizedBox(
            height: 50,
          ),
          const Text(
            'Welcome',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'By enjoying Foodmedia Services',
          ),
          const Text('Please Register first'),
          const SizedBox(
            height: 70,
          ),
          CustomButton(
            width: 256,
            height: 55,
            title: const Text('Create Account',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
            ),
            color: kPrimaryColor,
            onTap: () {
              showModalBottomSheet(
                  backgroundColor: Colors.white,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(36),
                          topRight: Radius.circular(36))),
                  isScrollControlled: true,
                  context: context,
                  builder: (context) {
                    return SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 24),
                        child: BlocProvider(
                          create: (context) => RegisterCubit(
                            SplashRepoImplementation(),
                          ),
                          child: RegisterSheet(),
                        ),
                      ),
                    );
                  });
            },
          ),
          const SizedBox(
            height: 10,
          ),
          CustomButton(
            width: 256,
            height: 55,
            title: const Text('Login',
            style: TextStyle(
              color: Color(0xff10B981),
              fontSize: 20,
            ),
            ),
            color: const Color(0xffD1FAE5),
            onTap: () {
              showModalBottomSheet(
                  backgroundColor: Colors.white,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(36),
                          topRight: Radius.circular(36))),
                  isScrollControlled: true,
                  context: context,
                  builder: (context) {
                    return SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 24),
                        child: BlocProvider(
                          create: (context) => LoginCubit(SplashRepoImplementation(),),
                          child: const LoginSheet(),
                        ),
                      ),
                    ); 
                    },
                    );
            },
          ),
        ],
      ),
    );
  }
}

