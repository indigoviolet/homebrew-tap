class Dud < Formula
  desc "A lightweight CLI tool for versioning data alongside source code and building data pipelines"
  homepage "https://kevin-hanselman.github.io/dud/"
  url "https://github.com/kevin-hanselman/dud/releases/download/v0.4.3/dud_0.4.3_darwin_arm64.tar.gz"
  sha256 "6e43da53dc0ef472715661d5ade045e158e692e093bacac8c7ee5d452b5db4f3"
  license "BSD-3-Clause"

  def install
    bin.install "dud"
  end

  test do
    system "#{bin}/dud"
  end
end
