class Cxpak < Formula
  desc "Token-budgeted codebase context for LLMs"
  homepage "https://github.com/Barnett-Studios/cxpak"
  version "3.5.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Barnett-Studios/cxpak/releases/download/v3.5.0/cxpak-aarch64-apple-darwin.tar.gz"
      sha256 "1029cb9dabdb1f0bfba823e5d155f01f1cd2ae8ecbc648eb4862ebf620125ca6"
    else
      url "https://github.com/Barnett-Studios/cxpak/releases/download/v3.5.0/cxpak-x86_64-apple-darwin.tar.gz"
      sha256 "d6e08935aea8e6e3ee1fa8aee5526c0589e5441c3addb573bbfbc58cd443f94e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Barnett-Studios/cxpak/releases/download/v3.5.0/cxpak-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "cf56966f5ad889223aa33c9ad7a5bffbf1d383a46d48db36b02f04294349d7b6"
    else
      url "https://github.com/Barnett-Studios/cxpak/releases/download/v3.5.0/cxpak-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a6d183954be7f30aa618d1c52b537e2b11f7fb5d9c21be71d642b964cb405833"
    end
  end

  def install
    bin.install "cxpak"
  end

  test do
    system "#{bin}/cxpak", "--help"
  end
end
