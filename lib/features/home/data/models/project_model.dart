class ProjectModel{
  final String imagePath;
  final String description;
  final String title;
  final bool isAndroid;
  final String? playStore;
  final String? appStore;
  final String? github;

  ProjectModel({
     required this.title,
     required this.imagePath,
     required this.description,
     this.isAndroid = false,
    this.appStore,
    this.playStore,
    this.github
});
}