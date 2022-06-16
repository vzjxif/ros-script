#:log info "update github hosts"
#:foreach n in=[/ip dns static find comment=("github")] do={
#    /ip dns static remove $n
#}

:local result [/tool fetch url="https://raw.hellogithub.com/hosts" as-value output=user]
:put [:len $result]
:put [:pick $result 1]