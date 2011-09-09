DiasporaClient.config do |d|
  d.test_mode = true
  d.application_base_url = "http://localhost:4000/" #"https://www.awesomeapp.com:443/"

  d.manifest_field(:name, "AwesomeApp.")
  d.manifest_field(:description, "desc")
  d.manifest_field(:icon_url, "/images/icon48.png")

  d.manifest_field(:permissions_overview, "SampleApp wants to post back to your Diaspora account.")

  d.permission(:profile, :read, "SampleApp wants to view your profile so that it can show it to other users.")
  d.account_class = User

end
