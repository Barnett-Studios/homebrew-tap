class Abproof < Formula
  desc "Offline A/B change-validation harness for coding agents"
  homepage "https://github.com/Barnett-Studios/abproof"
  version "0.1.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Barnett-Studios/abproof/releases/download/v0.1.4/abproof-aarch64-apple-darwin.tar.gz"
      sha256 "f11585e9a168e3ef7972a8d66f86b721ac52f00cb91ccd36cb243f2689a0b92d"
    else
      url "https://github.com/Barnett-Studios/abproof/releases/download/v0.1.4/abproof-x86_64-apple-darwin.tar.gz"
      sha256 "1fee074550ed7157602d0401ebbf1672cd56365bc11d54b1999a977de9e069f0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Barnett-Studios/abproof/releases/download/v0.1.4/abproof-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "35880ef3e738a1711569d928db6eefda8ebc25164b534713517cc09570d70fad"
    else
      url "https://github.com/Barnett-Studios/abproof/releases/download/v0.1.4/abproof-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "073c42ac39d8a9269292a44b18db78495e8338f0a99758d2a8d5c596cd0df797"
    end
  end

  def install
    bin.install "abproof"
  end

  test do
    system "#{bin}/abproof", "--help"
  end
end
