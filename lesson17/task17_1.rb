string =
    %{"Hello, world!"
"Good bye!"
}

file_path = File.dirname(__FILE__)

file = File.new(file_path + "/file.txt", "a")
file.puts(string)
file.close