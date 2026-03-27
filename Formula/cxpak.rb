class Cxpak < Formula
  desc "Token-budgeted codebase context for LLMs"
  homepage "https://github.com/Barnett-Studios/cxpak"
  version "1.0.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Barnett-Studios/cxpak/releases/download/v1.0.2/cxpak-aarch64-apple-darwin.tar.gz"
      sha256 "2a27de2fc34b8d1f073a32cb7a5b7e8b132f64d2bcc6bf2ae34ed0f67be5cd57"
    else
      url "https://github.com/Barnett-Studios/cxpak/releases/download/v1.0.2/cxpak-x86_64-apple-darwin.tar.gz"
      sha256 "e06ee4254440a9e6af73362c300d4fee929939911b5d21441ec4b5f2903edef5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Barnett-Studios/cxpak/releases/download/v1.0.2/cxpak-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "787858c71a776002a746368d96b6335e712d1c666bcb31450292a1e7d4008110"
    else
      url "https://github.com/Barnett-Studios/cxpak/releases/download/v1.0.2/cxpak-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8bb6fb6858fd26ffb0c903a98426ccbaa43d00f246455d608319db1128c072e7"
    end
  end

  def install
    bin.install "cxpak"
  end

  test do
    system "#{bin}/cxpak", "--help"
  end
end
