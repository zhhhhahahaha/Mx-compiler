	.text

	.globl  globalinit
	.p2align  2
globalinit:
	addi  sp, sp, -16
	sw  ra, 12(sp)
	sw  s0, 8(sp)
	addi  s0, sp, 16
.globalinitpara:
.globalinit0:
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -16(s0)
.globalinitexit:
	lw  a0, -12(s0)
	lw  s0, 8(sp)
	lw  ra, 12(sp)
	addi  sp, sp, 16
	ret

	.globl  getcount
	.p2align  2
getcount:
	addi  sp, sp, -48
	sw  ra, 44(sp)
	sw  s0, 40(sp)
	addi  s0, sp, 48
.getcountpara:
	sw  a0, -16(s0)
	addi  t0, s0, -20
	sw  t0, -24(s0)
.getcount0:
	lw  t0, -24(s0)
	lw  t1, -16(s0)
	sw  t1, 0(t0)
	lw  t0, -24(s0)
	lw  t0, 0(t0)
	sw  t0, -28(s0)
	lw  t0, -28(s0)
	addi  t1, t0, 4
	sw  t1, -32(s0)
	lw  t0, -32(s0)
	lw  t0, 0(t0)
	sw  t0, -36(s0)
	lw  t0, -36(s0)
	addi  t1, zero, 1
	add  t2, t0, t1
	sw  t2, -40(s0)
	lw  t0, -24(s0)
	lw  t0, 0(t0)
	sw  t0, -44(s0)
	lw  t0, -44(s0)
	addi  t1, t0, 4
	sw  t1, -48(s0)
	lw  t0, -48(s0)
	lw  t1, -40(s0)
	sw  t1, 0(t0)
	lw  t0, -40(s0)
	sw  t0, -12(s0)
	j  .getcountexit
.getcountexit:
	lw  a0, -12(s0)
	lw  s0, 40(sp)
	lw  ra, 44(sp)
	addi  sp, sp, 48
	ret

	.globl  main
	.p2align  2
main:
	li  t0, -10264
	add  sp, sp, t0
	li  t0, 10260
	add  t0, t0, sp
	sw  ra, 0(t0)
	li  t0, 10256
	add  t0, t0, sp
	sw  s0, 0(t0)
	li  t0, 10264
	add  s0, sp, t0
.mainpara:
	call  globalinit
	addi  t0, s0, -16
	sw  t0, -20(s0)
	addi  t0, s0, -24
	sw  t0, -28(s0)
	addi  t0, s0, -32
	sw  t0, -36(s0)
	addi  t0, s0, -40
	sw  t0, -44(s0)
	addi  t0, s0, -48
	sw  t0, -52(s0)
	addi  t0, s0, -56
	sw  t0, -60(s0)
	addi  t0, s0, -64
	sw  t0, -68(s0)
	addi  t0, s0, -72
	sw  t0, -76(s0)
	addi  t0, s0, -80
	sw  t0, -84(s0)
	addi  t0, s0, -88
	sw  t0, -92(s0)
	addi  t0, s0, -96
	sw  t0, -100(s0)
	addi  t0, s0, -104
	sw  t0, -108(s0)
	addi  t0, s0, -112
	sw  t0, -116(s0)
	addi  t0, s0, -120
	sw  t0, -124(s0)
	addi  t0, s0, -128
	sw  t0, -132(s0)
	addi  t0, s0, -136
	sw  t0, -140(s0)
	addi  t0, s0, -144
	sw  t0, -148(s0)
	addi  t0, s0, -152
	sw  t0, -156(s0)
	addi  t0, s0, -160
	sw  t0, -164(s0)
	addi  t0, s0, -168
	sw  t0, -172(s0)
	addi  t0, s0, -176
	sw  t0, -180(s0)
	addi  t0, s0, -184
	sw  t0, -188(s0)
	addi  t0, s0, -192
	sw  t0, -196(s0)
	addi  t0, s0, -200
	sw  t0, -204(s0)
	addi  t0, s0, -208
	sw  t0, -212(s0)
	addi  t0, s0, -216
	sw  t0, -220(s0)
	addi  t0, s0, -224
	sw  t0, -228(s0)
	addi  t0, s0, -232
	sw  t0, -236(s0)
	addi  t0, s0, -240
	sw  t0, -244(s0)
	addi  t0, s0, -248
	sw  t0, -252(s0)
	addi  t0, s0, -256
	sw  t0, -260(s0)
	addi  t0, s0, -264
	sw  t0, -268(s0)
	addi  t0, s0, -272
	sw  t0, -276(s0)
	addi  t0, s0, -280
	sw  t0, -284(s0)
	addi  t0, s0, -288
	sw  t0, -292(s0)
	addi  t0, s0, -296
	sw  t0, -300(s0)
	addi  t0, s0, -304
	sw  t0, -308(s0)
	addi  t0, s0, -312
	sw  t0, -316(s0)
	addi  t0, s0, -320
	sw  t0, -324(s0)
	addi  t0, s0, -328
	sw  t0, -332(s0)
	addi  t0, s0, -336
	sw  t0, -340(s0)
	addi  t0, s0, -344
	sw  t0, -348(s0)
	addi  t0, s0, -352
	sw  t0, -356(s0)
	addi  t0, s0, -360
	sw  t0, -364(s0)
	addi  t0, s0, -368
	sw  t0, -372(s0)
	addi  t0, s0, -376
	sw  t0, -380(s0)
	addi  t0, s0, -384
	sw  t0, -388(s0)
	addi  t0, s0, -392
	sw  t0, -396(s0)
	addi  t0, s0, -400
	sw  t0, -404(s0)
	addi  t0, s0, -408
	sw  t0, -412(s0)
	addi  t0, s0, -416
	sw  t0, -420(s0)
	addi  t0, s0, -424
	sw  t0, -428(s0)
	addi  t0, s0, -432
	sw  t0, -436(s0)
	addi  t0, s0, -440
	sw  t0, -444(s0)
	addi  t0, s0, -448
	sw  t0, -452(s0)
	addi  t0, s0, -456
	sw  t0, -460(s0)
	addi  t0, s0, -464
	sw  t0, -468(s0)
	addi  t0, s0, -472
	sw  t0, -476(s0)
	addi  t0, s0, -480
	sw  t0, -484(s0)
	addi  t0, s0, -488
	sw  t0, -492(s0)
	addi  t0, s0, -496
	sw  t0, -500(s0)
	addi  t0, s0, -504
	sw  t0, -508(s0)
	addi  t0, s0, -512
	sw  t0, -516(s0)
	addi  t0, s0, -520
	sw  t0, -524(s0)
	addi  t0, s0, -528
	sw  t0, -532(s0)
	addi  t0, s0, -536
	sw  t0, -540(s0)
	addi  t0, s0, -544
	sw  t0, -548(s0)
	addi  t0, s0, -552
	sw  t0, -556(s0)
	addi  t0, s0, -560
	sw  t0, -564(s0)
	addi  t0, s0, -568
	sw  t0, -572(s0)
	addi  t0, s0, -576
	sw  t0, -580(s0)
	addi  t0, s0, -584
	sw  t0, -588(s0)
	addi  t0, s0, -592
	sw  t0, -596(s0)
	addi  t0, s0, -600
	sw  t0, -604(s0)
	addi  t0, s0, -608
	sw  t0, -612(s0)
	addi  t0, s0, -616
	sw  t0, -620(s0)
	addi  t0, s0, -624
	sw  t0, -628(s0)
	addi  t0, s0, -632
	sw  t0, -636(s0)
	addi  t0, s0, -640
	sw  t0, -644(s0)
	addi  t0, s0, -648
	sw  t0, -652(s0)
	addi  t0, s0, -656
	sw  t0, -660(s0)
	addi  t0, s0, -664
	sw  t0, -668(s0)
	addi  t0, s0, -672
	sw  t0, -676(s0)
	addi  t0, s0, -680
	sw  t0, -684(s0)
	addi  t0, s0, -688
	sw  t0, -692(s0)
	addi  t0, s0, -696
	sw  t0, -700(s0)
	addi  t0, s0, -704
	sw  t0, -708(s0)
	addi  t0, s0, -712
	sw  t0, -716(s0)
	addi  t0, s0, -720
	sw  t0, -724(s0)
	addi  t0, s0, -728
	sw  t0, -732(s0)
	addi  t0, s0, -736
	sw  t0, -740(s0)
	addi  t0, s0, -744
	sw  t0, -748(s0)
	addi  t0, s0, -752
	sw  t0, -756(s0)
	addi  t0, s0, -760
	sw  t0, -764(s0)
	addi  t0, s0, -768
	sw  t0, -772(s0)
	addi  t0, s0, -776
	sw  t0, -780(s0)
	addi  t0, s0, -784
	sw  t0, -788(s0)
	addi  t0, s0, -792
	sw  t0, -796(s0)
	addi  t0, s0, -800
	sw  t0, -804(s0)
	addi  t0, s0, -808
	sw  t0, -812(s0)
	addi  t0, s0, -816
	sw  t0, -820(s0)
	addi  t0, s0, -824
	sw  t0, -828(s0)
	addi  t0, s0, -832
	sw  t0, -836(s0)
	addi  t0, s0, -840
	sw  t0, -844(s0)
	addi  t0, s0, -848
	sw  t0, -852(s0)
	addi  t0, s0, -856
	sw  t0, -860(s0)
	addi  t0, s0, -864
	sw  t0, -868(s0)
	addi  t0, s0, -872
	sw  t0, -876(s0)
	addi  t0, s0, -880
	sw  t0, -884(s0)
	addi  t0, s0, -888
	sw  t0, -892(s0)
	addi  t0, s0, -896
	sw  t0, -900(s0)
	addi  t0, s0, -904
	sw  t0, -908(s0)
	addi  t0, s0, -912
	sw  t0, -916(s0)
	addi  t0, s0, -920
	sw  t0, -924(s0)
	addi  t0, s0, -928
	sw  t0, -932(s0)
	addi  t0, s0, -936
	sw  t0, -940(s0)
	addi  t0, s0, -944
	sw  t0, -948(s0)
	addi  t0, s0, -952
	sw  t0, -956(s0)
	addi  t0, s0, -960
	sw  t0, -964(s0)
	addi  t0, s0, -968
	sw  t0, -972(s0)
	addi  t0, s0, -976
	sw  t0, -980(s0)
	addi  t0, s0, -984
	sw  t0, -988(s0)
	addi  t0, s0, -992
	sw  t0, -996(s0)
	addi  t0, s0, -1000
	sw  t0, -1004(s0)
	addi  t0, s0, -1008
	sw  t0, -1012(s0)
	addi  t0, s0, -1016
	sw  t0, -1020(s0)
	addi  t0, s0, -1024
	sw  t0, -1028(s0)
	addi  t0, s0, -1032
	sw  t0, -1036(s0)
	addi  t0, s0, -1040
	sw  t0, -1044(s0)
	addi  t0, s0, -1048
	sw  t0, -1052(s0)
	addi  t0, s0, -1056
	sw  t0, -1060(s0)
	addi  t0, s0, -1064
	sw  t0, -1068(s0)
	addi  t0, s0, -1072
	sw  t0, -1076(s0)
	addi  t0, s0, -1080
	sw  t0, -1084(s0)
	addi  t0, s0, -1088
	sw  t0, -1092(s0)
	addi  t0, s0, -1096
	sw  t0, -1100(s0)
	addi  t0, s0, -1104
	sw  t0, -1108(s0)
	addi  t0, s0, -1112
	sw  t0, -1116(s0)
	addi  t0, s0, -1120
	sw  t0, -1124(s0)
	addi  t0, s0, -1128
	sw  t0, -1132(s0)
	addi  t0, s0, -1136
	sw  t0, -1140(s0)
	addi  t0, s0, -1144
	sw  t0, -1148(s0)
	addi  t0, s0, -1152
	sw  t0, -1156(s0)
	addi  t0, s0, -1160
	sw  t0, -1164(s0)
	addi  t0, s0, -1168
	sw  t0, -1172(s0)
	addi  t0, s0, -1176
	sw  t0, -1180(s0)
	addi  t0, s0, -1184
	sw  t0, -1188(s0)
	addi  t0, s0, -1192
	sw  t0, -1196(s0)
	addi  t0, s0, -1200
	sw  t0, -1204(s0)
	addi  t0, s0, -1208
	sw  t0, -1212(s0)
	addi  t0, s0, -1216
	sw  t0, -1220(s0)
	addi  t0, s0, -1224
	sw  t0, -1228(s0)
	addi  t0, s0, -1232
	sw  t0, -1236(s0)
	addi  t0, s0, -1240
	sw  t0, -1244(s0)
	addi  t0, s0, -1248
	sw  t0, -1252(s0)
	addi  t0, s0, -1256
	sw  t0, -1260(s0)
	addi  t0, s0, -1264
	sw  t0, -1268(s0)
	addi  t0, s0, -1272
	sw  t0, -1276(s0)
	addi  t0, s0, -1280
	sw  t0, -1284(s0)
	addi  t0, s0, -1288
	sw  t0, -1292(s0)
	addi  t0, s0, -1296
	sw  t0, -1300(s0)
	addi  t0, s0, -1304
	sw  t0, -1308(s0)
	addi  t0, s0, -1312
	sw  t0, -1316(s0)
	addi  t0, s0, -1320
	sw  t0, -1324(s0)
	addi  t0, s0, -1328
	sw  t0, -1332(s0)
	addi  t0, s0, -1336
	sw  t0, -1340(s0)
	addi  t0, s0, -1344
	sw  t0, -1348(s0)
	addi  t0, s0, -1352
	sw  t0, -1356(s0)
	addi  t0, s0, -1360
	sw  t0, -1364(s0)
	addi  t0, s0, -1368
	sw  t0, -1372(s0)
	addi  t0, s0, -1376
	sw  t0, -1380(s0)
	addi  t0, s0, -1384
	sw  t0, -1388(s0)
	addi  t0, s0, -1392
	sw  t0, -1396(s0)
	addi  t0, s0, -1400
	sw  t0, -1404(s0)
	addi  t0, s0, -1408
	sw  t0, -1412(s0)
	addi  t0, s0, -1416
	sw  t0, -1420(s0)
	addi  t0, s0, -1424
	sw  t0, -1428(s0)
	addi  t0, s0, -1432
	sw  t0, -1436(s0)
	addi  t0, s0, -1440
	sw  t0, -1444(s0)
	addi  t0, s0, -1448
	sw  t0, -1452(s0)
	addi  t0, s0, -1456
	sw  t0, -1460(s0)
	addi  t0, s0, -1464
	sw  t0, -1468(s0)
	addi  t0, s0, -1472
	sw  t0, -1476(s0)
	addi  t0, s0, -1480
	sw  t0, -1484(s0)
	addi  t0, s0, -1488
	sw  t0, -1492(s0)
	addi  t0, s0, -1496
	sw  t0, -1500(s0)
	addi  t0, s0, -1504
	sw  t0, -1508(s0)
	addi  t0, s0, -1512
	sw  t0, -1516(s0)
	addi  t0, s0, -1520
	sw  t0, -1524(s0)
	addi  t0, s0, -1528
	sw  t0, -1532(s0)
	addi  t0, s0, -1536
	sw  t0, -1540(s0)
	addi  t0, s0, -1544
	sw  t0, -1548(s0)
	addi  t0, s0, -1552
	sw  t0, -1556(s0)
	addi  t0, s0, -1560
	sw  t0, -1564(s0)
	addi  t0, s0, -1568
	sw  t0, -1572(s0)
	addi  t0, s0, -1576
	sw  t0, -1580(s0)
	addi  t0, s0, -1584
	sw  t0, -1588(s0)
	addi  t0, s0, -1592
	sw  t0, -1596(s0)
	addi  t0, s0, -1600
	sw  t0, -1604(s0)
	addi  t0, s0, -1608
	sw  t0, -1612(s0)
	addi  t0, s0, -1616
	sw  t0, -1620(s0)
	addi  t0, s0, -1624
	sw  t0, -1628(s0)
	addi  t0, s0, -1632
	sw  t0, -1636(s0)
	addi  t0, s0, -1640
	sw  t0, -1644(s0)
	addi  t0, s0, -1648
	sw  t0, -1652(s0)
	addi  t0, s0, -1656
	sw  t0, -1660(s0)
	addi  t0, s0, -1664
	sw  t0, -1668(s0)
	addi  t0, s0, -1672
	sw  t0, -1676(s0)
	addi  t0, s0, -1680
	sw  t0, -1684(s0)
	addi  t0, s0, -1688
	sw  t0, -1692(s0)
	addi  t0, s0, -1696
	sw  t0, -1700(s0)
	addi  t0, s0, -1704
	sw  t0, -1708(s0)
	addi  t0, s0, -1712
	sw  t0, -1716(s0)
	addi  t0, s0, -1720
	sw  t0, -1724(s0)
	addi  t0, s0, -1728
	sw  t0, -1732(s0)
	addi  t0, s0, -1736
	sw  t0, -1740(s0)
	addi  t0, s0, -1744
	sw  t0, -1748(s0)
	addi  t0, s0, -1752
	sw  t0, -1756(s0)
	addi  t0, s0, -1760
	sw  t0, -1764(s0)
	addi  t0, s0, -1768
	sw  t0, -1772(s0)
	addi  t0, s0, -1776
	sw  t0, -1780(s0)
	addi  t0, s0, -1784
	sw  t0, -1788(s0)
	addi  t0, s0, -1792
	sw  t0, -1796(s0)
	addi  t0, s0, -1800
	sw  t0, -1804(s0)
	addi  t0, s0, -1808
	sw  t0, -1812(s0)
	addi  t0, s0, -1816
	sw  t0, -1820(s0)
	addi  t0, s0, -1824
	sw  t0, -1828(s0)
	addi  t0, s0, -1832
	sw  t0, -1836(s0)
	addi  t0, s0, -1840
	sw  t0, -1844(s0)
	addi  t0, s0, -1848
	sw  t0, -1852(s0)
	addi  t0, s0, -1856
	sw  t0, -1860(s0)
	addi  t0, s0, -1864
	sw  t0, -1868(s0)
	addi  t0, s0, -1872
	sw  t0, -1876(s0)
	addi  t0, s0, -1880
	sw  t0, -1884(s0)
	addi  t0, s0, -1888
	sw  t0, -1892(s0)
	addi  t0, s0, -1896
	sw  t0, -1900(s0)
	addi  t0, s0, -1904
	sw  t0, -1908(s0)
	addi  t0, s0, -1912
	sw  t0, -1916(s0)
	addi  t0, s0, -1920
	sw  t0, -1924(s0)
	addi  t0, s0, -1928
	sw  t0, -1932(s0)
	addi  t0, s0, -1936
	sw  t0, -1940(s0)
	addi  t0, s0, -1944
	sw  t0, -1948(s0)
	addi  t0, s0, -1952
	sw  t0, -1956(s0)
	addi  t0, s0, -1960
	sw  t0, -1964(s0)
	addi  t0, s0, -1968
	sw  t0, -1972(s0)
	addi  t0, s0, -1976
	sw  t0, -1980(s0)
	addi  t0, s0, -1984
	sw  t0, -1988(s0)
	addi  t0, s0, -1992
	sw  t0, -1996(s0)
	addi  t0, s0, -2000
	sw  t0, -2004(s0)
	addi  t0, s0, -2008
	sw  t0, -2012(s0)
	addi  t0, s0, -2016
	sw  t0, -2020(s0)
	addi  t0, s0, -2024
	sw  t0, -2028(s0)
	addi  t0, s0, -2032
	sw  t0, -2036(s0)
	addi  t0, s0, -2040
	sw  t0, -2044(s0)
	addi  t0, s0, -2048
	li  t1, -2052
	add  t1, t1, s0
	li  t0, -2056
	add  t0, s0, t0
	li  t1, -2060
	add  t1, t1, s0
.main0:
	addi  a0, zero, 8
	call  malloc
	li  t0, -2064
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  t0, -2064
	add  t0, t0, s0
	lw  t0, 0(t0)
	addi  t1, zero, 1
	sw  t1, 0(t0)
	la  t0, .@count
	li  t1, -2064
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -2068
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  t0, -2068
	add  t0, t0, s0
	lw  t0, 0(t0)
	addi  t1, t0, 4
	li  t2, -2072
	add  t2, t2, s0
	sw  t1, 0(t2)
	li  t0, -2072
	add  t0, t0, s0
	lw  t0, 0(t0)
	addi  t1, zero, 0
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -2076
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -2076
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -2080
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -20(s0)
	li  t1, -2080
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -2084
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -2084
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -2088
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -28(s0)
	li  t1, -2088
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -2092
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -2092
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -2096
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -36(s0)
	li  t1, -2096
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -2100
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -2100
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -2104
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -44(s0)
	li  t1, -2104
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -2108
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -2108
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -2112
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -52(s0)
	li  t1, -2112
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -2116
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -2116
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -2120
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -60(s0)
	li  t1, -2120
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -2124
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -2124
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -2128
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -68(s0)
	li  t1, -2128
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -2132
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -2132
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -2136
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -76(s0)
	li  t1, -2136
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -2140
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -2140
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -2144
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -84(s0)
	li  t1, -2144
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -2148
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -2148
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -2152
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -92(s0)
	li  t1, -2152
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -2156
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -2156
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -2160
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -100(s0)
	li  t1, -2160
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -2164
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -2164
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -2168
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -108(s0)
	li  t1, -2168
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -2172
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -2172
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -2176
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -116(s0)
	li  t1, -2176
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -2180
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -2180
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -2184
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -124(s0)
	li  t1, -2184
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -2188
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -2188
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -2192
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -132(s0)
	li  t1, -2192
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -2196
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -2196
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -2200
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -140(s0)
	li  t1, -2200
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -2204
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -2204
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -2208
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -148(s0)
	li  t1, -2208
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -2212
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -2212
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -2216
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -156(s0)
	li  t1, -2216
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -2220
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -2220
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -2224
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -164(s0)
	li  t1, -2224
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -2228
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -2228
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -2232
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -172(s0)
	li  t1, -2232
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -2236
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -2236
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -2240
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -180(s0)
	li  t1, -2240
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -2244
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -2244
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -2248
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -188(s0)
	li  t1, -2248
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -2252
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -2252
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -2256
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -196(s0)
	li  t1, -2256
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -2260
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -2260
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -2264
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -204(s0)
	li  t1, -2264
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -2268
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -2268
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -2272
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -212(s0)
	li  t1, -2272
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -2276
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -2276
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -2280
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -220(s0)
	li  t1, -2280
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -2284
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -2284
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -2288
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -228(s0)
	li  t1, -2288
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -2292
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -2292
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -2296
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -236(s0)
	li  t1, -2296
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -2300
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -2300
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -2304
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -244(s0)
	li  t1, -2304
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -2308
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -2308
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -2312
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -252(s0)
	li  t1, -2312
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -2316
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -2316
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -2320
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -260(s0)
	li  t1, -2320
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -2324
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -2324
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -2328
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -268(s0)
	li  t1, -2328
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -2332
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -2332
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -2336
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -276(s0)
	li  t1, -2336
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -2340
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -2340
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -2344
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -284(s0)
	li  t1, -2344
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -2348
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -2348
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -2352
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -292(s0)
	li  t1, -2352
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -2356
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -2356
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -2360
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -300(s0)
	li  t1, -2360
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -2364
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -2364
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -2368
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -308(s0)
	li  t1, -2368
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -2372
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -2372
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -2376
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -316(s0)
	li  t1, -2376
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -2380
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -2380
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -2384
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -324(s0)
	li  t1, -2384
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -2388
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -2388
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -2392
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -332(s0)
	li  t1, -2392
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -2396
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -2396
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -2400
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -340(s0)
	li  t1, -2400
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -2404
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -2404
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -2408
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -348(s0)
	li  t1, -2408
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -2412
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -2412
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -2416
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -356(s0)
	li  t1, -2416
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -2420
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -2420
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -2424
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -364(s0)
	li  t1, -2424
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -2428
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -2428
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -2432
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -372(s0)
	li  t1, -2432
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -2436
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -2436
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -2440
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -380(s0)
	li  t1, -2440
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -2444
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -2444
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -2448
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -388(s0)
	li  t1, -2448
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -2452
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -2452
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -2456
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -396(s0)
	li  t1, -2456
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -2460
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -2460
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -2464
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -404(s0)
	li  t1, -2464
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -2468
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -2468
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -2472
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -412(s0)
	li  t1, -2472
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -2476
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -2476
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -2480
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -420(s0)
	li  t1, -2480
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -2484
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -2484
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -2488
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -428(s0)
	li  t1, -2488
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -2492
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -2492
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -2496
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -436(s0)
	li  t1, -2496
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -2500
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -2500
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -2504
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -444(s0)
	li  t1, -2504
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -2508
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -2508
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -2512
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -452(s0)
	li  t1, -2512
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -2516
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -2516
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -2520
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -460(s0)
	li  t1, -2520
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -2524
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -2524
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -2528
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -468(s0)
	li  t1, -2528
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -2532
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -2532
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -2536
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -476(s0)
	li  t1, -2536
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -2540
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -2540
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -2544
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -484(s0)
	li  t1, -2544
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -2548
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -2548
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -2552
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -492(s0)
	li  t1, -2552
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -2556
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -2556
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -2560
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -500(s0)
	li  t1, -2560
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -2564
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -2564
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -2568
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -508(s0)
	li  t1, -2568
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -2572
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -2572
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -2576
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -516(s0)
	li  t1, -2576
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -2580
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -2580
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -2584
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -524(s0)
	li  t1, -2584
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -2588
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -2588
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -2592
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -532(s0)
	li  t1, -2592
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -2596
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -2596
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -2600
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -540(s0)
	li  t1, -2600
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -2604
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -2604
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -2608
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -548(s0)
	li  t1, -2608
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -2612
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -2612
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -2616
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -556(s0)
	li  t1, -2616
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -2620
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -2620
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -2624
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -564(s0)
	li  t1, -2624
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -2628
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -2628
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -2632
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -572(s0)
	li  t1, -2632
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -2636
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -2636
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -2640
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -580(s0)
	li  t1, -2640
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -2644
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -2644
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -2648
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -588(s0)
	li  t1, -2648
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -2652
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -2652
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -2656
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -596(s0)
	li  t1, -2656
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -2660
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -2660
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -2664
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -604(s0)
	li  t1, -2664
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -2668
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -2668
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -2672
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -612(s0)
	li  t1, -2672
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -2676
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -2676
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -2680
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -620(s0)
	li  t1, -2680
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -2684
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -2684
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -2688
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -628(s0)
	li  t1, -2688
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -2692
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -2692
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -2696
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -636(s0)
	li  t1, -2696
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -2700
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -2700
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -2704
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -644(s0)
	li  t1, -2704
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -2708
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -2708
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -2712
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -652(s0)
	li  t1, -2712
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -2716
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -2716
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -2720
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -660(s0)
	li  t1, -2720
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -2724
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -2724
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -2728
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -668(s0)
	li  t1, -2728
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -2732
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -2732
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -2736
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -676(s0)
	li  t1, -2736
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -2740
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -2740
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -2744
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -684(s0)
	li  t1, -2744
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -2748
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -2748
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -2752
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -692(s0)
	li  t1, -2752
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -2756
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -2756
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -2760
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -700(s0)
	li  t1, -2760
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -2764
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -2764
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -2768
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -708(s0)
	li  t1, -2768
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -2772
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -2772
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -2776
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -716(s0)
	li  t1, -2776
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -2780
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -2780
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -2784
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -724(s0)
	li  t1, -2784
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -2788
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -2788
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -2792
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -732(s0)
	li  t1, -2792
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -2796
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -2796
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -2800
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -740(s0)
	li  t1, -2800
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -2804
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -2804
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -2808
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -748(s0)
	li  t1, -2808
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -2812
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -2812
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -2816
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -756(s0)
	li  t1, -2816
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -2820
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -2820
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -2824
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -764(s0)
	li  t1, -2824
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -2828
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -2828
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -2832
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -772(s0)
	li  t1, -2832
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -2836
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -2836
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -2840
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -780(s0)
	li  t1, -2840
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -2844
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -2844
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -2848
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -788(s0)
	li  t1, -2848
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -2852
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -2852
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -2856
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -796(s0)
	li  t1, -2856
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -2860
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -2860
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -2864
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -804(s0)
	li  t1, -2864
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -2868
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -2868
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -2872
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -812(s0)
	li  t1, -2872
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -2876
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -2876
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -2880
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -820(s0)
	li  t1, -2880
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -2884
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -2884
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -2888
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -828(s0)
	li  t1, -2888
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -2892
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -2892
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -2896
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -836(s0)
	li  t1, -2896
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -2900
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -2900
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -2904
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -844(s0)
	li  t1, -2904
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -2908
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -2908
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -2912
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -852(s0)
	li  t1, -2912
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -2916
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -2916
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -2920
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -860(s0)
	li  t1, -2920
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -2924
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -2924
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -2928
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -868(s0)
	li  t1, -2928
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -2932
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -2932
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -2936
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -876(s0)
	li  t1, -2936
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -2940
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -2940
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -2944
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -884(s0)
	li  t1, -2944
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -2948
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -2948
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -2952
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -892(s0)
	li  t1, -2952
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -2956
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -2956
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -2960
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -900(s0)
	li  t1, -2960
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -2964
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -2964
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -2968
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -908(s0)
	li  t1, -2968
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -2972
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -2972
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -2976
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -916(s0)
	li  t1, -2976
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -2980
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -2980
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -2984
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -924(s0)
	li  t1, -2984
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -2988
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -2988
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -2992
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -932(s0)
	li  t1, -2992
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -2996
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -2996
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -3000
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -940(s0)
	li  t1, -3000
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -3004
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -3004
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -3008
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -948(s0)
	li  t1, -3008
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -3012
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -3012
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -3016
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -956(s0)
	li  t1, -3016
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -3020
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -3020
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -3024
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -964(s0)
	li  t1, -3024
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -3028
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -3028
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -3032
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -972(s0)
	li  t1, -3032
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -3036
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -3036
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -3040
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -980(s0)
	li  t1, -3040
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -3044
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -3044
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -3048
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -988(s0)
	li  t1, -3048
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -3052
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -3052
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -3056
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -996(s0)
	li  t1, -3056
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -3060
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -3060
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -3064
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -1004(s0)
	li  t1, -3064
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -3068
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -3068
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -3072
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -1012(s0)
	li  t1, -3072
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -3076
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -3076
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -3080
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -1020(s0)
	li  t1, -3080
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -3084
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -3084
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -3088
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -1028(s0)
	li  t1, -3088
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -3092
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -3092
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -3096
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -1036(s0)
	li  t1, -3096
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -3100
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -3100
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -3104
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -1044(s0)
	li  t1, -3104
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -3108
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -3108
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -3112
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -1052(s0)
	li  t1, -3112
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -3116
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -3116
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -3120
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -1060(s0)
	li  t1, -3120
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -3124
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -3124
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -3128
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -1068(s0)
	li  t1, -3128
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -3132
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -3132
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -3136
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -1076(s0)
	li  t1, -3136
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -3140
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -3140
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -3144
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -1084(s0)
	li  t1, -3144
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -3148
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -3148
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -3152
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -1092(s0)
	li  t1, -3152
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -3156
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -3156
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -3160
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -1100(s0)
	li  t1, -3160
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -3164
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -3164
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -3168
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -1108(s0)
	li  t1, -3168
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -3172
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -3172
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -3176
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -1116(s0)
	li  t1, -3176
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -3180
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -3180
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -3184
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -1124(s0)
	li  t1, -3184
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -3188
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -3188
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -3192
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -1132(s0)
	li  t1, -3192
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -3196
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -3196
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -3200
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -1140(s0)
	li  t1, -3200
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -3204
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -3204
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -3208
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -1148(s0)
	li  t1, -3208
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -3212
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -3212
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -3216
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -1156(s0)
	li  t1, -3216
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -3220
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -3220
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -3224
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -1164(s0)
	li  t1, -3224
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -3228
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -3228
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -3232
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -1172(s0)
	li  t1, -3232
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -3236
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -3236
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -3240
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -1180(s0)
	li  t1, -3240
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -3244
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -3244
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -3248
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -1188(s0)
	li  t1, -3248
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -3252
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -3252
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -3256
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -1196(s0)
	li  t1, -3256
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -3260
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -3260
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -3264
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -1204(s0)
	li  t1, -3264
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -3268
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -3268
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -3272
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -1212(s0)
	li  t1, -3272
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -3276
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -3276
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -3280
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -1220(s0)
	li  t1, -3280
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -3284
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -3284
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -3288
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -1228(s0)
	li  t1, -3288
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -3292
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -3292
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -3296
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -1236(s0)
	li  t1, -3296
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -3300
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -3300
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -3304
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -1244(s0)
	li  t1, -3304
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -3308
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -3308
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -3312
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -1252(s0)
	li  t1, -3312
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -3316
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -3316
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -3320
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -1260(s0)
	li  t1, -3320
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -3324
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -3324
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -3328
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -1268(s0)
	li  t1, -3328
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -3332
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -3332
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -3336
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -1276(s0)
	li  t1, -3336
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -3340
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -3340
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -3344
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -1284(s0)
	li  t1, -3344
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -3348
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -3348
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -3352
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -1292(s0)
	li  t1, -3352
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -3356
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -3356
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -3360
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -1300(s0)
	li  t1, -3360
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -3364
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -3364
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -3368
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -1308(s0)
	li  t1, -3368
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -3372
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -3372
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -3376
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -1316(s0)
	li  t1, -3376
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -3380
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -3380
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -3384
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -1324(s0)
	li  t1, -3384
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -3388
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -3388
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -3392
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -1332(s0)
	li  t1, -3392
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -3396
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -3396
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -3400
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -1340(s0)
	li  t1, -3400
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -3404
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -3404
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -3408
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -1348(s0)
	li  t1, -3408
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -3412
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -3412
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -3416
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -1356(s0)
	li  t1, -3416
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -3420
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -3420
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -3424
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -1364(s0)
	li  t1, -3424
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -3428
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -3428
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -3432
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -1372(s0)
	li  t1, -3432
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -3436
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -3436
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -3440
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -1380(s0)
	li  t1, -3440
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -3444
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -3444
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -3448
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -1388(s0)
	li  t1, -3448
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -3452
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -3452
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -3456
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -1396(s0)
	li  t1, -3456
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -3460
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -3460
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -3464
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -1404(s0)
	li  t1, -3464
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -3468
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -3468
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -3472
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -1412(s0)
	li  t1, -3472
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -3476
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -3476
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -3480
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -1420(s0)
	li  t1, -3480
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -3484
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -3484
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -3488
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -1428(s0)
	li  t1, -3488
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -3492
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -3492
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -3496
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -1436(s0)
	li  t1, -3496
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -3500
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -3500
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -3504
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -1444(s0)
	li  t1, -3504
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -3508
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -3508
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -3512
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -1452(s0)
	li  t1, -3512
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -3516
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -3516
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -3520
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -1460(s0)
	li  t1, -3520
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -3524
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -3524
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -3528
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -1468(s0)
	li  t1, -3528
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -3532
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -3532
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -3536
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -1476(s0)
	li  t1, -3536
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -3540
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -3540
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -3544
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -1484(s0)
	li  t1, -3544
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -3548
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -3548
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -3552
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -1492(s0)
	li  t1, -3552
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -3556
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -3556
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -3560
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -1500(s0)
	li  t1, -3560
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -3564
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -3564
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -3568
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -1508(s0)
	li  t1, -3568
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -3572
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -3572
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -3576
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -1516(s0)
	li  t1, -3576
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -3580
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -3580
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -3584
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -1524(s0)
	li  t1, -3584
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -3588
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -3588
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -3592
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -1532(s0)
	li  t1, -3592
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -3596
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -3596
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -3600
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -1540(s0)
	li  t1, -3600
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -3604
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -3604
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -3608
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -1548(s0)
	li  t1, -3608
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -3612
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -3612
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -3616
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -1556(s0)
	li  t1, -3616
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -3620
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -3620
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -3624
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -1564(s0)
	li  t1, -3624
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -3628
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -3628
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -3632
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -1572(s0)
	li  t1, -3632
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -3636
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -3636
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -3640
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -1580(s0)
	li  t1, -3640
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -3644
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -3644
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -3648
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -1588(s0)
	li  t1, -3648
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -3652
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -3652
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -3656
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -1596(s0)
	li  t1, -3656
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -3660
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -3660
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -3664
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -1604(s0)
	li  t1, -3664
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -3668
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -3668
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -3672
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -1612(s0)
	li  t1, -3672
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -3676
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -3676
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -3680
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -1620(s0)
	li  t1, -3680
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -3684
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -3684
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -3688
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -1628(s0)
	li  t1, -3688
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -3692
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -3692
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -3696
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -1636(s0)
	li  t1, -3696
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -3700
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -3700
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -3704
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -1644(s0)
	li  t1, -3704
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -3708
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -3708
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -3712
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -1652(s0)
	li  t1, -3712
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -3716
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -3716
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -3720
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -1660(s0)
	li  t1, -3720
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -3724
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -3724
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -3728
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -1668(s0)
	li  t1, -3728
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -3732
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -3732
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -3736
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -1676(s0)
	li  t1, -3736
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -3740
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -3740
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -3744
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -1684(s0)
	li  t1, -3744
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -3748
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -3748
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -3752
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -1692(s0)
	li  t1, -3752
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -3756
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -3756
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -3760
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -1700(s0)
	li  t1, -3760
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -3764
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -3764
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -3768
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -1708(s0)
	li  t1, -3768
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -3772
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -3772
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -3776
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -1716(s0)
	li  t1, -3776
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -3780
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -3780
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -3784
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -1724(s0)
	li  t1, -3784
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -3788
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -3788
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -3792
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -1732(s0)
	li  t1, -3792
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -3796
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -3796
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -3800
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -1740(s0)
	li  t1, -3800
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -3804
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -3804
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -3808
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -1748(s0)
	li  t1, -3808
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -3812
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -3812
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -3816
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -1756(s0)
	li  t1, -3816
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -3820
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -3820
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -3824
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -1764(s0)
	li  t1, -3824
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -3828
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -3828
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -3832
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -1772(s0)
	li  t1, -3832
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -3836
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -3836
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -3840
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -1780(s0)
	li  t1, -3840
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -3844
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -3844
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -3848
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -1788(s0)
	li  t1, -3848
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -3852
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -3852
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -3856
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -1796(s0)
	li  t1, -3856
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -3860
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -3860
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -3864
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -1804(s0)
	li  t1, -3864
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -3868
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -3868
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -3872
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -1812(s0)
	li  t1, -3872
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -3876
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -3876
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -3880
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -1820(s0)
	li  t1, -3880
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -3884
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -3884
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -3888
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -1828(s0)
	li  t1, -3888
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -3892
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -3892
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -3896
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -1836(s0)
	li  t1, -3896
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -3900
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -3900
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -3904
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -1844(s0)
	li  t1, -3904
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -3908
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -3908
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -3912
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -1852(s0)
	li  t1, -3912
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -3916
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -3916
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -3920
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -1860(s0)
	li  t1, -3920
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -3924
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -3924
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -3928
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -1868(s0)
	li  t1, -3928
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -3932
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -3932
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -3936
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -1876(s0)
	li  t1, -3936
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -3940
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -3940
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -3944
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -1884(s0)
	li  t1, -3944
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -3948
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -3948
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -3952
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -1892(s0)
	li  t1, -3952
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -3956
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -3956
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -3960
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -1900(s0)
	li  t1, -3960
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -3964
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -3964
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -3968
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -1908(s0)
	li  t1, -3968
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -3972
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -3972
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -3976
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -1916(s0)
	li  t1, -3976
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -3980
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -3980
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -3984
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -1924(s0)
	li  t1, -3984
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -3988
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -3988
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -3992
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -1932(s0)
	li  t1, -3992
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -3996
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -3996
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -4000
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -1940(s0)
	li  t1, -4000
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -4004
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -4004
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -4008
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -1948(s0)
	li  t1, -4008
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -4012
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -4012
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -4016
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -1956(s0)
	li  t1, -4016
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -4020
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -4020
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -4024
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -1964(s0)
	li  t1, -4024
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -4028
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -4028
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -4032
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -1972(s0)
	li  t1, -4032
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -4036
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -4036
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -4040
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -1980(s0)
	li  t1, -4040
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -4044
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -4044
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -4048
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -1988(s0)
	li  t1, -4048
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -4052
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -4052
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -4056
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -1996(s0)
	li  t1, -4056
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -4060
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -4060
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -4064
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -2004(s0)
	li  t1, -4064
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -4068
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -4068
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -4072
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -2012(s0)
	li  t1, -4072
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -4076
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -4076
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -4080
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -2020(s0)
	li  t1, -4080
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -4084
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -4084
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -4088
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -2028(s0)
	li  t1, -4088
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -4092
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -4092
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -4096
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -2036(s0)
	li  t1, -4096
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -4100
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -4100
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -4104
	add  t0, t0, s0
	sw  a0, 0(t0)
	lw  t0, -2044(s0)
	li  t1, -4104
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -4108
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -4108
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -4112
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  t0, -2052
	add  t0, t0, s0
	lw  t0, 0(t0)
	li  t1, -4112
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	li  t1, -4116
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -4116
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  getcount
	li  t0, -4120
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  t0, -2060
	add  t0, t0, s0
	lw  t0, 0(t0)
	li  t1, -4120
	add  t1, t1, s0
	lw  t1, 0(t1)
	sw  t1, 0(t0)
	lw  t0, -20(s0)
	lw  t0, 0(t0)
	li  t1, -4124
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -4124
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -4128
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -4128
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str1
	call  string_add
	li  t0, -4132
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -4132
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -28(s0)
	lw  t0, 0(t0)
	li  t1, -4136
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -4136
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -4140
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -4140
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str2
	call  string_add
	li  t0, -4144
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -4144
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -36(s0)
	lw  t0, 0(t0)
	li  t1, -4148
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -4148
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -4152
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -4152
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str3
	call  string_add
	li  t0, -4156
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -4156
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -44(s0)
	lw  t0, 0(t0)
	li  t1, -4160
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -4160
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -4164
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -4164
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str4
	call  string_add
	li  t0, -4168
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -4168
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -52(s0)
	lw  t0, 0(t0)
	li  t1, -4172
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -4172
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -4176
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -4176
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str5
	call  string_add
	li  t0, -4180
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -4180
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -60(s0)
	lw  t0, 0(t0)
	li  t1, -4184
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -4184
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -4188
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -4188
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str6
	call  string_add
	li  t0, -4192
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -4192
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -68(s0)
	lw  t0, 0(t0)
	li  t1, -4196
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -4196
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -4200
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -4200
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str7
	call  string_add
	li  t0, -4204
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -4204
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -76(s0)
	lw  t0, 0(t0)
	li  t1, -4208
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -4208
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -4212
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -4212
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str8
	call  string_add
	li  t0, -4216
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -4216
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -84(s0)
	lw  t0, 0(t0)
	li  t1, -4220
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -4220
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -4224
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -4224
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str9
	call  string_add
	li  t0, -4228
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -4228
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -92(s0)
	lw  t0, 0(t0)
	li  t1, -4232
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -4232
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -4236
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -4236
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str10
	call  string_add
	li  t0, -4240
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -4240
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -100(s0)
	lw  t0, 0(t0)
	li  t1, -4244
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -4244
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -4248
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -4248
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str11
	call  string_add
	li  t0, -4252
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -4252
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -108(s0)
	lw  t0, 0(t0)
	li  t1, -4256
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -4256
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -4260
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -4260
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str12
	call  string_add
	li  t0, -4264
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -4264
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -116(s0)
	lw  t0, 0(t0)
	li  t1, -4268
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -4268
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -4272
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -4272
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str13
	call  string_add
	li  t0, -4276
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -4276
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -124(s0)
	lw  t0, 0(t0)
	li  t1, -4280
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -4280
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -4284
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -4284
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str14
	call  string_add
	li  t0, -4288
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -4288
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -132(s0)
	lw  t0, 0(t0)
	li  t1, -4292
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -4292
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -4296
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -4296
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str15
	call  string_add
	li  t0, -4300
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -4300
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -140(s0)
	lw  t0, 0(t0)
	li  t1, -4304
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -4304
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -4308
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -4308
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str16
	call  string_add
	li  t0, -4312
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -4312
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -148(s0)
	lw  t0, 0(t0)
	li  t1, -4316
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -4316
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -4320
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -4320
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str17
	call  string_add
	li  t0, -4324
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -4324
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -156(s0)
	lw  t0, 0(t0)
	li  t1, -4328
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -4328
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -4332
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -4332
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str18
	call  string_add
	li  t0, -4336
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -4336
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -164(s0)
	lw  t0, 0(t0)
	li  t1, -4340
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -4340
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -4344
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -4344
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str19
	call  string_add
	li  t0, -4348
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -4348
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -172(s0)
	lw  t0, 0(t0)
	li  t1, -4352
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -4352
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -4356
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -4356
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str20
	call  string_add
	li  t0, -4360
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -4360
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -180(s0)
	lw  t0, 0(t0)
	li  t1, -4364
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -4364
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -4368
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -4368
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str21
	call  string_add
	li  t0, -4372
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -4372
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -188(s0)
	lw  t0, 0(t0)
	li  t1, -4376
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -4376
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -4380
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -4380
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str22
	call  string_add
	li  t0, -4384
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -4384
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -196(s0)
	lw  t0, 0(t0)
	li  t1, -4388
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -4388
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -4392
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -4392
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str23
	call  string_add
	li  t0, -4396
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -4396
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -204(s0)
	lw  t0, 0(t0)
	li  t1, -4400
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -4400
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -4404
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -4404
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str24
	call  string_add
	li  t0, -4408
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -4408
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -212(s0)
	lw  t0, 0(t0)
	li  t1, -4412
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -4412
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -4416
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -4416
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str25
	call  string_add
	li  t0, -4420
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -4420
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -220(s0)
	lw  t0, 0(t0)
	li  t1, -4424
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -4424
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -4428
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -4428
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str26
	call  string_add
	li  t0, -4432
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -4432
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -228(s0)
	lw  t0, 0(t0)
	li  t1, -4436
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -4436
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -4440
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -4440
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str27
	call  string_add
	li  t0, -4444
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -4444
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -236(s0)
	lw  t0, 0(t0)
	li  t1, -4448
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -4448
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -4452
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -4452
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str28
	call  string_add
	li  t0, -4456
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -4456
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -244(s0)
	lw  t0, 0(t0)
	li  t1, -4460
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -4460
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -4464
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -4464
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str29
	call  string_add
	li  t0, -4468
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -4468
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -252(s0)
	lw  t0, 0(t0)
	li  t1, -4472
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -4472
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -4476
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -4476
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str30
	call  string_add
	li  t0, -4480
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -4480
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -260(s0)
	lw  t0, 0(t0)
	li  t1, -4484
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -4484
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -4488
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -4488
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str31
	call  string_add
	li  t0, -4492
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -4492
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -268(s0)
	lw  t0, 0(t0)
	li  t1, -4496
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -4496
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -4500
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -4500
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str32
	call  string_add
	li  t0, -4504
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -4504
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -276(s0)
	lw  t0, 0(t0)
	li  t1, -4508
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -4508
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -4512
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -4512
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str33
	call  string_add
	li  t0, -4516
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -4516
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -284(s0)
	lw  t0, 0(t0)
	li  t1, -4520
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -4520
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -4524
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -4524
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str34
	call  string_add
	li  t0, -4528
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -4528
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -292(s0)
	lw  t0, 0(t0)
	li  t1, -4532
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -4532
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -4536
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -4536
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str35
	call  string_add
	li  t0, -4540
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -4540
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -300(s0)
	lw  t0, 0(t0)
	li  t1, -4544
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -4544
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -4548
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -4548
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str36
	call  string_add
	li  t0, -4552
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -4552
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -308(s0)
	lw  t0, 0(t0)
	li  t1, -4556
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -4556
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -4560
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -4560
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str37
	call  string_add
	li  t0, -4564
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -4564
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -316(s0)
	lw  t0, 0(t0)
	li  t1, -4568
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -4568
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -4572
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -4572
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str38
	call  string_add
	li  t0, -4576
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -4576
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -324(s0)
	lw  t0, 0(t0)
	li  t1, -4580
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -4580
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -4584
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -4584
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str39
	call  string_add
	li  t0, -4588
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -4588
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -332(s0)
	lw  t0, 0(t0)
	li  t1, -4592
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -4592
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -4596
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -4596
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str40
	call  string_add
	li  t0, -4600
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -4600
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -340(s0)
	lw  t0, 0(t0)
	li  t1, -4604
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -4604
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -4608
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -4608
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str41
	call  string_add
	li  t0, -4612
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -4612
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -348(s0)
	lw  t0, 0(t0)
	li  t1, -4616
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -4616
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -4620
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -4620
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str42
	call  string_add
	li  t0, -4624
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -4624
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -356(s0)
	lw  t0, 0(t0)
	li  t1, -4628
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -4628
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -4632
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -4632
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str43
	call  string_add
	li  t0, -4636
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -4636
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -364(s0)
	lw  t0, 0(t0)
	li  t1, -4640
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -4640
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -4644
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -4644
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str44
	call  string_add
	li  t0, -4648
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -4648
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -372(s0)
	lw  t0, 0(t0)
	li  t1, -4652
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -4652
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -4656
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -4656
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str45
	call  string_add
	li  t0, -4660
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -4660
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -380(s0)
	lw  t0, 0(t0)
	li  t1, -4664
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -4664
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -4668
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -4668
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str46
	call  string_add
	li  t0, -4672
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -4672
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -388(s0)
	lw  t0, 0(t0)
	li  t1, -4676
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -4676
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -4680
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -4680
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str47
	call  string_add
	li  t0, -4684
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -4684
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -396(s0)
	lw  t0, 0(t0)
	li  t1, -4688
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -4688
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -4692
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -4692
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str48
	call  string_add
	li  t0, -4696
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -4696
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -404(s0)
	lw  t0, 0(t0)
	li  t1, -4700
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -4700
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -4704
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -4704
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str49
	call  string_add
	li  t0, -4708
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -4708
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -412(s0)
	lw  t0, 0(t0)
	li  t1, -4712
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -4712
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -4716
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -4716
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str50
	call  string_add
	li  t0, -4720
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -4720
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -420(s0)
	lw  t0, 0(t0)
	li  t1, -4724
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -4724
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -4728
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -4728
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str51
	call  string_add
	li  t0, -4732
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -4732
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -428(s0)
	lw  t0, 0(t0)
	li  t1, -4736
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -4736
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -4740
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -4740
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str52
	call  string_add
	li  t0, -4744
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -4744
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -436(s0)
	lw  t0, 0(t0)
	li  t1, -4748
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -4748
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -4752
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -4752
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str53
	call  string_add
	li  t0, -4756
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -4756
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -444(s0)
	lw  t0, 0(t0)
	li  t1, -4760
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -4760
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -4764
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -4764
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str54
	call  string_add
	li  t0, -4768
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -4768
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -452(s0)
	lw  t0, 0(t0)
	li  t1, -4772
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -4772
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -4776
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -4776
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str55
	call  string_add
	li  t0, -4780
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -4780
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -460(s0)
	lw  t0, 0(t0)
	li  t1, -4784
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -4784
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -4788
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -4788
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str56
	call  string_add
	li  t0, -4792
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -4792
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -468(s0)
	lw  t0, 0(t0)
	li  t1, -4796
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -4796
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -4800
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -4800
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str57
	call  string_add
	li  t0, -4804
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -4804
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -476(s0)
	lw  t0, 0(t0)
	li  t1, -4808
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -4808
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -4812
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -4812
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str58
	call  string_add
	li  t0, -4816
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -4816
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -484(s0)
	lw  t0, 0(t0)
	li  t1, -4820
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -4820
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -4824
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -4824
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str59
	call  string_add
	li  t0, -4828
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -4828
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -492(s0)
	lw  t0, 0(t0)
	li  t1, -4832
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -4832
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -4836
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -4836
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str60
	call  string_add
	li  t0, -4840
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -4840
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -500(s0)
	lw  t0, 0(t0)
	li  t1, -4844
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -4844
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -4848
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -4848
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str61
	call  string_add
	li  t0, -4852
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -4852
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -508(s0)
	lw  t0, 0(t0)
	li  t1, -4856
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -4856
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -4860
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -4860
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str62
	call  string_add
	li  t0, -4864
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -4864
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -516(s0)
	lw  t0, 0(t0)
	li  t1, -4868
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -4868
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -4872
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -4872
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str63
	call  string_add
	li  t0, -4876
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -4876
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -524(s0)
	lw  t0, 0(t0)
	li  t1, -4880
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -4880
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -4884
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -4884
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str64
	call  string_add
	li  t0, -4888
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -4888
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -532(s0)
	lw  t0, 0(t0)
	li  t1, -4892
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -4892
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -4896
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -4896
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str65
	call  string_add
	li  t0, -4900
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -4900
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -540(s0)
	lw  t0, 0(t0)
	li  t1, -4904
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -4904
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -4908
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -4908
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str66
	call  string_add
	li  t0, -4912
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -4912
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -548(s0)
	lw  t0, 0(t0)
	li  t1, -4916
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -4916
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -4920
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -4920
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str67
	call  string_add
	li  t0, -4924
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -4924
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -556(s0)
	lw  t0, 0(t0)
	li  t1, -4928
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -4928
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -4932
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -4932
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str68
	call  string_add
	li  t0, -4936
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -4936
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -564(s0)
	lw  t0, 0(t0)
	li  t1, -4940
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -4940
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -4944
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -4944
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str69
	call  string_add
	li  t0, -4948
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -4948
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -572(s0)
	lw  t0, 0(t0)
	li  t1, -4952
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -4952
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -4956
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -4956
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str70
	call  string_add
	li  t0, -4960
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -4960
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -580(s0)
	lw  t0, 0(t0)
	li  t1, -4964
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -4964
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -4968
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -4968
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str71
	call  string_add
	li  t0, -4972
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -4972
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -588(s0)
	lw  t0, 0(t0)
	li  t1, -4976
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -4976
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -4980
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -4980
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str72
	call  string_add
	li  t0, -4984
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -4984
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -596(s0)
	lw  t0, 0(t0)
	li  t1, -4988
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -4988
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -4992
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -4992
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str73
	call  string_add
	li  t0, -4996
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -4996
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -604(s0)
	lw  t0, 0(t0)
	li  t1, -5000
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -5000
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -5004
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -5004
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str74
	call  string_add
	li  t0, -5008
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -5008
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -612(s0)
	lw  t0, 0(t0)
	li  t1, -5012
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -5012
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -5016
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -5016
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str75
	call  string_add
	li  t0, -5020
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -5020
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -620(s0)
	lw  t0, 0(t0)
	li  t1, -5024
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -5024
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -5028
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -5028
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str76
	call  string_add
	li  t0, -5032
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -5032
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -628(s0)
	lw  t0, 0(t0)
	li  t1, -5036
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -5036
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -5040
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -5040
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str77
	call  string_add
	li  t0, -5044
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -5044
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -636(s0)
	lw  t0, 0(t0)
	li  t1, -5048
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -5048
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -5052
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -5052
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str78
	call  string_add
	li  t0, -5056
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -5056
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -644(s0)
	lw  t0, 0(t0)
	li  t1, -5060
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -5060
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -5064
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -5064
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str79
	call  string_add
	li  t0, -5068
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -5068
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -652(s0)
	lw  t0, 0(t0)
	li  t1, -5072
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -5072
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -5076
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -5076
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str80
	call  string_add
	li  t0, -5080
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -5080
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -660(s0)
	lw  t0, 0(t0)
	li  t1, -5084
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -5084
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -5088
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -5088
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str81
	call  string_add
	li  t0, -5092
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -5092
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -668(s0)
	lw  t0, 0(t0)
	li  t1, -5096
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -5096
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -5100
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -5100
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str82
	call  string_add
	li  t0, -5104
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -5104
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -676(s0)
	lw  t0, 0(t0)
	li  t1, -5108
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -5108
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -5112
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -5112
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str83
	call  string_add
	li  t0, -5116
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -5116
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -684(s0)
	lw  t0, 0(t0)
	li  t1, -5120
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -5120
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -5124
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -5124
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str84
	call  string_add
	li  t0, -5128
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -5128
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -692(s0)
	lw  t0, 0(t0)
	li  t1, -5132
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -5132
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -5136
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -5136
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str85
	call  string_add
	li  t0, -5140
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -5140
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -700(s0)
	lw  t0, 0(t0)
	li  t1, -5144
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -5144
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -5148
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -5148
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str86
	call  string_add
	li  t0, -5152
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -5152
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -708(s0)
	lw  t0, 0(t0)
	li  t1, -5156
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -5156
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -5160
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -5160
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str87
	call  string_add
	li  t0, -5164
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -5164
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -716(s0)
	lw  t0, 0(t0)
	li  t1, -5168
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -5168
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -5172
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -5172
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str88
	call  string_add
	li  t0, -5176
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -5176
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -724(s0)
	lw  t0, 0(t0)
	li  t1, -5180
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -5180
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -5184
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -5184
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str89
	call  string_add
	li  t0, -5188
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -5188
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -732(s0)
	lw  t0, 0(t0)
	li  t1, -5192
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -5192
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -5196
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -5196
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str90
	call  string_add
	li  t0, -5200
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -5200
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -740(s0)
	lw  t0, 0(t0)
	li  t1, -5204
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -5204
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -5208
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -5208
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str91
	call  string_add
	li  t0, -5212
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -5212
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -748(s0)
	lw  t0, 0(t0)
	li  t1, -5216
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -5216
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -5220
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -5220
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str92
	call  string_add
	li  t0, -5224
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -5224
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -756(s0)
	lw  t0, 0(t0)
	li  t1, -5228
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -5228
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -5232
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -5232
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str93
	call  string_add
	li  t0, -5236
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -5236
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -764(s0)
	lw  t0, 0(t0)
	li  t1, -5240
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -5240
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -5244
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -5244
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str94
	call  string_add
	li  t0, -5248
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -5248
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -772(s0)
	lw  t0, 0(t0)
	li  t1, -5252
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -5252
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -5256
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -5256
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str95
	call  string_add
	li  t0, -5260
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -5260
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -780(s0)
	lw  t0, 0(t0)
	li  t1, -5264
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -5264
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -5268
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -5268
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str96
	call  string_add
	li  t0, -5272
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -5272
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -788(s0)
	lw  t0, 0(t0)
	li  t1, -5276
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -5276
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -5280
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -5280
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str97
	call  string_add
	li  t0, -5284
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -5284
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -796(s0)
	lw  t0, 0(t0)
	li  t1, -5288
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -5288
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -5292
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -5292
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str98
	call  string_add
	li  t0, -5296
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -5296
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -804(s0)
	lw  t0, 0(t0)
	li  t1, -5300
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -5300
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -5304
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -5304
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str99
	call  string_add
	li  t0, -5308
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -5308
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -812(s0)
	lw  t0, 0(t0)
	li  t1, -5312
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -5312
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -5316
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -5316
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str100
	call  string_add
	li  t0, -5320
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -5320
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -820(s0)
	lw  t0, 0(t0)
	li  t1, -5324
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -5324
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -5328
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -5328
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str101
	call  string_add
	li  t0, -5332
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -5332
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -828(s0)
	lw  t0, 0(t0)
	li  t1, -5336
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -5336
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -5340
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -5340
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str102
	call  string_add
	li  t0, -5344
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -5344
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -836(s0)
	lw  t0, 0(t0)
	li  t1, -5348
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -5348
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -5352
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -5352
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str103
	call  string_add
	li  t0, -5356
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -5356
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -844(s0)
	lw  t0, 0(t0)
	li  t1, -5360
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -5360
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -5364
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -5364
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str104
	call  string_add
	li  t0, -5368
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -5368
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -852(s0)
	lw  t0, 0(t0)
	li  t1, -5372
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -5372
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -5376
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -5376
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str105
	call  string_add
	li  t0, -5380
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -5380
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -860(s0)
	lw  t0, 0(t0)
	li  t1, -5384
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -5384
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -5388
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -5388
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str106
	call  string_add
	li  t0, -5392
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -5392
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -868(s0)
	lw  t0, 0(t0)
	li  t1, -5396
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -5396
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -5400
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -5400
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str107
	call  string_add
	li  t0, -5404
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -5404
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -876(s0)
	lw  t0, 0(t0)
	li  t1, -5408
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -5408
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -5412
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -5412
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str108
	call  string_add
	li  t0, -5416
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -5416
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -884(s0)
	lw  t0, 0(t0)
	li  t1, -5420
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -5420
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -5424
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -5424
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str109
	call  string_add
	li  t0, -5428
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -5428
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -892(s0)
	lw  t0, 0(t0)
	li  t1, -5432
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -5432
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -5436
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -5436
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str110
	call  string_add
	li  t0, -5440
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -5440
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -900(s0)
	lw  t0, 0(t0)
	li  t1, -5444
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -5444
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -5448
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -5448
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str111
	call  string_add
	li  t0, -5452
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -5452
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -908(s0)
	lw  t0, 0(t0)
	li  t1, -5456
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -5456
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -5460
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -5460
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str112
	call  string_add
	li  t0, -5464
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -5464
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -916(s0)
	lw  t0, 0(t0)
	li  t1, -5468
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -5468
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -5472
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -5472
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str113
	call  string_add
	li  t0, -5476
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -5476
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -924(s0)
	lw  t0, 0(t0)
	li  t1, -5480
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -5480
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -5484
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -5484
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str114
	call  string_add
	li  t0, -5488
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -5488
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -932(s0)
	lw  t0, 0(t0)
	li  t1, -5492
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -5492
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -5496
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -5496
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str115
	call  string_add
	li  t0, -5500
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -5500
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -940(s0)
	lw  t0, 0(t0)
	li  t1, -5504
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -5504
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -5508
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -5508
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str116
	call  string_add
	li  t0, -5512
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -5512
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -948(s0)
	lw  t0, 0(t0)
	li  t1, -5516
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -5516
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -5520
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -5520
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str117
	call  string_add
	li  t0, -5524
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -5524
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -956(s0)
	lw  t0, 0(t0)
	li  t1, -5528
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -5528
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -5532
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -5532
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str118
	call  string_add
	li  t0, -5536
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -5536
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -964(s0)
	lw  t0, 0(t0)
	li  t1, -5540
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -5540
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -5544
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -5544
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str119
	call  string_add
	li  t0, -5548
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -5548
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -972(s0)
	lw  t0, 0(t0)
	li  t1, -5552
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -5552
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -5556
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -5556
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str120
	call  string_add
	li  t0, -5560
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -5560
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -980(s0)
	lw  t0, 0(t0)
	li  t1, -5564
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -5564
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -5568
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -5568
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str121
	call  string_add
	li  t0, -5572
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -5572
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -988(s0)
	lw  t0, 0(t0)
	li  t1, -5576
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -5576
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -5580
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -5580
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str122
	call  string_add
	li  t0, -5584
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -5584
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -996(s0)
	lw  t0, 0(t0)
	li  t1, -5588
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -5588
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -5592
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -5592
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str123
	call  string_add
	li  t0, -5596
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -5596
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1004(s0)
	lw  t0, 0(t0)
	li  t1, -5600
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -5600
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -5604
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -5604
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str124
	call  string_add
	li  t0, -5608
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -5608
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1012(s0)
	lw  t0, 0(t0)
	li  t1, -5612
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -5612
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -5616
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -5616
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str125
	call  string_add
	li  t0, -5620
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -5620
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1020(s0)
	lw  t0, 0(t0)
	li  t1, -5624
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -5624
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -5628
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -5628
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str126
	call  string_add
	li  t0, -5632
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -5632
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1028(s0)
	lw  t0, 0(t0)
	li  t1, -5636
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -5636
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -5640
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -5640
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str127
	call  string_add
	li  t0, -5644
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -5644
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1036(s0)
	lw  t0, 0(t0)
	li  t1, -5648
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -5648
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -5652
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -5652
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str128
	call  string_add
	li  t0, -5656
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -5656
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1044(s0)
	lw  t0, 0(t0)
	li  t1, -5660
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -5660
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -5664
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -5664
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str129
	call  string_add
	li  t0, -5668
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -5668
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1052(s0)
	lw  t0, 0(t0)
	li  t1, -5672
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -5672
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -5676
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -5676
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str130
	call  string_add
	li  t0, -5680
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -5680
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1060(s0)
	lw  t0, 0(t0)
	li  t1, -5684
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -5684
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -5688
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -5688
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str131
	call  string_add
	li  t0, -5692
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -5692
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1068(s0)
	lw  t0, 0(t0)
	li  t1, -5696
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -5696
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -5700
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -5700
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str132
	call  string_add
	li  t0, -5704
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -5704
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1076(s0)
	lw  t0, 0(t0)
	li  t1, -5708
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -5708
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -5712
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -5712
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str133
	call  string_add
	li  t0, -5716
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -5716
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1084(s0)
	lw  t0, 0(t0)
	li  t1, -5720
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -5720
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -5724
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -5724
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str134
	call  string_add
	li  t0, -5728
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -5728
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1092(s0)
	lw  t0, 0(t0)
	li  t1, -5732
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -5732
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -5736
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -5736
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str135
	call  string_add
	li  t0, -5740
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -5740
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1100(s0)
	lw  t0, 0(t0)
	li  t1, -5744
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -5744
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -5748
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -5748
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str136
	call  string_add
	li  t0, -5752
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -5752
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1108(s0)
	lw  t0, 0(t0)
	li  t1, -5756
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -5756
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -5760
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -5760
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str137
	call  string_add
	li  t0, -5764
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -5764
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1116(s0)
	lw  t0, 0(t0)
	li  t1, -5768
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -5768
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -5772
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -5772
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str138
	call  string_add
	li  t0, -5776
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -5776
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1124(s0)
	lw  t0, 0(t0)
	li  t1, -5780
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -5780
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -5784
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -5784
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str139
	call  string_add
	li  t0, -5788
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -5788
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1132(s0)
	lw  t0, 0(t0)
	li  t1, -5792
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -5792
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -5796
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -5796
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str140
	call  string_add
	li  t0, -5800
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -5800
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1140(s0)
	lw  t0, 0(t0)
	li  t1, -5804
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -5804
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -5808
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -5808
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str141
	call  string_add
	li  t0, -5812
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -5812
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1148(s0)
	lw  t0, 0(t0)
	li  t1, -5816
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -5816
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -5820
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -5820
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str142
	call  string_add
	li  t0, -5824
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -5824
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1156(s0)
	lw  t0, 0(t0)
	li  t1, -5828
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -5828
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -5832
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -5832
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str143
	call  string_add
	li  t0, -5836
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -5836
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1164(s0)
	lw  t0, 0(t0)
	li  t1, -5840
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -5840
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -5844
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -5844
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str144
	call  string_add
	li  t0, -5848
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -5848
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1172(s0)
	lw  t0, 0(t0)
	li  t1, -5852
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -5852
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -5856
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -5856
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str145
	call  string_add
	li  t0, -5860
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -5860
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1180(s0)
	lw  t0, 0(t0)
	li  t1, -5864
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -5864
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -5868
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -5868
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str146
	call  string_add
	li  t0, -5872
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -5872
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1188(s0)
	lw  t0, 0(t0)
	li  t1, -5876
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -5876
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -5880
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -5880
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str147
	call  string_add
	li  t0, -5884
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -5884
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1196(s0)
	lw  t0, 0(t0)
	li  t1, -5888
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -5888
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -5892
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -5892
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str148
	call  string_add
	li  t0, -5896
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -5896
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1204(s0)
	lw  t0, 0(t0)
	li  t1, -5900
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -5900
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -5904
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -5904
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str149
	call  string_add
	li  t0, -5908
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -5908
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1212(s0)
	lw  t0, 0(t0)
	li  t1, -5912
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -5912
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -5916
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -5916
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str150
	call  string_add
	li  t0, -5920
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -5920
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1220(s0)
	lw  t0, 0(t0)
	li  t1, -5924
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -5924
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -5928
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -5928
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str151
	call  string_add
	li  t0, -5932
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -5932
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1228(s0)
	lw  t0, 0(t0)
	li  t1, -5936
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -5936
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -5940
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -5940
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str152
	call  string_add
	li  t0, -5944
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -5944
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1236(s0)
	lw  t0, 0(t0)
	li  t1, -5948
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -5948
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -5952
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -5952
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str153
	call  string_add
	li  t0, -5956
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -5956
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1244(s0)
	lw  t0, 0(t0)
	li  t1, -5960
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -5960
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -5964
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -5964
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str154
	call  string_add
	li  t0, -5968
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -5968
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1252(s0)
	lw  t0, 0(t0)
	li  t1, -5972
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -5972
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -5976
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -5976
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str155
	call  string_add
	li  t0, -5980
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -5980
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1260(s0)
	lw  t0, 0(t0)
	li  t1, -5984
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -5984
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -5988
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -5988
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str156
	call  string_add
	li  t0, -5992
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -5992
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1268(s0)
	lw  t0, 0(t0)
	li  t1, -5996
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -5996
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -6000
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -6000
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str157
	call  string_add
	li  t0, -6004
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -6004
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1276(s0)
	lw  t0, 0(t0)
	li  t1, -6008
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -6008
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -6012
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -6012
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str158
	call  string_add
	li  t0, -6016
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -6016
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1284(s0)
	lw  t0, 0(t0)
	li  t1, -6020
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -6020
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -6024
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -6024
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str159
	call  string_add
	li  t0, -6028
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -6028
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1292(s0)
	lw  t0, 0(t0)
	li  t1, -6032
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -6032
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -6036
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -6036
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str160
	call  string_add
	li  t0, -6040
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -6040
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1300(s0)
	lw  t0, 0(t0)
	li  t1, -6044
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -6044
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -6048
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -6048
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str161
	call  string_add
	li  t0, -6052
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -6052
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1308(s0)
	lw  t0, 0(t0)
	li  t1, -6056
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -6056
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -6060
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -6060
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str162
	call  string_add
	li  t0, -6064
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -6064
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1316(s0)
	lw  t0, 0(t0)
	li  t1, -6068
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -6068
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -6072
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -6072
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str163
	call  string_add
	li  t0, -6076
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -6076
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1324(s0)
	lw  t0, 0(t0)
	li  t1, -6080
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -6080
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -6084
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -6084
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str164
	call  string_add
	li  t0, -6088
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -6088
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1332(s0)
	lw  t0, 0(t0)
	li  t1, -6092
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -6092
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -6096
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -6096
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str165
	call  string_add
	li  t0, -6100
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -6100
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1340(s0)
	lw  t0, 0(t0)
	li  t1, -6104
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -6104
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -6108
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -6108
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str166
	call  string_add
	li  t0, -6112
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -6112
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1348(s0)
	lw  t0, 0(t0)
	li  t1, -6116
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -6116
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -6120
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -6120
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str167
	call  string_add
	li  t0, -6124
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -6124
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1356(s0)
	lw  t0, 0(t0)
	li  t1, -6128
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -6128
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -6132
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -6132
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str168
	call  string_add
	li  t0, -6136
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -6136
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1364(s0)
	lw  t0, 0(t0)
	li  t1, -6140
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -6140
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -6144
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -6144
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str169
	call  string_add
	li  t0, -6148
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -6148
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1372(s0)
	lw  t0, 0(t0)
	li  t1, -6152
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -6152
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -6156
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -6156
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str170
	call  string_add
	li  t0, -6160
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -6160
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1380(s0)
	lw  t0, 0(t0)
	li  t1, -6164
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -6164
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -6168
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -6168
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str171
	call  string_add
	li  t0, -6172
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -6172
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1388(s0)
	lw  t0, 0(t0)
	li  t1, -6176
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -6176
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -6180
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -6180
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str172
	call  string_add
	li  t0, -6184
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -6184
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1396(s0)
	lw  t0, 0(t0)
	li  t1, -6188
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -6188
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -6192
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -6192
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str173
	call  string_add
	li  t0, -6196
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -6196
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1404(s0)
	lw  t0, 0(t0)
	li  t1, -6200
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -6200
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -6204
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -6204
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str174
	call  string_add
	li  t0, -6208
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -6208
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1412(s0)
	lw  t0, 0(t0)
	li  t1, -6212
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -6212
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -6216
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -6216
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str175
	call  string_add
	li  t0, -6220
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -6220
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1420(s0)
	lw  t0, 0(t0)
	li  t1, -6224
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -6224
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -6228
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -6228
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str176
	call  string_add
	li  t0, -6232
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -6232
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1428(s0)
	lw  t0, 0(t0)
	li  t1, -6236
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -6236
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -6240
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -6240
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str177
	call  string_add
	li  t0, -6244
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -6244
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1436(s0)
	lw  t0, 0(t0)
	li  t1, -6248
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -6248
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -6252
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -6252
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str178
	call  string_add
	li  t0, -6256
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -6256
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1444(s0)
	lw  t0, 0(t0)
	li  t1, -6260
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -6260
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -6264
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -6264
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str179
	call  string_add
	li  t0, -6268
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -6268
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1452(s0)
	lw  t0, 0(t0)
	li  t1, -6272
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -6272
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -6276
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -6276
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str180
	call  string_add
	li  t0, -6280
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -6280
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1460(s0)
	lw  t0, 0(t0)
	li  t1, -6284
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -6284
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -6288
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -6288
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str181
	call  string_add
	li  t0, -6292
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -6292
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1468(s0)
	lw  t0, 0(t0)
	li  t1, -6296
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -6296
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -6300
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -6300
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str182
	call  string_add
	li  t0, -6304
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -6304
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1476(s0)
	lw  t0, 0(t0)
	li  t1, -6308
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -6308
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -6312
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -6312
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str183
	call  string_add
	li  t0, -6316
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -6316
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1484(s0)
	lw  t0, 0(t0)
	li  t1, -6320
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -6320
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -6324
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -6324
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str184
	call  string_add
	li  t0, -6328
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -6328
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1492(s0)
	lw  t0, 0(t0)
	li  t1, -6332
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -6332
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -6336
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -6336
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str185
	call  string_add
	li  t0, -6340
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -6340
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1500(s0)
	lw  t0, 0(t0)
	li  t1, -6344
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -6344
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -6348
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -6348
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str186
	call  string_add
	li  t0, -6352
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -6352
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1508(s0)
	lw  t0, 0(t0)
	li  t1, -6356
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -6356
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -6360
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -6360
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str187
	call  string_add
	li  t0, -6364
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -6364
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1516(s0)
	lw  t0, 0(t0)
	li  t1, -6368
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -6368
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -6372
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -6372
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str188
	call  string_add
	li  t0, -6376
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -6376
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1524(s0)
	lw  t0, 0(t0)
	li  t1, -6380
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -6380
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -6384
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -6384
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str189
	call  string_add
	li  t0, -6388
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -6388
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1532(s0)
	lw  t0, 0(t0)
	li  t1, -6392
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -6392
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -6396
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -6396
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str190
	call  string_add
	li  t0, -6400
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -6400
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1540(s0)
	lw  t0, 0(t0)
	li  t1, -6404
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -6404
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -6408
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -6408
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str191
	call  string_add
	li  t0, -6412
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -6412
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1548(s0)
	lw  t0, 0(t0)
	li  t1, -6416
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -6416
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -6420
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -6420
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str192
	call  string_add
	li  t0, -6424
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -6424
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1556(s0)
	lw  t0, 0(t0)
	li  t1, -6428
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -6428
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -6432
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -6432
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str193
	call  string_add
	li  t0, -6436
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -6436
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1564(s0)
	lw  t0, 0(t0)
	li  t1, -6440
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -6440
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -6444
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -6444
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str194
	call  string_add
	li  t0, -6448
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -6448
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1572(s0)
	lw  t0, 0(t0)
	li  t1, -6452
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -6452
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -6456
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -6456
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str195
	call  string_add
	li  t0, -6460
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -6460
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1580(s0)
	lw  t0, 0(t0)
	li  t1, -6464
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -6464
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -6468
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -6468
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str196
	call  string_add
	li  t0, -6472
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -6472
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1588(s0)
	lw  t0, 0(t0)
	li  t1, -6476
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -6476
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -6480
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -6480
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str197
	call  string_add
	li  t0, -6484
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -6484
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1596(s0)
	lw  t0, 0(t0)
	li  t1, -6488
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -6488
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -6492
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -6492
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str198
	call  string_add
	li  t0, -6496
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -6496
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1604(s0)
	lw  t0, 0(t0)
	li  t1, -6500
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -6500
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -6504
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -6504
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str199
	call  string_add
	li  t0, -6508
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -6508
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1612(s0)
	lw  t0, 0(t0)
	li  t1, -6512
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -6512
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -6516
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -6516
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str200
	call  string_add
	li  t0, -6520
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -6520
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1620(s0)
	lw  t0, 0(t0)
	li  t1, -6524
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -6524
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -6528
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -6528
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str201
	call  string_add
	li  t0, -6532
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -6532
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1628(s0)
	lw  t0, 0(t0)
	li  t1, -6536
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -6536
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -6540
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -6540
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str202
	call  string_add
	li  t0, -6544
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -6544
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1636(s0)
	lw  t0, 0(t0)
	li  t1, -6548
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -6548
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -6552
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -6552
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str203
	call  string_add
	li  t0, -6556
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -6556
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1644(s0)
	lw  t0, 0(t0)
	li  t1, -6560
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -6560
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -6564
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -6564
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str204
	call  string_add
	li  t0, -6568
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -6568
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1652(s0)
	lw  t0, 0(t0)
	li  t1, -6572
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -6572
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -6576
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -6576
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str205
	call  string_add
	li  t0, -6580
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -6580
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1660(s0)
	lw  t0, 0(t0)
	li  t1, -6584
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -6584
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -6588
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -6588
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str206
	call  string_add
	li  t0, -6592
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -6592
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1668(s0)
	lw  t0, 0(t0)
	li  t1, -6596
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -6596
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -6600
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -6600
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str207
	call  string_add
	li  t0, -6604
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -6604
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1676(s0)
	lw  t0, 0(t0)
	li  t1, -6608
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -6608
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -6612
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -6612
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str208
	call  string_add
	li  t0, -6616
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -6616
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1684(s0)
	lw  t0, 0(t0)
	li  t1, -6620
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -6620
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -6624
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -6624
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str209
	call  string_add
	li  t0, -6628
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -6628
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1692(s0)
	lw  t0, 0(t0)
	li  t1, -6632
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -6632
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -6636
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -6636
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str210
	call  string_add
	li  t0, -6640
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -6640
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1700(s0)
	lw  t0, 0(t0)
	li  t1, -6644
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -6644
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -6648
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -6648
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str211
	call  string_add
	li  t0, -6652
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -6652
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1708(s0)
	lw  t0, 0(t0)
	li  t1, -6656
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -6656
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -6660
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -6660
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str212
	call  string_add
	li  t0, -6664
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -6664
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1716(s0)
	lw  t0, 0(t0)
	li  t1, -6668
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -6668
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -6672
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -6672
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str213
	call  string_add
	li  t0, -6676
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -6676
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1724(s0)
	lw  t0, 0(t0)
	li  t1, -6680
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -6680
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -6684
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -6684
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str214
	call  string_add
	li  t0, -6688
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -6688
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1732(s0)
	lw  t0, 0(t0)
	li  t1, -6692
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -6692
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -6696
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -6696
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str215
	call  string_add
	li  t0, -6700
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -6700
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1740(s0)
	lw  t0, 0(t0)
	li  t1, -6704
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -6704
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -6708
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -6708
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str216
	call  string_add
	li  t0, -6712
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -6712
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1748(s0)
	lw  t0, 0(t0)
	li  t1, -6716
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -6716
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -6720
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -6720
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str217
	call  string_add
	li  t0, -6724
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -6724
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1756(s0)
	lw  t0, 0(t0)
	li  t1, -6728
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -6728
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -6732
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -6732
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str218
	call  string_add
	li  t0, -6736
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -6736
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1764(s0)
	lw  t0, 0(t0)
	li  t1, -6740
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -6740
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -6744
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -6744
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str219
	call  string_add
	li  t0, -6748
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -6748
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1772(s0)
	lw  t0, 0(t0)
	li  t1, -6752
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -6752
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -6756
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -6756
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str220
	call  string_add
	li  t0, -6760
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -6760
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1780(s0)
	lw  t0, 0(t0)
	li  t1, -6764
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -6764
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -6768
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -6768
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str221
	call  string_add
	li  t0, -6772
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -6772
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1788(s0)
	lw  t0, 0(t0)
	li  t1, -6776
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -6776
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -6780
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -6780
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str222
	call  string_add
	li  t0, -6784
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -6784
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1796(s0)
	lw  t0, 0(t0)
	li  t1, -6788
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -6788
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -6792
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -6792
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str223
	call  string_add
	li  t0, -6796
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -6796
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1804(s0)
	lw  t0, 0(t0)
	li  t1, -6800
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -6800
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -6804
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -6804
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str224
	call  string_add
	li  t0, -6808
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -6808
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1812(s0)
	lw  t0, 0(t0)
	li  t1, -6812
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -6812
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -6816
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -6816
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str225
	call  string_add
	li  t0, -6820
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -6820
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1820(s0)
	lw  t0, 0(t0)
	li  t1, -6824
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -6824
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -6828
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -6828
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str226
	call  string_add
	li  t0, -6832
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -6832
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1828(s0)
	lw  t0, 0(t0)
	li  t1, -6836
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -6836
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -6840
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -6840
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str227
	call  string_add
	li  t0, -6844
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -6844
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1836(s0)
	lw  t0, 0(t0)
	li  t1, -6848
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -6848
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -6852
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -6852
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str228
	call  string_add
	li  t0, -6856
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -6856
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1844(s0)
	lw  t0, 0(t0)
	li  t1, -6860
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -6860
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -6864
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -6864
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str229
	call  string_add
	li  t0, -6868
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -6868
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1852(s0)
	lw  t0, 0(t0)
	li  t1, -6872
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -6872
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -6876
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -6876
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str230
	call  string_add
	li  t0, -6880
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -6880
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1860(s0)
	lw  t0, 0(t0)
	li  t1, -6884
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -6884
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -6888
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -6888
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str231
	call  string_add
	li  t0, -6892
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -6892
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1868(s0)
	lw  t0, 0(t0)
	li  t1, -6896
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -6896
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -6900
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -6900
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str232
	call  string_add
	li  t0, -6904
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -6904
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1876(s0)
	lw  t0, 0(t0)
	li  t1, -6908
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -6908
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -6912
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -6912
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str233
	call  string_add
	li  t0, -6916
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -6916
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1884(s0)
	lw  t0, 0(t0)
	li  t1, -6920
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -6920
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -6924
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -6924
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str234
	call  string_add
	li  t0, -6928
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -6928
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1892(s0)
	lw  t0, 0(t0)
	li  t1, -6932
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -6932
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -6936
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -6936
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str235
	call  string_add
	li  t0, -6940
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -6940
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1900(s0)
	lw  t0, 0(t0)
	li  t1, -6944
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -6944
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -6948
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -6948
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str236
	call  string_add
	li  t0, -6952
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -6952
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1908(s0)
	lw  t0, 0(t0)
	li  t1, -6956
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -6956
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -6960
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -6960
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str237
	call  string_add
	li  t0, -6964
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -6964
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1916(s0)
	lw  t0, 0(t0)
	li  t1, -6968
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -6968
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -6972
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -6972
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str238
	call  string_add
	li  t0, -6976
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -6976
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1924(s0)
	lw  t0, 0(t0)
	li  t1, -6980
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -6980
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -6984
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -6984
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str239
	call  string_add
	li  t0, -6988
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -6988
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1932(s0)
	lw  t0, 0(t0)
	li  t1, -6992
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -6992
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -6996
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -6996
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str240
	call  string_add
	li  t0, -7000
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -7000
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1940(s0)
	lw  t0, 0(t0)
	li  t1, -7004
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -7004
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -7008
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -7008
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str241
	call  string_add
	li  t0, -7012
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -7012
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1948(s0)
	lw  t0, 0(t0)
	li  t1, -7016
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -7016
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -7020
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -7020
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str242
	call  string_add
	li  t0, -7024
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -7024
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1956(s0)
	lw  t0, 0(t0)
	li  t1, -7028
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -7028
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -7032
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -7032
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str243
	call  string_add
	li  t0, -7036
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -7036
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1964(s0)
	lw  t0, 0(t0)
	li  t1, -7040
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -7040
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -7044
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -7044
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str244
	call  string_add
	li  t0, -7048
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -7048
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1972(s0)
	lw  t0, 0(t0)
	li  t1, -7052
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -7052
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -7056
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -7056
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str245
	call  string_add
	li  t0, -7060
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -7060
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1980(s0)
	lw  t0, 0(t0)
	li  t1, -7064
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -7064
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -7068
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -7068
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str246
	call  string_add
	li  t0, -7072
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -7072
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1988(s0)
	lw  t0, 0(t0)
	li  t1, -7076
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -7076
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -7080
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -7080
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str247
	call  string_add
	li  t0, -7084
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -7084
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1996(s0)
	lw  t0, 0(t0)
	li  t1, -7088
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -7088
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -7092
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -7092
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str248
	call  string_add
	li  t0, -7096
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -7096
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -2004(s0)
	lw  t0, 0(t0)
	li  t1, -7100
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -7100
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -7104
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -7104
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str249
	call  string_add
	li  t0, -7108
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -7108
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -2012(s0)
	lw  t0, 0(t0)
	li  t1, -7112
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -7112
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -7116
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -7116
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str250
	call  string_add
	li  t0, -7120
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -7120
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -2020(s0)
	lw  t0, 0(t0)
	li  t1, -7124
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -7124
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -7128
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -7128
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str251
	call  string_add
	li  t0, -7132
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -7132
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -2028(s0)
	lw  t0, 0(t0)
	li  t1, -7136
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -7136
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -7140
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -7140
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str252
	call  string_add
	li  t0, -7144
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -7144
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -2036(s0)
	lw  t0, 0(t0)
	li  t1, -7148
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -7148
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -7152
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -7152
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str253
	call  string_add
	li  t0, -7156
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -7156
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -2044(s0)
	lw  t0, 0(t0)
	li  t1, -7160
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -7160
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -7164
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -7164
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str254
	call  string_add
	li  t0, -7168
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -7168
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	li  t0, -2052
	add  t0, t0, s0
	lw  t0, 0(t0)
	lw  t0, 0(t0)
	li  t1, -7172
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -7172
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -7176
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -7176
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str255
	call  string_add
	li  t0, -7180
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -7180
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	li  t0, -2060
	add  t0, t0, s0
	lw  t0, 0(t0)
	lw  t0, 0(t0)
	li  t1, -7184
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -7184
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -7188
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -7188
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str256
	call  string_add
	li  t0, -7192
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -7192
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	la  a0, .$str257
	call  println
	lw  t0, -20(s0)
	lw  t0, 0(t0)
	li  t1, -7196
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -7196
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -7200
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -7200
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str258
	call  string_add
	li  t0, -7204
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -7204
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -28(s0)
	lw  t0, 0(t0)
	li  t1, -7208
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -7208
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -7212
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -7212
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str259
	call  string_add
	li  t0, -7216
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -7216
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -36(s0)
	lw  t0, 0(t0)
	li  t1, -7220
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -7220
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -7224
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -7224
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str260
	call  string_add
	li  t0, -7228
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -7228
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -44(s0)
	lw  t0, 0(t0)
	li  t1, -7232
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -7232
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -7236
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -7236
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str261
	call  string_add
	li  t0, -7240
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -7240
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -52(s0)
	lw  t0, 0(t0)
	li  t1, -7244
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -7244
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -7248
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -7248
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str262
	call  string_add
	li  t0, -7252
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -7252
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -60(s0)
	lw  t0, 0(t0)
	li  t1, -7256
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -7256
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -7260
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -7260
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str263
	call  string_add
	li  t0, -7264
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -7264
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -68(s0)
	lw  t0, 0(t0)
	li  t1, -7268
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -7268
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -7272
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -7272
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str264
	call  string_add
	li  t0, -7276
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -7276
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -76(s0)
	lw  t0, 0(t0)
	li  t1, -7280
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -7280
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -7284
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -7284
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str265
	call  string_add
	li  t0, -7288
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -7288
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -84(s0)
	lw  t0, 0(t0)
	li  t1, -7292
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -7292
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -7296
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -7296
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str266
	call  string_add
	li  t0, -7300
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -7300
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -92(s0)
	lw  t0, 0(t0)
	li  t1, -7304
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -7304
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -7308
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -7308
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str267
	call  string_add
	li  t0, -7312
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -7312
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -100(s0)
	lw  t0, 0(t0)
	li  t1, -7316
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -7316
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -7320
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -7320
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str268
	call  string_add
	li  t0, -7324
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -7324
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -108(s0)
	lw  t0, 0(t0)
	li  t1, -7328
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -7328
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -7332
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -7332
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str269
	call  string_add
	li  t0, -7336
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -7336
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -116(s0)
	lw  t0, 0(t0)
	li  t1, -7340
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -7340
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -7344
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -7344
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str270
	call  string_add
	li  t0, -7348
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -7348
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -124(s0)
	lw  t0, 0(t0)
	li  t1, -7352
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -7352
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -7356
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -7356
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str271
	call  string_add
	li  t0, -7360
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -7360
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -132(s0)
	lw  t0, 0(t0)
	li  t1, -7364
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -7364
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -7368
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -7368
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str272
	call  string_add
	li  t0, -7372
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -7372
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -140(s0)
	lw  t0, 0(t0)
	li  t1, -7376
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -7376
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -7380
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -7380
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str273
	call  string_add
	li  t0, -7384
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -7384
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -148(s0)
	lw  t0, 0(t0)
	li  t1, -7388
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -7388
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -7392
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -7392
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str274
	call  string_add
	li  t0, -7396
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -7396
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -156(s0)
	lw  t0, 0(t0)
	li  t1, -7400
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -7400
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -7404
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -7404
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str275
	call  string_add
	li  t0, -7408
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -7408
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -164(s0)
	lw  t0, 0(t0)
	li  t1, -7412
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -7412
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -7416
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -7416
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str276
	call  string_add
	li  t0, -7420
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -7420
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -172(s0)
	lw  t0, 0(t0)
	li  t1, -7424
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -7424
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -7428
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -7428
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str277
	call  string_add
	li  t0, -7432
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -7432
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -180(s0)
	lw  t0, 0(t0)
	li  t1, -7436
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -7436
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -7440
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -7440
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str278
	call  string_add
	li  t0, -7444
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -7444
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -188(s0)
	lw  t0, 0(t0)
	li  t1, -7448
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -7448
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -7452
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -7452
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str279
	call  string_add
	li  t0, -7456
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -7456
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -196(s0)
	lw  t0, 0(t0)
	li  t1, -7460
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -7460
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -7464
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -7464
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str280
	call  string_add
	li  t0, -7468
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -7468
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -204(s0)
	lw  t0, 0(t0)
	li  t1, -7472
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -7472
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -7476
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -7476
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str281
	call  string_add
	li  t0, -7480
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -7480
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -212(s0)
	lw  t0, 0(t0)
	li  t1, -7484
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -7484
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -7488
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -7488
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str282
	call  string_add
	li  t0, -7492
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -7492
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -220(s0)
	lw  t0, 0(t0)
	li  t1, -7496
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -7496
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -7500
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -7500
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str283
	call  string_add
	li  t0, -7504
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -7504
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -228(s0)
	lw  t0, 0(t0)
	li  t1, -7508
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -7508
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -7512
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -7512
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str284
	call  string_add
	li  t0, -7516
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -7516
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -236(s0)
	lw  t0, 0(t0)
	li  t1, -7520
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -7520
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -7524
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -7524
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str285
	call  string_add
	li  t0, -7528
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -7528
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -244(s0)
	lw  t0, 0(t0)
	li  t1, -7532
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -7532
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -7536
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -7536
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str286
	call  string_add
	li  t0, -7540
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -7540
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -252(s0)
	lw  t0, 0(t0)
	li  t1, -7544
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -7544
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -7548
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -7548
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str287
	call  string_add
	li  t0, -7552
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -7552
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -260(s0)
	lw  t0, 0(t0)
	li  t1, -7556
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -7556
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -7560
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -7560
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str288
	call  string_add
	li  t0, -7564
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -7564
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -268(s0)
	lw  t0, 0(t0)
	li  t1, -7568
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -7568
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -7572
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -7572
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str289
	call  string_add
	li  t0, -7576
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -7576
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -276(s0)
	lw  t0, 0(t0)
	li  t1, -7580
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -7580
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -7584
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -7584
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str290
	call  string_add
	li  t0, -7588
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -7588
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -284(s0)
	lw  t0, 0(t0)
	li  t1, -7592
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -7592
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -7596
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -7596
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str291
	call  string_add
	li  t0, -7600
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -7600
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -292(s0)
	lw  t0, 0(t0)
	li  t1, -7604
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -7604
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -7608
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -7608
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str292
	call  string_add
	li  t0, -7612
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -7612
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -300(s0)
	lw  t0, 0(t0)
	li  t1, -7616
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -7616
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -7620
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -7620
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str293
	call  string_add
	li  t0, -7624
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -7624
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -308(s0)
	lw  t0, 0(t0)
	li  t1, -7628
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -7628
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -7632
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -7632
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str294
	call  string_add
	li  t0, -7636
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -7636
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -316(s0)
	lw  t0, 0(t0)
	li  t1, -7640
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -7640
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -7644
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -7644
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str295
	call  string_add
	li  t0, -7648
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -7648
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -324(s0)
	lw  t0, 0(t0)
	li  t1, -7652
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -7652
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -7656
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -7656
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str296
	call  string_add
	li  t0, -7660
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -7660
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -332(s0)
	lw  t0, 0(t0)
	li  t1, -7664
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -7664
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -7668
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -7668
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str297
	call  string_add
	li  t0, -7672
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -7672
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -340(s0)
	lw  t0, 0(t0)
	li  t1, -7676
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -7676
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -7680
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -7680
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str298
	call  string_add
	li  t0, -7684
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -7684
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -348(s0)
	lw  t0, 0(t0)
	li  t1, -7688
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -7688
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -7692
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -7692
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str299
	call  string_add
	li  t0, -7696
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -7696
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -356(s0)
	lw  t0, 0(t0)
	li  t1, -7700
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -7700
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -7704
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -7704
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str300
	call  string_add
	li  t0, -7708
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -7708
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -364(s0)
	lw  t0, 0(t0)
	li  t1, -7712
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -7712
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -7716
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -7716
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str301
	call  string_add
	li  t0, -7720
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -7720
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -372(s0)
	lw  t0, 0(t0)
	li  t1, -7724
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -7724
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -7728
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -7728
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str302
	call  string_add
	li  t0, -7732
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -7732
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -380(s0)
	lw  t0, 0(t0)
	li  t1, -7736
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -7736
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -7740
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -7740
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str303
	call  string_add
	li  t0, -7744
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -7744
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -388(s0)
	lw  t0, 0(t0)
	li  t1, -7748
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -7748
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -7752
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -7752
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str304
	call  string_add
	li  t0, -7756
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -7756
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -396(s0)
	lw  t0, 0(t0)
	li  t1, -7760
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -7760
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -7764
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -7764
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str305
	call  string_add
	li  t0, -7768
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -7768
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -404(s0)
	lw  t0, 0(t0)
	li  t1, -7772
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -7772
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -7776
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -7776
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str306
	call  string_add
	li  t0, -7780
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -7780
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -412(s0)
	lw  t0, 0(t0)
	li  t1, -7784
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -7784
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -7788
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -7788
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str307
	call  string_add
	li  t0, -7792
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -7792
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -420(s0)
	lw  t0, 0(t0)
	li  t1, -7796
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -7796
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -7800
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -7800
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str308
	call  string_add
	li  t0, -7804
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -7804
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -428(s0)
	lw  t0, 0(t0)
	li  t1, -7808
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -7808
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -7812
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -7812
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str309
	call  string_add
	li  t0, -7816
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -7816
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -436(s0)
	lw  t0, 0(t0)
	li  t1, -7820
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -7820
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -7824
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -7824
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str310
	call  string_add
	li  t0, -7828
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -7828
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -444(s0)
	lw  t0, 0(t0)
	li  t1, -7832
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -7832
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -7836
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -7836
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str311
	call  string_add
	li  t0, -7840
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -7840
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -452(s0)
	lw  t0, 0(t0)
	li  t1, -7844
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -7844
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -7848
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -7848
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str312
	call  string_add
	li  t0, -7852
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -7852
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -460(s0)
	lw  t0, 0(t0)
	li  t1, -7856
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -7856
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -7860
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -7860
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str313
	call  string_add
	li  t0, -7864
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -7864
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -468(s0)
	lw  t0, 0(t0)
	li  t1, -7868
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -7868
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -7872
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -7872
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str314
	call  string_add
	li  t0, -7876
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -7876
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -476(s0)
	lw  t0, 0(t0)
	li  t1, -7880
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -7880
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -7884
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -7884
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str315
	call  string_add
	li  t0, -7888
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -7888
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -484(s0)
	lw  t0, 0(t0)
	li  t1, -7892
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -7892
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -7896
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -7896
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str316
	call  string_add
	li  t0, -7900
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -7900
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -492(s0)
	lw  t0, 0(t0)
	li  t1, -7904
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -7904
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -7908
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -7908
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str317
	call  string_add
	li  t0, -7912
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -7912
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -500(s0)
	lw  t0, 0(t0)
	li  t1, -7916
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -7916
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -7920
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -7920
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str318
	call  string_add
	li  t0, -7924
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -7924
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -508(s0)
	lw  t0, 0(t0)
	li  t1, -7928
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -7928
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -7932
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -7932
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str319
	call  string_add
	li  t0, -7936
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -7936
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -516(s0)
	lw  t0, 0(t0)
	li  t1, -7940
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -7940
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -7944
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -7944
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str320
	call  string_add
	li  t0, -7948
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -7948
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -524(s0)
	lw  t0, 0(t0)
	li  t1, -7952
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -7952
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -7956
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -7956
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str321
	call  string_add
	li  t0, -7960
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -7960
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -532(s0)
	lw  t0, 0(t0)
	li  t1, -7964
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -7964
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -7968
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -7968
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str322
	call  string_add
	li  t0, -7972
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -7972
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -540(s0)
	lw  t0, 0(t0)
	li  t1, -7976
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -7976
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -7980
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -7980
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str323
	call  string_add
	li  t0, -7984
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -7984
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -548(s0)
	lw  t0, 0(t0)
	li  t1, -7988
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -7988
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -7992
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -7992
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str324
	call  string_add
	li  t0, -7996
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -7996
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -556(s0)
	lw  t0, 0(t0)
	li  t1, -8000
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -8000
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -8004
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -8004
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str325
	call  string_add
	li  t0, -8008
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -8008
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -564(s0)
	lw  t0, 0(t0)
	li  t1, -8012
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -8012
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -8016
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -8016
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str326
	call  string_add
	li  t0, -8020
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -8020
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -572(s0)
	lw  t0, 0(t0)
	li  t1, -8024
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -8024
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -8028
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -8028
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str327
	call  string_add
	li  t0, -8032
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -8032
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -580(s0)
	lw  t0, 0(t0)
	li  t1, -8036
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -8036
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -8040
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -8040
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str328
	call  string_add
	li  t0, -8044
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -8044
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -588(s0)
	lw  t0, 0(t0)
	li  t1, -8048
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -8048
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -8052
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -8052
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str329
	call  string_add
	li  t0, -8056
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -8056
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -596(s0)
	lw  t0, 0(t0)
	li  t1, -8060
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -8060
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -8064
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -8064
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str330
	call  string_add
	li  t0, -8068
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -8068
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -604(s0)
	lw  t0, 0(t0)
	li  t1, -8072
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -8072
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -8076
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -8076
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str331
	call  string_add
	li  t0, -8080
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -8080
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -612(s0)
	lw  t0, 0(t0)
	li  t1, -8084
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -8084
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -8088
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -8088
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str332
	call  string_add
	li  t0, -8092
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -8092
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -620(s0)
	lw  t0, 0(t0)
	li  t1, -8096
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -8096
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -8100
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -8100
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str333
	call  string_add
	li  t0, -8104
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -8104
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -628(s0)
	lw  t0, 0(t0)
	li  t1, -8108
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -8108
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -8112
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -8112
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str334
	call  string_add
	li  t0, -8116
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -8116
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -636(s0)
	lw  t0, 0(t0)
	li  t1, -8120
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -8120
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -8124
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -8124
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str335
	call  string_add
	li  t0, -8128
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -8128
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -644(s0)
	lw  t0, 0(t0)
	li  t1, -8132
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -8132
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -8136
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -8136
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str336
	call  string_add
	li  t0, -8140
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -8140
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -652(s0)
	lw  t0, 0(t0)
	li  t1, -8144
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -8144
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -8148
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -8148
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str337
	call  string_add
	li  t0, -8152
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -8152
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -660(s0)
	lw  t0, 0(t0)
	li  t1, -8156
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -8156
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -8160
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -8160
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str338
	call  string_add
	li  t0, -8164
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -8164
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -668(s0)
	lw  t0, 0(t0)
	li  t1, -8168
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -8168
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -8172
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -8172
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str339
	call  string_add
	li  t0, -8176
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -8176
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -676(s0)
	lw  t0, 0(t0)
	li  t1, -8180
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -8180
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -8184
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -8184
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str340
	call  string_add
	li  t0, -8188
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -8188
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -684(s0)
	lw  t0, 0(t0)
	li  t1, -8192
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -8192
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -8196
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -8196
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str341
	call  string_add
	li  t0, -8200
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -8200
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -692(s0)
	lw  t0, 0(t0)
	li  t1, -8204
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -8204
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -8208
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -8208
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str342
	call  string_add
	li  t0, -8212
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -8212
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -700(s0)
	lw  t0, 0(t0)
	li  t1, -8216
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -8216
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -8220
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -8220
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str343
	call  string_add
	li  t0, -8224
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -8224
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -708(s0)
	lw  t0, 0(t0)
	li  t1, -8228
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -8228
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -8232
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -8232
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str344
	call  string_add
	li  t0, -8236
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -8236
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -716(s0)
	lw  t0, 0(t0)
	li  t1, -8240
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -8240
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -8244
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -8244
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str345
	call  string_add
	li  t0, -8248
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -8248
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -724(s0)
	lw  t0, 0(t0)
	li  t1, -8252
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -8252
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -8256
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -8256
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str346
	call  string_add
	li  t0, -8260
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -8260
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -732(s0)
	lw  t0, 0(t0)
	li  t1, -8264
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -8264
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -8268
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -8268
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str347
	call  string_add
	li  t0, -8272
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -8272
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -740(s0)
	lw  t0, 0(t0)
	li  t1, -8276
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -8276
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -8280
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -8280
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str348
	call  string_add
	li  t0, -8284
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -8284
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -748(s0)
	lw  t0, 0(t0)
	li  t1, -8288
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -8288
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -8292
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -8292
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str349
	call  string_add
	li  t0, -8296
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -8296
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -756(s0)
	lw  t0, 0(t0)
	li  t1, -8300
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -8300
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -8304
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -8304
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str350
	call  string_add
	li  t0, -8308
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -8308
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -764(s0)
	lw  t0, 0(t0)
	li  t1, -8312
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -8312
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -8316
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -8316
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str351
	call  string_add
	li  t0, -8320
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -8320
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -772(s0)
	lw  t0, 0(t0)
	li  t1, -8324
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -8324
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -8328
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -8328
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str352
	call  string_add
	li  t0, -8332
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -8332
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -780(s0)
	lw  t0, 0(t0)
	li  t1, -8336
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -8336
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -8340
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -8340
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str353
	call  string_add
	li  t0, -8344
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -8344
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -788(s0)
	lw  t0, 0(t0)
	li  t1, -8348
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -8348
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -8352
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -8352
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str354
	call  string_add
	li  t0, -8356
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -8356
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -796(s0)
	lw  t0, 0(t0)
	li  t1, -8360
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -8360
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -8364
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -8364
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str355
	call  string_add
	li  t0, -8368
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -8368
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -804(s0)
	lw  t0, 0(t0)
	li  t1, -8372
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -8372
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -8376
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -8376
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str356
	call  string_add
	li  t0, -8380
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -8380
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -812(s0)
	lw  t0, 0(t0)
	li  t1, -8384
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -8384
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -8388
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -8388
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str357
	call  string_add
	li  t0, -8392
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -8392
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -820(s0)
	lw  t0, 0(t0)
	li  t1, -8396
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -8396
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -8400
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -8400
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str358
	call  string_add
	li  t0, -8404
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -8404
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -828(s0)
	lw  t0, 0(t0)
	li  t1, -8408
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -8408
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -8412
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -8412
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str359
	call  string_add
	li  t0, -8416
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -8416
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -836(s0)
	lw  t0, 0(t0)
	li  t1, -8420
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -8420
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -8424
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -8424
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str360
	call  string_add
	li  t0, -8428
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -8428
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -844(s0)
	lw  t0, 0(t0)
	li  t1, -8432
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -8432
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -8436
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -8436
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str361
	call  string_add
	li  t0, -8440
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -8440
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -852(s0)
	lw  t0, 0(t0)
	li  t1, -8444
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -8444
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -8448
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -8448
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str362
	call  string_add
	li  t0, -8452
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -8452
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -860(s0)
	lw  t0, 0(t0)
	li  t1, -8456
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -8456
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -8460
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -8460
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str363
	call  string_add
	li  t0, -8464
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -8464
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -868(s0)
	lw  t0, 0(t0)
	li  t1, -8468
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -8468
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -8472
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -8472
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str364
	call  string_add
	li  t0, -8476
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -8476
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -876(s0)
	lw  t0, 0(t0)
	li  t1, -8480
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -8480
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -8484
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -8484
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str365
	call  string_add
	li  t0, -8488
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -8488
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -884(s0)
	lw  t0, 0(t0)
	li  t1, -8492
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -8492
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -8496
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -8496
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str366
	call  string_add
	li  t0, -8500
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -8500
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -892(s0)
	lw  t0, 0(t0)
	li  t1, -8504
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -8504
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -8508
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -8508
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str367
	call  string_add
	li  t0, -8512
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -8512
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -900(s0)
	lw  t0, 0(t0)
	li  t1, -8516
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -8516
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -8520
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -8520
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str368
	call  string_add
	li  t0, -8524
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -8524
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -908(s0)
	lw  t0, 0(t0)
	li  t1, -8528
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -8528
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -8532
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -8532
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str369
	call  string_add
	li  t0, -8536
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -8536
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -916(s0)
	lw  t0, 0(t0)
	li  t1, -8540
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -8540
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -8544
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -8544
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str370
	call  string_add
	li  t0, -8548
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -8548
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -924(s0)
	lw  t0, 0(t0)
	li  t1, -8552
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -8552
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -8556
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -8556
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str371
	call  string_add
	li  t0, -8560
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -8560
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -932(s0)
	lw  t0, 0(t0)
	li  t1, -8564
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -8564
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -8568
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -8568
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str372
	call  string_add
	li  t0, -8572
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -8572
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -940(s0)
	lw  t0, 0(t0)
	li  t1, -8576
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -8576
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -8580
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -8580
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str373
	call  string_add
	li  t0, -8584
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -8584
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -948(s0)
	lw  t0, 0(t0)
	li  t1, -8588
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -8588
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -8592
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -8592
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str374
	call  string_add
	li  t0, -8596
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -8596
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -956(s0)
	lw  t0, 0(t0)
	li  t1, -8600
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -8600
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -8604
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -8604
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str375
	call  string_add
	li  t0, -8608
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -8608
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -964(s0)
	lw  t0, 0(t0)
	li  t1, -8612
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -8612
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -8616
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -8616
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str376
	call  string_add
	li  t0, -8620
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -8620
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -972(s0)
	lw  t0, 0(t0)
	li  t1, -8624
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -8624
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -8628
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -8628
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str377
	call  string_add
	li  t0, -8632
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -8632
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -980(s0)
	lw  t0, 0(t0)
	li  t1, -8636
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -8636
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -8640
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -8640
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str378
	call  string_add
	li  t0, -8644
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -8644
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -988(s0)
	lw  t0, 0(t0)
	li  t1, -8648
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -8648
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -8652
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -8652
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str379
	call  string_add
	li  t0, -8656
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -8656
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -996(s0)
	lw  t0, 0(t0)
	li  t1, -8660
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -8660
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -8664
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -8664
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str380
	call  string_add
	li  t0, -8668
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -8668
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1004(s0)
	lw  t0, 0(t0)
	li  t1, -8672
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -8672
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -8676
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -8676
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str381
	call  string_add
	li  t0, -8680
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -8680
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1012(s0)
	lw  t0, 0(t0)
	li  t1, -8684
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -8684
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -8688
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -8688
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str382
	call  string_add
	li  t0, -8692
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -8692
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1020(s0)
	lw  t0, 0(t0)
	li  t1, -8696
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -8696
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -8700
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -8700
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str383
	call  string_add
	li  t0, -8704
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -8704
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1028(s0)
	lw  t0, 0(t0)
	li  t1, -8708
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -8708
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -8712
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -8712
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str384
	call  string_add
	li  t0, -8716
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -8716
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1036(s0)
	lw  t0, 0(t0)
	li  t1, -8720
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -8720
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -8724
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -8724
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str385
	call  string_add
	li  t0, -8728
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -8728
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1044(s0)
	lw  t0, 0(t0)
	li  t1, -8732
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -8732
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -8736
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -8736
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str386
	call  string_add
	li  t0, -8740
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -8740
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1052(s0)
	lw  t0, 0(t0)
	li  t1, -8744
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -8744
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -8748
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -8748
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str387
	call  string_add
	li  t0, -8752
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -8752
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1060(s0)
	lw  t0, 0(t0)
	li  t1, -8756
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -8756
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -8760
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -8760
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str388
	call  string_add
	li  t0, -8764
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -8764
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1068(s0)
	lw  t0, 0(t0)
	li  t1, -8768
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -8768
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -8772
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -8772
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str389
	call  string_add
	li  t0, -8776
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -8776
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1076(s0)
	lw  t0, 0(t0)
	li  t1, -8780
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -8780
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -8784
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -8784
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str390
	call  string_add
	li  t0, -8788
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -8788
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1084(s0)
	lw  t0, 0(t0)
	li  t1, -8792
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -8792
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -8796
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -8796
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str391
	call  string_add
	li  t0, -8800
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -8800
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1092(s0)
	lw  t0, 0(t0)
	li  t1, -8804
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -8804
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -8808
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -8808
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str392
	call  string_add
	li  t0, -8812
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -8812
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1100(s0)
	lw  t0, 0(t0)
	li  t1, -8816
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -8816
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -8820
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -8820
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str393
	call  string_add
	li  t0, -8824
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -8824
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1108(s0)
	lw  t0, 0(t0)
	li  t1, -8828
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -8828
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -8832
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -8832
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str394
	call  string_add
	li  t0, -8836
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -8836
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1116(s0)
	lw  t0, 0(t0)
	li  t1, -8840
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -8840
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -8844
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -8844
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str395
	call  string_add
	li  t0, -8848
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -8848
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1124(s0)
	lw  t0, 0(t0)
	li  t1, -8852
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -8852
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -8856
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -8856
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str396
	call  string_add
	li  t0, -8860
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -8860
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1132(s0)
	lw  t0, 0(t0)
	li  t1, -8864
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -8864
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -8868
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -8868
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str397
	call  string_add
	li  t0, -8872
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -8872
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1140(s0)
	lw  t0, 0(t0)
	li  t1, -8876
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -8876
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -8880
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -8880
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str398
	call  string_add
	li  t0, -8884
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -8884
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1148(s0)
	lw  t0, 0(t0)
	li  t1, -8888
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -8888
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -8892
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -8892
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str399
	call  string_add
	li  t0, -8896
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -8896
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1156(s0)
	lw  t0, 0(t0)
	li  t1, -8900
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -8900
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -8904
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -8904
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str400
	call  string_add
	li  t0, -8908
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -8908
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1164(s0)
	lw  t0, 0(t0)
	li  t1, -8912
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -8912
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -8916
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -8916
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str401
	call  string_add
	li  t0, -8920
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -8920
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1172(s0)
	lw  t0, 0(t0)
	li  t1, -8924
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -8924
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -8928
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -8928
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str402
	call  string_add
	li  t0, -8932
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -8932
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1180(s0)
	lw  t0, 0(t0)
	li  t1, -8936
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -8936
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -8940
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -8940
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str403
	call  string_add
	li  t0, -8944
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -8944
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1188(s0)
	lw  t0, 0(t0)
	li  t1, -8948
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -8948
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -8952
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -8952
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str404
	call  string_add
	li  t0, -8956
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -8956
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1196(s0)
	lw  t0, 0(t0)
	li  t1, -8960
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -8960
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -8964
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -8964
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str405
	call  string_add
	li  t0, -8968
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -8968
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1204(s0)
	lw  t0, 0(t0)
	li  t1, -8972
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -8972
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -8976
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -8976
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str406
	call  string_add
	li  t0, -8980
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -8980
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1212(s0)
	lw  t0, 0(t0)
	li  t1, -8984
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -8984
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -8988
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -8988
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str407
	call  string_add
	li  t0, -8992
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -8992
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1220(s0)
	lw  t0, 0(t0)
	li  t1, -8996
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -8996
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -9000
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -9000
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str408
	call  string_add
	li  t0, -9004
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -9004
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1228(s0)
	lw  t0, 0(t0)
	li  t1, -9008
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -9008
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -9012
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -9012
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str409
	call  string_add
	li  t0, -9016
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -9016
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1236(s0)
	lw  t0, 0(t0)
	li  t1, -9020
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -9020
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -9024
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -9024
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str410
	call  string_add
	li  t0, -9028
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -9028
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1244(s0)
	lw  t0, 0(t0)
	li  t1, -9032
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -9032
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -9036
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -9036
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str411
	call  string_add
	li  t0, -9040
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -9040
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1252(s0)
	lw  t0, 0(t0)
	li  t1, -9044
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -9044
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -9048
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -9048
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str412
	call  string_add
	li  t0, -9052
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -9052
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1260(s0)
	lw  t0, 0(t0)
	li  t1, -9056
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -9056
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -9060
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -9060
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str413
	call  string_add
	li  t0, -9064
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -9064
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1268(s0)
	lw  t0, 0(t0)
	li  t1, -9068
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -9068
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -9072
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -9072
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str414
	call  string_add
	li  t0, -9076
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -9076
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1276(s0)
	lw  t0, 0(t0)
	li  t1, -9080
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -9080
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -9084
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -9084
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str415
	call  string_add
	li  t0, -9088
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -9088
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1284(s0)
	lw  t0, 0(t0)
	li  t1, -9092
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -9092
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -9096
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -9096
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str416
	call  string_add
	li  t0, -9100
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -9100
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1292(s0)
	lw  t0, 0(t0)
	li  t1, -9104
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -9104
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -9108
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -9108
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str417
	call  string_add
	li  t0, -9112
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -9112
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1300(s0)
	lw  t0, 0(t0)
	li  t1, -9116
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -9116
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -9120
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -9120
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str418
	call  string_add
	li  t0, -9124
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -9124
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1308(s0)
	lw  t0, 0(t0)
	li  t1, -9128
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -9128
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -9132
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -9132
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str419
	call  string_add
	li  t0, -9136
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -9136
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1316(s0)
	lw  t0, 0(t0)
	li  t1, -9140
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -9140
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -9144
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -9144
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str420
	call  string_add
	li  t0, -9148
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -9148
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1324(s0)
	lw  t0, 0(t0)
	li  t1, -9152
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -9152
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -9156
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -9156
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str421
	call  string_add
	li  t0, -9160
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -9160
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1332(s0)
	lw  t0, 0(t0)
	li  t1, -9164
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -9164
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -9168
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -9168
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str422
	call  string_add
	li  t0, -9172
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -9172
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1340(s0)
	lw  t0, 0(t0)
	li  t1, -9176
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -9176
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -9180
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -9180
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str423
	call  string_add
	li  t0, -9184
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -9184
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1348(s0)
	lw  t0, 0(t0)
	li  t1, -9188
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -9188
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -9192
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -9192
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str424
	call  string_add
	li  t0, -9196
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -9196
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1356(s0)
	lw  t0, 0(t0)
	li  t1, -9200
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -9200
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -9204
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -9204
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str425
	call  string_add
	li  t0, -9208
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -9208
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1364(s0)
	lw  t0, 0(t0)
	li  t1, -9212
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -9212
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -9216
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -9216
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str426
	call  string_add
	li  t0, -9220
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -9220
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1372(s0)
	lw  t0, 0(t0)
	li  t1, -9224
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -9224
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -9228
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -9228
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str427
	call  string_add
	li  t0, -9232
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -9232
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1380(s0)
	lw  t0, 0(t0)
	li  t1, -9236
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -9236
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -9240
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -9240
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str428
	call  string_add
	li  t0, -9244
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -9244
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1388(s0)
	lw  t0, 0(t0)
	li  t1, -9248
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -9248
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -9252
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -9252
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str429
	call  string_add
	li  t0, -9256
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -9256
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1396(s0)
	lw  t0, 0(t0)
	li  t1, -9260
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -9260
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -9264
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -9264
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str430
	call  string_add
	li  t0, -9268
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -9268
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1404(s0)
	lw  t0, 0(t0)
	li  t1, -9272
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -9272
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -9276
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -9276
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str431
	call  string_add
	li  t0, -9280
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -9280
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1412(s0)
	lw  t0, 0(t0)
	li  t1, -9284
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -9284
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -9288
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -9288
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str432
	call  string_add
	li  t0, -9292
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -9292
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1420(s0)
	lw  t0, 0(t0)
	li  t1, -9296
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -9296
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -9300
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -9300
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str433
	call  string_add
	li  t0, -9304
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -9304
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1428(s0)
	lw  t0, 0(t0)
	li  t1, -9308
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -9308
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -9312
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -9312
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str434
	call  string_add
	li  t0, -9316
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -9316
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1436(s0)
	lw  t0, 0(t0)
	li  t1, -9320
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -9320
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -9324
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -9324
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str435
	call  string_add
	li  t0, -9328
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -9328
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1444(s0)
	lw  t0, 0(t0)
	li  t1, -9332
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -9332
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -9336
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -9336
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str436
	call  string_add
	li  t0, -9340
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -9340
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1452(s0)
	lw  t0, 0(t0)
	li  t1, -9344
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -9344
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -9348
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -9348
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str437
	call  string_add
	li  t0, -9352
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -9352
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1460(s0)
	lw  t0, 0(t0)
	li  t1, -9356
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -9356
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -9360
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -9360
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str438
	call  string_add
	li  t0, -9364
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -9364
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1468(s0)
	lw  t0, 0(t0)
	li  t1, -9368
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -9368
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -9372
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -9372
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str439
	call  string_add
	li  t0, -9376
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -9376
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1476(s0)
	lw  t0, 0(t0)
	li  t1, -9380
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -9380
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -9384
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -9384
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str440
	call  string_add
	li  t0, -9388
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -9388
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1484(s0)
	lw  t0, 0(t0)
	li  t1, -9392
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -9392
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -9396
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -9396
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str441
	call  string_add
	li  t0, -9400
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -9400
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1492(s0)
	lw  t0, 0(t0)
	li  t1, -9404
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -9404
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -9408
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -9408
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str442
	call  string_add
	li  t0, -9412
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -9412
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1500(s0)
	lw  t0, 0(t0)
	li  t1, -9416
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -9416
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -9420
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -9420
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str443
	call  string_add
	li  t0, -9424
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -9424
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1508(s0)
	lw  t0, 0(t0)
	li  t1, -9428
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -9428
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -9432
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -9432
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str444
	call  string_add
	li  t0, -9436
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -9436
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1516(s0)
	lw  t0, 0(t0)
	li  t1, -9440
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -9440
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -9444
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -9444
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str445
	call  string_add
	li  t0, -9448
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -9448
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1524(s0)
	lw  t0, 0(t0)
	li  t1, -9452
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -9452
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -9456
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -9456
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str446
	call  string_add
	li  t0, -9460
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -9460
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1532(s0)
	lw  t0, 0(t0)
	li  t1, -9464
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -9464
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -9468
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -9468
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str447
	call  string_add
	li  t0, -9472
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -9472
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1540(s0)
	lw  t0, 0(t0)
	li  t1, -9476
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -9476
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -9480
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -9480
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str448
	call  string_add
	li  t0, -9484
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -9484
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1548(s0)
	lw  t0, 0(t0)
	li  t1, -9488
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -9488
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -9492
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -9492
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str449
	call  string_add
	li  t0, -9496
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -9496
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1556(s0)
	lw  t0, 0(t0)
	li  t1, -9500
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -9500
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -9504
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -9504
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str450
	call  string_add
	li  t0, -9508
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -9508
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1564(s0)
	lw  t0, 0(t0)
	li  t1, -9512
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -9512
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -9516
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -9516
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str451
	call  string_add
	li  t0, -9520
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -9520
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1572(s0)
	lw  t0, 0(t0)
	li  t1, -9524
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -9524
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -9528
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -9528
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str452
	call  string_add
	li  t0, -9532
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -9532
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1580(s0)
	lw  t0, 0(t0)
	li  t1, -9536
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -9536
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -9540
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -9540
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str453
	call  string_add
	li  t0, -9544
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -9544
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1588(s0)
	lw  t0, 0(t0)
	li  t1, -9548
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -9548
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -9552
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -9552
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str454
	call  string_add
	li  t0, -9556
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -9556
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1596(s0)
	lw  t0, 0(t0)
	li  t1, -9560
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -9560
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -9564
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -9564
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str455
	call  string_add
	li  t0, -9568
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -9568
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1604(s0)
	lw  t0, 0(t0)
	li  t1, -9572
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -9572
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -9576
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -9576
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str456
	call  string_add
	li  t0, -9580
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -9580
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1612(s0)
	lw  t0, 0(t0)
	li  t1, -9584
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -9584
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -9588
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -9588
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str457
	call  string_add
	li  t0, -9592
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -9592
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1620(s0)
	lw  t0, 0(t0)
	li  t1, -9596
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -9596
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -9600
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -9600
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str458
	call  string_add
	li  t0, -9604
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -9604
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1628(s0)
	lw  t0, 0(t0)
	li  t1, -9608
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -9608
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -9612
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -9612
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str459
	call  string_add
	li  t0, -9616
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -9616
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1636(s0)
	lw  t0, 0(t0)
	li  t1, -9620
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -9620
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -9624
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -9624
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str460
	call  string_add
	li  t0, -9628
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -9628
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1644(s0)
	lw  t0, 0(t0)
	li  t1, -9632
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -9632
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -9636
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -9636
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str461
	call  string_add
	li  t0, -9640
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -9640
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1652(s0)
	lw  t0, 0(t0)
	li  t1, -9644
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -9644
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -9648
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -9648
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str462
	call  string_add
	li  t0, -9652
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -9652
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1660(s0)
	lw  t0, 0(t0)
	li  t1, -9656
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -9656
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -9660
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -9660
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str463
	call  string_add
	li  t0, -9664
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -9664
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1668(s0)
	lw  t0, 0(t0)
	li  t1, -9668
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -9668
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -9672
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -9672
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str464
	call  string_add
	li  t0, -9676
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -9676
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1676(s0)
	lw  t0, 0(t0)
	li  t1, -9680
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -9680
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -9684
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -9684
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str465
	call  string_add
	li  t0, -9688
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -9688
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1684(s0)
	lw  t0, 0(t0)
	li  t1, -9692
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -9692
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -9696
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -9696
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str466
	call  string_add
	li  t0, -9700
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -9700
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1692(s0)
	lw  t0, 0(t0)
	li  t1, -9704
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -9704
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -9708
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -9708
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str467
	call  string_add
	li  t0, -9712
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -9712
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1700(s0)
	lw  t0, 0(t0)
	li  t1, -9716
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -9716
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -9720
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -9720
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str468
	call  string_add
	li  t0, -9724
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -9724
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1708(s0)
	lw  t0, 0(t0)
	li  t1, -9728
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -9728
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -9732
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -9732
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str469
	call  string_add
	li  t0, -9736
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -9736
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1716(s0)
	lw  t0, 0(t0)
	li  t1, -9740
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -9740
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -9744
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -9744
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str470
	call  string_add
	li  t0, -9748
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -9748
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1724(s0)
	lw  t0, 0(t0)
	li  t1, -9752
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -9752
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -9756
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -9756
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str471
	call  string_add
	li  t0, -9760
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -9760
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1732(s0)
	lw  t0, 0(t0)
	li  t1, -9764
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -9764
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -9768
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -9768
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str472
	call  string_add
	li  t0, -9772
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -9772
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1740(s0)
	lw  t0, 0(t0)
	li  t1, -9776
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -9776
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -9780
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -9780
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str473
	call  string_add
	li  t0, -9784
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -9784
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1748(s0)
	lw  t0, 0(t0)
	li  t1, -9788
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -9788
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -9792
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -9792
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str474
	call  string_add
	li  t0, -9796
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -9796
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1756(s0)
	lw  t0, 0(t0)
	li  t1, -9800
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -9800
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -9804
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -9804
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str475
	call  string_add
	li  t0, -9808
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -9808
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1764(s0)
	lw  t0, 0(t0)
	li  t1, -9812
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -9812
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -9816
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -9816
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str476
	call  string_add
	li  t0, -9820
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -9820
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1772(s0)
	lw  t0, 0(t0)
	li  t1, -9824
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -9824
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -9828
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -9828
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str477
	call  string_add
	li  t0, -9832
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -9832
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1780(s0)
	lw  t0, 0(t0)
	li  t1, -9836
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -9836
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -9840
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -9840
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str478
	call  string_add
	li  t0, -9844
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -9844
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1788(s0)
	lw  t0, 0(t0)
	li  t1, -9848
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -9848
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -9852
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -9852
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str479
	call  string_add
	li  t0, -9856
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -9856
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1796(s0)
	lw  t0, 0(t0)
	li  t1, -9860
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -9860
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -9864
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -9864
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str480
	call  string_add
	li  t0, -9868
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -9868
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1804(s0)
	lw  t0, 0(t0)
	li  t1, -9872
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -9872
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -9876
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -9876
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str481
	call  string_add
	li  t0, -9880
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -9880
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1812(s0)
	lw  t0, 0(t0)
	li  t1, -9884
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -9884
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -9888
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -9888
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str482
	call  string_add
	li  t0, -9892
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -9892
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1820(s0)
	lw  t0, 0(t0)
	li  t1, -9896
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -9896
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -9900
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -9900
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str483
	call  string_add
	li  t0, -9904
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -9904
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1828(s0)
	lw  t0, 0(t0)
	li  t1, -9908
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -9908
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -9912
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -9912
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str484
	call  string_add
	li  t0, -9916
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -9916
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1836(s0)
	lw  t0, 0(t0)
	li  t1, -9920
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -9920
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -9924
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -9924
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str485
	call  string_add
	li  t0, -9928
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -9928
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1844(s0)
	lw  t0, 0(t0)
	li  t1, -9932
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -9932
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -9936
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -9936
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str486
	call  string_add
	li  t0, -9940
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -9940
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1852(s0)
	lw  t0, 0(t0)
	li  t1, -9944
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -9944
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -9948
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -9948
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str487
	call  string_add
	li  t0, -9952
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -9952
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1860(s0)
	lw  t0, 0(t0)
	li  t1, -9956
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -9956
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -9960
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -9960
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str488
	call  string_add
	li  t0, -9964
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -9964
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1868(s0)
	lw  t0, 0(t0)
	li  t1, -9968
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -9968
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -9972
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -9972
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str489
	call  string_add
	li  t0, -9976
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -9976
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1876(s0)
	lw  t0, 0(t0)
	li  t1, -9980
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -9980
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -9984
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -9984
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str490
	call  string_add
	li  t0, -9988
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -9988
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1884(s0)
	lw  t0, 0(t0)
	li  t1, -9992
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -9992
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -9996
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -9996
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str491
	call  string_add
	li  t0, -10000
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -10000
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1892(s0)
	lw  t0, 0(t0)
	li  t1, -10004
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -10004
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -10008
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -10008
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str492
	call  string_add
	li  t0, -10012
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -10012
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1900(s0)
	lw  t0, 0(t0)
	li  t1, -10016
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -10016
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -10020
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -10020
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str493
	call  string_add
	li  t0, -10024
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -10024
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1908(s0)
	lw  t0, 0(t0)
	li  t1, -10028
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -10028
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -10032
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -10032
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str494
	call  string_add
	li  t0, -10036
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -10036
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1916(s0)
	lw  t0, 0(t0)
	li  t1, -10040
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -10040
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -10044
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -10044
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str495
	call  string_add
	li  t0, -10048
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -10048
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1924(s0)
	lw  t0, 0(t0)
	li  t1, -10052
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -10052
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -10056
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -10056
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str496
	call  string_add
	li  t0, -10060
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -10060
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1932(s0)
	lw  t0, 0(t0)
	li  t1, -10064
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -10064
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -10068
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -10068
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str497
	call  string_add
	li  t0, -10072
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -10072
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1940(s0)
	lw  t0, 0(t0)
	li  t1, -10076
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -10076
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -10080
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -10080
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str498
	call  string_add
	li  t0, -10084
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -10084
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1948(s0)
	lw  t0, 0(t0)
	li  t1, -10088
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -10088
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -10092
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -10092
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str499
	call  string_add
	li  t0, -10096
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -10096
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1956(s0)
	lw  t0, 0(t0)
	li  t1, -10100
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -10100
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -10104
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -10104
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str500
	call  string_add
	li  t0, -10108
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -10108
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1964(s0)
	lw  t0, 0(t0)
	li  t1, -10112
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -10112
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -10116
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -10116
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str501
	call  string_add
	li  t0, -10120
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -10120
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1972(s0)
	lw  t0, 0(t0)
	li  t1, -10124
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -10124
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -10128
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -10128
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str502
	call  string_add
	li  t0, -10132
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -10132
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1980(s0)
	lw  t0, 0(t0)
	li  t1, -10136
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -10136
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -10140
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -10140
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str503
	call  string_add
	li  t0, -10144
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -10144
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1988(s0)
	lw  t0, 0(t0)
	li  t1, -10148
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -10148
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -10152
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -10152
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str504
	call  string_add
	li  t0, -10156
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -10156
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -1996(s0)
	lw  t0, 0(t0)
	li  t1, -10160
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -10160
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -10164
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -10164
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str505
	call  string_add
	li  t0, -10168
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -10168
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -2004(s0)
	lw  t0, 0(t0)
	li  t1, -10172
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -10172
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -10176
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -10176
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str506
	call  string_add
	li  t0, -10180
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -10180
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -2012(s0)
	lw  t0, 0(t0)
	li  t1, -10184
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -10184
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -10188
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -10188
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str507
	call  string_add
	li  t0, -10192
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -10192
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -2020(s0)
	lw  t0, 0(t0)
	li  t1, -10196
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -10196
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -10200
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -10200
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str508
	call  string_add
	li  t0, -10204
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -10204
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -2028(s0)
	lw  t0, 0(t0)
	li  t1, -10208
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -10208
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -10212
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -10212
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str509
	call  string_add
	li  t0, -10216
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -10216
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -2036(s0)
	lw  t0, 0(t0)
	li  t1, -10220
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -10220
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -10224
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -10224
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str510
	call  string_add
	li  t0, -10228
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -10228
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	lw  t0, -2044(s0)
	lw  t0, 0(t0)
	li  t1, -10232
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -10232
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -10236
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -10236
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str511
	call  string_add
	li  t0, -10240
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -10240
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	li  t0, -2052
	add  t0, t0, s0
	lw  t0, 0(t0)
	lw  t0, 0(t0)
	li  t1, -10244
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -10244
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -10248
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -10248
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str512
	call  string_add
	li  t0, -10252
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -10252
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	li  t0, -2060
	add  t0, t0, s0
	lw  t0, 0(t0)
	lw  t0, 0(t0)
	li  t1, -10256
	add  t1, t1, s0
	sw  t0, 0(t1)
	li  a0, -10256
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  toString
	li  t0, -10260
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -10260
	add  a0, a0, s0
	lw  a0, 0(a0)
	la  a1, .$str513
	call  string_add
	li  t0, -10264
	add  t0, t0, s0
	sw  a0, 0(t0)
	li  a0, -10264
	add  a0, a0, s0
	lw  a0, 0(a0)
	call  print
	la  a0, .$str514
	call  println
	addi  t0, zero, 0
	sw  t0, -12(s0)
	j  .mainexit
.mainexit:
	lw  a0, -12(s0)
	li  t0, 10256
	add  t0, t0, sp
	lw  s0, 0(t0)
	li  t0, 10260
	add  t0, t0, sp
	lw  ra, 0(t0)
	li  t0, 10264
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

