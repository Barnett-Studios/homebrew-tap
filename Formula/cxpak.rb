class Cxpak < Formula
  desc "Token-budgeted codebase context for LLMs"
  homepage "https://github.com/Barnett-Studios/cxpak"
  version "1.3.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Barnett-Studios/cxpak/releases/download/v1.3.0/cxpak-aarch64-apple-darwin.tar.gz"
      sha256 "6a6687b5b16a385715745599a5f047d4dc31e06c9e7d17d3660a43e34a311ad8"
    else
      url "https://github.com/Barnett-Studios/cxpak/releases/download/v1.3.0/cxpak-x86_64-apple-darwin.tar.gz"
      sha256 "86e83b0df3bf4ee9baf132df1a2bd2b9e91fc6f642546701dc10c8f90e871d76"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Barnett-Studios/cxpak/releases/download/v1.3.0/cxpak-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a7d890c9d33730263267c6f22e84f82376215195a14cec9ff5222855846d9872"
    else
      url "https://github.com/Barnett-Studios/cxpak/releases/download/v1.3.0/cxpak-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8b27f556f7238f2cb5f3e109c9820fe0ffda360c653cd93f6ca5816a7f5e56ef"
    end
  end

  def install
    bin.install "cxpak"
  end

  test do
    system "#{bin}/cxpak", "--help"
  end
end
