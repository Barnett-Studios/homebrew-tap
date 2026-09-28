class Cxpak < Formula
  desc "Token-budgeted codebase context for LLMs"
  homepage "https://github.com/Barnett-Studios/cxpak"
  version "3.2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Barnett-Studios/cxpak/releases/download/v3.2.0/cxpak-aarch64-apple-darwin.tar.gz"
      sha256 "ad9b16a2611904f5d627645b58810fac991a372bda7792090c93c04fa78d5a4e"
    else
      url "https://github.com/Barnett-Studios/cxpak/releases/download/v3.2.0/cxpak-x86_64-apple-darwin.tar.gz"
      sha256 "d5e57dad1c4cd840e53aec5438693e1753284c0579f6cab537c67859b745d800"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Barnett-Studios/cxpak/releases/download/v3.2.0/cxpak-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a11b62de4f6110f580668849fd8f5023f0165646459c4c18b6a9141dd5538993"
    else
      url "https://github.com/Barnett-Studios/cxpak/releases/download/v3.2.0/cxpak-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a23a1f8d9217f6b66ea93bb4de0088bbd8d71db722165bbc4d2e8b3d9f21b584"
    end
  end

  def install
    bin.install "cxpak"
  end

  test do
    system "#{bin}/cxpak", "--help"
  end
end
