class Cxpak < Formula
  desc "Token-budgeted codebase context for LLMs"
  homepage "https://github.com/Barnett-Studios/cxpak"
  version "1.5.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Barnett-Studios/cxpak/releases/download/v1.5.0/cxpak-aarch64-apple-darwin.tar.gz"
      sha256 "b84bb292197a7ac6952858c52b4c335a7ccabad512e6c937c33441e5071631d0"
    else
      url "https://github.com/Barnett-Studios/cxpak/releases/download/v1.5.0/cxpak-x86_64-apple-darwin.tar.gz"
      sha256 "d7bc1d7a215f52b162daf3f2ac290ac722c15af39739cc60c8c1766a005ddc80"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Barnett-Studios/cxpak/releases/download/v1.5.0/cxpak-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b128255cb7a8327609882d12da2c4f98b22b70465d9c73bccddcd46cf04baf21"
    else
      url "https://github.com/Barnett-Studios/cxpak/releases/download/v1.5.0/cxpak-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "680aa71c7c4ab6bf08308071f666492e43fef2dd800496773783f839d8aeef08"
    end
  end

  def install
    bin.install "cxpak"
  end

  test do
    system "#{bin}/cxpak", "--help"
  end
end
