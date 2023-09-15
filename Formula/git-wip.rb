class GitWip < Formula
  desc "Bash argument parsing code generator"
  homepage "https://github.com/bartman/git-wip"
  head "https://github.com/bartman/git-wip.git", :branch => "master"
  license :public_domain

  def install
    bin.install "git-wip"
  end

  test do
    system "#{bin}/git-wip", "--help"
  end
end
