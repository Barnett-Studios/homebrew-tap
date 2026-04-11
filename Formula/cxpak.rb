class Cxpak < Formula
  desc "Token-budgeted codebase context for LLMs"
  homepage "https://github.com/Barnett-Studios/cxpak"
  version "1.6.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Barnett-Studios/cxpak/releases/download/v1.6.0/cxpak-aarch64-apple-darwin.tar.gz"
      sha256 "d0256d0e04d2582132449418b494c35298dc18a69067bb92142530bce5341cfd"
    else
      url "https://github.com/Barnett-Studios/cxpak/releases/download/v1.6.0/cxpak-x86_64-apple-darwin.tar.gz"
      sha256 "a627f7dc84f491f8624313c20f04bc4fd5c223301a743db0d2723385323ab623"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Barnett-Studios/cxpak/releases/download/v1.6.0/cxpak-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "171d389834a70e4b45282842a226a8762003fd39076a99aefc5463354d74b607"
    else
      url "https://github.com/Barnett-Studios/cxpak/releases/download/v1.6.0/cxpak-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "80e286a57b802029f877cd2066a02e7d8fbafff4c82b5a308bca0af0b22e61bc"
    end
  end

  def install
    bin.install "cxpak"
  end

  test do
    system "#{bin}/cxpak", "--help"
  end
end
