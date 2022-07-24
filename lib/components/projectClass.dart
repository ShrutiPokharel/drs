import 'package:drs/components/userClass.dart';

class ProjectClass {
  ProjectClass(
      {required this.projectName,
      required this.projectTaskTitle,
      this.projectTaskDescription = '',
      required this.projectCreatedDate,
      required this.projectParticipants,
      required this.projectAssignedDate});
  String projectName, projectTaskTitle;
  String projectTaskDescription;
  DateTime projectCreatedDate, projectAssignedDate;
  final List<User> projectParticipants;

  static ProjectClass empty() => ProjectClass(
      projectName: '',
      projectTaskTitle: '',
      projectCreatedDate: DateTime.now(),
      projectParticipants: [],
      projectAssignedDate: DateTime.now());
}
