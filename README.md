# Silent Failure in Async Dart Function

This example demonstrates a common error in Dart: silently catching exceptions in asynchronous functions.  The `fetchData` function catches exceptions but doesn't re-throw or otherwise indicate failure, making it difficult to diagnose problems.  The solution provides a better way to handle errors using `Future.error`.