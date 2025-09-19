import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'basket_state.dart';

class BasketCubit extends Cubit<BasketState> {
  BasketCubit() : super(BasketInitial());
}
