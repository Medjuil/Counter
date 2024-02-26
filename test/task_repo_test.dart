import "package:flutter_test/flutter_test.dart";
import "package:http/http.dart";
import "package:spyier/task_repo.dart";
import "package:mocktail/mocktail.dart";
import 'package:http/http.dart' as http;

class MockHttpClient extends Mock implements http.Client {}

void main() {
  late MockHttpClient mockClient;
  late TaskRepository taskRepository;
  setUp(() {
    mockClient = MockHttpClient();
    taskRepository = TaskRepository(mockClient);
  });
  test(
      'Given task repository is instantiated, when fetchTask is call and return is 200, then a task object should be returned',
      () async {
    when(() => mockClient
            .get(Uri.parse('https://jsonplaceholder.typicode.com/todos')))
        .thenAnswer(
            (invocation) => Future.delayed(Duration.zero, () => Response('''[
              {
        "userId": 1,
        "id": 1,
        "title": "delectus aut autem",
        "completed": false
    }
  ]
''', 200)));
    Tasks tasks = await taskRepository.fetchTasks();
    expect(tasks, isA<Tasks>());
    verify(() => mockClient.get(
        Uri.parse('https://jsonplaceholder.typicode.com/todos'))).called(1);
  });
  test(
      'Given task repository is instantiated, when fetchTask is call and return is 404, then an Exception should be thrown',
      () async {
    when(() => mockClient
            .get(Uri.parse('https://jsonplaceholder.typicode.com/todos')))
        .thenAnswer(
            (invocation) => Future.delayed(Duration.zero, () => Response('''[
              {
        "userId": 1,
        "id": 1,
        "title": "delectus aut autem",
        "completed": false
    }
  ]
''', 404)));
    expect(taskRepository.fetchTasks(), throwsException);
  });
}
