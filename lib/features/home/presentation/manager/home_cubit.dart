import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());

  static HomeCubit get(context)=>BlocProvider.of(context);
  ItemScrollController itemScrollController = ItemScrollController();
  ItemScrollController itemWebScrollController = ItemScrollController();
  void scrollToItem(int index){
    itemScrollController.scrollTo(index: index, duration: const Duration(milliseconds: 1000));
  }
  void scrollToItemWeb(int index){
    itemWebScrollController.scrollTo(index: index, duration: const Duration(milliseconds: 1000));
  }
}
