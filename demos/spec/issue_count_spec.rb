require 'json'

basedir=File.expand_path("../", __dir__)

describe "issue_count" do
  it "runs the CLI" do
    result = `bmx`
    expect($?.exitstatus).to eq(0)
    expect(result).to_not be_nil
  end

  it "runs the script" do
    result = `#{basedir}/issue_count`
    expect($?.exitstatus).to eq(0)
    expect(result).to_not be_nil
  end
end
