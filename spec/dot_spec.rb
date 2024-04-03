# frozen_string_literal: true

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
    begin
      File.delete(homefile)
    rescue StandardError
      nil
    end
    begin
      File.delete(tempfile)
    rescue StandardError
      nil
    end
    begin
      Dir.delete(tempdir)
    rescue StandardError
      nil
    end
  end
end
