class Baseplate < Formula
  desc "Shared support crate for the Barnett Studios agentic-harness toolkit"
  homepage "https://github.com/Barnett-Studios/baseplate"
  version "0.4.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Barnett-Studios/baseplate/releases/download/v0.4.0/baseplate-aarch64-apple-darwin.tar.gz"
      sha256 "ba5950597eaf4ef3b0a995973dd41474d4463ac66289d33bbae06fa3800ae8ca"
    else
      url "https://github.com/Barnett-Studios/baseplate/releases/download/v0.4.0/baseplate-x86_64-apple-darwin.tar.gz"
      sha256 "bdb99465cc9a42b91f315e7cbfe7048219c4948f9ec410fb54f64c0e89ede9b2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Barnett-Studios/baseplate/releases/download/v0.4.0/baseplate-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5f1de21ab289a0d441bfc062ec53483076ce5b1ea64f4e47b845aaabf7aeb27c"
    else
      url "https://github.com/Barnett-Studios/baseplate/releases/download/v0.4.0/baseplate-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5f81292d11923b96797a0f1cc9f0f0fde8de1091dda0f0626173452df5331b57"
    end
  end

  def install
    bin.install "baseplate"
  end

  test do
    system "#{bin}/baseplate", "--help"
  end
end
