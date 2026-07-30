class Abproof < Formula
  desc "Offline A/B change-validation harness for coding agents"
  homepage "https://github.com/Barnett-Studios/abproof"
  version "0.2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Barnett-Studios/abproof/releases/download/v0.2.0/abproof-aarch64-apple-darwin.tar.gz"
      sha256 "b759446fd18b93988f56be702566189298e818b09184d4728a054a7a1fee953a"
    else
      url "https://github.com/Barnett-Studios/abproof/releases/download/v0.2.0/abproof-x86_64-apple-darwin.tar.gz"
      sha256 "d09942b6c146ee3ec5fd30eccb4c42a919fcdb0590471bf01cc73aa42c1f9ef2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Barnett-Studios/abproof/releases/download/v0.2.0/abproof-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "601dbebeb2f9151fef041812ecce7689f5b1c567c0989501975c654cefe8dadf"
    else
      url "https://github.com/Barnett-Studios/abproof/releases/download/v0.2.0/abproof-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3466c48d337b0ce4817164f40391aee7490a30056197954a00255c378ced386a"
    end
  end

  def install
    bin.install "abproof"
  end

  test do
    system "#{bin}/abproof", "--help"
  end
end
