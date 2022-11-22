github_username = ENV["HOSTNAME"].split("-").first

if !File.exists?("/workspace/.revpro-cli-setup")
  system("git clone https://github.com/revature-curriculum/revpro-cli /workspace/revpro-cli")
  system("cd /workspace/revpro-cli && bundle install && rake install")
  system("touch /workspace/.revpro-cli-setup")
end

if !File.exists?("/workspace/.pep-labs-started")
  system("revpro start https://github.com/#{github_username}/pep-labs /workspace/pep-labs")
  system("touch /workspace/.pep-labs-started")
  system("cd /workspace/pep-labs && revpro open Intro_To_Java/Start")
end
