#! /usr/bin/awk -f

function split_name(name_str) {
    n = split(name_str, str_ar, /[0-9]+/, seps)
    return str_ar[1] "-" seps[1]
}

BEGIN {
    n = split(ARGV[1], filestr, "/")
    theme_name = filestr[n]
    dest = ENVIRON["DOTFILES"]"/polybar/themes/"theme_name".ini"
    print "; Polybar " toupper(substr(theme_name,1,1)) substr(theme_name,2) " Color Configuration.\n" > dest
    print "[theme-" theme_name "] " >> dest
}
/define +[^(_X11)]\w+/ { 
    color_name = split_name($2)
    print color_name " = " $3 >> dest
}

/foreground/ {
    print "foreground = ${self." split_name($2) "}" >> dest
}
/background/{
    print "background = ${self." split_name($2) "}" >> dest
}
/cursorColor/{
    print "cursor-color = ${self." split_name($2) "}" >> dest
}
/fadeColor/{
    print "fade-color = ${self." split_name($2) "}" >> dest
}
