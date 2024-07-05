if status is-interactive
    # Commands to run in interactive sessions can go here
end
fish_add_path -g ~/bin

switch (uname)
    case Linux
        set ls_command "ls"
    case Darwin
        set ls_command "gls"
    case '*'
        set ls_command "ls"
end


function l
    eval $ls_command -lF --group-directories-first --color $argv
end

function lt
    eval $ls_command -lFrt --group-directories-first --color $argv
end

function lS
    eval $ls_command -rlS --group-directories-first -color $argv
end

function la
    eval $ls_command -lA --group-directories-first --color $argv
end

function ll
    eval $ls_command -lA --group-directories-first --color $argv
end
