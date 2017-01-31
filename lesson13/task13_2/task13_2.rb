file_name = ARGV[0]

current_path = File.dirname(__FILE__)

file_path = current_path + "/data/#{file_name}"

if file_name != nil && File.exist?(file_path)
  f = File.open(file_path, 'r')
  file = f.readlines
  f.close

  puts "Open file: #{file_name}"
  puts "Number of lines: #{file.length.to_s}"

  i = 0
  empty_lines = 0

  while i < file.count
    if file[i].strip.empty?
      empty_lines += 1
    end
    i += 1
  end

  puts "Empty lines: #{empty_lines}"

else
  puts "No file!"
end