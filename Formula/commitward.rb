class Commitward < Formula
  desc "Deterministic, fail-open HITL gate for high-stakes agentic commits"
  homepage "https://github.com/Barnett-Studios/commitward"
  version "0.3.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Barnett-Studios/commitward/releases/download/v0.3.4/commitward-aarch64-apple-darwin.tar.gz"
      sha256 "fbb16bb45f3d795d9d5c5985c1f649a9ecaf2f96a85bae682c3b85d6c94c59d8"
    else
      url "https://github.com/Barnett-Studios/commitward/releases/download/v0.3.4/commitward-x86_64-apple-darwin.tar.gz"
      sha256 "2267cb169ad019ca58ddfd67f64858f24c72b0960c7c7865fd484296e18f38e4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Barnett-Studios/commitward/releases/download/v0.3.4/commitward-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7265c49d0dd773a3e41fbe482a3203ceb468bf8592484074bec0eafc40cdbe3d"
    else
      url "https://github.com/Barnett-Studios/commitward/releases/download/v0.3.4/commitward-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "30efa0410e7b8f7d7cee3c69e4ecaa0a65d7f808cb0790700e9ba5ecb37c0d39"
    end
  end

  def install
    bin.install "commitward"
  end

  test do
    system "#{bin}/commitward", "--help"
  end
end
