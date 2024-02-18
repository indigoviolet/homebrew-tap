class Gsheet < Formula
  desc "CLI tool to upload CSV to Google Sheets"
  homepage "https://github.com/cristoper/gsheet"
  url "https://github.com/cristoper/gsheet/releases/download/v0.1.1/darwin_amd64.zip"
  sha256 "a0a5bf592bd43a89cf82fc2170d5bc5560d7ebdd60fd942bfc0f1d9f618bd5ae"

  def install
    bin.install "gsheet"
  end

  test do
    system "#{bin}/gsheet", "--version"
  end
end
