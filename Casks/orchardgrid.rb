cask "orchardgrid" do
  version "1.17.10"
  sha256 "6facd5d1b257e6e17bd993a4419a99f0217225a8a386bb0e791c231619da5cb4"

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
