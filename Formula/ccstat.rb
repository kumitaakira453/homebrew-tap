class Ccstat < Formula
  desc "Claude Code session statistics"
  homepage "https://github.com/kumitaakira453/ccstat"
  version "0.2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kumitaakira453/ccstat/releases/download/v0.2.0/ccstat_darwin_arm64.tar.gz"
      sha256 "816fc003d82d45fbc68377c959f45412eb8f2b6c245121aa190e3ba74b3a9517"
    else
      url "https://github.com/kumitaakira453/ccstat/releases/download/v0.2.0/ccstat_darwin_amd64.tar.gz"
      sha256 "57740be470ca972b84d7bb20abc795f679b71d8ad187c0891c411b0555aba6d7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kumitaakira453/ccstat/releases/download/v0.2.0/ccstat_linux_arm64.tar.gz"
      sha256 "32ff9a5e4866b4e9edb45561becdc1b10fc7ba5babec812d45b304c6b31dc5e6"
    else
      url "https://github.com/kumitaakira453/ccstat/releases/download/v0.2.0/ccstat_linux_amd64.tar.gz"
      sha256 "0d319ed1a2a6cfcf4ff89416e12ddcee08c44ac59478e3e2aa2d8a161ee36e93"
    end
  end

  def install
    bin.install "ccstat"
  end

  test do
    assert_match "ccstat", shell_output("#{bin}/ccstat --help")
  end
end
