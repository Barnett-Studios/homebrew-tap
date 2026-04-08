class Cxpak < Formula
  desc "Token-budgeted codebase context for LLMs"
  homepage "https://github.com/Barnett-Studios/cxpak"
  version "1.4.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Barnett-Studios/cxpak/releases/download/v1.4.0/cxpak-aarch64-apple-darwin.tar.gz"
      sha256 "661ad4f0b7fad4ea5c54f707c8867851a234872cf02a73afb9ad178fd4032983"
    else
      url "https://github.com/Barnett-Studios/cxpak/releases/download/v1.4.0/cxpak-x86_64-apple-darwin.tar.gz"
      sha256 "5b2cd2cb395e1fc26f8e69e288b2e005e032a64c1e93a7d97713c8d8d653ce5d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Barnett-Studios/cxpak/releases/download/v1.4.0/cxpak-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2d137cc278abadc8ee3c535ec45b88ddde6a5a85e0ec54bef12945d146cd0577"
    else
      url "https://github.com/Barnett-Studios/cxpak/releases/download/v1.4.0/cxpak-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c949c67c3f94e03ceee95fec8b976522f187c2db8c0413db4d023aa54b66886c"
    end
  end

  def install
    bin.install "cxpak"
  end

  test do
    system "#{bin}/cxpak", "--help"
  end
end
