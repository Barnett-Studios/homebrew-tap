class Cxpak < Formula
  desc "Token-budgeted codebase context for LLMs"
  homepage "https://github.com/Barnett-Studios/cxpak"
  version "3.1.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Barnett-Studios/cxpak/releases/download/v3.1.3/cxpak-aarch64-apple-darwin.tar.gz"
      sha256 "7afc87a9d41a25fb42d3740ab5e1dd6fd9918cd06f9e25187ec61614f6abc526"
    else
      url "https://github.com/Barnett-Studios/cxpak/releases/download/v3.1.3/cxpak-x86_64-apple-darwin.tar.gz"
      sha256 "c68da729eb9b8993b217014b6f31a3f634d1f65173b1dc520f9ad5e60689bec0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Barnett-Studios/cxpak/releases/download/v3.1.3/cxpak-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6a41aa4526a76f135979a93b3d8bf2e6e1c739b1bd2b55563d231e61462d2dcd"
    else
      url "https://github.com/Barnett-Studios/cxpak/releases/download/v3.1.3/cxpak-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "eeaab7f038cc11b1e8f909ae6b5192eed7693d204f3f3990ed9f42aef6583ef7"
    end
  end

  def install
    bin.install "cxpak"
  end

  test do
    system "#{bin}/cxpak", "--help"
  end
end
