class Cxpak < Formula
  desc "Token-budgeted codebase context for LLMs"
  homepage "https://github.com/Barnett-Studios/cxpak"
  version "3.5.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Barnett-Studios/cxpak/releases/download/v3.5.1/cxpak-aarch64-apple-darwin.tar.gz"
      sha256 "ec00a73dcb8c0fd11f31b1994ba07d3e01c7a26973597c22759b0df09e5cc58f"
    else
      url "https://github.com/Barnett-Studios/cxpak/releases/download/v3.5.1/cxpak-x86_64-apple-darwin.tar.gz"
      sha256 "401b366ca80e460a970671192238f0be9f11cb1747259671460c0f3496dbb0d8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Barnett-Studios/cxpak/releases/download/v3.5.1/cxpak-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "fc3b73dfff0353f1e26a41f1f03a61a4675975a8cafb8d2fb3e2b48ea84f34a3"
    else
      url "https://github.com/Barnett-Studios/cxpak/releases/download/v3.5.1/cxpak-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "95040f11fc36549adf099688c8d5b72a5ba123662ce2f6f30cac47adc5f89c01"
    end
  end

  def install
    bin.install "cxpak"
  end

  test do
    system "#{bin}/cxpak", "--help"
  end
end
