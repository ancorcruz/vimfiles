include FileUtils

desc "Install Vimfiles"
task :install do
  ln_sf "~/.vim/vimrc", "~/.vimrc" 
  ln_sf "~/.vim/gvimrc", "~/.gvimrc" 
end

desc "Update Vimfiles"
task :update do
  system "git pull"
end
