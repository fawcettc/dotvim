# Yet another .vim

This packaged vim setup is what I have been tweaking and working with
for ages, and should require minimal effort to get working on a new machine.

## "But what do I doooooooo?"

Simple:

    git clone git://github.com/fawcettc/dotvim.git ~/.vim
    cd ~/.vim
    ./setup.sh

Note that if you currently have a ~/.vim, this is not going to work.
Move it to a safe location and then proceed.

In order to get YouCompleteMe to work, you'll need
 * vim 7.3.584 or later, compiled with Python 2 support
 * python 2.7+ as a shared library, along with development headers
 * CMake

        If CMake finds the wrong compiler, python version, etc. during
        the YouCompleteMe install, you'll have to install it manually.
        Have a look at Valloric's FAQ, that should solve most common issues.
        I may fix some of the more common bugs (usually with YouCompleteMe) at some point.

        ## Included Plugins

        I'm happily benefiting from the following awesome plugins:

        ### Plugin management
        * [gmarik/Vundle.vim](http://github.com/gmarik/Vundle.vim)
        
        ### Sane defaults
        * [tpope/vim-sensible](http://github.com/tpope/vim-sensible)
        
        ### status notification, file browsing, comment awesomeness
        * [bling/vim-airline](http://github.com/bling/vim-airline)
        * [mhinz/vim-signify](http://github.com/mhinz/vim-signify)
        * [mhinz/vim-startify](http://github.com/mhinz/vim-startify)
        * [scrooloose/nerdtree](http://github.com/scrooloose/nerdtree)
        * [scrooloose/nerdcommenter](http://github.com/scrooloose/nerdcommenter)
        * [kien/rainbow_parentheses.vim](http://github.com/kien/rainbow_parentheses.vim)
        
        ### Syntax checking etc
        * [scrooloose/syntastic](http://github.com/scrooloose/syntastic)
        * [Raimondi/delimitMate](http://github.com/Raimondi/delimitMate)
        * [Valloric/YouCompleteMe](http://github.com/Valloric/YouCompleteMe)
        
        ### tmux integration and interaction
        * [benmills/vimux](http://github.com/benmills/vimux)
        * [jgdavey/vim-turbux](http://github.com/jgdavey/vim-turbux)
        * [christoomey/vim-tmux-navigator](http://github.com/christoomey/vim-tmux-navigator)
        * [mutewinter/vim-tmux](http://github.com/mutewinter/vim-tmux)
        
        ### git awesomeness
        * [tpope/vim-fugitive](http://github.com/tpope/vim-fugitive)
        
        ### Miscellaneous
        * [lilydjwg/colorizer](http://github.com/lilydjwg/colorizer)
        * [plasticboy/vim-markdown](http://github.com/plasticboy/vim-markdown)
        * [pangloss/vim-javascript](http://github.com/pangloss/vim-javascript)
        * [kchmck/vim-coffee-script](http://github.com/kchmck/vim-coffee-script)
        * [leshill/vim-json](http://github.com/leshill/vim-json)
        * [msanders/cocoa.vim](http://github.com/msanders/cocoa.vim)
        * [chrisbra/csv.vim](http://github.com/chrisbra/csv.vim)

        ## "Chris, what are the weird parts of this setup?"

        There are a couple of strange things that will make you really angry for a bit,
        and then be awesome.

        * Arrow keys are disabled in normal mode. What better time to learn hjkl than the present?
        * tab will always insert 4 spaces. What's that, you actually want a tab? Ctrl-V<tab>
        * Use jk in sequence instead of hitting escape. You will love it, trust me.
