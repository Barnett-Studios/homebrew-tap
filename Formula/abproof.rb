class Abproof < Formula
  desc "Offline A/B change-validation harness for coding agents"
  homepage "https://github.com/Barnett-Studios/abproof"
  version "0.1.6"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Barnett-Studios/abproof/releases/download/v0.1.6/abproof-aarch64-apple-darwin.tar.gz"
      sha256 "f6758295730a3d60bf91e0137ce1b4cc51e8edecbd13a7cc007acfca291a71fa"
    else
      url "https://github.com/Barnett-Studios/abproof/releases/download/v0.1.6/abproof-x86_64-apple-darwin.tar.gz"
      sha256 "d392fba68ee7bf89748effa56ffd6817a363b3d57ef17aac8f48b038bedb2d5b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Barnett-Studios/abproof/releases/download/v0.1.6/abproof-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "169ff7d7d549531222d798fa13864b8e36935d21d06eb36525cfd331cdc3e355"
    else
      url "https://github.com/Barnett-Studios/abproof/releases/download/v0.1.6/abproof-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3bf4e4c162732855fd42689eed1702a654f8df571bdcf8915c0c0e1405bacf1d"
    end
  end

  def install
    bin.install "abproof"
  end

  test do
    system "#{bin}/abproof", "--help"
  end
end
