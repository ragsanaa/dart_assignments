import 'classes.dart';

void main(List<String> args) {
  Employee employeeOne = Employee(name: "Gerda", mail: "gerda@mailinator.com", position: "CS", teamName: TeamName.TeamCS.name);
  Employee employeeTwo = Employee(name: "Jane", mail: "jane@mailinator.com", position: "Account", teamName: TeamName.TeamWinterfell.name);

  Manager manager = Manager(name: "Alex", mail: "alex@mailinator.com");

  manager.addToTeam(employeeOne);
  manager.addToTeam(employeeTwo);

  manager.displayManagerInfo();
  manager.displayTeams();
}
