# github_username = ENV["HOSTNAME"].split("-").first

if !File.exists?("/workspace/.revpro-cli-setup")
  system("git clone https://github.com/revature-curriculum/revpro-cli /workspace/revpro-cli")
  system("echo \"Repo cloned to /workspace/revpro-cli\"")
  system("bundle install")
  system("rake install")
  system("echo \"Installed all dependencies.\"")
  system("cd /workspace/revpro-cli")
  system("echo \"Changed to /workspace/revpro-cli directory\"")
  system("touch /workspace/.revpro-cli-setup")
end

if !File.exists?("/workspace/.pep-labs-started")
  # system("revpro start https://github.com/#{github_username}/pep-labs /workspace/pep-labs")
  system("touch /workspace/.pep-labs-started")
  # if File.exists?("/workspace/pep-labs/.codelab/revpro.yml")
  #   system("cd /workspace/pep-labs && revpro open Start")
  # end
end
