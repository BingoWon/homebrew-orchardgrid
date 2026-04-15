cask "orchardgrid" do
  version "1.17.9"
  sha256 "e58209f6bc125f1d1a84c4fc592ca3d4e31fbc33f68982b650ff0a0c84c5de62"

  url "https://github.com/BingoWon/orchardgrid-app/releases/download/v#{version}/OrchardGrid-v#{version}-macos.dmg",
      verified: "github.com/BingoWon/orchardgrid-app/"
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
