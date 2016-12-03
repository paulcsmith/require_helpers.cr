class RequirePath
  property :absolute_dir_to_calling_file
  property :path_to_require
  property :current_dir

  def initialize(@absolute_dir_to_calling_file : String, @path_to_require : String, @current_dir = Dir.current)
  end

  def path
    %(require "#{directories_to_go_back_to}#{path_to_require}")
  end

  private def directories_to_go_back_to
    path_to_current_file_from_project_root
      .split("/")
      .reject { |dir| dir.strip == "" }
      .map { |_dir| "../" }
      .join("")
  end

  private def path_to_current_file_from_project_root
    absolute_dir_to_calling_file.gsub(current_dir, "")
  end
end
