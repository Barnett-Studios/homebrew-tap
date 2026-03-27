class Cxpak < Formula
  desc "Token-budgeted codebase context for LLMs"
  homepage "https://github.com/Barnett-Studios/cxpak"
  version "1.0.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Barnett-Studios/cxpak/releases/download/v1.0.3/cxpak-aarch64-apple-darwin.tar.gz"
      sha256 "0d5dfa98a18153f45af1852f577e7d36535bc55aea336ad68594c0e699e8fa35"
    else
      url "https://github.com/Barnett-Studios/cxpak/releases/download/v1.0.3/cxpak-x86_64-apple-darwin.tar.gz"
      sha256 "8eb50602b56cbde967053b2eba85d52002f4acc1fe41db81fa7452b46ed48228"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Barnett-Studios/cxpak/releases/download/v1.0.3/cxpak-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8f88dd954b1e3c80b3a1866a924283c7453bd5ea4b94fe02ffdfdf262b7d1d9b"
    else
      url "https://github.com/Barnett-Studios/cxpak/releases/download/v1.0.3/cxpak-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0c646aa5cc9ebb5bd5bf9dfa69b7899f1a9140ce3f667afc63d0bdd4efe08715"
    end
  end

  def install
    bin.install "cxpak"
  end

  test do
    system "#{bin}/cxpak", "--help"
  end
end
