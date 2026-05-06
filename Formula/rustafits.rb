class Rustafits < Formula
  desc "High-performance FITS/XISF to JPEG converter with auto-stretch"
  homepage "https://github.com/eg013ra1n/rustafits"
  url "https://github.com/eg013ra1n/rustafits/archive/v1.0.1.tar.gz"
  sha256 "65a35f7fc9b59879a986ecbb2a2928842a664818c7edf6235c845380b6c0e4bc"
  license "Apache-2.0"

  depends_on "cmake" => :build
  depends_on "nasm" => :build
  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "FITS/XISF to JPEG Converter", shell_output("#{bin}/rustafits --help", 1)
  end
end
