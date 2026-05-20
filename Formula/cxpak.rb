class Cxpak < Formula
  desc "Token-budgeted codebase context for LLMs"
  homepage "https://github.com/Barnett-Studios/cxpak"
  version "2.2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Barnett-Studios/cxpak/releases/download/v2.2.0/cxpak-aarch64-apple-darwin.tar.gz"
      sha256 "10855c45b3716f72cabd7349a88c634bcbf5d25efeb269e7e4a04684a24d13a4"
    else
      url "https://github.com/Barnett-Studios/cxpak/releases/download/v2.2.0/cxpak-x86_64-apple-darwin.tar.gz"
      sha256 "a97454fafe9babe3c79272cc3e3d3666d3171b35cfd08fc7e5ad23f3fa9c43ec"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Barnett-Studios/cxpak/releases/download/v2.2.0/cxpak-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8e04d930c435c590764c347b1863487b996348a9eca95d05f28281c53145c6d7"
    else
      url "https://github.com/Barnett-Studios/cxpak/releases/download/v2.2.0/cxpak-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a0c93b827b0cdbd89964b41cfb5239afff39c29467fda31639cfa00fb5a8e922"
    end
  end

  def install
    bin.install "cxpak"
  end

  test do
    system "#{bin}/cxpak", "--help"
  end
end
