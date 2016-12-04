require "../spec_helper"
require_src "require_helpers/require_path"

describe RequirePath do
  it "returns the right path when called from a spec folder" do
    current_dir = "/Users/someone/my-project"

    RequirePath.new(
      "#{current_dir}/spec",
      "src/my-file",
      current_dir: current_dir
    ).path.should eq %(require "../src/my-file")
  end

  it "returns the right path when called from a src folder" do
    current_dir = "/Users/someone/my-project"

    RequirePath.new(
      "#{current_dir}/src/deep",
      "src/somewhere/my-file",
      current_dir: current_dir
    ).path.should eq %(require "../../src/somewhere/my-file")
  end
end
