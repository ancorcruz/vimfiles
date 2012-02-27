desc "Install Vimfiles"
task :install do
  system "git submodule update --init"
  system "ln -sf ~/.vim/vimrc ~/.vimrc"
  system "ln -sf ~/.vim/gvimrc ~/.gvimrc"
  compile_command_t
end

desc "Update Vimfiles"
task :update do
  system "git pull"
  system "git submodule sync"
  system "git submodule update --init --recursive"
  compile_command_t
end

# Compile Command-t plugin
def compile_command_t
  system "cd #{File.join File.dirname(__FILE__), 'bundle', 'command-t'} && rake make"
end
