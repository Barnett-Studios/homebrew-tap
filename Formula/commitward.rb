class Commitward < Formula
  desc "Deterministic, fail-open HITL gate for high-stakes agentic commits"
  homepage "https://github.com/Barnett-Studios/commitward"
  version "0.2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Barnett-Studios/commitward/releases/download/v0.2.0/commitward-aarch64-apple-darwin.tar.gz"
      sha256 "2c3e448cf92971aa8b9c30f5cd62f5e7a8c8727970002b1ad20ebe5dc82f9afd"
    else
      url "https://github.com/Barnett-Studios/commitward/releases/download/v0.2.0/commitward-x86_64-apple-darwin.tar.gz"
      sha256 "825ec266704701f376f45dd416c297f4011707afae280b6720ed0c54b324fc9d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Barnett-Studios/commitward/releases/download/v0.2.0/commitward-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ae1ea5f18ba9ef452fabd2fc3b1ad4a3b69473ec1648927e138f9a34414dc866"
    else
      url "https://github.com/Barnett-Studios/commitward/releases/download/v0.2.0/commitward-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9f100fd00568a6e37049df1679fcd33c3326114daaa2231f24559682b8d9f5e4"
    end
  end

  def install
    bin.install "commitward"
  end

  test do
    system "#{bin}/commitward", "--help"
  end
end
