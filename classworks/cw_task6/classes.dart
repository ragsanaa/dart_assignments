abstract class Person {
  String name;
  String mail;
  Person({
    required this.name,
    required this.mail,
  });
}

class Employee extends Person {
  String position;
  String teamName;
  Employee({
    required super.name,
    required super.mail,
    required this.position,
    required this.teamName
  });
}

class Manager extends Person with ManagerFuncs{
  List<Employee> teams = [];

  Manager({required super.name, required super.mail});

  @override
  void addToTeam(Employee employee) {
    teams.add(employee);
  }

  @override
  void displayTeams() {
    teams.forEach((element) {print("Name: " + element.name + "\n\t" + "Position: " + element.position + "\n\tTeam Name:" + element.teamName);});
  }

  @override
  void displayManagerInfo() {
    print("Manager name: $name | Mail: $mail");
  }

}

mixin ManagerFuncs{
  void addToTeam(Employee employee);
  void displayTeams();
  void displayManagerInfo();
}

enum TeamName{
  TeamMars,
  TeamWinterfell,
  TeamCS
}
