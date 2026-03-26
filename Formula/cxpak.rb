class Cxpak < Formula
  desc "Token-budgeted codebase context for LLMs"
  homepage "https://github.com/Barnett-Studios/cxpak"
  version "1.0.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Barnett-Studios/cxpak/releases/download/v1.0.1/cxpak-aarch64-apple-darwin.tar.gz"
      sha256 "4330414f8b2742df98d276d0b55d12fed4e13e27588ee2eb37f03f9e4dd2bdda"
    else
      url "https://github.com/Barnett-Studios/cxpak/releases/download/v1.0.1/cxpak-x86_64-apple-darwin.tar.gz"
      sha256 "c1a90fd3858ccd57260bfaf5c57242d66442bd1781b1a3ea380f1b72f1745530"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Barnett-Studios/cxpak/releases/download/v1.0.1/cxpak-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5354f407223236bac842092ecdce492b581f10250106bcd719a83fc4b4c2890d"
    else
      url "https://github.com/Barnett-Studios/cxpak/releases/download/v1.0.1/cxpak-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a6202ff4d20a237c09744ae6e9f6167c499c28a0efc9cf8c49cb9ac7b7ebd278"
    end
  end

  def install
    bin.install "cxpak"
  end

  test do
    system "#{bin}/cxpak", "--help"
  end
end
