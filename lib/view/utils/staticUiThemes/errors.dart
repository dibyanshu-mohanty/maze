class NullAuthException implements Exception{
  String nullAuthMessage()=> 'User Not Found';
}

class ApiStatusException implements Exception{
  String apiStatusMessage()=> 'Network Error';
}