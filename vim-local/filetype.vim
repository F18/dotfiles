augroup filetypedetect 
 " possibly other filetype-detection autocommands here 
 au BufRead,BufNewFile *.f_tmp 
    \   let fortran_dialect = "f77" | 
    \   setf fortran 
 " possibly other filetype-detection autocommands here 
augroup END 
