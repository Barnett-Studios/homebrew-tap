class Commitward < Formula
  desc "Deterministic, fail-open HITL gate for high-stakes agentic commits"
  homepage "https://github.com/Barnett-Studios/commitward"
  version "0.2.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Barnett-Studios/commitward/releases/download/v0.2.1/commitward-aarch64-apple-darwin.tar.gz"
      sha256 "58a28d9b6fd056c57df01ce017b0ffe9aa522a56b6662cfca12e31279f1af735"
    else
      url "https://github.com/Barnett-Studios/commitward/releases/download/v0.2.1/commitward-x86_64-apple-darwin.tar.gz"
      sha256 "13f73896eee0543426b143682bf0c2cc4a70ec4d14b0826b80341fa2af22a504"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Barnett-Studios/commitward/releases/download/v0.2.1/commitward-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6365967bda17998078813bffe3c354c7691857943195c2b952b68a8cdced267c"
    else
      url "https://github.com/Barnett-Studios/commitward/releases/download/v0.2.1/commitward-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f37f3f3bf8f12754b72668e4c172eb0f46f5fedf488b8b2912bf5b72a72df5f4"
    end
  end

  def install
    bin.install "commitward"
  end

  test do
    system "#{bin}/commitward", "--help"
  end
end
