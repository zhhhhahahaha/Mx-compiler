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
	addi  t0, s0, -24
	lw  t0, 0(t0)
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
	addi  t0, s0, -48
	lw  t0, 0(t0)
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
	addi  sp, sp, -10264
	sw  ra, 10260(sp)
	sw  s0, 10256(sp)
	addi  s0, sp, 10264
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
	sw  t0, -2052(s0)
	addi  t0, s0, -2056
	sw  t0, -2060(s0)
.main0:
	addi  a0, zero, 8
	call  malloc
	sw  a0, -2064(s0)
	addi  t0, s0, -2064
	lw  t0, 0(t0)
	addi  t1, zero, 1
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t1, -2064(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -2068(s0)
	lw  t0, -2068(s0)
	addi  t1, t0, 4
	sw  t1, -2072(s0)
	addi  t0, s0, -2072
	lw  t0, 0(t0)
	addi  t1, zero, 0
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -2076(s0)
	lw  a0, -2076(s0)
	call  getcount
	sw  a0, -2080(s0)
	addi  t0, s0, -20
	lw  t0, 0(t0)
	lw  t1, -2080(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -2084(s0)
	lw  a0, -2084(s0)
	call  getcount
	sw  a0, -2088(s0)
	addi  t0, s0, -28
	lw  t0, 0(t0)
	lw  t1, -2088(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -2092(s0)
	lw  a0, -2092(s0)
	call  getcount
	sw  a0, -2096(s0)
	addi  t0, s0, -36
	lw  t0, 0(t0)
	lw  t1, -2096(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -2100(s0)
	lw  a0, -2100(s0)
	call  getcount
	sw  a0, -2104(s0)
	addi  t0, s0, -44
	lw  t0, 0(t0)
	lw  t1, -2104(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -2108(s0)
	lw  a0, -2108(s0)
	call  getcount
	sw  a0, -2112(s0)
	addi  t0, s0, -52
	lw  t0, 0(t0)
	lw  t1, -2112(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -2116(s0)
	lw  a0, -2116(s0)
	call  getcount
	sw  a0, -2120(s0)
	addi  t0, s0, -60
	lw  t0, 0(t0)
	lw  t1, -2120(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -2124(s0)
	lw  a0, -2124(s0)
	call  getcount
	sw  a0, -2128(s0)
	addi  t0, s0, -68
	lw  t0, 0(t0)
	lw  t1, -2128(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -2132(s0)
	lw  a0, -2132(s0)
	call  getcount
	sw  a0, -2136(s0)
	addi  t0, s0, -76
	lw  t0, 0(t0)
	lw  t1, -2136(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -2140(s0)
	lw  a0, -2140(s0)
	call  getcount
	sw  a0, -2144(s0)
	addi  t0, s0, -84
	lw  t0, 0(t0)
	lw  t1, -2144(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -2148(s0)
	lw  a0, -2148(s0)
	call  getcount
	sw  a0, -2152(s0)
	addi  t0, s0, -92
	lw  t0, 0(t0)
	lw  t1, -2152(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -2156(s0)
	lw  a0, -2156(s0)
	call  getcount
	sw  a0, -2160(s0)
	addi  t0, s0, -100
	lw  t0, 0(t0)
	lw  t1, -2160(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -2164(s0)
	lw  a0, -2164(s0)
	call  getcount
	sw  a0, -2168(s0)
	addi  t0, s0, -108
	lw  t0, 0(t0)
	lw  t1, -2168(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -2172(s0)
	lw  a0, -2172(s0)
	call  getcount
	sw  a0, -2176(s0)
	addi  t0, s0, -116
	lw  t0, 0(t0)
	lw  t1, -2176(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -2180(s0)
	lw  a0, -2180(s0)
	call  getcount
	sw  a0, -2184(s0)
	addi  t0, s0, -124
	lw  t0, 0(t0)
	lw  t1, -2184(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -2188(s0)
	lw  a0, -2188(s0)
	call  getcount
	sw  a0, -2192(s0)
	addi  t0, s0, -132
	lw  t0, 0(t0)
	lw  t1, -2192(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -2196(s0)
	lw  a0, -2196(s0)
	call  getcount
	sw  a0, -2200(s0)
	addi  t0, s0, -140
	lw  t0, 0(t0)
	lw  t1, -2200(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -2204(s0)
	lw  a0, -2204(s0)
	call  getcount
	sw  a0, -2208(s0)
	addi  t0, s0, -148
	lw  t0, 0(t0)
	lw  t1, -2208(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -2212(s0)
	lw  a0, -2212(s0)
	call  getcount
	sw  a0, -2216(s0)
	addi  t0, s0, -156
	lw  t0, 0(t0)
	lw  t1, -2216(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -2220(s0)
	lw  a0, -2220(s0)
	call  getcount
	sw  a0, -2224(s0)
	addi  t0, s0, -164
	lw  t0, 0(t0)
	lw  t1, -2224(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -2228(s0)
	lw  a0, -2228(s0)
	call  getcount
	sw  a0, -2232(s0)
	addi  t0, s0, -172
	lw  t0, 0(t0)
	lw  t1, -2232(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -2236(s0)
	lw  a0, -2236(s0)
	call  getcount
	sw  a0, -2240(s0)
	addi  t0, s0, -180
	lw  t0, 0(t0)
	lw  t1, -2240(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -2244(s0)
	lw  a0, -2244(s0)
	call  getcount
	sw  a0, -2248(s0)
	addi  t0, s0, -188
	lw  t0, 0(t0)
	lw  t1, -2248(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -2252(s0)
	lw  a0, -2252(s0)
	call  getcount
	sw  a0, -2256(s0)
	addi  t0, s0, -196
	lw  t0, 0(t0)
	lw  t1, -2256(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -2260(s0)
	lw  a0, -2260(s0)
	call  getcount
	sw  a0, -2264(s0)
	addi  t0, s0, -204
	lw  t0, 0(t0)
	lw  t1, -2264(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -2268(s0)
	lw  a0, -2268(s0)
	call  getcount
	sw  a0, -2272(s0)
	addi  t0, s0, -212
	lw  t0, 0(t0)
	lw  t1, -2272(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -2276(s0)
	lw  a0, -2276(s0)
	call  getcount
	sw  a0, -2280(s0)
	addi  t0, s0, -220
	lw  t0, 0(t0)
	lw  t1, -2280(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -2284(s0)
	lw  a0, -2284(s0)
	call  getcount
	sw  a0, -2288(s0)
	addi  t0, s0, -228
	lw  t0, 0(t0)
	lw  t1, -2288(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -2292(s0)
	lw  a0, -2292(s0)
	call  getcount
	sw  a0, -2296(s0)
	addi  t0, s0, -236
	lw  t0, 0(t0)
	lw  t1, -2296(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -2300(s0)
	lw  a0, -2300(s0)
	call  getcount
	sw  a0, -2304(s0)
	addi  t0, s0, -244
	lw  t0, 0(t0)
	lw  t1, -2304(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -2308(s0)
	lw  a0, -2308(s0)
	call  getcount
	sw  a0, -2312(s0)
	addi  t0, s0, -252
	lw  t0, 0(t0)
	lw  t1, -2312(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -2316(s0)
	lw  a0, -2316(s0)
	call  getcount
	sw  a0, -2320(s0)
	addi  t0, s0, -260
	lw  t0, 0(t0)
	lw  t1, -2320(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -2324(s0)
	lw  a0, -2324(s0)
	call  getcount
	sw  a0, -2328(s0)
	addi  t0, s0, -268
	lw  t0, 0(t0)
	lw  t1, -2328(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -2332(s0)
	lw  a0, -2332(s0)
	call  getcount
	sw  a0, -2336(s0)
	addi  t0, s0, -276
	lw  t0, 0(t0)
	lw  t1, -2336(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -2340(s0)
	lw  a0, -2340(s0)
	call  getcount
	sw  a0, -2344(s0)
	addi  t0, s0, -284
	lw  t0, 0(t0)
	lw  t1, -2344(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -2348(s0)
	lw  a0, -2348(s0)
	call  getcount
	sw  a0, -2352(s0)
	addi  t0, s0, -292
	lw  t0, 0(t0)
	lw  t1, -2352(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -2356(s0)
	lw  a0, -2356(s0)
	call  getcount
	sw  a0, -2360(s0)
	addi  t0, s0, -300
	lw  t0, 0(t0)
	lw  t1, -2360(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -2364(s0)
	lw  a0, -2364(s0)
	call  getcount
	sw  a0, -2368(s0)
	addi  t0, s0, -308
	lw  t0, 0(t0)
	lw  t1, -2368(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -2372(s0)
	lw  a0, -2372(s0)
	call  getcount
	sw  a0, -2376(s0)
	addi  t0, s0, -316
	lw  t0, 0(t0)
	lw  t1, -2376(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -2380(s0)
	lw  a0, -2380(s0)
	call  getcount
	sw  a0, -2384(s0)
	addi  t0, s0, -324
	lw  t0, 0(t0)
	lw  t1, -2384(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -2388(s0)
	lw  a0, -2388(s0)
	call  getcount
	sw  a0, -2392(s0)
	addi  t0, s0, -332
	lw  t0, 0(t0)
	lw  t1, -2392(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -2396(s0)
	lw  a0, -2396(s0)
	call  getcount
	sw  a0, -2400(s0)
	addi  t0, s0, -340
	lw  t0, 0(t0)
	lw  t1, -2400(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -2404(s0)
	lw  a0, -2404(s0)
	call  getcount
	sw  a0, -2408(s0)
	addi  t0, s0, -348
	lw  t0, 0(t0)
	lw  t1, -2408(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -2412(s0)
	lw  a0, -2412(s0)
	call  getcount
	sw  a0, -2416(s0)
	addi  t0, s0, -356
	lw  t0, 0(t0)
	lw  t1, -2416(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -2420(s0)
	lw  a0, -2420(s0)
	call  getcount
	sw  a0, -2424(s0)
	addi  t0, s0, -364
	lw  t0, 0(t0)
	lw  t1, -2424(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -2428(s0)
	lw  a0, -2428(s0)
	call  getcount
	sw  a0, -2432(s0)
	addi  t0, s0, -372
	lw  t0, 0(t0)
	lw  t1, -2432(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -2436(s0)
	lw  a0, -2436(s0)
	call  getcount
	sw  a0, -2440(s0)
	addi  t0, s0, -380
	lw  t0, 0(t0)
	lw  t1, -2440(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -2444(s0)
	lw  a0, -2444(s0)
	call  getcount
	sw  a0, -2448(s0)
	addi  t0, s0, -388
	lw  t0, 0(t0)
	lw  t1, -2448(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -2452(s0)
	lw  a0, -2452(s0)
	call  getcount
	sw  a0, -2456(s0)
	addi  t0, s0, -396
	lw  t0, 0(t0)
	lw  t1, -2456(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -2460(s0)
	lw  a0, -2460(s0)
	call  getcount
	sw  a0, -2464(s0)
	addi  t0, s0, -404
	lw  t0, 0(t0)
	lw  t1, -2464(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -2468(s0)
	lw  a0, -2468(s0)
	call  getcount
	sw  a0, -2472(s0)
	addi  t0, s0, -412
	lw  t0, 0(t0)
	lw  t1, -2472(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -2476(s0)
	lw  a0, -2476(s0)
	call  getcount
	sw  a0, -2480(s0)
	addi  t0, s0, -420
	lw  t0, 0(t0)
	lw  t1, -2480(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -2484(s0)
	lw  a0, -2484(s0)
	call  getcount
	sw  a0, -2488(s0)
	addi  t0, s0, -428
	lw  t0, 0(t0)
	lw  t1, -2488(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -2492(s0)
	lw  a0, -2492(s0)
	call  getcount
	sw  a0, -2496(s0)
	addi  t0, s0, -436
	lw  t0, 0(t0)
	lw  t1, -2496(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -2500(s0)
	lw  a0, -2500(s0)
	call  getcount
	sw  a0, -2504(s0)
	addi  t0, s0, -444
	lw  t0, 0(t0)
	lw  t1, -2504(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -2508(s0)
	lw  a0, -2508(s0)
	call  getcount
	sw  a0, -2512(s0)
	addi  t0, s0, -452
	lw  t0, 0(t0)
	lw  t1, -2512(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -2516(s0)
	lw  a0, -2516(s0)
	call  getcount
	sw  a0, -2520(s0)
	addi  t0, s0, -460
	lw  t0, 0(t0)
	lw  t1, -2520(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -2524(s0)
	lw  a0, -2524(s0)
	call  getcount
	sw  a0, -2528(s0)
	addi  t0, s0, -468
	lw  t0, 0(t0)
	lw  t1, -2528(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -2532(s0)
	lw  a0, -2532(s0)
	call  getcount
	sw  a0, -2536(s0)
	addi  t0, s0, -476
	lw  t0, 0(t0)
	lw  t1, -2536(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -2540(s0)
	lw  a0, -2540(s0)
	call  getcount
	sw  a0, -2544(s0)
	addi  t0, s0, -484
	lw  t0, 0(t0)
	lw  t1, -2544(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -2548(s0)
	lw  a0, -2548(s0)
	call  getcount
	sw  a0, -2552(s0)
	addi  t0, s0, -492
	lw  t0, 0(t0)
	lw  t1, -2552(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -2556(s0)
	lw  a0, -2556(s0)
	call  getcount
	sw  a0, -2560(s0)
	addi  t0, s0, -500
	lw  t0, 0(t0)
	lw  t1, -2560(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -2564(s0)
	lw  a0, -2564(s0)
	call  getcount
	sw  a0, -2568(s0)
	addi  t0, s0, -508
	lw  t0, 0(t0)
	lw  t1, -2568(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -2572(s0)
	lw  a0, -2572(s0)
	call  getcount
	sw  a0, -2576(s0)
	addi  t0, s0, -516
	lw  t0, 0(t0)
	lw  t1, -2576(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -2580(s0)
	lw  a0, -2580(s0)
	call  getcount
	sw  a0, -2584(s0)
	addi  t0, s0, -524
	lw  t0, 0(t0)
	lw  t1, -2584(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -2588(s0)
	lw  a0, -2588(s0)
	call  getcount
	sw  a0, -2592(s0)
	addi  t0, s0, -532
	lw  t0, 0(t0)
	lw  t1, -2592(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -2596(s0)
	lw  a0, -2596(s0)
	call  getcount
	sw  a0, -2600(s0)
	addi  t0, s0, -540
	lw  t0, 0(t0)
	lw  t1, -2600(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -2604(s0)
	lw  a0, -2604(s0)
	call  getcount
	sw  a0, -2608(s0)
	addi  t0, s0, -548
	lw  t0, 0(t0)
	lw  t1, -2608(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -2612(s0)
	lw  a0, -2612(s0)
	call  getcount
	sw  a0, -2616(s0)
	addi  t0, s0, -556
	lw  t0, 0(t0)
	lw  t1, -2616(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -2620(s0)
	lw  a0, -2620(s0)
	call  getcount
	sw  a0, -2624(s0)
	addi  t0, s0, -564
	lw  t0, 0(t0)
	lw  t1, -2624(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -2628(s0)
	lw  a0, -2628(s0)
	call  getcount
	sw  a0, -2632(s0)
	addi  t0, s0, -572
	lw  t0, 0(t0)
	lw  t1, -2632(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -2636(s0)
	lw  a0, -2636(s0)
	call  getcount
	sw  a0, -2640(s0)
	addi  t0, s0, -580
	lw  t0, 0(t0)
	lw  t1, -2640(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -2644(s0)
	lw  a0, -2644(s0)
	call  getcount
	sw  a0, -2648(s0)
	addi  t0, s0, -588
	lw  t0, 0(t0)
	lw  t1, -2648(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -2652(s0)
	lw  a0, -2652(s0)
	call  getcount
	sw  a0, -2656(s0)
	addi  t0, s0, -596
	lw  t0, 0(t0)
	lw  t1, -2656(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -2660(s0)
	lw  a0, -2660(s0)
	call  getcount
	sw  a0, -2664(s0)
	addi  t0, s0, -604
	lw  t0, 0(t0)
	lw  t1, -2664(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -2668(s0)
	lw  a0, -2668(s0)
	call  getcount
	sw  a0, -2672(s0)
	addi  t0, s0, -612
	lw  t0, 0(t0)
	lw  t1, -2672(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -2676(s0)
	lw  a0, -2676(s0)
	call  getcount
	sw  a0, -2680(s0)
	addi  t0, s0, -620
	lw  t0, 0(t0)
	lw  t1, -2680(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -2684(s0)
	lw  a0, -2684(s0)
	call  getcount
	sw  a0, -2688(s0)
	addi  t0, s0, -628
	lw  t0, 0(t0)
	lw  t1, -2688(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -2692(s0)
	lw  a0, -2692(s0)
	call  getcount
	sw  a0, -2696(s0)
	addi  t0, s0, -636
	lw  t0, 0(t0)
	lw  t1, -2696(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -2700(s0)
	lw  a0, -2700(s0)
	call  getcount
	sw  a0, -2704(s0)
	addi  t0, s0, -644
	lw  t0, 0(t0)
	lw  t1, -2704(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -2708(s0)
	lw  a0, -2708(s0)
	call  getcount
	sw  a0, -2712(s0)
	addi  t0, s0, -652
	lw  t0, 0(t0)
	lw  t1, -2712(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -2716(s0)
	lw  a0, -2716(s0)
	call  getcount
	sw  a0, -2720(s0)
	addi  t0, s0, -660
	lw  t0, 0(t0)
	lw  t1, -2720(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -2724(s0)
	lw  a0, -2724(s0)
	call  getcount
	sw  a0, -2728(s0)
	addi  t0, s0, -668
	lw  t0, 0(t0)
	lw  t1, -2728(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -2732(s0)
	lw  a0, -2732(s0)
	call  getcount
	sw  a0, -2736(s0)
	addi  t0, s0, -676
	lw  t0, 0(t0)
	lw  t1, -2736(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -2740(s0)
	lw  a0, -2740(s0)
	call  getcount
	sw  a0, -2744(s0)
	addi  t0, s0, -684
	lw  t0, 0(t0)
	lw  t1, -2744(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -2748(s0)
	lw  a0, -2748(s0)
	call  getcount
	sw  a0, -2752(s0)
	addi  t0, s0, -692
	lw  t0, 0(t0)
	lw  t1, -2752(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -2756(s0)
	lw  a0, -2756(s0)
	call  getcount
	sw  a0, -2760(s0)
	addi  t0, s0, -700
	lw  t0, 0(t0)
	lw  t1, -2760(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -2764(s0)
	lw  a0, -2764(s0)
	call  getcount
	sw  a0, -2768(s0)
	addi  t0, s0, -708
	lw  t0, 0(t0)
	lw  t1, -2768(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -2772(s0)
	lw  a0, -2772(s0)
	call  getcount
	sw  a0, -2776(s0)
	addi  t0, s0, -716
	lw  t0, 0(t0)
	lw  t1, -2776(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -2780(s0)
	lw  a0, -2780(s0)
	call  getcount
	sw  a0, -2784(s0)
	addi  t0, s0, -724
	lw  t0, 0(t0)
	lw  t1, -2784(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -2788(s0)
	lw  a0, -2788(s0)
	call  getcount
	sw  a0, -2792(s0)
	addi  t0, s0, -732
	lw  t0, 0(t0)
	lw  t1, -2792(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -2796(s0)
	lw  a0, -2796(s0)
	call  getcount
	sw  a0, -2800(s0)
	addi  t0, s0, -740
	lw  t0, 0(t0)
	lw  t1, -2800(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -2804(s0)
	lw  a0, -2804(s0)
	call  getcount
	sw  a0, -2808(s0)
	addi  t0, s0, -748
	lw  t0, 0(t0)
	lw  t1, -2808(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -2812(s0)
	lw  a0, -2812(s0)
	call  getcount
	sw  a0, -2816(s0)
	addi  t0, s0, -756
	lw  t0, 0(t0)
	lw  t1, -2816(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -2820(s0)
	lw  a0, -2820(s0)
	call  getcount
	sw  a0, -2824(s0)
	addi  t0, s0, -764
	lw  t0, 0(t0)
	lw  t1, -2824(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -2828(s0)
	lw  a0, -2828(s0)
	call  getcount
	sw  a0, -2832(s0)
	addi  t0, s0, -772
	lw  t0, 0(t0)
	lw  t1, -2832(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -2836(s0)
	lw  a0, -2836(s0)
	call  getcount
	sw  a0, -2840(s0)
	addi  t0, s0, -780
	lw  t0, 0(t0)
	lw  t1, -2840(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -2844(s0)
	lw  a0, -2844(s0)
	call  getcount
	sw  a0, -2848(s0)
	addi  t0, s0, -788
	lw  t0, 0(t0)
	lw  t1, -2848(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -2852(s0)
	lw  a0, -2852(s0)
	call  getcount
	sw  a0, -2856(s0)
	addi  t0, s0, -796
	lw  t0, 0(t0)
	lw  t1, -2856(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -2860(s0)
	lw  a0, -2860(s0)
	call  getcount
	sw  a0, -2864(s0)
	addi  t0, s0, -804
	lw  t0, 0(t0)
	lw  t1, -2864(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -2868(s0)
	lw  a0, -2868(s0)
	call  getcount
	sw  a0, -2872(s0)
	addi  t0, s0, -812
	lw  t0, 0(t0)
	lw  t1, -2872(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -2876(s0)
	lw  a0, -2876(s0)
	call  getcount
	sw  a0, -2880(s0)
	addi  t0, s0, -820
	lw  t0, 0(t0)
	lw  t1, -2880(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -2884(s0)
	lw  a0, -2884(s0)
	call  getcount
	sw  a0, -2888(s0)
	addi  t0, s0, -828
	lw  t0, 0(t0)
	lw  t1, -2888(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -2892(s0)
	lw  a0, -2892(s0)
	call  getcount
	sw  a0, -2896(s0)
	addi  t0, s0, -836
	lw  t0, 0(t0)
	lw  t1, -2896(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -2900(s0)
	lw  a0, -2900(s0)
	call  getcount
	sw  a0, -2904(s0)
	addi  t0, s0, -844
	lw  t0, 0(t0)
	lw  t1, -2904(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -2908(s0)
	lw  a0, -2908(s0)
	call  getcount
	sw  a0, -2912(s0)
	addi  t0, s0, -852
	lw  t0, 0(t0)
	lw  t1, -2912(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -2916(s0)
	lw  a0, -2916(s0)
	call  getcount
	sw  a0, -2920(s0)
	addi  t0, s0, -860
	lw  t0, 0(t0)
	lw  t1, -2920(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -2924(s0)
	lw  a0, -2924(s0)
	call  getcount
	sw  a0, -2928(s0)
	addi  t0, s0, -868
	lw  t0, 0(t0)
	lw  t1, -2928(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -2932(s0)
	lw  a0, -2932(s0)
	call  getcount
	sw  a0, -2936(s0)
	addi  t0, s0, -876
	lw  t0, 0(t0)
	lw  t1, -2936(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -2940(s0)
	lw  a0, -2940(s0)
	call  getcount
	sw  a0, -2944(s0)
	addi  t0, s0, -884
	lw  t0, 0(t0)
	lw  t1, -2944(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -2948(s0)
	lw  a0, -2948(s0)
	call  getcount
	sw  a0, -2952(s0)
	addi  t0, s0, -892
	lw  t0, 0(t0)
	lw  t1, -2952(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -2956(s0)
	lw  a0, -2956(s0)
	call  getcount
	sw  a0, -2960(s0)
	addi  t0, s0, -900
	lw  t0, 0(t0)
	lw  t1, -2960(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -2964(s0)
	lw  a0, -2964(s0)
	call  getcount
	sw  a0, -2968(s0)
	addi  t0, s0, -908
	lw  t0, 0(t0)
	lw  t1, -2968(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -2972(s0)
	lw  a0, -2972(s0)
	call  getcount
	sw  a0, -2976(s0)
	addi  t0, s0, -916
	lw  t0, 0(t0)
	lw  t1, -2976(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -2980(s0)
	lw  a0, -2980(s0)
	call  getcount
	sw  a0, -2984(s0)
	addi  t0, s0, -924
	lw  t0, 0(t0)
	lw  t1, -2984(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -2988(s0)
	lw  a0, -2988(s0)
	call  getcount
	sw  a0, -2992(s0)
	addi  t0, s0, -932
	lw  t0, 0(t0)
	lw  t1, -2992(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -2996(s0)
	lw  a0, -2996(s0)
	call  getcount
	sw  a0, -3000(s0)
	addi  t0, s0, -940
	lw  t0, 0(t0)
	lw  t1, -3000(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -3004(s0)
	lw  a0, -3004(s0)
	call  getcount
	sw  a0, -3008(s0)
	addi  t0, s0, -948
	lw  t0, 0(t0)
	lw  t1, -3008(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -3012(s0)
	lw  a0, -3012(s0)
	call  getcount
	sw  a0, -3016(s0)
	addi  t0, s0, -956
	lw  t0, 0(t0)
	lw  t1, -3016(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -3020(s0)
	lw  a0, -3020(s0)
	call  getcount
	sw  a0, -3024(s0)
	addi  t0, s0, -964
	lw  t0, 0(t0)
	lw  t1, -3024(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -3028(s0)
	lw  a0, -3028(s0)
	call  getcount
	sw  a0, -3032(s0)
	addi  t0, s0, -972
	lw  t0, 0(t0)
	lw  t1, -3032(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -3036(s0)
	lw  a0, -3036(s0)
	call  getcount
	sw  a0, -3040(s0)
	addi  t0, s0, -980
	lw  t0, 0(t0)
	lw  t1, -3040(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -3044(s0)
	lw  a0, -3044(s0)
	call  getcount
	sw  a0, -3048(s0)
	addi  t0, s0, -988
	lw  t0, 0(t0)
	lw  t1, -3048(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -3052(s0)
	lw  a0, -3052(s0)
	call  getcount
	sw  a0, -3056(s0)
	addi  t0, s0, -996
	lw  t0, 0(t0)
	lw  t1, -3056(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -3060(s0)
	lw  a0, -3060(s0)
	call  getcount
	sw  a0, -3064(s0)
	addi  t0, s0, -1004
	lw  t0, 0(t0)
	lw  t1, -3064(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -3068(s0)
	lw  a0, -3068(s0)
	call  getcount
	sw  a0, -3072(s0)
	addi  t0, s0, -1012
	lw  t0, 0(t0)
	lw  t1, -3072(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -3076(s0)
	lw  a0, -3076(s0)
	call  getcount
	sw  a0, -3080(s0)
	addi  t0, s0, -1020
	lw  t0, 0(t0)
	lw  t1, -3080(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -3084(s0)
	lw  a0, -3084(s0)
	call  getcount
	sw  a0, -3088(s0)
	addi  t0, s0, -1028
	lw  t0, 0(t0)
	lw  t1, -3088(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -3092(s0)
	lw  a0, -3092(s0)
	call  getcount
	sw  a0, -3096(s0)
	addi  t0, s0, -1036
	lw  t0, 0(t0)
	lw  t1, -3096(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -3100(s0)
	lw  a0, -3100(s0)
	call  getcount
	sw  a0, -3104(s0)
	addi  t0, s0, -1044
	lw  t0, 0(t0)
	lw  t1, -3104(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -3108(s0)
	lw  a0, -3108(s0)
	call  getcount
	sw  a0, -3112(s0)
	addi  t0, s0, -1052
	lw  t0, 0(t0)
	lw  t1, -3112(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -3116(s0)
	lw  a0, -3116(s0)
	call  getcount
	sw  a0, -3120(s0)
	addi  t0, s0, -1060
	lw  t0, 0(t0)
	lw  t1, -3120(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -3124(s0)
	lw  a0, -3124(s0)
	call  getcount
	sw  a0, -3128(s0)
	addi  t0, s0, -1068
	lw  t0, 0(t0)
	lw  t1, -3128(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -3132(s0)
	lw  a0, -3132(s0)
	call  getcount
	sw  a0, -3136(s0)
	addi  t0, s0, -1076
	lw  t0, 0(t0)
	lw  t1, -3136(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -3140(s0)
	lw  a0, -3140(s0)
	call  getcount
	sw  a0, -3144(s0)
	addi  t0, s0, -1084
	lw  t0, 0(t0)
	lw  t1, -3144(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -3148(s0)
	lw  a0, -3148(s0)
	call  getcount
	sw  a0, -3152(s0)
	addi  t0, s0, -1092
	lw  t0, 0(t0)
	lw  t1, -3152(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -3156(s0)
	lw  a0, -3156(s0)
	call  getcount
	sw  a0, -3160(s0)
	addi  t0, s0, -1100
	lw  t0, 0(t0)
	lw  t1, -3160(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -3164(s0)
	lw  a0, -3164(s0)
	call  getcount
	sw  a0, -3168(s0)
	addi  t0, s0, -1108
	lw  t0, 0(t0)
	lw  t1, -3168(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -3172(s0)
	lw  a0, -3172(s0)
	call  getcount
	sw  a0, -3176(s0)
	addi  t0, s0, -1116
	lw  t0, 0(t0)
	lw  t1, -3176(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -3180(s0)
	lw  a0, -3180(s0)
	call  getcount
	sw  a0, -3184(s0)
	addi  t0, s0, -1124
	lw  t0, 0(t0)
	lw  t1, -3184(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -3188(s0)
	lw  a0, -3188(s0)
	call  getcount
	sw  a0, -3192(s0)
	addi  t0, s0, -1132
	lw  t0, 0(t0)
	lw  t1, -3192(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -3196(s0)
	lw  a0, -3196(s0)
	call  getcount
	sw  a0, -3200(s0)
	addi  t0, s0, -1140
	lw  t0, 0(t0)
	lw  t1, -3200(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -3204(s0)
	lw  a0, -3204(s0)
	call  getcount
	sw  a0, -3208(s0)
	addi  t0, s0, -1148
	lw  t0, 0(t0)
	lw  t1, -3208(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -3212(s0)
	lw  a0, -3212(s0)
	call  getcount
	sw  a0, -3216(s0)
	addi  t0, s0, -1156
	lw  t0, 0(t0)
	lw  t1, -3216(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -3220(s0)
	lw  a0, -3220(s0)
	call  getcount
	sw  a0, -3224(s0)
	addi  t0, s0, -1164
	lw  t0, 0(t0)
	lw  t1, -3224(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -3228(s0)
	lw  a0, -3228(s0)
	call  getcount
	sw  a0, -3232(s0)
	addi  t0, s0, -1172
	lw  t0, 0(t0)
	lw  t1, -3232(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -3236(s0)
	lw  a0, -3236(s0)
	call  getcount
	sw  a0, -3240(s0)
	addi  t0, s0, -1180
	lw  t0, 0(t0)
	lw  t1, -3240(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -3244(s0)
	lw  a0, -3244(s0)
	call  getcount
	sw  a0, -3248(s0)
	addi  t0, s0, -1188
	lw  t0, 0(t0)
	lw  t1, -3248(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -3252(s0)
	lw  a0, -3252(s0)
	call  getcount
	sw  a0, -3256(s0)
	addi  t0, s0, -1196
	lw  t0, 0(t0)
	lw  t1, -3256(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -3260(s0)
	lw  a0, -3260(s0)
	call  getcount
	sw  a0, -3264(s0)
	addi  t0, s0, -1204
	lw  t0, 0(t0)
	lw  t1, -3264(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -3268(s0)
	lw  a0, -3268(s0)
	call  getcount
	sw  a0, -3272(s0)
	addi  t0, s0, -1212
	lw  t0, 0(t0)
	lw  t1, -3272(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -3276(s0)
	lw  a0, -3276(s0)
	call  getcount
	sw  a0, -3280(s0)
	addi  t0, s0, -1220
	lw  t0, 0(t0)
	lw  t1, -3280(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -3284(s0)
	lw  a0, -3284(s0)
	call  getcount
	sw  a0, -3288(s0)
	addi  t0, s0, -1228
	lw  t0, 0(t0)
	lw  t1, -3288(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -3292(s0)
	lw  a0, -3292(s0)
	call  getcount
	sw  a0, -3296(s0)
	addi  t0, s0, -1236
	lw  t0, 0(t0)
	lw  t1, -3296(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -3300(s0)
	lw  a0, -3300(s0)
	call  getcount
	sw  a0, -3304(s0)
	addi  t0, s0, -1244
	lw  t0, 0(t0)
	lw  t1, -3304(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -3308(s0)
	lw  a0, -3308(s0)
	call  getcount
	sw  a0, -3312(s0)
	addi  t0, s0, -1252
	lw  t0, 0(t0)
	lw  t1, -3312(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -3316(s0)
	lw  a0, -3316(s0)
	call  getcount
	sw  a0, -3320(s0)
	addi  t0, s0, -1260
	lw  t0, 0(t0)
	lw  t1, -3320(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -3324(s0)
	lw  a0, -3324(s0)
	call  getcount
	sw  a0, -3328(s0)
	addi  t0, s0, -1268
	lw  t0, 0(t0)
	lw  t1, -3328(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -3332(s0)
	lw  a0, -3332(s0)
	call  getcount
	sw  a0, -3336(s0)
	addi  t0, s0, -1276
	lw  t0, 0(t0)
	lw  t1, -3336(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -3340(s0)
	lw  a0, -3340(s0)
	call  getcount
	sw  a0, -3344(s0)
	addi  t0, s0, -1284
	lw  t0, 0(t0)
	lw  t1, -3344(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -3348(s0)
	lw  a0, -3348(s0)
	call  getcount
	sw  a0, -3352(s0)
	addi  t0, s0, -1292
	lw  t0, 0(t0)
	lw  t1, -3352(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -3356(s0)
	lw  a0, -3356(s0)
	call  getcount
	sw  a0, -3360(s0)
	addi  t0, s0, -1300
	lw  t0, 0(t0)
	lw  t1, -3360(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -3364(s0)
	lw  a0, -3364(s0)
	call  getcount
	sw  a0, -3368(s0)
	addi  t0, s0, -1308
	lw  t0, 0(t0)
	lw  t1, -3368(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -3372(s0)
	lw  a0, -3372(s0)
	call  getcount
	sw  a0, -3376(s0)
	addi  t0, s0, -1316
	lw  t0, 0(t0)
	lw  t1, -3376(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -3380(s0)
	lw  a0, -3380(s0)
	call  getcount
	sw  a0, -3384(s0)
	addi  t0, s0, -1324
	lw  t0, 0(t0)
	lw  t1, -3384(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -3388(s0)
	lw  a0, -3388(s0)
	call  getcount
	sw  a0, -3392(s0)
	addi  t0, s0, -1332
	lw  t0, 0(t0)
	lw  t1, -3392(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -3396(s0)
	lw  a0, -3396(s0)
	call  getcount
	sw  a0, -3400(s0)
	addi  t0, s0, -1340
	lw  t0, 0(t0)
	lw  t1, -3400(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -3404(s0)
	lw  a0, -3404(s0)
	call  getcount
	sw  a0, -3408(s0)
	addi  t0, s0, -1348
	lw  t0, 0(t0)
	lw  t1, -3408(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -3412(s0)
	lw  a0, -3412(s0)
	call  getcount
	sw  a0, -3416(s0)
	addi  t0, s0, -1356
	lw  t0, 0(t0)
	lw  t1, -3416(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -3420(s0)
	lw  a0, -3420(s0)
	call  getcount
	sw  a0, -3424(s0)
	addi  t0, s0, -1364
	lw  t0, 0(t0)
	lw  t1, -3424(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -3428(s0)
	lw  a0, -3428(s0)
	call  getcount
	sw  a0, -3432(s0)
	addi  t0, s0, -1372
	lw  t0, 0(t0)
	lw  t1, -3432(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -3436(s0)
	lw  a0, -3436(s0)
	call  getcount
	sw  a0, -3440(s0)
	addi  t0, s0, -1380
	lw  t0, 0(t0)
	lw  t1, -3440(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -3444(s0)
	lw  a0, -3444(s0)
	call  getcount
	sw  a0, -3448(s0)
	addi  t0, s0, -1388
	lw  t0, 0(t0)
	lw  t1, -3448(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -3452(s0)
	lw  a0, -3452(s0)
	call  getcount
	sw  a0, -3456(s0)
	addi  t0, s0, -1396
	lw  t0, 0(t0)
	lw  t1, -3456(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -3460(s0)
	lw  a0, -3460(s0)
	call  getcount
	sw  a0, -3464(s0)
	addi  t0, s0, -1404
	lw  t0, 0(t0)
	lw  t1, -3464(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -3468(s0)
	lw  a0, -3468(s0)
	call  getcount
	sw  a0, -3472(s0)
	addi  t0, s0, -1412
	lw  t0, 0(t0)
	lw  t1, -3472(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -3476(s0)
	lw  a0, -3476(s0)
	call  getcount
	sw  a0, -3480(s0)
	addi  t0, s0, -1420
	lw  t0, 0(t0)
	lw  t1, -3480(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -3484(s0)
	lw  a0, -3484(s0)
	call  getcount
	sw  a0, -3488(s0)
	addi  t0, s0, -1428
	lw  t0, 0(t0)
	lw  t1, -3488(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -3492(s0)
	lw  a0, -3492(s0)
	call  getcount
	sw  a0, -3496(s0)
	addi  t0, s0, -1436
	lw  t0, 0(t0)
	lw  t1, -3496(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -3500(s0)
	lw  a0, -3500(s0)
	call  getcount
	sw  a0, -3504(s0)
	addi  t0, s0, -1444
	lw  t0, 0(t0)
	lw  t1, -3504(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -3508(s0)
	lw  a0, -3508(s0)
	call  getcount
	sw  a0, -3512(s0)
	addi  t0, s0, -1452
	lw  t0, 0(t0)
	lw  t1, -3512(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -3516(s0)
	lw  a0, -3516(s0)
	call  getcount
	sw  a0, -3520(s0)
	addi  t0, s0, -1460
	lw  t0, 0(t0)
	lw  t1, -3520(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -3524(s0)
	lw  a0, -3524(s0)
	call  getcount
	sw  a0, -3528(s0)
	addi  t0, s0, -1468
	lw  t0, 0(t0)
	lw  t1, -3528(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -3532(s0)
	lw  a0, -3532(s0)
	call  getcount
	sw  a0, -3536(s0)
	addi  t0, s0, -1476
	lw  t0, 0(t0)
	lw  t1, -3536(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -3540(s0)
	lw  a0, -3540(s0)
	call  getcount
	sw  a0, -3544(s0)
	addi  t0, s0, -1484
	lw  t0, 0(t0)
	lw  t1, -3544(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -3548(s0)
	lw  a0, -3548(s0)
	call  getcount
	sw  a0, -3552(s0)
	addi  t0, s0, -1492
	lw  t0, 0(t0)
	lw  t1, -3552(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -3556(s0)
	lw  a0, -3556(s0)
	call  getcount
	sw  a0, -3560(s0)
	addi  t0, s0, -1500
	lw  t0, 0(t0)
	lw  t1, -3560(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -3564(s0)
	lw  a0, -3564(s0)
	call  getcount
	sw  a0, -3568(s0)
	addi  t0, s0, -1508
	lw  t0, 0(t0)
	lw  t1, -3568(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -3572(s0)
	lw  a0, -3572(s0)
	call  getcount
	sw  a0, -3576(s0)
	addi  t0, s0, -1516
	lw  t0, 0(t0)
	lw  t1, -3576(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -3580(s0)
	lw  a0, -3580(s0)
	call  getcount
	sw  a0, -3584(s0)
	addi  t0, s0, -1524
	lw  t0, 0(t0)
	lw  t1, -3584(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -3588(s0)
	lw  a0, -3588(s0)
	call  getcount
	sw  a0, -3592(s0)
	addi  t0, s0, -1532
	lw  t0, 0(t0)
	lw  t1, -3592(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -3596(s0)
	lw  a0, -3596(s0)
	call  getcount
	sw  a0, -3600(s0)
	addi  t0, s0, -1540
	lw  t0, 0(t0)
	lw  t1, -3600(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -3604(s0)
	lw  a0, -3604(s0)
	call  getcount
	sw  a0, -3608(s0)
	addi  t0, s0, -1548
	lw  t0, 0(t0)
	lw  t1, -3608(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -3612(s0)
	lw  a0, -3612(s0)
	call  getcount
	sw  a0, -3616(s0)
	addi  t0, s0, -1556
	lw  t0, 0(t0)
	lw  t1, -3616(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -3620(s0)
	lw  a0, -3620(s0)
	call  getcount
	sw  a0, -3624(s0)
	addi  t0, s0, -1564
	lw  t0, 0(t0)
	lw  t1, -3624(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -3628(s0)
	lw  a0, -3628(s0)
	call  getcount
	sw  a0, -3632(s0)
	addi  t0, s0, -1572
	lw  t0, 0(t0)
	lw  t1, -3632(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -3636(s0)
	lw  a0, -3636(s0)
	call  getcount
	sw  a0, -3640(s0)
	addi  t0, s0, -1580
	lw  t0, 0(t0)
	lw  t1, -3640(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -3644(s0)
	lw  a0, -3644(s0)
	call  getcount
	sw  a0, -3648(s0)
	addi  t0, s0, -1588
	lw  t0, 0(t0)
	lw  t1, -3648(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -3652(s0)
	lw  a0, -3652(s0)
	call  getcount
	sw  a0, -3656(s0)
	addi  t0, s0, -1596
	lw  t0, 0(t0)
	lw  t1, -3656(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -3660(s0)
	lw  a0, -3660(s0)
	call  getcount
	sw  a0, -3664(s0)
	addi  t0, s0, -1604
	lw  t0, 0(t0)
	lw  t1, -3664(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -3668(s0)
	lw  a0, -3668(s0)
	call  getcount
	sw  a0, -3672(s0)
	addi  t0, s0, -1612
	lw  t0, 0(t0)
	lw  t1, -3672(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -3676(s0)
	lw  a0, -3676(s0)
	call  getcount
	sw  a0, -3680(s0)
	addi  t0, s0, -1620
	lw  t0, 0(t0)
	lw  t1, -3680(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -3684(s0)
	lw  a0, -3684(s0)
	call  getcount
	sw  a0, -3688(s0)
	addi  t0, s0, -1628
	lw  t0, 0(t0)
	lw  t1, -3688(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -3692(s0)
	lw  a0, -3692(s0)
	call  getcount
	sw  a0, -3696(s0)
	addi  t0, s0, -1636
	lw  t0, 0(t0)
	lw  t1, -3696(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -3700(s0)
	lw  a0, -3700(s0)
	call  getcount
	sw  a0, -3704(s0)
	addi  t0, s0, -1644
	lw  t0, 0(t0)
	lw  t1, -3704(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -3708(s0)
	lw  a0, -3708(s0)
	call  getcount
	sw  a0, -3712(s0)
	addi  t0, s0, -1652
	lw  t0, 0(t0)
	lw  t1, -3712(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -3716(s0)
	lw  a0, -3716(s0)
	call  getcount
	sw  a0, -3720(s0)
	addi  t0, s0, -1660
	lw  t0, 0(t0)
	lw  t1, -3720(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -3724(s0)
	lw  a0, -3724(s0)
	call  getcount
	sw  a0, -3728(s0)
	addi  t0, s0, -1668
	lw  t0, 0(t0)
	lw  t1, -3728(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -3732(s0)
	lw  a0, -3732(s0)
	call  getcount
	sw  a0, -3736(s0)
	addi  t0, s0, -1676
	lw  t0, 0(t0)
	lw  t1, -3736(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -3740(s0)
	lw  a0, -3740(s0)
	call  getcount
	sw  a0, -3744(s0)
	addi  t0, s0, -1684
	lw  t0, 0(t0)
	lw  t1, -3744(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -3748(s0)
	lw  a0, -3748(s0)
	call  getcount
	sw  a0, -3752(s0)
	addi  t0, s0, -1692
	lw  t0, 0(t0)
	lw  t1, -3752(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -3756(s0)
	lw  a0, -3756(s0)
	call  getcount
	sw  a0, -3760(s0)
	addi  t0, s0, -1700
	lw  t0, 0(t0)
	lw  t1, -3760(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -3764(s0)
	lw  a0, -3764(s0)
	call  getcount
	sw  a0, -3768(s0)
	addi  t0, s0, -1708
	lw  t0, 0(t0)
	lw  t1, -3768(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -3772(s0)
	lw  a0, -3772(s0)
	call  getcount
	sw  a0, -3776(s0)
	addi  t0, s0, -1716
	lw  t0, 0(t0)
	lw  t1, -3776(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -3780(s0)
	lw  a0, -3780(s0)
	call  getcount
	sw  a0, -3784(s0)
	addi  t0, s0, -1724
	lw  t0, 0(t0)
	lw  t1, -3784(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -3788(s0)
	lw  a0, -3788(s0)
	call  getcount
	sw  a0, -3792(s0)
	addi  t0, s0, -1732
	lw  t0, 0(t0)
	lw  t1, -3792(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -3796(s0)
	lw  a0, -3796(s0)
	call  getcount
	sw  a0, -3800(s0)
	addi  t0, s0, -1740
	lw  t0, 0(t0)
	lw  t1, -3800(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -3804(s0)
	lw  a0, -3804(s0)
	call  getcount
	sw  a0, -3808(s0)
	addi  t0, s0, -1748
	lw  t0, 0(t0)
	lw  t1, -3808(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -3812(s0)
	lw  a0, -3812(s0)
	call  getcount
	sw  a0, -3816(s0)
	addi  t0, s0, -1756
	lw  t0, 0(t0)
	lw  t1, -3816(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -3820(s0)
	lw  a0, -3820(s0)
	call  getcount
	sw  a0, -3824(s0)
	addi  t0, s0, -1764
	lw  t0, 0(t0)
	lw  t1, -3824(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -3828(s0)
	lw  a0, -3828(s0)
	call  getcount
	sw  a0, -3832(s0)
	addi  t0, s0, -1772
	lw  t0, 0(t0)
	lw  t1, -3832(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -3836(s0)
	lw  a0, -3836(s0)
	call  getcount
	sw  a0, -3840(s0)
	addi  t0, s0, -1780
	lw  t0, 0(t0)
	lw  t1, -3840(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -3844(s0)
	lw  a0, -3844(s0)
	call  getcount
	sw  a0, -3848(s0)
	addi  t0, s0, -1788
	lw  t0, 0(t0)
	lw  t1, -3848(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -3852(s0)
	lw  a0, -3852(s0)
	call  getcount
	sw  a0, -3856(s0)
	addi  t0, s0, -1796
	lw  t0, 0(t0)
	lw  t1, -3856(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -3860(s0)
	lw  a0, -3860(s0)
	call  getcount
	sw  a0, -3864(s0)
	addi  t0, s0, -1804
	lw  t0, 0(t0)
	lw  t1, -3864(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -3868(s0)
	lw  a0, -3868(s0)
	call  getcount
	sw  a0, -3872(s0)
	addi  t0, s0, -1812
	lw  t0, 0(t0)
	lw  t1, -3872(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -3876(s0)
	lw  a0, -3876(s0)
	call  getcount
	sw  a0, -3880(s0)
	addi  t0, s0, -1820
	lw  t0, 0(t0)
	lw  t1, -3880(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -3884(s0)
	lw  a0, -3884(s0)
	call  getcount
	sw  a0, -3888(s0)
	addi  t0, s0, -1828
	lw  t0, 0(t0)
	lw  t1, -3888(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -3892(s0)
	lw  a0, -3892(s0)
	call  getcount
	sw  a0, -3896(s0)
	addi  t0, s0, -1836
	lw  t0, 0(t0)
	lw  t1, -3896(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -3900(s0)
	lw  a0, -3900(s0)
	call  getcount
	sw  a0, -3904(s0)
	addi  t0, s0, -1844
	lw  t0, 0(t0)
	lw  t1, -3904(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -3908(s0)
	lw  a0, -3908(s0)
	call  getcount
	sw  a0, -3912(s0)
	addi  t0, s0, -1852
	lw  t0, 0(t0)
	lw  t1, -3912(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -3916(s0)
	lw  a0, -3916(s0)
	call  getcount
	sw  a0, -3920(s0)
	addi  t0, s0, -1860
	lw  t0, 0(t0)
	lw  t1, -3920(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -3924(s0)
	lw  a0, -3924(s0)
	call  getcount
	sw  a0, -3928(s0)
	addi  t0, s0, -1868
	lw  t0, 0(t0)
	lw  t1, -3928(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -3932(s0)
	lw  a0, -3932(s0)
	call  getcount
	sw  a0, -3936(s0)
	addi  t0, s0, -1876
	lw  t0, 0(t0)
	lw  t1, -3936(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -3940(s0)
	lw  a0, -3940(s0)
	call  getcount
	sw  a0, -3944(s0)
	addi  t0, s0, -1884
	lw  t0, 0(t0)
	lw  t1, -3944(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -3948(s0)
	lw  a0, -3948(s0)
	call  getcount
	sw  a0, -3952(s0)
	addi  t0, s0, -1892
	lw  t0, 0(t0)
	lw  t1, -3952(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -3956(s0)
	lw  a0, -3956(s0)
	call  getcount
	sw  a0, -3960(s0)
	addi  t0, s0, -1900
	lw  t0, 0(t0)
	lw  t1, -3960(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -3964(s0)
	lw  a0, -3964(s0)
	call  getcount
	sw  a0, -3968(s0)
	addi  t0, s0, -1908
	lw  t0, 0(t0)
	lw  t1, -3968(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -3972(s0)
	lw  a0, -3972(s0)
	call  getcount
	sw  a0, -3976(s0)
	addi  t0, s0, -1916
	lw  t0, 0(t0)
	lw  t1, -3976(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -3980(s0)
	lw  a0, -3980(s0)
	call  getcount
	sw  a0, -3984(s0)
	addi  t0, s0, -1924
	lw  t0, 0(t0)
	lw  t1, -3984(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -3988(s0)
	lw  a0, -3988(s0)
	call  getcount
	sw  a0, -3992(s0)
	addi  t0, s0, -1932
	lw  t0, 0(t0)
	lw  t1, -3992(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -3996(s0)
	lw  a0, -3996(s0)
	call  getcount
	sw  a0, -4000(s0)
	addi  t0, s0, -1940
	lw  t0, 0(t0)
	lw  t1, -4000(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -4004(s0)
	lw  a0, -4004(s0)
	call  getcount
	sw  a0, -4008(s0)
	addi  t0, s0, -1948
	lw  t0, 0(t0)
	lw  t1, -4008(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -4012(s0)
	lw  a0, -4012(s0)
	call  getcount
	sw  a0, -4016(s0)
	addi  t0, s0, -1956
	lw  t0, 0(t0)
	lw  t1, -4016(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -4020(s0)
	lw  a0, -4020(s0)
	call  getcount
	sw  a0, -4024(s0)
	addi  t0, s0, -1964
	lw  t0, 0(t0)
	lw  t1, -4024(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -4028(s0)
	lw  a0, -4028(s0)
	call  getcount
	sw  a0, -4032(s0)
	addi  t0, s0, -1972
	lw  t0, 0(t0)
	lw  t1, -4032(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -4036(s0)
	lw  a0, -4036(s0)
	call  getcount
	sw  a0, -4040(s0)
	addi  t0, s0, -1980
	lw  t0, 0(t0)
	lw  t1, -4040(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -4044(s0)
	lw  a0, -4044(s0)
	call  getcount
	sw  a0, -4048(s0)
	addi  t0, s0, -1988
	lw  t0, 0(t0)
	lw  t1, -4048(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -4052(s0)
	lw  a0, -4052(s0)
	call  getcount
	sw  a0, -4056(s0)
	addi  t0, s0, -1996
	lw  t0, 0(t0)
	lw  t1, -4056(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -4060(s0)
	lw  a0, -4060(s0)
	call  getcount
	sw  a0, -4064(s0)
	addi  t0, s0, -2004
	lw  t0, 0(t0)
	lw  t1, -4064(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -4068(s0)
	lw  a0, -4068(s0)
	call  getcount
	sw  a0, -4072(s0)
	addi  t0, s0, -2012
	lw  t0, 0(t0)
	lw  t1, -4072(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -4076(s0)
	lw  a0, -4076(s0)
	call  getcount
	sw  a0, -4080(s0)
	addi  t0, s0, -2020
	lw  t0, 0(t0)
	lw  t1, -4080(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -4084(s0)
	lw  a0, -4084(s0)
	call  getcount
	sw  a0, -4088(s0)
	addi  t0, s0, -2028
	lw  t0, 0(t0)
	lw  t1, -4088(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -4092(s0)
	lw  a0, -4092(s0)
	call  getcount
	sw  a0, -4096(s0)
	addi  t0, s0, -2036
	lw  t0, 0(t0)
	lw  t1, -4096(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -4100(s0)
	lw  a0, -4100(s0)
	call  getcount
	sw  a0, -4104(s0)
	addi  t0, s0, -2044
	lw  t0, 0(t0)
	lw  t1, -4104(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -4108(s0)
	lw  a0, -4108(s0)
	call  getcount
	sw  a0, -4112(s0)
	addi  t0, s0, -2052
	lw  t0, 0(t0)
	lw  t1, -4112(s0)
	sw  t1, 0(t0)
	la  t0, .@count
	lw  t0, 0(t0)
	sw  t0, -4116(s0)
	lw  a0, -4116(s0)
	call  getcount
	sw  a0, -4120(s0)
	addi  t0, s0, -2060
	lw  t0, 0(t0)
	lw  t1, -4120(s0)
	sw  t1, 0(t0)
	lw  t0, -20(s0)
	lw  t0, 0(t0)
	sw  t0, -4124(s0)
	lw  a0, -4124(s0)
	call  toString
	sw  a0, -4128(s0)
	lw  a0, -4128(s0)
	la  a1, .$str1
	call  string_add
	sw  a0, -4132(s0)
	lw  a0, -4132(s0)
	call  print
	lw  t0, -28(s0)
	lw  t0, 0(t0)
	sw  t0, -4136(s0)
	lw  a0, -4136(s0)
	call  toString
	sw  a0, -4140(s0)
	lw  a0, -4140(s0)
	la  a1, .$str2
	call  string_add
	sw  a0, -4144(s0)
	lw  a0, -4144(s0)
	call  print
	lw  t0, -36(s0)
	lw  t0, 0(t0)
	sw  t0, -4148(s0)
	lw  a0, -4148(s0)
	call  toString
	sw  a0, -4152(s0)
	lw  a0, -4152(s0)
	la  a1, .$str3
	call  string_add
	sw  a0, -4156(s0)
	lw  a0, -4156(s0)
	call  print
	lw  t0, -44(s0)
	lw  t0, 0(t0)
	sw  t0, -4160(s0)
	lw  a0, -4160(s0)
	call  toString
	sw  a0, -4164(s0)
	lw  a0, -4164(s0)
	la  a1, .$str4
	call  string_add
	sw  a0, -4168(s0)
	lw  a0, -4168(s0)
	call  print
	lw  t0, -52(s0)
	lw  t0, 0(t0)
	sw  t0, -4172(s0)
	lw  a0, -4172(s0)
	call  toString
	sw  a0, -4176(s0)
	lw  a0, -4176(s0)
	la  a1, .$str5
	call  string_add
	sw  a0, -4180(s0)
	lw  a0, -4180(s0)
	call  print
	lw  t0, -60(s0)
	lw  t0, 0(t0)
	sw  t0, -4184(s0)
	lw  a0, -4184(s0)
	call  toString
	sw  a0, -4188(s0)
	lw  a0, -4188(s0)
	la  a1, .$str6
	call  string_add
	sw  a0, -4192(s0)
	lw  a0, -4192(s0)
	call  print
	lw  t0, -68(s0)
	lw  t0, 0(t0)
	sw  t0, -4196(s0)
	lw  a0, -4196(s0)
	call  toString
	sw  a0, -4200(s0)
	lw  a0, -4200(s0)
	la  a1, .$str7
	call  string_add
	sw  a0, -4204(s0)
	lw  a0, -4204(s0)
	call  print
	lw  t0, -76(s0)
	lw  t0, 0(t0)
	sw  t0, -4208(s0)
	lw  a0, -4208(s0)
	call  toString
	sw  a0, -4212(s0)
	lw  a0, -4212(s0)
	la  a1, .$str8
	call  string_add
	sw  a0, -4216(s0)
	lw  a0, -4216(s0)
	call  print
	lw  t0, -84(s0)
	lw  t0, 0(t0)
	sw  t0, -4220(s0)
	lw  a0, -4220(s0)
	call  toString
	sw  a0, -4224(s0)
	lw  a0, -4224(s0)
	la  a1, .$str9
	call  string_add
	sw  a0, -4228(s0)
	lw  a0, -4228(s0)
	call  print
	lw  t0, -92(s0)
	lw  t0, 0(t0)
	sw  t0, -4232(s0)
	lw  a0, -4232(s0)
	call  toString
	sw  a0, -4236(s0)
	lw  a0, -4236(s0)
	la  a1, .$str10
	call  string_add
	sw  a0, -4240(s0)
	lw  a0, -4240(s0)
	call  print
	lw  t0, -100(s0)
	lw  t0, 0(t0)
	sw  t0, -4244(s0)
	lw  a0, -4244(s0)
	call  toString
	sw  a0, -4248(s0)
	lw  a0, -4248(s0)
	la  a1, .$str11
	call  string_add
	sw  a0, -4252(s0)
	lw  a0, -4252(s0)
	call  print
	lw  t0, -108(s0)
	lw  t0, 0(t0)
	sw  t0, -4256(s0)
	lw  a0, -4256(s0)
	call  toString
	sw  a0, -4260(s0)
	lw  a0, -4260(s0)
	la  a1, .$str12
	call  string_add
	sw  a0, -4264(s0)
	lw  a0, -4264(s0)
	call  print
	lw  t0, -116(s0)
	lw  t0, 0(t0)
	sw  t0, -4268(s0)
	lw  a0, -4268(s0)
	call  toString
	sw  a0, -4272(s0)
	lw  a0, -4272(s0)
	la  a1, .$str13
	call  string_add
	sw  a0, -4276(s0)
	lw  a0, -4276(s0)
	call  print
	lw  t0, -124(s0)
	lw  t0, 0(t0)
	sw  t0, -4280(s0)
	lw  a0, -4280(s0)
	call  toString
	sw  a0, -4284(s0)
	lw  a0, -4284(s0)
	la  a1, .$str14
	call  string_add
	sw  a0, -4288(s0)
	lw  a0, -4288(s0)
	call  print
	lw  t0, -132(s0)
	lw  t0, 0(t0)
	sw  t0, -4292(s0)
	lw  a0, -4292(s0)
	call  toString
	sw  a0, -4296(s0)
	lw  a0, -4296(s0)
	la  a1, .$str15
	call  string_add
	sw  a0, -4300(s0)
	lw  a0, -4300(s0)
	call  print
	lw  t0, -140(s0)
	lw  t0, 0(t0)
	sw  t0, -4304(s0)
	lw  a0, -4304(s0)
	call  toString
	sw  a0, -4308(s0)
	lw  a0, -4308(s0)
	la  a1, .$str16
	call  string_add
	sw  a0, -4312(s0)
	lw  a0, -4312(s0)
	call  print
	lw  t0, -148(s0)
	lw  t0, 0(t0)
	sw  t0, -4316(s0)
	lw  a0, -4316(s0)
	call  toString
	sw  a0, -4320(s0)
	lw  a0, -4320(s0)
	la  a1, .$str17
	call  string_add
	sw  a0, -4324(s0)
	lw  a0, -4324(s0)
	call  print
	lw  t0, -156(s0)
	lw  t0, 0(t0)
	sw  t0, -4328(s0)
	lw  a0, -4328(s0)
	call  toString
	sw  a0, -4332(s0)
	lw  a0, -4332(s0)
	la  a1, .$str18
	call  string_add
	sw  a0, -4336(s0)
	lw  a0, -4336(s0)
	call  print
	lw  t0, -164(s0)
	lw  t0, 0(t0)
	sw  t0, -4340(s0)
	lw  a0, -4340(s0)
	call  toString
	sw  a0, -4344(s0)
	lw  a0, -4344(s0)
	la  a1, .$str19
	call  string_add
	sw  a0, -4348(s0)
	lw  a0, -4348(s0)
	call  print
	lw  t0, -172(s0)
	lw  t0, 0(t0)
	sw  t0, -4352(s0)
	lw  a0, -4352(s0)
	call  toString
	sw  a0, -4356(s0)
	lw  a0, -4356(s0)
	la  a1, .$str20
	call  string_add
	sw  a0, -4360(s0)
	lw  a0, -4360(s0)
	call  print
	lw  t0, -180(s0)
	lw  t0, 0(t0)
	sw  t0, -4364(s0)
	lw  a0, -4364(s0)
	call  toString
	sw  a0, -4368(s0)
	lw  a0, -4368(s0)
	la  a1, .$str21
	call  string_add
	sw  a0, -4372(s0)
	lw  a0, -4372(s0)
	call  print
	lw  t0, -188(s0)
	lw  t0, 0(t0)
	sw  t0, -4376(s0)
	lw  a0, -4376(s0)
	call  toString
	sw  a0, -4380(s0)
	lw  a0, -4380(s0)
	la  a1, .$str22
	call  string_add
	sw  a0, -4384(s0)
	lw  a0, -4384(s0)
	call  print
	lw  t0, -196(s0)
	lw  t0, 0(t0)
	sw  t0, -4388(s0)
	lw  a0, -4388(s0)
	call  toString
	sw  a0, -4392(s0)
	lw  a0, -4392(s0)
	la  a1, .$str23
	call  string_add
	sw  a0, -4396(s0)
	lw  a0, -4396(s0)
	call  print
	lw  t0, -204(s0)
	lw  t0, 0(t0)
	sw  t0, -4400(s0)
	lw  a0, -4400(s0)
	call  toString
	sw  a0, -4404(s0)
	lw  a0, -4404(s0)
	la  a1, .$str24
	call  string_add
	sw  a0, -4408(s0)
	lw  a0, -4408(s0)
	call  print
	lw  t0, -212(s0)
	lw  t0, 0(t0)
	sw  t0, -4412(s0)
	lw  a0, -4412(s0)
	call  toString
	sw  a0, -4416(s0)
	lw  a0, -4416(s0)
	la  a1, .$str25
	call  string_add
	sw  a0, -4420(s0)
	lw  a0, -4420(s0)
	call  print
	lw  t0, -220(s0)
	lw  t0, 0(t0)
	sw  t0, -4424(s0)
	lw  a0, -4424(s0)
	call  toString
	sw  a0, -4428(s0)
	lw  a0, -4428(s0)
	la  a1, .$str26
	call  string_add
	sw  a0, -4432(s0)
	lw  a0, -4432(s0)
	call  print
	lw  t0, -228(s0)
	lw  t0, 0(t0)
	sw  t0, -4436(s0)
	lw  a0, -4436(s0)
	call  toString
	sw  a0, -4440(s0)
	lw  a0, -4440(s0)
	la  a1, .$str27
	call  string_add
	sw  a0, -4444(s0)
	lw  a0, -4444(s0)
	call  print
	lw  t0, -236(s0)
	lw  t0, 0(t0)
	sw  t0, -4448(s0)
	lw  a0, -4448(s0)
	call  toString
	sw  a0, -4452(s0)
	lw  a0, -4452(s0)
	la  a1, .$str28
	call  string_add
	sw  a0, -4456(s0)
	lw  a0, -4456(s0)
	call  print
	lw  t0, -244(s0)
	lw  t0, 0(t0)
	sw  t0, -4460(s0)
	lw  a0, -4460(s0)
	call  toString
	sw  a0, -4464(s0)
	lw  a0, -4464(s0)
	la  a1, .$str29
	call  string_add
	sw  a0, -4468(s0)
	lw  a0, -4468(s0)
	call  print
	lw  t0, -252(s0)
	lw  t0, 0(t0)
	sw  t0, -4472(s0)
	lw  a0, -4472(s0)
	call  toString
	sw  a0, -4476(s0)
	lw  a0, -4476(s0)
	la  a1, .$str30
	call  string_add
	sw  a0, -4480(s0)
	lw  a0, -4480(s0)
	call  print
	lw  t0, -260(s0)
	lw  t0, 0(t0)
	sw  t0, -4484(s0)
	lw  a0, -4484(s0)
	call  toString
	sw  a0, -4488(s0)
	lw  a0, -4488(s0)
	la  a1, .$str31
	call  string_add
	sw  a0, -4492(s0)
	lw  a0, -4492(s0)
	call  print
	lw  t0, -268(s0)
	lw  t0, 0(t0)
	sw  t0, -4496(s0)
	lw  a0, -4496(s0)
	call  toString
	sw  a0, -4500(s0)
	lw  a0, -4500(s0)
	la  a1, .$str32
	call  string_add
	sw  a0, -4504(s0)
	lw  a0, -4504(s0)
	call  print
	lw  t0, -276(s0)
	lw  t0, 0(t0)
	sw  t0, -4508(s0)
	lw  a0, -4508(s0)
	call  toString
	sw  a0, -4512(s0)
	lw  a0, -4512(s0)
	la  a1, .$str33
	call  string_add
	sw  a0, -4516(s0)
	lw  a0, -4516(s0)
	call  print
	lw  t0, -284(s0)
	lw  t0, 0(t0)
	sw  t0, -4520(s0)
	lw  a0, -4520(s0)
	call  toString
	sw  a0, -4524(s0)
	lw  a0, -4524(s0)
	la  a1, .$str34
	call  string_add
	sw  a0, -4528(s0)
	lw  a0, -4528(s0)
	call  print
	lw  t0, -292(s0)
	lw  t0, 0(t0)
	sw  t0, -4532(s0)
	lw  a0, -4532(s0)
	call  toString
	sw  a0, -4536(s0)
	lw  a0, -4536(s0)
	la  a1, .$str35
	call  string_add
	sw  a0, -4540(s0)
	lw  a0, -4540(s0)
	call  print
	lw  t0, -300(s0)
	lw  t0, 0(t0)
	sw  t0, -4544(s0)
	lw  a0, -4544(s0)
	call  toString
	sw  a0, -4548(s0)
	lw  a0, -4548(s0)
	la  a1, .$str36
	call  string_add
	sw  a0, -4552(s0)
	lw  a0, -4552(s0)
	call  print
	lw  t0, -308(s0)
	lw  t0, 0(t0)
	sw  t0, -4556(s0)
	lw  a0, -4556(s0)
	call  toString
	sw  a0, -4560(s0)
	lw  a0, -4560(s0)
	la  a1, .$str37
	call  string_add
	sw  a0, -4564(s0)
	lw  a0, -4564(s0)
	call  print
	lw  t0, -316(s0)
	lw  t0, 0(t0)
	sw  t0, -4568(s0)
	lw  a0, -4568(s0)
	call  toString
	sw  a0, -4572(s0)
	lw  a0, -4572(s0)
	la  a1, .$str38
	call  string_add
	sw  a0, -4576(s0)
	lw  a0, -4576(s0)
	call  print
	lw  t0, -324(s0)
	lw  t0, 0(t0)
	sw  t0, -4580(s0)
	lw  a0, -4580(s0)
	call  toString
	sw  a0, -4584(s0)
	lw  a0, -4584(s0)
	la  a1, .$str39
	call  string_add
	sw  a0, -4588(s0)
	lw  a0, -4588(s0)
	call  print
	lw  t0, -332(s0)
	lw  t0, 0(t0)
	sw  t0, -4592(s0)
	lw  a0, -4592(s0)
	call  toString
	sw  a0, -4596(s0)
	lw  a0, -4596(s0)
	la  a1, .$str40
	call  string_add
	sw  a0, -4600(s0)
	lw  a0, -4600(s0)
	call  print
	lw  t0, -340(s0)
	lw  t0, 0(t0)
	sw  t0, -4604(s0)
	lw  a0, -4604(s0)
	call  toString
	sw  a0, -4608(s0)
	lw  a0, -4608(s0)
	la  a1, .$str41
	call  string_add
	sw  a0, -4612(s0)
	lw  a0, -4612(s0)
	call  print
	lw  t0, -348(s0)
	lw  t0, 0(t0)
	sw  t0, -4616(s0)
	lw  a0, -4616(s0)
	call  toString
	sw  a0, -4620(s0)
	lw  a0, -4620(s0)
	la  a1, .$str42
	call  string_add
	sw  a0, -4624(s0)
	lw  a0, -4624(s0)
	call  print
	lw  t0, -356(s0)
	lw  t0, 0(t0)
	sw  t0, -4628(s0)
	lw  a0, -4628(s0)
	call  toString
	sw  a0, -4632(s0)
	lw  a0, -4632(s0)
	la  a1, .$str43
	call  string_add
	sw  a0, -4636(s0)
	lw  a0, -4636(s0)
	call  print
	lw  t0, -364(s0)
	lw  t0, 0(t0)
	sw  t0, -4640(s0)
	lw  a0, -4640(s0)
	call  toString
	sw  a0, -4644(s0)
	lw  a0, -4644(s0)
	la  a1, .$str44
	call  string_add
	sw  a0, -4648(s0)
	lw  a0, -4648(s0)
	call  print
	lw  t0, -372(s0)
	lw  t0, 0(t0)
	sw  t0, -4652(s0)
	lw  a0, -4652(s0)
	call  toString
	sw  a0, -4656(s0)
	lw  a0, -4656(s0)
	la  a1, .$str45
	call  string_add
	sw  a0, -4660(s0)
	lw  a0, -4660(s0)
	call  print
	lw  t0, -380(s0)
	lw  t0, 0(t0)
	sw  t0, -4664(s0)
	lw  a0, -4664(s0)
	call  toString
	sw  a0, -4668(s0)
	lw  a0, -4668(s0)
	la  a1, .$str46
	call  string_add
	sw  a0, -4672(s0)
	lw  a0, -4672(s0)
	call  print
	lw  t0, -388(s0)
	lw  t0, 0(t0)
	sw  t0, -4676(s0)
	lw  a0, -4676(s0)
	call  toString
	sw  a0, -4680(s0)
	lw  a0, -4680(s0)
	la  a1, .$str47
	call  string_add
	sw  a0, -4684(s0)
	lw  a0, -4684(s0)
	call  print
	lw  t0, -396(s0)
	lw  t0, 0(t0)
	sw  t0, -4688(s0)
	lw  a0, -4688(s0)
	call  toString
	sw  a0, -4692(s0)
	lw  a0, -4692(s0)
	la  a1, .$str48
	call  string_add
	sw  a0, -4696(s0)
	lw  a0, -4696(s0)
	call  print
	lw  t0, -404(s0)
	lw  t0, 0(t0)
	sw  t0, -4700(s0)
	lw  a0, -4700(s0)
	call  toString
	sw  a0, -4704(s0)
	lw  a0, -4704(s0)
	la  a1, .$str49
	call  string_add
	sw  a0, -4708(s0)
	lw  a0, -4708(s0)
	call  print
	lw  t0, -412(s0)
	lw  t0, 0(t0)
	sw  t0, -4712(s0)
	lw  a0, -4712(s0)
	call  toString
	sw  a0, -4716(s0)
	lw  a0, -4716(s0)
	la  a1, .$str50
	call  string_add
	sw  a0, -4720(s0)
	lw  a0, -4720(s0)
	call  print
	lw  t0, -420(s0)
	lw  t0, 0(t0)
	sw  t0, -4724(s0)
	lw  a0, -4724(s0)
	call  toString
	sw  a0, -4728(s0)
	lw  a0, -4728(s0)
	la  a1, .$str51
	call  string_add
	sw  a0, -4732(s0)
	lw  a0, -4732(s0)
	call  print
	lw  t0, -428(s0)
	lw  t0, 0(t0)
	sw  t0, -4736(s0)
	lw  a0, -4736(s0)
	call  toString
	sw  a0, -4740(s0)
	lw  a0, -4740(s0)
	la  a1, .$str52
	call  string_add
	sw  a0, -4744(s0)
	lw  a0, -4744(s0)
	call  print
	lw  t0, -436(s0)
	lw  t0, 0(t0)
	sw  t0, -4748(s0)
	lw  a0, -4748(s0)
	call  toString
	sw  a0, -4752(s0)
	lw  a0, -4752(s0)
	la  a1, .$str53
	call  string_add
	sw  a0, -4756(s0)
	lw  a0, -4756(s0)
	call  print
	lw  t0, -444(s0)
	lw  t0, 0(t0)
	sw  t0, -4760(s0)
	lw  a0, -4760(s0)
	call  toString
	sw  a0, -4764(s0)
	lw  a0, -4764(s0)
	la  a1, .$str54
	call  string_add
	sw  a0, -4768(s0)
	lw  a0, -4768(s0)
	call  print
	lw  t0, -452(s0)
	lw  t0, 0(t0)
	sw  t0, -4772(s0)
	lw  a0, -4772(s0)
	call  toString
	sw  a0, -4776(s0)
	lw  a0, -4776(s0)
	la  a1, .$str55
	call  string_add
	sw  a0, -4780(s0)
	lw  a0, -4780(s0)
	call  print
	lw  t0, -460(s0)
	lw  t0, 0(t0)
	sw  t0, -4784(s0)
	lw  a0, -4784(s0)
	call  toString
	sw  a0, -4788(s0)
	lw  a0, -4788(s0)
	la  a1, .$str56
	call  string_add
	sw  a0, -4792(s0)
	lw  a0, -4792(s0)
	call  print
	lw  t0, -468(s0)
	lw  t0, 0(t0)
	sw  t0, -4796(s0)
	lw  a0, -4796(s0)
	call  toString
	sw  a0, -4800(s0)
	lw  a0, -4800(s0)
	la  a1, .$str57
	call  string_add
	sw  a0, -4804(s0)
	lw  a0, -4804(s0)
	call  print
	lw  t0, -476(s0)
	lw  t0, 0(t0)
	sw  t0, -4808(s0)
	lw  a0, -4808(s0)
	call  toString
	sw  a0, -4812(s0)
	lw  a0, -4812(s0)
	la  a1, .$str58
	call  string_add
	sw  a0, -4816(s0)
	lw  a0, -4816(s0)
	call  print
	lw  t0, -484(s0)
	lw  t0, 0(t0)
	sw  t0, -4820(s0)
	lw  a0, -4820(s0)
	call  toString
	sw  a0, -4824(s0)
	lw  a0, -4824(s0)
	la  a1, .$str59
	call  string_add
	sw  a0, -4828(s0)
	lw  a0, -4828(s0)
	call  print
	lw  t0, -492(s0)
	lw  t0, 0(t0)
	sw  t0, -4832(s0)
	lw  a0, -4832(s0)
	call  toString
	sw  a0, -4836(s0)
	lw  a0, -4836(s0)
	la  a1, .$str60
	call  string_add
	sw  a0, -4840(s0)
	lw  a0, -4840(s0)
	call  print
	lw  t0, -500(s0)
	lw  t0, 0(t0)
	sw  t0, -4844(s0)
	lw  a0, -4844(s0)
	call  toString
	sw  a0, -4848(s0)
	lw  a0, -4848(s0)
	la  a1, .$str61
	call  string_add
	sw  a0, -4852(s0)
	lw  a0, -4852(s0)
	call  print
	lw  t0, -508(s0)
	lw  t0, 0(t0)
	sw  t0, -4856(s0)
	lw  a0, -4856(s0)
	call  toString
	sw  a0, -4860(s0)
	lw  a0, -4860(s0)
	la  a1, .$str62
	call  string_add
	sw  a0, -4864(s0)
	lw  a0, -4864(s0)
	call  print
	lw  t0, -516(s0)
	lw  t0, 0(t0)
	sw  t0, -4868(s0)
	lw  a0, -4868(s0)
	call  toString
	sw  a0, -4872(s0)
	lw  a0, -4872(s0)
	la  a1, .$str63
	call  string_add
	sw  a0, -4876(s0)
	lw  a0, -4876(s0)
	call  print
	lw  t0, -524(s0)
	lw  t0, 0(t0)
	sw  t0, -4880(s0)
	lw  a0, -4880(s0)
	call  toString
	sw  a0, -4884(s0)
	lw  a0, -4884(s0)
	la  a1, .$str64
	call  string_add
	sw  a0, -4888(s0)
	lw  a0, -4888(s0)
	call  print
	lw  t0, -532(s0)
	lw  t0, 0(t0)
	sw  t0, -4892(s0)
	lw  a0, -4892(s0)
	call  toString
	sw  a0, -4896(s0)
	lw  a0, -4896(s0)
	la  a1, .$str65
	call  string_add
	sw  a0, -4900(s0)
	lw  a0, -4900(s0)
	call  print
	lw  t0, -540(s0)
	lw  t0, 0(t0)
	sw  t0, -4904(s0)
	lw  a0, -4904(s0)
	call  toString
	sw  a0, -4908(s0)
	lw  a0, -4908(s0)
	la  a1, .$str66
	call  string_add
	sw  a0, -4912(s0)
	lw  a0, -4912(s0)
	call  print
	lw  t0, -548(s0)
	lw  t0, 0(t0)
	sw  t0, -4916(s0)
	lw  a0, -4916(s0)
	call  toString
	sw  a0, -4920(s0)
	lw  a0, -4920(s0)
	la  a1, .$str67
	call  string_add
	sw  a0, -4924(s0)
	lw  a0, -4924(s0)
	call  print
	lw  t0, -556(s0)
	lw  t0, 0(t0)
	sw  t0, -4928(s0)
	lw  a0, -4928(s0)
	call  toString
	sw  a0, -4932(s0)
	lw  a0, -4932(s0)
	la  a1, .$str68
	call  string_add
	sw  a0, -4936(s0)
	lw  a0, -4936(s0)
	call  print
	lw  t0, -564(s0)
	lw  t0, 0(t0)
	sw  t0, -4940(s0)
	lw  a0, -4940(s0)
	call  toString
	sw  a0, -4944(s0)
	lw  a0, -4944(s0)
	la  a1, .$str69
	call  string_add
	sw  a0, -4948(s0)
	lw  a0, -4948(s0)
	call  print
	lw  t0, -572(s0)
	lw  t0, 0(t0)
	sw  t0, -4952(s0)
	lw  a0, -4952(s0)
	call  toString
	sw  a0, -4956(s0)
	lw  a0, -4956(s0)
	la  a1, .$str70
	call  string_add
	sw  a0, -4960(s0)
	lw  a0, -4960(s0)
	call  print
	lw  t0, -580(s0)
	lw  t0, 0(t0)
	sw  t0, -4964(s0)
	lw  a0, -4964(s0)
	call  toString
	sw  a0, -4968(s0)
	lw  a0, -4968(s0)
	la  a1, .$str71
	call  string_add
	sw  a0, -4972(s0)
	lw  a0, -4972(s0)
	call  print
	lw  t0, -588(s0)
	lw  t0, 0(t0)
	sw  t0, -4976(s0)
	lw  a0, -4976(s0)
	call  toString
	sw  a0, -4980(s0)
	lw  a0, -4980(s0)
	la  a1, .$str72
	call  string_add
	sw  a0, -4984(s0)
	lw  a0, -4984(s0)
	call  print
	lw  t0, -596(s0)
	lw  t0, 0(t0)
	sw  t0, -4988(s0)
	lw  a0, -4988(s0)
	call  toString
	sw  a0, -4992(s0)
	lw  a0, -4992(s0)
	la  a1, .$str73
	call  string_add
	sw  a0, -4996(s0)
	lw  a0, -4996(s0)
	call  print
	lw  t0, -604(s0)
	lw  t0, 0(t0)
	sw  t0, -5000(s0)
	lw  a0, -5000(s0)
	call  toString
	sw  a0, -5004(s0)
	lw  a0, -5004(s0)
	la  a1, .$str74
	call  string_add
	sw  a0, -5008(s0)
	lw  a0, -5008(s0)
	call  print
	lw  t0, -612(s0)
	lw  t0, 0(t0)
	sw  t0, -5012(s0)
	lw  a0, -5012(s0)
	call  toString
	sw  a0, -5016(s0)
	lw  a0, -5016(s0)
	la  a1, .$str75
	call  string_add
	sw  a0, -5020(s0)
	lw  a0, -5020(s0)
	call  print
	lw  t0, -620(s0)
	lw  t0, 0(t0)
	sw  t0, -5024(s0)
	lw  a0, -5024(s0)
	call  toString
	sw  a0, -5028(s0)
	lw  a0, -5028(s0)
	la  a1, .$str76
	call  string_add
	sw  a0, -5032(s0)
	lw  a0, -5032(s0)
	call  print
	lw  t0, -628(s0)
	lw  t0, 0(t0)
	sw  t0, -5036(s0)
	lw  a0, -5036(s0)
	call  toString
	sw  a0, -5040(s0)
	lw  a0, -5040(s0)
	la  a1, .$str77
	call  string_add
	sw  a0, -5044(s0)
	lw  a0, -5044(s0)
	call  print
	lw  t0, -636(s0)
	lw  t0, 0(t0)
	sw  t0, -5048(s0)
	lw  a0, -5048(s0)
	call  toString
	sw  a0, -5052(s0)
	lw  a0, -5052(s0)
	la  a1, .$str78
	call  string_add
	sw  a0, -5056(s0)
	lw  a0, -5056(s0)
	call  print
	lw  t0, -644(s0)
	lw  t0, 0(t0)
	sw  t0, -5060(s0)
	lw  a0, -5060(s0)
	call  toString
	sw  a0, -5064(s0)
	lw  a0, -5064(s0)
	la  a1, .$str79
	call  string_add
	sw  a0, -5068(s0)
	lw  a0, -5068(s0)
	call  print
	lw  t0, -652(s0)
	lw  t0, 0(t0)
	sw  t0, -5072(s0)
	lw  a0, -5072(s0)
	call  toString
	sw  a0, -5076(s0)
	lw  a0, -5076(s0)
	la  a1, .$str80
	call  string_add
	sw  a0, -5080(s0)
	lw  a0, -5080(s0)
	call  print
	lw  t0, -660(s0)
	lw  t0, 0(t0)
	sw  t0, -5084(s0)
	lw  a0, -5084(s0)
	call  toString
	sw  a0, -5088(s0)
	lw  a0, -5088(s0)
	la  a1, .$str81
	call  string_add
	sw  a0, -5092(s0)
	lw  a0, -5092(s0)
	call  print
	lw  t0, -668(s0)
	lw  t0, 0(t0)
	sw  t0, -5096(s0)
	lw  a0, -5096(s0)
	call  toString
	sw  a0, -5100(s0)
	lw  a0, -5100(s0)
	la  a1, .$str82
	call  string_add
	sw  a0, -5104(s0)
	lw  a0, -5104(s0)
	call  print
	lw  t0, -676(s0)
	lw  t0, 0(t0)
	sw  t0, -5108(s0)
	lw  a0, -5108(s0)
	call  toString
	sw  a0, -5112(s0)
	lw  a0, -5112(s0)
	la  a1, .$str83
	call  string_add
	sw  a0, -5116(s0)
	lw  a0, -5116(s0)
	call  print
	lw  t0, -684(s0)
	lw  t0, 0(t0)
	sw  t0, -5120(s0)
	lw  a0, -5120(s0)
	call  toString
	sw  a0, -5124(s0)
	lw  a0, -5124(s0)
	la  a1, .$str84
	call  string_add
	sw  a0, -5128(s0)
	lw  a0, -5128(s0)
	call  print
	lw  t0, -692(s0)
	lw  t0, 0(t0)
	sw  t0, -5132(s0)
	lw  a0, -5132(s0)
	call  toString
	sw  a0, -5136(s0)
	lw  a0, -5136(s0)
	la  a1, .$str85
	call  string_add
	sw  a0, -5140(s0)
	lw  a0, -5140(s0)
	call  print
	lw  t0, -700(s0)
	lw  t0, 0(t0)
	sw  t0, -5144(s0)
	lw  a0, -5144(s0)
	call  toString
	sw  a0, -5148(s0)
	lw  a0, -5148(s0)
	la  a1, .$str86
	call  string_add
	sw  a0, -5152(s0)
	lw  a0, -5152(s0)
	call  print
	lw  t0, -708(s0)
	lw  t0, 0(t0)
	sw  t0, -5156(s0)
	lw  a0, -5156(s0)
	call  toString
	sw  a0, -5160(s0)
	lw  a0, -5160(s0)
	la  a1, .$str87
	call  string_add
	sw  a0, -5164(s0)
	lw  a0, -5164(s0)
	call  print
	lw  t0, -716(s0)
	lw  t0, 0(t0)
	sw  t0, -5168(s0)
	lw  a0, -5168(s0)
	call  toString
	sw  a0, -5172(s0)
	lw  a0, -5172(s0)
	la  a1, .$str88
	call  string_add
	sw  a0, -5176(s0)
	lw  a0, -5176(s0)
	call  print
	lw  t0, -724(s0)
	lw  t0, 0(t0)
	sw  t0, -5180(s0)
	lw  a0, -5180(s0)
	call  toString
	sw  a0, -5184(s0)
	lw  a0, -5184(s0)
	la  a1, .$str89
	call  string_add
	sw  a0, -5188(s0)
	lw  a0, -5188(s0)
	call  print
	lw  t0, -732(s0)
	lw  t0, 0(t0)
	sw  t0, -5192(s0)
	lw  a0, -5192(s0)
	call  toString
	sw  a0, -5196(s0)
	lw  a0, -5196(s0)
	la  a1, .$str90
	call  string_add
	sw  a0, -5200(s0)
	lw  a0, -5200(s0)
	call  print
	lw  t0, -740(s0)
	lw  t0, 0(t0)
	sw  t0, -5204(s0)
	lw  a0, -5204(s0)
	call  toString
	sw  a0, -5208(s0)
	lw  a0, -5208(s0)
	la  a1, .$str91
	call  string_add
	sw  a0, -5212(s0)
	lw  a0, -5212(s0)
	call  print
	lw  t0, -748(s0)
	lw  t0, 0(t0)
	sw  t0, -5216(s0)
	lw  a0, -5216(s0)
	call  toString
	sw  a0, -5220(s0)
	lw  a0, -5220(s0)
	la  a1, .$str92
	call  string_add
	sw  a0, -5224(s0)
	lw  a0, -5224(s0)
	call  print
	lw  t0, -756(s0)
	lw  t0, 0(t0)
	sw  t0, -5228(s0)
	lw  a0, -5228(s0)
	call  toString
	sw  a0, -5232(s0)
	lw  a0, -5232(s0)
	la  a1, .$str93
	call  string_add
	sw  a0, -5236(s0)
	lw  a0, -5236(s0)
	call  print
	lw  t0, -764(s0)
	lw  t0, 0(t0)
	sw  t0, -5240(s0)
	lw  a0, -5240(s0)
	call  toString
	sw  a0, -5244(s0)
	lw  a0, -5244(s0)
	la  a1, .$str94
	call  string_add
	sw  a0, -5248(s0)
	lw  a0, -5248(s0)
	call  print
	lw  t0, -772(s0)
	lw  t0, 0(t0)
	sw  t0, -5252(s0)
	lw  a0, -5252(s0)
	call  toString
	sw  a0, -5256(s0)
	lw  a0, -5256(s0)
	la  a1, .$str95
	call  string_add
	sw  a0, -5260(s0)
	lw  a0, -5260(s0)
	call  print
	lw  t0, -780(s0)
	lw  t0, 0(t0)
	sw  t0, -5264(s0)
	lw  a0, -5264(s0)
	call  toString
	sw  a0, -5268(s0)
	lw  a0, -5268(s0)
	la  a1, .$str96
	call  string_add
	sw  a0, -5272(s0)
	lw  a0, -5272(s0)
	call  print
	lw  t0, -788(s0)
	lw  t0, 0(t0)
	sw  t0, -5276(s0)
	lw  a0, -5276(s0)
	call  toString
	sw  a0, -5280(s0)
	lw  a0, -5280(s0)
	la  a1, .$str97
	call  string_add
	sw  a0, -5284(s0)
	lw  a0, -5284(s0)
	call  print
	lw  t0, -796(s0)
	lw  t0, 0(t0)
	sw  t0, -5288(s0)
	lw  a0, -5288(s0)
	call  toString
	sw  a0, -5292(s0)
	lw  a0, -5292(s0)
	la  a1, .$str98
	call  string_add
	sw  a0, -5296(s0)
	lw  a0, -5296(s0)
	call  print
	lw  t0, -804(s0)
	lw  t0, 0(t0)
	sw  t0, -5300(s0)
	lw  a0, -5300(s0)
	call  toString
	sw  a0, -5304(s0)
	lw  a0, -5304(s0)
	la  a1, .$str99
	call  string_add
	sw  a0, -5308(s0)
	lw  a0, -5308(s0)
	call  print
	lw  t0, -812(s0)
	lw  t0, 0(t0)
	sw  t0, -5312(s0)
	lw  a0, -5312(s0)
	call  toString
	sw  a0, -5316(s0)
	lw  a0, -5316(s0)
	la  a1, .$str100
	call  string_add
	sw  a0, -5320(s0)
	lw  a0, -5320(s0)
	call  print
	lw  t0, -820(s0)
	lw  t0, 0(t0)
	sw  t0, -5324(s0)
	lw  a0, -5324(s0)
	call  toString
	sw  a0, -5328(s0)
	lw  a0, -5328(s0)
	la  a1, .$str101
	call  string_add
	sw  a0, -5332(s0)
	lw  a0, -5332(s0)
	call  print
	lw  t0, -828(s0)
	lw  t0, 0(t0)
	sw  t0, -5336(s0)
	lw  a0, -5336(s0)
	call  toString
	sw  a0, -5340(s0)
	lw  a0, -5340(s0)
	la  a1, .$str102
	call  string_add
	sw  a0, -5344(s0)
	lw  a0, -5344(s0)
	call  print
	lw  t0, -836(s0)
	lw  t0, 0(t0)
	sw  t0, -5348(s0)
	lw  a0, -5348(s0)
	call  toString
	sw  a0, -5352(s0)
	lw  a0, -5352(s0)
	la  a1, .$str103
	call  string_add
	sw  a0, -5356(s0)
	lw  a0, -5356(s0)
	call  print
	lw  t0, -844(s0)
	lw  t0, 0(t0)
	sw  t0, -5360(s0)
	lw  a0, -5360(s0)
	call  toString
	sw  a0, -5364(s0)
	lw  a0, -5364(s0)
	la  a1, .$str104
	call  string_add
	sw  a0, -5368(s0)
	lw  a0, -5368(s0)
	call  print
	lw  t0, -852(s0)
	lw  t0, 0(t0)
	sw  t0, -5372(s0)
	lw  a0, -5372(s0)
	call  toString
	sw  a0, -5376(s0)
	lw  a0, -5376(s0)
	la  a1, .$str105
	call  string_add
	sw  a0, -5380(s0)
	lw  a0, -5380(s0)
	call  print
	lw  t0, -860(s0)
	lw  t0, 0(t0)
	sw  t0, -5384(s0)
	lw  a0, -5384(s0)
	call  toString
	sw  a0, -5388(s0)
	lw  a0, -5388(s0)
	la  a1, .$str106
	call  string_add
	sw  a0, -5392(s0)
	lw  a0, -5392(s0)
	call  print
	lw  t0, -868(s0)
	lw  t0, 0(t0)
	sw  t0, -5396(s0)
	lw  a0, -5396(s0)
	call  toString
	sw  a0, -5400(s0)
	lw  a0, -5400(s0)
	la  a1, .$str107
	call  string_add
	sw  a0, -5404(s0)
	lw  a0, -5404(s0)
	call  print
	lw  t0, -876(s0)
	lw  t0, 0(t0)
	sw  t0, -5408(s0)
	lw  a0, -5408(s0)
	call  toString
	sw  a0, -5412(s0)
	lw  a0, -5412(s0)
	la  a1, .$str108
	call  string_add
	sw  a0, -5416(s0)
	lw  a0, -5416(s0)
	call  print
	lw  t0, -884(s0)
	lw  t0, 0(t0)
	sw  t0, -5420(s0)
	lw  a0, -5420(s0)
	call  toString
	sw  a0, -5424(s0)
	lw  a0, -5424(s0)
	la  a1, .$str109
	call  string_add
	sw  a0, -5428(s0)
	lw  a0, -5428(s0)
	call  print
	lw  t0, -892(s0)
	lw  t0, 0(t0)
	sw  t0, -5432(s0)
	lw  a0, -5432(s0)
	call  toString
	sw  a0, -5436(s0)
	lw  a0, -5436(s0)
	la  a1, .$str110
	call  string_add
	sw  a0, -5440(s0)
	lw  a0, -5440(s0)
	call  print
	lw  t0, -900(s0)
	lw  t0, 0(t0)
	sw  t0, -5444(s0)
	lw  a0, -5444(s0)
	call  toString
	sw  a0, -5448(s0)
	lw  a0, -5448(s0)
	la  a1, .$str111
	call  string_add
	sw  a0, -5452(s0)
	lw  a0, -5452(s0)
	call  print
	lw  t0, -908(s0)
	lw  t0, 0(t0)
	sw  t0, -5456(s0)
	lw  a0, -5456(s0)
	call  toString
	sw  a0, -5460(s0)
	lw  a0, -5460(s0)
	la  a1, .$str112
	call  string_add
	sw  a0, -5464(s0)
	lw  a0, -5464(s0)
	call  print
	lw  t0, -916(s0)
	lw  t0, 0(t0)
	sw  t0, -5468(s0)
	lw  a0, -5468(s0)
	call  toString
	sw  a0, -5472(s0)
	lw  a0, -5472(s0)
	la  a1, .$str113
	call  string_add
	sw  a0, -5476(s0)
	lw  a0, -5476(s0)
	call  print
	lw  t0, -924(s0)
	lw  t0, 0(t0)
	sw  t0, -5480(s0)
	lw  a0, -5480(s0)
	call  toString
	sw  a0, -5484(s0)
	lw  a0, -5484(s0)
	la  a1, .$str114
	call  string_add
	sw  a0, -5488(s0)
	lw  a0, -5488(s0)
	call  print
	lw  t0, -932(s0)
	lw  t0, 0(t0)
	sw  t0, -5492(s0)
	lw  a0, -5492(s0)
	call  toString
	sw  a0, -5496(s0)
	lw  a0, -5496(s0)
	la  a1, .$str115
	call  string_add
	sw  a0, -5500(s0)
	lw  a0, -5500(s0)
	call  print
	lw  t0, -940(s0)
	lw  t0, 0(t0)
	sw  t0, -5504(s0)
	lw  a0, -5504(s0)
	call  toString
	sw  a0, -5508(s0)
	lw  a0, -5508(s0)
	la  a1, .$str116
	call  string_add
	sw  a0, -5512(s0)
	lw  a0, -5512(s0)
	call  print
	lw  t0, -948(s0)
	lw  t0, 0(t0)
	sw  t0, -5516(s0)
	lw  a0, -5516(s0)
	call  toString
	sw  a0, -5520(s0)
	lw  a0, -5520(s0)
	la  a1, .$str117
	call  string_add
	sw  a0, -5524(s0)
	lw  a0, -5524(s0)
	call  print
	lw  t0, -956(s0)
	lw  t0, 0(t0)
	sw  t0, -5528(s0)
	lw  a0, -5528(s0)
	call  toString
	sw  a0, -5532(s0)
	lw  a0, -5532(s0)
	la  a1, .$str118
	call  string_add
	sw  a0, -5536(s0)
	lw  a0, -5536(s0)
	call  print
	lw  t0, -964(s0)
	lw  t0, 0(t0)
	sw  t0, -5540(s0)
	lw  a0, -5540(s0)
	call  toString
	sw  a0, -5544(s0)
	lw  a0, -5544(s0)
	la  a1, .$str119
	call  string_add
	sw  a0, -5548(s0)
	lw  a0, -5548(s0)
	call  print
	lw  t0, -972(s0)
	lw  t0, 0(t0)
	sw  t0, -5552(s0)
	lw  a0, -5552(s0)
	call  toString
	sw  a0, -5556(s0)
	lw  a0, -5556(s0)
	la  a1, .$str120
	call  string_add
	sw  a0, -5560(s0)
	lw  a0, -5560(s0)
	call  print
	lw  t0, -980(s0)
	lw  t0, 0(t0)
	sw  t0, -5564(s0)
	lw  a0, -5564(s0)
	call  toString
	sw  a0, -5568(s0)
	lw  a0, -5568(s0)
	la  a1, .$str121
	call  string_add
	sw  a0, -5572(s0)
	lw  a0, -5572(s0)
	call  print
	lw  t0, -988(s0)
	lw  t0, 0(t0)
	sw  t0, -5576(s0)
	lw  a0, -5576(s0)
	call  toString
	sw  a0, -5580(s0)
	lw  a0, -5580(s0)
	la  a1, .$str122
	call  string_add
	sw  a0, -5584(s0)
	lw  a0, -5584(s0)
	call  print
	lw  t0, -996(s0)
	lw  t0, 0(t0)
	sw  t0, -5588(s0)
	lw  a0, -5588(s0)
	call  toString
	sw  a0, -5592(s0)
	lw  a0, -5592(s0)
	la  a1, .$str123
	call  string_add
	sw  a0, -5596(s0)
	lw  a0, -5596(s0)
	call  print
	lw  t0, -1004(s0)
	lw  t0, 0(t0)
	sw  t0, -5600(s0)
	lw  a0, -5600(s0)
	call  toString
	sw  a0, -5604(s0)
	lw  a0, -5604(s0)
	la  a1, .$str124
	call  string_add
	sw  a0, -5608(s0)
	lw  a0, -5608(s0)
	call  print
	lw  t0, -1012(s0)
	lw  t0, 0(t0)
	sw  t0, -5612(s0)
	lw  a0, -5612(s0)
	call  toString
	sw  a0, -5616(s0)
	lw  a0, -5616(s0)
	la  a1, .$str125
	call  string_add
	sw  a0, -5620(s0)
	lw  a0, -5620(s0)
	call  print
	lw  t0, -1020(s0)
	lw  t0, 0(t0)
	sw  t0, -5624(s0)
	lw  a0, -5624(s0)
	call  toString
	sw  a0, -5628(s0)
	lw  a0, -5628(s0)
	la  a1, .$str126
	call  string_add
	sw  a0, -5632(s0)
	lw  a0, -5632(s0)
	call  print
	lw  t0, -1028(s0)
	lw  t0, 0(t0)
	sw  t0, -5636(s0)
	lw  a0, -5636(s0)
	call  toString
	sw  a0, -5640(s0)
	lw  a0, -5640(s0)
	la  a1, .$str127
	call  string_add
	sw  a0, -5644(s0)
	lw  a0, -5644(s0)
	call  print
	lw  t0, -1036(s0)
	lw  t0, 0(t0)
	sw  t0, -5648(s0)
	lw  a0, -5648(s0)
	call  toString
	sw  a0, -5652(s0)
	lw  a0, -5652(s0)
	la  a1, .$str128
	call  string_add
	sw  a0, -5656(s0)
	lw  a0, -5656(s0)
	call  print
	lw  t0, -1044(s0)
	lw  t0, 0(t0)
	sw  t0, -5660(s0)
	lw  a0, -5660(s0)
	call  toString
	sw  a0, -5664(s0)
	lw  a0, -5664(s0)
	la  a1, .$str129
	call  string_add
	sw  a0, -5668(s0)
	lw  a0, -5668(s0)
	call  print
	lw  t0, -1052(s0)
	lw  t0, 0(t0)
	sw  t0, -5672(s0)
	lw  a0, -5672(s0)
	call  toString
	sw  a0, -5676(s0)
	lw  a0, -5676(s0)
	la  a1, .$str130
	call  string_add
	sw  a0, -5680(s0)
	lw  a0, -5680(s0)
	call  print
	lw  t0, -1060(s0)
	lw  t0, 0(t0)
	sw  t0, -5684(s0)
	lw  a0, -5684(s0)
	call  toString
	sw  a0, -5688(s0)
	lw  a0, -5688(s0)
	la  a1, .$str131
	call  string_add
	sw  a0, -5692(s0)
	lw  a0, -5692(s0)
	call  print
	lw  t0, -1068(s0)
	lw  t0, 0(t0)
	sw  t0, -5696(s0)
	lw  a0, -5696(s0)
	call  toString
	sw  a0, -5700(s0)
	lw  a0, -5700(s0)
	la  a1, .$str132
	call  string_add
	sw  a0, -5704(s0)
	lw  a0, -5704(s0)
	call  print
	lw  t0, -1076(s0)
	lw  t0, 0(t0)
	sw  t0, -5708(s0)
	lw  a0, -5708(s0)
	call  toString
	sw  a0, -5712(s0)
	lw  a0, -5712(s0)
	la  a1, .$str133
	call  string_add
	sw  a0, -5716(s0)
	lw  a0, -5716(s0)
	call  print
	lw  t0, -1084(s0)
	lw  t0, 0(t0)
	sw  t0, -5720(s0)
	lw  a0, -5720(s0)
	call  toString
	sw  a0, -5724(s0)
	lw  a0, -5724(s0)
	la  a1, .$str134
	call  string_add
	sw  a0, -5728(s0)
	lw  a0, -5728(s0)
	call  print
	lw  t0, -1092(s0)
	lw  t0, 0(t0)
	sw  t0, -5732(s0)
	lw  a0, -5732(s0)
	call  toString
	sw  a0, -5736(s0)
	lw  a0, -5736(s0)
	la  a1, .$str135
	call  string_add
	sw  a0, -5740(s0)
	lw  a0, -5740(s0)
	call  print
	lw  t0, -1100(s0)
	lw  t0, 0(t0)
	sw  t0, -5744(s0)
	lw  a0, -5744(s0)
	call  toString
	sw  a0, -5748(s0)
	lw  a0, -5748(s0)
	la  a1, .$str136
	call  string_add
	sw  a0, -5752(s0)
	lw  a0, -5752(s0)
	call  print
	lw  t0, -1108(s0)
	lw  t0, 0(t0)
	sw  t0, -5756(s0)
	lw  a0, -5756(s0)
	call  toString
	sw  a0, -5760(s0)
	lw  a0, -5760(s0)
	la  a1, .$str137
	call  string_add
	sw  a0, -5764(s0)
	lw  a0, -5764(s0)
	call  print
	lw  t0, -1116(s0)
	lw  t0, 0(t0)
	sw  t0, -5768(s0)
	lw  a0, -5768(s0)
	call  toString
	sw  a0, -5772(s0)
	lw  a0, -5772(s0)
	la  a1, .$str138
	call  string_add
	sw  a0, -5776(s0)
	lw  a0, -5776(s0)
	call  print
	lw  t0, -1124(s0)
	lw  t0, 0(t0)
	sw  t0, -5780(s0)
	lw  a0, -5780(s0)
	call  toString
	sw  a0, -5784(s0)
	lw  a0, -5784(s0)
	la  a1, .$str139
	call  string_add
	sw  a0, -5788(s0)
	lw  a0, -5788(s0)
	call  print
	lw  t0, -1132(s0)
	lw  t0, 0(t0)
	sw  t0, -5792(s0)
	lw  a0, -5792(s0)
	call  toString
	sw  a0, -5796(s0)
	lw  a0, -5796(s0)
	la  a1, .$str140
	call  string_add
	sw  a0, -5800(s0)
	lw  a0, -5800(s0)
	call  print
	lw  t0, -1140(s0)
	lw  t0, 0(t0)
	sw  t0, -5804(s0)
	lw  a0, -5804(s0)
	call  toString
	sw  a0, -5808(s0)
	lw  a0, -5808(s0)
	la  a1, .$str141
	call  string_add
	sw  a0, -5812(s0)
	lw  a0, -5812(s0)
	call  print
	lw  t0, -1148(s0)
	lw  t0, 0(t0)
	sw  t0, -5816(s0)
	lw  a0, -5816(s0)
	call  toString
	sw  a0, -5820(s0)
	lw  a0, -5820(s0)
	la  a1, .$str142
	call  string_add
	sw  a0, -5824(s0)
	lw  a0, -5824(s0)
	call  print
	lw  t0, -1156(s0)
	lw  t0, 0(t0)
	sw  t0, -5828(s0)
	lw  a0, -5828(s0)
	call  toString
	sw  a0, -5832(s0)
	lw  a0, -5832(s0)
	la  a1, .$str143
	call  string_add
	sw  a0, -5836(s0)
	lw  a0, -5836(s0)
	call  print
	lw  t0, -1164(s0)
	lw  t0, 0(t0)
	sw  t0, -5840(s0)
	lw  a0, -5840(s0)
	call  toString
	sw  a0, -5844(s0)
	lw  a0, -5844(s0)
	la  a1, .$str144
	call  string_add
	sw  a0, -5848(s0)
	lw  a0, -5848(s0)
	call  print
	lw  t0, -1172(s0)
	lw  t0, 0(t0)
	sw  t0, -5852(s0)
	lw  a0, -5852(s0)
	call  toString
	sw  a0, -5856(s0)
	lw  a0, -5856(s0)
	la  a1, .$str145
	call  string_add
	sw  a0, -5860(s0)
	lw  a0, -5860(s0)
	call  print
	lw  t0, -1180(s0)
	lw  t0, 0(t0)
	sw  t0, -5864(s0)
	lw  a0, -5864(s0)
	call  toString
	sw  a0, -5868(s0)
	lw  a0, -5868(s0)
	la  a1, .$str146
	call  string_add
	sw  a0, -5872(s0)
	lw  a0, -5872(s0)
	call  print
	lw  t0, -1188(s0)
	lw  t0, 0(t0)
	sw  t0, -5876(s0)
	lw  a0, -5876(s0)
	call  toString
	sw  a0, -5880(s0)
	lw  a0, -5880(s0)
	la  a1, .$str147
	call  string_add
	sw  a0, -5884(s0)
	lw  a0, -5884(s0)
	call  print
	lw  t0, -1196(s0)
	lw  t0, 0(t0)
	sw  t0, -5888(s0)
	lw  a0, -5888(s0)
	call  toString
	sw  a0, -5892(s0)
	lw  a0, -5892(s0)
	la  a1, .$str148
	call  string_add
	sw  a0, -5896(s0)
	lw  a0, -5896(s0)
	call  print
	lw  t0, -1204(s0)
	lw  t0, 0(t0)
	sw  t0, -5900(s0)
	lw  a0, -5900(s0)
	call  toString
	sw  a0, -5904(s0)
	lw  a0, -5904(s0)
	la  a1, .$str149
	call  string_add
	sw  a0, -5908(s0)
	lw  a0, -5908(s0)
	call  print
	lw  t0, -1212(s0)
	lw  t0, 0(t0)
	sw  t0, -5912(s0)
	lw  a0, -5912(s0)
	call  toString
	sw  a0, -5916(s0)
	lw  a0, -5916(s0)
	la  a1, .$str150
	call  string_add
	sw  a0, -5920(s0)
	lw  a0, -5920(s0)
	call  print
	lw  t0, -1220(s0)
	lw  t0, 0(t0)
	sw  t0, -5924(s0)
	lw  a0, -5924(s0)
	call  toString
	sw  a0, -5928(s0)
	lw  a0, -5928(s0)
	la  a1, .$str151
	call  string_add
	sw  a0, -5932(s0)
	lw  a0, -5932(s0)
	call  print
	lw  t0, -1228(s0)
	lw  t0, 0(t0)
	sw  t0, -5936(s0)
	lw  a0, -5936(s0)
	call  toString
	sw  a0, -5940(s0)
	lw  a0, -5940(s0)
	la  a1, .$str152
	call  string_add
	sw  a0, -5944(s0)
	lw  a0, -5944(s0)
	call  print
	lw  t0, -1236(s0)
	lw  t0, 0(t0)
	sw  t0, -5948(s0)
	lw  a0, -5948(s0)
	call  toString
	sw  a0, -5952(s0)
	lw  a0, -5952(s0)
	la  a1, .$str153
	call  string_add
	sw  a0, -5956(s0)
	lw  a0, -5956(s0)
	call  print
	lw  t0, -1244(s0)
	lw  t0, 0(t0)
	sw  t0, -5960(s0)
	lw  a0, -5960(s0)
	call  toString
	sw  a0, -5964(s0)
	lw  a0, -5964(s0)
	la  a1, .$str154
	call  string_add
	sw  a0, -5968(s0)
	lw  a0, -5968(s0)
	call  print
	lw  t0, -1252(s0)
	lw  t0, 0(t0)
	sw  t0, -5972(s0)
	lw  a0, -5972(s0)
	call  toString
	sw  a0, -5976(s0)
	lw  a0, -5976(s0)
	la  a1, .$str155
	call  string_add
	sw  a0, -5980(s0)
	lw  a0, -5980(s0)
	call  print
	lw  t0, -1260(s0)
	lw  t0, 0(t0)
	sw  t0, -5984(s0)
	lw  a0, -5984(s0)
	call  toString
	sw  a0, -5988(s0)
	lw  a0, -5988(s0)
	la  a1, .$str156
	call  string_add
	sw  a0, -5992(s0)
	lw  a0, -5992(s0)
	call  print
	lw  t0, -1268(s0)
	lw  t0, 0(t0)
	sw  t0, -5996(s0)
	lw  a0, -5996(s0)
	call  toString
	sw  a0, -6000(s0)
	lw  a0, -6000(s0)
	la  a1, .$str157
	call  string_add
	sw  a0, -6004(s0)
	lw  a0, -6004(s0)
	call  print
	lw  t0, -1276(s0)
	lw  t0, 0(t0)
	sw  t0, -6008(s0)
	lw  a0, -6008(s0)
	call  toString
	sw  a0, -6012(s0)
	lw  a0, -6012(s0)
	la  a1, .$str158
	call  string_add
	sw  a0, -6016(s0)
	lw  a0, -6016(s0)
	call  print
	lw  t0, -1284(s0)
	lw  t0, 0(t0)
	sw  t0, -6020(s0)
	lw  a0, -6020(s0)
	call  toString
	sw  a0, -6024(s0)
	lw  a0, -6024(s0)
	la  a1, .$str159
	call  string_add
	sw  a0, -6028(s0)
	lw  a0, -6028(s0)
	call  print
	lw  t0, -1292(s0)
	lw  t0, 0(t0)
	sw  t0, -6032(s0)
	lw  a0, -6032(s0)
	call  toString
	sw  a0, -6036(s0)
	lw  a0, -6036(s0)
	la  a1, .$str160
	call  string_add
	sw  a0, -6040(s0)
	lw  a0, -6040(s0)
	call  print
	lw  t0, -1300(s0)
	lw  t0, 0(t0)
	sw  t0, -6044(s0)
	lw  a0, -6044(s0)
	call  toString
	sw  a0, -6048(s0)
	lw  a0, -6048(s0)
	la  a1, .$str161
	call  string_add
	sw  a0, -6052(s0)
	lw  a0, -6052(s0)
	call  print
	lw  t0, -1308(s0)
	lw  t0, 0(t0)
	sw  t0, -6056(s0)
	lw  a0, -6056(s0)
	call  toString
	sw  a0, -6060(s0)
	lw  a0, -6060(s0)
	la  a1, .$str162
	call  string_add
	sw  a0, -6064(s0)
	lw  a0, -6064(s0)
	call  print
	lw  t0, -1316(s0)
	lw  t0, 0(t0)
	sw  t0, -6068(s0)
	lw  a0, -6068(s0)
	call  toString
	sw  a0, -6072(s0)
	lw  a0, -6072(s0)
	la  a1, .$str163
	call  string_add
	sw  a0, -6076(s0)
	lw  a0, -6076(s0)
	call  print
	lw  t0, -1324(s0)
	lw  t0, 0(t0)
	sw  t0, -6080(s0)
	lw  a0, -6080(s0)
	call  toString
	sw  a0, -6084(s0)
	lw  a0, -6084(s0)
	la  a1, .$str164
	call  string_add
	sw  a0, -6088(s0)
	lw  a0, -6088(s0)
	call  print
	lw  t0, -1332(s0)
	lw  t0, 0(t0)
	sw  t0, -6092(s0)
	lw  a0, -6092(s0)
	call  toString
	sw  a0, -6096(s0)
	lw  a0, -6096(s0)
	la  a1, .$str165
	call  string_add
	sw  a0, -6100(s0)
	lw  a0, -6100(s0)
	call  print
	lw  t0, -1340(s0)
	lw  t0, 0(t0)
	sw  t0, -6104(s0)
	lw  a0, -6104(s0)
	call  toString
	sw  a0, -6108(s0)
	lw  a0, -6108(s0)
	la  a1, .$str166
	call  string_add
	sw  a0, -6112(s0)
	lw  a0, -6112(s0)
	call  print
	lw  t0, -1348(s0)
	lw  t0, 0(t0)
	sw  t0, -6116(s0)
	lw  a0, -6116(s0)
	call  toString
	sw  a0, -6120(s0)
	lw  a0, -6120(s0)
	la  a1, .$str167
	call  string_add
	sw  a0, -6124(s0)
	lw  a0, -6124(s0)
	call  print
	lw  t0, -1356(s0)
	lw  t0, 0(t0)
	sw  t0, -6128(s0)
	lw  a0, -6128(s0)
	call  toString
	sw  a0, -6132(s0)
	lw  a0, -6132(s0)
	la  a1, .$str168
	call  string_add
	sw  a0, -6136(s0)
	lw  a0, -6136(s0)
	call  print
	lw  t0, -1364(s0)
	lw  t0, 0(t0)
	sw  t0, -6140(s0)
	lw  a0, -6140(s0)
	call  toString
	sw  a0, -6144(s0)
	lw  a0, -6144(s0)
	la  a1, .$str169
	call  string_add
	sw  a0, -6148(s0)
	lw  a0, -6148(s0)
	call  print
	lw  t0, -1372(s0)
	lw  t0, 0(t0)
	sw  t0, -6152(s0)
	lw  a0, -6152(s0)
	call  toString
	sw  a0, -6156(s0)
	lw  a0, -6156(s0)
	la  a1, .$str170
	call  string_add
	sw  a0, -6160(s0)
	lw  a0, -6160(s0)
	call  print
	lw  t0, -1380(s0)
	lw  t0, 0(t0)
	sw  t0, -6164(s0)
	lw  a0, -6164(s0)
	call  toString
	sw  a0, -6168(s0)
	lw  a0, -6168(s0)
	la  a1, .$str171
	call  string_add
	sw  a0, -6172(s0)
	lw  a0, -6172(s0)
	call  print
	lw  t0, -1388(s0)
	lw  t0, 0(t0)
	sw  t0, -6176(s0)
	lw  a0, -6176(s0)
	call  toString
	sw  a0, -6180(s0)
	lw  a0, -6180(s0)
	la  a1, .$str172
	call  string_add
	sw  a0, -6184(s0)
	lw  a0, -6184(s0)
	call  print
	lw  t0, -1396(s0)
	lw  t0, 0(t0)
	sw  t0, -6188(s0)
	lw  a0, -6188(s0)
	call  toString
	sw  a0, -6192(s0)
	lw  a0, -6192(s0)
	la  a1, .$str173
	call  string_add
	sw  a0, -6196(s0)
	lw  a0, -6196(s0)
	call  print
	lw  t0, -1404(s0)
	lw  t0, 0(t0)
	sw  t0, -6200(s0)
	lw  a0, -6200(s0)
	call  toString
	sw  a0, -6204(s0)
	lw  a0, -6204(s0)
	la  a1, .$str174
	call  string_add
	sw  a0, -6208(s0)
	lw  a0, -6208(s0)
	call  print
	lw  t0, -1412(s0)
	lw  t0, 0(t0)
	sw  t0, -6212(s0)
	lw  a0, -6212(s0)
	call  toString
	sw  a0, -6216(s0)
	lw  a0, -6216(s0)
	la  a1, .$str175
	call  string_add
	sw  a0, -6220(s0)
	lw  a0, -6220(s0)
	call  print
	lw  t0, -1420(s0)
	lw  t0, 0(t0)
	sw  t0, -6224(s0)
	lw  a0, -6224(s0)
	call  toString
	sw  a0, -6228(s0)
	lw  a0, -6228(s0)
	la  a1, .$str176
	call  string_add
	sw  a0, -6232(s0)
	lw  a0, -6232(s0)
	call  print
	lw  t0, -1428(s0)
	lw  t0, 0(t0)
	sw  t0, -6236(s0)
	lw  a0, -6236(s0)
	call  toString
	sw  a0, -6240(s0)
	lw  a0, -6240(s0)
	la  a1, .$str177
	call  string_add
	sw  a0, -6244(s0)
	lw  a0, -6244(s0)
	call  print
	lw  t0, -1436(s0)
	lw  t0, 0(t0)
	sw  t0, -6248(s0)
	lw  a0, -6248(s0)
	call  toString
	sw  a0, -6252(s0)
	lw  a0, -6252(s0)
	la  a1, .$str178
	call  string_add
	sw  a0, -6256(s0)
	lw  a0, -6256(s0)
	call  print
	lw  t0, -1444(s0)
	lw  t0, 0(t0)
	sw  t0, -6260(s0)
	lw  a0, -6260(s0)
	call  toString
	sw  a0, -6264(s0)
	lw  a0, -6264(s0)
	la  a1, .$str179
	call  string_add
	sw  a0, -6268(s0)
	lw  a0, -6268(s0)
	call  print
	lw  t0, -1452(s0)
	lw  t0, 0(t0)
	sw  t0, -6272(s0)
	lw  a0, -6272(s0)
	call  toString
	sw  a0, -6276(s0)
	lw  a0, -6276(s0)
	la  a1, .$str180
	call  string_add
	sw  a0, -6280(s0)
	lw  a0, -6280(s0)
	call  print
	lw  t0, -1460(s0)
	lw  t0, 0(t0)
	sw  t0, -6284(s0)
	lw  a0, -6284(s0)
	call  toString
	sw  a0, -6288(s0)
	lw  a0, -6288(s0)
	la  a1, .$str181
	call  string_add
	sw  a0, -6292(s0)
	lw  a0, -6292(s0)
	call  print
	lw  t0, -1468(s0)
	lw  t0, 0(t0)
	sw  t0, -6296(s0)
	lw  a0, -6296(s0)
	call  toString
	sw  a0, -6300(s0)
	lw  a0, -6300(s0)
	la  a1, .$str182
	call  string_add
	sw  a0, -6304(s0)
	lw  a0, -6304(s0)
	call  print
	lw  t0, -1476(s0)
	lw  t0, 0(t0)
	sw  t0, -6308(s0)
	lw  a0, -6308(s0)
	call  toString
	sw  a0, -6312(s0)
	lw  a0, -6312(s0)
	la  a1, .$str183
	call  string_add
	sw  a0, -6316(s0)
	lw  a0, -6316(s0)
	call  print
	lw  t0, -1484(s0)
	lw  t0, 0(t0)
	sw  t0, -6320(s0)
	lw  a0, -6320(s0)
	call  toString
	sw  a0, -6324(s0)
	lw  a0, -6324(s0)
	la  a1, .$str184
	call  string_add
	sw  a0, -6328(s0)
	lw  a0, -6328(s0)
	call  print
	lw  t0, -1492(s0)
	lw  t0, 0(t0)
	sw  t0, -6332(s0)
	lw  a0, -6332(s0)
	call  toString
	sw  a0, -6336(s0)
	lw  a0, -6336(s0)
	la  a1, .$str185
	call  string_add
	sw  a0, -6340(s0)
	lw  a0, -6340(s0)
	call  print
	lw  t0, -1500(s0)
	lw  t0, 0(t0)
	sw  t0, -6344(s0)
	lw  a0, -6344(s0)
	call  toString
	sw  a0, -6348(s0)
	lw  a0, -6348(s0)
	la  a1, .$str186
	call  string_add
	sw  a0, -6352(s0)
	lw  a0, -6352(s0)
	call  print
	lw  t0, -1508(s0)
	lw  t0, 0(t0)
	sw  t0, -6356(s0)
	lw  a0, -6356(s0)
	call  toString
	sw  a0, -6360(s0)
	lw  a0, -6360(s0)
	la  a1, .$str187
	call  string_add
	sw  a0, -6364(s0)
	lw  a0, -6364(s0)
	call  print
	lw  t0, -1516(s0)
	lw  t0, 0(t0)
	sw  t0, -6368(s0)
	lw  a0, -6368(s0)
	call  toString
	sw  a0, -6372(s0)
	lw  a0, -6372(s0)
	la  a1, .$str188
	call  string_add
	sw  a0, -6376(s0)
	lw  a0, -6376(s0)
	call  print
	lw  t0, -1524(s0)
	lw  t0, 0(t0)
	sw  t0, -6380(s0)
	lw  a0, -6380(s0)
	call  toString
	sw  a0, -6384(s0)
	lw  a0, -6384(s0)
	la  a1, .$str189
	call  string_add
	sw  a0, -6388(s0)
	lw  a0, -6388(s0)
	call  print
	lw  t0, -1532(s0)
	lw  t0, 0(t0)
	sw  t0, -6392(s0)
	lw  a0, -6392(s0)
	call  toString
	sw  a0, -6396(s0)
	lw  a0, -6396(s0)
	la  a1, .$str190
	call  string_add
	sw  a0, -6400(s0)
	lw  a0, -6400(s0)
	call  print
	lw  t0, -1540(s0)
	lw  t0, 0(t0)
	sw  t0, -6404(s0)
	lw  a0, -6404(s0)
	call  toString
	sw  a0, -6408(s0)
	lw  a0, -6408(s0)
	la  a1, .$str191
	call  string_add
	sw  a0, -6412(s0)
	lw  a0, -6412(s0)
	call  print
	lw  t0, -1548(s0)
	lw  t0, 0(t0)
	sw  t0, -6416(s0)
	lw  a0, -6416(s0)
	call  toString
	sw  a0, -6420(s0)
	lw  a0, -6420(s0)
	la  a1, .$str192
	call  string_add
	sw  a0, -6424(s0)
	lw  a0, -6424(s0)
	call  print
	lw  t0, -1556(s0)
	lw  t0, 0(t0)
	sw  t0, -6428(s0)
	lw  a0, -6428(s0)
	call  toString
	sw  a0, -6432(s0)
	lw  a0, -6432(s0)
	la  a1, .$str193
	call  string_add
	sw  a0, -6436(s0)
	lw  a0, -6436(s0)
	call  print
	lw  t0, -1564(s0)
	lw  t0, 0(t0)
	sw  t0, -6440(s0)
	lw  a0, -6440(s0)
	call  toString
	sw  a0, -6444(s0)
	lw  a0, -6444(s0)
	la  a1, .$str194
	call  string_add
	sw  a0, -6448(s0)
	lw  a0, -6448(s0)
	call  print
	lw  t0, -1572(s0)
	lw  t0, 0(t0)
	sw  t0, -6452(s0)
	lw  a0, -6452(s0)
	call  toString
	sw  a0, -6456(s0)
	lw  a0, -6456(s0)
	la  a1, .$str195
	call  string_add
	sw  a0, -6460(s0)
	lw  a0, -6460(s0)
	call  print
	lw  t0, -1580(s0)
	lw  t0, 0(t0)
	sw  t0, -6464(s0)
	lw  a0, -6464(s0)
	call  toString
	sw  a0, -6468(s0)
	lw  a0, -6468(s0)
	la  a1, .$str196
	call  string_add
	sw  a0, -6472(s0)
	lw  a0, -6472(s0)
	call  print
	lw  t0, -1588(s0)
	lw  t0, 0(t0)
	sw  t0, -6476(s0)
	lw  a0, -6476(s0)
	call  toString
	sw  a0, -6480(s0)
	lw  a0, -6480(s0)
	la  a1, .$str197
	call  string_add
	sw  a0, -6484(s0)
	lw  a0, -6484(s0)
	call  print
	lw  t0, -1596(s0)
	lw  t0, 0(t0)
	sw  t0, -6488(s0)
	lw  a0, -6488(s0)
	call  toString
	sw  a0, -6492(s0)
	lw  a0, -6492(s0)
	la  a1, .$str198
	call  string_add
	sw  a0, -6496(s0)
	lw  a0, -6496(s0)
	call  print
	lw  t0, -1604(s0)
	lw  t0, 0(t0)
	sw  t0, -6500(s0)
	lw  a0, -6500(s0)
	call  toString
	sw  a0, -6504(s0)
	lw  a0, -6504(s0)
	la  a1, .$str199
	call  string_add
	sw  a0, -6508(s0)
	lw  a0, -6508(s0)
	call  print
	lw  t0, -1612(s0)
	lw  t0, 0(t0)
	sw  t0, -6512(s0)
	lw  a0, -6512(s0)
	call  toString
	sw  a0, -6516(s0)
	lw  a0, -6516(s0)
	la  a1, .$str200
	call  string_add
	sw  a0, -6520(s0)
	lw  a0, -6520(s0)
	call  print
	lw  t0, -1620(s0)
	lw  t0, 0(t0)
	sw  t0, -6524(s0)
	lw  a0, -6524(s0)
	call  toString
	sw  a0, -6528(s0)
	lw  a0, -6528(s0)
	la  a1, .$str201
	call  string_add
	sw  a0, -6532(s0)
	lw  a0, -6532(s0)
	call  print
	lw  t0, -1628(s0)
	lw  t0, 0(t0)
	sw  t0, -6536(s0)
	lw  a0, -6536(s0)
	call  toString
	sw  a0, -6540(s0)
	lw  a0, -6540(s0)
	la  a1, .$str202
	call  string_add
	sw  a0, -6544(s0)
	lw  a0, -6544(s0)
	call  print
	lw  t0, -1636(s0)
	lw  t0, 0(t0)
	sw  t0, -6548(s0)
	lw  a0, -6548(s0)
	call  toString
	sw  a0, -6552(s0)
	lw  a0, -6552(s0)
	la  a1, .$str203
	call  string_add
	sw  a0, -6556(s0)
	lw  a0, -6556(s0)
	call  print
	lw  t0, -1644(s0)
	lw  t0, 0(t0)
	sw  t0, -6560(s0)
	lw  a0, -6560(s0)
	call  toString
	sw  a0, -6564(s0)
	lw  a0, -6564(s0)
	la  a1, .$str204
	call  string_add
	sw  a0, -6568(s0)
	lw  a0, -6568(s0)
	call  print
	lw  t0, -1652(s0)
	lw  t0, 0(t0)
	sw  t0, -6572(s0)
	lw  a0, -6572(s0)
	call  toString
	sw  a0, -6576(s0)
	lw  a0, -6576(s0)
	la  a1, .$str205
	call  string_add
	sw  a0, -6580(s0)
	lw  a0, -6580(s0)
	call  print
	lw  t0, -1660(s0)
	lw  t0, 0(t0)
	sw  t0, -6584(s0)
	lw  a0, -6584(s0)
	call  toString
	sw  a0, -6588(s0)
	lw  a0, -6588(s0)
	la  a1, .$str206
	call  string_add
	sw  a0, -6592(s0)
	lw  a0, -6592(s0)
	call  print
	lw  t0, -1668(s0)
	lw  t0, 0(t0)
	sw  t0, -6596(s0)
	lw  a0, -6596(s0)
	call  toString
	sw  a0, -6600(s0)
	lw  a0, -6600(s0)
	la  a1, .$str207
	call  string_add
	sw  a0, -6604(s0)
	lw  a0, -6604(s0)
	call  print
	lw  t0, -1676(s0)
	lw  t0, 0(t0)
	sw  t0, -6608(s0)
	lw  a0, -6608(s0)
	call  toString
	sw  a0, -6612(s0)
	lw  a0, -6612(s0)
	la  a1, .$str208
	call  string_add
	sw  a0, -6616(s0)
	lw  a0, -6616(s0)
	call  print
	lw  t0, -1684(s0)
	lw  t0, 0(t0)
	sw  t0, -6620(s0)
	lw  a0, -6620(s0)
	call  toString
	sw  a0, -6624(s0)
	lw  a0, -6624(s0)
	la  a1, .$str209
	call  string_add
	sw  a0, -6628(s0)
	lw  a0, -6628(s0)
	call  print
	lw  t0, -1692(s0)
	lw  t0, 0(t0)
	sw  t0, -6632(s0)
	lw  a0, -6632(s0)
	call  toString
	sw  a0, -6636(s0)
	lw  a0, -6636(s0)
	la  a1, .$str210
	call  string_add
	sw  a0, -6640(s0)
	lw  a0, -6640(s0)
	call  print
	lw  t0, -1700(s0)
	lw  t0, 0(t0)
	sw  t0, -6644(s0)
	lw  a0, -6644(s0)
	call  toString
	sw  a0, -6648(s0)
	lw  a0, -6648(s0)
	la  a1, .$str211
	call  string_add
	sw  a0, -6652(s0)
	lw  a0, -6652(s0)
	call  print
	lw  t0, -1708(s0)
	lw  t0, 0(t0)
	sw  t0, -6656(s0)
	lw  a0, -6656(s0)
	call  toString
	sw  a0, -6660(s0)
	lw  a0, -6660(s0)
	la  a1, .$str212
	call  string_add
	sw  a0, -6664(s0)
	lw  a0, -6664(s0)
	call  print
	lw  t0, -1716(s0)
	lw  t0, 0(t0)
	sw  t0, -6668(s0)
	lw  a0, -6668(s0)
	call  toString
	sw  a0, -6672(s0)
	lw  a0, -6672(s0)
	la  a1, .$str213
	call  string_add
	sw  a0, -6676(s0)
	lw  a0, -6676(s0)
	call  print
	lw  t0, -1724(s0)
	lw  t0, 0(t0)
	sw  t0, -6680(s0)
	lw  a0, -6680(s0)
	call  toString
	sw  a0, -6684(s0)
	lw  a0, -6684(s0)
	la  a1, .$str214
	call  string_add
	sw  a0, -6688(s0)
	lw  a0, -6688(s0)
	call  print
	lw  t0, -1732(s0)
	lw  t0, 0(t0)
	sw  t0, -6692(s0)
	lw  a0, -6692(s0)
	call  toString
	sw  a0, -6696(s0)
	lw  a0, -6696(s0)
	la  a1, .$str215
	call  string_add
	sw  a0, -6700(s0)
	lw  a0, -6700(s0)
	call  print
	lw  t0, -1740(s0)
	lw  t0, 0(t0)
	sw  t0, -6704(s0)
	lw  a0, -6704(s0)
	call  toString
	sw  a0, -6708(s0)
	lw  a0, -6708(s0)
	la  a1, .$str216
	call  string_add
	sw  a0, -6712(s0)
	lw  a0, -6712(s0)
	call  print
	lw  t0, -1748(s0)
	lw  t0, 0(t0)
	sw  t0, -6716(s0)
	lw  a0, -6716(s0)
	call  toString
	sw  a0, -6720(s0)
	lw  a0, -6720(s0)
	la  a1, .$str217
	call  string_add
	sw  a0, -6724(s0)
	lw  a0, -6724(s0)
	call  print
	lw  t0, -1756(s0)
	lw  t0, 0(t0)
	sw  t0, -6728(s0)
	lw  a0, -6728(s0)
	call  toString
	sw  a0, -6732(s0)
	lw  a0, -6732(s0)
	la  a1, .$str218
	call  string_add
	sw  a0, -6736(s0)
	lw  a0, -6736(s0)
	call  print
	lw  t0, -1764(s0)
	lw  t0, 0(t0)
	sw  t0, -6740(s0)
	lw  a0, -6740(s0)
	call  toString
	sw  a0, -6744(s0)
	lw  a0, -6744(s0)
	la  a1, .$str219
	call  string_add
	sw  a0, -6748(s0)
	lw  a0, -6748(s0)
	call  print
	lw  t0, -1772(s0)
	lw  t0, 0(t0)
	sw  t0, -6752(s0)
	lw  a0, -6752(s0)
	call  toString
	sw  a0, -6756(s0)
	lw  a0, -6756(s0)
	la  a1, .$str220
	call  string_add
	sw  a0, -6760(s0)
	lw  a0, -6760(s0)
	call  print
	lw  t0, -1780(s0)
	lw  t0, 0(t0)
	sw  t0, -6764(s0)
	lw  a0, -6764(s0)
	call  toString
	sw  a0, -6768(s0)
	lw  a0, -6768(s0)
	la  a1, .$str221
	call  string_add
	sw  a0, -6772(s0)
	lw  a0, -6772(s0)
	call  print
	lw  t0, -1788(s0)
	lw  t0, 0(t0)
	sw  t0, -6776(s0)
	lw  a0, -6776(s0)
	call  toString
	sw  a0, -6780(s0)
	lw  a0, -6780(s0)
	la  a1, .$str222
	call  string_add
	sw  a0, -6784(s0)
	lw  a0, -6784(s0)
	call  print
	lw  t0, -1796(s0)
	lw  t0, 0(t0)
	sw  t0, -6788(s0)
	lw  a0, -6788(s0)
	call  toString
	sw  a0, -6792(s0)
	lw  a0, -6792(s0)
	la  a1, .$str223
	call  string_add
	sw  a0, -6796(s0)
	lw  a0, -6796(s0)
	call  print
	lw  t0, -1804(s0)
	lw  t0, 0(t0)
	sw  t0, -6800(s0)
	lw  a0, -6800(s0)
	call  toString
	sw  a0, -6804(s0)
	lw  a0, -6804(s0)
	la  a1, .$str224
	call  string_add
	sw  a0, -6808(s0)
	lw  a0, -6808(s0)
	call  print
	lw  t0, -1812(s0)
	lw  t0, 0(t0)
	sw  t0, -6812(s0)
	lw  a0, -6812(s0)
	call  toString
	sw  a0, -6816(s0)
	lw  a0, -6816(s0)
	la  a1, .$str225
	call  string_add
	sw  a0, -6820(s0)
	lw  a0, -6820(s0)
	call  print
	lw  t0, -1820(s0)
	lw  t0, 0(t0)
	sw  t0, -6824(s0)
	lw  a0, -6824(s0)
	call  toString
	sw  a0, -6828(s0)
	lw  a0, -6828(s0)
	la  a1, .$str226
	call  string_add
	sw  a0, -6832(s0)
	lw  a0, -6832(s0)
	call  print
	lw  t0, -1828(s0)
	lw  t0, 0(t0)
	sw  t0, -6836(s0)
	lw  a0, -6836(s0)
	call  toString
	sw  a0, -6840(s0)
	lw  a0, -6840(s0)
	la  a1, .$str227
	call  string_add
	sw  a0, -6844(s0)
	lw  a0, -6844(s0)
	call  print
	lw  t0, -1836(s0)
	lw  t0, 0(t0)
	sw  t0, -6848(s0)
	lw  a0, -6848(s0)
	call  toString
	sw  a0, -6852(s0)
	lw  a0, -6852(s0)
	la  a1, .$str228
	call  string_add
	sw  a0, -6856(s0)
	lw  a0, -6856(s0)
	call  print
	lw  t0, -1844(s0)
	lw  t0, 0(t0)
	sw  t0, -6860(s0)
	lw  a0, -6860(s0)
	call  toString
	sw  a0, -6864(s0)
	lw  a0, -6864(s0)
	la  a1, .$str229
	call  string_add
	sw  a0, -6868(s0)
	lw  a0, -6868(s0)
	call  print
	lw  t0, -1852(s0)
	lw  t0, 0(t0)
	sw  t0, -6872(s0)
	lw  a0, -6872(s0)
	call  toString
	sw  a0, -6876(s0)
	lw  a0, -6876(s0)
	la  a1, .$str230
	call  string_add
	sw  a0, -6880(s0)
	lw  a0, -6880(s0)
	call  print
	lw  t0, -1860(s0)
	lw  t0, 0(t0)
	sw  t0, -6884(s0)
	lw  a0, -6884(s0)
	call  toString
	sw  a0, -6888(s0)
	lw  a0, -6888(s0)
	la  a1, .$str231
	call  string_add
	sw  a0, -6892(s0)
	lw  a0, -6892(s0)
	call  print
	lw  t0, -1868(s0)
	lw  t0, 0(t0)
	sw  t0, -6896(s0)
	lw  a0, -6896(s0)
	call  toString
	sw  a0, -6900(s0)
	lw  a0, -6900(s0)
	la  a1, .$str232
	call  string_add
	sw  a0, -6904(s0)
	lw  a0, -6904(s0)
	call  print
	lw  t0, -1876(s0)
	lw  t0, 0(t0)
	sw  t0, -6908(s0)
	lw  a0, -6908(s0)
	call  toString
	sw  a0, -6912(s0)
	lw  a0, -6912(s0)
	la  a1, .$str233
	call  string_add
	sw  a0, -6916(s0)
	lw  a0, -6916(s0)
	call  print
	lw  t0, -1884(s0)
	lw  t0, 0(t0)
	sw  t0, -6920(s0)
	lw  a0, -6920(s0)
	call  toString
	sw  a0, -6924(s0)
	lw  a0, -6924(s0)
	la  a1, .$str234
	call  string_add
	sw  a0, -6928(s0)
	lw  a0, -6928(s0)
	call  print
	lw  t0, -1892(s0)
	lw  t0, 0(t0)
	sw  t0, -6932(s0)
	lw  a0, -6932(s0)
	call  toString
	sw  a0, -6936(s0)
	lw  a0, -6936(s0)
	la  a1, .$str235
	call  string_add
	sw  a0, -6940(s0)
	lw  a0, -6940(s0)
	call  print
	lw  t0, -1900(s0)
	lw  t0, 0(t0)
	sw  t0, -6944(s0)
	lw  a0, -6944(s0)
	call  toString
	sw  a0, -6948(s0)
	lw  a0, -6948(s0)
	la  a1, .$str236
	call  string_add
	sw  a0, -6952(s0)
	lw  a0, -6952(s0)
	call  print
	lw  t0, -1908(s0)
	lw  t0, 0(t0)
	sw  t0, -6956(s0)
	lw  a0, -6956(s0)
	call  toString
	sw  a0, -6960(s0)
	lw  a0, -6960(s0)
	la  a1, .$str237
	call  string_add
	sw  a0, -6964(s0)
	lw  a0, -6964(s0)
	call  print
	lw  t0, -1916(s0)
	lw  t0, 0(t0)
	sw  t0, -6968(s0)
	lw  a0, -6968(s0)
	call  toString
	sw  a0, -6972(s0)
	lw  a0, -6972(s0)
	la  a1, .$str238
	call  string_add
	sw  a0, -6976(s0)
	lw  a0, -6976(s0)
	call  print
	lw  t0, -1924(s0)
	lw  t0, 0(t0)
	sw  t0, -6980(s0)
	lw  a0, -6980(s0)
	call  toString
	sw  a0, -6984(s0)
	lw  a0, -6984(s0)
	la  a1, .$str239
	call  string_add
	sw  a0, -6988(s0)
	lw  a0, -6988(s0)
	call  print
	lw  t0, -1932(s0)
	lw  t0, 0(t0)
	sw  t0, -6992(s0)
	lw  a0, -6992(s0)
	call  toString
	sw  a0, -6996(s0)
	lw  a0, -6996(s0)
	la  a1, .$str240
	call  string_add
	sw  a0, -7000(s0)
	lw  a0, -7000(s0)
	call  print
	lw  t0, -1940(s0)
	lw  t0, 0(t0)
	sw  t0, -7004(s0)
	lw  a0, -7004(s0)
	call  toString
	sw  a0, -7008(s0)
	lw  a0, -7008(s0)
	la  a1, .$str241
	call  string_add
	sw  a0, -7012(s0)
	lw  a0, -7012(s0)
	call  print
	lw  t0, -1948(s0)
	lw  t0, 0(t0)
	sw  t0, -7016(s0)
	lw  a0, -7016(s0)
	call  toString
	sw  a0, -7020(s0)
	lw  a0, -7020(s0)
	la  a1, .$str242
	call  string_add
	sw  a0, -7024(s0)
	lw  a0, -7024(s0)
	call  print
	lw  t0, -1956(s0)
	lw  t0, 0(t0)
	sw  t0, -7028(s0)
	lw  a0, -7028(s0)
	call  toString
	sw  a0, -7032(s0)
	lw  a0, -7032(s0)
	la  a1, .$str243
	call  string_add
	sw  a0, -7036(s0)
	lw  a0, -7036(s0)
	call  print
	lw  t0, -1964(s0)
	lw  t0, 0(t0)
	sw  t0, -7040(s0)
	lw  a0, -7040(s0)
	call  toString
	sw  a0, -7044(s0)
	lw  a0, -7044(s0)
	la  a1, .$str244
	call  string_add
	sw  a0, -7048(s0)
	lw  a0, -7048(s0)
	call  print
	lw  t0, -1972(s0)
	lw  t0, 0(t0)
	sw  t0, -7052(s0)
	lw  a0, -7052(s0)
	call  toString
	sw  a0, -7056(s0)
	lw  a0, -7056(s0)
	la  a1, .$str245
	call  string_add
	sw  a0, -7060(s0)
	lw  a0, -7060(s0)
	call  print
	lw  t0, -1980(s0)
	lw  t0, 0(t0)
	sw  t0, -7064(s0)
	lw  a0, -7064(s0)
	call  toString
	sw  a0, -7068(s0)
	lw  a0, -7068(s0)
	la  a1, .$str246
	call  string_add
	sw  a0, -7072(s0)
	lw  a0, -7072(s0)
	call  print
	lw  t0, -1988(s0)
	lw  t0, 0(t0)
	sw  t0, -7076(s0)
	lw  a0, -7076(s0)
	call  toString
	sw  a0, -7080(s0)
	lw  a0, -7080(s0)
	la  a1, .$str247
	call  string_add
	sw  a0, -7084(s0)
	lw  a0, -7084(s0)
	call  print
	lw  t0, -1996(s0)
	lw  t0, 0(t0)
	sw  t0, -7088(s0)
	lw  a0, -7088(s0)
	call  toString
	sw  a0, -7092(s0)
	lw  a0, -7092(s0)
	la  a1, .$str248
	call  string_add
	sw  a0, -7096(s0)
	lw  a0, -7096(s0)
	call  print
	lw  t0, -2004(s0)
	lw  t0, 0(t0)
	sw  t0, -7100(s0)
	lw  a0, -7100(s0)
	call  toString
	sw  a0, -7104(s0)
	lw  a0, -7104(s0)
	la  a1, .$str249
	call  string_add
	sw  a0, -7108(s0)
	lw  a0, -7108(s0)
	call  print
	lw  t0, -2012(s0)
	lw  t0, 0(t0)
	sw  t0, -7112(s0)
	lw  a0, -7112(s0)
	call  toString
	sw  a0, -7116(s0)
	lw  a0, -7116(s0)
	la  a1, .$str250
	call  string_add
	sw  a0, -7120(s0)
	lw  a0, -7120(s0)
	call  print
	lw  t0, -2020(s0)
	lw  t0, 0(t0)
	sw  t0, -7124(s0)
	lw  a0, -7124(s0)
	call  toString
	sw  a0, -7128(s0)
	lw  a0, -7128(s0)
	la  a1, .$str251
	call  string_add
	sw  a0, -7132(s0)
	lw  a0, -7132(s0)
	call  print
	lw  t0, -2028(s0)
	lw  t0, 0(t0)
	sw  t0, -7136(s0)
	lw  a0, -7136(s0)
	call  toString
	sw  a0, -7140(s0)
	lw  a0, -7140(s0)
	la  a1, .$str252
	call  string_add
	sw  a0, -7144(s0)
	lw  a0, -7144(s0)
	call  print
	lw  t0, -2036(s0)
	lw  t0, 0(t0)
	sw  t0, -7148(s0)
	lw  a0, -7148(s0)
	call  toString
	sw  a0, -7152(s0)
	lw  a0, -7152(s0)
	la  a1, .$str253
	call  string_add
	sw  a0, -7156(s0)
	lw  a0, -7156(s0)
	call  print
	lw  t0, -2044(s0)
	lw  t0, 0(t0)
	sw  t0, -7160(s0)
	lw  a0, -7160(s0)
	call  toString
	sw  a0, -7164(s0)
	lw  a0, -7164(s0)
	la  a1, .$str254
	call  string_add
	sw  a0, -7168(s0)
	lw  a0, -7168(s0)
	call  print
	lw  t0, -2052(s0)
	lw  t0, 0(t0)
	sw  t0, -7172(s0)
	lw  a0, -7172(s0)
	call  toString
	sw  a0, -7176(s0)
	lw  a0, -7176(s0)
	la  a1, .$str255
	call  string_add
	sw  a0, -7180(s0)
	lw  a0, -7180(s0)
	call  print
	lw  t0, -2060(s0)
	lw  t0, 0(t0)
	sw  t0, -7184(s0)
	lw  a0, -7184(s0)
	call  toString
	sw  a0, -7188(s0)
	lw  a0, -7188(s0)
	la  a1, .$str256
	call  string_add
	sw  a0, -7192(s0)
	lw  a0, -7192(s0)
	call  print
	la  a0, .$str257
	call  println
	lw  t0, -20(s0)
	lw  t0, 0(t0)
	sw  t0, -7196(s0)
	lw  a0, -7196(s0)
	call  toString
	sw  a0, -7200(s0)
	lw  a0, -7200(s0)
	la  a1, .$str258
	call  string_add
	sw  a0, -7204(s0)
	lw  a0, -7204(s0)
	call  print
	lw  t0, -28(s0)
	lw  t0, 0(t0)
	sw  t0, -7208(s0)
	lw  a0, -7208(s0)
	call  toString
	sw  a0, -7212(s0)
	lw  a0, -7212(s0)
	la  a1, .$str259
	call  string_add
	sw  a0, -7216(s0)
	lw  a0, -7216(s0)
	call  print
	lw  t0, -36(s0)
	lw  t0, 0(t0)
	sw  t0, -7220(s0)
	lw  a0, -7220(s0)
	call  toString
	sw  a0, -7224(s0)
	lw  a0, -7224(s0)
	la  a1, .$str260
	call  string_add
	sw  a0, -7228(s0)
	lw  a0, -7228(s0)
	call  print
	lw  t0, -44(s0)
	lw  t0, 0(t0)
	sw  t0, -7232(s0)
	lw  a0, -7232(s0)
	call  toString
	sw  a0, -7236(s0)
	lw  a0, -7236(s0)
	la  a1, .$str261
	call  string_add
	sw  a0, -7240(s0)
	lw  a0, -7240(s0)
	call  print
	lw  t0, -52(s0)
	lw  t0, 0(t0)
	sw  t0, -7244(s0)
	lw  a0, -7244(s0)
	call  toString
	sw  a0, -7248(s0)
	lw  a0, -7248(s0)
	la  a1, .$str262
	call  string_add
	sw  a0, -7252(s0)
	lw  a0, -7252(s0)
	call  print
	lw  t0, -60(s0)
	lw  t0, 0(t0)
	sw  t0, -7256(s0)
	lw  a0, -7256(s0)
	call  toString
	sw  a0, -7260(s0)
	lw  a0, -7260(s0)
	la  a1, .$str263
	call  string_add
	sw  a0, -7264(s0)
	lw  a0, -7264(s0)
	call  print
	lw  t0, -68(s0)
	lw  t0, 0(t0)
	sw  t0, -7268(s0)
	lw  a0, -7268(s0)
	call  toString
	sw  a0, -7272(s0)
	lw  a0, -7272(s0)
	la  a1, .$str264
	call  string_add
	sw  a0, -7276(s0)
	lw  a0, -7276(s0)
	call  print
	lw  t0, -76(s0)
	lw  t0, 0(t0)
	sw  t0, -7280(s0)
	lw  a0, -7280(s0)
	call  toString
	sw  a0, -7284(s0)
	lw  a0, -7284(s0)
	la  a1, .$str265
	call  string_add
	sw  a0, -7288(s0)
	lw  a0, -7288(s0)
	call  print
	lw  t0, -84(s0)
	lw  t0, 0(t0)
	sw  t0, -7292(s0)
	lw  a0, -7292(s0)
	call  toString
	sw  a0, -7296(s0)
	lw  a0, -7296(s0)
	la  a1, .$str266
	call  string_add
	sw  a0, -7300(s0)
	lw  a0, -7300(s0)
	call  print
	lw  t0, -92(s0)
	lw  t0, 0(t0)
	sw  t0, -7304(s0)
	lw  a0, -7304(s0)
	call  toString
	sw  a0, -7308(s0)
	lw  a0, -7308(s0)
	la  a1, .$str267
	call  string_add
	sw  a0, -7312(s0)
	lw  a0, -7312(s0)
	call  print
	lw  t0, -100(s0)
	lw  t0, 0(t0)
	sw  t0, -7316(s0)
	lw  a0, -7316(s0)
	call  toString
	sw  a0, -7320(s0)
	lw  a0, -7320(s0)
	la  a1, .$str268
	call  string_add
	sw  a0, -7324(s0)
	lw  a0, -7324(s0)
	call  print
	lw  t0, -108(s0)
	lw  t0, 0(t0)
	sw  t0, -7328(s0)
	lw  a0, -7328(s0)
	call  toString
	sw  a0, -7332(s0)
	lw  a0, -7332(s0)
	la  a1, .$str269
	call  string_add
	sw  a0, -7336(s0)
	lw  a0, -7336(s0)
	call  print
	lw  t0, -116(s0)
	lw  t0, 0(t0)
	sw  t0, -7340(s0)
	lw  a0, -7340(s0)
	call  toString
	sw  a0, -7344(s0)
	lw  a0, -7344(s0)
	la  a1, .$str270
	call  string_add
	sw  a0, -7348(s0)
	lw  a0, -7348(s0)
	call  print
	lw  t0, -124(s0)
	lw  t0, 0(t0)
	sw  t0, -7352(s0)
	lw  a0, -7352(s0)
	call  toString
	sw  a0, -7356(s0)
	lw  a0, -7356(s0)
	la  a1, .$str271
	call  string_add
	sw  a0, -7360(s0)
	lw  a0, -7360(s0)
	call  print
	lw  t0, -132(s0)
	lw  t0, 0(t0)
	sw  t0, -7364(s0)
	lw  a0, -7364(s0)
	call  toString
	sw  a0, -7368(s0)
	lw  a0, -7368(s0)
	la  a1, .$str272
	call  string_add
	sw  a0, -7372(s0)
	lw  a0, -7372(s0)
	call  print
	lw  t0, -140(s0)
	lw  t0, 0(t0)
	sw  t0, -7376(s0)
	lw  a0, -7376(s0)
	call  toString
	sw  a0, -7380(s0)
	lw  a0, -7380(s0)
	la  a1, .$str273
	call  string_add
	sw  a0, -7384(s0)
	lw  a0, -7384(s0)
	call  print
	lw  t0, -148(s0)
	lw  t0, 0(t0)
	sw  t0, -7388(s0)
	lw  a0, -7388(s0)
	call  toString
	sw  a0, -7392(s0)
	lw  a0, -7392(s0)
	la  a1, .$str274
	call  string_add
	sw  a0, -7396(s0)
	lw  a0, -7396(s0)
	call  print
	lw  t0, -156(s0)
	lw  t0, 0(t0)
	sw  t0, -7400(s0)
	lw  a0, -7400(s0)
	call  toString
	sw  a0, -7404(s0)
	lw  a0, -7404(s0)
	la  a1, .$str275
	call  string_add
	sw  a0, -7408(s0)
	lw  a0, -7408(s0)
	call  print
	lw  t0, -164(s0)
	lw  t0, 0(t0)
	sw  t0, -7412(s0)
	lw  a0, -7412(s0)
	call  toString
	sw  a0, -7416(s0)
	lw  a0, -7416(s0)
	la  a1, .$str276
	call  string_add
	sw  a0, -7420(s0)
	lw  a0, -7420(s0)
	call  print
	lw  t0, -172(s0)
	lw  t0, 0(t0)
	sw  t0, -7424(s0)
	lw  a0, -7424(s0)
	call  toString
	sw  a0, -7428(s0)
	lw  a0, -7428(s0)
	la  a1, .$str277
	call  string_add
	sw  a0, -7432(s0)
	lw  a0, -7432(s0)
	call  print
	lw  t0, -180(s0)
	lw  t0, 0(t0)
	sw  t0, -7436(s0)
	lw  a0, -7436(s0)
	call  toString
	sw  a0, -7440(s0)
	lw  a0, -7440(s0)
	la  a1, .$str278
	call  string_add
	sw  a0, -7444(s0)
	lw  a0, -7444(s0)
	call  print
	lw  t0, -188(s0)
	lw  t0, 0(t0)
	sw  t0, -7448(s0)
	lw  a0, -7448(s0)
	call  toString
	sw  a0, -7452(s0)
	lw  a0, -7452(s0)
	la  a1, .$str279
	call  string_add
	sw  a0, -7456(s0)
	lw  a0, -7456(s0)
	call  print
	lw  t0, -196(s0)
	lw  t0, 0(t0)
	sw  t0, -7460(s0)
	lw  a0, -7460(s0)
	call  toString
	sw  a0, -7464(s0)
	lw  a0, -7464(s0)
	la  a1, .$str280
	call  string_add
	sw  a0, -7468(s0)
	lw  a0, -7468(s0)
	call  print
	lw  t0, -204(s0)
	lw  t0, 0(t0)
	sw  t0, -7472(s0)
	lw  a0, -7472(s0)
	call  toString
	sw  a0, -7476(s0)
	lw  a0, -7476(s0)
	la  a1, .$str281
	call  string_add
	sw  a0, -7480(s0)
	lw  a0, -7480(s0)
	call  print
	lw  t0, -212(s0)
	lw  t0, 0(t0)
	sw  t0, -7484(s0)
	lw  a0, -7484(s0)
	call  toString
	sw  a0, -7488(s0)
	lw  a0, -7488(s0)
	la  a1, .$str282
	call  string_add
	sw  a0, -7492(s0)
	lw  a0, -7492(s0)
	call  print
	lw  t0, -220(s0)
	lw  t0, 0(t0)
	sw  t0, -7496(s0)
	lw  a0, -7496(s0)
	call  toString
	sw  a0, -7500(s0)
	lw  a0, -7500(s0)
	la  a1, .$str283
	call  string_add
	sw  a0, -7504(s0)
	lw  a0, -7504(s0)
	call  print
	lw  t0, -228(s0)
	lw  t0, 0(t0)
	sw  t0, -7508(s0)
	lw  a0, -7508(s0)
	call  toString
	sw  a0, -7512(s0)
	lw  a0, -7512(s0)
	la  a1, .$str284
	call  string_add
	sw  a0, -7516(s0)
	lw  a0, -7516(s0)
	call  print
	lw  t0, -236(s0)
	lw  t0, 0(t0)
	sw  t0, -7520(s0)
	lw  a0, -7520(s0)
	call  toString
	sw  a0, -7524(s0)
	lw  a0, -7524(s0)
	la  a1, .$str285
	call  string_add
	sw  a0, -7528(s0)
	lw  a0, -7528(s0)
	call  print
	lw  t0, -244(s0)
	lw  t0, 0(t0)
	sw  t0, -7532(s0)
	lw  a0, -7532(s0)
	call  toString
	sw  a0, -7536(s0)
	lw  a0, -7536(s0)
	la  a1, .$str286
	call  string_add
	sw  a0, -7540(s0)
	lw  a0, -7540(s0)
	call  print
	lw  t0, -252(s0)
	lw  t0, 0(t0)
	sw  t0, -7544(s0)
	lw  a0, -7544(s0)
	call  toString
	sw  a0, -7548(s0)
	lw  a0, -7548(s0)
	la  a1, .$str287
	call  string_add
	sw  a0, -7552(s0)
	lw  a0, -7552(s0)
	call  print
	lw  t0, -260(s0)
	lw  t0, 0(t0)
	sw  t0, -7556(s0)
	lw  a0, -7556(s0)
	call  toString
	sw  a0, -7560(s0)
	lw  a0, -7560(s0)
	la  a1, .$str288
	call  string_add
	sw  a0, -7564(s0)
	lw  a0, -7564(s0)
	call  print
	lw  t0, -268(s0)
	lw  t0, 0(t0)
	sw  t0, -7568(s0)
	lw  a0, -7568(s0)
	call  toString
	sw  a0, -7572(s0)
	lw  a0, -7572(s0)
	la  a1, .$str289
	call  string_add
	sw  a0, -7576(s0)
	lw  a0, -7576(s0)
	call  print
	lw  t0, -276(s0)
	lw  t0, 0(t0)
	sw  t0, -7580(s0)
	lw  a0, -7580(s0)
	call  toString
	sw  a0, -7584(s0)
	lw  a0, -7584(s0)
	la  a1, .$str290
	call  string_add
	sw  a0, -7588(s0)
	lw  a0, -7588(s0)
	call  print
	lw  t0, -284(s0)
	lw  t0, 0(t0)
	sw  t0, -7592(s0)
	lw  a0, -7592(s0)
	call  toString
	sw  a0, -7596(s0)
	lw  a0, -7596(s0)
	la  a1, .$str291
	call  string_add
	sw  a0, -7600(s0)
	lw  a0, -7600(s0)
	call  print
	lw  t0, -292(s0)
	lw  t0, 0(t0)
	sw  t0, -7604(s0)
	lw  a0, -7604(s0)
	call  toString
	sw  a0, -7608(s0)
	lw  a0, -7608(s0)
	la  a1, .$str292
	call  string_add
	sw  a0, -7612(s0)
	lw  a0, -7612(s0)
	call  print
	lw  t0, -300(s0)
	lw  t0, 0(t0)
	sw  t0, -7616(s0)
	lw  a0, -7616(s0)
	call  toString
	sw  a0, -7620(s0)
	lw  a0, -7620(s0)
	la  a1, .$str293
	call  string_add
	sw  a0, -7624(s0)
	lw  a0, -7624(s0)
	call  print
	lw  t0, -308(s0)
	lw  t0, 0(t0)
	sw  t0, -7628(s0)
	lw  a0, -7628(s0)
	call  toString
	sw  a0, -7632(s0)
	lw  a0, -7632(s0)
	la  a1, .$str294
	call  string_add
	sw  a0, -7636(s0)
	lw  a0, -7636(s0)
	call  print
	lw  t0, -316(s0)
	lw  t0, 0(t0)
	sw  t0, -7640(s0)
	lw  a0, -7640(s0)
	call  toString
	sw  a0, -7644(s0)
	lw  a0, -7644(s0)
	la  a1, .$str295
	call  string_add
	sw  a0, -7648(s0)
	lw  a0, -7648(s0)
	call  print
	lw  t0, -324(s0)
	lw  t0, 0(t0)
	sw  t0, -7652(s0)
	lw  a0, -7652(s0)
	call  toString
	sw  a0, -7656(s0)
	lw  a0, -7656(s0)
	la  a1, .$str296
	call  string_add
	sw  a0, -7660(s0)
	lw  a0, -7660(s0)
	call  print
	lw  t0, -332(s0)
	lw  t0, 0(t0)
	sw  t0, -7664(s0)
	lw  a0, -7664(s0)
	call  toString
	sw  a0, -7668(s0)
	lw  a0, -7668(s0)
	la  a1, .$str297
	call  string_add
	sw  a0, -7672(s0)
	lw  a0, -7672(s0)
	call  print
	lw  t0, -340(s0)
	lw  t0, 0(t0)
	sw  t0, -7676(s0)
	lw  a0, -7676(s0)
	call  toString
	sw  a0, -7680(s0)
	lw  a0, -7680(s0)
	la  a1, .$str298
	call  string_add
	sw  a0, -7684(s0)
	lw  a0, -7684(s0)
	call  print
	lw  t0, -348(s0)
	lw  t0, 0(t0)
	sw  t0, -7688(s0)
	lw  a0, -7688(s0)
	call  toString
	sw  a0, -7692(s0)
	lw  a0, -7692(s0)
	la  a1, .$str299
	call  string_add
	sw  a0, -7696(s0)
	lw  a0, -7696(s0)
	call  print
	lw  t0, -356(s0)
	lw  t0, 0(t0)
	sw  t0, -7700(s0)
	lw  a0, -7700(s0)
	call  toString
	sw  a0, -7704(s0)
	lw  a0, -7704(s0)
	la  a1, .$str300
	call  string_add
	sw  a0, -7708(s0)
	lw  a0, -7708(s0)
	call  print
	lw  t0, -364(s0)
	lw  t0, 0(t0)
	sw  t0, -7712(s0)
	lw  a0, -7712(s0)
	call  toString
	sw  a0, -7716(s0)
	lw  a0, -7716(s0)
	la  a1, .$str301
	call  string_add
	sw  a0, -7720(s0)
	lw  a0, -7720(s0)
	call  print
	lw  t0, -372(s0)
	lw  t0, 0(t0)
	sw  t0, -7724(s0)
	lw  a0, -7724(s0)
	call  toString
	sw  a0, -7728(s0)
	lw  a0, -7728(s0)
	la  a1, .$str302
	call  string_add
	sw  a0, -7732(s0)
	lw  a0, -7732(s0)
	call  print
	lw  t0, -380(s0)
	lw  t0, 0(t0)
	sw  t0, -7736(s0)
	lw  a0, -7736(s0)
	call  toString
	sw  a0, -7740(s0)
	lw  a0, -7740(s0)
	la  a1, .$str303
	call  string_add
	sw  a0, -7744(s0)
	lw  a0, -7744(s0)
	call  print
	lw  t0, -388(s0)
	lw  t0, 0(t0)
	sw  t0, -7748(s0)
	lw  a0, -7748(s0)
	call  toString
	sw  a0, -7752(s0)
	lw  a0, -7752(s0)
	la  a1, .$str304
	call  string_add
	sw  a0, -7756(s0)
	lw  a0, -7756(s0)
	call  print
	lw  t0, -396(s0)
	lw  t0, 0(t0)
	sw  t0, -7760(s0)
	lw  a0, -7760(s0)
	call  toString
	sw  a0, -7764(s0)
	lw  a0, -7764(s0)
	la  a1, .$str305
	call  string_add
	sw  a0, -7768(s0)
	lw  a0, -7768(s0)
	call  print
	lw  t0, -404(s0)
	lw  t0, 0(t0)
	sw  t0, -7772(s0)
	lw  a0, -7772(s0)
	call  toString
	sw  a0, -7776(s0)
	lw  a0, -7776(s0)
	la  a1, .$str306
	call  string_add
	sw  a0, -7780(s0)
	lw  a0, -7780(s0)
	call  print
	lw  t0, -412(s0)
	lw  t0, 0(t0)
	sw  t0, -7784(s0)
	lw  a0, -7784(s0)
	call  toString
	sw  a0, -7788(s0)
	lw  a0, -7788(s0)
	la  a1, .$str307
	call  string_add
	sw  a0, -7792(s0)
	lw  a0, -7792(s0)
	call  print
	lw  t0, -420(s0)
	lw  t0, 0(t0)
	sw  t0, -7796(s0)
	lw  a0, -7796(s0)
	call  toString
	sw  a0, -7800(s0)
	lw  a0, -7800(s0)
	la  a1, .$str308
	call  string_add
	sw  a0, -7804(s0)
	lw  a0, -7804(s0)
	call  print
	lw  t0, -428(s0)
	lw  t0, 0(t0)
	sw  t0, -7808(s0)
	lw  a0, -7808(s0)
	call  toString
	sw  a0, -7812(s0)
	lw  a0, -7812(s0)
	la  a1, .$str309
	call  string_add
	sw  a0, -7816(s0)
	lw  a0, -7816(s0)
	call  print
	lw  t0, -436(s0)
	lw  t0, 0(t0)
	sw  t0, -7820(s0)
	lw  a0, -7820(s0)
	call  toString
	sw  a0, -7824(s0)
	lw  a0, -7824(s0)
	la  a1, .$str310
	call  string_add
	sw  a0, -7828(s0)
	lw  a0, -7828(s0)
	call  print
	lw  t0, -444(s0)
	lw  t0, 0(t0)
	sw  t0, -7832(s0)
	lw  a0, -7832(s0)
	call  toString
	sw  a0, -7836(s0)
	lw  a0, -7836(s0)
	la  a1, .$str311
	call  string_add
	sw  a0, -7840(s0)
	lw  a0, -7840(s0)
	call  print
	lw  t0, -452(s0)
	lw  t0, 0(t0)
	sw  t0, -7844(s0)
	lw  a0, -7844(s0)
	call  toString
	sw  a0, -7848(s0)
	lw  a0, -7848(s0)
	la  a1, .$str312
	call  string_add
	sw  a0, -7852(s0)
	lw  a0, -7852(s0)
	call  print
	lw  t0, -460(s0)
	lw  t0, 0(t0)
	sw  t0, -7856(s0)
	lw  a0, -7856(s0)
	call  toString
	sw  a0, -7860(s0)
	lw  a0, -7860(s0)
	la  a1, .$str313
	call  string_add
	sw  a0, -7864(s0)
	lw  a0, -7864(s0)
	call  print
	lw  t0, -468(s0)
	lw  t0, 0(t0)
	sw  t0, -7868(s0)
	lw  a0, -7868(s0)
	call  toString
	sw  a0, -7872(s0)
	lw  a0, -7872(s0)
	la  a1, .$str314
	call  string_add
	sw  a0, -7876(s0)
	lw  a0, -7876(s0)
	call  print
	lw  t0, -476(s0)
	lw  t0, 0(t0)
	sw  t0, -7880(s0)
	lw  a0, -7880(s0)
	call  toString
	sw  a0, -7884(s0)
	lw  a0, -7884(s0)
	la  a1, .$str315
	call  string_add
	sw  a0, -7888(s0)
	lw  a0, -7888(s0)
	call  print
	lw  t0, -484(s0)
	lw  t0, 0(t0)
	sw  t0, -7892(s0)
	lw  a0, -7892(s0)
	call  toString
	sw  a0, -7896(s0)
	lw  a0, -7896(s0)
	la  a1, .$str316
	call  string_add
	sw  a0, -7900(s0)
	lw  a0, -7900(s0)
	call  print
	lw  t0, -492(s0)
	lw  t0, 0(t0)
	sw  t0, -7904(s0)
	lw  a0, -7904(s0)
	call  toString
	sw  a0, -7908(s0)
	lw  a0, -7908(s0)
	la  a1, .$str317
	call  string_add
	sw  a0, -7912(s0)
	lw  a0, -7912(s0)
	call  print
	lw  t0, -500(s0)
	lw  t0, 0(t0)
	sw  t0, -7916(s0)
	lw  a0, -7916(s0)
	call  toString
	sw  a0, -7920(s0)
	lw  a0, -7920(s0)
	la  a1, .$str318
	call  string_add
	sw  a0, -7924(s0)
	lw  a0, -7924(s0)
	call  print
	lw  t0, -508(s0)
	lw  t0, 0(t0)
	sw  t0, -7928(s0)
	lw  a0, -7928(s0)
	call  toString
	sw  a0, -7932(s0)
	lw  a0, -7932(s0)
	la  a1, .$str319
	call  string_add
	sw  a0, -7936(s0)
	lw  a0, -7936(s0)
	call  print
	lw  t0, -516(s0)
	lw  t0, 0(t0)
	sw  t0, -7940(s0)
	lw  a0, -7940(s0)
	call  toString
	sw  a0, -7944(s0)
	lw  a0, -7944(s0)
	la  a1, .$str320
	call  string_add
	sw  a0, -7948(s0)
	lw  a0, -7948(s0)
	call  print
	lw  t0, -524(s0)
	lw  t0, 0(t0)
	sw  t0, -7952(s0)
	lw  a0, -7952(s0)
	call  toString
	sw  a0, -7956(s0)
	lw  a0, -7956(s0)
	la  a1, .$str321
	call  string_add
	sw  a0, -7960(s0)
	lw  a0, -7960(s0)
	call  print
	lw  t0, -532(s0)
	lw  t0, 0(t0)
	sw  t0, -7964(s0)
	lw  a0, -7964(s0)
	call  toString
	sw  a0, -7968(s0)
	lw  a0, -7968(s0)
	la  a1, .$str322
	call  string_add
	sw  a0, -7972(s0)
	lw  a0, -7972(s0)
	call  print
	lw  t0, -540(s0)
	lw  t0, 0(t0)
	sw  t0, -7976(s0)
	lw  a0, -7976(s0)
	call  toString
	sw  a0, -7980(s0)
	lw  a0, -7980(s0)
	la  a1, .$str323
	call  string_add
	sw  a0, -7984(s0)
	lw  a0, -7984(s0)
	call  print
	lw  t0, -548(s0)
	lw  t0, 0(t0)
	sw  t0, -7988(s0)
	lw  a0, -7988(s0)
	call  toString
	sw  a0, -7992(s0)
	lw  a0, -7992(s0)
	la  a1, .$str324
	call  string_add
	sw  a0, -7996(s0)
	lw  a0, -7996(s0)
	call  print
	lw  t0, -556(s0)
	lw  t0, 0(t0)
	sw  t0, -8000(s0)
	lw  a0, -8000(s0)
	call  toString
	sw  a0, -8004(s0)
	lw  a0, -8004(s0)
	la  a1, .$str325
	call  string_add
	sw  a0, -8008(s0)
	lw  a0, -8008(s0)
	call  print
	lw  t0, -564(s0)
	lw  t0, 0(t0)
	sw  t0, -8012(s0)
	lw  a0, -8012(s0)
	call  toString
	sw  a0, -8016(s0)
	lw  a0, -8016(s0)
	la  a1, .$str326
	call  string_add
	sw  a0, -8020(s0)
	lw  a0, -8020(s0)
	call  print
	lw  t0, -572(s0)
	lw  t0, 0(t0)
	sw  t0, -8024(s0)
	lw  a0, -8024(s0)
	call  toString
	sw  a0, -8028(s0)
	lw  a0, -8028(s0)
	la  a1, .$str327
	call  string_add
	sw  a0, -8032(s0)
	lw  a0, -8032(s0)
	call  print
	lw  t0, -580(s0)
	lw  t0, 0(t0)
	sw  t0, -8036(s0)
	lw  a0, -8036(s0)
	call  toString
	sw  a0, -8040(s0)
	lw  a0, -8040(s0)
	la  a1, .$str328
	call  string_add
	sw  a0, -8044(s0)
	lw  a0, -8044(s0)
	call  print
	lw  t0, -588(s0)
	lw  t0, 0(t0)
	sw  t0, -8048(s0)
	lw  a0, -8048(s0)
	call  toString
	sw  a0, -8052(s0)
	lw  a0, -8052(s0)
	la  a1, .$str329
	call  string_add
	sw  a0, -8056(s0)
	lw  a0, -8056(s0)
	call  print
	lw  t0, -596(s0)
	lw  t0, 0(t0)
	sw  t0, -8060(s0)
	lw  a0, -8060(s0)
	call  toString
	sw  a0, -8064(s0)
	lw  a0, -8064(s0)
	la  a1, .$str330
	call  string_add
	sw  a0, -8068(s0)
	lw  a0, -8068(s0)
	call  print
	lw  t0, -604(s0)
	lw  t0, 0(t0)
	sw  t0, -8072(s0)
	lw  a0, -8072(s0)
	call  toString
	sw  a0, -8076(s0)
	lw  a0, -8076(s0)
	la  a1, .$str331
	call  string_add
	sw  a0, -8080(s0)
	lw  a0, -8080(s0)
	call  print
	lw  t0, -612(s0)
	lw  t0, 0(t0)
	sw  t0, -8084(s0)
	lw  a0, -8084(s0)
	call  toString
	sw  a0, -8088(s0)
	lw  a0, -8088(s0)
	la  a1, .$str332
	call  string_add
	sw  a0, -8092(s0)
	lw  a0, -8092(s0)
	call  print
	lw  t0, -620(s0)
	lw  t0, 0(t0)
	sw  t0, -8096(s0)
	lw  a0, -8096(s0)
	call  toString
	sw  a0, -8100(s0)
	lw  a0, -8100(s0)
	la  a1, .$str333
	call  string_add
	sw  a0, -8104(s0)
	lw  a0, -8104(s0)
	call  print
	lw  t0, -628(s0)
	lw  t0, 0(t0)
	sw  t0, -8108(s0)
	lw  a0, -8108(s0)
	call  toString
	sw  a0, -8112(s0)
	lw  a0, -8112(s0)
	la  a1, .$str334
	call  string_add
	sw  a0, -8116(s0)
	lw  a0, -8116(s0)
	call  print
	lw  t0, -636(s0)
	lw  t0, 0(t0)
	sw  t0, -8120(s0)
	lw  a0, -8120(s0)
	call  toString
	sw  a0, -8124(s0)
	lw  a0, -8124(s0)
	la  a1, .$str335
	call  string_add
	sw  a0, -8128(s0)
	lw  a0, -8128(s0)
	call  print
	lw  t0, -644(s0)
	lw  t0, 0(t0)
	sw  t0, -8132(s0)
	lw  a0, -8132(s0)
	call  toString
	sw  a0, -8136(s0)
	lw  a0, -8136(s0)
	la  a1, .$str336
	call  string_add
	sw  a0, -8140(s0)
	lw  a0, -8140(s0)
	call  print
	lw  t0, -652(s0)
	lw  t0, 0(t0)
	sw  t0, -8144(s0)
	lw  a0, -8144(s0)
	call  toString
	sw  a0, -8148(s0)
	lw  a0, -8148(s0)
	la  a1, .$str337
	call  string_add
	sw  a0, -8152(s0)
	lw  a0, -8152(s0)
	call  print
	lw  t0, -660(s0)
	lw  t0, 0(t0)
	sw  t0, -8156(s0)
	lw  a0, -8156(s0)
	call  toString
	sw  a0, -8160(s0)
	lw  a0, -8160(s0)
	la  a1, .$str338
	call  string_add
	sw  a0, -8164(s0)
	lw  a0, -8164(s0)
	call  print
	lw  t0, -668(s0)
	lw  t0, 0(t0)
	sw  t0, -8168(s0)
	lw  a0, -8168(s0)
	call  toString
	sw  a0, -8172(s0)
	lw  a0, -8172(s0)
	la  a1, .$str339
	call  string_add
	sw  a0, -8176(s0)
	lw  a0, -8176(s0)
	call  print
	lw  t0, -676(s0)
	lw  t0, 0(t0)
	sw  t0, -8180(s0)
	lw  a0, -8180(s0)
	call  toString
	sw  a0, -8184(s0)
	lw  a0, -8184(s0)
	la  a1, .$str340
	call  string_add
	sw  a0, -8188(s0)
	lw  a0, -8188(s0)
	call  print
	lw  t0, -684(s0)
	lw  t0, 0(t0)
	sw  t0, -8192(s0)
	lw  a0, -8192(s0)
	call  toString
	sw  a0, -8196(s0)
	lw  a0, -8196(s0)
	la  a1, .$str341
	call  string_add
	sw  a0, -8200(s0)
	lw  a0, -8200(s0)
	call  print
	lw  t0, -692(s0)
	lw  t0, 0(t0)
	sw  t0, -8204(s0)
	lw  a0, -8204(s0)
	call  toString
	sw  a0, -8208(s0)
	lw  a0, -8208(s0)
	la  a1, .$str342
	call  string_add
	sw  a0, -8212(s0)
	lw  a0, -8212(s0)
	call  print
	lw  t0, -700(s0)
	lw  t0, 0(t0)
	sw  t0, -8216(s0)
	lw  a0, -8216(s0)
	call  toString
	sw  a0, -8220(s0)
	lw  a0, -8220(s0)
	la  a1, .$str343
	call  string_add
	sw  a0, -8224(s0)
	lw  a0, -8224(s0)
	call  print
	lw  t0, -708(s0)
	lw  t0, 0(t0)
	sw  t0, -8228(s0)
	lw  a0, -8228(s0)
	call  toString
	sw  a0, -8232(s0)
	lw  a0, -8232(s0)
	la  a1, .$str344
	call  string_add
	sw  a0, -8236(s0)
	lw  a0, -8236(s0)
	call  print
	lw  t0, -716(s0)
	lw  t0, 0(t0)
	sw  t0, -8240(s0)
	lw  a0, -8240(s0)
	call  toString
	sw  a0, -8244(s0)
	lw  a0, -8244(s0)
	la  a1, .$str345
	call  string_add
	sw  a0, -8248(s0)
	lw  a0, -8248(s0)
	call  print
	lw  t0, -724(s0)
	lw  t0, 0(t0)
	sw  t0, -8252(s0)
	lw  a0, -8252(s0)
	call  toString
	sw  a0, -8256(s0)
	lw  a0, -8256(s0)
	la  a1, .$str346
	call  string_add
	sw  a0, -8260(s0)
	lw  a0, -8260(s0)
	call  print
	lw  t0, -732(s0)
	lw  t0, 0(t0)
	sw  t0, -8264(s0)
	lw  a0, -8264(s0)
	call  toString
	sw  a0, -8268(s0)
	lw  a0, -8268(s0)
	la  a1, .$str347
	call  string_add
	sw  a0, -8272(s0)
	lw  a0, -8272(s0)
	call  print
	lw  t0, -740(s0)
	lw  t0, 0(t0)
	sw  t0, -8276(s0)
	lw  a0, -8276(s0)
	call  toString
	sw  a0, -8280(s0)
	lw  a0, -8280(s0)
	la  a1, .$str348
	call  string_add
	sw  a0, -8284(s0)
	lw  a0, -8284(s0)
	call  print
	lw  t0, -748(s0)
	lw  t0, 0(t0)
	sw  t0, -8288(s0)
	lw  a0, -8288(s0)
	call  toString
	sw  a0, -8292(s0)
	lw  a0, -8292(s0)
	la  a1, .$str349
	call  string_add
	sw  a0, -8296(s0)
	lw  a0, -8296(s0)
	call  print
	lw  t0, -756(s0)
	lw  t0, 0(t0)
	sw  t0, -8300(s0)
	lw  a0, -8300(s0)
	call  toString
	sw  a0, -8304(s0)
	lw  a0, -8304(s0)
	la  a1, .$str350
	call  string_add
	sw  a0, -8308(s0)
	lw  a0, -8308(s0)
	call  print
	lw  t0, -764(s0)
	lw  t0, 0(t0)
	sw  t0, -8312(s0)
	lw  a0, -8312(s0)
	call  toString
	sw  a0, -8316(s0)
	lw  a0, -8316(s0)
	la  a1, .$str351
	call  string_add
	sw  a0, -8320(s0)
	lw  a0, -8320(s0)
	call  print
	lw  t0, -772(s0)
	lw  t0, 0(t0)
	sw  t0, -8324(s0)
	lw  a0, -8324(s0)
	call  toString
	sw  a0, -8328(s0)
	lw  a0, -8328(s0)
	la  a1, .$str352
	call  string_add
	sw  a0, -8332(s0)
	lw  a0, -8332(s0)
	call  print
	lw  t0, -780(s0)
	lw  t0, 0(t0)
	sw  t0, -8336(s0)
	lw  a0, -8336(s0)
	call  toString
	sw  a0, -8340(s0)
	lw  a0, -8340(s0)
	la  a1, .$str353
	call  string_add
	sw  a0, -8344(s0)
	lw  a0, -8344(s0)
	call  print
	lw  t0, -788(s0)
	lw  t0, 0(t0)
	sw  t0, -8348(s0)
	lw  a0, -8348(s0)
	call  toString
	sw  a0, -8352(s0)
	lw  a0, -8352(s0)
	la  a1, .$str354
	call  string_add
	sw  a0, -8356(s0)
	lw  a0, -8356(s0)
	call  print
	lw  t0, -796(s0)
	lw  t0, 0(t0)
	sw  t0, -8360(s0)
	lw  a0, -8360(s0)
	call  toString
	sw  a0, -8364(s0)
	lw  a0, -8364(s0)
	la  a1, .$str355
	call  string_add
	sw  a0, -8368(s0)
	lw  a0, -8368(s0)
	call  print
	lw  t0, -804(s0)
	lw  t0, 0(t0)
	sw  t0, -8372(s0)
	lw  a0, -8372(s0)
	call  toString
	sw  a0, -8376(s0)
	lw  a0, -8376(s0)
	la  a1, .$str356
	call  string_add
	sw  a0, -8380(s0)
	lw  a0, -8380(s0)
	call  print
	lw  t0, -812(s0)
	lw  t0, 0(t0)
	sw  t0, -8384(s0)
	lw  a0, -8384(s0)
	call  toString
	sw  a0, -8388(s0)
	lw  a0, -8388(s0)
	la  a1, .$str357
	call  string_add
	sw  a0, -8392(s0)
	lw  a0, -8392(s0)
	call  print
	lw  t0, -820(s0)
	lw  t0, 0(t0)
	sw  t0, -8396(s0)
	lw  a0, -8396(s0)
	call  toString
	sw  a0, -8400(s0)
	lw  a0, -8400(s0)
	la  a1, .$str358
	call  string_add
	sw  a0, -8404(s0)
	lw  a0, -8404(s0)
	call  print
	lw  t0, -828(s0)
	lw  t0, 0(t0)
	sw  t0, -8408(s0)
	lw  a0, -8408(s0)
	call  toString
	sw  a0, -8412(s0)
	lw  a0, -8412(s0)
	la  a1, .$str359
	call  string_add
	sw  a0, -8416(s0)
	lw  a0, -8416(s0)
	call  print
	lw  t0, -836(s0)
	lw  t0, 0(t0)
	sw  t0, -8420(s0)
	lw  a0, -8420(s0)
	call  toString
	sw  a0, -8424(s0)
	lw  a0, -8424(s0)
	la  a1, .$str360
	call  string_add
	sw  a0, -8428(s0)
	lw  a0, -8428(s0)
	call  print
	lw  t0, -844(s0)
	lw  t0, 0(t0)
	sw  t0, -8432(s0)
	lw  a0, -8432(s0)
	call  toString
	sw  a0, -8436(s0)
	lw  a0, -8436(s0)
	la  a1, .$str361
	call  string_add
	sw  a0, -8440(s0)
	lw  a0, -8440(s0)
	call  print
	lw  t0, -852(s0)
	lw  t0, 0(t0)
	sw  t0, -8444(s0)
	lw  a0, -8444(s0)
	call  toString
	sw  a0, -8448(s0)
	lw  a0, -8448(s0)
	la  a1, .$str362
	call  string_add
	sw  a0, -8452(s0)
	lw  a0, -8452(s0)
	call  print
	lw  t0, -860(s0)
	lw  t0, 0(t0)
	sw  t0, -8456(s0)
	lw  a0, -8456(s0)
	call  toString
	sw  a0, -8460(s0)
	lw  a0, -8460(s0)
	la  a1, .$str363
	call  string_add
	sw  a0, -8464(s0)
	lw  a0, -8464(s0)
	call  print
	lw  t0, -868(s0)
	lw  t0, 0(t0)
	sw  t0, -8468(s0)
	lw  a0, -8468(s0)
	call  toString
	sw  a0, -8472(s0)
	lw  a0, -8472(s0)
	la  a1, .$str364
	call  string_add
	sw  a0, -8476(s0)
	lw  a0, -8476(s0)
	call  print
	lw  t0, -876(s0)
	lw  t0, 0(t0)
	sw  t0, -8480(s0)
	lw  a0, -8480(s0)
	call  toString
	sw  a0, -8484(s0)
	lw  a0, -8484(s0)
	la  a1, .$str365
	call  string_add
	sw  a0, -8488(s0)
	lw  a0, -8488(s0)
	call  print
	lw  t0, -884(s0)
	lw  t0, 0(t0)
	sw  t0, -8492(s0)
	lw  a0, -8492(s0)
	call  toString
	sw  a0, -8496(s0)
	lw  a0, -8496(s0)
	la  a1, .$str366
	call  string_add
	sw  a0, -8500(s0)
	lw  a0, -8500(s0)
	call  print
	lw  t0, -892(s0)
	lw  t0, 0(t0)
	sw  t0, -8504(s0)
	lw  a0, -8504(s0)
	call  toString
	sw  a0, -8508(s0)
	lw  a0, -8508(s0)
	la  a1, .$str367
	call  string_add
	sw  a0, -8512(s0)
	lw  a0, -8512(s0)
	call  print
	lw  t0, -900(s0)
	lw  t0, 0(t0)
	sw  t0, -8516(s0)
	lw  a0, -8516(s0)
	call  toString
	sw  a0, -8520(s0)
	lw  a0, -8520(s0)
	la  a1, .$str368
	call  string_add
	sw  a0, -8524(s0)
	lw  a0, -8524(s0)
	call  print
	lw  t0, -908(s0)
	lw  t0, 0(t0)
	sw  t0, -8528(s0)
	lw  a0, -8528(s0)
	call  toString
	sw  a0, -8532(s0)
	lw  a0, -8532(s0)
	la  a1, .$str369
	call  string_add
	sw  a0, -8536(s0)
	lw  a0, -8536(s0)
	call  print
	lw  t0, -916(s0)
	lw  t0, 0(t0)
	sw  t0, -8540(s0)
	lw  a0, -8540(s0)
	call  toString
	sw  a0, -8544(s0)
	lw  a0, -8544(s0)
	la  a1, .$str370
	call  string_add
	sw  a0, -8548(s0)
	lw  a0, -8548(s0)
	call  print
	lw  t0, -924(s0)
	lw  t0, 0(t0)
	sw  t0, -8552(s0)
	lw  a0, -8552(s0)
	call  toString
	sw  a0, -8556(s0)
	lw  a0, -8556(s0)
	la  a1, .$str371
	call  string_add
	sw  a0, -8560(s0)
	lw  a0, -8560(s0)
	call  print
	lw  t0, -932(s0)
	lw  t0, 0(t0)
	sw  t0, -8564(s0)
	lw  a0, -8564(s0)
	call  toString
	sw  a0, -8568(s0)
	lw  a0, -8568(s0)
	la  a1, .$str372
	call  string_add
	sw  a0, -8572(s0)
	lw  a0, -8572(s0)
	call  print
	lw  t0, -940(s0)
	lw  t0, 0(t0)
	sw  t0, -8576(s0)
	lw  a0, -8576(s0)
	call  toString
	sw  a0, -8580(s0)
	lw  a0, -8580(s0)
	la  a1, .$str373
	call  string_add
	sw  a0, -8584(s0)
	lw  a0, -8584(s0)
	call  print
	lw  t0, -948(s0)
	lw  t0, 0(t0)
	sw  t0, -8588(s0)
	lw  a0, -8588(s0)
	call  toString
	sw  a0, -8592(s0)
	lw  a0, -8592(s0)
	la  a1, .$str374
	call  string_add
	sw  a0, -8596(s0)
	lw  a0, -8596(s0)
	call  print
	lw  t0, -956(s0)
	lw  t0, 0(t0)
	sw  t0, -8600(s0)
	lw  a0, -8600(s0)
	call  toString
	sw  a0, -8604(s0)
	lw  a0, -8604(s0)
	la  a1, .$str375
	call  string_add
	sw  a0, -8608(s0)
	lw  a0, -8608(s0)
	call  print
	lw  t0, -964(s0)
	lw  t0, 0(t0)
	sw  t0, -8612(s0)
	lw  a0, -8612(s0)
	call  toString
	sw  a0, -8616(s0)
	lw  a0, -8616(s0)
	la  a1, .$str376
	call  string_add
	sw  a0, -8620(s0)
	lw  a0, -8620(s0)
	call  print
	lw  t0, -972(s0)
	lw  t0, 0(t0)
	sw  t0, -8624(s0)
	lw  a0, -8624(s0)
	call  toString
	sw  a0, -8628(s0)
	lw  a0, -8628(s0)
	la  a1, .$str377
	call  string_add
	sw  a0, -8632(s0)
	lw  a0, -8632(s0)
	call  print
	lw  t0, -980(s0)
	lw  t0, 0(t0)
	sw  t0, -8636(s0)
	lw  a0, -8636(s0)
	call  toString
	sw  a0, -8640(s0)
	lw  a0, -8640(s0)
	la  a1, .$str378
	call  string_add
	sw  a0, -8644(s0)
	lw  a0, -8644(s0)
	call  print
	lw  t0, -988(s0)
	lw  t0, 0(t0)
	sw  t0, -8648(s0)
	lw  a0, -8648(s0)
	call  toString
	sw  a0, -8652(s0)
	lw  a0, -8652(s0)
	la  a1, .$str379
	call  string_add
	sw  a0, -8656(s0)
	lw  a0, -8656(s0)
	call  print
	lw  t0, -996(s0)
	lw  t0, 0(t0)
	sw  t0, -8660(s0)
	lw  a0, -8660(s0)
	call  toString
	sw  a0, -8664(s0)
	lw  a0, -8664(s0)
	la  a1, .$str380
	call  string_add
	sw  a0, -8668(s0)
	lw  a0, -8668(s0)
	call  print
	lw  t0, -1004(s0)
	lw  t0, 0(t0)
	sw  t0, -8672(s0)
	lw  a0, -8672(s0)
	call  toString
	sw  a0, -8676(s0)
	lw  a0, -8676(s0)
	la  a1, .$str381
	call  string_add
	sw  a0, -8680(s0)
	lw  a0, -8680(s0)
	call  print
	lw  t0, -1012(s0)
	lw  t0, 0(t0)
	sw  t0, -8684(s0)
	lw  a0, -8684(s0)
	call  toString
	sw  a0, -8688(s0)
	lw  a0, -8688(s0)
	la  a1, .$str382
	call  string_add
	sw  a0, -8692(s0)
	lw  a0, -8692(s0)
	call  print
	lw  t0, -1020(s0)
	lw  t0, 0(t0)
	sw  t0, -8696(s0)
	lw  a0, -8696(s0)
	call  toString
	sw  a0, -8700(s0)
	lw  a0, -8700(s0)
	la  a1, .$str383
	call  string_add
	sw  a0, -8704(s0)
	lw  a0, -8704(s0)
	call  print
	lw  t0, -1028(s0)
	lw  t0, 0(t0)
	sw  t0, -8708(s0)
	lw  a0, -8708(s0)
	call  toString
	sw  a0, -8712(s0)
	lw  a0, -8712(s0)
	la  a1, .$str384
	call  string_add
	sw  a0, -8716(s0)
	lw  a0, -8716(s0)
	call  print
	lw  t0, -1036(s0)
	lw  t0, 0(t0)
	sw  t0, -8720(s0)
	lw  a0, -8720(s0)
	call  toString
	sw  a0, -8724(s0)
	lw  a0, -8724(s0)
	la  a1, .$str385
	call  string_add
	sw  a0, -8728(s0)
	lw  a0, -8728(s0)
	call  print
	lw  t0, -1044(s0)
	lw  t0, 0(t0)
	sw  t0, -8732(s0)
	lw  a0, -8732(s0)
	call  toString
	sw  a0, -8736(s0)
	lw  a0, -8736(s0)
	la  a1, .$str386
	call  string_add
	sw  a0, -8740(s0)
	lw  a0, -8740(s0)
	call  print
	lw  t0, -1052(s0)
	lw  t0, 0(t0)
	sw  t0, -8744(s0)
	lw  a0, -8744(s0)
	call  toString
	sw  a0, -8748(s0)
	lw  a0, -8748(s0)
	la  a1, .$str387
	call  string_add
	sw  a0, -8752(s0)
	lw  a0, -8752(s0)
	call  print
	lw  t0, -1060(s0)
	lw  t0, 0(t0)
	sw  t0, -8756(s0)
	lw  a0, -8756(s0)
	call  toString
	sw  a0, -8760(s0)
	lw  a0, -8760(s0)
	la  a1, .$str388
	call  string_add
	sw  a0, -8764(s0)
	lw  a0, -8764(s0)
	call  print
	lw  t0, -1068(s0)
	lw  t0, 0(t0)
	sw  t0, -8768(s0)
	lw  a0, -8768(s0)
	call  toString
	sw  a0, -8772(s0)
	lw  a0, -8772(s0)
	la  a1, .$str389
	call  string_add
	sw  a0, -8776(s0)
	lw  a0, -8776(s0)
	call  print
	lw  t0, -1076(s0)
	lw  t0, 0(t0)
	sw  t0, -8780(s0)
	lw  a0, -8780(s0)
	call  toString
	sw  a0, -8784(s0)
	lw  a0, -8784(s0)
	la  a1, .$str390
	call  string_add
	sw  a0, -8788(s0)
	lw  a0, -8788(s0)
	call  print
	lw  t0, -1084(s0)
	lw  t0, 0(t0)
	sw  t0, -8792(s0)
	lw  a0, -8792(s0)
	call  toString
	sw  a0, -8796(s0)
	lw  a0, -8796(s0)
	la  a1, .$str391
	call  string_add
	sw  a0, -8800(s0)
	lw  a0, -8800(s0)
	call  print
	lw  t0, -1092(s0)
	lw  t0, 0(t0)
	sw  t0, -8804(s0)
	lw  a0, -8804(s0)
	call  toString
	sw  a0, -8808(s0)
	lw  a0, -8808(s0)
	la  a1, .$str392
	call  string_add
	sw  a0, -8812(s0)
	lw  a0, -8812(s0)
	call  print
	lw  t0, -1100(s0)
	lw  t0, 0(t0)
	sw  t0, -8816(s0)
	lw  a0, -8816(s0)
	call  toString
	sw  a0, -8820(s0)
	lw  a0, -8820(s0)
	la  a1, .$str393
	call  string_add
	sw  a0, -8824(s0)
	lw  a0, -8824(s0)
	call  print
	lw  t0, -1108(s0)
	lw  t0, 0(t0)
	sw  t0, -8828(s0)
	lw  a0, -8828(s0)
	call  toString
	sw  a0, -8832(s0)
	lw  a0, -8832(s0)
	la  a1, .$str394
	call  string_add
	sw  a0, -8836(s0)
	lw  a0, -8836(s0)
	call  print
	lw  t0, -1116(s0)
	lw  t0, 0(t0)
	sw  t0, -8840(s0)
	lw  a0, -8840(s0)
	call  toString
	sw  a0, -8844(s0)
	lw  a0, -8844(s0)
	la  a1, .$str395
	call  string_add
	sw  a0, -8848(s0)
	lw  a0, -8848(s0)
	call  print
	lw  t0, -1124(s0)
	lw  t0, 0(t0)
	sw  t0, -8852(s0)
	lw  a0, -8852(s0)
	call  toString
	sw  a0, -8856(s0)
	lw  a0, -8856(s0)
	la  a1, .$str396
	call  string_add
	sw  a0, -8860(s0)
	lw  a0, -8860(s0)
	call  print
	lw  t0, -1132(s0)
	lw  t0, 0(t0)
	sw  t0, -8864(s0)
	lw  a0, -8864(s0)
	call  toString
	sw  a0, -8868(s0)
	lw  a0, -8868(s0)
	la  a1, .$str397
	call  string_add
	sw  a0, -8872(s0)
	lw  a0, -8872(s0)
	call  print
	lw  t0, -1140(s0)
	lw  t0, 0(t0)
	sw  t0, -8876(s0)
	lw  a0, -8876(s0)
	call  toString
	sw  a0, -8880(s0)
	lw  a0, -8880(s0)
	la  a1, .$str398
	call  string_add
	sw  a0, -8884(s0)
	lw  a0, -8884(s0)
	call  print
	lw  t0, -1148(s0)
	lw  t0, 0(t0)
	sw  t0, -8888(s0)
	lw  a0, -8888(s0)
	call  toString
	sw  a0, -8892(s0)
	lw  a0, -8892(s0)
	la  a1, .$str399
	call  string_add
	sw  a0, -8896(s0)
	lw  a0, -8896(s0)
	call  print
	lw  t0, -1156(s0)
	lw  t0, 0(t0)
	sw  t0, -8900(s0)
	lw  a0, -8900(s0)
	call  toString
	sw  a0, -8904(s0)
	lw  a0, -8904(s0)
	la  a1, .$str400
	call  string_add
	sw  a0, -8908(s0)
	lw  a0, -8908(s0)
	call  print
	lw  t0, -1164(s0)
	lw  t0, 0(t0)
	sw  t0, -8912(s0)
	lw  a0, -8912(s0)
	call  toString
	sw  a0, -8916(s0)
	lw  a0, -8916(s0)
	la  a1, .$str401
	call  string_add
	sw  a0, -8920(s0)
	lw  a0, -8920(s0)
	call  print
	lw  t0, -1172(s0)
	lw  t0, 0(t0)
	sw  t0, -8924(s0)
	lw  a0, -8924(s0)
	call  toString
	sw  a0, -8928(s0)
	lw  a0, -8928(s0)
	la  a1, .$str402
	call  string_add
	sw  a0, -8932(s0)
	lw  a0, -8932(s0)
	call  print
	lw  t0, -1180(s0)
	lw  t0, 0(t0)
	sw  t0, -8936(s0)
	lw  a0, -8936(s0)
	call  toString
	sw  a0, -8940(s0)
	lw  a0, -8940(s0)
	la  a1, .$str403
	call  string_add
	sw  a0, -8944(s0)
	lw  a0, -8944(s0)
	call  print
	lw  t0, -1188(s0)
	lw  t0, 0(t0)
	sw  t0, -8948(s0)
	lw  a0, -8948(s0)
	call  toString
	sw  a0, -8952(s0)
	lw  a0, -8952(s0)
	la  a1, .$str404
	call  string_add
	sw  a0, -8956(s0)
	lw  a0, -8956(s0)
	call  print
	lw  t0, -1196(s0)
	lw  t0, 0(t0)
	sw  t0, -8960(s0)
	lw  a0, -8960(s0)
	call  toString
	sw  a0, -8964(s0)
	lw  a0, -8964(s0)
	la  a1, .$str405
	call  string_add
	sw  a0, -8968(s0)
	lw  a0, -8968(s0)
	call  print
	lw  t0, -1204(s0)
	lw  t0, 0(t0)
	sw  t0, -8972(s0)
	lw  a0, -8972(s0)
	call  toString
	sw  a0, -8976(s0)
	lw  a0, -8976(s0)
	la  a1, .$str406
	call  string_add
	sw  a0, -8980(s0)
	lw  a0, -8980(s0)
	call  print
	lw  t0, -1212(s0)
	lw  t0, 0(t0)
	sw  t0, -8984(s0)
	lw  a0, -8984(s0)
	call  toString
	sw  a0, -8988(s0)
	lw  a0, -8988(s0)
	la  a1, .$str407
	call  string_add
	sw  a0, -8992(s0)
	lw  a0, -8992(s0)
	call  print
	lw  t0, -1220(s0)
	lw  t0, 0(t0)
	sw  t0, -8996(s0)
	lw  a0, -8996(s0)
	call  toString
	sw  a0, -9000(s0)
	lw  a0, -9000(s0)
	la  a1, .$str408
	call  string_add
	sw  a0, -9004(s0)
	lw  a0, -9004(s0)
	call  print
	lw  t0, -1228(s0)
	lw  t0, 0(t0)
	sw  t0, -9008(s0)
	lw  a0, -9008(s0)
	call  toString
	sw  a0, -9012(s0)
	lw  a0, -9012(s0)
	la  a1, .$str409
	call  string_add
	sw  a0, -9016(s0)
	lw  a0, -9016(s0)
	call  print
	lw  t0, -1236(s0)
	lw  t0, 0(t0)
	sw  t0, -9020(s0)
	lw  a0, -9020(s0)
	call  toString
	sw  a0, -9024(s0)
	lw  a0, -9024(s0)
	la  a1, .$str410
	call  string_add
	sw  a0, -9028(s0)
	lw  a0, -9028(s0)
	call  print
	lw  t0, -1244(s0)
	lw  t0, 0(t0)
	sw  t0, -9032(s0)
	lw  a0, -9032(s0)
	call  toString
	sw  a0, -9036(s0)
	lw  a0, -9036(s0)
	la  a1, .$str411
	call  string_add
	sw  a0, -9040(s0)
	lw  a0, -9040(s0)
	call  print
	lw  t0, -1252(s0)
	lw  t0, 0(t0)
	sw  t0, -9044(s0)
	lw  a0, -9044(s0)
	call  toString
	sw  a0, -9048(s0)
	lw  a0, -9048(s0)
	la  a1, .$str412
	call  string_add
	sw  a0, -9052(s0)
	lw  a0, -9052(s0)
	call  print
	lw  t0, -1260(s0)
	lw  t0, 0(t0)
	sw  t0, -9056(s0)
	lw  a0, -9056(s0)
	call  toString
	sw  a0, -9060(s0)
	lw  a0, -9060(s0)
	la  a1, .$str413
	call  string_add
	sw  a0, -9064(s0)
	lw  a0, -9064(s0)
	call  print
	lw  t0, -1268(s0)
	lw  t0, 0(t0)
	sw  t0, -9068(s0)
	lw  a0, -9068(s0)
	call  toString
	sw  a0, -9072(s0)
	lw  a0, -9072(s0)
	la  a1, .$str414
	call  string_add
	sw  a0, -9076(s0)
	lw  a0, -9076(s0)
	call  print
	lw  t0, -1276(s0)
	lw  t0, 0(t0)
	sw  t0, -9080(s0)
	lw  a0, -9080(s0)
	call  toString
	sw  a0, -9084(s0)
	lw  a0, -9084(s0)
	la  a1, .$str415
	call  string_add
	sw  a0, -9088(s0)
	lw  a0, -9088(s0)
	call  print
	lw  t0, -1284(s0)
	lw  t0, 0(t0)
	sw  t0, -9092(s0)
	lw  a0, -9092(s0)
	call  toString
	sw  a0, -9096(s0)
	lw  a0, -9096(s0)
	la  a1, .$str416
	call  string_add
	sw  a0, -9100(s0)
	lw  a0, -9100(s0)
	call  print
	lw  t0, -1292(s0)
	lw  t0, 0(t0)
	sw  t0, -9104(s0)
	lw  a0, -9104(s0)
	call  toString
	sw  a0, -9108(s0)
	lw  a0, -9108(s0)
	la  a1, .$str417
	call  string_add
	sw  a0, -9112(s0)
	lw  a0, -9112(s0)
	call  print
	lw  t0, -1300(s0)
	lw  t0, 0(t0)
	sw  t0, -9116(s0)
	lw  a0, -9116(s0)
	call  toString
	sw  a0, -9120(s0)
	lw  a0, -9120(s0)
	la  a1, .$str418
	call  string_add
	sw  a0, -9124(s0)
	lw  a0, -9124(s0)
	call  print
	lw  t0, -1308(s0)
	lw  t0, 0(t0)
	sw  t0, -9128(s0)
	lw  a0, -9128(s0)
	call  toString
	sw  a0, -9132(s0)
	lw  a0, -9132(s0)
	la  a1, .$str419
	call  string_add
	sw  a0, -9136(s0)
	lw  a0, -9136(s0)
	call  print
	lw  t0, -1316(s0)
	lw  t0, 0(t0)
	sw  t0, -9140(s0)
	lw  a0, -9140(s0)
	call  toString
	sw  a0, -9144(s0)
	lw  a0, -9144(s0)
	la  a1, .$str420
	call  string_add
	sw  a0, -9148(s0)
	lw  a0, -9148(s0)
	call  print
	lw  t0, -1324(s0)
	lw  t0, 0(t0)
	sw  t0, -9152(s0)
	lw  a0, -9152(s0)
	call  toString
	sw  a0, -9156(s0)
	lw  a0, -9156(s0)
	la  a1, .$str421
	call  string_add
	sw  a0, -9160(s0)
	lw  a0, -9160(s0)
	call  print
	lw  t0, -1332(s0)
	lw  t0, 0(t0)
	sw  t0, -9164(s0)
	lw  a0, -9164(s0)
	call  toString
	sw  a0, -9168(s0)
	lw  a0, -9168(s0)
	la  a1, .$str422
	call  string_add
	sw  a0, -9172(s0)
	lw  a0, -9172(s0)
	call  print
	lw  t0, -1340(s0)
	lw  t0, 0(t0)
	sw  t0, -9176(s0)
	lw  a0, -9176(s0)
	call  toString
	sw  a0, -9180(s0)
	lw  a0, -9180(s0)
	la  a1, .$str423
	call  string_add
	sw  a0, -9184(s0)
	lw  a0, -9184(s0)
	call  print
	lw  t0, -1348(s0)
	lw  t0, 0(t0)
	sw  t0, -9188(s0)
	lw  a0, -9188(s0)
	call  toString
	sw  a0, -9192(s0)
	lw  a0, -9192(s0)
	la  a1, .$str424
	call  string_add
	sw  a0, -9196(s0)
	lw  a0, -9196(s0)
	call  print
	lw  t0, -1356(s0)
	lw  t0, 0(t0)
	sw  t0, -9200(s0)
	lw  a0, -9200(s0)
	call  toString
	sw  a0, -9204(s0)
	lw  a0, -9204(s0)
	la  a1, .$str425
	call  string_add
	sw  a0, -9208(s0)
	lw  a0, -9208(s0)
	call  print
	lw  t0, -1364(s0)
	lw  t0, 0(t0)
	sw  t0, -9212(s0)
	lw  a0, -9212(s0)
	call  toString
	sw  a0, -9216(s0)
	lw  a0, -9216(s0)
	la  a1, .$str426
	call  string_add
	sw  a0, -9220(s0)
	lw  a0, -9220(s0)
	call  print
	lw  t0, -1372(s0)
	lw  t0, 0(t0)
	sw  t0, -9224(s0)
	lw  a0, -9224(s0)
	call  toString
	sw  a0, -9228(s0)
	lw  a0, -9228(s0)
	la  a1, .$str427
	call  string_add
	sw  a0, -9232(s0)
	lw  a0, -9232(s0)
	call  print
	lw  t0, -1380(s0)
	lw  t0, 0(t0)
	sw  t0, -9236(s0)
	lw  a0, -9236(s0)
	call  toString
	sw  a0, -9240(s0)
	lw  a0, -9240(s0)
	la  a1, .$str428
	call  string_add
	sw  a0, -9244(s0)
	lw  a0, -9244(s0)
	call  print
	lw  t0, -1388(s0)
	lw  t0, 0(t0)
	sw  t0, -9248(s0)
	lw  a0, -9248(s0)
	call  toString
	sw  a0, -9252(s0)
	lw  a0, -9252(s0)
	la  a1, .$str429
	call  string_add
	sw  a0, -9256(s0)
	lw  a0, -9256(s0)
	call  print
	lw  t0, -1396(s0)
	lw  t0, 0(t0)
	sw  t0, -9260(s0)
	lw  a0, -9260(s0)
	call  toString
	sw  a0, -9264(s0)
	lw  a0, -9264(s0)
	la  a1, .$str430
	call  string_add
	sw  a0, -9268(s0)
	lw  a0, -9268(s0)
	call  print
	lw  t0, -1404(s0)
	lw  t0, 0(t0)
	sw  t0, -9272(s0)
	lw  a0, -9272(s0)
	call  toString
	sw  a0, -9276(s0)
	lw  a0, -9276(s0)
	la  a1, .$str431
	call  string_add
	sw  a0, -9280(s0)
	lw  a0, -9280(s0)
	call  print
	lw  t0, -1412(s0)
	lw  t0, 0(t0)
	sw  t0, -9284(s0)
	lw  a0, -9284(s0)
	call  toString
	sw  a0, -9288(s0)
	lw  a0, -9288(s0)
	la  a1, .$str432
	call  string_add
	sw  a0, -9292(s0)
	lw  a0, -9292(s0)
	call  print
	lw  t0, -1420(s0)
	lw  t0, 0(t0)
	sw  t0, -9296(s0)
	lw  a0, -9296(s0)
	call  toString
	sw  a0, -9300(s0)
	lw  a0, -9300(s0)
	la  a1, .$str433
	call  string_add
	sw  a0, -9304(s0)
	lw  a0, -9304(s0)
	call  print
	lw  t0, -1428(s0)
	lw  t0, 0(t0)
	sw  t0, -9308(s0)
	lw  a0, -9308(s0)
	call  toString
	sw  a0, -9312(s0)
	lw  a0, -9312(s0)
	la  a1, .$str434
	call  string_add
	sw  a0, -9316(s0)
	lw  a0, -9316(s0)
	call  print
	lw  t0, -1436(s0)
	lw  t0, 0(t0)
	sw  t0, -9320(s0)
	lw  a0, -9320(s0)
	call  toString
	sw  a0, -9324(s0)
	lw  a0, -9324(s0)
	la  a1, .$str435
	call  string_add
	sw  a0, -9328(s0)
	lw  a0, -9328(s0)
	call  print
	lw  t0, -1444(s0)
	lw  t0, 0(t0)
	sw  t0, -9332(s0)
	lw  a0, -9332(s0)
	call  toString
	sw  a0, -9336(s0)
	lw  a0, -9336(s0)
	la  a1, .$str436
	call  string_add
	sw  a0, -9340(s0)
	lw  a0, -9340(s0)
	call  print
	lw  t0, -1452(s0)
	lw  t0, 0(t0)
	sw  t0, -9344(s0)
	lw  a0, -9344(s0)
	call  toString
	sw  a0, -9348(s0)
	lw  a0, -9348(s0)
	la  a1, .$str437
	call  string_add
	sw  a0, -9352(s0)
	lw  a0, -9352(s0)
	call  print
	lw  t0, -1460(s0)
	lw  t0, 0(t0)
	sw  t0, -9356(s0)
	lw  a0, -9356(s0)
	call  toString
	sw  a0, -9360(s0)
	lw  a0, -9360(s0)
	la  a1, .$str438
	call  string_add
	sw  a0, -9364(s0)
	lw  a0, -9364(s0)
	call  print
	lw  t0, -1468(s0)
	lw  t0, 0(t0)
	sw  t0, -9368(s0)
	lw  a0, -9368(s0)
	call  toString
	sw  a0, -9372(s0)
	lw  a0, -9372(s0)
	la  a1, .$str439
	call  string_add
	sw  a0, -9376(s0)
	lw  a0, -9376(s0)
	call  print
	lw  t0, -1476(s0)
	lw  t0, 0(t0)
	sw  t0, -9380(s0)
	lw  a0, -9380(s0)
	call  toString
	sw  a0, -9384(s0)
	lw  a0, -9384(s0)
	la  a1, .$str440
	call  string_add
	sw  a0, -9388(s0)
	lw  a0, -9388(s0)
	call  print
	lw  t0, -1484(s0)
	lw  t0, 0(t0)
	sw  t0, -9392(s0)
	lw  a0, -9392(s0)
	call  toString
	sw  a0, -9396(s0)
	lw  a0, -9396(s0)
	la  a1, .$str441
	call  string_add
	sw  a0, -9400(s0)
	lw  a0, -9400(s0)
	call  print
	lw  t0, -1492(s0)
	lw  t0, 0(t0)
	sw  t0, -9404(s0)
	lw  a0, -9404(s0)
	call  toString
	sw  a0, -9408(s0)
	lw  a0, -9408(s0)
	la  a1, .$str442
	call  string_add
	sw  a0, -9412(s0)
	lw  a0, -9412(s0)
	call  print
	lw  t0, -1500(s0)
	lw  t0, 0(t0)
	sw  t0, -9416(s0)
	lw  a0, -9416(s0)
	call  toString
	sw  a0, -9420(s0)
	lw  a0, -9420(s0)
	la  a1, .$str443
	call  string_add
	sw  a0, -9424(s0)
	lw  a0, -9424(s0)
	call  print
	lw  t0, -1508(s0)
	lw  t0, 0(t0)
	sw  t0, -9428(s0)
	lw  a0, -9428(s0)
	call  toString
	sw  a0, -9432(s0)
	lw  a0, -9432(s0)
	la  a1, .$str444
	call  string_add
	sw  a0, -9436(s0)
	lw  a0, -9436(s0)
	call  print
	lw  t0, -1516(s0)
	lw  t0, 0(t0)
	sw  t0, -9440(s0)
	lw  a0, -9440(s0)
	call  toString
	sw  a0, -9444(s0)
	lw  a0, -9444(s0)
	la  a1, .$str445
	call  string_add
	sw  a0, -9448(s0)
	lw  a0, -9448(s0)
	call  print
	lw  t0, -1524(s0)
	lw  t0, 0(t0)
	sw  t0, -9452(s0)
	lw  a0, -9452(s0)
	call  toString
	sw  a0, -9456(s0)
	lw  a0, -9456(s0)
	la  a1, .$str446
	call  string_add
	sw  a0, -9460(s0)
	lw  a0, -9460(s0)
	call  print
	lw  t0, -1532(s0)
	lw  t0, 0(t0)
	sw  t0, -9464(s0)
	lw  a0, -9464(s0)
	call  toString
	sw  a0, -9468(s0)
	lw  a0, -9468(s0)
	la  a1, .$str447
	call  string_add
	sw  a0, -9472(s0)
	lw  a0, -9472(s0)
	call  print
	lw  t0, -1540(s0)
	lw  t0, 0(t0)
	sw  t0, -9476(s0)
	lw  a0, -9476(s0)
	call  toString
	sw  a0, -9480(s0)
	lw  a0, -9480(s0)
	la  a1, .$str448
	call  string_add
	sw  a0, -9484(s0)
	lw  a0, -9484(s0)
	call  print
	lw  t0, -1548(s0)
	lw  t0, 0(t0)
	sw  t0, -9488(s0)
	lw  a0, -9488(s0)
	call  toString
	sw  a0, -9492(s0)
	lw  a0, -9492(s0)
	la  a1, .$str449
	call  string_add
	sw  a0, -9496(s0)
	lw  a0, -9496(s0)
	call  print
	lw  t0, -1556(s0)
	lw  t0, 0(t0)
	sw  t0, -9500(s0)
	lw  a0, -9500(s0)
	call  toString
	sw  a0, -9504(s0)
	lw  a0, -9504(s0)
	la  a1, .$str450
	call  string_add
	sw  a0, -9508(s0)
	lw  a0, -9508(s0)
	call  print
	lw  t0, -1564(s0)
	lw  t0, 0(t0)
	sw  t0, -9512(s0)
	lw  a0, -9512(s0)
	call  toString
	sw  a0, -9516(s0)
	lw  a0, -9516(s0)
	la  a1, .$str451
	call  string_add
	sw  a0, -9520(s0)
	lw  a0, -9520(s0)
	call  print
	lw  t0, -1572(s0)
	lw  t0, 0(t0)
	sw  t0, -9524(s0)
	lw  a0, -9524(s0)
	call  toString
	sw  a0, -9528(s0)
	lw  a0, -9528(s0)
	la  a1, .$str452
	call  string_add
	sw  a0, -9532(s0)
	lw  a0, -9532(s0)
	call  print
	lw  t0, -1580(s0)
	lw  t0, 0(t0)
	sw  t0, -9536(s0)
	lw  a0, -9536(s0)
	call  toString
	sw  a0, -9540(s0)
	lw  a0, -9540(s0)
	la  a1, .$str453
	call  string_add
	sw  a0, -9544(s0)
	lw  a0, -9544(s0)
	call  print
	lw  t0, -1588(s0)
	lw  t0, 0(t0)
	sw  t0, -9548(s0)
	lw  a0, -9548(s0)
	call  toString
	sw  a0, -9552(s0)
	lw  a0, -9552(s0)
	la  a1, .$str454
	call  string_add
	sw  a0, -9556(s0)
	lw  a0, -9556(s0)
	call  print
	lw  t0, -1596(s0)
	lw  t0, 0(t0)
	sw  t0, -9560(s0)
	lw  a0, -9560(s0)
	call  toString
	sw  a0, -9564(s0)
	lw  a0, -9564(s0)
	la  a1, .$str455
	call  string_add
	sw  a0, -9568(s0)
	lw  a0, -9568(s0)
	call  print
	lw  t0, -1604(s0)
	lw  t0, 0(t0)
	sw  t0, -9572(s0)
	lw  a0, -9572(s0)
	call  toString
	sw  a0, -9576(s0)
	lw  a0, -9576(s0)
	la  a1, .$str456
	call  string_add
	sw  a0, -9580(s0)
	lw  a0, -9580(s0)
	call  print
	lw  t0, -1612(s0)
	lw  t0, 0(t0)
	sw  t0, -9584(s0)
	lw  a0, -9584(s0)
	call  toString
	sw  a0, -9588(s0)
	lw  a0, -9588(s0)
	la  a1, .$str457
	call  string_add
	sw  a0, -9592(s0)
	lw  a0, -9592(s0)
	call  print
	lw  t0, -1620(s0)
	lw  t0, 0(t0)
	sw  t0, -9596(s0)
	lw  a0, -9596(s0)
	call  toString
	sw  a0, -9600(s0)
	lw  a0, -9600(s0)
	la  a1, .$str458
	call  string_add
	sw  a0, -9604(s0)
	lw  a0, -9604(s0)
	call  print
	lw  t0, -1628(s0)
	lw  t0, 0(t0)
	sw  t0, -9608(s0)
	lw  a0, -9608(s0)
	call  toString
	sw  a0, -9612(s0)
	lw  a0, -9612(s0)
	la  a1, .$str459
	call  string_add
	sw  a0, -9616(s0)
	lw  a0, -9616(s0)
	call  print
	lw  t0, -1636(s0)
	lw  t0, 0(t0)
	sw  t0, -9620(s0)
	lw  a0, -9620(s0)
	call  toString
	sw  a0, -9624(s0)
	lw  a0, -9624(s0)
	la  a1, .$str460
	call  string_add
	sw  a0, -9628(s0)
	lw  a0, -9628(s0)
	call  print
	lw  t0, -1644(s0)
	lw  t0, 0(t0)
	sw  t0, -9632(s0)
	lw  a0, -9632(s0)
	call  toString
	sw  a0, -9636(s0)
	lw  a0, -9636(s0)
	la  a1, .$str461
	call  string_add
	sw  a0, -9640(s0)
	lw  a0, -9640(s0)
	call  print
	lw  t0, -1652(s0)
	lw  t0, 0(t0)
	sw  t0, -9644(s0)
	lw  a0, -9644(s0)
	call  toString
	sw  a0, -9648(s0)
	lw  a0, -9648(s0)
	la  a1, .$str462
	call  string_add
	sw  a0, -9652(s0)
	lw  a0, -9652(s0)
	call  print
	lw  t0, -1660(s0)
	lw  t0, 0(t0)
	sw  t0, -9656(s0)
	lw  a0, -9656(s0)
	call  toString
	sw  a0, -9660(s0)
	lw  a0, -9660(s0)
	la  a1, .$str463
	call  string_add
	sw  a0, -9664(s0)
	lw  a0, -9664(s0)
	call  print
	lw  t0, -1668(s0)
	lw  t0, 0(t0)
	sw  t0, -9668(s0)
	lw  a0, -9668(s0)
	call  toString
	sw  a0, -9672(s0)
	lw  a0, -9672(s0)
	la  a1, .$str464
	call  string_add
	sw  a0, -9676(s0)
	lw  a0, -9676(s0)
	call  print
	lw  t0, -1676(s0)
	lw  t0, 0(t0)
	sw  t0, -9680(s0)
	lw  a0, -9680(s0)
	call  toString
	sw  a0, -9684(s0)
	lw  a0, -9684(s0)
	la  a1, .$str465
	call  string_add
	sw  a0, -9688(s0)
	lw  a0, -9688(s0)
	call  print
	lw  t0, -1684(s0)
	lw  t0, 0(t0)
	sw  t0, -9692(s0)
	lw  a0, -9692(s0)
	call  toString
	sw  a0, -9696(s0)
	lw  a0, -9696(s0)
	la  a1, .$str466
	call  string_add
	sw  a0, -9700(s0)
	lw  a0, -9700(s0)
	call  print
	lw  t0, -1692(s0)
	lw  t0, 0(t0)
	sw  t0, -9704(s0)
	lw  a0, -9704(s0)
	call  toString
	sw  a0, -9708(s0)
	lw  a0, -9708(s0)
	la  a1, .$str467
	call  string_add
	sw  a0, -9712(s0)
	lw  a0, -9712(s0)
	call  print
	lw  t0, -1700(s0)
	lw  t0, 0(t0)
	sw  t0, -9716(s0)
	lw  a0, -9716(s0)
	call  toString
	sw  a0, -9720(s0)
	lw  a0, -9720(s0)
	la  a1, .$str468
	call  string_add
	sw  a0, -9724(s0)
	lw  a0, -9724(s0)
	call  print
	lw  t0, -1708(s0)
	lw  t0, 0(t0)
	sw  t0, -9728(s0)
	lw  a0, -9728(s0)
	call  toString
	sw  a0, -9732(s0)
	lw  a0, -9732(s0)
	la  a1, .$str469
	call  string_add
	sw  a0, -9736(s0)
	lw  a0, -9736(s0)
	call  print
	lw  t0, -1716(s0)
	lw  t0, 0(t0)
	sw  t0, -9740(s0)
	lw  a0, -9740(s0)
	call  toString
	sw  a0, -9744(s0)
	lw  a0, -9744(s0)
	la  a1, .$str470
	call  string_add
	sw  a0, -9748(s0)
	lw  a0, -9748(s0)
	call  print
	lw  t0, -1724(s0)
	lw  t0, 0(t0)
	sw  t0, -9752(s0)
	lw  a0, -9752(s0)
	call  toString
	sw  a0, -9756(s0)
	lw  a0, -9756(s0)
	la  a1, .$str471
	call  string_add
	sw  a0, -9760(s0)
	lw  a0, -9760(s0)
	call  print
	lw  t0, -1732(s0)
	lw  t0, 0(t0)
	sw  t0, -9764(s0)
	lw  a0, -9764(s0)
	call  toString
	sw  a0, -9768(s0)
	lw  a0, -9768(s0)
	la  a1, .$str472
	call  string_add
	sw  a0, -9772(s0)
	lw  a0, -9772(s0)
	call  print
	lw  t0, -1740(s0)
	lw  t0, 0(t0)
	sw  t0, -9776(s0)
	lw  a0, -9776(s0)
	call  toString
	sw  a0, -9780(s0)
	lw  a0, -9780(s0)
	la  a1, .$str473
	call  string_add
	sw  a0, -9784(s0)
	lw  a0, -9784(s0)
	call  print
	lw  t0, -1748(s0)
	lw  t0, 0(t0)
	sw  t0, -9788(s0)
	lw  a0, -9788(s0)
	call  toString
	sw  a0, -9792(s0)
	lw  a0, -9792(s0)
	la  a1, .$str474
	call  string_add
	sw  a0, -9796(s0)
	lw  a0, -9796(s0)
	call  print
	lw  t0, -1756(s0)
	lw  t0, 0(t0)
	sw  t0, -9800(s0)
	lw  a0, -9800(s0)
	call  toString
	sw  a0, -9804(s0)
	lw  a0, -9804(s0)
	la  a1, .$str475
	call  string_add
	sw  a0, -9808(s0)
	lw  a0, -9808(s0)
	call  print
	lw  t0, -1764(s0)
	lw  t0, 0(t0)
	sw  t0, -9812(s0)
	lw  a0, -9812(s0)
	call  toString
	sw  a0, -9816(s0)
	lw  a0, -9816(s0)
	la  a1, .$str476
	call  string_add
	sw  a0, -9820(s0)
	lw  a0, -9820(s0)
	call  print
	lw  t0, -1772(s0)
	lw  t0, 0(t0)
	sw  t0, -9824(s0)
	lw  a0, -9824(s0)
	call  toString
	sw  a0, -9828(s0)
	lw  a0, -9828(s0)
	la  a1, .$str477
	call  string_add
	sw  a0, -9832(s0)
	lw  a0, -9832(s0)
	call  print
	lw  t0, -1780(s0)
	lw  t0, 0(t0)
	sw  t0, -9836(s0)
	lw  a0, -9836(s0)
	call  toString
	sw  a0, -9840(s0)
	lw  a0, -9840(s0)
	la  a1, .$str478
	call  string_add
	sw  a0, -9844(s0)
	lw  a0, -9844(s0)
	call  print
	lw  t0, -1788(s0)
	lw  t0, 0(t0)
	sw  t0, -9848(s0)
	lw  a0, -9848(s0)
	call  toString
	sw  a0, -9852(s0)
	lw  a0, -9852(s0)
	la  a1, .$str479
	call  string_add
	sw  a0, -9856(s0)
	lw  a0, -9856(s0)
	call  print
	lw  t0, -1796(s0)
	lw  t0, 0(t0)
	sw  t0, -9860(s0)
	lw  a0, -9860(s0)
	call  toString
	sw  a0, -9864(s0)
	lw  a0, -9864(s0)
	la  a1, .$str480
	call  string_add
	sw  a0, -9868(s0)
	lw  a0, -9868(s0)
	call  print
	lw  t0, -1804(s0)
	lw  t0, 0(t0)
	sw  t0, -9872(s0)
	lw  a0, -9872(s0)
	call  toString
	sw  a0, -9876(s0)
	lw  a0, -9876(s0)
	la  a1, .$str481
	call  string_add
	sw  a0, -9880(s0)
	lw  a0, -9880(s0)
	call  print
	lw  t0, -1812(s0)
	lw  t0, 0(t0)
	sw  t0, -9884(s0)
	lw  a0, -9884(s0)
	call  toString
	sw  a0, -9888(s0)
	lw  a0, -9888(s0)
	la  a1, .$str482
	call  string_add
	sw  a0, -9892(s0)
	lw  a0, -9892(s0)
	call  print
	lw  t0, -1820(s0)
	lw  t0, 0(t0)
	sw  t0, -9896(s0)
	lw  a0, -9896(s0)
	call  toString
	sw  a0, -9900(s0)
	lw  a0, -9900(s0)
	la  a1, .$str483
	call  string_add
	sw  a0, -9904(s0)
	lw  a0, -9904(s0)
	call  print
	lw  t0, -1828(s0)
	lw  t0, 0(t0)
	sw  t0, -9908(s0)
	lw  a0, -9908(s0)
	call  toString
	sw  a0, -9912(s0)
	lw  a0, -9912(s0)
	la  a1, .$str484
	call  string_add
	sw  a0, -9916(s0)
	lw  a0, -9916(s0)
	call  print
	lw  t0, -1836(s0)
	lw  t0, 0(t0)
	sw  t0, -9920(s0)
	lw  a0, -9920(s0)
	call  toString
	sw  a0, -9924(s0)
	lw  a0, -9924(s0)
	la  a1, .$str485
	call  string_add
	sw  a0, -9928(s0)
	lw  a0, -9928(s0)
	call  print
	lw  t0, -1844(s0)
	lw  t0, 0(t0)
	sw  t0, -9932(s0)
	lw  a0, -9932(s0)
	call  toString
	sw  a0, -9936(s0)
	lw  a0, -9936(s0)
	la  a1, .$str486
	call  string_add
	sw  a0, -9940(s0)
	lw  a0, -9940(s0)
	call  print
	lw  t0, -1852(s0)
	lw  t0, 0(t0)
	sw  t0, -9944(s0)
	lw  a0, -9944(s0)
	call  toString
	sw  a0, -9948(s0)
	lw  a0, -9948(s0)
	la  a1, .$str487
	call  string_add
	sw  a0, -9952(s0)
	lw  a0, -9952(s0)
	call  print
	lw  t0, -1860(s0)
	lw  t0, 0(t0)
	sw  t0, -9956(s0)
	lw  a0, -9956(s0)
	call  toString
	sw  a0, -9960(s0)
	lw  a0, -9960(s0)
	la  a1, .$str488
	call  string_add
	sw  a0, -9964(s0)
	lw  a0, -9964(s0)
	call  print
	lw  t0, -1868(s0)
	lw  t0, 0(t0)
	sw  t0, -9968(s0)
	lw  a0, -9968(s0)
	call  toString
	sw  a0, -9972(s0)
	lw  a0, -9972(s0)
	la  a1, .$str489
	call  string_add
	sw  a0, -9976(s0)
	lw  a0, -9976(s0)
	call  print
	lw  t0, -1876(s0)
	lw  t0, 0(t0)
	sw  t0, -9980(s0)
	lw  a0, -9980(s0)
	call  toString
	sw  a0, -9984(s0)
	lw  a0, -9984(s0)
	la  a1, .$str490
	call  string_add
	sw  a0, -9988(s0)
	lw  a0, -9988(s0)
	call  print
	lw  t0, -1884(s0)
	lw  t0, 0(t0)
	sw  t0, -9992(s0)
	lw  a0, -9992(s0)
	call  toString
	sw  a0, -9996(s0)
	lw  a0, -9996(s0)
	la  a1, .$str491
	call  string_add
	sw  a0, -10000(s0)
	lw  a0, -10000(s0)
	call  print
	lw  t0, -1892(s0)
	lw  t0, 0(t0)
	sw  t0, -10004(s0)
	lw  a0, -10004(s0)
	call  toString
	sw  a0, -10008(s0)
	lw  a0, -10008(s0)
	la  a1, .$str492
	call  string_add
	sw  a0, -10012(s0)
	lw  a0, -10012(s0)
	call  print
	lw  t0, -1900(s0)
	lw  t0, 0(t0)
	sw  t0, -10016(s0)
	lw  a0, -10016(s0)
	call  toString
	sw  a0, -10020(s0)
	lw  a0, -10020(s0)
	la  a1, .$str493
	call  string_add
	sw  a0, -10024(s0)
	lw  a0, -10024(s0)
	call  print
	lw  t0, -1908(s0)
	lw  t0, 0(t0)
	sw  t0, -10028(s0)
	lw  a0, -10028(s0)
	call  toString
	sw  a0, -10032(s0)
	lw  a0, -10032(s0)
	la  a1, .$str494
	call  string_add
	sw  a0, -10036(s0)
	lw  a0, -10036(s0)
	call  print
	lw  t0, -1916(s0)
	lw  t0, 0(t0)
	sw  t0, -10040(s0)
	lw  a0, -10040(s0)
	call  toString
	sw  a0, -10044(s0)
	lw  a0, -10044(s0)
	la  a1, .$str495
	call  string_add
	sw  a0, -10048(s0)
	lw  a0, -10048(s0)
	call  print
	lw  t0, -1924(s0)
	lw  t0, 0(t0)
	sw  t0, -10052(s0)
	lw  a0, -10052(s0)
	call  toString
	sw  a0, -10056(s0)
	lw  a0, -10056(s0)
	la  a1, .$str496
	call  string_add
	sw  a0, -10060(s0)
	lw  a0, -10060(s0)
	call  print
	lw  t0, -1932(s0)
	lw  t0, 0(t0)
	sw  t0, -10064(s0)
	lw  a0, -10064(s0)
	call  toString
	sw  a0, -10068(s0)
	lw  a0, -10068(s0)
	la  a1, .$str497
	call  string_add
	sw  a0, -10072(s0)
	lw  a0, -10072(s0)
	call  print
	lw  t0, -1940(s0)
	lw  t0, 0(t0)
	sw  t0, -10076(s0)
	lw  a0, -10076(s0)
	call  toString
	sw  a0, -10080(s0)
	lw  a0, -10080(s0)
	la  a1, .$str498
	call  string_add
	sw  a0, -10084(s0)
	lw  a0, -10084(s0)
	call  print
	lw  t0, -1948(s0)
	lw  t0, 0(t0)
	sw  t0, -10088(s0)
	lw  a0, -10088(s0)
	call  toString
	sw  a0, -10092(s0)
	lw  a0, -10092(s0)
	la  a1, .$str499
	call  string_add
	sw  a0, -10096(s0)
	lw  a0, -10096(s0)
	call  print
	lw  t0, -1956(s0)
	lw  t0, 0(t0)
	sw  t0, -10100(s0)
	lw  a0, -10100(s0)
	call  toString
	sw  a0, -10104(s0)
	lw  a0, -10104(s0)
	la  a1, .$str500
	call  string_add
	sw  a0, -10108(s0)
	lw  a0, -10108(s0)
	call  print
	lw  t0, -1964(s0)
	lw  t0, 0(t0)
	sw  t0, -10112(s0)
	lw  a0, -10112(s0)
	call  toString
	sw  a0, -10116(s0)
	lw  a0, -10116(s0)
	la  a1, .$str501
	call  string_add
	sw  a0, -10120(s0)
	lw  a0, -10120(s0)
	call  print
	lw  t0, -1972(s0)
	lw  t0, 0(t0)
	sw  t0, -10124(s0)
	lw  a0, -10124(s0)
	call  toString
	sw  a0, -10128(s0)
	lw  a0, -10128(s0)
	la  a1, .$str502
	call  string_add
	sw  a0, -10132(s0)
	lw  a0, -10132(s0)
	call  print
	lw  t0, -1980(s0)
	lw  t0, 0(t0)
	sw  t0, -10136(s0)
	lw  a0, -10136(s0)
	call  toString
	sw  a0, -10140(s0)
	lw  a0, -10140(s0)
	la  a1, .$str503
	call  string_add
	sw  a0, -10144(s0)
	lw  a0, -10144(s0)
	call  print
	lw  t0, -1988(s0)
	lw  t0, 0(t0)
	sw  t0, -10148(s0)
	lw  a0, -10148(s0)
	call  toString
	sw  a0, -10152(s0)
	lw  a0, -10152(s0)
	la  a1, .$str504
	call  string_add
	sw  a0, -10156(s0)
	lw  a0, -10156(s0)
	call  print
	lw  t0, -1996(s0)
	lw  t0, 0(t0)
	sw  t0, -10160(s0)
	lw  a0, -10160(s0)
	call  toString
	sw  a0, -10164(s0)
	lw  a0, -10164(s0)
	la  a1, .$str505
	call  string_add
	sw  a0, -10168(s0)
	lw  a0, -10168(s0)
	call  print
	lw  t0, -2004(s0)
	lw  t0, 0(t0)
	sw  t0, -10172(s0)
	lw  a0, -10172(s0)
	call  toString
	sw  a0, -10176(s0)
	lw  a0, -10176(s0)
	la  a1, .$str506
	call  string_add
	sw  a0, -10180(s0)
	lw  a0, -10180(s0)
	call  print
	lw  t0, -2012(s0)
	lw  t0, 0(t0)
	sw  t0, -10184(s0)
	lw  a0, -10184(s0)
	call  toString
	sw  a0, -10188(s0)
	lw  a0, -10188(s0)
	la  a1, .$str507
	call  string_add
	sw  a0, -10192(s0)
	lw  a0, -10192(s0)
	call  print
	lw  t0, -2020(s0)
	lw  t0, 0(t0)
	sw  t0, -10196(s0)
	lw  a0, -10196(s0)
	call  toString
	sw  a0, -10200(s0)
	lw  a0, -10200(s0)
	la  a1, .$str508
	call  string_add
	sw  a0, -10204(s0)
	lw  a0, -10204(s0)
	call  print
	lw  t0, -2028(s0)
	lw  t0, 0(t0)
	sw  t0, -10208(s0)
	lw  a0, -10208(s0)
	call  toString
	sw  a0, -10212(s0)
	lw  a0, -10212(s0)
	la  a1, .$str509
	call  string_add
	sw  a0, -10216(s0)
	lw  a0, -10216(s0)
	call  print
	lw  t0, -2036(s0)
	lw  t0, 0(t0)
	sw  t0, -10220(s0)
	lw  a0, -10220(s0)
	call  toString
	sw  a0, -10224(s0)
	lw  a0, -10224(s0)
	la  a1, .$str510
	call  string_add
	sw  a0, -10228(s0)
	lw  a0, -10228(s0)
	call  print
	lw  t0, -2044(s0)
	lw  t0, 0(t0)
	sw  t0, -10232(s0)
	lw  a0, -10232(s0)
	call  toString
	sw  a0, -10236(s0)
	lw  a0, -10236(s0)
	la  a1, .$str511
	call  string_add
	sw  a0, -10240(s0)
	lw  a0, -10240(s0)
	call  print
	lw  t0, -2052(s0)
	lw  t0, 0(t0)
	sw  t0, -10244(s0)
	lw  a0, -10244(s0)
	call  toString
	sw  a0, -10248(s0)
	lw  a0, -10248(s0)
	la  a1, .$str512
	call  string_add
	sw  a0, -10252(s0)
	lw  a0, -10252(s0)
	call  print
	lw  t0, -2060(s0)
	lw  t0, 0(t0)
	sw  t0, -10256(s0)
	lw  a0, -10256(s0)
	call  toString
	sw  a0, -10260(s0)
	lw  a0, -10260(s0)
	la  a1, .$str513
	call  string_add
	sw  a0, -10264(s0)
	lw  a0, -10264(s0)
	call  print
	la  a0, .$str514
	call  println
	addi  t0, zero, 0
	sw  t0, -12(s0)
	j  .mainexit
.mainexit:
	lw  a0, -12(s0)
	lw  s0, 10256(sp)
	lw  ra, 10260(sp)
	addi  sp, sp, 10264
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

