class Abproof < Formula
  desc "Offline A/B change-validation harness for coding agents"
  homepage "https://github.com/Barnett-Studios/abproof"
  version "0.3.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Barnett-Studios/abproof/releases/download/v0.3.0/abproof-aarch64-apple-darwin.tar.gz"
      sha256 "c466f0269a8881565a58135e9cfa88dd3db7fd9f16336d75108db94e6ed00e87"
    else
      url "https://github.com/Barnett-Studios/abproof/releases/download/v0.3.0/abproof-x86_64-apple-darwin.tar.gz"
      sha256 "9e0a2c01255f64ed0f131ed12def8d5aa404982d543e9c6add51473fc7ff87a7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Barnett-Studios/abproof/releases/download/v0.3.0/abproof-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e3d2655e872c4b54955103c54aede2ee6bc6667d2d498c73ebbe8ffdfd718dfc"
    else
      url "https://github.com/Barnett-Studios/abproof/releases/download/v0.3.0/abproof-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0bf001579002cf8240c757a0c331469e6ed9429a2ddf66868ffe5e4edfc56b9b"
    end
  end

  def install
    bin.install "abproof"
  end

  test do
    system "#{bin}/abproof", "--help"
  end
end
