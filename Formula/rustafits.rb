class Rustafits < Formula
  desc "High-performance FITS/XISF to JPEG converter with auto-stretch"
  homepage "https://github.com/eg013ra1n/rustafits"
  url "https://github.com/eg013ra1n/rustafits/archive/v1.10.0.tar.gz"
  sha256 "a819813a418ef213ca2543c5c05e79d7d2fb909e778f8a076fa5fa0d8a2cfcbd"
  license "Apache-2.0"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "FITS/XISF to JPEG Converter", shell_output("#{bin}/rustafits --help", 1)
  end
end
