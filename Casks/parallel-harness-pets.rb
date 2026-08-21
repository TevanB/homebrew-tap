cask "parallel-harness-pets" do
  version "0.2.5"

  on_macos do
    on_intel do
      sha256 "2da30e093ad6ed8a8ceeb4eaee93719b81d4b9884ecfe83060543e1f6bf46c22"
      url "https://github.com/TevvvB/parallel-harness-pets/releases/download/v#{version}/parallel-harness-pets_#{version}_darwin_amd64.tar.gz"
    end
    on_arm do
      sha256 "1c0ec110a9d3c59ef31f62ff2b25970ce9f600fc2d1048ff0864d9e2a06a9dc2"
      url "https://github.com/TevvvB/parallel-harness-pets/releases/download/v#{version}/parallel-harness-pets_#{version}_darwin_arm64.tar.gz"
    end
  end

  on_linux do
    on_intel do
      sha256 "8d410fcc201136729f15161f9f856e2ea9923394833fb0839fb9f31938f83d63"
      url "https://github.com/TevvvB/parallel-harness-pets/releases/download/v#{version}/parallel-harness-pets_#{version}_linux_amd64.tar.gz"
    end
    on_arm do
      sha256 "ddea8a3e5e00469c5dc6ec5c585cfe432499faab5585d6c1de76f16227c0ff55"
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
