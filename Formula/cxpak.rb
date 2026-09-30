class Cxpak < Formula
  desc "Token-budgeted codebase context for LLMs"
  homepage "https://github.com/Barnett-Studios/cxpak"
  version "3.2.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Barnett-Studios/cxpak/releases/download/v3.2.1/cxpak-aarch64-apple-darwin.tar.gz"
      sha256 "671bae5d6add78996364cc6760fa94e4f70f1ef9b3ce6d0c5e41b0f32d2b7ca1"
    else
      url "https://github.com/Barnett-Studios/cxpak/releases/download/v3.2.1/cxpak-x86_64-apple-darwin.tar.gz"
      sha256 "d93a5426385572402899ecb707d8932b805adb15ea9924cd2259e72ededc9014"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Barnett-Studios/cxpak/releases/download/v3.2.1/cxpak-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3f12ef7cbafec38feb70d569d96aa655729c68a6153c13ea9aeb37aadc3acfc2"
    else
      url "https://github.com/Barnett-Studios/cxpak/releases/download/v3.2.1/cxpak-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5de3aeeec9ad6d77443467e8b5c7d55a97ad45ea0e9ebf5dba1a27391febe7a1"
    end
  end

  def install
    bin.install "cxpak"
  end

  test do
    system "#{bin}/cxpak", "--help"
  end
end
