
simple:     file format elf64-x86-64


Disassembly of section .init:

0000000000001000 <_init>:
    1000:	f3 0f 1e fa          	endbr64 
    1004:	48 83 ec 08          	sub    $0x8,%rsp
    1008:	48 8b 05 e1 2f 00 00 	mov    0x2fe1(%rip),%rax        # 3ff0 <__gmon_start__>
    100f:	48 85 c0             	test   %rax,%rax
    1012:	74 02                	je     1016 <_init+0x16>
    1014:	ff d0                	call   *%rax
    1016:	48 83 c4 08          	add    $0x8,%rsp
    101a:	c3                   	ret    

Disassembly of section .plt:

0000000000001020 <__stack_chk_fail@plt-0x10>:
    1020:	ff 35 e2 2f 00 00    	push   0x2fe2(%rip)        # 4008 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	ff 25 e4 2f 00 00    	jmp    *0x2fe4(%rip)        # 4010 <_GLOBAL_OFFSET_TABLE_+0x10>
    102c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001030 <__stack_chk_fail@plt>:
    1030:	ff 25 e2 2f 00 00    	jmp    *0x2fe2(%rip)        # 4018 <__stack_chk_fail@GLIBC_2.4>
    1036:	68 00 00 00 00       	push   $0x0
    103b:	e9 e0 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001040 <__isoc99_scanf@plt>:
    1040:	ff 25 da 2f 00 00    	jmp    *0x2fda(%rip)        # 4020 <__isoc99_scanf@GLIBC_2.7>
    1046:	68 01 00 00 00       	push   $0x1
    104b:	e9 d0 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001050 <malloc@plt>:
    1050:	ff 25 d2 2f 00 00    	jmp    *0x2fd2(%rip)        # 4028 <malloc@GLIBC_2.2.5>
    1056:	68 02 00 00 00       	push   $0x2
    105b:	e9 c0 ff ff ff       	jmp    1020 <_init+0x20>

Disassembly of section .text:

0000000000001060 <_start>:
    1060:	f3 0f 1e fa          	endbr64 
    1064:	31 ed                	xor    %ebp,%ebp
    1066:	49 89 d1             	mov    %rdx,%r9
    1069:	5e                   	pop    %rsi
    106a:	48 89 e2             	mov    %rsp,%rdx
    106d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    1071:	50                   	push   %rax
    1072:	54                   	push   %rsp
    1073:	4c 8d 05 e6 02 00 00 	lea    0x2e6(%rip),%r8        # 1360 <__libc_csu_fini>
    107a:	48 8d 0d 6f 02 00 00 	lea    0x26f(%rip),%rcx        # 12f0 <__libc_csu_init>
    1081:	48 8d 3d e0 01 00 00 	lea    0x1e0(%rip),%rdi        # 1268 <main>
    1088:	ff 15 5a 2f 00 00    	call   *0x2f5a(%rip)        # 3fe8 <__libc_start_main@GLIBC_2.2.5>
    108e:	f4                   	hlt    
    108f:	90                   	nop

0000000000001090 <deregister_tm_clones>:
    1090:	48 8d 3d a9 2f 00 00 	lea    0x2fa9(%rip),%rdi        # 4040 <__TMC_END__>
    1097:	48 8d 05 a2 2f 00 00 	lea    0x2fa2(%rip),%rax        # 4040 <__TMC_END__>
    109e:	48 39 f8             	cmp    %rdi,%rax
    10a1:	74 15                	je     10b8 <deregister_tm_clones+0x28>
    10a3:	48 8b 05 36 2f 00 00 	mov    0x2f36(%rip),%rax        # 3fe0 <_ITM_deregisterTMCloneTable>
    10aa:	48 85 c0             	test   %rax,%rax
    10ad:	74 09                	je     10b8 <deregister_tm_clones+0x28>
    10af:	ff e0                	jmp    *%rax
    10b1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    10b8:	c3                   	ret    
    10b9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000010c0 <register_tm_clones>:
    10c0:	48 8d 3d 79 2f 00 00 	lea    0x2f79(%rip),%rdi        # 4040 <__TMC_END__>
    10c7:	48 8d 35 72 2f 00 00 	lea    0x2f72(%rip),%rsi        # 4040 <__TMC_END__>
    10ce:	48 29 fe             	sub    %rdi,%rsi
    10d1:	48 89 f0             	mov    %rsi,%rax
    10d4:	48 c1 ee 3f          	shr    $0x3f,%rsi
    10d8:	48 c1 f8 03          	sar    $0x3,%rax
    10dc:	48 01 c6             	add    %rax,%rsi
    10df:	48 d1 fe             	sar    %rsi
    10e2:	74 14                	je     10f8 <register_tm_clones+0x38>
    10e4:	48 8b 05 0d 2f 00 00 	mov    0x2f0d(%rip),%rax        # 3ff8 <_ITM_registerTMCloneTable>
    10eb:	48 85 c0             	test   %rax,%rax
    10ee:	74 08                	je     10f8 <register_tm_clones+0x38>
    10f0:	ff e0                	jmp    *%rax
    10f2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    10f8:	c3                   	ret    
    10f9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001100 <__do_global_dtors_aux>:
    1100:	f3 0f 1e fa          	endbr64 
    1104:	80 3d 35 2f 00 00 00 	cmpb   $0x0,0x2f35(%rip)        # 4040 <__TMC_END__>
    110b:	75 33                	jne    1140 <__do_global_dtors_aux+0x40>
    110d:	55                   	push   %rbp
    110e:	48 83 3d c2 2e 00 00 	cmpq   $0x0,0x2ec2(%rip)        # 3fd8 <__cxa_finalize@GLIBC_2.2.5>
    1115:	00 
    1116:	48 89 e5             	mov    %rsp,%rbp
    1119:	74 0d                	je     1128 <__do_global_dtors_aux+0x28>
    111b:	48 8b 3d 16 2f 00 00 	mov    0x2f16(%rip),%rdi        # 4038 <__dso_handle>
    1122:	ff 15 b0 2e 00 00    	call   *0x2eb0(%rip)        # 3fd8 <__cxa_finalize@GLIBC_2.2.5>
    1128:	e8 63 ff ff ff       	call   1090 <deregister_tm_clones>
    112d:	c6 05 0c 2f 00 00 01 	movb   $0x1,0x2f0c(%rip)        # 4040 <__TMC_END__>
    1134:	5d                   	pop    %rbp
    1135:	c3                   	ret    
    1136:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    113d:	00 00 00 
    1140:	c3                   	ret    
    1141:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    1148:	00 00 00 00 
    114c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001150 <frame_dummy>:
    1150:	f3 0f 1e fa          	endbr64 
    1154:	e9 67 ff ff ff       	jmp    10c0 <register_tm_clones>

0000000000001159 <_Z5mergePiS_ii>:
    1159:	41 89 c8             	mov    %ecx,%r8d
    115c:	89 c8                	mov    %ecx,%eax
    115e:	29 d0                	sub    %edx,%eax
    1160:	41 89 c1             	mov    %eax,%r9d
    1163:	41 c1 e9 1f          	shr    $0x1f,%r9d
    1167:	41 01 c1             	add    %eax,%r9d
    116a:	41 d1 f9             	sar    %r9d
    116d:	41 01 d1             	add    %edx,%r9d
    1170:	41 8d 49 01          	lea    0x1(%r9),%ecx
    1174:	89 d0                	mov    %edx,%eax
    1176:	eb 0e                	jmp    1186 <_Z5mergePiS_ii+0x2d>
    1178:	4c 63 d0             	movslq %eax,%r10
    117b:	46 8b 1c 97          	mov    (%rdi,%r10,4),%r11d
    117f:	46 89 1c 96          	mov    %r11d,(%rsi,%r10,4)
    1183:	83 c0 01             	add    $0x1,%eax
    1186:	44 39 c0             	cmp    %r8d,%eax
    1189:	7e ed                	jle    1178 <_Z5mergePiS_ii+0x1f>
    118b:	89 d0                	mov    %edx,%eax
    118d:	eb 0d                	jmp    119c <_Z5mergePiS_ii+0x43>
    118f:	83 c1 01             	add    $0x1,%ecx
    1192:	4c 63 d8             	movslq %eax,%r11
    1195:	46 89 14 9f          	mov    %r10d,(%rdi,%r11,4)
    1199:	8d 40 01             	lea    0x1(%rax),%eax
    119c:	44 39 ca             	cmp    %r9d,%edx
    119f:	41 0f 9e c2          	setle  %r10b
    11a3:	44 39 c1             	cmp    %r8d,%ecx
    11a6:	41 0f 9e c3          	setle  %r11b
    11aa:	45 84 d2             	test   %r10b,%r10b
    11ad:	74 3b                	je     11ea <_Z5mergePiS_ii+0x91>
    11af:	45 84 db             	test   %r11b,%r11b
    11b2:	74 36                	je     11ea <_Z5mergePiS_ii+0x91>
    11b4:	4c 63 d2             	movslq %edx,%r10
    11b7:	46 8b 1c 96          	mov    (%rsi,%r10,4),%r11d
    11bb:	4c 63 d1             	movslq %ecx,%r10
    11be:	46 8b 14 96          	mov    (%rsi,%r10,4),%r10d
    11c2:	45 39 d3             	cmp    %r10d,%r11d
    11c5:	7f c8                	jg     118f <_Z5mergePiS_ii+0x36>
    11c7:	83 c2 01             	add    $0x1,%edx
    11ca:	4c 63 d0             	movslq %eax,%r10
    11cd:	46 89 1c 97          	mov    %r11d,(%rdi,%r10,4)
    11d1:	8d 40 01             	lea    0x1(%rax),%eax
    11d4:	eb c6                	jmp    119c <_Z5mergePiS_ii+0x43>
    11d6:	4c 63 d2             	movslq %edx,%r10
    11d9:	46 8b 1c 96          	mov    (%rsi,%r10,4),%r11d
    11dd:	4c 63 d0             	movslq %eax,%r10
    11e0:	46 89 1c 97          	mov    %r11d,(%rdi,%r10,4)
    11e4:	8d 40 01             	lea    0x1(%rax),%eax
    11e7:	8d 52 01             	lea    0x1(%rdx),%edx
    11ea:	44 39 ca             	cmp    %r9d,%edx
    11ed:	7e e7                	jle    11d6 <_Z5mergePiS_ii+0x7d>
    11ef:	eb 14                	jmp    1205 <_Z5mergePiS_ii+0xac>
    11f1:	48 63 d1             	movslq %ecx,%rdx
    11f4:	44 8b 0c 96          	mov    (%rsi,%rdx,4),%r9d
    11f8:	48 63 d0             	movslq %eax,%rdx
    11fb:	44 89 0c 97          	mov    %r9d,(%rdi,%rdx,4)
    11ff:	8d 40 01             	lea    0x1(%rax),%eax
    1202:	8d 49 01             	lea    0x1(%rcx),%ecx
    1205:	44 39 c1             	cmp    %r8d,%ecx
    1208:	7e e7                	jle    11f1 <_Z5mergePiS_ii+0x98>
    120a:	c3                   	ret    

000000000000120b <_Z9mergeSortPiS_ii>:
    120b:	39 ca                	cmp    %ecx,%edx
    120d:	7c 01                	jl     1210 <_Z9mergeSortPiS_ii+0x5>
    120f:	c3                   	ret    
    1210:	41 56                	push   %r14
    1212:	41 55                	push   %r13
    1214:	41 54                	push   %r12
    1216:	55                   	push   %rbp
    1217:	53                   	push   %rbx
    1218:	49 89 fd             	mov    %rdi,%r13
    121b:	49 89 f6             	mov    %rsi,%r14
    121e:	89 d3                	mov    %edx,%ebx
    1220:	89 cd                	mov    %ecx,%ebp
    1222:	89 c8                	mov    %ecx,%eax
    1224:	29 d0                	sub    %edx,%eax
    1226:	41 89 c4             	mov    %eax,%r12d
    1229:	41 c1 ec 1f          	shr    $0x1f,%r12d
    122d:	41 01 c4             	add    %eax,%r12d
    1230:	41 d1 fc             	sar    %r12d
    1233:	41 01 d4             	add    %edx,%r12d
    1236:	44 89 e1             	mov    %r12d,%ecx
    1239:	e8 cd ff ff ff       	call   120b <_Z9mergeSortPiS_ii>
    123e:	41 8d 54 24 01       	lea    0x1(%r12),%edx
    1243:	89 e9                	mov    %ebp,%ecx
    1245:	4c 89 f6             	mov    %r14,%rsi
    1248:	4c 89 ef             	mov    %r13,%rdi
    124b:	e8 bb ff ff ff       	call   120b <_Z9mergeSortPiS_ii>
    1250:	89 e9                	mov    %ebp,%ecx
    1252:	89 da                	mov    %ebx,%edx
    1254:	4c 89 f6             	mov    %r14,%rsi
    1257:	4c 89 ef             	mov    %r13,%rdi
    125a:	e8 fa fe ff ff       	call   1159 <_Z5mergePiS_ii>
    125f:	5b                   	pop    %rbx
    1260:	5d                   	pop    %rbp
    1261:	41 5c                	pop    %r12
    1263:	41 5d                	pop    %r13
    1265:	41 5e                	pop    %r14
    1267:	c3                   	ret    

0000000000001268 <main>:
    1268:	55                   	push   %rbp
    1269:	53                   	push   %rbx
    126a:	48 83 ec 18          	sub    $0x18,%rsp
    126e:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1275:	00 00 
    1277:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    127c:	31 c0                	xor    %eax,%eax
    127e:	48 8d 74 24 04       	lea    0x4(%rsp),%rsi
    1283:	48 8d 3d 7a 0d 00 00 	lea    0xd7a(%rip),%rdi        # 2004 <_IO_stdin_used+0x4>
    128a:	e8 b1 fd ff ff       	call   1040 <__isoc99_scanf@plt>
    128f:	48 63 7c 24 04       	movslq 0x4(%rsp),%rdi
    1294:	48 c1 e7 02          	shl    $0x2,%rdi
    1298:	e8 b3 fd ff ff       	call   1050 <malloc@plt>
    129d:	48 89 c5             	mov    %rax,%rbp
    12a0:	bb 00 00 00 00       	mov    $0x0,%ebx
    12a5:	eb 1c                	jmp    12c3 <main+0x5b>
    12a7:	48 63 c3             	movslq %ebx,%rax
    12aa:	48 8d 74 85 00       	lea    0x0(%rbp,%rax,4),%rsi
    12af:	48 8d 3d 4e 0d 00 00 	lea    0xd4e(%rip),%rdi        # 2004 <_IO_stdin_used+0x4>
    12b6:	b8 00 00 00 00       	mov    $0x0,%eax
    12bb:	e8 80 fd ff ff       	call   1040 <__isoc99_scanf@plt>
    12c0:	83 c3 01             	add    $0x1,%ebx
    12c3:	39 5c 24 04          	cmp    %ebx,0x4(%rsp)
    12c7:	75 de                	jne    12a7 <main+0x3f>
    12c9:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    12ce:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    12d5:	00 00 
    12d7:	75 0c                	jne    12e5 <main+0x7d>
    12d9:	b8 00 00 00 00       	mov    $0x0,%eax
    12de:	48 83 c4 18          	add    $0x18,%rsp
    12e2:	5b                   	pop    %rbx
    12e3:	5d                   	pop    %rbp
    12e4:	c3                   	ret    
    12e5:	e8 46 fd ff ff       	call   1030 <__stack_chk_fail@plt>
    12ea:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000000012f0 <__libc_csu_init>:
    12f0:	f3 0f 1e fa          	endbr64 
    12f4:	41 57                	push   %r15
    12f6:	4c 8d 3d bb 2a 00 00 	lea    0x2abb(%rip),%r15        # 3db8 <__frame_dummy_init_array_entry>
    12fd:	41 56                	push   %r14
    12ff:	49 89 d6             	mov    %rdx,%r14
    1302:	41 55                	push   %r13
    1304:	49 89 f5             	mov    %rsi,%r13
    1307:	41 54                	push   %r12
    1309:	41 89 fc             	mov    %edi,%r12d
    130c:	55                   	push   %rbp
    130d:	48 8d 2d ac 2a 00 00 	lea    0x2aac(%rip),%rbp        # 3dc0 <__do_global_dtors_aux_fini_array_entry>
    1314:	53                   	push   %rbx
    1315:	4c 29 fd             	sub    %r15,%rbp
    1318:	48 83 ec 08          	sub    $0x8,%rsp
    131c:	e8 df fc ff ff       	call   1000 <_init>
    1321:	48 c1 fd 03          	sar    $0x3,%rbp
    1325:	74 1f                	je     1346 <__libc_csu_init+0x56>
    1327:	31 db                	xor    %ebx,%ebx
    1329:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1330:	4c 89 f2             	mov    %r14,%rdx
    1333:	4c 89 ee             	mov    %r13,%rsi
    1336:	44 89 e7             	mov    %r12d,%edi
    1339:	41 ff 14 df          	call   *(%r15,%rbx,8)
    133d:	48 83 c3 01          	add    $0x1,%rbx
    1341:	48 39 dd             	cmp    %rbx,%rbp
    1344:	75 ea                	jne    1330 <__libc_csu_init+0x40>
    1346:	48 83 c4 08          	add    $0x8,%rsp
    134a:	5b                   	pop    %rbx
    134b:	5d                   	pop    %rbp
    134c:	41 5c                	pop    %r12
    134e:	41 5d                	pop    %r13
    1350:	41 5e                	pop    %r14
    1352:	41 5f                	pop    %r15
    1354:	c3                   	ret    
    1355:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    135c:	00 00 00 00 

0000000000001360 <__libc_csu_fini>:
    1360:	f3 0f 1e fa          	endbr64 
    1364:	c3                   	ret    

Disassembly of section .fini:

0000000000001368 <_fini>:
    1368:	f3 0f 1e fa          	endbr64 
    136c:	48 83 ec 08          	sub    $0x8,%rsp
    1370:	48 83 c4 08          	add    $0x8,%rsp
    1374:	c3                   	ret    
