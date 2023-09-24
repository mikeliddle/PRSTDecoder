# GP 200 PRST

## Format

Binary

## Getting hex from binary

`xxd examples/V2.prst > examples/V2.hex`

## Structure

Every file starts with TSRP (PRST in reverse), and has the name in ascii. It also looks like it contains GP-2 in reverse, likely a product identifier like we saw in v1.

It looks like words are groups of 4 bytes in this file. This means that every 8 hex characters is a logical grouping. PRST would be one, and that would explain why GP-2 is the id instead of GP-200. That also allows us to break up the file to make more sense of things. For example, The first word indicates the file type: PRST. The second word is a buffer, the third may be a version? v3? The fourth is another buffer, and then we have the product ID: GP-2.

T S  R P                    ?
5453 5250 0000 0000 0000 0003 0000 0000
2 -  P G
322d 5047 0001 0100 20ef 9e6b 0100 0000
