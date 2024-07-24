class Thoth < Formula
  desc "A terminal scratchpad app inspired by Heynote"
  homepage "https://github.com/jooaf/thoth"
  url "https://github.com/jooaf/thoth/archive/v0.1.0.tar.gz"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "thoth version 0.1.0", shell_output("#{bin}/thoth --version")
  end
end
