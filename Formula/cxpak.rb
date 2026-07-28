class Cxpak < Formula
  desc "Token-budgeted codebase context for LLMs"
  homepage "https://github.com/Barnett-Studios/cxpak"
  version "3.1.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Barnett-Studios/cxpak/releases/download/v3.1.4/cxpak-aarch64-apple-darwin.tar.gz"
      sha256 "a25c43e2e88befd4bd8752a46a3079455f5d5e822e502ee2cfe66bfcebfd6981"
    else
      url "https://github.com/Barnett-Studios/cxpak/releases/download/v3.1.4/cxpak-x86_64-apple-darwin.tar.gz"
      sha256 "b2e6296acab38ed42b02b8f52e251ea3dd9415264bcd211af81b13c8ff7788bf"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Barnett-Studios/cxpak/releases/download/v3.1.4/cxpak-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2dc81724e42d2466e6adf1b6c31dbba90cbf6a76e515efe754d27d24c0b97c65"
    else
      url "https://github.com/Barnett-Studios/cxpak/releases/download/v3.1.4/cxpak-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "592cbde23519c783a9439cbc5240cb17cb9c22cdf6f8398b9caafef1c08c0f20"
    end
  end

  def install
    bin.install "cxpak"
  end

  test do
    system "#{bin}/cxpak", "--help"
  end
end
