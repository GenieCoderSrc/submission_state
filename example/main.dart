import 'package:submission_state/submission_state.dart';

/// Example BLoC extending BaseBloc
class MyBloc extends BaseBloc {
  MyBloc() {
    print('Bloc initialized');
  }

  void fetchData() {
    emit(DataLoading());
    try {
      // Simulate data fetching
      final data = ['Item1', 'Item2', 'Item3'];
      print('Data fetched: $data');
      emit(DataLoaded());
    } catch (e) {
      emit(LoadingFailed(e.toString()));
    }
  }

  @override
  void dispose() {
    print('Bloc disposed');
  }

  void emit(BaseState state) {
    print('State emitted: ${state.runtimeType}');
  }
}

/// Example Form BLoC
class MyFormBloc extends BaseBloc {
  void submitForm(String name) {
    emit(FormSubmitting());
    try {
      if (name.isEmpty) throw Exception('Name cannot be empty');
      // Simulate submission
      print('Form submitted with name: $name');
      emit(SubmissionSuccess());
    } catch (e) {
      emit(SubmissionFailed(e.toString()));
    }
  }

  @override
  void dispose() {
    print('FormBloc disposed');
  }

  void emit(FormSubmissionState state) {
    print('Form state emitted: ${state.runtimeType}');
  }
}

void main() {
  final myBloc = MyBloc();
  myBloc.fetchData();
  myBloc.dispose();

  final myFormBloc = MyFormBloc();
  myFormBloc.submitForm('Shohidul');
  myFormBloc.submitForm('');
  myFormBloc.dispose();
}
