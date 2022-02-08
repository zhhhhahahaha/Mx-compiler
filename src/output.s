	.text

	.globl  globalinit
	.p2align  2
globalinit:
	addi  sp, sp, -56
	sw  ra, 52(sp)
	sw  s0, 48(sp)
	addi  s0, sp, 56
.globalinitpara:
.globalinit0:
	la  ra, .@count
	lw  ra, 0(ra)
.globalinitexit:
	lw  a0, -12(s0)
	lw  ra, 52(sp)
	lw  s0, 48(sp)
	addi  sp, sp, 56
	ret

	.globl  getcount
	.p2align  2
getcount:
	addi  sp, sp, -60
	sw  ra, 56(sp)
	sw  s0, 52(sp)
	sw  s1, 44(sp)
	sw  s2, 40(sp)
	sw  s3, 36(sp)
	sw  s4, 32(sp)
	sw  s5, 28(sp)
	sw  s6, 24(sp)
	sw  s7, 20(sp)
	sw  s8, 16(sp)
	sw  s9, 12(sp)
	sw  s10, 8(sp)
	sw  s11, 4(sp)
	addi  s0, sp, 60
.getcountpara:
	addi  ra, s0, -60
.getcount0:
	sw  a0, 0(ra)
	lw  t0, 0(ra)
	addi  t0, t0, 4
	lw  t1, 0(t0)
	addi  t0, zero, 1
	add  t0, t1, t0
	lw  ra, 0(ra)
	addi  ra, ra, 4
	sw  t0, 0(ra)
	sw  t0, -12(s0)
	j  .getcountexit
.getcountexit:
	lw  a0, -12(s0)
	lw  ra, 56(sp)
	lw  s0, 52(sp)
	lw  s1, 44(sp)
	lw  s2, 40(sp)
	lw  s3, 36(sp)
	lw  s4, 32(sp)
	lw  s5, 28(sp)
	lw  s6, 24(sp)
	lw  s7, 20(sp)
	lw  s8, 16(sp)
	lw  s9, 12(sp)
	lw  s10, 8(sp)
	lw  s11, 4(sp)
	addi  sp, sp, 60
	ret

	.globl  main
	.p2align  2
main:
	li  t0, -2060
	add  sp, sp, t0
	li  t0, 2056
	add  t0, t0, sp
	sw  ra, 0(t0)
	li  t0, 2052
	add  t0, t0, sp
	sw  s0, 0(t0)
	li  t0, 2060
	add  s0, sp, t0
.mainpara:
	call  globalinit
	addi  ra, s0, -60
	sw  ra, -1960(s0)
	addi  ra, s0, -64
	sw  ra, -1148(s0)
	addi  ra, s0, -68
	sw  ra, -1572(s0)
	addi  ra, s0, -72
	sw  ra, -1104(s0)
	addi  ra, s0, -76
	sw  ra, -1612(s0)
	addi  ra, s0, -80
	li  t0, -2056
	add  t0, t0, s0
	sw  ra, 0(t0)
	addi  ra, s0, -84
	sw  ra, -1964(s0)
	addi  ra, s0, -88
	sw  ra, -1724(s0)
	addi  ra, s0, -92
	sw  ra, -1972(s0)
	addi  ra, s0, -96
	sw  ra, -1968(s0)
	addi  ra, s0, -100
	sw  ra, -1352(s0)
	addi  ra, s0, -104
	sw  ra, -1888(s0)
	addi  ra, s0, -108
	sw  ra, -1252(s0)
	addi  ra, s0, -112
	sw  ra, -1640(s0)
	addi  ra, s0, -116
	sw  ra, -1824(s0)
	addi  ra, s0, -120
	sw  ra, -1344(s0)
	addi  ra, s0, -124
	sw  ra, -1420(s0)
	addi  ra, s0, -128
	sw  ra, -1768(s0)
	addi  t0, s0, -132
	li  ra, -2052
	add  ra, ra, s0
	sw  t0, 0(ra)
	addi  ra, s0, -136
	sw  ra, -1668(s0)
	addi  ra, s0, -140
	sw  ra, -1808(s0)
	addi  ra, s0, -144
	sw  ra, -1388(s0)
	addi  s2, s0, -148
	addi  ra, s0, -152
	sw  ra, -1956(s0)
	addi  ra, s0, -156
	sw  ra, -1544(s0)
	addi  ra, s0, -160
	sw  ra, -1260(s0)
	addi  ra, s0, -164
	sw  ra, -1736(s0)
	addi  ra, s0, -168
	sw  ra, -1684(s0)
	addi  ra, s0, -172
	sw  ra, -1444(s0)
	addi  ra, s0, -176
	sw  ra, -1908(s0)
	addi  ra, s0, -180
	sw  ra, -1176(s0)
	addi  ra, s0, -184
	sw  ra, -1984(s0)
	addi  ra, s0, -188
	sw  ra, -1132(s0)
	addi  ra, s0, -192
	sw  ra, -1580(s0)
	addi  s10, s0, -196
	addi  s1, s0, -200
	addi  ra, s0, -204
	sw  ra, -1732(s0)
	addi  ra, s0, -208
	sw  ra, -1128(s0)
	addi  ra, s0, -212
	sw  ra, -1588(s0)
	addi  ra, s0, -216
	sw  ra, -1836(s0)
	addi  s11, s0, -220
	addi  ra, s0, -224
	sw  ra, -1716(s0)
	addi  ra, s0, -228
	sw  ra, -1472(s0)
	addi  ra, s0, -232
	sw  ra, -1896(s0)
	addi  ra, s0, -236
	sw  ra, -1492(s0)
	addi  ra, s0, -240
	sw  ra, -1088(s0)
	addi  ra, s0, -244
	sw  ra, -1900(s0)
	addi  ra, s0, -248
	sw  ra, -1324(s0)
	addi  ra, s0, -252
	sw  ra, -1740(s0)
	addi  ra, s0, -256
	sw  ra, -1220(s0)
	addi  ra, s0, -260
	sw  ra, -1428(s0)
	addi  ra, s0, -264
	sw  ra, -1628(s0)
	addi  ra, s0, -268
	sw  ra, -1280(s0)
	addi  ra, s0, -272
	sw  ra, -1860(s0)
	addi  ra, s0, -276
	sw  ra, -1268(s0)
	addi  ra, s0, -280
	sw  ra, -1652(s0)
	addi  s3, s0, -284
	addi  ra, s0, -288
	sw  ra, -1748(s0)
	addi  t0, s0, -292
	li  ra, -2048
	add  ra, ra, s0
	sw  t0, 0(ra)
	addi  s9, s0, -296
	addi  ra, s0, -300
	sw  ra, -1476(s0)
	addi  ra, s0, -304
	sw  ra, -2004(s0)
	addi  ra, s0, -308
	sw  ra, -1440(s0)
	addi  ra, s0, -312
	sw  ra, -1292(s0)
	addi  ra, s0, -316
	sw  ra, -1840(s0)
	addi  ra, s0, -320
	sw  ra, -1832(s0)
	addi  ra, s0, -324
	sw  ra, -1616(s0)
	addi  ra, s0, -328
	sw  ra, -1560(s0)
	addi  ra, s0, -332
	sw  ra, -1996(s0)
	addi  ra, s0, -336
	sw  ra, -2044(s0)
	addi  ra, s0, -340
	sw  ra, -1204(s0)
	addi  ra, s0, -344
	sw  ra, -1432(s0)
	addi  s7, s0, -348
	addi  ra, s0, -352
	sw  ra, -1500(s0)
	addi  ra, s0, -356
	sw  ra, -1384(s0)
	addi  ra, s0, -360
	sw  ra, -1456(s0)
	addi  ra, s0, -364
	sw  ra, -1788(s0)
	addi  ra, s0, -368
	sw  ra, -2028(s0)
	addi  ra, s0, -372
	sw  ra, -1156(s0)
	addi  ra, s0, -376
	sw  ra, -1108(s0)
	addi  ra, s0, -380
	sw  ra, -2020(s0)
	addi  ra, s0, -384
	sw  ra, -1680(s0)
	addi  ra, s0, -388
	sw  ra, -1856(s0)
	addi  ra, s0, -392
	sw  ra, -1304(s0)
	addi  ra, s0, -396
	sw  ra, -1992(s0)
	addi  ra, s0, -400
	sw  ra, -1656(s0)
	addi  ra, s0, -404
	sw  ra, -1688(s0)
	addi  ra, s0, -408
	sw  ra, -1120(s0)
	addi  ra, s0, -412
	sw  ra, -1288(s0)
	addi  ra, s0, -416
	sw  ra, -1340(s0)
	addi  ra, s0, -420
	sw  ra, -1504(s0)
	addi  ra, s0, -424
	sw  ra, -1308(s0)
	addi  ra, s0, -428
	sw  ra, -1852(s0)
	addi  ra, s0, -432
	sw  ra, -1664(s0)
	addi  ra, s0, -436
	sw  ra, -1632(s0)
	addi  ra, s0, -440
	sw  ra, -1188(s0)
	addi  ra, s0, -444
	sw  ra, -1276(s0)
	addi  ra, s0, -448
	sw  ra, -1872(s0)
	addi  ra, s0, -452
	sw  ra, -1812(s0)
	addi  ra, s0, -456
	sw  ra, -1460(s0)
	addi  ra, s0, -460
	sw  ra, -1392(s0)
	addi  ra, s0, -464
	sw  ra, -1312(s0)
	addi  ra, s0, -468
	sw  ra, -1192(s0)
	addi  ra, s0, -472
	sw  ra, -1200(s0)
	addi  ra, s0, -476
	sw  ra, -1480(s0)
	addi  ra, s0, -480
	sw  ra, -1936(s0)
	addi  ra, s0, -484
	sw  ra, -1380(s0)
	addi  ra, s0, -488
	sw  ra, -1776(s0)
	addi  ra, s0, -492
	sw  ra, -1300(s0)
	addi  ra, s0, -496
	sw  ra, -1820(s0)
	addi  ra, s0, -500
	sw  ra, -1232(s0)
	addi  ra, s0, -504
	sw  ra, -2024(s0)
	addi  ra, s0, -508
	sw  ra, -1924(s0)
	addi  ra, s0, -512
	sw  ra, -1244(s0)
	addi  s5, s0, -516
	addi  ra, s0, -520
	sw  ra, -1272(s0)
	addi  ra, s0, -524
	sw  ra, -1596(s0)
	addi  ra, s0, -528
	sw  ra, -1828(s0)
	addi  ra, s0, -532
	sw  ra, -1604(s0)
	addi  ra, s0, -536
	sw  ra, -1772(s0)
	addi  s6, s0, -540
	addi  ra, s0, -544
	sw  ra, -1704(s0)
	addi  ra, s0, -548
	sw  ra, -1644(s0)
	addi  ra, s0, -552
	sw  ra, -1332(s0)
	addi  ra, s0, -556
	sw  ra, -1528(s0)
	addi  ra, s0, -560
	sw  ra, -1676(s0)
	addi  ra, s0, -564
	sw  ra, -1336(s0)
	addi  ra, s0, -568
	sw  ra, -1248(s0)
	addi  ra, s0, -572
	sw  ra, -1348(s0)
	addi  ra, s0, -576
	sw  ra, -1116(s0)
	addi  ra, s0, -580
	sw  ra, -1720(s0)
	addi  ra, s0, -584
	sw  ra, -1396(s0)
	addi  ra, s0, -588
	sw  ra, -1236(s0)
	addi  ra, s0, -592
	sw  ra, -1084(s0)
	addi  ra, s0, -596
	sw  ra, -1692(s0)
	addi  ra, s0, -600
	sw  ra, -1228(s0)
	addi  ra, s0, -604
	sw  ra, -1976(s0)
	addi  ra, s0, -608
	sw  ra, -1764(s0)
	addi  ra, s0, -612
	sw  ra, -1552(s0)
	addi  ra, s0, -616
	sw  ra, -1212(s0)
	addi  ra, s0, -620
	sw  ra, -1140(s0)
	addi  ra, s0, -624
	sw  ra, -2036(s0)
	addi  ra, s0, -628
	sw  ra, -1700(s0)
	addi  ra, s0, -632
	sw  ra, -1136(s0)
	addi  ra, s0, -636
	sw  ra, -1980(s0)
	addi  ra, s0, -640
	sw  ra, -1168(s0)
	addi  ra, s0, -644
	sw  ra, -1092(s0)
	addi  ra, s0, -648
	sw  ra, -1932(s0)
	addi  ra, s0, -652
	sw  ra, -1172(s0)
	addi  ra, s0, -656
	sw  ra, -1284(s0)
	addi  ra, s0, -660
	sw  ra, -1756(s0)
	addi  ra, s0, -664
	sw  ra, -1424(s0)
	addi  ra, s0, -668
	sw  ra, -1368(s0)
	addi  ra, s0, -672
	sw  ra, -1376(s0)
	addi  ra, s0, -676
	sw  ra, -1416(s0)
	addi  ra, s0, -680
	sw  ra, -1624(s0)
	addi  ra, s0, -684
	sw  ra, -1620(s0)
	addi  ra, s0, -688
	sw  ra, -1584(s0)
	addi  ra, s0, -692
	sw  ra, -1240(s0)
	addi  ra, s0, -696
	sw  ra, -1672(s0)
	addi  ra, s0, -700
	sw  ra, -1760(s0)
	addi  ra, s0, -704
	sw  ra, -1264(s0)
	addi  ra, s0, -708
	sw  ra, -1320(s0)
	addi  ra, s0, -712
	sw  ra, -1372(s0)
	addi  s4, s0, -716
	addi  ra, s0, -720
	sw  ra, -1876(s0)
	addi  ra, s0, -724
	sw  ra, -2012(s0)
	addi  ra, s0, -728
	sw  ra, -1744(s0)
	addi  ra, s0, -732
	sw  ra, -1576(s0)
	addi  ra, s0, -736
	sw  ra, -1512(s0)
	addi  ra, s0, -740
	sw  ra, -1904(s0)
	addi  ra, s0, -744
	sw  ra, -1920(s0)
	addi  ra, s0, -748
	sw  ra, -1464(s0)
	addi  ra, s0, -752
	sw  ra, -1152(s0)
	addi  ra, s0, -756
	sw  ra, -1800(s0)
	addi  ra, s0, -760
	sw  ra, -1520(s0)
	addi  ra, s0, -764
	sw  ra, -1948(s0)
	addi  ra, s0, -768
	sw  ra, -1196(s0)
	addi  ra, s0, -772
	sw  ra, -1796(s0)
	addi  ra, s0, -776
	sw  ra, -1548(s0)
	addi  ra, s0, -780
	sw  ra, -1868(s0)
	addi  ra, s0, -784
	sw  ra, -1728(s0)
	addi  ra, s0, -788
	sw  ra, -1608(s0)
	addi  ra, s0, -792
	sw  ra, -1448(s0)
	addi  ra, s0, -796
	sw  ra, -1356(s0)
	addi  ra, s0, -800
	sw  ra, -1844(s0)
	addi  ra, s0, -804
	sw  ra, -1516(s0)
	addi  ra, s0, -808
	sw  ra, -1912(s0)
	addi  ra, s0, -812
	sw  ra, -1916(s0)
	addi  ra, s0, -816
	sw  ra, -1780(s0)
	addi  ra, s0, -820
	sw  ra, -1600(s0)
	addi  ra, s0, -824
	sw  ra, -2032(s0)
	addi  ra, s0, -828
	sw  ra, -1752(s0)
	addi  ra, s0, -832
	sw  ra, -1988(s0)
	addi  ra, s0, -836
	sw  ra, -1488(s0)
	addi  ra, s0, -840
	sw  ra, -1184(s0)
	addi  ra, s0, -844
	sw  ra, -1540(s0)
	addi  ra, s0, -848
	sw  ra, -1408(s0)
	addi  ra, s0, -852
	sw  ra, -1532(s0)
	addi  ra, s0, -856
	sw  ra, -1696(s0)
	addi  ra, s0, -860
	sw  ra, -1468(s0)
	addi  ra, s0, -864
	sw  ra, -1784(s0)
	addi  ra, s0, -868
	sw  ra, -1816(s0)
	addi  ra, s0, -872
	sw  ra, -1224(s0)
	addi  ra, s0, -876
	sw  ra, -1952(s0)
	addi  ra, s0, -880
	sw  ra, -1496(s0)
	addi  ra, s0, -884
	sw  ra, -1216(s0)
	addi  ra, s0, -888
	sw  ra, -1452(s0)
	addi  ra, s0, -892
	sw  ra, -1660(s0)
	addi  ra, s0, -896
	sw  ra, -1100(s0)
	addi  ra, s0, -900
	sw  ra, -1160(s0)
	addi  ra, s0, -904
	sw  ra, -1712(s0)
	addi  ra, s0, -908
	sw  ra, -2016(s0)
	addi  ra, s0, -912
	sw  ra, -1708(s0)
	addi  ra, s0, -916
	sw  ra, -1180(s0)
	addi  s8, s0, -920
	addi  ra, s0, -924
	sw  ra, -1568(s0)
	addi  ra, s0, -928
	sw  ra, -1316(s0)
	addi  ra, s0, -932
	sw  ra, -1256(s0)
	addi  ra, s0, -936
	sw  ra, -1364(s0)
	addi  ra, s0, -940
	sw  ra, -1940(s0)
	addi  ra, s0, -944
	li  t0, -2060
	add  t0, t0, s0
	sw  ra, 0(t0)
	addi  ra, s0, -948
	sw  ra, -1648(s0)
	addi  ra, s0, -952
	sw  ra, -1328(s0)
	addi  ra, s0, -956
	sw  ra, -1296(s0)
	addi  ra, s0, -960
	sw  ra, -2040(s0)
	addi  ra, s0, -964
	sw  ra, -1792(s0)
	addi  ra, s0, -968
	sw  ra, -1400(s0)
	addi  ra, s0, -972
	sw  ra, -1928(s0)
	addi  ra, s0, -976
	sw  ra, -1144(s0)
	addi  ra, s0, -980
	sw  ra, -1508(s0)
	addi  ra, s0, -984
	sw  ra, -1524(s0)
	addi  ra, s0, -988
	sw  ra, -1864(s0)
	addi  ra, s0, -992
	sw  ra, -1208(s0)
	addi  ra, s0, -996
	sw  ra, -1848(s0)
	addi  ra, s0, -1000
	sw  ra, -1564(s0)
	addi  ra, s0, -1004
	sw  ra, -1124(s0)
	addi  ra, s0, -1008
	sw  ra, -1164(s0)
	addi  ra, s0, -1012
	sw  ra, -1592(s0)
	addi  ra, s0, -1016
	sw  ra, -1096(s0)
	addi  ra, s0, -1020
	sw  ra, -1636(s0)
	addi  ra, s0, -1024
	sw  ra, -1804(s0)
	addi  ra, s0, -1028
	sw  ra, -2008(s0)
	addi  ra, s0, -1032
	sw  ra, -1484(s0)
	addi  ra, s0, -1036
	sw  ra, -1360(s0)
	addi  ra, s0, -1040
	sw  ra, -1880(s0)
	addi  ra, s0, -1044
	sw  ra, -1884(s0)
	addi  ra, s0, -1048
	sw  ra, -1536(s0)
	addi  ra, s0, -1052
	sw  ra, -1404(s0)
	addi  ra, s0, -1056
	sw  ra, -1556(s0)
	addi  ra, s0, -1060
	sw  ra, -1112(s0)
	addi  ra, s0, -1064
	sw  ra, -1436(s0)
	addi  ra, s0, -1068
	sw  ra, -1412(s0)
	addi  ra, s0, -1072
	sw  ra, -1944(s0)
	addi  ra, s0, -1076
	sw  ra, -2000(s0)
	addi  ra, s0, -1080
	sw  ra, -1892(s0)
.main0:
	addi  a0, zero, 8
	call  malloc
	addi  ra, zero, 1
	sw  ra, 0(a0)
	la  ra, .@count
	sw  a0, 0(ra)
	la  ra, .@count
	lw  ra, 0(ra)
	addi  t0, ra, 4
	addi  ra, zero, 0
	sw  ra, 0(t0)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1960(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1148(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1572(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1104(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1612(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	li  ra, -2056
	add  ra, s0, ra
	lw  ra, 0(ra)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1964(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1724(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1972(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1968(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1352(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1888(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1252(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1640(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1824(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1344(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1420(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1768(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	li  ra, -2052
	add  ra, s0, ra
	lw  ra, 0(ra)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1668(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1808(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1388(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	sw  a0, 0(s2)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1956(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1544(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1260(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1736(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1684(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1444(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1908(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1176(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1984(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1132(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1580(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	sw  a0, 0(s10)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	sw  a0, 0(s1)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1732(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1128(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1588(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1836(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	sw  a0, 0(s11)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1716(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1472(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1896(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1492(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1088(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1900(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1324(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1740(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1220(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1428(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1628(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1280(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1860(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1268(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1652(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	sw  a0, 0(s3)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1748(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	li  ra, -2048
	add  ra, s0, ra
	lw  ra, 0(ra)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	sw  a0, 0(s9)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1476(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -2004(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1440(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1292(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1840(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1832(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1616(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1560(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1996(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -2044(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1204(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1432(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	sw  a0, 0(s7)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1500(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1384(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1456(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1788(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -2028(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1156(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1108(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -2020(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1680(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1856(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1304(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1992(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1656(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1688(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1120(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1288(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1340(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1504(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1308(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1852(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1664(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1632(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1188(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1276(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1872(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1812(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1460(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1392(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1312(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1192(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1200(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1480(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1936(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1380(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1776(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1300(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1820(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1232(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -2024(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1924(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1244(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	sw  a0, 0(s5)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1272(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1596(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1828(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1604(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1772(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	sw  a0, 0(s6)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1704(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1644(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1332(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1528(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1676(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1336(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1248(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1348(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1116(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1720(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1396(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1236(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1084(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1692(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1228(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1976(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1764(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1552(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1212(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1140(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -2036(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1700(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1136(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1980(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1168(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1092(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1932(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1172(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1284(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1756(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1424(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1368(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1376(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1416(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1624(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1620(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1584(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1240(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1672(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1760(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1264(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1320(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1372(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	sw  a0, 0(s4)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1876(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -2012(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1744(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1576(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1512(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1904(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1920(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1464(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1152(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1800(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1520(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1948(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1196(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1796(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1548(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1868(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1728(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1608(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1448(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1356(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1844(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1516(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1912(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1916(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1780(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1600(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -2032(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1752(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1988(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1488(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1184(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1540(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1408(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1532(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1696(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1468(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1784(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1816(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1224(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1952(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1496(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1216(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1452(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1660(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1100(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1160(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1712(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -2016(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1708(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1180(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	sw  a0, 0(s8)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1568(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1316(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1256(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1364(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1940(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	li  ra, -2060
	add  ra, s0, ra
	lw  ra, 0(ra)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1648(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1328(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1296(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -2040(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1792(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1400(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1928(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1144(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1508(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1524(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1864(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1208(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1848(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1564(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1124(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1164(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1592(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1096(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1636(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1804(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -2008(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1484(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1360(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1880(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1884(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1536(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1404(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1556(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1112(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1436(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1412(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1944(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -2000(s0)
	sw  a0, 0(ra)
	la  ra, .@count
	lw  a0, 0(ra)
	call  getcount
	lw  ra, -1892(s0)
	sw  a0, 0(ra)
	lw  ra, -1960(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str1
	call  string_add
	call  print
	lw  ra, -1148(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str2
	call  string_add
	call  print
	lw  ra, -1572(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str3
	call  string_add
	call  print
	lw  ra, -1104(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str4
	call  string_add
	call  print
	lw  ra, -1612(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str5
	call  string_add
	call  print
	li  ra, -2056
	add  ra, s0, ra
	lw  ra, 0(ra)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str6
	call  string_add
	call  print
	lw  ra, -1964(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str7
	call  string_add
	call  print
	lw  ra, -1724(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str8
	call  string_add
	call  print
	lw  ra, -1972(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str9
	call  string_add
	call  print
	lw  ra, -1968(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str10
	call  string_add
	call  print
	lw  ra, -1352(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str11
	call  string_add
	call  print
	lw  ra, -1888(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str12
	call  string_add
	call  print
	lw  ra, -1252(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str13
	call  string_add
	call  print
	lw  ra, -1640(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str14
	call  string_add
	call  print
	lw  ra, -1824(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str15
	call  string_add
	call  print
	lw  ra, -1344(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str16
	call  string_add
	call  print
	lw  ra, -1420(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str17
	call  string_add
	call  print
	lw  ra, -1768(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str18
	call  string_add
	call  print
	li  ra, -2052
	add  ra, s0, ra
	lw  ra, 0(ra)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str19
	call  string_add
	call  print
	lw  ra, -1668(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str20
	call  string_add
	call  print
	lw  ra, -1808(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str21
	call  string_add
	call  print
	lw  ra, -1388(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str22
	call  string_add
	call  print
	lw  a0, 0(s2)
	call  toString
	la  a1, .$str23
	call  string_add
	call  print
	lw  ra, -1956(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str24
	call  string_add
	call  print
	lw  ra, -1544(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str25
	call  string_add
	call  print
	lw  ra, -1260(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str26
	call  string_add
	call  print
	lw  ra, -1736(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str27
	call  string_add
	call  print
	lw  ra, -1684(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str28
	call  string_add
	call  print
	lw  ra, -1444(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str29
	call  string_add
	call  print
	lw  ra, -1908(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str30
	call  string_add
	call  print
	lw  ra, -1176(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str31
	call  string_add
	call  print
	lw  ra, -1984(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str32
	call  string_add
	call  print
	lw  ra, -1132(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str33
	call  string_add
	call  print
	lw  ra, -1580(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str34
	call  string_add
	call  print
	lw  a0, 0(s10)
	call  toString
	la  a1, .$str35
	call  string_add
	call  print
	lw  a0, 0(s1)
	call  toString
	la  a1, .$str36
	call  string_add
	call  print
	lw  ra, -1732(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str37
	call  string_add
	call  print
	lw  ra, -1128(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str38
	call  string_add
	call  print
	lw  ra, -1588(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str39
	call  string_add
	call  print
	lw  ra, -1836(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str40
	call  string_add
	call  print
	lw  a0, 0(s11)
	call  toString
	la  a1, .$str41
	call  string_add
	call  print
	lw  ra, -1716(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str42
	call  string_add
	call  print
	lw  ra, -1472(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str43
	call  string_add
	call  print
	lw  ra, -1896(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str44
	call  string_add
	call  print
	lw  ra, -1492(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str45
	call  string_add
	call  print
	lw  ra, -1088(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str46
	call  string_add
	call  print
	lw  ra, -1900(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str47
	call  string_add
	call  print
	lw  ra, -1324(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str48
	call  string_add
	call  print
	lw  ra, -1740(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str49
	call  string_add
	call  print
	lw  ra, -1220(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str50
	call  string_add
	call  print
	lw  ra, -1428(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str51
	call  string_add
	call  print
	lw  ra, -1628(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str52
	call  string_add
	call  print
	lw  ra, -1280(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str53
	call  string_add
	call  print
	lw  ra, -1860(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str54
	call  string_add
	call  print
	lw  ra, -1268(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str55
	call  string_add
	call  print
	lw  ra, -1652(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str56
	call  string_add
	call  print
	lw  a0, 0(s3)
	call  toString
	la  a1, .$str57
	call  string_add
	call  print
	lw  ra, -1748(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str58
	call  string_add
	call  print
	li  ra, -2048
	add  ra, s0, ra
	lw  ra, 0(ra)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str59
	call  string_add
	call  print
	lw  a0, 0(s9)
	call  toString
	la  a1, .$str60
	call  string_add
	call  print
	lw  ra, -1476(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str61
	call  string_add
	call  print
	lw  ra, -2004(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str62
	call  string_add
	call  print
	lw  ra, -1440(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str63
	call  string_add
	call  print
	lw  ra, -1292(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str64
	call  string_add
	call  print
	lw  ra, -1840(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str65
	call  string_add
	call  print
	lw  ra, -1832(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str66
	call  string_add
	call  print
	lw  ra, -1616(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str67
	call  string_add
	call  print
	lw  ra, -1560(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str68
	call  string_add
	call  print
	lw  ra, -1996(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str69
	call  string_add
	call  print
	lw  ra, -2044(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str70
	call  string_add
	call  print
	lw  ra, -1204(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str71
	call  string_add
	call  print
	lw  ra, -1432(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str72
	call  string_add
	call  print
	lw  a0, 0(s7)
	call  toString
	la  a1, .$str73
	call  string_add
	call  print
	lw  ra, -1500(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str74
	call  string_add
	call  print
	lw  ra, -1384(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str75
	call  string_add
	call  print
	lw  ra, -1456(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str76
	call  string_add
	call  print
	lw  ra, -1788(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str77
	call  string_add
	call  print
	lw  ra, -2028(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str78
	call  string_add
	call  print
	lw  ra, -1156(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str79
	call  string_add
	call  print
	lw  ra, -1108(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str80
	call  string_add
	call  print
	lw  ra, -2020(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str81
	call  string_add
	call  print
	lw  ra, -1680(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str82
	call  string_add
	call  print
	lw  ra, -1856(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str83
	call  string_add
	call  print
	lw  ra, -1304(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str84
	call  string_add
	call  print
	lw  ra, -1992(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str85
	call  string_add
	call  print
	lw  ra, -1656(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str86
	call  string_add
	call  print
	lw  ra, -1688(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str87
	call  string_add
	call  print
	lw  ra, -1120(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str88
	call  string_add
	call  print
	lw  ra, -1288(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str89
	call  string_add
	call  print
	lw  ra, -1340(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str90
	call  string_add
	call  print
	lw  ra, -1504(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str91
	call  string_add
	call  print
	lw  ra, -1308(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str92
	call  string_add
	call  print
	lw  ra, -1852(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str93
	call  string_add
	call  print
	lw  ra, -1664(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str94
	call  string_add
	call  print
	lw  ra, -1632(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str95
	call  string_add
	call  print
	lw  ra, -1188(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str96
	call  string_add
	call  print
	lw  ra, -1276(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str97
	call  string_add
	call  print
	lw  ra, -1872(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str98
	call  string_add
	call  print
	lw  ra, -1812(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str99
	call  string_add
	call  print
	lw  ra, -1460(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str100
	call  string_add
	call  print
	lw  ra, -1392(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str101
	call  string_add
	call  print
	lw  ra, -1312(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str102
	call  string_add
	call  print
	lw  ra, -1192(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str103
	call  string_add
	call  print
	lw  ra, -1200(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str104
	call  string_add
	call  print
	lw  ra, -1480(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str105
	call  string_add
	call  print
	lw  ra, -1936(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str106
	call  string_add
	call  print
	lw  ra, -1380(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str107
	call  string_add
	call  print
	lw  ra, -1776(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str108
	call  string_add
	call  print
	lw  ra, -1300(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str109
	call  string_add
	call  print
	lw  ra, -1820(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str110
	call  string_add
	call  print
	lw  ra, -1232(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str111
	call  string_add
	call  print
	lw  ra, -2024(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str112
	call  string_add
	call  print
	lw  ra, -1924(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str113
	call  string_add
	call  print
	lw  ra, -1244(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str114
	call  string_add
	call  print
	lw  a0, 0(s5)
	call  toString
	la  a1, .$str115
	call  string_add
	call  print
	lw  ra, -1272(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str116
	call  string_add
	call  print
	lw  ra, -1596(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str117
	call  string_add
	call  print
	lw  ra, -1828(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str118
	call  string_add
	call  print
	lw  ra, -1604(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str119
	call  string_add
	call  print
	lw  ra, -1772(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str120
	call  string_add
	call  print
	lw  a0, 0(s6)
	call  toString
	la  a1, .$str121
	call  string_add
	call  print
	lw  ra, -1704(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str122
	call  string_add
	call  print
	lw  ra, -1644(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str123
	call  string_add
	call  print
	lw  ra, -1332(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str124
	call  string_add
	call  print
	lw  ra, -1528(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str125
	call  string_add
	call  print
	lw  ra, -1676(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str126
	call  string_add
	call  print
	lw  ra, -1336(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str127
	call  string_add
	call  print
	lw  ra, -1248(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str128
	call  string_add
	call  print
	lw  ra, -1348(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str129
	call  string_add
	call  print
	lw  ra, -1116(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str130
	call  string_add
	call  print
	lw  ra, -1720(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str131
	call  string_add
	call  print
	lw  ra, -1396(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str132
	call  string_add
	call  print
	lw  ra, -1236(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str133
	call  string_add
	call  print
	lw  ra, -1084(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str134
	call  string_add
	call  print
	lw  ra, -1692(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str135
	call  string_add
	call  print
	lw  ra, -1228(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str136
	call  string_add
	call  print
	lw  ra, -1976(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str137
	call  string_add
	call  print
	lw  ra, -1764(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str138
	call  string_add
	call  print
	lw  ra, -1552(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str139
	call  string_add
	call  print
	lw  ra, -1212(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str140
	call  string_add
	call  print
	lw  ra, -1140(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str141
	call  string_add
	call  print
	lw  ra, -2036(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str142
	call  string_add
	call  print
	lw  ra, -1700(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str143
	call  string_add
	call  print
	lw  ra, -1136(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str144
	call  string_add
	call  print
	lw  ra, -1980(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str145
	call  string_add
	call  print
	lw  ra, -1168(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str146
	call  string_add
	call  print
	lw  ra, -1092(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str147
	call  string_add
	call  print
	lw  ra, -1932(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str148
	call  string_add
	call  print
	lw  ra, -1172(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str149
	call  string_add
	call  print
	lw  ra, -1284(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str150
	call  string_add
	call  print
	lw  ra, -1756(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str151
	call  string_add
	call  print
	lw  ra, -1424(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str152
	call  string_add
	call  print
	lw  ra, -1368(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str153
	call  string_add
	call  print
	lw  ra, -1376(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str154
	call  string_add
	call  print
	lw  ra, -1416(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str155
	call  string_add
	call  print
	lw  ra, -1624(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str156
	call  string_add
	call  print
	lw  ra, -1620(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str157
	call  string_add
	call  print
	lw  ra, -1584(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str158
	call  string_add
	call  print
	lw  ra, -1240(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str159
	call  string_add
	call  print
	lw  ra, -1672(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str160
	call  string_add
	call  print
	lw  ra, -1760(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str161
	call  string_add
	call  print
	lw  ra, -1264(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str162
	call  string_add
	call  print
	lw  ra, -1320(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str163
	call  string_add
	call  print
	lw  ra, -1372(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str164
	call  string_add
	call  print
	lw  a0, 0(s4)
	call  toString
	la  a1, .$str165
	call  string_add
	call  print
	lw  ra, -1876(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str166
	call  string_add
	call  print
	lw  ra, -2012(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str167
	call  string_add
	call  print
	lw  ra, -1744(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str168
	call  string_add
	call  print
	lw  ra, -1576(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str169
	call  string_add
	call  print
	lw  ra, -1512(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str170
	call  string_add
	call  print
	lw  ra, -1904(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str171
	call  string_add
	call  print
	lw  ra, -1920(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str172
	call  string_add
	call  print
	lw  ra, -1464(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str173
	call  string_add
	call  print
	lw  ra, -1152(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str174
	call  string_add
	call  print
	lw  ra, -1800(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str175
	call  string_add
	call  print
	lw  ra, -1520(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str176
	call  string_add
	call  print
	lw  ra, -1948(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str177
	call  string_add
	call  print
	lw  ra, -1196(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str178
	call  string_add
	call  print
	lw  ra, -1796(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str179
	call  string_add
	call  print
	lw  ra, -1548(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str180
	call  string_add
	call  print
	lw  ra, -1868(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str181
	call  string_add
	call  print
	lw  ra, -1728(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str182
	call  string_add
	call  print
	lw  ra, -1608(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str183
	call  string_add
	call  print
	lw  ra, -1448(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str184
	call  string_add
	call  print
	lw  ra, -1356(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str185
	call  string_add
	call  print
	lw  ra, -1844(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str186
	call  string_add
	call  print
	lw  ra, -1516(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str187
	call  string_add
	call  print
	lw  ra, -1912(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str188
	call  string_add
	call  print
	lw  ra, -1916(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str189
	call  string_add
	call  print
	lw  ra, -1780(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str190
	call  string_add
	call  print
	lw  ra, -1600(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str191
	call  string_add
	call  print
	lw  ra, -2032(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str192
	call  string_add
	call  print
	lw  ra, -1752(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str193
	call  string_add
	call  print
	lw  ra, -1988(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str194
	call  string_add
	call  print
	lw  ra, -1488(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str195
	call  string_add
	call  print
	lw  ra, -1184(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str196
	call  string_add
	call  print
	lw  ra, -1540(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str197
	call  string_add
	call  print
	lw  ra, -1408(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str198
	call  string_add
	call  print
	lw  ra, -1532(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str199
	call  string_add
	call  print
	lw  ra, -1696(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str200
	call  string_add
	call  print
	lw  ra, -1468(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str201
	call  string_add
	call  print
	lw  ra, -1784(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str202
	call  string_add
	call  print
	lw  ra, -1816(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str203
	call  string_add
	call  print
	lw  ra, -1224(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str204
	call  string_add
	call  print
	lw  ra, -1952(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str205
	call  string_add
	call  print
	lw  ra, -1496(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str206
	call  string_add
	call  print
	lw  ra, -1216(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str207
	call  string_add
	call  print
	lw  ra, -1452(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str208
	call  string_add
	call  print
	lw  ra, -1660(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str209
	call  string_add
	call  print
	lw  ra, -1100(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str210
	call  string_add
	call  print
	lw  ra, -1160(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str211
	call  string_add
	call  print
	lw  ra, -1712(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str212
	call  string_add
	call  print
	lw  ra, -2016(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str213
	call  string_add
	call  print
	lw  ra, -1708(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str214
	call  string_add
	call  print
	lw  ra, -1180(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str215
	call  string_add
	call  print
	lw  a0, 0(s8)
	call  toString
	la  a1, .$str216
	call  string_add
	call  print
	lw  ra, -1568(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str217
	call  string_add
	call  print
	lw  ra, -1316(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str218
	call  string_add
	call  print
	lw  ra, -1256(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str219
	call  string_add
	call  print
	lw  ra, -1364(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str220
	call  string_add
	call  print
	lw  ra, -1940(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str221
	call  string_add
	call  print
	li  ra, -2060
	add  ra, s0, ra
	lw  ra, 0(ra)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str222
	call  string_add
	call  print
	lw  ra, -1648(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str223
	call  string_add
	call  print
	lw  ra, -1328(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str224
	call  string_add
	call  print
	lw  ra, -1296(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str225
	call  string_add
	call  print
	lw  ra, -2040(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str226
	call  string_add
	call  print
	lw  ra, -1792(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str227
	call  string_add
	call  print
	lw  ra, -1400(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str228
	call  string_add
	call  print
	lw  ra, -1928(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str229
	call  string_add
	call  print
	lw  ra, -1144(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str230
	call  string_add
	call  print
	lw  ra, -1508(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str231
	call  string_add
	call  print
	lw  ra, -1524(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str232
	call  string_add
	call  print
	lw  ra, -1864(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str233
	call  string_add
	call  print
	lw  ra, -1208(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str234
	call  string_add
	call  print
	lw  ra, -1848(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str235
	call  string_add
	call  print
	lw  ra, -1564(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str236
	call  string_add
	call  print
	lw  ra, -1124(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str237
	call  string_add
	call  print
	lw  ra, -1164(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str238
	call  string_add
	call  print
	lw  ra, -1592(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str239
	call  string_add
	call  print
	lw  ra, -1096(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str240
	call  string_add
	call  print
	lw  ra, -1636(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str241
	call  string_add
	call  print
	lw  ra, -1804(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str242
	call  string_add
	call  print
	lw  ra, -2008(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str243
	call  string_add
	call  print
	lw  ra, -1484(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str244
	call  string_add
	call  print
	lw  ra, -1360(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str245
	call  string_add
	call  print
	lw  ra, -1880(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str246
	call  string_add
	call  print
	lw  ra, -1884(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str247
	call  string_add
	call  print
	lw  ra, -1536(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str248
	call  string_add
	call  print
	lw  ra, -1404(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str249
	call  string_add
	call  print
	lw  ra, -1556(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str250
	call  string_add
	call  print
	lw  ra, -1112(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str251
	call  string_add
	call  print
	lw  ra, -1436(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str252
	call  string_add
	call  print
	lw  ra, -1412(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str253
	call  string_add
	call  print
	lw  ra, -1944(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str254
	call  string_add
	call  print
	lw  ra, -2000(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str255
	call  string_add
	call  print
	lw  ra, -1892(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str256
	call  string_add
	call  print
	la  a0, .$str257
	call  println
	lw  ra, -1960(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str258
	call  string_add
	call  print
	lw  ra, -1148(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str259
	call  string_add
	call  print
	lw  ra, -1572(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str260
	call  string_add
	call  print
	lw  ra, -1104(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str261
	call  string_add
	call  print
	lw  ra, -1612(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str262
	call  string_add
	call  print
	li  ra, -2056
	add  ra, s0, ra
	lw  ra, 0(ra)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str263
	call  string_add
	call  print
	lw  ra, -1964(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str264
	call  string_add
	call  print
	lw  ra, -1724(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str265
	call  string_add
	call  print
	lw  ra, -1972(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str266
	call  string_add
	call  print
	lw  ra, -1968(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str267
	call  string_add
	call  print
	lw  ra, -1352(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str268
	call  string_add
	call  print
	lw  ra, -1888(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str269
	call  string_add
	call  print
	lw  ra, -1252(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str270
	call  string_add
	call  print
	lw  ra, -1640(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str271
	call  string_add
	call  print
	lw  ra, -1824(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str272
	call  string_add
	call  print
	lw  ra, -1344(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str273
	call  string_add
	call  print
	lw  ra, -1420(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str274
	call  string_add
	call  print
	lw  ra, -1768(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str275
	call  string_add
	call  print
	li  ra, -2052
	add  ra, s0, ra
	lw  ra, 0(ra)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str276
	call  string_add
	call  print
	lw  ra, -1668(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str277
	call  string_add
	call  print
	lw  ra, -1808(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str278
	call  string_add
	call  print
	lw  ra, -1388(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str279
	call  string_add
	call  print
	lw  a0, 0(s2)
	call  toString
	la  a1, .$str280
	call  string_add
	call  print
	lw  ra, -1956(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str281
	call  string_add
	call  print
	lw  ra, -1544(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str282
	call  string_add
	call  print
	lw  ra, -1260(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str283
	call  string_add
	call  print
	lw  ra, -1736(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str284
	call  string_add
	call  print
	lw  ra, -1684(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str285
	call  string_add
	call  print
	lw  ra, -1444(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str286
	call  string_add
	call  print
	lw  ra, -1908(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str287
	call  string_add
	call  print
	lw  ra, -1176(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str288
	call  string_add
	call  print
	lw  ra, -1984(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str289
	call  string_add
	call  print
	lw  ra, -1132(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str290
	call  string_add
	call  print
	lw  ra, -1580(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str291
	call  string_add
	call  print
	lw  a0, 0(s10)
	call  toString
	la  a1, .$str292
	call  string_add
	call  print
	lw  a0, 0(s1)
	call  toString
	la  a1, .$str293
	call  string_add
	call  print
	lw  ra, -1732(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str294
	call  string_add
	call  print
	lw  ra, -1128(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str295
	call  string_add
	call  print
	lw  ra, -1588(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str296
	call  string_add
	call  print
	lw  ra, -1836(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str297
	call  string_add
	call  print
	lw  a0, 0(s11)
	call  toString
	la  a1, .$str298
	call  string_add
	call  print
	lw  ra, -1716(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str299
	call  string_add
	call  print
	lw  ra, -1472(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str300
	call  string_add
	call  print
	lw  ra, -1896(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str301
	call  string_add
	call  print
	lw  ra, -1492(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str302
	call  string_add
	call  print
	lw  ra, -1088(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str303
	call  string_add
	call  print
	lw  ra, -1900(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str304
	call  string_add
	call  print
	lw  ra, -1324(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str305
	call  string_add
	call  print
	lw  ra, -1740(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str306
	call  string_add
	call  print
	lw  ra, -1220(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str307
	call  string_add
	call  print
	lw  ra, -1428(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str308
	call  string_add
	call  print
	lw  ra, -1628(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str309
	call  string_add
	call  print
	lw  ra, -1280(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str310
	call  string_add
	call  print
	lw  ra, -1860(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str311
	call  string_add
	call  print
	lw  ra, -1268(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str312
	call  string_add
	call  print
	lw  ra, -1652(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str313
	call  string_add
	call  print
	lw  a0, 0(s3)
	call  toString
	la  a1, .$str314
	call  string_add
	call  print
	lw  ra, -1748(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str315
	call  string_add
	call  print
	li  ra, -2048
	add  ra, s0, ra
	lw  ra, 0(ra)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str316
	call  string_add
	call  print
	lw  a0, 0(s9)
	call  toString
	la  a1, .$str317
	call  string_add
	call  print
	lw  ra, -1476(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str318
	call  string_add
	call  print
	lw  ra, -2004(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str319
	call  string_add
	call  print
	lw  ra, -1440(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str320
	call  string_add
	call  print
	lw  ra, -1292(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str321
	call  string_add
	call  print
	lw  ra, -1840(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str322
	call  string_add
	call  print
	lw  ra, -1832(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str323
	call  string_add
	call  print
	lw  ra, -1616(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str324
	call  string_add
	call  print
	lw  ra, -1560(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str325
	call  string_add
	call  print
	lw  ra, -1996(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str326
	call  string_add
	call  print
	lw  ra, -2044(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str327
	call  string_add
	call  print
	lw  ra, -1204(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str328
	call  string_add
	call  print
	lw  ra, -1432(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str329
	call  string_add
	call  print
	lw  a0, 0(s7)
	call  toString
	la  a1, .$str330
	call  string_add
	call  print
	lw  ra, -1500(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str331
	call  string_add
	call  print
	lw  ra, -1384(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str332
	call  string_add
	call  print
	lw  ra, -1456(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str333
	call  string_add
	call  print
	lw  ra, -1788(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str334
	call  string_add
	call  print
	lw  ra, -2028(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str335
	call  string_add
	call  print
	lw  ra, -1156(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str336
	call  string_add
	call  print
	lw  ra, -1108(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str337
	call  string_add
	call  print
	lw  ra, -2020(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str338
	call  string_add
	call  print
	lw  ra, -1680(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str339
	call  string_add
	call  print
	lw  ra, -1856(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str340
	call  string_add
	call  print
	lw  ra, -1304(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str341
	call  string_add
	call  print
	lw  ra, -1992(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str342
	call  string_add
	call  print
	lw  ra, -1656(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str343
	call  string_add
	call  print
	lw  ra, -1688(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str344
	call  string_add
	call  print
	lw  ra, -1120(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str345
	call  string_add
	call  print
	lw  ra, -1288(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str346
	call  string_add
	call  print
	lw  ra, -1340(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str347
	call  string_add
	call  print
	lw  ra, -1504(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str348
	call  string_add
	call  print
	lw  ra, -1308(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str349
	call  string_add
	call  print
	lw  ra, -1852(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str350
	call  string_add
	call  print
	lw  ra, -1664(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str351
	call  string_add
	call  print
	lw  ra, -1632(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str352
	call  string_add
	call  print
	lw  ra, -1188(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str353
	call  string_add
	call  print
	lw  ra, -1276(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str354
	call  string_add
	call  print
	lw  ra, -1872(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str355
	call  string_add
	call  print
	lw  ra, -1812(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str356
	call  string_add
	call  print
	lw  ra, -1460(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str357
	call  string_add
	call  print
	lw  ra, -1392(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str358
	call  string_add
	call  print
	lw  ra, -1312(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str359
	call  string_add
	call  print
	lw  ra, -1192(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str360
	call  string_add
	call  print
	lw  ra, -1200(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str361
	call  string_add
	call  print
	lw  ra, -1480(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str362
	call  string_add
	call  print
	lw  ra, -1936(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str363
	call  string_add
	call  print
	lw  ra, -1380(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str364
	call  string_add
	call  print
	lw  ra, -1776(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str365
	call  string_add
	call  print
	lw  ra, -1300(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str366
	call  string_add
	call  print
	lw  ra, -1820(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str367
	call  string_add
	call  print
	lw  ra, -1232(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str368
	call  string_add
	call  print
	lw  ra, -2024(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str369
	call  string_add
	call  print
	lw  ra, -1924(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str370
	call  string_add
	call  print
	lw  ra, -1244(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str371
	call  string_add
	call  print
	lw  a0, 0(s5)
	call  toString
	la  a1, .$str372
	call  string_add
	call  print
	lw  ra, -1272(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str373
	call  string_add
	call  print
	lw  ra, -1596(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str374
	call  string_add
	call  print
	lw  ra, -1828(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str375
	call  string_add
	call  print
	lw  ra, -1604(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str376
	call  string_add
	call  print
	lw  ra, -1772(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str377
	call  string_add
	call  print
	lw  a0, 0(s6)
	call  toString
	la  a1, .$str378
	call  string_add
	call  print
	lw  ra, -1704(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str379
	call  string_add
	call  print
	lw  ra, -1644(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str380
	call  string_add
	call  print
	lw  ra, -1332(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str381
	call  string_add
	call  print
	lw  ra, -1528(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str382
	call  string_add
	call  print
	lw  ra, -1676(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str383
	call  string_add
	call  print
	lw  ra, -1336(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str384
	call  string_add
	call  print
	lw  ra, -1248(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str385
	call  string_add
	call  print
	lw  ra, -1348(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str386
	call  string_add
	call  print
	lw  ra, -1116(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str387
	call  string_add
	call  print
	lw  ra, -1720(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str388
	call  string_add
	call  print
	lw  ra, -1396(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str389
	call  string_add
	call  print
	lw  ra, -1236(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str390
	call  string_add
	call  print
	lw  ra, -1084(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str391
	call  string_add
	call  print
	lw  ra, -1692(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str392
	call  string_add
	call  print
	lw  ra, -1228(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str393
	call  string_add
	call  print
	lw  ra, -1976(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str394
	call  string_add
	call  print
	lw  ra, -1764(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str395
	call  string_add
	call  print
	lw  ra, -1552(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str396
	call  string_add
	call  print
	lw  ra, -1212(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str397
	call  string_add
	call  print
	lw  ra, -1140(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str398
	call  string_add
	call  print
	lw  ra, -2036(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str399
	call  string_add
	call  print
	lw  ra, -1700(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str400
	call  string_add
	call  print
	lw  ra, -1136(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str401
	call  string_add
	call  print
	lw  ra, -1980(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str402
	call  string_add
	call  print
	lw  ra, -1168(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str403
	call  string_add
	call  print
	lw  ra, -1092(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str404
	call  string_add
	call  print
	lw  ra, -1932(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str405
	call  string_add
	call  print
	lw  ra, -1172(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str406
	call  string_add
	call  print
	lw  ra, -1284(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str407
	call  string_add
	call  print
	lw  ra, -1756(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str408
	call  string_add
	call  print
	lw  ra, -1424(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str409
	call  string_add
	call  print
	lw  ra, -1368(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str410
	call  string_add
	call  print
	lw  ra, -1376(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str411
	call  string_add
	call  print
	lw  ra, -1416(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str412
	call  string_add
	call  print
	lw  ra, -1624(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str413
	call  string_add
	call  print
	lw  ra, -1620(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str414
	call  string_add
	call  print
	lw  ra, -1584(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str415
	call  string_add
	call  print
	lw  ra, -1240(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str416
	call  string_add
	call  print
	lw  ra, -1672(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str417
	call  string_add
	call  print
	lw  ra, -1760(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str418
	call  string_add
	call  print
	lw  ra, -1264(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str419
	call  string_add
	call  print
	lw  ra, -1320(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str420
	call  string_add
	call  print
	lw  ra, -1372(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str421
	call  string_add
	call  print
	lw  a0, 0(s4)
	call  toString
	la  a1, .$str422
	call  string_add
	call  print
	lw  ra, -1876(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str423
	call  string_add
	call  print
	lw  ra, -2012(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str424
	call  string_add
	call  print
	lw  ra, -1744(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str425
	call  string_add
	call  print
	lw  ra, -1576(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str426
	call  string_add
	call  print
	lw  ra, -1512(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str427
	call  string_add
	call  print
	lw  ra, -1904(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str428
	call  string_add
	call  print
	lw  ra, -1920(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str429
	call  string_add
	call  print
	lw  ra, -1464(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str430
	call  string_add
	call  print
	lw  ra, -1152(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str431
	call  string_add
	call  print
	lw  ra, -1800(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str432
	call  string_add
	call  print
	lw  ra, -1520(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str433
	call  string_add
	call  print
	lw  ra, -1948(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str434
	call  string_add
	call  print
	lw  ra, -1196(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str435
	call  string_add
	call  print
	lw  ra, -1796(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str436
	call  string_add
	call  print
	lw  ra, -1548(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str437
	call  string_add
	call  print
	lw  ra, -1868(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str438
	call  string_add
	call  print
	lw  ra, -1728(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str439
	call  string_add
	call  print
	lw  ra, -1608(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str440
	call  string_add
	call  print
	lw  ra, -1448(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str441
	call  string_add
	call  print
	lw  ra, -1356(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str442
	call  string_add
	call  print
	lw  ra, -1844(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str443
	call  string_add
	call  print
	lw  ra, -1516(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str444
	call  string_add
	call  print
	lw  ra, -1912(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str445
	call  string_add
	call  print
	lw  ra, -1916(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str446
	call  string_add
	call  print
	lw  ra, -1780(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str447
	call  string_add
	call  print
	lw  ra, -1600(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str448
	call  string_add
	call  print
	lw  ra, -2032(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str449
	call  string_add
	call  print
	lw  ra, -1752(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str450
	call  string_add
	call  print
	lw  ra, -1988(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str451
	call  string_add
	call  print
	lw  ra, -1488(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str452
	call  string_add
	call  print
	lw  ra, -1184(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str453
	call  string_add
	call  print
	lw  ra, -1540(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str454
	call  string_add
	call  print
	lw  ra, -1408(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str455
	call  string_add
	call  print
	lw  ra, -1532(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str456
	call  string_add
	call  print
	lw  ra, -1696(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str457
	call  string_add
	call  print
	lw  ra, -1468(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str458
	call  string_add
	call  print
	lw  ra, -1784(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str459
	call  string_add
	call  print
	lw  ra, -1816(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str460
	call  string_add
	call  print
	lw  ra, -1224(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str461
	call  string_add
	call  print
	lw  ra, -1952(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str462
	call  string_add
	call  print
	lw  ra, -1496(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str463
	call  string_add
	call  print
	lw  ra, -1216(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str464
	call  string_add
	call  print
	lw  ra, -1452(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str465
	call  string_add
	call  print
	lw  ra, -1660(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str466
	call  string_add
	call  print
	lw  ra, -1100(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str467
	call  string_add
	call  print
	lw  ra, -1160(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str468
	call  string_add
	call  print
	lw  ra, -1712(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str469
	call  string_add
	call  print
	lw  ra, -2016(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str470
	call  string_add
	call  print
	lw  ra, -1708(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str471
	call  string_add
	call  print
	lw  ra, -1180(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str472
	call  string_add
	call  print
	lw  a0, 0(s8)
	call  toString
	la  a1, .$str473
	call  string_add
	call  print
	lw  ra, -1568(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str474
	call  string_add
	call  print
	lw  ra, -1316(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str475
	call  string_add
	call  print
	lw  ra, -1256(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str476
	call  string_add
	call  print
	lw  ra, -1364(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str477
	call  string_add
	call  print
	lw  ra, -1940(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str478
	call  string_add
	call  print
	li  ra, -2060
	add  ra, s0, ra
	lw  ra, 0(ra)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str479
	call  string_add
	call  print
	lw  ra, -1648(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str480
	call  string_add
	call  print
	lw  ra, -1328(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str481
	call  string_add
	call  print
	lw  ra, -1296(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str482
	call  string_add
	call  print
	lw  ra, -2040(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str483
	call  string_add
	call  print
	lw  ra, -1792(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str484
	call  string_add
	call  print
	lw  ra, -1400(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str485
	call  string_add
	call  print
	lw  ra, -1928(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str486
	call  string_add
	call  print
	lw  ra, -1144(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str487
	call  string_add
	call  print
	lw  ra, -1508(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str488
	call  string_add
	call  print
	lw  ra, -1524(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str489
	call  string_add
	call  print
	lw  ra, -1864(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str490
	call  string_add
	call  print
	lw  ra, -1208(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str491
	call  string_add
	call  print
	lw  ra, -1848(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str492
	call  string_add
	call  print
	lw  ra, -1564(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str493
	call  string_add
	call  print
	lw  ra, -1124(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str494
	call  string_add
	call  print
	lw  ra, -1164(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str495
	call  string_add
	call  print
	lw  ra, -1592(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str496
	call  string_add
	call  print
	lw  ra, -1096(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str497
	call  string_add
	call  print
	lw  ra, -1636(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str498
	call  string_add
	call  print
	lw  ra, -1804(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str499
	call  string_add
	call  print
	lw  ra, -2008(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str500
	call  string_add
	call  print
	lw  ra, -1484(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str501
	call  string_add
	call  print
	lw  ra, -1360(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str502
	call  string_add
	call  print
	lw  ra, -1880(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str503
	call  string_add
	call  print
	lw  ra, -1884(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str504
	call  string_add
	call  print
	lw  ra, -1536(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str505
	call  string_add
	call  print
	lw  ra, -1404(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str506
	call  string_add
	call  print
	lw  ra, -1556(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str507
	call  string_add
	call  print
	lw  ra, -1112(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str508
	call  string_add
	call  print
	lw  ra, -1436(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str509
	call  string_add
	call  print
	lw  ra, -1412(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str510
	call  string_add
	call  print
	lw  ra, -1944(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str511
	call  string_add
	call  print
	lw  ra, -2000(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str512
	call  string_add
	call  print
	lw  ra, -1892(s0)
	lw  a0, 0(ra)
	call  toString
	la  a1, .$str513
	call  string_add
	call  print
	la  a0, .$str514
	call  println
	addi  ra, zero, 0
	sw  ra, -12(s0)
	j  .mainexit
.mainexit:
	lw  a0, -12(s0)
	li  t0, 2056
	add  t0, t0, sp
	lw  ra, 0(t0)
	li  t0, 2052
	add  t0, t0, sp
	lw  s0, 0(t0)
	li  t0, 2060
	add  sp, sp, t0
	ret

	.section  .bss
	.p2align  2
.@count:
	.word  0

	.section  .rodata
	.p2align  2
.$str1:
	.string  " "

	.section  .rodata
	.p2align  2
.$str2:
	.string  " "

	.section  .rodata
	.p2align  2
.$str3:
	.string  " "

	.section  .rodata
	.p2align  2
.$str4:
	.string  " "

	.section  .rodata
	.p2align  2
.$str5:
	.string  " "

	.section  .rodata
	.p2align  2
.$str6:
	.string  " "

	.section  .rodata
	.p2align  2
.$str7:
	.string  " "

	.section  .rodata
	.p2align  2
.$str8:
	.string  " "

	.section  .rodata
	.p2align  2
.$str9:
	.string  " "

	.section  .rodata
	.p2align  2
.$str10:
	.string  " "

	.section  .rodata
	.p2align  2
.$str11:
	.string  " "

	.section  .rodata
	.p2align  2
.$str12:
	.string  " "

	.section  .rodata
	.p2align  2
.$str13:
	.string  " "

	.section  .rodata
	.p2align  2
.$str14:
	.string  " "

	.section  .rodata
	.p2align  2
.$str15:
	.string  " "

	.section  .rodata
	.p2align  2
.$str16:
	.string  " "

	.section  .rodata
	.p2align  2
.$str17:
	.string  " "

	.section  .rodata
	.p2align  2
.$str18:
	.string  " "

	.section  .rodata
	.p2align  2
.$str19:
	.string  " "

	.section  .rodata
	.p2align  2
.$str20:
	.string  " "

	.section  .rodata
	.p2align  2
.$str21:
	.string  " "

	.section  .rodata
	.p2align  2
.$str22:
	.string  " "

	.section  .rodata
	.p2align  2
.$str23:
	.string  " "

	.section  .rodata
	.p2align  2
.$str24:
	.string  " "

	.section  .rodata
	.p2align  2
.$str25:
	.string  " "

	.section  .rodata
	.p2align  2
.$str26:
	.string  " "

	.section  .rodata
	.p2align  2
.$str27:
	.string  " "

	.section  .rodata
	.p2align  2
.$str28:
	.string  " "

	.section  .rodata
	.p2align  2
.$str29:
	.string  " "

	.section  .rodata
	.p2align  2
.$str30:
	.string  " "

	.section  .rodata
	.p2align  2
.$str31:
	.string  " "

	.section  .rodata
	.p2align  2
.$str32:
	.string  " "

	.section  .rodata
	.p2align  2
.$str33:
	.string  " "

	.section  .rodata
	.p2align  2
.$str34:
	.string  " "

	.section  .rodata
	.p2align  2
.$str35:
	.string  " "

	.section  .rodata
	.p2align  2
.$str36:
	.string  " "

	.section  .rodata
	.p2align  2
.$str37:
	.string  " "

	.section  .rodata
	.p2align  2
.$str38:
	.string  " "

	.section  .rodata
	.p2align  2
.$str39:
	.string  " "

	.section  .rodata
	.p2align  2
.$str40:
	.string  " "

	.section  .rodata
	.p2align  2
.$str41:
	.string  " "

	.section  .rodata
	.p2align  2
.$str42:
	.string  " "

	.section  .rodata
	.p2align  2
.$str43:
	.string  " "

	.section  .rodata
	.p2align  2
.$str44:
	.string  " "

	.section  .rodata
	.p2align  2
.$str45:
	.string  " "

	.section  .rodata
	.p2align  2
.$str46:
	.string  " "

	.section  .rodata
	.p2align  2
.$str47:
	.string  " "

	.section  .rodata
	.p2align  2
.$str48:
	.string  " "

	.section  .rodata
	.p2align  2
.$str49:
	.string  " "

	.section  .rodata
	.p2align  2
.$str50:
	.string  " "

	.section  .rodata
	.p2align  2
.$str51:
	.string  " "

	.section  .rodata
	.p2align  2
.$str52:
	.string  " "

	.section  .rodata
	.p2align  2
.$str53:
	.string  " "

	.section  .rodata
	.p2align  2
.$str54:
	.string  " "

	.section  .rodata
	.p2align  2
.$str55:
	.string  " "

	.section  .rodata
	.p2align  2
.$str56:
	.string  " "

	.section  .rodata
	.p2align  2
.$str57:
	.string  " "

	.section  .rodata
	.p2align  2
.$str58:
	.string  " "

	.section  .rodata
	.p2align  2
.$str59:
	.string  " "

	.section  .rodata
	.p2align  2
.$str60:
	.string  " "

	.section  .rodata
	.p2align  2
.$str61:
	.string  " "

	.section  .rodata
	.p2align  2
.$str62:
	.string  " "

	.section  .rodata
	.p2align  2
.$str63:
	.string  " "

	.section  .rodata
	.p2align  2
.$str64:
	.string  " "

	.section  .rodata
	.p2align  2
.$str65:
	.string  " "

	.section  .rodata
	.p2align  2
.$str66:
	.string  " "

	.section  .rodata
	.p2align  2
.$str67:
	.string  " "

	.section  .rodata
	.p2align  2
.$str68:
	.string  " "

	.section  .rodata
	.p2align  2
.$str69:
	.string  " "

	.section  .rodata
	.p2align  2
.$str70:
	.string  " "

	.section  .rodata
	.p2align  2
.$str71:
	.string  " "

	.section  .rodata
	.p2align  2
.$str72:
	.string  " "

	.section  .rodata
	.p2align  2
.$str73:
	.string  " "

	.section  .rodata
	.p2align  2
.$str74:
	.string  " "

	.section  .rodata
	.p2align  2
.$str75:
	.string  " "

	.section  .rodata
	.p2align  2
.$str76:
	.string  " "

	.section  .rodata
	.p2align  2
.$str77:
	.string  " "

	.section  .rodata
	.p2align  2
.$str78:
	.string  " "

	.section  .rodata
	.p2align  2
.$str79:
	.string  " "

	.section  .rodata
	.p2align  2
.$str80:
	.string  " "

	.section  .rodata
	.p2align  2
.$str81:
	.string  " "

	.section  .rodata
	.p2align  2
.$str82:
	.string  " "

	.section  .rodata
	.p2align  2
.$str83:
	.string  " "

	.section  .rodata
	.p2align  2
.$str84:
	.string  " "

	.section  .rodata
	.p2align  2
.$str85:
	.string  " "

	.section  .rodata
	.p2align  2
.$str86:
	.string  " "

	.section  .rodata
	.p2align  2
.$str87:
	.string  " "

	.section  .rodata
	.p2align  2
.$str88:
	.string  " "

	.section  .rodata
	.p2align  2
.$str89:
	.string  " "

	.section  .rodata
	.p2align  2
.$str90:
	.string  " "

	.section  .rodata
	.p2align  2
.$str91:
	.string  " "

	.section  .rodata
	.p2align  2
.$str92:
	.string  " "

	.section  .rodata
	.p2align  2
.$str93:
	.string  " "

	.section  .rodata
	.p2align  2
.$str94:
	.string  " "

	.section  .rodata
	.p2align  2
.$str95:
	.string  " "

	.section  .rodata
	.p2align  2
.$str96:
	.string  " "

	.section  .rodata
	.p2align  2
.$str97:
	.string  " "

	.section  .rodata
	.p2align  2
.$str98:
	.string  " "

	.section  .rodata
	.p2align  2
.$str99:
	.string  " "

	.section  .rodata
	.p2align  2
.$str100:
	.string  " "

	.section  .rodata
	.p2align  2
.$str101:
	.string  " "

	.section  .rodata
	.p2align  2
.$str102:
	.string  " "

	.section  .rodata
	.p2align  2
.$str103:
	.string  " "

	.section  .rodata
	.p2align  2
.$str104:
	.string  " "

	.section  .rodata
	.p2align  2
.$str105:
	.string  " "

	.section  .rodata
	.p2align  2
.$str106:
	.string  " "

	.section  .rodata
	.p2align  2
.$str107:
	.string  " "

	.section  .rodata
	.p2align  2
.$str108:
	.string  " "

	.section  .rodata
	.p2align  2
.$str109:
	.string  " "

	.section  .rodata
	.p2align  2
.$str110:
	.string  " "

	.section  .rodata
	.p2align  2
.$str111:
	.string  " "

	.section  .rodata
	.p2align  2
.$str112:
	.string  " "

	.section  .rodata
	.p2align  2
.$str113:
	.string  " "

	.section  .rodata
	.p2align  2
.$str114:
	.string  " "

	.section  .rodata
	.p2align  2
.$str115:
	.string  " "

	.section  .rodata
	.p2align  2
.$str116:
	.string  " "

	.section  .rodata
	.p2align  2
.$str117:
	.string  " "

	.section  .rodata
	.p2align  2
.$str118:
	.string  " "

	.section  .rodata
	.p2align  2
.$str119:
	.string  " "

	.section  .rodata
	.p2align  2
.$str120:
	.string  " "

	.section  .rodata
	.p2align  2
.$str121:
	.string  " "

	.section  .rodata
	.p2align  2
.$str122:
	.string  " "

	.section  .rodata
	.p2align  2
.$str123:
	.string  " "

	.section  .rodata
	.p2align  2
.$str124:
	.string  " "

	.section  .rodata
	.p2align  2
.$str125:
	.string  " "

	.section  .rodata
	.p2align  2
.$str126:
	.string  " "

	.section  .rodata
	.p2align  2
.$str127:
	.string  " "

	.section  .rodata
	.p2align  2
.$str128:
	.string  " "

	.section  .rodata
	.p2align  2
.$str129:
	.string  " "

	.section  .rodata
	.p2align  2
.$str130:
	.string  " "

	.section  .rodata
	.p2align  2
.$str131:
	.string  " "

	.section  .rodata
	.p2align  2
.$str132:
	.string  " "

	.section  .rodata
	.p2align  2
.$str133:
	.string  " "

	.section  .rodata
	.p2align  2
.$str134:
	.string  " "

	.section  .rodata
	.p2align  2
.$str135:
	.string  " "

	.section  .rodata
	.p2align  2
.$str136:
	.string  " "

	.section  .rodata
	.p2align  2
.$str137:
	.string  " "

	.section  .rodata
	.p2align  2
.$str138:
	.string  " "

	.section  .rodata
	.p2align  2
.$str139:
	.string  " "

	.section  .rodata
	.p2align  2
.$str140:
	.string  " "

	.section  .rodata
	.p2align  2
.$str141:
	.string  " "

	.section  .rodata
	.p2align  2
.$str142:
	.string  " "

	.section  .rodata
	.p2align  2
.$str143:
	.string  " "

	.section  .rodata
	.p2align  2
.$str144:
	.string  " "

	.section  .rodata
	.p2align  2
.$str145:
	.string  " "

	.section  .rodata
	.p2align  2
.$str146:
	.string  " "

	.section  .rodata
	.p2align  2
.$str147:
	.string  " "

	.section  .rodata
	.p2align  2
.$str148:
	.string  " "

	.section  .rodata
	.p2align  2
.$str149:
	.string  " "

	.section  .rodata
	.p2align  2
.$str150:
	.string  " "

	.section  .rodata
	.p2align  2
.$str151:
	.string  " "

	.section  .rodata
	.p2align  2
.$str152:
	.string  " "

	.section  .rodata
	.p2align  2
.$str153:
	.string  " "

	.section  .rodata
	.p2align  2
.$str154:
	.string  " "

	.section  .rodata
	.p2align  2
.$str155:
	.string  " "

	.section  .rodata
	.p2align  2
.$str156:
	.string  " "

	.section  .rodata
	.p2align  2
.$str157:
	.string  " "

	.section  .rodata
	.p2align  2
.$str158:
	.string  " "

	.section  .rodata
	.p2align  2
.$str159:
	.string  " "

	.section  .rodata
	.p2align  2
.$str160:
	.string  " "

	.section  .rodata
	.p2align  2
.$str161:
	.string  " "

	.section  .rodata
	.p2align  2
.$str162:
	.string  " "

	.section  .rodata
	.p2align  2
.$str163:
	.string  " "

	.section  .rodata
	.p2align  2
.$str164:
	.string  " "

	.section  .rodata
	.p2align  2
.$str165:
	.string  " "

	.section  .rodata
	.p2align  2
.$str166:
	.string  " "

	.section  .rodata
	.p2align  2
.$str167:
	.string  " "

	.section  .rodata
	.p2align  2
.$str168:
	.string  " "

	.section  .rodata
	.p2align  2
.$str169:
	.string  " "

	.section  .rodata
	.p2align  2
.$str170:
	.string  " "

	.section  .rodata
	.p2align  2
.$str171:
	.string  " "

	.section  .rodata
	.p2align  2
.$str172:
	.string  " "

	.section  .rodata
	.p2align  2
.$str173:
	.string  " "

	.section  .rodata
	.p2align  2
.$str174:
	.string  " "

	.section  .rodata
	.p2align  2
.$str175:
	.string  " "

	.section  .rodata
	.p2align  2
.$str176:
	.string  " "

	.section  .rodata
	.p2align  2
.$str177:
	.string  " "

	.section  .rodata
	.p2align  2
.$str178:
	.string  " "

	.section  .rodata
	.p2align  2
.$str179:
	.string  " "

	.section  .rodata
	.p2align  2
.$str180:
	.string  " "

	.section  .rodata
	.p2align  2
.$str181:
	.string  " "

	.section  .rodata
	.p2align  2
.$str182:
	.string  " "

	.section  .rodata
	.p2align  2
.$str183:
	.string  " "

	.section  .rodata
	.p2align  2
.$str184:
	.string  " "

	.section  .rodata
	.p2align  2
.$str185:
	.string  " "

	.section  .rodata
	.p2align  2
.$str186:
	.string  " "

	.section  .rodata
	.p2align  2
.$str187:
	.string  " "

	.section  .rodata
	.p2align  2
.$str188:
	.string  " "

	.section  .rodata
	.p2align  2
.$str189:
	.string  " "

	.section  .rodata
	.p2align  2
.$str190:
	.string  " "

	.section  .rodata
	.p2align  2
.$str191:
	.string  " "

	.section  .rodata
	.p2align  2
.$str192:
	.string  " "

	.section  .rodata
	.p2align  2
.$str193:
	.string  " "

	.section  .rodata
	.p2align  2
.$str194:
	.string  " "

	.section  .rodata
	.p2align  2
.$str195:
	.string  " "

	.section  .rodata
	.p2align  2
.$str196:
	.string  " "

	.section  .rodata
	.p2align  2
.$str197:
	.string  " "

	.section  .rodata
	.p2align  2
.$str198:
	.string  " "

	.section  .rodata
	.p2align  2
.$str199:
	.string  " "

	.section  .rodata
	.p2align  2
.$str200:
	.string  " "

	.section  .rodata
	.p2align  2
.$str201:
	.string  " "

	.section  .rodata
	.p2align  2
.$str202:
	.string  " "

	.section  .rodata
	.p2align  2
.$str203:
	.string  " "

	.section  .rodata
	.p2align  2
.$str204:
	.string  " "

	.section  .rodata
	.p2align  2
.$str205:
	.string  " "

	.section  .rodata
	.p2align  2
.$str206:
	.string  " "

	.section  .rodata
	.p2align  2
.$str207:
	.string  " "

	.section  .rodata
	.p2align  2
.$str208:
	.string  " "

	.section  .rodata
	.p2align  2
.$str209:
	.string  " "

	.section  .rodata
	.p2align  2
.$str210:
	.string  " "

	.section  .rodata
	.p2align  2
.$str211:
	.string  " "

	.section  .rodata
	.p2align  2
.$str212:
	.string  " "

	.section  .rodata
	.p2align  2
.$str213:
	.string  " "

	.section  .rodata
	.p2align  2
.$str214:
	.string  " "

	.section  .rodata
	.p2align  2
.$str215:
	.string  " "

	.section  .rodata
	.p2align  2
.$str216:
	.string  " "

	.section  .rodata
	.p2align  2
.$str217:
	.string  " "

	.section  .rodata
	.p2align  2
.$str218:
	.string  " "

	.section  .rodata
	.p2align  2
.$str219:
	.string  " "

	.section  .rodata
	.p2align  2
.$str220:
	.string  " "

	.section  .rodata
	.p2align  2
.$str221:
	.string  " "

	.section  .rodata
	.p2align  2
.$str222:
	.string  " "

	.section  .rodata
	.p2align  2
.$str223:
	.string  " "

	.section  .rodata
	.p2align  2
.$str224:
	.string  " "

	.section  .rodata
	.p2align  2
.$str225:
	.string  " "

	.section  .rodata
	.p2align  2
.$str226:
	.string  " "

	.section  .rodata
	.p2align  2
.$str227:
	.string  " "

	.section  .rodata
	.p2align  2
.$str228:
	.string  " "

	.section  .rodata
	.p2align  2
.$str229:
	.string  " "

	.section  .rodata
	.p2align  2
.$str230:
	.string  " "

	.section  .rodata
	.p2align  2
.$str231:
	.string  " "

	.section  .rodata
	.p2align  2
.$str232:
	.string  " "

	.section  .rodata
	.p2align  2
.$str233:
	.string  " "

	.section  .rodata
	.p2align  2
.$str234:
	.string  " "

	.section  .rodata
	.p2align  2
.$str235:
	.string  " "

	.section  .rodata
	.p2align  2
.$str236:
	.string  " "

	.section  .rodata
	.p2align  2
.$str237:
	.string  " "

	.section  .rodata
	.p2align  2
.$str238:
	.string  " "

	.section  .rodata
	.p2align  2
.$str239:
	.string  " "

	.section  .rodata
	.p2align  2
.$str240:
	.string  " "

	.section  .rodata
	.p2align  2
.$str241:
	.string  " "

	.section  .rodata
	.p2align  2
.$str242:
	.string  " "

	.section  .rodata
	.p2align  2
.$str243:
	.string  " "

	.section  .rodata
	.p2align  2
.$str244:
	.string  " "

	.section  .rodata
	.p2align  2
.$str245:
	.string  " "

	.section  .rodata
	.p2align  2
.$str246:
	.string  " "

	.section  .rodata
	.p2align  2
.$str247:
	.string  " "

	.section  .rodata
	.p2align  2
.$str248:
	.string  " "

	.section  .rodata
	.p2align  2
.$str249:
	.string  " "

	.section  .rodata
	.p2align  2
.$str250:
	.string  " "

	.section  .rodata
	.p2align  2
.$str251:
	.string  " "

	.section  .rodata
	.p2align  2
.$str252:
	.string  " "

	.section  .rodata
	.p2align  2
.$str253:
	.string  " "

	.section  .rodata
	.p2align  2
.$str254:
	.string  " "

	.section  .rodata
	.p2align  2
.$str255:
	.string  " "

	.section  .rodata
	.p2align  2
.$str256:
	.string  " "

	.section  .rodata
	.p2align  2
.$str257:
	.string  ""

	.section  .rodata
	.p2align  2
.$str258:
	.string  " "

	.section  .rodata
	.p2align  2
.$str259:
	.string  " "

	.section  .rodata
	.p2align  2
.$str260:
	.string  " "

	.section  .rodata
	.p2align  2
.$str261:
	.string  " "

	.section  .rodata
	.p2align  2
.$str262:
	.string  " "

	.section  .rodata
	.p2align  2
.$str263:
	.string  " "

	.section  .rodata
	.p2align  2
.$str264:
	.string  " "

	.section  .rodata
	.p2align  2
.$str265:
	.string  " "

	.section  .rodata
	.p2align  2
.$str266:
	.string  " "

	.section  .rodata
	.p2align  2
.$str267:
	.string  " "

	.section  .rodata
	.p2align  2
.$str268:
	.string  " "

	.section  .rodata
	.p2align  2
.$str269:
	.string  " "

	.section  .rodata
	.p2align  2
.$str270:
	.string  " "

	.section  .rodata
	.p2align  2
.$str271:
	.string  " "

	.section  .rodata
	.p2align  2
.$str272:
	.string  " "

	.section  .rodata
	.p2align  2
.$str273:
	.string  " "

	.section  .rodata
	.p2align  2
.$str274:
	.string  " "

	.section  .rodata
	.p2align  2
.$str275:
	.string  " "

	.section  .rodata
	.p2align  2
.$str276:
	.string  " "

	.section  .rodata
	.p2align  2
.$str277:
	.string  " "

	.section  .rodata
	.p2align  2
.$str278:
	.string  " "

	.section  .rodata
	.p2align  2
.$str279:
	.string  " "

	.section  .rodata
	.p2align  2
.$str280:
	.string  " "

	.section  .rodata
	.p2align  2
.$str281:
	.string  " "

	.section  .rodata
	.p2align  2
.$str282:
	.string  " "

	.section  .rodata
	.p2align  2
.$str283:
	.string  " "

	.section  .rodata
	.p2align  2
.$str284:
	.string  " "

	.section  .rodata
	.p2align  2
.$str285:
	.string  " "

	.section  .rodata
	.p2align  2
.$str286:
	.string  " "

	.section  .rodata
	.p2align  2
.$str287:
	.string  " "

	.section  .rodata
	.p2align  2
.$str288:
	.string  " "

	.section  .rodata
	.p2align  2
.$str289:
	.string  " "

	.section  .rodata
	.p2align  2
.$str290:
	.string  " "

	.section  .rodata
	.p2align  2
.$str291:
	.string  " "

	.section  .rodata
	.p2align  2
.$str292:
	.string  " "

	.section  .rodata
	.p2align  2
.$str293:
	.string  " "

	.section  .rodata
	.p2align  2
.$str294:
	.string  " "

	.section  .rodata
	.p2align  2
.$str295:
	.string  " "

	.section  .rodata
	.p2align  2
.$str296:
	.string  " "

	.section  .rodata
	.p2align  2
.$str297:
	.string  " "

	.section  .rodata
	.p2align  2
.$str298:
	.string  " "

	.section  .rodata
	.p2align  2
.$str299:
	.string  " "

	.section  .rodata
	.p2align  2
.$str300:
	.string  " "

	.section  .rodata
	.p2align  2
.$str301:
	.string  " "

	.section  .rodata
	.p2align  2
.$str302:
	.string  " "

	.section  .rodata
	.p2align  2
.$str303:
	.string  " "

	.section  .rodata
	.p2align  2
.$str304:
	.string  " "

	.section  .rodata
	.p2align  2
.$str305:
	.string  " "

	.section  .rodata
	.p2align  2
.$str306:
	.string  " "

	.section  .rodata
	.p2align  2
.$str307:
	.string  " "

	.section  .rodata
	.p2align  2
.$str308:
	.string  " "

	.section  .rodata
	.p2align  2
.$str309:
	.string  " "

	.section  .rodata
	.p2align  2
.$str310:
	.string  " "

	.section  .rodata
	.p2align  2
.$str311:
	.string  " "

	.section  .rodata
	.p2align  2
.$str312:
	.string  " "

	.section  .rodata
	.p2align  2
.$str313:
	.string  " "

	.section  .rodata
	.p2align  2
.$str314:
	.string  " "

	.section  .rodata
	.p2align  2
.$str315:
	.string  " "

	.section  .rodata
	.p2align  2
.$str316:
	.string  " "

	.section  .rodata
	.p2align  2
.$str317:
	.string  " "

	.section  .rodata
	.p2align  2
.$str318:
	.string  " "

	.section  .rodata
	.p2align  2
.$str319:
	.string  " "

	.section  .rodata
	.p2align  2
.$str320:
	.string  " "

	.section  .rodata
	.p2align  2
.$str321:
	.string  " "

	.section  .rodata
	.p2align  2
.$str322:
	.string  " "

	.section  .rodata
	.p2align  2
.$str323:
	.string  " "

	.section  .rodata
	.p2align  2
.$str324:
	.string  " "

	.section  .rodata
	.p2align  2
.$str325:
	.string  " "

	.section  .rodata
	.p2align  2
.$str326:
	.string  " "

	.section  .rodata
	.p2align  2
.$str327:
	.string  " "

	.section  .rodata
	.p2align  2
.$str328:
	.string  " "

	.section  .rodata
	.p2align  2
.$str329:
	.string  " "

	.section  .rodata
	.p2align  2
.$str330:
	.string  " "

	.section  .rodata
	.p2align  2
.$str331:
	.string  " "

	.section  .rodata
	.p2align  2
.$str332:
	.string  " "

	.section  .rodata
	.p2align  2
.$str333:
	.string  " "

	.section  .rodata
	.p2align  2
.$str334:
	.string  " "

	.section  .rodata
	.p2align  2
.$str335:
	.string  " "

	.section  .rodata
	.p2align  2
.$str336:
	.string  " "

	.section  .rodata
	.p2align  2
.$str337:
	.string  " "

	.section  .rodata
	.p2align  2
.$str338:
	.string  " "

	.section  .rodata
	.p2align  2
.$str339:
	.string  " "

	.section  .rodata
	.p2align  2
.$str340:
	.string  " "

	.section  .rodata
	.p2align  2
.$str341:
	.string  " "

	.section  .rodata
	.p2align  2
.$str342:
	.string  " "

	.section  .rodata
	.p2align  2
.$str343:
	.string  " "

	.section  .rodata
	.p2align  2
.$str344:
	.string  " "

	.section  .rodata
	.p2align  2
.$str345:
	.string  " "

	.section  .rodata
	.p2align  2
.$str346:
	.string  " "

	.section  .rodata
	.p2align  2
.$str347:
	.string  " "

	.section  .rodata
	.p2align  2
.$str348:
	.string  " "

	.section  .rodata
	.p2align  2
.$str349:
	.string  " "

	.section  .rodata
	.p2align  2
.$str350:
	.string  " "

	.section  .rodata
	.p2align  2
.$str351:
	.string  " "

	.section  .rodata
	.p2align  2
.$str352:
	.string  " "

	.section  .rodata
	.p2align  2
.$str353:
	.string  " "

	.section  .rodata
	.p2align  2
.$str354:
	.string  " "

	.section  .rodata
	.p2align  2
.$str355:
	.string  " "

	.section  .rodata
	.p2align  2
.$str356:
	.string  " "

	.section  .rodata
	.p2align  2
.$str357:
	.string  " "

	.section  .rodata
	.p2align  2
.$str358:
	.string  " "

	.section  .rodata
	.p2align  2
.$str359:
	.string  " "

	.section  .rodata
	.p2align  2
.$str360:
	.string  " "

	.section  .rodata
	.p2align  2
.$str361:
	.string  " "

	.section  .rodata
	.p2align  2
.$str362:
	.string  " "

	.section  .rodata
	.p2align  2
.$str363:
	.string  " "

	.section  .rodata
	.p2align  2
.$str364:
	.string  " "

	.section  .rodata
	.p2align  2
.$str365:
	.string  " "

	.section  .rodata
	.p2align  2
.$str366:
	.string  " "

	.section  .rodata
	.p2align  2
.$str367:
	.string  " "

	.section  .rodata
	.p2align  2
.$str368:
	.string  " "

	.section  .rodata
	.p2align  2
.$str369:
	.string  " "

	.section  .rodata
	.p2align  2
.$str370:
	.string  " "

	.section  .rodata
	.p2align  2
.$str371:
	.string  " "

	.section  .rodata
	.p2align  2
.$str372:
	.string  " "

	.section  .rodata
	.p2align  2
.$str373:
	.string  " "

	.section  .rodata
	.p2align  2
.$str374:
	.string  " "

	.section  .rodata
	.p2align  2
.$str375:
	.string  " "

	.section  .rodata
	.p2align  2
.$str376:
	.string  " "

	.section  .rodata
	.p2align  2
.$str377:
	.string  " "

	.section  .rodata
	.p2align  2
.$str378:
	.string  " "

	.section  .rodata
	.p2align  2
.$str379:
	.string  " "

	.section  .rodata
	.p2align  2
.$str380:
	.string  " "

	.section  .rodata
	.p2align  2
.$str381:
	.string  " "

	.section  .rodata
	.p2align  2
.$str382:
	.string  " "

	.section  .rodata
	.p2align  2
.$str383:
	.string  " "

	.section  .rodata
	.p2align  2
.$str384:
	.string  " "

	.section  .rodata
	.p2align  2
.$str385:
	.string  " "

	.section  .rodata
	.p2align  2
.$str386:
	.string  " "

	.section  .rodata
	.p2align  2
.$str387:
	.string  " "

	.section  .rodata
	.p2align  2
.$str388:
	.string  " "

	.section  .rodata
	.p2align  2
.$str389:
	.string  " "

	.section  .rodata
	.p2align  2
.$str390:
	.string  " "

	.section  .rodata
	.p2align  2
.$str391:
	.string  " "

	.section  .rodata
	.p2align  2
.$str392:
	.string  " "

	.section  .rodata
	.p2align  2
.$str393:
	.string  " "

	.section  .rodata
	.p2align  2
.$str394:
	.string  " "

	.section  .rodata
	.p2align  2
.$str395:
	.string  " "

	.section  .rodata
	.p2align  2
.$str396:
	.string  " "

	.section  .rodata
	.p2align  2
.$str397:
	.string  " "

	.section  .rodata
	.p2align  2
.$str398:
	.string  " "

	.section  .rodata
	.p2align  2
.$str399:
	.string  " "

	.section  .rodata
	.p2align  2
.$str400:
	.string  " "

	.section  .rodata
	.p2align  2
.$str401:
	.string  " "

	.section  .rodata
	.p2align  2
.$str402:
	.string  " "

	.section  .rodata
	.p2align  2
.$str403:
	.string  " "

	.section  .rodata
	.p2align  2
.$str404:
	.string  " "

	.section  .rodata
	.p2align  2
.$str405:
	.string  " "

	.section  .rodata
	.p2align  2
.$str406:
	.string  " "

	.section  .rodata
	.p2align  2
.$str407:
	.string  " "

	.section  .rodata
	.p2align  2
.$str408:
	.string  " "

	.section  .rodata
	.p2align  2
.$str409:
	.string  " "

	.section  .rodata
	.p2align  2
.$str410:
	.string  " "

	.section  .rodata
	.p2align  2
.$str411:
	.string  " "

	.section  .rodata
	.p2align  2
.$str412:
	.string  " "

	.section  .rodata
	.p2align  2
.$str413:
	.string  " "

	.section  .rodata
	.p2align  2
.$str414:
	.string  " "

	.section  .rodata
	.p2align  2
.$str415:
	.string  " "

	.section  .rodata
	.p2align  2
.$str416:
	.string  " "

	.section  .rodata
	.p2align  2
.$str417:
	.string  " "

	.section  .rodata
	.p2align  2
.$str418:
	.string  " "

	.section  .rodata
	.p2align  2
.$str419:
	.string  " "

	.section  .rodata
	.p2align  2
.$str420:
	.string  " "

	.section  .rodata
	.p2align  2
.$str421:
	.string  " "

	.section  .rodata
	.p2align  2
.$str422:
	.string  " "

	.section  .rodata
	.p2align  2
.$str423:
	.string  " "

	.section  .rodata
	.p2align  2
.$str424:
	.string  " "

	.section  .rodata
	.p2align  2
.$str425:
	.string  " "

	.section  .rodata
	.p2align  2
.$str426:
	.string  " "

	.section  .rodata
	.p2align  2
.$str427:
	.string  " "

	.section  .rodata
	.p2align  2
.$str428:
	.string  " "

	.section  .rodata
	.p2align  2
.$str429:
	.string  " "

	.section  .rodata
	.p2align  2
.$str430:
	.string  " "

	.section  .rodata
	.p2align  2
.$str431:
	.string  " "

	.section  .rodata
	.p2align  2
.$str432:
	.string  " "

	.section  .rodata
	.p2align  2
.$str433:
	.string  " "

	.section  .rodata
	.p2align  2
.$str434:
	.string  " "

	.section  .rodata
	.p2align  2
.$str435:
	.string  " "

	.section  .rodata
	.p2align  2
.$str436:
	.string  " "

	.section  .rodata
	.p2align  2
.$str437:
	.string  " "

	.section  .rodata
	.p2align  2
.$str438:
	.string  " "

	.section  .rodata
	.p2align  2
.$str439:
	.string  " "

	.section  .rodata
	.p2align  2
.$str440:
	.string  " "

	.section  .rodata
	.p2align  2
.$str441:
	.string  " "

	.section  .rodata
	.p2align  2
.$str442:
	.string  " "

	.section  .rodata
	.p2align  2
.$str443:
	.string  " "

	.section  .rodata
	.p2align  2
.$str444:
	.string  " "

	.section  .rodata
	.p2align  2
.$str445:
	.string  " "

	.section  .rodata
	.p2align  2
.$str446:
	.string  " "

	.section  .rodata
	.p2align  2
.$str447:
	.string  " "

	.section  .rodata
	.p2align  2
.$str448:
	.string  " "

	.section  .rodata
	.p2align  2
.$str449:
	.string  " "

	.section  .rodata
	.p2align  2
.$str450:
	.string  " "

	.section  .rodata
	.p2align  2
.$str451:
	.string  " "

	.section  .rodata
	.p2align  2
.$str452:
	.string  " "

	.section  .rodata
	.p2align  2
.$str453:
	.string  " "

	.section  .rodata
	.p2align  2
.$str454:
	.string  " "

	.section  .rodata
	.p2align  2
.$str455:
	.string  " "

	.section  .rodata
	.p2align  2
.$str456:
	.string  " "

	.section  .rodata
	.p2align  2
.$str457:
	.string  " "

	.section  .rodata
	.p2align  2
.$str458:
	.string  " "

	.section  .rodata
	.p2align  2
.$str459:
	.string  " "

	.section  .rodata
	.p2align  2
.$str460:
	.string  " "

	.section  .rodata
	.p2align  2
.$str461:
	.string  " "

	.section  .rodata
	.p2align  2
.$str462:
	.string  " "

	.section  .rodata
	.p2align  2
.$str463:
	.string  " "

	.section  .rodata
	.p2align  2
.$str464:
	.string  " "

	.section  .rodata
	.p2align  2
.$str465:
	.string  " "

	.section  .rodata
	.p2align  2
.$str466:
	.string  " "

	.section  .rodata
	.p2align  2
.$str467:
	.string  " "

	.section  .rodata
	.p2align  2
.$str468:
	.string  " "

	.section  .rodata
	.p2align  2
.$str469:
	.string  " "

	.section  .rodata
	.p2align  2
.$str470:
	.string  " "

	.section  .rodata
	.p2align  2
.$str471:
	.string  " "

	.section  .rodata
	.p2align  2
.$str472:
	.string  " "

	.section  .rodata
	.p2align  2
.$str473:
	.string  " "

	.section  .rodata
	.p2align  2
.$str474:
	.string  " "

	.section  .rodata
	.p2align  2
.$str475:
	.string  " "

	.section  .rodata
	.p2align  2
.$str476:
	.string  " "

	.section  .rodata
	.p2align  2
.$str477:
	.string  " "

	.section  .rodata
	.p2align  2
.$str478:
	.string  " "

	.section  .rodata
	.p2align  2
.$str479:
	.string  " "

	.section  .rodata
	.p2align  2
.$str480:
	.string  " "

	.section  .rodata
	.p2align  2
.$str481:
	.string  " "

	.section  .rodata
	.p2align  2
.$str482:
	.string  " "

	.section  .rodata
	.p2align  2
.$str483:
	.string  " "

	.section  .rodata
	.p2align  2
.$str484:
	.string  " "

	.section  .rodata
	.p2align  2
.$str485:
	.string  " "

	.section  .rodata
	.p2align  2
.$str486:
	.string  " "

	.section  .rodata
	.p2align  2
.$str487:
	.string  " "

	.section  .rodata
	.p2align  2
.$str488:
	.string  " "

	.section  .rodata
	.p2align  2
.$str489:
	.string  " "

	.section  .rodata
	.p2align  2
.$str490:
	.string  " "

	.section  .rodata
	.p2align  2
.$str491:
	.string  " "

	.section  .rodata
	.p2align  2
.$str492:
	.string  " "

	.section  .rodata
	.p2align  2
.$str493:
	.string  " "

	.section  .rodata
	.p2align  2
.$str494:
	.string  " "

	.section  .rodata
	.p2align  2
.$str495:
	.string  " "

	.section  .rodata
	.p2align  2
.$str496:
	.string  " "

	.section  .rodata
	.p2align  2
.$str497:
	.string  " "

	.section  .rodata
	.p2align  2
.$str498:
	.string  " "

	.section  .rodata
	.p2align  2
.$str499:
	.string  " "

	.section  .rodata
	.p2align  2
.$str500:
	.string  " "

	.section  .rodata
	.p2align  2
.$str501:
	.string  " "

	.section  .rodata
	.p2align  2
.$str502:
	.string  " "

	.section  .rodata
	.p2align  2
.$str503:
	.string  " "

	.section  .rodata
	.p2align  2
.$str504:
	.string  " "

	.section  .rodata
	.p2align  2
.$str505:
	.string  " "

	.section  .rodata
	.p2align  2
.$str506:
	.string  " "

	.section  .rodata
	.p2align  2
.$str507:
	.string  " "

	.section  .rodata
	.p2align  2
.$str508:
	.string  " "

	.section  .rodata
	.p2align  2
.$str509:
	.string  " "

	.section  .rodata
	.p2align  2
.$str510:
	.string  " "

	.section  .rodata
	.p2align  2
.$str511:
	.string  " "

	.section  .rodata
	.p2align  2
.$str512:
	.string  " "

	.section  .rodata
	.p2align  2
.$str513:
	.string  " "

	.section  .rodata
	.p2align  2
.$str514:
	.string  ""

