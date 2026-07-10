class Cxpak < Formula
  desc "Token-budgeted codebase context for LLMs"
  homepage "https://github.com/Barnett-Studios/cxpak"
  version "3.0.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Barnett-Studios/cxpak/releases/download/v3.0.0/cxpak-aarch64-apple-darwin.tar.gz"
      sha256 "dda3c832717bf34d9ba20866da6025785a8c543e49bd8c2baf42896290c50827"
    else
      url "https://github.com/Barnett-Studios/cxpak/releases/download/v3.0.0/cxpak-x86_64-apple-darwin.tar.gz"
      sha256 "76d8509f3422a1c78380b74f8d1683b8c68fe7040007844dcd4f71c3b1293bfc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Barnett-Studios/cxpak/releases/download/v3.0.0/cxpak-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "255c35f319c683a0740729a79c118ceaf97cbe1bd3b7eee08a2b106175799792"
    else
      url "https://github.com/Barnett-Studios/cxpak/releases/download/v3.0.0/cxpak-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6c31d1031b02a6bc080b613da3245399e75271faf2f18a00bb329a18a0b3ecb9"
    end
  end

  def install
    bin.install "cxpak"
  end

  test do
    system "#{bin}/cxpak", "--help"
  end
end
