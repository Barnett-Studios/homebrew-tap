class Attestr < Formula
  desc "Promise-Theory verification: assess a turn's output against declared promises"
  homepage "https://github.com/Barnett-Studios/attestr"
  version "0.5.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Barnett-Studios/attestr/releases/download/v0.5.0/attestr-aarch64-apple-darwin.tar.gz"
      sha256 "3525885e0b212f9f3e6f5ca0d7cf4dbd39a474154b5aa5821ee3bf9aeb02bf8a"
    else
      url "https://github.com/Barnett-Studios/attestr/releases/download/v0.5.0/attestr-x86_64-apple-darwin.tar.gz"
      sha256 "938f3e479841f0535e4dfeed58aa7aef67583c05f300857c667184f7169caa80"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Barnett-Studios/attestr/releases/download/v0.5.0/attestr-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8d3eff03d794506707c2349bb04e8461cbf5cf558ff185b1ce249aff01b47c02"
    else
      url "https://github.com/Barnett-Studios/attestr/releases/download/v0.5.0/attestr-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2778429ccbc2f550658d04faba77c8bd66f4fbe2444de959f97481d5762aee67"
    end
  end

  def install
    bin.install "attestr"
  end

  test do
    system "#{bin}/attestr", "--help"
  end
end
