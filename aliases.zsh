# task (task warrior)
alias t=task
alias tn='clear;task next'
alias ta='t add'
alias tan='ta scheduled:today'
alias tat='ta scheduled:tomorrow until:sch+14d'
alias tm='t modify'
alias trol="t sch:yes status:pending modify sch:tod"
alias td='clear;t next +ACTIVE or +OVERDUE or due:today or scheduled:today or pri:H; calcurse -r; timew | grep -v "no active time"'
alias tal='ta dep:"$(t +LATEST uuids)"'#
alias tst='t $(t +LATEST uuids) annotate subtask: '

# timewarrior
alias tw='timew' 
alias tws='timew summary :ids :annotations' 
alias twsw='timew summary :ids :week :annotations'
alias twsm='timew summary :ids :month :annotations' 
alias twsy='timew summary :ids :year :annotations' 
alias twms='timew modify start' 
alias twme='timew modify end'

# taskwarrior-tui
alias tui=taskwarrior-tui

# tasknote.sh
alias tnote=tasknote # defined in /usr-local-bin

