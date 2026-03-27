class Cxpak < Formula
  desc "Token-budgeted codebase context for LLMs"
  homepage "https://github.com/Barnett-Studios/cxpak"
  version "1.0.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Barnett-Studios/cxpak/releases/download/v1.0.4/cxpak-aarch64-apple-darwin.tar.gz"
      sha256 "5599cb666abee374a93ac1c0f6214ee87ed42ce32b31be44d0f6e74cc17cdfe6"
    else
      url "https://github.com/Barnett-Studios/cxpak/releases/download/v1.0.4/cxpak-x86_64-apple-darwin.tar.gz"
      sha256 "51941fa6afef8ce2779cf063f21d1a4e6a86912b05418795cbdaad5c3c6e2313"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Barnett-Studios/cxpak/releases/download/v1.0.4/cxpak-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ac00116fcc924d8629b9005e236ed01d1a72dd6d8efa5bf423155caa47a2f7b8"
    else
      url "https://github.com/Barnett-Studios/cxpak/releases/download/v1.0.4/cxpak-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "cd61427927c42655e38cf4efac5e83e52d8c13227a9b00f06abd7f26cec481a5"
    end
  end

  def install
    bin.install "cxpak"
  end

  test do
    system "#{bin}/cxpak", "--help"
  end
end
