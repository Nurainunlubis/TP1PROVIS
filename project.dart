// Kelas Person sebagai kelas dasar untuk Client dan Resource
class Person {
  String name;

  Person(this.name);
}

// Kelas Client yang mewarisi dari kelas Person
class Client extends Person {
  String email;

  Client(String name, this.email) : super(name);
}

// Kelas Resource yang mewarisi dari kelas Person
class Resource extends Person {
  String role;

  Resource(String name, this.role) : super(name);
}

// Kelas Team yang mewakili tim dalam proyek
class Team {
  String name;
  List<Resource> resources = [];

  Team(this.name);

  void addResource(Resource resource) {
    resources.add(resource);
  }
}

// Kelas Task yang mewakili sebuah tugas dalam proyek
class Task {
  String name;
  int duration;
  bool isCompleted = false;

  Task(this.name, this.duration);

  Future<void> completeTask(List<Resource> resources) async {
    print('Memulai tugas $name...');
    print('Tugas $name dikerjakan oleh:');
    for (Resource resource in resources) {
      print('- ${resource.name} (${resource.role})');
    }
    await Future.delayed(Duration(seconds: duration));
    isCompleted = true;
    print('Tugas $name selesai!');
  }
}

// Kelas Project yang mewakili sebuah proyek
class Project {
  String name;
  DateTime dueDate;
  List<Task> tasks = [];
  Team team;
  Client client;

  Project(this.name, this.dueDate, this.team, this.client);

  void addTask(Task task) {
    tasks.add(task);
  }

  Future<void> completeProject() async {
    print('Memulai proyek $name untuk klien ${client.name}...');
    for (Task task in tasks) {
      await task.completeTask(team.resources);
    }
    print('Proyek $name selesai!');
  }
}

void main() async {
  Team myTeam = Team('Tim Pengembang');
  myTeam.addResource(Resource('Ainun', 'Programmer'));
  myTeam.addResource(Resource('Putri', 'Designer'));

  Client myClient = Client('Naura Shakila', 'naura56@gmail.com');

  Project myProject = Project('Aplikasi Mobile', DateTime(2024, 6, 1), myTeam, myClient);

  myProject.addTask(Task('Desain UI', 5));
  myProject.addTask(Task('Implementasi Backend', 10));
  myProject.addTask(Task('Pengujian', 3));

  await myProject.completeProject();
}
