use "files"

actor Main
  var path: String = "test.txt"

  new create(env: Env) =>
    try
      var file = File.open(FilePath.create(env.root, path))
      var message = file.read_string(1024)
      env.out.print(message)
    else
      env.out.print("Failed to open file: " + path)
    end
