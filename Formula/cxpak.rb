class Cxpak < Formula
  desc "Token-budgeted codebase context for LLMs"
  homepage "https://github.com/Barnett-Studios/cxpak"
  version "3.6.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Barnett-Studios/cxpak/releases/download/v3.6.0/cxpak-aarch64-apple-darwin.tar.gz"
      sha256 "0d75437d4f9cf5a230242cdc19d35c7af2959cb8c7803414535e8b9d863fd2d1"
    else
      url "https://github.com/Barnett-Studios/cxpak/releases/download/v3.6.0/cxpak-x86_64-apple-darwin.tar.gz"
      sha256 "3e98eade8508809ea53cfd8885dc8d76f5716732fac19f5fdc69d66eb46f2b31"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Barnett-Studios/cxpak/releases/download/v3.6.0/cxpak-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8381b83adcac2cf1d33e0d42e714bc5053a6f43500e80ce1a8d82248cdce0648"
    else
      url "https://github.com/Barnett-Studios/cxpak/releases/download/v3.6.0/cxpak-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "cca82443357762d9776fc1346279a97e94f395393d729f72af1f599f104ff61f"
    end
  end

  def install
    bin.install "cxpak"
  end

  test do
    system "#{bin}/cxpak", "--help"
  end
end
