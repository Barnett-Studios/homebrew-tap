class Abproof < Formula
  desc "Offline A/B change-validation harness for coding agents"
  homepage "https://github.com/Barnett-Studios/abproof"
  version "0.4.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Barnett-Studios/abproof/releases/download/v0.4.1/abproof-aarch64-apple-darwin.tar.gz"
      sha256 "acfcaa593084a52379a2500279dea281a9f62feac406b21b04aeefb7188dc36d"
    else
      url "https://github.com/Barnett-Studios/abproof/releases/download/v0.4.1/abproof-x86_64-apple-darwin.tar.gz"
      sha256 "0bb82d0f3a00f60034d14b5902f3372a12dfc712a72c2930a9dc3c4771569d56"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Barnett-Studios/abproof/releases/download/v0.4.1/abproof-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "202b06a2b22bf3a3f2ac70bdb9f2b97a6f43e38caf8755ebce2d02677550a269"
    else
      url "https://github.com/Barnett-Studios/abproof/releases/download/v0.4.1/abproof-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e7c18403c3176f59fd1572b4855fc48696f016a369bccf30098a817291e24ce6"
    end
  end

  def install
    bin.install "abproof"
  end

  test do
    system "#{bin}/abproof", "--help"
  end
end
