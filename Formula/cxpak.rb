class Cxpak < Formula
  desc "Token-budgeted codebase context for LLMs"
  homepage "https://github.com/Barnett-Studios/cxpak"
  version "3.3.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Barnett-Studios/cxpak/releases/download/v3.3.1/cxpak-aarch64-apple-darwin.tar.gz"
      sha256 "b5c947090bfc68ce886ddd36957d7e22db28dc8b4f3d586a35796f142b3182c1"
    else
      url "https://github.com/Barnett-Studios/cxpak/releases/download/v3.3.1/cxpak-x86_64-apple-darwin.tar.gz"
      sha256 "e39e4fe4f5ff1aabb4f65c6c8b8ea60190a769d07bcecd1ecd26a813fb0a6f97"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Barnett-Studios/cxpak/releases/download/v3.3.1/cxpak-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5d43511e0aabf24f27754f47a63591c8ad0b4b2c58c4d8066dc580add780727b"
    else
      url "https://github.com/Barnett-Studios/cxpak/releases/download/v3.3.1/cxpak-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7453a442312f7246f6c257de15fb14ca73295554a7c679d8e36e50aabf88b05d"
    end
  end

  def install
    bin.install "cxpak"
  end

  test do
    system "#{bin}/cxpak", "--help"
  end
end
