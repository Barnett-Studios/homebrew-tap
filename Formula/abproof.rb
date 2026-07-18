class Abproof < Formula
  desc "Offline A/B change-validation harness for coding agents"
  homepage "https://github.com/Barnett-Studios/abproof"
  version "0.1.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Barnett-Studios/abproof/releases/download/v0.1.2/abproof-aarch64-apple-darwin.tar.gz"
      sha256 "211b6d272ed76019fafc7d8e4b461ec2007ec3221eb94452ead2836dbc0c21f3"
    else
      url "https://github.com/Barnett-Studios/abproof/releases/download/v0.1.2/abproof-x86_64-apple-darwin.tar.gz"
      sha256 "3bf13dd077e4c274d830a56db922fa77cf91bf6da955eda6d3c2084c6099bcf7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Barnett-Studios/abproof/releases/download/v0.1.2/abproof-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "66a5bef0f434b63d6e689fe0639d99edac62f79ff55b9fb545e96c7cfaf551b4"
    else
      url "https://github.com/Barnett-Studios/abproof/releases/download/v0.1.2/abproof-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ffdbda2a4466c6d199159108fefc6ef730b0c6725c9a395406e7219fbc44829a"
    end
  end

  def install
    bin.install "abproof"
  end

  test do
    system "#{bin}/abproof", "--help"
  end
end
