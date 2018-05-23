require 'ripper'

str = 'def hoge\n  puts 1 \nend'

p Ripper.sexp str
