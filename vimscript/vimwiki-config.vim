" personal wiki set up
let personal_wiki = {}
let personal_wiki.path = '~/personalwiki/'
let personal_wiki.path_html = '~/personalwiki_html/'
let personal_wiki.template_path = '~/personalwiki/templates/'
let personal_wiki.template_default = 'default'
let personal_wiki.template_ext = '.html'
let personal_wiki.css_name = 'css/dark.css'

" School/career learning wiki set up
let learning_wiki = {}
let learning_wiki.path = '~/learningwiki/'
let learning_wiki.path_html = '~/learningwiki_html/'
let learning_wiki.template_path = '~/learningwiki/templates/'
let learning_wiki.template_default = 'default'
let learning_wiki.template_ext = '.html'
let learning_wiki.css_name = 'css/dark.css'

let g:vimwiki_list = [personal_wiki, learning_wiki]

" Highlighting for the vimwiki headers
highlight! VimwikiHeader1 guifg=#5a70ed gui=italic,bold
highlight! VimwikiHeader2 guifg=#e868e0 gui=italic,bold
highlight! VimwikiHeader3 guifg=#a15aed gui=italic,bold
highlight! VimwikiHeader4 guifg=#68cce8 gui=italic,bold
highlight! VimwikiHeader5 guifg=#68e86f gui=italic,bold
highlight! VimwikiHeader6 guifg=#cce868 gui=italic,bold
