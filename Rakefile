desc "Install Vimfiles"
task :install do
  system "git submodule update --init"
  system "ln -sf ~/.vim/vimrc ~/.vimrc"
  system "ln -sf ~/.vim/gvimrc ~/.gvimrc"
end

desc "Update Vimfiles"
task :update do
  system "git pull"
  system "git submodule sync"
  system "git submodule update --init --recursive"
end
