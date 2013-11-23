let host_toggle=0
function! SwitchHost()
python << EOF
import re
host_path = r"C:\Windows\System32\drivers\etc\hosts"
host_file = open(host_path, "r")
content = host_file.read()
PATTEN = re.compile(r"#SwitchHost.+?#SwitchHost", re.S)
EOF

if g:host_toggle == 0
python << EOF
content = PATTEN.sub("""#SwitchHost
10.20.187.93 qing.wps.cn
10.20.187.93 preview.qing.wps.cn
10.20.188.112 vip.wps.cn
#SwitchHost""", content)
print "host change to 93"
EOF
let g:host_toggle=1

elseif g:host_toggle == 1

python << EOF
content = PATTEN.sub("""#SwitchHost
10.20.188.114 qing.wps.cn
10.20.188.116 preview.qing.wps.cn
10.20.188.112 vip.wps.cn
#SwitchHost""", content)
print "host change to 114"
EOF
let g:host_toggle=2

else
python << EOF
content = PATTEN.sub("""#SwitchHost
#
#
#
#SwitchHost
""", content)
print "host change to official"
EOF
let g:host_toggle=0
endif

python << EOF
host_file = open(host_path, 'w')
host_file.write(content)
host_file.close()
EOF

endfunction

command! SwitchHost call SwitchHost()
map <F6> :call SwitchHost() <CR>



