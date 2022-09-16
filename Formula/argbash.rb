class Argbash < Formula
  desc "Bash argument parsing code generator"
  homepage "https://argbash.readthedocs.io/"
  url "https://github.com/matejak/argbash/archive/refs/tags/2.10.0.tar.gz"
  sha256 "ea527028313a5189803f4d2db3245425a82445fdb833f53352072e119c172313"
  license :public_domain

  def install
    chdir "resources" do
      system "make"
      system "make", "install", "PREFIX=#{prefix}", "INSTALL_COMPLETION=yes", "SYSCONFDIR=#{etc}"
    end
  end

  test do
    system "#{bin}/argbash", "--help"
  end
end
