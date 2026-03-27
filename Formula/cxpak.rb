class Cxpak < Formula
  desc "Token-budgeted codebase context for LLMs"
  homepage "https://github.com/Barnett-Studios/cxpak"
  version "1.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Barnett-Studios/cxpak/releases/download/v1.1.0/cxpak-aarch64-apple-darwin.tar.gz"
      sha256 "40fe1792e992d1908954bbbbac56cfe48c0233433761606c9d28526a109a5957"
    else
      url "https://github.com/Barnett-Studios/cxpak/releases/download/v1.1.0/cxpak-x86_64-apple-darwin.tar.gz"
      sha256 "75b5ab593b8599e9d0b41c458f5da93821b5b88d42f69ad167a8e2ef310d77c3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Barnett-Studios/cxpak/releases/download/v1.1.0/cxpak-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "bb445d336a09bf990344f147f66a78d17cc92bc7e044068eb5d6f95c0925a763"
    else
      url "https://github.com/Barnett-Studios/cxpak/releases/download/v1.1.0/cxpak-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "507ff6465d6405b63b7e7df3c3529e758117325e8d0cd06422608ffe093e7e5a"
    end
  end

  def install
    bin.install "cxpak"
  end

  test do
    system "#{bin}/cxpak", "--help"
  end
end
