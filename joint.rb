def get_directory()
  print 'Path to directory: '
  dir_path = gets.chomp.to_s
  dir_path = dir_path + '\\' if not dir_path.end_with? '\\'
  puts "You have selected #{dir_path}"
  dir_path
end

def read_all_files(target_dir)
  result = ''
  Dir.foreach(target_dir) do |f|
    file_path = target_dir + f
    puts file_path
    result += File.readlines(file_path).join() if File.file? file_path
  end
  result
end

def get_output_file (target_dir)
  print 'Name of output file: '
  target_dir + gets.chomp.to_s
end

def write_text_to_file(output_file, text)
  File.open(output_file, 'w') { |file| file.write(text) }
  puts "Files joined into: #{output_file}"
end

directory = get_directory
all_text = read_all_files directory
output_file = get_output_file directory
write_text_to_file(output_file, all_text)













