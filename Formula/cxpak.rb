class Cxpak < Formula
  desc "Token-budgeted codebase context for LLMs"
  homepage "https://github.com/Barnett-Studios/cxpak"
  version "2.0.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Barnett-Studios/cxpak/releases/download/v2.0.0/cxpak-aarch64-apple-darwin.tar.gz"
      sha256 "9e30a97d21abff06cce19f703709bdd328cfe67fa5acaf02032b74fc382f20ef"
    else
      url "https://github.com/Barnett-Studios/cxpak/releases/download/v2.0.0/cxpak-x86_64-apple-darwin.tar.gz"
      sha256 "80d8d8df26a15814fe4ca9e528c3a5815377d5faa4644fbfe974591e78a3c996"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Barnett-Studios/cxpak/releases/download/v2.0.0/cxpak-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7f1a64121c9e2b7f98053f04e06129318f29f3fa8d78b29fd6df15ca3abc0713"
    else
      url "https://github.com/Barnett-Studios/cxpak/releases/download/v2.0.0/cxpak-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "bd0ff482d4ced44e8ebd7204fe119fb1545f72e996e9a8a6c4af38c3ce94452d"
    end
  end

  def install
    bin.install "cxpak"
  end

  test do
    system "#{bin}/cxpak", "--help"
  end
end
