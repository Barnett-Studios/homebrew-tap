class Cxpak < Formula
  desc "Token-budgeted codebase context for LLMs"
  homepage "https://github.com/Barnett-Studios/cxpak"
  version "3.7.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Barnett-Studios/cxpak/releases/download/v3.7.0/cxpak-aarch64-apple-darwin.tar.gz"
      sha256 "29f2fbb6970c6dbb20f5fc0c463a8534591710041795551fcd7e8fd8c06bdbe9"
    else
      url "https://github.com/Barnett-Studios/cxpak/releases/download/v3.7.0/cxpak-x86_64-apple-darwin.tar.gz"
      sha256 "4d882ed4c8307aa557fdac7b4bc849987cf0a012887a7d2a32b034ef273a2d10"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Barnett-Studios/cxpak/releases/download/v3.7.0/cxpak-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ae17eac127515bcb12427bc79c0d07d2fbc4a5f3eb8ed9bdb5c1c674830345d0"
    else
      url "https://github.com/Barnett-Studios/cxpak/releases/download/v3.7.0/cxpak-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "15f13055e6886f3678fd3053ba058a738d645b2058525ebf858406bd7b172732"
    end
  end

  def install
    bin.install "cxpak"
  end

  test do
    system "#{bin}/cxpak", "--help"
  end
end
