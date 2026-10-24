class Abproof < Formula
  desc "Offline A/B change-validation harness for coding agents"
  homepage "https://github.com/Barnett-Studios/abproof"
  version "0.4.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Barnett-Studios/abproof/releases/download/v0.4.2/abproof-aarch64-apple-darwin.tar.gz"
      sha256 "cbc1975553c192c8ea0214a4a1879ceae06c07bd7c5990baba015ba8c1f775c6"
    else
      url "https://github.com/Barnett-Studios/abproof/releases/download/v0.4.2/abproof-x86_64-apple-darwin.tar.gz"
      sha256 "04b4c9b0e1dbddf620ee477b601613d2b028702896e71d97110bd656d93873fa"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Barnett-Studios/abproof/releases/download/v0.4.2/abproof-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "dd622c9f652f7a9b7da26874312234003f42459df624166e772c1d17f16038a3"
    else
      url "https://github.com/Barnett-Studios/abproof/releases/download/v0.4.2/abproof-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "aeb9360100a307dd6e5e7e56e0a239310e9e8be8306d3e2cda3a6bf09a4f1145"
    end
  end

  def install
    bin.install "abproof"
  end

  test do
    system "#{bin}/abproof", "--help"
  end
end
