class Abproof < Formula
  desc "Offline A/B change-validation harness for coding agents"
  homepage "https://github.com/Barnett-Studios/abproof"
  version "0.1.5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Barnett-Studios/abproof/releases/download/v0.1.5/abproof-aarch64-apple-darwin.tar.gz"
      sha256 "47b0ddcfac03fdc3be5a88bbb54c194d641478e7e581b91d8c684c0af26c1660"
    else
      url "https://github.com/Barnett-Studios/abproof/releases/download/v0.1.5/abproof-x86_64-apple-darwin.tar.gz"
      sha256 "9be8714cf3c6e558e643db2f53732003958306e211664338f97e4f2896e57c57"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Barnett-Studios/abproof/releases/download/v0.1.5/abproof-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "bb8720f162b10903cba704daa28ab60c4811478c32f3d51312d2a4b50c9e11c0"
    else
      url "https://github.com/Barnett-Studios/abproof/releases/download/v0.1.5/abproof-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ed1a297de09dff6a3445dae0a850d5e4b1f36292691738419c32b5072ec928d4"
    end
  end

  def install
    bin.install "abproof"
  end

  test do
    system "#{bin}/abproof", "--help"
  end
end
