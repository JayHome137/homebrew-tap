cask "deepseekmonitor" do
  version "1.5.1"
  sha256 "261807e97ca97bc435755522d7d94ae5a8556b21b8ea106901bdd5eaaa9eff97"

  url "https://github.com/JayHome137/DeepSeekMonitor/releases/download/v#{version}/DeepSeekMonitor-v#{version}.dmg"
  name "DeepSeek Monitor"
  desc "Menu bar app for monitoring DeepSeek V4 Flash and Pro usage"
  homepage "https://github.com/JayHome137/DeepSeekMonitor"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "DeepSeekMonitor.app"

  zap trash: [
    "~/Library/Application Support/DeepSeekMonitor",
    "~/Library/Containers/com.deepseek.monitor.widget",
    "~/Library/Group Containers/N5YV5FV235.group.com.deepseek.monitor",
    "~/Library/Preferences/com.deepseek.monitor.plist",
  ]
end
