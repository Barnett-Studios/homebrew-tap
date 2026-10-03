class Cxpak < Formula
  desc "Token-budgeted codebase context for LLMs"
  homepage "https://github.com/Barnett-Studios/cxpak"
  version "3.4.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Barnett-Studios/cxpak/releases/download/v3.4.0/cxpak-aarch64-apple-darwin.tar.gz"
      sha256 "b8f437718d0ae01b1765c68b1ffb79a57f261ed6245c0dc44aa66231b45e9dbd"
    else
      url "https://github.com/Barnett-Studios/cxpak/releases/download/v3.4.0/cxpak-x86_64-apple-darwin.tar.gz"
      sha256 "b12df5592b489ee8c3d91141c0a90726a1b6f23f5f9a20419fdbad10a35f5511"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Barnett-Studios/cxpak/releases/download/v3.4.0/cxpak-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5baaed62cea771771536959d34bd478996ac93f0d2e6bff7372a45ac010801a4"
    else
      url "https://github.com/Barnett-Studios/cxpak/releases/download/v3.4.0/cxpak-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "99abd22673046afdb1f5728f87f16f552ae3edb06954b436d72b74c30fb6cf4f"
    end
  end

  def install
    bin.install "cxpak"
  end

  test do
    system "#{bin}/cxpak", "--help"
  end
end
