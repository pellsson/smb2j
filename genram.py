import re

v = open('ramvars.inc', 'w')
v.write(''';
; ramvars.inc is auto-generated from ram_region.asm
; don't alter directly. bad idea. very bad idea.
;
''')

for it in open('ram_region.map', 'r').readlines():
	it = it.strip()
	if 0 == len(it):
		continue
	m = re.match(r'(\w+) @ ([0-9A-F]{4})', it)
	if not m:
		raise 'boom'
	v.write('%s = $%04X\n' % (m.group(1), int(m.group(2), 16)))

def chunks(l, n):
    for i in range(0, len(l), n):
        yield l[i:i + n]

v = open('ram_region.bin', 'rb').read()

if len(v) >= 256:
	raise 'ram too big'

print('WRAM_DefaultState:')
for it in chunks(v, 0x10):
	print('\t\t.db %s' % (', '.join([ '$%02X' % (x) for x in it ])))
