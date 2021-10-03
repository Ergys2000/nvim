function! SetKeyBindings()
	lua require('jdtls').start_or_attach({cmd = {'java-lsp.sh'}})
	nnoremap <space>ac <Cmd>lua require('jdtls').code_action()<CR>
	vnoremap <space>ac <Esc><Cmd>lua require('jdtls').code_action(true)<CR>
	nnoremap <space>r <Cmd>lua require('jdtls').code_action(false, 'refactor')<CR>
	nnoremap <space>f <Cmd>lua vim.lsp.buf.formatting()<CR>
	nnoremap <space>rn <Cmd>lua vim.lsp.buf.rename()<CR>

	nnoremap <space>o <Cmd>lua require'jdtls'.organize_imports()<CR>
	nnoremap crv <Cmd>lua require('jdtls').extract_variable()<CR>
	vnoremap crv <Esc><Cmd>lua require('jdtls').extract_variable(true)<CR>
	nnoremap crc <Cmd>lua require('jdtls').extract_constant()<CR>
	vnoremap crc <Esc><Cmd>lua require('jdtls').extract_constant(true)<CR>
	vnoremap crm <Esc><Cmd>lua require('jdtls').extract_method(true)<CR>

	nnoremap gD <Cmd>lua vim.lsp.buf.declaration()<CR>
	nnoremap gd <Cmd>lua vim.lsp.buf.definition()<CR>
	nnoremap K <Cmd>lua vim.lsp.buf.hover()<CR>
	nnoremap gi <Cmd>lua vim.lsp.buf.implementation()<CR>
	nnoremap gr <Cmd>lua vim.lsp.buf.references()<CR>
endfunction
" Java lsp configuration
if has('nvim-0.5')
  augroup lsp
    au!
    au FileType java call SetKeyBindings()
  augroup end
endif
