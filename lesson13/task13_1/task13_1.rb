filename = ARGV[0]

global_path = File.dirname(__FILE__)

file_path = global_path + "/data/#{filename}"

if File.exist?(file_path)

  f = File.open(file_path, 'r')
  lines = f.readlines
  f.close

  puts lines.last(5)

else
  puts "No file!"
end


