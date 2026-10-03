class Cxpak < Formula
  desc "Token-budgeted codebase context for LLMs"
  homepage "https://github.com/Barnett-Studios/cxpak"
  version "3.3.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Barnett-Studios/cxpak/releases/download/v3.3.0/cxpak-aarch64-apple-darwin.tar.gz"
      sha256 "189fbc8fb8beeb24a30643a93d3a7a72a62d795137f05dbb957c951ccb646add"
    else
      url "https://github.com/Barnett-Studios/cxpak/releases/download/v3.3.0/cxpak-x86_64-apple-darwin.tar.gz"
      sha256 "bdaa7f37b225cc1c0375d861c20fe07c2ae4605ac93443107be66bfb68e62c27"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Barnett-Studios/cxpak/releases/download/v3.3.0/cxpak-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3cb540df913a5ba95cc01205f4841b67169a4fa5c2e41dc72636052e97088b40"
    else
      url "https://github.com/Barnett-Studios/cxpak/releases/download/v3.3.0/cxpak-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2c5bba0aeb2163ee0fad69f6cb30902ccd28271306b0aa245c4f2d9f219d6765"
    end
  end

  def install
    bin.install "cxpak"
  end

  test do
    system "#{bin}/cxpak", "--help"
  end
end
