class Commitward < Formula
  desc "Deterministic, fail-open HITL gate for high-stakes agentic commits"
  homepage "https://github.com/Barnett-Studios/commitward"
  version "0.2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Barnett-Studios/commitward/releases/download/v0.2.0/commitward-aarch64-apple-darwin.tar.gz"
      sha256 "30206997d4c37e5f0b5799f4002f34f320c6b04def94f8379ad2793def3b3e02"
    else
      url "https://github.com/Barnett-Studios/commitward/releases/download/v0.2.0/commitward-x86_64-apple-darwin.tar.gz"
      sha256 "60d28ea8824331e716648412852dfbfc9537edc403c8859a8f0e4aaba92c2dd3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Barnett-Studios/commitward/releases/download/v0.2.0/commitward-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b204313524e97ebe34b6b6ffeb2dc4bd0ed545979d62b9eeeeeb6ebae6bc5b3d"
    else
      url "https://github.com/Barnett-Studios/commitward/releases/download/v0.2.0/commitward-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "abbcde5c58f16636cecd1bfff9048d73cdb130cb3b937eb8cae1cf56ddd5719b"
    end
  end

  def install
    bin.install "commitward"
  end

  test do
    system "#{bin}/commitward", "--help"
  end
end
