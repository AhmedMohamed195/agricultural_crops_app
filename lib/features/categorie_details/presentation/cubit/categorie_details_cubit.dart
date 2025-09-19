import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'categorie_details_state.dart';

class CategorieDetailsCubit extends Cubit<CategorieDetailsState> {
  CategorieDetailsCubit() : super(CategorieDetailsInitial());
}
