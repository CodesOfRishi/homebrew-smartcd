# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Smartcd < Formula
	desc "A cd command with improved and extended usability features to quickly navigate your Linux filesystem."
	homepage "https://github.com/CodesOfRishi/smartcd"
	url "https://github.com/CodesOfRishi/smartcd/releases/download/v1.3.0/smartcd.sh"
	sha256 "4dca0ce033f2dc2428d518548329fc11b2beea81c47e20bba50973627027ddf7"
	license "MIT"

	# dependencies
	depends_on "fzf"
	depends_on "fd"

	def install
		# ENV.deparallelize  # if your formula fails when building in parallel
		# Remove unrecognized options if warned by configure
		# https://rubydoc.brew.sh/Formula.html#std_configure_args-instance_method
		system "./configure", *std_configure_args, "--disable-silent-rules"
		# system "cmake", "-S", ".", "-B", "build", *std_cmake_args
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
