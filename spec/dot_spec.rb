require "spec_helper"
require "securerandom"
require "tmpdir"
require "tempfile"

RSpec.describe "dot" do
  it "works" do
    tempdir = Dir.mktmpdir
    tempfile = Tempfile.create(SecureRandom.hex, tempdir)
    homefile = "#{Dir.home}/#{File.basename(tempfile)}"

    Dir.chdir(tempdir) do
      `git init && git add . && git commit -m "test from dorian-dot"`
    end

    `bin/dot #{tempdir}`

    expect(File.symlink?(homefile)).to eq(true)
    expect(File.readlink(homefile)).to eq(tempfile.path)
  ensure
    File.delete(homefile) rescue nil
    File.delete(tempfile) rescue nil
    Dir.delete(tempdir) rescue nil
  end
end
