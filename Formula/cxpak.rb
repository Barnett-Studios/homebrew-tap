class Cxpak < Formula
  desc "Token-budgeted codebase context for LLMs"
  homepage "https://github.com/Barnett-Studios/cxpak"
  version "0.11.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Barnett-Studios/cxpak/releases/download/v0.11.0/cxpak-aarch64-apple-darwin.tar.gz"
      sha256 "431d03301cdf96cce56795bde718ea5ddc7d7e0f38a2f0c0bf3865c644d8438f"
    else
      url "https://github.com/Barnett-Studios/cxpak/releases/download/v0.11.0/cxpak-x86_64-apple-darwin.tar.gz"
      sha256 "d8aba0e5eb4de495e471eebd2e7f668e46e5bb9a723e27c862cdd63d37a55e72"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Barnett-Studios/cxpak/releases/download/v0.11.0/cxpak-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "331a9668694d3fcd5d1703e97254bc45b4fe1e084cda5e53e6abccbf60380e6a"
    else
      url "https://github.com/Barnett-Studios/cxpak/releases/download/v0.11.0/cxpak-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "132fe3ad5f4d08eaed5a7e26057641ed4e7075c6ba79d8302b8c8c364e69c3f0"
    end
  end

  def install
    bin.install "cxpak"
  end

  test do
    system "#{bin}/cxpak", "--help"
  end
end
