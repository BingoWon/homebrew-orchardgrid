cask "orchardgrid" do
  version "1.19.6"
  sha256 "637a2441b34a3b395cbf0b33d5ef0bcb83b062051d631c6279f0da28c892ca4e"

  url "https://github.com/BingoWon/orchardgrid-apple/releases/download/v#{version}/OrchardGrid-v#{version}-macos.dmg",
      verified: "github.com/BingoWon/orchardgrid-apple/"
  name "OrchardGrid"
  desc "Share Apple Intelligence Anywhere"
  homepage "https://orchardgrid.com/"

  app "OrchardGrid.app"
  binary "#{appdir}/OrchardGrid.app/Contents/Resources/og"

  zap trash: [
    "~/Library/Application Support/com.orchardgrid.app",
    "~/Library/Containers/com.orchardgrid.app",
    "~/Library/Group Containers/group.com.orchardgrid.shared",
    "~/.config/orchardgrid",
  ]
end
