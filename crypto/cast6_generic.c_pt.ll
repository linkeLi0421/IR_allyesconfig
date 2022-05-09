; ModuleID = '/llk/IR_all_yes/crypto/cast6_generic.c_pt.bc'
source_filename = "../crypto/cast6_generic.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+__cast6_setkey\22, \22a\22\09"
module asm "\09.weak\09__crc___cast6_setkey\09\09\09\09"
module asm "\09.long\09__crc___cast6_setkey\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___cast6_setkey:\09\09\09\09\09"
module asm "\09.asciz \09\22__cast6_setkey\22\09\09\09\09\09"
module asm "__kstrtabns___cast6_setkey:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+cast6_setkey\22, \22a\22\09"
module asm "\09.weak\09__crc_cast6_setkey\09\09\09\09"
module asm "\09.long\09__crc_cast6_setkey\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cast6_setkey:\09\09\09\09\09"
module asm "\09.asciz \09\22cast6_setkey\22\09\09\09\09\09"
module asm "__kstrtabns_cast6_setkey:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__cast6_encrypt\22, \22a\22\09"
module asm "\09.weak\09__crc___cast6_encrypt\09\09\09\09"
module asm "\09.long\09__crc___cast6_encrypt\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___cast6_encrypt:\09\09\09\09\09"
module asm "\09.asciz \09\22__cast6_encrypt\22\09\09\09\09\09"
module asm "__kstrtabns___cast6_encrypt:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__cast6_decrypt\22, \22a\22\09"
module asm "\09.weak\09__crc___cast6_decrypt\09\09\09\09"
module asm "\09.long\09__crc___cast6_decrypt\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___cast6_decrypt:\09\09\09\09\09"
module asm "\09.asciz \09\22__cast6_decrypt\22\09\09\09\09\09"
module asm "__kstrtabns___cast6_decrypt:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon, ptr, ptr, ptr, ptr, %union.anon.44, [120 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%union.anon = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%union.anon.44 = type { %struct.crypto_istat_akcipher }
%struct.crypto_istat_akcipher = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.cast6_ctx = type { [12 x [4 x i32]], [12 x [4 x i8]] }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }

@__kstrtab___cast6_setkey = external dso_local constant [0 x i8], align 1
@__kstrtabns___cast6_setkey = external dso_local constant [0 x i8], align 1
@__ksymtab___cast6_setkey = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__cast6_setkey to i32), ptr @__kstrtab___cast6_setkey, ptr @__kstrtabns___cast6_setkey }, section "___ksymtab_gpl+__cast6_setkey", align 4
@__kstrtab_cast6_setkey = external dso_local constant [0 x i8], align 1
@__kstrtabns_cast6_setkey = external dso_local constant [0 x i8], align 1
@__ksymtab_cast6_setkey = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cast6_setkey to i32), ptr @__kstrtab_cast6_setkey, ptr @__kstrtabns_cast6_setkey }, section "___ksymtab_gpl+cast6_setkey", align 4
@__kstrtab___cast6_encrypt = external dso_local constant [0 x i8], align 1
@__kstrtabns___cast6_encrypt = external dso_local constant [0 x i8], align 1
@__ksymtab___cast6_encrypt = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__cast6_encrypt to i32), ptr @__kstrtab___cast6_encrypt, ptr @__kstrtabns___cast6_encrypt }, section "___ksymtab_gpl+__cast6_encrypt", align 4
@__kstrtab___cast6_decrypt = external dso_local constant [0 x i8], align 1
@__kstrtabns___cast6_decrypt = external dso_local constant [0 x i8], align 1
@__ksymtab___cast6_decrypt = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__cast6_decrypt to i32), ptr @__kstrtab___cast6_decrypt, ptr @__kstrtabns___cast6_decrypt }, section "___ksymtab_gpl+__cast6_decrypt", align 4
@alg = internal global %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 1, i32 16, i32 240, i32 0, i32 100, %struct.refcount_struct zeroinitializer, [128 x i8] c"cast6\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"cast6-generic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon { %struct.cipher_alg { i32 16, i32 32, ptr @cast6_setkey, ptr @cast6_encrypt, ptr @cast6_decrypt } }, ptr null, ptr null, ptr null, ptr null, %union.anon.44 zeroinitializer, [120 x i8] undef }, align 128
@__initcall__kmod_cast6_generic__173_274_cast6_mod_init4 = internal global ptr @cast6_mod_init, section ".initcall4.init", align 4
@__exitcall_cast6_mod_fini = internal global ptr @cast6_mod_fini, section ".exitcall.exit", align 4
@__UNIQUE_ID_file174 = internal constant [40 x i8] c"cast6_generic.file=crypto/cast6_generic\00", section ".modinfo", align 1
@__UNIQUE_ID_license175 = internal constant [26 x i8] c"cast6_generic.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description176 = internal constant [49 x i8] c"cast6_generic.description=Cast6 Cipher Algorithm\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace177 = internal constant [26 x i8] c"cast6_generic.alias=cast6\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto178 = internal constant [33 x i8] c"cast6_generic.alias=crypto-cast6\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace179 = internal constant [34 x i8] c"cast6_generic.alias=cast6-generic\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto180 = internal constant [41 x i8] c"cast6_generic.alias=crypto-cast6-generic\00", section ".modinfo", align 1
@Tm = internal constant { [24 x [8 x i32]], [192 x i8] } { [24 x [8 x i32]] [[8 x i32] [i32 1518500249, i32 -916691654, i32 943083739, i32 -1492108164, i32 367667229, i32 -2067524674, i32 -207749281, i32 1652026112], [8 x i32] [i32 -783165791, i32 1076609602, i32 -1358582301, i32 501193092, i32 -1933998811, i32 -74223418, i32 1785551975, i32 -649639928], [8 x i32] [i32 1210135465, i32 -1225056438, i32 634718955, i32 -1800472948, i32 59302445, i32 1919077838, i32 -516114065, i32 1343661328], [8 x i32] [i32 -1091530575, i32 768244818, i32 -1666947085, i32 192828308, i32 2052603701, i32 -382588202, i32 1477187191, i32 -958004712], [8 x i32] [i32 901770681, i32 -1533421222, i32 326354171, i32 -2108837732, i32 -249062339, i32 1610713054, i32 -824478849, i32 1035296544], [8 x i32] [i32 -1399895359, i32 459880034, i32 -1975311869, i32 -115536476, i32 1744238917, i32 -690952986, i32 1168822407, i32 -1266369496], [8 x i32] [i32 593405897, i32 -1841786006, i32 17989387, i32 1877764780, i32 -557427123, i32 1302348270, i32 -1132843633, i32 726931760], [8 x i32] [i32 -1708260143, i32 151515250, i32 2011290643, i32 -423901260, i32 1435874133, i32 -999317770, i32 860457623, i32 -1574734280], [8 x i32] [i32 285041113, i32 2144816506, i32 -290375397, i32 1569399996, i32 -865791907, i32 993983486, i32 -1441208417, i32 418566976], [8 x i32] [i32 -2016624927, i32 -156849534, i32 1702925859, i32 -732266044, i32 1127509349, i32 -1307682554, i32 552092839, i32 -1883099064], [8 x i32] [i32 -23323671, i32 1836451722, i32 -598740181, i32 1261035212, i32 -1174156691, i32 685618702, i32 -1749573201, i32 110202192], [8 x i32] [i32 1969977585, i32 -465214318, i32 1394561075, i32 -1040630828, i32 819144565, i32 -1616047338, i32 243728055, i32 2103503448], [8 x i32] [i32 -331688455, i32 1528086938, i32 -907104965, i32 952670428, i32 -1482521475, i32 377253918, i32 -2057937985, i32 -198162592], [8 x i32] [i32 1661612801, i32 -773579102, i32 1086196291, i32 -1348995612, i32 510779781, i32 -1924412122, i32 -64636729, i32 1795138664], [8 x i32] [i32 -640053239, i32 1219722154, i32 -1215469749, i32 644305644, i32 -1790886259, i32 68889134, i32 1928664527, i32 -506527376], [8 x i32] [i32 1353248017, i32 -1081943886, i32 777831507, i32 -1657360396, i32 202414997, i32 2062190390, i32 -373001513, i32 1486773880], [8 x i32] [i32 -948418023, i32 911357370, i32 -1523834533, i32 335940860, i32 -2099251043, i32 -239475650, i32 1620299743, i32 -814892160], [8 x i32] [i32 1044883233, i32 -1390308670, i32 469466723, i32 -1965725180, i32 -105949787, i32 1753825606, i32 -681366297, i32 1178409096], [8 x i32] [i32 -1256782807, i32 602992586, i32 -1832199317, i32 27576076, i32 1887351469, i32 -547840434, i32 1311934959, i32 -1123256944], [8 x i32] [i32 736518449, i32 -1698673454, i32 161101939, i32 2020877332, i32 -414314571, i32 1445460822, i32 -989731081, i32 870044312], [8 x i32] [i32 -1565147591, i32 294627802, i32 -2140564101, i32 -280788708, i32 1578986685, i32 -856205218, i32 1003570175, i32 -1431621728], [8 x i32] [i32 428153665, i32 -2007038238, i32 -147262845, i32 1712512548, i32 -722679355, i32 1137096038, i32 -1298095865, i32 561679528], [8 x i32] [i32 -1873512375, i32 -13736982, i32 1846038411, i32 -589153492, i32 1270621901, i32 -1164570002, i32 695205391, i32 -1739986512], [8 x i32] [i32 119788881, i32 1979564274, i32 -455627629, i32 1404147764, i32 -1031044139, i32 828731254, i32 -1606460649, i32 253314744]], [192 x i8] zeroinitializer }, align 32
@Tr = internal constant { [4 x [8 x i8]], [32 x i8] } { [4 x [8 x i8]] [[8 x i8] c"\13\04\15\06\17\08\19\0A", [8 x i8] c"\1B\0C\1D\0E\1F\10\01\12", [8 x i8] c"\03\14\05\16\07\18\09\1A", [8 x i8] c"\0B\1C\0D\1E\0F\00\11\02"], [32 x i8] zeroinitializer }, align 32
@cast_s1 = external dso_local local_unnamed_addr constant [256 x i32], align 4
@cast_s2 = external dso_local local_unnamed_addr constant [256 x i32], align 4
@cast_s3 = external dso_local local_unnamed_addr constant [256 x i32], align 4
@cast_s4 = external dso_local local_unnamed_addr constant [256 x i32], align 4
@___asan_gen_.1 = private unnamed_addr constant [3 x i8] c"Tm\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 34, i32 18 }
@___asan_gen_.4 = private unnamed_addr constant [3 x i8] c"Tr\00", align 1
@___asan_gen_.5 = private constant [26 x i8] c"../crypto/cast6_generic.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 85, i32 17 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @__UNIQUE_ID_alias_crypto178, ptr @__UNIQUE_ID_alias_crypto180, ptr @__UNIQUE_ID_alias_userspace177, ptr @__UNIQUE_ID_alias_userspace179, ptr @__UNIQUE_ID_description176, ptr @__UNIQUE_ID_file174, ptr @__UNIQUE_ID_license175, ptr @__exitcall_cast6_mod_fini, ptr @__initcall__kmod_cast6_generic__173_274_cast6_mod_init4, ptr @__ksymtab___cast6_decrypt, ptr @__ksymtab___cast6_encrypt, ptr @__ksymtab___cast6_setkey, ptr @__ksymtab_cast6_setkey, ptr @cast6_mod_fini, ptr @Tm, ptr @Tr], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @Tm to i32), i32 768, i32 960, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @Tr to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__cast6_setkey(ptr nocapture noundef writeonly %c, ptr nocapture noundef readonly %in_key, i32 noundef %key_len) #0 align 64 {
entry:
  %key = alloca [8 x i32], align 4
  %p_key = alloca [8 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %key) #7
  %0 = getelementptr inbounds [8 x i32], ptr %key, i32 0, i32 1
  %1 = getelementptr inbounds [8 x i32], ptr %key, i32 0, i32 2
  %2 = getelementptr inbounds [8 x i32], ptr %key, i32 0, i32 3
  %3 = getelementptr inbounds [8 x i32], ptr %key, i32 0, i32 4
  %4 = getelementptr inbounds [8 x i32], ptr %key, i32 0, i32 5
  %5 = getelementptr inbounds [8 x i32], ptr %key, i32 0, i32 6
  %6 = getelementptr inbounds [8 x i32], ptr %key, i32 0, i32 7
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %p_key)
  %rem = and i32 %key_len, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp.not = icmp eq i32 %rem, 0
  %7 = call ptr @memset(ptr %p_key, i32 255, i32 32)
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %p_key.28.p_key.28.p_key.28..sroa_idx = getelementptr inbounds i8, ptr %p_key, i32 28
  %p_key.24.p_key.24.p_key.24..sroa_idx = getelementptr inbounds i8, ptr %p_key, i32 24
  %p_key.20.p_key.20.p_key.20..sroa_idx = getelementptr inbounds i8, ptr %p_key, i32 20
  %p_key.16.p_key.16.p_key.16..sroa_idx = getelementptr inbounds i8, ptr %p_key, i32 16
  %p_key.12.p_key.12.p_key.12..sroa_idx = getelementptr inbounds i8, ptr %p_key, i32 12
  %p_key.8.p_key.8.p_key.8..sroa_idx = getelementptr inbounds i8, ptr %p_key, i32 8
  %p_key.4.p_key.4.p_key.4..sroa_idx = getelementptr inbounds i8, ptr %p_key, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %key_len)
  %8 = icmp ugt i32 %key_len, 31
  %9 = sub i32 32, %key_len
  %10 = select i1 %8, i32 0, i32 %9
  %11 = getelementptr i8, ptr %p_key, i32 %key_len
  %12 = call ptr @memset(ptr %11, i32 0, i32 %10)
  %13 = call ptr @memcpy(ptr %p_key, ptr %in_key, i32 %key_len)
  %14 = ptrtoint ptr %p_key to i32
  call void @__asan_load4_noabort(i32 %14)
  %p_key.0.p_key.0.p_key.0. = load i32, ptr %p_key, align 4
  %15 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %p_key.0.p_key.0.p_key.0., ptr %key, align 4
  %16 = ptrtoint ptr %p_key.4.p_key.4.p_key.4..sroa_idx to i32
  call void @__asan_load4_noabort(i32 %16)
  %p_key.4.p_key.4.p_key.4. = load i32, ptr %p_key.4.p_key.4.p_key.4..sroa_idx, align 4
  %17 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %p_key.4.p_key.4.p_key.4., ptr %0, align 4
  %18 = ptrtoint ptr %p_key.8.p_key.8.p_key.8..sroa_idx to i32
  call void @__asan_load4_noabort(i32 %18)
  %p_key.8.p_key.8.p_key.8. = load i32, ptr %p_key.8.p_key.8.p_key.8..sroa_idx, align 4
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %p_key.8.p_key.8.p_key.8., ptr %1, align 4
  %20 = ptrtoint ptr %p_key.12.p_key.12.p_key.12..sroa_idx to i32
  call void @__asan_load4_noabort(i32 %20)
  %p_key.12.p_key.12.p_key.12. = load i32, ptr %p_key.12.p_key.12.p_key.12..sroa_idx, align 4
  %21 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %p_key.12.p_key.12.p_key.12., ptr %2, align 4
  %22 = ptrtoint ptr %p_key.16.p_key.16.p_key.16..sroa_idx to i32
  call void @__asan_load4_noabort(i32 %22)
  %p_key.16.p_key.16.p_key.16. = load i32, ptr %p_key.16.p_key.16.p_key.16..sroa_idx, align 4
  %23 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %p_key.16.p_key.16.p_key.16., ptr %3, align 4
  %24 = ptrtoint ptr %p_key.20.p_key.20.p_key.20..sroa_idx to i32
  call void @__asan_load4_noabort(i32 %24)
  %p_key.20.p_key.20.p_key.20. = load i32, ptr %p_key.20.p_key.20.p_key.20..sroa_idx, align 4
  %25 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %p_key.20.p_key.20.p_key.20., ptr %4, align 4
  %26 = ptrtoint ptr %p_key.24.p_key.24.p_key.24..sroa_idx to i32
  call void @__asan_load4_noabort(i32 %26)
  %p_key.24.p_key.24.p_key.24. = load i32, ptr %p_key.24.p_key.24.p_key.24..sroa_idx, align 4
  %27 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %p_key.24.p_key.24.p_key.24., ptr %5, align 4
  %28 = ptrtoint ptr %p_key.28.p_key.28.p_key.28..sroa_idx to i32
  call void @__asan_load4_noabort(i32 %28)
  %p_key.28.p_key.28.p_key.28. = load i32, ptr %p_key.28.p_key.28.p_key.28..sroa_idx, align 4
  %29 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %p_key.28.p_key.28.p_key.28., ptr %6, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end
  %i.085 = phi i32 [ 0, %if.end ], [ %inc, %for.body.for.body_crit_edge ]
  %mul = shl nuw i32 %i.085, 1
  call fastcc void @W(ptr noundef nonnull %key, i32 noundef %mul)
  %add = or i32 %mul, 1
  call fastcc void @W(ptr noundef nonnull %key, i32 noundef %add)
  %30 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %key, align 4
  %32 = trunc i32 %31 to i8
  %conv = and i8 %32, 31
  %arrayidx22 = getelementptr %struct.cast6_ctx, ptr %c, i32 0, i32 1, i32 %i.085
  %33 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv, ptr %arrayidx22, align 4
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %1, align 4
  %36 = trunc i32 %35 to i8
  %conv26 = and i8 %36, 31
  %arrayidx29 = getelementptr %struct.cast6_ctx, ptr %c, i32 0, i32 1, i32 %i.085, i32 1
  %37 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv26, ptr %arrayidx29, align 1
  %38 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %3, align 4
  %40 = trunc i32 %39 to i8
  %conv32 = and i8 %40, 31
  %arrayidx35 = getelementptr %struct.cast6_ctx, ptr %c, i32 0, i32 1, i32 %i.085, i32 2
  %41 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv32, ptr %arrayidx35, align 2
  %42 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %5, align 4
  %44 = trunc i32 %43 to i8
  %conv38 = and i8 %44, 31
  %arrayidx41 = getelementptr %struct.cast6_ctx, ptr %c, i32 0, i32 1, i32 %i.085, i32 3
  %45 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %conv38, ptr %arrayidx41, align 1
  %46 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %6, align 4
  %arrayidx43 = getelementptr [12 x [4 x i32]], ptr %c, i32 0, i32 %i.085
  %48 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %arrayidx43, align 4
  %49 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %4, align 4
  %arrayidx48 = getelementptr [12 x [4 x i32]], ptr %c, i32 0, i32 %i.085, i32 1
  %51 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %arrayidx48, align 4
  %52 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %2, align 4
  %arrayidx52 = getelementptr [12 x [4 x i32]], ptr %c, i32 0, i32 %i.085, i32 2
  %54 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %arrayidx52, align 4
  %55 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %0, align 4
  %arrayidx56 = getelementptr [12 x [4 x i32]], ptr %c, i32 0, i32 %i.085, i32 3
  %57 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %arrayidx56, align 4
  %inc = add nuw nsw i32 %i.085, 1
  %exitcond.not = icmp eq i32 %inc, 12
  br i1 %exitcond.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %p_key)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %key) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly inlinehint mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @W(ptr nocapture noundef %key, i32 noundef %i) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx = getelementptr [24 x [8 x i32]], ptr @Tm, i32 0, i32 %i
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %arrayidx2 = getelementptr i32, ptr %key, i32 7
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx2, align 4
  %add = add i32 %3, %1
  %rem = and i32 %i, 3
  %arrayidx3 = getelementptr [4 x [8 x i8]], ptr @Tr, i32 0, i32 %rem
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx3, align 1
  %conv = zext i8 %5 to i32
  %or.i = tail call i32 @llvm.fshl.i32(i32 %add, i32 %add, i32 %conv) #7
  %shr = lshr i32 %or.i, 24
  %arrayidx5 = getelementptr [256 x i32], ptr @cast_s1, i32 0, i32 %shr
  %6 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx5, align 4
  %shr6 = lshr i32 %or.i, 16
  %and = and i32 %shr6, 255
  %arrayidx7 = getelementptr [256 x i32], ptr @cast_s2, i32 0, i32 %and
  %8 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx7, align 4
  %xor = xor i32 %9, %7
  %shr8 = lshr i32 %or.i, 8
  %and9 = and i32 %shr8, 255
  %arrayidx10 = getelementptr [256 x i32], ptr @cast_s3, i32 0, i32 %and9
  %10 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx10, align 4
  %sub = sub i32 %xor, %11
  %and11 = and i32 %or.i, 255
  %arrayidx12 = getelementptr [256 x i32], ptr @cast_s4, i32 0, i32 %and11
  %12 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx12, align 4
  %add13 = add i32 %sub, %13
  %arrayidx14 = getelementptr i32, ptr %key, i32 6
  %14 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx14, align 4
  %xor15 = xor i32 %15, %add13
  store i32 %xor15, ptr %arrayidx14, align 4
  %arrayidx17 = getelementptr [24 x [8 x i32]], ptr @Tm, i32 0, i32 %i, i32 1
  %16 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx17, align 4
  %xor19 = xor i32 %17, %xor15
  %arrayidx22 = getelementptr [4 x [8 x i8]], ptr @Tr, i32 0, i32 %rem, i32 1
  %18 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx22, align 1
  %conv23 = zext i8 %19 to i32
  %or.i253 = tail call i32 @llvm.fshl.i32(i32 %xor19, i32 %xor19, i32 %conv23) #7
  %shr25 = lshr i32 %or.i253, 24
  %arrayidx26 = getelementptr [256 x i32], ptr @cast_s1, i32 0, i32 %shr25
  %20 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx26, align 4
  %shr27 = lshr i32 %or.i253, 16
  %and28 = and i32 %shr27, 255
  %arrayidx29 = getelementptr [256 x i32], ptr @cast_s2, i32 0, i32 %and28
  %22 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx29, align 4
  %sub30 = sub i32 %21, %23
  %shr31 = lshr i32 %or.i253, 8
  %and32 = and i32 %shr31, 255
  %arrayidx33 = getelementptr [256 x i32], ptr @cast_s3, i32 0, i32 %and32
  %24 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx33, align 4
  %add34 = add i32 %sub30, %25
  %and35 = and i32 %or.i253, 255
  %arrayidx36 = getelementptr [256 x i32], ptr @cast_s4, i32 0, i32 %and35
  %26 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx36, align 4
  %xor37 = xor i32 %add34, %27
  %arrayidx38 = getelementptr i32, ptr %key, i32 5
  %28 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx38, align 4
  %xor39 = xor i32 %xor37, %29
  store i32 %xor39, ptr %arrayidx38, align 4
  %arrayidx41 = getelementptr [24 x [8 x i32]], ptr @Tm, i32 0, i32 %i, i32 2
  %30 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx41, align 4
  %sub43 = sub i32 %31, %xor39
  %arrayidx46 = getelementptr [4 x [8 x i8]], ptr @Tr, i32 0, i32 %rem, i32 2
  %32 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx46, align 1
  %conv47 = zext i8 %33 to i32
  %or.i254 = tail call i32 @llvm.fshl.i32(i32 %sub43, i32 %sub43, i32 %conv47) #7
  %shr49 = lshr i32 %or.i254, 24
  %arrayidx50 = getelementptr [256 x i32], ptr @cast_s1, i32 0, i32 %shr49
  %34 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx50, align 4
  %shr51 = lshr i32 %or.i254, 16
  %and52 = and i32 %shr51, 255
  %arrayidx53 = getelementptr [256 x i32], ptr @cast_s2, i32 0, i32 %and52
  %36 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx53, align 4
  %add54 = add i32 %37, %35
  %shr55 = lshr i32 %or.i254, 8
  %and56 = and i32 %shr55, 255
  %arrayidx57 = getelementptr [256 x i32], ptr @cast_s3, i32 0, i32 %and56
  %38 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx57, align 4
  %xor58 = xor i32 %add54, %39
  %and59 = and i32 %or.i254, 255
  %arrayidx60 = getelementptr [256 x i32], ptr @cast_s4, i32 0, i32 %and59
  %40 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx60, align 4
  %sub61 = sub i32 %xor58, %41
  %arrayidx62 = getelementptr i32, ptr %key, i32 4
  %42 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx62, align 4
  %xor63 = xor i32 %43, %sub61
  store i32 %xor63, ptr %arrayidx62, align 4
  %arrayidx65 = getelementptr [24 x [8 x i32]], ptr @Tm, i32 0, i32 %i, i32 3
  %44 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx65, align 4
  %add67 = add i32 %45, %xor63
  %arrayidx70 = getelementptr [4 x [8 x i8]], ptr @Tr, i32 0, i32 %rem, i32 3
  %46 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx70, align 1
  %conv71 = zext i8 %47 to i32
  %or.i255 = tail call i32 @llvm.fshl.i32(i32 %add67, i32 %add67, i32 %conv71) #7
  %shr73 = lshr i32 %or.i255, 24
  %arrayidx74 = getelementptr [256 x i32], ptr @cast_s1, i32 0, i32 %shr73
  %48 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx74, align 4
  %shr75 = lshr i32 %or.i255, 16
  %and76 = and i32 %shr75, 255
  %arrayidx77 = getelementptr [256 x i32], ptr @cast_s2, i32 0, i32 %and76
  %50 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx77, align 4
  %xor78 = xor i32 %51, %49
  %shr79 = lshr i32 %or.i255, 8
  %and80 = and i32 %shr79, 255
  %arrayidx81 = getelementptr [256 x i32], ptr @cast_s3, i32 0, i32 %and80
  %52 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx81, align 4
  %sub82 = sub i32 %xor78, %53
  %and83 = and i32 %or.i255, 255
  %arrayidx84 = getelementptr [256 x i32], ptr @cast_s4, i32 0, i32 %and83
  %54 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx84, align 4
  %add85 = add i32 %sub82, %55
  %arrayidx86 = getelementptr i32, ptr %key, i32 3
  %56 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx86, align 4
  %xor87 = xor i32 %57, %add85
  store i32 %xor87, ptr %arrayidx86, align 4
  %arrayidx89 = getelementptr [24 x [8 x i32]], ptr @Tm, i32 0, i32 %i, i32 4
  %58 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx89, align 4
  %xor91 = xor i32 %59, %xor87
  %arrayidx94 = getelementptr [4 x [8 x i8]], ptr @Tr, i32 0, i32 %rem, i32 4
  %60 = ptrtoint ptr %arrayidx94 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx94, align 1
  %conv95 = zext i8 %61 to i32
  %or.i256 = tail call i32 @llvm.fshl.i32(i32 %xor91, i32 %xor91, i32 %conv95) #7
  %shr97 = lshr i32 %or.i256, 24
  %arrayidx98 = getelementptr [256 x i32], ptr @cast_s1, i32 0, i32 %shr97
  %62 = ptrtoint ptr %arrayidx98 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx98, align 4
  %shr99 = lshr i32 %or.i256, 16
  %and100 = and i32 %shr99, 255
  %arrayidx101 = getelementptr [256 x i32], ptr @cast_s2, i32 0, i32 %and100
  %64 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx101, align 4
  %sub102 = sub i32 %63, %65
  %shr103 = lshr i32 %or.i256, 8
  %and104 = and i32 %shr103, 255
  %arrayidx105 = getelementptr [256 x i32], ptr @cast_s3, i32 0, i32 %and104
  %66 = ptrtoint ptr %arrayidx105 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx105, align 4
  %add106 = add i32 %sub102, %67
  %and107 = and i32 %or.i256, 255
  %arrayidx108 = getelementptr [256 x i32], ptr @cast_s4, i32 0, i32 %and107
  %68 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx108, align 4
  %xor109 = xor i32 %add106, %69
  %arrayidx110 = getelementptr i32, ptr %key, i32 2
  %70 = ptrtoint ptr %arrayidx110 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx110, align 4
  %xor111 = xor i32 %xor109, %71
  store i32 %xor111, ptr %arrayidx110, align 4
  %arrayidx113 = getelementptr [24 x [8 x i32]], ptr @Tm, i32 0, i32 %i, i32 5
  %72 = ptrtoint ptr %arrayidx113 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx113, align 4
  %sub115 = sub i32 %73, %xor111
  %arrayidx118 = getelementptr [4 x [8 x i8]], ptr @Tr, i32 0, i32 %rem, i32 5
  %74 = ptrtoint ptr %arrayidx118 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %arrayidx118, align 1
  %conv119 = zext i8 %75 to i32
  %or.i257 = tail call i32 @llvm.fshl.i32(i32 %sub115, i32 %sub115, i32 %conv119) #7
  %shr121 = lshr i32 %or.i257, 24
  %arrayidx122 = getelementptr [256 x i32], ptr @cast_s1, i32 0, i32 %shr121
  %76 = ptrtoint ptr %arrayidx122 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx122, align 4
  %shr123 = lshr i32 %or.i257, 16
  %and124 = and i32 %shr123, 255
  %arrayidx125 = getelementptr [256 x i32], ptr @cast_s2, i32 0, i32 %and124
  %78 = ptrtoint ptr %arrayidx125 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %arrayidx125, align 4
  %add126 = add i32 %79, %77
  %shr127 = lshr i32 %or.i257, 8
  %and128 = and i32 %shr127, 255
  %arrayidx129 = getelementptr [256 x i32], ptr @cast_s3, i32 0, i32 %and128
  %80 = ptrtoint ptr %arrayidx129 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx129, align 4
  %xor130 = xor i32 %add126, %81
  %and131 = and i32 %or.i257, 255
  %arrayidx132 = getelementptr [256 x i32], ptr @cast_s4, i32 0, i32 %and131
  %82 = ptrtoint ptr %arrayidx132 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %arrayidx132, align 4
  %sub133 = sub i32 %xor130, %83
  %arrayidx134 = getelementptr i32, ptr %key, i32 1
  %84 = ptrtoint ptr %arrayidx134 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %arrayidx134, align 4
  %xor135 = xor i32 %85, %sub133
  store i32 %xor135, ptr %arrayidx134, align 4
  %arrayidx137 = getelementptr [24 x [8 x i32]], ptr @Tm, i32 0, i32 %i, i32 6
  %86 = ptrtoint ptr %arrayidx137 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %arrayidx137, align 4
  %add139 = add i32 %87, %xor135
  %arrayidx142 = getelementptr [4 x [8 x i8]], ptr @Tr, i32 0, i32 %rem, i32 6
  %88 = ptrtoint ptr %arrayidx142 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %arrayidx142, align 1
  %conv143 = zext i8 %89 to i32
  %or.i258 = tail call i32 @llvm.fshl.i32(i32 %add139, i32 %add139, i32 %conv143) #7
  %shr145 = lshr i32 %or.i258, 24
  %arrayidx146 = getelementptr [256 x i32], ptr @cast_s1, i32 0, i32 %shr145
  %90 = ptrtoint ptr %arrayidx146 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %arrayidx146, align 4
  %shr147 = lshr i32 %or.i258, 16
  %and148 = and i32 %shr147, 255
  %arrayidx149 = getelementptr [256 x i32], ptr @cast_s2, i32 0, i32 %and148
  %92 = ptrtoint ptr %arrayidx149 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %arrayidx149, align 4
  %xor150 = xor i32 %93, %91
  %shr151 = lshr i32 %or.i258, 8
  %and152 = and i32 %shr151, 255
  %arrayidx153 = getelementptr [256 x i32], ptr @cast_s3, i32 0, i32 %and152
  %94 = ptrtoint ptr %arrayidx153 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %arrayidx153, align 4
  %sub154 = sub i32 %xor150, %95
  %and155 = and i32 %or.i258, 255
  %arrayidx156 = getelementptr [256 x i32], ptr @cast_s4, i32 0, i32 %and155
  %96 = ptrtoint ptr %arrayidx156 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %arrayidx156, align 4
  %add157 = add i32 %sub154, %97
  %98 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %key, align 4
  %xor159 = xor i32 %99, %add157
  store i32 %xor159, ptr %key, align 4
  %arrayidx161 = getelementptr [24 x [8 x i32]], ptr @Tm, i32 0, i32 %i, i32 7
  %100 = ptrtoint ptr %arrayidx161 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %arrayidx161, align 4
  %xor163 = xor i32 %101, %xor159
  %arrayidx166 = getelementptr [4 x [8 x i8]], ptr @Tr, i32 0, i32 %rem, i32 7
  %102 = ptrtoint ptr %arrayidx166 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %arrayidx166, align 1
  %conv167 = zext i8 %103 to i32
  %or.i259 = tail call i32 @llvm.fshl.i32(i32 %xor163, i32 %xor163, i32 %conv167) #7
  %shr169 = lshr i32 %or.i259, 24
  %arrayidx170 = getelementptr [256 x i32], ptr @cast_s1, i32 0, i32 %shr169
  %104 = ptrtoint ptr %arrayidx170 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %arrayidx170, align 4
  %shr171 = lshr i32 %or.i259, 16
  %and172 = and i32 %shr171, 255
  %arrayidx173 = getelementptr [256 x i32], ptr @cast_s2, i32 0, i32 %and172
  %106 = ptrtoint ptr %arrayidx173 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %arrayidx173, align 4
  %sub174 = sub i32 %105, %107
  %shr175 = lshr i32 %or.i259, 8
  %and176 = and i32 %shr175, 255
  %arrayidx177 = getelementptr [256 x i32], ptr @cast_s3, i32 0, i32 %and176
  %108 = ptrtoint ptr %arrayidx177 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %arrayidx177, align 4
  %add178 = add i32 %sub174, %109
  %and179 = and i32 %or.i259, 255
  %arrayidx180 = getelementptr [256 x i32], ptr @cast_s4, i32 0, i32 %and179
  %110 = ptrtoint ptr %arrayidx180 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %arrayidx180, align 4
  %xor181 = xor i32 %111, %3
  %xor183 = xor i32 %xor181, %add178
  %112 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %xor183, ptr %arrayidx2, align 4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cast6_setkey(ptr nocapture noundef writeonly %tfm, ptr nocapture noundef readonly %key, i32 noundef %keylen) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  %call1 = tail call i32 @__cast6_setkey(ptr noundef %__crt_ctx.i, ptr noundef %key, i32 noundef %keylen)
  ret i32 %call1
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @__cast6_encrypt(ptr noundef readonly %ctx, ptr nocapture noundef writeonly %outbuf, ptr nocapture noundef readonly %inbuf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %inbuf to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %inbuf, align 1
  %add.ptr = getelementptr i8, ptr %inbuf, i32 4
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %add.ptr, align 1
  %add.ptr3 = getelementptr i8, ptr %inbuf, i32 8
  %4 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %add.ptr3, align 1
  %add.ptr6 = getelementptr i8, ptr %inbuf, i32 12
  %6 = ptrtoint ptr %add.ptr6 to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %add.ptr6, align 1
  %Kr11 = getelementptr inbounds %struct.cast6_ctx, ptr %ctx, i32 0, i32 1
  %8 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ctx, align 4
  %add.i = add i32 %9, %7
  %10 = ptrtoint ptr %Kr11 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %Kr11, align 1
  %conv.i = zext i8 %11 to i32
  %or.i.i = tail call i32 @llvm.fshl.i32(i32 %add.i, i32 %add.i, i32 %conv.i) #7
  %shr.i = lshr i32 %or.i.i, 24
  %arrayidx3.i = getelementptr [256 x i32], ptr @cast_s1, i32 0, i32 %shr.i
  %12 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx3.i, align 4
  %shr4.i = lshr i32 %or.i.i, 16
  %and.i = and i32 %shr4.i, 255
  %arrayidx5.i = getelementptr [256 x i32], ptr @cast_s2, i32 0, i32 %and.i
  %14 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx5.i, align 4
  %xor.i = xor i32 %15, %13
  %shr6.i = lshr i32 %or.i.i, 8
  %and7.i = and i32 %shr6.i, 255
  %arrayidx8.i = getelementptr [256 x i32], ptr @cast_s3, i32 0, i32 %and7.i
  %16 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx8.i, align 4
  %sub.i = sub i32 %xor.i, %17
  %and9.i = and i32 %or.i.i, 255
  %arrayidx10.i = getelementptr [256 x i32], ptr @cast_s4, i32 0, i32 %and9.i
  %18 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx10.i, align 4
  %add11.i = add i32 %sub.i, %19
  %xor13.i = xor i32 %add11.i, %5
  %arrayidx14.i = getelementptr i32, ptr %ctx, i32 1
  %20 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx14.i, align 4
  %xor16.i = xor i32 %xor13.i, %21
  %arrayidx17.i = getelementptr %struct.cast6_ctx, ptr %ctx, i32 0, i32 1, i32 0, i32 1
  %22 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx17.i, align 1
  %conv18.i = zext i8 %23 to i32
  %or.i109.i = tail call i32 @llvm.fshl.i32(i32 %xor16.i, i32 %xor16.i, i32 %conv18.i) #7
  %shr20.i = lshr i32 %or.i109.i, 24
  %arrayidx21.i = getelementptr [256 x i32], ptr @cast_s1, i32 0, i32 %shr20.i
  %24 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx21.i, align 4
  %shr22.i = lshr i32 %or.i109.i, 16
  %and23.i = and i32 %shr22.i, 255
  %arrayidx24.i = getelementptr [256 x i32], ptr @cast_s2, i32 0, i32 %and23.i
  %26 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx24.i, align 4
  %sub25.i = sub i32 %25, %27
  %shr26.i = lshr i32 %or.i109.i, 8
  %and27.i = and i32 %shr26.i, 255
  %arrayidx28.i = getelementptr [256 x i32], ptr @cast_s3, i32 0, i32 %and27.i
  %28 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx28.i, align 4
  %add29.i = add i32 %sub25.i, %29
  %and30.i = and i32 %or.i109.i, 255
  %arrayidx31.i = getelementptr [256 x i32], ptr @cast_s4, i32 0, i32 %and30.i
  %30 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx31.i, align 4
  %xor32.i = xor i32 %31, %3
  %xor34.i = xor i32 %xor32.i, %add29.i
  %arrayidx35.i = getelementptr i32, ptr %ctx, i32 2
  %32 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx35.i, align 4
  %sub37.i = sub i32 %33, %xor34.i
  %arrayidx38.i = getelementptr %struct.cast6_ctx, ptr %ctx, i32 0, i32 1, i32 0, i32 2
  %34 = ptrtoint ptr %arrayidx38.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx38.i, align 1
  %conv39.i = zext i8 %35 to i32
  %or.i110.i = tail call i32 @llvm.fshl.i32(i32 %sub37.i, i32 %sub37.i, i32 %conv39.i) #7
  %shr41.i = lshr i32 %or.i110.i, 24
  %arrayidx42.i = getelementptr [256 x i32], ptr @cast_s1, i32 0, i32 %shr41.i
  %36 = ptrtoint ptr %arrayidx42.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx42.i, align 4
  %shr43.i = lshr i32 %or.i110.i, 16
  %and44.i = and i32 %shr43.i, 255
  %arrayidx45.i = getelementptr [256 x i32], ptr @cast_s2, i32 0, i32 %and44.i
  %38 = ptrtoint ptr %arrayidx45.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx45.i, align 4
  %add46.i = add i32 %39, %37
  %shr47.i = lshr i32 %or.i110.i, 8
  %and48.i = and i32 %shr47.i, 255
  %arrayidx49.i = getelementptr [256 x i32], ptr @cast_s3, i32 0, i32 %and48.i
  %40 = ptrtoint ptr %arrayidx49.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx49.i, align 4
  %xor50.i = xor i32 %add46.i, %41
  %and51.i = and i32 %or.i110.i, 255
  %arrayidx52.i = getelementptr [256 x i32], ptr @cast_s4, i32 0, i32 %and51.i
  %42 = ptrtoint ptr %arrayidx52.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx52.i, align 4
  %sub53.i = sub i32 %xor50.i, %43
  %xor55.i = xor i32 %sub53.i, %1
  %arrayidx56.i = getelementptr i32, ptr %ctx, i32 3
  %44 = ptrtoint ptr %arrayidx56.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx56.i, align 4
  %add58.i = add i32 %xor55.i, %45
  %arrayidx59.i = getelementptr %struct.cast6_ctx, ptr %ctx, i32 0, i32 1, i32 0, i32 3
  %46 = ptrtoint ptr %arrayidx59.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx59.i, align 1
  %conv60.i = zext i8 %47 to i32
  %or.i111.i = tail call i32 @llvm.fshl.i32(i32 %add58.i, i32 %add58.i, i32 %conv60.i) #7
  %shr62.i = lshr i32 %or.i111.i, 24
  %arrayidx63.i = getelementptr [256 x i32], ptr @cast_s1, i32 0, i32 %shr62.i
  %48 = ptrtoint ptr %arrayidx63.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx63.i, align 4
  %shr64.i = lshr i32 %or.i111.i, 16
  %and65.i = and i32 %shr64.i, 255
  %arrayidx66.i = getelementptr [256 x i32], ptr @cast_s2, i32 0, i32 %and65.i
  %50 = ptrtoint ptr %arrayidx66.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx66.i, align 4
  %xor67.i = xor i32 %51, %49
  %shr68.i = lshr i32 %or.i111.i, 8
  %and69.i = and i32 %shr68.i, 255
  %arrayidx70.i = getelementptr [256 x i32], ptr @cast_s3, i32 0, i32 %and69.i
  %52 = ptrtoint ptr %arrayidx70.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx70.i, align 4
  %sub71.i = sub i32 %xor67.i, %53
  %and72.i = and i32 %or.i111.i, 255
  %arrayidx73.i = getelementptr [256 x i32], ptr @cast_s4, i32 0, i32 %and72.i
  %54 = ptrtoint ptr %arrayidx73.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx73.i, align 4
  %add74.i = add i32 %sub71.i, %55
  %xor76.i = xor i32 %add74.i, %7
  %arrayidx16 = getelementptr [12 x [4 x i32]], ptr %ctx, i32 0, i32 1
  %arrayidx19 = getelementptr %struct.cast6_ctx, ptr %ctx, i32 0, i32 1, i32 1
  %56 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx16, align 4
  %add.i151 = add i32 %xor76.i, %57
  %58 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx19, align 1
  %conv.i152 = zext i8 %59 to i32
  %or.i.i153 = tail call i32 @llvm.fshl.i32(i32 %add.i151, i32 %add.i151, i32 %conv.i152) #7
  %shr.i154 = lshr i32 %or.i.i153, 24
  %arrayidx3.i155 = getelementptr [256 x i32], ptr @cast_s1, i32 0, i32 %shr.i154
  %60 = ptrtoint ptr %arrayidx3.i155 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx3.i155, align 4
  %shr4.i156 = lshr i32 %or.i.i153, 16
  %and.i157 = and i32 %shr4.i156, 255
  %arrayidx5.i158 = getelementptr [256 x i32], ptr @cast_s2, i32 0, i32 %and.i157
  %62 = ptrtoint ptr %arrayidx5.i158 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx5.i158, align 4
  %xor.i159 = xor i32 %63, %61
  %shr6.i160 = lshr i32 %or.i.i153, 8
  %and7.i161 = and i32 %shr6.i160, 255
  %arrayidx8.i162 = getelementptr [256 x i32], ptr @cast_s3, i32 0, i32 %and7.i161
  %64 = ptrtoint ptr %arrayidx8.i162 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx8.i162, align 4
  %sub.i163 = sub i32 %xor.i159, %65
  %and9.i164 = and i32 %or.i.i153, 255
  %arrayidx10.i165 = getelementptr [256 x i32], ptr @cast_s4, i32 0, i32 %and9.i164
  %66 = ptrtoint ptr %arrayidx10.i165 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx10.i165, align 4
  %add11.i166 = add i32 %sub.i163, %67
  %xor13.i168 = xor i32 %add11.i166, %xor13.i
  %arrayidx14.i169 = getelementptr [12 x [4 x i32]], ptr %ctx, i32 0, i32 1, i32 1
  %68 = ptrtoint ptr %arrayidx14.i169 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx14.i169, align 4
  %xor16.i170 = xor i32 %xor13.i168, %69
  %arrayidx17.i171 = getelementptr %struct.cast6_ctx, ptr %ctx, i32 0, i32 1, i32 1, i32 1
  %70 = ptrtoint ptr %arrayidx17.i171 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx17.i171, align 1
  %conv18.i172 = zext i8 %71 to i32
  %or.i109.i173 = tail call i32 @llvm.fshl.i32(i32 %xor16.i170, i32 %xor16.i170, i32 %conv18.i172) #7
  %shr20.i174 = lshr i32 %or.i109.i173, 24
  %arrayidx21.i175 = getelementptr [256 x i32], ptr @cast_s1, i32 0, i32 %shr20.i174
  %72 = ptrtoint ptr %arrayidx21.i175 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx21.i175, align 4
  %shr22.i176 = lshr i32 %or.i109.i173, 16
  %and23.i177 = and i32 %shr22.i176, 255
  %arrayidx24.i178 = getelementptr [256 x i32], ptr @cast_s2, i32 0, i32 %and23.i177
  %74 = ptrtoint ptr %arrayidx24.i178 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx24.i178, align 4
  %sub25.i179 = sub i32 %73, %75
  %shr26.i180 = lshr i32 %or.i109.i173, 8
  %and27.i181 = and i32 %shr26.i180, 255
  %arrayidx28.i182 = getelementptr [256 x i32], ptr @cast_s3, i32 0, i32 %and27.i181
  %76 = ptrtoint ptr %arrayidx28.i182 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx28.i182, align 4
  %add29.i183 = add i32 %sub25.i179, %77
  %and30.i184 = and i32 %or.i109.i173, 255
  %arrayidx31.i185 = getelementptr [256 x i32], ptr @cast_s4, i32 0, i32 %and30.i184
  %78 = ptrtoint ptr %arrayidx31.i185 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %arrayidx31.i185, align 4
  %xor32.i186 = xor i32 %79, %xor34.i
  %xor34.i188 = xor i32 %xor32.i186, %add29.i183
  %arrayidx35.i189 = getelementptr [12 x [4 x i32]], ptr %ctx, i32 0, i32 1, i32 2
  %80 = ptrtoint ptr %arrayidx35.i189 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx35.i189, align 4
  %sub37.i190 = sub i32 %81, %xor34.i188
  %arrayidx38.i191 = getelementptr %struct.cast6_ctx, ptr %ctx, i32 0, i32 1, i32 1, i32 2
  %82 = ptrtoint ptr %arrayidx38.i191 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %arrayidx38.i191, align 1
  %conv39.i192 = zext i8 %83 to i32
  %or.i110.i193 = tail call i32 @llvm.fshl.i32(i32 %sub37.i190, i32 %sub37.i190, i32 %conv39.i192) #7
  %shr41.i194 = lshr i32 %or.i110.i193, 24
  %arrayidx42.i195 = getelementptr [256 x i32], ptr @cast_s1, i32 0, i32 %shr41.i194
  %84 = ptrtoint ptr %arrayidx42.i195 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %arrayidx42.i195, align 4
  %shr43.i196 = lshr i32 %or.i110.i193, 16
  %and44.i197 = and i32 %shr43.i196, 255
  %arrayidx45.i198 = getelementptr [256 x i32], ptr @cast_s2, i32 0, i32 %and44.i197
  %86 = ptrtoint ptr %arrayidx45.i198 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %arrayidx45.i198, align 4
  %add46.i199 = add i32 %87, %85
  %shr47.i200 = lshr i32 %or.i110.i193, 8
  %and48.i201 = and i32 %shr47.i200, 255
  %arrayidx49.i202 = getelementptr [256 x i32], ptr @cast_s3, i32 0, i32 %and48.i201
  %88 = ptrtoint ptr %arrayidx49.i202 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %arrayidx49.i202, align 4
  %xor50.i203 = xor i32 %add46.i199, %89
  %and51.i204 = and i32 %or.i110.i193, 255
  %arrayidx52.i205 = getelementptr [256 x i32], ptr @cast_s4, i32 0, i32 %and51.i204
  %90 = ptrtoint ptr %arrayidx52.i205 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %arrayidx52.i205, align 4
  %sub53.i206 = sub i32 %xor50.i203, %91
  %xor55.i207 = xor i32 %sub53.i206, %xor55.i
  %arrayidx56.i208 = getelementptr [12 x [4 x i32]], ptr %ctx, i32 0, i32 1, i32 3
  %92 = ptrtoint ptr %arrayidx56.i208 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %arrayidx56.i208, align 4
  %add58.i209 = add i32 %xor55.i207, %93
  %arrayidx59.i210 = getelementptr %struct.cast6_ctx, ptr %ctx, i32 0, i32 1, i32 1, i32 3
  %94 = ptrtoint ptr %arrayidx59.i210 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %arrayidx59.i210, align 1
  %conv60.i211 = zext i8 %95 to i32
  %or.i111.i212 = tail call i32 @llvm.fshl.i32(i32 %add58.i209, i32 %add58.i209, i32 %conv60.i211) #7
  %shr62.i213 = lshr i32 %or.i111.i212, 24
  %arrayidx63.i214 = getelementptr [256 x i32], ptr @cast_s1, i32 0, i32 %shr62.i213
  %96 = ptrtoint ptr %arrayidx63.i214 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %arrayidx63.i214, align 4
  %shr64.i215 = lshr i32 %or.i111.i212, 16
  %and65.i216 = and i32 %shr64.i215, 255
  %arrayidx66.i217 = getelementptr [256 x i32], ptr @cast_s2, i32 0, i32 %and65.i216
  %98 = ptrtoint ptr %arrayidx66.i217 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %arrayidx66.i217, align 4
  %xor67.i218 = xor i32 %99, %97
  %shr68.i219 = lshr i32 %or.i111.i212, 8
  %and69.i220 = and i32 %shr68.i219, 255
  %arrayidx70.i221 = getelementptr [256 x i32], ptr @cast_s3, i32 0, i32 %and69.i220
  %100 = ptrtoint ptr %arrayidx70.i221 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %arrayidx70.i221, align 4
  %sub71.i222 = sub i32 %xor67.i218, %101
  %and72.i223 = and i32 %or.i111.i212, 255
  %arrayidx73.i224 = getelementptr [256 x i32], ptr @cast_s4, i32 0, i32 %and72.i223
  %102 = ptrtoint ptr %arrayidx73.i224 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %arrayidx73.i224, align 4
  %add74.i225 = add i32 %sub71.i222, %103
  %xor76.i226 = xor i32 %add74.i225, %xor76.i
  %arrayidx23 = getelementptr [12 x [4 x i32]], ptr %ctx, i32 0, i32 2
  %arrayidx26 = getelementptr %struct.cast6_ctx, ptr %ctx, i32 0, i32 1, i32 2
  %104 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %arrayidx23, align 4
  %add.i228 = add i32 %xor76.i226, %105
  %106 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %arrayidx26, align 1
  %conv.i229 = zext i8 %107 to i32
  %or.i.i230 = tail call i32 @llvm.fshl.i32(i32 %add.i228, i32 %add.i228, i32 %conv.i229) #7
  %shr.i231 = lshr i32 %or.i.i230, 24
  %arrayidx3.i232 = getelementptr [256 x i32], ptr @cast_s1, i32 0, i32 %shr.i231
  %108 = ptrtoint ptr %arrayidx3.i232 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %arrayidx3.i232, align 4
  %shr4.i233 = lshr i32 %or.i.i230, 16
  %and.i234 = and i32 %shr4.i233, 255
  %arrayidx5.i235 = getelementptr [256 x i32], ptr @cast_s2, i32 0, i32 %and.i234
  %110 = ptrtoint ptr %arrayidx5.i235 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %arrayidx5.i235, align 4
  %xor.i236 = xor i32 %111, %109
  %shr6.i237 = lshr i32 %or.i.i230, 8
  %and7.i238 = and i32 %shr6.i237, 255
  %arrayidx8.i239 = getelementptr [256 x i32], ptr @cast_s3, i32 0, i32 %and7.i238
  %112 = ptrtoint ptr %arrayidx8.i239 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %arrayidx8.i239, align 4
  %sub.i240 = sub i32 %xor.i236, %113
  %and9.i241 = and i32 %or.i.i230, 255
  %arrayidx10.i242 = getelementptr [256 x i32], ptr @cast_s4, i32 0, i32 %and9.i241
  %114 = ptrtoint ptr %arrayidx10.i242 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %arrayidx10.i242, align 4
  %add11.i243 = add i32 %sub.i240, %115
  %xor13.i245 = xor i32 %add11.i243, %xor13.i168
  %arrayidx14.i246 = getelementptr [12 x [4 x i32]], ptr %ctx, i32 0, i32 2, i32 1
  %116 = ptrtoint ptr %arrayidx14.i246 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %arrayidx14.i246, align 4
  %xor16.i247 = xor i32 %xor13.i245, %117
  %arrayidx17.i248 = getelementptr %struct.cast6_ctx, ptr %ctx, i32 0, i32 1, i32 2, i32 1
  %118 = ptrtoint ptr %arrayidx17.i248 to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %arrayidx17.i248, align 1
  %conv18.i249 = zext i8 %119 to i32
  %or.i109.i250 = tail call i32 @llvm.fshl.i32(i32 %xor16.i247, i32 %xor16.i247, i32 %conv18.i249) #7
  %shr20.i251 = lshr i32 %or.i109.i250, 24
  %arrayidx21.i252 = getelementptr [256 x i32], ptr @cast_s1, i32 0, i32 %shr20.i251
  %120 = ptrtoint ptr %arrayidx21.i252 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %arrayidx21.i252, align 4
  %shr22.i253 = lshr i32 %or.i109.i250, 16
  %and23.i254 = and i32 %shr22.i253, 255
  %arrayidx24.i255 = getelementptr [256 x i32], ptr @cast_s2, i32 0, i32 %and23.i254
  %122 = ptrtoint ptr %arrayidx24.i255 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %arrayidx24.i255, align 4
  %sub25.i256 = sub i32 %121, %123
  %shr26.i257 = lshr i32 %or.i109.i250, 8
  %and27.i258 = and i32 %shr26.i257, 255
  %arrayidx28.i259 = getelementptr [256 x i32], ptr @cast_s3, i32 0, i32 %and27.i258
  %124 = ptrtoint ptr %arrayidx28.i259 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %arrayidx28.i259, align 4
  %add29.i260 = add i32 %sub25.i256, %125
  %and30.i261 = and i32 %or.i109.i250, 255
  %arrayidx31.i262 = getelementptr [256 x i32], ptr @cast_s4, i32 0, i32 %and30.i261
  %126 = ptrtoint ptr %arrayidx31.i262 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %arrayidx31.i262, align 4
  %xor32.i263 = xor i32 %127, %xor34.i188
  %xor34.i265 = xor i32 %xor32.i263, %add29.i260
  %arrayidx35.i266 = getelementptr [12 x [4 x i32]], ptr %ctx, i32 0, i32 2, i32 2
  %128 = ptrtoint ptr %arrayidx35.i266 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %arrayidx35.i266, align 4
  %sub37.i267 = sub i32 %129, %xor34.i265
  %arrayidx38.i268 = getelementptr %struct.cast6_ctx, ptr %ctx, i32 0, i32 1, i32 2, i32 2
  %130 = ptrtoint ptr %arrayidx38.i268 to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %arrayidx38.i268, align 1
  %conv39.i269 = zext i8 %131 to i32
  %or.i110.i270 = tail call i32 @llvm.fshl.i32(i32 %sub37.i267, i32 %sub37.i267, i32 %conv39.i269) #7
  %shr41.i271 = lshr i32 %or.i110.i270, 24
  %arrayidx42.i272 = getelementptr [256 x i32], ptr @cast_s1, i32 0, i32 %shr41.i271
  %132 = ptrtoint ptr %arrayidx42.i272 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %arrayidx42.i272, align 4
  %shr43.i273 = lshr i32 %or.i110.i270, 16
  %and44.i274 = and i32 %shr43.i273, 255
  %arrayidx45.i275 = getelementptr [256 x i32], ptr @cast_s2, i32 0, i32 %and44.i274
  %134 = ptrtoint ptr %arrayidx45.i275 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %arrayidx45.i275, align 4
  %add46.i276 = add i32 %135, %133
  %shr47.i277 = lshr i32 %or.i110.i270, 8
  %and48.i278 = and i32 %shr47.i277, 255
  %arrayidx49.i279 = getelementptr [256 x i32], ptr @cast_s3, i32 0, i32 %and48.i278
  %136 = ptrtoint ptr %arrayidx49.i279 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %arrayidx49.i279, align 4
  %xor50.i280 = xor i32 %add46.i276, %137
  %and51.i281 = and i32 %or.i110.i270, 255
  %arrayidx52.i282 = getelementptr [256 x i32], ptr @cast_s4, i32 0, i32 %and51.i281
  %138 = ptrtoint ptr %arrayidx52.i282 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %arrayidx52.i282, align 4
  %sub53.i283 = sub i32 %xor50.i280, %139
  %xor55.i284 = xor i32 %sub53.i283, %xor55.i207
  %arrayidx56.i285 = getelementptr [12 x [4 x i32]], ptr %ctx, i32 0, i32 2, i32 3
  %140 = ptrtoint ptr %arrayidx56.i285 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %arrayidx56.i285, align 4
  %add58.i286 = add i32 %xor55.i284, %141
  %arrayidx59.i287 = getelementptr %struct.cast6_ctx, ptr %ctx, i32 0, i32 1, i32 2, i32 3
  %142 = ptrtoint ptr %arrayidx59.i287 to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %arrayidx59.i287, align 1
  %conv60.i288 = zext i8 %143 to i32
  %or.i111.i289 = tail call i32 @llvm.fshl.i32(i32 %add58.i286, i32 %add58.i286, i32 %conv60.i288) #7
  %shr62.i290 = lshr i32 %or.i111.i289, 24
  %arrayidx63.i291 = getelementptr [256 x i32], ptr @cast_s1, i32 0, i32 %shr62.i290
  %144 = ptrtoint ptr %arrayidx63.i291 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %arrayidx63.i291, align 4
  %shr64.i292 = lshr i32 %or.i111.i289, 16
  %and65.i293 = and i32 %shr64.i292, 255
  %arrayidx66.i294 = getelementptr [256 x i32], ptr @cast_s2, i32 0, i32 %and65.i293
  %146 = ptrtoint ptr %arrayidx66.i294 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %arrayidx66.i294, align 4
  %xor67.i295 = xor i32 %147, %145
  %shr68.i296 = lshr i32 %or.i111.i289, 8
  %and69.i297 = and i32 %shr68.i296, 255
  %arrayidx70.i298 = getelementptr [256 x i32], ptr @cast_s3, i32 0, i32 %and69.i297
  %148 = ptrtoint ptr %arrayidx70.i298 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %arrayidx70.i298, align 4
  %sub71.i299 = sub i32 %xor67.i295, %149
  %and72.i300 = and i32 %or.i111.i289, 255
  %arrayidx73.i301 = getelementptr [256 x i32], ptr @cast_s4, i32 0, i32 %and72.i300
  %150 = ptrtoint ptr %arrayidx73.i301 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %arrayidx73.i301, align 4
  %add74.i302 = add i32 %sub71.i299, %151
  %xor76.i303 = xor i32 %add74.i302, %xor76.i226
  %arrayidx30 = getelementptr [12 x [4 x i32]], ptr %ctx, i32 0, i32 3
  %arrayidx33 = getelementptr %struct.cast6_ctx, ptr %ctx, i32 0, i32 1, i32 3
  %152 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %arrayidx30, align 4
  %add.i305 = add i32 %xor76.i303, %153
  %154 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %arrayidx33, align 1
  %conv.i306 = zext i8 %155 to i32
  %or.i.i307 = tail call i32 @llvm.fshl.i32(i32 %add.i305, i32 %add.i305, i32 %conv.i306) #7
  %shr.i308 = lshr i32 %or.i.i307, 24
  %arrayidx3.i309 = getelementptr [256 x i32], ptr @cast_s1, i32 0, i32 %shr.i308
  %156 = ptrtoint ptr %arrayidx3.i309 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %arrayidx3.i309, align 4
  %shr4.i310 = lshr i32 %or.i.i307, 16
  %and.i311 = and i32 %shr4.i310, 255
  %arrayidx5.i312 = getelementptr [256 x i32], ptr @cast_s2, i32 0, i32 %and.i311
  %158 = ptrtoint ptr %arrayidx5.i312 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %arrayidx5.i312, align 4
  %xor.i313 = xor i32 %159, %157
  %shr6.i314 = lshr i32 %or.i.i307, 8
  %and7.i315 = and i32 %shr6.i314, 255
  %arrayidx8.i316 = getelementptr [256 x i32], ptr @cast_s3, i32 0, i32 %and7.i315
  %160 = ptrtoint ptr %arrayidx8.i316 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %arrayidx8.i316, align 4
  %sub.i317 = sub i32 %xor.i313, %161
  %and9.i318 = and i32 %or.i.i307, 255
  %arrayidx10.i319 = getelementptr [256 x i32], ptr @cast_s4, i32 0, i32 %and9.i318
  %162 = ptrtoint ptr %arrayidx10.i319 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %arrayidx10.i319, align 4
  %add11.i320 = add i32 %sub.i317, %163
  %xor13.i322 = xor i32 %add11.i320, %xor13.i245
  %arrayidx14.i323 = getelementptr [12 x [4 x i32]], ptr %ctx, i32 0, i32 3, i32 1
  %164 = ptrtoint ptr %arrayidx14.i323 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %arrayidx14.i323, align 4
  %xor16.i324 = xor i32 %xor13.i322, %165
  %arrayidx17.i325 = getelementptr %struct.cast6_ctx, ptr %ctx, i32 0, i32 1, i32 3, i32 1
  %166 = ptrtoint ptr %arrayidx17.i325 to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %arrayidx17.i325, align 1
  %conv18.i326 = zext i8 %167 to i32
  %or.i109.i327 = tail call i32 @llvm.fshl.i32(i32 %xor16.i324, i32 %xor16.i324, i32 %conv18.i326) #7
  %shr20.i328 = lshr i32 %or.i109.i327, 24
  %arrayidx21.i329 = getelementptr [256 x i32], ptr @cast_s1, i32 0, i32 %shr20.i328
  %168 = ptrtoint ptr %arrayidx21.i329 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %arrayidx21.i329, align 4
  %shr22.i330 = lshr i32 %or.i109.i327, 16
  %and23.i331 = and i32 %shr22.i330, 255
  %arrayidx24.i332 = getelementptr [256 x i32], ptr @cast_s2, i32 0, i32 %and23.i331
  %170 = ptrtoint ptr %arrayidx24.i332 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %arrayidx24.i332, align 4
  %sub25.i333 = sub i32 %169, %171
  %shr26.i334 = lshr i32 %or.i109.i327, 8
  %and27.i335 = and i32 %shr26.i334, 255
  %arrayidx28.i336 = getelementptr [256 x i32], ptr @cast_s3, i32 0, i32 %and27.i335
  %172 = ptrtoint ptr %arrayidx28.i336 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %arrayidx28.i336, align 4
  %add29.i337 = add i32 %sub25.i333, %173
  %and30.i338 = and i32 %or.i109.i327, 255
  %arrayidx31.i339 = getelementptr [256 x i32], ptr @cast_s4, i32 0, i32 %and30.i338
  %174 = ptrtoint ptr %arrayidx31.i339 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %arrayidx31.i339, align 4
  %xor32.i340 = xor i32 %175, %xor34.i265
  %xor34.i342 = xor i32 %xor32.i340, %add29.i337
  %arrayidx35.i343 = getelementptr [12 x [4 x i32]], ptr %ctx, i32 0, i32 3, i32 2
  %176 = ptrtoint ptr %arrayidx35.i343 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %arrayidx35.i343, align 4
  %sub37.i344 = sub i32 %177, %xor34.i342
  %arrayidx38.i345 = getelementptr %struct.cast6_ctx, ptr %ctx, i32 0, i32 1, i32 3, i32 2
  %178 = ptrtoint ptr %arrayidx38.i345 to i32
  call void @__asan_load1_noabort(i32 %178)
  %179 = load i8, ptr %arrayidx38.i345, align 1
  %conv39.i346 = zext i8 %179 to i32
  %or.i110.i347 = tail call i32 @llvm.fshl.i32(i32 %sub37.i344, i32 %sub37.i344, i32 %conv39.i346) #7
  %shr41.i348 = lshr i32 %or.i110.i347, 24
  %arrayidx42.i349 = getelementptr [256 x i32], ptr @cast_s1, i32 0, i32 %shr41.i348
  %180 = ptrtoint ptr %arrayidx42.i349 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %arrayidx42.i349, align 4
  %shr43.i350 = lshr i32 %or.i110.i347, 16
  %and44.i351 = and i32 %shr43.i350, 255
  %arrayidx45.i352 = getelementptr [256 x i32], ptr @cast_s2, i32 0, i32 %and44.i351
  %182 = ptrtoint ptr %arrayidx45.i352 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %arrayidx45.i352, align 4
  %add46.i353 = add i32 %183, %181
  %shr47.i354 = lshr i32 %or.i110.i347, 8
  %and48.i355 = and i32 %shr47.i354, 255
  %arrayidx49.i356 = getelementptr [256 x i32], ptr @cast_s3, i32 0, i32 %and48.i355
  %184 = ptrtoint ptr %arrayidx49.i356 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %arrayidx49.i356, align 4
  %xor50.i357 = xor i32 %add46.i353, %185
  %and51.i358 = and i32 %or.i110.i347, 255
  %arrayidx52.i359 = getelementptr [256 x i32], ptr @cast_s4, i32 0, i32 %and51.i358
  %186 = ptrtoint ptr %arrayidx52.i359 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %arrayidx52.i359, align 4
  %sub53.i360 = sub i32 %xor50.i357, %187
  %xor55.i361 = xor i32 %sub53.i360, %xor55.i284
  %arrayidx56.i362 = getelementptr [12 x [4 x i32]], ptr %ctx, i32 0, i32 3, i32 3
  %188 = ptrtoint ptr %arrayidx56.i362 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %arrayidx56.i362, align 4
  %add58.i363 = add i32 %xor55.i361, %189
  %arrayidx59.i364 = getelementptr %struct.cast6_ctx, ptr %ctx, i32 0, i32 1, i32 3, i32 3
  %190 = ptrtoint ptr %arrayidx59.i364 to i32
  call void @__asan_load1_noabort(i32 %190)
  %191 = load i8, ptr %arrayidx59.i364, align 1
  %conv60.i365 = zext i8 %191 to i32
  %or.i111.i366 = tail call i32 @llvm.fshl.i32(i32 %add58.i363, i32 %add58.i363, i32 %conv60.i365) #7
  %shr62.i367 = lshr i32 %or.i111.i366, 24
  %arrayidx63.i368 = getelementptr [256 x i32], ptr @cast_s1, i32 0, i32 %shr62.i367
  %192 = ptrtoint ptr %arrayidx63.i368 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %arrayidx63.i368, align 4
  %shr64.i369 = lshr i32 %or.i111.i366, 16
  %and65.i370 = and i32 %shr64.i369, 255
  %arrayidx66.i371 = getelementptr [256 x i32], ptr @cast_s2, i32 0, i32 %and65.i370
  %194 = ptrtoint ptr %arrayidx66.i371 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %arrayidx66.i371, align 4
  %xor67.i372 = xor i32 %195, %193
  %shr68.i373 = lshr i32 %or.i111.i366, 8
  %and69.i374 = and i32 %shr68.i373, 255
  %arrayidx70.i375 = getelementptr [256 x i32], ptr @cast_s3, i32 0, i32 %and69.i374
  %196 = ptrtoint ptr %arrayidx70.i375 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %arrayidx70.i375, align 4
  %sub71.i376 = sub i32 %xor67.i372, %197
  %and72.i377 = and i32 %or.i111.i366, 255
  %arrayidx73.i378 = getelementptr [256 x i32], ptr @cast_s4, i32 0, i32 %and72.i377
  %198 = ptrtoint ptr %arrayidx73.i378 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %arrayidx73.i378, align 4
  %add74.i379 = add i32 %sub71.i376, %199
  %xor76.i380 = xor i32 %add74.i379, %xor76.i303
  %arrayidx37 = getelementptr [12 x [4 x i32]], ptr %ctx, i32 0, i32 4
  %arrayidx40 = getelementptr %struct.cast6_ctx, ptr %ctx, i32 0, i32 1, i32 4
  %200 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %arrayidx37, align 4
  %add.i382 = add i32 %xor76.i380, %201
  %202 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load1_noabort(i32 %202)
  %203 = load i8, ptr %arrayidx40, align 1
  %conv.i383 = zext i8 %203 to i32
  %or.i.i384 = tail call i32 @llvm.fshl.i32(i32 %add.i382, i32 %add.i382, i32 %conv.i383) #7
  %shr.i385 = lshr i32 %or.i.i384, 24
  %arrayidx3.i386 = getelementptr [256 x i32], ptr @cast_s1, i32 0, i32 %shr.i385
  %204 = ptrtoint ptr %arrayidx3.i386 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %arrayidx3.i386, align 4
  %shr4.i387 = lshr i32 %or.i.i384, 16
  %and.i388 = and i32 %shr4.i387, 255
  %arrayidx5.i389 = getelementptr [256 x i32], ptr @cast_s2, i32 0, i32 %and.i388
  %206 = ptrtoint ptr %arrayidx5.i389 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %arrayidx5.i389, align 4
  %xor.i390 = xor i32 %207, %205
  %shr6.i391 = lshr i32 %or.i.i384, 8
  %and7.i392 = and i32 %shr6.i391, 255
  %arrayidx8.i393 = getelementptr [256 x i32], ptr @cast_s3, i32 0, i32 %and7.i392
  %208 = ptrtoint ptr %arrayidx8.i393 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %arrayidx8.i393, align 4
  %sub.i394 = sub i32 %xor.i390, %209
  %and9.i395 = and i32 %or.i.i384, 255
  %arrayidx10.i396 = getelementptr [256 x i32], ptr @cast_s4, i32 0, i32 %and9.i395
  %210 = ptrtoint ptr %arrayidx10.i396 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %arrayidx10.i396, align 4
  %add11.i397 = add i32 %sub.i394, %211
  %xor13.i399 = xor i32 %add11.i397, %xor13.i322
  %arrayidx14.i400 = getelementptr [12 x [4 x i32]], ptr %ctx, i32 0, i32 4, i32 1
  %212 = ptrtoint ptr %arrayidx14.i400 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %arrayidx14.i400, align 4
  %xor16.i401 = xor i32 %xor13.i399, %213
  %arrayidx17.i402 = getelementptr %struct.cast6_ctx, ptr %ctx, i32 0, i32 1, i32 4, i32 1
  %214 = ptrtoint ptr %arrayidx17.i402 to i32
  call void @__asan_load1_noabort(i32 %214)
  %215 = load i8, ptr %arrayidx17.i402, align 1
  %conv18.i403 = zext i8 %215 to i32
  %or.i109.i404 = tail call i32 @llvm.fshl.i32(i32 %xor16.i401, i32 %xor16.i401, i32 %conv18.i403) #7
  %shr20.i405 = lshr i32 %or.i109.i404, 24
  %arrayidx21.i406 = getelementptr [256 x i32], ptr @cast_s1, i32 0, i32 %shr20.i405
  %216 = ptrtoint ptr %arrayidx21.i406 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %arrayidx21.i406, align 4
  %shr22.i407 = lshr i32 %or.i109.i404, 16
  %and23.i408 = and i32 %shr22.i407, 255
  %arrayidx24.i409 = getelementptr [256 x i32], ptr @cast_s2, i32 0, i32 %and23.i408
  %218 = ptrtoint ptr %arrayidx24.i409 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %arrayidx24.i409, align 4
  %sub25.i410 = sub i32 %217, %219
  %shr26.i411 = lshr i32 %or.i109.i404, 8
  %and27.i412 = and i32 %shr26.i411, 255
  %arrayidx28.i413 = getelementptr [256 x i32], ptr @cast_s3, i32 0, i32 %and27.i412
  %220 = ptrtoint ptr %arrayidx28.i413 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %arrayidx28.i413, align 4
  %add29.i414 = add i32 %sub25.i410, %221
  %and30.i415 = and i32 %or.i109.i404, 255
  %arrayidx31.i416 = getelementptr [256 x i32], ptr @cast_s4, i32 0, i32 %and30.i415
  %222 = ptrtoint ptr %arrayidx31.i416 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %arrayidx31.i416, align 4
  %xor32.i417 = xor i32 %223, %xor34.i342
  %xor34.i419 = xor i32 %xor32.i417, %add29.i414
  %arrayidx35.i420 = getelementptr [12 x [4 x i32]], ptr %ctx, i32 0, i32 4, i32 2
  %224 = ptrtoint ptr %arrayidx35.i420 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %arrayidx35.i420, align 4
  %sub37.i421 = sub i32 %225, %xor34.i419
  %arrayidx38.i422 = getelementptr %struct.cast6_ctx, ptr %ctx, i32 0, i32 1, i32 4, i32 2
  %226 = ptrtoint ptr %arrayidx38.i422 to i32
  call void @__asan_load1_noabort(i32 %226)
  %227 = load i8, ptr %arrayidx38.i422, align 1
  %conv39.i423 = zext i8 %227 to i32
  %or.i110.i424 = tail call i32 @llvm.fshl.i32(i32 %sub37.i421, i32 %sub37.i421, i32 %conv39.i423) #7
  %shr41.i425 = lshr i32 %or.i110.i424, 24
  %arrayidx42.i426 = getelementptr [256 x i32], ptr @cast_s1, i32 0, i32 %shr41.i425
  %228 = ptrtoint ptr %arrayidx42.i426 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %arrayidx42.i426, align 4
  %shr43.i427 = lshr i32 %or.i110.i424, 16
  %and44.i428 = and i32 %shr43.i427, 255
  %arrayidx45.i429 = getelementptr [256 x i32], ptr @cast_s2, i32 0, i32 %and44.i428
  %230 = ptrtoint ptr %arrayidx45.i429 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %arrayidx45.i429, align 4
  %add46.i430 = add i32 %231, %229
  %shr47.i431 = lshr i32 %or.i110.i424, 8
  %and48.i432 = and i32 %shr47.i431, 255
  %arrayidx49.i433 = getelementptr [256 x i32], ptr @cast_s3, i32 0, i32 %and48.i432
  %232 = ptrtoint ptr %arrayidx49.i433 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %arrayidx49.i433, align 4
  %xor50.i434 = xor i32 %add46.i430, %233
  %and51.i435 = and i32 %or.i110.i424, 255
  %arrayidx52.i436 = getelementptr [256 x i32], ptr @cast_s4, i32 0, i32 %and51.i435
  %234 = ptrtoint ptr %arrayidx52.i436 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %arrayidx52.i436, align 4
  %sub53.i437 = sub i32 %xor50.i434, %235
  %xor55.i438 = xor i32 %sub53.i437, %xor55.i361
  %arrayidx56.i439 = getelementptr [12 x [4 x i32]], ptr %ctx, i32 0, i32 4, i32 3
  %236 = ptrtoint ptr %arrayidx56.i439 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %arrayidx56.i439, align 4
  %add58.i440 = add i32 %xor55.i438, %237
  %arrayidx59.i441 = getelementptr %struct.cast6_ctx, ptr %ctx, i32 0, i32 1, i32 4, i32 3
  %238 = ptrtoint ptr %arrayidx59.i441 to i32
  call void @__asan_load1_noabort(i32 %238)
  %239 = load i8, ptr %arrayidx59.i441, align 1
  %conv60.i442 = zext i8 %239 to i32
  %or.i111.i443 = tail call i32 @llvm.fshl.i32(i32 %add58.i440, i32 %add58.i440, i32 %conv60.i442) #7
  %shr62.i444 = lshr i32 %or.i111.i443, 24
  %arrayidx63.i445 = getelementptr [256 x i32], ptr @cast_s1, i32 0, i32 %shr62.i444
  %240 = ptrtoint ptr %arrayidx63.i445 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %arrayidx63.i445, align 4
  %shr64.i446 = lshr i32 %or.i111.i443, 16
  %and65.i447 = and i32 %shr64.i446, 255
  %arrayidx66.i448 = getelementptr [256 x i32], ptr @cast_s2, i32 0, i32 %and65.i447
  %242 = ptrtoint ptr %arrayidx66.i448 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %arrayidx66.i448, align 4
  %xor67.i449 = xor i32 %243, %241
  %shr68.i450 = lshr i32 %or.i111.i443, 8
  %and69.i451 = and i32 %shr68.i450, 255
  %arrayidx70.i452 = getelementptr [256 x i32], ptr @cast_s3, i32 0, i32 %and69.i451
  %244 = ptrtoint ptr %arrayidx70.i452 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %arrayidx70.i452, align 4
  %sub71.i453 = sub i32 %xor67.i449, %245
  %and72.i454 = and i32 %or.i111.i443, 255
  %arrayidx73.i455 = getelementptr [256 x i32], ptr @cast_s4, i32 0, i32 %and72.i454
  %246 = ptrtoint ptr %arrayidx73.i455 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %arrayidx73.i455, align 4
  %add74.i456 = add i32 %sub71.i453, %247
  %xor76.i457 = xor i32 %add74.i456, %xor76.i380
  %arrayidx44 = getelementptr [12 x [4 x i32]], ptr %ctx, i32 0, i32 5
  %arrayidx47 = getelementptr %struct.cast6_ctx, ptr %ctx, i32 0, i32 1, i32 5
  %248 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %arrayidx44, align 4
  %add.i459 = add i32 %xor76.i457, %249
  %250 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load1_noabort(i32 %250)
  %251 = load i8, ptr %arrayidx47, align 1
  %conv.i460 = zext i8 %251 to i32
  %or.i.i461 = tail call i32 @llvm.fshl.i32(i32 %add.i459, i32 %add.i459, i32 %conv.i460) #7
  %shr.i462 = lshr i32 %or.i.i461, 24
  %arrayidx3.i463 = getelementptr [256 x i32], ptr @cast_s1, i32 0, i32 %shr.i462
  %252 = ptrtoint ptr %arrayidx3.i463 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %arrayidx3.i463, align 4
  %shr4.i464 = lshr i32 %or.i.i461, 16
  %and.i465 = and i32 %shr4.i464, 255
  %arrayidx5.i466 = getelementptr [256 x i32], ptr @cast_s2, i32 0, i32 %and.i465
  %254 = ptrtoint ptr %arrayidx5.i466 to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %arrayidx5.i466, align 4
  %xor.i467 = xor i32 %255, %253
  %shr6.i468 = lshr i32 %or.i.i461, 8
  %and7.i469 = and i32 %shr6.i468, 255
  %arrayidx8.i470 = getelementptr [256 x i32], ptr @cast_s3, i32 0, i32 %and7.i469
  %256 = ptrtoint ptr %arrayidx8.i470 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %arrayidx8.i470, align 4
  %sub.i471 = sub i32 %xor.i467, %257
  %and9.i472 = and i32 %or.i.i461, 255
  %arrayidx10.i473 = getelementptr [256 x i32], ptr @cast_s4, i32 0, i32 %and9.i472
  %258 = ptrtoint ptr %arrayidx10.i473 to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %arrayidx10.i473, align 4
  %add11.i474 = add i32 %sub.i471, %259
  %xor13.i476 = xor i32 %add11.i474, %xor13.i399
  %arrayidx14.i477 = getelementptr [12 x [4 x i32]], ptr %ctx, i32 0, i32 5, i32 1
  %260 = ptrtoint ptr %arrayidx14.i477 to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %arrayidx14.i477, align 4
  %xor16.i478 = xor i32 %xor13.i476, %261
  %arrayidx17.i479 = getelementptr %struct.cast6_ctx, ptr %ctx, i32 0, i32 1, i32 5, i32 1
  %262 = ptrtoint ptr %arrayidx17.i479 to i32
  call void @__asan_load1_noabort(i32 %262)
  %263 = load i8, ptr %arrayidx17.i479, align 1
  %conv18.i480 = zext i8 %263 to i32
  %or.i109.i481 = tail call i32 @llvm.fshl.i32(i32 %xor16.i478, i32 %xor16.i478, i32 %conv18.i480) #7
  %shr20.i482 = lshr i32 %or.i109.i481, 24
  %arrayidx21.i483 = getelementptr [256 x i32], ptr @cast_s1, i32 0, i32 %shr20.i482
  %264 = ptrtoint ptr %arrayidx21.i483 to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %arrayidx21.i483, align 4
  %shr22.i484 = lshr i32 %or.i109.i481, 16
  %and23.i485 = and i32 %shr22.i484, 255
  %arrayidx24.i486 = getelementptr [256 x i32], ptr @cast_s2, i32 0, i32 %and23.i485
  %266 = ptrtoint ptr %arrayidx24.i486 to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %arrayidx24.i486, align 4
  %sub25.i487 = sub i32 %265, %267
  %shr26.i488 = lshr i32 %or.i109.i481, 8
  %and27.i489 = and i32 %shr26.i488, 255
  %arrayidx28.i490 = getelementptr [256 x i32], ptr @cast_s3, i32 0, i32 %and27.i489
  %268 = ptrtoint ptr %arrayidx28.i490 to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load i32, ptr %arrayidx28.i490, align 4
  %add29.i491 = add i32 %sub25.i487, %269
  %and30.i492 = and i32 %or.i109.i481, 255
  %arrayidx31.i493 = getelementptr [256 x i32], ptr @cast_s4, i32 0, i32 %and30.i492
  %270 = ptrtoint ptr %arrayidx31.i493 to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load i32, ptr %arrayidx31.i493, align 4
  %xor32.i494 = xor i32 %271, %xor34.i419
  %xor34.i496 = xor i32 %xor32.i494, %add29.i491
  %arrayidx35.i497 = getelementptr [12 x [4 x i32]], ptr %ctx, i32 0, i32 5, i32 2
  %272 = ptrtoint ptr %arrayidx35.i497 to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load i32, ptr %arrayidx35.i497, align 4
  %sub37.i498 = sub i32 %273, %xor34.i496
  %arrayidx38.i499 = getelementptr %struct.cast6_ctx, ptr %ctx, i32 0, i32 1, i32 5, i32 2
  %274 = ptrtoint ptr %arrayidx38.i499 to i32
  call void @__asan_load1_noabort(i32 %274)
  %275 = load i8, ptr %arrayidx38.i499, align 1
  %conv39.i500 = zext i8 %275 to i32
  %or.i110.i501 = tail call i32 @llvm.fshl.i32(i32 %sub37.i498, i32 %sub37.i498, i32 %conv39.i500) #7
  %shr41.i502 = lshr i32 %or.i110.i501, 24
  %arrayidx42.i503 = getelementptr [256 x i32], ptr @cast_s1, i32 0, i32 %shr41.i502
  %276 = ptrtoint ptr %arrayidx42.i503 to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load i32, ptr %arrayidx42.i503, align 4
  %shr43.i504 = lshr i32 %or.i110.i501, 16
  %and44.i505 = and i32 %shr43.i504, 255
  %arrayidx45.i506 = getelementptr [256 x i32], ptr @cast_s2, i32 0, i32 %and44.i505
  %278 = ptrtoint ptr %arrayidx45.i506 to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load i32, ptr %arrayidx45.i506, align 4
  %add46.i507 = add i32 %279, %277
  %shr47.i508 = lshr i32 %or.i110.i501, 8
  %and48.i509 = and i32 %shr47.i508, 255
  %arrayidx49.i510 = getelementptr [256 x i32], ptr @cast_s3, i32 0, i32 %and48.i509
  %280 = ptrtoint ptr %arrayidx49.i510 to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load i32, ptr %arrayidx49.i510, align 4
  %xor50.i511 = xor i32 %add46.i507, %281
  %and51.i512 = and i32 %or.i110.i501, 255
  %arrayidx52.i513 = getelementptr [256 x i32], ptr @cast_s4, i32 0, i32 %and51.i512
  %282 = ptrtoint ptr %arrayidx52.i513 to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load i32, ptr %arrayidx52.i513, align 4
  %sub53.i514 = sub i32 %xor50.i511, %283
  %xor55.i515 = xor i32 %sub53.i514, %xor55.i438
  %arrayidx56.i516 = getelementptr [12 x [4 x i32]], ptr %ctx, i32 0, i32 5, i32 3
  %284 = ptrtoint ptr %arrayidx56.i516 to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load i32, ptr %arrayidx56.i516, align 4
  %add58.i517 = add i32 %xor55.i515, %285
  %arrayidx59.i518 = getelementptr %struct.cast6_ctx, ptr %ctx, i32 0, i32 1, i32 5, i32 3
  %286 = ptrtoint ptr %arrayidx59.i518 to i32
  call void @__asan_load1_noabort(i32 %286)
  %287 = load i8, ptr %arrayidx59.i518, align 1
  %conv60.i519 = zext i8 %287 to i32
  %or.i111.i520 = tail call i32 @llvm.fshl.i32(i32 %add58.i517, i32 %add58.i517, i32 %conv60.i519) #7
  %shr62.i521 = lshr i32 %or.i111.i520, 24
  %arrayidx63.i522 = getelementptr [256 x i32], ptr @cast_s1, i32 0, i32 %shr62.i521
  %288 = ptrtoint ptr %arrayidx63.i522 to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load i32, ptr %arrayidx63.i522, align 4
  %shr64.i523 = lshr i32 %or.i111.i520, 16
  %and65.i524 = and i32 %shr64.i523, 255
  %arrayidx66.i525 = getelementptr [256 x i32], ptr @cast_s2, i32 0, i32 %and65.i524
  %290 = ptrtoint ptr %arrayidx66.i525 to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load i32, ptr %arrayidx66.i525, align 4
  %xor67.i526 = xor i32 %291, %289
  %shr68.i527 = lshr i32 %or.i111.i520, 8
  %and69.i528 = and i32 %shr68.i527, 255
  %arrayidx70.i529 = getelementptr [256 x i32], ptr @cast_s3, i32 0, i32 %and69.i528
  %292 = ptrtoint ptr %arrayidx70.i529 to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load i32, ptr %arrayidx70.i529, align 4
  %sub71.i530 = sub i32 %xor67.i526, %293
  %and72.i531 = and i32 %or.i111.i520, 255
  %arrayidx73.i532 = getelementptr [256 x i32], ptr @cast_s4, i32 0, i32 %and72.i531
  %294 = ptrtoint ptr %arrayidx73.i532 to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load i32, ptr %arrayidx73.i532, align 4
  %add74.i533 = add i32 %sub71.i530, %295
  %xor76.i534 = xor i32 %add74.i533, %xor76.i457
  %arrayidx51 = getelementptr [12 x [4 x i32]], ptr %ctx, i32 0, i32 6
  %arrayidx54 = getelementptr %struct.cast6_ctx, ptr %ctx, i32 0, i32 1, i32 6
  %arrayidx.i = getelementptr [12 x [4 x i32]], ptr %ctx, i32 0, i32 6, i32 3
  %296 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load i32, ptr %arrayidx.i, align 4
  %add.i535 = add i32 %297, %xor55.i515
  %arrayidx2.i = getelementptr %struct.cast6_ctx, ptr %ctx, i32 0, i32 1, i32 6, i32 3
  %298 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %298)
  %299 = load i8, ptr %arrayidx2.i, align 1
  %conv.i536 = zext i8 %299 to i32
  %or.i.i537 = tail call i32 @llvm.fshl.i32(i32 %add.i535, i32 %add.i535, i32 %conv.i536) #7
  %shr.i538 = lshr i32 %or.i.i537, 24
  %arrayidx3.i539 = getelementptr [256 x i32], ptr @cast_s1, i32 0, i32 %shr.i538
  %300 = ptrtoint ptr %arrayidx3.i539 to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load i32, ptr %arrayidx3.i539, align 4
  %shr4.i540 = lshr i32 %or.i.i537, 16
  %and.i541 = and i32 %shr4.i540, 255
  %arrayidx5.i542 = getelementptr [256 x i32], ptr @cast_s2, i32 0, i32 %and.i541
  %302 = ptrtoint ptr %arrayidx5.i542 to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load i32, ptr %arrayidx5.i542, align 4
  %xor.i543 = xor i32 %303, %301
  %shr6.i544 = lshr i32 %or.i.i537, 8
  %and7.i545 = and i32 %shr6.i544, 255
  %arrayidx8.i546 = getelementptr [256 x i32], ptr @cast_s3, i32 0, i32 %and7.i545
  %304 = ptrtoint ptr %arrayidx8.i546 to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load i32, ptr %arrayidx8.i546, align 4
  %sub.i547 = sub i32 %xor.i543, %305
  %and9.i548 = and i32 %or.i.i537, 255
  %arrayidx10.i549 = getelementptr [256 x i32], ptr @cast_s4, i32 0, i32 %and9.i548
  %306 = ptrtoint ptr %arrayidx10.i549 to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load i32, ptr %arrayidx10.i549, align 4
  %add11.i550 = add i32 %sub.i547, %307
  %xor13.i552 = xor i32 %xor76.i534, %add11.i550
  %arrayidx14.i553 = getelementptr [12 x [4 x i32]], ptr %ctx, i32 0, i32 6, i32 2
  %308 = ptrtoint ptr %arrayidx14.i553 to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load i32, ptr %arrayidx14.i553, align 4
  %sub16.i = sub i32 %309, %xor34.i496
  %arrayidx17.i554 = getelementptr %struct.cast6_ctx, ptr %ctx, i32 0, i32 1, i32 6, i32 2
  %310 = ptrtoint ptr %arrayidx17.i554 to i32
  call void @__asan_load1_noabort(i32 %310)
  %311 = load i8, ptr %arrayidx17.i554, align 1
  %conv18.i555 = zext i8 %311 to i32
  %or.i109.i556 = tail call i32 @llvm.fshl.i32(i32 %sub16.i, i32 %sub16.i, i32 %conv18.i555) #7
  %shr20.i557 = lshr i32 %or.i109.i556, 24
  %arrayidx21.i558 = getelementptr [256 x i32], ptr @cast_s1, i32 0, i32 %shr20.i557
  %312 = ptrtoint ptr %arrayidx21.i558 to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load i32, ptr %arrayidx21.i558, align 4
  %shr22.i559 = lshr i32 %or.i109.i556, 16
  %and23.i560 = and i32 %shr22.i559, 255
  %arrayidx24.i561 = getelementptr [256 x i32], ptr @cast_s2, i32 0, i32 %and23.i560
  %314 = ptrtoint ptr %arrayidx24.i561 to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load i32, ptr %arrayidx24.i561, align 4
  %add25.i = add i32 %315, %313
  %shr26.i562 = lshr i32 %or.i109.i556, 8
  %and27.i563 = and i32 %shr26.i562, 255
  %arrayidx28.i564 = getelementptr [256 x i32], ptr @cast_s3, i32 0, i32 %and27.i563
  %316 = ptrtoint ptr %arrayidx28.i564 to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load i32, ptr %arrayidx28.i564, align 4
  %xor29.i = xor i32 %add25.i, %317
  %and30.i565 = and i32 %or.i109.i556, 255
  %arrayidx31.i566 = getelementptr [256 x i32], ptr @cast_s4, i32 0, i32 %and30.i565
  %318 = ptrtoint ptr %arrayidx31.i566 to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load i32, ptr %arrayidx31.i566, align 4
  %sub32.i = sub i32 %xor29.i, %319
  %xor34.i567 = xor i32 %sub32.i, %xor55.i515
  %arrayidx35.i568 = getelementptr [12 x [4 x i32]], ptr %ctx, i32 0, i32 6, i32 1
  %320 = ptrtoint ptr %arrayidx35.i568 to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load i32, ptr %arrayidx35.i568, align 4
  %xor37.i = xor i32 %321, %xor13.i476
  %arrayidx38.i569 = getelementptr %struct.cast6_ctx, ptr %ctx, i32 0, i32 1, i32 6, i32 1
  %322 = ptrtoint ptr %arrayidx38.i569 to i32
  call void @__asan_load1_noabort(i32 %322)
  %323 = load i8, ptr %arrayidx38.i569, align 1
  %conv39.i570 = zext i8 %323 to i32
  %or.i110.i571 = tail call i32 @llvm.fshl.i32(i32 %xor37.i, i32 %xor37.i, i32 %conv39.i570) #7
  %shr41.i572 = lshr i32 %or.i110.i571, 24
  %arrayidx42.i573 = getelementptr [256 x i32], ptr @cast_s1, i32 0, i32 %shr41.i572
  %324 = ptrtoint ptr %arrayidx42.i573 to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load i32, ptr %arrayidx42.i573, align 4
  %shr43.i574 = lshr i32 %or.i110.i571, 16
  %and44.i575 = and i32 %shr43.i574, 255
  %arrayidx45.i576 = getelementptr [256 x i32], ptr @cast_s2, i32 0, i32 %and44.i575
  %326 = ptrtoint ptr %arrayidx45.i576 to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load i32, ptr %arrayidx45.i576, align 4
  %sub46.i = sub i32 %325, %327
  %shr47.i577 = lshr i32 %or.i110.i571, 8
  %and48.i578 = and i32 %shr47.i577, 255
  %arrayidx49.i579 = getelementptr [256 x i32], ptr @cast_s3, i32 0, i32 %and48.i578
  %328 = ptrtoint ptr %arrayidx49.i579 to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load i32, ptr %arrayidx49.i579, align 4
  %add50.i = add i32 %sub46.i, %329
  %and51.i580 = and i32 %or.i110.i571, 255
  %arrayidx52.i581 = getelementptr [256 x i32], ptr @cast_s4, i32 0, i32 %and51.i580
  %330 = ptrtoint ptr %arrayidx52.i581 to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load i32, ptr %arrayidx52.i581, align 4
  %xor53.i = xor i32 %331, %xor34.i496
  %xor55.i582 = xor i32 %xor53.i, %add50.i
  %332 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load i32, ptr %arrayidx51, align 4
  %add58.i583 = add i32 %333, %xor13.i552
  %334 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load1_noabort(i32 %334)
  %335 = load i8, ptr %arrayidx54, align 1
  %conv60.i584 = zext i8 %335 to i32
  %or.i111.i585 = tail call i32 @llvm.fshl.i32(i32 %add58.i583, i32 %add58.i583, i32 %conv60.i584) #7
  %shr62.i586 = lshr i32 %or.i111.i585, 24
  %arrayidx63.i587 = getelementptr [256 x i32], ptr @cast_s1, i32 0, i32 %shr62.i586
  %336 = ptrtoint ptr %arrayidx63.i587 to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load i32, ptr %arrayidx63.i587, align 4
  %shr64.i588 = lshr i32 %or.i111.i585, 16
  %and65.i589 = and i32 %shr64.i588, 255
  %arrayidx66.i590 = getelementptr [256 x i32], ptr @cast_s2, i32 0, i32 %and65.i589
  %338 = ptrtoint ptr %arrayidx66.i590 to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load i32, ptr %arrayidx66.i590, align 4
  %xor67.i591 = xor i32 %339, %337
  %shr68.i592 = lshr i32 %or.i111.i585, 8
  %and69.i593 = and i32 %shr68.i592, 255
  %arrayidx70.i594 = getelementptr [256 x i32], ptr @cast_s3, i32 0, i32 %and69.i593
  %340 = ptrtoint ptr %arrayidx70.i594 to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load i32, ptr %arrayidx70.i594, align 4
  %sub71.i595 = sub i32 %xor67.i591, %341
  %and72.i596 = and i32 %or.i111.i585, 255
  %arrayidx73.i597 = getelementptr [256 x i32], ptr @cast_s4, i32 0, i32 %and72.i596
  %342 = ptrtoint ptr %arrayidx73.i597 to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load i32, ptr %arrayidx73.i597, align 4
  %add74.i598 = add i32 %sub71.i595, %343
  %xor76.i599 = xor i32 %add74.i598, %xor13.i476
  %arrayidx58 = getelementptr [12 x [4 x i32]], ptr %ctx, i32 0, i32 7
  %arrayidx61 = getelementptr %struct.cast6_ctx, ptr %ctx, i32 0, i32 1, i32 7
  %arrayidx.i600 = getelementptr [12 x [4 x i32]], ptr %ctx, i32 0, i32 7, i32 3
  %344 = ptrtoint ptr %arrayidx.i600 to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load i32, ptr %arrayidx.i600, align 4
  %add.i601 = add i32 %345, %xor34.i567
  %arrayidx2.i602 = getelementptr %struct.cast6_ctx, ptr %ctx, i32 0, i32 1, i32 7, i32 3
  %346 = ptrtoint ptr %arrayidx2.i602 to i32
  call void @__asan_load1_noabort(i32 %346)
  %347 = load i8, ptr %arrayidx2.i602, align 1
  %conv.i603 = zext i8 %347 to i32
  %or.i.i604 = tail call i32 @llvm.fshl.i32(i32 %add.i601, i32 %add.i601, i32 %conv.i603) #7
  %shr.i605 = lshr i32 %or.i.i604, 24
  %arrayidx3.i606 = getelementptr [256 x i32], ptr @cast_s1, i32 0, i32 %shr.i605
  %348 = ptrtoint ptr %arrayidx3.i606 to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load i32, ptr %arrayidx3.i606, align 4
  %shr4.i607 = lshr i32 %or.i.i604, 16
  %and.i608 = and i32 %shr4.i607, 255
  %arrayidx5.i609 = getelementptr [256 x i32], ptr @cast_s2, i32 0, i32 %and.i608
  %350 = ptrtoint ptr %arrayidx5.i609 to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load i32, ptr %arrayidx5.i609, align 4
  %xor.i610 = xor i32 %351, %349
  %shr6.i611 = lshr i32 %or.i.i604, 8
  %and7.i612 = and i32 %shr6.i611, 255
  %arrayidx8.i613 = getelementptr [256 x i32], ptr @cast_s3, i32 0, i32 %and7.i612
  %352 = ptrtoint ptr %arrayidx8.i613 to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load i32, ptr %arrayidx8.i613, align 4
  %sub.i614 = sub i32 %xor.i610, %353
  %and9.i615 = and i32 %or.i.i604, 255
  %arrayidx10.i616 = getelementptr [256 x i32], ptr @cast_s4, i32 0, i32 %and9.i615
  %354 = ptrtoint ptr %arrayidx10.i616 to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load i32, ptr %arrayidx10.i616, align 4
  %add11.i617 = add i32 %sub.i614, %355
  %xor13.i619 = xor i32 %add11.i617, %xor13.i552
  %arrayidx14.i620 = getelementptr [12 x [4 x i32]], ptr %ctx, i32 0, i32 7, i32 2
  %356 = ptrtoint ptr %arrayidx14.i620 to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load i32, ptr %arrayidx14.i620, align 4
  %sub16.i622 = sub i32 %357, %xor55.i582
  %arrayidx17.i623 = getelementptr %struct.cast6_ctx, ptr %ctx, i32 0, i32 1, i32 7, i32 2
  %358 = ptrtoint ptr %arrayidx17.i623 to i32
  call void @__asan_load1_noabort(i32 %358)
  %359 = load i8, ptr %arrayidx17.i623, align 1
  %conv18.i624 = zext i8 %359 to i32
  %or.i109.i625 = tail call i32 @llvm.fshl.i32(i32 %sub16.i622, i32 %sub16.i622, i32 %conv18.i624) #7
  %shr20.i626 = lshr i32 %or.i109.i625, 24
  %arrayidx21.i627 = getelementptr [256 x i32], ptr @cast_s1, i32 0, i32 %shr20.i626
  %360 = ptrtoint ptr %arrayidx21.i627 to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load i32, ptr %arrayidx21.i627, align 4
  %shr22.i628 = lshr i32 %or.i109.i625, 16
  %and23.i629 = and i32 %shr22.i628, 255
  %arrayidx24.i630 = getelementptr [256 x i32], ptr @cast_s2, i32 0, i32 %and23.i629
  %362 = ptrtoint ptr %arrayidx24.i630 to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load i32, ptr %arrayidx24.i630, align 4
  %add25.i631 = add i32 %363, %361
  %shr26.i632 = lshr i32 %or.i109.i625, 8
  %and27.i633 = and i32 %shr26.i632, 255
  %arrayidx28.i634 = getelementptr [256 x i32], ptr @cast_s3, i32 0, i32 %and27.i633
  %364 = ptrtoint ptr %arrayidx28.i634 to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load i32, ptr %arrayidx28.i634, align 4
  %xor29.i635 = xor i32 %add25.i631, %365
  %and30.i636 = and i32 %or.i109.i625, 255
  %arrayidx31.i637 = getelementptr [256 x i32], ptr @cast_s4, i32 0, i32 %and30.i636
  %366 = ptrtoint ptr %arrayidx31.i637 to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load i32, ptr %arrayidx31.i637, align 4
  %sub32.i638 = sub i32 %xor29.i635, %367
  %xor34.i639 = xor i32 %sub32.i638, %xor34.i567
  %arrayidx35.i640 = getelementptr [12 x [4 x i32]], ptr %ctx, i32 0, i32 7, i32 1
  %368 = ptrtoint ptr %arrayidx35.i640 to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load i32, ptr %arrayidx35.i640, align 4
  %xor37.i642 = xor i32 %369, %xor76.i599
  %arrayidx38.i643 = getelementptr %struct.cast6_ctx, ptr %ctx, i32 0, i32 1, i32 7, i32 1
  %370 = ptrtoint ptr %arrayidx38.i643 to i32
  call void @__asan_load1_noabort(i32 %370)
  %371 = load i8, ptr %arrayidx38.i643, align 1
  %conv39.i644 = zext i8 %371 to i32
  %or.i110.i645 = tail call i32 @llvm.fshl.i32(i32 %xor37.i642, i32 %xor37.i642, i32 %conv39.i644) #7
  %shr41.i646 = lshr i32 %or.i110.i645, 24
  %arrayidx42.i647 = getelementptr [256 x i32], ptr @cast_s1, i32 0, i32 %shr41.i646
  %372 = ptrtoint ptr %arrayidx42.i647 to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load i32, ptr %arrayidx42.i647, align 4
  %shr43.i648 = lshr i32 %or.i110.i645, 16
  %and44.i649 = and i32 %shr43.i648, 255
  %arrayidx45.i650 = getelementptr [256 x i32], ptr @cast_s2, i32 0, i32 %and44.i649
  %374 = ptrtoint ptr %arrayidx45.i650 to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load i32, ptr %arrayidx45.i650, align 4
  %sub46.i651 = sub i32 %373, %375
  %shr47.i652 = lshr i32 %or.i110.i645, 8
  %and48.i653 = and i32 %shr47.i652, 255
  %arrayidx49.i654 = getelementptr [256 x i32], ptr @cast_s3, i32 0, i32 %and48.i653
  %376 = ptrtoint ptr %arrayidx49.i654 to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load i32, ptr %arrayidx49.i654, align 4
  %add50.i655 = add i32 %sub46.i651, %377
  %and51.i656 = and i32 %or.i110.i645, 255
  %arrayidx52.i657 = getelementptr [256 x i32], ptr @cast_s4, i32 0, i32 %and51.i656
  %378 = ptrtoint ptr %arrayidx52.i657 to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load i32, ptr %arrayidx52.i657, align 4
  %xor53.i658 = xor i32 %379, %xor55.i582
  %xor55.i659 = xor i32 %xor53.i658, %add50.i655
  %380 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load i32, ptr %arrayidx58, align 4
  %add58.i660 = add i32 %381, %xor13.i619
  %382 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load1_noabort(i32 %382)
  %383 = load i8, ptr %arrayidx61, align 1
  %conv60.i661 = zext i8 %383 to i32
  %or.i111.i662 = tail call i32 @llvm.fshl.i32(i32 %add58.i660, i32 %add58.i660, i32 %conv60.i661) #7
  %shr62.i663 = lshr i32 %or.i111.i662, 24
  %arrayidx63.i664 = getelementptr [256 x i32], ptr @cast_s1, i32 0, i32 %shr62.i663
  %384 = ptrtoint ptr %arrayidx63.i664 to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load i32, ptr %arrayidx63.i664, align 4
  %shr64.i665 = lshr i32 %or.i111.i662, 16
  %and65.i666 = and i32 %shr64.i665, 255
  %arrayidx66.i667 = getelementptr [256 x i32], ptr @cast_s2, i32 0, i32 %and65.i666
  %386 = ptrtoint ptr %arrayidx66.i667 to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load i32, ptr %arrayidx66.i667, align 4
  %xor67.i668 = xor i32 %387, %385
  %shr68.i669 = lshr i32 %or.i111.i662, 8
  %and69.i670 = and i32 %shr68.i669, 255
  %arrayidx70.i671 = getelementptr [256 x i32], ptr @cast_s3, i32 0, i32 %and69.i670
  %388 = ptrtoint ptr %arrayidx70.i671 to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load i32, ptr %arrayidx70.i671, align 4
  %sub71.i672 = sub i32 %xor67.i668, %389
  %and72.i673 = and i32 %or.i111.i662, 255
  %arrayidx73.i674 = getelementptr [256 x i32], ptr @cast_s4, i32 0, i32 %and72.i673
  %390 = ptrtoint ptr %arrayidx73.i674 to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load i32, ptr %arrayidx73.i674, align 4
  %add74.i675 = add i32 %sub71.i672, %391
  %xor76.i676 = xor i32 %add74.i675, %xor76.i599
  %arrayidx65 = getelementptr [12 x [4 x i32]], ptr %ctx, i32 0, i32 8
  %arrayidx68 = getelementptr %struct.cast6_ctx, ptr %ctx, i32 0, i32 1, i32 8
  %arrayidx.i677 = getelementptr [12 x [4 x i32]], ptr %ctx, i32 0, i32 8, i32 3
  %392 = ptrtoint ptr %arrayidx.i677 to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load i32, ptr %arrayidx.i677, align 4
  %add.i678 = add i32 %393, %xor34.i639
  %arrayidx2.i679 = getelementptr %struct.cast6_ctx, ptr %ctx, i32 0, i32 1, i32 8, i32 3
  %394 = ptrtoint ptr %arrayidx2.i679 to i32
  call void @__asan_load1_noabort(i32 %394)
  %395 = load i8, ptr %arrayidx2.i679, align 1
  %conv.i680 = zext i8 %395 to i32
  %or.i.i681 = tail call i32 @llvm.fshl.i32(i32 %add.i678, i32 %add.i678, i32 %conv.i680) #7
  %shr.i682 = lshr i32 %or.i.i681, 24
  %arrayidx3.i683 = getelementptr [256 x i32], ptr @cast_s1, i32 0, i32 %shr.i682
  %396 = ptrtoint ptr %arrayidx3.i683 to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load i32, ptr %arrayidx3.i683, align 4
  %shr4.i684 = lshr i32 %or.i.i681, 16
  %and.i685 = and i32 %shr4.i684, 255
  %arrayidx5.i686 = getelementptr [256 x i32], ptr @cast_s2, i32 0, i32 %and.i685
  %398 = ptrtoint ptr %arrayidx5.i686 to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load i32, ptr %arrayidx5.i686, align 4
  %xor.i687 = xor i32 %399, %397
  %shr6.i688 = lshr i32 %or.i.i681, 8
  %and7.i689 = and i32 %shr6.i688, 255
  %arrayidx8.i690 = getelementptr [256 x i32], ptr @cast_s3, i32 0, i32 %and7.i689
  %400 = ptrtoint ptr %arrayidx8.i690 to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load i32, ptr %arrayidx8.i690, align 4
  %sub.i691 = sub i32 %xor.i687, %401
  %and9.i692 = and i32 %or.i.i681, 255
  %arrayidx10.i693 = getelementptr [256 x i32], ptr @cast_s4, i32 0, i32 %and9.i692
  %402 = ptrtoint ptr %arrayidx10.i693 to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load i32, ptr %arrayidx10.i693, align 4
  %add11.i694 = add i32 %sub.i691, %403
  %xor13.i696 = xor i32 %add11.i694, %xor13.i619
  %arrayidx14.i697 = getelementptr [12 x [4 x i32]], ptr %ctx, i32 0, i32 8, i32 2
  %404 = ptrtoint ptr %arrayidx14.i697 to i32
  call void @__asan_load4_noabort(i32 %404)
  %405 = load i32, ptr %arrayidx14.i697, align 4
  %sub16.i699 = sub i32 %405, %xor55.i659
  %arrayidx17.i700 = getelementptr %struct.cast6_ctx, ptr %ctx, i32 0, i32 1, i32 8, i32 2
  %406 = ptrtoint ptr %arrayidx17.i700 to i32
  call void @__asan_load1_noabort(i32 %406)
  %407 = load i8, ptr %arrayidx17.i700, align 1
  %conv18.i701 = zext i8 %407 to i32
  %or.i109.i702 = tail call i32 @llvm.fshl.i32(i32 %sub16.i699, i32 %sub16.i699, i32 %conv18.i701) #7
  %shr20.i703 = lshr i32 %or.i109.i702, 24
  %arrayidx21.i704 = getelementptr [256 x i32], ptr @cast_s1, i32 0, i32 %shr20.i703
  %408 = ptrtoint ptr %arrayidx21.i704 to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load i32, ptr %arrayidx21.i704, align 4
  %shr22.i705 = lshr i32 %or.i109.i702, 16
  %and23.i706 = and i32 %shr22.i705, 255
  %arrayidx24.i707 = getelementptr [256 x i32], ptr @cast_s2, i32 0, i32 %and23.i706
  %410 = ptrtoint ptr %arrayidx24.i707 to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load i32, ptr %arrayidx24.i707, align 4
  %add25.i708 = add i32 %411, %409
  %shr26.i709 = lshr i32 %or.i109.i702, 8
  %and27.i710 = and i32 %shr26.i709, 255
  %arrayidx28.i711 = getelementptr [256 x i32], ptr @cast_s3, i32 0, i32 %and27.i710
  %412 = ptrtoint ptr %arrayidx28.i711 to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load i32, ptr %arrayidx28.i711, align 4
  %xor29.i712 = xor i32 %add25.i708, %413
  %and30.i713 = and i32 %or.i109.i702, 255
  %arrayidx31.i714 = getelementptr [256 x i32], ptr @cast_s4, i32 0, i32 %and30.i713
  %414 = ptrtoint ptr %arrayidx31.i714 to i32
  call void @__asan_load4_noabort(i32 %414)
  %415 = load i32, ptr %arrayidx31.i714, align 4
  %sub32.i715 = sub i32 %xor29.i712, %415
  %xor34.i716 = xor i32 %sub32.i715, %xor34.i639
  %arrayidx35.i717 = getelementptr [12 x [4 x i32]], ptr %ctx, i32 0, i32 8, i32 1
  %416 = ptrtoint ptr %arrayidx35.i717 to i32
  call void @__asan_load4_noabort(i32 %416)
  %417 = load i32, ptr %arrayidx35.i717, align 4
  %xor37.i719 = xor i32 %417, %xor76.i676
  %arrayidx38.i720 = getelementptr %struct.cast6_ctx, ptr %ctx, i32 0, i32 1, i32 8, i32 1
  %418 = ptrtoint ptr %arrayidx38.i720 to i32
  call void @__asan_load1_noabort(i32 %418)
  %419 = load i8, ptr %arrayidx38.i720, align 1
  %conv39.i721 = zext i8 %419 to i32
  %or.i110.i722 = tail call i32 @llvm.fshl.i32(i32 %xor37.i719, i32 %xor37.i719, i32 %conv39.i721) #7
  %shr41.i723 = lshr i32 %or.i110.i722, 24
  %arrayidx42.i724 = getelementptr [256 x i32], ptr @cast_s1, i32 0, i32 %shr41.i723
  %420 = ptrtoint ptr %arrayidx42.i724 to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load i32, ptr %arrayidx42.i724, align 4
  %shr43.i725 = lshr i32 %or.i110.i722, 16
  %and44.i726 = and i32 %shr43.i725, 255
  %arrayidx45.i727 = getelementptr [256 x i32], ptr @cast_s2, i32 0, i32 %and44.i726
  %422 = ptrtoint ptr %arrayidx45.i727 to i32
  call void @__asan_load4_noabort(i32 %422)
  %423 = load i32, ptr %arrayidx45.i727, align 4
  %sub46.i728 = sub i32 %421, %423
  %shr47.i729 = lshr i32 %or.i110.i722, 8
  %and48.i730 = and i32 %shr47.i729, 255
  %arrayidx49.i731 = getelementptr [256 x i32], ptr @cast_s3, i32 0, i32 %and48.i730
  %424 = ptrtoint ptr %arrayidx49.i731 to i32
  call void @__asan_load4_noabort(i32 %424)
  %425 = load i32, ptr %arrayidx49.i731, align 4
  %add50.i732 = add i32 %sub46.i728, %425
  %and51.i733 = and i32 %or.i110.i722, 255
  %arrayidx52.i734 = getelementptr [256 x i32], ptr @cast_s4, i32 0, i32 %and51.i733
  %426 = ptrtoint ptr %arrayidx52.i734 to i32
  call void @__asan_load4_noabort(i32 %426)
  %427 = load i32, ptr %arrayidx52.i734, align 4
  %xor53.i735 = xor i32 %427, %xor55.i659
  %xor55.i736 = xor i32 %xor53.i735, %add50.i732
  %428 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load4_noabort(i32 %428)
  %429 = load i32, ptr %arrayidx65, align 4
  %add58.i737 = add i32 %429, %xor13.i696
  %430 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_load1_noabort(i32 %430)
  %431 = load i8, ptr %arrayidx68, align 1
  %conv60.i738 = zext i8 %431 to i32
  %or.i111.i739 = tail call i32 @llvm.fshl.i32(i32 %add58.i737, i32 %add58.i737, i32 %conv60.i738) #7
  %shr62.i740 = lshr i32 %or.i111.i739, 24
  %arrayidx63.i741 = getelementptr [256 x i32], ptr @cast_s1, i32 0, i32 %shr62.i740
  %432 = ptrtoint ptr %arrayidx63.i741 to i32
  call void @__asan_load4_noabort(i32 %432)
  %433 = load i32, ptr %arrayidx63.i741, align 4
  %shr64.i742 = lshr i32 %or.i111.i739, 16
  %and65.i743 = and i32 %shr64.i742, 255
  %arrayidx66.i744 = getelementptr [256 x i32], ptr @cast_s2, i32 0, i32 %and65.i743
  %434 = ptrtoint ptr %arrayidx66.i744 to i32
  call void @__asan_load4_noabort(i32 %434)
  %435 = load i32, ptr %arrayidx66.i744, align 4
  %xor67.i745 = xor i32 %435, %433
  %shr68.i746 = lshr i32 %or.i111.i739, 8
  %and69.i747 = and i32 %shr68.i746, 255
  %arrayidx70.i748 = getelementptr [256 x i32], ptr @cast_s3, i32 0, i32 %and69.i747
  %436 = ptrtoint ptr %arrayidx70.i748 to i32
  call void @__asan_load4_noabort(i32 %436)
  %437 = load i32, ptr %arrayidx70.i748, align 4
  %sub71.i749 = sub i32 %xor67.i745, %437
  %and72.i750 = and i32 %or.i111.i739, 255
  %arrayidx73.i751 = getelementptr [256 x i32], ptr @cast_s4, i32 0, i32 %and72.i750
  %438 = ptrtoint ptr %arrayidx73.i751 to i32
  call void @__asan_load4_noabort(i32 %438)
  %439 = load i32, ptr %arrayidx73.i751, align 4
  %add74.i752 = add i32 %sub71.i749, %439
  %xor76.i753 = xor i32 %add74.i752, %xor76.i676
  %arrayidx72 = getelementptr [12 x [4 x i32]], ptr %ctx, i32 0, i32 9
  %arrayidx75 = getelementptr %struct.cast6_ctx, ptr %ctx, i32 0, i32 1, i32 9
  %arrayidx.i754 = getelementptr [12 x [4 x i32]], ptr %ctx, i32 0, i32 9, i32 3
  %440 = ptrtoint ptr %arrayidx.i754 to i32
  call void @__asan_load4_noabort(i32 %440)
  %441 = load i32, ptr %arrayidx.i754, align 4
  %add.i755 = add i32 %441, %xor34.i716
  %arrayidx2.i756 = getelementptr %struct.cast6_ctx, ptr %ctx, i32 0, i32 1, i32 9, i32 3
  %442 = ptrtoint ptr %arrayidx2.i756 to i32
  call void @__asan_load1_noabort(i32 %442)
  %443 = load i8, ptr %arrayidx2.i756, align 1
  %conv.i757 = zext i8 %443 to i32
  %or.i.i758 = tail call i32 @llvm.fshl.i32(i32 %add.i755, i32 %add.i755, i32 %conv.i757) #7
  %shr.i759 = lshr i32 %or.i.i758, 24
  %arrayidx3.i760 = getelementptr [256 x i32], ptr @cast_s1, i32 0, i32 %shr.i759
  %444 = ptrtoint ptr %arrayidx3.i760 to i32
  call void @__asan_load4_noabort(i32 %444)
  %445 = load i32, ptr %arrayidx3.i760, align 4
  %shr4.i761 = lshr i32 %or.i.i758, 16
  %and.i762 = and i32 %shr4.i761, 255
  %arrayidx5.i763 = getelementptr [256 x i32], ptr @cast_s2, i32 0, i32 %and.i762
  %446 = ptrtoint ptr %arrayidx5.i763 to i32
  call void @__asan_load4_noabort(i32 %446)
  %447 = load i32, ptr %arrayidx5.i763, align 4
  %xor.i764 = xor i32 %447, %445
  %shr6.i765 = lshr i32 %or.i.i758, 8
  %and7.i766 = and i32 %shr6.i765, 255
  %arrayidx8.i767 = getelementptr [256 x i32], ptr @cast_s3, i32 0, i32 %and7.i766
  %448 = ptrtoint ptr %arrayidx8.i767 to i32
  call void @__asan_load4_noabort(i32 %448)
  %449 = load i32, ptr %arrayidx8.i767, align 4
  %sub.i768 = sub i32 %xor.i764, %449
  %and9.i769 = and i32 %or.i.i758, 255
  %arrayidx10.i770 = getelementptr [256 x i32], ptr @cast_s4, i32 0, i32 %and9.i769
  %450 = ptrtoint ptr %arrayidx10.i770 to i32
  call void @__asan_load4_noabort(i32 %450)
  %451 = load i32, ptr %arrayidx10.i770, align 4
  %add11.i771 = add i32 %sub.i768, %451
  %xor13.i773 = xor i32 %add11.i771, %xor13.i696
  %arrayidx14.i774 = getelementptr [12 x [4 x i32]], ptr %ctx, i32 0, i32 9, i32 2
  %452 = ptrtoint ptr %arrayidx14.i774 to i32
  call void @__asan_load4_noabort(i32 %452)
  %453 = load i32, ptr %arrayidx14.i774, align 4
  %sub16.i776 = sub i32 %453, %xor55.i736
  %arrayidx17.i777 = getelementptr %struct.cast6_ctx, ptr %ctx, i32 0, i32 1, i32 9, i32 2
  %454 = ptrtoint ptr %arrayidx17.i777 to i32
  call void @__asan_load1_noabort(i32 %454)
  %455 = load i8, ptr %arrayidx17.i777, align 1
  %conv18.i778 = zext i8 %455 to i32
  %or.i109.i779 = tail call i32 @llvm.fshl.i32(i32 %sub16.i776, i32 %sub16.i776, i32 %conv18.i778) #7
  %shr20.i780 = lshr i32 %or.i109.i779, 24
  %arrayidx21.i781 = getelementptr [256 x i32], ptr @cast_s1, i32 0, i32 %shr20.i780
  %456 = ptrtoint ptr %arrayidx21.i781 to i32
  call void @__asan_load4_noabort(i32 %456)
  %457 = load i32, ptr %arrayidx21.i781, align 4
  %shr22.i782 = lshr i32 %or.i109.i779, 16
  %and23.i783 = and i32 %shr22.i782, 255
  %arrayidx24.i784 = getelementptr [256 x i32], ptr @cast_s2, i32 0, i32 %and23.i783
  %458 = ptrtoint ptr %arrayidx24.i784 to i32
  call void @__asan_load4_noabort(i32 %458)
  %459 = load i32, ptr %arrayidx24.i784, align 4
  %add25.i785 = add i32 %459, %457
  %shr26.i786 = lshr i32 %or.i109.i779, 8
  %and27.i787 = and i32 %shr26.i786, 255
  %arrayidx28.i788 = getelementptr [256 x i32], ptr @cast_s3, i32 0, i32 %and27.i787
  %460 = ptrtoint ptr %arrayidx28.i788 to i32
  call void @__asan_load4_noabort(i32 %460)
  %461 = load i32, ptr %arrayidx28.i788, align 4
  %xor29.i789 = xor i32 %add25.i785, %461
  %and30.i790 = and i32 %or.i109.i779, 255
  %arrayidx31.i791 = getelementptr [256 x i32], ptr @cast_s4, i32 0, i32 %and30.i790
  %462 = ptrtoint ptr %arrayidx31.i791 to i32
  call void @__asan_load4_noabort(i32 %462)
  %463 = load i32, ptr %arrayidx31.i791, align 4
  %sub32.i792 = sub i32 %xor29.i789, %463
  %xor34.i793 = xor i32 %sub32.i792, %xor34.i716
  %arrayidx35.i794 = getelementptr [12 x [4 x i32]], ptr %ctx, i32 0, i32 9, i32 1
  %464 = ptrtoint ptr %arrayidx35.i794 to i32
  call void @__asan_load4_noabort(i32 %464)
  %465 = load i32, ptr %arrayidx35.i794, align 4
  %xor37.i796 = xor i32 %465, %xor76.i753
  %arrayidx38.i797 = getelementptr %struct.cast6_ctx, ptr %ctx, i32 0, i32 1, i32 9, i32 1
  %466 = ptrtoint ptr %arrayidx38.i797 to i32
  call void @__asan_load1_noabort(i32 %466)
  %467 = load i8, ptr %arrayidx38.i797, align 1
  %conv39.i798 = zext i8 %467 to i32
  %or.i110.i799 = tail call i32 @llvm.fshl.i32(i32 %xor37.i796, i32 %xor37.i796, i32 %conv39.i798) #7
  %shr41.i800 = lshr i32 %or.i110.i799, 24
  %arrayidx42.i801 = getelementptr [256 x i32], ptr @cast_s1, i32 0, i32 %shr41.i800
  %468 = ptrtoint ptr %arrayidx42.i801 to i32
  call void @__asan_load4_noabort(i32 %468)
  %469 = load i32, ptr %arrayidx42.i801, align 4
  %shr43.i802 = lshr i32 %or.i110.i799, 16
  %and44.i803 = and i32 %shr43.i802, 255
  %arrayidx45.i804 = getelementptr [256 x i32], ptr @cast_s2, i32 0, i32 %and44.i803
  %470 = ptrtoint ptr %arrayidx45.i804 to i32
  call void @__asan_load4_noabort(i32 %470)
  %471 = load i32, ptr %arrayidx45.i804, align 4
  %sub46.i805 = sub i32 %469, %471
  %shr47.i806 = lshr i32 %or.i110.i799, 8
  %and48.i807 = and i32 %shr47.i806, 255
  %arrayidx49.i808 = getelementptr [256 x i32], ptr @cast_s3, i32 0, i32 %and48.i807
  %472 = ptrtoint ptr %arrayidx49.i808 to i32
  call void @__asan_load4_noabort(i32 %472)
  %473 = load i32, ptr %arrayidx49.i808, align 4
  %add50.i809 = add i32 %sub46.i805, %473
  %and51.i810 = and i32 %or.i110.i799, 255
  %arrayidx52.i811 = getelementptr [256 x i32], ptr @cast_s4, i32 0, i32 %and51.i810
  %474 = ptrtoint ptr %arrayidx52.i811 to i32
  call void @__asan_load4_noabort(i32 %474)
  %475 = load i32, ptr %arrayidx52.i811, align 4
  %xor53.i812 = xor i32 %475, %xor55.i736
  %xor55.i813 = xor i32 %xor53.i812, %add50.i809
  %476 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load4_noabort(i32 %476)
  %477 = load i32, ptr %arrayidx72, align 4
  %add58.i814 = add i32 %477, %xor13.i773
  %478 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_load1_noabort(i32 %478)
  %479 = load i8, ptr %arrayidx75, align 1
  %conv60.i815 = zext i8 %479 to i32
  %or.i111.i816 = tail call i32 @llvm.fshl.i32(i32 %add58.i814, i32 %add58.i814, i32 %conv60.i815) #7
  %shr62.i817 = lshr i32 %or.i111.i816, 24
  %arrayidx63.i818 = getelementptr [256 x i32], ptr @cast_s1, i32 0, i32 %shr62.i817
  %480 = ptrtoint ptr %arrayidx63.i818 to i32
  call void @__asan_load4_noabort(i32 %480)
  %481 = load i32, ptr %arrayidx63.i818, align 4
  %shr64.i819 = lshr i32 %or.i111.i816, 16
  %and65.i820 = and i32 %shr64.i819, 255
  %arrayidx66.i821 = getelementptr [256 x i32], ptr @cast_s2, i32 0, i32 %and65.i820
  %482 = ptrtoint ptr %arrayidx66.i821 to i32
  call void @__asan_load4_noabort(i32 %482)
  %483 = load i32, ptr %arrayidx66.i821, align 4
  %xor67.i822 = xor i32 %483, %481
  %shr68.i823 = lshr i32 %or.i111.i816, 8
  %and69.i824 = and i32 %shr68.i823, 255
  %arrayidx70.i825 = getelementptr [256 x i32], ptr @cast_s3, i32 0, i32 %and69.i824
  %484 = ptrtoint ptr %arrayidx70.i825 to i32
  call void @__asan_load4_noabort(i32 %484)
  %485 = load i32, ptr %arrayidx70.i825, align 4
  %sub71.i826 = sub i32 %xor67.i822, %485
  %and72.i827 = and i32 %or.i111.i816, 255
  %arrayidx73.i828 = getelementptr [256 x i32], ptr @cast_s4, i32 0, i32 %and72.i827
  %486 = ptrtoint ptr %arrayidx73.i828 to i32
  call void @__asan_load4_noabort(i32 %486)
  %487 = load i32, ptr %arrayidx73.i828, align 4
  %add74.i829 = add i32 %sub71.i826, %487
  %xor76.i830 = xor i32 %add74.i829, %xor76.i753
  %arrayidx79 = getelementptr [12 x [4 x i32]], ptr %ctx, i32 0, i32 10
  %arrayidx82 = getelementptr %struct.cast6_ctx, ptr %ctx, i32 0, i32 1, i32 10
  %arrayidx.i831 = getelementptr [12 x [4 x i32]], ptr %ctx, i32 0, i32 10, i32 3
  %488 = ptrtoint ptr %arrayidx.i831 to i32
  call void @__asan_load4_noabort(i32 %488)
  %489 = load i32, ptr %arrayidx.i831, align 4
  %add.i832 = add i32 %489, %xor34.i793
  %arrayidx2.i833 = getelementptr %struct.cast6_ctx, ptr %ctx, i32 0, i32 1, i32 10, i32 3
  %490 = ptrtoint ptr %arrayidx2.i833 to i32
  call void @__asan_load1_noabort(i32 %490)
  %491 = load i8, ptr %arrayidx2.i833, align 1
  %conv.i834 = zext i8 %491 to i32
  %or.i.i835 = tail call i32 @llvm.fshl.i32(i32 %add.i832, i32 %add.i832, i32 %conv.i834) #7
  %shr.i836 = lshr i32 %or.i.i835, 24
  %arrayidx3.i837 = getelementptr [256 x i32], ptr @cast_s1, i32 0, i32 %shr.i836
  %492 = ptrtoint ptr %arrayidx3.i837 to i32
  call void @__asan_load4_noabort(i32 %492)
  %493 = load i32, ptr %arrayidx3.i837, align 4
  %shr4.i838 = lshr i32 %or.i.i835, 16
  %and.i839 = and i32 %shr4.i838, 255
  %arrayidx5.i840 = getelementptr [256 x i32], ptr @cast_s2, i32 0, i32 %and.i839
  %494 = ptrtoint ptr %arrayidx5.i840 to i32
  call void @__asan_load4_noabort(i32 %494)
  %495 = load i32, ptr %arrayidx5.i840, align 4
  %xor.i841 = xor i32 %495, %493
  %shr6.i842 = lshr i32 %or.i.i835, 8
  %and7.i843 = and i32 %shr6.i842, 255
  %arrayidx8.i844 = getelementptr [256 x i32], ptr @cast_s3, i32 0, i32 %and7.i843
  %496 = ptrtoint ptr %arrayidx8.i844 to i32
  call void @__asan_load4_noabort(i32 %496)
  %497 = load i32, ptr %arrayidx8.i844, align 4
  %sub.i845 = sub i32 %xor.i841, %497
  %and9.i846 = and i32 %or.i.i835, 255
  %arrayidx10.i847 = getelementptr [256 x i32], ptr @cast_s4, i32 0, i32 %and9.i846
  %498 = ptrtoint ptr %arrayidx10.i847 to i32
  call void @__asan_load4_noabort(i32 %498)
  %499 = load i32, ptr %arrayidx10.i847, align 4
  %add11.i848 = add i32 %sub.i845, %499
  %xor13.i850 = xor i32 %add11.i848, %xor13.i773
  %arrayidx14.i851 = getelementptr [12 x [4 x i32]], ptr %ctx, i32 0, i32 10, i32 2
  %500 = ptrtoint ptr %arrayidx14.i851 to i32
  call void @__asan_load4_noabort(i32 %500)
  %501 = load i32, ptr %arrayidx14.i851, align 4
  %sub16.i853 = sub i32 %501, %xor55.i813
  %arrayidx17.i854 = getelementptr %struct.cast6_ctx, ptr %ctx, i32 0, i32 1, i32 10, i32 2
  %502 = ptrtoint ptr %arrayidx17.i854 to i32
  call void @__asan_load1_noabort(i32 %502)
  %503 = load i8, ptr %arrayidx17.i854, align 1
  %conv18.i855 = zext i8 %503 to i32
  %or.i109.i856 = tail call i32 @llvm.fshl.i32(i32 %sub16.i853, i32 %sub16.i853, i32 %conv18.i855) #7
  %shr20.i857 = lshr i32 %or.i109.i856, 24
  %arrayidx21.i858 = getelementptr [256 x i32], ptr @cast_s1, i32 0, i32 %shr20.i857
  %504 = ptrtoint ptr %arrayidx21.i858 to i32
  call void @__asan_load4_noabort(i32 %504)
  %505 = load i32, ptr %arrayidx21.i858, align 4
  %shr22.i859 = lshr i32 %or.i109.i856, 16
  %and23.i860 = and i32 %shr22.i859, 255
  %arrayidx24.i861 = getelementptr [256 x i32], ptr @cast_s2, i32 0, i32 %and23.i860
  %506 = ptrtoint ptr %arrayidx24.i861 to i32
  call void @__asan_load4_noabort(i32 %506)
  %507 = load i32, ptr %arrayidx24.i861, align 4
  %add25.i862 = add i32 %507, %505
  %shr26.i863 = lshr i32 %or.i109.i856, 8
  %and27.i864 = and i32 %shr26.i863, 255
  %arrayidx28.i865 = getelementptr [256 x i32], ptr @cast_s3, i32 0, i32 %and27.i864
  %508 = ptrtoint ptr %arrayidx28.i865 to i32
  call void @__asan_load4_noabort(i32 %508)
  %509 = load i32, ptr %arrayidx28.i865, align 4
  %xor29.i866 = xor i32 %add25.i862, %509
  %and30.i867 = and i32 %or.i109.i856, 255
  %arrayidx31.i868 = getelementptr [256 x i32], ptr @cast_s4, i32 0, i32 %and30.i867
  %510 = ptrtoint ptr %arrayidx31.i868 to i32
  call void @__asan_load4_noabort(i32 %510)
  %511 = load i32, ptr %arrayidx31.i868, align 4
  %sub32.i869 = sub i32 %xor29.i866, %511
  %xor34.i870 = xor i32 %sub32.i869, %xor34.i793
  %arrayidx35.i871 = getelementptr [12 x [4 x i32]], ptr %ctx, i32 0, i32 10, i32 1
  %512 = ptrtoint ptr %arrayidx35.i871 to i32
  call void @__asan_load4_noabort(i32 %512)
  %513 = load i32, ptr %arrayidx35.i871, align 4
  %xor37.i873 = xor i32 %513, %xor76.i830
  %arrayidx38.i874 = getelementptr %struct.cast6_ctx, ptr %ctx, i32 0, i32 1, i32 10, i32 1
  %514 = ptrtoint ptr %arrayidx38.i874 to i32
  call void @__asan_load1_noabort(i32 %514)
  %515 = load i8, ptr %arrayidx38.i874, align 1
  %conv39.i875 = zext i8 %515 to i32
  %or.i110.i876 = tail call i32 @llvm.fshl.i32(i32 %xor37.i873, i32 %xor37.i873, i32 %conv39.i875) #7
  %shr41.i877 = lshr i32 %or.i110.i876, 24
  %arrayidx42.i878 = getelementptr [256 x i32], ptr @cast_s1, i32 0, i32 %shr41.i877
  %516 = ptrtoint ptr %arrayidx42.i878 to i32
  call void @__asan_load4_noabort(i32 %516)
  %517 = load i32, ptr %arrayidx42.i878, align 4
  %shr43.i879 = lshr i32 %or.i110.i876, 16
  %and44.i880 = and i32 %shr43.i879, 255
  %arrayidx45.i881 = getelementptr [256 x i32], ptr @cast_s2, i32 0, i32 %and44.i880
  %518 = ptrtoint ptr %arrayidx45.i881 to i32
  call void @__asan_load4_noabort(i32 %518)
  %519 = load i32, ptr %arrayidx45.i881, align 4
  %sub46.i882 = sub i32 %517, %519
  %shr47.i883 = lshr i32 %or.i110.i876, 8
  %and48.i884 = and i32 %shr47.i883, 255
  %arrayidx49.i885 = getelementptr [256 x i32], ptr @cast_s3, i32 0, i32 %and48.i884
  %520 = ptrtoint ptr %arrayidx49.i885 to i32
  call void @__asan_load4_noabort(i32 %520)
  %521 = load i32, ptr %arrayidx49.i885, align 4
  %add50.i886 = add i32 %sub46.i882, %521
  %and51.i887 = and i32 %or.i110.i876, 255
  %arrayidx52.i888 = getelementptr [256 x i32], ptr @cast_s4, i32 0, i32 %and51.i887
  %522 = ptrtoint ptr %arrayidx52.i888 to i32
  call void @__asan_load4_noabort(i32 %522)
  %523 = load i32, ptr %arrayidx52.i888, align 4
  %xor53.i889 = xor i32 %523, %xor55.i813
  %xor55.i890 = xor i32 %xor53.i889, %add50.i886
  %524 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_load4_noabort(i32 %524)
  %525 = load i32, ptr %arrayidx79, align 4
  %add58.i891 = add i32 %525, %xor13.i850
  %526 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_load1_noabort(i32 %526)
  %527 = load i8, ptr %arrayidx82, align 1
  %conv60.i892 = zext i8 %527 to i32
  %or.i111.i893 = tail call i32 @llvm.fshl.i32(i32 %add58.i891, i32 %add58.i891, i32 %conv60.i892) #7
  %shr62.i894 = lshr i32 %or.i111.i893, 24
  %arrayidx63.i895 = getelementptr [256 x i32], ptr @cast_s1, i32 0, i32 %shr62.i894
  %528 = ptrtoint ptr %arrayidx63.i895 to i32
  call void @__asan_load4_noabort(i32 %528)
  %529 = load i32, ptr %arrayidx63.i895, align 4
  %shr64.i896 = lshr i32 %or.i111.i893, 16
  %and65.i897 = and i32 %shr64.i896, 255
  %arrayidx66.i898 = getelementptr [256 x i32], ptr @cast_s2, i32 0, i32 %and65.i897
  %530 = ptrtoint ptr %arrayidx66.i898 to i32
  call void @__asan_load4_noabort(i32 %530)
  %531 = load i32, ptr %arrayidx66.i898, align 4
  %xor67.i899 = xor i32 %531, %529
  %shr68.i900 = lshr i32 %or.i111.i893, 8
  %and69.i901 = and i32 %shr68.i900, 255
  %arrayidx70.i902 = getelementptr [256 x i32], ptr @cast_s3, i32 0, i32 %and69.i901
  %532 = ptrtoint ptr %arrayidx70.i902 to i32
  call void @__asan_load4_noabort(i32 %532)
  %533 = load i32, ptr %arrayidx70.i902, align 4
  %sub71.i903 = sub i32 %xor67.i899, %533
  %and72.i904 = and i32 %or.i111.i893, 255
  %arrayidx73.i905 = getelementptr [256 x i32], ptr @cast_s4, i32 0, i32 %and72.i904
  %534 = ptrtoint ptr %arrayidx73.i905 to i32
  call void @__asan_load4_noabort(i32 %534)
  %535 = load i32, ptr %arrayidx73.i905, align 4
  %add74.i906 = add i32 %sub71.i903, %535
  %xor76.i907 = xor i32 %add74.i906, %xor76.i830
  %arrayidx86 = getelementptr [12 x [4 x i32]], ptr %ctx, i32 0, i32 11
  %arrayidx89 = getelementptr %struct.cast6_ctx, ptr %ctx, i32 0, i32 1, i32 11
  %arrayidx.i908 = getelementptr [12 x [4 x i32]], ptr %ctx, i32 0, i32 11, i32 3
  %536 = ptrtoint ptr %arrayidx.i908 to i32
  call void @__asan_load4_noabort(i32 %536)
  %537 = load i32, ptr %arrayidx.i908, align 4
  %add.i909 = add i32 %537, %xor34.i870
  %arrayidx2.i910 = getelementptr %struct.cast6_ctx, ptr %ctx, i32 0, i32 1, i32 11, i32 3
  %538 = ptrtoint ptr %arrayidx2.i910 to i32
  call void @__asan_load1_noabort(i32 %538)
  %539 = load i8, ptr %arrayidx2.i910, align 1
  %conv.i911 = zext i8 %539 to i32
  %or.i.i912 = tail call i32 @llvm.fshl.i32(i32 %add.i909, i32 %add.i909, i32 %conv.i911) #7
  %shr.i913 = lshr i32 %or.i.i912, 24
  %arrayidx3.i914 = getelementptr [256 x i32], ptr @cast_s1, i32 0, i32 %shr.i913
  %540 = ptrtoint ptr %arrayidx3.i914 to i32
  call void @__asan_load4_noabort(i32 %540)
  %541 = load i32, ptr %arrayidx3.i914, align 4
  %shr4.i915 = lshr i32 %or.i.i912, 16
  %and.i916 = and i32 %shr4.i915, 255
  %arrayidx5.i917 = getelementptr [256 x i32], ptr @cast_s2, i32 0, i32 %and.i916
  %542 = ptrtoint ptr %arrayidx5.i917 to i32
  call void @__asan_load4_noabort(i32 %542)
  %543 = load i32, ptr %arrayidx5.i917, align 4
  %xor.i918 = xor i32 %543, %541
  %shr6.i919 = lshr i32 %or.i.i912, 8
  %and7.i920 = and i32 %shr6.i919, 255
  %arrayidx8.i921 = getelementptr [256 x i32], ptr @cast_s3, i32 0, i32 %and7.i920
  %544 = ptrtoint ptr %arrayidx8.i921 to i32
  call void @__asan_load4_noabort(i32 %544)
  %545 = load i32, ptr %arrayidx8.i921, align 4
  %sub.i922 = sub i32 %xor.i918, %545
  %and9.i923 = and i32 %or.i.i912, 255
  %arrayidx10.i924 = getelementptr [256 x i32], ptr @cast_s4, i32 0, i32 %and9.i923
  %546 = ptrtoint ptr %arrayidx10.i924 to i32
  call void @__asan_load4_noabort(i32 %546)
  %547 = load i32, ptr %arrayidx10.i924, align 4
  %add11.i925 = add i32 %sub.i922, %547
  %xor13.i927 = xor i32 %add11.i925, %xor13.i850
  %arrayidx14.i928 = getelementptr [12 x [4 x i32]], ptr %ctx, i32 0, i32 11, i32 2
  %548 = ptrtoint ptr %arrayidx14.i928 to i32
  call void @__asan_load4_noabort(i32 %548)
  %549 = load i32, ptr %arrayidx14.i928, align 4
  %sub16.i930 = sub i32 %549, %xor55.i890
  %arrayidx17.i931 = getelementptr %struct.cast6_ctx, ptr %ctx, i32 0, i32 1, i32 11, i32 2
  %550 = ptrtoint ptr %arrayidx17.i931 to i32
  call void @__asan_load1_noabort(i32 %550)
  %551 = load i8, ptr %arrayidx17.i931, align 1
  %conv18.i932 = zext i8 %551 to i32
  %or.i109.i933 = tail call i32 @llvm.fshl.i32(i32 %sub16.i930, i32 %sub16.i930, i32 %conv18.i932) #7
  %shr20.i934 = lshr i32 %or.i109.i933, 24
  %arrayidx21.i935 = getelementptr [256 x i32], ptr @cast_s1, i32 0, i32 %shr20.i934
  %552 = ptrtoint ptr %arrayidx21.i935 to i32
  call void @__asan_load4_noabort(i32 %552)
  %553 = load i32, ptr %arrayidx21.i935, align 4
  %shr22.i936 = lshr i32 %or.i109.i933, 16
  %and23.i937 = and i32 %shr22.i936, 255
  %arrayidx24.i938 = getelementptr [256 x i32], ptr @cast_s2, i32 0, i32 %and23.i937
  %554 = ptrtoint ptr %arrayidx24.i938 to i32
  call void @__asan_load4_noabort(i32 %554)
  %555 = load i32, ptr %arrayidx24.i938, align 4
  %add25.i939 = add i32 %555, %553
  %shr26.i940 = lshr i32 %or.i109.i933, 8
  %and27.i941 = and i32 %shr26.i940, 255
  %arrayidx28.i942 = getelementptr [256 x i32], ptr @cast_s3, i32 0, i32 %and27.i941
  %556 = ptrtoint ptr %arrayidx28.i942 to i32
  call void @__asan_load4_noabort(i32 %556)
  %557 = load i32, ptr %arrayidx28.i942, align 4
  %xor29.i943 = xor i32 %add25.i939, %557
  %and30.i944 = and i32 %or.i109.i933, 255
  %arrayidx31.i945 = getelementptr [256 x i32], ptr @cast_s4, i32 0, i32 %and30.i944
  %558 = ptrtoint ptr %arrayidx31.i945 to i32
  call void @__asan_load4_noabort(i32 %558)
  %559 = load i32, ptr %arrayidx31.i945, align 4
  %sub32.i946 = sub i32 %xor29.i943, %559
  %xor34.i947 = xor i32 %sub32.i946, %xor34.i870
  %arrayidx35.i948 = getelementptr [12 x [4 x i32]], ptr %ctx, i32 0, i32 11, i32 1
  %560 = ptrtoint ptr %arrayidx35.i948 to i32
  call void @__asan_load4_noabort(i32 %560)
  %561 = load i32, ptr %arrayidx35.i948, align 4
  %xor37.i950 = xor i32 %561, %xor76.i907
  %arrayidx38.i951 = getelementptr %struct.cast6_ctx, ptr %ctx, i32 0, i32 1, i32 11, i32 1
  %562 = ptrtoint ptr %arrayidx38.i951 to i32
  call void @__asan_load1_noabort(i32 %562)
  %563 = load i8, ptr %arrayidx38.i951, align 1
  %conv39.i952 = zext i8 %563 to i32
  %or.i110.i953 = tail call i32 @llvm.fshl.i32(i32 %xor37.i950, i32 %xor37.i950, i32 %conv39.i952) #7
  %shr41.i954 = lshr i32 %or.i110.i953, 24
  %arrayidx42.i955 = getelementptr [256 x i32], ptr @cast_s1, i32 0, i32 %shr41.i954
  %564 = ptrtoint ptr %arrayidx42.i955 to i32
  call void @__asan_load4_noabort(i32 %564)
  %565 = load i32, ptr %arrayidx42.i955, align 4
  %shr43.i956 = lshr i32 %or.i110.i953, 16
  %and44.i957 = and i32 %shr43.i956, 255
  %arrayidx45.i958 = getelementptr [256 x i32], ptr @cast_s2, i32 0, i32 %and44.i957
  %566 = ptrtoint ptr %arrayidx45.i958 to i32
  call void @__asan_load4_noabort(i32 %566)
  %567 = load i32, ptr %arrayidx45.i958, align 4
  %sub46.i959 = sub i32 %565, %567
  %shr47.i960 = lshr i32 %or.i110.i953, 8
  %and48.i961 = and i32 %shr47.i960, 255
  %arrayidx49.i962 = getelementptr [256 x i32], ptr @cast_s3, i32 0, i32 %and48.i961
  %568 = ptrtoint ptr %arrayidx49.i962 to i32
  call void @__asan_load4_noabort(i32 %568)
  %569 = load i32, ptr %arrayidx49.i962, align 4
  %add50.i963 = add i32 %sub46.i959, %569
  %and51.i964 = and i32 %or.i110.i953, 255
  %arrayidx52.i965 = getelementptr [256 x i32], ptr @cast_s4, i32 0, i32 %and51.i964
  %570 = ptrtoint ptr %arrayidx52.i965 to i32
  call void @__asan_load4_noabort(i32 %570)
  %571 = load i32, ptr %arrayidx52.i965, align 4
  %xor53.i966 = xor i32 %571, %xor55.i890
  %xor55.i967 = xor i32 %xor53.i966, %add50.i963
  %572 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_load4_noabort(i32 %572)
  %573 = load i32, ptr %arrayidx86, align 4
  %add58.i968 = add i32 %573, %xor13.i927
  %574 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_load1_noabort(i32 %574)
  %575 = load i8, ptr %arrayidx89, align 1
  %conv60.i969 = zext i8 %575 to i32
  %or.i111.i970 = tail call i32 @llvm.fshl.i32(i32 %add58.i968, i32 %add58.i968, i32 %conv60.i969) #7
  %shr62.i971 = lshr i32 %or.i111.i970, 24
  %arrayidx63.i972 = getelementptr [256 x i32], ptr @cast_s1, i32 0, i32 %shr62.i971
  %576 = ptrtoint ptr %arrayidx63.i972 to i32
  call void @__asan_load4_noabort(i32 %576)
  %577 = load i32, ptr %arrayidx63.i972, align 4
  %shr64.i973 = lshr i32 %or.i111.i970, 16
  %and65.i974 = and i32 %shr64.i973, 255
  %arrayidx66.i975 = getelementptr [256 x i32], ptr @cast_s2, i32 0, i32 %and65.i974
  %578 = ptrtoint ptr %arrayidx66.i975 to i32
  call void @__asan_load4_noabort(i32 %578)
  %579 = load i32, ptr %arrayidx66.i975, align 4
  %xor67.i976 = xor i32 %579, %577
  %shr68.i977 = lshr i32 %or.i111.i970, 8
  %and69.i978 = and i32 %shr68.i977, 255
  %arrayidx70.i979 = getelementptr [256 x i32], ptr @cast_s3, i32 0, i32 %and69.i978
  %580 = ptrtoint ptr %arrayidx70.i979 to i32
  call void @__asan_load4_noabort(i32 %580)
  %581 = load i32, ptr %arrayidx70.i979, align 4
  %sub71.i980 = sub i32 %xor67.i976, %581
  %and72.i981 = and i32 %or.i111.i970, 255
  %arrayidx73.i982 = getelementptr [256 x i32], ptr @cast_s4, i32 0, i32 %and72.i981
  %582 = ptrtoint ptr %arrayidx73.i982 to i32
  call void @__asan_load4_noabort(i32 %582)
  %583 = load i32, ptr %arrayidx73.i982, align 4
  %add74.i983 = add i32 %sub71.i980, %583
  %xor76.i984 = xor i32 %add74.i983, %xor76.i907
  %584 = ptrtoint ptr %outbuf to i32
  call void @__asan_storeN_noabort(i32 %584, i32 4)
  store i32 %xor34.i947, ptr %outbuf, align 1
  %add.ptr94 = getelementptr i8, ptr %outbuf, i32 4
  %585 = ptrtoint ptr %add.ptr94 to i32
  call void @__asan_storeN_noabort(i32 %585, i32 4)
  store i32 %xor55.i967, ptr %add.ptr94, align 1
  %add.ptr96 = getelementptr i8, ptr %outbuf, i32 8
  %586 = ptrtoint ptr %add.ptr96 to i32
  call void @__asan_storeN_noabort(i32 %586, i32 4)
  store i32 %xor76.i984, ptr %add.ptr96, align 1
  %add.ptr98 = getelementptr i8, ptr %outbuf, i32 12
  %587 = ptrtoint ptr %add.ptr98 to i32
  call void @__asan_storeN_noabort(i32 %587, i32 4)
  store i32 %xor13.i927, ptr %add.ptr98, align 1
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @__cast6_decrypt(ptr noundef readonly %ctx, ptr nocapture noundef writeonly %outbuf, ptr nocapture noundef readonly %inbuf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %inbuf to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %inbuf, align 1
  %add.ptr = getelementptr i8, ptr %inbuf, i32 4
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %add.ptr, align 1
  %add.ptr3 = getelementptr i8, ptr %inbuf, i32 8
  %4 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %add.ptr3, align 1
  %add.ptr6 = getelementptr i8, ptr %inbuf, i32 12
  %6 = ptrtoint ptr %add.ptr6 to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %add.ptr6, align 1
  %arrayidx10 = getelementptr [12 x [4 x i32]], ptr %ctx, i32 0, i32 11
  %Kr11 = getelementptr inbounds %struct.cast6_ctx, ptr %ctx, i32 0, i32 1
  %arrayidx12 = getelementptr %struct.cast6_ctx, ptr %ctx, i32 0, i32 1, i32 11
  %8 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx10, align 4
  %add.i = add i32 %9, %7
  %10 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx12, align 1
  %conv.i = zext i8 %11 to i32
  %or.i.i = tail call i32 @llvm.fshl.i32(i32 %add.i, i32 %add.i, i32 %conv.i) #7
  %shr.i = lshr i32 %or.i.i, 24
  %arrayidx3.i = getelementptr [256 x i32], ptr @cast_s1, i32 0, i32 %shr.i
  %12 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx3.i, align 4
  %shr4.i = lshr i32 %or.i.i, 16
  %and.i = and i32 %shr4.i, 255
  %arrayidx5.i = getelementptr [256 x i32], ptr @cast_s2, i32 0, i32 %and.i
  %14 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx5.i, align 4
  %xor.i = xor i32 %15, %13
  %shr6.i = lshr i32 %or.i.i, 8
  %and7.i = and i32 %shr6.i, 255
  %arrayidx8.i = getelementptr [256 x i32], ptr @cast_s3, i32 0, i32 %and7.i
  %16 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx8.i, align 4
  %sub.i = sub i32 %xor.i, %17
  %and9.i = and i32 %or.i.i, 255
  %arrayidx10.i = getelementptr [256 x i32], ptr @cast_s4, i32 0, i32 %and9.i
  %18 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx10.i, align 4
  %add11.i = add i32 %sub.i, %19
  %xor13.i = xor i32 %add11.i, %5
  %arrayidx14.i = getelementptr [12 x [4 x i32]], ptr %ctx, i32 0, i32 11, i32 1
  %20 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx14.i, align 4
  %xor16.i = xor i32 %xor13.i, %21
  %arrayidx17.i = getelementptr %struct.cast6_ctx, ptr %ctx, i32 0, i32 1, i32 11, i32 1
  %22 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx17.i, align 1
  %conv18.i = zext i8 %23 to i32
  %or.i109.i = tail call i32 @llvm.fshl.i32(i32 %xor16.i, i32 %xor16.i, i32 %conv18.i) #7
  %shr20.i = lshr i32 %or.i109.i, 24
  %arrayidx21.i = getelementptr [256 x i32], ptr @cast_s1, i32 0, i32 %shr20.i
  %24 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx21.i, align 4
  %shr22.i = lshr i32 %or.i109.i, 16
  %and23.i = and i32 %shr22.i, 255
  %arrayidx24.i = getelementptr [256 x i32], ptr @cast_s2, i32 0, i32 %and23.i
  %26 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx24.i, align 4
  %sub25.i = sub i32 %25, %27
  %shr26.i = lshr i32 %or.i109.i, 8
  %and27.i = and i32 %shr26.i, 255
  %arrayidx28.i = getelementptr [256 x i32], ptr @cast_s3, i32 0, i32 %and27.i
  %28 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx28.i, align 4
  %add29.i = add i32 %sub25.i, %29
  %and30.i = and i32 %or.i109.i, 255
  %arrayidx31.i = getelementptr [256 x i32], ptr @cast_s4, i32 0, i32 %and30.i
  %30 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx31.i, align 4
  %xor32.i = xor i32 %31, %3
  %xor34.i = xor i32 %xor32.i, %add29.i
  %arrayidx35.i = getelementptr [12 x [4 x i32]], ptr %ctx, i32 0, i32 11, i32 2
  %32 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx35.i, align 4
  %sub37.i = sub i32 %33, %xor34.i
  %arrayidx38.i = getelementptr %struct.cast6_ctx, ptr %ctx, i32 0, i32 1, i32 11, i32 2
  %34 = ptrtoint ptr %arrayidx38.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx38.i, align 1
  %conv39.i = zext i8 %35 to i32
  %or.i110.i = tail call i32 @llvm.fshl.i32(i32 %sub37.i, i32 %sub37.i, i32 %conv39.i) #7
  %shr41.i = lshr i32 %or.i110.i, 24
  %arrayidx42.i = getelementptr [256 x i32], ptr @cast_s1, i32 0, i32 %shr41.i
  %36 = ptrtoint ptr %arrayidx42.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx42.i, align 4
  %shr43.i = lshr i32 %or.i110.i, 16
  %and44.i = and i32 %shr43.i, 255
  %arrayidx45.i = getelementptr [256 x i32], ptr @cast_s2, i32 0, i32 %and44.i
  %38 = ptrtoint ptr %arrayidx45.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx45.i, align 4
  %add46.i = add i32 %39, %37
  %shr47.i = lshr i32 %or.i110.i, 8
  %and48.i = and i32 %shr47.i, 255
  %arrayidx49.i = getelementptr [256 x i32], ptr @cast_s3, i32 0, i32 %and48.i
  %40 = ptrtoint ptr %arrayidx49.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx49.i, align 4
  %xor50.i = xor i32 %add46.i, %41
  %and51.i = and i32 %or.i110.i, 255
  %arrayidx52.i = getelementptr [256 x i32], ptr @cast_s4, i32 0, i32 %and51.i
  %42 = ptrtoint ptr %arrayidx52.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx52.i, align 4
  %sub53.i = sub i32 %xor50.i, %43
  %xor55.i = xor i32 %sub53.i, %1
  %arrayidx56.i = getelementptr [12 x [4 x i32]], ptr %ctx, i32 0, i32 11, i32 3
  %44 = ptrtoint ptr %arrayidx56.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx56.i, align 4
  %add58.i = add i32 %xor55.i, %45
  %arrayidx59.i = getelementptr %struct.cast6_ctx, ptr %ctx, i32 0, i32 1, i32 11, i32 3
  %46 = ptrtoint ptr %arrayidx59.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx59.i, align 1
  %conv60.i = zext i8 %47 to i32
  %or.i111.i = tail call i32 @llvm.fshl.i32(i32 %add58.i, i32 %add58.i, i32 %conv60.i) #7
  %shr62.i = lshr i32 %or.i111.i, 24
  %arrayidx63.i = getelementptr [256 x i32], ptr @cast_s1, i32 0, i32 %shr62.i
  %48 = ptrtoint ptr %arrayidx63.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx63.i, align 4
  %shr64.i = lshr i32 %or.i111.i, 16
  %and65.i = and i32 %shr64.i, 255
  %arrayidx66.i = getelementptr [256 x i32], ptr @cast_s2, i32 0, i32 %and65.i
  %50 = ptrtoint ptr %arrayidx66.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx66.i, align 4
  %xor67.i = xor i32 %51, %49
  %shr68.i = lshr i32 %or.i111.i, 8
  %and69.i = and i32 %shr68.i, 255
  %arrayidx70.i = getelementptr [256 x i32], ptr @cast_s3, i32 0, i32 %and69.i
  %52 = ptrtoint ptr %arrayidx70.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx70.i, align 4
  %sub71.i = sub i32 %xor67.i, %53
  %and72.i = and i32 %or.i111.i, 255
  %arrayidx73.i = getelementptr [256 x i32], ptr @cast_s4, i32 0, i32 %and72.i
  %54 = ptrtoint ptr %arrayidx73.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx73.i, align 4
  %add74.i = add i32 %sub71.i, %55
  %xor76.i = xor i32 %add74.i, %7
  %arrayidx16 = getelementptr [12 x [4 x i32]], ptr %ctx, i32 0, i32 10
  %arrayidx19 = getelementptr %struct.cast6_ctx, ptr %ctx, i32 0, i32 1, i32 10
  %56 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx16, align 4
  %add.i151 = add i32 %xor76.i, %57
  %58 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx19, align 1
  %conv.i152 = zext i8 %59 to i32
  %or.i.i153 = tail call i32 @llvm.fshl.i32(i32 %add.i151, i32 %add.i151, i32 %conv.i152) #7
  %shr.i154 = lshr i32 %or.i.i153, 24
  %arrayidx3.i155 = getelementptr [256 x i32], ptr @cast_s1, i32 0, i32 %shr.i154
  %60 = ptrtoint ptr %arrayidx3.i155 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx3.i155, align 4
  %shr4.i156 = lshr i32 %or.i.i153, 16
  %and.i157 = and i32 %shr4.i156, 255
  %arrayidx5.i158 = getelementptr [256 x i32], ptr @cast_s2, i32 0, i32 %and.i157
  %62 = ptrtoint ptr %arrayidx5.i158 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx5.i158, align 4
  %xor.i159 = xor i32 %63, %61
  %shr6.i160 = lshr i32 %or.i.i153, 8
  %and7.i161 = and i32 %shr6.i160, 255
  %arrayidx8.i162 = getelementptr [256 x i32], ptr @cast_s3, i32 0, i32 %and7.i161
  %64 = ptrtoint ptr %arrayidx8.i162 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx8.i162, align 4
  %sub.i163 = sub i32 %xor.i159, %65
  %and9.i164 = and i32 %or.i.i153, 255
  %arrayidx10.i165 = getelementptr [256 x i32], ptr @cast_s4, i32 0, i32 %and9.i164
  %66 = ptrtoint ptr %arrayidx10.i165 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx10.i165, align 4
  %add11.i166 = add i32 %sub.i163, %67
  %xor13.i168 = xor i32 %add11.i166, %xor13.i
  %arrayidx14.i169 = getelementptr [12 x [4 x i32]], ptr %ctx, i32 0, i32 10, i32 1
  %68 = ptrtoint ptr %arrayidx14.i169 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx14.i169, align 4
  %xor16.i170 = xor i32 %xor13.i168, %69
  %arrayidx17.i171 = getelementptr %struct.cast6_ctx, ptr %ctx, i32 0, i32 1, i32 10, i32 1
  %70 = ptrtoint ptr %arrayidx17.i171 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx17.i171, align 1
  %conv18.i172 = zext i8 %71 to i32
  %or.i109.i173 = tail call i32 @llvm.fshl.i32(i32 %xor16.i170, i32 %xor16.i170, i32 %conv18.i172) #7
  %shr20.i174 = lshr i32 %or.i109.i173, 24
  %arrayidx21.i175 = getelementptr [256 x i32], ptr @cast_s1, i32 0, i32 %shr20.i174
  %72 = ptrtoint ptr %arrayidx21.i175 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx21.i175, align 4
  %shr22.i176 = lshr i32 %or.i109.i173, 16
  %and23.i177 = and i32 %shr22.i176, 255
  %arrayidx24.i178 = getelementptr [256 x i32], ptr @cast_s2, i32 0, i32 %and23.i177
  %74 = ptrtoint ptr %arrayidx24.i178 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx24.i178, align 4
  %sub25.i179 = sub i32 %73, %75
  %shr26.i180 = lshr i32 %or.i109.i173, 8
  %and27.i181 = and i32 %shr26.i180, 255
  %arrayidx28.i182 = getelementptr [256 x i32], ptr @cast_s3, i32 0, i32 %and27.i181
  %76 = ptrtoint ptr %arrayidx28.i182 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx28.i182, align 4
  %add29.i183 = add i32 %sub25.i179, %77
  %and30.i184 = and i32 %or.i109.i173, 255
  %arrayidx31.i185 = getelementptr [256 x i32], ptr @cast_s4, i32 0, i32 %and30.i184
  %78 = ptrtoint ptr %arrayidx31.i185 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %arrayidx31.i185, align 4
  %xor32.i186 = xor i32 %79, %xor34.i
  %xor34.i188 = xor i32 %xor32.i186, %add29.i183
  %arrayidx35.i189 = getelementptr [12 x [4 x i32]], ptr %ctx, i32 0, i32 10, i32 2
  %80 = ptrtoint ptr %arrayidx35.i189 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx35.i189, align 4
  %sub37.i190 = sub i32 %81, %xor34.i188
  %arrayidx38.i191 = getelementptr %struct.cast6_ctx, ptr %ctx, i32 0, i32 1, i32 10, i32 2
  %82 = ptrtoint ptr %arrayidx38.i191 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %arrayidx38.i191, align 1
  %conv39.i192 = zext i8 %83 to i32
  %or.i110.i193 = tail call i32 @llvm.fshl.i32(i32 %sub37.i190, i32 %sub37.i190, i32 %conv39.i192) #7
  %shr41.i194 = lshr i32 %or.i110.i193, 24
  %arrayidx42.i195 = getelementptr [256 x i32], ptr @cast_s1, i32 0, i32 %shr41.i194
  %84 = ptrtoint ptr %arrayidx42.i195 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %arrayidx42.i195, align 4
  %shr43.i196 = lshr i32 %or.i110.i193, 16
  %and44.i197 = and i32 %shr43.i196, 255
  %arrayidx45.i198 = getelementptr [256 x i32], ptr @cast_s2, i32 0, i32 %and44.i197
  %86 = ptrtoint ptr %arrayidx45.i198 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %arrayidx45.i198, align 4
  %add46.i199 = add i32 %87, %85
  %shr47.i200 = lshr i32 %or.i110.i193, 8
  %and48.i201 = and i32 %shr47.i200, 255
  %arrayidx49.i202 = getelementptr [256 x i32], ptr @cast_s3, i32 0, i32 %and48.i201
  %88 = ptrtoint ptr %arrayidx49.i202 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %arrayidx49.i202, align 4
  %xor50.i203 = xor i32 %add46.i199, %89
  %and51.i204 = and i32 %or.i110.i193, 255
  %arrayidx52.i205 = getelementptr [256 x i32], ptr @cast_s4, i32 0, i32 %and51.i204
  %90 = ptrtoint ptr %arrayidx52.i205 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %arrayidx52.i205, align 4
  %sub53.i206 = sub i32 %xor50.i203, %91
  %xor55.i207 = xor i32 %sub53.i206, %xor55.i
  %arrayidx56.i208 = getelementptr [12 x [4 x i32]], ptr %ctx, i32 0, i32 10, i32 3
  %92 = ptrtoint ptr %arrayidx56.i208 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %arrayidx56.i208, align 4
  %add58.i209 = add i32 %xor55.i207, %93
  %arrayidx59.i210 = getelementptr %struct.cast6_ctx, ptr %ctx, i32 0, i32 1, i32 10, i32 3
  %94 = ptrtoint ptr %arrayidx59.i210 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %arrayidx59.i210, align 1
  %conv60.i211 = zext i8 %95 to i32
  %or.i111.i212 = tail call i32 @llvm.fshl.i32(i32 %add58.i209, i32 %add58.i209, i32 %conv60.i211) #7
  %shr62.i213 = lshr i32 %or.i111.i212, 24
  %arrayidx63.i214 = getelementptr [256 x i32], ptr @cast_s1, i32 0, i32 %shr62.i213
  %96 = ptrtoint ptr %arrayidx63.i214 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %arrayidx63.i214, align 4
  %shr64.i215 = lshr i32 %or.i111.i212, 16
  %and65.i216 = and i32 %shr64.i215, 255
  %arrayidx66.i217 = getelementptr [256 x i32], ptr @cast_s2, i32 0, i32 %and65.i216
  %98 = ptrtoint ptr %arrayidx66.i217 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %arrayidx66.i217, align 4
  %xor67.i218 = xor i32 %99, %97
  %shr68.i219 = lshr i32 %or.i111.i212, 8
  %and69.i220 = and i32 %shr68.i219, 255
  %arrayidx70.i221 = getelementptr [256 x i32], ptr @cast_s3, i32 0, i32 %and69.i220
  %100 = ptrtoint ptr %arrayidx70.i221 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %arrayidx70.i221, align 4
  %sub71.i222 = sub i32 %xor67.i218, %101
  %and72.i223 = and i32 %or.i111.i212, 255
  %arrayidx73.i224 = getelementptr [256 x i32], ptr @cast_s4, i32 0, i32 %and72.i223
  %102 = ptrtoint ptr %arrayidx73.i224 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %arrayidx73.i224, align 4
  %add74.i225 = add i32 %sub71.i222, %103
  %xor76.i226 = xor i32 %add74.i225, %xor76.i
  %arrayidx23 = getelementptr [12 x [4 x i32]], ptr %ctx, i32 0, i32 9
  %arrayidx26 = getelementptr %struct.cast6_ctx, ptr %ctx, i32 0, i32 1, i32 9
  %104 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %arrayidx23, align 4
  %add.i228 = add i32 %xor76.i226, %105
  %106 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %arrayidx26, align 1
  %conv.i229 = zext i8 %107 to i32
  %or.i.i230 = tail call i32 @llvm.fshl.i32(i32 %add.i228, i32 %add.i228, i32 %conv.i229) #7
  %shr.i231 = lshr i32 %or.i.i230, 24
  %arrayidx3.i232 = getelementptr [256 x i32], ptr @cast_s1, i32 0, i32 %shr.i231
  %108 = ptrtoint ptr %arrayidx3.i232 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %arrayidx3.i232, align 4
  %shr4.i233 = lshr i32 %or.i.i230, 16
  %and.i234 = and i32 %shr4.i233, 255
  %arrayidx5.i235 = getelementptr [256 x i32], ptr @cast_s2, i32 0, i32 %and.i234
  %110 = ptrtoint ptr %arrayidx5.i235 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %arrayidx5.i235, align 4
  %xor.i236 = xor i32 %111, %109
  %shr6.i237 = lshr i32 %or.i.i230, 8
  %and7.i238 = and i32 %shr6.i237, 255
  %arrayidx8.i239 = getelementptr [256 x i32], ptr @cast_s3, i32 0, i32 %and7.i238
  %112 = ptrtoint ptr %arrayidx8.i239 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %arrayidx8.i239, align 4
  %sub.i240 = sub i32 %xor.i236, %113
  %and9.i241 = and i32 %or.i.i230, 255
  %arrayidx10.i242 = getelementptr [256 x i32], ptr @cast_s4, i32 0, i32 %and9.i241
  %114 = ptrtoint ptr %arrayidx10.i242 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %arrayidx10.i242, align 4
  %add11.i243 = add i32 %sub.i240, %115
  %xor13.i245 = xor i32 %add11.i243, %xor13.i168
  %arrayidx14.i246 = getelementptr [12 x [4 x i32]], ptr %ctx, i32 0, i32 9, i32 1
  %116 = ptrtoint ptr %arrayidx14.i246 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %arrayidx14.i246, align 4
  %xor16.i247 = xor i32 %xor13.i245, %117
  %arrayidx17.i248 = getelementptr %struct.cast6_ctx, ptr %ctx, i32 0, i32 1, i32 9, i32 1
  %118 = ptrtoint ptr %arrayidx17.i248 to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %arrayidx17.i248, align 1
  %conv18.i249 = zext i8 %119 to i32
  %or.i109.i250 = tail call i32 @llvm.fshl.i32(i32 %xor16.i247, i32 %xor16.i247, i32 %conv18.i249) #7
  %shr20.i251 = lshr i32 %or.i109.i250, 24
  %arrayidx21.i252 = getelementptr [256 x i32], ptr @cast_s1, i32 0, i32 %shr20.i251
  %120 = ptrtoint ptr %arrayidx21.i252 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %arrayidx21.i252, align 4
  %shr22.i253 = lshr i32 %or.i109.i250, 16
  %and23.i254 = and i32 %shr22.i253, 255
  %arrayidx24.i255 = getelementptr [256 x i32], ptr @cast_s2, i32 0, i32 %and23.i254
  %122 = ptrtoint ptr %arrayidx24.i255 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %arrayidx24.i255, align 4
  %sub25.i256 = sub i32 %121, %123
  %shr26.i257 = lshr i32 %or.i109.i250, 8
  %and27.i258 = and i32 %shr26.i257, 255
  %arrayidx28.i259 = getelementptr [256 x i32], ptr @cast_s3, i32 0, i32 %and27.i258
  %124 = ptrtoint ptr %arrayidx28.i259 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %arrayidx28.i259, align 4
  %add29.i260 = add i32 %sub25.i256, %125
  %and30.i261 = and i32 %or.i109.i250, 255
  %arrayidx31.i262 = getelementptr [256 x i32], ptr @cast_s4, i32 0, i32 %and30.i261
  %126 = ptrtoint ptr %arrayidx31.i262 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %arrayidx31.i262, align 4
  %xor32.i263 = xor i32 %127, %xor34.i188
  %xor34.i265 = xor i32 %xor32.i263, %add29.i260
  %arrayidx35.i266 = getelementptr [12 x [4 x i32]], ptr %ctx, i32 0, i32 9, i32 2
  %128 = ptrtoint ptr %arrayidx35.i266 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %arrayidx35.i266, align 4
  %sub37.i267 = sub i32 %129, %xor34.i265
  %arrayidx38.i268 = getelementptr %struct.cast6_ctx, ptr %ctx, i32 0, i32 1, i32 9, i32 2
  %130 = ptrtoint ptr %arrayidx38.i268 to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %arrayidx38.i268, align 1
  %conv39.i269 = zext i8 %131 to i32
  %or.i110.i270 = tail call i32 @llvm.fshl.i32(i32 %sub37.i267, i32 %sub37.i267, i32 %conv39.i269) #7
  %shr41.i271 = lshr i32 %or.i110.i270, 24
  %arrayidx42.i272 = getelementptr [256 x i32], ptr @cast_s1, i32 0, i32 %shr41.i271
  %132 = ptrtoint ptr %arrayidx42.i272 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %arrayidx42.i272, align 4
  %shr43.i273 = lshr i32 %or.i110.i270, 16
  %and44.i274 = and i32 %shr43.i273, 255
  %arrayidx45.i275 = getelementptr [256 x i32], ptr @cast_s2, i32 0, i32 %and44.i274
  %134 = ptrtoint ptr %arrayidx45.i275 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %arrayidx45.i275, align 4
  %add46.i276 = add i32 %135, %133
  %shr47.i277 = lshr i32 %or.i110.i270, 8
  %and48.i278 = and i32 %shr47.i277, 255
  %arrayidx49.i279 = getelementptr [256 x i32], ptr @cast_s3, i32 0, i32 %and48.i278
  %136 = ptrtoint ptr %arrayidx49.i279 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %arrayidx49.i279, align 4
  %xor50.i280 = xor i32 %add46.i276, %137
  %and51.i281 = and i32 %or.i110.i270, 255
  %arrayidx52.i282 = getelementptr [256 x i32], ptr @cast_s4, i32 0, i32 %and51.i281
  %138 = ptrtoint ptr %arrayidx52.i282 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %arrayidx52.i282, align 4
  %sub53.i283 = sub i32 %xor50.i280, %139
  %xor55.i284 = xor i32 %sub53.i283, %xor55.i207
  %arrayidx56.i285 = getelementptr [12 x [4 x i32]], ptr %ctx, i32 0, i32 9, i32 3
  %140 = ptrtoint ptr %arrayidx56.i285 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %arrayidx56.i285, align 4
  %add58.i286 = add i32 %xor55.i284, %141
  %arrayidx59.i287 = getelementptr %struct.cast6_ctx, ptr %ctx, i32 0, i32 1, i32 9, i32 3
  %142 = ptrtoint ptr %arrayidx59.i287 to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %arrayidx59.i287, align 1
  %conv60.i288 = zext i8 %143 to i32
  %or.i111.i289 = tail call i32 @llvm.fshl.i32(i32 %add58.i286, i32 %add58.i286, i32 %conv60.i288) #7
  %shr62.i290 = lshr i32 %or.i111.i289, 24
  %arrayidx63.i291 = getelementptr [256 x i32], ptr @cast_s1, i32 0, i32 %shr62.i290
  %144 = ptrtoint ptr %arrayidx63.i291 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %arrayidx63.i291, align 4
  %shr64.i292 = lshr i32 %or.i111.i289, 16
  %and65.i293 = and i32 %shr64.i292, 255
  %arrayidx66.i294 = getelementptr [256 x i32], ptr @cast_s2, i32 0, i32 %and65.i293
  %146 = ptrtoint ptr %arrayidx66.i294 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %arrayidx66.i294, align 4
  %xor67.i295 = xor i32 %147, %145
  %shr68.i296 = lshr i32 %or.i111.i289, 8
  %and69.i297 = and i32 %shr68.i296, 255
  %arrayidx70.i298 = getelementptr [256 x i32], ptr @cast_s3, i32 0, i32 %and69.i297
  %148 = ptrtoint ptr %arrayidx70.i298 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %arrayidx70.i298, align 4
  %sub71.i299 = sub i32 %xor67.i295, %149
  %and72.i300 = and i32 %or.i111.i289, 255
  %arrayidx73.i301 = getelementptr [256 x i32], ptr @cast_s4, i32 0, i32 %and72.i300
  %150 = ptrtoint ptr %arrayidx73.i301 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %arrayidx73.i301, align 4
  %add74.i302 = add i32 %sub71.i299, %151
  %xor76.i303 = xor i32 %add74.i302, %xor76.i226
  %arrayidx30 = getelementptr [12 x [4 x i32]], ptr %ctx, i32 0, i32 8
  %arrayidx33 = getelementptr %struct.cast6_ctx, ptr %ctx, i32 0, i32 1, i32 8
  %152 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %arrayidx30, align 4
  %add.i305 = add i32 %xor76.i303, %153
  %154 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %arrayidx33, align 1
  %conv.i306 = zext i8 %155 to i32
  %or.i.i307 = tail call i32 @llvm.fshl.i32(i32 %add.i305, i32 %add.i305, i32 %conv.i306) #7
  %shr.i308 = lshr i32 %or.i.i307, 24
  %arrayidx3.i309 = getelementptr [256 x i32], ptr @cast_s1, i32 0, i32 %shr.i308
  %156 = ptrtoint ptr %arrayidx3.i309 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %arrayidx3.i309, align 4
  %shr4.i310 = lshr i32 %or.i.i307, 16
  %and.i311 = and i32 %shr4.i310, 255
  %arrayidx5.i312 = getelementptr [256 x i32], ptr @cast_s2, i32 0, i32 %and.i311
  %158 = ptrtoint ptr %arrayidx5.i312 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %arrayidx5.i312, align 4
  %xor.i313 = xor i32 %159, %157
  %shr6.i314 = lshr i32 %or.i.i307, 8
  %and7.i315 = and i32 %shr6.i314, 255
  %arrayidx8.i316 = getelementptr [256 x i32], ptr @cast_s3, i32 0, i32 %and7.i315
  %160 = ptrtoint ptr %arrayidx8.i316 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %arrayidx8.i316, align 4
  %sub.i317 = sub i32 %xor.i313, %161
  %and9.i318 = and i32 %or.i.i307, 255
  %arrayidx10.i319 = getelementptr [256 x i32], ptr @cast_s4, i32 0, i32 %and9.i318
  %162 = ptrtoint ptr %arrayidx10.i319 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %arrayidx10.i319, align 4
  %add11.i320 = add i32 %sub.i317, %163
  %xor13.i322 = xor i32 %add11.i320, %xor13.i245
  %arrayidx14.i323 = getelementptr [12 x [4 x i32]], ptr %ctx, i32 0, i32 8, i32 1
  %164 = ptrtoint ptr %arrayidx14.i323 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %arrayidx14.i323, align 4
  %xor16.i324 = xor i32 %xor13.i322, %165
  %arrayidx17.i325 = getelementptr %struct.cast6_ctx, ptr %ctx, i32 0, i32 1, i32 8, i32 1
  %166 = ptrtoint ptr %arrayidx17.i325 to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %arrayidx17.i325, align 1
  %conv18.i326 = zext i8 %167 to i32
  %or.i109.i327 = tail call i32 @llvm.fshl.i32(i32 %xor16.i324, i32 %xor16.i324, i32 %conv18.i326) #7
  %shr20.i328 = lshr i32 %or.i109.i327, 24
  %arrayidx21.i329 = getelementptr [256 x i32], ptr @cast_s1, i32 0, i32 %shr20.i328
  %168 = ptrtoint ptr %arrayidx21.i329 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %arrayidx21.i329, align 4
  %shr22.i330 = lshr i32 %or.i109.i327, 16
  %and23.i331 = and i32 %shr22.i330, 255
  %arrayidx24.i332 = getelementptr [256 x i32], ptr @cast_s2, i32 0, i32 %and23.i331
  %170 = ptrtoint ptr %arrayidx24.i332 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %arrayidx24.i332, align 4
  %sub25.i333 = sub i32 %169, %171
  %shr26.i334 = lshr i32 %or.i109.i327, 8
  %and27.i335 = and i32 %shr26.i334, 255
  %arrayidx28.i336 = getelementptr [256 x i32], ptr @cast_s3, i32 0, i32 %and27.i335
  %172 = ptrtoint ptr %arrayidx28.i336 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %arrayidx28.i336, align 4
  %add29.i337 = add i32 %sub25.i333, %173
  %and30.i338 = and i32 %or.i109.i327, 255
  %arrayidx31.i339 = getelementptr [256 x i32], ptr @cast_s4, i32 0, i32 %and30.i338
  %174 = ptrtoint ptr %arrayidx31.i339 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %arrayidx31.i339, align 4
  %xor32.i340 = xor i32 %175, %xor34.i265
  %xor34.i342 = xor i32 %xor32.i340, %add29.i337
  %arrayidx35.i343 = getelementptr [12 x [4 x i32]], ptr %ctx, i32 0, i32 8, i32 2
  %176 = ptrtoint ptr %arrayidx35.i343 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %arrayidx35.i343, align 4
  %sub37.i344 = sub i32 %177, %xor34.i342
  %arrayidx38.i345 = getelementptr %struct.cast6_ctx, ptr %ctx, i32 0, i32 1, i32 8, i32 2
  %178 = ptrtoint ptr %arrayidx38.i345 to i32
  call void @__asan_load1_noabort(i32 %178)
  %179 = load i8, ptr %arrayidx38.i345, align 1
  %conv39.i346 = zext i8 %179 to i32
  %or.i110.i347 = tail call i32 @llvm.fshl.i32(i32 %sub37.i344, i32 %sub37.i344, i32 %conv39.i346) #7
  %shr41.i348 = lshr i32 %or.i110.i347, 24
  %arrayidx42.i349 = getelementptr [256 x i32], ptr @cast_s1, i32 0, i32 %shr41.i348
  %180 = ptrtoint ptr %arrayidx42.i349 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %arrayidx42.i349, align 4
  %shr43.i350 = lshr i32 %or.i110.i347, 16
  %and44.i351 = and i32 %shr43.i350, 255
  %arrayidx45.i352 = getelementptr [256 x i32], ptr @cast_s2, i32 0, i32 %and44.i351
  %182 = ptrtoint ptr %arrayidx45.i352 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %arrayidx45.i352, align 4
  %add46.i353 = add i32 %183, %181
  %shr47.i354 = lshr i32 %or.i110.i347, 8
  %and48.i355 = and i32 %shr47.i354, 255
  %arrayidx49.i356 = getelementptr [256 x i32], ptr @cast_s3, i32 0, i32 %and48.i355
  %184 = ptrtoint ptr %arrayidx49.i356 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %arrayidx49.i356, align 4
  %xor50.i357 = xor i32 %add46.i353, %185
  %and51.i358 = and i32 %or.i110.i347, 255
  %arrayidx52.i359 = getelementptr [256 x i32], ptr @cast_s4, i32 0, i32 %and51.i358
  %186 = ptrtoint ptr %arrayidx52.i359 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %arrayidx52.i359, align 4
  %sub53.i360 = sub i32 %xor50.i357, %187
  %xor55.i361 = xor i32 %sub53.i360, %xor55.i284
  %arrayidx56.i362 = getelementptr [12 x [4 x i32]], ptr %ctx, i32 0, i32 8, i32 3
  %188 = ptrtoint ptr %arrayidx56.i362 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %arrayidx56.i362, align 4
  %add58.i363 = add i32 %xor55.i361, %189
  %arrayidx59.i364 = getelementptr %struct.cast6_ctx, ptr %ctx, i32 0, i32 1, i32 8, i32 3
  %190 = ptrtoint ptr %arrayidx59.i364 to i32
  call void @__asan_load1_noabort(i32 %190)
  %191 = load i8, ptr %arrayidx59.i364, align 1
  %conv60.i365 = zext i8 %191 to i32
  %or.i111.i366 = tail call i32 @llvm.fshl.i32(i32 %add58.i363, i32 %add58.i363, i32 %conv60.i365) #7
  %shr62.i367 = lshr i32 %or.i111.i366, 24
  %arrayidx63.i368 = getelementptr [256 x i32], ptr @cast_s1, i32 0, i32 %shr62.i367
  %192 = ptrtoint ptr %arrayidx63.i368 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %arrayidx63.i368, align 4
  %shr64.i369 = lshr i32 %or.i111.i366, 16
  %and65.i370 = and i32 %shr64.i369, 255
  %arrayidx66.i371 = getelementptr [256 x i32], ptr @cast_s2, i32 0, i32 %and65.i370
  %194 = ptrtoint ptr %arrayidx66.i371 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %arrayidx66.i371, align 4
  %xor67.i372 = xor i32 %195, %193
  %shr68.i373 = lshr i32 %or.i111.i366, 8
  %and69.i374 = and i32 %shr68.i373, 255
  %arrayidx70.i375 = getelementptr [256 x i32], ptr @cast_s3, i32 0, i32 %and69.i374
  %196 = ptrtoint ptr %arrayidx70.i375 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %arrayidx70.i375, align 4
  %sub71.i376 = sub i32 %xor67.i372, %197
  %and72.i377 = and i32 %or.i111.i366, 255
  %arrayidx73.i378 = getelementptr [256 x i32], ptr @cast_s4, i32 0, i32 %and72.i377
  %198 = ptrtoint ptr %arrayidx73.i378 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %arrayidx73.i378, align 4
  %add74.i379 = add i32 %sub71.i376, %199
  %xor76.i380 = xor i32 %add74.i379, %xor76.i303
  %arrayidx37 = getelementptr [12 x [4 x i32]], ptr %ctx, i32 0, i32 7
  %arrayidx40 = getelementptr %struct.cast6_ctx, ptr %ctx, i32 0, i32 1, i32 7
  %200 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %arrayidx37, align 4
  %add.i382 = add i32 %xor76.i380, %201
  %202 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load1_noabort(i32 %202)
  %203 = load i8, ptr %arrayidx40, align 1
  %conv.i383 = zext i8 %203 to i32
  %or.i.i384 = tail call i32 @llvm.fshl.i32(i32 %add.i382, i32 %add.i382, i32 %conv.i383) #7
  %shr.i385 = lshr i32 %or.i.i384, 24
  %arrayidx3.i386 = getelementptr [256 x i32], ptr @cast_s1, i32 0, i32 %shr.i385
  %204 = ptrtoint ptr %arrayidx3.i386 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %arrayidx3.i386, align 4
  %shr4.i387 = lshr i32 %or.i.i384, 16
  %and.i388 = and i32 %shr4.i387, 255
  %arrayidx5.i389 = getelementptr [256 x i32], ptr @cast_s2, i32 0, i32 %and.i388
  %206 = ptrtoint ptr %arrayidx5.i389 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %arrayidx5.i389, align 4
  %xor.i390 = xor i32 %207, %205
  %shr6.i391 = lshr i32 %or.i.i384, 8
  %and7.i392 = and i32 %shr6.i391, 255
  %arrayidx8.i393 = getelementptr [256 x i32], ptr @cast_s3, i32 0, i32 %and7.i392
  %208 = ptrtoint ptr %arrayidx8.i393 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %arrayidx8.i393, align 4
  %sub.i394 = sub i32 %xor.i390, %209
  %and9.i395 = and i32 %or.i.i384, 255
  %arrayidx10.i396 = getelementptr [256 x i32], ptr @cast_s4, i32 0, i32 %and9.i395
  %210 = ptrtoint ptr %arrayidx10.i396 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %arrayidx10.i396, align 4
  %add11.i397 = add i32 %sub.i394, %211
  %xor13.i399 = xor i32 %add11.i397, %xor13.i322
  %arrayidx14.i400 = getelementptr [12 x [4 x i32]], ptr %ctx, i32 0, i32 7, i32 1
  %212 = ptrtoint ptr %arrayidx14.i400 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %arrayidx14.i400, align 4
  %xor16.i401 = xor i32 %xor13.i399, %213
  %arrayidx17.i402 = getelementptr %struct.cast6_ctx, ptr %ctx, i32 0, i32 1, i32 7, i32 1
  %214 = ptrtoint ptr %arrayidx17.i402 to i32
  call void @__asan_load1_noabort(i32 %214)
  %215 = load i8, ptr %arrayidx17.i402, align 1
  %conv18.i403 = zext i8 %215 to i32
  %or.i109.i404 = tail call i32 @llvm.fshl.i32(i32 %xor16.i401, i32 %xor16.i401, i32 %conv18.i403) #7
  %shr20.i405 = lshr i32 %or.i109.i404, 24
  %arrayidx21.i406 = getelementptr [256 x i32], ptr @cast_s1, i32 0, i32 %shr20.i405
  %216 = ptrtoint ptr %arrayidx21.i406 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %arrayidx21.i406, align 4
  %shr22.i407 = lshr i32 %or.i109.i404, 16
  %and23.i408 = and i32 %shr22.i407, 255
  %arrayidx24.i409 = getelementptr [256 x i32], ptr @cast_s2, i32 0, i32 %and23.i408
  %218 = ptrtoint ptr %arrayidx24.i409 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %arrayidx24.i409, align 4
  %sub25.i410 = sub i32 %217, %219
  %shr26.i411 = lshr i32 %or.i109.i404, 8
  %and27.i412 = and i32 %shr26.i411, 255
  %arrayidx28.i413 = getelementptr [256 x i32], ptr @cast_s3, i32 0, i32 %and27.i412
  %220 = ptrtoint ptr %arrayidx28.i413 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %arrayidx28.i413, align 4
  %add29.i414 = add i32 %sub25.i410, %221
  %and30.i415 = and i32 %or.i109.i404, 255
  %arrayidx31.i416 = getelementptr [256 x i32], ptr @cast_s4, i32 0, i32 %and30.i415
  %222 = ptrtoint ptr %arrayidx31.i416 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %arrayidx31.i416, align 4
  %xor32.i417 = xor i32 %223, %xor34.i342
  %xor34.i419 = xor i32 %xor32.i417, %add29.i414
  %arrayidx35.i420 = getelementptr [12 x [4 x i32]], ptr %ctx, i32 0, i32 7, i32 2
  %224 = ptrtoint ptr %arrayidx35.i420 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %arrayidx35.i420, align 4
  %sub37.i421 = sub i32 %225, %xor34.i419
  %arrayidx38.i422 = getelementptr %struct.cast6_ctx, ptr %ctx, i32 0, i32 1, i32 7, i32 2
  %226 = ptrtoint ptr %arrayidx38.i422 to i32
  call void @__asan_load1_noabort(i32 %226)
  %227 = load i8, ptr %arrayidx38.i422, align 1
  %conv39.i423 = zext i8 %227 to i32
  %or.i110.i424 = tail call i32 @llvm.fshl.i32(i32 %sub37.i421, i32 %sub37.i421, i32 %conv39.i423) #7
  %shr41.i425 = lshr i32 %or.i110.i424, 24
  %arrayidx42.i426 = getelementptr [256 x i32], ptr @cast_s1, i32 0, i32 %shr41.i425
  %228 = ptrtoint ptr %arrayidx42.i426 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %arrayidx42.i426, align 4
  %shr43.i427 = lshr i32 %or.i110.i424, 16
  %and44.i428 = and i32 %shr43.i427, 255
  %arrayidx45.i429 = getelementptr [256 x i32], ptr @cast_s2, i32 0, i32 %and44.i428
  %230 = ptrtoint ptr %arrayidx45.i429 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %arrayidx45.i429, align 4
  %add46.i430 = add i32 %231, %229
  %shr47.i431 = lshr i32 %or.i110.i424, 8
  %and48.i432 = and i32 %shr47.i431, 255
  %arrayidx49.i433 = getelementptr [256 x i32], ptr @cast_s3, i32 0, i32 %and48.i432
  %232 = ptrtoint ptr %arrayidx49.i433 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %arrayidx49.i433, align 4
  %xor50.i434 = xor i32 %add46.i430, %233
  %and51.i435 = and i32 %or.i110.i424, 255
  %arrayidx52.i436 = getelementptr [256 x i32], ptr @cast_s4, i32 0, i32 %and51.i435
  %234 = ptrtoint ptr %arrayidx52.i436 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %arrayidx52.i436, align 4
  %sub53.i437 = sub i32 %xor50.i434, %235
  %xor55.i438 = xor i32 %sub53.i437, %xor55.i361
  %arrayidx56.i439 = getelementptr [12 x [4 x i32]], ptr %ctx, i32 0, i32 7, i32 3
  %236 = ptrtoint ptr %arrayidx56.i439 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %arrayidx56.i439, align 4
  %add58.i440 = add i32 %xor55.i438, %237
  %arrayidx59.i441 = getelementptr %struct.cast6_ctx, ptr %ctx, i32 0, i32 1, i32 7, i32 3
  %238 = ptrtoint ptr %arrayidx59.i441 to i32
  call void @__asan_load1_noabort(i32 %238)
  %239 = load i8, ptr %arrayidx59.i441, align 1
  %conv60.i442 = zext i8 %239 to i32
  %or.i111.i443 = tail call i32 @llvm.fshl.i32(i32 %add58.i440, i32 %add58.i440, i32 %conv60.i442) #7
  %shr62.i444 = lshr i32 %or.i111.i443, 24
  %arrayidx63.i445 = getelementptr [256 x i32], ptr @cast_s1, i32 0, i32 %shr62.i444
  %240 = ptrtoint ptr %arrayidx63.i445 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %arrayidx63.i445, align 4
  %shr64.i446 = lshr i32 %or.i111.i443, 16
  %and65.i447 = and i32 %shr64.i446, 255
  %arrayidx66.i448 = getelementptr [256 x i32], ptr @cast_s2, i32 0, i32 %and65.i447
  %242 = ptrtoint ptr %arrayidx66.i448 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %arrayidx66.i448, align 4
  %xor67.i449 = xor i32 %243, %241
  %shr68.i450 = lshr i32 %or.i111.i443, 8
  %and69.i451 = and i32 %shr68.i450, 255
  %arrayidx70.i452 = getelementptr [256 x i32], ptr @cast_s3, i32 0, i32 %and69.i451
  %244 = ptrtoint ptr %arrayidx70.i452 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %arrayidx70.i452, align 4
  %sub71.i453 = sub i32 %xor67.i449, %245
  %and72.i454 = and i32 %or.i111.i443, 255
  %arrayidx73.i455 = getelementptr [256 x i32], ptr @cast_s4, i32 0, i32 %and72.i454
  %246 = ptrtoint ptr %arrayidx73.i455 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %arrayidx73.i455, align 4
  %add74.i456 = add i32 %sub71.i453, %247
  %xor76.i457 = xor i32 %add74.i456, %xor76.i380
  %arrayidx44 = getelementptr [12 x [4 x i32]], ptr %ctx, i32 0, i32 6
  %arrayidx47 = getelementptr %struct.cast6_ctx, ptr %ctx, i32 0, i32 1, i32 6
  %248 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %arrayidx44, align 4
  %add.i459 = add i32 %xor76.i457, %249
  %250 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load1_noabort(i32 %250)
  %251 = load i8, ptr %arrayidx47, align 1
  %conv.i460 = zext i8 %251 to i32
  %or.i.i461 = tail call i32 @llvm.fshl.i32(i32 %add.i459, i32 %add.i459, i32 %conv.i460) #7
  %shr.i462 = lshr i32 %or.i.i461, 24
  %arrayidx3.i463 = getelementptr [256 x i32], ptr @cast_s1, i32 0, i32 %shr.i462
  %252 = ptrtoint ptr %arrayidx3.i463 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %arrayidx3.i463, align 4
  %shr4.i464 = lshr i32 %or.i.i461, 16
  %and.i465 = and i32 %shr4.i464, 255
  %arrayidx5.i466 = getelementptr [256 x i32], ptr @cast_s2, i32 0, i32 %and.i465
  %254 = ptrtoint ptr %arrayidx5.i466 to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %arrayidx5.i466, align 4
  %xor.i467 = xor i32 %255, %253
  %shr6.i468 = lshr i32 %or.i.i461, 8
  %and7.i469 = and i32 %shr6.i468, 255
  %arrayidx8.i470 = getelementptr [256 x i32], ptr @cast_s3, i32 0, i32 %and7.i469
  %256 = ptrtoint ptr %arrayidx8.i470 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %arrayidx8.i470, align 4
  %sub.i471 = sub i32 %xor.i467, %257
  %and9.i472 = and i32 %or.i.i461, 255
  %arrayidx10.i473 = getelementptr [256 x i32], ptr @cast_s4, i32 0, i32 %and9.i472
  %258 = ptrtoint ptr %arrayidx10.i473 to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %arrayidx10.i473, align 4
  %add11.i474 = add i32 %sub.i471, %259
  %xor13.i476 = xor i32 %add11.i474, %xor13.i399
  %arrayidx14.i477 = getelementptr [12 x [4 x i32]], ptr %ctx, i32 0, i32 6, i32 1
  %260 = ptrtoint ptr %arrayidx14.i477 to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %arrayidx14.i477, align 4
  %xor16.i478 = xor i32 %xor13.i476, %261
  %arrayidx17.i479 = getelementptr %struct.cast6_ctx, ptr %ctx, i32 0, i32 1, i32 6, i32 1
  %262 = ptrtoint ptr %arrayidx17.i479 to i32
  call void @__asan_load1_noabort(i32 %262)
  %263 = load i8, ptr %arrayidx17.i479, align 1
  %conv18.i480 = zext i8 %263 to i32
  %or.i109.i481 = tail call i32 @llvm.fshl.i32(i32 %xor16.i478, i32 %xor16.i478, i32 %conv18.i480) #7
  %shr20.i482 = lshr i32 %or.i109.i481, 24
  %arrayidx21.i483 = getelementptr [256 x i32], ptr @cast_s1, i32 0, i32 %shr20.i482
  %264 = ptrtoint ptr %arrayidx21.i483 to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %arrayidx21.i483, align 4
  %shr22.i484 = lshr i32 %or.i109.i481, 16
  %and23.i485 = and i32 %shr22.i484, 255
  %arrayidx24.i486 = getelementptr [256 x i32], ptr @cast_s2, i32 0, i32 %and23.i485
  %266 = ptrtoint ptr %arrayidx24.i486 to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %arrayidx24.i486, align 4
  %sub25.i487 = sub i32 %265, %267
  %shr26.i488 = lshr i32 %or.i109.i481, 8
  %and27.i489 = and i32 %shr26.i488, 255
  %arrayidx28.i490 = getelementptr [256 x i32], ptr @cast_s3, i32 0, i32 %and27.i489
  %268 = ptrtoint ptr %arrayidx28.i490 to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load i32, ptr %arrayidx28.i490, align 4
  %add29.i491 = add i32 %sub25.i487, %269
  %and30.i492 = and i32 %or.i109.i481, 255
  %arrayidx31.i493 = getelementptr [256 x i32], ptr @cast_s4, i32 0, i32 %and30.i492
  %270 = ptrtoint ptr %arrayidx31.i493 to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load i32, ptr %arrayidx31.i493, align 4
  %xor32.i494 = xor i32 %271, %xor34.i419
  %xor34.i496 = xor i32 %xor32.i494, %add29.i491
  %arrayidx35.i497 = getelementptr [12 x [4 x i32]], ptr %ctx, i32 0, i32 6, i32 2
  %272 = ptrtoint ptr %arrayidx35.i497 to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load i32, ptr %arrayidx35.i497, align 4
  %sub37.i498 = sub i32 %273, %xor34.i496
  %arrayidx38.i499 = getelementptr %struct.cast6_ctx, ptr %ctx, i32 0, i32 1, i32 6, i32 2
  %274 = ptrtoint ptr %arrayidx38.i499 to i32
  call void @__asan_load1_noabort(i32 %274)
  %275 = load i8, ptr %arrayidx38.i499, align 1
  %conv39.i500 = zext i8 %275 to i32
  %or.i110.i501 = tail call i32 @llvm.fshl.i32(i32 %sub37.i498, i32 %sub37.i498, i32 %conv39.i500) #7
  %shr41.i502 = lshr i32 %or.i110.i501, 24
  %arrayidx42.i503 = getelementptr [256 x i32], ptr @cast_s1, i32 0, i32 %shr41.i502
  %276 = ptrtoint ptr %arrayidx42.i503 to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load i32, ptr %arrayidx42.i503, align 4
  %shr43.i504 = lshr i32 %or.i110.i501, 16
  %and44.i505 = and i32 %shr43.i504, 255
  %arrayidx45.i506 = getelementptr [256 x i32], ptr @cast_s2, i32 0, i32 %and44.i505
  %278 = ptrtoint ptr %arrayidx45.i506 to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load i32, ptr %arrayidx45.i506, align 4
  %add46.i507 = add i32 %279, %277
  %shr47.i508 = lshr i32 %or.i110.i501, 8
  %and48.i509 = and i32 %shr47.i508, 255
  %arrayidx49.i510 = getelementptr [256 x i32], ptr @cast_s3, i32 0, i32 %and48.i509
  %280 = ptrtoint ptr %arrayidx49.i510 to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load i32, ptr %arrayidx49.i510, align 4
  %xor50.i511 = xor i32 %add46.i507, %281
  %and51.i512 = and i32 %or.i110.i501, 255
  %arrayidx52.i513 = getelementptr [256 x i32], ptr @cast_s4, i32 0, i32 %and51.i512
  %282 = ptrtoint ptr %arrayidx52.i513 to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load i32, ptr %arrayidx52.i513, align 4
  %sub53.i514 = sub i32 %xor50.i511, %283
  %xor55.i515 = xor i32 %sub53.i514, %xor55.i438
  %arrayidx56.i516 = getelementptr [12 x [4 x i32]], ptr %ctx, i32 0, i32 6, i32 3
  %284 = ptrtoint ptr %arrayidx56.i516 to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load i32, ptr %arrayidx56.i516, align 4
  %add58.i517 = add i32 %xor55.i515, %285
  %arrayidx59.i518 = getelementptr %struct.cast6_ctx, ptr %ctx, i32 0, i32 1, i32 6, i32 3
  %286 = ptrtoint ptr %arrayidx59.i518 to i32
  call void @__asan_load1_noabort(i32 %286)
  %287 = load i8, ptr %arrayidx59.i518, align 1
  %conv60.i519 = zext i8 %287 to i32
  %or.i111.i520 = tail call i32 @llvm.fshl.i32(i32 %add58.i517, i32 %add58.i517, i32 %conv60.i519) #7
  %shr62.i521 = lshr i32 %or.i111.i520, 24
  %arrayidx63.i522 = getelementptr [256 x i32], ptr @cast_s1, i32 0, i32 %shr62.i521
  %288 = ptrtoint ptr %arrayidx63.i522 to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load i32, ptr %arrayidx63.i522, align 4
  %shr64.i523 = lshr i32 %or.i111.i520, 16
  %and65.i524 = and i32 %shr64.i523, 255
  %arrayidx66.i525 = getelementptr [256 x i32], ptr @cast_s2, i32 0, i32 %and65.i524
  %290 = ptrtoint ptr %arrayidx66.i525 to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load i32, ptr %arrayidx66.i525, align 4
  %xor67.i526 = xor i32 %291, %289
  %shr68.i527 = lshr i32 %or.i111.i520, 8
  %and69.i528 = and i32 %shr68.i527, 255
  %arrayidx70.i529 = getelementptr [256 x i32], ptr @cast_s3, i32 0, i32 %and69.i528
  %292 = ptrtoint ptr %arrayidx70.i529 to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load i32, ptr %arrayidx70.i529, align 4
  %sub71.i530 = sub i32 %xor67.i526, %293
  %and72.i531 = and i32 %or.i111.i520, 255
  %arrayidx73.i532 = getelementptr [256 x i32], ptr @cast_s4, i32 0, i32 %and72.i531
  %294 = ptrtoint ptr %arrayidx73.i532 to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load i32, ptr %arrayidx73.i532, align 4
  %add74.i533 = add i32 %sub71.i530, %295
  %xor76.i534 = xor i32 %add74.i533, %xor76.i457
  %arrayidx51 = getelementptr [12 x [4 x i32]], ptr %ctx, i32 0, i32 5
  %arrayidx54 = getelementptr %struct.cast6_ctx, ptr %ctx, i32 0, i32 1, i32 5
  %arrayidx.i = getelementptr [12 x [4 x i32]], ptr %ctx, i32 0, i32 5, i32 3
  %296 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load i32, ptr %arrayidx.i, align 4
  %add.i535 = add i32 %297, %xor55.i515
  %arrayidx2.i = getelementptr %struct.cast6_ctx, ptr %ctx, i32 0, i32 1, i32 5, i32 3
  %298 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %298)
  %299 = load i8, ptr %arrayidx2.i, align 1
  %conv.i536 = zext i8 %299 to i32
  %or.i.i537 = tail call i32 @llvm.fshl.i32(i32 %add.i535, i32 %add.i535, i32 %conv.i536) #7
  %shr.i538 = lshr i32 %or.i.i537, 24
  %arrayidx3.i539 = getelementptr [256 x i32], ptr @cast_s1, i32 0, i32 %shr.i538
  %300 = ptrtoint ptr %arrayidx3.i539 to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load i32, ptr %arrayidx3.i539, align 4
  %shr4.i540 = lshr i32 %or.i.i537, 16
  %and.i541 = and i32 %shr4.i540, 255
  %arrayidx5.i542 = getelementptr [256 x i32], ptr @cast_s2, i32 0, i32 %and.i541
  %302 = ptrtoint ptr %arrayidx5.i542 to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load i32, ptr %arrayidx5.i542, align 4
  %xor.i543 = xor i32 %303, %301
  %shr6.i544 = lshr i32 %or.i.i537, 8
  %and7.i545 = and i32 %shr6.i544, 255
  %arrayidx8.i546 = getelementptr [256 x i32], ptr @cast_s3, i32 0, i32 %and7.i545
  %304 = ptrtoint ptr %arrayidx8.i546 to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load i32, ptr %arrayidx8.i546, align 4
  %sub.i547 = sub i32 %xor.i543, %305
  %and9.i548 = and i32 %or.i.i537, 255
  %arrayidx10.i549 = getelementptr [256 x i32], ptr @cast_s4, i32 0, i32 %and9.i548
  %306 = ptrtoint ptr %arrayidx10.i549 to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load i32, ptr %arrayidx10.i549, align 4
  %add11.i550 = add i32 %sub.i547, %307
  %xor13.i552 = xor i32 %xor76.i534, %add11.i550
  %arrayidx14.i553 = getelementptr [12 x [4 x i32]], ptr %ctx, i32 0, i32 5, i32 2
  %308 = ptrtoint ptr %arrayidx14.i553 to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load i32, ptr %arrayidx14.i553, align 4
  %sub16.i = sub i32 %309, %xor34.i496
  %arrayidx17.i554 = getelementptr %struct.cast6_ctx, ptr %ctx, i32 0, i32 1, i32 5, i32 2
  %310 = ptrtoint ptr %arrayidx17.i554 to i32
  call void @__asan_load1_noabort(i32 %310)
  %311 = load i8, ptr %arrayidx17.i554, align 1
  %conv18.i555 = zext i8 %311 to i32
  %or.i109.i556 = tail call i32 @llvm.fshl.i32(i32 %sub16.i, i32 %sub16.i, i32 %conv18.i555) #7
  %shr20.i557 = lshr i32 %or.i109.i556, 24
  %arrayidx21.i558 = getelementptr [256 x i32], ptr @cast_s1, i32 0, i32 %shr20.i557
  %312 = ptrtoint ptr %arrayidx21.i558 to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load i32, ptr %arrayidx21.i558, align 4
  %shr22.i559 = lshr i32 %or.i109.i556, 16
  %and23.i560 = and i32 %shr22.i559, 255
  %arrayidx24.i561 = getelementptr [256 x i32], ptr @cast_s2, i32 0, i32 %and23.i560
  %314 = ptrtoint ptr %arrayidx24.i561 to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load i32, ptr %arrayidx24.i561, align 4
  %add25.i = add i32 %315, %313
  %shr26.i562 = lshr i32 %or.i109.i556, 8
  %and27.i563 = and i32 %shr26.i562, 255
  %arrayidx28.i564 = getelementptr [256 x i32], ptr @cast_s3, i32 0, i32 %and27.i563
  %316 = ptrtoint ptr %arrayidx28.i564 to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load i32, ptr %arrayidx28.i564, align 4
  %xor29.i = xor i32 %add25.i, %317
  %and30.i565 = and i32 %or.i109.i556, 255
  %arrayidx31.i566 = getelementptr [256 x i32], ptr @cast_s4, i32 0, i32 %and30.i565
  %318 = ptrtoint ptr %arrayidx31.i566 to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load i32, ptr %arrayidx31.i566, align 4
  %sub32.i = sub i32 %xor29.i, %319
  %xor34.i567 = xor i32 %sub32.i, %xor55.i515
  %arrayidx35.i568 = getelementptr [12 x [4 x i32]], ptr %ctx, i32 0, i32 5, i32 1
  %320 = ptrtoint ptr %arrayidx35.i568 to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load i32, ptr %arrayidx35.i568, align 4
  %xor37.i = xor i32 %321, %xor13.i476
  %arrayidx38.i569 = getelementptr %struct.cast6_ctx, ptr %ctx, i32 0, i32 1, i32 5, i32 1
  %322 = ptrtoint ptr %arrayidx38.i569 to i32
  call void @__asan_load1_noabort(i32 %322)
  %323 = load i8, ptr %arrayidx38.i569, align 1
  %conv39.i570 = zext i8 %323 to i32
  %or.i110.i571 = tail call i32 @llvm.fshl.i32(i32 %xor37.i, i32 %xor37.i, i32 %conv39.i570) #7
  %shr41.i572 = lshr i32 %or.i110.i571, 24
  %arrayidx42.i573 = getelementptr [256 x i32], ptr @cast_s1, i32 0, i32 %shr41.i572
  %324 = ptrtoint ptr %arrayidx42.i573 to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load i32, ptr %arrayidx42.i573, align 4
  %shr43.i574 = lshr i32 %or.i110.i571, 16
  %and44.i575 = and i32 %shr43.i574, 255
  %arrayidx45.i576 = getelementptr [256 x i32], ptr @cast_s2, i32 0, i32 %and44.i575
  %326 = ptrtoint ptr %arrayidx45.i576 to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load i32, ptr %arrayidx45.i576, align 4
  %sub46.i = sub i32 %325, %327
  %shr47.i577 = lshr i32 %or.i110.i571, 8
  %and48.i578 = and i32 %shr47.i577, 255
  %arrayidx49.i579 = getelementptr [256 x i32], ptr @cast_s3, i32 0, i32 %and48.i578
  %328 = ptrtoint ptr %arrayidx49.i579 to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load i32, ptr %arrayidx49.i579, align 4
  %add50.i = add i32 %sub46.i, %329
  %and51.i580 = and i32 %or.i110.i571, 255
  %arrayidx52.i581 = getelementptr [256 x i32], ptr @cast_s4, i32 0, i32 %and51.i580
  %330 = ptrtoint ptr %arrayidx52.i581 to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load i32, ptr %arrayidx52.i581, align 4
  %xor53.i = xor i32 %331, %xor34.i496
  %xor55.i582 = xor i32 %xor53.i, %add50.i
  %332 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load i32, ptr %arrayidx51, align 4
  %add58.i583 = add i32 %333, %xor13.i552
  %334 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load1_noabort(i32 %334)
  %335 = load i8, ptr %arrayidx54, align 1
  %conv60.i584 = zext i8 %335 to i32
  %or.i111.i585 = tail call i32 @llvm.fshl.i32(i32 %add58.i583, i32 %add58.i583, i32 %conv60.i584) #7
  %shr62.i586 = lshr i32 %or.i111.i585, 24
  %arrayidx63.i587 = getelementptr [256 x i32], ptr @cast_s1, i32 0, i32 %shr62.i586
  %336 = ptrtoint ptr %arrayidx63.i587 to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load i32, ptr %arrayidx63.i587, align 4
  %shr64.i588 = lshr i32 %or.i111.i585, 16
  %and65.i589 = and i32 %shr64.i588, 255
  %arrayidx66.i590 = getelementptr [256 x i32], ptr @cast_s2, i32 0, i32 %and65.i589
  %338 = ptrtoint ptr %arrayidx66.i590 to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load i32, ptr %arrayidx66.i590, align 4
  %xor67.i591 = xor i32 %339, %337
  %shr68.i592 = lshr i32 %or.i111.i585, 8
  %and69.i593 = and i32 %shr68.i592, 255
  %arrayidx70.i594 = getelementptr [256 x i32], ptr @cast_s3, i32 0, i32 %and69.i593
  %340 = ptrtoint ptr %arrayidx70.i594 to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load i32, ptr %arrayidx70.i594, align 4
  %sub71.i595 = sub i32 %xor67.i591, %341
  %and72.i596 = and i32 %or.i111.i585, 255
  %arrayidx73.i597 = getelementptr [256 x i32], ptr @cast_s4, i32 0, i32 %and72.i596
  %342 = ptrtoint ptr %arrayidx73.i597 to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load i32, ptr %arrayidx73.i597, align 4
  %add74.i598 = add i32 %sub71.i595, %343
  %xor76.i599 = xor i32 %add74.i598, %xor13.i476
  %arrayidx58 = getelementptr [12 x [4 x i32]], ptr %ctx, i32 0, i32 4
  %arrayidx61 = getelementptr %struct.cast6_ctx, ptr %ctx, i32 0, i32 1, i32 4
  %arrayidx.i600 = getelementptr [12 x [4 x i32]], ptr %ctx, i32 0, i32 4, i32 3
  %344 = ptrtoint ptr %arrayidx.i600 to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load i32, ptr %arrayidx.i600, align 4
  %add.i601 = add i32 %345, %xor34.i567
  %arrayidx2.i602 = getelementptr %struct.cast6_ctx, ptr %ctx, i32 0, i32 1, i32 4, i32 3
  %346 = ptrtoint ptr %arrayidx2.i602 to i32
  call void @__asan_load1_noabort(i32 %346)
  %347 = load i8, ptr %arrayidx2.i602, align 1
  %conv.i603 = zext i8 %347 to i32
  %or.i.i604 = tail call i32 @llvm.fshl.i32(i32 %add.i601, i32 %add.i601, i32 %conv.i603) #7
  %shr.i605 = lshr i32 %or.i.i604, 24
  %arrayidx3.i606 = getelementptr [256 x i32], ptr @cast_s1, i32 0, i32 %shr.i605
  %348 = ptrtoint ptr %arrayidx3.i606 to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load i32, ptr %arrayidx3.i606, align 4
  %shr4.i607 = lshr i32 %or.i.i604, 16
  %and.i608 = and i32 %shr4.i607, 255
  %arrayidx5.i609 = getelementptr [256 x i32], ptr @cast_s2, i32 0, i32 %and.i608
  %350 = ptrtoint ptr %arrayidx5.i609 to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load i32, ptr %arrayidx5.i609, align 4
  %xor.i610 = xor i32 %351, %349
  %shr6.i611 = lshr i32 %or.i.i604, 8
  %and7.i612 = and i32 %shr6.i611, 255
  %arrayidx8.i613 = getelementptr [256 x i32], ptr @cast_s3, i32 0, i32 %and7.i612
  %352 = ptrtoint ptr %arrayidx8.i613 to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load i32, ptr %arrayidx8.i613, align 4
  %sub.i614 = sub i32 %xor.i610, %353
  %and9.i615 = and i32 %or.i.i604, 255
  %arrayidx10.i616 = getelementptr [256 x i32], ptr @cast_s4, i32 0, i32 %and9.i615
  %354 = ptrtoint ptr %arrayidx10.i616 to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load i32, ptr %arrayidx10.i616, align 4
  %add11.i617 = add i32 %sub.i614, %355
  %xor13.i619 = xor i32 %add11.i617, %xor13.i552
  %arrayidx14.i620 = getelementptr [12 x [4 x i32]], ptr %ctx, i32 0, i32 4, i32 2
  %356 = ptrtoint ptr %arrayidx14.i620 to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load i32, ptr %arrayidx14.i620, align 4
  %sub16.i622 = sub i32 %357, %xor55.i582
  %arrayidx17.i623 = getelementptr %struct.cast6_ctx, ptr %ctx, i32 0, i32 1, i32 4, i32 2
  %358 = ptrtoint ptr %arrayidx17.i623 to i32
  call void @__asan_load1_noabort(i32 %358)
  %359 = load i8, ptr %arrayidx17.i623, align 1
  %conv18.i624 = zext i8 %359 to i32
  %or.i109.i625 = tail call i32 @llvm.fshl.i32(i32 %sub16.i622, i32 %sub16.i622, i32 %conv18.i624) #7
  %shr20.i626 = lshr i32 %or.i109.i625, 24
  %arrayidx21.i627 = getelementptr [256 x i32], ptr @cast_s1, i32 0, i32 %shr20.i626
  %360 = ptrtoint ptr %arrayidx21.i627 to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load i32, ptr %arrayidx21.i627, align 4
  %shr22.i628 = lshr i32 %or.i109.i625, 16
  %and23.i629 = and i32 %shr22.i628, 255
  %arrayidx24.i630 = getelementptr [256 x i32], ptr @cast_s2, i32 0, i32 %and23.i629
  %362 = ptrtoint ptr %arrayidx24.i630 to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load i32, ptr %arrayidx24.i630, align 4
  %add25.i631 = add i32 %363, %361
  %shr26.i632 = lshr i32 %or.i109.i625, 8
  %and27.i633 = and i32 %shr26.i632, 255
  %arrayidx28.i634 = getelementptr [256 x i32], ptr @cast_s3, i32 0, i32 %and27.i633
  %364 = ptrtoint ptr %arrayidx28.i634 to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load i32, ptr %arrayidx28.i634, align 4
  %xor29.i635 = xor i32 %add25.i631, %365
  %and30.i636 = and i32 %or.i109.i625, 255
  %arrayidx31.i637 = getelementptr [256 x i32], ptr @cast_s4, i32 0, i32 %and30.i636
  %366 = ptrtoint ptr %arrayidx31.i637 to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load i32, ptr %arrayidx31.i637, align 4
  %sub32.i638 = sub i32 %xor29.i635, %367
  %xor34.i639 = xor i32 %sub32.i638, %xor34.i567
  %arrayidx35.i640 = getelementptr [12 x [4 x i32]], ptr %ctx, i32 0, i32 4, i32 1
  %368 = ptrtoint ptr %arrayidx35.i640 to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load i32, ptr %arrayidx35.i640, align 4
  %xor37.i642 = xor i32 %369, %xor76.i599
  %arrayidx38.i643 = getelementptr %struct.cast6_ctx, ptr %ctx, i32 0, i32 1, i32 4, i32 1
  %370 = ptrtoint ptr %arrayidx38.i643 to i32
  call void @__asan_load1_noabort(i32 %370)
  %371 = load i8, ptr %arrayidx38.i643, align 1
  %conv39.i644 = zext i8 %371 to i32
  %or.i110.i645 = tail call i32 @llvm.fshl.i32(i32 %xor37.i642, i32 %xor37.i642, i32 %conv39.i644) #7
  %shr41.i646 = lshr i32 %or.i110.i645, 24
  %arrayidx42.i647 = getelementptr [256 x i32], ptr @cast_s1, i32 0, i32 %shr41.i646
  %372 = ptrtoint ptr %arrayidx42.i647 to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load i32, ptr %arrayidx42.i647, align 4
  %shr43.i648 = lshr i32 %or.i110.i645, 16
  %and44.i649 = and i32 %shr43.i648, 255
  %arrayidx45.i650 = getelementptr [256 x i32], ptr @cast_s2, i32 0, i32 %and44.i649
  %374 = ptrtoint ptr %arrayidx45.i650 to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load i32, ptr %arrayidx45.i650, align 4
  %sub46.i651 = sub i32 %373, %375
  %shr47.i652 = lshr i32 %or.i110.i645, 8
  %and48.i653 = and i32 %shr47.i652, 255
  %arrayidx49.i654 = getelementptr [256 x i32], ptr @cast_s3, i32 0, i32 %and48.i653
  %376 = ptrtoint ptr %arrayidx49.i654 to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load i32, ptr %arrayidx49.i654, align 4
  %add50.i655 = add i32 %sub46.i651, %377
  %and51.i656 = and i32 %or.i110.i645, 255
  %arrayidx52.i657 = getelementptr [256 x i32], ptr @cast_s4, i32 0, i32 %and51.i656
  %378 = ptrtoint ptr %arrayidx52.i657 to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load i32, ptr %arrayidx52.i657, align 4
  %xor53.i658 = xor i32 %379, %xor55.i582
  %xor55.i659 = xor i32 %xor53.i658, %add50.i655
  %380 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load i32, ptr %arrayidx58, align 4
  %add58.i660 = add i32 %381, %xor13.i619
  %382 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load1_noabort(i32 %382)
  %383 = load i8, ptr %arrayidx61, align 1
  %conv60.i661 = zext i8 %383 to i32
  %or.i111.i662 = tail call i32 @llvm.fshl.i32(i32 %add58.i660, i32 %add58.i660, i32 %conv60.i661) #7
  %shr62.i663 = lshr i32 %or.i111.i662, 24
  %arrayidx63.i664 = getelementptr [256 x i32], ptr @cast_s1, i32 0, i32 %shr62.i663
  %384 = ptrtoint ptr %arrayidx63.i664 to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load i32, ptr %arrayidx63.i664, align 4
  %shr64.i665 = lshr i32 %or.i111.i662, 16
  %and65.i666 = and i32 %shr64.i665, 255
  %arrayidx66.i667 = getelementptr [256 x i32], ptr @cast_s2, i32 0, i32 %and65.i666
  %386 = ptrtoint ptr %arrayidx66.i667 to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load i32, ptr %arrayidx66.i667, align 4
  %xor67.i668 = xor i32 %387, %385
  %shr68.i669 = lshr i32 %or.i111.i662, 8
  %and69.i670 = and i32 %shr68.i669, 255
  %arrayidx70.i671 = getelementptr [256 x i32], ptr @cast_s3, i32 0, i32 %and69.i670
  %388 = ptrtoint ptr %arrayidx70.i671 to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load i32, ptr %arrayidx70.i671, align 4
  %sub71.i672 = sub i32 %xor67.i668, %389
  %and72.i673 = and i32 %or.i111.i662, 255
  %arrayidx73.i674 = getelementptr [256 x i32], ptr @cast_s4, i32 0, i32 %and72.i673
  %390 = ptrtoint ptr %arrayidx73.i674 to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load i32, ptr %arrayidx73.i674, align 4
  %add74.i675 = add i32 %sub71.i672, %391
  %xor76.i676 = xor i32 %add74.i675, %xor76.i599
  %arrayidx65 = getelementptr [12 x [4 x i32]], ptr %ctx, i32 0, i32 3
  %arrayidx68 = getelementptr %struct.cast6_ctx, ptr %ctx, i32 0, i32 1, i32 3
  %arrayidx.i677 = getelementptr [12 x [4 x i32]], ptr %ctx, i32 0, i32 3, i32 3
  %392 = ptrtoint ptr %arrayidx.i677 to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load i32, ptr %arrayidx.i677, align 4
  %add.i678 = add i32 %393, %xor34.i639
  %arrayidx2.i679 = getelementptr %struct.cast6_ctx, ptr %ctx, i32 0, i32 1, i32 3, i32 3
  %394 = ptrtoint ptr %arrayidx2.i679 to i32
  call void @__asan_load1_noabort(i32 %394)
  %395 = load i8, ptr %arrayidx2.i679, align 1
  %conv.i680 = zext i8 %395 to i32
  %or.i.i681 = tail call i32 @llvm.fshl.i32(i32 %add.i678, i32 %add.i678, i32 %conv.i680) #7
  %shr.i682 = lshr i32 %or.i.i681, 24
  %arrayidx3.i683 = getelementptr [256 x i32], ptr @cast_s1, i32 0, i32 %shr.i682
  %396 = ptrtoint ptr %arrayidx3.i683 to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load i32, ptr %arrayidx3.i683, align 4
  %shr4.i684 = lshr i32 %or.i.i681, 16
  %and.i685 = and i32 %shr4.i684, 255
  %arrayidx5.i686 = getelementptr [256 x i32], ptr @cast_s2, i32 0, i32 %and.i685
  %398 = ptrtoint ptr %arrayidx5.i686 to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load i32, ptr %arrayidx5.i686, align 4
  %xor.i687 = xor i32 %399, %397
  %shr6.i688 = lshr i32 %or.i.i681, 8
  %and7.i689 = and i32 %shr6.i688, 255
  %arrayidx8.i690 = getelementptr [256 x i32], ptr @cast_s3, i32 0, i32 %and7.i689
  %400 = ptrtoint ptr %arrayidx8.i690 to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load i32, ptr %arrayidx8.i690, align 4
  %sub.i691 = sub i32 %xor.i687, %401
  %and9.i692 = and i32 %or.i.i681, 255
  %arrayidx10.i693 = getelementptr [256 x i32], ptr @cast_s4, i32 0, i32 %and9.i692
  %402 = ptrtoint ptr %arrayidx10.i693 to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load i32, ptr %arrayidx10.i693, align 4
  %add11.i694 = add i32 %sub.i691, %403
  %xor13.i696 = xor i32 %add11.i694, %xor13.i619
  %arrayidx14.i697 = getelementptr [12 x [4 x i32]], ptr %ctx, i32 0, i32 3, i32 2
  %404 = ptrtoint ptr %arrayidx14.i697 to i32
  call void @__asan_load4_noabort(i32 %404)
  %405 = load i32, ptr %arrayidx14.i697, align 4
  %sub16.i699 = sub i32 %405, %xor55.i659
  %arrayidx17.i700 = getelementptr %struct.cast6_ctx, ptr %ctx, i32 0, i32 1, i32 3, i32 2
  %406 = ptrtoint ptr %arrayidx17.i700 to i32
  call void @__asan_load1_noabort(i32 %406)
  %407 = load i8, ptr %arrayidx17.i700, align 1
  %conv18.i701 = zext i8 %407 to i32
  %or.i109.i702 = tail call i32 @llvm.fshl.i32(i32 %sub16.i699, i32 %sub16.i699, i32 %conv18.i701) #7
  %shr20.i703 = lshr i32 %or.i109.i702, 24
  %arrayidx21.i704 = getelementptr [256 x i32], ptr @cast_s1, i32 0, i32 %shr20.i703
  %408 = ptrtoint ptr %arrayidx21.i704 to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load i32, ptr %arrayidx21.i704, align 4
  %shr22.i705 = lshr i32 %or.i109.i702, 16
  %and23.i706 = and i32 %shr22.i705, 255
  %arrayidx24.i707 = getelementptr [256 x i32], ptr @cast_s2, i32 0, i32 %and23.i706
  %410 = ptrtoint ptr %arrayidx24.i707 to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load i32, ptr %arrayidx24.i707, align 4
  %add25.i708 = add i32 %411, %409
  %shr26.i709 = lshr i32 %or.i109.i702, 8
  %and27.i710 = and i32 %shr26.i709, 255
  %arrayidx28.i711 = getelementptr [256 x i32], ptr @cast_s3, i32 0, i32 %and27.i710
  %412 = ptrtoint ptr %arrayidx28.i711 to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load i32, ptr %arrayidx28.i711, align 4
  %xor29.i712 = xor i32 %add25.i708, %413
  %and30.i713 = and i32 %or.i109.i702, 255
  %arrayidx31.i714 = getelementptr [256 x i32], ptr @cast_s4, i32 0, i32 %and30.i713
  %414 = ptrtoint ptr %arrayidx31.i714 to i32
  call void @__asan_load4_noabort(i32 %414)
  %415 = load i32, ptr %arrayidx31.i714, align 4
  %sub32.i715 = sub i32 %xor29.i712, %415
  %xor34.i716 = xor i32 %sub32.i715, %xor34.i639
  %arrayidx35.i717 = getelementptr [12 x [4 x i32]], ptr %ctx, i32 0, i32 3, i32 1
  %416 = ptrtoint ptr %arrayidx35.i717 to i32
  call void @__asan_load4_noabort(i32 %416)
  %417 = load i32, ptr %arrayidx35.i717, align 4
  %xor37.i719 = xor i32 %417, %xor76.i676
  %arrayidx38.i720 = getelementptr %struct.cast6_ctx, ptr %ctx, i32 0, i32 1, i32 3, i32 1
  %418 = ptrtoint ptr %arrayidx38.i720 to i32
  call void @__asan_load1_noabort(i32 %418)
  %419 = load i8, ptr %arrayidx38.i720, align 1
  %conv39.i721 = zext i8 %419 to i32
  %or.i110.i722 = tail call i32 @llvm.fshl.i32(i32 %xor37.i719, i32 %xor37.i719, i32 %conv39.i721) #7
  %shr41.i723 = lshr i32 %or.i110.i722, 24
  %arrayidx42.i724 = getelementptr [256 x i32], ptr @cast_s1, i32 0, i32 %shr41.i723
  %420 = ptrtoint ptr %arrayidx42.i724 to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load i32, ptr %arrayidx42.i724, align 4
  %shr43.i725 = lshr i32 %or.i110.i722, 16
  %and44.i726 = and i32 %shr43.i725, 255
  %arrayidx45.i727 = getelementptr [256 x i32], ptr @cast_s2, i32 0, i32 %and44.i726
  %422 = ptrtoint ptr %arrayidx45.i727 to i32
  call void @__asan_load4_noabort(i32 %422)
  %423 = load i32, ptr %arrayidx45.i727, align 4
  %sub46.i728 = sub i32 %421, %423
  %shr47.i729 = lshr i32 %or.i110.i722, 8
  %and48.i730 = and i32 %shr47.i729, 255
  %arrayidx49.i731 = getelementptr [256 x i32], ptr @cast_s3, i32 0, i32 %and48.i730
  %424 = ptrtoint ptr %arrayidx49.i731 to i32
  call void @__asan_load4_noabort(i32 %424)
  %425 = load i32, ptr %arrayidx49.i731, align 4
  %add50.i732 = add i32 %sub46.i728, %425
  %and51.i733 = and i32 %or.i110.i722, 255
  %arrayidx52.i734 = getelementptr [256 x i32], ptr @cast_s4, i32 0, i32 %and51.i733
  %426 = ptrtoint ptr %arrayidx52.i734 to i32
  call void @__asan_load4_noabort(i32 %426)
  %427 = load i32, ptr %arrayidx52.i734, align 4
  %xor53.i735 = xor i32 %427, %xor55.i659
  %xor55.i736 = xor i32 %xor53.i735, %add50.i732
  %428 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load4_noabort(i32 %428)
  %429 = load i32, ptr %arrayidx65, align 4
  %add58.i737 = add i32 %429, %xor13.i696
  %430 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_load1_noabort(i32 %430)
  %431 = load i8, ptr %arrayidx68, align 1
  %conv60.i738 = zext i8 %431 to i32
  %or.i111.i739 = tail call i32 @llvm.fshl.i32(i32 %add58.i737, i32 %add58.i737, i32 %conv60.i738) #7
  %shr62.i740 = lshr i32 %or.i111.i739, 24
  %arrayidx63.i741 = getelementptr [256 x i32], ptr @cast_s1, i32 0, i32 %shr62.i740
  %432 = ptrtoint ptr %arrayidx63.i741 to i32
  call void @__asan_load4_noabort(i32 %432)
  %433 = load i32, ptr %arrayidx63.i741, align 4
  %shr64.i742 = lshr i32 %or.i111.i739, 16
  %and65.i743 = and i32 %shr64.i742, 255
  %arrayidx66.i744 = getelementptr [256 x i32], ptr @cast_s2, i32 0, i32 %and65.i743
  %434 = ptrtoint ptr %arrayidx66.i744 to i32
  call void @__asan_load4_noabort(i32 %434)
  %435 = load i32, ptr %arrayidx66.i744, align 4
  %xor67.i745 = xor i32 %435, %433
  %shr68.i746 = lshr i32 %or.i111.i739, 8
  %and69.i747 = and i32 %shr68.i746, 255
  %arrayidx70.i748 = getelementptr [256 x i32], ptr @cast_s3, i32 0, i32 %and69.i747
  %436 = ptrtoint ptr %arrayidx70.i748 to i32
  call void @__asan_load4_noabort(i32 %436)
  %437 = load i32, ptr %arrayidx70.i748, align 4
  %sub71.i749 = sub i32 %xor67.i745, %437
  %and72.i750 = and i32 %or.i111.i739, 255
  %arrayidx73.i751 = getelementptr [256 x i32], ptr @cast_s4, i32 0, i32 %and72.i750
  %438 = ptrtoint ptr %arrayidx73.i751 to i32
  call void @__asan_load4_noabort(i32 %438)
  %439 = load i32, ptr %arrayidx73.i751, align 4
  %add74.i752 = add i32 %sub71.i749, %439
  %xor76.i753 = xor i32 %add74.i752, %xor76.i676
  %arrayidx72 = getelementptr [12 x [4 x i32]], ptr %ctx, i32 0, i32 2
  %arrayidx75 = getelementptr %struct.cast6_ctx, ptr %ctx, i32 0, i32 1, i32 2
  %arrayidx.i754 = getelementptr [12 x [4 x i32]], ptr %ctx, i32 0, i32 2, i32 3
  %440 = ptrtoint ptr %arrayidx.i754 to i32
  call void @__asan_load4_noabort(i32 %440)
  %441 = load i32, ptr %arrayidx.i754, align 4
  %add.i755 = add i32 %441, %xor34.i716
  %arrayidx2.i756 = getelementptr %struct.cast6_ctx, ptr %ctx, i32 0, i32 1, i32 2, i32 3
  %442 = ptrtoint ptr %arrayidx2.i756 to i32
  call void @__asan_load1_noabort(i32 %442)
  %443 = load i8, ptr %arrayidx2.i756, align 1
  %conv.i757 = zext i8 %443 to i32
  %or.i.i758 = tail call i32 @llvm.fshl.i32(i32 %add.i755, i32 %add.i755, i32 %conv.i757) #7
  %shr.i759 = lshr i32 %or.i.i758, 24
  %arrayidx3.i760 = getelementptr [256 x i32], ptr @cast_s1, i32 0, i32 %shr.i759
  %444 = ptrtoint ptr %arrayidx3.i760 to i32
  call void @__asan_load4_noabort(i32 %444)
  %445 = load i32, ptr %arrayidx3.i760, align 4
  %shr4.i761 = lshr i32 %or.i.i758, 16
  %and.i762 = and i32 %shr4.i761, 255
  %arrayidx5.i763 = getelementptr [256 x i32], ptr @cast_s2, i32 0, i32 %and.i762
  %446 = ptrtoint ptr %arrayidx5.i763 to i32
  call void @__asan_load4_noabort(i32 %446)
  %447 = load i32, ptr %arrayidx5.i763, align 4
  %xor.i764 = xor i32 %447, %445
  %shr6.i765 = lshr i32 %or.i.i758, 8
  %and7.i766 = and i32 %shr6.i765, 255
  %arrayidx8.i767 = getelementptr [256 x i32], ptr @cast_s3, i32 0, i32 %and7.i766
  %448 = ptrtoint ptr %arrayidx8.i767 to i32
  call void @__asan_load4_noabort(i32 %448)
  %449 = load i32, ptr %arrayidx8.i767, align 4
  %sub.i768 = sub i32 %xor.i764, %449
  %and9.i769 = and i32 %or.i.i758, 255
  %arrayidx10.i770 = getelementptr [256 x i32], ptr @cast_s4, i32 0, i32 %and9.i769
  %450 = ptrtoint ptr %arrayidx10.i770 to i32
  call void @__asan_load4_noabort(i32 %450)
  %451 = load i32, ptr %arrayidx10.i770, align 4
  %add11.i771 = add i32 %sub.i768, %451
  %xor13.i773 = xor i32 %add11.i771, %xor13.i696
  %arrayidx14.i774 = getelementptr [12 x [4 x i32]], ptr %ctx, i32 0, i32 2, i32 2
  %452 = ptrtoint ptr %arrayidx14.i774 to i32
  call void @__asan_load4_noabort(i32 %452)
  %453 = load i32, ptr %arrayidx14.i774, align 4
  %sub16.i776 = sub i32 %453, %xor55.i736
  %arrayidx17.i777 = getelementptr %struct.cast6_ctx, ptr %ctx, i32 0, i32 1, i32 2, i32 2
  %454 = ptrtoint ptr %arrayidx17.i777 to i32
  call void @__asan_load1_noabort(i32 %454)
  %455 = load i8, ptr %arrayidx17.i777, align 1
  %conv18.i778 = zext i8 %455 to i32
  %or.i109.i779 = tail call i32 @llvm.fshl.i32(i32 %sub16.i776, i32 %sub16.i776, i32 %conv18.i778) #7
  %shr20.i780 = lshr i32 %or.i109.i779, 24
  %arrayidx21.i781 = getelementptr [256 x i32], ptr @cast_s1, i32 0, i32 %shr20.i780
  %456 = ptrtoint ptr %arrayidx21.i781 to i32
  call void @__asan_load4_noabort(i32 %456)
  %457 = load i32, ptr %arrayidx21.i781, align 4
  %shr22.i782 = lshr i32 %or.i109.i779, 16
  %and23.i783 = and i32 %shr22.i782, 255
  %arrayidx24.i784 = getelementptr [256 x i32], ptr @cast_s2, i32 0, i32 %and23.i783
  %458 = ptrtoint ptr %arrayidx24.i784 to i32
  call void @__asan_load4_noabort(i32 %458)
  %459 = load i32, ptr %arrayidx24.i784, align 4
  %add25.i785 = add i32 %459, %457
  %shr26.i786 = lshr i32 %or.i109.i779, 8
  %and27.i787 = and i32 %shr26.i786, 255
  %arrayidx28.i788 = getelementptr [256 x i32], ptr @cast_s3, i32 0, i32 %and27.i787
  %460 = ptrtoint ptr %arrayidx28.i788 to i32
  call void @__asan_load4_noabort(i32 %460)
  %461 = load i32, ptr %arrayidx28.i788, align 4
  %xor29.i789 = xor i32 %add25.i785, %461
  %and30.i790 = and i32 %or.i109.i779, 255
  %arrayidx31.i791 = getelementptr [256 x i32], ptr @cast_s4, i32 0, i32 %and30.i790
  %462 = ptrtoint ptr %arrayidx31.i791 to i32
  call void @__asan_load4_noabort(i32 %462)
  %463 = load i32, ptr %arrayidx31.i791, align 4
  %sub32.i792 = sub i32 %xor29.i789, %463
  %xor34.i793 = xor i32 %sub32.i792, %xor34.i716
  %arrayidx35.i794 = getelementptr [12 x [4 x i32]], ptr %ctx, i32 0, i32 2, i32 1
  %464 = ptrtoint ptr %arrayidx35.i794 to i32
  call void @__asan_load4_noabort(i32 %464)
  %465 = load i32, ptr %arrayidx35.i794, align 4
  %xor37.i796 = xor i32 %465, %xor76.i753
  %arrayidx38.i797 = getelementptr %struct.cast6_ctx, ptr %ctx, i32 0, i32 1, i32 2, i32 1
  %466 = ptrtoint ptr %arrayidx38.i797 to i32
  call void @__asan_load1_noabort(i32 %466)
  %467 = load i8, ptr %arrayidx38.i797, align 1
  %conv39.i798 = zext i8 %467 to i32
  %or.i110.i799 = tail call i32 @llvm.fshl.i32(i32 %xor37.i796, i32 %xor37.i796, i32 %conv39.i798) #7
  %shr41.i800 = lshr i32 %or.i110.i799, 24
  %arrayidx42.i801 = getelementptr [256 x i32], ptr @cast_s1, i32 0, i32 %shr41.i800
  %468 = ptrtoint ptr %arrayidx42.i801 to i32
  call void @__asan_load4_noabort(i32 %468)
  %469 = load i32, ptr %arrayidx42.i801, align 4
  %shr43.i802 = lshr i32 %or.i110.i799, 16
  %and44.i803 = and i32 %shr43.i802, 255
  %arrayidx45.i804 = getelementptr [256 x i32], ptr @cast_s2, i32 0, i32 %and44.i803
  %470 = ptrtoint ptr %arrayidx45.i804 to i32
  call void @__asan_load4_noabort(i32 %470)
  %471 = load i32, ptr %arrayidx45.i804, align 4
  %sub46.i805 = sub i32 %469, %471
  %shr47.i806 = lshr i32 %or.i110.i799, 8
  %and48.i807 = and i32 %shr47.i806, 255
  %arrayidx49.i808 = getelementptr [256 x i32], ptr @cast_s3, i32 0, i32 %and48.i807
  %472 = ptrtoint ptr %arrayidx49.i808 to i32
  call void @__asan_load4_noabort(i32 %472)
  %473 = load i32, ptr %arrayidx49.i808, align 4
  %add50.i809 = add i32 %sub46.i805, %473
  %and51.i810 = and i32 %or.i110.i799, 255
  %arrayidx52.i811 = getelementptr [256 x i32], ptr @cast_s4, i32 0, i32 %and51.i810
  %474 = ptrtoint ptr %arrayidx52.i811 to i32
  call void @__asan_load4_noabort(i32 %474)
  %475 = load i32, ptr %arrayidx52.i811, align 4
  %xor53.i812 = xor i32 %475, %xor55.i736
  %xor55.i813 = xor i32 %xor53.i812, %add50.i809
  %476 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load4_noabort(i32 %476)
  %477 = load i32, ptr %arrayidx72, align 4
  %add58.i814 = add i32 %477, %xor13.i773
  %478 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_load1_noabort(i32 %478)
  %479 = load i8, ptr %arrayidx75, align 1
  %conv60.i815 = zext i8 %479 to i32
  %or.i111.i816 = tail call i32 @llvm.fshl.i32(i32 %add58.i814, i32 %add58.i814, i32 %conv60.i815) #7
  %shr62.i817 = lshr i32 %or.i111.i816, 24
  %arrayidx63.i818 = getelementptr [256 x i32], ptr @cast_s1, i32 0, i32 %shr62.i817
  %480 = ptrtoint ptr %arrayidx63.i818 to i32
  call void @__asan_load4_noabort(i32 %480)
  %481 = load i32, ptr %arrayidx63.i818, align 4
  %shr64.i819 = lshr i32 %or.i111.i816, 16
  %and65.i820 = and i32 %shr64.i819, 255
  %arrayidx66.i821 = getelementptr [256 x i32], ptr @cast_s2, i32 0, i32 %and65.i820
  %482 = ptrtoint ptr %arrayidx66.i821 to i32
  call void @__asan_load4_noabort(i32 %482)
  %483 = load i32, ptr %arrayidx66.i821, align 4
  %xor67.i822 = xor i32 %483, %481
  %shr68.i823 = lshr i32 %or.i111.i816, 8
  %and69.i824 = and i32 %shr68.i823, 255
  %arrayidx70.i825 = getelementptr [256 x i32], ptr @cast_s3, i32 0, i32 %and69.i824
  %484 = ptrtoint ptr %arrayidx70.i825 to i32
  call void @__asan_load4_noabort(i32 %484)
  %485 = load i32, ptr %arrayidx70.i825, align 4
  %sub71.i826 = sub i32 %xor67.i822, %485
  %and72.i827 = and i32 %or.i111.i816, 255
  %arrayidx73.i828 = getelementptr [256 x i32], ptr @cast_s4, i32 0, i32 %and72.i827
  %486 = ptrtoint ptr %arrayidx73.i828 to i32
  call void @__asan_load4_noabort(i32 %486)
  %487 = load i32, ptr %arrayidx73.i828, align 4
  %add74.i829 = add i32 %sub71.i826, %487
  %xor76.i830 = xor i32 %add74.i829, %xor76.i753
  %arrayidx79 = getelementptr [12 x [4 x i32]], ptr %ctx, i32 0, i32 1
  %arrayidx82 = getelementptr %struct.cast6_ctx, ptr %ctx, i32 0, i32 1, i32 1
  %arrayidx.i831 = getelementptr [12 x [4 x i32]], ptr %ctx, i32 0, i32 1, i32 3
  %488 = ptrtoint ptr %arrayidx.i831 to i32
  call void @__asan_load4_noabort(i32 %488)
  %489 = load i32, ptr %arrayidx.i831, align 4
  %add.i832 = add i32 %489, %xor34.i793
  %arrayidx2.i833 = getelementptr %struct.cast6_ctx, ptr %ctx, i32 0, i32 1, i32 1, i32 3
  %490 = ptrtoint ptr %arrayidx2.i833 to i32
  call void @__asan_load1_noabort(i32 %490)
  %491 = load i8, ptr %arrayidx2.i833, align 1
  %conv.i834 = zext i8 %491 to i32
  %or.i.i835 = tail call i32 @llvm.fshl.i32(i32 %add.i832, i32 %add.i832, i32 %conv.i834) #7
  %shr.i836 = lshr i32 %or.i.i835, 24
  %arrayidx3.i837 = getelementptr [256 x i32], ptr @cast_s1, i32 0, i32 %shr.i836
  %492 = ptrtoint ptr %arrayidx3.i837 to i32
  call void @__asan_load4_noabort(i32 %492)
  %493 = load i32, ptr %arrayidx3.i837, align 4
  %shr4.i838 = lshr i32 %or.i.i835, 16
  %and.i839 = and i32 %shr4.i838, 255
  %arrayidx5.i840 = getelementptr [256 x i32], ptr @cast_s2, i32 0, i32 %and.i839
  %494 = ptrtoint ptr %arrayidx5.i840 to i32
  call void @__asan_load4_noabort(i32 %494)
  %495 = load i32, ptr %arrayidx5.i840, align 4
  %xor.i841 = xor i32 %495, %493
  %shr6.i842 = lshr i32 %or.i.i835, 8
  %and7.i843 = and i32 %shr6.i842, 255
  %arrayidx8.i844 = getelementptr [256 x i32], ptr @cast_s3, i32 0, i32 %and7.i843
  %496 = ptrtoint ptr %arrayidx8.i844 to i32
  call void @__asan_load4_noabort(i32 %496)
  %497 = load i32, ptr %arrayidx8.i844, align 4
  %sub.i845 = sub i32 %xor.i841, %497
  %and9.i846 = and i32 %or.i.i835, 255
  %arrayidx10.i847 = getelementptr [256 x i32], ptr @cast_s4, i32 0, i32 %and9.i846
  %498 = ptrtoint ptr %arrayidx10.i847 to i32
  call void @__asan_load4_noabort(i32 %498)
  %499 = load i32, ptr %arrayidx10.i847, align 4
  %add11.i848 = add i32 %sub.i845, %499
  %xor13.i850 = xor i32 %add11.i848, %xor13.i773
  %arrayidx14.i851 = getelementptr [12 x [4 x i32]], ptr %ctx, i32 0, i32 1, i32 2
  %500 = ptrtoint ptr %arrayidx14.i851 to i32
  call void @__asan_load4_noabort(i32 %500)
  %501 = load i32, ptr %arrayidx14.i851, align 4
  %sub16.i853 = sub i32 %501, %xor55.i813
  %arrayidx17.i854 = getelementptr %struct.cast6_ctx, ptr %ctx, i32 0, i32 1, i32 1, i32 2
  %502 = ptrtoint ptr %arrayidx17.i854 to i32
  call void @__asan_load1_noabort(i32 %502)
  %503 = load i8, ptr %arrayidx17.i854, align 1
  %conv18.i855 = zext i8 %503 to i32
  %or.i109.i856 = tail call i32 @llvm.fshl.i32(i32 %sub16.i853, i32 %sub16.i853, i32 %conv18.i855) #7
  %shr20.i857 = lshr i32 %or.i109.i856, 24
  %arrayidx21.i858 = getelementptr [256 x i32], ptr @cast_s1, i32 0, i32 %shr20.i857
  %504 = ptrtoint ptr %arrayidx21.i858 to i32
  call void @__asan_load4_noabort(i32 %504)
  %505 = load i32, ptr %arrayidx21.i858, align 4
  %shr22.i859 = lshr i32 %or.i109.i856, 16
  %and23.i860 = and i32 %shr22.i859, 255
  %arrayidx24.i861 = getelementptr [256 x i32], ptr @cast_s2, i32 0, i32 %and23.i860
  %506 = ptrtoint ptr %arrayidx24.i861 to i32
  call void @__asan_load4_noabort(i32 %506)
  %507 = load i32, ptr %arrayidx24.i861, align 4
  %add25.i862 = add i32 %507, %505
  %shr26.i863 = lshr i32 %or.i109.i856, 8
  %and27.i864 = and i32 %shr26.i863, 255
  %arrayidx28.i865 = getelementptr [256 x i32], ptr @cast_s3, i32 0, i32 %and27.i864
  %508 = ptrtoint ptr %arrayidx28.i865 to i32
  call void @__asan_load4_noabort(i32 %508)
  %509 = load i32, ptr %arrayidx28.i865, align 4
  %xor29.i866 = xor i32 %add25.i862, %509
  %and30.i867 = and i32 %or.i109.i856, 255
  %arrayidx31.i868 = getelementptr [256 x i32], ptr @cast_s4, i32 0, i32 %and30.i867
  %510 = ptrtoint ptr %arrayidx31.i868 to i32
  call void @__asan_load4_noabort(i32 %510)
  %511 = load i32, ptr %arrayidx31.i868, align 4
  %sub32.i869 = sub i32 %xor29.i866, %511
  %xor34.i870 = xor i32 %sub32.i869, %xor34.i793
  %arrayidx35.i871 = getelementptr [12 x [4 x i32]], ptr %ctx, i32 0, i32 1, i32 1
  %512 = ptrtoint ptr %arrayidx35.i871 to i32
  call void @__asan_load4_noabort(i32 %512)
  %513 = load i32, ptr %arrayidx35.i871, align 4
  %xor37.i873 = xor i32 %513, %xor76.i830
  %arrayidx38.i874 = getelementptr %struct.cast6_ctx, ptr %ctx, i32 0, i32 1, i32 1, i32 1
  %514 = ptrtoint ptr %arrayidx38.i874 to i32
  call void @__asan_load1_noabort(i32 %514)
  %515 = load i8, ptr %arrayidx38.i874, align 1
  %conv39.i875 = zext i8 %515 to i32
  %or.i110.i876 = tail call i32 @llvm.fshl.i32(i32 %xor37.i873, i32 %xor37.i873, i32 %conv39.i875) #7
  %shr41.i877 = lshr i32 %or.i110.i876, 24
  %arrayidx42.i878 = getelementptr [256 x i32], ptr @cast_s1, i32 0, i32 %shr41.i877
  %516 = ptrtoint ptr %arrayidx42.i878 to i32
  call void @__asan_load4_noabort(i32 %516)
  %517 = load i32, ptr %arrayidx42.i878, align 4
  %shr43.i879 = lshr i32 %or.i110.i876, 16
  %and44.i880 = and i32 %shr43.i879, 255
  %arrayidx45.i881 = getelementptr [256 x i32], ptr @cast_s2, i32 0, i32 %and44.i880
  %518 = ptrtoint ptr %arrayidx45.i881 to i32
  call void @__asan_load4_noabort(i32 %518)
  %519 = load i32, ptr %arrayidx45.i881, align 4
  %sub46.i882 = sub i32 %517, %519
  %shr47.i883 = lshr i32 %or.i110.i876, 8
  %and48.i884 = and i32 %shr47.i883, 255
  %arrayidx49.i885 = getelementptr [256 x i32], ptr @cast_s3, i32 0, i32 %and48.i884
  %520 = ptrtoint ptr %arrayidx49.i885 to i32
  call void @__asan_load4_noabort(i32 %520)
  %521 = load i32, ptr %arrayidx49.i885, align 4
  %add50.i886 = add i32 %sub46.i882, %521
  %and51.i887 = and i32 %or.i110.i876, 255
  %arrayidx52.i888 = getelementptr [256 x i32], ptr @cast_s4, i32 0, i32 %and51.i887
  %522 = ptrtoint ptr %arrayidx52.i888 to i32
  call void @__asan_load4_noabort(i32 %522)
  %523 = load i32, ptr %arrayidx52.i888, align 4
  %xor53.i889 = xor i32 %523, %xor55.i813
  %xor55.i890 = xor i32 %xor53.i889, %add50.i886
  %524 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_load4_noabort(i32 %524)
  %525 = load i32, ptr %arrayidx79, align 4
  %add58.i891 = add i32 %525, %xor13.i850
  %526 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_load1_noabort(i32 %526)
  %527 = load i8, ptr %arrayidx82, align 1
  %conv60.i892 = zext i8 %527 to i32
  %or.i111.i893 = tail call i32 @llvm.fshl.i32(i32 %add58.i891, i32 %add58.i891, i32 %conv60.i892) #7
  %shr62.i894 = lshr i32 %or.i111.i893, 24
  %arrayidx63.i895 = getelementptr [256 x i32], ptr @cast_s1, i32 0, i32 %shr62.i894
  %528 = ptrtoint ptr %arrayidx63.i895 to i32
  call void @__asan_load4_noabort(i32 %528)
  %529 = load i32, ptr %arrayidx63.i895, align 4
  %shr64.i896 = lshr i32 %or.i111.i893, 16
  %and65.i897 = and i32 %shr64.i896, 255
  %arrayidx66.i898 = getelementptr [256 x i32], ptr @cast_s2, i32 0, i32 %and65.i897
  %530 = ptrtoint ptr %arrayidx66.i898 to i32
  call void @__asan_load4_noabort(i32 %530)
  %531 = load i32, ptr %arrayidx66.i898, align 4
  %xor67.i899 = xor i32 %531, %529
  %shr68.i900 = lshr i32 %or.i111.i893, 8
  %and69.i901 = and i32 %shr68.i900, 255
  %arrayidx70.i902 = getelementptr [256 x i32], ptr @cast_s3, i32 0, i32 %and69.i901
  %532 = ptrtoint ptr %arrayidx70.i902 to i32
  call void @__asan_load4_noabort(i32 %532)
  %533 = load i32, ptr %arrayidx70.i902, align 4
  %sub71.i903 = sub i32 %xor67.i899, %533
  %and72.i904 = and i32 %or.i111.i893, 255
  %arrayidx73.i905 = getelementptr [256 x i32], ptr @cast_s4, i32 0, i32 %and72.i904
  %534 = ptrtoint ptr %arrayidx73.i905 to i32
  call void @__asan_load4_noabort(i32 %534)
  %535 = load i32, ptr %arrayidx73.i905, align 4
  %add74.i906 = add i32 %sub71.i903, %535
  %xor76.i907 = xor i32 %add74.i906, %xor76.i830
  %arrayidx.i908 = getelementptr i32, ptr %ctx, i32 3
  %536 = ptrtoint ptr %arrayidx.i908 to i32
  call void @__asan_load4_noabort(i32 %536)
  %537 = load i32, ptr %arrayidx.i908, align 4
  %add.i909 = add i32 %537, %xor34.i870
  %arrayidx2.i910 = getelementptr %struct.cast6_ctx, ptr %ctx, i32 0, i32 1, i32 0, i32 3
  %538 = ptrtoint ptr %arrayidx2.i910 to i32
  call void @__asan_load1_noabort(i32 %538)
  %539 = load i8, ptr %arrayidx2.i910, align 1
  %conv.i911 = zext i8 %539 to i32
  %or.i.i912 = tail call i32 @llvm.fshl.i32(i32 %add.i909, i32 %add.i909, i32 %conv.i911) #7
  %shr.i913 = lshr i32 %or.i.i912, 24
  %arrayidx3.i914 = getelementptr [256 x i32], ptr @cast_s1, i32 0, i32 %shr.i913
  %540 = ptrtoint ptr %arrayidx3.i914 to i32
  call void @__asan_load4_noabort(i32 %540)
  %541 = load i32, ptr %arrayidx3.i914, align 4
  %shr4.i915 = lshr i32 %or.i.i912, 16
  %and.i916 = and i32 %shr4.i915, 255
  %arrayidx5.i917 = getelementptr [256 x i32], ptr @cast_s2, i32 0, i32 %and.i916
  %542 = ptrtoint ptr %arrayidx5.i917 to i32
  call void @__asan_load4_noabort(i32 %542)
  %543 = load i32, ptr %arrayidx5.i917, align 4
  %xor.i918 = xor i32 %543, %541
  %shr6.i919 = lshr i32 %or.i.i912, 8
  %and7.i920 = and i32 %shr6.i919, 255
  %arrayidx8.i921 = getelementptr [256 x i32], ptr @cast_s3, i32 0, i32 %and7.i920
  %544 = ptrtoint ptr %arrayidx8.i921 to i32
  call void @__asan_load4_noabort(i32 %544)
  %545 = load i32, ptr %arrayidx8.i921, align 4
  %sub.i922 = sub i32 %xor.i918, %545
  %and9.i923 = and i32 %or.i.i912, 255
  %arrayidx10.i924 = getelementptr [256 x i32], ptr @cast_s4, i32 0, i32 %and9.i923
  %546 = ptrtoint ptr %arrayidx10.i924 to i32
  call void @__asan_load4_noabort(i32 %546)
  %547 = load i32, ptr %arrayidx10.i924, align 4
  %add11.i925 = add i32 %sub.i922, %547
  %xor13.i927 = xor i32 %add11.i925, %xor13.i850
  %arrayidx14.i928 = getelementptr i32, ptr %ctx, i32 2
  %548 = ptrtoint ptr %arrayidx14.i928 to i32
  call void @__asan_load4_noabort(i32 %548)
  %549 = load i32, ptr %arrayidx14.i928, align 4
  %sub16.i930 = sub i32 %549, %xor55.i890
  %arrayidx17.i931 = getelementptr %struct.cast6_ctx, ptr %ctx, i32 0, i32 1, i32 0, i32 2
  %550 = ptrtoint ptr %arrayidx17.i931 to i32
  call void @__asan_load1_noabort(i32 %550)
  %551 = load i8, ptr %arrayidx17.i931, align 1
  %conv18.i932 = zext i8 %551 to i32
  %or.i109.i933 = tail call i32 @llvm.fshl.i32(i32 %sub16.i930, i32 %sub16.i930, i32 %conv18.i932) #7
  %shr20.i934 = lshr i32 %or.i109.i933, 24
  %arrayidx21.i935 = getelementptr [256 x i32], ptr @cast_s1, i32 0, i32 %shr20.i934
  %552 = ptrtoint ptr %arrayidx21.i935 to i32
  call void @__asan_load4_noabort(i32 %552)
  %553 = load i32, ptr %arrayidx21.i935, align 4
  %shr22.i936 = lshr i32 %or.i109.i933, 16
  %and23.i937 = and i32 %shr22.i936, 255
  %arrayidx24.i938 = getelementptr [256 x i32], ptr @cast_s2, i32 0, i32 %and23.i937
  %554 = ptrtoint ptr %arrayidx24.i938 to i32
  call void @__asan_load4_noabort(i32 %554)
  %555 = load i32, ptr %arrayidx24.i938, align 4
  %add25.i939 = add i32 %555, %553
  %shr26.i940 = lshr i32 %or.i109.i933, 8
  %and27.i941 = and i32 %shr26.i940, 255
  %arrayidx28.i942 = getelementptr [256 x i32], ptr @cast_s3, i32 0, i32 %and27.i941
  %556 = ptrtoint ptr %arrayidx28.i942 to i32
  call void @__asan_load4_noabort(i32 %556)
  %557 = load i32, ptr %arrayidx28.i942, align 4
  %xor29.i943 = xor i32 %add25.i939, %557
  %and30.i944 = and i32 %or.i109.i933, 255
  %arrayidx31.i945 = getelementptr [256 x i32], ptr @cast_s4, i32 0, i32 %and30.i944
  %558 = ptrtoint ptr %arrayidx31.i945 to i32
  call void @__asan_load4_noabort(i32 %558)
  %559 = load i32, ptr %arrayidx31.i945, align 4
  %sub32.i946 = sub i32 %xor29.i943, %559
  %xor34.i947 = xor i32 %sub32.i946, %xor34.i870
  %arrayidx35.i948 = getelementptr i32, ptr %ctx, i32 1
  %560 = ptrtoint ptr %arrayidx35.i948 to i32
  call void @__asan_load4_noabort(i32 %560)
  %561 = load i32, ptr %arrayidx35.i948, align 4
  %xor37.i950 = xor i32 %561, %xor76.i907
  %arrayidx38.i951 = getelementptr %struct.cast6_ctx, ptr %ctx, i32 0, i32 1, i32 0, i32 1
  %562 = ptrtoint ptr %arrayidx38.i951 to i32
  call void @__asan_load1_noabort(i32 %562)
  %563 = load i8, ptr %arrayidx38.i951, align 1
  %conv39.i952 = zext i8 %563 to i32
  %or.i110.i953 = tail call i32 @llvm.fshl.i32(i32 %xor37.i950, i32 %xor37.i950, i32 %conv39.i952) #7
  %shr41.i954 = lshr i32 %or.i110.i953, 24
  %arrayidx42.i955 = getelementptr [256 x i32], ptr @cast_s1, i32 0, i32 %shr41.i954
  %564 = ptrtoint ptr %arrayidx42.i955 to i32
  call void @__asan_load4_noabort(i32 %564)
  %565 = load i32, ptr %arrayidx42.i955, align 4
  %shr43.i956 = lshr i32 %or.i110.i953, 16
  %and44.i957 = and i32 %shr43.i956, 255
  %arrayidx45.i958 = getelementptr [256 x i32], ptr @cast_s2, i32 0, i32 %and44.i957
  %566 = ptrtoint ptr %arrayidx45.i958 to i32
  call void @__asan_load4_noabort(i32 %566)
  %567 = load i32, ptr %arrayidx45.i958, align 4
  %sub46.i959 = sub i32 %565, %567
  %shr47.i960 = lshr i32 %or.i110.i953, 8
  %and48.i961 = and i32 %shr47.i960, 255
  %arrayidx49.i962 = getelementptr [256 x i32], ptr @cast_s3, i32 0, i32 %and48.i961
  %568 = ptrtoint ptr %arrayidx49.i962 to i32
  call void @__asan_load4_noabort(i32 %568)
  %569 = load i32, ptr %arrayidx49.i962, align 4
  %add50.i963 = add i32 %sub46.i959, %569
  %and51.i964 = and i32 %or.i110.i953, 255
  %arrayidx52.i965 = getelementptr [256 x i32], ptr @cast_s4, i32 0, i32 %and51.i964
  %570 = ptrtoint ptr %arrayidx52.i965 to i32
  call void @__asan_load4_noabort(i32 %570)
  %571 = load i32, ptr %arrayidx52.i965, align 4
  %xor53.i966 = xor i32 %571, %xor55.i890
  %xor55.i967 = xor i32 %xor53.i966, %add50.i963
  %572 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %572)
  %573 = load i32, ptr %ctx, align 4
  %add58.i968 = add i32 %573, %xor13.i927
  %574 = ptrtoint ptr %Kr11 to i32
  call void @__asan_load1_noabort(i32 %574)
  %575 = load i8, ptr %Kr11, align 1
  %conv60.i969 = zext i8 %575 to i32
  %or.i111.i970 = tail call i32 @llvm.fshl.i32(i32 %add58.i968, i32 %add58.i968, i32 %conv60.i969) #7
  %shr62.i971 = lshr i32 %or.i111.i970, 24
  %arrayidx63.i972 = getelementptr [256 x i32], ptr @cast_s1, i32 0, i32 %shr62.i971
  %576 = ptrtoint ptr %arrayidx63.i972 to i32
  call void @__asan_load4_noabort(i32 %576)
  %577 = load i32, ptr %arrayidx63.i972, align 4
  %shr64.i973 = lshr i32 %or.i111.i970, 16
  %and65.i974 = and i32 %shr64.i973, 255
  %arrayidx66.i975 = getelementptr [256 x i32], ptr @cast_s2, i32 0, i32 %and65.i974
  %578 = ptrtoint ptr %arrayidx66.i975 to i32
  call void @__asan_load4_noabort(i32 %578)
  %579 = load i32, ptr %arrayidx66.i975, align 4
  %xor67.i976 = xor i32 %579, %577
  %shr68.i977 = lshr i32 %or.i111.i970, 8
  %and69.i978 = and i32 %shr68.i977, 255
  %arrayidx70.i979 = getelementptr [256 x i32], ptr @cast_s3, i32 0, i32 %and69.i978
  %580 = ptrtoint ptr %arrayidx70.i979 to i32
  call void @__asan_load4_noabort(i32 %580)
  %581 = load i32, ptr %arrayidx70.i979, align 4
  %sub71.i980 = sub i32 %xor67.i976, %581
  %and72.i981 = and i32 %or.i111.i970, 255
  %arrayidx73.i982 = getelementptr [256 x i32], ptr @cast_s4, i32 0, i32 %and72.i981
  %582 = ptrtoint ptr %arrayidx73.i982 to i32
  call void @__asan_load4_noabort(i32 %582)
  %583 = load i32, ptr %arrayidx73.i982, align 4
  %add74.i983 = add i32 %sub71.i980, %583
  %xor76.i984 = xor i32 %add74.i983, %xor76.i907
  %584 = ptrtoint ptr %outbuf to i32
  call void @__asan_storeN_noabort(i32 %584, i32 4)
  store i32 %xor34.i947, ptr %outbuf, align 1
  %add.ptr94 = getelementptr i8, ptr %outbuf, i32 4
  %585 = ptrtoint ptr %add.ptr94 to i32
  call void @__asan_storeN_noabort(i32 %585, i32 4)
  store i32 %xor55.i967, ptr %add.ptr94, align 1
  %add.ptr96 = getelementptr i8, ptr %outbuf, i32 8
  %586 = ptrtoint ptr %add.ptr96 to i32
  call void @__asan_storeN_noabort(i32 %586, i32 4)
  store i32 %xor76.i984, ptr %add.ptr96, align 1
  %add.ptr98 = getelementptr i8, ptr %outbuf, i32 12
  %587 = ptrtoint ptr %add.ptr98 to i32
  call void @__asan_storeN_noabort(i32 %587, i32 4)
  store i32 %xor13.i927, ptr %add.ptr98, align 1
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cast6_mod_fini() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @crypto_unregister_alg(ptr noundef nonnull @alg) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_alg(ptr noundef) local_unnamed_addr #5

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cast6_mod_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @crypto_register_alg(ptr noundef nonnull @alg) #7
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @cast6_encrypt(ptr noundef %tfm, ptr nocapture noundef writeonly %outbuf, ptr nocapture noundef readonly %inbuf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  tail call void @__cast6_encrypt(ptr noundef %__crt_ctx.i, ptr noundef %outbuf, ptr noundef %inbuf)
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @cast6_decrypt(ptr noundef %tfm, ptr nocapture noundef writeonly %outbuf, ptr nocapture noundef readonly %inbuf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  tail call void @__cast6_decrypt(ptr noundef %__crt_ctx.i, ptr noundef %outbuf, ptr noundef %inbuf)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_alg(ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly inlinehint mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !17, !19, !20, !22, !23, !25, !27}
!llvm.module.flags = !{!29, !30, !31, !32, !33, !34, !35, !36}
!llvm.ident = !{!37}

!0 = !{ptr @__ksymtab___cast6_setkey, !1, !"__ksymtab___cast6_setkey", i1 false, i1 false}
!1 = !{!"../crypto/cast6_generic.c", i32 144, i32 1}
!2 = !{ptr @__ksymtab_cast6_setkey, !3, !"__ksymtab_cast6_setkey", i1 false, i1 false}
!3 = !{!"../crypto/cast6_generic.c", i32 150, i32 1}
!4 = !{ptr @__ksymtab___cast6_encrypt, !5, !"__ksymtab___cast6_encrypt", i1 false, i1 false}
!5 = !{!"../crypto/cast6_generic.c", i32 202, i32 1}
!6 = !{ptr @__ksymtab___cast6_decrypt, !7, !"__ksymtab___cast6_decrypt", i1 false, i1 false}
!7 = !{!"../crypto/cast6_generic.c", i32 239, i32 1}
!8 = !{ptr @__initcall__kmod_cast6_generic__173_274_cast6_mod_init4, !9, !"__initcall__kmod_cast6_generic__173_274_cast6_mod_init4", i1 false, i1 false}
!9 = !{!"../crypto/cast6_generic.c", i32 274, i32 1}
!10 = !{ptr @__exitcall_cast6_mod_fini, !11, !"__exitcall_cast6_mod_fini", i1 false, i1 false}
!11 = !{!"../crypto/cast6_generic.c", i32 275, i32 1}
!12 = !{ptr @__UNIQUE_ID_file174, !13, !"__UNIQUE_ID_file174", i1 false, i1 false}
!13 = !{!"../crypto/cast6_generic.c", i32 277, i32 1}
!14 = !{ptr @__UNIQUE_ID_license175, !13, !"__UNIQUE_ID_license175", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_description176, !16, !"__UNIQUE_ID_description176", i1 false, i1 false}
!16 = !{!"../crypto/cast6_generic.c", i32 278, i32 1}
!17 = !{ptr @__UNIQUE_ID_alias_userspace177, !18, !"__UNIQUE_ID_alias_userspace177", i1 false, i1 false}
!18 = !{!"../crypto/cast6_generic.c", i32 279, i32 1}
!19 = !{ptr @__UNIQUE_ID_alias_crypto178, !18, !"__UNIQUE_ID_alias_crypto178", i1 false, i1 false}
!20 = !{ptr @__UNIQUE_ID_alias_userspace179, !21, !"__UNIQUE_ID_alias_userspace179", i1 false, i1 false}
!21 = !{!"../crypto/cast6_generic.c", i32 280, i32 1}
!22 = !{ptr @__UNIQUE_ID_alias_crypto180, !21, !"__UNIQUE_ID_alias_crypto180", i1 false, i1 false}
!23 = !{ptr @Tm, !24, !"Tm", i1 false, i1 false}
!24 = !{!"../crypto/cast6_generic.c", i32 34, i32 18}
!25 = !{ptr @Tr, !26, !"Tr", i1 false, i1 false}
!26 = !{!"../crypto/cast6_generic.c", i32 85, i32 17}
!27 = !{ptr @alg, !28, !"alg", i1 false, i1 false}
!28 = !{!"../crypto/cast6_generic.c", i32 246, i32 26}
!29 = !{i32 1, !"wchar_size", i32 2}
!30 = !{i32 1, !"min_enum_size", i32 4}
!31 = !{i32 8, !"branch-target-enforcement", i32 0}
!32 = !{i32 8, !"sign-return-address", i32 0}
!33 = !{i32 8, !"sign-return-address-all", i32 0}
!34 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!35 = !{i32 7, !"uwtable", i32 1}
!36 = !{i32 7, !"frame-pointer", i32 2}
!37 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
