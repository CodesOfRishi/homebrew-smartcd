# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Smartcd < Formula
  desc "A cd command with improved and extended usability features to quickly navigate your Linux filesystem."
  homepage "https://github.com/CodesOfRishi/smartcd"
  url "https://github.com/CodesOfRishi/smartcd/archive/refs/tags/v3.2.5.tar.gz"
  sha256 "74fd779e66be38d0250717a7177dc7ed9b1fa2d1196a40e041c5b07c9a76bd17"
  license "MIT"

  # depends_on "cmake" => :build
  depends_on 'fzf'

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    # Remove unrecognized options if warned by configure
    # https://rubydoc.brew.sh/Formula.html#std_configure_args-instance_method
    # system "./configure", *std_configure_args, "--disable-silent-rules"
    # system "cmake", "-S", ".", "-B", "build", *std_cmake_args
    bin.install 'smartcd.sh'
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test smartcd`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
