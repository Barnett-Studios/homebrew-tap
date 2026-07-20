class Commitward < Formula
  desc "Deterministic, fail-open HITL gate for high-stakes agentic commits"
  homepage "https://github.com/Barnett-Studios/commitward"
  version "0.2.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Barnett-Studios/commitward/releases/download/v0.2.2/commitward-aarch64-apple-darwin.tar.gz"
      sha256 "64f18820b6190fecd1b2218cd163d149e59f9b6e37d53673a28b0b37212ce17e"
    else
      url "https://github.com/Barnett-Studios/commitward/releases/download/v0.2.2/commitward-x86_64-apple-darwin.tar.gz"
      sha256 "5d6078d328f136664f73d039aaffc068d3c4d331bf2f3e5f954de1aa11159a69"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Barnett-Studios/commitward/releases/download/v0.2.2/commitward-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6628febc2c8fbbd66e58f2a1f1935a84c369b08ea7e6b527002e78e6b5a0e44b"
    else
      url "https://github.com/Barnett-Studios/commitward/releases/download/v0.2.2/commitward-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7a559c703c18334c63ea43c3971ca101bb2960c5c3dda76d5cb64d1bff3cb47b"
    end
  end

  def install
    bin.install "commitward"
  end

  test do
    system "#{bin}/commitward", "--help"
  end
end
