# GP 200 PRST

## Format

Binary

## Getting hex from binary

`xxd examples/V2.prst > examples/V2.hex`

## Structure

Every file starts with TSRP (PRST in reverse), and has the name in ascii. It also looks like it contains GP-2 in reverse, likely a product identifier like we saw in v1.

It looks like words are groups of 4 bytes in this file. This means that every 8 hex characters is a logical grouping. PRST would be one, and that would explain why GP-2 is the id instead of GP-200. That also allows us to break up the file to make more sense of things. For example, The first word indicates the file type: PRST. The second word is a buffer, the third may be a version? v3? The fourth is another buffer, and then we have the product ID: GP-2.

All files have this prefix in common:

00000000: 5453 5250 0000 0000 0000 0003 0000 0000  TSRP............
00000010: 322d 5047 0001 0100 20ef 9e6b 0100 0000  2-PG.... ..k....
00000020: 2800 0000 6404 0000 4d52 4150 6404 0000  (...d...MRAPd...
00000030: 0200 5800 0800 7800 3200 0000

The next word differs, then there's a buffer word, then the name.
Extending a bit further, the name appears to be a large chunk as evident here, where we have the name extend to a new line, followed by plenty of buffer space, which ends with "0800 1000"

00000000: 5453 5250 0000 0000 0000 0003 0000 0000  TSRP............
00000010: 322d 5047 0001 0100 20ef 9e6b 0100 0000  2-PG.... ..k....
00000020: 2800 0000 6404 0000 4d52 4150 6404 0000  (...d...MRAPd...
00000030: 0200 5800 0500 7800 3200 0100 0500 0000  ..X...x.2.......
00000040: 0000 0020 5769 6c64 2046 7275 6974 2028  ... Wild Fruit (
00000050: 5761 6829 0000 0000 0000 0000 0000 0000  Wah)............
00000060: 0000 0000 0000 0000 0000 0000 0000 0000  ................
00000070: 0000 0000 0000 0000 0000 0000 0000 0000  ................
00000080: 0000 0000 0000 0000 0000 0000 0800 1000  ................

From there, my guess is that the file goes into the presets and their settings.