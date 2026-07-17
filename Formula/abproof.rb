class Abproof < Formula
  desc "Offline A/B change-validation harness for coding agents"
  homepage "https://github.com/Barnett-Studios/abproof"
  version "0.1.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Barnett-Studios/abproof/releases/download/v0.1.1/abproof-aarch64-apple-darwin.tar.gz"
      sha256 "c3e9db6891c7856eb6d30db0b331ecd444c21f0c0fb9f834a0f66b3a1e8b56c6"
    else
      url "https://github.com/Barnett-Studios/abproof/releases/download/v0.1.1/abproof-x86_64-apple-darwin.tar.gz"
      sha256 "8a89b119ff894c7c90fb33254a2c5c09c4e221db1ae36f8925a14132465e2d94"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Barnett-Studios/abproof/releases/download/v0.1.1/abproof-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9b6a30effafc1475d0446788a78e49a62bcc2f2e3ec5e9b881d8db2a325c23a3"
    else
      url "https://github.com/Barnett-Studios/abproof/releases/download/v0.1.1/abproof-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b254bd9e689bde379b382c79738153aa8d60b63eb7dae115e2a5fd8426ecb3ab"
    end
  end

  def install
    bin.install "abproof"
  end

  test do
    system "#{bin}/abproof", "--help"
  end
end
