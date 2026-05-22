class Cxpak < Formula
  desc "Token-budgeted codebase context for LLMs"
  homepage "https://github.com/Barnett-Studios/cxpak"
  version "2.2.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Barnett-Studios/cxpak/releases/download/v2.2.1/cxpak-aarch64-apple-darwin.tar.gz"
      sha256 "089ee2c582a7033f2df84a1aeae2a59fc95389f18d50fb399f96172ab0a58959"
    else
      url "https://github.com/Barnett-Studios/cxpak/releases/download/v2.2.1/cxpak-x86_64-apple-darwin.tar.gz"
      sha256 "6fe9fd3ccec17afc1a47c8317552b703d52be64a81e687340165a5a14f236238"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Barnett-Studios/cxpak/releases/download/v2.2.1/cxpak-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "aa9b49be88b5c43994c07c9d6c0d531d08475e44b18b37fa7a9d5a564899f352"
    else
      url "https://github.com/Barnett-Studios/cxpak/releases/download/v2.2.1/cxpak-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b2fa9ce9087be6e10804da18cd31376f4ca21246916449a1e1df062f96765fb5"
    end
  end

  def install
    bin.install "cxpak"
  end

  test do
    system "#{bin}/cxpak", "--help"
  end
end
