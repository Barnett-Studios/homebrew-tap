class Cxpak < Formula
  desc "Token-budgeted codebase context for LLMs"
  homepage "https://github.com/Barnett-Studios/cxpak"
  version "1.0.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Barnett-Studios/cxpak/releases/download/v1.0.1/cxpak-aarch64-apple-darwin.tar.gz"
      sha256 "9d4146b73ec53a988751de9ccf3431b1d7bbd7e7e95c4d13e48ec9d9433c6999"
    else
      url "https://github.com/Barnett-Studios/cxpak/releases/download/v1.0.1/cxpak-x86_64-apple-darwin.tar.gz"
      sha256 "09fc76191a99c562f3360178db8b613c9bb7e155d85e8bfe4a40bafc88e7eb8b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Barnett-Studios/cxpak/releases/download/v1.0.1/cxpak-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2d6802a6d317d2c9b93e7bbb5e4b139ddd32cd18c15d0b1cde17f7b87b968970"
    else
      url "https://github.com/Barnett-Studios/cxpak/releases/download/v1.0.1/cxpak-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4333e7b766505134efb840566d55257105cfb1dfe0808864cbd47d6b11735d07"
    end
  end

  def install
    bin.install "cxpak"
  end

  test do
    system "#{bin}/cxpak", "--help"
  end
end
