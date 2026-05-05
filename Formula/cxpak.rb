class Cxpak < Formula
  desc "Token-budgeted codebase context for LLMs"
  homepage "https://github.com/Barnett-Studios/cxpak"
  version "2.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Barnett-Studios/cxpak/releases/download/v2.1.0/cxpak-aarch64-apple-darwin.tar.gz"
      sha256 "612b7aeab6dab0fc46381a183a84cfbce3d834d7434510d68c5de7d263b902ce"
    else
      url "https://github.com/Barnett-Studios/cxpak/releases/download/v2.1.0/cxpak-x86_64-apple-darwin.tar.gz"
      sha256 "df9e1a4f3784d94e4551685e60e93d662f655b097bc95cf6a05e2b172382b54e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Barnett-Studios/cxpak/releases/download/v2.1.0/cxpak-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5f12b52a46609795dfc70567588d40938963b1552f6282f4a233be066744c370"
    else
      url "https://github.com/Barnett-Studios/cxpak/releases/download/v2.1.0/cxpak-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f53560c67d5dca5569c1d5492a89e720057c402f6d5bd2ec95eb58c05533b364"
    end
  end

  def install
    bin.install "cxpak"
  end

  test do
    system "#{bin}/cxpak", "--help"
  end
end
