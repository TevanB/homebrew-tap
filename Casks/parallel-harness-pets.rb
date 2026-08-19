cask "parallel-harness-pets" do
  version "0.2.2"

  on_macos do
    on_intel do
      sha256 "f4b444a8eeb64930fc2b44336ad35af52d543d8c22601e21708a6f82be91d841"
      url "https://github.com/TevvvB/parallel-harness-pets/releases/download/v#{version}/parallel-harness-pets_#{version}_darwin_amd64.tar.gz"
    end
    on_arm do
      sha256 "f6c1ce3100e5a6460c05028ff77a8dcd0dbb0f0f2e62f167a792676e16995f19"
      url "https://github.com/TevvvB/parallel-harness-pets/releases/download/v#{version}/parallel-harness-pets_#{version}_darwin_arm64.tar.gz"
    end
  end

  on_linux do
    on_intel do
      sha256 "70511234c65bf41788afa50b451403f6060cc6b501b1324a4a3b8bc73f333486"
      url "https://github.com/TevvvB/parallel-harness-pets/releases/download/v#{version}/parallel-harness-pets_#{version}_linux_amd64.tar.gz"
    end
    on_arm do
      sha256 "81d8ba433737f24245a68ebb5ed7029785f3b2af0c90520910491c48ebc399bc"
      url "https://github.com/TevvvB/parallel-harness-pets/releases/download/v#{version}/parallel-harness-pets_#{version}_linux_arm64.tar.gz"
    end
  end

  name "parallel-harness-pets"
  desc "A creature for every worktree, in your agent's status line"
  homepage "https://github.com/TevvvB/parallel-harness-pets"

  binary "pets"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{staged_path}/pets"],
                   must_succeed: false
  end
end
