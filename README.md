# submission_state

A Dart/Flutter package that provides abstract base classes and commonly used states for BLoC (Business Logic Component) and form submissions, following SOLID principles and leveraging Equatable for value equality.

---

## Features

* `BaseBloc`: Abstract base class for all BLoC implementations.
* `BaseState`: Common BLoC states like `Initial`, `DataLoading`, `Success`, `LoadingFailed`.
* `FormSubmissionState`: Specialized states for form submissions including `FormSubmitting`, `SubmissionSuccess`, and `SubmissionFailed`.
* Built-in support for value equality using Equatable.

---

## Installation

Add this package to your `pubspec.yaml`:

```yaml
dependencies:
  submission_state: <latest_version>
```

Then import it in your Dart files:

```dart
import 'package:submission_state/submission_state.dart';
```

---

## Usage

### Creating a BLoC

```dart
class MyBloc extends BaseBloc {
  @override
  void dispose() {
    // Close streams/controllers here
  }
}
```

### Using BaseState

```dart
class MyState extends BaseState {}

// Emitting a state
emit(DataLoading());
emit(Success());
emit(LoadingFailed('An error occurred'));
```

### Using FormSubmissionState

```dart
class MyFormBloc extends BaseBloc {
  void submitForm() {
    emit(FormSubmitting());
    try {
      // Process submission
      emit(SubmissionSuccess());
    } catch (e) {
      emit(SubmissionFailed(e.toString()));
    }
  }

  @override
  void dispose() {}
}
```

---

## Benefits

* Simplifies BLoC implementation.
* Reduces boilerplate for state management.
* Makes form submission handling straightforward.
* Fully compatible with Equatable for clean state comparisons.

---

## Contributions

Feel free to open issues or pull requests.

## License

© MIT License. Developed with ❤️ by [Shohidul Islam](https://github.com/ShohidulProgrammer)
# submission_state
