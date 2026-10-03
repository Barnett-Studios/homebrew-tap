class Commitward < Formula
  desc "Deterministic, fail-open HITL gate for high-stakes agentic commits"
  homepage "https://github.com/Barnett-Studios/commitward"
  version "0.3.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Barnett-Studios/commitward/releases/download/v0.3.3/commitward-aarch64-apple-darwin.tar.gz"
      sha256 "fe0b51c773b9a93707175bd847f4b8472c86940259766f53591ad60705704469"
    else
      url "https://github.com/Barnett-Studios/commitward/releases/download/v0.3.3/commitward-x86_64-apple-darwin.tar.gz"
      sha256 "bac858ed3251ef6cc9d33d697963b0c29458eaa5c79d3e2bd05540afdffa17db"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Barnett-Studios/commitward/releases/download/v0.3.3/commitward-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "69b63954dd32906b6057c9bf0c61010cab85c1255778ccc80e4fdbdf83dfeeda"
    else
      url "https://github.com/Barnett-Studios/commitward/releases/download/v0.3.3/commitward-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6fa1e19760fa834fe40668231136db85750ac8a4bb486712b445da3dfc630b84"
    end
  end

  def install
    bin.install "commitward"
  end

  test do
    system "#{bin}/commitward", "--help"
  end
end
