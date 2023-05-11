class NvidiaNgcCli < Formula
  desc "NVIDIA NGC CLI"
  homepage "https://ngc.nvidia.com/setup/installers/cli"
  version "3.21.0"

  if OS.linux?
    if Hardware::CPU.intel?
      url "https://ngc.nvidia.com/downloads/ngccli_linux.zip"
      sha256 "73bc1374fdc533ed0d0c20a0a5e5a17619f48ff4aa16544e7cf7697bc382b1dc"
    end
  end
  
  def install
    libexec.install Dir["ngc-cli/*"]
    bin.install_symlink libexec/"ngc"
  end    
  
  test do
    system "#{bin}/ngc", "--version"
  end
end
