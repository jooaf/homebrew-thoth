class Thoth < Formula
  desc "A terminal scratchpad akin to Heynote"
  homepage "https://github.com/jooaf/thoth"
  version "0.1.56"
  
  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/jooaf/thoth/releases/download/v#{version}/thoth_#{version}_darwin_amd64.tar.gz"
      sha256 "3024925ebc5e1672fc2883fe2e14cd5dc6f87b4880837e58bf354ac2eafb7cbd"
    else
      url "https://github.com/jooaf/thoth/releases/download/v#{version}/thoth_#{version}_darwin_arm64.tar.gz"
      sha256 "375326279fc889bbf4da5d1911e70e200018314f8bf06a733f824b86f4d6e377"
    end
  end

  def install
    bin.install "thoth"
  end

  test do
    assert_match "thoth version #{version}", shell_output("#{bin}/thoth --version")
  end
end
