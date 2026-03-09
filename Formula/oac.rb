class Oac < Formula
  desc "Guided macOS cleaner for leftover AI assistant files"
  homepage "https://github.com/carlisle0615/OpenAgentCleaner"
  version "0.1.3"

  on_arm do
    url "https://github.com/carlisle0615/OpenAgentCleaner/releases/download/v#{version}/oac_0.1.3_darwin_arm64.tar.gz"
    sha256 "4cfe2827175c5aad3068dd6688b609055bb2231232c2953ef9da5421618d35da"
  end

  on_intel do
    url "https://github.com/carlisle0615/OpenAgentCleaner/releases/download/v#{version}/oac_0.1.3_darwin_amd64.tar.gz"
    sha256 "e77792f777baf59a624d33ee2b259af9ac67dce0949e798101f3bea9c315474d"
  end

  def install
    bin.install "oac"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/oac version")
  end
end
