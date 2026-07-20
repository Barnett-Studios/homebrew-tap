class Abproof < Formula
  desc "Offline A/B change-validation harness for coding agents"
  homepage "https://github.com/Barnett-Studios/abproof"
  version "0.1.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Barnett-Studios/abproof/releases/download/v0.1.3/abproof-aarch64-apple-darwin.tar.gz"
      sha256 "9efea96c8f546fd6c48bdcf5fb2f256499f3d6ecca026bcd58be89db230740b3"
    else
      url "https://github.com/Barnett-Studios/abproof/releases/download/v0.1.3/abproof-x86_64-apple-darwin.tar.gz"
      sha256 "64808d1aa91f97709d0363b71f20162b672bd85d0f3ecbf0e6815d529e1bed7a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Barnett-Studios/abproof/releases/download/v0.1.3/abproof-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b11bdb4f8abd5175a20b2a406f9887933a8ee7c102c43129fd6888d8c7d2e001"
    else
      url "https://github.com/Barnett-Studios/abproof/releases/download/v0.1.3/abproof-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f5073a446df4510c7869003d4d724732e78b1bf216c3c1819d8042dddb7ae6b5"
    end
  end

  def install
    bin.install "abproof"
  end

  test do
    system "#{bin}/abproof", "--help"
  end
end
