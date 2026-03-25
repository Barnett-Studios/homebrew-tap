class Cxpak < Formula
  desc "Token-budgeted codebase context for LLMs"
  homepage "https://github.com/Barnett-Studios/cxpak"
  version "1.0.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Barnett-Studios/cxpak/releases/download/v1.0.0/cxpak-aarch64-apple-darwin.tar.gz"
      sha256 "e4e568ee30c6e20b6d4da236d883a7339148c3065e30cbf1738d089a3aeb0d0e"
    else
      url "https://github.com/Barnett-Studios/cxpak/releases/download/v1.0.0/cxpak-x86_64-apple-darwin.tar.gz"
      sha256 "66db7fbb5da38f86ce705bd3737e4ac6c13986f62ba216d596ff00755e7eade6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Barnett-Studios/cxpak/releases/download/v1.0.0/cxpak-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3d88920cd3f74c9db5805fb20ddc2f79e309e7c9e8aa64d32f61a41db1643705"
    else
      url "https://github.com/Barnett-Studios/cxpak/releases/download/v1.0.0/cxpak-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "086ab4c9af531307eee57908df717530aabb9705ef58171e2c7ad136a94ca877"
    end
  end

  def install
    bin.install "cxpak"
  end

  test do
    system "#{bin}/cxpak", "--help"
  end
end
