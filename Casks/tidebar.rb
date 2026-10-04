cask "tidebar" do
  version "1.0.3"
  sha256 "9c197e7f53afe8e681c3929890c146ba1e3db8cf3b0ae65e3bf028cafc780ef9"

  url "https://github.com/JustinFay01/Tidebar/releases/download/v#{version}/Tidebar-#{version}.zip"
  name "Tidebar"
  desc "Menu bar app showing live Dexcom glucose readings"
  homepage "https://github.com/JustinFay01/Tidebar"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "Tidebar.app"

  uninstall quit: "com.jnfcorp.Tidebar"

  zap trash: [
    "~/Library/Application Scripts/com.jnfcorp.Tidebar",
    "~/Library/Containers/com.jnfcorp.Tidebar",
  ]
end
