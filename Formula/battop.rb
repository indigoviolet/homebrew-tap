# Copied from https://raw.githubusercontent.com/rothgar/homebrew-tap/master/Formula/tsv-utils.rb
class Battop < Formula
  desc "Interactive batteries viewer"
  homepage "https://github.com/svartalf/rust-battop"
  version "0.2.4"

  if OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/svartalf/rust-battop/releases/download/v#{version}/battop-v#{version}-x86_64-unknown-linux-gnu"
      # brew fetch --force battop
      sha256 "8b601903d550a2efe3825c57720cff17a89783828885d99d3b9519895cd10de5"
    end
  end
  
  def install
    bin.install "battop-v#{version}-x86_64-unknown-linux-gnu" => "battop"
  end    
  
  test do
    system "#{bin}/battop", "--version"
  end
end
