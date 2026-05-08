class AutoSop < Formula
  desc "Make Claude Code self-improving — auto-detect mistakes, write CLAUDE.md directives"
  homepage "https://auto-sop.com"
  url "https://registry.npmjs.org/auto-sop/-/auto-sop-0.1.8.tgz"
  sha256 "d937b1ee1e0673f4307fd1eacd0eb80e6a8d8a74aa5c4e870d1f4378df025c0b"
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
