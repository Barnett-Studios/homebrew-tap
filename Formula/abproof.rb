class Abproof < Formula
  desc "Offline A/B change-validation harness for coding agents"
  homepage "https://github.com/Barnett-Studios/abproof"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Barnett-Studios/abproof/releases/download/v0.1.0/abproof-aarch64-apple-darwin.tar.gz"
      sha256 "fdedd1c95a933f9a8caa0124003832679d20f3ff26f71f529f144380dc524f3a"
    else
      url "https://github.com/Barnett-Studios/abproof/releases/download/v0.1.0/abproof-x86_64-apple-darwin.tar.gz"
      sha256 "5d3ca8ed8d951959d2674242f283d1f16c923461d4a874fcd41eaa5446171e82"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Barnett-Studios/abproof/releases/download/v0.1.0/abproof-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "69743f9dd198f0a0d5ff8ca4f34d707691425639a271879dc89cf49db0c9eb1b"
    else
      url "https://github.com/Barnett-Studios/abproof/releases/download/v0.1.0/abproof-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e8a706ed8642d8305080d88674b51ed0e2bb43919c01c910175ee29d790e49cc"
    end
  end

  def install
    bin.install "abproof"
  end

  test do
    system "#{bin}/abproof", "--help"
  end
end
