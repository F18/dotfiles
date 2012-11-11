" This is mostly a matter of taste. But LaTeX looks good with just a bit
" of indentation.
set shiftwidth=2

" TIP: if you write your \label's as \label{fig:something}, then if you
" type in \ref{fig: and press <C-n> you will automatically cycle through
" all the figure labels. Very useful!
set iskeyword+=:

" set nolist

let g:Tex_DefaultTargetFormat = 'pdf'
let g:Tex_MultipleCompileFormats = 'pdf'
"let g:Tex_CompileRule_pdf = 'pdflatex -interaction=nonstopmode $*'
let g:Tex_UseMakefile=0
let g:Tex_CompileRule_pdf='make'
let g:Tex_ViewRule_pdf = 'okular'

let g:Tex_FoldedSections = ''
let g:Tex_FoldedEnvironments = ''
let g:Tex_FoldedCommands = ''
let g:Tex_FoldedMisc = ''

let g:Tex_Env_figure = "\\begin{figure}[h]\<CR>\\centering\<CR>\\includegraphics[width=<++>\\textwidth]{<++>}\<CR>\\caption{<++>}\<CR>\\label{<++>}\<CR>\\end{figure}<++>"

let g:Tex_IgnoredWarnings =
    \"Underfull\n".
    \"Overfull\n".
    \"specifier changed to\n".
    \"You have requested\n".
    \"Missing number, treated as zero.\n".
    \"There were undefined references\n".
    \"Citation %.%# undefined\n".
    \"LaTeX Warning"

let g:Tex_IgnoreLevel = 8
