abstract class FormSubmissionStatus {}

class InitialFormStatus extends FormSubmissionStatus {}

class FormSubmitting extends FormSubmissionStatus {}

class SubmissionSuccess extends FormSubmissionStatus {}

class SubmissionFailed extends FormSubmissionStatus {
  final String error;
  SubmissionFailed({required this.error});
}
