	.text
	.file	"llvm-link"
	.section	.text.__errno_location,"ax",@progbits
	.hidden	__errno_location
	.globl	__errno_location
	.type	__errno_location,@function
__errno_location:
	.result 	i32
	i32.const	$push0=, __errno
	.endfunc
.Lfunc_end0:
	.size	__errno_location, .Lfunc_end0-__errno_location

	.section	.text.abort,"ax",@progbits
	.hidden	abort
	.globl	abort
	.type	abort,@function
abort:
	i32.call	$push0=, __errno_location@FUNCTION
	i32.load	$push1=, 0($pop0)
	call    	_abort@FUNCTION, $pop1
	.endfunc
.Lfunc_end1:
	.size	abort, .Lfunc_end1-abort

	.section	.text.malloc,"ax",@progbits
	.hidden	malloc
	.globl	malloc
	.type	malloc,@function
malloc:
	.param  	i32
	.result 	i32
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
	i32.const	$push887=, 0
	i32.const	$push885=, 0
	i32.load	$push884=, __stack_pointer($pop885)
	i32.const	$push886=, 16
	i32.sub 	$push894=, $pop884, $pop886
	tee_local	$push893=, $13=, $pop894
	i32.store	__stack_pointer($pop887), $pop893
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	i32.const	$push5=, 244
	i32.gt_u	$push6=, $0, $pop5
	br_if   	0, $pop6
	i32.const	$push906=, 0
	i32.load	$push905=, _gm_($pop906)
	tee_local	$push904=, $7=, $pop905
	i32.const	$push225=, 16
	i32.const	$push220=, 11
	i32.add 	$push222=, $0, $pop220
	i32.const	$push223=, -8
	i32.and 	$push224=, $pop222, $pop223
	i32.const	$push903=, 11
	i32.lt_u	$push221=, $0, $pop903
	i32.select	$push902=, $pop225, $pop224, $pop221
	tee_local	$push901=, $6=, $pop902
	i32.const	$push900=, 3
	i32.shr_u	$push899=, $pop901, $pop900
	tee_local	$push898=, $10=, $pop899
	i32.shr_u	$push897=, $pop904, $pop898
	tee_local	$push896=, $0=, $pop897
	i32.const	$push895=, 3
	i32.and 	$push226=, $pop896, $pop895
	i32.eqz 	$push1755=, $pop226
	br_if   	1, $pop1755
	i32.const	$push227=, -1
	i32.xor 	$push228=, $0, $pop227
	i32.const	$push229=, 1
	i32.and 	$push230=, $pop228, $pop229
	i32.add 	$push917=, $pop230, $10
	tee_local	$push916=, $11=, $pop917
	i32.const	$push915=, 3
	i32.shl 	$push914=, $pop916, $pop915
	tee_local	$push913=, $6=, $pop914
	i32.const	$push232=, _gm_+48
	i32.add 	$push233=, $pop913, $pop232
	i32.load	$push912=, 0($pop233)
	tee_local	$push911=, $10=, $pop912
	i32.load	$push910=, 8($pop911)
	tee_local	$push909=, $0=, $pop910
	i32.const	$push231=, _gm_+40
	i32.add 	$push908=, $6, $pop231
	tee_local	$push907=, $6=, $pop908
	i32.eq  	$push234=, $pop909, $pop907
	br_if   	2, $pop234
	i32.const	$push236=, 0
	i32.load	$push237=, _gm_+16($pop236)
	i32.gt_u	$push238=, $pop237, $0
	br_if   	39, $pop238
	i32.load	$push239=, 12($0)
	i32.ne  	$push240=, $pop239, $10
	br_if   	39, $pop240
	i32.const	$push241=, 8
	i32.add 	$push242=, $6, $pop241
	i32.store	0($pop242), $0
	i32.const	$push243=, 12
	i32.add 	$push244=, $0, $pop243
	i32.store	0($pop244), $6
	br      	3
.LBB2_6:
	end_block
	i32.const	$6=, -1
	i32.const	$push7=, -65
	i32.gt_u	$push8=, $0, $pop7
	br_if   	15, $pop8
	i32.const	$push9=, 11
	i32.add 	$push922=, $0, $pop9
	tee_local	$push921=, $0=, $pop922
	i32.const	$push10=, -8
	i32.and 	$6=, $pop921, $pop10
	i32.const	$push920=, 0
	i32.load	$push919=, _gm_+4($pop920)
	tee_local	$push918=, $3=, $pop919
	i32.eqz 	$push1756=, $pop918
	br_if   	15, $pop1756
	i32.const	$8=, 0
	block   	
	i32.const	$push11=, 8
	i32.shr_u	$push924=, $0, $pop11
	tee_local	$push923=, $0=, $pop924
	i32.eqz 	$push1757=, $pop923
	br_if   	0, $pop1757
	i32.const	$8=, 31
	i32.const	$push12=, 16777215
	i32.gt_u	$push13=, $6, $pop12
	br_if   	0, $pop13
	i32.const	$push32=, 14
	i32.const	$push14=, 1048320
	i32.add 	$push15=, $0, $pop14
	i32.const	$push16=, 16
	i32.shr_u	$push17=, $pop15, $pop16
	i32.const	$push18=, 8
	i32.and 	$push939=, $pop17, $pop18
	tee_local	$push938=, $10=, $pop939
	i32.shl 	$push937=, $0, $pop938
	tee_local	$push936=, $0=, $pop937
	i32.const	$push19=, 520192
	i32.add 	$push20=, $pop936, $pop19
	i32.const	$push935=, 16
	i32.shr_u	$push21=, $pop20, $pop935
	i32.const	$push22=, 4
	i32.and 	$push934=, $pop21, $pop22
	tee_local	$push933=, $11=, $pop934
	i32.or  	$push30=, $pop933, $10
	i32.shl 	$push932=, $0, $11
	tee_local	$push931=, $0=, $pop932
	i32.const	$push23=, 245760
	i32.add 	$push24=, $pop931, $pop23
	i32.const	$push930=, 16
	i32.shr_u	$push25=, $pop24, $pop930
	i32.const	$push26=, 2
	i32.and 	$push929=, $pop25, $pop26
	tee_local	$push928=, $10=, $pop929
	i32.or  	$push31=, $pop30, $pop928
	i32.sub 	$push33=, $pop32, $pop31
	i32.shl 	$push27=, $0, $10
	i32.const	$push28=, 15
	i32.shr_u	$push29=, $pop27, $pop28
	i32.add 	$push927=, $pop33, $pop29
	tee_local	$push926=, $0=, $pop927
	i32.const	$push36=, 7
	i32.add 	$push37=, $pop926, $pop36
	i32.shr_u	$push38=, $6, $pop37
	i32.const	$push34=, 1
	i32.and 	$push39=, $pop38, $pop34
	i32.const	$push925=, 1
	i32.shl 	$push35=, $0, $pop925
	i32.or  	$8=, $pop39, $pop35
.LBB2_11:
	end_block
	i32.const	$push942=, 0
	i32.sub 	$11=, $pop942, $6
	i32.const	$push40=, 2
	i32.shl 	$push41=, $8, $pop40
	i32.const	$push42=, _gm_+304
	i32.add 	$push43=, $pop41, $pop42
	i32.load	$push941=, 0($pop43)
	tee_local	$push940=, $10=, $pop941
	i32.eqz 	$push1758=, $pop940
	br_if   	3, $pop1758
	i32.const	$push943=, 0
	i32.const	$push48=, 25
	i32.const	$push46=, 1
	i32.shr_u	$push47=, $8, $pop46
	i32.sub 	$push49=, $pop48, $pop47
	i32.const	$push44=, 31
	i32.eq  	$push45=, $8, $pop44
	i32.select	$push50=, $pop943, $pop49, $pop45
	i32.shl 	$9=, $6, $pop50
	i32.const	$0=, 0
	i32.const	$12=, 0
.LBB2_13:
	loop    	
	block   	
	i32.load	$push51=, 4($10)
	i32.const	$push946=, -8
	i32.and 	$push52=, $pop51, $pop946
	i32.sub 	$push945=, $pop52, $6
	tee_local	$push944=, $7=, $pop945
	i32.ge_u	$push53=, $pop944, $11
	br_if   	0, $pop53
	copy_local	$11=, $7
	copy_local	$12=, $10
	i32.eqz 	$push1759=, $7
	br_if   	8, $pop1759
.LBB2_15:
	end_block
	i32.const	$push955=, 20
	i32.add 	$push54=, $10, $pop955
	i32.load	$push954=, 0($pop54)
	tee_local	$push953=, $7=, $pop954
	i32.const	$push952=, 29
	i32.shr_u	$push55=, $9, $pop952
	i32.const	$push951=, 4
	i32.and 	$push56=, $pop55, $pop951
	i32.add 	$push57=, $10, $pop56
	i32.const	$push950=, 16
	i32.add 	$push58=, $pop57, $pop950
	i32.load	$push949=, 0($pop58)
	tee_local	$push948=, $10=, $pop949
	i32.eq  	$push59=, $7, $pop948
	i32.select	$push60=, $0, $pop953, $pop59
	i32.select	$0=, $pop60, $0, $7
	i32.const	$push947=, 0
	i32.ne  	$push61=, $10, $pop947
	i32.shl 	$9=, $9, $pop61
	br_if   	0, $10
	end_loop
	i32.or  	$push63=, $0, $12
	i32.eqz 	$push1760=, $pop63
	br_if   	4, $pop1760
	br      	12
.LBB2_17:
	end_block
	i32.const	$push958=, 0
	i32.load	$push957=, _gm_+8($pop958)
	tee_local	$push956=, $3=, $pop957
	i32.le_u	$push254=, $6, $pop956
	br_if   	14, $pop254
	i32.eqz 	$push1761=, $0
	br_if   	4, $pop1761
	i32.shl 	$push258=, $0, $10
	i32.const	$push255=, 2
	i32.shl 	$push999=, $pop255, $10
	tee_local	$push998=, $0=, $pop999
	i32.const	$push997=, 0
	i32.sub 	$push256=, $pop997, $0
	i32.or  	$push257=, $pop998, $pop256
	i32.and 	$push996=, $pop258, $pop257
	tee_local	$push995=, $0=, $pop996
	i32.const	$push994=, 0
	i32.sub 	$push259=, $pop994, $0
	i32.and 	$push260=, $pop995, $pop259
	i32.const	$push261=, -1
	i32.add 	$push993=, $pop260, $pop261
	tee_local	$push992=, $0=, $pop993
	i32.const	$push262=, 12
	i32.shr_u	$push263=, $0, $pop262
	i32.const	$push264=, 16
	i32.and 	$push991=, $pop263, $pop264
	tee_local	$push990=, $0=, $pop991
	i32.shr_u	$push989=, $pop992, $pop990
	tee_local	$push988=, $10=, $pop989
	i32.const	$push265=, 5
	i32.shr_u	$push266=, $pop988, $pop265
	i32.const	$push987=, 8
	i32.and 	$push986=, $pop266, $pop987
	tee_local	$push985=, $11=, $pop986
	i32.or  	$push273=, $pop985, $0
	i32.shr_u	$push984=, $10, $11
	tee_local	$push983=, $0=, $pop984
	i32.const	$push982=, 2
	i32.shr_u	$push267=, $pop983, $pop982
	i32.const	$push268=, 4
	i32.and 	$push981=, $pop267, $pop268
	tee_local	$push980=, $10=, $pop981
	i32.or  	$push274=, $pop273, $pop980
	i32.shr_u	$push979=, $0, $10
	tee_local	$push978=, $0=, $pop979
	i32.const	$push269=, 1
	i32.shr_u	$push270=, $pop978, $pop269
	i32.const	$push977=, 2
	i32.and 	$push976=, $pop270, $pop977
	tee_local	$push975=, $10=, $pop976
	i32.or  	$push275=, $pop274, $pop975
	i32.shr_u	$push974=, $0, $10
	tee_local	$push973=, $0=, $pop974
	i32.const	$push972=, 1
	i32.shr_u	$push271=, $pop973, $pop972
	i32.const	$push971=, 1
	i32.and 	$push970=, $pop271, $pop971
	tee_local	$push969=, $10=, $pop970
	i32.or  	$push276=, $pop275, $pop969
	i32.shr_u	$push272=, $0, $10
	i32.add 	$push968=, $pop276, $pop272
	tee_local	$push967=, $11=, $pop968
	i32.const	$push277=, 3
	i32.shl 	$push966=, $pop967, $pop277
	tee_local	$push965=, $12=, $pop966
	i32.const	$push279=, _gm_+48
	i32.add 	$push280=, $pop965, $pop279
	i32.load	$push964=, 0($pop280)
	tee_local	$push963=, $0=, $pop964
	i32.load	$push962=, 8($pop963)
	tee_local	$push961=, $10=, $pop962
	i32.const	$push278=, _gm_+40
	i32.add 	$push960=, $12, $pop278
	tee_local	$push959=, $12=, $pop960
	i32.eq  	$push281=, $pop961, $pop959
	br_if   	6, $pop281
	i32.const	$push1000=, 0
	i32.load	$push282=, _gm_+16($pop1000)
	i32.gt_u	$push283=, $pop282, $10
	br_if   	37, $pop283
	i32.load	$push284=, 12($10)
	i32.ne  	$push285=, $pop284, $0
	br_if   	37, $pop285
	i32.const	$push286=, 8
	i32.add 	$push287=, $12, $pop286
	i32.store	0($pop287), $10
	i32.const	$push288=, 12
	i32.add 	$push289=, $10, $pop288
	i32.store	0($pop289), $12
	br      	7
.LBB2_23:
	end_block
	i32.const	$push248=, 0
	i32.const	$push245=, -2
	i32.rotl	$push246=, $pop245, $11
	i32.and 	$push247=, $7, $pop246
	i32.store	_gm_($pop248), $pop247
.LBB2_24:
	end_block
	i32.const	$push235=, 8
	i32.add 	$0=, $10, $pop235
	i32.const	$push249=, 3
	i32.shl 	$push1005=, $11, $pop249
	tee_local	$push1004=, $11=, $pop1005
	i32.const	$push1003=, 3
	i32.or  	$push250=, $pop1004, $pop1003
	i32.store	4($10), $pop250
	i32.add 	$push1002=, $10, $11
	tee_local	$push1001=, $10=, $pop1002
	i32.load	$push251=, 4($10)
	i32.const	$push252=, 1
	i32.or  	$push253=, $pop251, $pop252
	i32.store	4($pop1001), $pop253
	br      	34
.LBB2_25:
	end_block
	i32.const	$0=, 0
	i32.const	$12=, 0
	i32.const	$push1007=, 0
	i32.const	$push1006=, 0
	i32.or  	$push62=, $pop1007, $pop1006
	br_if   	8, $pop62
.LBB2_26:
	end_block
	i32.const	$12=, 0
	i32.const	$push1013=, 2
	i32.shl 	$push1012=, $pop1013, $8
	tee_local	$push1011=, $0=, $pop1012
	i32.const	$push1010=, 0
	i32.sub 	$push64=, $pop1010, $0
	i32.or  	$push65=, $pop1011, $pop64
	i32.and 	$push1009=, $3, $pop65
	tee_local	$push1008=, $0=, $pop1009
	i32.eqz 	$push1762=, $pop1008
	br_if   	10, $pop1762
	i32.const	$push1041=, 0
	i32.sub 	$push66=, $pop1041, $0
	i32.and 	$push67=, $0, $pop66
	i32.const	$push68=, -1
	i32.add 	$push1040=, $pop67, $pop68
	tee_local	$push1039=, $0=, $pop1040
	i32.const	$push69=, 12
	i32.shr_u	$push70=, $0, $pop69
	i32.const	$push71=, 16
	i32.and 	$push1038=, $pop70, $pop71
	tee_local	$push1037=, $0=, $pop1038
	i32.shr_u	$push1036=, $pop1039, $pop1037
	tee_local	$push1035=, $10=, $pop1036
	i32.const	$push72=, 5
	i32.shr_u	$push73=, $pop1035, $pop72
	i32.const	$push74=, 8
	i32.and 	$push1034=, $pop73, $pop74
	tee_local	$push1033=, $9=, $pop1034
	i32.or  	$push81=, $pop1033, $0
	i32.shr_u	$push1032=, $10, $9
	tee_local	$push1031=, $0=, $pop1032
	i32.const	$push1030=, 2
	i32.shr_u	$push75=, $pop1031, $pop1030
	i32.const	$push76=, 4
	i32.and 	$push1029=, $pop75, $pop76
	tee_local	$push1028=, $10=, $pop1029
	i32.or  	$push82=, $pop81, $pop1028
	i32.shr_u	$push1027=, $0, $10
	tee_local	$push1026=, $0=, $pop1027
	i32.const	$push77=, 1
	i32.shr_u	$push78=, $pop1026, $pop77
	i32.const	$push1025=, 2
	i32.and 	$push1024=, $pop78, $pop1025
	tee_local	$push1023=, $10=, $pop1024
	i32.or  	$push83=, $pop82, $pop1023
	i32.shr_u	$push1022=, $0, $10
	tee_local	$push1021=, $0=, $pop1022
	i32.const	$push1020=, 1
	i32.shr_u	$push79=, $pop1021, $pop1020
	i32.const	$push1019=, 1
	i32.and 	$push1018=, $pop79, $pop1019
	tee_local	$push1017=, $10=, $pop1018
	i32.or  	$push84=, $pop83, $pop1017
	i32.shr_u	$push80=, $0, $10
	i32.add 	$push85=, $pop84, $pop80
	i32.const	$push1016=, 2
	i32.shl 	$push86=, $pop85, $pop1016
	i32.const	$push87=, _gm_+304
	i32.add 	$push88=, $pop86, $pop87
	i32.load	$push1015=, 0($pop88)
	tee_local	$push1014=, $0=, $pop1015
	br_if   	8, $pop1014
	br      	9
.LBB2_28:
	end_block
	i32.const	$push1044=, 0
	i32.load	$push1043=, _gm_+4($pop1044)
	tee_local	$push1042=, $5=, $pop1043
	i32.eqz 	$push1763=, $pop1042
	br_if   	9, $pop1763
	i32.const	$push1078=, 0
	i32.sub 	$push304=, $pop1078, $5
	i32.and 	$push305=, $5, $pop304
	i32.const	$push306=, -1
	i32.add 	$push1077=, $pop305, $pop306
	tee_local	$push1076=, $0=, $pop1077
	i32.const	$push307=, 12
	i32.shr_u	$push308=, $0, $pop307
	i32.const	$push1075=, 16
	i32.and 	$push1074=, $pop308, $pop1075
	tee_local	$push1073=, $0=, $pop1074
	i32.shr_u	$push1072=, $pop1076, $pop1073
	tee_local	$push1071=, $10=, $pop1072
	i32.const	$push309=, 5
	i32.shr_u	$push310=, $pop1071, $pop309
	i32.const	$push311=, 8
	i32.and 	$push1070=, $pop310, $pop311
	tee_local	$push1069=, $11=, $pop1070
	i32.or  	$push318=, $pop1069, $0
	i32.shr_u	$push1068=, $10, $11
	tee_local	$push1067=, $0=, $pop1068
	i32.const	$push1066=, 2
	i32.shr_u	$push312=, $pop1067, $pop1066
	i32.const	$push313=, 4
	i32.and 	$push1065=, $pop312, $pop313
	tee_local	$push1064=, $10=, $pop1065
	i32.or  	$push319=, $pop318, $pop1064
	i32.shr_u	$push1063=, $0, $10
	tee_local	$push1062=, $0=, $pop1063
	i32.const	$push314=, 1
	i32.shr_u	$push315=, $pop1062, $pop314
	i32.const	$push1061=, 2
	i32.and 	$push1060=, $pop315, $pop1061
	tee_local	$push1059=, $10=, $pop1060
	i32.or  	$push320=, $pop319, $pop1059
	i32.shr_u	$push1058=, $0, $10
	tee_local	$push1057=, $0=, $pop1058
	i32.const	$push1056=, 1
	i32.shr_u	$push316=, $pop1057, $pop1056
	i32.const	$push1055=, 1
	i32.and 	$push1054=, $pop316, $pop1055
	tee_local	$push1053=, $10=, $pop1054
	i32.or  	$push321=, $pop320, $pop1053
	i32.shr_u	$push317=, $0, $10
	i32.add 	$push322=, $pop321, $pop317
	i32.const	$push1052=, 2
	i32.shl 	$push323=, $pop322, $pop1052
	i32.const	$push324=, _gm_+304
	i32.add 	$push325=, $pop323, $pop324
	i32.load	$push1051=, 0($pop325)
	tee_local	$push1050=, $11=, $pop1051
	i32.load	$push331=, 4($pop1050)
	i32.const	$push1049=, -8
	i32.and 	$push332=, $pop331, $pop1049
	i32.sub 	$10=, $pop332, $6
	block   	
	i32.const	$push1048=, 16
	i32.add 	$push326=, $11, $pop1048
	i32.load	$push327=, 16($11)
	i32.eqz 	$push328=, $pop327
	i32.const	$push1047=, 2
	i32.shl 	$push329=, $pop328, $pop1047
	i32.add 	$push330=, $pop326, $pop329
	i32.load	$push1046=, 0($pop330)
	tee_local	$push1045=, $0=, $pop1046
	i32.eqz 	$push1764=, $pop1045
	br_if   	0, $pop1764
.LBB2_30:
	loop    	
	i32.load	$push333=, 4($0)
	i32.const	$push1087=, -8
	i32.and 	$push334=, $pop333, $pop1087
	i32.sub 	$push1086=, $pop334, $6
	tee_local	$push1085=, $12=, $pop1086
	i32.lt_u	$push1084=, $12, $10
	tee_local	$push1083=, $12=, $pop1084
	i32.select	$10=, $pop1085, $10, $pop1083
	i32.select	$11=, $0, $11, $12
	i32.const	$push1082=, 16
	i32.add 	$push335=, $0, $pop1082
	i32.load	$push336=, 16($0)
	i32.eqz 	$push337=, $pop336
	i32.const	$push1081=, 2
	i32.shl 	$push338=, $pop337, $pop1081
	i32.add 	$push339=, $pop335, $pop338
	i32.load	$push1080=, 0($pop339)
	tee_local	$push1079=, $12=, $pop1080
	copy_local	$0=, $pop1079
	br_if   	0, $12
.LBB2_31:
	end_loop
	end_block
	i32.const	$push340=, 0
	i32.load	$push1089=, _gm_+16($pop340)
	tee_local	$push1088=, $1=, $pop1089
	i32.gt_u	$push341=, $pop1088, $11
	br_if   	32, $pop341
	i32.add 	$push1091=, $11, $6
	tee_local	$push1090=, $2=, $pop1091
	i32.le_u	$push342=, $pop1090, $11
	br_if   	32, $pop342
	i32.load	$4=, 24($11)
	i32.load	$push1093=, 12($11)
	tee_local	$push1092=, $9=, $pop1093
	i32.eq  	$push343=, $pop1092, $11
	br_if   	3, $pop343
	i32.load	$push1095=, 8($11)
	tee_local	$push1094=, $0=, $pop1095
	i32.gt_u	$push344=, $1, $pop1094
	br_if   	32, $pop344
	i32.load	$push345=, 12($0)
	i32.ne  	$push346=, $pop345, $11
	br_if   	32, $pop346
	i32.load	$push347=, 8($9)
	i32.ne  	$push348=, $pop347, $11
	br_if   	32, $pop348
	i32.const	$push349=, 8
	i32.add 	$push350=, $9, $pop349
	i32.store	0($pop350), $0
	i32.const	$push351=, 12
	i32.add 	$push352=, $0, $pop351
	i32.store	0($pop352), $9
	br_if   	4, $4
	br      	5
.LBB2_38:
	end_block
	i32.const	$11=, 0
	copy_local	$12=, $10
	copy_local	$0=, $10
	br      	6
.LBB2_39:
	end_block
	i32.const	$push1194=, 0
	i32.const	$push290=, -2
	i32.rotl	$push291=, $pop290, $11
	i32.and 	$push1193=, $7, $pop291
	tee_local	$push1192=, $7=, $pop1193
	i32.store	_gm_($pop1194), $pop1192
.LBB2_40:
	end_block
	i32.const	$push1203=, 3
	i32.or  	$push292=, $6, $pop1203
	i32.store	4($0), $pop292
	i32.add 	$push1202=, $0, $6
	tee_local	$push1201=, $12=, $pop1202
	i32.const	$push1200=, 3
	i32.shl 	$push1199=, $11, $pop1200
	tee_local	$push1198=, $10=, $pop1199
	i32.sub 	$push1197=, $pop1198, $6
	tee_local	$push1196=, $11=, $pop1197
	i32.const	$push1195=, 1
	i32.or  	$push293=, $pop1196, $pop1195
	i32.store	4($pop1201), $pop293
	i32.add 	$push294=, $0, $10
	i32.store	0($pop294), $11
	block   	
	i32.eqz 	$push1765=, $3
	br_if   	0, $pop1765
	i32.const	$push1211=, 3
	i32.shr_u	$push1210=, $3, $pop1211
	tee_local	$push1209=, $9=, $pop1210
	i32.const	$push1208=, 3
	i32.shl 	$push295=, $pop1209, $pop1208
	i32.const	$push296=, _gm_+40
	i32.add 	$6=, $pop295, $pop296
	i32.const	$push1207=, 0
	i32.load	$10=, _gm_+20($pop1207)
	block   	
	block   	
	i32.const	$push1206=, 1
	i32.shl 	$push1205=, $pop1206, $9
	tee_local	$push1204=, $9=, $pop1205
	i32.and 	$push297=, $7, $pop1204
	i32.eqz 	$push1766=, $pop297
	br_if   	0, $pop1766
	i32.const	$push1214=, 0
	i32.load	$push298=, _gm_+16($pop1214)
	i32.load	$push1213=, 8($6)
	tee_local	$push1212=, $9=, $pop1213
	i32.le_u	$push299=, $pop298, $pop1212
	br_if   	1, $pop299
	br      	32
.LBB2_43:
	end_block
	i32.const	$push1236=, 0
	i32.or  	$push300=, $7, $9
	i32.store	_gm_($pop1236), $pop300
	copy_local	$9=, $6
.LBB2_44:
	end_block
	i32.store	12($9), $10
	i32.const	$push301=, 8
	i32.add 	$push302=, $6, $pop301
	i32.store	0($pop302), $10
	i32.store	12($10), $6
	i32.store	8($10), $9
.LBB2_45:
	end_block
	i32.const	$push1238=, 8
	i32.add 	$0=, $0, $pop1238
	i32.const	$push303=, 0
	i32.store	_gm_+20($pop303), $12
	i32.const	$push1237=, 0
	i32.store	_gm_+8($pop1237), $11
	br      	28
.LBB2_46:
	end_block
	block   	
	block   	
	i32.const	$push1249=, 20
	i32.add 	$push1248=, $11, $pop1249
	tee_local	$push1247=, $12=, $pop1248
	i32.load	$push1246=, 0($pop1247)
	tee_local	$push1245=, $0=, $pop1246
	br_if   	0, $pop1245
	i32.load	$push1251=, 16($11)
	tee_local	$push1250=, $0=, $pop1251
	i32.eqz 	$push1767=, $pop1250
	br_if   	1, $pop1767
	i32.const	$push353=, 16
	i32.add 	$12=, $11, $pop353
.LBB2_49:
	end_block
.LBB2_50:
	loop    	
	copy_local	$8=, $12
	copy_local	$push1258=, $0
	tee_local	$push1257=, $9=, $pop1258
	i32.const	$push1256=, 20
	i32.add 	$push1255=, $pop1257, $pop1256
	tee_local	$push1254=, $12=, $pop1255
	i32.load	$push1253=, 0($pop1254)
	tee_local	$push1252=, $0=, $pop1253
	br_if   	0, $pop1252
	i32.const	$push1261=, 16
	i32.add 	$12=, $9, $pop1261
	i32.load	$push1260=, 16($9)
	tee_local	$push1259=, $0=, $pop1260
	br_if   	0, $pop1259
	end_loop
	i32.gt_u	$push354=, $1, $8
	br_if   	29, $pop354
	i32.const	$push355=, 0
	i32.store	0($8), $pop355
	i32.eqz 	$push1768=, $4
	br_if   	2, $pop1768
	br      	1
.LBB2_54:
	end_block
	i32.const	$9=, 0
	i32.eqz 	$push1769=, $4
	br_if   	1, $pop1769
.LBB2_55:
	end_block
	block   	
	block   	
	block   	
	i32.load	$push1265=, 28($11)
	tee_local	$push1264=, $12=, $pop1265
	i32.const	$push356=, 2
	i32.shl 	$push357=, $pop1264, $pop356
	i32.const	$push358=, _gm_+304
	i32.add 	$push1263=, $pop357, $pop358
	tee_local	$push1262=, $0=, $pop1263
	i32.load	$push359=, 0($pop1262)
	i32.eq  	$push360=, $11, $pop359
	br_if   	0, $pop360
	i32.const	$push361=, 0
	i32.load	$push362=, _gm_+16($pop361)
	i32.gt_u	$push363=, $pop362, $4
	br_if   	30, $pop363
	i32.const	$push364=, 16
	i32.add 	$push365=, $4, $pop364
	i32.load	$push366=, 16($4)
	i32.ne  	$push367=, $pop366, $11
	i32.const	$push368=, 2
	i32.shl 	$push369=, $pop367, $pop368
	i32.add 	$push370=, $pop365, $pop369
	i32.store	0($pop370), $9
	br_if   	1, $9
	br      	3
.LBB2_58:
	end_block
	i32.store	0($0), $9
	i32.eqz 	$push1770=, $9
	br_if   	1, $pop1770
.LBB2_59:
	end_block
	i32.const	$push371=, 0
	i32.load	$push1267=, _gm_+16($pop371)
	tee_local	$push1266=, $12=, $pop1267
	i32.gt_u	$push372=, $pop1266, $9
	br_if   	28, $pop372
	i32.store	24($9), $4
	block   	
	i32.load	$push1269=, 16($11)
	tee_local	$push1268=, $0=, $pop1269
	i32.eqz 	$push1771=, $pop1268
	br_if   	0, $pop1771
	i32.gt_u	$push373=, $12, $0
	br_if   	29, $pop373
	i32.store	16($9), $0
	i32.store	24($0), $9
.LBB2_63:
	end_block
	i32.const	$push374=, 20
	i32.add 	$push375=, $11, $pop374
	i32.load	$push1271=, 0($pop375)
	tee_local	$push1270=, $0=, $pop1271
	i32.eqz 	$push1772=, $pop1270
	br_if   	1, $pop1772
	i32.const	$push376=, 0
	i32.load	$push377=, _gm_+16($pop376)
	i32.gt_u	$push378=, $pop377, $0
	br_if   	28, $pop378
	i32.const	$push379=, 20
	i32.add 	$push380=, $9, $pop379
	i32.store	0($pop380), $0
	i32.store	24($0), $9
	br      	1
.LBB2_66:
	end_block
	i32.const	$push384=, 0
	i32.const	$push381=, -2
	i32.rotl	$push382=, $pop381, $12
	i32.and 	$push383=, $5, $pop382
	i32.store	_gm_+4($pop384), $pop383
.LBB2_67:
	end_block
	block   	
	block   	
	i32.const	$push385=, 15
	i32.gt_u	$push386=, $10, $pop385
	br_if   	0, $pop386
	i32.add 	$push1342=, $10, $6
	tee_local	$push1341=, $0=, $pop1342
	i32.const	$push399=, 3
	i32.or  	$push400=, $pop1341, $pop399
	i32.store	4($11), $pop400
	i32.add 	$push1340=, $11, $0
	tee_local	$push1339=, $0=, $pop1340
	i32.load	$push401=, 4($0)
	i32.const	$push402=, 1
	i32.or  	$push403=, $pop401, $pop402
	i32.store	4($pop1339), $pop403
	br      	1
.LBB2_69:
	end_block
	i32.const	$push1344=, 3
	i32.or  	$push387=, $6, $pop1344
	i32.store	4($11), $pop387
	i32.const	$push1343=, 1
	i32.or  	$push388=, $10, $pop1343
	i32.store	4($2), $pop388
	i32.add 	$push389=, $2, $10
	i32.store	0($pop389), $10
	block   	
	i32.eqz 	$push1773=, $3
	br_if   	0, $pop1773
	i32.const	$push1352=, 3
	i32.shr_u	$push1351=, $3, $pop1352
	tee_local	$push1350=, $12=, $pop1351
	i32.const	$push1349=, 3
	i32.shl 	$push390=, $pop1350, $pop1349
	i32.const	$push391=, _gm_+40
	i32.add 	$6=, $pop390, $pop391
	i32.const	$push1348=, 0
	i32.load	$0=, _gm_+20($pop1348)
	block   	
	block   	
	i32.const	$push1347=, 1
	i32.shl 	$push1346=, $pop1347, $12
	tee_local	$push1345=, $12=, $pop1346
	i32.and 	$push392=, $7, $pop1345
	i32.eqz 	$push1774=, $pop392
	br_if   	0, $pop1774
	i32.const	$push1355=, 0
	i32.load	$push393=, _gm_+16($pop1355)
	i32.load	$push1354=, 8($6)
	tee_local	$push1353=, $12=, $pop1354
	i32.le_u	$push394=, $pop393, $pop1353
	br_if   	1, $pop394
	br      	30
.LBB2_72:
	end_block
	i32.const	$push1356=, 0
	i32.or  	$push395=, $7, $12
	i32.store	_gm_($pop1356), $pop395
	copy_local	$12=, $6
.LBB2_73:
	end_block
	i32.store	12($12), $0
	i32.const	$push396=, 8
	i32.add 	$push397=, $6, $pop396
	i32.store	0($pop397), $0
	i32.store	12($0), $6
	i32.store	8($0), $12
.LBB2_74:
	end_block
	i32.const	$push398=, 0
	i32.store	_gm_+20($pop398), $2
	i32.const	$push1357=, 0
	i32.store	_gm_+8($pop1357), $10
.LBB2_75:
	end_block
	i32.const	$push404=, 8
	i32.add 	$0=, $11, $pop404
	br      	25
.LBB2_76:
	end_block
	i32.eqz 	$push1775=, $0
	br_if   	1, $pop1775
.LBB2_77:
	end_block
.LBB2_78:
	loop    	
	i32.load	$push89=, 4($0)
	i32.const	$push1104=, -8
	i32.and 	$push90=, $pop89, $pop1104
	i32.sub 	$push1103=, $pop90, $6
	tee_local	$push1102=, $10=, $pop1103
	i32.lt_u	$push1101=, $10, $11
	tee_local	$push1100=, $10=, $pop1101
	i32.select	$11=, $pop1102, $11, $pop1100
	i32.select	$12=, $0, $12, $10
	i32.const	$push1099=, 16
	i32.add 	$push91=, $0, $pop1099
	i32.load	$push92=, 16($0)
	i32.eqz 	$push93=, $pop92
	i32.const	$push1098=, 2
	i32.shl 	$push94=, $pop93, $pop1098
	i32.add 	$push95=, $pop91, $pop94
	i32.load	$push1097=, 0($pop95)
	tee_local	$push1096=, $10=, $pop1097
	copy_local	$0=, $pop1096
	br_if   	0, $10
.LBB2_79:
	end_loop
	end_block
	i32.eqz 	$push1776=, $12
	br_if   	0, $pop1776
	i32.const	$push1105=, 0
	i32.load	$push96=, _gm_+8($pop1105)
	i32.sub 	$push97=, $pop96, $6
	i32.ge_u	$push98=, $11, $pop97
	br_if   	0, $pop98
	i32.const	$push1108=, 0
	i32.load	$push1107=, _gm_+16($pop1108)
	tee_local	$push1106=, $4=, $pop1107
	i32.gt_u	$push99=, $pop1106, $12
	br_if   	23, $pop99
	i32.add 	$push1110=, $12, $6
	tee_local	$push1109=, $8=, $pop1110
	i32.le_u	$push100=, $pop1109, $12
	br_if   	23, $pop100
	i32.load	$5=, 24($12)
	i32.load	$push1112=, 12($12)
	tee_local	$push1111=, $9=, $pop1112
	i32.eq  	$push101=, $pop1111, $12
	br_if   	1, $pop101
	i32.load	$push1114=, 8($12)
	tee_local	$push1113=, $0=, $pop1114
	i32.gt_u	$push102=, $4, $pop1113
	br_if   	23, $pop102
	i32.load	$push103=, 12($0)
	i32.ne  	$push104=, $pop103, $12
	br_if   	23, $pop104
	i32.load	$push105=, 8($9)
	i32.ne  	$push106=, $pop105, $12
	br_if   	23, $pop106
	i32.const	$push107=, 8
	i32.add 	$push108=, $9, $pop107
	i32.store	0($pop108), $0
	i32.const	$push109=, 12
	i32.add 	$push110=, $0, $pop109
	i32.store	0($pop110), $9
	br_if   	20, $5
	br      	21
.LBB2_88:
	end_block
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	i32.const	$push1117=, 0
	i32.load	$push1116=, _gm_+8($pop1117)
	tee_local	$push1115=, $0=, $pop1116
	i32.ge_u	$push405=, $pop1115, $6
	br_if   	0, $pop405
	i32.const	$push1120=, 0
	i32.load	$push1119=, _gm_+12($pop1120)
	tee_local	$push1118=, $12=, $pop1119
	i32.le_u	$push421=, $pop1118, $6
	br_if   	1, $pop421
	i32.const	$push880=, 0
	i32.load	$push1128=, _gm_+24($pop880)
	tee_local	$push1127=, $0=, $pop1128
	i32.add 	$push1126=, $pop1127, $6
	tee_local	$push1125=, $10=, $pop1126
	i32.sub 	$push1124=, $12, $6
	tee_local	$push1123=, $11=, $pop1124
	i32.const	$push878=, 1
	i32.or  	$push879=, $pop1123, $pop878
	i32.store	4($pop1125), $pop879
	i32.const	$push1122=, 0
	i32.store	_gm_+12($pop1122), $11
	i32.const	$push1121=, 0
	i32.store	_gm_+24($pop1121), $10
	i32.const	$push881=, 3
	i32.or  	$push882=, $6, $pop881
	i32.store	4($0), $pop882
	i32.const	$push883=, 8
	i32.add 	$0=, $0, $pop883
	br      	27
.LBB2_91:
	end_block
	i32.const	$push1131=, 0
	i32.load	$10=, _gm_+20($pop1131)
	i32.sub 	$push1130=, $0, $6
	tee_local	$push1129=, $11=, $pop1130
	i32.const	$push406=, 16
	i32.lt_u	$push407=, $pop1129, $pop406
	br_if   	1, $pop407
	i32.add 	$push1134=, $10, $6
	tee_local	$push1133=, $12=, $pop1134
	i32.const	$push414=, 1
	i32.or  	$push415=, $11, $pop414
	i32.store	4($pop1133), $pop415
	i32.add 	$push416=, $10, $0
	i32.store	0($pop416), $11
	i32.const	$push417=, 0
	i32.store	_gm_+8($pop417), $11
	i32.const	$push1132=, 0
	i32.store	_gm_+20($pop1132), $12
	i32.const	$push418=, 3
	i32.or  	$push419=, $6, $pop418
	i32.store	4($10), $pop419
	br      	2
.LBB2_93:
	end_block
	i32.const	$push1135=, 0
	i32.load	$push422=, mparams($pop1135)
	i32.eqz 	$push1777=, $pop422
	br_if   	2, $pop1777
	i32.const	$push1136=, 0
	i32.load	$10=, mparams+8($pop1136)
	br      	3
.LBB2_95:
	end_block
	i32.const	$push408=, 3
	i32.or  	$push409=, $0, $pop408
	i32.store	4($10), $pop409
	i32.add 	$push1141=, $10, $0
	tee_local	$push1140=, $0=, $pop1141
	i32.load	$push410=, 4($0)
	i32.const	$push411=, 1
	i32.or  	$push412=, $pop410, $pop411
	i32.store	4($pop1140), $pop412
	i32.const	$push413=, 0
	i32.const	$push1139=, 0
	i32.store	_gm_+20($pop413), $pop1139
	i32.const	$push1138=, 0
	i32.const	$push1137=, 0
	i32.store	_gm_+8($pop1138), $pop1137
.LBB2_96:
	end_block
	i32.const	$push420=, 8
	i32.add 	$0=, $10, $pop420
	br      	23
.LBB2_97:
	end_block
	i32.const	$push1148=, 0
	i64.const	$push423=, 281474976776192
	i64.store	mparams+4($pop1148):p2align=2, $pop423
	i32.const	$push1147=, 0
	i64.const	$push424=, 9007203549708287
	i64.store	mparams+12($pop1147):p2align=2, $pop424
	i32.const	$push1146=, 0
	i32.const	$push891=, 12
	i32.add 	$push892=, $13, $pop891
	i32.const	$push425=, -16
	i32.and 	$push426=, $pop892, $pop425
	i32.const	$push427=, 1431655768
	i32.xor 	$push428=, $pop426, $pop427
	i32.store	mparams($pop1146), $pop428
	i32.const	$push1145=, 0
	i32.const	$push1144=, 0
	i32.store	mparams+20($pop1145), $pop1144
	i32.const	$push1143=, 0
	i32.const	$push1142=, 0
	i32.store	_gm_+444($pop1143), $pop1142
	i32.const	$10=, 65536
.LBB2_98:
	end_block
	i32.const	$0=, 0
	i32.const	$push429=, 47
	i32.add 	$push1157=, $6, $pop429
	tee_local	$push1156=, $3=, $pop1157
	i32.add 	$push1155=, $10, $pop1156
	tee_local	$push1154=, $7=, $pop1155
	i32.const	$push1153=, 0
	i32.sub 	$push1152=, $pop1153, $10
	tee_local	$push1151=, $8=, $pop1152
	i32.and 	$push1150=, $pop1154, $pop1151
	tee_local	$push1149=, $9=, $pop1150
	i32.le_u	$push430=, $pop1149, $6
	br_if   	21, $pop430
	i32.const	$0=, 0
	block   	
	i32.const	$push1160=, 0
	i32.load	$push1159=, _gm_+440($pop1160)
	tee_local	$push1158=, $10=, $pop1159
	i32.eqz 	$push1778=, $pop1158
	br_if   	0, $pop1778
	i32.const	$push1165=, 0
	i32.load	$push1164=, _gm_+432($pop1165)
	tee_local	$push1163=, $11=, $pop1164
	i32.add 	$push1162=, $pop1163, $9
	tee_local	$push1161=, $5=, $pop1162
	i32.le_u	$push432=, $pop1161, $11
	br_if   	22, $pop432
	i32.gt_u	$push433=, $5, $10
	br_if   	22, $pop433
.LBB2_102:
	end_block
	i32.const	$push1166=, 0
	i32.load8_u	$push434=, _gm_+444($pop1166)
	i32.const	$push435=, 4
	i32.and 	$push436=, $pop434, $pop435
	br_if   	8, $pop436
	block   	
	i32.const	$push1169=, 0
	i32.load	$push1168=, _gm_+24($pop1169)
	tee_local	$push1167=, $10=, $pop1168
	i32.eqz 	$push1779=, $pop1167
	br_if   	0, $pop1779
	i32.const	$0=, _gm_+448
.LBB2_105:
	loop    	
	block   	
	i32.load	$push1171=, 0($0)
	tee_local	$push1170=, $11=, $pop1171
	i32.gt_u	$push437=, $pop1170, $10
	br_if   	0, $pop437
	i32.load	$push438=, 4($0)
	i32.add 	$push439=, $11, $pop438
	i32.gt_u	$push440=, $pop439, $10
	br_if   	4, $pop440
.LBB2_107:
	end_block
	i32.load	$push1173=, 8($0)
	tee_local	$push1172=, $0=, $pop1173
	br_if   	0, $pop1172
.LBB2_108:
	end_loop
	end_block
	i32.const	$push1177=, 0
	i32.call	$push1176=, sbrk@FUNCTION, $pop1177
	tee_local	$push1175=, $12=, $pop1176
	i32.const	$push1174=, -1
	i32.eq  	$push452=, $pop1175, $pop1174
	br_if   	7, $pop452
	copy_local	$7=, $9
	block   	
	i32.const	$push1183=, 0
	i32.load	$push1182=, mparams+4($pop1183)
	tee_local	$push1181=, $0=, $pop1182
	i32.const	$push1180=, -1
	i32.add 	$push1179=, $pop1181, $pop1180
	tee_local	$push1178=, $10=, $pop1179
	i32.and 	$push453=, $pop1178, $12
	i32.eqz 	$push1780=, $pop453
	br_if   	0, $pop1780
	i32.sub 	$push458=, $9, $12
	i32.add 	$push456=, $10, $12
	i32.const	$push454=, 0
	i32.sub 	$push455=, $pop454, $0
	i32.and 	$push457=, $pop456, $pop455
	i32.add 	$7=, $pop458, $pop457
.LBB2_111:
	end_block
	i32.le_u	$push460=, $7, $6
	br_if   	7, $pop460
	i32.const	$push461=, 2147483646
	i32.gt_u	$push462=, $7, $pop461
	br_if   	7, $pop462
	block   	
	i32.const	$push463=, 0
	i32.load	$push1185=, _gm_+440($pop463)
	tee_local	$push1184=, $0=, $pop1185
	i32.eqz 	$push1781=, $pop1184
	br_if   	0, $pop1781
	i32.const	$push459=, 0
	i32.load	$push1189=, _gm_+432($pop459)
	tee_local	$push1188=, $10=, $pop1189
	i32.add 	$push1187=, $pop1188, $7
	tee_local	$push1186=, $11=, $pop1187
	i32.le_u	$push464=, $pop1186, $10
	br_if   	8, $pop464
	i32.gt_u	$push465=, $11, $0
	br_if   	8, $pop465
.LBB2_116:
	end_block
	i32.call	$push1191=, sbrk@FUNCTION, $7
	tee_local	$push1190=, $0=, $pop1191
	i32.ne  	$push466=, $pop1190, $12
	br_if   	2, $pop466
	br      	9
.LBB2_117:
	end_block
	block   	
	i32.const	$push1219=, 20
	i32.add 	$push1218=, $12, $pop1219
	tee_local	$push1217=, $10=, $pop1218
	i32.load	$push1216=, 0($pop1217)
	tee_local	$push1215=, $0=, $pop1216
	br_if   	0, $pop1215
	i32.load	$push1221=, 16($12)
	tee_local	$push1220=, $0=, $pop1221
	i32.eqz 	$push1782=, $pop1220
	br_if   	3, $pop1782
	i32.const	$push111=, 16
	i32.add 	$10=, $12, $pop111
.LBB2_120:
	end_block
.LBB2_121:
	loop    	
	copy_local	$7=, $10
	copy_local	$push1228=, $0
	tee_local	$push1227=, $9=, $pop1228
	i32.const	$push1226=, 20
	i32.add 	$push1225=, $pop1227, $pop1226
	tee_local	$push1224=, $10=, $pop1225
	i32.load	$push1223=, 0($pop1224)
	tee_local	$push1222=, $0=, $pop1223
	br_if   	0, $pop1222
	i32.const	$push1231=, 16
	i32.add 	$10=, $9, $pop1231
	i32.load	$push1230=, 16($9)
	tee_local	$push1229=, $0=, $pop1230
	br_if   	0, $pop1229
	end_loop
	i32.gt_u	$push112=, $4, $7
	br_if   	21, $pop112
	i32.const	$push113=, 0
	i32.store	0($7), $pop113
	i32.eqz 	$push1783=, $5
	br_if   	19, $pop1783
	br      	18
.LBB2_125:
	end_block
	i32.sub 	$push441=, $7, $12
	i32.and 	$push1273=, $pop441, $8
	tee_local	$push1272=, $7=, $pop1273
	i32.const	$push442=, 2147483646
	i32.gt_u	$push443=, $pop1272, $pop442
	br_if   	5, $pop443
	i32.call	$push1275=, sbrk@FUNCTION, $7
	tee_local	$push1274=, $12=, $pop1275
	i32.load	$push447=, 0($0)
	i32.const	$push444=, 4
	i32.add 	$push445=, $0, $pop444
	i32.load	$push446=, 0($pop445)
	i32.add 	$push448=, $pop447, $pop446
	i32.eq  	$push449=, $pop1274, $pop448
	br_if   	3, $pop449
	copy_local	$0=, $12
.LBB2_128:
	end_block
	copy_local	$12=, $0
	i32.const	$push431=, 48
	i32.add 	$push1=, $6, $pop431
	i32.le_u	$push468=, $pop1, $7
	br_if   	1, $pop468
	i32.const	$push469=, 2147483646
	i32.gt_u	$push470=, $7, $pop469
	br_if   	1, $pop470
	i32.const	$push471=, -1
	i32.eq  	$push472=, $12, $pop471
	br_if   	1, $pop472
	i32.sub 	$push477=, $3, $7
	i32.const	$push475=, 0
	i32.load	$push1280=, mparams+8($pop475)
	tee_local	$push1279=, $0=, $pop1280
	i32.add 	$push478=, $pop477, $pop1279
	i32.const	$push1278=, 0
	i32.sub 	$push476=, $pop1278, $0
	i32.and 	$push1277=, $pop478, $pop476
	tee_local	$push1276=, $0=, $pop1277
	i32.const	$push479=, 2147483646
	i32.gt_u	$push480=, $pop1276, $pop479
	br_if   	6, $pop480
	i32.call	$push481=, sbrk@FUNCTION, $0
	i32.const	$push482=, -1
	i32.eq  	$push483=, $pop481, $pop482
	br_if   	3, $pop483
	i32.add 	$7=, $0, $7
	br      	6
.LBB2_134:
	end_block
	i32.const	$9=, 0
	br_if   	15, $5
	br      	16
.LBB2_135:
	end_block
	i32.const	$push473=, -1
	i32.ne  	$push474=, $12, $pop473
	br_if   	4, $pop474
	br      	2
.LBB2_136:
	end_block
	i32.const	$push450=, -1
	i32.ne  	$push451=, $12, $pop450
	br_if   	3, $pop451
	br      	1
.LBB2_137:
	end_block
	i32.const	$push467=, 0
	i32.sub 	$push2=, $pop467, $7
	i32.call	$drop=, sbrk@FUNCTION, $pop2
.LBB2_138:
	end_block
	i32.const	$push484=, 0
	i32.const	$push1358=, 0
	i32.load	$push485=, _gm_+444($pop1358)
	i32.const	$push486=, 4
	i32.or  	$push487=, $pop485, $pop486
	i32.store	_gm_+444($pop484), $pop487
.LBB2_139:
	end_block
	i32.const	$push488=, 2147483646
	i32.gt_u	$push489=, $9, $pop488
	br_if   	1, $pop489
	i32.call	$push1362=, sbrk@FUNCTION, $9
	tee_local	$push1361=, $12=, $pop1362
	i32.const	$push490=, 0
	i32.call	$push1360=, sbrk@FUNCTION, $pop490
	tee_local	$push1359=, $0=, $pop1360
	i32.ge_u	$push491=, $pop1361, $pop1359
	br_if   	1, $pop491
	i32.const	$push1363=, -1
	i32.eq  	$push492=, $12, $pop1363
	br_if   	1, $pop492
	i32.const	$push1364=, -1
	i32.eq  	$push493=, $0, $pop1364
	br_if   	1, $pop493
	i32.sub 	$push1366=, $0, $12
	tee_local	$push1365=, $7=, $pop1366
	i32.const	$push494=, 40
	i32.add 	$push495=, $6, $pop494
	i32.le_u	$push496=, $pop1365, $pop495
	br_if   	1, $pop496
.LBB2_144:
	end_block
	i32.const	$push1371=, 0
	i32.const	$push1370=, 0
	i32.load	$push497=, _gm_+432($pop1370)
	i32.add 	$push1369=, $pop497, $7
	tee_local	$push1368=, $0=, $pop1369
	i32.store	_gm_+432($pop1371), $pop1368
	block   	
	i32.const	$push1367=, 0
	i32.load	$push498=, _gm_+436($pop1367)
	i32.le_u	$push499=, $0, $pop498
	br_if   	0, $pop499
	i32.const	$push1372=, 0
	i32.store	_gm_+436($pop1372), $0
.LBB2_146:
	end_block
	block   	
	block   	
	block   	
	block   	
	i32.const	$push1375=, 0
	i32.load	$push1374=, _gm_+24($pop1375)
	tee_local	$push1373=, $10=, $pop1374
	i32.eqz 	$push1784=, $pop1373
	br_if   	0, $pop1784
	i32.const	$0=, _gm_+448
.LBB2_148:
	loop    	
	i32.load	$push1379=, 0($0)
	tee_local	$push1378=, $11=, $pop1379
	i32.load	$push1377=, 4($0)
	tee_local	$push1376=, $9=, $pop1377
	i32.add 	$push500=, $pop1378, $pop1376
	i32.eq  	$push501=, $12, $pop500
	br_if   	2, $pop501
	i32.load	$push1381=, 8($0)
	tee_local	$push1380=, $0=, $pop1381
	br_if   	0, $pop1380
	br      	3
.LBB2_150:
	end_loop
	end_block
	block   	
	block   	
	i32.const	$push1384=, 0
	i32.load	$push1383=, _gm_+16($pop1384)
	tee_local	$push1382=, $0=, $pop1383
	i32.eqz 	$push1785=, $pop1382
	br_if   	0, $pop1785
	i32.ge_u	$push821=, $12, $0
	br_if   	1, $pop821
.LBB2_152:
	end_block
	i32.const	$push1385=, 0
	i32.store	_gm_+16($pop1385), $12
.LBB2_153:
	end_block
	i32.const	$push822=, 0
	i32.store	_gm_+452($pop822), $7
	i32.const	$push1501=, 0
	i32.store	_gm_+448($pop1501), $12
	i32.const	$push1500=, 0
	i32.const	$push823=, -1
	i32.store	_gm_+32($pop1500), $pop823
	i32.const	$push1499=, 0
	i32.const	$push824=, _gm_+40
	i32.store	_gm_+52($pop1499), $pop824
	i32.const	$push1498=, 0
	i32.const	$push1497=, _gm_+40
	i32.store	_gm_+48($pop1498), $pop1497
	i32.const	$push1496=, 0
	i32.const	$push825=, _gm_+48
	i32.store	_gm_+60($pop1496), $pop825
	i32.const	$push1495=, 0
	i32.const	$push1494=, _gm_+48
	i32.store	_gm_+56($pop1495), $pop1494
	i32.const	$push1493=, 0
	i32.const	$push826=, _gm_+56
	i32.store	_gm_+68($pop1493), $pop826
	i32.const	$push1492=, 0
	i32.const	$push1491=, _gm_+56
	i32.store	_gm_+64($pop1492), $pop1491
	i32.const	$push1490=, 0
	i32.const	$push827=, _gm_+64
	i32.store	_gm_+76($pop1490), $pop827
	i32.const	$push1489=, 0
	i32.const	$push1488=, _gm_+64
	i32.store	_gm_+72($pop1489), $pop1488
	i32.const	$push1487=, 0
	i32.const	$push828=, _gm_+72
	i32.store	_gm_+84($pop1487), $pop828
	i32.const	$push1486=, 0
	i32.const	$push1485=, _gm_+72
	i32.store	_gm_+80($pop1486), $pop1485
	i32.const	$push1484=, 0
	i32.const	$push829=, _gm_+80
	i32.store	_gm_+92($pop1484), $pop829
	i32.const	$push1483=, 0
	i32.const	$push1482=, _gm_+80
	i32.store	_gm_+88($pop1483), $pop1482
	i32.const	$push1481=, 0
	i32.const	$push830=, _gm_+88
	i32.store	_gm_+100($pop1481), $pop830
	i32.const	$push1480=, 0
	i32.const	$push1479=, 0
	i32.load	$push831=, mparams($pop1479)
	i32.store	_gm_+36($pop1480), $pop831
	i32.const	$push1478=, 0
	i32.const	$push1477=, 0
	i32.store	_gm_+460($pop1478), $pop1477
	i32.const	$push1476=, 0
	i32.const	$push832=, _gm_+96
	i32.store	_gm_+108($pop1476), $pop832
	i32.const	$push1475=, 0
	i32.const	$push1474=, _gm_+88
	i32.store	_gm_+96($pop1475), $pop1474
	i32.const	$push1473=, 0
	i32.const	$push1472=, _gm_+96
	i32.store	_gm_+104($pop1473), $pop1472
	i32.const	$push1471=, 0
	i32.const	$push833=, _gm_+104
	i32.store	_gm_+116($pop1471), $pop833
	i32.const	$push1470=, 0
	i32.const	$push1469=, _gm_+104
	i32.store	_gm_+112($pop1470), $pop1469
	i32.const	$push1468=, 0
	i32.const	$push834=, _gm_+112
	i32.store	_gm_+124($pop1468), $pop834
	i32.const	$push1467=, 0
	i32.const	$push1466=, _gm_+112
	i32.store	_gm_+120($pop1467), $pop1466
	i32.const	$push1465=, 0
	i32.const	$push835=, _gm_+120
	i32.store	_gm_+132($pop1465), $pop835
	i32.const	$push1464=, 0
	i32.const	$push1463=, _gm_+120
	i32.store	_gm_+128($pop1464), $pop1463
	i32.const	$push1462=, 0
	i32.const	$push836=, _gm_+128
	i32.store	_gm_+140($pop1462), $pop836
	i32.const	$push1461=, 0
	i32.const	$push1460=, _gm_+128
	i32.store	_gm_+136($pop1461), $pop1460
	i32.const	$push1459=, 0
	i32.const	$push837=, _gm_+136
	i32.store	_gm_+148($pop1459), $pop837
	i32.const	$push1458=, 0
	i32.const	$push1457=, _gm_+136
	i32.store	_gm_+144($pop1458), $pop1457
	i32.const	$push1456=, 0
	i32.const	$push838=, _gm_+144
	i32.store	_gm_+156($pop1456), $pop838
	i32.const	$push1455=, 0
	i32.const	$push1454=, _gm_+144
	i32.store	_gm_+152($pop1455), $pop1454
	i32.const	$push1453=, 0
	i32.const	$push839=, _gm_+152
	i32.store	_gm_+164($pop1453), $pop839
	i32.const	$push1452=, 0
	i32.const	$push1451=, _gm_+152
	i32.store	_gm_+160($pop1452), $pop1451
	i32.const	$push1450=, 0
	i32.const	$push840=, _gm_+160
	i32.store	_gm_+172($pop1450), $pop840
	i32.const	$push1449=, 0
	i32.const	$push1448=, _gm_+160
	i32.store	_gm_+168($pop1449), $pop1448
	i32.const	$push1447=, 0
	i32.const	$push841=, _gm_+168
	i32.store	_gm_+176($pop1447), $pop841
	i32.const	$push1446=, 0
	i32.const	$push1445=, _gm_+168
	i32.store	_gm_+180($pop1446), $pop1445
	i32.const	$push1444=, 0
	i32.const	$push842=, _gm_+176
	i32.store	_gm_+188($pop1444), $pop842
	i32.const	$push1443=, 0
	i32.const	$push1442=, _gm_+176
	i32.store	_gm_+184($pop1443), $pop1442
	i32.const	$push1441=, 0
	i32.const	$push843=, _gm_+184
	i32.store	_gm_+196($pop1441), $pop843
	i32.const	$push1440=, 0
	i32.const	$push1439=, _gm_+184
	i32.store	_gm_+192($pop1440), $pop1439
	i32.const	$push1438=, 0
	i32.const	$push844=, _gm_+192
	i32.store	_gm_+204($pop1438), $pop844
	i32.const	$push1437=, 0
	i32.const	$push1436=, _gm_+192
	i32.store	_gm_+200($pop1437), $pop1436
	i32.const	$push1435=, 0
	i32.const	$push845=, _gm_+200
	i32.store	_gm_+212($pop1435), $pop845
	i32.const	$push1434=, 0
	i32.const	$push1433=, _gm_+200
	i32.store	_gm_+208($pop1434), $pop1433
	i32.const	$push1432=, 0
	i32.const	$push846=, _gm_+208
	i32.store	_gm_+220($pop1432), $pop846
	i32.const	$push1431=, 0
	i32.const	$push1430=, _gm_+208
	i32.store	_gm_+216($pop1431), $pop1430
	i32.const	$push1429=, 0
	i32.const	$push847=, _gm_+216
	i32.store	_gm_+228($pop1429), $pop847
	i32.const	$push1428=, 0
	i32.const	$push1427=, _gm_+216
	i32.store	_gm_+224($pop1428), $pop1427
	i32.const	$push1426=, 0
	i32.const	$push848=, _gm_+224
	i32.store	_gm_+236($pop1426), $pop848
	i32.const	$push1425=, 0
	i32.const	$push1424=, _gm_+224
	i32.store	_gm_+232($pop1425), $pop1424
	i32.const	$push1423=, 0
	i32.const	$push849=, _gm_+232
	i32.store	_gm_+244($pop1423), $pop849
	i32.const	$push1422=, 0
	i32.const	$push1421=, _gm_+232
	i32.store	_gm_+240($pop1422), $pop1421
	i32.const	$push1420=, 0
	i32.const	$push850=, _gm_+240
	i32.store	_gm_+252($pop1420), $pop850
	i32.const	$push855=, -8
	i32.sub 	$push856=, $pop855, $12
	i32.const	$push853=, 7
	i32.and 	$push857=, $pop856, $pop853
	i32.const	$push1419=, 0
	i32.const	$push851=, 8
	i32.add 	$push852=, $12, $pop851
	i32.const	$push1418=, 7
	i32.and 	$push854=, $pop852, $pop1418
	i32.select	$push1417=, $pop857, $pop1419, $pop854
	tee_local	$push1416=, $0=, $pop1417
	i32.add 	$push1415=, $12, $pop1416
	tee_local	$push1414=, $10=, $pop1415
	i32.const	$push858=, -40
	i32.add 	$push1413=, $7, $pop858
	tee_local	$push1412=, $11=, $pop1413
	i32.sub 	$push1411=, $pop1412, $0
	tee_local	$push1410=, $0=, $pop1411
	i32.const	$push859=, 1
	i32.or  	$push860=, $pop1410, $pop859
	i32.store	4($pop1414), $pop860
	i32.const	$push1409=, 0
	i32.const	$push861=, _gm_+248
	i32.store	_gm_+260($pop1409), $pop861
	i32.const	$push1408=, 0
	i32.const	$push1407=, _gm_+240
	i32.store	_gm_+248($pop1408), $pop1407
	i32.const	$push1406=, 0
	i32.const	$push1405=, _gm_+248
	i32.store	_gm_+256($pop1406), $pop1405
	i32.const	$push1404=, 0
	i32.const	$push862=, _gm_+256
	i32.store	_gm_+268($pop1404), $pop862
	i32.const	$push1403=, 0
	i32.const	$push1402=, _gm_+256
	i32.store	_gm_+264($pop1403), $pop1402
	i32.const	$push1401=, 0
	i32.const	$push863=, _gm_+264
	i32.store	_gm_+276($pop1401), $pop863
	i32.const	$push1400=, 0
	i32.const	$push1399=, _gm_+264
	i32.store	_gm_+272($pop1400), $pop1399
	i32.const	$push1398=, 0
	i32.const	$push864=, _gm_+272
	i32.store	_gm_+284($pop1398), $pop864
	i32.const	$push1397=, 0
	i32.const	$push1396=, _gm_+272
	i32.store	_gm_+280($pop1397), $pop1396
	i32.const	$push1395=, 0
	i32.const	$push865=, _gm_+280
	i32.store	_gm_+292($pop1395), $pop865
	i32.const	$push1394=, 0
	i32.const	$push1393=, _gm_+280
	i32.store	_gm_+288($pop1394), $pop1393
	i32.const	$push1392=, 0
	i32.const	$push866=, _gm_+288
	i32.store	_gm_+300($pop1392), $pop866
	i32.const	$push1391=, 0
	i32.const	$push1390=, _gm_+288
	i32.store	_gm_+296($pop1391), $pop1390
	i32.const	$push1389=, 0
	i32.store	_gm_+24($pop1389), $10
	i32.const	$push1388=, 0
	i32.store	_gm_+12($pop1388), $0
	i32.add 	$push867=, $12, $11
	i32.const	$push868=, 40
	i32.store	4($pop867), $pop868
	i32.const	$push1387=, 0
	i32.const	$push1386=, 0
	i32.load	$push869=, mparams+16($pop1386)
	i32.store	_gm_+28($pop1387), $pop869
	br      	2
.LBB2_154:
	end_block
	i32.load8_u	$push502=, 12($0)
	i32.const	$push503=, 8
	i32.and 	$push504=, $pop502, $pop503
	br_if   	0, $pop504
	i32.le_u	$push505=, $12, $10
	br_if   	0, $pop505
	i32.gt_u	$push506=, $11, $10
	br_if   	0, $pop506
	i32.const	$push808=, -8
	i32.sub 	$push809=, $pop808, $10
	i32.const	$push806=, 7
	i32.and 	$push810=, $pop809, $pop806
	i32.const	$push811=, 0
	i32.const	$push804=, 8
	i32.add 	$push805=, $10, $pop804
	i32.const	$push1515=, 7
	i32.and 	$push807=, $pop805, $pop1515
	i32.select	$push1514=, $pop810, $pop811, $pop807
	tee_local	$push1513=, $11=, $pop1514
	i32.add 	$push1512=, $10, $pop1513
	tee_local	$push1511=, $12=, $pop1512
	i32.const	$push1510=, 0
	i32.load	$push812=, _gm_+12($pop1510)
	i32.add 	$push1509=, $pop812, $7
	tee_local	$push1508=, $8=, $pop1509
	i32.sub 	$push1507=, $pop1508, $11
	tee_local	$push1506=, $11=, $pop1507
	i32.const	$push813=, 1
	i32.or  	$push814=, $pop1506, $pop813
	i32.store	4($pop1511), $pop814
	i32.const	$push816=, 4
	i32.add 	$push817=, $0, $pop816
	i32.add 	$push815=, $9, $7
	i32.store	0($pop817), $pop815
	i32.const	$push1505=, 0
	i32.const	$push1504=, 0
	i32.load	$push818=, mparams+16($pop1504)
	i32.store	_gm_+28($pop1505), $pop818
	i32.const	$push1503=, 0
	i32.store	_gm_+12($pop1503), $11
	i32.const	$push1502=, 0
	i32.store	_gm_+24($pop1502), $12
	i32.add 	$push819=, $10, $8
	i32.const	$push820=, 40
	i32.store	4($pop819), $pop820
	br      	1
.LBB2_158:
	end_block
	block   	
	i32.const	$push1518=, 0
	i32.load	$push1517=, _gm_+16($pop1518)
	tee_local	$push1516=, $9=, $pop1517
	i32.ge_u	$push507=, $12, $pop1516
	br_if   	0, $pop507
	i32.const	$push1519=, 0
	i32.store	_gm_+16($pop1519), $12
	copy_local	$9=, $12
.LBB2_160:
	end_block
	i32.add 	$11=, $12, $7
	i32.const	$0=, _gm_+448
.LBB2_161:
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	loop    	
	i32.load	$push508=, 0($0)
	i32.eq  	$push509=, $pop508, $11
	br_if   	1, $pop509
	i32.load	$push1521=, 8($0)
	tee_local	$push1520=, $0=, $pop1521
	br_if   	0, $pop1520
	br      	2
.LBB2_163:
	end_loop
	end_block
	i32.load8_u	$push510=, 12($0)
	i32.const	$push1522=, 8
	i32.and 	$push511=, $pop510, $pop1522
	br_if   	0, $pop511
	i32.store	0($0), $12
	i32.load	$push635=, 4($0)
	i32.add 	$push636=, $pop635, $7
	i32.store	4($0), $pop636
	i32.const	$push640=, -8
	i32.sub 	$push641=, $pop640, $12
	i32.const	$push638=, 7
	i32.and 	$push642=, $pop641, $pop638
	i32.const	$push1534=, 0
	i32.const	$push1533=, 8
	i32.add 	$push637=, $12, $pop1533
	i32.const	$push1532=, 7
	i32.and 	$push639=, $pop637, $pop1532
	i32.select	$push643=, $pop642, $pop1534, $pop639
	i32.add 	$push1531=, $12, $pop643
	tee_local	$push1530=, $8=, $pop1531
	i32.const	$push644=, 3
	i32.or  	$push645=, $6, $pop644
	i32.store	4($pop1530), $pop645
	i32.const	$push1529=, -8
	i32.sub 	$push648=, $pop1529, $11
	i32.const	$push1528=, 7
	i32.and 	$push649=, $pop648, $pop1528
	i32.const	$push1527=, 0
	i32.const	$push1526=, 8
	i32.add 	$push646=, $11, $pop1526
	i32.const	$push1525=, 7
	i32.and 	$push647=, $pop646, $pop1525
	i32.select	$push650=, $pop649, $pop1527, $pop647
	i32.add 	$push1524=, $11, $pop650
	tee_local	$push1523=, $12=, $pop1524
	i32.sub 	$push651=, $pop1523, $8
	i32.sub 	$0=, $pop651, $6
	i32.add 	$11=, $8, $6
	i32.eq  	$push652=, $10, $12
	br_if   	1, $pop652
	i32.const	$push1535=, 0
	i32.load	$push653=, _gm_+20($pop1535)
	i32.eq  	$push654=, $pop653, $12
	br_if   	8, $pop654
	i32.load	$push1539=, 4($12)
	tee_local	$push1538=, $5=, $pop1539
	i32.const	$push1537=, 3
	i32.and 	$push655=, $pop1538, $pop1537
	i32.const	$push1536=, 1
	i32.ne  	$push656=, $pop655, $pop1536
	br_if   	14, $pop656
	i32.const	$push658=, 255
	i32.gt_u	$push659=, $5, $pop658
	br_if   	9, $pop659
	i32.load	$10=, 12($12)
	block   	
	i32.load	$push1546=, 8($12)
	tee_local	$push1545=, $6=, $pop1546
	i32.const	$push1544=, 3
	i32.shr_u	$push1543=, $5, $pop1544
	tee_local	$push1542=, $3=, $pop1543
	i32.const	$push702=, 3
	i32.shl 	$push703=, $pop1542, $pop702
	i32.const	$push704=, _gm_+40
	i32.add 	$push1541=, $pop703, $pop704
	tee_local	$push1540=, $7=, $pop1541
	i32.eq  	$push705=, $pop1545, $pop1540
	br_if   	0, $pop705
	i32.gt_u	$push706=, $9, $6
	br_if   	20, $pop706
	i32.load	$push707=, 12($6)
	i32.ne  	$push708=, $pop707, $12
	br_if   	20, $pop708
.LBB2_171:
	end_block
	i32.eq  	$push709=, $10, $6
	br_if   	10, $pop709
	block   	
	i32.eq  	$push710=, $10, $7
	br_if   	0, $pop710
	i32.gt_u	$push711=, $9, $10
	br_if   	20, $pop711
	i32.load	$push712=, 8($10)
	i32.ne  	$push713=, $pop712, $12
	br_if   	20, $pop713
.LBB2_175:
	end_block
	i32.store	12($6), $10
	i32.const	$push714=, 8
	i32.add 	$push715=, $10, $pop714
	i32.store	0($pop715), $6
	br      	13
.LBB2_176:
	end_block
	i32.const	$0=, _gm_+448
.LBB2_177:
	block   	
	loop    	
	block   	
	i32.load	$push1548=, 0($0)
	tee_local	$push1547=, $11=, $pop1548
	i32.gt_u	$push512=, $pop1547, $10
	br_if   	0, $pop512
	i32.load	$push513=, 4($0)
	i32.add 	$push1550=, $11, $pop513
	tee_local	$push1549=, $11=, $pop1550
	i32.gt_u	$push514=, $pop1549, $10
	br_if   	2, $pop514
.LBB2_179:
	end_block
	i32.load	$0=, 8($0)
	br      	0
.LBB2_180:
	end_loop
	end_block
	i32.const	$push518=, -8
	i32.sub 	$push519=, $pop518, $12
	i32.const	$push1582=, 7
	i32.and 	$push520=, $pop519, $pop1582
	i32.const	$push521=, 0
	i32.const	$push515=, 8
	i32.add 	$push516=, $12, $pop515
	i32.const	$push1581=, 7
	i32.and 	$push517=, $pop516, $pop1581
	i32.select	$push1580=, $pop520, $pop521, $pop517
	tee_local	$push1579=, $0=, $pop1580
	i32.add 	$push1578=, $12, $pop1579
	tee_local	$push1577=, $8=, $pop1578
	i32.const	$push522=, -40
	i32.add 	$push1576=, $7, $pop522
	tee_local	$push1575=, $9=, $pop1576
	i32.sub 	$push1574=, $pop1575, $0
	tee_local	$push1573=, $0=, $pop1574
	i32.const	$push523=, 1
	i32.or  	$push524=, $pop1573, $pop523
	i32.store	4($pop1577), $pop524
	i32.add 	$push525=, $12, $9
	i32.const	$push526=, 40
	i32.store	4($pop525), $pop526
	i32.const	$push530=, 39
	i32.sub 	$push531=, $pop530, $11
	i32.const	$push1572=, 7
	i32.and 	$push532=, $pop531, $pop1572
	i32.const	$push1571=, 0
	i32.const	$push527=, -39
	i32.add 	$push528=, $11, $pop527
	i32.const	$push1570=, 7
	i32.and 	$push529=, $pop528, $pop1570
	i32.select	$push533=, $pop532, $pop1571, $pop529
	i32.add 	$push534=, $11, $pop533
	i32.const	$push535=, -47
	i32.add 	$push1569=, $pop534, $pop535
	tee_local	$push1568=, $9=, $pop1569
	i32.const	$push536=, 16
	i32.add 	$push537=, $10, $pop536
	i32.lt_u	$push538=, $9, $pop537
	i32.select	$push1567=, $10, $pop1568, $pop538
	tee_local	$push1566=, $9=, $pop1567
	i32.const	$push539=, 27
	i32.store	4($pop1566), $pop539
	i32.const	$push1565=, 0
	i32.const	$push1564=, 0
	i32.load	$push540=, mparams+16($pop1564)
	i32.store	_gm_+28($pop1565), $pop540
	i32.const	$push1563=, 0
	i32.store	_gm_+12($pop1563), $0
	i32.const	$push1562=, 0
	i32.store	_gm_+24($pop1562), $8
	i32.const	$push1561=, 16
	i32.add 	$push541=, $9, $pop1561
	i32.const	$push1560=, 0
	i32.load	$push542=, _gm_+456($pop1560)
	i32.store	0($pop541), $pop542
	i32.const	$push543=, 12
	i32.add 	$push544=, $9, $pop543
	i32.const	$push1559=, 0
	i32.load	$push545=, _gm_+452($pop1559)
	i32.store	0($pop544), $pop545
	i32.const	$push1558=, 0
	i32.load	$push546=, _gm_+448($pop1558)
	i32.store	8($9), $pop546
	i32.const	$push547=, 20
	i32.add 	$push548=, $9, $pop547
	i32.const	$push1557=, 0
	i32.load	$push549=, _gm_+460($pop1557)
	i32.store	0($pop548), $pop549
	i32.const	$push1556=, 0
	i32.store	_gm_+448($pop1556), $12
	i32.const	$push1555=, 0
	i32.store	_gm_+452($pop1555), $7
	i32.const	$push1554=, 0
	i32.const	$push1553=, 8
	i32.add 	$push550=, $9, $pop1553
	i32.store	_gm_+456($pop1554), $pop550
	i32.const	$push1552=, 0
	i32.const	$push1551=, 0
	i32.store	_gm_+460($pop1552), $pop1551
	i32.const	$push551=, 28
	i32.add 	$0=, $9, $pop551
.LBB2_181:
	loop    	
	i32.const	$push1586=, 7
	i32.store	0($0), $pop1586
	i32.const	$push1585=, 4
	i32.add 	$push1584=, $0, $pop1585
	tee_local	$push1583=, $0=, $pop1584
	i32.lt_u	$push552=, $pop1583, $11
	br_if   	0, $pop552
	end_loop
	i32.eq  	$push553=, $9, $10
	br_if   	5, $pop553
	i32.const	$push554=, 4
	i32.add 	$push1591=, $9, $pop554
	tee_local	$push1590=, $0=, $pop1591
	i32.load	$push555=, 0($0)
	i32.const	$push556=, -2
	i32.and 	$push557=, $pop555, $pop556
	i32.store	0($pop1590), $pop557
	i32.sub 	$push1589=, $9, $10
	tee_local	$push1588=, $7=, $pop1589
	i32.store	0($9), $pop1588
	i32.const	$push1587=, 1
	i32.or  	$push558=, $7, $pop1587
	i32.store	4($10), $pop558
	block   	
	i32.const	$push560=, 255
	i32.gt_u	$push561=, $7, $pop560
	br_if   	0, $pop561
	i32.const	$push559=, 3
	i32.shr_u	$push1600=, $7, $pop559
	tee_local	$push1599=, $11=, $pop1600
	i32.const	$push1598=, 3
	i32.shl 	$push627=, $pop1599, $pop1598
	i32.const	$push628=, _gm_+40
	i32.add 	$0=, $pop627, $pop628
	i32.const	$push1597=, 0
	i32.load	$push1596=, _gm_($pop1597)
	tee_local	$push1595=, $12=, $pop1596
	i32.const	$push1594=, 1
	i32.shl 	$push1593=, $pop1594, $11
	tee_local	$push1592=, $11=, $pop1593
	i32.and 	$push629=, $pop1595, $pop1592
	i32.eqz 	$push1786=, $pop629
	br_if   	2, $pop1786
	i32.const	$push1603=, 0
	i32.load	$push630=, _gm_+16($pop1603)
	i32.load	$push1602=, 8($0)
	tee_local	$push1601=, $11=, $pop1602
	i32.le_u	$push631=, $pop630, $pop1601
	br_if   	3, $pop631
	br      	19
.LBB2_186:
	end_block
	i32.const	$0=, 0
	block   	
	i32.const	$push562=, 8
	i32.shr_u	$push1605=, $7, $pop562
	tee_local	$push1604=, $11=, $pop1605
	i32.eqz 	$push1787=, $pop1604
	br_if   	0, $pop1787
	i32.const	$0=, 31
	i32.const	$push563=, 16777215
	i32.gt_u	$push564=, $7, $pop563
	br_if   	0, $pop564
	i32.const	$push583=, 14
	i32.const	$push565=, 1048320
	i32.add 	$push566=, $11, $pop565
	i32.const	$push567=, 16
	i32.shr_u	$push568=, $pop566, $pop567
	i32.const	$push569=, 8
	i32.and 	$push1620=, $pop568, $pop569
	tee_local	$push1619=, $0=, $pop1620
	i32.shl 	$push1618=, $11, $pop1619
	tee_local	$push1617=, $11=, $pop1618
	i32.const	$push570=, 520192
	i32.add 	$push571=, $pop1617, $pop570
	i32.const	$push1616=, 16
	i32.shr_u	$push572=, $pop571, $pop1616
	i32.const	$push573=, 4
	i32.and 	$push1615=, $pop572, $pop573
	tee_local	$push1614=, $12=, $pop1615
	i32.or  	$push581=, $pop1614, $0
	i32.shl 	$push1613=, $11, $12
	tee_local	$push1612=, $0=, $pop1613
	i32.const	$push574=, 245760
	i32.add 	$push575=, $pop1612, $pop574
	i32.const	$push1611=, 16
	i32.shr_u	$push576=, $pop575, $pop1611
	i32.const	$push577=, 2
	i32.and 	$push1610=, $pop576, $pop577
	tee_local	$push1609=, $11=, $pop1610
	i32.or  	$push582=, $pop581, $pop1609
	i32.sub 	$push584=, $pop583, $pop582
	i32.shl 	$push578=, $0, $11
	i32.const	$push579=, 15
	i32.shr_u	$push580=, $pop578, $pop579
	i32.add 	$push1608=, $pop584, $pop580
	tee_local	$push1607=, $0=, $pop1608
	i32.const	$push587=, 7
	i32.add 	$push588=, $pop1607, $pop587
	i32.shr_u	$push589=, $7, $pop588
	i32.const	$push585=, 1
	i32.and 	$push590=, $pop589, $pop585
	i32.const	$push1606=, 1
	i32.shl 	$push586=, $0, $pop1606
	i32.or  	$0=, $pop590, $pop586
.LBB2_189:
	end_block
	i64.const	$push591=, 0
	i64.store	16($10):p2align=2, $pop591
	i32.const	$push592=, 28
	i32.add 	$push593=, $10, $pop592
	i32.store	0($pop593), $0
	i32.const	$push594=, 2
	i32.shl 	$push595=, $0, $pop594
	i32.const	$push596=, _gm_+304
	i32.add 	$11=, $pop595, $pop596
	i32.const	$push1626=, 0
	i32.load	$push1625=, _gm_+4($pop1626)
	tee_local	$push1624=, $12=, $pop1625
	i32.const	$push1623=, 1
	i32.shl 	$push1622=, $pop1623, $0
	tee_local	$push1621=, $9=, $pop1622
	i32.and 	$push597=, $pop1624, $pop1621
	i32.eqz 	$push1788=, $pop597
	br_if   	3, $pop1788
	i32.const	$push603=, 0
	i32.const	$push601=, 25
	i32.const	$push1627=, 1
	i32.shr_u	$push600=, $0, $pop1627
	i32.sub 	$push602=, $pop601, $pop600
	i32.const	$push598=, 31
	i32.eq  	$push599=, $0, $pop598
	i32.select	$push604=, $pop603, $pop602, $pop599
	i32.shl 	$0=, $7, $pop604
	i32.load	$12=, 0($11)
.LBB2_191:
	loop    	
	copy_local	$push1630=, $12
	tee_local	$push1629=, $11=, $pop1630
	i32.load	$push605=, 4($pop1629)
	i32.const	$push1628=, -8
	i32.and 	$push606=, $pop605, $pop1628
	i32.eq  	$push607=, $pop606, $7
	br_if   	5, $pop607
	i32.const	$push1638=, 29
	i32.shr_u	$12=, $0, $pop1638
	i32.const	$push1637=, 1
	i32.shl 	$push4=, $0, $pop1637
	copy_local	$0=, $pop4
	i32.const	$push1636=, 4
	i32.and 	$push608=, $12, $pop1636
	i32.add 	$push609=, $11, $pop608
	i32.const	$push1635=, 16
	i32.add 	$push1634=, $pop609, $pop1635
	tee_local	$push1633=, $9=, $pop1634
	i32.load	$push1632=, 0($pop1633)
	tee_local	$push1631=, $12=, $pop1632
	br_if   	0, $pop1631
	end_loop
	i32.const	$push610=, 0
	i32.load	$push611=, _gm_+16($pop610)
	i32.gt_u	$push612=, $pop611, $9
	br_if   	18, $pop612
	i32.store	0($9), $10
	i32.const	$push613=, 24
	i32.add 	$push614=, $10, $pop613
	i32.store	0($pop614), $11
	i32.store	12($10), $10
	i32.store	8($10), $10
	br      	5
.LBB2_195:
	end_block
	i32.const	$push1643=, 0
	i32.store	_gm_+24($pop1643), $11
	i32.const	$push1642=, 0
	i32.const	$push1641=, 0
	i32.load	$push800=, _gm_+12($pop1641)
	i32.add 	$push1640=, $pop800, $0
	tee_local	$push1639=, $0=, $pop1640
	i32.store	_gm_+12($pop1642), $pop1639
	i32.const	$push801=, 1
	i32.or  	$push802=, $0, $pop801
	i32.store	4($11), $pop802
	br      	13
.LBB2_196:
	end_block
	i32.const	$push1644=, 0
	i32.or  	$push632=, $12, $11
	i32.store	_gm_($pop1644), $pop632
	copy_local	$11=, $0
.LBB2_197:
	end_block
	i32.store	12($11), $10
	i32.const	$push633=, 8
	i32.add 	$push634=, $0, $pop633
	i32.store	0($pop634), $10
	i32.store	12($10), $0
	i32.store	8($10), $11
	br      	2
.LBB2_198:
	end_block
	i32.store	0($11), $10
	i32.const	$push624=, 0
	i32.or  	$push623=, $12, $9
	i32.store	_gm_+4($pop624), $pop623
	i32.const	$push625=, 24
	i32.add 	$push626=, $10, $pop625
	i32.store	0($pop626), $11
	i32.store	8($10), $10
	i32.store	12($10), $10
	br      	1
.LBB2_199:
	end_block
	i32.const	$push615=, 0
	i32.load	$push1648=, _gm_+16($pop615)
	tee_local	$push1647=, $12=, $pop1648
	i32.load	$push1646=, 8($11)
	tee_local	$push1645=, $0=, $pop1646
	i32.gt_u	$push616=, $pop1647, $pop1645
	br_if   	13, $pop616
	i32.gt_u	$push617=, $12, $11
	br_if   	13, $pop617
	i32.store	12($0), $10
	i32.const	$push618=, 8
	i32.add 	$push619=, $11, $pop618
	i32.store	0($pop619), $10
	i32.store	12($10), $11
	i32.const	$push620=, 24
	i32.add 	$push621=, $10, $pop620
	i32.const	$push622=, 0
	i32.store	0($pop621), $pop622
	i32.store	8($10), $0
.LBB2_202:
	end_block
	i32.const	$push1651=, 0
	i32.load	$push1650=, _gm_+12($pop1651)
	tee_local	$push1649=, $0=, $pop1650
	i32.le_u	$push870=, $pop1649, $6
	br_if   	0, $pop870
	i32.const	$push1660=, 0
	i32.load	$push1659=, _gm_+24($pop1660)
	tee_local	$push1658=, $10=, $pop1659
	i32.add 	$push1657=, $pop1658, $6
	tee_local	$push1656=, $11=, $pop1657
	i32.sub 	$push1655=, $0, $6
	tee_local	$push1654=, $0=, $pop1655
	i32.const	$push873=, 1
	i32.or  	$push874=, $pop1654, $pop873
	i32.store	4($pop1656), $pop874
	i32.const	$push1653=, 0
	i32.store	_gm_+12($pop1653), $0
	i32.const	$push1652=, 0
	i32.store	_gm_+24($pop1652), $11
	i32.const	$push875=, 3
	i32.or  	$push876=, $6, $pop875
	i32.store	4($10), $pop876
	i32.const	$push877=, 8
	i32.add 	$0=, $10, $pop877
	br      	11
.LBB2_204:
	end_block
	i32.call	$push871=, __errno_location@FUNCTION
	i32.const	$push872=, 12
	i32.store	0($pop871), $pop872
	i32.const	$0=, 0
	br      	10
.LBB2_205:
	end_block
	i32.const	$push795=, 0
	i32.load	$push796=, _gm_+8($pop795)
	i32.add 	$push1664=, $pop796, $0
	tee_local	$push1663=, $0=, $pop1664
	i32.const	$push797=, 1
	i32.or  	$push798=, $pop1663, $pop797
	i32.store	4($11), $pop798
	i32.const	$push1662=, 0
	i32.store	_gm_+20($pop1662), $11
	i32.const	$push1661=, 0
	i32.store	_gm_+8($pop1661), $0
	i32.add 	$push799=, $11, $0
	i32.store	0($pop799), $0
	br      	6
.LBB2_206:
	end_block
	i32.load	$4=, 24($12)
	i32.load	$push1666=, 12($12)
	tee_local	$push1665=, $7=, $pop1666
	i32.eq  	$push660=, $pop1665, $12
	br_if   	1, $pop660
	i32.load	$push1668=, 8($12)
	tee_local	$push1667=, $10=, $pop1668
	i32.gt_u	$push661=, $9, $pop1667
	br_if   	9, $pop661
	i32.load	$push662=, 12($10)
	i32.ne  	$push663=, $pop662, $12
	br_if   	9, $pop663
	i32.load	$push664=, 8($7)
	i32.ne  	$push665=, $pop664, $12
	br_if   	9, $pop665
	i32.const	$push666=, 8
	i32.add 	$push667=, $7, $pop666
	i32.store	0($pop667), $10
	i32.const	$push668=, 12
	i32.add 	$push669=, $10, $pop668
	i32.store	0($pop669), $7
	br_if   	2, $4
	br      	3
.LBB2_211:
	end_block
	i32.const	$push718=, 0
	i32.const	$push1669=, 0
	i32.load	$push719=, _gm_($pop1669)
	i32.const	$push716=, -2
	i32.rotl	$push717=, $pop716, $3
	i32.and 	$push720=, $pop719, $pop717
	i32.store	_gm_($pop718), $pop720
	br      	2
.LBB2_212:
	end_block
	block   	
	block   	
	i32.const	$push1674=, 20
	i32.add 	$push1673=, $12, $pop1674
	tee_local	$push1672=, $6=, $pop1673
	i32.load	$push1671=, 0($pop1672)
	tee_local	$push1670=, $10=, $pop1671
	br_if   	0, $pop1670
	i32.const	$push1679=, 16
	i32.add 	$push1678=, $12, $pop1679
	tee_local	$push1677=, $6=, $pop1678
	i32.load	$push1676=, 0($pop1677)
	tee_local	$push1675=, $10=, $pop1676
	i32.eqz 	$push1789=, $pop1675
	br_if   	1, $pop1789
.LBB2_214:
	end_block
	loop    	
	copy_local	$3=, $6
	copy_local	$push1686=, $10
	tee_local	$push1685=, $7=, $pop1686
	i32.const	$push1684=, 20
	i32.add 	$push1683=, $pop1685, $pop1684
	tee_local	$push1682=, $6=, $pop1683
	i32.load	$push1681=, 0($pop1682)
	tee_local	$push1680=, $10=, $pop1681
	br_if   	0, $pop1680
	i32.const	$push1689=, 16
	i32.add 	$6=, $7, $pop1689
	i32.load	$push1688=, 16($7)
	tee_local	$push1687=, $10=, $pop1688
	br_if   	0, $pop1687
	end_loop
	i32.gt_u	$push670=, $9, $3
	br_if   	8, $pop670
	i32.const	$push671=, 0
	i32.store	0($3), $pop671
	i32.eqz 	$push1790=, $4
	br_if   	2, $pop1790
	br      	1
.LBB2_218:
	end_block
	i32.const	$7=, 0
	i32.eqz 	$push1791=, $4
	br_if   	1, $pop1791
.LBB2_219:
	end_block
	block   	
	block   	
	block   	
	i32.load	$push1693=, 28($12)
	tee_local	$push1692=, $6=, $pop1693
	i32.const	$push672=, 2
	i32.shl 	$push673=, $pop1692, $pop672
	i32.const	$push674=, _gm_+304
	i32.add 	$push1691=, $pop673, $pop674
	tee_local	$push1690=, $10=, $pop1691
	i32.load	$push675=, 0($pop1690)
	i32.eq  	$push676=, $pop675, $12
	br_if   	0, $pop676
	i32.const	$push677=, 0
	i32.load	$push678=, _gm_+16($pop677)
	i32.gt_u	$push679=, $pop678, $4
	br_if   	9, $pop679
	i32.const	$push680=, 16
	i32.add 	$push681=, $4, $pop680
	i32.load	$push682=, 16($4)
	i32.ne  	$push683=, $pop682, $12
	i32.const	$push684=, 2
	i32.shl 	$push685=, $pop683, $pop684
	i32.add 	$push686=, $pop681, $pop685
	i32.store	0($pop686), $7
	br_if   	1, $7
	br      	3
.LBB2_222:
	end_block
	i32.store	0($10), $7
	i32.eqz 	$push1792=, $7
	br_if   	1, $pop1792
.LBB2_223:
	end_block
	i32.const	$push687=, 0
	i32.load	$push1695=, _gm_+16($pop687)
	tee_local	$push1694=, $6=, $pop1695
	i32.gt_u	$push688=, $pop1694, $7
	br_if   	7, $pop688
	i32.store	24($7), $4
	block   	
	i32.load	$push1697=, 16($12)
	tee_local	$push1696=, $10=, $pop1697
	i32.eqz 	$push1793=, $pop1696
	br_if   	0, $pop1793
	i32.gt_u	$push689=, $6, $10
	br_if   	8, $pop689
	i32.store	16($7), $10
	i32.store	24($10), $7
.LBB2_227:
	end_block
	i32.const	$push690=, 20
	i32.add 	$push691=, $12, $pop690
	i32.load	$push1699=, 0($pop691)
	tee_local	$push1698=, $10=, $pop1699
	i32.eqz 	$push1794=, $pop1698
	br_if   	1, $pop1794
	i32.const	$push692=, 0
	i32.load	$push693=, _gm_+16($pop692)
	i32.gt_u	$push694=, $pop693, $10
	br_if   	7, $pop694
	i32.const	$push695=, 20
	i32.add 	$push696=, $7, $pop695
	i32.store	0($pop696), $10
	i32.store	24($10), $7
	br      	1
.LBB2_230:
	end_block
	i32.const	$push699=, 0
	i32.const	$push1700=, 0
	i32.load	$push700=, _gm_+4($pop1700)
	i32.const	$push697=, -2
	i32.rotl	$push698=, $pop697, $6
	i32.and 	$push701=, $pop700, $pop698
	i32.store	_gm_+4($pop699), $pop701
.LBB2_231:
	end_block
	i32.const	$push657=, -8
	i32.and 	$push1702=, $5, $pop657
	tee_local	$push1701=, $10=, $pop1702
	i32.add 	$0=, $pop1701, $0
	i32.add 	$12=, $12, $10
.LBB2_232:
	end_block
	i32.load	$push721=, 4($12)
	i32.const	$push722=, -2
	i32.and 	$push723=, $pop721, $pop722
	i32.store	4($12), $pop723
	i32.const	$push1703=, 1
	i32.or  	$push724=, $0, $pop1703
	i32.store	4($11), $pop724
	i32.add 	$push725=, $11, $0
	i32.store	0($pop725), $0
	block   	
	block   	
	block   	
	block   	
	block   	
	i32.const	$push726=, 255
	i32.gt_u	$push727=, $0, $pop726
	br_if   	0, $pop727
	i32.const	$push1711=, 3
	i32.shr_u	$push1710=, $0, $pop1711
	tee_local	$push1709=, $10=, $pop1710
	i32.const	$push785=, 3
	i32.shl 	$push786=, $pop1709, $pop785
	i32.const	$push787=, _gm_+40
	i32.add 	$0=, $pop786, $pop787
	i32.const	$push1708=, 0
	i32.load	$push1707=, _gm_($pop1708)
	tee_local	$push1706=, $6=, $pop1707
	i32.const	$push788=, 1
	i32.shl 	$push1705=, $pop788, $10
	tee_local	$push1704=, $10=, $pop1705
	i32.and 	$push789=, $pop1706, $pop1704
	i32.eqz 	$push1795=, $pop789
	br_if   	1, $pop1795
	i32.const	$push1714=, 0
	i32.load	$push791=, _gm_+16($pop1714)
	i32.load	$push1713=, 8($0)
	tee_local	$push1712=, $10=, $pop1713
	i32.gt_u	$push792=, $pop791, $pop1712
	br_if   	9, $pop792
	i32.const	$push790=, 8
	i32.add 	$6=, $0, $pop790
	br      	2
.LBB2_236:
	end_block
	i32.const	$10=, 0
	block   	
	i32.const	$push728=, 8
	i32.shr_u	$push1716=, $0, $pop728
	tee_local	$push1715=, $6=, $pop1716
	i32.eqz 	$push1796=, $pop1715
	br_if   	0, $pop1796
	i32.const	$10=, 31
	i32.const	$push729=, 16777215
	i32.gt_u	$push730=, $0, $pop729
	br_if   	0, $pop730
	i32.const	$push749=, 14
	i32.const	$push731=, 1048320
	i32.add 	$push732=, $6, $pop731
	i32.const	$push733=, 16
	i32.shr_u	$push734=, $pop732, $pop733
	i32.const	$push735=, 8
	i32.and 	$push1731=, $pop734, $pop735
	tee_local	$push1730=, $10=, $pop1731
	i32.shl 	$push1729=, $6, $pop1730
	tee_local	$push1728=, $6=, $pop1729
	i32.const	$push736=, 520192
	i32.add 	$push737=, $pop1728, $pop736
	i32.const	$push1727=, 16
	i32.shr_u	$push738=, $pop737, $pop1727
	i32.const	$push739=, 4
	i32.and 	$push1726=, $pop738, $pop739
	tee_local	$push1725=, $12=, $pop1726
	i32.or  	$push747=, $pop1725, $10
	i32.shl 	$push1724=, $6, $12
	tee_local	$push1723=, $10=, $pop1724
	i32.const	$push740=, 245760
	i32.add 	$push741=, $pop1723, $pop740
	i32.const	$push1722=, 16
	i32.shr_u	$push742=, $pop741, $pop1722
	i32.const	$push743=, 2
	i32.and 	$push1721=, $pop742, $pop743
	tee_local	$push1720=, $6=, $pop1721
	i32.or  	$push748=, $pop747, $pop1720
	i32.sub 	$push750=, $pop749, $pop748
	i32.shl 	$push744=, $10, $6
	i32.const	$push745=, 15
	i32.shr_u	$push746=, $pop744, $pop745
	i32.add 	$push1719=, $pop750, $pop746
	tee_local	$push1718=, $10=, $pop1719
	i32.const	$push753=, 7
	i32.add 	$push754=, $pop1718, $pop753
	i32.shr_u	$push755=, $0, $pop754
	i32.const	$push751=, 1
	i32.and 	$push756=, $pop755, $pop751
	i32.const	$push1717=, 1
	i32.shl 	$push752=, $10, $pop1717
	i32.or  	$10=, $pop756, $pop752
.LBB2_239:
	end_block
	i32.store	28($11), $10
	i64.const	$push757=, 0
	i64.store	16($11):p2align=2, $pop757
	i32.const	$push758=, 2
	i32.shl 	$push759=, $10, $pop758
	i32.const	$push760=, _gm_+304
	i32.add 	$6=, $pop759, $pop760
	i32.const	$push1737=, 0
	i32.load	$push1736=, _gm_+4($pop1737)
	tee_local	$push1735=, $12=, $pop1736
	i32.const	$push1734=, 1
	i32.shl 	$push1733=, $pop1734, $10
	tee_local	$push1732=, $9=, $pop1733
	i32.and 	$push761=, $pop1735, $pop1732
	i32.eqz 	$push1797=, $pop761
	br_if   	2, $pop1797
	i32.const	$push767=, 0
	i32.const	$push765=, 25
	i32.const	$push1738=, 1
	i32.shr_u	$push764=, $10, $pop1738
	i32.sub 	$push766=, $pop765, $pop764
	i32.const	$push762=, 31
	i32.eq  	$push763=, $10, $pop762
	i32.select	$push768=, $pop767, $pop766, $pop763
	i32.shl 	$10=, $0, $pop768
	i32.load	$12=, 0($6)
.LBB2_241:
	loop    	
	copy_local	$push1741=, $12
	tee_local	$push1740=, $6=, $pop1741
	i32.load	$push769=, 4($pop1740)
	i32.const	$push1739=, -8
	i32.and 	$push770=, $pop769, $pop1739
	i32.eq  	$push771=, $pop770, $0
	br_if   	4, $pop771
	i32.const	$push1749=, 29
	i32.shr_u	$12=, $10, $pop1749
	i32.const	$push1748=, 1
	i32.shl 	$push3=, $10, $pop1748
	copy_local	$10=, $pop3
	i32.const	$push1747=, 4
	i32.and 	$push772=, $12, $pop1747
	i32.add 	$push773=, $6, $pop772
	i32.const	$push1746=, 16
	i32.add 	$push1745=, $pop773, $pop1746
	tee_local	$push1744=, $9=, $pop1745
	i32.load	$push1743=, 0($pop1744)
	tee_local	$push1742=, $12=, $pop1743
	br_if   	0, $pop1742
	end_loop
	i32.const	$push774=, 0
	i32.load	$push775=, _gm_+16($pop774)
	i32.gt_u	$push776=, $pop775, $9
	br_if   	8, $pop776
	i32.store	0($9), $11
	i32.store	24($11), $6
	i32.store	12($11), $11
	i32.store	8($11), $11
	br      	4
.LBB2_245:
	end_block
	i32.const	$push1750=, 0
	i32.or  	$push793=, $6, $10
	i32.store	_gm_($pop1750), $pop793
	i32.const	$push794=, 8
	i32.add 	$6=, $0, $pop794
	copy_local	$10=, $0
.LBB2_246:
	end_block
	i32.store	12($10), $11
	i32.store	0($6), $11
	i32.store	12($11), $0
	i32.store	8($11), $10
	br      	2
.LBB2_247:
	end_block
	i32.store	0($6), $11
	i32.const	$push784=, 0
	i32.or  	$push783=, $12, $9
	i32.store	_gm_+4($pop784), $pop783
	i32.store	24($11), $6
	i32.store	8($11), $11
	i32.store	12($11), $11
	br      	1
.LBB2_248:
	end_block
	i32.const	$push777=, 0
	i32.load	$push1754=, _gm_+16($pop777)
	tee_local	$push1753=, $10=, $pop1754
	i32.load	$push1752=, 8($6)
	tee_local	$push1751=, $0=, $pop1752
	i32.gt_u	$push778=, $pop1753, $pop1751
	br_if   	4, $pop778
	i32.gt_u	$push779=, $10, $6
	br_if   	4, $pop779
	i32.store	12($0), $11
	i32.const	$push780=, 8
	i32.add 	$push781=, $6, $pop780
	i32.store	0($pop781), $11
	i32.const	$push782=, 0
	i32.store	24($11), $pop782
	i32.store	12($11), $6
	i32.store	8($11), $0
.LBB2_251:
	end_block
	i32.const	$push803=, 8
	i32.add 	$0=, $8, $pop803
	br      	2
.LBB2_252:
	end_block
	block   	
	block   	
	block   	
	i32.load	$push1235=, 28($12)
	tee_local	$push1234=, $10=, $pop1235
	i32.const	$push114=, 2
	i32.shl 	$push115=, $pop1234, $pop114
	i32.const	$push116=, _gm_+304
	i32.add 	$push1233=, $pop115, $pop116
	tee_local	$push1232=, $0=, $pop1233
	i32.load	$push117=, 0($pop1232)
	i32.eq  	$push118=, $12, $pop117
	br_if   	0, $pop118
	i32.const	$push119=, 0
	i32.load	$push120=, _gm_+16($pop119)
	i32.gt_u	$push121=, $pop120, $5
	br_if   	5, $pop121
	i32.const	$push122=, 16
	i32.add 	$push123=, $5, $pop122
	i32.load	$push124=, 16($5)
	i32.ne  	$push125=, $pop124, $12
	i32.const	$push126=, 2
	i32.shl 	$push127=, $pop125, $pop126
	i32.add 	$push128=, $pop123, $pop127
	i32.store	0($pop128), $9
	br_if   	1, $9
	br      	3
.LBB2_255:
	end_block
	i32.store	0($0), $9
	i32.eqz 	$push1798=, $9
	br_if   	1, $pop1798
.LBB2_256:
	end_block
	i32.const	$push129=, 0
	i32.load	$push1240=, _gm_+16($pop129)
	tee_local	$push1239=, $10=, $pop1240
	i32.gt_u	$push130=, $pop1239, $9
	br_if   	3, $pop130
	i32.store	24($9), $5
	block   	
	i32.load	$push1242=, 16($12)
	tee_local	$push1241=, $0=, $pop1242
	i32.eqz 	$push1799=, $pop1241
	br_if   	0, $pop1799
	i32.gt_u	$push131=, $10, $0
	br_if   	4, $pop131
	i32.store	16($9), $0
	i32.store	24($0), $9
.LBB2_260:
	end_block
	i32.const	$push132=, 20
	i32.add 	$push133=, $12, $pop132
	i32.load	$push1244=, 0($pop133)
	tee_local	$push1243=, $0=, $pop1244
	i32.eqz 	$push1800=, $pop1243
	br_if   	1, $pop1800
	i32.const	$push134=, 0
	i32.load	$push135=, _gm_+16($pop134)
	i32.gt_u	$push136=, $pop135, $0
	br_if   	3, $pop136
	i32.const	$push137=, 20
	i32.add 	$push138=, $9, $pop137
	i32.store	0($pop138), $0
	i32.store	24($0), $9
	br      	1
.LBB2_263:
	end_block
	i32.const	$push141=, 0
	i32.const	$push139=, -2
	i32.rotl	$push140=, $pop139, $10
	i32.and 	$push1282=, $3, $pop140
	tee_local	$push1281=, $3=, $pop1282
	i32.store	_gm_+4($pop141), $pop1281
.LBB2_264:
	end_block
	block   	
	block   	
	i32.const	$push142=, 15
	i32.gt_u	$push143=, $11, $pop142
	br_if   	0, $pop143
	i32.add 	$push1286=, $11, $6
	tee_local	$push1285=, $0=, $pop1286
	i32.const	$push214=, 3
	i32.or  	$push215=, $pop1285, $pop214
	i32.store	4($12), $pop215
	i32.add 	$push1284=, $12, $0
	tee_local	$push1283=, $0=, $pop1284
	i32.load	$push216=, 4($0)
	i32.const	$push217=, 1
	i32.or  	$push218=, $pop216, $pop217
	i32.store	4($pop1283), $pop218
	br      	1
.LBB2_266:
	end_block
	i32.const	$push1288=, 3
	i32.or  	$push144=, $6, $pop1288
	i32.store	4($12), $pop144
	i32.const	$push1287=, 1
	i32.or  	$push145=, $11, $pop1287
	i32.store	4($8), $pop145
	i32.add 	$push146=, $8, $11
	i32.store	0($pop146), $11
	block   	
	block   	
	block   	
	block   	
	block   	
	i32.const	$push147=, 255
	i32.gt_u	$push148=, $11, $pop147
	br_if   	0, $pop148
	i32.const	$push1298=, 3
	i32.shr_u	$push1297=, $11, $pop1298
	tee_local	$push1296=, $10=, $pop1297
	i32.const	$push1295=, 3
	i32.shl 	$push206=, $pop1296, $pop1295
	i32.const	$push207=, _gm_+40
	i32.add 	$0=, $pop206, $pop207
	i32.const	$push1294=, 0
	i32.load	$push1293=, _gm_($pop1294)
	tee_local	$push1292=, $11=, $pop1293
	i32.const	$push1291=, 1
	i32.shl 	$push1290=, $pop1291, $10
	tee_local	$push1289=, $10=, $pop1290
	i32.and 	$push208=, $pop1292, $pop1289
	i32.eqz 	$push1801=, $pop208
	br_if   	1, $pop1801
	i32.const	$push1301=, 0
	i32.load	$push210=, _gm_+16($pop1301)
	i32.load	$push1300=, 8($0)
	tee_local	$push1299=, $10=, $pop1300
	i32.gt_u	$push211=, $pop210, $pop1299
	br_if   	7, $pop211
	i32.const	$push209=, 8
	i32.add 	$11=, $0, $pop209
	br      	2
.LBB2_270:
	end_block
	i32.const	$push149=, 8
	i32.shr_u	$push1303=, $11, $pop149
	tee_local	$push1302=, $10=, $pop1303
	i32.eqz 	$push1802=, $pop1302
	br_if   	2, $pop1802
	i32.const	$0=, 31
	i32.const	$push150=, 16777215
	i32.gt_u	$push151=, $11, $pop150
	br_if   	3, $pop151
	i32.const	$push170=, 14
	i32.const	$push152=, 1048320
	i32.add 	$push153=, $10, $pop152
	i32.const	$push154=, 16
	i32.shr_u	$push155=, $pop153, $pop154
	i32.const	$push156=, 8
	i32.and 	$push1318=, $pop155, $pop156
	tee_local	$push1317=, $0=, $pop1318
	i32.shl 	$push1316=, $10, $pop1317
	tee_local	$push1315=, $10=, $pop1316
	i32.const	$push157=, 520192
	i32.add 	$push158=, $pop1315, $pop157
	i32.const	$push1314=, 16
	i32.shr_u	$push159=, $pop158, $pop1314
	i32.const	$push160=, 4
	i32.and 	$push1313=, $pop159, $pop160
	tee_local	$push1312=, $6=, $pop1313
	i32.or  	$push168=, $pop1312, $0
	i32.shl 	$push1311=, $10, $6
	tee_local	$push1310=, $0=, $pop1311
	i32.const	$push161=, 245760
	i32.add 	$push162=, $pop1310, $pop161
	i32.const	$push1309=, 16
	i32.shr_u	$push163=, $pop162, $pop1309
	i32.const	$push164=, 2
	i32.and 	$push1308=, $pop163, $pop164
	tee_local	$push1307=, $10=, $pop1308
	i32.or  	$push169=, $pop168, $pop1307
	i32.sub 	$push171=, $pop170, $pop169
	i32.shl 	$push165=, $0, $10
	i32.const	$push166=, 15
	i32.shr_u	$push167=, $pop165, $pop166
	i32.add 	$push1306=, $pop171, $pop167
	tee_local	$push1305=, $0=, $pop1306
	i32.const	$push174=, 7
	i32.add 	$push175=, $pop1305, $pop174
	i32.shr_u	$push176=, $11, $pop175
	i32.const	$push172=, 1
	i32.and 	$push177=, $pop176, $pop172
	i32.const	$push1304=, 1
	i32.shl 	$push173=, $0, $pop1304
	i32.or  	$0=, $pop177, $pop173
	br      	3
.LBB2_273:
	end_block
	i32.const	$push1319=, 0
	i32.or  	$push212=, $11, $10
	i32.store	_gm_($pop1319), $pop212
	i32.const	$push213=, 8
	i32.add 	$11=, $0, $pop213
	copy_local	$10=, $0
.LBB2_274:
	end_block
	i32.store	12($10), $8
	i32.store	0($11), $8
	i32.store	12($8), $0
	i32.store	8($8), $10
	br      	2
.LBB2_275:
	end_block
	i32.const	$0=, 0
.LBB2_276:
	end_block
	i32.store	28($8), $0
	i64.const	$push178=, 0
	i64.store	16($8):p2align=2, $pop178
	i32.const	$push179=, 2
	i32.shl 	$push180=, $0, $pop179
	i32.const	$push181=, _gm_+304
	i32.add 	$10=, $pop180, $pop181
	block   	
	block   	
	i32.const	$push1322=, 1
	i32.shl 	$push1321=, $pop1322, $0
	tee_local	$push1320=, $6=, $pop1321
	i32.and 	$push182=, $3, $pop1320
	i32.eqz 	$push1803=, $pop182
	br_if   	0, $pop1803
	i32.const	$push188=, 0
	i32.const	$push186=, 25
	i32.const	$push1323=, 1
	i32.shr_u	$push185=, $0, $pop1323
	i32.sub 	$push187=, $pop186, $pop185
	i32.const	$push183=, 31
	i32.eq  	$push184=, $0, $pop183
	i32.select	$push189=, $pop188, $pop187, $pop184
	i32.shl 	$0=, $11, $pop189
	i32.load	$6=, 0($10)
.LBB2_278:
	loop    	
	copy_local	$push1326=, $6
	tee_local	$push1325=, $10=, $pop1326
	i32.load	$push190=, 4($pop1325)
	i32.const	$push1324=, -8
	i32.and 	$push191=, $pop190, $pop1324
	i32.eq  	$push192=, $pop191, $11
	br_if   	2, $pop192
	i32.const	$push1334=, 29
	i32.shr_u	$6=, $0, $pop1334
	i32.const	$push1333=, 1
	i32.shl 	$push0=, $0, $pop1333
	copy_local	$0=, $pop0
	i32.const	$push1332=, 4
	i32.and 	$push193=, $6, $pop1332
	i32.add 	$push194=, $10, $pop193
	i32.const	$push1331=, 16
	i32.add 	$push1330=, $pop194, $pop1331
	tee_local	$push1329=, $9=, $pop1330
	i32.load	$push1328=, 0($pop1329)
	tee_local	$push1327=, $6=, $pop1328
	br_if   	0, $pop1327
	end_loop
	i32.const	$push195=, 0
	i32.load	$push196=, _gm_+16($pop195)
	i32.gt_u	$push197=, $pop196, $9
	br_if   	4, $pop197
	i32.store	0($9), $8
	i32.store	24($8), $10
	i32.store	12($8), $8
	i32.store	8($8), $8
	br      	2
.LBB2_282:
	end_block
	i32.store	0($10), $8
	i32.const	$push205=, 0
	i32.or  	$push204=, $3, $6
	i32.store	_gm_+4($pop205), $pop204
	i32.store	24($8), $10
	i32.store	8($8), $8
	i32.store	12($8), $8
	br      	1
.LBB2_283:
	end_block
	i32.const	$push198=, 0
	i32.load	$push1338=, _gm_+16($pop198)
	tee_local	$push1337=, $11=, $pop1338
	i32.load	$push1336=, 8($10)
	tee_local	$push1335=, $0=, $pop1336
	i32.gt_u	$push199=, $pop1337, $pop1335
	br_if   	2, $pop199
	i32.gt_u	$push200=, $11, $10
	br_if   	2, $pop200
	i32.store	12($0), $8
	i32.const	$push201=, 8
	i32.add 	$push202=, $10, $pop201
	i32.store	0($pop202), $8
	i32.const	$push203=, 0
	i32.store	24($8), $pop203
	i32.store	12($8), $10
	i32.store	8($8), $0
.LBB2_286:
	end_block
	i32.const	$push219=, 8
	i32.add 	$0=, $12, $pop219
.LBB2_287:
	end_block
	i32.const	$push890=, 0
	i32.const	$push888=, 16
	i32.add 	$push889=, $13, $pop888
	i32.store	__stack_pointer($pop890), $pop889
	return  	$0
.LBB2_288:
	end_block
	call    	abort@FUNCTION
	unreachable
	.endfunc
.Lfunc_end2:
	.size	malloc, .Lfunc_end2-malloc

	.section	.text.free,"ax",@progbits
	.hidden	free
	.globl	free
	.type	free,@function
free:
	.param  	i32
	.local  	i32, i32, i32, i32, i32, i32, i32, i32
	block   	
	block   	
	block   	
	i32.eqz 	$push467=, $0
	br_if   	0, $pop467
	block   	
	block   	
	block   	
	block   	
	i32.const	$push1=, -8
	i32.add 	$push283=, $0, $pop1
	tee_local	$push282=, $3=, $pop283
	i32.const	$push2=, 0
	i32.load	$push281=, _gm_+16($pop2)
	tee_local	$push280=, $5=, $pop281
	i32.lt_u	$push3=, $pop282, $pop280
	br_if   	0, $pop3
	i32.const	$push4=, -4
	i32.add 	$push5=, $0, $pop4
	i32.load	$push288=, 0($pop5)
	tee_local	$push287=, $8=, $pop288
	i32.const	$push6=, 3
	i32.and 	$push286=, $pop287, $pop6
	tee_local	$push285=, $6=, $pop286
	i32.const	$push284=, 1
	i32.eq  	$push7=, $pop285, $pop284
	br_if   	0, $pop7
	i32.const	$push8=, -8
	i32.and 	$push291=, $8, $pop8
	tee_local	$push290=, $0=, $pop291
	i32.add 	$1=, $3, $pop290
	block   	
	block   	
	i32.const	$push289=, 1
	i32.and 	$push9=, $8, $pop289
	br_if   	0, $pop9
	i32.eqz 	$push468=, $6
	br_if   	6, $pop468
	i32.load	$push295=, 0($3)
	tee_local	$push294=, $8=, $pop295
	i32.sub 	$push293=, $3, $pop294
	tee_local	$push292=, $3=, $pop293
	i32.lt_u	$push10=, $pop292, $5
	br_if   	2, $pop10
	i32.add 	$0=, $8, $0
	block   	
	block   	
	block   	
	block   	
	block   	
	i32.const	$push11=, 0
	i32.load	$push12=, _gm_+20($pop11)
	i32.eq  	$push13=, $pop12, $3
	br_if   	0, $pop13
	i32.const	$push15=, 255
	i32.gt_u	$push16=, $8, $pop15
	br_if   	1, $pop16
	i32.load	$6=, 12($3)
	block   	
	i32.load	$push302=, 8($3)
	tee_local	$push301=, $7=, $pop302
	i32.const	$push14=, 3
	i32.shr_u	$push300=, $8, $pop14
	tee_local	$push299=, $4=, $pop300
	i32.const	$push298=, 3
	i32.shl 	$push59=, $pop299, $pop298
	i32.const	$push60=, _gm_+40
	i32.add 	$push297=, $pop59, $pop60
	tee_local	$push296=, $8=, $pop297
	i32.eq  	$push61=, $pop301, $pop296
	br_if   	0, $pop61
	i32.gt_u	$push62=, $5, $7
	br_if   	14, $pop62
	i32.load	$push63=, 12($7)
	i32.ne  	$push64=, $pop63, $3
	br_if   	14, $pop64
.LBB3_11:
	end_block
	i32.eq  	$push65=, $6, $7
	br_if   	2, $pop65
	block   	
	i32.eq  	$push66=, $6, $8
	br_if   	0, $pop66
	i32.gt_u	$push67=, $5, $6
	br_if   	14, $pop67
	i32.load	$push68=, 8($6)
	i32.ne  	$push69=, $pop68, $3
	br_if   	14, $pop69
.LBB3_15:
	end_block
	i32.store	12($7), $6
	i32.const	$push70=, 8
	i32.add 	$push71=, $6, $pop70
	i32.store	0($pop71), $7
	i32.lt_u	$push81=, $3, $1
	br_if   	6, $pop81
	br      	7
.LBB3_16:
	end_block
	i32.load	$push305=, 4($1)
	tee_local	$push304=, $8=, $pop305
	i32.const	$push77=, 3
	i32.and 	$push78=, $pop304, $pop77
	i32.const	$push303=, 3
	i32.ne  	$push79=, $pop78, $pop303
	br_if   	4, $pop79
	i32.const	$push272=, 4
	i32.add 	$push273=, $1, $pop272
	i32.const	$push270=, -2
	i32.and 	$push271=, $8, $pop270
	i32.store	0($pop273), $pop271
	i32.const	$push274=, 1
	i32.or  	$push275=, $0, $pop274
	i32.store	4($3), $pop275
	i32.const	$push276=, 0
	i32.store	_gm_+8($pop276), $0
	i32.add 	$push277=, $3, $0
	i32.store	0($pop277), $0
	return
.LBB3_18:
	end_block
	i32.load	$2=, 24($3)
	i32.load	$push307=, 12($3)
	tee_local	$push306=, $7=, $pop307
	i32.eq  	$push17=, $pop306, $3
	br_if   	1, $pop17
	i32.load	$push309=, 8($3)
	tee_local	$push308=, $8=, $pop309
	i32.gt_u	$push18=, $5, $pop308
	br_if   	11, $pop18
	i32.load	$push19=, 12($8)
	i32.ne  	$push20=, $pop19, $3
	br_if   	11, $pop20
	i32.load	$push21=, 8($7)
	i32.ne  	$push22=, $pop21, $3
	br_if   	11, $pop22
	i32.const	$push23=, 8
	i32.add 	$push24=, $7, $pop23
	i32.store	0($pop24), $8
	i32.const	$push25=, 12
	i32.add 	$push26=, $8, $pop25
	i32.store	0($pop26), $7
	br_if   	2, $2
	br      	3
.LBB3_23:
	end_block
	i32.const	$push74=, 0
	i32.const	$push310=, 0
	i32.load	$push75=, _gm_($pop310)
	i32.const	$push72=, -2
	i32.rotl	$push73=, $pop72, $4
	i32.and 	$push76=, $pop75, $pop73
	i32.store	_gm_($pop74), $pop76
	i32.lt_u	$push80=, $3, $1
	br_if   	3, $pop80
	br      	4
.LBB3_24:
	end_block
	block   	
	block   	
	i32.const	$push315=, 20
	i32.add 	$push314=, $3, $pop315
	tee_local	$push313=, $8=, $pop314
	i32.load	$push312=, 0($pop313)
	tee_local	$push311=, $6=, $pop312
	br_if   	0, $pop311
	i32.const	$push320=, 16
	i32.add 	$push319=, $3, $pop320
	tee_local	$push318=, $8=, $pop319
	i32.load	$push317=, 0($pop318)
	tee_local	$push316=, $6=, $pop317
	i32.eqz 	$push469=, $pop316
	br_if   	1, $pop469
.LBB3_26:
	end_block
	loop    	
	copy_local	$4=, $8
	copy_local	$push327=, $6
	tee_local	$push326=, $7=, $pop327
	i32.const	$push325=, 20
	i32.add 	$push324=, $pop326, $pop325
	tee_local	$push323=, $8=, $pop324
	i32.load	$push322=, 0($pop323)
	tee_local	$push321=, $6=, $pop322
	br_if   	0, $pop321
	i32.const	$push330=, 16
	i32.add 	$8=, $7, $pop330
	i32.load	$push329=, 16($7)
	tee_local	$push328=, $6=, $pop329
	br_if   	0, $pop328
	end_loop
	i32.gt_u	$push27=, $5, $4
	br_if   	10, $pop27
	i32.const	$push28=, 0
	i32.store	0($4), $pop28
	i32.eqz 	$push470=, $2
	br_if   	2, $pop470
	br      	1
.LBB3_30:
	end_block
	i32.const	$7=, 0
	i32.eqz 	$push471=, $2
	br_if   	1, $pop471
.LBB3_31:
	end_block
	block   	
	block   	
	block   	
	i32.load	$push334=, 28($3)
	tee_local	$push333=, $6=, $pop334
	i32.const	$push29=, 2
	i32.shl 	$push30=, $pop333, $pop29
	i32.const	$push31=, _gm_+304
	i32.add 	$push332=, $pop30, $pop31
	tee_local	$push331=, $8=, $pop332
	i32.load	$push32=, 0($pop331)
	i32.eq  	$push33=, $pop32, $3
	br_if   	0, $pop33
	i32.const	$push34=, 0
	i32.load	$push35=, _gm_+16($pop34)
	i32.gt_u	$push36=, $pop35, $2
	br_if   	11, $pop36
	i32.const	$push37=, 16
	i32.add 	$push38=, $2, $pop37
	i32.load	$push39=, 16($2)
	i32.ne  	$push40=, $pop39, $3
	i32.const	$push41=, 2
	i32.shl 	$push42=, $pop40, $pop41
	i32.add 	$push43=, $pop38, $pop42
	i32.store	0($pop43), $7
	br_if   	1, $7
	br      	3
.LBB3_34:
	end_block
	i32.store	0($8), $7
	i32.eqz 	$push472=, $7
	br_if   	1, $pop472
.LBB3_35:
	end_block
	i32.const	$push44=, 0
	i32.load	$push336=, _gm_+16($pop44)
	tee_local	$push335=, $6=, $pop336
	i32.gt_u	$push45=, $pop335, $7
	br_if   	9, $pop45
	i32.store	24($7), $2
	block   	
	i32.load	$push338=, 16($3)
	tee_local	$push337=, $8=, $pop338
	i32.eqz 	$push473=, $pop337
	br_if   	0, $pop473
	i32.gt_u	$push46=, $6, $8
	br_if   	10, $pop46
	i32.store	16($7), $8
	i32.store	24($8), $7
.LBB3_39:
	end_block
	i32.const	$push47=, 20
	i32.add 	$push48=, $3, $pop47
	i32.load	$push340=, 0($pop48)
	tee_local	$push339=, $8=, $pop340
	i32.eqz 	$push474=, $pop339
	br_if   	1, $pop474
	i32.const	$push49=, 0
	i32.load	$push50=, _gm_+16($pop49)
	i32.gt_u	$push51=, $pop50, $8
	br_if   	9, $pop51
	i32.const	$push52=, 20
	i32.add 	$push53=, $7, $pop52
	i32.store	0($pop53), $8
	i32.store	24($8), $7
	i32.lt_u	$push82=, $3, $1
	br_if   	2, $pop82
	br      	3
.LBB3_42:
	end_block
	i32.const	$push56=, 0
	i32.const	$push341=, 0
	i32.load	$push57=, _gm_+4($pop341)
	i32.const	$push54=, -2
	i32.rotl	$push55=, $pop54, $6
	i32.and 	$push58=, $pop57, $pop55
	i32.store	_gm_+4($pop56), $pop58
.LBB3_43:
	end_block
	i32.ge_u	$push83=, $3, $1
	br_if   	1, $pop83
.LBB3_44:
	end_block
	i32.load	$push343=, 4($1)
	tee_local	$push342=, $4=, $pop343
	i32.const	$push84=, 1
	i32.and 	$push85=, $pop342, $pop84
	i32.eqz 	$push475=, $pop85
	br_if   	0, $pop475
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	i32.const	$push86=, 2
	i32.and 	$push87=, $4, $pop86
	br_if   	0, $pop87
	i32.const	$push344=, 0
	i32.load	$push95=, _gm_+24($pop344)
	i32.eq  	$push96=, $pop95, $1
	br_if   	1, $pop96
	i32.const	$push345=, 0
	i32.load	$push97=, _gm_+20($pop345)
	i32.eq  	$push98=, $pop97, $1
	br_if   	2, $pop98
	i32.const	$push102=, 255
	i32.gt_u	$push103=, $4, $pop102
	br_if   	3, $pop103
	i32.load	$8=, 12($1)
	block   	
	i32.load	$push352=, 8($1)
	tee_local	$push351=, $6=, $pop352
	i32.const	$push99=, 3
	i32.shr_u	$push350=, $4, $pop99
	tee_local	$push349=, $5=, $pop350
	i32.const	$push348=, 3
	i32.shl 	$push148=, $pop349, $pop348
	i32.const	$push149=, _gm_+40
	i32.add 	$push347=, $pop148, $pop149
	tee_local	$push346=, $7=, $pop347
	i32.eq  	$push150=, $pop351, $pop346
	br_if   	0, $pop150
	i32.const	$push151=, 0
	i32.load	$push152=, _gm_+16($pop151)
	i32.gt_u	$push153=, $pop152, $6
	br_if   	13, $pop153
	i32.load	$push154=, 12($6)
	i32.ne  	$push155=, $pop154, $1
	br_if   	13, $pop155
.LBB3_52:
	end_block
	i32.eq  	$push156=, $8, $6
	br_if   	4, $pop156
	block   	
	i32.eq  	$push157=, $8, $7
	br_if   	0, $pop157
	i32.const	$push158=, 0
	i32.load	$push159=, _gm_+16($pop158)
	i32.gt_u	$push160=, $pop159, $8
	br_if   	13, $pop160
	i32.load	$push161=, 8($8)
	i32.ne  	$push162=, $pop161, $1
	br_if   	13, $pop162
.LBB3_56:
	end_block
	i32.store	12($6), $8
	i32.const	$push163=, 8
	i32.add 	$push164=, $8, $pop163
	i32.store	0($pop164), $6
	br      	8
.LBB3_57:
	end_block
	i32.const	$push90=, 4
	i32.add 	$push91=, $1, $pop90
	i32.const	$push88=, -2
	i32.and 	$push89=, $4, $pop88
	i32.store	0($pop91), $pop89
	i32.add 	$push92=, $3, $0
	i32.store	0($pop92), $0
	i32.const	$push93=, 1
	i32.or  	$push94=, $0, $pop93
	i32.store	4($3), $pop94
	br      	8
.LBB3_58:
	end_block
	i32.const	$push404=, 0
	i32.store	_gm_+24($pop404), $3
	i32.const	$push403=, 0
	i32.const	$push402=, 0
	i32.load	$push262=, _gm_+12($pop402)
	i32.add 	$push401=, $pop262, $0
	tee_local	$push400=, $0=, $pop401
	i32.store	_gm_+12($pop403), $pop400
	i32.const	$push263=, 1
	i32.or  	$push264=, $0, $pop263
	i32.store	4($3), $pop264
	block   	
	i32.const	$push399=, 0
	i32.load	$push265=, _gm_+20($pop399)
	i32.ne  	$push266=, $3, $pop265
	br_if   	0, $pop266
	i32.const	$push267=, 0
	i32.const	$push407=, 0
	i32.store	_gm_+8($pop267), $pop407
	i32.const	$push406=, 0
	i32.const	$push405=, 0
	i32.store	_gm_+20($pop406), $pop405
.LBB3_60:
	end_block
	i32.const	$push408=, 0
	i32.load	$push268=, _gm_+28($pop408)
	i32.le_u	$push269=, $0, $pop268
	br_if   	8, $pop269
	i32.const	$push409=, 0
	i32.call	$drop=, sys_trim@FUNCTION, $pop409
	return
.LBB3_62:
	end_block
	i32.const	$push257=, 0
	i32.store	_gm_+20($pop257), $3
	i32.const	$push413=, 0
	i32.const	$push412=, 0
	i32.load	$push258=, _gm_+8($pop412)
	i32.add 	$push411=, $pop258, $0
	tee_local	$push410=, $0=, $pop411
	i32.store	_gm_+8($pop413), $pop410
	i32.const	$push259=, 1
	i32.or  	$push260=, $0, $pop259
	i32.store	4($3), $pop260
	i32.add 	$push261=, $3, $0
	i32.store	0($pop261), $0
	return
.LBB3_63:
	end_block
	i32.load	$2=, 24($1)
	i32.load	$push426=, 12($1)
	tee_local	$push425=, $7=, $pop426
	i32.eq  	$push104=, $pop425, $1
	br_if   	1, $pop104
	i32.const	$push105=, 0
	i32.load	$push106=, _gm_+16($pop105)
	i32.load	$push428=, 8($1)
	tee_local	$push427=, $8=, $pop428
	i32.gt_u	$push107=, $pop106, $pop427
	br_if   	8, $pop107
	i32.load	$push108=, 12($8)
	i32.ne  	$push109=, $pop108, $1
	br_if   	8, $pop109
	i32.load	$push110=, 8($7)
	i32.ne  	$push111=, $pop110, $1
	br_if   	8, $pop111
	i32.const	$push112=, 8
	i32.add 	$push113=, $7, $pop112
	i32.store	0($pop113), $8
	i32.const	$push114=, 12
	i32.add 	$push115=, $8, $pop114
	i32.store	0($pop115), $7
	br_if   	3, $2
	br      	4
.LBB3_68:
	end_block
	i32.const	$push167=, 0
	i32.const	$push429=, 0
	i32.load	$push168=, _gm_($pop429)
	i32.const	$push165=, -2
	i32.rotl	$push166=, $pop165, $5
	i32.and 	$push169=, $pop168, $pop166
	i32.store	_gm_($pop167), $pop169
	br      	3
.LBB3_69:
	end_block
	block   	
	block   	
	i32.const	$push434=, 20
	i32.add 	$push433=, $1, $pop434
	tee_local	$push432=, $6=, $pop433
	i32.load	$push431=, 0($pop432)
	tee_local	$push430=, $8=, $pop431
	br_if   	0, $pop430
	i32.const	$push439=, 16
	i32.add 	$push438=, $1, $pop439
	tee_local	$push437=, $6=, $pop438
	i32.load	$push436=, 0($pop437)
	tee_local	$push435=, $8=, $pop436
	i32.eqz 	$push476=, $pop435
	br_if   	1, $pop476
.LBB3_71:
	end_block
	loop    	
	copy_local	$5=, $6
	copy_local	$push446=, $8
	tee_local	$push445=, $7=, $pop446
	i32.const	$push444=, 20
	i32.add 	$push443=, $pop445, $pop444
	tee_local	$push442=, $6=, $pop443
	i32.load	$push441=, 0($pop442)
	tee_local	$push440=, $8=, $pop441
	br_if   	0, $pop440
	i32.const	$push449=, 16
	i32.add 	$6=, $7, $pop449
	i32.load	$push448=, 16($7)
	tee_local	$push447=, $8=, $pop448
	br_if   	0, $pop447
	end_loop
	i32.const	$push450=, 0
	i32.load	$push116=, _gm_+16($pop450)
	i32.gt_u	$push117=, $pop116, $5
	br_if   	7, $pop117
	i32.const	$push451=, 0
	i32.store	0($5), $pop451
	i32.eqz 	$push477=, $2
	br_if   	3, $pop477
	br      	2
.LBB3_75:
	end_block
	i32.const	$7=, 0
	br_if   	1, $2
	br      	2
.LBB3_76:
	end_block
	i32.call	$drop=, __errno_location@FUNCTION
	i32.call	$push279=, __errno_location@FUNCTION
	i32.const	$push278=, 14
	i32.store	0($pop279), $pop278
	call    	abort@FUNCTION
	unreachable
.LBB3_77:
	end_block
	block   	
	block   	
	block   	
	i32.load	$push455=, 28($1)
	tee_local	$push454=, $6=, $pop455
	i32.const	$push118=, 2
	i32.shl 	$push119=, $pop454, $pop118
	i32.const	$push120=, _gm_+304
	i32.add 	$push453=, $pop119, $pop120
	tee_local	$push452=, $8=, $pop453
	i32.load	$push121=, 0($pop452)
	i32.eq  	$push122=, $pop121, $1
	br_if   	0, $pop122
	i32.const	$push123=, 0
	i32.load	$push124=, _gm_+16($pop123)
	i32.gt_u	$push125=, $pop124, $2
	br_if   	7, $pop125
	i32.const	$push126=, 16
	i32.add 	$push127=, $2, $pop126
	i32.load	$push128=, 16($2)
	i32.ne  	$push129=, $pop128, $1
	i32.const	$push130=, 2
	i32.shl 	$push131=, $pop129, $pop130
	i32.add 	$push132=, $pop127, $pop131
	i32.store	0($pop132), $7
	br_if   	1, $7
	br      	3
.LBB3_80:
	end_block
	i32.store	0($8), $7
	i32.eqz 	$push478=, $7
	br_if   	1, $pop478
.LBB3_81:
	end_block
	i32.const	$push133=, 0
	i32.load	$push457=, _gm_+16($pop133)
	tee_local	$push456=, $6=, $pop457
	i32.gt_u	$push134=, $pop456, $7
	br_if   	5, $pop134
	i32.store	24($7), $2
	block   	
	i32.load	$push459=, 16($1)
	tee_local	$push458=, $8=, $pop459
	i32.eqz 	$push479=, $pop458
	br_if   	0, $pop479
	i32.gt_u	$push135=, $6, $8
	br_if   	6, $pop135
	i32.store	16($7), $8
	i32.store	24($8), $7
.LBB3_85:
	end_block
	i32.const	$push136=, 20
	i32.add 	$push137=, $1, $pop136
	i32.load	$push461=, 0($pop137)
	tee_local	$push460=, $8=, $pop461
	i32.eqz 	$push480=, $pop460
	br_if   	1, $pop480
	i32.const	$push138=, 0
	i32.load	$push139=, _gm_+16($pop138)
	i32.gt_u	$push140=, $pop139, $8
	br_if   	5, $pop140
	i32.const	$push141=, 20
	i32.add 	$push142=, $7, $pop141
	i32.store	0($pop142), $8
	i32.store	24($8), $7
	br      	1
.LBB3_88:
	end_block
	i32.const	$push145=, 0
	i32.const	$push462=, 0
	i32.load	$push146=, _gm_+4($pop462)
	i32.const	$push143=, -2
	i32.rotl	$push144=, $pop143, $6
	i32.and 	$push147=, $pop146, $pop144
	i32.store	_gm_+4($pop145), $pop147
.LBB3_89:
	end_block
	i32.const	$push100=, -8
	i32.and 	$push101=, $4, $pop100
	i32.add 	$push465=, $pop101, $0
	tee_local	$push464=, $0=, $pop465
	i32.add 	$push170=, $3, $pop464
	i32.store	0($pop170), $0
	i32.const	$push171=, 1
	i32.or  	$push172=, $0, $pop171
	i32.store	4($3), $pop172
	i32.const	$push463=, 0
	i32.load	$push173=, _gm_+20($pop463)
	i32.ne  	$push174=, $3, $pop173
	br_if   	0, $pop174
	i32.const	$push466=, 0
	i32.store	_gm_+8($pop466), $0
	return
.LBB3_91:
	end_block
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	i32.const	$push176=, 255
	i32.gt_u	$push177=, $0, $pop176
	br_if   	0, $pop177
	i32.const	$push175=, 3
	i32.shr_u	$push360=, $0, $pop175
	tee_local	$push359=, $8=, $pop360
	i32.const	$push358=, 3
	i32.shl 	$push248=, $pop359, $pop358
	i32.const	$push249=, _gm_+40
	i32.add 	$0=, $pop248, $pop249
	i32.const	$push357=, 0
	i32.load	$push356=, _gm_($pop357)
	tee_local	$push355=, $6=, $pop356
	i32.const	$push250=, 1
	i32.shl 	$push354=, $pop250, $8
	tee_local	$push353=, $8=, $pop354
	i32.and 	$push251=, $pop355, $pop353
	i32.eqz 	$push481=, $pop251
	br_if   	1, $pop481
	i32.const	$push363=, 0
	i32.load	$push252=, _gm_+16($pop363)
	i32.load	$push362=, 8($0)
	tee_local	$push361=, $8=, $pop362
	i32.le_u	$push253=, $pop252, $pop361
	br_if   	2, $pop253
	br      	8
.LBB3_94:
	end_block
	i32.const	$8=, 0
	block   	
	i32.const	$push178=, 8
	i32.shr_u	$push365=, $0, $pop178
	tee_local	$push364=, $6=, $pop365
	i32.eqz 	$push482=, $pop364
	br_if   	0, $pop482
	i32.const	$8=, 31
	i32.const	$push179=, 16777215
	i32.gt_u	$push180=, $0, $pop179
	br_if   	0, $pop180
	i32.const	$push199=, 14
	i32.const	$push181=, 1048320
	i32.add 	$push182=, $6, $pop181
	i32.const	$push183=, 16
	i32.shr_u	$push184=, $pop182, $pop183
	i32.const	$push185=, 8
	i32.and 	$push380=, $pop184, $pop185
	tee_local	$push379=, $8=, $pop380
	i32.shl 	$push378=, $6, $pop379
	tee_local	$push377=, $6=, $pop378
	i32.const	$push186=, 520192
	i32.add 	$push187=, $pop377, $pop186
	i32.const	$push376=, 16
	i32.shr_u	$push188=, $pop187, $pop376
	i32.const	$push189=, 4
	i32.and 	$push375=, $pop188, $pop189
	tee_local	$push374=, $7=, $pop375
	i32.or  	$push197=, $pop374, $8
	i32.shl 	$push373=, $6, $7
	tee_local	$push372=, $8=, $pop373
	i32.const	$push190=, 245760
	i32.add 	$push191=, $pop372, $pop190
	i32.const	$push371=, 16
	i32.shr_u	$push192=, $pop191, $pop371
	i32.const	$push193=, 2
	i32.and 	$push370=, $pop192, $pop193
	tee_local	$push369=, $6=, $pop370
	i32.or  	$push198=, $pop197, $pop369
	i32.sub 	$push200=, $pop199, $pop198
	i32.shl 	$push194=, $8, $6
	i32.const	$push195=, 15
	i32.shr_u	$push196=, $pop194, $pop195
	i32.add 	$push368=, $pop200, $pop196
	tee_local	$push367=, $8=, $pop368
	i32.const	$push203=, 7
	i32.add 	$push204=, $pop367, $pop203
	i32.shr_u	$push205=, $0, $pop204
	i32.const	$push201=, 1
	i32.and 	$push206=, $pop205, $pop201
	i32.const	$push366=, 1
	i32.shl 	$push202=, $8, $pop366
	i32.or  	$8=, $pop206, $pop202
.LBB3_97:
	end_block
	i64.const	$push207=, 0
	i64.store	16($3):p2align=2, $pop207
	i32.const	$push208=, 28
	i32.add 	$push209=, $3, $pop208
	i32.store	0($pop209), $8
	i32.const	$push210=, 2
	i32.shl 	$push211=, $8, $pop210
	i32.const	$push212=, _gm_+304
	i32.add 	$6=, $pop211, $pop212
	i32.const	$push386=, 0
	i32.load	$push385=, _gm_+4($pop386)
	tee_local	$push384=, $7=, $pop385
	i32.const	$push383=, 1
	i32.shl 	$push382=, $pop383, $8
	tee_local	$push381=, $1=, $pop382
	i32.and 	$push213=, $pop384, $pop381
	i32.eqz 	$push483=, $pop213
	br_if   	2, $pop483
	i32.const	$push219=, 0
	i32.const	$push217=, 25
	i32.const	$push387=, 1
	i32.shr_u	$push216=, $8, $pop387
	i32.sub 	$push218=, $pop217, $pop216
	i32.const	$push214=, 31
	i32.eq  	$push215=, $8, $pop214
	i32.select	$push220=, $pop219, $pop218, $pop215
	i32.shl 	$8=, $0, $pop220
	i32.load	$7=, 0($6)
.LBB3_99:
	loop    	
	copy_local	$push390=, $7
	tee_local	$push389=, $6=, $pop390
	i32.load	$push221=, 4($pop389)
	i32.const	$push388=, -8
	i32.and 	$push222=, $pop221, $pop388
	i32.eq  	$push223=, $pop222, $0
	br_if   	4, $pop223
	i32.const	$push398=, 29
	i32.shr_u	$7=, $8, $pop398
	i32.const	$push397=, 1
	i32.shl 	$push0=, $8, $pop397
	copy_local	$8=, $pop0
	i32.const	$push396=, 4
	i32.and 	$push224=, $7, $pop396
	i32.add 	$push225=, $6, $pop224
	i32.const	$push395=, 16
	i32.add 	$push394=, $pop225, $pop395
	tee_local	$push393=, $1=, $pop394
	i32.load	$push392=, 0($pop393)
	tee_local	$push391=, $7=, $pop392
	br_if   	0, $pop391
	end_loop
	i32.const	$push226=, 0
	i32.load	$push227=, _gm_+16($pop226)
	i32.gt_u	$push228=, $pop227, $1
	br_if   	7, $pop228
	i32.store	0($1), $3
	i32.const	$push229=, 24
	i32.add 	$push230=, $3, $pop229
	i32.store	0($pop230), $6
	i32.store	12($3), $3
	i32.store	8($3), $3
	br      	4
.LBB3_103:
	end_block
	i32.const	$push414=, 0
	i32.or  	$push254=, $6, $8
	i32.store	_gm_($pop414), $pop254
	copy_local	$8=, $0
.LBB3_104:
	end_block
	i32.store	12($8), $3
	i32.const	$push255=, 8
	i32.add 	$push256=, $0, $pop255
	i32.store	0($pop256), $3
	i32.store	12($3), $0
	i32.store	8($3), $8
	return
.LBB3_105:
	end_block
	i32.store	0($6), $3
	i32.const	$push240=, 0
	i32.or  	$push239=, $7, $1
	i32.store	_gm_+4($pop240), $pop239
	i32.const	$push241=, 24
	i32.add 	$push242=, $3, $pop241
	i32.store	0($pop242), $6
	i32.store	8($3), $3
	i32.store	12($3), $3
	br      	1
.LBB3_106:
	end_block
	i32.const	$push231=, 0
	i32.load	$push418=, _gm_+16($pop231)
	tee_local	$push417=, $8=, $pop418
	i32.load	$push416=, 8($6)
	tee_local	$push415=, $0=, $pop416
	i32.gt_u	$push232=, $pop417, $pop415
	br_if   	3, $pop232
	i32.gt_u	$push233=, $8, $6
	br_if   	3, $pop233
	i32.store	12($0), $3
	i32.const	$push234=, 8
	i32.add 	$push235=, $6, $pop234
	i32.store	0($pop235), $3
	i32.store	12($3), $6
	i32.const	$push236=, 24
	i32.add 	$push237=, $3, $pop236
	i32.const	$push238=, 0
	i32.store	0($pop237), $pop238
	i32.store	8($3), $0
.LBB3_109:
	end_block
	i32.const	$push243=, 0
	i32.const	$push421=, 0
	i32.load	$push244=, _gm_+32($pop421)
	i32.const	$push245=, -1
	i32.add 	$push420=, $pop244, $pop245
	tee_local	$push419=, $3=, $pop420
	i32.store	_gm_+32($pop243), $pop419
	i32.eqz 	$push484=, $3
	br_if   	1, $pop484
.LBB3_110:
	end_block
	return
.LBB3_111:
	end_block
	i32.const	$3=, _gm_+456
.LBB3_112:
	loop    	
	i32.load	$push424=, 0($3)
	tee_local	$push423=, $0=, $pop424
	i32.const	$push422=, 8
	i32.add 	$3=, $pop423, $pop422
	br_if   	0, $0
	end_loop
	i32.const	$push247=, 0
	i32.const	$push246=, -1
	i32.store	_gm_+32($pop247), $pop246
	return
.LBB3_114:
	end_block
	call    	abort@FUNCTION
	unreachable
	.endfunc
.Lfunc_end3:
	.size	free, .Lfunc_end3-free

	.section	.text.sys_trim,"ax",@progbits
	.type	sys_trim,@function
sys_trim:
	.param  	i32
	.result 	i32
	.local  	i32, i32, i32, i32, i32, i32, i32
	i32.const	$push68=, 0
	i32.const	$push66=, 0
	i32.load	$push65=, __stack_pointer($pop66)
	i32.const	$push67=, 16
	i32.sub 	$push76=, $pop65, $pop67
	tee_local	$push75=, $7=, $pop76
	i32.store	__stack_pointer($pop68), $pop75
	i32.const	$6=, 0
	block   	
	i32.const	$push74=, 0
	i32.load	$push0=, mparams($pop74)
	br_if   	0, $pop0
	i32.const	$push2=, 0
	i64.const	$push1=, 281474976776192
	i64.store	mparams+4($pop2):p2align=2, $pop1
	i32.const	$push82=, 0
	i64.const	$push3=, 9007203549708287
	i64.store	mparams+12($pop82):p2align=2, $pop3
	i32.const	$push81=, 0
	i32.const	$push72=, 12
	i32.add 	$push73=, $7, $pop72
	i32.const	$push4=, -16
	i32.and 	$push5=, $pop73, $pop4
	i32.const	$push6=, 1431655768
	i32.xor 	$push7=, $pop5, $pop6
	i32.store	mparams($pop81), $pop7
	i32.const	$push80=, 0
	i32.const	$push79=, 0
	i32.store	mparams+20($pop80), $pop79
	i32.const	$push78=, 0
	i32.const	$push77=, 0
	i32.store	_gm_+444($pop78), $pop77
.LBB4_2:
	end_block
	block   	
	i32.const	$push8=, -65
	i32.gt_u	$push9=, $0, $pop8
	br_if   	0, $pop9
	i32.const	$6=, 0
	i32.const	$push85=, 0
	i32.load	$push84=, _gm_+24($pop85)
	tee_local	$push83=, $1=, $pop84
	i32.eqz 	$push128=, $pop83
	br_if   	0, $pop128
	i32.const	$6=, 0
	block   	
	i32.const	$push88=, 0
	i32.load	$push87=, _gm_+12($pop88)
	tee_local	$push86=, $4=, $pop87
	i32.const	$push10=, 40
	i32.add 	$push11=, $0, $pop10
	i32.le_u	$push12=, $pop86, $pop11
	br_if   	0, $pop12
	i32.const	$push13=, -40
	i32.sub 	$push14=, $pop13, $0
	i32.add 	$push15=, $pop14, $4
	i32.const	$push16=, 0
	i32.load	$push91=, mparams+8($pop16)
	tee_local	$push90=, $2=, $pop91
	i32.add 	$push17=, $pop15, $pop90
	i32.const	$push18=, -1
	i32.add 	$push19=, $pop17, $pop18
	i32.div_u	$push20=, $pop19, $2
	i32.const	$push89=, -1
	i32.add 	$3=, $pop20, $pop89
	i32.const	$0=, _gm_+448
.LBB4_6:
	block   	
	loop    	
	block   	
	i32.load	$push93=, 0($0)
	tee_local	$push92=, $4=, $pop93
	i32.gt_u	$push21=, $pop92, $1
	br_if   	0, $pop21
	i32.load	$push22=, 4($0)
	i32.add 	$push23=, $4, $pop22
	i32.gt_u	$push24=, $pop23, $1
	br_if   	2, $pop24
.LBB4_8:
	end_block
	i32.load	$0=, 8($0)
	br      	0
.LBB4_9:
	end_loop
	end_block
	i32.load8_u	$push25=, 12($0)
	i32.const	$push26=, 8
	i32.and 	$push27=, $pop25, $pop26
	br_if   	0, $pop27
	i32.const	$push96=, 0
	i32.call	$push95=, sbrk@FUNCTION, $pop96
	tee_local	$push94=, $1=, $pop95
	i32.load	$push31=, 0($0)
	i32.const	$push28=, 4
	i32.add 	$push29=, $0, $pop28
	i32.load	$push30=, 0($pop29)
	i32.add 	$push32=, $pop31, $pop30
	i32.ne  	$push33=, $pop94, $pop32
	br_if   	0, $pop33
	i32.const	$push103=, 0
	i32.const	$push36=, -2147483648
	i32.sub 	$push37=, $pop36, $2
	i32.mul 	$push102=, $3, $2
	tee_local	$push101=, $4=, $pop102
	i32.const	$push34=, 2147483646
	i32.gt_u	$push35=, $4, $pop34
	i32.select	$push38=, $pop37, $pop101, $pop35
	i32.sub 	$push39=, $pop103, $pop38
	i32.call	$2=, sbrk@FUNCTION, $pop39
	i32.const	$push100=, 0
	i32.call	$4=, sbrk@FUNCTION, $pop100
	i32.const	$push40=, -1
	i32.eq  	$push41=, $2, $pop40
	br_if   	0, $pop41
	i32.ge_u	$push42=, $4, $1
	br_if   	0, $pop42
	i32.sub 	$push105=, $1, $4
	tee_local	$push104=, $1=, $pop105
	i32.eqz 	$push129=, $pop104
	br_if   	0, $pop129
	i32.const	$6=, 1
	i32.const	$push43=, 0
	i32.load	$push127=, _gm_+24($pop43)
	tee_local	$push126=, $4=, $pop127
	i32.const	$push48=, -8
	i32.sub 	$push49=, $pop48, $4
	i32.const	$push46=, 7
	i32.and 	$push50=, $pop49, $pop46
	i32.const	$push125=, 0
	i32.const	$push44=, 8
	i32.add 	$push45=, $4, $pop44
	i32.const	$push124=, 7
	i32.and 	$push47=, $pop45, $pop124
	i32.select	$push123=, $pop50, $pop125, $pop47
	tee_local	$push122=, $2=, $pop123
	i32.add 	$push121=, $pop126, $pop122
	tee_local	$push120=, $3=, $pop121
	i32.const	$push119=, 0
	i32.load	$push51=, _gm_+12($pop119)
	i32.sub 	$push118=, $pop51, $1
	tee_local	$push117=, $5=, $pop118
	i32.sub 	$push116=, $pop117, $2
	tee_local	$push115=, $2=, $pop116
	i32.const	$push114=, 1
	i32.or  	$push52=, $pop115, $pop114
	i32.store	4($pop120), $pop52
	i32.const	$push113=, 0
	i32.const	$push112=, 0
	i32.load	$push53=, mparams+16($pop112)
	i32.store	_gm_+28($pop113), $pop53
	i32.const	$push111=, 0
	i32.const	$push110=, 0
	i32.load	$push54=, _gm_+432($pop110)
	i32.sub 	$push55=, $pop54, $1
	i32.store	_gm_+432($pop111), $pop55
	i32.const	$push56=, 4
	i32.add 	$push109=, $0, $pop56
	tee_local	$push108=, $0=, $pop109
	i32.load	$push57=, 0($0)
	i32.sub 	$push58=, $pop57, $1
	i32.store	0($pop108), $pop58
	i32.const	$push107=, 0
	i32.store	_gm_+12($pop107), $2
	i32.const	$push106=, 0
	i32.store	_gm_+24($pop106), $3
	i32.add 	$push59=, $4, $5
	i32.const	$push60=, 40
	i32.store	4($pop59), $pop60
	br      	1
.LBB4_15:
	end_block
	i32.const	$push98=, 0
	i32.load	$push62=, _gm_+12($pop98)
	i32.const	$push97=, 0
	i32.load	$push61=, _gm_+28($pop97)
	i32.le_u	$push63=, $pop62, $pop61
	br_if   	0, $pop63
	i32.const	$6=, 0
	i32.const	$push99=, 0
	i32.const	$push64=, -1
	i32.store	_gm_+28($pop99), $pop64
.LBB4_17:
	end_block
	i32.const	$push71=, 0
	i32.const	$push69=, 16
	i32.add 	$push70=, $7, $pop69
	i32.store	__stack_pointer($pop71), $pop70
	copy_local	$push130=, $6
	.endfunc
.Lfunc_end4:
	.size	sys_trim, .Lfunc_end4-sys_trim

	.section	.text.calloc,"ax",@progbits
	.hidden	calloc
	.globl	calloc
	.type	calloc,@function
calloc:
	.param  	i32, i32
	.result 	i32
	.local  	i32
	block   	
	block   	
	block   	
	i32.eqz 	$push17=, $0
	br_if   	0, $pop17
	i32.mul 	$2=, $1, $0
	block   	
	i32.or  	$push0=, $1, $0
	i32.const	$push1=, 65536
	i32.lt_u	$push2=, $pop0, $pop1
	br_if   	0, $pop2
	i32.const	$push5=, -1
	i32.div_u	$push3=, $2, $0
	i32.eq  	$push4=, $pop3, $1
	i32.select	$2=, $2, $pop5, $pop4
.LBB5_3:
	end_block
	i32.call	$push13=, malloc@FUNCTION, $2
	tee_local	$push12=, $0=, $pop13
	br_if   	1, $pop12
	br      	2
.LBB5_4:
	end_block
	i32.const	$2=, 0
	i32.const	$push16=, 0
	i32.call	$push15=, malloc@FUNCTION, $pop16
	tee_local	$push14=, $0=, $pop15
	i32.eqz 	$push18=, $pop14
	br_if   	1, $pop18
.LBB5_5:
	end_block
	i32.const	$push6=, -4
	i32.add 	$push7=, $0, $pop6
	i32.load8_u	$push8=, 0($pop7)
	i32.const	$push9=, 3
	i32.and 	$push10=, $pop8, $pop9
	i32.eqz 	$push19=, $pop10
	br_if   	0, $pop19
	i32.const	$push11=, 0
	i32.call	$drop=, memset@FUNCTION, $0, $pop11, $2
.LBB5_7:
	end_block
	copy_local	$push20=, $0
	.endfunc
.Lfunc_end5:
	.size	calloc, .Lfunc_end5-calloc

	.section	.text.realloc,"ax",@progbits
	.hidden	realloc
	.globl	realloc
	.type	realloc,@function
realloc:
	.param  	i32, i32
	.result 	i32
	.local  	i32, i32
	block   	
	block   	
	i32.eqz 	$push38=, $0
	br_if   	0, $pop38
	i32.const	$push0=, -64
	i32.lt_u	$push1=, $1, $pop0
	br_if   	1, $pop1
	i32.call	$push22=, __errno_location@FUNCTION
	i32.const	$push23=, 12
	i32.store	0($pop22), $pop23
	i32.const	$push26=, 0
	return  	$pop26
.LBB6_3:
	end_block
	i32.call	$push27=, malloc@FUNCTION, $1
	return  	$pop27
.LBB6_4:
	end_block
	block   	
	i32.const	$push5=, -8
	i32.add 	$push9=, $0, $pop5
	i32.const	$push7=, 16
	i32.const	$push2=, 11
	i32.add 	$push4=, $1, $pop2
	i32.const	$push31=, -8
	i32.and 	$push6=, $pop4, $pop31
	i32.const	$push30=, 11
	i32.lt_u	$push3=, $1, $pop30
	i32.select	$push8=, $pop7, $pop6, $pop3
	i32.call	$push29=, try_realloc_chunk@FUNCTION, $pop9, $pop8
	tee_local	$push28=, $2=, $pop29
	i32.eqz 	$push39=, $pop28
	br_if   	0, $pop39
	i32.const	$push10=, 8
	i32.add 	$push25=, $2, $pop10
	return  	$pop25
.LBB6_6:
	end_block
	block   	
	i32.call	$push33=, malloc@FUNCTION, $1
	tee_local	$push32=, $2=, $pop33
	i32.eqz 	$push40=, $pop32
	br_if   	0, $pop40
	i32.const	$push11=, -4
	i32.add 	$push12=, $0, $pop11
	i32.load	$push37=, 0($pop12)
	tee_local	$push36=, $3=, $pop37
	i32.const	$push18=, -8
	i32.and 	$push19=, $pop36, $pop18
	i32.const	$push16=, 4
	i32.const	$push15=, 8
	i32.const	$push13=, 3
	i32.and 	$push14=, $3, $pop13
	i32.select	$push17=, $pop16, $pop15, $pop14
	i32.sub 	$push35=, $pop19, $pop17
	tee_local	$push34=, $3=, $pop35
	i32.lt_u	$push20=, $3, $1
	i32.select	$push21=, $pop34, $1, $pop20
	i32.call	$1=, memcpy@FUNCTION, $2, $0, $pop21
	call    	free@FUNCTION, $0
	return  	$1
.LBB6_8:
	end_block
	i32.const	$push24=, 0
	.endfunc
.Lfunc_end6:
	.size	realloc, .Lfunc_end6-realloc

	.section	.text.try_realloc_chunk,"ax",@progbits
	.type	try_realloc_chunk,@function
try_realloc_chunk:
	.param  	i32, i32
	.result 	i32
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32
	block   	
	block   	
	block   	
	block   	
	i32.load	$push175=, 4($0)
	tee_local	$push174=, $2=, $pop175
	i32.const	$push1=, 3
	i32.and 	$push173=, $pop174, $pop1
	tee_local	$push172=, $6=, $pop173
	i32.const	$push2=, 1
	i32.eq  	$push3=, $pop172, $pop2
	br_if   	0, $pop3
	i32.const	$push4=, 0
	i32.load	$push177=, _gm_+16($pop4)
	tee_local	$push176=, $5=, $pop177
	i32.gt_u	$push5=, $pop176, $0
	br_if   	0, $pop5
	i32.const	$push0=, -8
	i32.and 	$push181=, $2, $pop0
	tee_local	$push180=, $3=, $pop181
	i32.add 	$push179=, $0, $pop180
	tee_local	$push178=, $4=, $pop179
	i32.le_u	$push6=, $pop178, $0
	br_if   	0, $pop6
	i32.load	$push183=, 4($4)
	tee_local	$push182=, $7=, $pop183
	i32.const	$push7=, 1
	i32.and 	$push8=, $pop182, $pop7
	i32.eqz 	$push272=, $pop8
	br_if   	0, $pop272
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	i32.eqz 	$push273=, $6
	br_if   	0, $pop273
	i32.ge_u	$push9=, $3, $1
	br_if   	1, $pop9
	i32.const	$6=, 0
	i32.const	$push184=, 0
	i32.load	$push23=, _gm_+24($pop184)
	i32.eq  	$push24=, $pop23, $4
	br_if   	2, $pop24
	i32.const	$push185=, 0
	i32.load	$push25=, _gm_+20($pop185)
	i32.eq  	$push26=, $pop25, $4
	br_if   	3, $pop26
	i32.const	$6=, 0
	i32.const	$push27=, 2
	i32.and 	$push28=, $7, $pop27
	br_if   	4, $pop28
	i32.const	$push29=, -8
	i32.and 	$push30=, $7, $pop29
	i32.add 	$push187=, $pop30, $3
	tee_local	$push186=, $8=, $pop187
	i32.lt_u	$push31=, $pop186, $1
	br_if   	4, $pop31
	i32.const	$push33=, 255
	i32.gt_u	$push34=, $7, $pop33
	br_if   	6, $pop34
	i32.load	$3=, 12($4)
	block   	
	i32.load	$push194=, 8($4)
	tee_local	$push193=, $6=, $pop194
	i32.const	$push32=, 3
	i32.shr_u	$push192=, $7, $pop32
	tee_local	$push191=, $10=, $pop192
	i32.const	$push190=, 3
	i32.shl 	$push77=, $pop191, $pop190
	i32.const	$push78=, _gm_+40
	i32.add 	$push189=, $pop77, $pop78
	tee_local	$push188=, $7=, $pop189
	i32.eq  	$push79=, $pop193, $pop188
	br_if   	0, $pop79
	i32.gt_u	$push80=, $5, $6
	br_if   	13, $pop80
	i32.load	$push81=, 12($6)
	i32.ne  	$push82=, $pop81, $4
	br_if   	13, $pop82
.LBB7_14:
	end_block
	i32.eq  	$push83=, $3, $6
	br_if   	7, $pop83
	block   	
	i32.eq  	$push84=, $3, $7
	br_if   	0, $pop84
	i32.gt_u	$push85=, $5, $3
	br_if   	13, $pop85
	i32.load	$push86=, 8($3)
	i32.ne  	$push87=, $pop86, $4
	br_if   	13, $pop87
.LBB7_18:
	end_block
	i32.store	12($6), $3
	i32.const	$push88=, 8
	i32.add 	$push89=, $3, $pop88
	i32.store	0($pop89), $6
	br      	11
.LBB7_19:
	end_block
	i32.const	$6=, 0
	i32.const	$push153=, 256
	i32.lt_u	$push154=, $1, $pop153
	br_if   	3, $pop154
	block   	
	i32.const	$push155=, 4
	i32.add 	$push156=, $1, $pop155
	i32.lt_u	$push157=, $3, $pop156
	br_if   	0, $pop157
	copy_local	$6=, $0
	i32.sub 	$push158=, $3, $1
	i32.const	$push159=, 0
	i32.load	$push160=, mparams+8($pop159)
	i32.const	$push161=, 1
	i32.shl 	$push162=, $pop160, $pop161
	i32.le_u	$push163=, $pop158, $pop162
	br_if   	4, $pop163
.LBB7_22:
	end_block
	i32.const	$push171=, 0
	return  	$pop171
.LBB7_23:
	end_block
	block   	
	i32.sub 	$push196=, $3, $1
	tee_local	$push195=, $3=, $pop196
	i32.const	$push10=, 16
	i32.lt_u	$push11=, $pop195, $pop10
	br_if   	0, $pop11
	i32.const	$push12=, 4
	i32.add 	$push13=, $0, $pop12
	i32.const	$push14=, 1
	i32.and 	$push15=, $2, $pop14
	i32.or  	$push16=, $pop15, $1
	i32.const	$push17=, 2
	i32.or  	$push18=, $pop16, $pop17
	i32.store	0($pop13), $pop18
	i32.add 	$push202=, $0, $1
	tee_local	$push201=, $1=, $pop202
	i32.const	$push19=, 3
	i32.or  	$push20=, $3, $pop19
	i32.store	4($pop201), $pop20
	i32.const	$push200=, 4
	i32.add 	$push199=, $4, $pop200
	tee_local	$push198=, $4=, $pop199
	i32.load	$push21=, 0($4)
	i32.const	$push197=, 1
	i32.or  	$push22=, $pop21, $pop197
	i32.store	0($pop198), $pop22
	call    	dispose_chunk@FUNCTION, $1, $3
.LBB7_25:
	end_block
	copy_local	$push170=, $0
	return  	$pop170
.LBB7_26:
	end_block
	i32.const	$push205=, 0
	i32.load	$push142=, _gm_+12($pop205)
	i32.add 	$push204=, $pop142, $3
	tee_local	$push203=, $4=, $pop204
	i32.le_u	$push143=, $pop203, $1
	br_if   	1, $pop143
	i32.const	$push144=, 4
	i32.add 	$push145=, $0, $pop144
	i32.const	$push146=, 1
	i32.and 	$push147=, $2, $pop146
	i32.or  	$push148=, $pop147, $1
	i32.const	$push149=, 2
	i32.or  	$push150=, $pop148, $pop149
	i32.store	0($pop145), $pop150
	i32.const	$push151=, 0
	i32.add 	$push211=, $0, $1
	tee_local	$push210=, $3=, $pop211
	i32.store	_gm_+24($pop151), $pop210
	i32.const	$push209=, 0
	i32.sub 	$push208=, $4, $1
	tee_local	$push207=, $1=, $pop208
	i32.store	_gm_+12($pop209), $pop207
	i32.const	$push206=, 1
	i32.or  	$push152=, $1, $pop206
	i32.store	4($3), $pop152
	copy_local	$push169=, $0
	return  	$pop169
.LBB7_28:
	end_block
	i32.const	$6=, 0
	i32.const	$push214=, 0
	i32.load	$push117=, _gm_+8($pop214)
	i32.add 	$push213=, $pop117, $3
	tee_local	$push212=, $4=, $pop213
	i32.ge_u	$push118=, $pop212, $1
	br_if   	1, $pop118
.LBB7_29:
	end_block
	return  	$6
.LBB7_30:
	end_block
	block   	
	block   	
	i32.sub 	$push216=, $4, $1
	tee_local	$push215=, $3=, $pop216
	i32.const	$push119=, 16
	i32.lt_u	$push120=, $pop215, $pop119
	br_if   	0, $pop120
	i32.const	$push130=, 4
	i32.add 	$push131=, $0, $pop130
	i32.const	$push132=, 1
	i32.and 	$push133=, $2, $pop132
	i32.or  	$push134=, $pop133, $1
	i32.const	$push135=, 2
	i32.or  	$push136=, $pop134, $pop135
	i32.store	0($pop131), $pop136
	i32.add 	$push221=, $0, $1
	tee_local	$push220=, $1=, $pop221
	i32.const	$push219=, 1
	i32.or  	$push137=, $3, $pop219
	i32.store	4($pop220), $pop137
	i32.add 	$push218=, $0, $4
	tee_local	$push217=, $4=, $pop218
	i32.store	0($pop217), $3
	i32.load	$push138=, 4($4)
	i32.const	$push139=, -2
	i32.and 	$push140=, $pop138, $pop139
	i32.store	4($4), $pop140
	br      	1
.LBB7_32:
	end_block
	i32.const	$push121=, 4
	i32.add 	$push122=, $0, $pop121
	i32.const	$push123=, 1
	i32.and 	$push124=, $2, $pop123
	i32.or  	$push125=, $pop124, $4
	i32.const	$push126=, 2
	i32.or  	$push127=, $pop125, $pop126
	i32.store	0($pop122), $pop127
	i32.add 	$push224=, $0, $4
	tee_local	$push223=, $1=, $pop224
	i32.load	$push128=, 4($1)
	i32.const	$push222=, 1
	i32.or  	$push129=, $pop128, $pop222
	i32.store	4($pop223), $pop129
	i32.const	$3=, 0
	i32.const	$1=, 0
.LBB7_33:
	end_block
	i32.const	$push141=, 0
	i32.store	_gm_+20($pop141), $1
	i32.const	$push225=, 0
	i32.store	_gm_+8($pop225), $3
	copy_local	$push168=, $0
	return  	$pop168
.LBB7_34:
	end_block
	i32.load	$9=, 24($4)
	i32.load	$push227=, 12($4)
	tee_local	$push226=, $7=, $pop227
	i32.eq  	$push35=, $pop226, $4
	br_if   	1, $pop35
	i32.load	$push229=, 8($4)
	tee_local	$push228=, $3=, $pop229
	i32.gt_u	$push36=, $5, $pop228
	br_if   	5, $pop36
	i32.load	$push37=, 12($3)
	i32.ne  	$push38=, $pop37, $4
	br_if   	5, $pop38
	i32.load	$push39=, 8($7)
	i32.ne  	$push40=, $pop39, $4
	br_if   	5, $pop40
	i32.const	$push41=, 8
	i32.add 	$push42=, $7, $pop41
	i32.store	0($pop42), $3
	i32.const	$push43=, 12
	i32.add 	$push44=, $3, $pop43
	i32.store	0($pop44), $7
	br_if   	3, $9
	br      	4
.LBB7_39:
	end_block
	i32.const	$push92=, 0
	i32.const	$push230=, 0
	i32.load	$push93=, _gm_($pop230)
	i32.const	$push90=, -2
	i32.rotl	$push91=, $pop90, $10
	i32.and 	$push94=, $pop93, $pop91
	i32.store	_gm_($pop92), $pop94
	br      	3
.LBB7_40:
	end_block
	block   	
	block   	
	i32.const	$push235=, 20
	i32.add 	$push234=, $4, $pop235
	tee_local	$push233=, $3=, $pop234
	i32.load	$push232=, 0($pop233)
	tee_local	$push231=, $6=, $pop232
	br_if   	0, $pop231
	i32.const	$push240=, 16
	i32.add 	$push239=, $4, $pop240
	tee_local	$push238=, $3=, $pop239
	i32.load	$push237=, 0($pop238)
	tee_local	$push236=, $6=, $pop237
	i32.eqz 	$push274=, $pop236
	br_if   	1, $pop274
.LBB7_42:
	end_block
	loop    	
	copy_local	$10=, $3
	copy_local	$push247=, $6
	tee_local	$push246=, $7=, $pop247
	i32.const	$push245=, 20
	i32.add 	$push244=, $pop246, $pop245
	tee_local	$push243=, $3=, $pop244
	i32.load	$push242=, 0($pop243)
	tee_local	$push241=, $6=, $pop242
	br_if   	0, $pop241
	i32.const	$push250=, 16
	i32.add 	$3=, $7, $pop250
	i32.load	$push249=, 16($7)
	tee_local	$push248=, $6=, $pop249
	br_if   	0, $pop248
	end_loop
	i32.gt_u	$push45=, $5, $10
	br_if   	4, $pop45
	i32.const	$push46=, 0
	i32.store	0($10), $pop46
	i32.eqz 	$push275=, $9
	br_if   	3, $pop275
	br      	2
.LBB7_46:
	end_block
	i32.const	$7=, 0
	br_if   	1, $9
	br      	2
.LBB7_47:
	end_block
	i32.call	$drop=, __errno_location@FUNCTION
	i32.call	$push165=, __errno_location@FUNCTION
	i32.const	$push164=, 14
	i32.store	0($pop165), $pop164
	br      	2
.LBB7_48:
	end_block
	block   	
	block   	
	block   	
	i32.load	$push254=, 28($4)
	tee_local	$push253=, $6=, $pop254
	i32.const	$push47=, 2
	i32.shl 	$push48=, $pop253, $pop47
	i32.const	$push49=, _gm_+304
	i32.add 	$push252=, $pop48, $pop49
	tee_local	$push251=, $3=, $pop252
	i32.load	$push50=, 0($pop251)
	i32.eq  	$push51=, $pop50, $4
	br_if   	0, $pop51
	i32.const	$push52=, 0
	i32.load	$push53=, _gm_+16($pop52)
	i32.gt_u	$push54=, $pop53, $9
	br_if   	4, $pop54
	i32.const	$push55=, 16
	i32.add 	$push56=, $9, $pop55
	i32.load	$push57=, 16($9)
	i32.ne  	$push58=, $pop57, $4
	i32.const	$push59=, 2
	i32.shl 	$push60=, $pop58, $pop59
	i32.add 	$push61=, $pop56, $pop60
	i32.store	0($pop61), $7
	br_if   	1, $7
	br      	3
.LBB7_51:
	end_block
	i32.store	0($3), $7
	i32.eqz 	$push276=, $7
	br_if   	1, $pop276
.LBB7_52:
	end_block
	i32.const	$push62=, 0
	i32.load	$push256=, _gm_+16($pop62)
	tee_local	$push255=, $6=, $pop256
	i32.gt_u	$push63=, $pop255, $7
	br_if   	2, $pop63
	i32.store	24($7), $9
	block   	
	i32.load	$push258=, 16($4)
	tee_local	$push257=, $3=, $pop258
	i32.eqz 	$push277=, $pop257
	br_if   	0, $pop277
	i32.gt_u	$push64=, $6, $3
	br_if   	3, $pop64
	i32.store	16($7), $3
	i32.store	24($3), $7
.LBB7_56:
	end_block
	i32.const	$push65=, 20
	i32.add 	$push66=, $4, $pop65
	i32.load	$push260=, 0($pop66)
	tee_local	$push259=, $4=, $pop260
	i32.eqz 	$push278=, $pop259
	br_if   	1, $pop278
	i32.const	$push67=, 0
	i32.load	$push68=, _gm_+16($pop67)
	i32.gt_u	$push69=, $pop68, $4
	br_if   	2, $pop69
	i32.const	$push70=, 20
	i32.add 	$push71=, $7, $pop70
	i32.store	0($pop71), $4
	i32.store	24($4), $7
	br      	1
.LBB7_59:
	end_block
	i32.const	$push74=, 0
	i32.const	$push261=, 0
	i32.load	$push75=, _gm_+4($pop261)
	i32.const	$push72=, -2
	i32.rotl	$push73=, $pop72, $6
	i32.and 	$push76=, $pop75, $pop73
	i32.store	_gm_+4($pop74), $pop76
.LBB7_60:
	end_block
	block   	
	i32.sub 	$push263=, $8, $1
	tee_local	$push262=, $4=, $pop263
	i32.const	$push95=, 15
	i32.gt_u	$push96=, $pop262, $pop95
	br_if   	0, $pop96
	i32.const	$push108=, 4
	i32.add 	$push109=, $0, $pop108
	i32.const	$push110=, 1
	i32.and 	$push111=, $2, $pop110
	i32.or  	$push112=, $8, $pop111
	i32.const	$push113=, 2
	i32.or  	$push114=, $pop112, $pop113
	i32.store	0($pop109), $pop114
	i32.add 	$push266=, $0, $8
	tee_local	$push265=, $1=, $pop266
	i32.load	$push115=, 4($1)
	i32.const	$push264=, 1
	i32.or  	$push116=, $pop115, $pop264
	i32.store	4($pop265), $pop116
	copy_local	$push167=, $0
	return  	$pop167
.LBB7_62:
	end_block
	i32.const	$push97=, 4
	i32.add 	$push98=, $0, $pop97
	i32.const	$push99=, 1
	i32.and 	$push100=, $2, $pop99
	i32.or  	$push101=, $pop100, $1
	i32.const	$push102=, 2
	i32.or  	$push103=, $pop101, $pop102
	i32.store	0($pop98), $pop103
	i32.add 	$push271=, $0, $1
	tee_local	$push270=, $1=, $pop271
	i32.const	$push104=, 3
	i32.or  	$push105=, $4, $pop104
	i32.store	4($pop270), $pop105
	i32.add 	$push269=, $0, $8
	tee_local	$push268=, $3=, $pop269
	i32.load	$push106=, 4($3)
	i32.const	$push267=, 1
	i32.or  	$push107=, $pop106, $pop267
	i32.store	4($pop268), $pop107
	call    	dispose_chunk@FUNCTION, $1, $4
	copy_local	$push166=, $0
	return  	$pop166
.LBB7_63:
	end_block
	call    	abort@FUNCTION
	unreachable
	.endfunc
.Lfunc_end7:
	.size	try_realloc_chunk, .Lfunc_end7-try_realloc_chunk

	.section	.text.dispose_chunk,"ax",@progbits
	.type	dispose_chunk,@function
dispose_chunk:
	.param  	i32, i32
	.local  	i32, i32, i32, i32, i32, i32, i32, i32
	i32.add 	$2=, $0, $1
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	i32.load	$push255=, 4($0)
	tee_local	$push254=, $9=, $pop255
	i32.const	$push1=, 1
	i32.and 	$push2=, $pop254, $pop1
	br_if   	0, $pop2
	i32.const	$push3=, 3
	i32.and 	$push4=, $9, $pop3
	i32.eqz 	$push427=, $pop4
	br_if   	1, $pop427
	i32.load	$push262=, 0($0)
	tee_local	$push261=, $9=, $pop262
	i32.sub 	$push260=, $0, $pop261
	tee_local	$push259=, $0=, $pop260
	i32.const	$push258=, 0
	i32.load	$push257=, _gm_+16($pop258)
	tee_local	$push256=, $5=, $pop257
	i32.lt_u	$push5=, $pop259, $pop256
	br_if   	11, $pop5
	i32.add 	$1=, $9, $1
	block   	
	block   	
	block   	
	block   	
	block   	
	i32.const	$push263=, 0
	i32.load	$push6=, _gm_+20($pop263)
	i32.eq  	$push7=, $pop6, $0
	br_if   	0, $pop7
	i32.const	$push9=, 255
	i32.gt_u	$push10=, $9, $pop9
	br_if   	1, $pop10
	i32.load	$7=, 12($0)
	block   	
	i32.load	$push270=, 8($0)
	tee_local	$push269=, $8=, $pop270
	i32.const	$push8=, 3
	i32.shr_u	$push268=, $9, $pop8
	tee_local	$push267=, $3=, $pop268
	i32.const	$push266=, 3
	i32.shl 	$push53=, $pop267, $pop266
	i32.const	$push54=, _gm_+40
	i32.add 	$push265=, $pop53, $pop54
	tee_local	$push264=, $9=, $pop265
	i32.eq  	$push55=, $pop269, $pop264
	br_if   	0, $pop55
	i32.gt_u	$push56=, $5, $8
	br_if   	17, $pop56
	i32.load	$push57=, 12($8)
	i32.ne  	$push58=, $pop57, $0
	br_if   	17, $pop58
.LBB8_8:
	end_block
	i32.eq  	$push59=, $7, $8
	br_if   	2, $pop59
	block   	
	i32.eq  	$push60=, $7, $9
	br_if   	0, $pop60
	i32.gt_u	$push61=, $5, $7
	br_if   	17, $pop61
	i32.load	$push62=, 8($7)
	i32.ne  	$push63=, $pop62, $0
	br_if   	17, $pop63
.LBB8_12:
	end_block
	i32.store	12($8), $7
	i32.const	$push64=, 8
	i32.add 	$push65=, $7, $pop64
	i32.store	0($pop65), $8
	br      	5
.LBB8_13:
	end_block
	i32.load	$push273=, 4($2)
	tee_local	$push272=, $9=, $pop273
	i32.const	$push71=, 3
	i32.and 	$push72=, $pop272, $pop71
	i32.const	$push271=, 3
	i32.ne  	$push73=, $pop72, $pop271
	br_if   	4, $pop73
	i32.const	$push249=, 4
	i32.add 	$push250=, $2, $pop249
	i32.const	$push247=, -2
	i32.and 	$push248=, $9, $pop247
	i32.store	0($pop250), $pop248
	i32.const	$push251=, 1
	i32.or  	$push252=, $1, $pop251
	i32.store	4($0), $pop252
	i32.const	$push253=, 0
	i32.store	_gm_+8($pop253), $1
	i32.store	0($2), $1
	return
.LBB8_15:
	end_block
	i32.load	$4=, 24($0)
	i32.load	$push275=, 12($0)
	tee_local	$push274=, $8=, $pop275
	i32.eq  	$push11=, $pop274, $0
	br_if   	1, $pop11
	i32.load	$push277=, 8($0)
	tee_local	$push276=, $9=, $pop277
	i32.gt_u	$push12=, $5, $pop276
	br_if   	14, $pop12
	i32.load	$push13=, 12($9)
	i32.ne  	$push14=, $pop13, $0
	br_if   	14, $pop14
	i32.load	$push15=, 8($8)
	i32.ne  	$push16=, $pop15, $0
	br_if   	14, $pop16
	i32.const	$push17=, 8
	i32.add 	$push18=, $8, $pop17
	i32.store	0($pop18), $9
	i32.const	$push19=, 12
	i32.add 	$push20=, $9, $pop19
	i32.store	0($pop20), $8
	br_if   	2, $4
	br      	3
.LBB8_20:
	end_block
	i32.const	$push68=, 0
	i32.const	$push278=, 0
	i32.load	$push69=, _gm_($pop278)
	i32.const	$push66=, -2
	i32.rotl	$push67=, $pop66, $3
	i32.and 	$push70=, $pop69, $pop67
	i32.store	_gm_($pop68), $pop70
	br      	2
.LBB8_21:
	end_block
	block   	
	block   	
	i32.const	$push283=, 20
	i32.add 	$push282=, $0, $pop283
	tee_local	$push281=, $9=, $pop282
	i32.load	$push280=, 0($pop281)
	tee_local	$push279=, $7=, $pop280
	br_if   	0, $pop279
	i32.const	$push288=, 16
	i32.add 	$push287=, $0, $pop288
	tee_local	$push286=, $9=, $pop287
	i32.load	$push285=, 0($pop286)
	tee_local	$push284=, $7=, $pop285
	i32.eqz 	$push428=, $pop284
	br_if   	1, $pop428
.LBB8_23:
	end_block
	loop    	
	copy_local	$3=, $9
	copy_local	$push295=, $7
	tee_local	$push294=, $8=, $pop295
	i32.const	$push293=, 20
	i32.add 	$push292=, $pop294, $pop293
	tee_local	$push291=, $9=, $pop292
	i32.load	$push290=, 0($pop291)
	tee_local	$push289=, $7=, $pop290
	br_if   	0, $pop289
	i32.const	$push298=, 16
	i32.add 	$9=, $8, $pop298
	i32.load	$push297=, 16($8)
	tee_local	$push296=, $7=, $pop297
	br_if   	0, $pop296
	end_loop
	i32.gt_u	$push21=, $5, $3
	br_if   	13, $pop21
	i32.const	$push22=, 0
	i32.store	0($3), $pop22
	i32.eqz 	$push429=, $4
	br_if   	2, $pop429
	br      	1
.LBB8_27:
	end_block
	i32.const	$8=, 0
	i32.eqz 	$push430=, $4
	br_if   	1, $pop430
.LBB8_28:
	end_block
	block   	
	block   	
	block   	
	i32.load	$push302=, 28($0)
	tee_local	$push301=, $7=, $pop302
	i32.const	$push23=, 2
	i32.shl 	$push24=, $pop301, $pop23
	i32.const	$push25=, _gm_+304
	i32.add 	$push300=, $pop24, $pop25
	tee_local	$push299=, $9=, $pop300
	i32.load	$push26=, 0($pop299)
	i32.eq  	$push27=, $pop26, $0
	br_if   	0, $pop27
	i32.const	$push28=, 0
	i32.load	$push29=, _gm_+16($pop28)
	i32.gt_u	$push30=, $pop29, $4
	br_if   	14, $pop30
	i32.const	$push31=, 16
	i32.add 	$push32=, $4, $pop31
	i32.load	$push33=, 16($4)
	i32.ne  	$push34=, $pop33, $0
	i32.const	$push35=, 2
	i32.shl 	$push36=, $pop34, $pop35
	i32.add 	$push37=, $pop32, $pop36
	i32.store	0($pop37), $8
	br_if   	1, $8
	br      	3
.LBB8_31:
	end_block
	i32.store	0($9), $8
	i32.eqz 	$push431=, $8
	br_if   	1, $pop431
.LBB8_32:
	end_block
	i32.const	$push38=, 0
	i32.load	$push304=, _gm_+16($pop38)
	tee_local	$push303=, $7=, $pop304
	i32.gt_u	$push39=, $pop303, $8
	br_if   	12, $pop39
	i32.store	24($8), $4
	block   	
	i32.load	$push306=, 16($0)
	tee_local	$push305=, $9=, $pop306
	i32.eqz 	$push432=, $pop305
	br_if   	0, $pop432
	i32.gt_u	$push40=, $7, $9
	br_if   	13, $pop40
	i32.store	16($8), $9
	i32.store	24($9), $8
.LBB8_36:
	end_block
	i32.const	$push41=, 20
	i32.add 	$push42=, $0, $pop41
	i32.load	$push308=, 0($pop42)
	tee_local	$push307=, $9=, $pop308
	i32.eqz 	$push433=, $pop307
	br_if   	1, $pop433
	i32.const	$push43=, 0
	i32.load	$push44=, _gm_+16($pop43)
	i32.gt_u	$push45=, $pop44, $9
	br_if   	12, $pop45
	i32.const	$push46=, 20
	i32.add 	$push47=, $8, $pop46
	i32.store	0($pop47), $9
	i32.store	24($9), $8
	br      	1
.LBB8_39:
	end_block
	i32.const	$push50=, 0
	i32.const	$push309=, 0
	i32.load	$push51=, _gm_+4($pop309)
	i32.const	$push48=, -2
	i32.rotl	$push49=, $pop48, $7
	i32.and 	$push52=, $pop51, $pop49
	i32.store	_gm_+4($pop50), $pop52
.LBB8_40:
	end_block
	i32.const	$push74=, 0
	i32.load	$push311=, _gm_+16($pop74)
	tee_local	$push310=, $4=, $pop311
	i32.lt_u	$push75=, $2, $pop310
	br_if   	10, $pop75
	block   	
	block   	
	i32.load	$push313=, 4($2)
	tee_local	$push312=, $5=, $pop313
	i32.const	$push76=, 2
	i32.and 	$push77=, $pop312, $pop76
	br_if   	0, $pop77
	i32.const	$push314=, 0
	i32.load	$push85=, _gm_+24($pop314)
	i32.eq  	$push86=, $pop85, $2
	br_if   	1, $pop86
	i32.const	$push315=, 0
	i32.load	$push87=, _gm_+20($pop315)
	i32.eq  	$push88=, $pop87, $2
	br_if   	3, $pop88
	i32.const	$push92=, 255
	i32.gt_u	$push93=, $5, $pop92
	br_if   	4, $pop93
	i32.load	$9=, 12($2)
	block   	
	i32.load	$push322=, 8($2)
	tee_local	$push321=, $7=, $pop322
	i32.const	$push89=, 3
	i32.shr_u	$push320=, $5, $pop89
	tee_local	$push319=, $3=, $pop320
	i32.const	$push318=, 3
	i32.shl 	$push136=, $pop319, $pop318
	i32.const	$push137=, _gm_+40
	i32.add 	$push317=, $pop136, $pop137
	tee_local	$push316=, $8=, $pop317
	i32.eq  	$push138=, $pop321, $pop316
	br_if   	0, $pop138
	i32.gt_u	$push139=, $4, $7
	br_if   	13, $pop139
	i32.load	$push140=, 12($7)
	i32.ne  	$push141=, $pop140, $2
	br_if   	13, $pop141
.LBB8_48:
	end_block
	i32.eq  	$push142=, $9, $7
	br_if   	7, $pop142
	block   	
	i32.eq  	$push143=, $9, $8
	br_if   	0, $pop143
	i32.gt_u	$push144=, $4, $9
	br_if   	13, $pop144
	i32.load	$push145=, 8($9)
	i32.ne  	$push146=, $pop145, $2
	br_if   	13, $pop146
.LBB8_52:
	end_block
	i32.store	12($7), $9
	i32.const	$push147=, 8
	i32.add 	$push148=, $9, $pop147
	i32.store	0($pop148), $7
	br      	10
.LBB8_53:
	end_block
	i32.const	$push80=, 4
	i32.add 	$push81=, $2, $pop80
	i32.const	$push78=, -2
	i32.and 	$push79=, $5, $pop78
	i32.store	0($pop81), $pop79
	i32.const	$push82=, 1
	i32.or  	$push83=, $1, $pop82
	i32.store	4($0), $pop83
	i32.add 	$push84=, $0, $1
	i32.store	0($pop84), $1
	br      	10
.LBB8_54:
	end_block
	i32.const	$push374=, 0
	i32.store	_gm_+24($pop374), $0
	i32.const	$push373=, 0
	i32.const	$push372=, 0
	i32.load	$push241=, _gm_+12($pop372)
	i32.add 	$push371=, $pop241, $1
	tee_local	$push370=, $1=, $pop371
	i32.store	_gm_+12($pop373), $pop370
	i32.const	$push242=, 1
	i32.or  	$push243=, $1, $pop242
	i32.store	4($0), $pop243
	i32.const	$push369=, 0
	i32.load	$push244=, _gm_+20($pop369)
	i32.eq  	$push245=, $0, $pop244
	br_if   	3, $pop245
.LBB8_55:
	end_block
	return
.LBB8_56:
	end_block
	i32.const	$push236=, 0
	i32.load	$push237=, _gm_+8($pop236)
	i32.add 	$push378=, $pop237, $1
	tee_local	$push377=, $1=, $pop378
	i32.const	$push238=, 1
	i32.or  	$push239=, $pop377, $pop238
	i32.store	4($0), $pop239
	i32.const	$push376=, 0
	i32.store	_gm_+20($pop376), $0
	i32.const	$push375=, 0
	i32.store	_gm_+8($pop375), $1
	i32.add 	$push240=, $0, $1
	i32.store	0($pop240), $1
	return
.LBB8_57:
	end_block
	i32.load	$6=, 24($2)
	i32.load	$push385=, 12($2)
	tee_local	$push384=, $8=, $pop385
	i32.eq  	$push94=, $pop384, $2
	br_if   	1, $pop94
	i32.load	$push387=, 8($2)
	tee_local	$push386=, $9=, $pop387
	i32.gt_u	$push95=, $4, $pop386
	br_if   	7, $pop95
	i32.load	$push96=, 12($9)
	i32.ne  	$push97=, $pop96, $2
	br_if   	7, $pop97
	i32.load	$push98=, 8($8)
	i32.ne  	$push99=, $pop98, $2
	br_if   	7, $pop99
	i32.const	$push100=, 8
	i32.add 	$push101=, $8, $pop100
	i32.store	0($pop101), $9
	i32.const	$push102=, 12
	i32.add 	$push103=, $9, $pop102
	i32.store	0($pop103), $8
	br_if   	4, $6
	br      	5
.LBB8_62:
	end_block
	i32.const	$push246=, 0
	i32.const	$push390=, 0
	i32.store	_gm_+8($pop246), $pop390
	i32.const	$push389=, 0
	i32.const	$push388=, 0
	i32.store	_gm_+20($pop389), $pop388
	return
.LBB8_63:
	end_block
	block   	
	i32.const	$push395=, 20
	i32.add 	$push394=, $2, $pop395
	tee_local	$push393=, $9=, $pop394
	i32.load	$push392=, 0($pop393)
	tee_local	$push391=, $7=, $pop392
	br_if   	0, $pop391
	i32.const	$push400=, 16
	i32.add 	$push399=, $2, $pop400
	tee_local	$push398=, $9=, $pop399
	i32.load	$push397=, 0($pop398)
	tee_local	$push396=, $7=, $pop397
	i32.eqz 	$push434=, $pop396
	br_if   	2, $pop434
.LBB8_65:
	end_block
	loop    	
	copy_local	$3=, $9
	copy_local	$push407=, $7
	tee_local	$push406=, $8=, $pop407
	i32.const	$push405=, 20
	i32.add 	$push404=, $pop406, $pop405
	tee_local	$push403=, $9=, $pop404
	i32.load	$push402=, 0($pop403)
	tee_local	$push401=, $7=, $pop402
	br_if   	0, $pop401
	i32.const	$push410=, 16
	i32.add 	$9=, $8, $pop410
	i32.load	$push409=, 16($8)
	tee_local	$push408=, $7=, $pop409
	br_if   	0, $pop408
	end_loop
	i32.gt_u	$push104=, $4, $3
	br_if   	5, $pop104
	i32.const	$push105=, 0
	i32.store	0($3), $pop105
	i32.eqz 	$push435=, $6
	br_if   	3, $pop435
	br      	2
.LBB8_69:
	end_block
	i32.const	$push151=, 0
	i32.const	$push415=, 0
	i32.load	$push152=, _gm_($pop415)
	i32.const	$push149=, -2
	i32.rotl	$push150=, $pop149, $3
	i32.and 	$push153=, $pop152, $pop150
	i32.store	_gm_($pop151), $pop153
	br      	2
.LBB8_70:
	end_block
	i32.const	$8=, 0
	i32.eqz 	$push436=, $6
	br_if   	1, $pop436
.LBB8_71:
	end_block
	block   	
	block   	
	block   	
	i32.load	$push414=, 28($2)
	tee_local	$push413=, $7=, $pop414
	i32.const	$push106=, 2
	i32.shl 	$push107=, $pop413, $pop106
	i32.const	$push108=, _gm_+304
	i32.add 	$push412=, $pop107, $pop108
	tee_local	$push411=, $9=, $pop412
	i32.load	$push109=, 0($pop411)
	i32.eq  	$push110=, $pop109, $2
	br_if   	0, $pop110
	i32.const	$push111=, 0
	i32.load	$push112=, _gm_+16($pop111)
	i32.gt_u	$push113=, $pop112, $6
	br_if   	5, $pop113
	i32.const	$push114=, 16
	i32.add 	$push115=, $6, $pop114
	i32.load	$push116=, 16($6)
	i32.ne  	$push117=, $pop116, $2
	i32.const	$push118=, 2
	i32.shl 	$push119=, $pop117, $pop118
	i32.add 	$push120=, $pop115, $pop119
	i32.store	0($pop120), $8
	br_if   	1, $8
	br      	3
.LBB8_74:
	end_block
	i32.store	0($9), $8
	i32.eqz 	$push437=, $8
	br_if   	1, $pop437
.LBB8_75:
	end_block
	i32.const	$push121=, 0
	i32.load	$push417=, _gm_+16($pop121)
	tee_local	$push416=, $7=, $pop417
	i32.gt_u	$push122=, $pop416, $8
	br_if   	3, $pop122
	i32.store	24($8), $6
	block   	
	i32.load	$push419=, 16($2)
	tee_local	$push418=, $9=, $pop419
	i32.eqz 	$push438=, $pop418
	br_if   	0, $pop438
	i32.gt_u	$push123=, $7, $9
	br_if   	4, $pop123
	i32.store	16($8), $9
	i32.store	24($9), $8
.LBB8_79:
	end_block
	i32.const	$push124=, 20
	i32.add 	$push125=, $2, $pop124
	i32.load	$push421=, 0($pop125)
	tee_local	$push420=, $9=, $pop421
	i32.eqz 	$push439=, $pop420
	br_if   	1, $pop439
	i32.const	$push126=, 0
	i32.load	$push127=, _gm_+16($pop126)
	i32.gt_u	$push128=, $pop127, $9
	br_if   	3, $pop128
	i32.const	$push129=, 20
	i32.add 	$push130=, $8, $pop129
	i32.store	0($pop130), $9
	i32.store	24($9), $8
	br      	1
.LBB8_82:
	end_block
	i32.const	$push133=, 0
	i32.const	$push422=, 0
	i32.load	$push134=, _gm_+4($pop422)
	i32.const	$push131=, -2
	i32.rotl	$push132=, $pop131, $7
	i32.and 	$push135=, $pop134, $pop132
	i32.store	_gm_+4($pop133), $pop135
.LBB8_83:
	end_block
	i32.const	$push90=, -8
	i32.and 	$push91=, $5, $pop90
	i32.add 	$push425=, $pop91, $1
	tee_local	$push424=, $1=, $pop425
	i32.const	$push154=, 1
	i32.or  	$push155=, $pop424, $pop154
	i32.store	4($0), $pop155
	i32.add 	$push156=, $0, $1
	i32.store	0($pop156), $1
	i32.const	$push423=, 0
	i32.load	$push157=, _gm_+20($pop423)
	i32.ne  	$push158=, $0, $pop157
	br_if   	0, $pop158
	i32.const	$push426=, 0
	i32.store	_gm_+8($pop426), $1
	return
.LBB8_85:
	end_block
	block   	
	block   	
	block   	
	block   	
	block   	
	i32.const	$push160=, 255
	i32.gt_u	$push161=, $1, $pop160
	br_if   	0, $pop161
	i32.const	$push159=, 3
	i32.shr_u	$push330=, $1, $pop159
	tee_local	$push329=, $9=, $pop330
	i32.const	$push328=, 3
	i32.shl 	$push227=, $pop329, $pop328
	i32.const	$push228=, _gm_+40
	i32.add 	$1=, $pop227, $pop228
	i32.const	$push327=, 0
	i32.load	$push326=, _gm_($pop327)
	tee_local	$push325=, $7=, $pop326
	i32.const	$push229=, 1
	i32.shl 	$push324=, $pop229, $9
	tee_local	$push323=, $9=, $pop324
	i32.and 	$push230=, $pop325, $pop323
	i32.eqz 	$push440=, $pop230
	br_if   	1, $pop440
	i32.const	$push333=, 0
	i32.load	$push231=, _gm_+16($pop333)
	i32.load	$push332=, 8($1)
	tee_local	$push331=, $9=, $pop332
	i32.le_u	$push232=, $pop231, $pop331
	br_if   	2, $pop232
	br      	5
.LBB8_88:
	end_block
	i32.const	$9=, 0
	block   	
	i32.const	$push162=, 8
	i32.shr_u	$push335=, $1, $pop162
	tee_local	$push334=, $7=, $pop335
	i32.eqz 	$push441=, $pop334
	br_if   	0, $pop441
	i32.const	$9=, 31
	i32.const	$push163=, 16777215
	i32.gt_u	$push164=, $1, $pop163
	br_if   	0, $pop164
	i32.const	$push183=, 14
	i32.const	$push165=, 1048320
	i32.add 	$push166=, $7, $pop165
	i32.const	$push167=, 16
	i32.shr_u	$push168=, $pop166, $pop167
	i32.const	$push169=, 8
	i32.and 	$push350=, $pop168, $pop169
	tee_local	$push349=, $9=, $pop350
	i32.shl 	$push348=, $7, $pop349
	tee_local	$push347=, $7=, $pop348
	i32.const	$push170=, 520192
	i32.add 	$push171=, $pop347, $pop170
	i32.const	$push346=, 16
	i32.shr_u	$push172=, $pop171, $pop346
	i32.const	$push173=, 4
	i32.and 	$push345=, $pop172, $pop173
	tee_local	$push344=, $8=, $pop345
	i32.or  	$push181=, $pop344, $9
	i32.shl 	$push343=, $7, $8
	tee_local	$push342=, $9=, $pop343
	i32.const	$push174=, 245760
	i32.add 	$push175=, $pop342, $pop174
	i32.const	$push341=, 16
	i32.shr_u	$push176=, $pop175, $pop341
	i32.const	$push177=, 2
	i32.and 	$push340=, $pop176, $pop177
	tee_local	$push339=, $7=, $pop340
	i32.or  	$push182=, $pop181, $pop339
	i32.sub 	$push184=, $pop183, $pop182
	i32.shl 	$push178=, $9, $7
	i32.const	$push179=, 15
	i32.shr_u	$push180=, $pop178, $pop179
	i32.add 	$push338=, $pop184, $pop180
	tee_local	$push337=, $9=, $pop338
	i32.const	$push187=, 7
	i32.add 	$push188=, $pop337, $pop187
	i32.shr_u	$push189=, $1, $pop188
	i32.const	$push185=, 1
	i32.and 	$push190=, $pop189, $pop185
	i32.const	$push336=, 1
	i32.shl 	$push186=, $9, $pop336
	i32.or  	$9=, $pop190, $pop186
.LBB8_91:
	end_block
	i64.const	$push191=, 0
	i64.store	16($0):p2align=2, $pop191
	i32.const	$push192=, 28
	i32.add 	$push193=, $0, $pop192
	i32.store	0($pop193), $9
	i32.const	$push194=, 2
	i32.shl 	$push195=, $9, $pop194
	i32.const	$push196=, _gm_+304
	i32.add 	$7=, $pop195, $pop196
	i32.const	$push356=, 0
	i32.load	$push355=, _gm_+4($pop356)
	tee_local	$push354=, $8=, $pop355
	i32.const	$push353=, 1
	i32.shl 	$push352=, $pop353, $9
	tee_local	$push351=, $2=, $pop352
	i32.and 	$push197=, $pop354, $pop351
	i32.eqz 	$push442=, $pop197
	br_if   	2, $pop442
	i32.const	$push203=, 0
	i32.const	$push201=, 25
	i32.const	$push357=, 1
	i32.shr_u	$push200=, $9, $pop357
	i32.sub 	$push202=, $pop201, $pop200
	i32.const	$push198=, 31
	i32.eq  	$push199=, $9, $pop198
	i32.select	$push204=, $pop203, $pop202, $pop199
	i32.shl 	$9=, $1, $pop204
	i32.load	$8=, 0($7)
.LBB8_93:
	loop    	
	copy_local	$push360=, $8
	tee_local	$push359=, $7=, $pop360
	i32.load	$push205=, 4($pop359)
	i32.const	$push358=, -8
	i32.and 	$push206=, $pop205, $pop358
	i32.eq  	$push207=, $pop206, $1
	br_if   	4, $pop207
	i32.const	$push368=, 29
	i32.shr_u	$8=, $9, $pop368
	i32.const	$push367=, 1
	i32.shl 	$push0=, $9, $pop367
	copy_local	$9=, $pop0
	i32.const	$push366=, 4
	i32.and 	$push208=, $8, $pop366
	i32.add 	$push209=, $7, $pop208
	i32.const	$push365=, 16
	i32.add 	$push364=, $pop209, $pop365
	tee_local	$push363=, $2=, $pop364
	i32.load	$push362=, 0($pop363)
	tee_local	$push361=, $8=, $pop362
	br_if   	0, $pop361
	end_loop
	i32.const	$push210=, 0
	i32.load	$push211=, _gm_+16($pop210)
	i32.gt_u	$push212=, $pop211, $2
	br_if   	4, $pop212
	i32.store	0($2), $0
	i32.const	$push213=, 24
	i32.add 	$push214=, $0, $pop213
	i32.store	0($pop214), $7
	i32.store	12($0), $0
	i32.store	8($0), $0
	return
.LBB8_97:
	end_block
	i32.const	$push379=, 0
	i32.or  	$push233=, $7, $9
	i32.store	_gm_($pop379), $pop233
	copy_local	$9=, $1
.LBB8_98:
	end_block
	i32.store	12($9), $0
	i32.const	$push234=, 8
	i32.add 	$push235=, $1, $pop234
	i32.store	0($pop235), $0
	i32.store	12($0), $1
	i32.store	8($0), $9
	return
.LBB8_99:
	end_block
	i32.store	0($7), $0
	i32.const	$push224=, 0
	i32.or  	$push223=, $8, $2
	i32.store	_gm_+4($pop224), $pop223
	i32.const	$push225=, 24
	i32.add 	$push226=, $0, $pop225
	i32.store	0($pop226), $7
	i32.store	8($0), $0
	i32.store	12($0), $0
	return
.LBB8_100:
	end_block
	i32.const	$push215=, 0
	i32.load	$push383=, _gm_+16($pop215)
	tee_local	$push382=, $9=, $pop383
	i32.load	$push381=, 8($7)
	tee_local	$push380=, $1=, $pop381
	i32.gt_u	$push216=, $pop382, $pop380
	br_if   	0, $pop216
	i32.gt_u	$push217=, $9, $7
	br_if   	0, $pop217
	i32.store	12($1), $0
	i32.const	$push218=, 8
	i32.add 	$push219=, $7, $pop218
	i32.store	0($pop219), $0
	i32.store	12($0), $7
	i32.const	$push220=, 24
	i32.add 	$push221=, $0, $pop220
	i32.const	$push222=, 0
	i32.store	0($pop221), $pop222
	i32.store	8($0), $1
	return
.LBB8_103:
	end_block
	call    	abort@FUNCTION
	unreachable
	.endfunc
.Lfunc_end8:
	.size	dispose_chunk, .Lfunc_end8-dispose_chunk

	.section	.text.realloc_in_place,"ax",@progbits
	.hidden	realloc_in_place
	.globl	realloc_in_place
	.type	realloc_in_place,@function
realloc_in_place:
	.param  	i32, i32
	.result 	i32
	.local  	i32
	i32.const	$2=, 0
	block   	
	i32.eqz 	$push19=, $0
	br_if   	0, $pop19
	block   	
	i32.const	$push0=, -64
	i32.lt_u	$push1=, $1, $pop0
	br_if   	0, $pop1
	i32.call	$push12=, __errno_location@FUNCTION
	i32.const	$push13=, 12
	i32.store	0($pop12), $pop13
	i32.const	$push14=, 0
	return  	$pop14
.LBB9_3:
	end_block
	i32.const	$push11=, 0
	i32.const	$push5=, -8
	i32.add 	$push18=, $0, $pop5
	tee_local	$push17=, $2=, $pop18
	i32.const	$push7=, 16
	i32.const	$push2=, 11
	i32.add 	$push4=, $1, $pop2
	i32.const	$push16=, -8
	i32.and 	$push6=, $pop4, $pop16
	i32.const	$push15=, 11
	i32.lt_u	$push3=, $1, $pop15
	i32.select	$push8=, $pop7, $pop6, $pop3
	i32.call	$push9=, try_realloc_chunk@FUNCTION, $pop17, $pop8
	i32.eq  	$push10=, $pop9, $2
	i32.select	$2=, $0, $pop11, $pop10
.LBB9_4:
	end_block
	copy_local	$push20=, $2
	.endfunc
.Lfunc_end9:
	.size	realloc_in_place, .Lfunc_end9-realloc_in_place

	.section	.text.memalign,"ax",@progbits
	.hidden	memalign
	.globl	memalign
	.type	memalign,@function
memalign:
	.param  	i32, i32
	.result 	i32
	block   	
	i32.const	$push0=, 8
	i32.gt_u	$push1=, $0, $pop0
	br_if   	0, $pop1
	i32.call	$push3=, malloc@FUNCTION, $1
	return  	$pop3
.LBB10_2:
	end_block
	i32.call	$push2=, internal_memalign@FUNCTION, $0, $1
	.endfunc
.Lfunc_end10:
	.size	memalign, .Lfunc_end10-memalign

	.section	.text.internal_memalign,"ax",@progbits
	.type	internal_memalign,@function
internal_memalign:
	.param  	i32, i32
	.result 	i32
	.local  	i32, i32, i32, i32, i32
	i32.const	$6=, 16
	block   	
	block   	
	i32.const	$push74=, 16
	i32.const	$push73=, 16
	i32.gt_u	$push0=, $0, $pop73
	i32.select	$push72=, $0, $pop74, $pop0
	tee_local	$push71=, $2=, $pop72
	i32.const	$push1=, -1
	i32.add 	$push2=, $pop71, $pop1
	i32.and 	$push3=, $pop2, $2
	i32.eqz 	$push115=, $pop3
	br_if   	0, $pop115
.LBB11_2:
	loop    	
	copy_local	$push77=, $6
	tee_local	$push76=, $0=, $pop77
	i32.const	$push75=, 1
	i32.shl 	$6=, $pop76, $pop75
	i32.lt_u	$push4=, $0, $2
	br_if   	0, $pop4
	br      	2
.LBB11_3:
	end_loop
	end_block
	copy_local	$0=, $2
.LBB11_4:
	end_block
	block   	
	block   	
	block   	
	block   	
	block   	
	i32.const	$push5=, -64
	i32.sub 	$push6=, $pop5, $0
	i32.le_u	$push7=, $pop6, $1
	br_if   	0, $pop7
	i32.const	$push14=, 16
	i32.const	$push10=, 11
	i32.add 	$push12=, $1, $pop10
	i32.const	$push83=, -8
	i32.and 	$push13=, $pop12, $pop83
	i32.const	$push82=, 11
	i32.lt_u	$push11=, $1, $pop82
	i32.select	$push81=, $pop14, $pop13, $pop11
	tee_local	$push80=, $1=, $pop81
	i32.add 	$push15=, $pop80, $0
	i32.const	$push16=, 12
	i32.add 	$push17=, $pop15, $pop16
	i32.call	$push79=, malloc@FUNCTION, $pop17
	tee_local	$push78=, $6=, $pop79
	i32.eqz 	$push116=, $pop78
	br_if   	1, $pop116
	i32.const	$push85=, -8
	i32.add 	$2=, $6, $pop85
	i32.const	$push84=, -1
	i32.add 	$push18=, $0, $pop84
	i32.and 	$push19=, $pop18, $6
	i32.eqz 	$push117=, $pop19
	br_if   	2, $pop117
	i32.const	$push30=, -4
	i32.add 	$push97=, $6, $pop30
	tee_local	$push96=, $3=, $pop97
	i32.load	$push95=, 0($pop96)
	tee_local	$push94=, $5=, $pop95
	i32.const	$push25=, -8
	i32.and 	$push31=, $pop94, $pop25
	i32.add 	$push22=, $6, $0
	i32.const	$push93=, -1
	i32.add 	$push23=, $pop22, $pop93
	i32.const	$push20=, 0
	i32.sub 	$push21=, $pop20, $0
	i32.and 	$push24=, $pop23, $pop21
	i32.const	$push92=, -8
	i32.add 	$push91=, $pop24, $pop92
	tee_local	$push90=, $6=, $pop91
	i32.add 	$push26=, $6, $0
	i32.sub 	$push27=, $6, $2
	i32.const	$push28=, 15
	i32.gt_u	$push29=, $pop27, $pop28
	i32.select	$push89=, $pop90, $pop26, $pop29
	tee_local	$push88=, $0=, $pop89
	i32.sub 	$push87=, $pop88, $2
	tee_local	$push86=, $6=, $pop87
	i32.sub 	$4=, $pop31, $pop86
	i32.const	$push32=, 3
	i32.and 	$push33=, $5, $pop32
	i32.eqz 	$push118=, $pop33
	br_if   	3, $pop118
	i32.load	$push34=, 4($0)
	i32.const	$push35=, 1
	i32.and 	$push36=, $pop34, $pop35
	i32.or  	$push37=, $4, $pop36
	i32.const	$push38=, 2
	i32.or  	$push39=, $pop37, $pop38
	i32.store	4($0), $pop39
	i32.add 	$push103=, $0, $4
	tee_local	$push102=, $4=, $pop103
	i32.load	$push40=, 4($4)
	i32.const	$push101=, 1
	i32.or  	$push41=, $pop40, $pop101
	i32.store	4($pop102), $pop41
	i32.load	$push42=, 0($3)
	i32.const	$push100=, 1
	i32.and 	$push43=, $pop42, $pop100
	i32.or  	$push44=, $6, $pop43
	i32.const	$push99=, 2
	i32.or  	$push45=, $pop44, $pop99
	i32.store	0($3), $pop45
	i32.load	$push46=, 4($0)
	i32.const	$push98=, 1
	i32.or  	$push47=, $pop46, $pop98
	i32.store	4($0), $pop47
	call    	dispose_chunk@FUNCTION, $2, $6
	br      	4
.LBB11_9:
	end_block
	i32.call	$push8=, __errno_location@FUNCTION
	i32.const	$push9=, 12
	i32.store	0($pop8), $pop9
	i32.const	$push69=, 0
	return  	$pop69
.LBB11_10:
	end_block
	i32.const	$push68=, 0
	return  	$pop68
.LBB11_11:
	end_block
	copy_local	$0=, $2
	br      	1
.LBB11_12:
	end_block
	i32.store	4($0), $4
	i32.load	$push48=, 0($2)
	i32.add 	$push49=, $pop48, $6
	i32.store	0($0), $pop49
.LBB11_13:
	end_block
	block   	
	i32.load	$push105=, 4($0)
	tee_local	$push104=, $6=, $pop105
	i32.const	$push50=, 3
	i32.and 	$push51=, $pop104, $pop50
	i32.eqz 	$push119=, $pop51
	br_if   	0, $pop119
	i32.const	$push54=, -8
	i32.and 	$push107=, $6, $pop54
	tee_local	$push106=, $2=, $pop107
	i32.const	$push52=, 16
	i32.add 	$push53=, $1, $pop52
	i32.le_u	$push55=, $pop106, $pop53
	br_if   	0, $pop55
	i32.const	$push56=, 4
	i32.add 	$push57=, $0, $pop56
	i32.const	$push58=, 1
	i32.and 	$push59=, $6, $pop58
	i32.or  	$push60=, $1, $pop59
	i32.const	$push61=, 2
	i32.or  	$push62=, $pop60, $pop61
	i32.store	0($pop57), $pop62
	i32.add 	$push114=, $0, $1
	tee_local	$push113=, $6=, $pop114
	i32.sub 	$push112=, $2, $1
	tee_local	$push111=, $1=, $pop112
	i32.const	$push63=, 3
	i32.or  	$push64=, $pop111, $pop63
	i32.store	4($pop113), $pop64
	i32.add 	$push110=, $0, $2
	tee_local	$push109=, $2=, $pop110
	i32.load	$push65=, 4($2)
	i32.const	$push108=, 1
	i32.or  	$push66=, $pop65, $pop108
	i32.store	4($pop109), $pop66
	call    	dispose_chunk@FUNCTION, $6, $1
.LBB11_16:
	end_block
	i32.const	$push67=, 8
	i32.add 	$push70=, $0, $pop67
	.endfunc
.Lfunc_end11:
	.size	internal_memalign, .Lfunc_end11-internal_memalign

	.section	.text.posix_memalign,"ax",@progbits
	.hidden	posix_memalign
	.globl	posix_memalign
	.type	posix_memalign,@function
posix_memalign:
	.param  	i32, i32, i32
	.result 	i32
	.local  	i32, i32
	block   	
	block   	
	block   	
	i32.const	$push0=, 8
	i32.ne  	$push1=, $1, $pop0
	br_if   	0, $pop1
	i32.call	$push17=, malloc@FUNCTION, $2
	tee_local	$push16=, $1=, $pop17
	i32.eqz 	$push23=, $pop16
	br_if   	1, $pop23
	br      	2
.LBB12_2:
	end_block
	i32.const	$4=, 22
	block   	
	block   	
	i32.const	$push3=, 3
	i32.and 	$push4=, $1, $pop3
	br_if   	0, $pop4
	i32.const	$push2=, 2
	i32.shr_u	$push19=, $1, $pop2
	tee_local	$push18=, $3=, $pop19
	i32.eqz 	$push24=, $pop18
	br_if   	0, $pop24
	i32.const	$push5=, 1073741823
	i32.add 	$push6=, $3, $pop5
	i32.and 	$push7=, $pop6, $3
	br_if   	0, $pop7
	i32.const	$4=, 12
	i32.const	$push8=, -64
	i32.sub 	$push9=, $pop8, $1
	i32.ge_u	$push10=, $pop9, $2
	br_if   	1, $pop10
.LBB12_6:
	end_block
	return  	$4
.LBB12_7:
	end_block
	i32.const	$push11=, 16
	i32.const	$push22=, 16
	i32.gt_u	$push12=, $1, $pop22
	i32.select	$push13=, $1, $pop11, $pop12
	i32.call	$push21=, internal_memalign@FUNCTION, $pop13, $2
	tee_local	$push20=, $1=, $pop21
	br_if   	1, $pop20
.LBB12_8:
	end_block
	i32.const	$push15=, 12
	return  	$pop15
.LBB12_9:
	end_block
	i32.store	0($0), $1
	i32.const	$push14=, 0
	.endfunc
.Lfunc_end12:
	.size	posix_memalign, .Lfunc_end12-posix_memalign

	.section	.text.valloc,"ax",@progbits
	.hidden	valloc
	.globl	valloc
	.type	valloc,@function
valloc:
	.param  	i32
	.result 	i32
	.local  	i32, i32
	i32.const	$push12=, 0
	i32.const	$push10=, 0
	i32.load	$push9=, __stack_pointer($pop10)
	i32.const	$push11=, 16
	i32.sub 	$push20=, $pop9, $pop11
	tee_local	$push19=, $2=, $pop20
	i32.store	__stack_pointer($pop12), $pop19
	block   	
	block   	
	block   	
	i32.const	$push18=, 0
	i32.load	$push0=, mparams($pop18)
	i32.eqz 	$push31=, $pop0
	br_if   	0, $pop31
	i32.const	$push23=, 0
	i32.load	$push22=, mparams+4($pop23)
	tee_local	$push21=, $1=, $pop22
	i32.const	$push1=, 8
	i32.gt_u	$push2=, $pop21, $pop1
	br_if   	1, $pop2
	i32.call	$0=, malloc@FUNCTION, $0
	br      	2
.LBB13_3:
	end_block
	i32.const	$push30=, 0
	i64.const	$push3=, 281474976776192
	i64.store	mparams+4($pop30):p2align=2, $pop3
	i32.const	$push29=, 0
	i64.const	$push4=, 9007203549708287
	i64.store	mparams+12($pop29):p2align=2, $pop4
	i32.const	$push28=, 0
	i32.const	$push16=, 12
	i32.add 	$push17=, $2, $pop16
	i32.const	$push5=, -16
	i32.and 	$push6=, $pop17, $pop5
	i32.const	$push7=, 1431655768
	i32.xor 	$push8=, $pop6, $pop7
	i32.store	mparams($pop28), $pop8
	i32.const	$push27=, 0
	i32.const	$push26=, 0
	i32.store	mparams+20($pop27), $pop26
	i32.const	$push25=, 0
	i32.const	$push24=, 0
	i32.store	_gm_+444($pop25), $pop24
	i32.const	$1=, 65536
.LBB13_4:
	end_block
	i32.call	$0=, internal_memalign@FUNCTION, $1, $0
.LBB13_5:
	end_block
	i32.const	$push15=, 0
	i32.const	$push13=, 16
	i32.add 	$push14=, $2, $pop13
	i32.store	__stack_pointer($pop15), $pop14
	copy_local	$push32=, $0
	.endfunc
.Lfunc_end13:
	.size	valloc, .Lfunc_end13-valloc

	.section	.text.pvalloc,"ax",@progbits
	.hidden	pvalloc
	.globl	pvalloc
	.type	pvalloc,@function
pvalloc:
	.param  	i32
	.result 	i32
	.local  	i32, i32
	i32.const	$push19=, 0
	i32.const	$push17=, 0
	i32.load	$push16=, __stack_pointer($pop17)
	i32.const	$push18=, 16
	i32.sub 	$push27=, $pop16, $pop18
	tee_local	$push26=, $2=, $pop27
	i32.store	__stack_pointer($pop19), $pop26
	block   	
	block   	
	block   	
	i32.const	$push25=, 0
	i32.load	$push0=, mparams($pop25)
	i32.eqz 	$push39=, $pop0
	br_if   	0, $pop39
	i32.const	$push31=, 0
	i32.load	$push30=, mparams+4($pop31)
	tee_local	$push29=, $1=, $pop30
	i32.add 	$push2=, $0, $pop29
	i32.const	$push3=, -1
	i32.add 	$push4=, $pop2, $pop3
	i32.const	$push28=, 0
	i32.sub 	$push1=, $pop28, $1
	i32.and 	$0=, $pop4, $pop1
	i32.const	$push5=, 8
	i32.gt_u	$push6=, $1, $pop5
	br_if   	1, $pop6
	i32.call	$1=, malloc@FUNCTION, $0
	br      	2
.LBB14_3:
	end_block
	i32.const	$push38=, 0
	i64.const	$push7=, 281474976776192
	i64.store	mparams+4($pop38):p2align=2, $pop7
	i32.const	$push37=, 0
	i64.const	$push8=, 9007203549708287
	i64.store	mparams+12($pop37):p2align=2, $pop8
	i32.const	$push36=, 0
	i32.const	$push23=, 12
	i32.add 	$push24=, $2, $pop23
	i32.const	$push9=, -16
	i32.and 	$push10=, $pop24, $pop9
	i32.const	$push11=, 1431655768
	i32.xor 	$push12=, $pop10, $pop11
	i32.store	mparams($pop36), $pop12
	i32.const	$push35=, 0
	i32.const	$push34=, 0
	i32.store	mparams+20($pop35), $pop34
	i32.const	$push33=, 0
	i32.const	$push32=, 0
	i32.store	_gm_+444($pop33), $pop32
	i32.const	$push13=, 65535
	i32.add 	$push14=, $0, $pop13
	i32.const	$push15=, -65536
	i32.and 	$0=, $pop14, $pop15
	i32.const	$1=, 65536
.LBB14_4:
	end_block
	i32.call	$1=, internal_memalign@FUNCTION, $1, $0
.LBB14_5:
	end_block
	i32.const	$push22=, 0
	i32.const	$push20=, 16
	i32.add 	$push21=, $2, $pop20
	i32.store	__stack_pointer($pop22), $pop21
	copy_local	$push40=, $1
	.endfunc
.Lfunc_end14:
	.size	pvalloc, .Lfunc_end14-pvalloc

	.section	.text.independent_calloc,"ax",@progbits
	.hidden	independent_calloc
	.globl	independent_calloc
	.type	independent_calloc,@function
independent_calloc:
	.param  	i32, i32, i32
	.result 	i32
	.local  	i32
	i32.const	$push4=, 0
	i32.const	$push2=, 0
	i32.load	$push1=, __stack_pointer($pop2)
	i32.const	$push3=, 16
	i32.sub 	$push11=, $pop1, $pop3
	tee_local	$push10=, $3=, $pop11
	i32.store	__stack_pointer($pop4), $pop10
	i32.store	12($3), $1
	i32.const	$push8=, 12
	i32.add 	$push9=, $3, $pop8
	i32.const	$push0=, 3
	i32.call	$0=, ialloc@FUNCTION, $0, $pop9, $pop0, $2
	i32.const	$push7=, 0
	i32.const	$push5=, 16
	i32.add 	$push6=, $3, $pop5
	i32.store	__stack_pointer($pop7), $pop6
	copy_local	$push12=, $0
	.endfunc
.Lfunc_end15:
	.size	independent_calloc, .Lfunc_end15-independent_calloc

	.section	.text.ialloc,"ax",@progbits
	.type	ialloc,@function
ialloc:
	.param  	i32, i32, i32, i32
	.result 	i32
	.local  	i32, i32, i32, i32, i32, i32, i32, i32
	i32.const	$push58=, 0
	i32.const	$push56=, 0
	i32.load	$push55=, __stack_pointer($pop56)
	i32.const	$push57=, 16
	i32.sub 	$push66=, $pop55, $pop57
	tee_local	$push65=, $11=, $pop66
	i32.store	__stack_pointer($pop58), $pop65
	block   	
	block   	
	block   	
	block   	
	block   	
	i32.const	$push64=, 0
	i32.load	$push0=, mparams($pop64)
	i32.eqz 	$push128=, $pop0
	br_if   	0, $pop128
	i32.eqz 	$push129=, $3
	br_if   	1, $pop129
	br      	2
.LBB16_2:
	end_block
	i32.const	$push73=, 0
	i64.const	$push1=, 281474976776192
	i64.store	mparams+4($pop73):p2align=2, $pop1
	i32.const	$push72=, 0
	i64.const	$push2=, 9007203549708287
	i64.store	mparams+12($pop72):p2align=2, $pop2
	i32.const	$push71=, 0
	i32.const	$push62=, 12
	i32.add 	$push63=, $11, $pop62
	i32.const	$push3=, -16
	i32.and 	$push4=, $pop63, $pop3
	i32.const	$push5=, 1431655768
	i32.xor 	$push6=, $pop4, $pop5
	i32.store	mparams($pop71), $pop6
	i32.const	$push70=, 0
	i32.const	$push69=, 0
	i32.store	mparams+20($pop70), $pop69
	i32.const	$push68=, 0
	i32.const	$push67=, 0
	i32.store	_gm_+444($pop68), $pop67
	br_if   	1, $3
.LBB16_3:
	end_block
	block   	
	i32.eqz 	$push130=, $0
	br_if   	0, $pop130
	i32.const	$push13=, 16
	i32.const	$push7=, 2
	i32.shl 	$push76=, $0, $pop7
	tee_local	$push75=, $10=, $pop76
	i32.const	$push8=, 11
	i32.add 	$push10=, $pop75, $pop8
	i32.const	$push11=, -8
	i32.and 	$push12=, $pop10, $pop11
	i32.const	$push74=, 11
	i32.lt_u	$push9=, $10, $pop74
	i32.select	$8=, $pop13, $pop12, $pop9
	i32.const	$3=, 0
	br      	2
.LBB16_5:
	end_block
	i32.const	$push54=, 0
	i32.call	$3=, malloc@FUNCTION, $pop54
	br      	2
.LBB16_6:
	end_block
	i32.const	$8=, 0
	i32.eqz 	$push131=, $0
	br_if   	1, $pop131
.LBB16_7:
	end_block
	block   	
	block   	
	i32.const	$push14=, 1
	i32.and 	$push15=, $2, $pop14
	br_if   	0, $pop15
	i32.const	$7=, 0
	copy_local	$9=, $0
	copy_local	$10=, $1
	i32.const	$5=, 0
.LBB16_9:
	loop    	
	i32.const	$push86=, 16
	i32.load	$push85=, 0($10)
	tee_local	$push84=, $6=, $pop85
	i32.const	$push83=, 11
	i32.add 	$push23=, $pop84, $pop83
	i32.const	$push82=, -8
	i32.and 	$push24=, $pop23, $pop82
	i32.const	$push81=, 11
	i32.lt_u	$push22=, $6, $pop81
	i32.select	$push25=, $pop86, $pop24, $pop22
	i32.add 	$5=, $pop25, $5
	i32.const	$push80=, 4
	i32.add 	$10=, $10, $pop80
	i32.const	$push79=, -1
	i32.add 	$push78=, $9, $pop79
	tee_local	$push77=, $9=, $pop78
	br_if   	0, $pop77
	br      	2
.LBB16_10:
	end_loop
	end_block
	i32.const	$push21=, 16
	i32.load	$push91=, 0($1)
	tee_local	$push90=, $10=, $pop91
	i32.const	$push16=, 11
	i32.add 	$push18=, $pop90, $pop16
	i32.const	$push19=, -8
	i32.and 	$push20=, $pop18, $pop19
	i32.const	$push89=, 11
	i32.lt_u	$push17=, $10, $pop89
	i32.select	$push88=, $pop21, $pop20, $pop17
	tee_local	$push87=, $7=, $pop88
	i32.mul 	$5=, $pop87, $0
.LBB16_11:
	end_block
	block   	
	block   	
	block   	
	i32.add 	$push26=, $8, $5
	i32.const	$push94=, -4
	i32.add 	$push27=, $pop26, $pop94
	i32.call	$push93=, malloc@FUNCTION, $pop27
	tee_local	$push92=, $4=, $pop93
	i32.eqz 	$push132=, $pop92
	br_if   	0, $pop132
	i32.const	$push96=, -4
	i32.add 	$push28=, $4, $pop96
	i32.load	$push29=, 0($pop28)
	i32.const	$push95=, -8
	i32.and 	$10=, $pop29, $pop95
	block   	
	i32.const	$push30=, 2
	i32.and 	$push31=, $2, $pop30
	i32.eqz 	$push133=, $pop31
	br_if   	0, $pop133
	i32.const	$push35=, 0
	i32.const	$push32=, -4
	i32.sub 	$push33=, $pop32, $8
	i32.add 	$push34=, $pop33, $10
	i32.call	$drop=, memset@FUNCTION, $4, $pop35, $pop34
.LBB16_14:
	end_block
	i32.const	$push97=, -8
	i32.add 	$9=, $4, $pop97
	i32.eqz 	$push134=, $3
	br_if   	1, $pop134
	copy_local	$5=, $10
	br      	2
.LBB16_16:
	end_block
	i32.const	$3=, 0
	br      	2
.LBB16_17:
	end_block
	i32.add 	$push99=, $9, $5
	tee_local	$push98=, $6=, $pop99
	i32.sub 	$push36=, $10, $5
	i32.const	$push37=, 3
	i32.or  	$push38=, $pop36, $pop37
	i32.store	4($pop98), $pop38
	i32.const	$push39=, 8
	i32.add 	$3=, $6, $pop39
.LBB16_18:
	end_block
	i32.store	0($3), $4
	block   	
	i32.const	$push40=, -1
	i32.add 	$push101=, $0, $pop40
	tee_local	$push100=, $10=, $pop101
	i32.eqz 	$push135=, $pop100
	br_if   	0, $pop135
	block   	
	i32.eqz 	$push136=, $7
	br_if   	0, $pop136
	i32.const	$push102=, 4
	i32.add 	$9=, $3, $pop102
	i32.const	$push41=, 3
	i32.or  	$2=, $7, $pop41
	i32.mul 	$push42=, $7, $10
	i32.const	$push43=, -8
	i32.add 	$8=, $pop42, $pop43
	i32.const	$push44=, 1
	i32.sub 	$push45=, $pop44, $0
	i32.mul 	$0=, $7, $pop45
	copy_local	$6=, $4
.LBB16_21:
	loop    	
	i32.add 	$push109=, $6, $7
	tee_local	$push108=, $1=, $pop109
	i32.store	0($9), $pop108
	i32.const	$push107=, -4
	i32.add 	$push46=, $6, $pop107
	i32.store	0($pop46), $2
	i32.const	$push106=, 4
	i32.add 	$9=, $9, $pop106
	copy_local	$6=, $1
	i32.const	$push105=, -1
	i32.add 	$push104=, $10, $pop105
	tee_local	$push103=, $10=, $pop104
	br_if   	0, $pop103
	end_loop
	i32.add 	$9=, $4, $8
	i32.add 	$5=, $5, $0
	br      	1
.LBB16_23:
	end_block
	i32.const	$push110=, 4
	i32.add 	$6=, $3, $pop110
.LBB16_24:
	loop    	
	i32.const	$push127=, 16
	i32.load	$push126=, 0($1)
	tee_local	$push125=, $7=, $pop126
	i32.const	$push124=, 11
	i32.add 	$push48=, $pop125, $pop124
	i32.const	$push123=, -8
	i32.and 	$push49=, $pop48, $pop123
	i32.const	$push122=, 11
	i32.lt_u	$push47=, $7, $pop122
	i32.select	$push121=, $pop127, $pop49, $pop47
	tee_local	$push120=, $7=, $pop121
	i32.const	$push119=, 3
	i32.or  	$push50=, $pop120, $pop119
	i32.store	4($9), $pop50
	i32.add 	$push118=, $9, $7
	tee_local	$push117=, $9=, $pop118
	i32.const	$push116=, 8
	i32.add 	$push51=, $pop117, $pop116
	i32.store	0($6), $pop51
	i32.sub 	$5=, $5, $7
	i32.const	$push115=, 4
	i32.add 	$1=, $1, $pop115
	i32.const	$push114=, 4
	i32.add 	$6=, $6, $pop114
	i32.const	$push113=, -1
	i32.add 	$push112=, $10, $pop113
	tee_local	$push111=, $10=, $pop112
	br_if   	0, $pop111
.LBB16_25:
	end_loop
	end_block
	i32.const	$push52=, 3
	i32.or  	$push53=, $5, $pop52
	i32.store	4($9), $pop53
.LBB16_26:
	end_block
	i32.const	$push61=, 0
	i32.const	$push59=, 16
	i32.add 	$push60=, $11, $pop59
	i32.store	__stack_pointer($pop61), $pop60
	copy_local	$push137=, $3
	.endfunc
.Lfunc_end16:
	.size	ialloc, .Lfunc_end16-ialloc

	.section	.text.independent_comalloc,"ax",@progbits
	.hidden	independent_comalloc
	.globl	independent_comalloc
	.type	independent_comalloc,@function
independent_comalloc:
	.param  	i32, i32, i32
	.result 	i32
	i32.const	$push0=, 0
	i32.call	$push1=, ialloc@FUNCTION, $0, $1, $pop0, $2
	.endfunc
.Lfunc_end17:
	.size	independent_comalloc, .Lfunc_end17-independent_comalloc

	.section	.text.bulk_free,"ax",@progbits
	.hidden	bulk_free
	.globl	bulk_free
	.type	bulk_free,@function
bulk_free:
	.param  	i32, i32
	.result 	i32
	.local  	i32, i32, i32, i32, i32, i32
	block   	
	block   	
	i32.eqz 	$push59=, $1
	br_if   	0, $pop59
	i32.const	$push22=, 2
	i32.shl 	$push0=, $1, $pop22
	i32.add 	$2=, $0, $pop0
.LBB18_2:
	loop    	
	block   	
	block   	
	i32.load	$push24=, 0($0)
	tee_local	$push23=, $1=, $pop24
	i32.eqz 	$push60=, $pop23
	br_if   	0, $pop60
	i32.const	$push32=, 0
	i32.store	0($0), $pop32
	i32.const	$push31=, -4
	i32.add 	$push30=, $1, $pop31
	tee_local	$push29=, $4=, $pop30
	i32.load	$push28=, 0($pop29)
	tee_local	$push27=, $5=, $pop28
	i32.const	$push26=, 3
	i32.and 	$push2=, $pop27, $pop26
	i32.const	$push25=, 1
	i32.eq  	$push3=, $pop2, $pop25
	br_if   	4, $pop3
	i32.const	$push36=, -8
	i32.add 	$push35=, $1, $pop36
	tee_local	$push34=, $3=, $pop35
	i32.const	$push33=, 0
	i32.load	$push1=, _gm_+16($pop33)
	i32.lt_u	$push4=, $pop34, $pop1
	br_if   	4, $pop4
	i32.const	$push40=, -8
	i32.and 	$6=, $5, $pop40
	block   	
	i32.const	$push39=, 4
	i32.add 	$push38=, $0, $pop39
	tee_local	$push37=, $0=, $pop38
	i32.eq  	$push5=, $pop37, $2
	br_if   	0, $pop5
	i32.load	$push7=, 0($0)
	i32.add 	$push43=, $3, $6
	tee_local	$push42=, $7=, $pop43
	i32.const	$push41=, 8
	i32.add 	$push6=, $pop42, $pop41
	i32.eq  	$push8=, $pop7, $pop6
	br_if   	2, $pop8
.LBB18_7:
	end_block
	call    	dispose_chunk@FUNCTION, $3, $6
	i32.ne  	$push18=, $0, $2
	br_if   	2, $pop18
	br      	3
.LBB18_8:
	end_block
	i32.const	$push46=, 4
	i32.add 	$push45=, $0, $pop46
	tee_local	$push44=, $0=, $pop45
	i32.ne  	$push16=, $pop44, $2
	br_if   	1, $pop16
	br      	2
.LBB18_9:
	end_block
	i32.const	$push54=, 1
	i32.and 	$push9=, $5, $pop54
	i32.load	$push10=, 4($7)
	i32.const	$push53=, -8
	i32.and 	$push11=, $pop10, $pop53
	i32.add 	$push52=, $pop11, $6
	tee_local	$push51=, $6=, $pop52
	i32.or  	$push12=, $pop9, $pop51
	i32.const	$push50=, 2
	i32.or  	$push13=, $pop12, $pop50
	i32.store	0($4), $pop13
	i32.store	0($0), $1
	i32.add 	$push49=, $3, $6
	tee_local	$push48=, $1=, $pop49
	i32.load	$push14=, 4($1)
	i32.const	$push47=, 1
	i32.or  	$push15=, $pop14, $pop47
	i32.store	4($pop48), $pop15
	i32.ne  	$push17=, $0, $2
	br_if   	0, $pop17
.LBB18_10:
	end_loop
	end_block
	block   	
	i32.const	$push56=, 0
	i32.load	$push20=, _gm_+12($pop56)
	i32.const	$push55=, 0
	i32.load	$push19=, _gm_+28($pop55)
	i32.le_u	$push21=, $pop20, $pop19
	br_if   	0, $pop21
	i32.const	$push57=, 0
	i32.call	$drop=, sys_trim@FUNCTION, $pop57
.LBB18_12:
	end_block
	i32.const	$push58=, 0
	return  	$pop58
.LBB18_13:
	end_block
	call    	abort@FUNCTION
	unreachable
	.endfunc
.Lfunc_end18:
	.size	bulk_free, .Lfunc_end18-bulk_free

	.section	.text.malloc_trim,"ax",@progbits
	.hidden	malloc_trim
	.globl	malloc_trim
	.type	malloc_trim,@function
malloc_trim:
	.param  	i32
	.result 	i32
	.local  	i32
	i32.const	$push10=, 0
	i32.const	$push8=, 0
	i32.load	$push7=, __stack_pointer($pop8)
	i32.const	$push9=, 16
	i32.sub 	$push18=, $pop7, $pop9
	tee_local	$push17=, $1=, $pop18
	i32.store	__stack_pointer($pop10), $pop17
	block   	
	i32.const	$push16=, 0
	i32.load	$push0=, mparams($pop16)
	br_if   	0, $pop0
	i32.const	$push25=, 0
	i64.const	$push1=, 281474976776192
	i64.store	mparams+4($pop25):p2align=2, $pop1
	i32.const	$push24=, 0
	i64.const	$push2=, 9007203549708287
	i64.store	mparams+12($pop24):p2align=2, $pop2
	i32.const	$push23=, 0
	i32.const	$push14=, 12
	i32.add 	$push15=, $1, $pop14
	i32.const	$push3=, -16
	i32.and 	$push4=, $pop15, $pop3
	i32.const	$push5=, 1431655768
	i32.xor 	$push6=, $pop4, $pop5
	i32.store	mparams($pop23), $pop6
	i32.const	$push22=, 0
	i32.const	$push21=, 0
	i32.store	mparams+20($pop22), $pop21
	i32.const	$push20=, 0
	i32.const	$push19=, 0
	i32.store	_gm_+444($pop20), $pop19
.LBB19_2:
	end_block
	i32.call	$0=, sys_trim@FUNCTION, $0
	i32.const	$push13=, 0
	i32.const	$push11=, 16
	i32.add 	$push12=, $1, $pop11
	i32.store	__stack_pointer($pop13), $pop12
	copy_local	$push26=, $0
	.endfunc
.Lfunc_end19:
	.size	malloc_trim, .Lfunc_end19-malloc_trim

	.section	.text.malloc_footprint,"ax",@progbits
	.hidden	malloc_footprint
	.globl	malloc_footprint
	.type	malloc_footprint,@function
malloc_footprint:
	.result 	i32
	i32.const	$push0=, 0
	i32.load	$push1=, _gm_+432($pop0)
	.endfunc
.Lfunc_end20:
	.size	malloc_footprint, .Lfunc_end20-malloc_footprint

	.section	.text.malloc_max_footprint,"ax",@progbits
	.hidden	malloc_max_footprint
	.globl	malloc_max_footprint
	.type	malloc_max_footprint,@function
malloc_max_footprint:
	.result 	i32
	i32.const	$push0=, 0
	i32.load	$push1=, _gm_+436($pop0)
	.endfunc
.Lfunc_end21:
	.size	malloc_max_footprint, .Lfunc_end21-malloc_max_footprint

	.section	.text.malloc_footprint_limit,"ax",@progbits
	.hidden	malloc_footprint_limit
	.globl	malloc_footprint_limit
	.type	malloc_footprint_limit,@function
malloc_footprint_limit:
	.result 	i32
	.local  	i32
	i32.const	$push0=, 0
	i32.load	$push4=, _gm_+440($pop0)
	tee_local	$push3=, $0=, $pop4
	i32.const	$push1=, -1
	i32.select	$push2=, $pop3, $pop1, $0
	.endfunc
.Lfunc_end22:
	.size	malloc_footprint_limit, .Lfunc_end22-malloc_footprint_limit

	.section	.text.malloc_set_footprint_limit,"ax",@progbits
	.hidden	malloc_set_footprint_limit
	.globl	malloc_set_footprint_limit
	.type	malloc_set_footprint_limit,@function
malloc_set_footprint_limit:
	.param  	i32
	.result 	i32
	.local  	i32
	i32.const	$1=, 0
	block   	
	i32.const	$push5=, -1
	i32.eq  	$push0=, $0, $pop5
	br_if   	0, $pop0
	i32.const	$push1=, 0
	i32.load	$push9=, mparams+8($pop1)
	tee_local	$push8=, $1=, $pop9
	i32.add 	$push3=, $0, $pop8
	i32.const	$push7=, -1
	i32.add 	$push4=, $pop3, $pop7
	i32.const	$push6=, 0
	i32.sub 	$push2=, $pop6, $1
	i32.and 	$1=, $pop4, $pop2
.LBB23_2:
	end_block
	i32.const	$push10=, 0
	i32.store	_gm_+440($pop10), $1
	copy_local	$push11=, $1
	.endfunc
.Lfunc_end23:
	.size	malloc_set_footprint_limit, .Lfunc_end23-malloc_set_footprint_limit

	.section	.text.mallinfo,"ax",@progbits
	.hidden	mallinfo
	.globl	mallinfo
	.type	mallinfo,@function
mallinfo:
	.param  	i32
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
	i32.const	$push25=, 0
	i32.load	$push24=, __stack_pointer($pop25)
	i32.const	$push26=, 16
	i32.sub 	$8=, $pop24, $pop26
	i32.const	$4=, 0
	block   	
	i32.const	$push29=, 0
	i32.load	$push0=, mparams($pop29)
	br_if   	0, $pop0
	i32.const	$push2=, 0
	i64.const	$push1=, 281474976776192
	i64.store	mparams+4($pop2):p2align=2, $pop1
	i32.const	$push35=, 0
	i64.const	$push3=, 9007203549708287
	i64.store	mparams+12($pop35):p2align=2, $pop3
	i32.const	$push34=, 0
	i32.const	$push27=, 12
	i32.add 	$push28=, $8, $pop27
	i32.const	$push4=, -16
	i32.and 	$push5=, $pop28, $pop4
	i32.const	$push6=, 1431655768
	i32.xor 	$push7=, $pop5, $pop6
	i32.store	mparams($pop34), $pop7
	i32.const	$push33=, 0
	i32.const	$push32=, 0
	i32.store	mparams+20($pop33), $pop32
	i32.const	$push31=, 0
	i32.const	$push30=, 0
	i32.store	_gm_+444($pop31), $pop30
.LBB24_2:
	end_block
	i32.const	$6=, 0
	i32.const	$8=, 0
	i32.const	$9=, 0
	i32.const	$7=, 0
	i32.const	$5=, 0
	i32.const	$11=, 0
	block   	
	i32.const	$push38=, 0
	i32.load	$push37=, _gm_+24($pop38)
	tee_local	$push36=, $1=, $pop37
	i32.eqz 	$push69=, $pop36
	br_if   	0, $pop69
	i32.const	$10=, _gm_+448
	i32.const	$push43=, 0
	i32.load	$push42=, _gm_+12($pop43)
	tee_local	$push41=, $11=, $pop42
	i32.const	$push8=, 40
	i32.add 	$push40=, $pop41, $pop8
	tee_local	$push39=, $5=, $pop40
	copy_local	$6=, $pop39
	i32.const	$7=, 1
.LBB24_4:
	loop    	
	i32.load	$push50=, 0($10)
	tee_local	$push49=, $2=, $pop50
	i32.const	$push48=, -8
	i32.sub 	$push11=, $pop48, $2
	i32.const	$push47=, 7
	i32.and 	$push12=, $pop11, $pop47
	i32.const	$push46=, 0
	i32.const	$push45=, 8
	i32.add 	$push9=, $2, $pop45
	i32.const	$push44=, 7
	i32.and 	$push10=, $pop9, $pop44
	i32.select	$push13=, $pop12, $pop46, $pop10
	i32.add 	$4=, $pop49, $pop13
	i32.load	$push14=, 4($10)
	i32.add 	$3=, $2, $pop14
.LBB24_5:
	block   	
	loop    	
	i32.ge_u	$push15=, $4, $3
	br_if   	1, $pop15
	i32.eq  	$push16=, $1, $4
	br_if   	1, $pop16
	i32.load	$push53=, 4($4)
	tee_local	$push52=, $8=, $pop53
	i32.const	$push51=, 7
	i32.eq  	$push17=, $pop52, $pop51
	br_if   	1, $pop17
	i32.const	$push63=, -8
	i32.and 	$push62=, $8, $pop63
	tee_local	$push61=, $9=, $pop62
	i32.const	$push60=, 0
	i32.const	$push59=, 3
	i32.and 	$push18=, $8, $pop59
	i32.const	$push58=, 1
	i32.eq  	$push57=, $pop18, $pop58
	tee_local	$push56=, $8=, $pop57
	i32.select	$push19=, $pop61, $pop60, $pop56
	i32.add 	$6=, $pop19, $6
	i32.add 	$5=, $9, $5
	i32.add 	$7=, $7, $8
	i32.add 	$push55=, $4, $9
	tee_local	$push54=, $4=, $pop55
	i32.ge_u	$push20=, $pop54, $2
	br_if   	0, $pop20
.LBB24_9:
	end_loop
	end_block
	i32.load	$push65=, 8($10)
	tee_local	$push64=, $10=, $pop65
	br_if   	0, $pop64
	end_loop
	i32.const	$push21=, 0
	i32.load	$push68=, _gm_+432($pop21)
	tee_local	$push67=, $8=, $pop68
	i32.sub 	$4=, $pop67, $6
	i32.sub 	$9=, $8, $5
	i32.const	$push66=, 0
	i32.load	$8=, _gm_+436($pop66)
.LBB24_11:
	end_block
	i32.store	4($0), $7
	i32.store	0($0), $5
	i64.const	$push22=, 0
	i64.store	8($0):p2align=2, $pop22
	i32.store	16($0), $9
	i32.store	20($0), $8
	i32.const	$push23=, 0
	i32.store	24($0), $pop23
	i32.store	28($0), $4
	i32.store	32($0), $6
	i32.store	36($0), $11
	.endfunc
.Lfunc_end24:
	.size	mallinfo, .Lfunc_end24-mallinfo

	.section	.text.mallopt,"ax",@progbits
	.hidden	mallopt
	.globl	mallopt
	.type	mallopt,@function
mallopt:
	.param  	i32, i32
	.result 	i32
	.local  	i32, i32
	i32.const	$push23=, 0
	i32.load	$push22=, __stack_pointer($pop23)
	i32.const	$push24=, 16
	i32.sub 	$3=, $pop22, $pop24
	i32.const	$2=, 0
	block   	
	i32.const	$push27=, 0
	i32.load	$push0=, mparams($pop27)
	br_if   	0, $pop0
	i32.const	$push2=, 0
	i64.const	$push1=, 281474976776192
	i64.store	mparams+4($pop2):p2align=2, $pop1
	i32.const	$push33=, 0
	i64.const	$push3=, 9007203549708287
	i64.store	mparams+12($pop33):p2align=2, $pop3
	i32.const	$push32=, 0
	i32.const	$push25=, 12
	i32.add 	$push26=, $3, $pop25
	i32.const	$push4=, -16
	i32.and 	$push5=, $pop26, $pop4
	i32.const	$push6=, 1431655768
	i32.xor 	$push7=, $pop5, $pop6
	i32.store	mparams($pop32), $pop7
	i32.const	$push31=, 0
	i32.const	$push30=, 0
	i32.store	mparams+20($pop31), $pop30
	i32.const	$push29=, 0
	i32.const	$push28=, 0
	i32.store	_gm_+444($pop29), $pop28
.LBB25_2:
	end_block
	block   	
	block   	
	block   	
	block   	
	i32.const	$push8=, -3
	i32.eq  	$push9=, $0, $pop8
	br_if   	0, $pop9
	i32.const	$push10=, -2
	i32.eq  	$push11=, $0, $pop10
	br_if   	1, $pop11
	i32.const	$push12=, -1
	i32.ne  	$push13=, $0, $pop12
	br_if   	3, $pop13
	i32.const	$push21=, 0
	i32.store	mparams+16($pop21), $1
	br      	2
.LBB25_6:
	end_block
	i32.const	$push14=, 0
	i32.store	mparams+12($pop14), $1
	br      	1
.LBB25_7:
	end_block
	i32.const	$2=, 0
	i32.const	$push34=, 0
	i32.load	$push15=, mparams+4($pop34)
	i32.gt_u	$push16=, $pop15, $1
	br_if   	1, $pop16
	i32.const	$push17=, -1
	i32.add 	$push18=, $1, $pop17
	i32.and 	$push19=, $pop18, $1
	br_if   	1, $pop19
	i32.const	$push20=, 0
	i32.store	mparams+8($pop20), $1
.LBB25_10:
	end_block
	i32.const	$2=, 1
.LBB25_11:
	end_block
	copy_local	$push35=, $2
	.endfunc
.Lfunc_end25:
	.size	mallopt, .Lfunc_end25-mallopt

	.section	.text.malloc_usable_size,"ax",@progbits
	.hidden	malloc_usable_size
	.globl	malloc_usable_size
	.type	malloc_usable_size,@function
malloc_usable_size:
	.param  	i32
	.result 	i32
	.local  	i32, i32
	i32.const	$2=, 0
	block   	
	i32.eqz 	$push14=, $0
	br_if   	0, $pop14
	i32.const	$push0=, -4
	i32.add 	$push1=, $0, $pop0
	i32.load	$push13=, 0($pop1)
	tee_local	$push12=, $0=, $pop13
	i32.const	$push2=, 3
	i32.and 	$push11=, $pop12, $pop2
	tee_local	$push10=, $1=, $pop11
	i32.const	$push3=, 1
	i32.eq  	$push4=, $pop10, $pop3
	br_if   	0, $pop4
	i32.const	$push8=, -8
	i32.and 	$push9=, $0, $pop8
	i32.const	$push6=, 4
	i32.const	$push5=, 8
	i32.select	$push7=, $pop6, $pop5, $1
	i32.sub 	$2=, $pop9, $pop7
.LBB26_3:
	end_block
	copy_local	$push15=, $2
	.endfunc
.Lfunc_end26:
	.size	malloc_usable_size, .Lfunc_end26-malloc_usable_size

	.section	.text.memcpy,"ax",@progbits
	.hidden	memcpy
	.globl	memcpy
	.type	memcpy,@function
memcpy:
	.param  	i32, i32, i32
	.result 	i32
	.local  	i32, i32, i32, i32, i32, i32, i32, i32
	block   	
	block   	
	block   	
	block   	
	i32.eqz 	$push331=, $2
	br_if   	0, $pop331
	i32.const	$push152=, 3
	i32.and 	$push0=, $1, $pop152
	i32.eqz 	$push332=, $pop0
	br_if   	0, $pop332
	copy_local	$4=, $0
.LBB27_3:
	block   	
	loop    	
	i32.load8_u	$push2=, 0($1)
	i32.store8	0($4), $pop2
	i32.const	$push156=, -1
	i32.add 	$3=, $2, $pop156
	i32.const	$push155=, 1
	i32.add 	$4=, $4, $pop155
	i32.const	$push154=, 1
	i32.add 	$1=, $1, $pop154
	i32.const	$push153=, 1
	i32.eq  	$push3=, $2, $pop153
	br_if   	1, $pop3
	copy_local	$2=, $3
	i32.const	$push157=, 3
	i32.and 	$push1=, $1, $pop157
	br_if   	0, $pop1
.LBB27_5:
	end_loop
	end_block
	i32.const	$push158=, 3
	i32.and 	$push5=, $4, $pop158
	i32.eqz 	$push333=, $pop5
	br_if   	1, $pop333
	br      	2
.LBB27_6:
	end_block
	copy_local	$3=, $2
	copy_local	$push204=, $0
	tee_local	$push203=, $4=, $pop204
	i32.const	$push202=, 3
	i32.and 	$push4=, $pop203, $pop202
	br_if   	1, $pop4
.LBB27_7:
	end_block
	block   	
	block   	
	i32.const	$push205=, 16
	i32.lt_u	$push129=, $3, $pop205
	br_if   	0, $pop129
	i32.const	$push214=, -16
	i32.add 	$push213=, $3, $pop214
	tee_local	$push212=, $8=, $pop213
	i32.const	$push211=, -16
	i32.and 	$push210=, $pop212, $pop211
	tee_local	$push209=, $9=, $pop210
	i32.const	$push208=, 16
	i32.add 	$push207=, $pop209, $pop208
	tee_local	$push206=, $5=, $pop207
	i32.add 	$10=, $4, $pop206
	copy_local	$2=, $1
.LBB27_9:
	loop    	
	i32.load	$push130=, 0($2)
	i32.store	0($4), $pop130
	i32.const	$push226=, 4
	i32.add 	$push131=, $4, $pop226
	i32.const	$push225=, 4
	i32.add 	$push132=, $2, $pop225
	i32.load	$push133=, 0($pop132)
	i32.store	0($pop131), $pop133
	i32.const	$push224=, 8
	i32.add 	$push134=, $4, $pop224
	i32.const	$push223=, 8
	i32.add 	$push135=, $2, $pop223
	i32.load	$push136=, 0($pop135)
	i32.store	0($pop134), $pop136
	i32.const	$push222=, 12
	i32.add 	$push137=, $4, $pop222
	i32.const	$push221=, 12
	i32.add 	$push138=, $2, $pop221
	i32.load	$push139=, 0($pop138)
	i32.store	0($pop137), $pop139
	i32.const	$push220=, 16
	i32.add 	$4=, $4, $pop220
	i32.const	$push219=, 16
	i32.add 	$2=, $2, $pop219
	i32.const	$push218=, -16
	i32.add 	$push217=, $3, $pop218
	tee_local	$push216=, $3=, $pop217
	i32.const	$push215=, 15
	i32.gt_u	$push140=, $pop216, $pop215
	br_if   	0, $pop140
	end_loop
	i32.sub 	$3=, $8, $9
	i32.add 	$1=, $1, $5
	br      	1
.LBB27_11:
	end_block
	copy_local	$10=, $4
.LBB27_12:
	end_block
	block   	
	i32.const	$push239=, 8
	i32.and 	$push141=, $3, $pop239
	i32.eqz 	$push334=, $pop141
	br_if   	0, $pop334
	i32.load	$push142=, 0($1)
	i32.store	0($10), $pop142
	i32.load	$push143=, 4($1)
	i32.store	4($10), $pop143
	i32.const	$push241=, 8
	i32.add 	$1=, $1, $pop241
	i32.const	$push240=, 8
	i32.add 	$10=, $10, $pop240
.LBB27_14:
	end_block
	block   	
	i32.const	$push242=, 4
	i32.and 	$push144=, $3, $pop242
	i32.eqz 	$push335=, $pop144
	br_if   	0, $pop335
	i32.load	$push145=, 0($1)
	i32.store	0($10), $pop145
	i32.const	$push244=, 4
	i32.add 	$1=, $1, $pop244
	i32.const	$push243=, 4
	i32.add 	$10=, $10, $pop243
.LBB27_16:
	end_block
	block   	
	i32.const	$push245=, 2
	i32.and 	$push146=, $3, $pop245
	i32.eqz 	$push336=, $pop146
	br_if   	0, $pop336
	i32.load8_u	$push147=, 0($1)
	i32.store8	0($10), $pop147
	i32.load8_u	$push148=, 1($1)
	i32.store8	1($10), $pop148
	i32.const	$push247=, 2
	i32.add 	$10=, $10, $pop247
	i32.const	$push246=, 2
	i32.add 	$1=, $1, $pop246
.LBB27_18:
	end_block
	i32.const	$push149=, 1
	i32.and 	$push150=, $3, $pop149
	i32.eqz 	$push337=, $pop150
	br_if   	1, $pop337
	i32.load8_u	$push151=, 0($1)
	i32.store8	0($10), $pop151
	return  	$0
.LBB27_20:
	end_block
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	i32.const	$push6=, 32
	i32.lt_u	$push7=, $3, $pop6
	br_if   	0, $pop7
	i32.const	$push8=, 3
	i32.and 	$push161=, $4, $pop8
	tee_local	$push160=, $2=, $pop161
	i32.const	$push159=, 3
	i32.eq  	$push9=, $pop160, $pop159
	br_if   	1, $pop9
	i32.const	$push162=, 2
	i32.eq  	$push10=, $2, $pop162
	br_if   	2, $pop10
	i32.const	$push11=, 1
	i32.ne  	$push12=, $2, $pop11
	br_if   	0, $pop12
	i32.load8_u	$push64=, 1($1)
	i32.store8	1($4), $pop64
	i32.load	$push167=, 0($1)
	tee_local	$push166=, $9=, $pop167
	i32.store8	0($4), $pop166
	i32.load8_u	$push65=, 2($1)
	i32.store8	2($4), $pop65
	i32.const	$push165=, 3
	i32.add 	$2=, $4, $pop165
	i32.const	$push66=, -3
	i32.add 	$push164=, $3, $pop66
	tee_local	$push163=, $10=, $pop164
	i32.const	$push67=, 17
	i32.lt_u	$push68=, $pop163, $pop67
	br_if   	3, $pop68
	i32.const	$push173=, 16
	i32.add 	$8=, $1, $pop173
	i32.const	$push69=, -19
	i32.add 	$5=, $3, $pop69
	i32.const	$push70=, -20
	i32.add 	$push71=, $3, $pop70
	i32.const	$push172=, -16
	i32.and 	$push171=, $pop71, $pop172
	tee_local	$push170=, $6=, $pop171
	i32.const	$push72=, 19
	i32.add 	$push169=, $pop170, $pop72
	tee_local	$push168=, $7=, $pop169
	i32.add 	$1=, $1, $pop168
.LBB27_26:
	loop    	
	i32.const	$push201=, -12
	i32.add 	$push74=, $8, $pop201
	i32.load	$push200=, 0($pop74)
	tee_local	$push199=, $3=, $pop200
	i32.const	$push198=, 8
	i32.shl 	$push75=, $pop199, $pop198
	i32.const	$push197=, 24
	i32.shr_u	$push73=, $9, $pop197
	i32.or  	$push76=, $pop75, $pop73
	i32.store	0($2), $pop76
	i32.const	$push196=, 4
	i32.add 	$push81=, $2, $pop196
	i32.const	$push195=, -8
	i32.add 	$push78=, $8, $pop195
	i32.load	$push194=, 0($pop78)
	tee_local	$push193=, $9=, $pop194
	i32.const	$push192=, 8
	i32.shl 	$push79=, $pop193, $pop192
	i32.const	$push191=, 24
	i32.shr_u	$push77=, $3, $pop191
	i32.or  	$push80=, $pop79, $pop77
	i32.store	0($pop81), $pop80
	i32.const	$push190=, 8
	i32.add 	$push86=, $2, $pop190
	i32.const	$push189=, -4
	i32.add 	$push83=, $8, $pop189
	i32.load	$push188=, 0($pop83)
	tee_local	$push187=, $3=, $pop188
	i32.const	$push186=, 8
	i32.shl 	$push84=, $pop187, $pop186
	i32.const	$push185=, 24
	i32.shr_u	$push82=, $9, $pop185
	i32.or  	$push85=, $pop84, $pop82
	i32.store	0($pop86), $pop85
	i32.const	$push184=, 12
	i32.add 	$push90=, $2, $pop184
	i32.load	$push183=, 0($8)
	tee_local	$push182=, $9=, $pop183
	i32.const	$push181=, 8
	i32.shl 	$push88=, $pop182, $pop181
	i32.const	$push180=, 24
	i32.shr_u	$push87=, $3, $pop180
	i32.or  	$push89=, $pop88, $pop87
	i32.store	0($pop90), $pop89
	i32.const	$push179=, 16
	i32.add 	$2=, $2, $pop179
	i32.const	$push178=, 16
	i32.add 	$8=, $8, $pop178
	i32.const	$push177=, -16
	i32.add 	$push176=, $10, $pop177
	tee_local	$push175=, $10=, $pop176
	i32.const	$push174=, 16
	i32.gt_u	$push91=, $pop175, $pop174
	br_if   	0, $pop91
	end_loop
	i32.sub 	$10=, $5, $6
	i32.add 	$2=, $4, $7
	br      	6
.LBB27_28:
	end_block
	copy_local	$10=, $3
	copy_local	$2=, $4
	br      	5
.LBB27_29:
	end_block
	i32.load	$push252=, 0($1)
	tee_local	$push251=, $9=, $pop252
	i32.store8	0($4), $pop251
	i32.const	$push250=, 1
	i32.add 	$2=, $4, $pop250
	i32.const	$push13=, -1
	i32.add 	$push249=, $3, $pop13
	tee_local	$push248=, $10=, $pop249
	i32.const	$push14=, 19
	i32.lt_u	$push15=, $pop248, $pop14
	br_if   	2, $pop15
	i32.const	$push258=, 16
	i32.add 	$8=, $1, $pop258
	i32.const	$push16=, -17
	i32.add 	$5=, $3, $pop16
	i32.const	$push17=, -20
	i32.add 	$push18=, $3, $pop17
	i32.const	$push257=, -16
	i32.and 	$push256=, $pop18, $pop257
	tee_local	$push255=, $6=, $pop256
	i32.const	$push19=, 17
	i32.add 	$push254=, $pop255, $pop19
	tee_local	$push253=, $7=, $pop254
	i32.add 	$1=, $1, $pop253
.LBB27_31:
	loop    	
	i32.const	$push286=, -12
	i32.add 	$push21=, $8, $pop286
	i32.load	$push285=, 0($pop21)
	tee_local	$push284=, $3=, $pop285
	i32.const	$push283=, 24
	i32.shl 	$push22=, $pop284, $pop283
	i32.const	$push282=, 8
	i32.shr_u	$push20=, $9, $pop282
	i32.or  	$push23=, $pop22, $pop20
	i32.store	0($2), $pop23
	i32.const	$push281=, 4
	i32.add 	$push28=, $2, $pop281
	i32.const	$push280=, -8
	i32.add 	$push25=, $8, $pop280
	i32.load	$push279=, 0($pop25)
	tee_local	$push278=, $9=, $pop279
	i32.const	$push277=, 24
	i32.shl 	$push26=, $pop278, $pop277
	i32.const	$push276=, 8
	i32.shr_u	$push24=, $3, $pop276
	i32.or  	$push27=, $pop26, $pop24
	i32.store	0($pop28), $pop27
	i32.const	$push275=, 8
	i32.add 	$push33=, $2, $pop275
	i32.const	$push274=, -4
	i32.add 	$push30=, $8, $pop274
	i32.load	$push273=, 0($pop30)
	tee_local	$push272=, $3=, $pop273
	i32.const	$push271=, 24
	i32.shl 	$push31=, $pop272, $pop271
	i32.const	$push270=, 8
	i32.shr_u	$push29=, $9, $pop270
	i32.or  	$push32=, $pop31, $pop29
	i32.store	0($pop33), $pop32
	i32.const	$push269=, 12
	i32.add 	$push37=, $2, $pop269
	i32.load	$push268=, 0($8)
	tee_local	$push267=, $9=, $pop268
	i32.const	$push266=, 24
	i32.shl 	$push35=, $pop267, $pop266
	i32.const	$push265=, 8
	i32.shr_u	$push34=, $3, $pop265
	i32.or  	$push36=, $pop35, $pop34
	i32.store	0($pop37), $pop36
	i32.const	$push264=, 16
	i32.add 	$2=, $2, $pop264
	i32.const	$push263=, 16
	i32.add 	$8=, $8, $pop263
	i32.const	$push262=, -16
	i32.add 	$push261=, $10, $pop262
	tee_local	$push260=, $10=, $pop261
	i32.const	$push259=, 18
	i32.gt_u	$push38=, $pop260, $pop259
	br_if   	0, $pop38
	end_loop
	i32.sub 	$10=, $5, $6
	i32.add 	$2=, $4, $7
	br      	4
.LBB27_33:
	end_block
	i32.load	$push292=, 0($1)
	tee_local	$push291=, $9=, $pop292
	i32.store8	0($4), $pop291
	i32.load8_u	$push39=, 1($1)
	i32.store8	1($4), $pop39
	i32.const	$push290=, 2
	i32.add 	$2=, $4, $pop290
	i32.const	$push40=, -2
	i32.add 	$push289=, $3, $pop40
	tee_local	$push288=, $10=, $pop289
	i32.const	$push287=, 18
	i32.lt_u	$push41=, $pop288, $pop287
	br_if   	2, $pop41
	i32.const	$push299=, 16
	i32.add 	$8=, $1, $pop299
	i32.const	$push42=, -18
	i32.add 	$5=, $3, $pop42
	i32.const	$push43=, -20
	i32.add 	$push44=, $3, $pop43
	i32.const	$push298=, -16
	i32.and 	$push297=, $pop44, $pop298
	tee_local	$push296=, $6=, $pop297
	i32.const	$push295=, 18
	i32.add 	$push294=, $pop296, $pop295
	tee_local	$push293=, $7=, $pop294
	i32.add 	$1=, $1, $pop293
.LBB27_35:
	loop    	
	i32.const	$push327=, -12
	i32.add 	$push46=, $8, $pop327
	i32.load	$push326=, 0($pop46)
	tee_local	$push325=, $3=, $pop326
	i32.const	$push324=, 16
	i32.shl 	$push47=, $pop325, $pop324
	i32.const	$push323=, 16
	i32.shr_u	$push45=, $9, $pop323
	i32.or  	$push48=, $pop47, $pop45
	i32.store	0($2), $pop48
	i32.const	$push322=, 4
	i32.add 	$push53=, $2, $pop322
	i32.const	$push321=, -8
	i32.add 	$push50=, $8, $pop321
	i32.load	$push320=, 0($pop50)
	tee_local	$push319=, $9=, $pop320
	i32.const	$push318=, 16
	i32.shl 	$push51=, $pop319, $pop318
	i32.const	$push317=, 16
	i32.shr_u	$push49=, $3, $pop317
	i32.or  	$push52=, $pop51, $pop49
	i32.store	0($pop53), $pop52
	i32.const	$push316=, 8
	i32.add 	$push58=, $2, $pop316
	i32.const	$push315=, -4
	i32.add 	$push55=, $8, $pop315
	i32.load	$push314=, 0($pop55)
	tee_local	$push313=, $3=, $pop314
	i32.const	$push312=, 16
	i32.shl 	$push56=, $pop313, $pop312
	i32.const	$push311=, 16
	i32.shr_u	$push54=, $9, $pop311
	i32.or  	$push57=, $pop56, $pop54
	i32.store	0($pop58), $pop57
	i32.const	$push310=, 12
	i32.add 	$push62=, $2, $pop310
	i32.load	$push309=, 0($8)
	tee_local	$push308=, $9=, $pop309
	i32.const	$push307=, 16
	i32.shl 	$push60=, $pop308, $pop307
	i32.const	$push306=, 16
	i32.shr_u	$push59=, $3, $pop306
	i32.or  	$push61=, $pop60, $pop59
	i32.store	0($pop62), $pop61
	i32.const	$push305=, 16
	i32.add 	$2=, $2, $pop305
	i32.const	$push304=, 16
	i32.add 	$8=, $8, $pop304
	i32.const	$push303=, -16
	i32.add 	$push302=, $10, $pop303
	tee_local	$push301=, $10=, $pop302
	i32.const	$push300=, 17
	i32.gt_u	$push63=, $pop301, $pop300
	br_if   	0, $pop63
	end_loop
	i32.sub 	$10=, $5, $6
	i32.add 	$2=, $4, $7
	br      	3
.LBB27_37:
	end_block
	i32.const	$push328=, 3
	i32.add 	$1=, $1, $pop328
	br      	2
.LBB27_38:
	end_block
	i32.const	$push329=, 1
	i32.add 	$1=, $1, $pop329
	br      	1
.LBB27_39:
	end_block
	i32.const	$push330=, 2
	i32.add 	$1=, $1, $pop330
.LBB27_40:
	end_block
	block   	
	i32.const	$push227=, 16
	i32.and 	$push92=, $10, $pop227
	i32.eqz 	$push338=, $pop92
	br_if   	0, $pop338
	i32.load8_u	$push93=, 1($1)
	i32.store8	1($2), $pop93
	i32.load8_u	$push94=, 2($1)
	i32.store8	2($2), $pop94
	i32.load8_u	$push95=, 3($1)
	i32.store8	3($2), $pop95
	i32.load8_u	$push96=, 4($1)
	i32.store8	4($2), $pop96
	i32.load8_u	$push97=, 5($1)
	i32.store8	5($2), $pop97
	i32.load8_u	$push98=, 6($1)
	i32.store8	6($2), $pop98
	i32.load8_u	$push99=, 7($1)
	i32.store8	7($2), $pop99
	i32.load8_u	$push100=, 8($1)
	i32.store8	8($2), $pop100
	i32.load8_u	$push101=, 9($1)
	i32.store8	9($2), $pop101
	i32.load8_u	$push102=, 10($1)
	i32.store8	10($2), $pop102
	i32.load8_u	$push103=, 11($1)
	i32.store8	11($2), $pop103
	i32.load8_u	$push104=, 12($1)
	i32.store8	12($2), $pop104
	i32.load8_u	$push105=, 13($1)
	i32.store8	13($2), $pop105
	i32.load8_u	$push106=, 14($1)
	i32.store8	14($2), $pop106
	i32.load8_u	$push107=, 0($1)
	i32.store8	0($2), $pop107
	i32.load8_u	$push108=, 15($1)
	i32.store8	15($2), $pop108
	i32.const	$push229=, 16
	i32.add 	$2=, $2, $pop229
	i32.const	$push228=, 16
	i32.add 	$1=, $1, $pop228
.LBB27_42:
	end_block
	block   	
	i32.const	$push230=, 8
	i32.and 	$push109=, $10, $pop230
	i32.eqz 	$push339=, $pop109
	br_if   	0, $pop339
	i32.load8_u	$push110=, 0($1)
	i32.store8	0($2), $pop110
	i32.load8_u	$push111=, 1($1)
	i32.store8	1($2), $pop111
	i32.load8_u	$push112=, 2($1)
	i32.store8	2($2), $pop112
	i32.load8_u	$push113=, 3($1)
	i32.store8	3($2), $pop113
	i32.load8_u	$push114=, 4($1)
	i32.store8	4($2), $pop114
	i32.load8_u	$push115=, 5($1)
	i32.store8	5($2), $pop115
	i32.load8_u	$push116=, 6($1)
	i32.store8	6($2), $pop116
	i32.load8_u	$push117=, 7($1)
	i32.store8	7($2), $pop117
	i32.const	$push232=, 8
	i32.add 	$2=, $2, $pop232
	i32.const	$push231=, 8
	i32.add 	$1=, $1, $pop231
.LBB27_44:
	end_block
	block   	
	i32.const	$push233=, 4
	i32.and 	$push118=, $10, $pop233
	i32.eqz 	$push340=, $pop118
	br_if   	0, $pop340
	i32.load8_u	$push119=, 0($1)
	i32.store8	0($2), $pop119
	i32.load8_u	$push120=, 1($1)
	i32.store8	1($2), $pop120
	i32.load8_u	$push121=, 2($1)
	i32.store8	2($2), $pop121
	i32.load8_u	$push122=, 3($1)
	i32.store8	3($2), $pop122
	i32.const	$push235=, 4
	i32.add 	$2=, $2, $pop235
	i32.const	$push234=, 4
	i32.add 	$1=, $1, $pop234
.LBB27_46:
	end_block
	block   	
	i32.const	$push236=, 2
	i32.and 	$push123=, $10, $pop236
	i32.eqz 	$push341=, $pop123
	br_if   	0, $pop341
	i32.load8_u	$push124=, 0($1)
	i32.store8	0($2), $pop124
	i32.load8_u	$push125=, 1($1)
	i32.store8	1($2), $pop125
	i32.const	$push238=, 2
	i32.add 	$2=, $2, $pop238
	i32.const	$push237=, 2
	i32.add 	$1=, $1, $pop237
.LBB27_48:
	end_block
	i32.const	$push126=, 1
	i32.and 	$push127=, $10, $pop126
	i32.eqz 	$push342=, $pop127
	br_if   	0, $pop342
	i32.load8_u	$push128=, 0($1)
	i32.store8	0($2), $pop128
	return  	$0
.LBB27_50:
	end_block
	copy_local	$push343=, $0
	.endfunc
.Lfunc_end27:
	.size	memcpy, .Lfunc_end27-memcpy

	.section	.text.memset,"ax",@progbits
	.hidden	memset
	.globl	memset
	.type	memset,@function
memset:
	.param  	i32, i32, i32
	.result 	i32
	.local  	i32, i32, i64, i32
	block   	
	i32.eqz 	$push77=, $2
	br_if   	0, $pop77
	i32.store8	0($0), $1
	i32.add 	$push45=, $0, $2
	tee_local	$push44=, $6=, $pop45
	i32.const	$push0=, -1
	i32.add 	$push1=, $pop44, $pop0
	i32.store8	0($pop1), $1
	i32.const	$push2=, 3
	i32.lt_u	$push3=, $2, $pop2
	br_if   	0, $pop3
	i32.store8	2($0), $1
	i32.store8	1($0), $1
	i32.const	$push4=, -3
	i32.add 	$push5=, $6, $pop4
	i32.store8	0($pop5), $1
	i32.const	$push6=, -2
	i32.add 	$push7=, $6, $pop6
	i32.store8	0($pop7), $1
	i32.const	$push8=, 7
	i32.lt_u	$push9=, $2, $pop8
	br_if   	0, $pop9
	i32.store8	3($0), $1
	i32.const	$push47=, -4
	i32.add 	$push10=, $6, $pop47
	i32.store8	0($pop10), $1
	i32.const	$push46=, 9
	i32.lt_u	$push11=, $2, $pop46
	br_if   	0, $pop11
	i32.const	$push15=, 0
	i32.sub 	$push16=, $pop15, $0
	i32.const	$push17=, 3
	i32.and 	$push60=, $pop16, $pop17
	tee_local	$push59=, $3=, $pop60
	i32.add 	$push58=, $0, $pop59
	tee_local	$push57=, $6=, $pop58
	i32.const	$push12=, 255
	i32.and 	$push13=, $1, $pop12
	i32.const	$push14=, 16843009
	i32.mul 	$push56=, $pop13, $pop14
	tee_local	$push55=, $1=, $pop56
	i32.store	0($pop57), $pop55
	i32.sub 	$push18=, $2, $3
	i32.const	$push54=, -4
	i32.and 	$push53=, $pop18, $pop54
	tee_local	$push52=, $3=, $pop53
	i32.add 	$push51=, $6, $pop52
	tee_local	$push50=, $2=, $pop51
	i32.const	$push49=, -4
	i32.add 	$push19=, $pop50, $pop49
	i32.store	0($pop19), $1
	i32.const	$push48=, 9
	i32.lt_u	$push20=, $3, $pop48
	br_if   	0, $pop20
	i32.store	8($6), $1
	i32.store	4($6), $1
	i32.const	$push21=, -8
	i32.add 	$push22=, $2, $pop21
	i32.store	0($pop22), $1
	i32.const	$push23=, -12
	i32.add 	$push24=, $2, $pop23
	i32.store	0($pop24), $1
	i32.const	$push25=, 25
	i32.lt_u	$push26=, $3, $pop25
	br_if   	0, $pop26
	i32.store	16($6), $1
	i32.store	12($6), $1
	i32.store	20($6), $1
	i32.store	24($6), $1
	i32.const	$push27=, -24
	i32.add 	$push28=, $2, $pop27
	i32.store	0($pop28), $1
	i32.const	$push29=, -28
	i32.add 	$push30=, $2, $pop29
	i32.store	0($pop30), $1
	i32.const	$push31=, -20
	i32.add 	$push32=, $2, $pop31
	i32.store	0($pop32), $1
	i32.const	$push33=, -16
	i32.add 	$push34=, $2, $pop33
	i32.store	0($pop34), $1
	i32.const	$push37=, 4
	i32.and 	$push38=, $6, $pop37
	i32.const	$push66=, 24
	i32.or  	$push65=, $pop38, $pop66
	tee_local	$push64=, $4=, $pop65
	i32.sub 	$push63=, $3, $pop64
	tee_local	$push62=, $2=, $pop63
	i32.const	$push61=, 32
	i32.lt_u	$push39=, $pop62, $pop61
	br_if   	0, $pop39
	i64.extend_u/i32	$push68=, $1
	tee_local	$push67=, $5=, $pop68
	i64.const	$push35=, 32
	i64.shl 	$push36=, $pop67, $pop35
	i64.or  	$5=, $pop36, $5
	i32.add 	$1=, $6, $4
.LBB28_8:
	loop    	
	i64.store	0($1), $5
	i32.const	$push76=, 8
	i32.add 	$push40=, $1, $pop76
	i64.store	0($pop40), $5
	i32.const	$push75=, 16
	i32.add 	$push41=, $1, $pop75
	i64.store	0($pop41), $5
	i32.const	$push74=, 24
	i32.add 	$push42=, $1, $pop74
	i64.store	0($pop42), $5
	i32.const	$push73=, 32
	i32.add 	$1=, $1, $pop73
	i32.const	$push72=, -32
	i32.add 	$push71=, $2, $pop72
	tee_local	$push70=, $2=, $pop71
	i32.const	$push69=, 31
	i32.gt_u	$push43=, $pop70, $pop69
	br_if   	0, $pop43
.LBB28_9:
	end_loop
	end_block
	copy_local	$push78=, $0
	.endfunc
.Lfunc_end28:
	.size	memset, .Lfunc_end28-memset

	.section	.text.sbrk,"ax",@progbits
	.hidden	sbrk
	.globl	sbrk
	.type	sbrk,@function
sbrk:
	.param  	i32
	.result 	i32
	.local  	i32, i32, i32
	block   	
	block   	
	block   	
	block   	
	i32.const	$push21=, 0
	i32.lt_s	$push0=, $0, $pop21
	br_if   	0, $pop0
	current_memory	$push1=
	i32.const	$push25=, 16
	i32.shl 	$1=, $pop1, $pop25
	i32.const	$push24=, 0
	i32.load	$push23=, available($pop24)
	tee_local	$push22=, $2=, $pop23
	i32.ge_u	$push2=, $pop22, $0
	br_if   	1, $pop2
	i32.const	$push3=, -1
	i32.add 	$push4=, $0, $pop3
	i32.sub 	$push5=, $pop4, $2
	i32.const	$push26=, 16
	i32.shr_u	$push6=, $pop5, $pop26
	i32.const	$push7=, 1
	i32.add 	$push8=, $pop6, $pop7
	grow_memory	$push9=, $pop8
	i32.eqz 	$push32=, $pop9
	br_if   	3, $pop32
	call    	_grow@FUNCTION
	i32.const	$push13=, 0
	current_memory	$push11=
	i32.const	$push10=, 16
	i32.shl 	$push31=, $pop11, $pop10
	tee_local	$push30=, $3=, $pop31
	i32.sub 	$push12=, $pop30, $1
	i32.const	$push29=, 0
	i32.load	$push14=, available($pop29)
	i32.add 	$push28=, $pop12, $pop14
	tee_local	$push27=, $2=, $pop28
	i32.store	available($pop13), $pop27
	br      	2
.LBB29_4:
	end_block
	i32.const	$push19=, -1
	return  	$pop19
.LBB29_5:
	end_block
	copy_local	$3=, $1
.LBB29_6:
	end_block
	i32.const	$push16=, 0
	i32.sub 	$push15=, $2, $0
	i32.store	available($pop16), $pop15
	i32.sub 	$push20=, $3, $2
	return  	$pop20
.LBB29_7:
	end_block
	i32.call	$push17=, __errno_location@FUNCTION
	i32.const	$push18=, 12
	i32.store	0($pop17), $pop18
	call    	abort@FUNCTION
	unreachable
	.endfunc
.Lfunc_end29:
	.size	sbrk, .Lfunc_end29-sbrk

	.hidden	__errno
	.type	__errno,@object
	.section	.bss.__errno,"aw",@nobits
	.globl	__errno
	.p2align	2
__errno:
	.int32	0
	.size	__errno, 4

	.type	_gm_,@object
	.section	.bss._gm_,"aw",@nobits
	.p2align	2
_gm_:
	.skip	472
	.size	_gm_, 472

	.type	mparams,@object
	.section	.bss.mparams,"aw",@nobits
	.p2align	2
mparams:
	.skip	24
	.size	mparams, 24

	.type	available,@object
	.section	.bss.available,"aw",@nobits
	.p2align	2
available:
	.int32	0
	.size	available, 4


	.ident	"clang version 5.0.0 "
	.ident	"clang version 5.0.0 "
	.ident	"clang version 5.0.0 "
	.ident	"clang version 5.0.0 "
	.ident	"clang version 5.0.0 "
	.ident	"clang version 5.0.0 "
	.functype	_abort, void, i32
	.functype	_grow, void
