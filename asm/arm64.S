.global _start

_start:
mov x8, #2
svc #0
b _start
