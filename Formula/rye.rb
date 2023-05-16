class Rye < Formula
  desc "an experimental alternative to poetry/pip/pipenv/pyenv/venv/virtualenv/pdm/hatch"
  homepage "https://github.com/mitsuhiko/rye"
  license "MIT"
  head "https://github.com/mitsuhiko/rye.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: "rye")
  end

  test do
    system "#{bin}/rye", "-h"
  end
end
