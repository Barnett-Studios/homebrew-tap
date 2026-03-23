class Cxpak < Formula
  desc "Token-budgeted codebase context for LLMs"
  homepage "https://github.com/Barnett-Studios/cxpak"
  version "0.13.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Barnett-Studios/cxpak/releases/download/v0.13.0/cxpak-aarch64-apple-darwin.tar.gz"
      sha256 "e0a1ecbab8399d7c1cc46fd5ff746b5ec1a0adaab471ffa731273037def2467d"
    else
      url "https://github.com/Barnett-Studios/cxpak/releases/download/v0.13.0/cxpak-x86_64-apple-darwin.tar.gz"
      sha256 "1505a94be7f7b003773c5ff6348b9552cbec5fe72a3c4952db43e2112785a4f6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Barnett-Studios/cxpak/releases/download/v0.13.0/cxpak-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b7ce85949652764749518aa260d48602f2190d7191fea2827cb0d1eed75c9e98"
    else
      url "https://github.com/Barnett-Studios/cxpak/releases/download/v0.13.0/cxpak-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5b175ba878397662a3e20f86f7d52b76b017d847c28e997fa366819c20ff15b9"
    end
  end

  def install
    bin.install "cxpak"
  end

  test do
    system "#{bin}/cxpak", "--help"
  end
end
