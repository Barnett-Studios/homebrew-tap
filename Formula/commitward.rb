class Commitward < Formula
  desc "Deterministic, fail-open HITL gate for high-stakes agentic commits"
  homepage "https://github.com/Barnett-Studios/commitward"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Barnett-Studios/commitward/releases/download/v0.1.0/commitward-aarch64-apple-darwin.tar.gz"
      sha256 "bfe79d9ff0af20a99050cd1517bc152489614692f5d5e04268cfb93b9172ae35"
    else
      url "https://github.com/Barnett-Studios/commitward/releases/download/v0.1.0/commitward-x86_64-apple-darwin.tar.gz"
      sha256 "c4904fda74b5472020872fb0de3d2e3a8e95de8e3322633f1a8ce740fa61af7c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Barnett-Studios/commitward/releases/download/v0.1.0/commitward-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "985d9fa33253cf2d92e330cf118105284d98b479ce96cc7be7b980a989ce8e4c"
    else
      url "https://github.com/Barnett-Studios/commitward/releases/download/v0.1.0/commitward-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0757851c115514113f9c15d485fafc9794f4d9b130b83aa89b0f1373b5d7560c"
    end
  end

  def install
    bin.install "commitward"
  end

  test do
    system "#{bin}/commitward", "--help"
  end
end
