class Commitward < Formula
  desc "Deterministic, fail-open HITL gate for high-stakes agentic commits"
  homepage "https://github.com/Barnett-Studios/commitward"
  version "0.3.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Barnett-Studios/commitward/releases/download/v0.3.1/commitward-aarch64-apple-darwin.tar.gz"
      sha256 "32094bb02e17e7f23e3b50df0964beeeb5202acee90826baa4cecf27167b91d8"
    else
      url "https://github.com/Barnett-Studios/commitward/releases/download/v0.3.1/commitward-x86_64-apple-darwin.tar.gz"
      sha256 "46b75e341f2078fa6d8f5e413f501174fda620def374b3b94de72bca79ca2af4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Barnett-Studios/commitward/releases/download/v0.3.1/commitward-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f65d57bf5bc2bca4674a396c2e436d74fc16cc44779a66f1202993b3dc630d7e"
    else
      url "https://github.com/Barnett-Studios/commitward/releases/download/v0.3.1/commitward-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "39b2b2db889449367c8c614c83730579c456f1005086fcaad627196dade375b4"
    end
  end

  def install
    bin.install "commitward"
  end

  test do
    system "#{bin}/commitward", "--help"
  end
end
