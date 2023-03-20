class Aichat < Formula
  desc "Chat with gpt-3.5/chatgpt in terminal."
  homepage "https://github.com/sigoden/aichat"
  license "MIT"
  head "https://github.com/sigoden/aichat.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/aichat", "-h"
  end
end
