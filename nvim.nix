{ pkgs, ... }: {
environment.variables = { EDITOR = "nvim"; };
programs.neovim = {
	enable = true;
	viAlias = true;
	vimAlias = true;
	defaultEditor = true;
	configure = {
		  customRC = ''
    " here your custom configuration goes!
		set number
		set list
		set listchars=tab:→\ ,space:·,nbsp:␣,trail:•,eol:¶,precedes:«,extends:»	
		colorscheme vim
  '';	
  packages.myVimPackage = with pkgs.vimPlugins; {
    # loaded on launch
    start = [ fugitive ];
    # manually loadable by calling `:packadd $plugin-name`
    opt = [ ];
     };
     };
};
}
