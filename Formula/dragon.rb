# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Dragon < Formula
  desc "simple drag-and-drop source/sink for X or Wayland"
  homepage "https://www.github.com/mwh/dragon"
  license "GPL-3.0"
  head "https://github.com/mwh/dragon.git"

  depends_on "gcc" => :build
  depends_on "gtk+3"

  def install
    system "make"
    bin.install "dragon"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test dragon`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "dragon"
  end
end
