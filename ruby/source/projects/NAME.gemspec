# -*- encoding: utf-8 -*- 
$: . push  File . expand_path ( "../lib" ,  __FILE__ ) 
require  "NAME/version" 

Gem :: Specification . new  do  | s | 
  s . name         =  "Lampard" 
  s . version      =  Lampard :: 1.0 
  s . authors      =  [ "LampardLiu" ] 
  s . email        =  [ "iml6yu@gmail.com" ] 
  s . homepage     =  "" 
  s . summary      =  %q{"test"} 
  s . description  =  %q{"test"} 

  s . rubyforge_project  =  "Lampard" 

  s . files          =  `git ls-files` . split ( " \n " ) 
  s . test_files     =  `git ls- files -- {test,spec,features}/*` . split ( " \n " ) 
  s . executables    =  `git ls-files -- bin/*` . split ( " \n " ) . map {  | f |  File . basename ( f )  } 
  s . require_paths  =  [ "lib" ] 
end
