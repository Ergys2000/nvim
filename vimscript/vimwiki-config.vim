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
