# frozen_string_literal: true

require "spec_helper"
require "securerandom"
require "tmpdir"
require "tempfile"
require "fileutils"

RSpec.describe "dot" do
  it "works" do
    tempdir = Dir.mktmpdir
    tempfile = Tempfile.create(SecureRandom.hex, tempdir)
    nested_tempdir = Dir.mktmpdir(SecureRandom.hex, tempdir)
    nested_tempfile = Tempfile.create(SecureRandom.hex, nested_tempdir)
    homefile = "#{Dir.home}/#{File.basename(tempfile)}"
    nested_homedir = "#{Dir.home}/#{File.basename(nested_tempdir)}"
    nested_homefile = "#{nested_homedir}/#{File.basename(nested_tempfile)}"

    Dir.chdir(tempdir) do
      `git init && git add . && git commit -m "test from dorian-dot"`
    end

    `bin/dot #{tempdir}`

    expect(File.symlink?(homefile)).to be(true)
    expect(File.readlink(homefile)).to eq(tempfile.path)
    expect(File.symlink?(nested_homefile)).to be(true)
    expect(File.readlink(nested_homefile)).to eq(nested_tempfile.path)
    expect(File.directory?(nested_homedir)).to be(true)
  ensure
    begin
      File.delete(homefile)
    rescue StandardError
      nil
    end
    begin
      FileUtils.rm_r(nested_homedir)
    rescue StandardError
      nil
    end
    begin
      FileUtils.rm_r(tempdir)
    rescue StandardError
      nil
    end
  end
end
