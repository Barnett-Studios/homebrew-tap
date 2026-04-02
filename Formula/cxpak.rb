class Cxpak < Formula
  desc "Token-budgeted codebase context for LLMs"
  homepage "https://github.com/Barnett-Studios/cxpak"
  version "1.2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Barnett-Studios/cxpak/releases/download/v1.2.0/cxpak-aarch64-apple-darwin.tar.gz"
      sha256 "a4dbdf36036266ec65fb6fa57b62bbba45c65bb6b9e4f7fd110447306e031be9"
    else
      url "https://github.com/Barnett-Studios/cxpak/releases/download/v1.2.0/cxpak-x86_64-apple-darwin.tar.gz"
      sha256 "0d1d2e24602e2743690a28454f0ca63e51d105613303273de26bcad3495b832d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Barnett-Studios/cxpak/releases/download/v1.2.0/cxpak-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d8df23dd0e727dd9e5994920ca5442cb2f70d01208cef5e8fa8642293c4cc88b"
    else
      url "https://github.com/Barnett-Studios/cxpak/releases/download/v1.2.0/cxpak-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f76048a00d4149e1aaf9b2729a4e89cdf5af2f8153b7b61cf89a1f491a1be60a"
    end
  end

  def install
    bin.install "cxpak"
  end

  test do
    system "#{bin}/cxpak", "--help"
  end
end
