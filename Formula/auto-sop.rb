class AutoSop < Formula
  desc "Make Claude Code self-improving — auto-detect mistakes, write CLAUDE.md directives"
  homepage "https://auto-sop.com"
  url "https://registry.npmjs.org/auto-sop/-/auto-sop-0.1.23.tgz"
  sha256 "b58df7cc21d67378975e9cfc79c8c152dc6513b524cb3969224ae53f500feb09"
  license "Elastic-2.0"

  depends_on "node@20"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec/"bin/auto-sop"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/auto-sop --version")
  end
end
