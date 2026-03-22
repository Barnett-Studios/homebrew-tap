class Cxpak < Formula
  desc "Token-budgeted codebase context for LLMs"
  homepage "https://github.com/Barnett-Studios/cxpak"
  version "0.12.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Barnett-Studios/cxpak/releases/download/v0.12.0/cxpak-aarch64-apple-darwin.tar.gz"
      sha256 "8eb8bf351c8d42bc27677ba9cfd934de8a592e14760aa9c612ebb9c39314ad65"
    else
      url "https://github.com/Barnett-Studios/cxpak/releases/download/v0.12.0/cxpak-x86_64-apple-darwin.tar.gz"
      sha256 "04f9b1b3e3449425066a803295dee48e698a16783d46dec54b7faed18054ba40"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Barnett-Studios/cxpak/releases/download/v0.12.0/cxpak-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8fe98e0651d8d84093bf59b527506706a447cc8d44e8419a2683c3904f4c9d63"
    else
      url "https://github.com/Barnett-Studios/cxpak/releases/download/v0.12.0/cxpak-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0813527d5809bbaaf576f5bfad0a54c2266c58413b8bb074b5cfc16f24f1cc8f"
    end
  end

  def install
    bin.install "cxpak"
  end

  test do
    system "#{bin}/cxpak", "--help"
  end
end
