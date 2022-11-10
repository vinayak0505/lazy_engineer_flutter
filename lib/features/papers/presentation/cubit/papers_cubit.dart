import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'papers_state.dart';

class PapersCubit extends Cubit<PapersState> {
  PapersCubit() : super(PapersInitial());
}
