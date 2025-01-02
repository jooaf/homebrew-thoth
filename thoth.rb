class Thoth < Formula
  desc "A terminal scratchpad akin to Heynote"
  homepage "https://github.com/jooaf/thoth"
  version "0.1.71"
  
  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/jooaf/thoth/releases/download/v#{version}/thoth_#{version}_darwin_amd64.tar.gz"
      sha256 "071e5dbab6bc975ac65cd851deb093d7e250289af1996b657a86b9a5d03cd1e1"
    else
      url "https://github.com/jooaf/thoth/releases/download/v#{version}/thoth_#{version}_darwin_arm64.tar.gz"
      sha256 "7ffacddfb36eb7e779c29da39c1e16290d7923eb74c8c6978ee1ba9097f56702"
    end
  end

  def install
    bin.install "thoth"
  end

  test do
    assert_match "thoth version #{version}", shell_output("#{bin}/thoth --version")
  end
end
