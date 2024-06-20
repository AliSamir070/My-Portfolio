import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portfolio/features/home/presentation/manager/home_cubit.dart';

import 'core/DI/dependencyinjection.dart';
import 'my_app.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  configureDependencies();
  await ScreenUtil.ensureScreenSize();
  runApp(BlocProvider(
      create: (_)=>HomeCubit(),
      child: const MyApp()));
}



