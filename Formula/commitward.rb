class Commitward < Formula
  desc "Deterministic, fail-open HITL gate for high-stakes agentic commits"
  homepage "https://github.com/Barnett-Studios/commitward"
  version "0.3.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Barnett-Studios/commitward/releases/download/v0.3.0/commitward-aarch64-apple-darwin.tar.gz"
      sha256 "1f8957b6b8bf724d4ad672c069b194644bbce9d195db710267385fc6a45b2f48"
    else
      url "https://github.com/Barnett-Studios/commitward/releases/download/v0.3.0/commitward-x86_64-apple-darwin.tar.gz"
      sha256 "0a6ecbc47aa0845fa4e160f66825c112fa71a51a790aa8d5bf3871aba74fc914"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Barnett-Studios/commitward/releases/download/v0.3.0/commitward-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6267ddd0b7803d1b31f992024e710aedc1cbe81e562d9aea1462674c825f43b0"
    else
      url "https://github.com/Barnett-Studios/commitward/releases/download/v0.3.0/commitward-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "aa6677d29a1148c2e5275e134b096de1685578abb3926fc135b67f8dd92050a9"
    end
  end

  def install
    bin.install "commitward"
  end

  test do
    system "#{bin}/commitward", "--help"
  end
end
