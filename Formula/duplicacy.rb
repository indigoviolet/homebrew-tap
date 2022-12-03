class Duplicacy < Formula
  desc "A new generation cloud backup tool "
  homepage "https://duplicacy.com"
  version "3.0.1"
  url "https://github.com/gilbertchen/duplicacy/releases/download/v#{version}/duplicacy_linux_x64_#{version}"
  sha256 "91e7191e11fadc75c16360c0527fd25df8f80ea976819dbf349c86546197df9b"
  license :cannot_represent

  def install
    bin.install "duplicacy_linux_x64_#{version}" => "duplicacy"
  end

  test do
    system "#{bin}/duplicacy", "--version"
  end
end
