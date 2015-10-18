import subprocess as sp

if 'enabled' in sp.check_output(('nmcli', 'n')).decode():
    sp.call(('nmcli', 'n', 'off'))
else:
    sp.call(('nmcli', 'n', 'on'))
