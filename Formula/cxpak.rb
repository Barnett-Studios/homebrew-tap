class Cxpak < Formula
  desc "Token-budgeted codebase context for LLMs"
  homepage "https://github.com/Barnett-Studios/cxpak"
  version "0.8.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Barnett-Studios/cxpak/releases/download/v0.8.1/cxpak-aarch64-apple-darwin.tar.gz"
      sha256 "96b914c018404d82e6d7cf12041518cea7ad3c7388530c6e49d37dca1a7fdeee"
    else
      url "https://github.com/Barnett-Studios/cxpak/releases/download/v0.8.1/cxpak-x86_64-apple-darwin.tar.gz"
      sha256 "c13842d72118f789775ae85afb7ca7f73d5a5b969f95986abe319d62d8548448"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Barnett-Studios/cxpak/releases/download/v0.8.1/cxpak-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "411d2946b6b8fae706fe9b9b9ac5d9615774ca7959a1770c7d416657a0c69060"
    else
      url "https://github.com/Barnett-Studios/cxpak/releases/download/v0.8.1/cxpak-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "332bd1ccddf7303fc7115845f7edec8c8c93c1b06ffbcf418d4b950ee95d9b7a"
    end
  end

  def install
    bin.install "cxpak"
  end

  test do
    system "#{bin}/cxpak", "--help"
  end
end
