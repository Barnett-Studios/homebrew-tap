class Commitward < Formula
  desc "Deterministic, fail-open HITL gate for high-stakes agentic commits"
  homepage "https://github.com/Barnett-Studios/commitward"
  version "0.3.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Barnett-Studios/commitward/releases/download/v0.3.2/commitward-aarch64-apple-darwin.tar.gz"
      sha256 "ffe8422b2ea85345a59db70df20718fe8a50d41cdb0a54c08ebe67e6418871d2"
    else
      url "https://github.com/Barnett-Studios/commitward/releases/download/v0.3.2/commitward-x86_64-apple-darwin.tar.gz"
      sha256 "73ebf102f239b109539e9d2437d7889008b74d41ad0c5b13f788fe4ff7e550e7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Barnett-Studios/commitward/releases/download/v0.3.2/commitward-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "78a68fca77fe2104c223fd2f8225ae114d9afb9c8a3056a7613b45548be9372d"
    else
      url "https://github.com/Barnett-Studios/commitward/releases/download/v0.3.2/commitward-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "cff9a7b158d5ba94c5b7203379396e611f3d047f95b631fdece3ce270384f0ee"
    end
  end

  def install
    bin.install "commitward"
  end

  test do
    system "#{bin}/commitward", "--help"
  end
end
