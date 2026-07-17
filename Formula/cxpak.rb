class Cxpak < Formula
  desc "Token-budgeted codebase context for LLMs"
  homepage "https://github.com/Barnett-Studios/cxpak"
  version "3.1.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Barnett-Studios/cxpak/releases/download/v3.1.1/cxpak-aarch64-apple-darwin.tar.gz"
      sha256 "b08875d587bfec78fce9a5702713d8a816e55e608773c0858b1a5185bc7b95f3"
    else
      url "https://github.com/Barnett-Studios/cxpak/releases/download/v3.1.1/cxpak-x86_64-apple-darwin.tar.gz"
      sha256 "bd19a401d1f1777adfdf88566eaa58c49c67743ac7917a2a60b393156bd3017a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Barnett-Studios/cxpak/releases/download/v3.1.1/cxpak-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b12971e3a668701c0a7d2a422ac6258bd639f3e76b17218c76d51d7e109fcc3d"
    else
      url "https://github.com/Barnett-Studios/cxpak/releases/download/v3.1.1/cxpak-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6d7094712b53c33e620d148dd1a86f26435a4c9d902f08ca278a74c7ce110826"
    end
  end

  def install
    bin.install "cxpak"
  end

  test do
    system "#{bin}/cxpak", "--help"
  end
end
