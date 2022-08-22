# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula

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
    system "dragon"
  end
end
