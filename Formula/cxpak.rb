class Cxpak < Formula
  desc "Token-budgeted codebase context for LLMs"
  homepage "https://github.com/Barnett-Studios/cxpak"
  version "0.11.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Barnett-Studios/cxpak/releases/download/v0.11.0/cxpak-aarch64-apple-darwin.tar.gz"
      sha256 "be8843b7956ae10ab027a702e16535bef18acd7f7c7f194e10cca8d9bf5c66bf"
    else
      url "https://github.com/Barnett-Studios/cxpak/releases/download/v0.11.0/cxpak-x86_64-apple-darwin.tar.gz"
      sha256 "221de70430c1e75226c08d648314c44c2600173c0a14ac781266cafc7db705fc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Barnett-Studios/cxpak/releases/download/v0.11.0/cxpak-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1e13e6530ddbf2f15399d435141bebdbc654749585c70b28f75724fdd072f27b"
    else
      url "https://github.com/Barnett-Studios/cxpak/releases/download/v0.11.0/cxpak-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f1a2380c9c464da50fc2bfdcda9044a3dff8a0b2b5511f6f61154c6be9e18331"
    end
  end

  def install
    bin.install "cxpak"
  end

  test do
    system "#{bin}/cxpak", "--help"
  end
end
