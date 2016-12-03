require "./require_path"

puts RequirePath
  .new(absolute_dir_to_calling_file: ARGV[1], path_to_require: ARGV[0])
  .path
