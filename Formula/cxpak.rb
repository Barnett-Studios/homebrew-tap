class Cxpak < Formula
  desc "Token-budgeted codebase context for LLMs"
  homepage "https://github.com/Barnett-Studios/cxpak"
  version "2.3.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Barnett-Studios/cxpak/releases/download/v2.3.0/cxpak-aarch64-apple-darwin.tar.gz"
      sha256 "87d513ca0fffb94147505d616664af674454a1a55c761d52c77e7f30283fc081"
    else
      url "https://github.com/Barnett-Studios/cxpak/releases/download/v2.3.0/cxpak-x86_64-apple-darwin.tar.gz"
      sha256 "2e09937cbe75f8e2d930f7b36a16846ee07b883dc48b10f8bd5619ed97729b6c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Barnett-Studios/cxpak/releases/download/v2.3.0/cxpak-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2f7cc078446a65bdb8f2cbcc81b2e1932431b066d560fe99e90519c7afd3d580"
    else
      url "https://github.com/Barnett-Studios/cxpak/releases/download/v2.3.0/cxpak-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c98d142aec62a70bb5ecccdf44120aaa55641a26b27d5a52821a093c79dd8cac"
    end
  end

  def install
    bin.install "cxpak"
  end

  test do
    system "#{bin}/cxpak", "--help"
  end
end
