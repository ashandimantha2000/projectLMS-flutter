import 'package:http/http.dart' as http;

Future<void> sendSignInData(String username, String password) async {
  // API endpoint URL
  var url = Uri.parse('http://localhost/api_lms/student/signin.php');


  // Create a map with the data to send
  var data = {
    'username': username,
    'password': password,
  };

  // Send a POST request to the API
  var response = await http.post(url, body: data);

  // Handle the response
  if (response.statusCode == 200) {
    // Request successful, do something with the response
    print('Sign-in successful');
    print(response.body);
  } else {
    // Request failed, handle the error
    print('Error during sign-in');
    print(response.statusCode);
  }
}


