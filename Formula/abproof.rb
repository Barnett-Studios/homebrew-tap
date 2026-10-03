class Abproof < Formula
  desc "Offline A/B change-validation harness for coding agents"
  homepage "https://github.com/Barnett-Studios/abproof"
  version "0.4.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Barnett-Studios/abproof/releases/download/v0.4.0/abproof-aarch64-apple-darwin.tar.gz"
      sha256 "ef26a3f3d2cf751259c2639ae73744f0f7f61a71949b3a82836591c46a9d0e17"
    else
      url "https://github.com/Barnett-Studios/abproof/releases/download/v0.4.0/abproof-x86_64-apple-darwin.tar.gz"
      sha256 "b49c972cf5bb672b999630be960b202c41bd9dcb40250e4b1c262b931ec071fe"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Barnett-Studios/abproof/releases/download/v0.4.0/abproof-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e9d852b1a35c08c9014b9181a4f42e097e42c40690c4eae5828761a10e80a942"
    else
      url "https://github.com/Barnett-Studios/abproof/releases/download/v0.4.0/abproof-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9fb6ebee662a8b38b613c32224baa4ab9e04eb3adf1597dcc1166a298f6d979f"
    end
  end

  def install
    bin.install "abproof"
  end

  test do
    system "#{bin}/abproof", "--help"
  end
end
