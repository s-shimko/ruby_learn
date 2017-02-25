current_path = File.dirname(__FILE__)

file_path_foreheads = current_path + "/data/foreheads.txt"
file_path_eyes = current_path + "/data/eyes.txt"
file_path_noses = current_path + "/data/noses.txt"
file_path_mouths = current_path + "/data/mouths.txt"

if file_path_foreheads != nil && File.exist?(file_path_foreheads) &&
    file_path_eyes != nil && File.exist?(file_path_eyes) &&
    file_path_noses != nil && File.exist?(file_path_noses) &&
    file_path_mouths != nil && File.exist?(file_path_mouths)

  f_foreheads = File.open(file_path_foreheads, 'r')
  f_eyes = File.open(file_path_eyes, 'r')
  f_noses = File.open(file_path_noses, 'r')
  f_mouths = File.open(file_path_mouths, 'r')

  foreheads = f_foreheads.readlines
  eyes = f_eyes.readlines
  noses = f_noses.readlines
  mouths = f_mouths.readlines

  f_foreheads.close
  f_eyes.close
  f_noses.close
  f_mouths.close

  time = Time.now
  date_time = time.strftime("%d-%m-%Y_%H:%M:%S")
  face_file = File.new(current_path + "/" + "face_#{date_time}.txt", "a")

  all_lines = []
  all_lines.push(foreheads.sample, eyes.sample, noses.sample, mouths.sample)
  puts all_lines

  for item in all_lines do
    face_file.puts(item)
  end

  face_file.close

else
  puts "No file!"
end
