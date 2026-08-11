cask "parallel-harness-pets" do
  version "0.1.1"

  on_macos do
    on_intel do
      sha256 "e70aeeea3684f29e9c2557b54b594b05d9c0d3b5d1b3fc308298e9bae3704600"
      url "https://github.com/TevanB/parallel-harness-pets/releases/download/v#{version}/parallel-harness-pets_#{version}_darwin_amd64.tar.gz"
    end
    on_arm do
      sha256 "af5c813791a00620692f35f2dc356afc8b84819c0546c3cbeab2a88f81fd43ce"
      url "https://github.com/TevanB/parallel-harness-pets/releases/download/v#{version}/parallel-harness-pets_#{version}_darwin_arm64.tar.gz"
    end
  end

  on_linux do
    on_intel do
      sha256 "f0cbd38445fa07bde18db6b0bd731c2093c26af9d50fd489ea3e2be2dad53dc7"
      url "https://github.com/TevanB/parallel-harness-pets/releases/download/v#{version}/parallel-harness-pets_#{version}_linux_amd64.tar.gz"
    end
    on_arm do
      sha256 "38703a7b1127d93bfebce74e5492d9a3a3c869c6c7402607f1b3123be143cc5e"
      url "https://github.com/TevanB/parallel-harness-pets/releases/download/v#{version}/parallel-harness-pets_#{version}_linux_arm64.tar.gz"
    end
  end

  name "parallel-harness-pets"
  desc "A creature for every worktree, in your agent's status line"
  homepage "https://github.com/TevanB/parallel-harness-pets"

  binary "pets"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{staged_path}/pets"],
                   must_succeed: false
  end
end
