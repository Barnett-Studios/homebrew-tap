class Cxpak < Formula
  desc "Token-budgeted codebase context for LLMs"
  homepage "https://github.com/Barnett-Studios/cxpak"
  version "3.1.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Barnett-Studios/cxpak/releases/download/v3.1.2/cxpak-aarch64-apple-darwin.tar.gz"
      sha256 "8f1cb0e1f9bc9c5a829edc963a7378cab033b1b03152705de2c6a8e2743cf639"
    else
      url "https://github.com/Barnett-Studios/cxpak/releases/download/v3.1.2/cxpak-x86_64-apple-darwin.tar.gz"
      sha256 "7ed366eead9a275f025be9b749e3b661094bbd29c8e5f4d5e8e9c3d8c6d907b9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Barnett-Studios/cxpak/releases/download/v3.1.2/cxpak-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6d1159c5faca0ecbc3e6b6a39f1a44439760e9ce28a21f3f0963ab57fdfc2123"
    else
      url "https://github.com/Barnett-Studios/cxpak/releases/download/v3.1.2/cxpak-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "502dc05257c3eb4f4eee19cfc92436e9fdd41d4cbd8a4f55bc5f495f621c06df"
    end
  end

  def install
    bin.install "cxpak"
  end

  test do
    system "#{bin}/cxpak", "--help"
  end
end
