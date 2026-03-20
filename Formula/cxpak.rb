class Cxpak < Formula
  desc "Token-budgeted codebase context for LLMs"
  homepage "https://github.com/Barnett-Studios/cxpak"
  version "0.10.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Barnett-Studios/cxpak/releases/download/v0.10.0/cxpak-aarch64-apple-darwin.tar.gz"
      sha256 "eaf7e7548bd70245c9885a7804b8b62e01f9831aef23cf639b12e30e5fe0e706"
    else
      url "https://github.com/Barnett-Studios/cxpak/releases/download/v0.10.0/cxpak-x86_64-apple-darwin.tar.gz"
      sha256 "233ecf5cb78751ef2e2f854bda92223db51a1608d5015fe4339331706255c6e9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Barnett-Studios/cxpak/releases/download/v0.10.0/cxpak-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2b0908a335c2cdba43e57f1059b307cd530f4b4535bf2bc295ddfb04237d9d4f"
    else
      url "https://github.com/Barnett-Studios/cxpak/releases/download/v0.10.0/cxpak-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b66db98604eb6eed5c5cf8f3904ca753eb3f9e4cffa95f956eac72a854b2da37"
    end
  end

  def install
    bin.install "cxpak"
  end

  test do
    system "#{bin}/cxpak", "--help"
  end
end
