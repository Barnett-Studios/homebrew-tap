class Cxpak < Formula
  desc "Token-budgeted codebase context for LLMs"
  homepage "https://github.com/Barnett-Studios/cxpak"
  version "0.9.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Barnett-Studios/cxpak/releases/download/v0.9.0/cxpak-aarch64-apple-darwin.tar.gz"
      sha256 "f4014d9410038ba4679058528a7f6ea9592f4e8e7a46c08692a46798b230a588"
    else
      url "https://github.com/Barnett-Studios/cxpak/releases/download/v0.9.0/cxpak-x86_64-apple-darwin.tar.gz"
      sha256 "29cdac26343b00a19948bfce53d90537cdb1bffe62ca92c143c8b58e96588d20"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Barnett-Studios/cxpak/releases/download/v0.9.0/cxpak-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "986040fc7512e228eb07a381c56b27065c4315d7eab56bf2cfaedff3de3bc42d"
    else
      url "https://github.com/Barnett-Studios/cxpak/releases/download/v0.9.0/cxpak-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "30162053376a7ace01ff0a021880cefb4eb42fcc955e5c88b833bc27c79c7331"
    end
  end

  def install
    bin.install "cxpak"
  end

  test do
    system "#{bin}/cxpak", "--help"
  end
end
