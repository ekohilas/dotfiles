" my filetype file 
if exists("did_load_filetypes") 
finish 
endif 
augroup filetypedetect 
  "eyapp and yapp programs 
  au BufRead,BufNewFile *.yp           setfiletype eyapp 
  au BufRead,BufNewFile *.eyp         setfiletype eyapp 
augroup END 
