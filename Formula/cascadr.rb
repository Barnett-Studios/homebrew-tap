class Cascadr < Formula
  desc "Cost-ordered fail-open LLM provider cascade"
  homepage "https://github.com/Barnett-Studios/cascadr"
  version "0.1.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Barnett-Studios/cascadr/releases/download/v0.1.2/cascadr-aarch64-apple-darwin.tar.gz"
      sha256 "b0a3573f560986fdc1dd4a6844cb1b267159e2a1f27ccc6ad7ef94a2b67c50f1"
    else
      url "https://github.com/Barnett-Studios/cascadr/releases/download/v0.1.2/cascadr-x86_64-apple-darwin.tar.gz"
      sha256 "ddda3d38775c0372e8ecdd40ef9e758dcfa54269385f2b221fe0c170aca20743"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Barnett-Studios/cascadr/releases/download/v0.1.2/cascadr-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7fb7c9d49529bfdd1a09e902f0ccd194d93520e404db31d2bccbe8398146fb84"
    else
      url "https://github.com/Barnett-Studios/cascadr/releases/download/v0.1.2/cascadr-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "529133e5f807dc5f0b0264eb929effc0fe87029e3a350b7451fb8f579a6471a0"
    end
  end

  def install
    bin.install "cascadr"
  end

  test do
    system "#{bin}/cascadr", "--help"
  end
end
