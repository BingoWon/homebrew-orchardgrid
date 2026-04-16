cask "orchardgrid" do
  version "1.21.0"
  sha256 "3a6dc0f6173688becb63f0c2247d82e480d405462b4096ea2946b9004383a5af"

  url "https://github.com/BingoWon/orchardgrid-apple/releases/download/v#{version}/OrchardGrid-v#{version}-macos.dmg",
      verified: "github.com/BingoWon/orchardgrid-apple/"
  name "OrchardGrid"
  desc "Share Apple Intelligence Anywhere"
  homepage "https://orchardgrid.com/"

  app "OrchardGrid.app"
  binary "#{appdir}/OrchardGrid.app/Contents/Resources/og"

  zap trash: [
    "~/.config/orchardgrid",
    "~/Library/Application Support/com.orchardgrid.app",
    "~/Library/Containers/com.orchardgrid.app",
    "~/Library/Group Containers/group.com.orchardgrid.shared",
  ]
end
