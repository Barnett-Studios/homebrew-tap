class Cxpak < Formula
  desc "Token-budgeted codebase context for LLMs"
  homepage "https://github.com/Barnett-Studios/cxpak"
  version "3.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Barnett-Studios/cxpak/releases/download/v3.1.0/cxpak-aarch64-apple-darwin.tar.gz"
      sha256 "20e9301a4c3e9da1fbe191c77bccc5691a42e63e0d6bc8d0f563d5eab4d468ea"
    else
      url "https://github.com/Barnett-Studios/cxpak/releases/download/v3.1.0/cxpak-x86_64-apple-darwin.tar.gz"
      sha256 "2f775727a17489ab5cdc82ac0506e45237cf27dfbd973e183d900b02ef42d839"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Barnett-Studios/cxpak/releases/download/v3.1.0/cxpak-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c25a1f477a1e393efe0f456de5db58f8e262b2c8c0619ba51a98fa0000d65eb7"
    else
      url "https://github.com/Barnett-Studios/cxpak/releases/download/v3.1.0/cxpak-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8cc0def5a305065d3dcc40220f800d31491395b91e673d559273cb3f4056f319"
    end
  end

  def install
    bin.install "cxpak"
  end

  test do
    system "#{bin}/cxpak", "--help"
  end
end
