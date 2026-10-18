class AutoSop < Formula
  desc "Make Claude Code self-improving — auto-detect mistakes, write CLAUDE.md directives"
  homepage "https://auto-sop.com"
  url "https://registry.npmjs.org/auto-sop/-/auto-sop-0.1.37.tgz"
  sha256 "ee2bef3213e39bd87a1cd9cf00274039201a53aad930feb52760073e45e6b321"
  license "Elastic-2.0"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec/"bin/auto-sop"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/auto-sop --version")
  end
end
