
bomb:     file format elf64-x86-64


Disassembly of section .init:

0000000000000ec0 <_init>:
 ec0:	48 83 ec 08          	sub    $0x8,%rsp
 ec4:	48 8b 05 1d 31 20 00 	mov    0x20311d(%rip),%rax        # 203fe8 <__gmon_start__>
 ecb:	48 85 c0             	test   %rax,%rax
 ece:	74 02                	je     ed2 <_init+0x12>
 ed0:	ff d0                	callq  *%rax
 ed2:	48 83 c4 08          	add    $0x8,%rsp
 ed6:	c3                   	retq   

Disassembly of section .plt:

0000000000000ee0 <.plt>:
     ee0:	ff 35 0a 30 20 00    	pushq  0x20300a(%rip)        # 203ef0 <_GLOBAL_OFFSET_TABLE_+0x8>
     ee6:	ff 25 0c 30 20 00    	jmpq   *0x20300c(%rip)        # 203ef8 <_GLOBAL_OFFSET_TABLE_+0x10>
     eec:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000000ef0 <getenv@plt>:
     ef0:	ff 25 0a 30 20 00    	jmpq   *0x20300a(%rip)        # 203f00 <getenv@GLIBC_2.2.5>
     ef6:	68 00 00 00 00       	pushq  $0x0
     efb:	e9 e0 ff ff ff       	jmpq   ee0 <.plt>

0000000000000f00 <strcasecmp@plt>:
     f00:	ff 25 02 30 20 00    	jmpq   *0x203002(%rip)        # 203f08 <strcasecmp@GLIBC_2.2.5>
     f06:	68 01 00 00 00       	pushq  $0x1
     f0b:	e9 d0 ff ff ff       	jmpq   ee0 <.plt>

0000000000000f10 <__errno_location@plt>:
     f10:	ff 25 fa 2f 20 00    	jmpq   *0x202ffa(%rip)        # 203f10 <__errno_location@GLIBC_2.2.5>
     f16:	68 02 00 00 00       	pushq  $0x2
     f1b:	e9 c0 ff ff ff       	jmpq   ee0 <.plt>

0000000000000f20 <strcpy@plt>:
     f20:	ff 25 f2 2f 20 00    	jmpq   *0x202ff2(%rip)        # 203f18 <strcpy@GLIBC_2.2.5>
     f26:	68 03 00 00 00       	pushq  $0x3
     f2b:	e9 b0 ff ff ff       	jmpq   ee0 <.plt>

0000000000000f30 <puts@plt>:
     f30:	ff 25 ea 2f 20 00    	jmpq   *0x202fea(%rip)        # 203f20 <puts@GLIBC_2.2.5>
     f36:	68 04 00 00 00       	pushq  $0x4
     f3b:	e9 a0 ff ff ff       	jmpq   ee0 <.plt>

0000000000000f40 <write@plt>:
     f40:	ff 25 e2 2f 20 00    	jmpq   *0x202fe2(%rip)        # 203f28 <write@GLIBC_2.2.5>
     f46:	68 05 00 00 00       	pushq  $0x5
     f4b:	e9 90 ff ff ff       	jmpq   ee0 <.plt>

0000000000000f50 <__stack_chk_fail@plt>:
     f50:	ff 25 da 2f 20 00    	jmpq   *0x202fda(%rip)        # 203f30 <__stack_chk_fail@GLIBC_2.4>
     f56:	68 06 00 00 00       	pushq  $0x6
     f5b:	e9 80 ff ff ff       	jmpq   ee0 <.plt>

0000000000000f60 <alarm@plt>:
     f60:	ff 25 d2 2f 20 00    	jmpq   *0x202fd2(%rip)        # 203f38 <alarm@GLIBC_2.2.5>
     f66:	68 07 00 00 00       	pushq  $0x7
     f6b:	e9 70 ff ff ff       	jmpq   ee0 <.plt>

0000000000000f70 <close@plt>:
     f70:	ff 25 ca 2f 20 00    	jmpq   *0x202fca(%rip)        # 203f40 <close@GLIBC_2.2.5>
     f76:	68 08 00 00 00       	pushq  $0x8
     f7b:	e9 60 ff ff ff       	jmpq   ee0 <.plt>

0000000000000f80 <read@plt>:
     f80:	ff 25 c2 2f 20 00    	jmpq   *0x202fc2(%rip)        # 203f48 <read@GLIBC_2.2.5>
     f86:	68 09 00 00 00       	pushq  $0x9
     f8b:	e9 50 ff ff ff       	jmpq   ee0 <.plt>

0000000000000f90 <fgets@plt>:
     f90:	ff 25 ba 2f 20 00    	jmpq   *0x202fba(%rip)        # 203f50 <fgets@GLIBC_2.2.5>
     f96:	68 0a 00 00 00       	pushq  $0xa
     f9b:	e9 40 ff ff ff       	jmpq   ee0 <.plt>

0000000000000fa0 <signal@plt>:
     fa0:	ff 25 b2 2f 20 00    	jmpq   *0x202fb2(%rip)        # 203f58 <signal@GLIBC_2.2.5>
     fa6:	68 0b 00 00 00       	pushq  $0xb
     fab:	e9 30 ff ff ff       	jmpq   ee0 <.plt>

0000000000000fb0 <gethostbyname@plt>:
     fb0:	ff 25 aa 2f 20 00    	jmpq   *0x202faa(%rip)        # 203f60 <gethostbyname@GLIBC_2.2.5>
     fb6:	68 0c 00 00 00       	pushq  $0xc
     fbb:	e9 20 ff ff ff       	jmpq   ee0 <.plt>

0000000000000fc0 <__memmove_chk@plt>:
     fc0:	ff 25 a2 2f 20 00    	jmpq   *0x202fa2(%rip)        # 203f68 <__memmove_chk@GLIBC_2.3.4>
     fc6:	68 0d 00 00 00       	pushq  $0xd
     fcb:	e9 10 ff ff ff       	jmpq   ee0 <.plt>

0000000000000fd0 <strtol@plt>:
     fd0:	ff 25 9a 2f 20 00    	jmpq   *0x202f9a(%rip)        # 203f70 <strtol@GLIBC_2.2.5>
     fd6:	68 0e 00 00 00       	pushq  $0xe
     fdb:	e9 00 ff ff ff       	jmpq   ee0 <.plt>

0000000000000fe0 <fflush@plt>:
     fe0:	ff 25 92 2f 20 00    	jmpq   *0x202f92(%rip)        # 203f78 <fflush@GLIBC_2.2.5>
     fe6:	68 0f 00 00 00       	pushq  $0xf
     feb:	e9 f0 fe ff ff       	jmpq   ee0 <.plt>

0000000000000ff0 <__isoc99_sscanf@plt>:
     ff0:	ff 25 8a 2f 20 00    	jmpq   *0x202f8a(%rip)        # 203f80 <__isoc99_sscanf@GLIBC_2.7>
     ff6:	68 10 00 00 00       	pushq  $0x10
     ffb:	e9 e0 fe ff ff       	jmpq   ee0 <.plt>

0000000000001000 <__printf_chk@plt>:
    1000:	ff 25 82 2f 20 00    	jmpq   *0x202f82(%rip)        # 203f88 <__printf_chk@GLIBC_2.3.4>
    1006:	68 11 00 00 00       	pushq  $0x11
    100b:	e9 d0 fe ff ff       	jmpq   ee0 <.plt>

0000000000001010 <fopen@plt>:
    1010:	ff 25 7a 2f 20 00    	jmpq   *0x202f7a(%rip)        # 203f90 <fopen@GLIBC_2.2.5>
    1016:	68 12 00 00 00       	pushq  $0x12
    101b:	e9 c0 fe ff ff       	jmpq   ee0 <.plt>

0000000000001020 <gethostname@plt>:
    1020:	ff 25 72 2f 20 00    	jmpq   *0x202f72(%rip)        # 203f98 <gethostname@GLIBC_2.2.5>
    1026:	68 13 00 00 00       	pushq  $0x13
    102b:	e9 b0 fe ff ff       	jmpq   ee0 <.plt>

0000000000001030 <exit@plt>:
    1030:	ff 25 6a 2f 20 00    	jmpq   *0x202f6a(%rip)        # 203fa0 <exit@GLIBC_2.2.5>
    1036:	68 14 00 00 00       	pushq  $0x14
    103b:	e9 a0 fe ff ff       	jmpq   ee0 <.plt>

0000000000001040 <connect@plt>:
    1040:	ff 25 62 2f 20 00    	jmpq   *0x202f62(%rip)        # 203fa8 <connect@GLIBC_2.2.5>
    1046:	68 15 00 00 00       	pushq  $0x15
    104b:	e9 90 fe ff ff       	jmpq   ee0 <.plt>

0000000000001050 <__fprintf_chk@plt>:
    1050:	ff 25 5a 2f 20 00    	jmpq   *0x202f5a(%rip)        # 203fb0 <__fprintf_chk@GLIBC_2.3.4>
    1056:	68 16 00 00 00       	pushq  $0x16
    105b:	e9 80 fe ff ff       	jmpq   ee0 <.plt>

0000000000001060 <sleep@plt>:
    1060:	ff 25 52 2f 20 00    	jmpq   *0x202f52(%rip)        # 203fb8 <sleep@GLIBC_2.2.5>
    1066:	68 17 00 00 00       	pushq  $0x17
    106b:	e9 70 fe ff ff       	jmpq   ee0 <.plt>

0000000000001070 <__ctype_b_loc@plt>:
    1070:	ff 25 4a 2f 20 00    	jmpq   *0x202f4a(%rip)        # 203fc0 <__ctype_b_loc@GLIBC_2.3>
    1076:	68 18 00 00 00       	pushq  $0x18
    107b:	e9 60 fe ff ff       	jmpq   ee0 <.plt>

0000000000001080 <__sprintf_chk@plt>:
    1080:	ff 25 42 2f 20 00    	jmpq   *0x202f42(%rip)        # 203fc8 <__sprintf_chk@GLIBC_2.3.4>
    1086:	68 19 00 00 00       	pushq  $0x19
    108b:	e9 50 fe ff ff       	jmpq   ee0 <.plt>

0000000000001090 <socket@plt>:
    1090:	ff 25 3a 2f 20 00    	jmpq   *0x202f3a(%rip)        # 203fd0 <socket@GLIBC_2.2.5>
    1096:	68 1a 00 00 00       	pushq  $0x1a
    109b:	e9 40 fe ff ff       	jmpq   ee0 <.plt>

Disassembly of section .plt.got:

00000000000010a0 <__cxa_finalize@plt>:
    10a0:	ff 25 52 2f 20 00    	jmpq   *0x202f52(%rip)        # 203ff8 <__cxa_finalize@GLIBC_2.2.5>
    10a6:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

00000000000010b0 <_start>:
    10b0:	31 ed                	xor    %ebp,%ebp
    10b2:	49 89 d1             	mov    %rdx,%r9
    10b5:	5e                   	pop    %rsi
    10b6:	48 89 e2             	mov    %rsp,%rdx
    10b9:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    10bd:	50                   	push   %rax
    10be:	54                   	push   %rsp
    10bf:	4c 8d 05 ba 19 00 00 	lea    0x19ba(%rip),%r8        # 2a80 <__libc_csu_fini>
    10c6:	48 8d 0d 43 19 00 00 	lea    0x1943(%rip),%rcx        # 2a10 <__libc_csu_init>
    10cd:	48 8d 3d e6 00 00 00 	lea    0xe6(%rip),%rdi        # 11ba <main>
    10d4:	ff 15 06 2f 20 00    	callq  *0x202f06(%rip)        # 203fe0 <__libc_start_main@GLIBC_2.2.5>
    10da:	f4                   	hlt    
    10db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000010e0 <deregister_tm_clones>:
    10e0:	48 8d 3d 99 35 20 00 	lea    0x203599(%rip),%rdi        # 204680 <stdout@@GLIBC_2.2.5>
    10e7:	55                   	push   %rbp
    10e8:	48 8d 05 91 35 20 00 	lea    0x203591(%rip),%rax        # 204680 <stdout@@GLIBC_2.2.5>
    10ef:	48 39 f8             	cmp    %rdi,%rax
    10f2:	48 89 e5             	mov    %rsp,%rbp
    10f5:	74 19                	je     1110 <deregister_tm_clones+0x30>
    10f7:	48 8b 05 da 2e 20 00 	mov    0x202eda(%rip),%rax        # 203fd8 <_ITM_deregisterTMCloneTable>
    10fe:	48 85 c0             	test   %rax,%rax
    1101:	74 0d                	je     1110 <deregister_tm_clones+0x30>
    1103:	5d                   	pop    %rbp
    1104:	ff e0                	jmpq   *%rax
    1106:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    110d:	00 00 00 
    1110:	5d                   	pop    %rbp
    1111:	c3                   	retq   
    1112:	0f 1f 40 00          	nopl   0x0(%rax)
    1116:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    111d:	00 00 00 

0000000000001120 <register_tm_clones>:
    1120:	48 8d 3d 59 35 20 00 	lea    0x203559(%rip),%rdi        # 204680 <stdout@@GLIBC_2.2.5>
    1127:	48 8d 35 52 35 20 00 	lea    0x203552(%rip),%rsi        # 204680 <stdout@@GLIBC_2.2.5>
    112e:	55                   	push   %rbp
    112f:	48 29 fe             	sub    %rdi,%rsi
    1132:	48 89 e5             	mov    %rsp,%rbp
    1135:	48 c1 fe 03          	sar    $0x3,%rsi
    1139:	48 89 f0             	mov    %rsi,%rax
    113c:	48 c1 e8 3f          	shr    $0x3f,%rax
    1140:	48 01 c6             	add    %rax,%rsi
    1143:	48 d1 fe             	sar    %rsi
    1146:	74 18                	je     1160 <register_tm_clones+0x40>
    1148:	48 8b 05 a1 2e 20 00 	mov    0x202ea1(%rip),%rax        # 203ff0 <_ITM_registerTMCloneTable>
    114f:	48 85 c0             	test   %rax,%rax
    1152:	74 0c                	je     1160 <register_tm_clones+0x40>
    1154:	5d                   	pop    %rbp
    1155:	ff e0                	jmpq   *%rax
    1157:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    115e:	00 00 
    1160:	5d                   	pop    %rbp
    1161:	c3                   	retq   
    1162:	0f 1f 40 00          	nopl   0x0(%rax)
    1166:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    116d:	00 00 00 

0000000000001170 <__do_global_dtors_aux>:
    1170:	80 3d 31 35 20 00 00 	cmpb   $0x0,0x203531(%rip)        # 2046a8 <completed.7698>
    1177:	75 2f                	jne    11a8 <__do_global_dtors_aux+0x38>
    1179:	48 83 3d 77 2e 20 00 	cmpq   $0x0,0x202e77(%rip)        # 203ff8 <__cxa_finalize@GLIBC_2.2.5>
    1180:	00 
    1181:	55                   	push   %rbp
    1182:	48 89 e5             	mov    %rsp,%rbp
    1185:	74 0c                	je     1193 <__do_global_dtors_aux+0x23>
    1187:	48 8b 3d 7a 2e 20 00 	mov    0x202e7a(%rip),%rdi        # 204008 <__dso_handle>
    118e:	e8 0d ff ff ff       	callq  10a0 <__cxa_finalize@plt>
    1193:	e8 48 ff ff ff       	callq  10e0 <deregister_tm_clones>
    1198:	c6 05 09 35 20 00 01 	movb   $0x1,0x203509(%rip)        # 2046a8 <completed.7698>
    119f:	5d                   	pop    %rbp
    11a0:	c3                   	retq   
    11a1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    11a8:	f3 c3                	repz retq 
    11aa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000000011b0 <frame_dummy>:
    11b0:	55                   	push   %rbp
    11b1:	48 89 e5             	mov    %rsp,%rbp
    11b4:	5d                   	pop    %rbp
    11b5:	e9 66 ff ff ff       	jmpq   1120 <register_tm_clones>

00000000000011ba <main>:
    11ba:	53                   	push   %rbx
    11bb:	83 ff 01             	cmp    $0x1,%edi
    11be:	0f 84 f8 00 00 00    	je     12bc <main+0x102>
    11c4:	48 89 f3             	mov    %rsi,%rbx
    11c7:	83 ff 02             	cmp    $0x2,%edi
    11ca:	0f 85 21 01 00 00    	jne    12f1 <main+0x137>
    11d0:	48 8b 7e 08          	mov    0x8(%rsi),%rdi
    11d4:	48 8d 35 c9 18 00 00 	lea    0x18c9(%rip),%rsi        # 2aa4 <_IO_stdin_used+0x4>
    11db:	e8 30 fe ff ff       	callq  1010 <fopen@plt>
    11e0:	48 89 05 c9 34 20 00 	mov    %rax,0x2034c9(%rip)        # 2046b0 <infile>
    11e7:	48 85 c0             	test   %rax,%rax
    11ea:	0f 84 df 00 00 00    	je     12cf <main+0x115>
    11f0:	e8 22 07 00 00       	callq  1917 <initialize_bomb>
    11f5:	48 8d 3d 2c 19 00 00 	lea    0x192c(%rip),%rdi        # 2b28 <_IO_stdin_used+0x88>
    11fc:	e8 2f fd ff ff       	callq  f30 <puts@plt>
    1201:	48 8d 3d 60 19 00 00 	lea    0x1960(%rip),%rdi        # 2b68 <_IO_stdin_used+0xc8>
    1208:	e8 23 fd ff ff       	callq  f30 <puts@plt>
    120d:	e8 1f 0a 00 00       	callq  1c31 <read_line>
    1212:	48 89 c7             	mov    %rax,%rdi
    1215:	e8 fa 00 00 00       	callq  1314 <phase_1>
    121a:	e8 56 0b 00 00       	callq  1d75 <phase_defused>
    121f:	48 8d 3d 72 19 00 00 	lea    0x1972(%rip),%rdi        # 2b98 <_IO_stdin_used+0xf8>
    1226:	e8 05 fd ff ff       	callq  f30 <puts@plt>
    122b:	e8 01 0a 00 00       	callq  1c31 <read_line>
    1230:	48 89 c7             	mov    %rax,%rdi
    1233:	e8 fc 00 00 00       	callq  1334 <phase_2>
    1238:	e8 38 0b 00 00       	callq  1d75 <phase_defused>
    123d:	48 8d 3d 99 18 00 00 	lea    0x1899(%rip),%rdi        # 2add <_IO_stdin_used+0x3d>
    1244:	e8 e7 fc ff ff       	callq  f30 <puts@plt>
    1249:	e8 e3 09 00 00       	callq  1c31 <read_line>
    124e:	48 89 c7             	mov    %rax,%rdi
    1251:	e8 4d 01 00 00       	callq  13a3 <phase_3>
    1256:	e8 1a 0b 00 00       	callq  1d75 <phase_defused>
    125b:	48 8d 3d 99 18 00 00 	lea    0x1899(%rip),%rdi        # 2afb <_IO_stdin_used+0x5b>
    1262:	e8 c9 fc ff ff       	callq  f30 <puts@plt>
    1267:	e8 c5 09 00 00       	callq  1c31 <read_line>
    126c:	48 89 c7             	mov    %rax,%rdi
    126f:	e8 e2 02 00 00       	callq  1556 <phase_4>
    1274:	e8 fc 0a 00 00       	callq  1d75 <phase_defused>
    1279:	48 8d 3d 48 19 00 00 	lea    0x1948(%rip),%rdi        # 2bc8 <_IO_stdin_used+0x128>
    1280:	e8 ab fc ff ff       	callq  f30 <puts@plt>
    1285:	e8 a7 09 00 00       	callq  1c31 <read_line>
    128a:	48 89 c7             	mov    %rax,%rdi
    128d:	e8 33 03 00 00       	callq  15c5 <phase_5>
    1292:	e8 de 0a 00 00       	callq  1d75 <phase_defused>
    1297:	48 8d 3d 6c 18 00 00 	lea    0x186c(%rip),%rdi        # 2b0a <_IO_stdin_used+0x6a>
    129e:	e8 8d fc ff ff       	callq  f30 <puts@plt>
    12a3:	e8 89 09 00 00       	callq  1c31 <read_line>
    12a8:	48 89 c7             	mov    %rax,%rdi
    12ab:	e8 a8 03 00 00       	callq  1658 <phase_6>
    12b0:	e8 c0 0a 00 00       	callq  1d75 <phase_defused>
    12b5:	b8 00 00 00 00       	mov    $0x0,%eax
    12ba:	5b                   	pop    %rbx
    12bb:	c3                   	retq   
    12bc:	48 8b 05 cd 33 20 00 	mov    0x2033cd(%rip),%rax        # 204690 <stdin@@GLIBC_2.2.5>
    12c3:	48 89 05 e6 33 20 00 	mov    %rax,0x2033e6(%rip)        # 2046b0 <infile>
    12ca:	e9 21 ff ff ff       	jmpq   11f0 <main+0x36>
    12cf:	48 8b 4b 08          	mov    0x8(%rbx),%rcx
    12d3:	48 8b 13             	mov    (%rbx),%rdx
    12d6:	48 8d 35 c9 17 00 00 	lea    0x17c9(%rip),%rsi        # 2aa6 <_IO_stdin_used+0x6>
    12dd:	bf 01 00 00 00       	mov    $0x1,%edi
    12e2:	e8 19 fd ff ff       	callq  1000 <__printf_chk@plt>
    12e7:	bf 08 00 00 00       	mov    $0x8,%edi
    12ec:	e8 3f fd ff ff       	callq  1030 <exit@plt>
    12f1:	48 8b 16             	mov    (%rsi),%rdx
    12f4:	48 8d 35 c8 17 00 00 	lea    0x17c8(%rip),%rsi        # 2ac3 <_IO_stdin_used+0x23>
    12fb:	bf 01 00 00 00       	mov    $0x1,%edi
    1300:	b8 00 00 00 00       	mov    $0x0,%eax
    1305:	e8 f6 fc ff ff       	callq  1000 <__printf_chk@plt>
    130a:	bf 08 00 00 00       	mov    $0x8,%edi
    130f:	e8 1c fd ff ff       	callq  1030 <exit@plt>

0000000000001314 <phase_1>:
    1314:	48 83 ec 08          	sub    $0x8,%rsp
    1318:	48 8d 35 d1 18 00 00 	lea    0x18d1(%rip),%rsi        # 2bf0 <_IO_stdin_used+0x150>
    131f:	e8 8c 05 00 00       	callq  18b0 <strings_not_equal>
    1324:	85 c0                	test   %eax,%eax
    1326:	75 05                	jne    132d <phase_1+0x19>
    1328:	48 83 c4 08          	add    $0x8,%rsp
    132c:	c3                   	retq   
    132d:	e8 82 08 00 00       	callq  1bb4 <explode_bomb>
    1332:	eb f4                	jmp    1328 <phase_1+0x14>

0000000000001334 <phase_2>:
    1334:	55                   	push   %rbp
    1335:	53                   	push   %rbx
    1336:	48 83 ec 28          	sub    $0x28,%rsp
    133a:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1341:	00 00 
    1343:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    1348:	31 c0                	xor    %eax,%eax
    134a:	48 89 e6             	mov    %rsp,%rsi
    134d:	e8 9e 08 00 00       	callq  1bf0 <read_six_numbers>
    1352:	83 3c 24 00          	cmpl   $0x0,(%rsp)
    1356:	75 07                	jne    135f <phase_2+0x2b>
    1358:	83 7c 24 04 01       	cmpl   $0x1,0x4(%rsp)
    135d:	74 05                	je     1364 <phase_2+0x30>
    135f:	e8 50 08 00 00       	callq  1bb4 <explode_bomb>
    1364:	48 89 e3             	mov    %rsp,%rbx
    1367:	48 8d 6b 10          	lea    0x10(%rbx),%rbp
    136b:	eb 09                	jmp    1376 <phase_2+0x42>
    136d:	48 83 c3 04          	add    $0x4,%rbx
    1371:	48 39 eb             	cmp    %rbp,%rbx
    1374:	74 11                	je     1387 <phase_2+0x53>
    1376:	8b 43 04             	mov    0x4(%rbx),%eax
    1379:	03 03                	add    (%rbx),%eax
    137b:	39 43 08             	cmp    %eax,0x8(%rbx)
    137e:	74 ed                	je     136d <phase_2+0x39>
    1380:	e8 2f 08 00 00       	callq  1bb4 <explode_bomb>
    1385:	eb e6                	jmp    136d <phase_2+0x39>
    1387:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
    138c:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    1393:	00 00 
    1395:	75 07                	jne    139e <phase_2+0x6a>
    1397:	48 83 c4 28          	add    $0x28,%rsp
    139b:	5b                   	pop    %rbx
    139c:	5d                   	pop    %rbp
    139d:	c3                   	retq   
    139e:	e8 ad fb ff ff       	callq  f50 <__stack_chk_fail@plt>

00000000000013a3 <phase_3>:
    13a3:	48 83 ec 28          	sub    $0x28,%rsp
    13a7:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    13ae:	00 00 
    13b0:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    13b5:	31 c0                	xor    %eax,%eax
    13b7:	48 8d 4c 24 0f       	lea    0xf(%rsp),%rcx
    13bc:	48 8d 54 24 10       	lea    0x10(%rsp),%rdx
    13c1:	4c 8d 44 24 14       	lea    0x14(%rsp),%r8
    13c6:	48 8d 35 69 18 00 00 	lea    0x1869(%rip),%rsi        # 2c36 <_IO_stdin_used+0x196>
    13cd:	e8 1e fc ff ff       	callq  ff0 <__isoc99_sscanf@plt>
    13d2:	83 f8 02             	cmp    $0x2,%eax
    13d5:	7e 1f                	jle    13f6 <phase_3+0x53>
    13d7:	83 7c 24 10 07       	cmpl   $0x7,0x10(%rsp)
    13dc:	0f 87 0c 01 00 00    	ja     14ee <phase_3+0x14b>
    13e2:	8b 44 24 10          	mov    0x10(%rsp),%eax
    13e6:	48 8d 15 53 18 00 00 	lea    0x1853(%rip),%rdx        # 2c40 <_IO_stdin_used+0x1a0>
    13ed:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
    13f1:	48 01 d0             	add    %rdx,%rax
    13f4:	ff e0                	jmpq   *%rax
    13f6:	e8 b9 07 00 00       	callq  1bb4 <explode_bomb>
    13fb:	eb da                	jmp    13d7 <phase_3+0x34>
    13fd:	b8 6c 00 00 00       	mov    $0x6c,%eax
    1402:	81 7c 24 14 3e 02 00 	cmpl   $0x23e,0x14(%rsp)
    1409:	00 
    140a:	0f 84 e8 00 00 00    	je     14f8 <phase_3+0x155>
    1410:	e8 9f 07 00 00       	callq  1bb4 <explode_bomb>
    1415:	b8 6c 00 00 00       	mov    $0x6c,%eax
    141a:	e9 d9 00 00 00       	jmpq   14f8 <phase_3+0x155>
    141f:	b8 70 00 00 00       	mov    $0x70,%eax
    1424:	81 7c 24 14 a3 03 00 	cmpl   $0x3a3,0x14(%rsp)
    142b:	00 
    142c:	0f 84 c6 00 00 00    	je     14f8 <phase_3+0x155>
    1432:	e8 7d 07 00 00       	callq  1bb4 <explode_bomb>
    1437:	b8 70 00 00 00       	mov    $0x70,%eax
    143c:	e9 b7 00 00 00       	jmpq   14f8 <phase_3+0x155>
    1441:	b8 6f 00 00 00       	mov    $0x6f,%eax
    1446:	81 7c 24 14 79 01 00 	cmpl   $0x179,0x14(%rsp)
    144d:	00 
    144e:	0f 84 a4 00 00 00    	je     14f8 <phase_3+0x155>
    1454:	e8 5b 07 00 00       	callq  1bb4 <explode_bomb>
    1459:	b8 6f 00 00 00       	mov    $0x6f,%eax
    145e:	e9 95 00 00 00       	jmpq   14f8 <phase_3+0x155>
    1463:	b8 68 00 00 00       	mov    $0x68,%eax
    1468:	81 7c 24 14 66 03 00 	cmpl   $0x366,0x14(%rsp)
    146f:	00 
    1470:	0f 84 82 00 00 00    	je     14f8 <phase_3+0x155>
    1476:	e8 39 07 00 00       	callq  1bb4 <explode_bomb>
    147b:	b8 68 00 00 00       	mov    $0x68,%eax
    1480:	eb 76                	jmp    14f8 <phase_3+0x155>
    1482:	b8 62 00 00 00       	mov    $0x62,%eax
    1487:	81 7c 24 14 3d 01 00 	cmpl   $0x13d,0x14(%rsp)
    148e:	00 
    148f:	74 67                	je     14f8 <phase_3+0x155>
    1491:	e8 1e 07 00 00       	callq  1bb4 <explode_bomb>
    1496:	b8 62 00 00 00       	mov    $0x62,%eax
    149b:	eb 5b                	jmp    14f8 <phase_3+0x155>
    149d:	b8 78 00 00 00       	mov    $0x78,%eax
    14a2:	81 7c 24 14 53 02 00 	cmpl   $0x253,0x14(%rsp)
    14a9:	00 
    14aa:	74 4c                	je     14f8 <phase_3+0x155>
    14ac:	e8 03 07 00 00       	callq  1bb4 <explode_bomb>
    14b1:	b8 78 00 00 00       	mov    $0x78,%eax
    14b6:	eb 40                	jmp    14f8 <phase_3+0x155>
    14b8:	b8 66 00 00 00       	mov    $0x66,%eax
    14bd:	81 7c 24 14 f2 00 00 	cmpl   $0xf2,0x14(%rsp)
    14c4:	00 
    14c5:	74 31                	je     14f8 <phase_3+0x155>
    14c7:	e8 e8 06 00 00       	callq  1bb4 <explode_bomb>
    14cc:	b8 66 00 00 00       	mov    $0x66,%eax
    14d1:	eb 25                	jmp    14f8 <phase_3+0x155>
    14d3:	b8 63 00 00 00       	mov    $0x63,%eax
    14d8:	81 7c 24 14 91 03 00 	cmpl   $0x391,0x14(%rsp)
    14df:	00 
    14e0:	74 16                	je     14f8 <phase_3+0x155>
    14e2:	e8 cd 06 00 00       	callq  1bb4 <explode_bomb>
    14e7:	b8 63 00 00 00       	mov    $0x63,%eax
    14ec:	eb 0a                	jmp    14f8 <phase_3+0x155>
    14ee:	e8 c1 06 00 00       	callq  1bb4 <explode_bomb>
    14f3:	b8 68 00 00 00       	mov    $0x68,%eax
    14f8:	38 44 24 0f          	cmp    %al,0xf(%rsp)
    14fc:	74 05                	je     1503 <phase_3+0x160>
    14fe:	e8 b1 06 00 00       	callq  1bb4 <explode_bomb>
    1503:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
    1508:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    150f:	00 00 
    1511:	75 05                	jne    1518 <phase_3+0x175>
    1513:	48 83 c4 28          	add    $0x28,%rsp
    1517:	c3                   	retq   
    1518:	e8 33 fa ff ff       	callq  f50 <__stack_chk_fail@plt>

000000000000151d <func4>:
    151d:	b8 00 00 00 00       	mov    $0x0,%eax
    1522:	85 ff                	test   %edi,%edi
    1524:	7e 07                	jle    152d <func4+0x10>
    1526:	89 f0                	mov    %esi,%eax
    1528:	83 ff 01             	cmp    $0x1,%edi
    152b:	75 02                	jne    152f <func4+0x12>
    152d:	f3 c3                	repz retq 
    152f:	41 54                	push   %r12
    1531:	55                   	push   %rbp
    1532:	53                   	push   %rbx
    1533:	41 89 f4             	mov    %esi,%r12d
    1536:	89 fb                	mov    %edi,%ebx
    1538:	8d 7f ff             	lea    -0x1(%rdi),%edi
    153b:	e8 dd ff ff ff       	callq  151d <func4>
    1540:	42 8d 2c 20          	lea    (%rax,%r12,1),%ebp
    1544:	8d 7b fe             	lea    -0x2(%rbx),%edi
    1547:	44 89 e6             	mov    %r12d,%esi
    154a:	e8 ce ff ff ff       	callq  151d <func4>
    154f:	01 e8                	add    %ebp,%eax
    1551:	5b                   	pop    %rbx
    1552:	5d                   	pop    %rbp
    1553:	41 5c                	pop    %r12
    1555:	c3                   	retq   

0000000000001556 <phase_4>:
    1556:	48 83 ec 18          	sub    $0x18,%rsp
    155a:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1561:	00 00 
    1563:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    1568:	31 c0                	xor    %eax,%eax
    156a:	48 89 e1             	mov    %rsp,%rcx
    156d:	48 8d 54 24 04       	lea    0x4(%rsp),%rdx
    1572:	48 8d 35 74 19 00 00 	lea    0x1974(%rip),%rsi        # 2eed <array.3416+0x28d>
    1579:	e8 72 fa ff ff       	callq  ff0 <__isoc99_sscanf@plt>
    157e:	83 f8 02             	cmp    $0x2,%eax
    1581:	75 0b                	jne    158e <phase_4+0x38>
    1583:	8b 04 24             	mov    (%rsp),%eax
    1586:	83 e8 02             	sub    $0x2,%eax
    1589:	83 f8 02             	cmp    $0x2,%eax
    158c:	76 05                	jbe    1593 <phase_4+0x3d>
    158e:	e8 21 06 00 00       	callq  1bb4 <explode_bomb>
    1593:	8b 34 24             	mov    (%rsp),%esi
    1596:	bf 06 00 00 00       	mov    $0x6,%edi
    159b:	e8 7d ff ff ff       	callq  151d <func4>
    15a0:	39 44 24 04          	cmp    %eax,0x4(%rsp)
    15a4:	74 05                	je     15ab <phase_4+0x55>
    15a6:	e8 09 06 00 00       	callq  1bb4 <explode_bomb>
    15ab:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    15b0:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    15b7:	00 00 
    15b9:	75 05                	jne    15c0 <phase_4+0x6a>
    15bb:	48 83 c4 18          	add    $0x18,%rsp
    15bf:	c3                   	retq   
    15c0:	e8 8b f9 ff ff       	callq  f50 <__stack_chk_fail@plt>

00000000000015c5 <phase_5>:
    15c5:	48 83 ec 18          	sub    $0x18,%rsp
    15c9:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    15d0:	00 00 
    15d2:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    15d7:	31 c0                	xor    %eax,%eax
    15d9:	48 8d 4c 24 04       	lea    0x4(%rsp),%rcx
    15de:	48 89 e2             	mov    %rsp,%rdx
    15e1:	48 8d 35 05 19 00 00 	lea    0x1905(%rip),%rsi        # 2eed <array.3416+0x28d>
    15e8:	e8 03 fa ff ff       	callq  ff0 <__isoc99_sscanf@plt>
    15ed:	83 f8 01             	cmp    $0x1,%eax
    15f0:	7e 5a                	jle    164c <phase_5+0x87>
    15f2:	8b 04 24             	mov    (%rsp),%eax
    15f5:	83 e0 0f             	and    $0xf,%eax
    15f8:	89 04 24             	mov    %eax,(%rsp)
    15fb:	83 f8 0f             	cmp    $0xf,%eax
    15fe:	74 32                	je     1632 <phase_5+0x6d>
    1600:	b9 00 00 00 00       	mov    $0x0,%ecx
    1605:	ba 00 00 00 00       	mov    $0x0,%edx
    160a:	48 8d 35 4f 16 00 00 	lea    0x164f(%rip),%rsi        # 2c60 <array.3416>
    1611:	83 c2 01             	add    $0x1,%edx
    1614:	48 98                	cltq   
    1616:	8b 04 86             	mov    (%rsi,%rax,4),%eax
    1619:	01 c1                	add    %eax,%ecx
    161b:	83 f8 0f             	cmp    $0xf,%eax
    161e:	75 f1                	jne    1611 <phase_5+0x4c>
    1620:	c7 04 24 0f 00 00 00 	movl   $0xf,(%rsp)
    1627:	83 fa 0f             	cmp    $0xf,%edx
    162a:	75 06                	jne    1632 <phase_5+0x6d>
    162c:	39 4c 24 04          	cmp    %ecx,0x4(%rsp)
    1630:	74 05                	je     1637 <phase_5+0x72>
    1632:	e8 7d 05 00 00       	callq  1bb4 <explode_bomb>
    1637:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    163c:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    1643:	00 00 
    1645:	75 0c                	jne    1653 <phase_5+0x8e>
    1647:	48 83 c4 18          	add    $0x18,%rsp
    164b:	c3                   	retq   
    164c:	e8 63 05 00 00       	callq  1bb4 <explode_bomb>
    1651:	eb 9f                	jmp    15f2 <phase_5+0x2d>
    1653:	e8 f8 f8 ff ff       	callq  f50 <__stack_chk_fail@plt>

0000000000001658 <phase_6>:
    1658:	41 55                	push   %r13
    165a:	41 54                	push   %r12
    165c:	55                   	push   %rbp
    165d:	53                   	push   %rbx
    165e:	48 83 ec 68          	sub    $0x68,%rsp
    1662:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1669:	00 00 
    166b:	48 89 44 24 58       	mov    %rax,0x58(%rsp)
    1670:	31 c0                	xor    %eax,%eax
    1672:	49 89 e4             	mov    %rsp,%r12
    1675:	4c 89 e6             	mov    %r12,%rsi
    1678:	e8 73 05 00 00       	callq  1bf0 <read_six_numbers>
    167d:	41 bd 00 00 00 00    	mov    $0x0,%r13d
    1683:	eb 25                	jmp    16aa <phase_6+0x52>
    1685:	e8 2a 05 00 00       	callq  1bb4 <explode_bomb>
    168a:	eb 2d                	jmp    16b9 <phase_6+0x61>
    168c:	83 c3 01             	add    $0x1,%ebx
    168f:	83 fb 05             	cmp    $0x5,%ebx
    1692:	7f 12                	jg     16a6 <phase_6+0x4e>
    1694:	48 63 c3             	movslq %ebx,%rax
    1697:	8b 04 84             	mov    (%rsp,%rax,4),%eax
    169a:	39 45 00             	cmp    %eax,0x0(%rbp)
    169d:	75 ed                	jne    168c <phase_6+0x34>
    169f:	e8 10 05 00 00       	callq  1bb4 <explode_bomb>
    16a4:	eb e6                	jmp    168c <phase_6+0x34>
    16a6:	49 83 c4 04          	add    $0x4,%r12
    16aa:	4c 89 e5             	mov    %r12,%rbp
    16ad:	41 8b 04 24          	mov    (%r12),%eax
    16b1:	83 e8 01             	sub    $0x1,%eax
    16b4:	83 f8 05             	cmp    $0x5,%eax
    16b7:	77 cc                	ja     1685 <phase_6+0x2d>
    16b9:	41 83 c5 01          	add    $0x1,%r13d
    16bd:	41 83 fd 06          	cmp    $0x6,%r13d
    16c1:	74 35                	je     16f8 <phase_6+0xa0>
    16c3:	44 89 eb             	mov    %r13d,%ebx
    16c6:	eb cc                	jmp    1694 <phase_6+0x3c>
    16c8:	48 8b 52 08          	mov    0x8(%rdx),%rdx
    16cc:	83 c0 01             	add    $0x1,%eax
    16cf:	39 c8                	cmp    %ecx,%eax
    16d1:	75 f5                	jne    16c8 <phase_6+0x70>
    16d3:	48 89 54 f4 20       	mov    %rdx,0x20(%rsp,%rsi,8)
    16d8:	48 83 c6 01          	add    $0x1,%rsi
    16dc:	48 83 fe 06          	cmp    $0x6,%rsi
    16e0:	74 1d                	je     16ff <phase_6+0xa7>
    16e2:	8b 0c b4             	mov    (%rsp,%rsi,4),%ecx
    16e5:	b8 01 00 00 00       	mov    $0x1,%eax
    16ea:	48 8d 15 2f 2b 20 00 	lea    0x202b2f(%rip),%rdx        # 204220 <node1>
    16f1:	83 f9 01             	cmp    $0x1,%ecx
    16f4:	7f d2                	jg     16c8 <phase_6+0x70>
    16f6:	eb db                	jmp    16d3 <phase_6+0x7b>
    16f8:	be 00 00 00 00       	mov    $0x0,%esi
    16fd:	eb e3                	jmp    16e2 <phase_6+0x8a>
    16ff:	48 8b 5c 24 20       	mov    0x20(%rsp),%rbx
    1704:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    1709:	48 89 43 08          	mov    %rax,0x8(%rbx)
    170d:	48 8b 54 24 30       	mov    0x30(%rsp),%rdx
    1712:	48 89 50 08          	mov    %rdx,0x8(%rax)
    1716:	48 8b 44 24 38       	mov    0x38(%rsp),%rax
    171b:	48 89 42 08          	mov    %rax,0x8(%rdx)
    171f:	48 8b 54 24 40       	mov    0x40(%rsp),%rdx
    1724:	48 89 50 08          	mov    %rdx,0x8(%rax)
    1728:	48 8b 44 24 48       	mov    0x48(%rsp),%rax
    172d:	48 89 42 08          	mov    %rax,0x8(%rdx)
    1731:	48 c7 40 08 00 00 00 	movq   $0x0,0x8(%rax)
    1738:	00 
    1739:	bd 05 00 00 00       	mov    $0x5,%ebp
    173e:	eb 09                	jmp    1749 <phase_6+0xf1>
    1740:	48 8b 5b 08          	mov    0x8(%rbx),%rbx
    1744:	83 ed 01             	sub    $0x1,%ebp
    1747:	74 11                	je     175a <phase_6+0x102>
    1749:	48 8b 43 08          	mov    0x8(%rbx),%rax
    174d:	8b 00                	mov    (%rax),%eax
    174f:	39 03                	cmp    %eax,(%rbx)
    1751:	7d ed                	jge    1740 <phase_6+0xe8>
    1753:	e8 5c 04 00 00       	callq  1bb4 <explode_bomb>
    1758:	eb e6                	jmp    1740 <phase_6+0xe8>
    175a:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
    175f:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    1766:	00 00 
    1768:	75 0b                	jne    1775 <phase_6+0x11d>
    176a:	48 83 c4 68          	add    $0x68,%rsp
    176e:	5b                   	pop    %rbx
    176f:	5d                   	pop    %rbp
    1770:	41 5c                	pop    %r12
    1772:	41 5d                	pop    %r13
    1774:	c3                   	retq   
    1775:	e8 d6 f7 ff ff       	callq  f50 <__stack_chk_fail@plt>

000000000000177a <fun7>:
    177a:	48 85 ff             	test   %rdi,%rdi
    177d:	74 34                	je     17b3 <fun7+0x39>
    177f:	48 83 ec 08          	sub    $0x8,%rsp
    1783:	8b 17                	mov    (%rdi),%edx
    1785:	39 f2                	cmp    %esi,%edx
    1787:	7f 0e                	jg     1797 <fun7+0x1d>
    1789:	b8 00 00 00 00       	mov    $0x0,%eax
    178e:	39 f2                	cmp    %esi,%edx
    1790:	75 12                	jne    17a4 <fun7+0x2a>
    1792:	48 83 c4 08          	add    $0x8,%rsp
    1796:	c3                   	retq   
    1797:	48 8b 7f 08          	mov    0x8(%rdi),%rdi
    179b:	e8 da ff ff ff       	callq  177a <fun7>
    17a0:	01 c0                	add    %eax,%eax
    17a2:	eb ee                	jmp    1792 <fun7+0x18>
    17a4:	48 8b 7f 10          	mov    0x10(%rdi),%rdi
    17a8:	e8 cd ff ff ff       	callq  177a <fun7>
    17ad:	8d 44 00 01          	lea    0x1(%rax,%rax,1),%eax
    17b1:	eb df                	jmp    1792 <fun7+0x18>
    17b3:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    17b8:	c3                   	retq   

00000000000017b9 <secret_phase>:
    17b9:	53                   	push   %rbx
    17ba:	e8 72 04 00 00       	callq  1c31 <read_line>
    17bf:	ba 0a 00 00 00       	mov    $0xa,%edx
    17c4:	be 00 00 00 00       	mov    $0x0,%esi
    17c9:	48 89 c7             	mov    %rax,%rdi
    17cc:	e8 ff f7 ff ff       	callq  fd0 <strtol@plt>
    17d1:	48 89 c3             	mov    %rax,%rbx
    17d4:	8d 40 ff             	lea    -0x1(%rax),%eax
    17d7:	3d e8 03 00 00       	cmp    $0x3e8,%eax
    17dc:	77 2b                	ja     1809 <secret_phase+0x50>
    17de:	89 de                	mov    %ebx,%esi
    17e0:	48 8d 3d 59 29 20 00 	lea    0x202959(%rip),%rdi        # 204140 <n1>
    17e7:	e8 8e ff ff ff       	callq  177a <fun7>
    17ec:	83 f8 01             	cmp    $0x1,%eax
    17ef:	74 05                	je     17f6 <secret_phase+0x3d>
    17f1:	e8 be 03 00 00       	callq  1bb4 <explode_bomb>
    17f6:	48 8d 3d 13 14 00 00 	lea    0x1413(%rip),%rdi        # 2c10 <_IO_stdin_used+0x170>
    17fd:	e8 2e f7 ff ff       	callq  f30 <puts@plt>
    1802:	e8 6e 05 00 00       	callq  1d75 <phase_defused>
    1807:	5b                   	pop    %rbx
    1808:	c3                   	retq   
    1809:	e8 a6 03 00 00       	callq  1bb4 <explode_bomb>
    180e:	eb ce                	jmp    17de <secret_phase+0x25>

0000000000001810 <sig_handler>:
    1810:	48 83 ec 08          	sub    $0x8,%rsp
    1814:	48 8d 3d 85 14 00 00 	lea    0x1485(%rip),%rdi        # 2ca0 <array.3416+0x40>
    181b:	e8 10 f7 ff ff       	callq  f30 <puts@plt>
    1820:	bf 03 00 00 00       	mov    $0x3,%edi
    1825:	e8 36 f8 ff ff       	callq  1060 <sleep@plt>
    182a:	48 8d 35 38 16 00 00 	lea    0x1638(%rip),%rsi        # 2e69 <array.3416+0x209>
    1831:	bf 01 00 00 00       	mov    $0x1,%edi
    1836:	b8 00 00 00 00       	mov    $0x0,%eax
    183b:	e8 c0 f7 ff ff       	callq  1000 <__printf_chk@plt>
    1840:	48 8b 3d 39 2e 20 00 	mov    0x202e39(%rip),%rdi        # 204680 <stdout@@GLIBC_2.2.5>
    1847:	e8 94 f7 ff ff       	callq  fe0 <fflush@plt>
    184c:	bf 01 00 00 00       	mov    $0x1,%edi
    1851:	e8 0a f8 ff ff       	callq  1060 <sleep@plt>
    1856:	48 8d 3d 14 16 00 00 	lea    0x1614(%rip),%rdi        # 2e71 <array.3416+0x211>
    185d:	e8 ce f6 ff ff       	callq  f30 <puts@plt>
    1862:	bf 10 00 00 00       	mov    $0x10,%edi
    1867:	e8 c4 f7 ff ff       	callq  1030 <exit@plt>

000000000000186c <invalid_phase>:
    186c:	48 83 ec 08          	sub    $0x8,%rsp
    1870:	48 89 fa             	mov    %rdi,%rdx
    1873:	48 8d 35 ff 15 00 00 	lea    0x15ff(%rip),%rsi        # 2e79 <array.3416+0x219>
    187a:	bf 01 00 00 00       	mov    $0x1,%edi
    187f:	b8 00 00 00 00       	mov    $0x0,%eax
    1884:	e8 77 f7 ff ff       	callq  1000 <__printf_chk@plt>
    1889:	bf 08 00 00 00       	mov    $0x8,%edi
    188e:	e8 9d f7 ff ff       	callq  1030 <exit@plt>

0000000000001893 <string_length>:
    1893:	80 3f 00             	cmpb   $0x0,(%rdi)
    1896:	74 12                	je     18aa <string_length+0x17>
    1898:	48 89 fa             	mov    %rdi,%rdx
    189b:	48 83 c2 01          	add    $0x1,%rdx
    189f:	89 d0                	mov    %edx,%eax
    18a1:	29 f8                	sub    %edi,%eax
    18a3:	80 3a 00             	cmpb   $0x0,(%rdx)
    18a6:	75 f3                	jne    189b <string_length+0x8>
    18a8:	f3 c3                	repz retq 
    18aa:	b8 00 00 00 00       	mov    $0x0,%eax
    18af:	c3                   	retq   

00000000000018b0 <strings_not_equal>:
    18b0:	41 54                	push   %r12
    18b2:	55                   	push   %rbp
    18b3:	53                   	push   %rbx
    18b4:	48 89 fb             	mov    %rdi,%rbx
    18b7:	48 89 f5             	mov    %rsi,%rbp
    18ba:	e8 d4 ff ff ff       	callq  1893 <string_length>
    18bf:	41 89 c4             	mov    %eax,%r12d
    18c2:	48 89 ef             	mov    %rbp,%rdi
    18c5:	e8 c9 ff ff ff       	callq  1893 <string_length>
    18ca:	ba 01 00 00 00       	mov    $0x1,%edx
    18cf:	41 39 c4             	cmp    %eax,%r12d
    18d2:	74 07                	je     18db <strings_not_equal+0x2b>
    18d4:	89 d0                	mov    %edx,%eax
    18d6:	5b                   	pop    %rbx
    18d7:	5d                   	pop    %rbp
    18d8:	41 5c                	pop    %r12
    18da:	c3                   	retq   
    18db:	0f b6 03             	movzbl (%rbx),%eax
    18de:	84 c0                	test   %al,%al
    18e0:	74 27                	je     1909 <strings_not_equal+0x59>
    18e2:	3a 45 00             	cmp    0x0(%rbp),%al
    18e5:	75 29                	jne    1910 <strings_not_equal+0x60>
    18e7:	48 83 c3 01          	add    $0x1,%rbx
    18eb:	48 83 c5 01          	add    $0x1,%rbp
    18ef:	0f b6 03             	movzbl (%rbx),%eax
    18f2:	84 c0                	test   %al,%al
    18f4:	74 0c                	je     1902 <strings_not_equal+0x52>
    18f6:	38 45 00             	cmp    %al,0x0(%rbp)
    18f9:	74 ec                	je     18e7 <strings_not_equal+0x37>
    18fb:	ba 01 00 00 00       	mov    $0x1,%edx
    1900:	eb d2                	jmp    18d4 <strings_not_equal+0x24>
    1902:	ba 00 00 00 00       	mov    $0x0,%edx
    1907:	eb cb                	jmp    18d4 <strings_not_equal+0x24>
    1909:	ba 00 00 00 00       	mov    $0x0,%edx
    190e:	eb c4                	jmp    18d4 <strings_not_equal+0x24>
    1910:	ba 01 00 00 00       	mov    $0x1,%edx
    1915:	eb bd                	jmp    18d4 <strings_not_equal+0x24>

0000000000001917 <initialize_bomb>:
    1917:	55                   	push   %rbp
    1918:	53                   	push   %rbx
    1919:	48 81 ec 58 20 00 00 	sub    $0x2058,%rsp
    1920:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1927:	00 00 
    1929:	48 89 84 24 48 20 00 	mov    %rax,0x2048(%rsp)
    1930:	00 
    1931:	31 c0                	xor    %eax,%eax
    1933:	48 8d 35 d6 fe ff ff 	lea    -0x12a(%rip),%rsi        # 1810 <sig_handler>
    193a:	bf 02 00 00 00       	mov    $0x2,%edi
    193f:	e8 5c f6 ff ff       	callq  fa0 <signal@plt>
    1944:	48 89 e7             	mov    %rsp,%rdi
    1947:	be 40 00 00 00       	mov    $0x40,%esi
    194c:	e8 cf f6 ff ff       	callq  1020 <gethostname@plt>
    1951:	85 c0                	test   %eax,%eax
    1953:	75 45                	jne    199a <initialize_bomb+0x83>
    1955:	48 8b 3d 24 29 20 00 	mov    0x202924(%rip),%rdi        # 204280 <host_table>
    195c:	48 8d 1d 25 29 20 00 	lea    0x202925(%rip),%rbx        # 204288 <host_table+0x8>
    1963:	48 89 e5             	mov    %rsp,%rbp
    1966:	48 85 ff             	test   %rdi,%rdi
    1969:	74 19                	je     1984 <initialize_bomb+0x6d>
    196b:	48 89 ee             	mov    %rbp,%rsi
    196e:	e8 8d f5 ff ff       	callq  f00 <strcasecmp@plt>
    1973:	85 c0                	test   %eax,%eax
    1975:	74 5e                	je     19d5 <initialize_bomb+0xbe>
    1977:	48 83 c3 08          	add    $0x8,%rbx
    197b:	48 8b 7b f8          	mov    -0x8(%rbx),%rdi
    197f:	48 85 ff             	test   %rdi,%rdi
    1982:	75 e7                	jne    196b <initialize_bomb+0x54>
    1984:	48 8d 3d 85 13 00 00 	lea    0x1385(%rip),%rdi        # 2d10 <array.3416+0xb0>
    198b:	e8 a0 f5 ff ff       	callq  f30 <puts@plt>
    1990:	bf 08 00 00 00       	mov    $0x8,%edi
    1995:	e8 96 f6 ff ff       	callq  1030 <exit@plt>
    199a:	48 8d 3d 37 13 00 00 	lea    0x1337(%rip),%rdi        # 2cd8 <array.3416+0x78>
    19a1:	e8 8a f5 ff ff       	callq  f30 <puts@plt>
    19a6:	bf 08 00 00 00       	mov    $0x8,%edi
    19ab:	e8 80 f6 ff ff       	callq  1030 <exit@plt>
    19b0:	48 8d 54 24 40       	lea    0x40(%rsp),%rdx
    19b5:	48 8d 35 ce 14 00 00 	lea    0x14ce(%rip),%rsi        # 2e8a <array.3416+0x22a>
    19bc:	bf 01 00 00 00       	mov    $0x1,%edi
    19c1:	b8 00 00 00 00       	mov    $0x0,%eax
    19c6:	e8 35 f6 ff ff       	callq  1000 <__printf_chk@plt>
    19cb:	bf 08 00 00 00       	mov    $0x8,%edi
    19d0:	e8 5b f6 ff ff       	callq  1030 <exit@plt>
    19d5:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
    19da:	e8 b2 0d 00 00       	callq  2791 <init_driver>
    19df:	85 c0                	test   %eax,%eax
    19e1:	78 cd                	js     19b0 <initialize_bomb+0x99>
    19e3:	48 8b 84 24 48 20 00 	mov    0x2048(%rsp),%rax
    19ea:	00 
    19eb:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    19f2:	00 00 
    19f4:	75 0a                	jne    1a00 <initialize_bomb+0xe9>
    19f6:	48 81 c4 58 20 00 00 	add    $0x2058,%rsp
    19fd:	5b                   	pop    %rbx
    19fe:	5d                   	pop    %rbp
    19ff:	c3                   	retq   
    1a00:	e8 4b f5 ff ff       	callq  f50 <__stack_chk_fail@plt>

0000000000001a05 <initialize_bomb_solve>:
    1a05:	f3 c3                	repz retq 

0000000000001a07 <blank_line>:
    1a07:	55                   	push   %rbp
    1a08:	53                   	push   %rbx
    1a09:	48 83 ec 08          	sub    $0x8,%rsp
    1a0d:	48 89 fd             	mov    %rdi,%rbp
    1a10:	0f b6 5d 00          	movzbl 0x0(%rbp),%ebx
    1a14:	84 db                	test   %bl,%bl
    1a16:	74 1e                	je     1a36 <blank_line+0x2f>
    1a18:	e8 53 f6 ff ff       	callq  1070 <__ctype_b_loc@plt>
    1a1d:	48 83 c5 01          	add    $0x1,%rbp
    1a21:	48 0f be db          	movsbq %bl,%rbx
    1a25:	48 8b 00             	mov    (%rax),%rax
    1a28:	f6 44 58 01 20       	testb  $0x20,0x1(%rax,%rbx,2)
    1a2d:	75 e1                	jne    1a10 <blank_line+0x9>
    1a2f:	b8 00 00 00 00       	mov    $0x0,%eax
    1a34:	eb 05                	jmp    1a3b <blank_line+0x34>
    1a36:	b8 01 00 00 00       	mov    $0x1,%eax
    1a3b:	48 83 c4 08          	add    $0x8,%rsp
    1a3f:	5b                   	pop    %rbx
    1a40:	5d                   	pop    %rbp
    1a41:	c3                   	retq   

0000000000001a42 <skip>:
    1a42:	55                   	push   %rbp
    1a43:	53                   	push   %rbx
    1a44:	48 83 ec 08          	sub    $0x8,%rsp
    1a48:	48 8d 2d 71 2c 20 00 	lea    0x202c71(%rip),%rbp        # 2046c0 <input_strings>
    1a4f:	48 63 05 56 2c 20 00 	movslq 0x202c56(%rip),%rax        # 2046ac <num_input_strings>
    1a56:	48 8d 3c 80          	lea    (%rax,%rax,4),%rdi
    1a5a:	48 c1 e7 04          	shl    $0x4,%rdi
    1a5e:	48 01 ef             	add    %rbp,%rdi
    1a61:	48 8b 15 48 2c 20 00 	mov    0x202c48(%rip),%rdx        # 2046b0 <infile>
    1a68:	be 50 00 00 00       	mov    $0x50,%esi
    1a6d:	e8 1e f5 ff ff       	callq  f90 <fgets@plt>
    1a72:	48 89 c3             	mov    %rax,%rbx
    1a75:	48 85 c0             	test   %rax,%rax
    1a78:	74 0c                	je     1a86 <skip+0x44>
    1a7a:	48 89 c7             	mov    %rax,%rdi
    1a7d:	e8 85 ff ff ff       	callq  1a07 <blank_line>
    1a82:	85 c0                	test   %eax,%eax
    1a84:	75 c9                	jne    1a4f <skip+0xd>
    1a86:	48 89 d8             	mov    %rbx,%rax
    1a89:	48 83 c4 08          	add    $0x8,%rsp
    1a8d:	5b                   	pop    %rbx
    1a8e:	5d                   	pop    %rbp
    1a8f:	c3                   	retq   

0000000000001a90 <send_msg>:
    1a90:	53                   	push   %rbx
    1a91:	48 81 ec 10 40 00 00 	sub    $0x4010,%rsp
    1a98:	41 89 f8             	mov    %edi,%r8d
    1a9b:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1aa2:	00 00 
    1aa4:	48 89 84 24 08 40 00 	mov    %rax,0x4008(%rsp)
    1aab:	00 
    1aac:	31 c0                	xor    %eax,%eax
    1aae:	8b 35 f8 2b 20 00    	mov    0x202bf8(%rip),%esi        # 2046ac <num_input_strings>
    1ab4:	8d 46 ff             	lea    -0x1(%rsi),%eax
    1ab7:	48 98                	cltq   
    1ab9:	48 8d 14 80          	lea    (%rax,%rax,4),%rdx
    1abd:	48 c1 e2 04          	shl    $0x4,%rdx
    1ac1:	48 8d 05 f8 2b 20 00 	lea    0x202bf8(%rip),%rax        # 2046c0 <input_strings>
    1ac8:	48 01 c2             	add    %rax,%rdx
    1acb:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
    1ad2:	b8 00 00 00 00       	mov    $0x0,%eax
    1ad7:	48 89 d7             	mov    %rdx,%rdi
    1ada:	f2 ae                	repnz scas %es:(%rdi),%al
    1adc:	48 89 c8             	mov    %rcx,%rax
    1adf:	48 f7 d0             	not    %rax
    1ae2:	48 83 c0 63          	add    $0x63,%rax
    1ae6:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
    1aec:	0f 87 86 00 00 00    	ja     1b78 <send_msg+0xe8>
    1af2:	45 85 c0             	test   %r8d,%r8d
    1af5:	4c 8d 0d a8 13 00 00 	lea    0x13a8(%rip),%r9        # 2ea4 <array.3416+0x244>
    1afc:	48 8d 05 a9 13 00 00 	lea    0x13a9(%rip),%rax        # 2eac <array.3416+0x24c>
    1b03:	4c 0f 44 c8          	cmove  %rax,%r9
    1b07:	48 89 e3             	mov    %rsp,%rbx
    1b0a:	52                   	push   %rdx
    1b0b:	56                   	push   %rsi
    1b0c:	44 8b 05 29 26 20 00 	mov    0x202629(%rip),%r8d        # 20413c <bomb_id>
    1b13:	48 8d 0d 9b 13 00 00 	lea    0x139b(%rip),%rcx        # 2eb5 <array.3416+0x255>
    1b1a:	ba 00 20 00 00       	mov    $0x2000,%edx
    1b1f:	be 01 00 00 00       	mov    $0x1,%esi
    1b24:	48 89 df             	mov    %rbx,%rdi
    1b27:	b8 00 00 00 00       	mov    $0x0,%eax
    1b2c:	e8 4f f5 ff ff       	callq  1080 <__sprintf_chk@plt>
    1b31:	4c 8d 84 24 10 20 00 	lea    0x2010(%rsp),%r8
    1b38:	00 
    1b39:	b9 00 00 00 00       	mov    $0x0,%ecx
    1b3e:	48 89 da             	mov    %rbx,%rdx
    1b41:	48 8d 35 d8 25 20 00 	lea    0x2025d8(%rip),%rsi        # 204120 <user_password>
    1b48:	48 8d 3d e6 25 20 00 	lea    0x2025e6(%rip),%rdi        # 204135 <userid>
    1b4f:	e8 46 0e 00 00       	callq  299a <driver_post>
    1b54:	48 83 c4 10          	add    $0x10,%rsp
    1b58:	85 c0                	test   %eax,%eax
    1b5a:	78 3c                	js     1b98 <send_msg+0x108>
    1b5c:	48 8b 84 24 08 40 00 	mov    0x4008(%rsp),%rax
    1b63:	00 
    1b64:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    1b6b:	00 00 
    1b6d:	75 40                	jne    1baf <send_msg+0x11f>
    1b6f:	48 81 c4 10 40 00 00 	add    $0x4010,%rsp
    1b76:	5b                   	pop    %rbx
    1b77:	c3                   	retq   
    1b78:	48 8d 35 c9 11 00 00 	lea    0x11c9(%rip),%rsi        # 2d48 <array.3416+0xe8>
    1b7f:	bf 01 00 00 00       	mov    $0x1,%edi
    1b84:	b8 00 00 00 00       	mov    $0x0,%eax
    1b89:	e8 72 f4 ff ff       	callq  1000 <__printf_chk@plt>
    1b8e:	bf 08 00 00 00       	mov    $0x8,%edi
    1b93:	e8 98 f4 ff ff       	callq  1030 <exit@plt>
    1b98:	48 8d bc 24 00 20 00 	lea    0x2000(%rsp),%rdi
    1b9f:	00 
    1ba0:	e8 8b f3 ff ff       	callq  f30 <puts@plt>
    1ba5:	bf 00 00 00 00       	mov    $0x0,%edi
    1baa:	e8 81 f4 ff ff       	callq  1030 <exit@plt>
    1baf:	e8 9c f3 ff ff       	callq  f50 <__stack_chk_fail@plt>

0000000000001bb4 <explode_bomb>:
    1bb4:	48 83 ec 08          	sub    $0x8,%rsp
    1bb8:	48 8d 3d 02 13 00 00 	lea    0x1302(%rip),%rdi        # 2ec1 <array.3416+0x261>
    1bbf:	e8 6c f3 ff ff       	callq  f30 <puts@plt>
    1bc4:	48 8d 3d ff 12 00 00 	lea    0x12ff(%rip),%rdi        # 2eca <array.3416+0x26a>
    1bcb:	e8 60 f3 ff ff       	callq  f30 <puts@plt>
    1bd0:	bf 00 00 00 00       	mov    $0x0,%edi
    1bd5:	e8 b6 fe ff ff       	callq  1a90 <send_msg>
    1bda:	48 8d 3d 8f 11 00 00 	lea    0x118f(%rip),%rdi        # 2d70 <array.3416+0x110>
    1be1:	e8 4a f3 ff ff       	callq  f30 <puts@plt>
    1be6:	bf 08 00 00 00       	mov    $0x8,%edi
    1beb:	e8 40 f4 ff ff       	callq  1030 <exit@plt>

0000000000001bf0 <read_six_numbers>:
    1bf0:	48 83 ec 08          	sub    $0x8,%rsp
    1bf4:	48 89 f2             	mov    %rsi,%rdx
    1bf7:	48 8d 4e 04          	lea    0x4(%rsi),%rcx
    1bfb:	48 8d 46 14          	lea    0x14(%rsi),%rax
    1bff:	50                   	push   %rax
    1c00:	48 8d 46 10          	lea    0x10(%rsi),%rax
    1c04:	50                   	push   %rax
    1c05:	4c 8d 4e 0c          	lea    0xc(%rsi),%r9
    1c09:	4c 8d 46 08          	lea    0x8(%rsi),%r8
    1c0d:	48 8d 35 cd 12 00 00 	lea    0x12cd(%rip),%rsi        # 2ee1 <array.3416+0x281>
    1c14:	b8 00 00 00 00       	mov    $0x0,%eax
    1c19:	e8 d2 f3 ff ff       	callq  ff0 <__isoc99_sscanf@plt>
    1c1e:	48 83 c4 10          	add    $0x10,%rsp
    1c22:	83 f8 05             	cmp    $0x5,%eax
    1c25:	7e 05                	jle    1c2c <read_six_numbers+0x3c>
    1c27:	48 83 c4 08          	add    $0x8,%rsp
    1c2b:	c3                   	retq   
    1c2c:	e8 83 ff ff ff       	callq  1bb4 <explode_bomb>

0000000000001c31 <read_line>:
    1c31:	48 83 ec 08          	sub    $0x8,%rsp
    1c35:	b8 00 00 00 00       	mov    $0x0,%eax
    1c3a:	e8 03 fe ff ff       	callq  1a42 <skip>
    1c3f:	48 85 c0             	test   %rax,%rax
    1c42:	74 6f                	je     1cb3 <read_line+0x82>
    1c44:	8b 35 62 2a 20 00    	mov    0x202a62(%rip),%esi        # 2046ac <num_input_strings>
    1c4a:	48 63 c6             	movslq %esi,%rax
    1c4d:	48 8d 14 80          	lea    (%rax,%rax,4),%rdx
    1c51:	48 c1 e2 04          	shl    $0x4,%rdx
    1c55:	48 8d 05 64 2a 20 00 	lea    0x202a64(%rip),%rax        # 2046c0 <input_strings>
    1c5c:	48 01 c2             	add    %rax,%rdx
    1c5f:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
    1c66:	b8 00 00 00 00       	mov    $0x0,%eax
    1c6b:	48 89 d7             	mov    %rdx,%rdi
    1c6e:	f2 ae                	repnz scas %es:(%rdi),%al
    1c70:	48 f7 d1             	not    %rcx
    1c73:	48 83 e9 01          	sub    $0x1,%rcx
    1c77:	83 f9 4e             	cmp    $0x4e,%ecx
    1c7a:	0f 8f ab 00 00 00    	jg     1d2b <read_line+0xfa>
    1c80:	83 e9 01             	sub    $0x1,%ecx
    1c83:	48 63 c9             	movslq %ecx,%rcx
    1c86:	48 63 c6             	movslq %esi,%rax
    1c89:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
    1c8d:	48 c1 e0 04          	shl    $0x4,%rax
    1c91:	48 89 c7             	mov    %rax,%rdi
    1c94:	48 8d 05 25 2a 20 00 	lea    0x202a25(%rip),%rax        # 2046c0 <input_strings>
    1c9b:	48 01 f8             	add    %rdi,%rax
    1c9e:	c6 04 08 00          	movb   $0x0,(%rax,%rcx,1)
    1ca2:	83 c6 01             	add    $0x1,%esi
    1ca5:	89 35 01 2a 20 00    	mov    %esi,0x202a01(%rip)        # 2046ac <num_input_strings>
    1cab:	48 89 d0             	mov    %rdx,%rax
    1cae:	48 83 c4 08          	add    $0x8,%rsp
    1cb2:	c3                   	retq   
    1cb3:	48 8b 05 d6 29 20 00 	mov    0x2029d6(%rip),%rax        # 204690 <stdin@@GLIBC_2.2.5>
    1cba:	48 39 05 ef 29 20 00 	cmp    %rax,0x2029ef(%rip)        # 2046b0 <infile>
    1cc1:	74 1b                	je     1cde <read_line+0xad>
    1cc3:	48 8d 3d 47 12 00 00 	lea    0x1247(%rip),%rdi        # 2f11 <array.3416+0x2b1>
    1cca:	e8 21 f2 ff ff       	callq  ef0 <getenv@plt>
    1ccf:	48 85 c0             	test   %rax,%rax
    1cd2:	74 20                	je     1cf4 <read_line+0xc3>
    1cd4:	bf 00 00 00 00       	mov    $0x0,%edi
    1cd9:	e8 52 f3 ff ff       	callq  1030 <exit@plt>
    1cde:	48 8d 3d 0e 12 00 00 	lea    0x120e(%rip),%rdi        # 2ef3 <array.3416+0x293>
    1ce5:	e8 46 f2 ff ff       	callq  f30 <puts@plt>
    1cea:	bf 08 00 00 00       	mov    $0x8,%edi
    1cef:	e8 3c f3 ff ff       	callq  1030 <exit@plt>
    1cf4:	48 8b 05 95 29 20 00 	mov    0x202995(%rip),%rax        # 204690 <stdin@@GLIBC_2.2.5>
    1cfb:	48 89 05 ae 29 20 00 	mov    %rax,0x2029ae(%rip)        # 2046b0 <infile>
    1d02:	b8 00 00 00 00       	mov    $0x0,%eax
    1d07:	e8 36 fd ff ff       	callq  1a42 <skip>
    1d0c:	48 85 c0             	test   %rax,%rax
    1d0f:	0f 85 2f ff ff ff    	jne    1c44 <read_line+0x13>
    1d15:	48 8d 3d d7 11 00 00 	lea    0x11d7(%rip),%rdi        # 2ef3 <array.3416+0x293>
    1d1c:	e8 0f f2 ff ff       	callq  f30 <puts@plt>
    1d21:	bf 00 00 00 00       	mov    $0x0,%edi
    1d26:	e8 05 f3 ff ff       	callq  1030 <exit@plt>
    1d2b:	48 8d 3d ea 11 00 00 	lea    0x11ea(%rip),%rdi        # 2f1c <array.3416+0x2bc>
    1d32:	e8 f9 f1 ff ff       	callq  f30 <puts@plt>
    1d37:	8b 05 6f 29 20 00    	mov    0x20296f(%rip),%eax        # 2046ac <num_input_strings>
    1d3d:	8d 50 01             	lea    0x1(%rax),%edx
    1d40:	89 15 66 29 20 00    	mov    %edx,0x202966(%rip)        # 2046ac <num_input_strings>
    1d46:	48 98                	cltq   
    1d48:	48 6b c0 50          	imul   $0x50,%rax,%rax
    1d4c:	48 8d 15 6d 29 20 00 	lea    0x20296d(%rip),%rdx        # 2046c0 <input_strings>
    1d53:	48 be 2a 2a 2a 74 72 	movabs $0x636e7572742a2a2a,%rsi
    1d5a:	75 6e 63 
    1d5d:	48 bf 61 74 65 64 2a 	movabs $0x2a2a2a64657461,%rdi
    1d64:	2a 2a 00 
    1d67:	48 89 34 02          	mov    %rsi,(%rdx,%rax,1)
    1d6b:	48 89 7c 02 08       	mov    %rdi,0x8(%rdx,%rax,1)
    1d70:	e8 3f fe ff ff       	callq  1bb4 <explode_bomb>

0000000000001d75 <phase_defused>:
    1d75:	48 83 ec 78          	sub    $0x78,%rsp
    1d79:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1d80:	00 00 
    1d82:	48 89 44 24 68       	mov    %rax,0x68(%rsp)
    1d87:	31 c0                	xor    %eax,%eax
    1d89:	bf 01 00 00 00       	mov    $0x1,%edi
    1d8e:	e8 fd fc ff ff       	callq  1a90 <send_msg>
    1d93:	83 3d 12 29 20 00 06 	cmpl   $0x6,0x202912(%rip)        # 2046ac <num_input_strings>
    1d9a:	74 19                	je     1db5 <phase_defused+0x40>
    1d9c:	48 8b 44 24 68       	mov    0x68(%rsp),%rax
    1da1:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    1da8:	00 00 
    1daa:	0f 85 84 00 00 00    	jne    1e34 <phase_defused+0xbf>
    1db0:	48 83 c4 78          	add    $0x78,%rsp
    1db4:	c3                   	retq   
    1db5:	48 8d 4c 24 0c       	lea    0xc(%rsp),%rcx
    1dba:	48 8d 54 24 08       	lea    0x8(%rsp),%rdx
    1dbf:	4c 8d 44 24 10       	lea    0x10(%rsp),%r8
    1dc4:	48 8d 35 6c 11 00 00 	lea    0x116c(%rip),%rsi        # 2f37 <array.3416+0x2d7>
    1dcb:	48 8d 3d de 29 20 00 	lea    0x2029de(%rip),%rdi        # 2047b0 <input_strings+0xf0>
    1dd2:	b8 00 00 00 00       	mov    $0x0,%eax
    1dd7:	e8 14 f2 ff ff       	callq  ff0 <__isoc99_sscanf@plt>
    1ddc:	83 f8 03             	cmp    $0x3,%eax
    1ddf:	74 1a                	je     1dfb <phase_defused+0x86>
    1de1:	48 8d 3d 10 10 00 00 	lea    0x1010(%rip),%rdi        # 2df8 <array.3416+0x198>
    1de8:	e8 43 f1 ff ff       	callq  f30 <puts@plt>
    1ded:	48 8d 3d 34 10 00 00 	lea    0x1034(%rip),%rdi        # 2e28 <array.3416+0x1c8>
    1df4:	e8 37 f1 ff ff       	callq  f30 <puts@plt>
    1df9:	eb a1                	jmp    1d9c <phase_defused+0x27>
    1dfb:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
    1e00:	48 8d 35 39 11 00 00 	lea    0x1139(%rip),%rsi        # 2f40 <array.3416+0x2e0>
    1e07:	e8 a4 fa ff ff       	callq  18b0 <strings_not_equal>
    1e0c:	85 c0                	test   %eax,%eax
    1e0e:	75 d1                	jne    1de1 <phase_defused+0x6c>
    1e10:	48 8d 3d 81 0f 00 00 	lea    0xf81(%rip),%rdi        # 2d98 <array.3416+0x138>
    1e17:	e8 14 f1 ff ff       	callq  f30 <puts@plt>
    1e1c:	48 8d 3d 9d 0f 00 00 	lea    0xf9d(%rip),%rdi        # 2dc0 <array.3416+0x160>
    1e23:	e8 08 f1 ff ff       	callq  f30 <puts@plt>
    1e28:	b8 00 00 00 00       	mov    $0x0,%eax
    1e2d:	e8 87 f9 ff ff       	callq  17b9 <secret_phase>
    1e32:	eb ad                	jmp    1de1 <phase_defused+0x6c>
    1e34:	e8 17 f1 ff ff       	callq  f50 <__stack_chk_fail@plt>

0000000000001e39 <sigalrm_handler>:
    1e39:	48 83 ec 08          	sub    $0x8,%rsp
    1e3d:	b9 00 00 00 00       	mov    $0x0,%ecx
    1e42:	48 8d 15 c7 11 00 00 	lea    0x11c7(%rip),%rdx        # 3010 <array.3416+0x3b0>
    1e49:	be 01 00 00 00       	mov    $0x1,%esi
    1e4e:	48 8b 3d 4b 28 20 00 	mov    0x20284b(%rip),%rdi        # 2046a0 <stderr@@GLIBC_2.2.5>
    1e55:	b8 00 00 00 00       	mov    $0x0,%eax
    1e5a:	e8 f1 f1 ff ff       	callq  1050 <__fprintf_chk@plt>
    1e5f:	bf 01 00 00 00       	mov    $0x1,%edi
    1e64:	e8 c7 f1 ff ff       	callq  1030 <exit@plt>

0000000000001e69 <rio_readlineb>:
    1e69:	41 56                	push   %r14
    1e6b:	41 55                	push   %r13
    1e6d:	41 54                	push   %r12
    1e6f:	55                   	push   %rbp
    1e70:	53                   	push   %rbx
    1e71:	48 89 fb             	mov    %rdi,%rbx
    1e74:	49 89 f4             	mov    %rsi,%r12
    1e77:	49 89 d6             	mov    %rdx,%r14
    1e7a:	41 bd 01 00 00 00    	mov    $0x1,%r13d
    1e80:	48 8d 6f 10          	lea    0x10(%rdi),%rbp
    1e84:	48 83 fa 01          	cmp    $0x1,%rdx
    1e88:	77 0c                	ja     1e96 <rio_readlineb+0x2d>
    1e8a:	eb 60                	jmp    1eec <rio_readlineb+0x83>
    1e8c:	e8 7f f0 ff ff       	callq  f10 <__errno_location@plt>
    1e91:	83 38 04             	cmpl   $0x4,(%rax)
    1e94:	75 67                	jne    1efd <rio_readlineb+0x94>
    1e96:	8b 43 04             	mov    0x4(%rbx),%eax
    1e99:	85 c0                	test   %eax,%eax
    1e9b:	7f 20                	jg     1ebd <rio_readlineb+0x54>
    1e9d:	ba 00 20 00 00       	mov    $0x2000,%edx
    1ea2:	48 89 ee             	mov    %rbp,%rsi
    1ea5:	8b 3b                	mov    (%rbx),%edi
    1ea7:	e8 d4 f0 ff ff       	callq  f80 <read@plt>
    1eac:	89 43 04             	mov    %eax,0x4(%rbx)
    1eaf:	85 c0                	test   %eax,%eax
    1eb1:	78 d9                	js     1e8c <rio_readlineb+0x23>
    1eb3:	85 c0                	test   %eax,%eax
    1eb5:	74 4f                	je     1f06 <rio_readlineb+0x9d>
    1eb7:	48 89 6b 08          	mov    %rbp,0x8(%rbx)
    1ebb:	eb d9                	jmp    1e96 <rio_readlineb+0x2d>
    1ebd:	48 8b 53 08          	mov    0x8(%rbx),%rdx
    1ec1:	0f b6 0a             	movzbl (%rdx),%ecx
    1ec4:	48 83 c2 01          	add    $0x1,%rdx
    1ec8:	48 89 53 08          	mov    %rdx,0x8(%rbx)
    1ecc:	83 e8 01             	sub    $0x1,%eax
    1ecf:	89 43 04             	mov    %eax,0x4(%rbx)
    1ed2:	49 83 c4 01          	add    $0x1,%r12
    1ed6:	41 88 4c 24 ff       	mov    %cl,-0x1(%r12)
    1edb:	80 f9 0a             	cmp    $0xa,%cl
    1ede:	74 0c                	je     1eec <rio_readlineb+0x83>
    1ee0:	41 83 c5 01          	add    $0x1,%r13d
    1ee4:	49 63 c5             	movslq %r13d,%rax
    1ee7:	4c 39 f0             	cmp    %r14,%rax
    1eea:	72 aa                	jb     1e96 <rio_readlineb+0x2d>
    1eec:	41 c6 04 24 00       	movb   $0x0,(%r12)
    1ef1:	49 63 c5             	movslq %r13d,%rax
    1ef4:	5b                   	pop    %rbx
    1ef5:	5d                   	pop    %rbp
    1ef6:	41 5c                	pop    %r12
    1ef8:	41 5d                	pop    %r13
    1efa:	41 5e                	pop    %r14
    1efc:	c3                   	retq   
    1efd:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
    1f04:	eb 05                	jmp    1f0b <rio_readlineb+0xa2>
    1f06:	b8 00 00 00 00       	mov    $0x0,%eax
    1f0b:	85 c0                	test   %eax,%eax
    1f0d:	75 0d                	jne    1f1c <rio_readlineb+0xb3>
    1f0f:	b8 00 00 00 00       	mov    $0x0,%eax
    1f14:	41 83 fd 01          	cmp    $0x1,%r13d
    1f18:	75 d2                	jne    1eec <rio_readlineb+0x83>
    1f1a:	eb d8                	jmp    1ef4 <rio_readlineb+0x8b>
    1f1c:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
    1f23:	eb cf                	jmp    1ef4 <rio_readlineb+0x8b>

0000000000001f25 <submitr>:
    1f25:	41 57                	push   %r15
    1f27:	41 56                	push   %r14
    1f29:	41 55                	push   %r13
    1f2b:	41 54                	push   %r12
    1f2d:	55                   	push   %rbp
    1f2e:	53                   	push   %rbx
    1f2f:	48 81 ec 78 a0 00 00 	sub    $0xa078,%rsp
    1f36:	49 89 fd             	mov    %rdi,%r13
    1f39:	89 f5                	mov    %esi,%ebp
    1f3b:	48 89 54 24 08       	mov    %rdx,0x8(%rsp)
    1f40:	48 89 4c 24 10       	mov    %rcx,0x10(%rsp)
    1f45:	4c 89 44 24 20       	mov    %r8,0x20(%rsp)
    1f4a:	4c 89 4c 24 18       	mov    %r9,0x18(%rsp)
    1f4f:	48 8b 9c 24 b0 a0 00 	mov    0xa0b0(%rsp),%rbx
    1f56:	00 
    1f57:	4c 8b bc 24 b8 a0 00 	mov    0xa0b8(%rsp),%r15
    1f5e:	00 
    1f5f:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1f66:	00 00 
    1f68:	48 89 84 24 68 a0 00 	mov    %rax,0xa068(%rsp)
    1f6f:	00 
    1f70:	31 c0                	xor    %eax,%eax
    1f72:	c7 44 24 3c 00 00 00 	movl   $0x0,0x3c(%rsp)
    1f79:	00 
    1f7a:	ba 00 00 00 00       	mov    $0x0,%edx
    1f7f:	be 01 00 00 00       	mov    $0x1,%esi
    1f84:	bf 02 00 00 00       	mov    $0x2,%edi
    1f89:	e8 02 f1 ff ff       	callq  1090 <socket@plt>
    1f8e:	85 c0                	test   %eax,%eax
    1f90:	0f 88 35 01 00 00    	js     20cb <submitr+0x1a6>
    1f96:	41 89 c4             	mov    %eax,%r12d
    1f99:	4c 89 ef             	mov    %r13,%rdi
    1f9c:	e8 0f f0 ff ff       	callq  fb0 <gethostbyname@plt>
    1fa1:	48 85 c0             	test   %rax,%rax
    1fa4:	0f 84 71 01 00 00    	je     211b <submitr+0x1f6>
    1faa:	4c 8d 6c 24 40       	lea    0x40(%rsp),%r13
    1faf:	48 c7 44 24 42 00 00 	movq   $0x0,0x42(%rsp)
    1fb6:	00 00 
    1fb8:	c7 44 24 4a 00 00 00 	movl   $0x0,0x4a(%rsp)
    1fbf:	00 
    1fc0:	66 c7 44 24 4e 00 00 	movw   $0x0,0x4e(%rsp)
    1fc7:	66 c7 44 24 40 02 00 	movw   $0x2,0x40(%rsp)
    1fce:	48 63 50 14          	movslq 0x14(%rax),%rdx
    1fd2:	48 8b 40 18          	mov    0x18(%rax),%rax
    1fd6:	48 8d 7c 24 44       	lea    0x44(%rsp),%rdi
    1fdb:	b9 0c 00 00 00       	mov    $0xc,%ecx
    1fe0:	48 8b 30             	mov    (%rax),%rsi
    1fe3:	e8 d8 ef ff ff       	callq  fc0 <__memmove_chk@plt>
    1fe8:	66 c1 cd 08          	ror    $0x8,%bp
    1fec:	66 89 6c 24 42       	mov    %bp,0x42(%rsp)
    1ff1:	ba 10 00 00 00       	mov    $0x10,%edx
    1ff6:	4c 89 ee             	mov    %r13,%rsi
    1ff9:	44 89 e7             	mov    %r12d,%edi
    1ffc:	e8 3f f0 ff ff       	callq  1040 <connect@plt>
    2001:	85 c0                	test   %eax,%eax
    2003:	0f 88 7d 01 00 00    	js     2186 <submitr+0x261>
    2009:	49 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%r9
    2010:	b8 00 00 00 00       	mov    $0x0,%eax
    2015:	4c 89 c9             	mov    %r9,%rcx
    2018:	48 89 df             	mov    %rbx,%rdi
    201b:	f2 ae                	repnz scas %es:(%rdi),%al
    201d:	48 89 ce             	mov    %rcx,%rsi
    2020:	48 f7 d6             	not    %rsi
    2023:	4c 89 c9             	mov    %r9,%rcx
    2026:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
    202b:	f2 ae                	repnz scas %es:(%rdi),%al
    202d:	49 89 c8             	mov    %rcx,%r8
    2030:	4c 89 c9             	mov    %r9,%rcx
    2033:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
    2038:	f2 ae                	repnz scas %es:(%rdi),%al
    203a:	48 89 ca             	mov    %rcx,%rdx
    203d:	48 f7 d2             	not    %rdx
    2040:	4c 89 c9             	mov    %r9,%rcx
    2043:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
    2048:	f2 ae                	repnz scas %es:(%rdi),%al
    204a:	4c 29 c2             	sub    %r8,%rdx
    204d:	48 29 ca             	sub    %rcx,%rdx
    2050:	48 8d 44 76 fd       	lea    -0x3(%rsi,%rsi,2),%rax
    2055:	48 8d 44 02 7b       	lea    0x7b(%rdx,%rax,1),%rax
    205a:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
    2060:	0f 87 7d 01 00 00    	ja     21e3 <submitr+0x2be>
    2066:	48 8d 94 24 60 40 00 	lea    0x4060(%rsp),%rdx
    206d:	00 
    206e:	b9 00 04 00 00       	mov    $0x400,%ecx
    2073:	b8 00 00 00 00       	mov    $0x0,%eax
    2078:	48 89 d7             	mov    %rdx,%rdi
    207b:	f3 48 ab             	rep stos %rax,%es:(%rdi)
    207e:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
    2085:	48 89 df             	mov    %rbx,%rdi
    2088:	f2 ae                	repnz scas %es:(%rdi),%al
    208a:	48 89 ca             	mov    %rcx,%rdx
    208d:	48 f7 d2             	not    %rdx
    2090:	48 89 d1             	mov    %rdx,%rcx
    2093:	48 83 e9 01          	sub    $0x1,%rcx
    2097:	85 c9                	test   %ecx,%ecx
    2099:	0f 84 3f 06 00 00    	je     26de <submitr+0x7b9>
    209f:	8d 41 ff             	lea    -0x1(%rcx),%eax
    20a2:	4c 8d 74 03 01       	lea    0x1(%rbx,%rax,1),%r14
    20a7:	48 8d ac 24 60 40 00 	lea    0x4060(%rsp),%rbp
    20ae:	00 
    20af:	48 8d 84 24 60 80 00 	lea    0x8060(%rsp),%rax
    20b6:	00 
    20b7:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
    20bc:	49 bd d9 ff 00 00 00 	movabs $0x2000000000ffd9,%r13
    20c3:	00 20 00 
    20c6:	e9 a6 01 00 00       	jmpq   2271 <submitr+0x34c>
    20cb:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    20d2:	3a 20 43 
    20d5:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    20dc:	20 75 6e 
    20df:	49 89 07             	mov    %rax,(%r15)
    20e2:	49 89 57 08          	mov    %rdx,0x8(%r15)
    20e6:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    20ed:	74 6f 20 
    20f0:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
    20f7:	65 20 73 
    20fa:	49 89 47 10          	mov    %rax,0x10(%r15)
    20fe:	49 89 57 18          	mov    %rdx,0x18(%r15)
    2102:	41 c7 47 20 6f 63 6b 	movl   $0x656b636f,0x20(%r15)
    2109:	65 
    210a:	66 41 c7 47 24 74 00 	movw   $0x74,0x24(%r15)
    2111:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2116:	e9 9a 04 00 00       	jmpq   25b5 <submitr+0x690>
    211b:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
    2122:	3a 20 44 
    2125:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
    212c:	20 75 6e 
    212f:	49 89 07             	mov    %rax,(%r15)
    2132:	49 89 57 08          	mov    %rdx,0x8(%r15)
    2136:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    213d:	74 6f 20 
    2140:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
    2147:	76 65 20 
    214a:	49 89 47 10          	mov    %rax,0x10(%r15)
    214e:	49 89 57 18          	mov    %rdx,0x18(%r15)
    2152:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
    2159:	72 20 61 
    215c:	49 89 47 20          	mov    %rax,0x20(%r15)
    2160:	41 c7 47 28 64 64 72 	movl   $0x65726464,0x28(%r15)
    2167:	65 
    2168:	66 41 c7 47 2c 73 73 	movw   $0x7373,0x2c(%r15)
    216f:	41 c6 47 2e 00       	movb   $0x0,0x2e(%r15)
    2174:	44 89 e7             	mov    %r12d,%edi
    2177:	e8 f4 ed ff ff       	callq  f70 <close@plt>
    217c:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2181:	e9 2f 04 00 00       	jmpq   25b5 <submitr+0x690>
    2186:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
    218d:	3a 20 55 
    2190:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
    2197:	20 74 6f 
    219a:	49 89 07             	mov    %rax,(%r15)
    219d:	49 89 57 08          	mov    %rdx,0x8(%r15)
    21a1:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
    21a8:	65 63 74 
    21ab:	48 ba 20 74 6f 20 74 	movabs $0x20656874206f7420,%rdx
    21b2:	68 65 20 
    21b5:	49 89 47 10          	mov    %rax,0x10(%r15)
    21b9:	49 89 57 18          	mov    %rdx,0x18(%r15)
    21bd:	41 c7 47 20 73 65 72 	movl   $0x76726573,0x20(%r15)
    21c4:	76 
    21c5:	66 41 c7 47 24 65 72 	movw   $0x7265,0x24(%r15)
    21cc:	41 c6 47 26 00       	movb   $0x0,0x26(%r15)
    21d1:	44 89 e7             	mov    %r12d,%edi
    21d4:	e8 97 ed ff ff       	callq  f70 <close@plt>
    21d9:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    21de:	e9 d2 03 00 00       	jmpq   25b5 <submitr+0x690>
    21e3:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
    21ea:	3a 20 52 
    21ed:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
    21f4:	20 73 74 
    21f7:	49 89 07             	mov    %rax,(%r15)
    21fa:	49 89 57 08          	mov    %rdx,0x8(%r15)
    21fe:	48 b8 72 69 6e 67 20 	movabs $0x6f6f7420676e6972,%rax
    2205:	74 6f 6f 
    2208:	48 ba 20 6c 61 72 67 	movabs $0x202e656772616c20,%rdx
    220f:	65 2e 20 
    2212:	49 89 47 10          	mov    %rax,0x10(%r15)
    2216:	49 89 57 18          	mov    %rdx,0x18(%r15)
    221a:	48 b8 49 6e 63 72 65 	movabs $0x6573616572636e49,%rax
    2221:	61 73 65 
    2224:	48 ba 20 53 55 42 4d 	movabs $0x5254494d42555320,%rdx
    222b:	49 54 52 
    222e:	49 89 47 20          	mov    %rax,0x20(%r15)
    2232:	49 89 57 28          	mov    %rdx,0x28(%r15)
    2236:	48 b8 5f 4d 41 58 42 	movabs $0x46554258414d5f,%rax
    223d:	55 46 00 
    2240:	49 89 47 30          	mov    %rax,0x30(%r15)
    2244:	44 89 e7             	mov    %r12d,%edi
    2247:	e8 24 ed ff ff       	callq  f70 <close@plt>
    224c:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2251:	e9 5f 03 00 00       	jmpq   25b5 <submitr+0x690>
    2256:	49 0f a3 c5          	bt     %rax,%r13
    225a:	73 21                	jae    227d <submitr+0x358>
    225c:	44 88 45 00          	mov    %r8b,0x0(%rbp)
    2260:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
    2264:	48 83 c3 01          	add    $0x1,%rbx
    2268:	4c 39 f3             	cmp    %r14,%rbx
    226b:	0f 84 6d 04 00 00    	je     26de <submitr+0x7b9>
    2271:	44 0f b6 03          	movzbl (%rbx),%r8d
    2275:	41 8d 40 d6          	lea    -0x2a(%r8),%eax
    2279:	3c 35                	cmp    $0x35,%al
    227b:	76 d9                	jbe    2256 <submitr+0x331>
    227d:	44 89 c0             	mov    %r8d,%eax
    2280:	83 e0 df             	and    $0xffffffdf,%eax
    2283:	83 e8 41             	sub    $0x41,%eax
    2286:	3c 19                	cmp    $0x19,%al
    2288:	76 d2                	jbe    225c <submitr+0x337>
    228a:	41 80 f8 20          	cmp    $0x20,%r8b
    228e:	74 60                	je     22f0 <submitr+0x3cb>
    2290:	41 8d 40 e0          	lea    -0x20(%r8),%eax
    2294:	3c 5f                	cmp    $0x5f,%al
    2296:	76 0a                	jbe    22a2 <submitr+0x37d>
    2298:	41 80 f8 09          	cmp    $0x9,%r8b
    229c:	0f 85 af 03 00 00    	jne    2651 <submitr+0x72c>
    22a2:	45 0f b6 c0          	movzbl %r8b,%r8d
    22a6:	48 8d 0d 3b 0e 00 00 	lea    0xe3b(%rip),%rcx        # 30e8 <array.3416+0x488>
    22ad:	ba 08 00 00 00       	mov    $0x8,%edx
    22b2:	be 01 00 00 00       	mov    $0x1,%esi
    22b7:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
    22bc:	b8 00 00 00 00       	mov    $0x0,%eax
    22c1:	e8 ba ed ff ff       	callq  1080 <__sprintf_chk@plt>
    22c6:	0f b6 84 24 60 80 00 	movzbl 0x8060(%rsp),%eax
    22cd:	00 
    22ce:	88 45 00             	mov    %al,0x0(%rbp)
    22d1:	0f b6 84 24 61 80 00 	movzbl 0x8061(%rsp),%eax
    22d8:	00 
    22d9:	88 45 01             	mov    %al,0x1(%rbp)
    22dc:	0f b6 84 24 62 80 00 	movzbl 0x8062(%rsp),%eax
    22e3:	00 
    22e4:	88 45 02             	mov    %al,0x2(%rbp)
    22e7:	48 8d 6d 03          	lea    0x3(%rbp),%rbp
    22eb:	e9 74 ff ff ff       	jmpq   2264 <submitr+0x33f>
    22f0:	c6 45 00 2b          	movb   $0x2b,0x0(%rbp)
    22f4:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
    22f8:	e9 67 ff ff ff       	jmpq   2264 <submitr+0x33f>
    22fd:	49 01 c5             	add    %rax,%r13
    2300:	48 29 c5             	sub    %rax,%rbp
    2303:	74 26                	je     232b <submitr+0x406>
    2305:	48 89 ea             	mov    %rbp,%rdx
    2308:	4c 89 ee             	mov    %r13,%rsi
    230b:	44 89 e7             	mov    %r12d,%edi
    230e:	e8 2d ec ff ff       	callq  f40 <write@plt>
    2313:	48 85 c0             	test   %rax,%rax
    2316:	7f e5                	jg     22fd <submitr+0x3d8>
    2318:	e8 f3 eb ff ff       	callq  f10 <__errno_location@plt>
    231d:	83 38 04             	cmpl   $0x4,(%rax)
    2320:	0f 85 31 01 00 00    	jne    2457 <submitr+0x532>
    2326:	4c 89 f0             	mov    %r14,%rax
    2329:	eb d2                	jmp    22fd <submitr+0x3d8>
    232b:	48 85 db             	test   %rbx,%rbx
    232e:	0f 88 23 01 00 00    	js     2457 <submitr+0x532>
    2334:	44 89 64 24 50       	mov    %r12d,0x50(%rsp)
    2339:	c7 44 24 54 00 00 00 	movl   $0x0,0x54(%rsp)
    2340:	00 
    2341:	48 8d 7c 24 50       	lea    0x50(%rsp),%rdi
    2346:	48 8d 47 10          	lea    0x10(%rdi),%rax
    234a:	48 89 44 24 58       	mov    %rax,0x58(%rsp)
    234f:	48 8d b4 24 60 20 00 	lea    0x2060(%rsp),%rsi
    2356:	00 
    2357:	ba 00 20 00 00       	mov    $0x2000,%edx
    235c:	e8 08 fb ff ff       	callq  1e69 <rio_readlineb>
    2361:	48 85 c0             	test   %rax,%rax
    2364:	0f 8e 4c 01 00 00    	jle    24b6 <submitr+0x591>
    236a:	48 8d 4c 24 3c       	lea    0x3c(%rsp),%rcx
    236f:	48 8d 94 24 60 60 00 	lea    0x6060(%rsp),%rdx
    2376:	00 
    2377:	48 8d bc 24 60 20 00 	lea    0x2060(%rsp),%rdi
    237e:	00 
    237f:	4c 8d 84 24 60 80 00 	lea    0x8060(%rsp),%r8
    2386:	00 
    2387:	48 8d 35 61 0d 00 00 	lea    0xd61(%rip),%rsi        # 30ef <array.3416+0x48f>
    238e:	b8 00 00 00 00       	mov    $0x0,%eax
    2393:	e8 58 ec ff ff       	callq  ff0 <__isoc99_sscanf@plt>
    2398:	44 8b 44 24 3c       	mov    0x3c(%rsp),%r8d
    239d:	41 81 f8 c8 00 00 00 	cmp    $0xc8,%r8d
    23a4:	0f 85 80 01 00 00    	jne    252a <submitr+0x605>
    23aa:	48 8d 9c 24 60 20 00 	lea    0x2060(%rsp),%rbx
    23b1:	00 
    23b2:	48 8d 2d 47 0d 00 00 	lea    0xd47(%rip),%rbp        # 3100 <array.3416+0x4a0>
    23b9:	4c 8d 6c 24 50       	lea    0x50(%rsp),%r13
    23be:	b9 03 00 00 00       	mov    $0x3,%ecx
    23c3:	48 89 de             	mov    %rbx,%rsi
    23c6:	48 89 ef             	mov    %rbp,%rdi
    23c9:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
    23cb:	0f 97 c0             	seta   %al
    23ce:	1c 00                	sbb    $0x0,%al
    23d0:	84 c0                	test   %al,%al
    23d2:	0f 84 89 01 00 00    	je     2561 <submitr+0x63c>
    23d8:	ba 00 20 00 00       	mov    $0x2000,%edx
    23dd:	48 89 de             	mov    %rbx,%rsi
    23e0:	4c 89 ef             	mov    %r13,%rdi
    23e3:	e8 81 fa ff ff       	callq  1e69 <rio_readlineb>
    23e8:	48 85 c0             	test   %rax,%rax
    23eb:	7f d1                	jg     23be <submitr+0x499>
    23ed:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    23f4:	3a 20 43 
    23f7:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    23fe:	20 75 6e 
    2401:	49 89 07             	mov    %rax,(%r15)
    2404:	49 89 57 08          	mov    %rdx,0x8(%r15)
    2408:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    240f:	74 6f 20 
    2412:	48 ba 72 65 61 64 20 	movabs $0x6165682064616572,%rdx
    2419:	68 65 61 
    241c:	49 89 47 10          	mov    %rax,0x10(%r15)
    2420:	49 89 57 18          	mov    %rdx,0x18(%r15)
    2424:	48 b8 64 65 72 73 20 	movabs $0x6f72662073726564,%rax
    242b:	66 72 6f 
    242e:	48 ba 6d 20 73 65 72 	movabs $0x726576726573206d,%rdx
    2435:	76 65 72 
    2438:	49 89 47 20          	mov    %rax,0x20(%r15)
    243c:	49 89 57 28          	mov    %rdx,0x28(%r15)
    2440:	41 c6 47 30 00       	movb   $0x0,0x30(%r15)
    2445:	44 89 e7             	mov    %r12d,%edi
    2448:	e8 23 eb ff ff       	callq  f70 <close@plt>
    244d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2452:	e9 5e 01 00 00       	jmpq   25b5 <submitr+0x690>
    2457:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    245e:	3a 20 43 
    2461:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    2468:	20 75 6e 
    246b:	49 89 07             	mov    %rax,(%r15)
    246e:	49 89 57 08          	mov    %rdx,0x8(%r15)
    2472:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2479:	74 6f 20 
    247c:	48 ba 77 72 69 74 65 	movabs $0x6f74206574697277,%rdx
    2483:	20 74 6f 
    2486:	49 89 47 10          	mov    %rax,0x10(%r15)
    248a:	49 89 57 18          	mov    %rdx,0x18(%r15)
    248e:	48 b8 20 74 68 65 20 	movabs $0x7265732065687420,%rax
    2495:	73 65 72 
    2498:	49 89 47 20          	mov    %rax,0x20(%r15)
    249c:	41 c7 47 28 76 65 72 	movl   $0x726576,0x28(%r15)
    24a3:	00 
    24a4:	44 89 e7             	mov    %r12d,%edi
    24a7:	e8 c4 ea ff ff       	callq  f70 <close@plt>
    24ac:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    24b1:	e9 ff 00 00 00       	jmpq   25b5 <submitr+0x690>
    24b6:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    24bd:	3a 20 43 
    24c0:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    24c7:	20 75 6e 
    24ca:	49 89 07             	mov    %rax,(%r15)
    24cd:	49 89 57 08          	mov    %rdx,0x8(%r15)
    24d1:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    24d8:	74 6f 20 
    24db:	48 ba 72 65 61 64 20 	movabs $0x7269662064616572,%rdx
    24e2:	66 69 72 
    24e5:	49 89 47 10          	mov    %rax,0x10(%r15)
    24e9:	49 89 57 18          	mov    %rdx,0x18(%r15)
    24ed:	48 b8 73 74 20 68 65 	movabs $0x6564616568207473,%rax
    24f4:	61 64 65 
    24f7:	48 ba 72 20 66 72 6f 	movabs $0x73206d6f72662072,%rdx
    24fe:	6d 20 73 
    2501:	49 89 47 20          	mov    %rax,0x20(%r15)
    2505:	49 89 57 28          	mov    %rdx,0x28(%r15)
    2509:	41 c7 47 30 65 72 76 	movl   $0x65767265,0x30(%r15)
    2510:	65 
    2511:	66 41 c7 47 34 72 00 	movw   $0x72,0x34(%r15)
    2518:	44 89 e7             	mov    %r12d,%edi
    251b:	e8 50 ea ff ff       	callq  f70 <close@plt>
    2520:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2525:	e9 8b 00 00 00       	jmpq   25b5 <submitr+0x690>
    252a:	4c 8d 8c 24 60 80 00 	lea    0x8060(%rsp),%r9
    2531:	00 
    2532:	48 8d 0d ff 0a 00 00 	lea    0xaff(%rip),%rcx        # 3038 <array.3416+0x3d8>
    2539:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
    2540:	be 01 00 00 00       	mov    $0x1,%esi
    2545:	4c 89 ff             	mov    %r15,%rdi
    2548:	b8 00 00 00 00       	mov    $0x0,%eax
    254d:	e8 2e eb ff ff       	callq  1080 <__sprintf_chk@plt>
    2552:	44 89 e7             	mov    %r12d,%edi
    2555:	e8 16 ea ff ff       	callq  f70 <close@plt>
    255a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    255f:	eb 54                	jmp    25b5 <submitr+0x690>
    2561:	48 8d b4 24 60 20 00 	lea    0x2060(%rsp),%rsi
    2568:	00 
    2569:	48 8d 7c 24 50       	lea    0x50(%rsp),%rdi
    256e:	ba 00 20 00 00       	mov    $0x2000,%edx
    2573:	e8 f1 f8 ff ff       	callq  1e69 <rio_readlineb>
    2578:	48 85 c0             	test   %rax,%rax
    257b:	7e 61                	jle    25de <submitr+0x6b9>
    257d:	48 8d b4 24 60 20 00 	lea    0x2060(%rsp),%rsi
    2584:	00 
    2585:	4c 89 ff             	mov    %r15,%rdi
    2588:	e8 93 e9 ff ff       	callq  f20 <strcpy@plt>
    258d:	44 89 e7             	mov    %r12d,%edi
    2590:	e8 db e9 ff ff       	callq  f70 <close@plt>
    2595:	b9 03 00 00 00       	mov    $0x3,%ecx
    259a:	48 8d 3d 62 0b 00 00 	lea    0xb62(%rip),%rdi        # 3103 <array.3416+0x4a3>
    25a1:	4c 89 fe             	mov    %r15,%rsi
    25a4:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
    25a6:	0f 97 c0             	seta   %al
    25a9:	1c 00                	sbb    $0x0,%al
    25ab:	84 c0                	test   %al,%al
    25ad:	0f 95 c0             	setne  %al
    25b0:	0f b6 c0             	movzbl %al,%eax
    25b3:	f7 d8                	neg    %eax
    25b5:	48 8b 94 24 68 a0 00 	mov    0xa068(%rsp),%rdx
    25bc:	00 
    25bd:	64 48 33 14 25 28 00 	xor    %fs:0x28,%rdx
    25c4:	00 00 
    25c6:	0f 85 95 01 00 00    	jne    2761 <submitr+0x83c>
    25cc:	48 81 c4 78 a0 00 00 	add    $0xa078,%rsp
    25d3:	5b                   	pop    %rbx
    25d4:	5d                   	pop    %rbp
    25d5:	41 5c                	pop    %r12
    25d7:	41 5d                	pop    %r13
    25d9:	41 5e                	pop    %r14
    25db:	41 5f                	pop    %r15
    25dd:	c3                   	retq   
    25de:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    25e5:	3a 20 43 
    25e8:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    25ef:	20 75 6e 
    25f2:	49 89 07             	mov    %rax,(%r15)
    25f5:	49 89 57 08          	mov    %rdx,0x8(%r15)
    25f9:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2600:	74 6f 20 
    2603:	48 ba 72 65 61 64 20 	movabs $0x6174732064616572,%rdx
    260a:	73 74 61 
    260d:	49 89 47 10          	mov    %rax,0x10(%r15)
    2611:	49 89 57 18          	mov    %rdx,0x18(%r15)
    2615:	48 b8 74 75 73 20 6d 	movabs $0x7373656d20737574,%rax
    261c:	65 73 73 
    261f:	48 ba 61 67 65 20 66 	movabs $0x6d6f726620656761,%rdx
    2626:	72 6f 6d 
    2629:	49 89 47 20          	mov    %rax,0x20(%r15)
    262d:	49 89 57 28          	mov    %rdx,0x28(%r15)
    2631:	48 b8 20 73 65 72 76 	movabs $0x72657672657320,%rax
    2638:	65 72 00 
    263b:	49 89 47 30          	mov    %rax,0x30(%r15)
    263f:	44 89 e7             	mov    %r12d,%edi
    2642:	e8 29 e9 ff ff       	callq  f70 <close@plt>
    2647:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    264c:	e9 64 ff ff ff       	jmpq   25b5 <submitr+0x690>
    2651:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
    2658:	3a 20 52 
    265b:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
    2662:	20 73 74 
    2665:	49 89 07             	mov    %rax,(%r15)
    2668:	49 89 57 08          	mov    %rdx,0x8(%r15)
    266c:	48 b8 72 69 6e 67 20 	movabs $0x6e6f6320676e6972,%rax
    2673:	63 6f 6e 
    2676:	48 ba 74 61 69 6e 73 	movabs $0x6e6120736e696174,%rdx
    267d:	20 61 6e 
    2680:	49 89 47 10          	mov    %rax,0x10(%r15)
    2684:	49 89 57 18          	mov    %rdx,0x18(%r15)
    2688:	48 b8 20 69 6c 6c 65 	movabs $0x6c6167656c6c6920,%rax
    268f:	67 61 6c 
    2692:	48 ba 20 6f 72 20 75 	movabs $0x72706e7520726f20,%rdx
    2699:	6e 70 72 
    269c:	49 89 47 20          	mov    %rax,0x20(%r15)
    26a0:	49 89 57 28          	mov    %rdx,0x28(%r15)
    26a4:	48 b8 69 6e 74 61 62 	movabs $0x20656c6261746e69,%rax
    26ab:	6c 65 20 
    26ae:	48 ba 63 68 61 72 61 	movabs $0x6574636172616863,%rdx
    26b5:	63 74 65 
    26b8:	49 89 47 30          	mov    %rax,0x30(%r15)
    26bc:	49 89 57 38          	mov    %rdx,0x38(%r15)
    26c0:	66 41 c7 47 40 72 2e 	movw   $0x2e72,0x40(%r15)
    26c7:	41 c6 47 42 00       	movb   $0x0,0x42(%r15)
    26cc:	44 89 e7             	mov    %r12d,%edi
    26cf:	e8 9c e8 ff ff       	callq  f70 <close@plt>
    26d4:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    26d9:	e9 d7 fe ff ff       	jmpq   25b5 <submitr+0x690>
    26de:	48 8d 9c 24 60 20 00 	lea    0x2060(%rsp),%rbx
    26e5:	00 
    26e6:	48 83 ec 08          	sub    $0x8,%rsp
    26ea:	48 8d 84 24 68 40 00 	lea    0x4068(%rsp),%rax
    26f1:	00 
    26f2:	50                   	push   %rax
    26f3:	ff 74 24 28          	pushq  0x28(%rsp)
    26f7:	ff 74 24 38          	pushq  0x38(%rsp)
    26fb:	4c 8b 4c 24 30       	mov    0x30(%rsp),%r9
    2700:	4c 8b 44 24 28       	mov    0x28(%rsp),%r8
    2705:	48 8d 0d 5c 09 00 00 	lea    0x95c(%rip),%rcx        # 3068 <array.3416+0x408>
    270c:	ba 00 20 00 00       	mov    $0x2000,%edx
    2711:	be 01 00 00 00       	mov    $0x1,%esi
    2716:	48 89 df             	mov    %rbx,%rdi
    2719:	b8 00 00 00 00       	mov    $0x0,%eax
    271e:	e8 5d e9 ff ff       	callq  1080 <__sprintf_chk@plt>
    2723:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
    272a:	b8 00 00 00 00       	mov    $0x0,%eax
    272f:	48 89 df             	mov    %rbx,%rdi
    2732:	f2 ae                	repnz scas %es:(%rdi),%al
    2734:	48 f7 d1             	not    %rcx
    2737:	48 89 cb             	mov    %rcx,%rbx
    273a:	48 83 eb 01          	sub    $0x1,%rbx
    273e:	48 83 c4 20          	add    $0x20,%rsp
    2742:	48 89 dd             	mov    %rbx,%rbp
    2745:	4c 8d ac 24 60 20 00 	lea    0x2060(%rsp),%r13
    274c:	00 
    274d:	41 be 00 00 00 00    	mov    $0x0,%r14d
    2753:	48 85 db             	test   %rbx,%rbx
    2756:	0f 85 a9 fb ff ff    	jne    2305 <submitr+0x3e0>
    275c:	e9 d3 fb ff ff       	jmpq   2334 <submitr+0x40f>
    2761:	e8 ea e7 ff ff       	callq  f50 <__stack_chk_fail@plt>

0000000000002766 <init_timeout>:
    2766:	85 ff                	test   %edi,%edi
    2768:	74 25                	je     278f <init_timeout+0x29>
    276a:	53                   	push   %rbx
    276b:	89 fb                	mov    %edi,%ebx
    276d:	48 8d 35 c5 f6 ff ff 	lea    -0x93b(%rip),%rsi        # 1e39 <sigalrm_handler>
    2774:	bf 0e 00 00 00       	mov    $0xe,%edi
    2779:	e8 22 e8 ff ff       	callq  fa0 <signal@plt>
    277e:	85 db                	test   %ebx,%ebx
    2780:	bf 00 00 00 00       	mov    $0x0,%edi
    2785:	0f 49 fb             	cmovns %ebx,%edi
    2788:	e8 d3 e7 ff ff       	callq  f60 <alarm@plt>
    278d:	5b                   	pop    %rbx
    278e:	c3                   	retq   
    278f:	f3 c3                	repz retq 

0000000000002791 <init_driver>:
    2791:	41 54                	push   %r12
    2793:	55                   	push   %rbp
    2794:	53                   	push   %rbx
    2795:	48 83 ec 20          	sub    $0x20,%rsp
    2799:	49 89 fc             	mov    %rdi,%r12
    279c:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    27a3:	00 00 
    27a5:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    27aa:	31 c0                	xor    %eax,%eax
    27ac:	be 01 00 00 00       	mov    $0x1,%esi
    27b1:	bf 0d 00 00 00       	mov    $0xd,%edi
    27b6:	e8 e5 e7 ff ff       	callq  fa0 <signal@plt>
    27bb:	be 01 00 00 00       	mov    $0x1,%esi
    27c0:	bf 1d 00 00 00       	mov    $0x1d,%edi
    27c5:	e8 d6 e7 ff ff       	callq  fa0 <signal@plt>
    27ca:	be 01 00 00 00       	mov    $0x1,%esi
    27cf:	bf 1d 00 00 00       	mov    $0x1d,%edi
    27d4:	e8 c7 e7 ff ff       	callq  fa0 <signal@plt>
    27d9:	ba 00 00 00 00       	mov    $0x0,%edx
    27de:	be 01 00 00 00       	mov    $0x1,%esi
    27e3:	bf 02 00 00 00       	mov    $0x2,%edi
    27e8:	e8 a3 e8 ff ff       	callq  1090 <socket@plt>
    27ed:	85 c0                	test   %eax,%eax
    27ef:	0f 88 a3 00 00 00    	js     2898 <init_driver+0x107>
    27f5:	89 c3                	mov    %eax,%ebx
    27f7:	48 8d 3d 9d 07 00 00 	lea    0x79d(%rip),%rdi        # 2f9b <array.3416+0x33b>
    27fe:	e8 ad e7 ff ff       	callq  fb0 <gethostbyname@plt>
    2803:	48 85 c0             	test   %rax,%rax
    2806:	0f 84 df 00 00 00    	je     28eb <init_driver+0x15a>
    280c:	48 89 e5             	mov    %rsp,%rbp
    280f:	48 c7 44 24 02 00 00 	movq   $0x0,0x2(%rsp)
    2816:	00 00 
    2818:	c7 45 0a 00 00 00 00 	movl   $0x0,0xa(%rbp)
    281f:	66 c7 45 0e 00 00    	movw   $0x0,0xe(%rbp)
    2825:	66 c7 04 24 02 00    	movw   $0x2,(%rsp)
    282b:	48 63 50 14          	movslq 0x14(%rax),%rdx
    282f:	48 8b 40 18          	mov    0x18(%rax),%rax
    2833:	48 8d 7d 04          	lea    0x4(%rbp),%rdi
    2837:	b9 0c 00 00 00       	mov    $0xc,%ecx
    283c:	48 8b 30             	mov    (%rax),%rsi
    283f:	e8 7c e7 ff ff       	callq  fc0 <__memmove_chk@plt>
    2844:	66 c7 44 24 02 52 dc 	movw   $0xdc52,0x2(%rsp)
    284b:	ba 10 00 00 00       	mov    $0x10,%edx
    2850:	48 89 ee             	mov    %rbp,%rsi
    2853:	89 df                	mov    %ebx,%edi
    2855:	e8 e6 e7 ff ff       	callq  1040 <connect@plt>
    285a:	85 c0                	test   %eax,%eax
    285c:	0f 88 fb 00 00 00    	js     295d <init_driver+0x1cc>
    2862:	89 df                	mov    %ebx,%edi
    2864:	e8 07 e7 ff ff       	callq  f70 <close@plt>
    2869:	66 41 c7 04 24 4f 4b 	movw   $0x4b4f,(%r12)
    2870:	41 c6 44 24 02 00    	movb   $0x0,0x2(%r12)
    2876:	b8 00 00 00 00       	mov    $0x0,%eax
    287b:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
    2880:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
    2887:	00 00 
    2889:	0f 85 06 01 00 00    	jne    2995 <init_driver+0x204>
    288f:	48 83 c4 20          	add    $0x20,%rsp
    2893:	5b                   	pop    %rbx
    2894:	5d                   	pop    %rbp
    2895:	41 5c                	pop    %r12
    2897:	c3                   	retq   
    2898:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    289f:	3a 20 43 
    28a2:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    28a9:	20 75 6e 
    28ac:	49 89 04 24          	mov    %rax,(%r12)
    28b0:	49 89 54 24 08       	mov    %rdx,0x8(%r12)
    28b5:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    28bc:	74 6f 20 
    28bf:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
    28c6:	65 20 73 
    28c9:	49 89 44 24 10       	mov    %rax,0x10(%r12)
    28ce:	49 89 54 24 18       	mov    %rdx,0x18(%r12)
    28d3:	41 c7 44 24 20 6f 63 	movl   $0x656b636f,0x20(%r12)
    28da:	6b 65 
    28dc:	66 41 c7 44 24 24 74 	movw   $0x74,0x24(%r12)
    28e3:	00 
    28e4:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    28e9:	eb 90                	jmp    287b <init_driver+0xea>
    28eb:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
    28f2:	3a 20 44 
    28f5:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
    28fc:	20 75 6e 
    28ff:	49 89 04 24          	mov    %rax,(%r12)
    2903:	49 89 54 24 08       	mov    %rdx,0x8(%r12)
    2908:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    290f:	74 6f 20 
    2912:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
    2919:	76 65 20 
    291c:	49 89 44 24 10       	mov    %rax,0x10(%r12)
    2921:	49 89 54 24 18       	mov    %rdx,0x18(%r12)
    2926:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
    292d:	72 20 61 
    2930:	49 89 44 24 20       	mov    %rax,0x20(%r12)
    2935:	41 c7 44 24 28 64 64 	movl   $0x65726464,0x28(%r12)
    293c:	72 65 
    293e:	66 41 c7 44 24 2c 73 	movw   $0x7373,0x2c(%r12)
    2945:	73 
    2946:	41 c6 44 24 2e 00    	movb   $0x0,0x2e(%r12)
    294c:	89 df                	mov    %ebx,%edi
    294e:	e8 1d e6 ff ff       	callq  f70 <close@plt>
    2953:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2958:	e9 1e ff ff ff       	jmpq   287b <init_driver+0xea>
    295d:	4c 8d 05 37 06 00 00 	lea    0x637(%rip),%r8        # 2f9b <array.3416+0x33b>
    2964:	48 8d 0d 55 07 00 00 	lea    0x755(%rip),%rcx        # 30c0 <array.3416+0x460>
    296b:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
    2972:	be 01 00 00 00       	mov    $0x1,%esi
    2977:	4c 89 e7             	mov    %r12,%rdi
    297a:	b8 00 00 00 00       	mov    $0x0,%eax
    297f:	e8 fc e6 ff ff       	callq  1080 <__sprintf_chk@plt>
    2984:	89 df                	mov    %ebx,%edi
    2986:	e8 e5 e5 ff ff       	callq  f70 <close@plt>
    298b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2990:	e9 e6 fe ff ff       	jmpq   287b <init_driver+0xea>
    2995:	e8 b6 e5 ff ff       	callq  f50 <__stack_chk_fail@plt>

000000000000299a <driver_post>:
    299a:	53                   	push   %rbx
    299b:	4c 89 c3             	mov    %r8,%rbx
    299e:	85 c9                	test   %ecx,%ecx
    29a0:	75 17                	jne    29b9 <driver_post+0x1f>
    29a2:	48 85 ff             	test   %rdi,%rdi
    29a5:	74 05                	je     29ac <driver_post+0x12>
    29a7:	80 3f 00             	cmpb   $0x0,(%rdi)
    29aa:	75 33                	jne    29df <driver_post+0x45>
    29ac:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
    29b1:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
    29b5:	89 c8                	mov    %ecx,%eax
    29b7:	5b                   	pop    %rbx
    29b8:	c3                   	retq   
    29b9:	48 8d 35 46 07 00 00 	lea    0x746(%rip),%rsi        # 3106 <array.3416+0x4a6>
    29c0:	bf 01 00 00 00       	mov    $0x1,%edi
    29c5:	b8 00 00 00 00       	mov    $0x0,%eax
    29ca:	e8 31 e6 ff ff       	callq  1000 <__printf_chk@plt>
    29cf:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
    29d4:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
    29d8:	b8 00 00 00 00       	mov    $0x0,%eax
    29dd:	eb d8                	jmp    29b7 <driver_post+0x1d>
    29df:	41 50                	push   %r8
    29e1:	52                   	push   %rdx
    29e2:	4c 8d 0d 34 07 00 00 	lea    0x734(%rip),%r9        # 311d <array.3416+0x4bd>
    29e9:	49 89 f0             	mov    %rsi,%r8
    29ec:	48 89 f9             	mov    %rdi,%rcx
    29ef:	48 8d 15 33 07 00 00 	lea    0x733(%rip),%rdx        # 3129 <array.3416+0x4c9>
    29f6:	be dc 52 00 00       	mov    $0x52dc,%esi
    29fb:	48 8d 3d 99 05 00 00 	lea    0x599(%rip),%rdi        # 2f9b <array.3416+0x33b>
    2a02:	e8 1e f5 ff ff       	callq  1f25 <submitr>
    2a07:	48 83 c4 10          	add    $0x10,%rsp
    2a0b:	eb aa                	jmp    29b7 <driver_post+0x1d>
    2a0d:	0f 1f 00             	nopl   (%rax)

0000000000002a10 <__libc_csu_init>:
    2a10:	41 57                	push   %r15
    2a12:	41 56                	push   %r14
    2a14:	49 89 d7             	mov    %rdx,%r15
    2a17:	41 55                	push   %r13
    2a19:	41 54                	push   %r12
    2a1b:	4c 8d 25 c6 12 20 00 	lea    0x2012c6(%rip),%r12        # 203ce8 <__frame_dummy_init_array_entry>
    2a22:	55                   	push   %rbp
    2a23:	48 8d 2d c6 12 20 00 	lea    0x2012c6(%rip),%rbp        # 203cf0 <__init_array_end>
    2a2a:	53                   	push   %rbx
    2a2b:	41 89 fd             	mov    %edi,%r13d
    2a2e:	49 89 f6             	mov    %rsi,%r14
    2a31:	4c 29 e5             	sub    %r12,%rbp
    2a34:	48 83 ec 08          	sub    $0x8,%rsp
    2a38:	48 c1 fd 03          	sar    $0x3,%rbp
    2a3c:	e8 7f e4 ff ff       	callq  ec0 <_init>
    2a41:	48 85 ed             	test   %rbp,%rbp
    2a44:	74 20                	je     2a66 <__libc_csu_init+0x56>
    2a46:	31 db                	xor    %ebx,%ebx
    2a48:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    2a4f:	00 
    2a50:	4c 89 fa             	mov    %r15,%rdx
    2a53:	4c 89 f6             	mov    %r14,%rsi
    2a56:	44 89 ef             	mov    %r13d,%edi
    2a59:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
    2a5d:	48 83 c3 01          	add    $0x1,%rbx
    2a61:	48 39 dd             	cmp    %rbx,%rbp
    2a64:	75 ea                	jne    2a50 <__libc_csu_init+0x40>
    2a66:	48 83 c4 08          	add    $0x8,%rsp
    2a6a:	5b                   	pop    %rbx
    2a6b:	5d                   	pop    %rbp
    2a6c:	41 5c                	pop    %r12
    2a6e:	41 5d                	pop    %r13
    2a70:	41 5e                	pop    %r14
    2a72:	41 5f                	pop    %r15
    2a74:	c3                   	retq   
    2a75:	90                   	nop
    2a76:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    2a7d:	00 00 00 

0000000000002a80 <__libc_csu_fini>:
    2a80:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000002a84 <_fini>:
    2a84:	48 83 ec 08          	sub    $0x8,%rsp
    2a88:	48 83 c4 08          	add    $0x8,%rsp
    2a8c:	c3                   	retq   
