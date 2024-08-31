class ApiErrors {
  static const String badRequestError =
      "Bad Request: The server could not understand your request.";
  static const String noContent =
      "No Content: The request was successful but no content was returned.";
  static const String forbiddenError =
      "Forbidden: You do not have permission to access this resource.";
  static const String unauthorizedError =
      "Unauthorized: Please log in to access this resource.";
  static const String notFoundError =
      "Not Found: The requested resource could not be found.";
  static const String conflictError =
      "Conflict: There was a conflict with the current state of the resource.";
  static const String internalServerError =
      "Server Error: Something went wrong on the server.";
  static const String unknownError =
      "Unknown Error: An unexpected error occurred.";
  static const String timeoutError =
      "Timeout: The request took too long to complete.";
  static const String defaultError =
      "Error: An error occurred. Please try again.";
  static const String cacheError =
      "Cache Error: Unable to retrieve data from the cache.";
  static const String noInternetError =
      "No Internet: Please check your internet connection.";
  static const String loadingMessage =
      "Loading: Please wait while the content is loading.";
  static const String retryAgainMessage = "Retry: Please try again.";
  static const String ok = "OK: The operation was successful.";
}
