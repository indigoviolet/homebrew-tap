class GitProle < Formula
  desc "Git productive utility for managing multiple repositories"
  homepage "https://github.com/sigmaSd/git-prole"
  url "https://github.com/sigmaSd/git-prole/archive/refs/tags/0.24.0.tar.gz"
  sha256 "1234567890abcdef1234567890abcdef1234567890abcdef1234567890abcdef"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/git-prole", "--version"
  end
end