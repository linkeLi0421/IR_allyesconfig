; ModuleID = '/llk/IR_all_yes/lib/crypto/des.c_pt.bc'
source_filename = "../lib/crypto/des.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+des_expand_key\22, \22a\22\09"
module asm "\09.weak\09__crc_des_expand_key\09\09\09\09"
module asm "\09.long\09__crc_des_expand_key\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_des_expand_key:\09\09\09\09\09"
module asm "\09.asciz \09\22des_expand_key\22\09\09\09\09\09"
module asm "__kstrtabns_des_expand_key:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+des_encrypt\22, \22a\22\09"
module asm "\09.weak\09__crc_des_encrypt\09\09\09\09"
module asm "\09.long\09__crc_des_encrypt\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_des_encrypt:\09\09\09\09\09"
module asm "\09.asciz \09\22des_encrypt\22\09\09\09\09\09"
module asm "__kstrtabns_des_encrypt:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+des_decrypt\22, \22a\22\09"
module asm "\09.weak\09__crc_des_decrypt\09\09\09\09"
module asm "\09.long\09__crc_des_decrypt\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_des_decrypt:\09\09\09\09\09"
module asm "\09.asciz \09\22des_decrypt\22\09\09\09\09\09"
module asm "__kstrtabns_des_decrypt:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+des3_ede_expand_key\22, \22a\22\09"
module asm "\09.weak\09__crc_des3_ede_expand_key\09\09\09\09"
module asm "\09.long\09__crc_des3_ede_expand_key\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_des3_ede_expand_key:\09\09\09\09\09"
module asm "\09.asciz \09\22des3_ede_expand_key\22\09\09\09\09\09"
module asm "__kstrtabns_des3_ede_expand_key:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+des3_ede_encrypt\22, \22a\22\09"
module asm "\09.weak\09__crc_des3_ede_encrypt\09\09\09\09"
module asm "\09.long\09__crc_des3_ede_encrypt\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_des3_ede_encrypt:\09\09\09\09\09"
module asm "\09.asciz \09\22des3_ede_encrypt\22\09\09\09\09\09"
module asm "__kstrtabns_des3_ede_encrypt:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+des3_ede_decrypt\22, \22a\22\09"
module asm "\09.weak\09__crc_des3_ede_decrypt\09\09\09\09"
module asm "\09.long\09__crc_des3_ede_decrypt\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_des3_ede_decrypt:\09\09\09\09\09"
module asm "\09.asciz \09\22des3_ede_decrypt\22\09\09\09\09\09"
module asm "__kstrtabns_des3_ede_decrypt:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }

@__kstrtab_des_expand_key = external dso_local constant [0 x i8], align 1
@__kstrtabns_des_expand_key = external dso_local constant [0 x i8], align 1
@__ksymtab_des_expand_key = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @des_expand_key to i32), ptr @__kstrtab_des_expand_key, ptr @__kstrtabns_des_expand_key }, section "___ksymtab_gpl+des_expand_key", align 4
@S8 = internal constant { [64 x i32], [64 x i8] } { [64 x i32] [i32 268439616, i32 4096, i32 262144, i32 268701760, i32 268435456, i32 268439616, i32 64, i32 268435456, i32 262208, i32 268697600, i32 268701760, i32 266240, i32 268701696, i32 266304, i32 4096, i32 64, i32 268697600, i32 268435520, i32 268439552, i32 4160, i32 266240, i32 262208, i32 268697664, i32 268701696, i32 4160, i32 0, i32 0, i32 268697664, i32 268435520, i32 268439552, i32 266304, i32 262144, i32 266304, i32 262144, i32 268701696, i32 4096, i32 64, i32 268697664, i32 4096, i32 266304, i32 268439552, i32 64, i32 268435520, i32 268697600, i32 268697664, i32 268435456, i32 262144, i32 268439616, i32 0, i32 268701760, i32 262208, i32 268435520, i32 268697600, i32 268439552, i32 268439616, i32 0, i32 268701760, i32 266240, i32 266240, i32 4160, i32 4160, i32 262208, i32 268435456, i32 268701696], [64 x i8] zeroinitializer }, align 32
@S6 = internal constant { [64 x i32], [64 x i8] } { [64 x i32] [i32 536870928, i32 541065216, i32 16384, i32 541081616, i32 541065216, i32 16, i32 541081616, i32 4194304, i32 536887296, i32 4210704, i32 4194304, i32 536870928, i32 4194320, i32 536887296, i32 536870912, i32 16400, i32 0, i32 4194320, i32 536887312, i32 16384, i32 4210688, i32 536887312, i32 16, i32 541065232, i32 541065232, i32 0, i32 4210704, i32 541081600, i32 16400, i32 4210688, i32 541081600, i32 536870912, i32 536887296, i32 16, i32 541065232, i32 4210688, i32 541081616, i32 4194304, i32 16400, i32 536870928, i32 4194304, i32 536887296, i32 536870912, i32 16400, i32 536870928, i32 541081616, i32 4210688, i32 541065216, i32 4210704, i32 541081600, i32 0, i32 541065232, i32 16, i32 16384, i32 541065216, i32 4210704, i32 16384, i32 4194320, i32 536887312, i32 0, i32 541081600, i32 536870912, i32 4194320, i32 536887312], [64 x i8] zeroinitializer }, align 32
@S7 = internal constant { [64 x i32], [64 x i8] } { [64 x i32] [i32 2097152, i32 69206018, i32 67110914, i32 0, i32 2048, i32 67110914, i32 2099202, i32 69208064, i32 69208066, i32 2097152, i32 0, i32 67108866, i32 2, i32 67108864, i32 69206018, i32 2050, i32 67110912, i32 2099202, i32 2097154, i32 67110912, i32 67108866, i32 69206016, i32 69208064, i32 2097154, i32 69206016, i32 2048, i32 2050, i32 69208066, i32 2099200, i32 2, i32 67108864, i32 2099200, i32 67108864, i32 2099200, i32 2097152, i32 67110914, i32 67110914, i32 69206018, i32 69206018, i32 2, i32 2097154, i32 67108864, i32 67110912, i32 2097152, i32 69208064, i32 2050, i32 2099202, i32 69208064, i32 2050, i32 67108866, i32 69208066, i32 69206016, i32 2099200, i32 0, i32 2, i32 69208066, i32 0, i32 2099202, i32 69206016, i32 2048, i32 67108866, i32 67110912, i32 2048, i32 2097154], [64 x i8] zeroinitializer }, align 32
@S5 = internal constant { [64 x i32], [64 x i8] } { [64 x i32] [i32 256, i32 34078976, i32 34078720, i32 1107296512, i32 524288, i32 256, i32 1073741824, i32 34078720, i32 1074266368, i32 524288, i32 33554688, i32 1074266368, i32 1107296512, i32 1107820544, i32 524544, i32 1073741824, i32 33554432, i32 1074266112, i32 1074266112, i32 0, i32 1073742080, i32 1107820800, i32 1107820800, i32 33554688, i32 1107820544, i32 1073742080, i32 0, i32 1107296256, i32 34078976, i32 33554432, i32 1107296256, i32 524544, i32 524288, i32 1107296512, i32 256, i32 33554432, i32 1073741824, i32 34078720, i32 1107296512, i32 1074266368, i32 33554688, i32 1073741824, i32 1107820544, i32 34078976, i32 1074266368, i32 256, i32 33554432, i32 1107820544, i32 1107820800, i32 524544, i32 1107296256, i32 1107820800, i32 34078720, i32 0, i32 1074266112, i32 1107296256, i32 524544, i32 33554688, i32 1073742080, i32 524288, i32 0, i32 1074266112, i32 34078976, i32 1073742080], [64 x i8] zeroinitializer }, align 32
@S4 = internal constant { [64 x i32], [64 x i8] } { [64 x i32] [i32 8396801, i32 8321, i32 8321, i32 128, i32 8396928, i32 8388737, i32 8388609, i32 8193, i32 0, i32 8396800, i32 8396800, i32 8396929, i32 129, i32 0, i32 8388736, i32 8388609, i32 1, i32 8192, i32 8388608, i32 8396801, i32 128, i32 8388608, i32 8193, i32 8320, i32 8388737, i32 1, i32 8320, i32 8388736, i32 8192, i32 8396928, i32 8396929, i32 129, i32 8388736, i32 8388609, i32 8396800, i32 8396929, i32 129, i32 0, i32 0, i32 8396800, i32 8320, i32 8388736, i32 8388737, i32 1, i32 8396801, i32 8321, i32 8321, i32 128, i32 8396929, i32 129, i32 1, i32 8192, i32 8388609, i32 8193, i32 8396928, i32 8388737, i32 8193, i32 8320, i32 8388608, i32 8396801, i32 128, i32 8388608, i32 8192, i32 8396928], [64 x i8] zeroinitializer }, align 32
@S2 = internal constant { [64 x i32], [64 x i8] } { [64 x i32] [i32 -2146402272, i32 -2147450880, i32 32768, i32 1081376, i32 1048576, i32 32, i32 -2146435040, i32 -2147450848, i32 -2147483616, i32 -2146402272, i32 -2146402304, i32 -2147483648, i32 -2147450880, i32 1048576, i32 32, i32 -2146435040, i32 1081344, i32 1048608, i32 -2147450848, i32 0, i32 -2147483648, i32 32768, i32 1081376, i32 -2146435072, i32 1048608, i32 -2147483616, i32 0, i32 1081344, i32 32800, i32 -2146402304, i32 -2146435072, i32 32800, i32 0, i32 1081376, i32 -2146435040, i32 1048576, i32 -2147450848, i32 -2146435072, i32 -2146402304, i32 32768, i32 -2146435072, i32 -2147450880, i32 32, i32 -2146402272, i32 1081376, i32 32, i32 32768, i32 -2147483648, i32 32800, i32 -2146402304, i32 1048576, i32 -2147483616, i32 1048608, i32 -2147450848, i32 -2147483616, i32 1048608, i32 1081344, i32 0, i32 -2147450880, i32 32800, i32 -2147483648, i32 -2146435040, i32 -2146402272, i32 1081344], [64 x i8] zeroinitializer }, align 32
@S3 = internal constant { [64 x i32], [64 x i8] } { [64 x i32] [i32 520, i32 134349312, i32 0, i32 134348808, i32 134218240, i32 0, i32 131592, i32 134218240, i32 131080, i32 134217736, i32 134217736, i32 131072, i32 134349320, i32 131080, i32 134348800, i32 520, i32 134217728, i32 8, i32 134349312, i32 512, i32 131584, i32 134348800, i32 134348808, i32 131592, i32 134218248, i32 131584, i32 131072, i32 134218248, i32 8, i32 134349320, i32 512, i32 134217728, i32 134349312, i32 134217728, i32 131080, i32 520, i32 131072, i32 134349312, i32 134218240, i32 0, i32 512, i32 131080, i32 134349320, i32 134218240, i32 134217736, i32 512, i32 0, i32 134348808, i32 134218248, i32 131072, i32 134217728, i32 134349320, i32 8, i32 131592, i32 131584, i32 134217736, i32 134348800, i32 134218248, i32 520, i32 134348800, i32 131592, i32 8, i32 134348808, i32 131584], [64 x i8] zeroinitializer }, align 32
@S1 = internal constant { [64 x i32], [64 x i8] } { [64 x i32] [i32 16843776, i32 0, i32 65536, i32 16843780, i32 16842756, i32 66564, i32 4, i32 65536, i32 1024, i32 16843776, i32 16843780, i32 1024, i32 16778244, i32 16842756, i32 16777216, i32 4, i32 1028, i32 16778240, i32 16778240, i32 66560, i32 66560, i32 16842752, i32 16842752, i32 16778244, i32 65540, i32 16777220, i32 16777220, i32 65540, i32 0, i32 1028, i32 66564, i32 16777216, i32 65536, i32 16843780, i32 4, i32 16842752, i32 16843776, i32 16777216, i32 16777216, i32 1024, i32 16842756, i32 65536, i32 66560, i32 16777220, i32 1024, i32 4, i32 16778244, i32 66564, i32 16843780, i32 65540, i32 16842752, i32 16778244, i32 16777220, i32 1028, i32 66564, i32 16843776, i32 1028, i32 16778240, i32 16778240, i32 0, i32 65540, i32 66560, i32 0, i32 16842756], [64 x i8] zeroinitializer }, align 32
@__kstrtab_des_encrypt = external dso_local constant [0 x i8], align 1
@__kstrtabns_des_encrypt = external dso_local constant [0 x i8], align 1
@__ksymtab_des_encrypt = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @des_encrypt to i32), ptr @__kstrtab_des_encrypt, ptr @__kstrtabns_des_encrypt }, section "___ksymtab_gpl+des_encrypt", align 4
@__kstrtab_des_decrypt = external dso_local constant [0 x i8], align 1
@__kstrtabns_des_decrypt = external dso_local constant [0 x i8], align 1
@__ksymtab_des_decrypt = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @des_decrypt to i32), ptr @__kstrtab_des_decrypt, ptr @__kstrtabns_des_decrypt }, section "___ksymtab_gpl+des_decrypt", align 4
@__kstrtab_des3_ede_expand_key = external dso_local constant [0 x i8], align 1
@__kstrtabns_des3_ede_expand_key = external dso_local constant [0 x i8], align 1
@__ksymtab_des3_ede_expand_key = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @des3_ede_expand_key to i32), ptr @__kstrtab_des3_ede_expand_key, ptr @__kstrtabns_des3_ede_expand_key }, section "___ksymtab_gpl+des3_ede_expand_key", align 4
@__kstrtab_des3_ede_encrypt = external dso_local constant [0 x i8], align 1
@__kstrtabns_des3_ede_encrypt = external dso_local constant [0 x i8], align 1
@__ksymtab_des3_ede_encrypt = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @des3_ede_encrypt to i32), ptr @__kstrtab_des3_ede_encrypt, ptr @__kstrtabns_des3_ede_encrypt }, section "___ksymtab_gpl+des3_ede_encrypt", align 4
@__kstrtab_des3_ede_decrypt = external dso_local constant [0 x i8], align 1
@__kstrtabns_des3_ede_decrypt = external dso_local constant [0 x i8], align 1
@__ksymtab_des3_ede_decrypt = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @des3_ede_decrypt to i32), ptr @__kstrtab_des3_ede_decrypt, ptr @__kstrtabns_des3_ede_decrypt }, section "___ksymtab_gpl+des3_ede_decrypt", align 4
@__UNIQUE_ID_file173 = internal constant [30 x i8] c"libdes.file=lib/crypto/libdes\00", section ".modinfo", align 1
@__UNIQUE_ID_license174 = internal constant [19 x i8] c"libdes.license=GPL\00", section ".modinfo", align 1
@pc2 = internal constant { [1024 x i32], [1024 x i8] } { [1024 x i32] [i32 0, i32 0, i32 0, i32 0, i32 262144, i32 0, i32 67108864, i32 1048576, i32 4194304, i32 8, i32 2048, i32 1073741824, i32 4456448, i32 8, i32 67110912, i32 1074790400, i32 1024, i32 32, i32 134217728, i32 256, i32 263168, i32 32, i32 201326592, i32 1048832, i32 4195328, i32 40, i32 134219776, i32 1073742080, i32 4457472, i32 40, i32 201328640, i32 1074790656, i32 -2147483648, i32 16, i32 0, i32 8388608, i32 -2147221504, i32 16, i32 67108864, i32 9437184, i32 -2143289344, i32 24, i32 2048, i32 1082130432, i32 -2143027200, i32 24, i32 67110912, i32 1083179008, i32 -2147482624, i32 48, i32 134217728, i32 8388864, i32 -2147220480, i32 48, i32 201326592, i32 9437440, i32 -2143288320, i32 56, i32 134219776, i32 1082130688, i32 -2143026176, i32 56, i32 201328640, i32 1083179264, i32 268435456, i32 0, i32 2097152, i32 4096, i32 268697600, i32 0, i32 69206016, i32 1052672, i32 272629760, i32 8, i32 2099200, i32 1073745920, i32 272891904, i32 8, i32 69208064, i32 1074794496, i32 268436480, i32 32, i32 136314880, i32 4352, i32 268698624, i32 32, i32 203423744, i32 1052928, i32 272630784, i32 40, i32 136316928, i32 1073746176, i32 272892928, i32 40, i32 203425792, i32 1074794752, i32 -1879048192, i32 16, i32 2097152, i32 8392704, i32 -1878786048, i32 16, i32 69206016, i32 9441280, i32 -1874853888, i32 24, i32 2099200, i32 1082134528, i32 -1874591744, i32 24, i32 69208064, i32 1083183104, i32 -1879047168, i32 48, i32 136314880, i32 8392960, i32 -1878785024, i32 48, i32 203423744, i32 9441536, i32 -1874852864, i32 56, i32 136316928, i32 1082134784, i32 -1874590720, i32 56, i32 203425792, i32 1083183360, i32 512, i32 524288, i32 0, i32 4, i32 262656, i32 524288, i32 67108864, i32 1048580, i32 4194816, i32 524296, i32 2048, i32 1073741828, i32 4456960, i32 524296, i32 67110912, i32 1074790404, i32 1536, i32 524320, i32 134217728, i32 260, i32 263680, i32 524320, i32 201326592, i32 1048836, i32 4195840, i32 524328, i32 134219776, i32 1073742084, i32 4457984, i32 524328, i32 201328640, i32 1074790660, i32 -2147483136, i32 524304, i32 0, i32 8388612, i32 -2147220992, i32 524304, i32 67108864, i32 9437188, i32 -2143288832, i32 524312, i32 2048, i32 1082130436, i32 -2143026688, i32 524312, i32 67110912, i32 1083179012, i32 -2147482112, i32 524336, i32 134217728, i32 8388868, i32 -2147219968, i32 524336, i32 201326592, i32 9437444, i32 -2143287808, i32 524344, i32 134219776, i32 1082130692, i32 -2143025664, i32 524344, i32 201328640, i32 1083179268, i32 268435968, i32 524288, i32 2097152, i32 4100, i32 268698112, i32 524288, i32 69206016, i32 1052676, i32 272630272, i32 524296, i32 2099200, i32 1073745924, i32 272892416, i32 524296, i32 69208064, i32 1074794500, i32 268436992, i32 524320, i32 136314880, i32 4356, i32 268699136, i32 524320, i32 203423744, i32 1052932, i32 272631296, i32 524328, i32 136316928, i32 1073746180, i32 272893440, i32 524328, i32 203425792, i32 1074794756, i32 -1879047680, i32 524304, i32 2097152, i32 8392708, i32 -1878785536, i32 524304, i32 69206016, i32 9441284, i32 -1874853376, i32 524312, i32 2099200, i32 1082134532, i32 -1874591232, i32 524312, i32 69208064, i32 1083183108, i32 -1879046656, i32 524336, i32 136314880, i32 8392964, i32 -1878784512, i32 524336, i32 203423744, i32 9441540, i32 -1874852352, i32 524344, i32 136316928, i32 1082134788, i32 -1874590208, i32 524344, i32 203425792, i32 1083183364, i32 2, i32 8192, i32 536870912, i32 1, i32 262146, i32 8192, i32 603979776, i32 1048577, i32 4194306, i32 8200, i32 536872960, i32 1073741825, i32 4456450, i32 8200, i32 603981824, i32 1074790401, i32 1026, i32 8224, i32 671088640, i32 257, i32 263170, i32 8224, i32 738197504, i32 1048833, i32 4195330, i32 8232, i32 671090688, i32 1073742081, i32 4457474, i32 8232, i32 738199552, i32 1074790657, i32 -2147483646, i32 8208, i32 536870912, i32 8388609, i32 -2147221502, i32 8208, i32 603979776, i32 9437185, i32 -2143289342, i32 8216, i32 536872960, i32 1082130433, i32 -2143027198, i32 8216, i32 603981824, i32 1083179009, i32 -2147482622, i32 8240, i32 671088640, i32 8388865, i32 -2147220478, i32 8240, i32 738197504, i32 9437441, i32 -2143288318, i32 8248, i32 671090688, i32 1082130689, i32 -2143026174, i32 8248, i32 738199552, i32 1083179265, i32 268435458, i32 8192, i32 538968064, i32 4097, i32 268697602, i32 8192, i32 606076928, i32 1052673, i32 272629762, i32 8200, i32 538970112, i32 1073745921, i32 272891906, i32 8200, i32 606078976, i32 1074794497, i32 268436482, i32 8224, i32 673185792, i32 4353, i32 268698626, i32 8224, i32 740294656, i32 1052929, i32 272630786, i32 8232, i32 673187840, i32 1073746177, i32 272892930, i32 8232, i32 740296704, i32 1074794753, i32 -1879048190, i32 8208, i32 538968064, i32 8392705, i32 -1878786046, i32 8208, i32 606076928, i32 9441281, i32 -1874853886, i32 8216, i32 538970112, i32 1082134529, i32 -1874591742, i32 8216, i32 606078976, i32 1083183105, i32 -1879047166, i32 8240, i32 673185792, i32 8392961, i32 -1878785022, i32 8240, i32 740294656, i32 9441537, i32 -1874852862, i32 8248, i32 673187840, i32 1082134785, i32 -1874590718, i32 8248, i32 740296704, i32 1083183361, i32 514, i32 532480, i32 536870912, i32 5, i32 262658, i32 532480, i32 603979776, i32 1048581, i32 4194818, i32 532488, i32 536872960, i32 1073741829, i32 4456962, i32 532488, i32 603981824, i32 1074790405, i32 1538, i32 532512, i32 671088640, i32 261, i32 263682, i32 532512, i32 738197504, i32 1048837, i32 4195842, i32 532520, i32 671090688, i32 1073742085, i32 4457986, i32 532520, i32 738199552, i32 1074790661, i32 -2147483134, i32 532496, i32 536870912, i32 8388613, i32 -2147220990, i32 532496, i32 603979776, i32 9437189, i32 -2143288830, i32 532504, i32 536872960, i32 1082130437, i32 -2143026686, i32 532504, i32 603981824, i32 1083179013, i32 -2147482110, i32 532528, i32 671088640, i32 8388869, i32 -2147219966, i32 532528, i32 738197504, i32 9437445, i32 -2143287806, i32 532536, i32 671090688, i32 1082130693, i32 -2143025662, i32 532536, i32 738199552, i32 1083179269, i32 268435970, i32 532480, i32 538968064, i32 4101, i32 268698114, i32 532480, i32 606076928, i32 1052677, i32 272630274, i32 532488, i32 538970112, i32 1073745925, i32 272892418, i32 532488, i32 606078976, i32 1074794501, i32 268436994, i32 532512, i32 673185792, i32 4357, i32 268699138, i32 532512, i32 740294656, i32 1052933, i32 272631298, i32 532520, i32 673187840, i32 1073746181, i32 272893442, i32 532520, i32 740296704, i32 1074794757, i32 -1879047678, i32 532496, i32 538968064, i32 8392709, i32 -1878785534, i32 532496, i32 606076928, i32 9441285, i32 -1874853374, i32 532504, i32 538970112, i32 1082134533, i32 -1874591230, i32 532504, i32 606078976, i32 1083183109, i32 -1879046654, i32 532528, i32 673185792, i32 8392965, i32 -1878784510, i32 532528, i32 740294656, i32 9441541, i32 -1874852350, i32 532536, i32 673187840, i32 1082134789, i32 -1874590206, i32 532536, i32 740296704, i32 1083183365, i32 0, i32 0, i32 0, i32 0, i32 0, i32 8, i32 524288, i32 268435456, i32 33554432, i32 0, i32 128, i32 4096, i32 33554432, i32 8, i32 524416, i32 268439552, i32 16384, i32 0, i32 64, i32 262144, i32 16384, i32 8, i32 524352, i32 268697600, i32 33570816, i32 0, i32 192, i32 266240, i32 33570816, i32 8, i32 524480, i32 268701696, i32 131072, i32 32768, i32 134217728, i32 2097152, i32 131072, i32 32776, i32 134742016, i32 270532608, i32 33685504, i32 32768, i32 134217856, i32 2101248, i32 33685504, i32 32776, i32 134742144, i32 270536704, i32 147456, i32 32768, i32 134217792, i32 2359296, i32 147456, i32 32776, i32 134742080, i32 270794752, i32 33701888, i32 32768, i32 134217920, i32 2363392, i32 33701888, i32 32776, i32 134742208, i32 270798848, i32 0, i32 16777216, i32 8192, i32 32, i32 0, i32 16777224, i32 532480, i32 268435488, i32 33554432, i32 16777216, i32 8320, i32 4128, i32 33554432, i32 16777224, i32 532608, i32 268439584, i32 16384, i32 16777216, i32 8256, i32 262176, i32 16384, i32 16777224, i32 532544, i32 268697632, i32 33570816, i32 16777216, i32 8384, i32 266272, i32 33570816, i32 16777224, i32 532672, i32 268701728, i32 131072, i32 16809984, i32 134225920, i32 2097184, i32 131072, i32 16809992, i32 134750208, i32 270532640, i32 33685504, i32 16809984, i32 134226048, i32 2101280, i32 33685504, i32 16809992, i32 134750336, i32 270536736, i32 147456, i32 16809984, i32 134225984, i32 2359328, i32 147456, i32 16809992, i32 134750272, i32 270794784, i32 33701888, i32 16809984, i32 134226112, i32 2363424, i32 33701888, i32 16809992, i32 134750400, i32 270798880, i32 1024, i32 67108864, i32 1048576, i32 4, i32 1024, i32 67108872, i32 1572864, i32 268435460, i32 33555456, i32 67108864, i32 1048704, i32 4100, i32 33555456, i32 67108872, i32 1572992, i32 268439556, i32 17408, i32 67108864, i32 1048640, i32 262148, i32 17408, i32 67108872, i32 1572928, i32 268697604, i32 33571840, i32 67108864, i32 1048768, i32 266244, i32 33571840, i32 67108872, i32 1573056, i32 268701700, i32 132096, i32 67141632, i32 135266304, i32 2097156, i32 132096, i32 67141640, i32 135790592, i32 270532612, i32 33686528, i32 67141632, i32 135266432, i32 2101252, i32 33686528, i32 67141640, i32 135790720, i32 270536708, i32 148480, i32 67141632, i32 135266368, i32 2359300, i32 148480, i32 67141640, i32 135790656, i32 270794756, i32 33702912, i32 67141632, i32 135266496, i32 2363396, i32 33702912, i32 67141640, i32 135790784, i32 270798852, i32 1024, i32 83886080, i32 1056768, i32 36, i32 1024, i32 83886088, i32 1581056, i32 268435492, i32 33555456, i32 83886080, i32 1056896, i32 4132, i32 33555456, i32 83886088, i32 1581184, i32 268439588, i32 17408, i32 83886080, i32 1056832, i32 262180, i32 17408, i32 83886088, i32 1581120, i32 268697636, i32 33571840, i32 83886080, i32 1056960, i32 266276, i32 33571840, i32 83886088, i32 1581248, i32 268701732, i32 132096, i32 83918848, i32 135274496, i32 2097188, i32 132096, i32 83918856, i32 135798784, i32 270532644, i32 33686528, i32 83918848, i32 135274624, i32 2101284, i32 33686528, i32 83918856, i32 135798912, i32 270536740, i32 148480, i32 83918848, i32 135274560, i32 2359332, i32 148480, i32 83918856, i32 135798848, i32 270794788, i32 33702912, i32 83918848, i32 135274688, i32 2363428, i32 33702912, i32 83918856, i32 135798976, i32 270798884, i32 2048, i32 65536, i32 536870912, i32 16, i32 2048, i32 65544, i32 537395200, i32 268435472, i32 33556480, i32 65536, i32 536871040, i32 4112, i32 33556480, i32 65544, i32 537395328, i32 268439568, i32 18432, i32 65536, i32 536870976, i32 262160, i32 18432, i32 65544, i32 537395264, i32 268697616, i32 33572864, i32 65536, i32 536871104, i32 266256, i32 33572864, i32 65544, i32 537395392, i32 268701712, i32 133120, i32 98304, i32 671088640, i32 2097168, i32 133120, i32 98312, i32 671612928, i32 270532624, i32 33687552, i32 98304, i32 671088768, i32 2101264, i32 33687552, i32 98312, i32 671613056, i32 270536720, i32 149504, i32 98304, i32 671088704, i32 2359312, i32 149504, i32 98312, i32 671612992, i32 270794768, i32 33703936, i32 98304, i32 671088832, i32 2363408, i32 33703936, i32 98312, i32 671613120, i32 270798864, i32 2048, i32 16842752, i32 536879104, i32 48, i32 2048, i32 16842760, i32 537403392, i32 268435504, i32 33556480, i32 16842752, i32 536879232, i32 4144, i32 33556480, i32 16842760, i32 537403520, i32 268439600, i32 18432, i32 16842752, i32 536879168, i32 262192, i32 18432, i32 16842760, i32 537403456, i32 268697648, i32 33572864, i32 16842752, i32 536879296, i32 266288, i32 33572864, i32 16842760, i32 537403584, i32 268701744, i32 133120, i32 16875520, i32 671096832, i32 2097200, i32 133120, i32 16875528, i32 671621120, i32 270532656, i32 33687552, i32 16875520, i32 671096960, i32 2101296, i32 33687552, i32 16875528, i32 671621248, i32 270536752, i32 149504, i32 16875520, i32 671096896, i32 2359344, i32 149504, i32 16875528, i32 671621184, i32 270794800, i32 33703936, i32 16875520, i32 671097024, i32 2363440, i32 33703936, i32 16875528, i32 671621312, i32 270798896, i32 3072, i32 67174400, i32 537919488, i32 20, i32 3072, i32 67174408, i32 538443776, i32 268435476, i32 33557504, i32 67174400, i32 537919616, i32 4116, i32 33557504, i32 67174408, i32 538443904, i32 268439572, i32 19456, i32 67174400, i32 537919552, i32 262164, i32 19456, i32 67174408, i32 538443840, i32 268697620, i32 33573888, i32 67174400, i32 537919680, i32 266260, i32 33573888, i32 67174408, i32 538443968, i32 268701716, i32 134144, i32 67207168, i32 672137216, i32 2097172, i32 134144, i32 67207176, i32 672661504, i32 270532628, i32 33688576, i32 67207168, i32 672137344, i32 2101268, i32 33688576, i32 67207176, i32 672661632, i32 270536724, i32 150528, i32 67207168, i32 672137280, i32 2359316, i32 150528, i32 67207176, i32 672661568, i32 270794772, i32 33704960, i32 67207168, i32 672137408, i32 2363412, i32 33704960, i32 67207176, i32 672661696, i32 270798868, i32 3072, i32 83951616, i32 537927680, i32 52, i32 3072, i32 83951624, i32 538451968, i32 268435508, i32 33557504, i32 83951616, i32 537927808, i32 4148, i32 33557504, i32 83951624, i32 538452096, i32 268439604, i32 19456, i32 83951616, i32 537927744, i32 262196, i32 19456, i32 83951624, i32 538452032, i32 268697652, i32 33573888, i32 83951616, i32 537927872, i32 266292, i32 33573888, i32 83951624, i32 538452160, i32 268701748, i32 134144, i32 83984384, i32 672145408, i32 2097204, i32 134144, i32 83984392, i32 672669696, i32 270532660, i32 33688576, i32 83984384, i32 672145536, i32 2101300, i32 33688576, i32 83984392, i32 672669824, i32 270536756, i32 150528, i32 83984384, i32 672145472, i32 2359348, i32 150528, i32 83984392, i32 672669760, i32 270794804, i32 33704960, i32 83984384, i32 672145600, i32 2363444, i32 33704960, i32 83984392, i32 672669888, i32 270798900], [1024 x i8] zeroinitializer }, align 32
@pc1 = internal constant { [256 x i8], [64 x i8] } { [256 x i8] c"\00\00@\04\10\10P\14\04@DD\14PTT\02\02B\06\12\12R\16\06BFF\16RVV\80\08\C0\0C\90\18\D0\1C\84H\C4L\94X\D4\\\82\0A\C2\0E\92\1A\D2\1E\86J\C6N\96Z\D6^  `$00p4$`dd4ptt\22\22b&22r6&bff6rvv\A0(\E0,\B08\F0<\A4h\E4l\B4x\F4|\A2*\E2.\B2:\F2>\A6j\E6n\B6z\F6~\08\80H\84\18\90X\94\0C\C0L\C4\1C\D0\\\D4\0A\82J\86\1A\92Z\96\0E\C2N\C6\1E\D2^\D6\88\88\C8\8C\98\98\D8\9C\8C\C8\CC\CC\9C\D8\DC\DC\8A\8A\CA\8E\9A\9A\DA\9E\8E\CA\CE\CE\9E\DA\DE\DE(\A0h\A48\B0x\B4,\E0l\E4<\F0|\F4*\A2j\A6:\B2z\B6.\E2n\E6>\F2~\F6\A8\A8\E8\AC\B8\B8\F8\BC\AC\E8\EC\EC\BC\F8\FC\FC\AA\AA\EA\AE\BA\BA\FA\BE\AE\EA\EE\EE\BE\FA\FE\FE", [64 x i8] zeroinitializer }, align 32
@rs = internal constant { [256 x i8], [64 x i8] } { [256 x i8] c"\00\00\80\80\02\02\82\82\04\04\84\84\06\06\86\86\08\08\88\88\0A\0A\8A\8A\0C\0C\8C\8C\0E\0E\8E\8E\10\10\90\90\12\12\92\92\14\14\94\94\16\16\96\96\18\18\98\98\1A\1A\9A\9A\1C\1C\9C\9C\1E\1E\9E\9E  \A0\A0\22\22\A2\A2$$\A4\A4&&\A6\A6((\A8\A8**\AA\AA,,\AC\AC..\AE\AE00\B0\B022\B2\B244\B4\B466\B6\B688\B8\B8::\BA\BA<<\BC\BC>>\BE\BE@@\C0\C0BB\C2\C2DD\C4\C4FF\C6\C6HH\C8\C8JJ\CA\CALL\CC\CCNN\CE\CEPP\D0\D0RR\D2\D2TT\D4\D4VV\D6\D6XX\D8\D8ZZ\DA\DA\\\\\DC\DC^^\DE\DE``\E0\E0bb\E2\E2dd\E4\E4ff\E6\E6hh\E8\E8jj\EA\EAll\EC\ECnn\EE\EEpp\F0\F0rr\F2\F2tt\F4\F4vv\F6\F6xx\F8\F8zz\FA\FA||\FC\FC~~\FE\FE", [64 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [3 x i8] c"S8\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 495, i32 18 }
@___asan_gen_.4 = private unnamed_addr constant [3 x i8] c"S6\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 457, i32 18 }
@___asan_gen_.7 = private unnamed_addr constant [3 x i8] c"S7\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 476, i32 18 }
@___asan_gen_.10 = private unnamed_addr constant [3 x i8] c"S5\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 438, i32 18 }
@___asan_gen_.13 = private unnamed_addr constant [3 x i8] c"S4\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 419, i32 18 }
@___asan_gen_.16 = private unnamed_addr constant [3 x i8] c"S2\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 381, i32 18 }
@___asan_gen_.19 = private unnamed_addr constant [3 x i8] c"S3\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 400, i32 18 }
@___asan_gen_.22 = private unnamed_addr constant [3 x i8] c"S1\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 362, i32 18 }
@___asan_gen_.25 = private unnamed_addr constant [4 x i8] c"pc2\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 100, i32 18 }
@___asan_gen_.28 = private unnamed_addr constant [4 x i8] c"pc1\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 30, i32 17 }
@___asan_gen_.31 = private unnamed_addr constant [3 x i8] c"rs\00", align 1
@___asan_gen_.32 = private constant [20 x i8] c"../lib/crypto/des.c\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 65, i32 17 }
@llvm.compiler.used = appending global [19 x ptr] [ptr @__UNIQUE_ID_file173, ptr @__UNIQUE_ID_license174, ptr @__ksymtab_des3_ede_decrypt, ptr @__ksymtab_des3_ede_encrypt, ptr @__ksymtab_des3_ede_expand_key, ptr @__ksymtab_des_decrypt, ptr @__ksymtab_des_encrypt, ptr @__ksymtab_des_expand_key, ptr @S8, ptr @S6, ptr @S7, ptr @S5, ptr @S4, ptr @S2, ptr @S3, ptr @S1, ptr @pc2, ptr @pc1, ptr @rs], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @S8 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @S6 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @S7 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @S5 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @S4 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @S2 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @S3 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @S1 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pc2 to i32), i32 4096, i32 5120, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pc1 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rs to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @des_expand_key(ptr noundef %ctx, ptr nocapture noundef readonly %key, i32 noundef %keylen) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %keylen)
  %cmp.not = icmp eq i32 %keylen, 8
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call fastcc i32 @des_ekey(ptr noundef %ctx, ptr noundef %key)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %cond = select i1 %tobool.not, i32 -126, i32 0
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %cond, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @des_ekey(ptr noundef %pe, ptr nocapture noundef readonly %k) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr i8, ptr %k, i32 4
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %2 = shl i8 %1, 4
  %3 = and i8 %2, -32
  %4 = ptrtoint ptr %k to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %k, align 1
  %6 = and i8 %5, 30
  %or1155 = or i8 %3, %6
  %or = zext i8 %or1155 to i32
  %arrayidx4 = getelementptr [256 x i8], ptr @pc1, i32 0, i32 %or
  %7 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx4, align 1
  %conv5 = zext i8 %8 to i32
  %arrayidx6 = getelementptr i8, ptr %k, i32 5
  %9 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx6, align 1
  %11 = shl i8 %10, 4
  %12 = and i8 %11, -32
  %arrayidx10 = getelementptr i8, ptr %k, i32 1
  %13 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx10, align 1
  %15 = and i8 %14, 30
  %or131156 = or i8 %12, %15
  %or13 = zext i8 %or131156 to i32
  %arrayidx14 = getelementptr [256 x i8], ptr @pc1, i32 0, i32 %or13
  %16 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx14, align 1
  %conv15 = zext i8 %17 to i32
  %arrayidx16 = getelementptr i8, ptr %k, i32 6
  %18 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx16, align 1
  %20 = shl i8 %19, 4
  %21 = and i8 %20, -32
  %arrayidx20 = getelementptr i8, ptr %k, i32 2
  %22 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx20, align 1
  %24 = and i8 %23, 30
  %or231157 = or i8 %21, %24
  %or23 = zext i8 %or231157 to i32
  %arrayidx24 = getelementptr [256 x i8], ptr @pc1, i32 0, i32 %or23
  %25 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx24, align 1
  %conv25 = zext i8 %26 to i32
  %arrayidx26 = getelementptr i8, ptr %k, i32 7
  %27 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx26, align 1
  %29 = shl i8 %28, 4
  %30 = and i8 %29, -32
  %arrayidx30 = getelementptr i8, ptr %k, i32 3
  %31 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx30, align 1
  %33 = and i8 %32, 30
  %or331158 = or i8 %30, %33
  %or33 = zext i8 %or331158 to i32
  %arrayidx34 = getelementptr [256 x i8], ptr @pc1, i32 0, i32 %or33
  %34 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx34, align 1
  %conv35 = zext i8 %35 to i32
  %mul = shl nuw nsw i32 %conv5, 1
  %add = add nuw nsw i32 %mul, 3
  %arrayidx36 = getelementptr i32, ptr @pc2, i32 %add
  %36 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx36, align 4
  %mul37 = shl nuw nsw i32 %conv15, 1
  %add38 = add nuw nsw i32 %mul37, 2
  %arrayidx39 = getelementptr i32, ptr @pc2, i32 %add38
  %38 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx39, align 4
  %or40 = or i32 %39, %37
  %mul41 = shl nuw nsw i32 %conv25, 1
  %add42 = or i32 %mul41, 1
  %arrayidx43 = getelementptr i32, ptr @pc2, i32 %add42
  %40 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx43, align 4
  %or44 = or i32 %or40, %41
  %mul45 = shl nuw nsw i32 %conv35, 1
  %arrayidx47 = getelementptr i32, ptr @pc2, i32 %mul45
  %42 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx47, align 4
  %or48 = or i32 %or44, %43
  %arrayidx49 = getelementptr i32, ptr %pe, i32 30
  %44 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %or48, ptr %arrayidx49, align 4
  %arrayidx50 = getelementptr [256 x i8], ptr @rs, i32 0, i32 %conv5
  %45 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx50, align 1
  %conv51 = zext i8 %46 to i32
  %add53 = add nuw nsw i32 %mul37, 3
  %arrayidx54 = getelementptr i32, ptr @pc2, i32 %add53
  %47 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx54, align 4
  %add56 = add nuw nsw i32 %mul41, 2
  %arrayidx57 = getelementptr i32, ptr @pc2, i32 %add56
  %49 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx57, align 4
  %or58 = or i32 %50, %48
  %add60 = or i32 %mul45, 1
  %arrayidx61 = getelementptr i32, ptr @pc2, i32 %add60
  %51 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx61, align 4
  %or62 = or i32 %or58, %52
  %mul63 = shl nuw nsw i32 %conv51, 1
  %arrayidx65 = getelementptr i32, ptr @pc2, i32 %mul63
  %53 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx65, align 4
  %or66 = or i32 %or62, %54
  %arrayidx67 = getelementptr i32, ptr %pe, i32 28
  %55 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %or66, ptr %arrayidx67, align 4
  %arrayidx68 = getelementptr [256 x i8], ptr @rs, i32 0, i32 %conv15
  %56 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx68, align 1
  %conv69 = zext i8 %57 to i32
  %arrayidx70 = getelementptr [256 x i8], ptr @rs, i32 0, i32 %conv25
  %58 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx70, align 1
  %conv71 = zext i8 %59 to i32
  %add73 = add nuw nsw i32 %mul45, 3
  %arrayidx74 = getelementptr i32, ptr @pc2, i32 %add73
  %60 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx74, align 4
  %add76 = add nuw nsw i32 %mul63, 2
  %arrayidx77 = getelementptr i32, ptr @pc2, i32 %add76
  %62 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx77, align 4
  %or78 = or i32 %63, %61
  %mul79 = shl nuw nsw i32 %conv69, 1
  %add80 = or i32 %mul79, 1
  %arrayidx81 = getelementptr i32, ptr @pc2, i32 %add80
  %64 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx81, align 4
  %or82 = or i32 %or78, %65
  %mul83 = shl nuw nsw i32 %conv71, 1
  %arrayidx85 = getelementptr i32, ptr @pc2, i32 %mul83
  %66 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx85, align 4
  %or86 = or i32 %or82, %67
  %arrayidx87 = getelementptr i32, ptr %pe, i32 26
  %68 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %or86, ptr %arrayidx87, align 4
  %arrayidx88 = getelementptr [256 x i8], ptr @rs, i32 0, i32 %conv35
  %69 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %arrayidx88, align 1
  %conv89 = zext i8 %70 to i32
  %arrayidx90 = getelementptr [256 x i8], ptr @rs, i32 0, i32 %conv51
  %71 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %arrayidx90, align 1
  %conv91 = zext i8 %72 to i32
  %add93 = add nuw nsw i32 %mul79, 3
  %arrayidx94 = getelementptr i32, ptr @pc2, i32 %add93
  %73 = ptrtoint ptr %arrayidx94 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx94, align 4
  %add96 = add nuw nsw i32 %mul83, 2
  %arrayidx97 = getelementptr i32, ptr @pc2, i32 %add96
  %75 = ptrtoint ptr %arrayidx97 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %arrayidx97, align 4
  %or98 = or i32 %76, %74
  %mul99 = shl nuw nsw i32 %conv89, 1
  %add100 = or i32 %mul99, 1
  %arrayidx101 = getelementptr i32, ptr @pc2, i32 %add100
  %77 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %arrayidx101, align 4
  %or102 = or i32 %or98, %78
  %mul103 = shl nuw nsw i32 %conv91, 1
  %arrayidx105 = getelementptr i32, ptr @pc2, i32 %mul103
  %79 = ptrtoint ptr %arrayidx105 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %arrayidx105, align 4
  %or106 = or i32 %or102, %80
  %arrayidx107 = getelementptr i32, ptr %pe, i32 24
  %81 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %or106, ptr %arrayidx107, align 4
  %arrayidx108 = getelementptr [256 x i8], ptr @rs, i32 0, i32 %conv69
  %82 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %arrayidx108, align 1
  %conv109 = zext i8 %83 to i32
  %arrayidx110 = getelementptr [256 x i8], ptr @rs, i32 0, i32 %conv71
  %84 = ptrtoint ptr %arrayidx110 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %arrayidx110, align 1
  %conv111 = zext i8 %85 to i32
  %add113 = add nuw nsw i32 %mul99, 3
  %arrayidx114 = getelementptr i32, ptr @pc2, i32 %add113
  %86 = ptrtoint ptr %arrayidx114 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %arrayidx114, align 4
  %add116 = add nuw nsw i32 %mul103, 2
  %arrayidx117 = getelementptr i32, ptr @pc2, i32 %add116
  %88 = ptrtoint ptr %arrayidx117 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %arrayidx117, align 4
  %or118 = or i32 %89, %87
  %mul119 = shl nuw nsw i32 %conv109, 1
  %add120 = or i32 %mul119, 1
  %arrayidx121 = getelementptr i32, ptr @pc2, i32 %add120
  %90 = ptrtoint ptr %arrayidx121 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %arrayidx121, align 4
  %or122 = or i32 %or118, %91
  %mul123 = shl nuw nsw i32 %conv111, 1
  %arrayidx125 = getelementptr i32, ptr @pc2, i32 %mul123
  %92 = ptrtoint ptr %arrayidx125 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %arrayidx125, align 4
  %or126 = or i32 %or122, %93
  %arrayidx127 = getelementptr i32, ptr %pe, i32 22
  %94 = ptrtoint ptr %arrayidx127 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %or126, ptr %arrayidx127, align 4
  %arrayidx128 = getelementptr [256 x i8], ptr @rs, i32 0, i32 %conv89
  %95 = ptrtoint ptr %arrayidx128 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %arrayidx128, align 1
  %conv129 = zext i8 %96 to i32
  %arrayidx130 = getelementptr [256 x i8], ptr @rs, i32 0, i32 %conv91
  %97 = ptrtoint ptr %arrayidx130 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %arrayidx130, align 1
  %conv131 = zext i8 %98 to i32
  %add133 = add nuw nsw i32 %mul119, 3
  %arrayidx134 = getelementptr i32, ptr @pc2, i32 %add133
  %99 = ptrtoint ptr %arrayidx134 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %arrayidx134, align 4
  %add136 = add nuw nsw i32 %mul123, 2
  %arrayidx137 = getelementptr i32, ptr @pc2, i32 %add136
  %101 = ptrtoint ptr %arrayidx137 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %arrayidx137, align 4
  %or138 = or i32 %102, %100
  %mul139 = shl nuw nsw i32 %conv129, 1
  %add140 = or i32 %mul139, 1
  %arrayidx141 = getelementptr i32, ptr @pc2, i32 %add140
  %103 = ptrtoint ptr %arrayidx141 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %arrayidx141, align 4
  %or142 = or i32 %or138, %104
  %mul143 = shl nuw nsw i32 %conv131, 1
  %arrayidx145 = getelementptr i32, ptr @pc2, i32 %mul143
  %105 = ptrtoint ptr %arrayidx145 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %arrayidx145, align 4
  %or146 = or i32 %or142, %106
  %arrayidx147 = getelementptr i32, ptr %pe, i32 20
  %107 = ptrtoint ptr %arrayidx147 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %or146, ptr %arrayidx147, align 4
  %arrayidx148 = getelementptr [256 x i8], ptr @rs, i32 0, i32 %conv109
  %108 = ptrtoint ptr %arrayidx148 to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %arrayidx148, align 1
  %conv149 = zext i8 %109 to i32
  %arrayidx150 = getelementptr [256 x i8], ptr @rs, i32 0, i32 %conv111
  %110 = ptrtoint ptr %arrayidx150 to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %arrayidx150, align 1
  %conv151 = zext i8 %111 to i32
  %add153 = add nuw nsw i32 %mul139, 3
  %arrayidx154 = getelementptr i32, ptr @pc2, i32 %add153
  %112 = ptrtoint ptr %arrayidx154 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %arrayidx154, align 4
  %add156 = add nuw nsw i32 %mul143, 2
  %arrayidx157 = getelementptr i32, ptr @pc2, i32 %add156
  %114 = ptrtoint ptr %arrayidx157 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %arrayidx157, align 4
  %or158 = or i32 %115, %113
  %mul159 = shl nuw nsw i32 %conv149, 1
  %add160 = or i32 %mul159, 1
  %arrayidx161 = getelementptr i32, ptr @pc2, i32 %add160
  %116 = ptrtoint ptr %arrayidx161 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %arrayidx161, align 4
  %or162 = or i32 %or158, %117
  %mul163 = shl nuw nsw i32 %conv151, 1
  %arrayidx165 = getelementptr i32, ptr @pc2, i32 %mul163
  %118 = ptrtoint ptr %arrayidx165 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %arrayidx165, align 4
  %or166 = or i32 %or162, %119
  %arrayidx167 = getelementptr i32, ptr %pe, i32 18
  %120 = ptrtoint ptr %arrayidx167 to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %or166, ptr %arrayidx167, align 4
  %arrayidx168 = getelementptr [256 x i8], ptr @rs, i32 0, i32 %conv129
  %121 = ptrtoint ptr %arrayidx168 to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %arrayidx168, align 1
  %conv169 = zext i8 %122 to i32
  %arrayidx170 = getelementptr [256 x i8], ptr @rs, i32 0, i32 %conv131
  %123 = ptrtoint ptr %arrayidx170 to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %arrayidx170, align 1
  %conv171 = zext i8 %124 to i32
  %add173 = add nuw nsw i32 %mul159, 3
  %arrayidx174 = getelementptr i32, ptr @pc2, i32 %add173
  %125 = ptrtoint ptr %arrayidx174 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %arrayidx174, align 4
  %add176 = add nuw nsw i32 %mul163, 2
  %arrayidx177 = getelementptr i32, ptr @pc2, i32 %add176
  %127 = ptrtoint ptr %arrayidx177 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %arrayidx177, align 4
  %or178 = or i32 %128, %126
  %mul179 = shl nuw nsw i32 %conv169, 1
  %add180 = or i32 %mul179, 1
  %arrayidx181 = getelementptr i32, ptr @pc2, i32 %add180
  %129 = ptrtoint ptr %arrayidx181 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %arrayidx181, align 4
  %or182 = or i32 %or178, %130
  %mul183 = shl nuw nsw i32 %conv171, 1
  %arrayidx185 = getelementptr i32, ptr @pc2, i32 %mul183
  %131 = ptrtoint ptr %arrayidx185 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %arrayidx185, align 4
  %or186 = or i32 %or182, %132
  %arrayidx187 = getelementptr i32, ptr %pe, i32 16
  %133 = ptrtoint ptr %arrayidx187 to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %or186, ptr %arrayidx187, align 4
  %arrayidx188 = getelementptr [256 x i8], ptr @rs, i32 0, i32 %conv149
  %134 = ptrtoint ptr %arrayidx188 to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %arrayidx188, align 1
  %conv189 = zext i8 %135 to i32
  %add191 = add nuw nsw i32 %mul163, 3
  %arrayidx192 = getelementptr i32, ptr @pc2, i32 %add191
  %136 = ptrtoint ptr %arrayidx192 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %arrayidx192, align 4
  %add194 = add nuw nsw i32 %mul179, 2
  %arrayidx195 = getelementptr i32, ptr @pc2, i32 %add194
  %138 = ptrtoint ptr %arrayidx195 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %arrayidx195, align 4
  %or196 = or i32 %139, %137
  %add198 = or i32 %mul183, 1
  %arrayidx199 = getelementptr i32, ptr @pc2, i32 %add198
  %140 = ptrtoint ptr %arrayidx199 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %arrayidx199, align 4
  %or200 = or i32 %or196, %141
  %mul201 = shl nuw nsw i32 %conv189, 1
  %arrayidx203 = getelementptr i32, ptr @pc2, i32 %mul201
  %142 = ptrtoint ptr %arrayidx203 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %arrayidx203, align 4
  %or204 = or i32 %or200, %143
  %arrayidx205 = getelementptr i32, ptr %pe, i32 14
  %144 = ptrtoint ptr %arrayidx205 to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %or204, ptr %arrayidx205, align 4
  %arrayidx206 = getelementptr [256 x i8], ptr @rs, i32 0, i32 %conv151
  %145 = ptrtoint ptr %arrayidx206 to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %arrayidx206, align 1
  %conv207 = zext i8 %146 to i32
  %arrayidx208 = getelementptr [256 x i8], ptr @rs, i32 0, i32 %conv169
  %147 = ptrtoint ptr %arrayidx208 to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %arrayidx208, align 1
  %conv209 = zext i8 %148 to i32
  %add211 = add nuw nsw i32 %mul183, 3
  %arrayidx212 = getelementptr i32, ptr @pc2, i32 %add211
  %149 = ptrtoint ptr %arrayidx212 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %arrayidx212, align 4
  %add214 = add nuw nsw i32 %mul201, 2
  %arrayidx215 = getelementptr i32, ptr @pc2, i32 %add214
  %151 = ptrtoint ptr %arrayidx215 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %arrayidx215, align 4
  %or216 = or i32 %152, %150
  %mul217 = shl nuw nsw i32 %conv207, 1
  %add218 = or i32 %mul217, 1
  %arrayidx219 = getelementptr i32, ptr @pc2, i32 %add218
  %153 = ptrtoint ptr %arrayidx219 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %arrayidx219, align 4
  %or220 = or i32 %or216, %154
  %mul221 = shl nuw nsw i32 %conv209, 1
  %arrayidx223 = getelementptr i32, ptr @pc2, i32 %mul221
  %155 = ptrtoint ptr %arrayidx223 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %arrayidx223, align 4
  %or224 = or i32 %or220, %156
  %arrayidx225 = getelementptr i32, ptr %pe, i32 12
  %157 = ptrtoint ptr %arrayidx225 to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 %or224, ptr %arrayidx225, align 4
  %arrayidx226 = getelementptr [256 x i8], ptr @rs, i32 0, i32 %conv171
  %158 = ptrtoint ptr %arrayidx226 to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %arrayidx226, align 1
  %conv227 = zext i8 %159 to i32
  %arrayidx228 = getelementptr [256 x i8], ptr @rs, i32 0, i32 %conv189
  %160 = ptrtoint ptr %arrayidx228 to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %arrayidx228, align 1
  %conv229 = zext i8 %161 to i32
  %add231 = add nuw nsw i32 %mul217, 3
  %arrayidx232 = getelementptr i32, ptr @pc2, i32 %add231
  %162 = ptrtoint ptr %arrayidx232 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %arrayidx232, align 4
  %add234 = add nuw nsw i32 %mul221, 2
  %arrayidx235 = getelementptr i32, ptr @pc2, i32 %add234
  %164 = ptrtoint ptr %arrayidx235 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %arrayidx235, align 4
  %or236 = or i32 %165, %163
  %mul237 = shl nuw nsw i32 %conv227, 1
  %add238 = or i32 %mul237, 1
  %arrayidx239 = getelementptr i32, ptr @pc2, i32 %add238
  %166 = ptrtoint ptr %arrayidx239 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %arrayidx239, align 4
  %or240 = or i32 %or236, %167
  %mul241 = shl nuw nsw i32 %conv229, 1
  %arrayidx243 = getelementptr i32, ptr @pc2, i32 %mul241
  %168 = ptrtoint ptr %arrayidx243 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %arrayidx243, align 4
  %or244 = or i32 %or240, %169
  %arrayidx245 = getelementptr i32, ptr %pe, i32 10
  %170 = ptrtoint ptr %arrayidx245 to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 %or244, ptr %arrayidx245, align 4
  %arrayidx246 = getelementptr [256 x i8], ptr @rs, i32 0, i32 %conv207
  %171 = ptrtoint ptr %arrayidx246 to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %arrayidx246, align 1
  %conv247 = zext i8 %172 to i32
  %arrayidx248 = getelementptr [256 x i8], ptr @rs, i32 0, i32 %conv209
  %173 = ptrtoint ptr %arrayidx248 to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %arrayidx248, align 1
  %conv249 = zext i8 %174 to i32
  %add251 = add nuw nsw i32 %mul237, 3
  %arrayidx252 = getelementptr i32, ptr @pc2, i32 %add251
  %175 = ptrtoint ptr %arrayidx252 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %arrayidx252, align 4
  %add254 = add nuw nsw i32 %mul241, 2
  %arrayidx255 = getelementptr i32, ptr @pc2, i32 %add254
  %177 = ptrtoint ptr %arrayidx255 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %arrayidx255, align 4
  %or256 = or i32 %178, %176
  %mul257 = shl nuw nsw i32 %conv247, 1
  %add258 = or i32 %mul257, 1
  %arrayidx259 = getelementptr i32, ptr @pc2, i32 %add258
  %179 = ptrtoint ptr %arrayidx259 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %arrayidx259, align 4
  %or260 = or i32 %or256, %180
  %mul261 = shl nuw nsw i32 %conv249, 1
  %arrayidx263 = getelementptr i32, ptr @pc2, i32 %mul261
  %181 = ptrtoint ptr %arrayidx263 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %arrayidx263, align 4
  %or264 = or i32 %or260, %182
  %arrayidx265 = getelementptr i32, ptr %pe, i32 8
  %183 = ptrtoint ptr %arrayidx265 to i32
  call void @__asan_store4_noabort(i32 %183)
  store i32 %or264, ptr %arrayidx265, align 4
  %arrayidx266 = getelementptr [256 x i8], ptr @rs, i32 0, i32 %conv227
  %184 = ptrtoint ptr %arrayidx266 to i32
  call void @__asan_load1_noabort(i32 %184)
  %185 = load i8, ptr %arrayidx266, align 1
  %conv267 = zext i8 %185 to i32
  %arrayidx268 = getelementptr [256 x i8], ptr @rs, i32 0, i32 %conv229
  %186 = ptrtoint ptr %arrayidx268 to i32
  call void @__asan_load1_noabort(i32 %186)
  %187 = load i8, ptr %arrayidx268, align 1
  %conv269 = zext i8 %187 to i32
  %add271 = add nuw nsw i32 %mul257, 3
  %arrayidx272 = getelementptr i32, ptr @pc2, i32 %add271
  %188 = ptrtoint ptr %arrayidx272 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %arrayidx272, align 4
  %add274 = add nuw nsw i32 %mul261, 2
  %arrayidx275 = getelementptr i32, ptr @pc2, i32 %add274
  %190 = ptrtoint ptr %arrayidx275 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %arrayidx275, align 4
  %or276 = or i32 %191, %189
  %mul277 = shl nuw nsw i32 %conv267, 1
  %add278 = or i32 %mul277, 1
  %arrayidx279 = getelementptr i32, ptr @pc2, i32 %add278
  %192 = ptrtoint ptr %arrayidx279 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %arrayidx279, align 4
  %or280 = or i32 %or276, %193
  %mul281 = shl nuw nsw i32 %conv269, 1
  %arrayidx283 = getelementptr i32, ptr @pc2, i32 %mul281
  %194 = ptrtoint ptr %arrayidx283 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %arrayidx283, align 4
  %or284 = or i32 %or280, %195
  %arrayidx285 = getelementptr i32, ptr %pe, i32 6
  %196 = ptrtoint ptr %arrayidx285 to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 %or284, ptr %arrayidx285, align 4
  %arrayidx286 = getelementptr [256 x i8], ptr @rs, i32 0, i32 %conv247
  %197 = ptrtoint ptr %arrayidx286 to i32
  call void @__asan_load1_noabort(i32 %197)
  %198 = load i8, ptr %arrayidx286, align 1
  %conv287 = zext i8 %198 to i32
  %arrayidx288 = getelementptr [256 x i8], ptr @rs, i32 0, i32 %conv249
  %199 = ptrtoint ptr %arrayidx288 to i32
  call void @__asan_load1_noabort(i32 %199)
  %200 = load i8, ptr %arrayidx288, align 1
  %conv289 = zext i8 %200 to i32
  %add291 = add nuw nsw i32 %mul277, 3
  %arrayidx292 = getelementptr i32, ptr @pc2, i32 %add291
  %201 = ptrtoint ptr %arrayidx292 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %arrayidx292, align 4
  %add294 = add nuw nsw i32 %mul281, 2
  %arrayidx295 = getelementptr i32, ptr @pc2, i32 %add294
  %203 = ptrtoint ptr %arrayidx295 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %arrayidx295, align 4
  %or296 = or i32 %204, %202
  %mul297 = shl nuw nsw i32 %conv287, 1
  %add298 = or i32 %mul297, 1
  %arrayidx299 = getelementptr i32, ptr @pc2, i32 %add298
  %205 = ptrtoint ptr %arrayidx299 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %arrayidx299, align 4
  %or300 = or i32 %or296, %206
  %mul301 = shl nuw nsw i32 %conv289, 1
  %arrayidx303 = getelementptr i32, ptr @pc2, i32 %mul301
  %207 = ptrtoint ptr %arrayidx303 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %arrayidx303, align 4
  %or304 = or i32 %or300, %208
  %arrayidx305 = getelementptr i32, ptr %pe, i32 4
  %209 = ptrtoint ptr %arrayidx305 to i32
  call void @__asan_store4_noabort(i32 %209)
  store i32 %or304, ptr %arrayidx305, align 4
  %arrayidx306 = getelementptr [256 x i8], ptr @rs, i32 0, i32 %conv267
  %210 = ptrtoint ptr %arrayidx306 to i32
  call void @__asan_load1_noabort(i32 %210)
  %211 = load i8, ptr %arrayidx306, align 1
  %conv307 = zext i8 %211 to i32
  %arrayidx308 = getelementptr [256 x i8], ptr @rs, i32 0, i32 %conv269
  %212 = ptrtoint ptr %arrayidx308 to i32
  call void @__asan_load1_noabort(i32 %212)
  %213 = load i8, ptr %arrayidx308, align 1
  %conv309 = zext i8 %213 to i32
  %add311 = add nuw nsw i32 %mul297, 3
  %arrayidx312 = getelementptr i32, ptr @pc2, i32 %add311
  %214 = ptrtoint ptr %arrayidx312 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %arrayidx312, align 4
  %add314 = add nuw nsw i32 %mul301, 2
  %arrayidx315 = getelementptr i32, ptr @pc2, i32 %add314
  %216 = ptrtoint ptr %arrayidx315 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %arrayidx315, align 4
  %or316 = or i32 %217, %215
  %mul317 = shl nuw nsw i32 %conv307, 1
  %add318 = or i32 %mul317, 1
  %arrayidx319 = getelementptr i32, ptr @pc2, i32 %add318
  %218 = ptrtoint ptr %arrayidx319 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %arrayidx319, align 4
  %or320 = or i32 %or316, %219
  %mul321 = shl nuw nsw i32 %conv309, 1
  %arrayidx323 = getelementptr i32, ptr @pc2, i32 %mul321
  %220 = ptrtoint ptr %arrayidx323 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %arrayidx323, align 4
  %or324 = or i32 %or320, %221
  %arrayidx325 = getelementptr i32, ptr %pe, i32 2
  %222 = ptrtoint ptr %arrayidx325 to i32
  call void @__asan_store4_noabort(i32 %222)
  store i32 %or324, ptr %arrayidx325, align 4
  %arrayidx326 = getelementptr [256 x i8], ptr @rs, i32 0, i32 %conv287
  %223 = ptrtoint ptr %arrayidx326 to i32
  call void @__asan_load1_noabort(i32 %223)
  %224 = load i8, ptr %arrayidx326, align 1
  %conv327 = zext i8 %224 to i32
  %add329 = add nuw nsw i32 %mul301, 3
  %arrayidx330 = getelementptr i32, ptr @pc2, i32 %add329
  %225 = ptrtoint ptr %arrayidx330 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %arrayidx330, align 4
  %add332 = add nuw nsw i32 %mul317, 2
  %arrayidx333 = getelementptr i32, ptr @pc2, i32 %add332
  %227 = ptrtoint ptr %arrayidx333 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %arrayidx333, align 4
  %or334 = or i32 %228, %226
  %add336 = or i32 %mul321, 1
  %arrayidx337 = getelementptr i32, ptr @pc2, i32 %add336
  %229 = ptrtoint ptr %arrayidx337 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %arrayidx337, align 4
  %or338 = or i32 %or334, %230
  %mul339 = shl nuw nsw i32 %conv327, 1
  %arrayidx341 = getelementptr i32, ptr @pc2, i32 %mul339
  %231 = ptrtoint ptr %arrayidx341 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %arrayidx341, align 4
  %or342 = or i32 %or338, %232
  %233 = ptrtoint ptr %pe to i32
  call void @__asan_store4_noabort(i32 %233)
  store i32 %or342, ptr %pe, align 4
  %arrayidx346 = getelementptr [256 x i8], ptr @rs, i32 0, i32 %conv289
  %234 = ptrtoint ptr %arrayidx346 to i32
  call void @__asan_load1_noabort(i32 %234)
  %235 = load i8, ptr %arrayidx346, align 1
  %arrayidx350 = getelementptr [256 x i8], ptr @rs, i32 0, i32 %conv307
  %236 = ptrtoint ptr %arrayidx350 to i32
  call void @__asan_load1_noabort(i32 %236)
  %237 = load i8, ptr %arrayidx350, align 1
  %238 = load i8, ptr %k, align 1
  %239 = lshr i8 %238, 4
  %240 = load i8, ptr %arrayidx, align 1
  %241 = and i8 %240, -16
  %or3601166 = or i8 %239, %241
  %242 = or i8 %or3601166, 1
  %add361 = zext i8 %242 to i32
  %arrayidx362 = getelementptr [256 x i8], ptr @pc1, i32 0, i32 %add361
  %243 = ptrtoint ptr %arrayidx362 to i32
  call void @__asan_load1_noabort(i32 %243)
  %244 = load i8, ptr %arrayidx362, align 1
  %conv363 = zext i8 %244 to i32
  %245 = load i8, ptr %arrayidx10, align 1
  %246 = lshr i8 %245, 4
  %247 = load i8, ptr %arrayidx6, align 1
  %248 = and i8 %247, -16
  %or3711167 = or i8 %246, %248
  %249 = or i8 %or3711167, 1
  %add372 = zext i8 %249 to i32
  %arrayidx373 = getelementptr [256 x i8], ptr @pc1, i32 0, i32 %add372
  %250 = ptrtoint ptr %arrayidx373 to i32
  call void @__asan_load1_noabort(i32 %250)
  %251 = load i8, ptr %arrayidx373, align 1
  %conv374 = zext i8 %251 to i32
  %252 = load i8, ptr %arrayidx20, align 1
  %253 = lshr i8 %252, 4
  %254 = load i8, ptr %arrayidx16, align 1
  %255 = and i8 %254, -16
  %or3821168 = or i8 %253, %255
  %256 = or i8 %or3821168, 1
  %add383 = zext i8 %256 to i32
  %arrayidx384 = getelementptr [256 x i8], ptr @pc1, i32 0, i32 %add383
  %257 = ptrtoint ptr %arrayidx384 to i32
  call void @__asan_load1_noabort(i32 %257)
  %258 = load i8, ptr %arrayidx384, align 1
  %conv385 = zext i8 %258 to i32
  %259 = load i8, ptr %arrayidx30, align 1
  %260 = lshr i8 %259, 4
  %261 = load i8, ptr %arrayidx26, align 1
  %262 = and i8 %261, -16
  %or3931169 = or i8 %260, %262
  %263 = or i8 %or3931169, 1
  %add394 = zext i8 %263 to i32
  %arrayidx395 = getelementptr [256 x i8], ptr @pc1, i32 0, i32 %add394
  %264 = ptrtoint ptr %arrayidx395 to i32
  call void @__asan_load1_noabort(i32 %264)
  %265 = load i8, ptr %arrayidx395, align 1
  %conv396 = zext i8 %265 to i32
  %arrayidx400 = getelementptr [256 x i8], ptr @rs, i32 0, i32 %conv396
  %266 = ptrtoint ptr %arrayidx400 to i32
  call void @__asan_load1_noabort(i32 %266)
  %267 = load i8, ptr %arrayidx400, align 1
  %arrayidx404 = getelementptr [256 x i8], ptr @rs, i32 0, i32 %conv363
  %268 = ptrtoint ptr %arrayidx404 to i32
  call void @__asan_load1_noabort(i32 %268)
  %269 = load i8, ptr %arrayidx404, align 1
  %mul409 = shl nuw nsw i32 %conv363, 1
  %add410 = add nuw nsw i32 %mul409, 3
  %arrayidx411 = getelementptr i32, ptr getelementptr inbounds ([1024 x i32], ptr @pc2, i32 0, i32 512), i32 %add410
  %270 = ptrtoint ptr %arrayidx411 to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load i32, ptr %arrayidx411, align 4
  %mul412 = shl nuw nsw i32 %conv374, 1
  %add413 = add nuw nsw i32 %mul412, 2
  %arrayidx414 = getelementptr i32, ptr getelementptr inbounds ([1024 x i32], ptr @pc2, i32 0, i32 512), i32 %add413
  %272 = ptrtoint ptr %arrayidx414 to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load i32, ptr %arrayidx414, align 4
  %or415 = or i32 %273, %271
  %mul416 = shl nuw nsw i32 %conv385, 1
  %add417 = or i32 %mul416, 1
  %arrayidx418 = getelementptr i32, ptr getelementptr inbounds ([1024 x i32], ptr @pc2, i32 0, i32 512), i32 %add417
  %274 = ptrtoint ptr %arrayidx418 to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load i32, ptr %arrayidx418, align 4
  %or419 = or i32 %or415, %275
  %mul420 = shl nuw nsw i32 %conv396, 1
  %arrayidx422 = getelementptr i32, ptr getelementptr inbounds ([1024 x i32], ptr @pc2, i32 0, i32 512), i32 %mul420
  %276 = ptrtoint ptr %arrayidx422 to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load i32, ptr %arrayidx422, align 4
  %or423 = or i32 %or419, %277
  %arrayidx424 = getelementptr i32, ptr %pe, i32 31
  %278 = ptrtoint ptr %arrayidx424 to i32
  call void @__asan_store4_noabort(i32 %278)
  store i32 %or423, ptr %arrayidx424, align 4
  %conv426 = zext i8 %269 to i32
  %add428 = add nuw nsw i32 %mul412, 3
  %arrayidx429 = getelementptr i32, ptr getelementptr inbounds ([1024 x i32], ptr @pc2, i32 0, i32 512), i32 %add428
  %279 = ptrtoint ptr %arrayidx429 to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load i32, ptr %arrayidx429, align 4
  %add431 = add nuw nsw i32 %mul416, 2
  %arrayidx432 = getelementptr i32, ptr getelementptr inbounds ([1024 x i32], ptr @pc2, i32 0, i32 512), i32 %add431
  %281 = ptrtoint ptr %arrayidx432 to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load i32, ptr %arrayidx432, align 4
  %or433 = or i32 %282, %280
  %add435 = or i32 %mul420, 1
  %arrayidx436 = getelementptr i32, ptr getelementptr inbounds ([1024 x i32], ptr @pc2, i32 0, i32 512), i32 %add435
  %283 = ptrtoint ptr %arrayidx436 to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load i32, ptr %arrayidx436, align 4
  %or437 = or i32 %or433, %284
  %mul438 = shl nuw nsw i32 %conv426, 1
  %arrayidx440 = getelementptr i32, ptr getelementptr inbounds ([1024 x i32], ptr @pc2, i32 0, i32 512), i32 %mul438
  %285 = ptrtoint ptr %arrayidx440 to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load i32, ptr %arrayidx440, align 4
  %or441 = or i32 %or437, %286
  %arrayidx442 = getelementptr i32, ptr %pe, i32 29
  %287 = ptrtoint ptr %arrayidx442 to i32
  call void @__asan_store4_noabort(i32 %287)
  store i32 %or441, ptr %arrayidx442, align 4
  %arrayidx443 = getelementptr [256 x i8], ptr @rs, i32 0, i32 %conv374
  %288 = ptrtoint ptr %arrayidx443 to i32
  call void @__asan_load1_noabort(i32 %288)
  %289 = load i8, ptr %arrayidx443, align 1
  %conv444 = zext i8 %289 to i32
  %arrayidx445 = getelementptr [256 x i8], ptr @rs, i32 0, i32 %conv385
  %290 = ptrtoint ptr %arrayidx445 to i32
  call void @__asan_load1_noabort(i32 %290)
  %291 = load i8, ptr %arrayidx445, align 1
  %conv446 = zext i8 %291 to i32
  %add448 = add nuw nsw i32 %mul420, 3
  %arrayidx449 = getelementptr i32, ptr getelementptr inbounds ([1024 x i32], ptr @pc2, i32 0, i32 512), i32 %add448
  %292 = ptrtoint ptr %arrayidx449 to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load i32, ptr %arrayidx449, align 4
  %add451 = add nuw nsw i32 %mul438, 2
  %arrayidx452 = getelementptr i32, ptr getelementptr inbounds ([1024 x i32], ptr @pc2, i32 0, i32 512), i32 %add451
  %294 = ptrtoint ptr %arrayidx452 to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load i32, ptr %arrayidx452, align 4
  %or453 = or i32 %295, %293
  %mul454 = shl nuw nsw i32 %conv444, 1
  %add455 = or i32 %mul454, 1
  %arrayidx456 = getelementptr i32, ptr getelementptr inbounds ([1024 x i32], ptr @pc2, i32 0, i32 512), i32 %add455
  %296 = ptrtoint ptr %arrayidx456 to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load i32, ptr %arrayidx456, align 4
  %or457 = or i32 %or453, %297
  %mul458 = shl nuw nsw i32 %conv446, 1
  %arrayidx460 = getelementptr i32, ptr getelementptr inbounds ([1024 x i32], ptr @pc2, i32 0, i32 512), i32 %mul458
  %298 = ptrtoint ptr %arrayidx460 to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load i32, ptr %arrayidx460, align 4
  %or461 = or i32 %or457, %299
  %arrayidx462 = getelementptr i32, ptr %pe, i32 27
  %300 = ptrtoint ptr %arrayidx462 to i32
  call void @__asan_store4_noabort(i32 %300)
  store i32 %or461, ptr %arrayidx462, align 4
  %conv464 = zext i8 %267 to i32
  %arrayidx465 = getelementptr [256 x i8], ptr @rs, i32 0, i32 %conv426
  %301 = ptrtoint ptr %arrayidx465 to i32
  call void @__asan_load1_noabort(i32 %301)
  %302 = load i8, ptr %arrayidx465, align 1
  %conv466 = zext i8 %302 to i32
  %add468 = add nuw nsw i32 %mul454, 3
  %arrayidx469 = getelementptr i32, ptr getelementptr inbounds ([1024 x i32], ptr @pc2, i32 0, i32 512), i32 %add468
  %303 = ptrtoint ptr %arrayidx469 to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load i32, ptr %arrayidx469, align 4
  %add471 = add nuw nsw i32 %mul458, 2
  %arrayidx472 = getelementptr i32, ptr getelementptr inbounds ([1024 x i32], ptr @pc2, i32 0, i32 512), i32 %add471
  %305 = ptrtoint ptr %arrayidx472 to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load i32, ptr %arrayidx472, align 4
  %or473 = or i32 %306, %304
  %mul474 = shl nuw nsw i32 %conv464, 1
  %add475 = or i32 %mul474, 1
  %arrayidx476 = getelementptr i32, ptr getelementptr inbounds ([1024 x i32], ptr @pc2, i32 0, i32 512), i32 %add475
  %307 = ptrtoint ptr %arrayidx476 to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load i32, ptr %arrayidx476, align 4
  %or477 = or i32 %or473, %308
  %mul478 = shl nuw nsw i32 %conv466, 1
  %arrayidx480 = getelementptr i32, ptr getelementptr inbounds ([1024 x i32], ptr @pc2, i32 0, i32 512), i32 %mul478
  %309 = ptrtoint ptr %arrayidx480 to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load i32, ptr %arrayidx480, align 4
  %or481 = or i32 %or477, %310
  %arrayidx482 = getelementptr i32, ptr %pe, i32 25
  %311 = ptrtoint ptr %arrayidx482 to i32
  call void @__asan_store4_noabort(i32 %311)
  store i32 %or481, ptr %arrayidx482, align 4
  %arrayidx483 = getelementptr [256 x i8], ptr @rs, i32 0, i32 %conv444
  %312 = ptrtoint ptr %arrayidx483 to i32
  call void @__asan_load1_noabort(i32 %312)
  %313 = load i8, ptr %arrayidx483, align 1
  %conv484 = zext i8 %313 to i32
  %arrayidx485 = getelementptr [256 x i8], ptr @rs, i32 0, i32 %conv446
  %314 = ptrtoint ptr %arrayidx485 to i32
  call void @__asan_load1_noabort(i32 %314)
  %315 = load i8, ptr %arrayidx485, align 1
  %conv486 = zext i8 %315 to i32
  %add488 = add nuw nsw i32 %mul474, 3
  %arrayidx489 = getelementptr i32, ptr getelementptr inbounds ([1024 x i32], ptr @pc2, i32 0, i32 512), i32 %add488
  %316 = ptrtoint ptr %arrayidx489 to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load i32, ptr %arrayidx489, align 4
  %add491 = add nuw nsw i32 %mul478, 2
  %arrayidx492 = getelementptr i32, ptr getelementptr inbounds ([1024 x i32], ptr @pc2, i32 0, i32 512), i32 %add491
  %318 = ptrtoint ptr %arrayidx492 to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load i32, ptr %arrayidx492, align 4
  %or493 = or i32 %319, %317
  %mul494 = shl nuw nsw i32 %conv484, 1
  %add495 = or i32 %mul494, 1
  %arrayidx496 = getelementptr i32, ptr getelementptr inbounds ([1024 x i32], ptr @pc2, i32 0, i32 512), i32 %add495
  %320 = ptrtoint ptr %arrayidx496 to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load i32, ptr %arrayidx496, align 4
  %or497 = or i32 %or493, %321
  %mul498 = shl nuw nsw i32 %conv486, 1
  %arrayidx500 = getelementptr i32, ptr getelementptr inbounds ([1024 x i32], ptr @pc2, i32 0, i32 512), i32 %mul498
  %322 = ptrtoint ptr %arrayidx500 to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load i32, ptr %arrayidx500, align 4
  %or501 = or i32 %or497, %323
  %arrayidx502 = getelementptr i32, ptr %pe, i32 23
  %324 = ptrtoint ptr %arrayidx502 to i32
  call void @__asan_store4_noabort(i32 %324)
  store i32 %or501, ptr %arrayidx502, align 4
  %arrayidx503 = getelementptr [256 x i8], ptr @rs, i32 0, i32 %conv464
  %325 = ptrtoint ptr %arrayidx503 to i32
  call void @__asan_load1_noabort(i32 %325)
  %326 = load i8, ptr %arrayidx503, align 1
  %conv504 = zext i8 %326 to i32
  %arrayidx505 = getelementptr [256 x i8], ptr @rs, i32 0, i32 %conv466
  %327 = ptrtoint ptr %arrayidx505 to i32
  call void @__asan_load1_noabort(i32 %327)
  %328 = load i8, ptr %arrayidx505, align 1
  %conv506 = zext i8 %328 to i32
  %add508 = add nuw nsw i32 %mul494, 3
  %arrayidx509 = getelementptr i32, ptr getelementptr inbounds ([1024 x i32], ptr @pc2, i32 0, i32 512), i32 %add508
  %329 = ptrtoint ptr %arrayidx509 to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load i32, ptr %arrayidx509, align 4
  %add511 = add nuw nsw i32 %mul498, 2
  %arrayidx512 = getelementptr i32, ptr getelementptr inbounds ([1024 x i32], ptr @pc2, i32 0, i32 512), i32 %add511
  %331 = ptrtoint ptr %arrayidx512 to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load i32, ptr %arrayidx512, align 4
  %or513 = or i32 %332, %330
  %mul514 = shl nuw nsw i32 %conv504, 1
  %add515 = or i32 %mul514, 1
  %arrayidx516 = getelementptr i32, ptr getelementptr inbounds ([1024 x i32], ptr @pc2, i32 0, i32 512), i32 %add515
  %333 = ptrtoint ptr %arrayidx516 to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load i32, ptr %arrayidx516, align 4
  %or517 = or i32 %or513, %334
  %mul518 = shl nuw nsw i32 %conv506, 1
  %arrayidx520 = getelementptr i32, ptr getelementptr inbounds ([1024 x i32], ptr @pc2, i32 0, i32 512), i32 %mul518
  %335 = ptrtoint ptr %arrayidx520 to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load i32, ptr %arrayidx520, align 4
  %or521 = or i32 %or517, %336
  %arrayidx522 = getelementptr i32, ptr %pe, i32 21
  %337 = ptrtoint ptr %arrayidx522 to i32
  call void @__asan_store4_noabort(i32 %337)
  store i32 %or521, ptr %arrayidx522, align 4
  %arrayidx523 = getelementptr [256 x i8], ptr @rs, i32 0, i32 %conv484
  %338 = ptrtoint ptr %arrayidx523 to i32
  call void @__asan_load1_noabort(i32 %338)
  %339 = load i8, ptr %arrayidx523, align 1
  %conv524 = zext i8 %339 to i32
  %arrayidx525 = getelementptr [256 x i8], ptr @rs, i32 0, i32 %conv486
  %340 = ptrtoint ptr %arrayidx525 to i32
  call void @__asan_load1_noabort(i32 %340)
  %341 = load i8, ptr %arrayidx525, align 1
  %conv526 = zext i8 %341 to i32
  %add528 = add nuw nsw i32 %mul514, 3
  %arrayidx529 = getelementptr i32, ptr getelementptr inbounds ([1024 x i32], ptr @pc2, i32 0, i32 512), i32 %add528
  %342 = ptrtoint ptr %arrayidx529 to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load i32, ptr %arrayidx529, align 4
  %add531 = add nuw nsw i32 %mul518, 2
  %arrayidx532 = getelementptr i32, ptr getelementptr inbounds ([1024 x i32], ptr @pc2, i32 0, i32 512), i32 %add531
  %344 = ptrtoint ptr %arrayidx532 to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load i32, ptr %arrayidx532, align 4
  %or533 = or i32 %345, %343
  %mul534 = shl nuw nsw i32 %conv524, 1
  %add535 = or i32 %mul534, 1
  %arrayidx536 = getelementptr i32, ptr getelementptr inbounds ([1024 x i32], ptr @pc2, i32 0, i32 512), i32 %add535
  %346 = ptrtoint ptr %arrayidx536 to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load i32, ptr %arrayidx536, align 4
  %or537 = or i32 %or533, %347
  %mul538 = shl nuw nsw i32 %conv526, 1
  %arrayidx540 = getelementptr i32, ptr getelementptr inbounds ([1024 x i32], ptr @pc2, i32 0, i32 512), i32 %mul538
  %348 = ptrtoint ptr %arrayidx540 to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load i32, ptr %arrayidx540, align 4
  %or541 = or i32 %or537, %349
  %arrayidx542 = getelementptr i32, ptr %pe, i32 19
  %350 = ptrtoint ptr %arrayidx542 to i32
  call void @__asan_store4_noabort(i32 %350)
  store i32 %or541, ptr %arrayidx542, align 4
  %arrayidx543 = getelementptr [256 x i8], ptr @rs, i32 0, i32 %conv504
  %351 = ptrtoint ptr %arrayidx543 to i32
  call void @__asan_load1_noabort(i32 %351)
  %352 = load i8, ptr %arrayidx543, align 1
  %conv544 = zext i8 %352 to i32
  %arrayidx545 = getelementptr [256 x i8], ptr @rs, i32 0, i32 %conv506
  %353 = ptrtoint ptr %arrayidx545 to i32
  call void @__asan_load1_noabort(i32 %353)
  %354 = load i8, ptr %arrayidx545, align 1
  %conv546 = zext i8 %354 to i32
  %add548 = add nuw nsw i32 %mul534, 3
  %arrayidx549 = getelementptr i32, ptr getelementptr inbounds ([1024 x i32], ptr @pc2, i32 0, i32 512), i32 %add548
  %355 = ptrtoint ptr %arrayidx549 to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load i32, ptr %arrayidx549, align 4
  %add551 = add nuw nsw i32 %mul538, 2
  %arrayidx552 = getelementptr i32, ptr getelementptr inbounds ([1024 x i32], ptr @pc2, i32 0, i32 512), i32 %add551
  %357 = ptrtoint ptr %arrayidx552 to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load i32, ptr %arrayidx552, align 4
  %or553 = or i32 %358, %356
  %mul554 = shl nuw nsw i32 %conv544, 1
  %add555 = or i32 %mul554, 1
  %arrayidx556 = getelementptr i32, ptr getelementptr inbounds ([1024 x i32], ptr @pc2, i32 0, i32 512), i32 %add555
  %359 = ptrtoint ptr %arrayidx556 to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load i32, ptr %arrayidx556, align 4
  %or557 = or i32 %or553, %360
  %mul558 = shl nuw nsw i32 %conv546, 1
  %arrayidx560 = getelementptr i32, ptr getelementptr inbounds ([1024 x i32], ptr @pc2, i32 0, i32 512), i32 %mul558
  %361 = ptrtoint ptr %arrayidx560 to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load i32, ptr %arrayidx560, align 4
  %or561 = or i32 %or557, %362
  %arrayidx562 = getelementptr i32, ptr %pe, i32 17
  %363 = ptrtoint ptr %arrayidx562 to i32
  call void @__asan_store4_noabort(i32 %363)
  store i32 %or561, ptr %arrayidx562, align 4
  %arrayidx563 = getelementptr [256 x i8], ptr @rs, i32 0, i32 %conv524
  %364 = ptrtoint ptr %arrayidx563 to i32
  call void @__asan_load1_noabort(i32 %364)
  %365 = load i8, ptr %arrayidx563, align 1
  %conv564 = zext i8 %365 to i32
  %add566 = add nuw nsw i32 %mul538, 3
  %arrayidx567 = getelementptr i32, ptr getelementptr inbounds ([1024 x i32], ptr @pc2, i32 0, i32 512), i32 %add566
  %366 = ptrtoint ptr %arrayidx567 to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load i32, ptr %arrayidx567, align 4
  %add569 = add nuw nsw i32 %mul554, 2
  %arrayidx570 = getelementptr i32, ptr getelementptr inbounds ([1024 x i32], ptr @pc2, i32 0, i32 512), i32 %add569
  %368 = ptrtoint ptr %arrayidx570 to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load i32, ptr %arrayidx570, align 4
  %or571 = or i32 %369, %367
  %add573 = or i32 %mul558, 1
  %arrayidx574 = getelementptr i32, ptr getelementptr inbounds ([1024 x i32], ptr @pc2, i32 0, i32 512), i32 %add573
  %370 = ptrtoint ptr %arrayidx574 to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load i32, ptr %arrayidx574, align 4
  %or575 = or i32 %or571, %371
  %mul576 = shl nuw nsw i32 %conv564, 1
  %arrayidx578 = getelementptr i32, ptr getelementptr inbounds ([1024 x i32], ptr @pc2, i32 0, i32 512), i32 %mul576
  %372 = ptrtoint ptr %arrayidx578 to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load i32, ptr %arrayidx578, align 4
  %or579 = or i32 %or575, %373
  %arrayidx580 = getelementptr i32, ptr %pe, i32 15
  %374 = ptrtoint ptr %arrayidx580 to i32
  call void @__asan_store4_noabort(i32 %374)
  store i32 %or579, ptr %arrayidx580, align 4
  %arrayidx581 = getelementptr [256 x i8], ptr @rs, i32 0, i32 %conv526
  %375 = ptrtoint ptr %arrayidx581 to i32
  call void @__asan_load1_noabort(i32 %375)
  %376 = load i8, ptr %arrayidx581, align 1
  %conv582 = zext i8 %376 to i32
  %arrayidx583 = getelementptr [256 x i8], ptr @rs, i32 0, i32 %conv544
  %377 = ptrtoint ptr %arrayidx583 to i32
  call void @__asan_load1_noabort(i32 %377)
  %378 = load i8, ptr %arrayidx583, align 1
  %conv584 = zext i8 %378 to i32
  %add586 = add nuw nsw i32 %mul558, 3
  %arrayidx587 = getelementptr i32, ptr getelementptr inbounds ([1024 x i32], ptr @pc2, i32 0, i32 512), i32 %add586
  %379 = ptrtoint ptr %arrayidx587 to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load i32, ptr %arrayidx587, align 4
  %add589 = add nuw nsw i32 %mul576, 2
  %arrayidx590 = getelementptr i32, ptr getelementptr inbounds ([1024 x i32], ptr @pc2, i32 0, i32 512), i32 %add589
  %381 = ptrtoint ptr %arrayidx590 to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load i32, ptr %arrayidx590, align 4
  %or591 = or i32 %382, %380
  %mul592 = shl nuw nsw i32 %conv582, 1
  %add593 = or i32 %mul592, 1
  %arrayidx594 = getelementptr i32, ptr getelementptr inbounds ([1024 x i32], ptr @pc2, i32 0, i32 512), i32 %add593
  %383 = ptrtoint ptr %arrayidx594 to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load i32, ptr %arrayidx594, align 4
  %or595 = or i32 %or591, %384
  %mul596 = shl nuw nsw i32 %conv584, 1
  %arrayidx598 = getelementptr i32, ptr getelementptr inbounds ([1024 x i32], ptr @pc2, i32 0, i32 512), i32 %mul596
  %385 = ptrtoint ptr %arrayidx598 to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load i32, ptr %arrayidx598, align 4
  %or599 = or i32 %or595, %386
  %arrayidx600 = getelementptr i32, ptr %pe, i32 13
  %387 = ptrtoint ptr %arrayidx600 to i32
  call void @__asan_store4_noabort(i32 %387)
  store i32 %or599, ptr %arrayidx600, align 4
  %arrayidx601 = getelementptr [256 x i8], ptr @rs, i32 0, i32 %conv546
  %388 = ptrtoint ptr %arrayidx601 to i32
  call void @__asan_load1_noabort(i32 %388)
  %389 = load i8, ptr %arrayidx601, align 1
  %conv602 = zext i8 %389 to i32
  %arrayidx603 = getelementptr [256 x i8], ptr @rs, i32 0, i32 %conv564
  %390 = ptrtoint ptr %arrayidx603 to i32
  call void @__asan_load1_noabort(i32 %390)
  %391 = load i8, ptr %arrayidx603, align 1
  %conv604 = zext i8 %391 to i32
  %add606 = add nuw nsw i32 %mul592, 3
  %arrayidx607 = getelementptr i32, ptr getelementptr inbounds ([1024 x i32], ptr @pc2, i32 0, i32 512), i32 %add606
  %392 = ptrtoint ptr %arrayidx607 to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load i32, ptr %arrayidx607, align 4
  %add609 = add nuw nsw i32 %mul596, 2
  %arrayidx610 = getelementptr i32, ptr getelementptr inbounds ([1024 x i32], ptr @pc2, i32 0, i32 512), i32 %add609
  %394 = ptrtoint ptr %arrayidx610 to i32
  call void @__asan_load4_noabort(i32 %394)
  %395 = load i32, ptr %arrayidx610, align 4
  %or611 = or i32 %395, %393
  %mul612 = shl nuw nsw i32 %conv602, 1
  %add613 = or i32 %mul612, 1
  %arrayidx614 = getelementptr i32, ptr getelementptr inbounds ([1024 x i32], ptr @pc2, i32 0, i32 512), i32 %add613
  %396 = ptrtoint ptr %arrayidx614 to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load i32, ptr %arrayidx614, align 4
  %or615 = or i32 %or611, %397
  %mul616 = shl nuw nsw i32 %conv604, 1
  %arrayidx618 = getelementptr i32, ptr getelementptr inbounds ([1024 x i32], ptr @pc2, i32 0, i32 512), i32 %mul616
  %398 = ptrtoint ptr %arrayidx618 to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load i32, ptr %arrayidx618, align 4
  %or619 = or i32 %or615, %399
  %arrayidx620 = getelementptr i32, ptr %pe, i32 11
  %400 = ptrtoint ptr %arrayidx620 to i32
  call void @__asan_store4_noabort(i32 %400)
  store i32 %or619, ptr %arrayidx620, align 4
  %arrayidx621 = getelementptr [256 x i8], ptr @rs, i32 0, i32 %conv582
  %401 = ptrtoint ptr %arrayidx621 to i32
  call void @__asan_load1_noabort(i32 %401)
  %402 = load i8, ptr %arrayidx621, align 1
  %conv622 = zext i8 %402 to i32
  %arrayidx623 = getelementptr [256 x i8], ptr @rs, i32 0, i32 %conv584
  %403 = ptrtoint ptr %arrayidx623 to i32
  call void @__asan_load1_noabort(i32 %403)
  %404 = load i8, ptr %arrayidx623, align 1
  %conv624 = zext i8 %404 to i32
  %add626 = add nuw nsw i32 %mul612, 3
  %arrayidx627 = getelementptr i32, ptr getelementptr inbounds ([1024 x i32], ptr @pc2, i32 0, i32 512), i32 %add626
  %405 = ptrtoint ptr %arrayidx627 to i32
  call void @__asan_load4_noabort(i32 %405)
  %406 = load i32, ptr %arrayidx627, align 4
  %add629 = add nuw nsw i32 %mul616, 2
  %arrayidx630 = getelementptr i32, ptr getelementptr inbounds ([1024 x i32], ptr @pc2, i32 0, i32 512), i32 %add629
  %407 = ptrtoint ptr %arrayidx630 to i32
  call void @__asan_load4_noabort(i32 %407)
  %408 = load i32, ptr %arrayidx630, align 4
  %or631 = or i32 %408, %406
  %mul632 = shl nuw nsw i32 %conv622, 1
  %add633 = or i32 %mul632, 1
  %arrayidx634 = getelementptr i32, ptr getelementptr inbounds ([1024 x i32], ptr @pc2, i32 0, i32 512), i32 %add633
  %409 = ptrtoint ptr %arrayidx634 to i32
  call void @__asan_load4_noabort(i32 %409)
  %410 = load i32, ptr %arrayidx634, align 4
  %or635 = or i32 %or631, %410
  %mul636 = shl nuw nsw i32 %conv624, 1
  %arrayidx638 = getelementptr i32, ptr getelementptr inbounds ([1024 x i32], ptr @pc2, i32 0, i32 512), i32 %mul636
  %411 = ptrtoint ptr %arrayidx638 to i32
  call void @__asan_load4_noabort(i32 %411)
  %412 = load i32, ptr %arrayidx638, align 4
  %or639 = or i32 %or635, %412
  %arrayidx640 = getelementptr i32, ptr %pe, i32 9
  %413 = ptrtoint ptr %arrayidx640 to i32
  call void @__asan_store4_noabort(i32 %413)
  store i32 %or639, ptr %arrayidx640, align 4
  %arrayidx641 = getelementptr [256 x i8], ptr @rs, i32 0, i32 %conv602
  %414 = ptrtoint ptr %arrayidx641 to i32
  call void @__asan_load1_noabort(i32 %414)
  %415 = load i8, ptr %arrayidx641, align 1
  %conv642 = zext i8 %415 to i32
  %arrayidx643 = getelementptr [256 x i8], ptr @rs, i32 0, i32 %conv604
  %416 = ptrtoint ptr %arrayidx643 to i32
  call void @__asan_load1_noabort(i32 %416)
  %417 = load i8, ptr %arrayidx643, align 1
  %conv644 = zext i8 %417 to i32
  %add646 = add nuw nsw i32 %mul632, 3
  %arrayidx647 = getelementptr i32, ptr getelementptr inbounds ([1024 x i32], ptr @pc2, i32 0, i32 512), i32 %add646
  %418 = ptrtoint ptr %arrayidx647 to i32
  call void @__asan_load4_noabort(i32 %418)
  %419 = load i32, ptr %arrayidx647, align 4
  %add649 = add nuw nsw i32 %mul636, 2
  %arrayidx650 = getelementptr i32, ptr getelementptr inbounds ([1024 x i32], ptr @pc2, i32 0, i32 512), i32 %add649
  %420 = ptrtoint ptr %arrayidx650 to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load i32, ptr %arrayidx650, align 4
  %or651 = or i32 %421, %419
  %mul652 = shl nuw nsw i32 %conv642, 1
  %add653 = or i32 %mul652, 1
  %arrayidx654 = getelementptr i32, ptr getelementptr inbounds ([1024 x i32], ptr @pc2, i32 0, i32 512), i32 %add653
  %422 = ptrtoint ptr %arrayidx654 to i32
  call void @__asan_load4_noabort(i32 %422)
  %423 = load i32, ptr %arrayidx654, align 4
  %or655 = or i32 %or651, %423
  %mul656 = shl nuw nsw i32 %conv644, 1
  %arrayidx658 = getelementptr i32, ptr getelementptr inbounds ([1024 x i32], ptr @pc2, i32 0, i32 512), i32 %mul656
  %424 = ptrtoint ptr %arrayidx658 to i32
  call void @__asan_load4_noabort(i32 %424)
  %425 = load i32, ptr %arrayidx658, align 4
  %or659 = or i32 %or655, %425
  %arrayidx660 = getelementptr i32, ptr %pe, i32 7
  %426 = ptrtoint ptr %arrayidx660 to i32
  call void @__asan_store4_noabort(i32 %426)
  store i32 %or659, ptr %arrayidx660, align 4
  %arrayidx661 = getelementptr [256 x i8], ptr @rs, i32 0, i32 %conv622
  %427 = ptrtoint ptr %arrayidx661 to i32
  call void @__asan_load1_noabort(i32 %427)
  %428 = load i8, ptr %arrayidx661, align 1
  %conv662 = zext i8 %428 to i32
  %arrayidx663 = getelementptr [256 x i8], ptr @rs, i32 0, i32 %conv624
  %429 = ptrtoint ptr %arrayidx663 to i32
  call void @__asan_load1_noabort(i32 %429)
  %430 = load i8, ptr %arrayidx663, align 1
  %conv664 = zext i8 %430 to i32
  %add666 = add nuw nsw i32 %mul652, 3
  %arrayidx667 = getelementptr i32, ptr getelementptr inbounds ([1024 x i32], ptr @pc2, i32 0, i32 512), i32 %add666
  %431 = ptrtoint ptr %arrayidx667 to i32
  call void @__asan_load4_noabort(i32 %431)
  %432 = load i32, ptr %arrayidx667, align 4
  %add669 = add nuw nsw i32 %mul656, 2
  %arrayidx670 = getelementptr i32, ptr getelementptr inbounds ([1024 x i32], ptr @pc2, i32 0, i32 512), i32 %add669
  %433 = ptrtoint ptr %arrayidx670 to i32
  call void @__asan_load4_noabort(i32 %433)
  %434 = load i32, ptr %arrayidx670, align 4
  %or671 = or i32 %434, %432
  %mul672 = shl nuw nsw i32 %conv662, 1
  %add673 = or i32 %mul672, 1
  %arrayidx674 = getelementptr i32, ptr getelementptr inbounds ([1024 x i32], ptr @pc2, i32 0, i32 512), i32 %add673
  %435 = ptrtoint ptr %arrayidx674 to i32
  call void @__asan_load4_noabort(i32 %435)
  %436 = load i32, ptr %arrayidx674, align 4
  %or675 = or i32 %or671, %436
  %mul676 = shl nuw nsw i32 %conv664, 1
  %arrayidx678 = getelementptr i32, ptr getelementptr inbounds ([1024 x i32], ptr @pc2, i32 0, i32 512), i32 %mul676
  %437 = ptrtoint ptr %arrayidx678 to i32
  call void @__asan_load4_noabort(i32 %437)
  %438 = load i32, ptr %arrayidx678, align 4
  %or679 = or i32 %or675, %438
  %arrayidx680 = getelementptr i32, ptr %pe, i32 5
  %439 = ptrtoint ptr %arrayidx680 to i32
  call void @__asan_store4_noabort(i32 %439)
  store i32 %or679, ptr %arrayidx680, align 4
  %arrayidx681 = getelementptr [256 x i8], ptr @rs, i32 0, i32 %conv642
  %440 = ptrtoint ptr %arrayidx681 to i32
  call void @__asan_load1_noabort(i32 %440)
  %441 = load i8, ptr %arrayidx681, align 1
  %conv682 = zext i8 %441 to i32
  %arrayidx683 = getelementptr [256 x i8], ptr @rs, i32 0, i32 %conv644
  %442 = ptrtoint ptr %arrayidx683 to i32
  call void @__asan_load1_noabort(i32 %442)
  %443 = load i8, ptr %arrayidx683, align 1
  %conv684 = zext i8 %443 to i32
  %add686 = add nuw nsw i32 %mul672, 3
  %arrayidx687 = getelementptr i32, ptr getelementptr inbounds ([1024 x i32], ptr @pc2, i32 0, i32 512), i32 %add686
  %444 = ptrtoint ptr %arrayidx687 to i32
  call void @__asan_load4_noabort(i32 %444)
  %445 = load i32, ptr %arrayidx687, align 4
  %add689 = add nuw nsw i32 %mul676, 2
  %arrayidx690 = getelementptr i32, ptr getelementptr inbounds ([1024 x i32], ptr @pc2, i32 0, i32 512), i32 %add689
  %446 = ptrtoint ptr %arrayidx690 to i32
  call void @__asan_load4_noabort(i32 %446)
  %447 = load i32, ptr %arrayidx690, align 4
  %or691 = or i32 %447, %445
  %mul692 = shl nuw nsw i32 %conv682, 1
  %add693 = or i32 %mul692, 1
  %arrayidx694 = getelementptr i32, ptr getelementptr inbounds ([1024 x i32], ptr @pc2, i32 0, i32 512), i32 %add693
  %448 = ptrtoint ptr %arrayidx694 to i32
  call void @__asan_load4_noabort(i32 %448)
  %449 = load i32, ptr %arrayidx694, align 4
  %or695 = or i32 %or691, %449
  %mul696 = shl nuw nsw i32 %conv684, 1
  %arrayidx698 = getelementptr i32, ptr getelementptr inbounds ([1024 x i32], ptr @pc2, i32 0, i32 512), i32 %mul696
  %450 = ptrtoint ptr %arrayidx698 to i32
  call void @__asan_load4_noabort(i32 %450)
  %451 = load i32, ptr %arrayidx698, align 4
  %or699 = or i32 %or695, %451
  %arrayidx700 = getelementptr i32, ptr %pe, i32 3
  %452 = ptrtoint ptr %arrayidx700 to i32
  call void @__asan_store4_noabort(i32 %452)
  store i32 %or699, ptr %arrayidx700, align 4
  %arrayidx701 = getelementptr [256 x i8], ptr @rs, i32 0, i32 %conv662
  %453 = ptrtoint ptr %arrayidx701 to i32
  call void @__asan_load1_noabort(i32 %453)
  %454 = load i8, ptr %arrayidx701, align 1
  %conv702 = zext i8 %454 to i32
  %add704 = add nuw nsw i32 %mul676, 3
  %arrayidx705 = getelementptr i32, ptr getelementptr inbounds ([1024 x i32], ptr @pc2, i32 0, i32 512), i32 %add704
  %455 = ptrtoint ptr %arrayidx705 to i32
  call void @__asan_load4_noabort(i32 %455)
  %456 = load i32, ptr %arrayidx705, align 4
  %add707 = add nuw nsw i32 %mul692, 2
  %arrayidx708 = getelementptr i32, ptr getelementptr inbounds ([1024 x i32], ptr @pc2, i32 0, i32 512), i32 %add707
  %457 = ptrtoint ptr %arrayidx708 to i32
  call void @__asan_load4_noabort(i32 %457)
  %458 = load i32, ptr %arrayidx708, align 4
  %or709 = or i32 %458, %456
  %add711 = or i32 %mul696, 1
  %arrayidx712 = getelementptr i32, ptr getelementptr inbounds ([1024 x i32], ptr @pc2, i32 0, i32 512), i32 %add711
  %459 = ptrtoint ptr %arrayidx712 to i32
  call void @__asan_load4_noabort(i32 %459)
  %460 = load i32, ptr %arrayidx712, align 4
  %or713 = or i32 %or709, %460
  %mul714 = shl nuw nsw i32 %conv702, 1
  %arrayidx716 = getelementptr i32, ptr getelementptr inbounds ([1024 x i32], ptr @pc2, i32 0, i32 512), i32 %mul714
  %461 = ptrtoint ptr %arrayidx716 to i32
  call void @__asan_load4_noabort(i32 %461)
  %462 = load i32, ptr %arrayidx716, align 4
  %or717 = or i32 %or713, %462
  %arrayidx718 = getelementptr i32, ptr %pe, i32 1
  %463 = ptrtoint ptr %arrayidx718 to i32
  call void @__asan_store4_noabort(i32 %463)
  store i32 %or717, ptr %arrayidx718, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %d.01178 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %mul720 = shl nuw nsw i32 %d.01178, 1
  %arrayidx721 = getelementptr i32, ptr %pe, i32 %mul720
  %464 = ptrtoint ptr %arrayidx721 to i32
  call void @__asan_load4_noabort(i32 %464)
  %465 = load i32, ptr %arrayidx721, align 4
  %add723 = or i32 %mul720, 1
  %arrayidx724 = getelementptr i32, ptr %pe, i32 %add723
  %466 = ptrtoint ptr %arrayidx724 to i32
  call void @__asan_load4_noabort(i32 %466)
  %467 = load i32, ptr %arrayidx724, align 4
  %xor725 = xor i32 %467, %465
  %and726 = and i32 %xor725, -65536
  %xor727 = xor i32 %and726, %465
  %xor728 = xor i32 %and726, %467
  %or.i = tail call i32 @llvm.fshl.i32(i32 %467, i32 %xor728, i32 18) #5
  %468 = ptrtoint ptr %arrayidx721 to i32
  call void @__asan_store4_noabort(i32 %468)
  store i32 %xor727, ptr %arrayidx721, align 4
  %469 = ptrtoint ptr %arrayidx724 to i32
  call void @__asan_store4_noabort(i32 %469)
  store i32 %or.i, ptr %arrayidx724, align 4
  %inc = add nuw nsw i32 %d.01178, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %xor3971170 = xor i8 %265, %251
  %xor3981171 = xor i8 %258, %244
  %xor4021173 = xor i8 %267, %251
  %xor4061175 = xor i8 %269, %258
  %xor1159 = xor i8 %213, %200
  %xor3441160 = xor i8 %224, %211
  %xor3481162 = xor i8 %235, %213
  %xor3521164 = xor i8 %237, %224
  %or3991172 = or i8 %xor3441160, %xor1159
  %or4031174 = or i8 %or3991172, %xor3481162
  %or4071176 = or i8 %or4031174, %xor3521164
  %or3451161 = or i8 %or4071176, %xor3981171
  %or3491163 = or i8 %or3451161, %xor3971170
  %or3531165 = or i8 %or3491163, %xor4021173
  %or4081177 = or i8 %or3531165, %xor4061175
  %or408 = zext i8 %or4081177 to i32
  ret i32 %or408
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @des_encrypt(ptr nocapture noundef readonly %ctx, ptr nocapture noundef writeonly %dst, ptr nocapture noundef readonly %src) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %src to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %src, align 1
  %2 = tail call i32 @llvm.bswap.i32(i32 %1) #5
  %add.ptr = getelementptr i8, ptr %src, i32 4
  %3 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %3, i32 4)
  %4 = load i32, ptr %add.ptr, align 1
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #5
  %or.i = tail call i32 @llvm.fshl.i32(i32 %5, i32 %5, i32 4) #5
  %xor = xor i32 %or.i, %2
  %and = and i32 %xor, -252645136
  %xor3 = xor i32 %and, %or.i
  %xor4 = xor i32 %and, %2
  %or.i275 = tail call i32 @llvm.fshl.i32(i32 %xor3, i32 %xor3, i32 12) #5
  %xor6 = xor i32 %or.i275, %xor4
  %and7 = and i32 %xor6, -65536
  %xor8 = xor i32 %and7, %or.i275
  %xor9 = xor i32 %and7, %xor4
  %or.i276 = tail call i32 @llvm.fshl.i32(i32 %or.i275, i32 %xor8, i32 18)
  %xor11 = xor i32 %or.i276, %xor9
  %and12 = and i32 %xor11, -858993460
  %xor13 = xor i32 %and12, %or.i276
  %xor14 = xor i32 %and12, %xor9
  %or.i277 = tail call i32 @llvm.fshl.i32(i32 %xor13, i32 %xor13, i32 6) #5
  %xor16 = xor i32 %or.i277, %xor14
  %and17 = and i32 %xor16, -16711936
  %xor18 = xor i32 %and17, %or.i277
  %xor19 = xor i32 %and17, %xor14
  %or.i278 = tail call i32 @llvm.fshl.i32(i32 %or.i277, i32 %xor18, i32 25)
  %xor21 = xor i32 %or.i278, %xor19
  %and22 = and i32 %xor21, -1431655766
  %xor23 = xor i32 %and22, %or.i278
  %xor24 = xor i32 %and22, %xor19
  %or.i279 = tail call i32 @llvm.fshl.i32(i32 %xor24, i32 %xor24, i32 1) #5
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.0291 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %R.0290 = phi i32 [ %xor23, %entry ], [ %xor99, %for.body.for.body_crit_edge ]
  %L.0289 = phi i32 [ %or.i279, %entry ], [ %xor61, %for.body.for.body_crit_edge ]
  %K.0288 = phi ptr [ %ctx, %entry ], [ %add.ptr64, %for.body.for.body_crit_edge ]
  %6 = ptrtoint ptr %K.0288 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %K.0288, align 4
  %arrayidx26 = getelementptr i32, ptr %K.0288, i32 1
  %8 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx26, align 4
  %add.ptr27 = getelementptr i32, ptr %K.0288, i32 2
  %xor28 = xor i32 %7, %R.0290
  %xor29 = xor i32 %9, %R.0290
  %or.i280 = tail call i32 @llvm.fshl.i32(i32 %xor29, i32 %xor29, i32 28)
  %and32 = and i32 %xor28, 63
  %arrayidx33 = getelementptr [64 x i32], ptr @S8, i32 0, i32 %and32
  %10 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx33, align 4
  %xor34 = xor i32 %11, %L.0289
  %shr = lshr i32 %xor28, 8
  %and36 = and i32 %shr, 63
  %arrayidx37 = getelementptr [64 x i32], ptr @S6, i32 0, i32 %and36
  %12 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx37, align 4
  %xor38 = xor i32 %xor34, %13
  %and30 = lshr i32 %xor28, 16
  %and40 = and i32 %or.i280, 63
  %arrayidx41 = getelementptr [64 x i32], ptr @S7, i32 0, i32 %and40
  %14 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx41, align 4
  %xor42 = xor i32 %xor38, %15
  %shr43 = lshr i32 %or.i280, 8
  %and44 = and i32 %shr43, 63
  %arrayidx45 = getelementptr [64 x i32], ptr @S5, i32 0, i32 %and44
  %16 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx45, align 4
  %xor46 = xor i32 %xor42, %17
  %and35 = lshr i32 %or.i280, 16
  %and48 = and i32 %and30, 63
  %arrayidx49 = getelementptr [64 x i32], ptr @S4, i32 0, i32 %and48
  %18 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx49, align 4
  %xor50 = xor i32 %xor46, %19
  %shr39 = lshr i32 %xor28, 24
  %shr51 = and i32 %shr39, 63
  %arrayidx53 = getelementptr [64 x i32], ptr @S2, i32 0, i32 %shr51
  %20 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx53, align 4
  %xor54 = xor i32 %xor50, %21
  %and55 = and i32 %and35, 63
  %arrayidx56 = getelementptr [64 x i32], ptr @S3, i32 0, i32 %and55
  %22 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx56, align 4
  %xor57 = xor i32 %xor54, %23
  %shr47 = lshr i32 %or.i280, 24
  %shr58 = and i32 %shr47, 63
  %arrayidx60 = getelementptr [64 x i32], ptr @S1, i32 0, i32 %shr58
  %24 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx60, align 4
  %xor61 = xor i32 %xor57, %25
  %26 = ptrtoint ptr %add.ptr27 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %add.ptr27, align 4
  %arrayidx63 = getelementptr i32, ptr %K.0288, i32 3
  %28 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx63, align 4
  %add.ptr64 = getelementptr i32, ptr %K.0288, i32 4
  %xor65 = xor i32 %27, %xor61
  %xor66 = xor i32 %29, %xor61
  %or.i281 = tail call i32 @llvm.fshl.i32(i32 %xor66, i32 %xor66, i32 28)
  %and69 = and i32 %xor65, 63
  %arrayidx70 = getelementptr [64 x i32], ptr @S8, i32 0, i32 %and69
  %30 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx70, align 4
  %xor71 = xor i32 %31, %R.0290
  %shr73 = lshr i32 %xor65, 8
  %and74 = and i32 %shr73, 63
  %arrayidx75 = getelementptr [64 x i32], ptr @S6, i32 0, i32 %and74
  %32 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx75, align 4
  %xor76 = xor i32 %xor71, %33
  %and67 = lshr i32 %xor65, 16
  %and78 = and i32 %or.i281, 63
  %arrayidx79 = getelementptr [64 x i32], ptr @S7, i32 0, i32 %and78
  %34 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx79, align 4
  %xor80 = xor i32 %xor76, %35
  %shr81 = lshr i32 %or.i281, 8
  %and82 = and i32 %shr81, 63
  %arrayidx83 = getelementptr [64 x i32], ptr @S5, i32 0, i32 %and82
  %36 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx83, align 4
  %xor84 = xor i32 %xor80, %37
  %and72 = lshr i32 %or.i281, 16
  %and86 = and i32 %and67, 63
  %arrayidx87 = getelementptr [64 x i32], ptr @S4, i32 0, i32 %and86
  %38 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx87, align 4
  %xor88 = xor i32 %xor84, %39
  %shr77 = lshr i32 %xor65, 24
  %shr89 = and i32 %shr77, 63
  %arrayidx91 = getelementptr [64 x i32], ptr @S2, i32 0, i32 %shr89
  %40 = ptrtoint ptr %arrayidx91 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx91, align 4
  %xor92 = xor i32 %xor88, %41
  %and93 = and i32 %and72, 63
  %arrayidx94 = getelementptr [64 x i32], ptr @S3, i32 0, i32 %and93
  %42 = ptrtoint ptr %arrayidx94 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx94, align 4
  %xor95 = xor i32 %xor92, %43
  %shr85 = lshr i32 %or.i281, 24
  %shr96 = and i32 %shr85, 63
  %arrayidx98 = getelementptr [64 x i32], ptr @S1, i32 0, i32 %shr96
  %44 = ptrtoint ptr %arrayidx98 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx98, align 4
  %xor99 = xor i32 %xor95, %45
  %inc = add nuw nsw i32 %i.0291, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %or.i282 = tail call i32 @llvm.fshl.i32(i32 %xor99, i32 %xor99, i32 31)
  %xor101 = xor i32 %or.i282, %xor61
  %and102 = and i32 %xor101, -1431655766
  %xor103 = xor i32 %and102, %xor61
  %xor104 = xor i32 %and102, %or.i282
  %or.i283 = tail call i32 @llvm.fshl.i32(i32 %xor103, i32 %xor103, i32 7) #5
  %xor106 = xor i32 %or.i283, %xor104
  %and107 = and i32 %xor106, -16711936
  %xor108 = xor i32 %and107, %or.i283
  %xor109 = xor i32 %and107, %xor104
  %or.i284 = tail call i32 @llvm.fshl.i32(i32 %or.i283, i32 %xor108, i32 26)
  %xor111 = xor i32 %or.i284, %xor109
  %and112 = and i32 %xor111, -858993460
  %xor113 = xor i32 %and112, %or.i284
  %xor114 = xor i32 %and112, %xor109
  %or.i285 = tail call i32 @llvm.fshl.i32(i32 %xor113, i32 %xor113, i32 14) #5
  %xor116 = xor i32 %or.i285, %xor114
  %and117 = and i32 %xor116, -65536
  %xor118 = xor i32 %and117, %or.i285
  %xor119 = xor i32 %and117, %xor114
  %or.i286 = tail call i32 @llvm.fshl.i32(i32 %or.i285, i32 %xor118, i32 20)
  %xor121 = xor i32 %or.i286, %xor119
  %and122 = and i32 %xor121, -252645136
  %xor123 = xor i32 %and122, %or.i286
  %xor124 = xor i32 %and122, %xor119
  %or.i287 = tail call i32 @llvm.fshl.i32(i32 %or.i286, i32 %xor123, i32 28)
  %46 = tail call i32 @llvm.bswap.i32(i32 %xor124) #5
  %47 = ptrtoint ptr %dst to i32
  call void @__asan_storeN_noabort(i32 %47, i32 4)
  store i32 %46, ptr %dst, align 1
  %add.ptr126 = getelementptr i8, ptr %dst, i32 4
  %48 = tail call i32 @llvm.bswap.i32(i32 %or.i287) #5
  %49 = ptrtoint ptr %add.ptr126 to i32
  call void @__asan_storeN_noabort(i32 %49, i32 4)
  store i32 %48, ptr %add.ptr126, align 1
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @des_decrypt(ptr nocapture noundef readonly %ctx, ptr nocapture noundef writeonly %dst, ptr nocapture noundef readonly %src) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr1 = getelementptr i32, ptr %ctx, i32 30
  %0 = ptrtoint ptr %src to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %src, align 1
  %2 = tail call i32 @llvm.bswap.i32(i32 %1) #5
  %add.ptr2 = getelementptr i8, ptr %src, i32 4
  %3 = ptrtoint ptr %add.ptr2 to i32
  call void @__asan_loadN_noabort(i32 %3, i32 4)
  %4 = load i32, ptr %add.ptr2, align 1
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #5
  %or.i = tail call i32 @llvm.fshl.i32(i32 %5, i32 %5, i32 4) #5
  %xor = xor i32 %or.i, %2
  %and = and i32 %xor, -252645136
  %xor5 = xor i32 %and, %or.i
  %xor6 = xor i32 %and, %2
  %or.i277 = tail call i32 @llvm.fshl.i32(i32 %xor5, i32 %xor5, i32 12) #5
  %xor8 = xor i32 %or.i277, %xor6
  %and9 = and i32 %xor8, -65536
  %xor10 = xor i32 %and9, %or.i277
  %xor11 = xor i32 %and9, %xor6
  %or.i278 = tail call i32 @llvm.fshl.i32(i32 %or.i277, i32 %xor10, i32 18)
  %xor13 = xor i32 %or.i278, %xor11
  %and14 = and i32 %xor13, -858993460
  %xor15 = xor i32 %and14, %or.i278
  %xor16 = xor i32 %and14, %xor11
  %or.i279 = tail call i32 @llvm.fshl.i32(i32 %xor15, i32 %xor15, i32 6) #5
  %xor18 = xor i32 %or.i279, %xor16
  %and19 = and i32 %xor18, -16711936
  %xor20 = xor i32 %and19, %or.i279
  %xor21 = xor i32 %and19, %xor16
  %or.i280 = tail call i32 @llvm.fshl.i32(i32 %or.i279, i32 %xor20, i32 25)
  %xor23 = xor i32 %or.i280, %xor21
  %and24 = and i32 %xor23, -1431655766
  %xor25 = xor i32 %and24, %or.i280
  %xor26 = xor i32 %and24, %xor21
  %or.i281 = tail call i32 @llvm.fshl.i32(i32 %xor26, i32 %xor26, i32 1) #5
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.0293 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %R.0292 = phi i32 [ %xor25, %entry ], [ %xor101, %for.body.for.body_crit_edge ]
  %L.0291 = phi i32 [ %or.i281, %entry ], [ %xor63, %for.body.for.body_crit_edge ]
  %K.0290 = phi ptr [ %add.ptr1, %entry ], [ %add.ptr66, %for.body.for.body_crit_edge ]
  %6 = ptrtoint ptr %K.0290 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %K.0290, align 4
  %arrayidx28 = getelementptr i32, ptr %K.0290, i32 1
  %8 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx28, align 4
  %add.ptr29 = getelementptr i32, ptr %K.0290, i32 -2
  %xor30 = xor i32 %7, %R.0292
  %xor31 = xor i32 %9, %R.0292
  %or.i282 = tail call i32 @llvm.fshl.i32(i32 %xor31, i32 %xor31, i32 28)
  %and34 = and i32 %xor30, 63
  %arrayidx35 = getelementptr [64 x i32], ptr @S8, i32 0, i32 %and34
  %10 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx35, align 4
  %xor36 = xor i32 %11, %L.0291
  %shr = lshr i32 %xor30, 8
  %and38 = and i32 %shr, 63
  %arrayidx39 = getelementptr [64 x i32], ptr @S6, i32 0, i32 %and38
  %12 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx39, align 4
  %xor40 = xor i32 %xor36, %13
  %and32 = lshr i32 %xor30, 16
  %and42 = and i32 %or.i282, 63
  %arrayidx43 = getelementptr [64 x i32], ptr @S7, i32 0, i32 %and42
  %14 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx43, align 4
  %xor44 = xor i32 %xor40, %15
  %shr45 = lshr i32 %or.i282, 8
  %and46 = and i32 %shr45, 63
  %arrayidx47 = getelementptr [64 x i32], ptr @S5, i32 0, i32 %and46
  %16 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx47, align 4
  %xor48 = xor i32 %xor44, %17
  %and37 = lshr i32 %or.i282, 16
  %and50 = and i32 %and32, 63
  %arrayidx51 = getelementptr [64 x i32], ptr @S4, i32 0, i32 %and50
  %18 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx51, align 4
  %xor52 = xor i32 %xor48, %19
  %shr41 = lshr i32 %xor30, 24
  %shr53 = and i32 %shr41, 63
  %arrayidx55 = getelementptr [64 x i32], ptr @S2, i32 0, i32 %shr53
  %20 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx55, align 4
  %xor56 = xor i32 %xor52, %21
  %and57 = and i32 %and37, 63
  %arrayidx58 = getelementptr [64 x i32], ptr @S3, i32 0, i32 %and57
  %22 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx58, align 4
  %xor59 = xor i32 %xor56, %23
  %shr49 = lshr i32 %or.i282, 24
  %shr60 = and i32 %shr49, 63
  %arrayidx62 = getelementptr [64 x i32], ptr @S1, i32 0, i32 %shr60
  %24 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx62, align 4
  %xor63 = xor i32 %xor59, %25
  %26 = ptrtoint ptr %add.ptr29 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %add.ptr29, align 4
  %arrayidx65 = getelementptr i32, ptr %K.0290, i32 -1
  %28 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx65, align 4
  %add.ptr66 = getelementptr i32, ptr %K.0290, i32 -4
  %xor67 = xor i32 %27, %xor63
  %xor68 = xor i32 %29, %xor63
  %or.i283 = tail call i32 @llvm.fshl.i32(i32 %xor68, i32 %xor68, i32 28)
  %and71 = and i32 %xor67, 63
  %arrayidx72 = getelementptr [64 x i32], ptr @S8, i32 0, i32 %and71
  %30 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx72, align 4
  %xor73 = xor i32 %31, %R.0292
  %shr75 = lshr i32 %xor67, 8
  %and76 = and i32 %shr75, 63
  %arrayidx77 = getelementptr [64 x i32], ptr @S6, i32 0, i32 %and76
  %32 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx77, align 4
  %xor78 = xor i32 %xor73, %33
  %and69 = lshr i32 %xor67, 16
  %and80 = and i32 %or.i283, 63
  %arrayidx81 = getelementptr [64 x i32], ptr @S7, i32 0, i32 %and80
  %34 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx81, align 4
  %xor82 = xor i32 %xor78, %35
  %shr83 = lshr i32 %or.i283, 8
  %and84 = and i32 %shr83, 63
  %arrayidx85 = getelementptr [64 x i32], ptr @S5, i32 0, i32 %and84
  %36 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx85, align 4
  %xor86 = xor i32 %xor82, %37
  %and74 = lshr i32 %or.i283, 16
  %and88 = and i32 %and69, 63
  %arrayidx89 = getelementptr [64 x i32], ptr @S4, i32 0, i32 %and88
  %38 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx89, align 4
  %xor90 = xor i32 %xor86, %39
  %shr79 = lshr i32 %xor67, 24
  %shr91 = and i32 %shr79, 63
  %arrayidx93 = getelementptr [64 x i32], ptr @S2, i32 0, i32 %shr91
  %40 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx93, align 4
  %xor94 = xor i32 %xor90, %41
  %and95 = and i32 %and74, 63
  %arrayidx96 = getelementptr [64 x i32], ptr @S3, i32 0, i32 %and95
  %42 = ptrtoint ptr %arrayidx96 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx96, align 4
  %xor97 = xor i32 %xor94, %43
  %shr87 = lshr i32 %or.i283, 24
  %shr98 = and i32 %shr87, 63
  %arrayidx100 = getelementptr [64 x i32], ptr @S1, i32 0, i32 %shr98
  %44 = ptrtoint ptr %arrayidx100 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx100, align 4
  %xor101 = xor i32 %xor97, %45
  %inc = add nuw nsw i32 %i.0293, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %or.i284 = tail call i32 @llvm.fshl.i32(i32 %xor101, i32 %xor101, i32 31)
  %xor103 = xor i32 %or.i284, %xor63
  %and104 = and i32 %xor103, -1431655766
  %xor105 = xor i32 %and104, %xor63
  %xor106 = xor i32 %and104, %or.i284
  %or.i285 = tail call i32 @llvm.fshl.i32(i32 %xor105, i32 %xor105, i32 7) #5
  %xor108 = xor i32 %or.i285, %xor106
  %and109 = and i32 %xor108, -16711936
  %xor110 = xor i32 %and109, %or.i285
  %xor111 = xor i32 %and109, %xor106
  %or.i286 = tail call i32 @llvm.fshl.i32(i32 %or.i285, i32 %xor110, i32 26)
  %xor113 = xor i32 %or.i286, %xor111
  %and114 = and i32 %xor113, -858993460
  %xor115 = xor i32 %and114, %or.i286
  %xor116 = xor i32 %and114, %xor111
  %or.i287 = tail call i32 @llvm.fshl.i32(i32 %xor115, i32 %xor115, i32 14) #5
  %xor118 = xor i32 %or.i287, %xor116
  %and119 = and i32 %xor118, -65536
  %xor120 = xor i32 %and119, %or.i287
  %xor121 = xor i32 %and119, %xor116
  %or.i288 = tail call i32 @llvm.fshl.i32(i32 %or.i287, i32 %xor120, i32 20)
  %xor123 = xor i32 %or.i288, %xor121
  %and124 = and i32 %xor123, -252645136
  %xor125 = xor i32 %and124, %or.i288
  %xor126 = xor i32 %and124, %xor121
  %or.i289 = tail call i32 @llvm.fshl.i32(i32 %or.i288, i32 %xor125, i32 28)
  %46 = tail call i32 @llvm.bswap.i32(i32 %xor126) #5
  %47 = ptrtoint ptr %dst to i32
  call void @__asan_storeN_noabort(i32 %47, i32 4)
  store i32 %46, ptr %dst, align 1
  %add.ptr128 = getelementptr i8, ptr %dst, i32 4
  %48 = tail call i32 @llvm.bswap.i32(i32 %or.i289) #5
  %49 = ptrtoint ptr %add.ptr128 to i32
  call void @__asan_storeN_noabort(i32 %49, i32 4)
  store i32 %48, ptr %add.ptr128, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @des3_ede_expand_key(ptr noundef %ctx, ptr nocapture noundef readonly %key, i32 noundef %keylen) #3 align 64 {
entry:
  %K.i = alloca [6 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %keylen)
  %cmp.not = icmp eq i32 %keylen, 24
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %K.i) #5
  %0 = getelementptr inbounds [6 x i32], ptr %K.i, i32 0, i32 1
  %1 = getelementptr inbounds [6 x i32], ptr %K.i, i32 0, i32 2
  %2 = getelementptr inbounds [6 x i32], ptr %K.i, i32 0, i32 3
  %3 = call ptr @memcpy(ptr %K.i, ptr %key, i32 24)
  %4 = ptrtoint ptr %K.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %K.i, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %1, align 4
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %0, align 4
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %12 = icmp eq i32 %5, %7
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %13 = icmp eq i32 %9, %11
  %tobool.not.i = and i1 %12, %13
  br i1 %tobool.not.i, label %if.end.if.end3_crit_edge, label %lor.lhs.false.i

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3

lor.lhs.false.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %14 = getelementptr inbounds [6 x i32], ptr %K.i, i32 0, i32 5
  %15 = getelementptr inbounds [6 x i32], ptr %K.i, i32 0, i32 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %14, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %17)
  %20 = icmp eq i32 %7, %17
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %19)
  %21 = icmp eq i32 %11, %19
  %tobool12.not.i = and i1 %20, %21
  %spec.select = select i1 %tobool12.not.i, i32 -126, i32 0
  br label %if.end3

if.end3:                                          ; preds = %lor.lhs.false.i, %if.end.if.end3_crit_edge
  %ret.0.i = phi i32 [ -126, %if.end.if.end3_crit_edge ], [ %spec.select, %lor.lhs.false.i ]
  %22 = call ptr @memset(ptr %K.i, i32 0, i32 24)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %K.i) #5, !srcloc !46
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %K.i) #5
  %call4 = call fastcc i32 @des_ekey(ptr noundef %ctx, ptr noundef %key)
  %add.ptr = getelementptr i32, ptr %ctx, i32 32
  %add.ptr5 = getelementptr i8, ptr %key, i32 8
  %arrayidx.i = getelementptr i8, ptr %key, i32 12
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx.i, align 1
  %25 = shl i8 %24, 4
  %26 = and i8 %25, -32
  %27 = ptrtoint ptr %add.ptr5 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %add.ptr5, align 1
  %29 = and i8 %28, 30
  %or1115.i = or i8 %26, %29
  %or.i = zext i8 %or1115.i to i32
  %arrayidx4.i = getelementptr [256 x i8], ptr @pc1, i32 0, i32 %or.i
  %30 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx4.i, align 1
  %conv5.i = zext i8 %31 to i32
  %arrayidx6.i = getelementptr i8, ptr %key, i32 13
  %32 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx6.i, align 1
  %34 = shl i8 %33, 4
  %35 = and i8 %34, -32
  %arrayidx10.i = getelementptr i8, ptr %key, i32 9
  %36 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx10.i, align 1
  %38 = and i8 %37, 30
  %or131116.i = or i8 %35, %38
  %or13.i = zext i8 %or131116.i to i32
  %arrayidx14.i = getelementptr [256 x i8], ptr @pc1, i32 0, i32 %or13.i
  %39 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx14.i, align 1
  %conv15.i = zext i8 %40 to i32
  %arrayidx16.i = getelementptr i8, ptr %key, i32 14
  %41 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx16.i, align 1
  %43 = shl i8 %42, 4
  %44 = and i8 %43, -32
  %arrayidx20.i = getelementptr i8, ptr %key, i32 10
  %45 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx20.i, align 1
  %47 = and i8 %46, 30
  %or231117.i = or i8 %44, %47
  %or23.i = zext i8 %or231117.i to i32
  %arrayidx24.i = getelementptr [256 x i8], ptr @pc1, i32 0, i32 %or23.i
  %48 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx24.i, align 1
  %conv25.i = zext i8 %49 to i32
  %arrayidx26.i = getelementptr i8, ptr %key, i32 15
  %50 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx26.i, align 1
  %52 = shl i8 %51, 4
  %53 = and i8 %52, -32
  %arrayidx30.i = getelementptr i8, ptr %key, i32 11
  %54 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx30.i, align 1
  %56 = and i8 %55, 30
  %or331118.i = or i8 %53, %56
  %or33.i = zext i8 %or331118.i to i32
  %arrayidx34.i = getelementptr [256 x i8], ptr @pc1, i32 0, i32 %or33.i
  %57 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx34.i, align 1
  %conv35.i = zext i8 %58 to i32
  %mul.i = shl nuw nsw i32 %conv5.i, 1
  %add.i = add nuw nsw i32 %mul.i, 3
  %arrayidx36.i = getelementptr i32, ptr @pc2, i32 %add.i
  %59 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx36.i, align 4
  %mul37.i = shl nuw nsw i32 %conv15.i, 1
  %add38.i = add nuw nsw i32 %mul37.i, 2
  %arrayidx39.i = getelementptr i32, ptr @pc2, i32 %add38.i
  %61 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx39.i, align 4
  %or40.i = or i32 %62, %60
  %mul41.i = shl nuw nsw i32 %conv25.i, 1
  %add42.i = or i32 %mul41.i, 1
  %arrayidx43.i = getelementptr i32, ptr @pc2, i32 %add42.i
  %63 = ptrtoint ptr %arrayidx43.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx43.i, align 4
  %or44.i = or i32 %or40.i, %64
  %mul45.i = shl nuw nsw i32 %conv35.i, 1
  %arrayidx47.i = getelementptr i32, ptr @pc2, i32 %mul45.i
  %65 = ptrtoint ptr %arrayidx47.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx47.i, align 4
  %or48.i = or i32 %or44.i, %66
  %67 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %or48.i, ptr %add.ptr, align 4
  %arrayidx50.i = getelementptr [256 x i8], ptr @rs, i32 0, i32 %conv5.i
  %68 = ptrtoint ptr %arrayidx50.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx50.i, align 1
  %conv51.i = zext i8 %69 to i32
  %add53.i = add nuw nsw i32 %mul37.i, 3
  %arrayidx54.i = getelementptr i32, ptr @pc2, i32 %add53.i
  %70 = ptrtoint ptr %arrayidx54.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx54.i, align 4
  %add56.i = add nuw nsw i32 %mul41.i, 2
  %arrayidx57.i = getelementptr i32, ptr @pc2, i32 %add56.i
  %72 = ptrtoint ptr %arrayidx57.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx57.i, align 4
  %or58.i = or i32 %73, %71
  %add60.i = or i32 %mul45.i, 1
  %arrayidx61.i = getelementptr i32, ptr @pc2, i32 %add60.i
  %74 = ptrtoint ptr %arrayidx61.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx61.i, align 4
  %or62.i = or i32 %or58.i, %75
  %mul63.i = shl nuw nsw i32 %conv51.i, 1
  %arrayidx65.i = getelementptr i32, ptr @pc2, i32 %mul63.i
  %76 = ptrtoint ptr %arrayidx65.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx65.i, align 4
  %or66.i = or i32 %or62.i, %77
  %arrayidx67.i = getelementptr i32, ptr %ctx, i32 34
  %78 = ptrtoint ptr %arrayidx67.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %or66.i, ptr %arrayidx67.i, align 4
  %arrayidx68.i = getelementptr [256 x i8], ptr @rs, i32 0, i32 %conv15.i
  %79 = ptrtoint ptr %arrayidx68.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %arrayidx68.i, align 1
  %conv69.i = zext i8 %80 to i32
  %arrayidx70.i = getelementptr [256 x i8], ptr @rs, i32 0, i32 %conv25.i
  %81 = ptrtoint ptr %arrayidx70.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %arrayidx70.i, align 1
  %conv71.i = zext i8 %82 to i32
  %add73.i = add nuw nsw i32 %mul45.i, 3
  %arrayidx74.i = getelementptr i32, ptr @pc2, i32 %add73.i
  %83 = ptrtoint ptr %arrayidx74.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %arrayidx74.i, align 4
  %add76.i = add nuw nsw i32 %mul63.i, 2
  %arrayidx77.i = getelementptr i32, ptr @pc2, i32 %add76.i
  %85 = ptrtoint ptr %arrayidx77.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %arrayidx77.i, align 4
  %or78.i = or i32 %86, %84
  %mul79.i = shl nuw nsw i32 %conv69.i, 1
  %add80.i = or i32 %mul79.i, 1
  %arrayidx81.i = getelementptr i32, ptr @pc2, i32 %add80.i
  %87 = ptrtoint ptr %arrayidx81.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %arrayidx81.i, align 4
  %or82.i = or i32 %or78.i, %88
  %mul83.i = shl nuw nsw i32 %conv71.i, 1
  %arrayidx85.i = getelementptr i32, ptr @pc2, i32 %mul83.i
  %89 = ptrtoint ptr %arrayidx85.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %arrayidx85.i, align 4
  %or86.i = or i32 %or82.i, %90
  %arrayidx87.i = getelementptr i32, ptr %ctx, i32 36
  %91 = ptrtoint ptr %arrayidx87.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %or86.i, ptr %arrayidx87.i, align 4
  %arrayidx88.i = getelementptr [256 x i8], ptr @rs, i32 0, i32 %conv35.i
  %92 = ptrtoint ptr %arrayidx88.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %arrayidx88.i, align 1
  %conv89.i = zext i8 %93 to i32
  %arrayidx90.i = getelementptr [256 x i8], ptr @rs, i32 0, i32 %conv51.i
  %94 = ptrtoint ptr %arrayidx90.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %arrayidx90.i, align 1
  %conv91.i = zext i8 %95 to i32
  %add93.i = add nuw nsw i32 %mul79.i, 3
  %arrayidx94.i = getelementptr i32, ptr @pc2, i32 %add93.i
  %96 = ptrtoint ptr %arrayidx94.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %arrayidx94.i, align 4
  %add96.i = add nuw nsw i32 %mul83.i, 2
  %arrayidx97.i = getelementptr i32, ptr @pc2, i32 %add96.i
  %98 = ptrtoint ptr %arrayidx97.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %arrayidx97.i, align 4
  %or98.i = or i32 %99, %97
  %mul99.i = shl nuw nsw i32 %conv89.i, 1
  %add100.i = or i32 %mul99.i, 1
  %arrayidx101.i = getelementptr i32, ptr @pc2, i32 %add100.i
  %100 = ptrtoint ptr %arrayidx101.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %arrayidx101.i, align 4
  %or102.i = or i32 %or98.i, %101
  %mul103.i = shl nuw nsw i32 %conv91.i, 1
  %arrayidx105.i = getelementptr i32, ptr @pc2, i32 %mul103.i
  %102 = ptrtoint ptr %arrayidx105.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %arrayidx105.i, align 4
  %or106.i = or i32 %or102.i, %103
  %arrayidx107.i = getelementptr i32, ptr %ctx, i32 38
  %104 = ptrtoint ptr %arrayidx107.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %or106.i, ptr %arrayidx107.i, align 4
  %arrayidx108.i = getelementptr [256 x i8], ptr @rs, i32 0, i32 %conv69.i
  %105 = ptrtoint ptr %arrayidx108.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %arrayidx108.i, align 1
  %conv109.i = zext i8 %106 to i32
  %arrayidx110.i = getelementptr [256 x i8], ptr @rs, i32 0, i32 %conv71.i
  %107 = ptrtoint ptr %arrayidx110.i to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %arrayidx110.i, align 1
  %conv111.i = zext i8 %108 to i32
  %add113.i = add nuw nsw i32 %mul99.i, 3
  %arrayidx114.i = getelementptr i32, ptr @pc2, i32 %add113.i
  %109 = ptrtoint ptr %arrayidx114.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %arrayidx114.i, align 4
  %add116.i = add nuw nsw i32 %mul103.i, 2
  %arrayidx117.i = getelementptr i32, ptr @pc2, i32 %add116.i
  %111 = ptrtoint ptr %arrayidx117.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %arrayidx117.i, align 4
  %or118.i = or i32 %112, %110
  %mul119.i = shl nuw nsw i32 %conv109.i, 1
  %add120.i = or i32 %mul119.i, 1
  %arrayidx121.i = getelementptr i32, ptr @pc2, i32 %add120.i
  %113 = ptrtoint ptr %arrayidx121.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %arrayidx121.i, align 4
  %or122.i = or i32 %or118.i, %114
  %mul123.i = shl nuw nsw i32 %conv111.i, 1
  %arrayidx125.i = getelementptr i32, ptr @pc2, i32 %mul123.i
  %115 = ptrtoint ptr %arrayidx125.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %arrayidx125.i, align 4
  %or126.i = or i32 %or122.i, %116
  %arrayidx127.i = getelementptr i32, ptr %ctx, i32 40
  %117 = ptrtoint ptr %arrayidx127.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %or126.i, ptr %arrayidx127.i, align 4
  %arrayidx128.i = getelementptr [256 x i8], ptr @rs, i32 0, i32 %conv89.i
  %118 = ptrtoint ptr %arrayidx128.i to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %arrayidx128.i, align 1
  %conv129.i = zext i8 %119 to i32
  %arrayidx130.i = getelementptr [256 x i8], ptr @rs, i32 0, i32 %conv91.i
  %120 = ptrtoint ptr %arrayidx130.i to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %arrayidx130.i, align 1
  %conv131.i = zext i8 %121 to i32
  %add133.i = add nuw nsw i32 %mul119.i, 3
  %arrayidx134.i = getelementptr i32, ptr @pc2, i32 %add133.i
  %122 = ptrtoint ptr %arrayidx134.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %arrayidx134.i, align 4
  %add136.i = add nuw nsw i32 %mul123.i, 2
  %arrayidx137.i = getelementptr i32, ptr @pc2, i32 %add136.i
  %124 = ptrtoint ptr %arrayidx137.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %arrayidx137.i, align 4
  %or138.i = or i32 %125, %123
  %mul139.i = shl nuw nsw i32 %conv129.i, 1
  %add140.i = or i32 %mul139.i, 1
  %arrayidx141.i = getelementptr i32, ptr @pc2, i32 %add140.i
  %126 = ptrtoint ptr %arrayidx141.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %arrayidx141.i, align 4
  %or142.i = or i32 %or138.i, %127
  %mul143.i = shl nuw nsw i32 %conv131.i, 1
  %arrayidx145.i = getelementptr i32, ptr @pc2, i32 %mul143.i
  %128 = ptrtoint ptr %arrayidx145.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %arrayidx145.i, align 4
  %or146.i = or i32 %or142.i, %129
  %arrayidx147.i = getelementptr i32, ptr %ctx, i32 42
  %130 = ptrtoint ptr %arrayidx147.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %or146.i, ptr %arrayidx147.i, align 4
  %arrayidx148.i = getelementptr [256 x i8], ptr @rs, i32 0, i32 %conv109.i
  %131 = ptrtoint ptr %arrayidx148.i to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %arrayidx148.i, align 1
  %conv149.i = zext i8 %132 to i32
  %arrayidx150.i = getelementptr [256 x i8], ptr @rs, i32 0, i32 %conv111.i
  %133 = ptrtoint ptr %arrayidx150.i to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %arrayidx150.i, align 1
  %conv151.i = zext i8 %134 to i32
  %add153.i = add nuw nsw i32 %mul139.i, 3
  %arrayidx154.i = getelementptr i32, ptr @pc2, i32 %add153.i
  %135 = ptrtoint ptr %arrayidx154.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %arrayidx154.i, align 4
  %add156.i = add nuw nsw i32 %mul143.i, 2
  %arrayidx157.i = getelementptr i32, ptr @pc2, i32 %add156.i
  %137 = ptrtoint ptr %arrayidx157.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %arrayidx157.i, align 4
  %or158.i = or i32 %138, %136
  %mul159.i = shl nuw nsw i32 %conv149.i, 1
  %add160.i = or i32 %mul159.i, 1
  %arrayidx161.i = getelementptr i32, ptr @pc2, i32 %add160.i
  %139 = ptrtoint ptr %arrayidx161.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %arrayidx161.i, align 4
  %or162.i = or i32 %or158.i, %140
  %mul163.i = shl nuw nsw i32 %conv151.i, 1
  %arrayidx165.i = getelementptr i32, ptr @pc2, i32 %mul163.i
  %141 = ptrtoint ptr %arrayidx165.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %arrayidx165.i, align 4
  %or166.i = or i32 %or162.i, %142
  %arrayidx167.i = getelementptr i32, ptr %ctx, i32 44
  %143 = ptrtoint ptr %arrayidx167.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %or166.i, ptr %arrayidx167.i, align 4
  %arrayidx168.i = getelementptr [256 x i8], ptr @rs, i32 0, i32 %conv129.i
  %144 = ptrtoint ptr %arrayidx168.i to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %arrayidx168.i, align 1
  %conv169.i = zext i8 %145 to i32
  %arrayidx170.i = getelementptr [256 x i8], ptr @rs, i32 0, i32 %conv131.i
  %146 = ptrtoint ptr %arrayidx170.i to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %arrayidx170.i, align 1
  %conv171.i = zext i8 %147 to i32
  %add173.i = add nuw nsw i32 %mul159.i, 3
  %arrayidx174.i = getelementptr i32, ptr @pc2, i32 %add173.i
  %148 = ptrtoint ptr %arrayidx174.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %arrayidx174.i, align 4
  %add176.i = add nuw nsw i32 %mul163.i, 2
  %arrayidx177.i = getelementptr i32, ptr @pc2, i32 %add176.i
  %150 = ptrtoint ptr %arrayidx177.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %arrayidx177.i, align 4
  %or178.i = or i32 %151, %149
  %mul179.i = shl nuw nsw i32 %conv169.i, 1
  %add180.i = or i32 %mul179.i, 1
  %arrayidx181.i = getelementptr i32, ptr @pc2, i32 %add180.i
  %152 = ptrtoint ptr %arrayidx181.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %arrayidx181.i, align 4
  %or182.i = or i32 %or178.i, %153
  %mul183.i = shl nuw nsw i32 %conv171.i, 1
  %arrayidx185.i = getelementptr i32, ptr @pc2, i32 %mul183.i
  %154 = ptrtoint ptr %arrayidx185.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %arrayidx185.i, align 4
  %or186.i = or i32 %or182.i, %155
  %arrayidx187.i = getelementptr i32, ptr %ctx, i32 46
  %156 = ptrtoint ptr %arrayidx187.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 %or186.i, ptr %arrayidx187.i, align 4
  %arrayidx188.i = getelementptr [256 x i8], ptr @rs, i32 0, i32 %conv149.i
  %157 = ptrtoint ptr %arrayidx188.i to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %arrayidx188.i, align 1
  %conv189.i = zext i8 %158 to i32
  %add191.i = add nuw nsw i32 %mul163.i, 3
  %arrayidx192.i = getelementptr i32, ptr @pc2, i32 %add191.i
  %159 = ptrtoint ptr %arrayidx192.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %arrayidx192.i, align 4
  %add194.i = add nuw nsw i32 %mul179.i, 2
  %arrayidx195.i = getelementptr i32, ptr @pc2, i32 %add194.i
  %161 = ptrtoint ptr %arrayidx195.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %arrayidx195.i, align 4
  %or196.i = or i32 %162, %160
  %add198.i = or i32 %mul183.i, 1
  %arrayidx199.i = getelementptr i32, ptr @pc2, i32 %add198.i
  %163 = ptrtoint ptr %arrayidx199.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %arrayidx199.i, align 4
  %or200.i = or i32 %or196.i, %164
  %mul201.i = shl nuw nsw i32 %conv189.i, 1
  %arrayidx203.i = getelementptr i32, ptr @pc2, i32 %mul201.i
  %165 = ptrtoint ptr %arrayidx203.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %arrayidx203.i, align 4
  %or204.i = or i32 %or200.i, %166
  %arrayidx205.i = getelementptr i32, ptr %ctx, i32 48
  %167 = ptrtoint ptr %arrayidx205.i to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 %or204.i, ptr %arrayidx205.i, align 4
  %arrayidx206.i = getelementptr [256 x i8], ptr @rs, i32 0, i32 %conv151.i
  %168 = ptrtoint ptr %arrayidx206.i to i32
  call void @__asan_load1_noabort(i32 %168)
  %169 = load i8, ptr %arrayidx206.i, align 1
  %conv207.i = zext i8 %169 to i32
  %arrayidx208.i = getelementptr [256 x i8], ptr @rs, i32 0, i32 %conv169.i
  %170 = ptrtoint ptr %arrayidx208.i to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %arrayidx208.i, align 1
  %conv209.i = zext i8 %171 to i32
  %add211.i = add nuw nsw i32 %mul183.i, 3
  %arrayidx212.i = getelementptr i32, ptr @pc2, i32 %add211.i
  %172 = ptrtoint ptr %arrayidx212.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %arrayidx212.i, align 4
  %add214.i = add nuw nsw i32 %mul201.i, 2
  %arrayidx215.i = getelementptr i32, ptr @pc2, i32 %add214.i
  %174 = ptrtoint ptr %arrayidx215.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %arrayidx215.i, align 4
  %or216.i = or i32 %175, %173
  %mul217.i = shl nuw nsw i32 %conv207.i, 1
  %add218.i = or i32 %mul217.i, 1
  %arrayidx219.i = getelementptr i32, ptr @pc2, i32 %add218.i
  %176 = ptrtoint ptr %arrayidx219.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %arrayidx219.i, align 4
  %or220.i = or i32 %or216.i, %177
  %mul221.i = shl nuw nsw i32 %conv209.i, 1
  %arrayidx223.i = getelementptr i32, ptr @pc2, i32 %mul221.i
  %178 = ptrtoint ptr %arrayidx223.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %arrayidx223.i, align 4
  %or224.i = or i32 %or220.i, %179
  %arrayidx225.i = getelementptr i32, ptr %ctx, i32 50
  %180 = ptrtoint ptr %arrayidx225.i to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 %or224.i, ptr %arrayidx225.i, align 4
  %arrayidx226.i = getelementptr [256 x i8], ptr @rs, i32 0, i32 %conv171.i
  %181 = ptrtoint ptr %arrayidx226.i to i32
  call void @__asan_load1_noabort(i32 %181)
  %182 = load i8, ptr %arrayidx226.i, align 1
  %conv227.i = zext i8 %182 to i32
  %arrayidx228.i = getelementptr [256 x i8], ptr @rs, i32 0, i32 %conv189.i
  %183 = ptrtoint ptr %arrayidx228.i to i32
  call void @__asan_load1_noabort(i32 %183)
  %184 = load i8, ptr %arrayidx228.i, align 1
  %conv229.i = zext i8 %184 to i32
  %add231.i = add nuw nsw i32 %mul217.i, 3
  %arrayidx232.i = getelementptr i32, ptr @pc2, i32 %add231.i
  %185 = ptrtoint ptr %arrayidx232.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %arrayidx232.i, align 4
  %add234.i = add nuw nsw i32 %mul221.i, 2
  %arrayidx235.i = getelementptr i32, ptr @pc2, i32 %add234.i
  %187 = ptrtoint ptr %arrayidx235.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %arrayidx235.i, align 4
  %or236.i = or i32 %188, %186
  %mul237.i = shl nuw nsw i32 %conv227.i, 1
  %add238.i = or i32 %mul237.i, 1
  %arrayidx239.i = getelementptr i32, ptr @pc2, i32 %add238.i
  %189 = ptrtoint ptr %arrayidx239.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %arrayidx239.i, align 4
  %or240.i = or i32 %or236.i, %190
  %mul241.i = shl nuw nsw i32 %conv229.i, 1
  %arrayidx243.i = getelementptr i32, ptr @pc2, i32 %mul241.i
  %191 = ptrtoint ptr %arrayidx243.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %arrayidx243.i, align 4
  %or244.i = or i32 %or240.i, %192
  %arrayidx245.i = getelementptr i32, ptr %ctx, i32 52
  %193 = ptrtoint ptr %arrayidx245.i to i32
  call void @__asan_store4_noabort(i32 %193)
  store i32 %or244.i, ptr %arrayidx245.i, align 4
  %arrayidx246.i = getelementptr [256 x i8], ptr @rs, i32 0, i32 %conv207.i
  %194 = ptrtoint ptr %arrayidx246.i to i32
  call void @__asan_load1_noabort(i32 %194)
  %195 = load i8, ptr %arrayidx246.i, align 1
  %conv247.i = zext i8 %195 to i32
  %arrayidx248.i = getelementptr [256 x i8], ptr @rs, i32 0, i32 %conv209.i
  %196 = ptrtoint ptr %arrayidx248.i to i32
  call void @__asan_load1_noabort(i32 %196)
  %197 = load i8, ptr %arrayidx248.i, align 1
  %conv249.i = zext i8 %197 to i32
  %add251.i = add nuw nsw i32 %mul237.i, 3
  %arrayidx252.i = getelementptr i32, ptr @pc2, i32 %add251.i
  %198 = ptrtoint ptr %arrayidx252.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %arrayidx252.i, align 4
  %add254.i = add nuw nsw i32 %mul241.i, 2
  %arrayidx255.i = getelementptr i32, ptr @pc2, i32 %add254.i
  %200 = ptrtoint ptr %arrayidx255.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %arrayidx255.i, align 4
  %or256.i = or i32 %201, %199
  %mul257.i = shl nuw nsw i32 %conv247.i, 1
  %add258.i = or i32 %mul257.i, 1
  %arrayidx259.i = getelementptr i32, ptr @pc2, i32 %add258.i
  %202 = ptrtoint ptr %arrayidx259.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %arrayidx259.i, align 4
  %or260.i = or i32 %or256.i, %203
  %mul261.i = shl nuw nsw i32 %conv249.i, 1
  %arrayidx263.i = getelementptr i32, ptr @pc2, i32 %mul261.i
  %204 = ptrtoint ptr %arrayidx263.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %arrayidx263.i, align 4
  %or264.i = or i32 %or260.i, %205
  %arrayidx265.i = getelementptr i32, ptr %ctx, i32 54
  %206 = ptrtoint ptr %arrayidx265.i to i32
  call void @__asan_store4_noabort(i32 %206)
  store i32 %or264.i, ptr %arrayidx265.i, align 4
  %arrayidx266.i = getelementptr [256 x i8], ptr @rs, i32 0, i32 %conv227.i
  %207 = ptrtoint ptr %arrayidx266.i to i32
  call void @__asan_load1_noabort(i32 %207)
  %208 = load i8, ptr %arrayidx266.i, align 1
  %conv267.i = zext i8 %208 to i32
  %arrayidx268.i = getelementptr [256 x i8], ptr @rs, i32 0, i32 %conv229.i
  %209 = ptrtoint ptr %arrayidx268.i to i32
  call void @__asan_load1_noabort(i32 %209)
  %210 = load i8, ptr %arrayidx268.i, align 1
  %conv269.i = zext i8 %210 to i32
  %add271.i = add nuw nsw i32 %mul257.i, 3
  %arrayidx272.i = getelementptr i32, ptr @pc2, i32 %add271.i
  %211 = ptrtoint ptr %arrayidx272.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %arrayidx272.i, align 4
  %add274.i = add nuw nsw i32 %mul261.i, 2
  %arrayidx275.i = getelementptr i32, ptr @pc2, i32 %add274.i
  %213 = ptrtoint ptr %arrayidx275.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %arrayidx275.i, align 4
  %or276.i = or i32 %214, %212
  %mul277.i = shl nuw nsw i32 %conv267.i, 1
  %add278.i = or i32 %mul277.i, 1
  %arrayidx279.i = getelementptr i32, ptr @pc2, i32 %add278.i
  %215 = ptrtoint ptr %arrayidx279.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %arrayidx279.i, align 4
  %or280.i = or i32 %or276.i, %216
  %mul281.i = shl nuw nsw i32 %conv269.i, 1
  %arrayidx283.i = getelementptr i32, ptr @pc2, i32 %mul281.i
  %217 = ptrtoint ptr %arrayidx283.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %arrayidx283.i, align 4
  %or284.i = or i32 %or280.i, %218
  %arrayidx285.i = getelementptr i32, ptr %ctx, i32 56
  %219 = ptrtoint ptr %arrayidx285.i to i32
  call void @__asan_store4_noabort(i32 %219)
  store i32 %or284.i, ptr %arrayidx285.i, align 4
  %arrayidx286.i = getelementptr [256 x i8], ptr @rs, i32 0, i32 %conv247.i
  %220 = ptrtoint ptr %arrayidx286.i to i32
  call void @__asan_load1_noabort(i32 %220)
  %221 = load i8, ptr %arrayidx286.i, align 1
  %conv287.i = zext i8 %221 to i32
  %arrayidx288.i = getelementptr [256 x i8], ptr @rs, i32 0, i32 %conv249.i
  %222 = ptrtoint ptr %arrayidx288.i to i32
  call void @__asan_load1_noabort(i32 %222)
  %223 = load i8, ptr %arrayidx288.i, align 1
  %conv289.i = zext i8 %223 to i32
  %add291.i = add nuw nsw i32 %mul277.i, 3
  %arrayidx292.i = getelementptr i32, ptr @pc2, i32 %add291.i
  %224 = ptrtoint ptr %arrayidx292.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %arrayidx292.i, align 4
  %add294.i = add nuw nsw i32 %mul281.i, 2
  %arrayidx295.i = getelementptr i32, ptr @pc2, i32 %add294.i
  %226 = ptrtoint ptr %arrayidx295.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %arrayidx295.i, align 4
  %or296.i = or i32 %227, %225
  %mul297.i = shl nuw nsw i32 %conv287.i, 1
  %add298.i = or i32 %mul297.i, 1
  %arrayidx299.i = getelementptr i32, ptr @pc2, i32 %add298.i
  %228 = ptrtoint ptr %arrayidx299.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %arrayidx299.i, align 4
  %or300.i = or i32 %or296.i, %229
  %mul301.i = shl nuw nsw i32 %conv289.i, 1
  %arrayidx303.i = getelementptr i32, ptr @pc2, i32 %mul301.i
  %230 = ptrtoint ptr %arrayidx303.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %arrayidx303.i, align 4
  %or304.i = or i32 %or300.i, %231
  %arrayidx305.i = getelementptr i32, ptr %ctx, i32 58
  %232 = ptrtoint ptr %arrayidx305.i to i32
  call void @__asan_store4_noabort(i32 %232)
  store i32 %or304.i, ptr %arrayidx305.i, align 4
  %arrayidx306.i = getelementptr [256 x i8], ptr @rs, i32 0, i32 %conv267.i
  %233 = ptrtoint ptr %arrayidx306.i to i32
  call void @__asan_load1_noabort(i32 %233)
  %234 = load i8, ptr %arrayidx306.i, align 1
  %conv307.i = zext i8 %234 to i32
  %arrayidx308.i = getelementptr [256 x i8], ptr @rs, i32 0, i32 %conv269.i
  %235 = ptrtoint ptr %arrayidx308.i to i32
  call void @__asan_load1_noabort(i32 %235)
  %236 = load i8, ptr %arrayidx308.i, align 1
  %conv309.i = zext i8 %236 to i32
  %add311.i = add nuw nsw i32 %mul297.i, 3
  %arrayidx312.i = getelementptr i32, ptr @pc2, i32 %add311.i
  %237 = ptrtoint ptr %arrayidx312.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %arrayidx312.i, align 4
  %add314.i = add nuw nsw i32 %mul301.i, 2
  %arrayidx315.i = getelementptr i32, ptr @pc2, i32 %add314.i
  %239 = ptrtoint ptr %arrayidx315.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %arrayidx315.i, align 4
  %or316.i = or i32 %240, %238
  %mul317.i = shl nuw nsw i32 %conv307.i, 1
  %add318.i = or i32 %mul317.i, 1
  %arrayidx319.i = getelementptr i32, ptr @pc2, i32 %add318.i
  %241 = ptrtoint ptr %arrayidx319.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %arrayidx319.i, align 4
  %or320.i = or i32 %or316.i, %242
  %mul321.i = shl nuw nsw i32 %conv309.i, 1
  %arrayidx323.i = getelementptr i32, ptr @pc2, i32 %mul321.i
  %243 = ptrtoint ptr %arrayidx323.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %arrayidx323.i, align 4
  %or324.i = or i32 %or320.i, %244
  %arrayidx325.i = getelementptr i32, ptr %ctx, i32 60
  %245 = ptrtoint ptr %arrayidx325.i to i32
  call void @__asan_store4_noabort(i32 %245)
  store i32 %or324.i, ptr %arrayidx325.i, align 4
  %arrayidx326.i = getelementptr [256 x i8], ptr @rs, i32 0, i32 %conv287.i
  %246 = ptrtoint ptr %arrayidx326.i to i32
  call void @__asan_load1_noabort(i32 %246)
  %247 = load i8, ptr %arrayidx326.i, align 1
  %conv327.i = zext i8 %247 to i32
  %add329.i = add nuw nsw i32 %mul301.i, 3
  %arrayidx330.i = getelementptr i32, ptr @pc2, i32 %add329.i
  %248 = ptrtoint ptr %arrayidx330.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %arrayidx330.i, align 4
  %add332.i = add nuw nsw i32 %mul317.i, 2
  %arrayidx333.i = getelementptr i32, ptr @pc2, i32 %add332.i
  %250 = ptrtoint ptr %arrayidx333.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %arrayidx333.i, align 4
  %or334.i = or i32 %251, %249
  %add336.i = or i32 %mul321.i, 1
  %arrayidx337.i = getelementptr i32, ptr @pc2, i32 %add336.i
  %252 = ptrtoint ptr %arrayidx337.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %arrayidx337.i, align 4
  %or338.i = or i32 %or334.i, %253
  %mul339.i = shl nuw nsw i32 %conv327.i, 1
  %arrayidx341.i = getelementptr i32, ptr @pc2, i32 %mul339.i
  %254 = ptrtoint ptr %arrayidx341.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %arrayidx341.i, align 4
  %or342.i = or i32 %or338.i, %255
  %arrayidx343.i = getelementptr i32, ptr %ctx, i32 62
  %256 = ptrtoint ptr %arrayidx343.i to i32
  call void @__asan_store4_noabort(i32 %256)
  store i32 %or342.i, ptr %arrayidx343.i, align 4
  %257 = load i8, ptr %add.ptr5, align 1
  %258 = lshr i8 %257, 4
  %259 = load i8, ptr %arrayidx.i, align 1
  %260 = and i8 %259, -16
  %or3501119.i = or i8 %258, %260
  %261 = or i8 %or3501119.i, 1
  %add351.i = zext i8 %261 to i32
  %arrayidx352.i = getelementptr [256 x i8], ptr @pc1, i32 0, i32 %add351.i
  %262 = ptrtoint ptr %arrayidx352.i to i32
  call void @__asan_load1_noabort(i32 %262)
  %263 = load i8, ptr %arrayidx352.i, align 1
  %conv353.i = zext i8 %263 to i32
  %264 = load i8, ptr %arrayidx10.i, align 1
  %265 = lshr i8 %264, 4
  %266 = load i8, ptr %arrayidx6.i, align 1
  %267 = and i8 %266, -16
  %or3611120.i = or i8 %265, %267
  %268 = or i8 %or3611120.i, 1
  %add362.i = zext i8 %268 to i32
  %arrayidx363.i = getelementptr [256 x i8], ptr @pc1, i32 0, i32 %add362.i
  %269 = ptrtoint ptr %arrayidx363.i to i32
  call void @__asan_load1_noabort(i32 %269)
  %270 = load i8, ptr %arrayidx363.i, align 1
  %conv364.i = zext i8 %270 to i32
  %271 = load i8, ptr %arrayidx20.i, align 1
  %272 = lshr i8 %271, 4
  %273 = load i8, ptr %arrayidx16.i, align 1
  %274 = and i8 %273, -16
  %or3721121.i = or i8 %272, %274
  %275 = or i8 %or3721121.i, 1
  %add373.i = zext i8 %275 to i32
  %arrayidx374.i = getelementptr [256 x i8], ptr @pc1, i32 0, i32 %add373.i
  %276 = ptrtoint ptr %arrayidx374.i to i32
  call void @__asan_load1_noabort(i32 %276)
  %277 = load i8, ptr %arrayidx374.i, align 1
  %conv375.i = zext i8 %277 to i32
  %278 = load i8, ptr %arrayidx30.i, align 1
  %279 = lshr i8 %278, 4
  %280 = load i8, ptr %arrayidx26.i, align 1
  %281 = and i8 %280, -16
  %or3831122.i = or i8 %279, %281
  %282 = or i8 %or3831122.i, 1
  %add384.i = zext i8 %282 to i32
  %arrayidx385.i = getelementptr [256 x i8], ptr @pc1, i32 0, i32 %add384.i
  %283 = ptrtoint ptr %arrayidx385.i to i32
  call void @__asan_load1_noabort(i32 %283)
  %284 = load i8, ptr %arrayidx385.i, align 1
  %conv386.i = zext i8 %284 to i32
  %mul387.i = shl nuw nsw i32 %conv353.i, 1
  %add388.i = add nuw nsw i32 %mul387.i, 3
  %arrayidx389.i = getelementptr i32, ptr getelementptr inbounds ([1024 x i32], ptr @pc2, i32 0, i32 512), i32 %add388.i
  %285 = ptrtoint ptr %arrayidx389.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load i32, ptr %arrayidx389.i, align 4
  %mul390.i = shl nuw nsw i32 %conv364.i, 1
  %add391.i = add nuw nsw i32 %mul390.i, 2
  %arrayidx392.i = getelementptr i32, ptr getelementptr inbounds ([1024 x i32], ptr @pc2, i32 0, i32 512), i32 %add391.i
  %287 = ptrtoint ptr %arrayidx392.i to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load i32, ptr %arrayidx392.i, align 4
  %or393.i = or i32 %288, %286
  %mul394.i = shl nuw nsw i32 %conv375.i, 1
  %add395.i = or i32 %mul394.i, 1
  %arrayidx396.i = getelementptr i32, ptr getelementptr inbounds ([1024 x i32], ptr @pc2, i32 0, i32 512), i32 %add395.i
  %289 = ptrtoint ptr %arrayidx396.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load i32, ptr %arrayidx396.i, align 4
  %or397.i = or i32 %or393.i, %290
  %mul398.i = shl nuw nsw i32 %conv386.i, 1
  %arrayidx400.i = getelementptr i32, ptr getelementptr inbounds ([1024 x i32], ptr @pc2, i32 0, i32 512), i32 %mul398.i
  %291 = ptrtoint ptr %arrayidx400.i to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load i32, ptr %arrayidx400.i, align 4
  %or401.i = or i32 %or397.i, %292
  %arrayidx402.i = getelementptr i32, ptr %ctx, i32 33
  %293 = ptrtoint ptr %arrayidx402.i to i32
  call void @__asan_store4_noabort(i32 %293)
  store i32 %or401.i, ptr %arrayidx402.i, align 4
  %arrayidx403.i = getelementptr [256 x i8], ptr @rs, i32 0, i32 %conv353.i
  %294 = ptrtoint ptr %arrayidx403.i to i32
  call void @__asan_load1_noabort(i32 %294)
  %295 = load i8, ptr %arrayidx403.i, align 1
  %conv404.i = zext i8 %295 to i32
  %add406.i = add nuw nsw i32 %mul390.i, 3
  %arrayidx407.i = getelementptr i32, ptr getelementptr inbounds ([1024 x i32], ptr @pc2, i32 0, i32 512), i32 %add406.i
  %296 = ptrtoint ptr %arrayidx407.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load i32, ptr %arrayidx407.i, align 4
  %add409.i = add nuw nsw i32 %mul394.i, 2
  %arrayidx410.i = getelementptr i32, ptr getelementptr inbounds ([1024 x i32], ptr @pc2, i32 0, i32 512), i32 %add409.i
  %298 = ptrtoint ptr %arrayidx410.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load i32, ptr %arrayidx410.i, align 4
  %or411.i = or i32 %299, %297
  %add413.i = or i32 %mul398.i, 1
  %arrayidx414.i = getelementptr i32, ptr getelementptr inbounds ([1024 x i32], ptr @pc2, i32 0, i32 512), i32 %add413.i
  %300 = ptrtoint ptr %arrayidx414.i to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load i32, ptr %arrayidx414.i, align 4
  %or415.i = or i32 %or411.i, %301
  %mul416.i = shl nuw nsw i32 %conv404.i, 1
  %arrayidx418.i = getelementptr i32, ptr getelementptr inbounds ([1024 x i32], ptr @pc2, i32 0, i32 512), i32 %mul416.i
  %302 = ptrtoint ptr %arrayidx418.i to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load i32, ptr %arrayidx418.i, align 4
  %or419.i = or i32 %or415.i, %303
  %arrayidx420.i = getelementptr i32, ptr %ctx, i32 35
  %304 = ptrtoint ptr %arrayidx420.i to i32
  call void @__asan_store4_noabort(i32 %304)
  store i32 %or419.i, ptr %arrayidx420.i, align 4
  %arrayidx421.i = getelementptr [256 x i8], ptr @rs, i32 0, i32 %conv364.i
  %305 = ptrtoint ptr %arrayidx421.i to i32
  call void @__asan_load1_noabort(i32 %305)
  %306 = load i8, ptr %arrayidx421.i, align 1
  %conv422.i = zext i8 %306 to i32
  %arrayidx423.i = getelementptr [256 x i8], ptr @rs, i32 0, i32 %conv375.i
  %307 = ptrtoint ptr %arrayidx423.i to i32
  call void @__asan_load1_noabort(i32 %307)
  %308 = load i8, ptr %arrayidx423.i, align 1
  %conv424.i = zext i8 %308 to i32
  %add426.i = add nuw nsw i32 %mul398.i, 3
  %arrayidx427.i = getelementptr i32, ptr getelementptr inbounds ([1024 x i32], ptr @pc2, i32 0, i32 512), i32 %add426.i
  %309 = ptrtoint ptr %arrayidx427.i to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load i32, ptr %arrayidx427.i, align 4
  %add429.i = add nuw nsw i32 %mul416.i, 2
  %arrayidx430.i = getelementptr i32, ptr getelementptr inbounds ([1024 x i32], ptr @pc2, i32 0, i32 512), i32 %add429.i
  %311 = ptrtoint ptr %arrayidx430.i to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load i32, ptr %arrayidx430.i, align 4
  %or431.i = or i32 %312, %310
  %mul432.i = shl nuw nsw i32 %conv422.i, 1
  %add433.i = or i32 %mul432.i, 1
  %arrayidx434.i = getelementptr i32, ptr getelementptr inbounds ([1024 x i32], ptr @pc2, i32 0, i32 512), i32 %add433.i
  %313 = ptrtoint ptr %arrayidx434.i to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load i32, ptr %arrayidx434.i, align 4
  %or435.i = or i32 %or431.i, %314
  %mul436.i = shl nuw nsw i32 %conv424.i, 1
  %arrayidx438.i = getelementptr i32, ptr getelementptr inbounds ([1024 x i32], ptr @pc2, i32 0, i32 512), i32 %mul436.i
  %315 = ptrtoint ptr %arrayidx438.i to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load i32, ptr %arrayidx438.i, align 4
  %or439.i = or i32 %or435.i, %316
  %arrayidx440.i = getelementptr i32, ptr %ctx, i32 37
  %317 = ptrtoint ptr %arrayidx440.i to i32
  call void @__asan_store4_noabort(i32 %317)
  store i32 %or439.i, ptr %arrayidx440.i, align 4
  %arrayidx441.i = getelementptr [256 x i8], ptr @rs, i32 0, i32 %conv386.i
  %318 = ptrtoint ptr %arrayidx441.i to i32
  call void @__asan_load1_noabort(i32 %318)
  %319 = load i8, ptr %arrayidx441.i, align 1
  %conv442.i = zext i8 %319 to i32
  %arrayidx443.i = getelementptr [256 x i8], ptr @rs, i32 0, i32 %conv404.i
  %320 = ptrtoint ptr %arrayidx443.i to i32
  call void @__asan_load1_noabort(i32 %320)
  %321 = load i8, ptr %arrayidx443.i, align 1
  %conv444.i = zext i8 %321 to i32
  %add446.i = add nuw nsw i32 %mul432.i, 3
  %arrayidx447.i = getelementptr i32, ptr getelementptr inbounds ([1024 x i32], ptr @pc2, i32 0, i32 512), i32 %add446.i
  %322 = ptrtoint ptr %arrayidx447.i to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load i32, ptr %arrayidx447.i, align 4
  %add449.i = add nuw nsw i32 %mul436.i, 2
  %arrayidx450.i = getelementptr i32, ptr getelementptr inbounds ([1024 x i32], ptr @pc2, i32 0, i32 512), i32 %add449.i
  %324 = ptrtoint ptr %arrayidx450.i to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load i32, ptr %arrayidx450.i, align 4
  %or451.i = or i32 %325, %323
  %mul452.i = shl nuw nsw i32 %conv442.i, 1
  %add453.i = or i32 %mul452.i, 1
  %arrayidx454.i = getelementptr i32, ptr getelementptr inbounds ([1024 x i32], ptr @pc2, i32 0, i32 512), i32 %add453.i
  %326 = ptrtoint ptr %arrayidx454.i to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load i32, ptr %arrayidx454.i, align 4
  %or455.i = or i32 %or451.i, %327
  %mul456.i = shl nuw nsw i32 %conv444.i, 1
  %arrayidx458.i = getelementptr i32, ptr getelementptr inbounds ([1024 x i32], ptr @pc2, i32 0, i32 512), i32 %mul456.i
  %328 = ptrtoint ptr %arrayidx458.i to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load i32, ptr %arrayidx458.i, align 4
  %or459.i = or i32 %or455.i, %329
  %arrayidx460.i = getelementptr i32, ptr %ctx, i32 39
  %330 = ptrtoint ptr %arrayidx460.i to i32
  call void @__asan_store4_noabort(i32 %330)
  store i32 %or459.i, ptr %arrayidx460.i, align 4
  %arrayidx461.i = getelementptr [256 x i8], ptr @rs, i32 0, i32 %conv422.i
  %331 = ptrtoint ptr %arrayidx461.i to i32
  call void @__asan_load1_noabort(i32 %331)
  %332 = load i8, ptr %arrayidx461.i, align 1
  %conv462.i = zext i8 %332 to i32
  %arrayidx463.i = getelementptr [256 x i8], ptr @rs, i32 0, i32 %conv424.i
  %333 = ptrtoint ptr %arrayidx463.i to i32
  call void @__asan_load1_noabort(i32 %333)
  %334 = load i8, ptr %arrayidx463.i, align 1
  %conv464.i = zext i8 %334 to i32
  %add466.i = add nuw nsw i32 %mul452.i, 3
  %arrayidx467.i = getelementptr i32, ptr getelementptr inbounds ([1024 x i32], ptr @pc2, i32 0, i32 512), i32 %add466.i
  %335 = ptrtoint ptr %arrayidx467.i to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load i32, ptr %arrayidx467.i, align 4
  %add469.i = add nuw nsw i32 %mul456.i, 2
  %arrayidx470.i = getelementptr i32, ptr getelementptr inbounds ([1024 x i32], ptr @pc2, i32 0, i32 512), i32 %add469.i
  %337 = ptrtoint ptr %arrayidx470.i to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load i32, ptr %arrayidx470.i, align 4
  %or471.i = or i32 %338, %336
  %mul472.i = shl nuw nsw i32 %conv462.i, 1
  %add473.i = or i32 %mul472.i, 1
  %arrayidx474.i = getelementptr i32, ptr getelementptr inbounds ([1024 x i32], ptr @pc2, i32 0, i32 512), i32 %add473.i
  %339 = ptrtoint ptr %arrayidx474.i to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load i32, ptr %arrayidx474.i, align 4
  %or475.i = or i32 %or471.i, %340
  %mul476.i = shl nuw nsw i32 %conv464.i, 1
  %arrayidx478.i = getelementptr i32, ptr getelementptr inbounds ([1024 x i32], ptr @pc2, i32 0, i32 512), i32 %mul476.i
  %341 = ptrtoint ptr %arrayidx478.i to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load i32, ptr %arrayidx478.i, align 4
  %or479.i = or i32 %or475.i, %342
  %arrayidx480.i = getelementptr i32, ptr %ctx, i32 41
  %343 = ptrtoint ptr %arrayidx480.i to i32
  call void @__asan_store4_noabort(i32 %343)
  store i32 %or479.i, ptr %arrayidx480.i, align 4
  %arrayidx481.i = getelementptr [256 x i8], ptr @rs, i32 0, i32 %conv442.i
  %344 = ptrtoint ptr %arrayidx481.i to i32
  call void @__asan_load1_noabort(i32 %344)
  %345 = load i8, ptr %arrayidx481.i, align 1
  %conv482.i = zext i8 %345 to i32
  %arrayidx483.i = getelementptr [256 x i8], ptr @rs, i32 0, i32 %conv444.i
  %346 = ptrtoint ptr %arrayidx483.i to i32
  call void @__asan_load1_noabort(i32 %346)
  %347 = load i8, ptr %arrayidx483.i, align 1
  %conv484.i = zext i8 %347 to i32
  %add486.i = add nuw nsw i32 %mul472.i, 3
  %arrayidx487.i = getelementptr i32, ptr getelementptr inbounds ([1024 x i32], ptr @pc2, i32 0, i32 512), i32 %add486.i
  %348 = ptrtoint ptr %arrayidx487.i to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load i32, ptr %arrayidx487.i, align 4
  %add489.i = add nuw nsw i32 %mul476.i, 2
  %arrayidx490.i = getelementptr i32, ptr getelementptr inbounds ([1024 x i32], ptr @pc2, i32 0, i32 512), i32 %add489.i
  %350 = ptrtoint ptr %arrayidx490.i to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load i32, ptr %arrayidx490.i, align 4
  %or491.i = or i32 %351, %349
  %mul492.i = shl nuw nsw i32 %conv482.i, 1
  %add493.i = or i32 %mul492.i, 1
  %arrayidx494.i = getelementptr i32, ptr getelementptr inbounds ([1024 x i32], ptr @pc2, i32 0, i32 512), i32 %add493.i
  %352 = ptrtoint ptr %arrayidx494.i to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load i32, ptr %arrayidx494.i, align 4
  %or495.i = or i32 %or491.i, %353
  %mul496.i = shl nuw nsw i32 %conv484.i, 1
  %arrayidx498.i = getelementptr i32, ptr getelementptr inbounds ([1024 x i32], ptr @pc2, i32 0, i32 512), i32 %mul496.i
  %354 = ptrtoint ptr %arrayidx498.i to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load i32, ptr %arrayidx498.i, align 4
  %or499.i = or i32 %or495.i, %355
  %arrayidx500.i = getelementptr i32, ptr %ctx, i32 43
  %356 = ptrtoint ptr %arrayidx500.i to i32
  call void @__asan_store4_noabort(i32 %356)
  store i32 %or499.i, ptr %arrayidx500.i, align 4
  %arrayidx501.i = getelementptr [256 x i8], ptr @rs, i32 0, i32 %conv462.i
  %357 = ptrtoint ptr %arrayidx501.i to i32
  call void @__asan_load1_noabort(i32 %357)
  %358 = load i8, ptr %arrayidx501.i, align 1
  %conv502.i = zext i8 %358 to i32
  %arrayidx503.i = getelementptr [256 x i8], ptr @rs, i32 0, i32 %conv464.i
  %359 = ptrtoint ptr %arrayidx503.i to i32
  call void @__asan_load1_noabort(i32 %359)
  %360 = load i8, ptr %arrayidx503.i, align 1
  %conv504.i = zext i8 %360 to i32
  %add506.i = add nuw nsw i32 %mul492.i, 3
  %arrayidx507.i = getelementptr i32, ptr getelementptr inbounds ([1024 x i32], ptr @pc2, i32 0, i32 512), i32 %add506.i
  %361 = ptrtoint ptr %arrayidx507.i to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load i32, ptr %arrayidx507.i, align 4
  %add509.i = add nuw nsw i32 %mul496.i, 2
  %arrayidx510.i = getelementptr i32, ptr getelementptr inbounds ([1024 x i32], ptr @pc2, i32 0, i32 512), i32 %add509.i
  %363 = ptrtoint ptr %arrayidx510.i to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load i32, ptr %arrayidx510.i, align 4
  %or511.i = or i32 %364, %362
  %mul512.i = shl nuw nsw i32 %conv502.i, 1
  %add513.i = or i32 %mul512.i, 1
  %arrayidx514.i = getelementptr i32, ptr getelementptr inbounds ([1024 x i32], ptr @pc2, i32 0, i32 512), i32 %add513.i
  %365 = ptrtoint ptr %arrayidx514.i to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load i32, ptr %arrayidx514.i, align 4
  %or515.i = or i32 %or511.i, %366
  %mul516.i = shl nuw nsw i32 %conv504.i, 1
  %arrayidx518.i = getelementptr i32, ptr getelementptr inbounds ([1024 x i32], ptr @pc2, i32 0, i32 512), i32 %mul516.i
  %367 = ptrtoint ptr %arrayidx518.i to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load i32, ptr %arrayidx518.i, align 4
  %or519.i = or i32 %or515.i, %368
  %arrayidx520.i = getelementptr i32, ptr %ctx, i32 45
  %369 = ptrtoint ptr %arrayidx520.i to i32
  call void @__asan_store4_noabort(i32 %369)
  store i32 %or519.i, ptr %arrayidx520.i, align 4
  %arrayidx521.i = getelementptr [256 x i8], ptr @rs, i32 0, i32 %conv482.i
  %370 = ptrtoint ptr %arrayidx521.i to i32
  call void @__asan_load1_noabort(i32 %370)
  %371 = load i8, ptr %arrayidx521.i, align 1
  %conv522.i = zext i8 %371 to i32
  %arrayidx523.i = getelementptr [256 x i8], ptr @rs, i32 0, i32 %conv484.i
  %372 = ptrtoint ptr %arrayidx523.i to i32
  call void @__asan_load1_noabort(i32 %372)
  %373 = load i8, ptr %arrayidx523.i, align 1
  %conv524.i = zext i8 %373 to i32
  %add526.i = add nuw nsw i32 %mul512.i, 3
  %arrayidx527.i = getelementptr i32, ptr getelementptr inbounds ([1024 x i32], ptr @pc2, i32 0, i32 512), i32 %add526.i
  %374 = ptrtoint ptr %arrayidx527.i to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load i32, ptr %arrayidx527.i, align 4
  %add529.i = add nuw nsw i32 %mul516.i, 2
  %arrayidx530.i = getelementptr i32, ptr getelementptr inbounds ([1024 x i32], ptr @pc2, i32 0, i32 512), i32 %add529.i
  %376 = ptrtoint ptr %arrayidx530.i to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load i32, ptr %arrayidx530.i, align 4
  %or531.i = or i32 %377, %375
  %mul532.i = shl nuw nsw i32 %conv522.i, 1
  %add533.i = or i32 %mul532.i, 1
  %arrayidx534.i = getelementptr i32, ptr getelementptr inbounds ([1024 x i32], ptr @pc2, i32 0, i32 512), i32 %add533.i
  %378 = ptrtoint ptr %arrayidx534.i to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load i32, ptr %arrayidx534.i, align 4
  %or535.i = or i32 %or531.i, %379
  %mul536.i = shl nuw nsw i32 %conv524.i, 1
  %arrayidx538.i = getelementptr i32, ptr getelementptr inbounds ([1024 x i32], ptr @pc2, i32 0, i32 512), i32 %mul536.i
  %380 = ptrtoint ptr %arrayidx538.i to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load i32, ptr %arrayidx538.i, align 4
  %or539.i = or i32 %or535.i, %381
  %arrayidx540.i = getelementptr i32, ptr %ctx, i32 47
  %382 = ptrtoint ptr %arrayidx540.i to i32
  call void @__asan_store4_noabort(i32 %382)
  store i32 %or539.i, ptr %arrayidx540.i, align 4
  %arrayidx541.i = getelementptr [256 x i8], ptr @rs, i32 0, i32 %conv502.i
  %383 = ptrtoint ptr %arrayidx541.i to i32
  call void @__asan_load1_noabort(i32 %383)
  %384 = load i8, ptr %arrayidx541.i, align 1
  %conv542.i = zext i8 %384 to i32
  %add544.i = add nuw nsw i32 %mul516.i, 3
  %arrayidx545.i = getelementptr i32, ptr getelementptr inbounds ([1024 x i32], ptr @pc2, i32 0, i32 512), i32 %add544.i
  %385 = ptrtoint ptr %arrayidx545.i to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load i32, ptr %arrayidx545.i, align 4
  %add547.i = add nuw nsw i32 %mul532.i, 2
  %arrayidx548.i = getelementptr i32, ptr getelementptr inbounds ([1024 x i32], ptr @pc2, i32 0, i32 512), i32 %add547.i
  %387 = ptrtoint ptr %arrayidx548.i to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load i32, ptr %arrayidx548.i, align 4
  %or549.i = or i32 %388, %386
  %add551.i = or i32 %mul536.i, 1
  %arrayidx552.i = getelementptr i32, ptr getelementptr inbounds ([1024 x i32], ptr @pc2, i32 0, i32 512), i32 %add551.i
  %389 = ptrtoint ptr %arrayidx552.i to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load i32, ptr %arrayidx552.i, align 4
  %or553.i = or i32 %or549.i, %390
  %mul554.i = shl nuw nsw i32 %conv542.i, 1
  %arrayidx556.i = getelementptr i32, ptr getelementptr inbounds ([1024 x i32], ptr @pc2, i32 0, i32 512), i32 %mul554.i
  %391 = ptrtoint ptr %arrayidx556.i to i32
  call void @__asan_load4_noabort(i32 %391)
  %392 = load i32, ptr %arrayidx556.i, align 4
  %or557.i = or i32 %or553.i, %392
  %arrayidx558.i = getelementptr i32, ptr %ctx, i32 49
  %393 = ptrtoint ptr %arrayidx558.i to i32
  call void @__asan_store4_noabort(i32 %393)
  store i32 %or557.i, ptr %arrayidx558.i, align 4
  %arrayidx559.i = getelementptr [256 x i8], ptr @rs, i32 0, i32 %conv504.i
  %394 = ptrtoint ptr %arrayidx559.i to i32
  call void @__asan_load1_noabort(i32 %394)
  %395 = load i8, ptr %arrayidx559.i, align 1
  %conv560.i = zext i8 %395 to i32
  %arrayidx561.i = getelementptr [256 x i8], ptr @rs, i32 0, i32 %conv522.i
  %396 = ptrtoint ptr %arrayidx561.i to i32
  call void @__asan_load1_noabort(i32 %396)
  %397 = load i8, ptr %arrayidx561.i, align 1
  %conv562.i = zext i8 %397 to i32
  %add564.i = add nuw nsw i32 %mul536.i, 3
  %arrayidx565.i = getelementptr i32, ptr getelementptr inbounds ([1024 x i32], ptr @pc2, i32 0, i32 512), i32 %add564.i
  %398 = ptrtoint ptr %arrayidx565.i to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load i32, ptr %arrayidx565.i, align 4
  %add567.i = add nuw nsw i32 %mul554.i, 2
  %arrayidx568.i = getelementptr i32, ptr getelementptr inbounds ([1024 x i32], ptr @pc2, i32 0, i32 512), i32 %add567.i
  %400 = ptrtoint ptr %arrayidx568.i to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load i32, ptr %arrayidx568.i, align 4
  %or569.i = or i32 %401, %399
  %mul570.i = shl nuw nsw i32 %conv560.i, 1
  %add571.i = or i32 %mul570.i, 1
  %arrayidx572.i = getelementptr i32, ptr getelementptr inbounds ([1024 x i32], ptr @pc2, i32 0, i32 512), i32 %add571.i
  %402 = ptrtoint ptr %arrayidx572.i to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load i32, ptr %arrayidx572.i, align 4
  %or573.i = or i32 %or569.i, %403
  %mul574.i = shl nuw nsw i32 %conv562.i, 1
  %arrayidx576.i = getelementptr i32, ptr getelementptr inbounds ([1024 x i32], ptr @pc2, i32 0, i32 512), i32 %mul574.i
  %404 = ptrtoint ptr %arrayidx576.i to i32
  call void @__asan_load4_noabort(i32 %404)
  %405 = load i32, ptr %arrayidx576.i, align 4
  %or577.i = or i32 %or573.i, %405
  %arrayidx578.i = getelementptr i32, ptr %ctx, i32 51
  %406 = ptrtoint ptr %arrayidx578.i to i32
  call void @__asan_store4_noabort(i32 %406)
  store i32 %or577.i, ptr %arrayidx578.i, align 4
  %arrayidx579.i = getelementptr [256 x i8], ptr @rs, i32 0, i32 %conv524.i
  %407 = ptrtoint ptr %arrayidx579.i to i32
  call void @__asan_load1_noabort(i32 %407)
  %408 = load i8, ptr %arrayidx579.i, align 1
  %conv580.i = zext i8 %408 to i32
  %arrayidx581.i = getelementptr [256 x i8], ptr @rs, i32 0, i32 %conv542.i
  %409 = ptrtoint ptr %arrayidx581.i to i32
  call void @__asan_load1_noabort(i32 %409)
  %410 = load i8, ptr %arrayidx581.i, align 1
  %conv582.i = zext i8 %410 to i32
  %add584.i = add nuw nsw i32 %mul570.i, 3
  %arrayidx585.i = getelementptr i32, ptr getelementptr inbounds ([1024 x i32], ptr @pc2, i32 0, i32 512), i32 %add584.i
  %411 = ptrtoint ptr %arrayidx585.i to i32
  call void @__asan_load4_noabort(i32 %411)
  %412 = load i32, ptr %arrayidx585.i, align 4
  %add587.i = add nuw nsw i32 %mul574.i, 2
  %arrayidx588.i = getelementptr i32, ptr getelementptr inbounds ([1024 x i32], ptr @pc2, i32 0, i32 512), i32 %add587.i
  %413 = ptrtoint ptr %arrayidx588.i to i32
  call void @__asan_load4_noabort(i32 %413)
  %414 = load i32, ptr %arrayidx588.i, align 4
  %or589.i = or i32 %414, %412
  %mul590.i = shl nuw nsw i32 %conv580.i, 1
  %add591.i = or i32 %mul590.i, 1
  %arrayidx592.i = getelementptr i32, ptr getelementptr inbounds ([1024 x i32], ptr @pc2, i32 0, i32 512), i32 %add591.i
  %415 = ptrtoint ptr %arrayidx592.i to i32
  call void @__asan_load4_noabort(i32 %415)
  %416 = load i32, ptr %arrayidx592.i, align 4
  %or593.i = or i32 %or589.i, %416
  %mul594.i = shl nuw nsw i32 %conv582.i, 1
  %arrayidx596.i = getelementptr i32, ptr getelementptr inbounds ([1024 x i32], ptr @pc2, i32 0, i32 512), i32 %mul594.i
  %417 = ptrtoint ptr %arrayidx596.i to i32
  call void @__asan_load4_noabort(i32 %417)
  %418 = load i32, ptr %arrayidx596.i, align 4
  %or597.i = or i32 %or593.i, %418
  %arrayidx598.i = getelementptr i32, ptr %ctx, i32 53
  %419 = ptrtoint ptr %arrayidx598.i to i32
  call void @__asan_store4_noabort(i32 %419)
  store i32 %or597.i, ptr %arrayidx598.i, align 4
  %arrayidx599.i = getelementptr [256 x i8], ptr @rs, i32 0, i32 %conv560.i
  %420 = ptrtoint ptr %arrayidx599.i to i32
  call void @__asan_load1_noabort(i32 %420)
  %421 = load i8, ptr %arrayidx599.i, align 1
  %conv600.i = zext i8 %421 to i32
  %arrayidx601.i = getelementptr [256 x i8], ptr @rs, i32 0, i32 %conv562.i
  %422 = ptrtoint ptr %arrayidx601.i to i32
  call void @__asan_load1_noabort(i32 %422)
  %423 = load i8, ptr %arrayidx601.i, align 1
  %conv602.i = zext i8 %423 to i32
  %add604.i = add nuw nsw i32 %mul590.i, 3
  %arrayidx605.i = getelementptr i32, ptr getelementptr inbounds ([1024 x i32], ptr @pc2, i32 0, i32 512), i32 %add604.i
  %424 = ptrtoint ptr %arrayidx605.i to i32
  call void @__asan_load4_noabort(i32 %424)
  %425 = load i32, ptr %arrayidx605.i, align 4
  %add607.i = add nuw nsw i32 %mul594.i, 2
  %arrayidx608.i = getelementptr i32, ptr getelementptr inbounds ([1024 x i32], ptr @pc2, i32 0, i32 512), i32 %add607.i
  %426 = ptrtoint ptr %arrayidx608.i to i32
  call void @__asan_load4_noabort(i32 %426)
  %427 = load i32, ptr %arrayidx608.i, align 4
  %or609.i = or i32 %427, %425
  %mul610.i = shl nuw nsw i32 %conv600.i, 1
  %add611.i = or i32 %mul610.i, 1
  %arrayidx612.i = getelementptr i32, ptr getelementptr inbounds ([1024 x i32], ptr @pc2, i32 0, i32 512), i32 %add611.i
  %428 = ptrtoint ptr %arrayidx612.i to i32
  call void @__asan_load4_noabort(i32 %428)
  %429 = load i32, ptr %arrayidx612.i, align 4
  %or613.i = or i32 %or609.i, %429
  %mul614.i = shl nuw nsw i32 %conv602.i, 1
  %arrayidx616.i = getelementptr i32, ptr getelementptr inbounds ([1024 x i32], ptr @pc2, i32 0, i32 512), i32 %mul614.i
  %430 = ptrtoint ptr %arrayidx616.i to i32
  call void @__asan_load4_noabort(i32 %430)
  %431 = load i32, ptr %arrayidx616.i, align 4
  %or617.i = or i32 %or613.i, %431
  %arrayidx618.i = getelementptr i32, ptr %ctx, i32 55
  %432 = ptrtoint ptr %arrayidx618.i to i32
  call void @__asan_store4_noabort(i32 %432)
  store i32 %or617.i, ptr %arrayidx618.i, align 4
  %arrayidx619.i = getelementptr [256 x i8], ptr @rs, i32 0, i32 %conv580.i
  %433 = ptrtoint ptr %arrayidx619.i to i32
  call void @__asan_load1_noabort(i32 %433)
  %434 = load i8, ptr %arrayidx619.i, align 1
  %conv620.i = zext i8 %434 to i32
  %arrayidx621.i = getelementptr [256 x i8], ptr @rs, i32 0, i32 %conv582.i
  %435 = ptrtoint ptr %arrayidx621.i to i32
  call void @__asan_load1_noabort(i32 %435)
  %436 = load i8, ptr %arrayidx621.i, align 1
  %conv622.i = zext i8 %436 to i32
  %add624.i = add nuw nsw i32 %mul610.i, 3
  %arrayidx625.i = getelementptr i32, ptr getelementptr inbounds ([1024 x i32], ptr @pc2, i32 0, i32 512), i32 %add624.i
  %437 = ptrtoint ptr %arrayidx625.i to i32
  call void @__asan_load4_noabort(i32 %437)
  %438 = load i32, ptr %arrayidx625.i, align 4
  %add627.i = add nuw nsw i32 %mul614.i, 2
  %arrayidx628.i = getelementptr i32, ptr getelementptr inbounds ([1024 x i32], ptr @pc2, i32 0, i32 512), i32 %add627.i
  %439 = ptrtoint ptr %arrayidx628.i to i32
  call void @__asan_load4_noabort(i32 %439)
  %440 = load i32, ptr %arrayidx628.i, align 4
  %or629.i = or i32 %440, %438
  %mul630.i = shl nuw nsw i32 %conv620.i, 1
  %add631.i = or i32 %mul630.i, 1
  %arrayidx632.i = getelementptr i32, ptr getelementptr inbounds ([1024 x i32], ptr @pc2, i32 0, i32 512), i32 %add631.i
  %441 = ptrtoint ptr %arrayidx632.i to i32
  call void @__asan_load4_noabort(i32 %441)
  %442 = load i32, ptr %arrayidx632.i, align 4
  %or633.i = or i32 %or629.i, %442
  %mul634.i = shl nuw nsw i32 %conv622.i, 1
  %arrayidx636.i = getelementptr i32, ptr getelementptr inbounds ([1024 x i32], ptr @pc2, i32 0, i32 512), i32 %mul634.i
  %443 = ptrtoint ptr %arrayidx636.i to i32
  call void @__asan_load4_noabort(i32 %443)
  %444 = load i32, ptr %arrayidx636.i, align 4
  %or637.i = or i32 %or633.i, %444
  %arrayidx638.i = getelementptr i32, ptr %ctx, i32 57
  %445 = ptrtoint ptr %arrayidx638.i to i32
  call void @__asan_store4_noabort(i32 %445)
  store i32 %or637.i, ptr %arrayidx638.i, align 4
  %arrayidx639.i = getelementptr [256 x i8], ptr @rs, i32 0, i32 %conv600.i
  %446 = ptrtoint ptr %arrayidx639.i to i32
  call void @__asan_load1_noabort(i32 %446)
  %447 = load i8, ptr %arrayidx639.i, align 1
  %conv640.i = zext i8 %447 to i32
  %arrayidx641.i = getelementptr [256 x i8], ptr @rs, i32 0, i32 %conv602.i
  %448 = ptrtoint ptr %arrayidx641.i to i32
  call void @__asan_load1_noabort(i32 %448)
  %449 = load i8, ptr %arrayidx641.i, align 1
  %conv642.i = zext i8 %449 to i32
  %add644.i = add nuw nsw i32 %mul630.i, 3
  %arrayidx645.i = getelementptr i32, ptr getelementptr inbounds ([1024 x i32], ptr @pc2, i32 0, i32 512), i32 %add644.i
  %450 = ptrtoint ptr %arrayidx645.i to i32
  call void @__asan_load4_noabort(i32 %450)
  %451 = load i32, ptr %arrayidx645.i, align 4
  %add647.i = add nuw nsw i32 %mul634.i, 2
  %arrayidx648.i = getelementptr i32, ptr getelementptr inbounds ([1024 x i32], ptr @pc2, i32 0, i32 512), i32 %add647.i
  %452 = ptrtoint ptr %arrayidx648.i to i32
  call void @__asan_load4_noabort(i32 %452)
  %453 = load i32, ptr %arrayidx648.i, align 4
  %or649.i = or i32 %453, %451
  %mul650.i = shl nuw nsw i32 %conv640.i, 1
  %add651.i = or i32 %mul650.i, 1
  %arrayidx652.i = getelementptr i32, ptr getelementptr inbounds ([1024 x i32], ptr @pc2, i32 0, i32 512), i32 %add651.i
  %454 = ptrtoint ptr %arrayidx652.i to i32
  call void @__asan_load4_noabort(i32 %454)
  %455 = load i32, ptr %arrayidx652.i, align 4
  %or653.i = or i32 %or649.i, %455
  %mul654.i = shl nuw nsw i32 %conv642.i, 1
  %arrayidx656.i = getelementptr i32, ptr getelementptr inbounds ([1024 x i32], ptr @pc2, i32 0, i32 512), i32 %mul654.i
  %456 = ptrtoint ptr %arrayidx656.i to i32
  call void @__asan_load4_noabort(i32 %456)
  %457 = load i32, ptr %arrayidx656.i, align 4
  %or657.i = or i32 %or653.i, %457
  %arrayidx658.i = getelementptr i32, ptr %ctx, i32 59
  %458 = ptrtoint ptr %arrayidx658.i to i32
  call void @__asan_store4_noabort(i32 %458)
  store i32 %or657.i, ptr %arrayidx658.i, align 4
  %arrayidx659.i = getelementptr [256 x i8], ptr @rs, i32 0, i32 %conv620.i
  %459 = ptrtoint ptr %arrayidx659.i to i32
  call void @__asan_load1_noabort(i32 %459)
  %460 = load i8, ptr %arrayidx659.i, align 1
  %conv660.i = zext i8 %460 to i32
  %arrayidx661.i = getelementptr [256 x i8], ptr @rs, i32 0, i32 %conv622.i
  %461 = ptrtoint ptr %arrayidx661.i to i32
  call void @__asan_load1_noabort(i32 %461)
  %462 = load i8, ptr %arrayidx661.i, align 1
  %conv662.i = zext i8 %462 to i32
  %add664.i = add nuw nsw i32 %mul650.i, 3
  %arrayidx665.i = getelementptr i32, ptr getelementptr inbounds ([1024 x i32], ptr @pc2, i32 0, i32 512), i32 %add664.i
  %463 = ptrtoint ptr %arrayidx665.i to i32
  call void @__asan_load4_noabort(i32 %463)
  %464 = load i32, ptr %arrayidx665.i, align 4
  %add667.i = add nuw nsw i32 %mul654.i, 2
  %arrayidx668.i = getelementptr i32, ptr getelementptr inbounds ([1024 x i32], ptr @pc2, i32 0, i32 512), i32 %add667.i
  %465 = ptrtoint ptr %arrayidx668.i to i32
  call void @__asan_load4_noabort(i32 %465)
  %466 = load i32, ptr %arrayidx668.i, align 4
  %or669.i = or i32 %466, %464
  %mul670.i = shl nuw nsw i32 %conv660.i, 1
  %add671.i = or i32 %mul670.i, 1
  %arrayidx672.i = getelementptr i32, ptr getelementptr inbounds ([1024 x i32], ptr @pc2, i32 0, i32 512), i32 %add671.i
  %467 = ptrtoint ptr %arrayidx672.i to i32
  call void @__asan_load4_noabort(i32 %467)
  %468 = load i32, ptr %arrayidx672.i, align 4
  %or673.i = or i32 %or669.i, %468
  %mul674.i = shl nuw nsw i32 %conv662.i, 1
  %arrayidx676.i = getelementptr i32, ptr getelementptr inbounds ([1024 x i32], ptr @pc2, i32 0, i32 512), i32 %mul674.i
  %469 = ptrtoint ptr %arrayidx676.i to i32
  call void @__asan_load4_noabort(i32 %469)
  %470 = load i32, ptr %arrayidx676.i, align 4
  %or677.i = or i32 %or673.i, %470
  %arrayidx678.i = getelementptr i32, ptr %ctx, i32 61
  %471 = ptrtoint ptr %arrayidx678.i to i32
  call void @__asan_store4_noabort(i32 %471)
  store i32 %or677.i, ptr %arrayidx678.i, align 4
  %arrayidx679.i = getelementptr [256 x i8], ptr @rs, i32 0, i32 %conv640.i
  %472 = ptrtoint ptr %arrayidx679.i to i32
  call void @__asan_load1_noabort(i32 %472)
  %473 = load i8, ptr %arrayidx679.i, align 1
  %conv680.i = zext i8 %473 to i32
  %add682.i = add nuw nsw i32 %mul654.i, 3
  %arrayidx683.i = getelementptr i32, ptr getelementptr inbounds ([1024 x i32], ptr @pc2, i32 0, i32 512), i32 %add682.i
  %474 = ptrtoint ptr %arrayidx683.i to i32
  call void @__asan_load4_noabort(i32 %474)
  %475 = load i32, ptr %arrayidx683.i, align 4
  %add685.i = add nuw nsw i32 %mul670.i, 2
  %arrayidx686.i = getelementptr i32, ptr getelementptr inbounds ([1024 x i32], ptr @pc2, i32 0, i32 512), i32 %add685.i
  %476 = ptrtoint ptr %arrayidx686.i to i32
  call void @__asan_load4_noabort(i32 %476)
  %477 = load i32, ptr %arrayidx686.i, align 4
  %or687.i = or i32 %477, %475
  %add689.i = or i32 %mul674.i, 1
  %arrayidx690.i = getelementptr i32, ptr getelementptr inbounds ([1024 x i32], ptr @pc2, i32 0, i32 512), i32 %add689.i
  %478 = ptrtoint ptr %arrayidx690.i to i32
  call void @__asan_load4_noabort(i32 %478)
  %479 = load i32, ptr %arrayidx690.i, align 4
  %or691.i = or i32 %or687.i, %479
  %mul692.i = shl nuw nsw i32 %conv680.i, 1
  %arrayidx694.i = getelementptr i32, ptr getelementptr inbounds ([1024 x i32], ptr @pc2, i32 0, i32 512), i32 %mul692.i
  %480 = ptrtoint ptr %arrayidx694.i to i32
  call void @__asan_load4_noabort(i32 %480)
  %481 = load i32, ptr %arrayidx694.i, align 4
  %or695.i = or i32 %or691.i, %481
  %arrayidx696.i = getelementptr i32, ptr %ctx, i32 63
  %482 = ptrtoint ptr %arrayidx696.i to i32
  call void @__asan_store4_noabort(i32 %482)
  store i32 %or695.i, ptr %arrayidx696.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end3
  %d.01123.i = phi i32 [ 0, %if.end3 ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %mul698.i = shl nuw nsw i32 %d.01123.i, 1
  %arrayidx699.i = getelementptr i32, ptr %add.ptr, i32 %mul698.i
  %483 = ptrtoint ptr %arrayidx699.i to i32
  call void @__asan_load4_noabort(i32 %483)
  %484 = load i32, ptr %arrayidx699.i, align 4
  %add701.i = or i32 %mul698.i, 1
  %arrayidx702.i = getelementptr i32, ptr %add.ptr, i32 %add701.i
  %485 = ptrtoint ptr %arrayidx702.i to i32
  call void @__asan_load4_noabort(i32 %485)
  %486 = load i32, ptr %arrayidx702.i, align 4
  %xor.i = xor i32 %486, %484
  %and703.i = and i32 %xor.i, -65536
  %xor704.i = xor i32 %and703.i, %484
  %xor705.i = xor i32 %and703.i, %486
  %or.i.i = call i32 @llvm.fshl.i32(i32 %486, i32 %xor705.i, i32 18) #5
  %487 = ptrtoint ptr %arrayidx699.i to i32
  call void @__asan_store4_noabort(i32 %487)
  store i32 %xor704.i, ptr %arrayidx699.i, align 4
  %488 = ptrtoint ptr %arrayidx702.i to i32
  call void @__asan_store4_noabort(i32 %488)
  store i32 %or.i.i, ptr %arrayidx702.i, align 4
  %inc.i = add nuw nsw i32 %d.01123.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 16
  br i1 %exitcond.not.i, label %dkey.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

dkey.exit:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr6 = getelementptr i32, ptr %ctx, i32 64
  %add.ptr7 = getelementptr i8, ptr %key, i32 16
  %call8 = call fastcc i32 @des_ekey(ptr noundef %add.ptr6, ptr noundef %add.ptr7)
  br label %cleanup

cleanup:                                          ; preds = %dkey.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0.i, %dkey.exit ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @des3_ede_encrypt(ptr nocapture noundef readonly %dctx, ptr nocapture noundef writeonly %dst, ptr nocapture noundef readonly %src) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %src to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %src, align 1
  %2 = tail call i32 @llvm.bswap.i32(i32 %1) #5
  %add.ptr = getelementptr i8, ptr %src, i32 4
  %3 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %3, i32 4)
  %4 = load i32, ptr %add.ptr, align 1
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #5
  %or.i = tail call i32 @llvm.fshl.i32(i32 %5, i32 %5, i32 4) #5
  %xor = xor i32 %or.i, %2
  %and = and i32 %xor, -252645136
  %xor3 = xor i32 %and, %or.i
  %xor4 = xor i32 %and, %2
  %or.i555 = tail call i32 @llvm.fshl.i32(i32 %xor3, i32 %xor3, i32 12) #5
  %xor6 = xor i32 %or.i555, %xor4
  %and7 = and i32 %xor6, -65536
  %xor8 = xor i32 %and7, %or.i555
  %xor9 = xor i32 %and7, %xor4
  %or.i556 = tail call i32 @llvm.fshl.i32(i32 %or.i555, i32 %xor8, i32 18)
  %xor11 = xor i32 %or.i556, %xor9
  %and12 = and i32 %xor11, -858993460
  %xor13 = xor i32 %and12, %or.i556
  %xor14 = xor i32 %and12, %xor9
  %or.i557 = tail call i32 @llvm.fshl.i32(i32 %xor13, i32 %xor13, i32 6) #5
  %xor16 = xor i32 %or.i557, %xor14
  %and17 = and i32 %xor16, -16711936
  %xor18 = xor i32 %and17, %or.i557
  %xor19 = xor i32 %and17, %xor14
  %or.i558 = tail call i32 @llvm.fshl.i32(i32 %or.i557, i32 %xor18, i32 25)
  %xor21 = xor i32 %or.i558, %xor19
  %and22 = and i32 %xor21, -1431655766
  %xor23 = xor i32 %and22, %or.i558
  %xor24 = xor i32 %and22, %xor19
  %or.i559 = tail call i32 @llvm.fshl.i32(i32 %xor24, i32 %xor24, i32 1) #5
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.0575 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %R.0574 = phi i32 [ %xor23, %entry ], [ %xor99, %for.body.for.body_crit_edge ]
  %L.0573 = phi i32 [ %or.i559, %entry ], [ %xor61, %for.body.for.body_crit_edge ]
  %K.0572 = phi ptr [ %dctx, %entry ], [ %add.ptr64, %for.body.for.body_crit_edge ]
  %6 = ptrtoint ptr %K.0572 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %K.0572, align 4
  %arrayidx26 = getelementptr i32, ptr %K.0572, i32 1
  %8 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx26, align 4
  %add.ptr27 = getelementptr i32, ptr %K.0572, i32 2
  %xor28 = xor i32 %7, %R.0574
  %xor29 = xor i32 %9, %R.0574
  %or.i560 = tail call i32 @llvm.fshl.i32(i32 %xor29, i32 %xor29, i32 28)
  %and32 = and i32 %xor28, 63
  %arrayidx33 = getelementptr [64 x i32], ptr @S8, i32 0, i32 %and32
  %10 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx33, align 4
  %xor34 = xor i32 %11, %L.0573
  %shr = lshr i32 %xor28, 8
  %and36 = and i32 %shr, 63
  %arrayidx37 = getelementptr [64 x i32], ptr @S6, i32 0, i32 %and36
  %12 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx37, align 4
  %xor38 = xor i32 %xor34, %13
  %and30 = lshr i32 %xor28, 16
  %and40 = and i32 %or.i560, 63
  %arrayidx41 = getelementptr [64 x i32], ptr @S7, i32 0, i32 %and40
  %14 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx41, align 4
  %xor42 = xor i32 %xor38, %15
  %shr43 = lshr i32 %or.i560, 8
  %and44 = and i32 %shr43, 63
  %arrayidx45 = getelementptr [64 x i32], ptr @S5, i32 0, i32 %and44
  %16 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx45, align 4
  %xor46 = xor i32 %xor42, %17
  %and35 = lshr i32 %or.i560, 16
  %and48 = and i32 %and30, 63
  %arrayidx49 = getelementptr [64 x i32], ptr @S4, i32 0, i32 %and48
  %18 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx49, align 4
  %xor50 = xor i32 %xor46, %19
  %shr39 = lshr i32 %xor28, 24
  %shr51 = and i32 %shr39, 63
  %arrayidx53 = getelementptr [64 x i32], ptr @S2, i32 0, i32 %shr51
  %20 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx53, align 4
  %xor54 = xor i32 %xor50, %21
  %and55 = and i32 %and35, 63
  %arrayidx56 = getelementptr [64 x i32], ptr @S3, i32 0, i32 %and55
  %22 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx56, align 4
  %xor57 = xor i32 %xor54, %23
  %shr47 = lshr i32 %or.i560, 24
  %shr58 = and i32 %shr47, 63
  %arrayidx60 = getelementptr [64 x i32], ptr @S1, i32 0, i32 %shr58
  %24 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx60, align 4
  %xor61 = xor i32 %xor57, %25
  %26 = ptrtoint ptr %add.ptr27 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %add.ptr27, align 4
  %arrayidx63 = getelementptr i32, ptr %K.0572, i32 3
  %28 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx63, align 4
  %add.ptr64 = getelementptr i32, ptr %K.0572, i32 4
  %xor65 = xor i32 %27, %xor61
  %xor66 = xor i32 %29, %xor61
  %or.i561 = tail call i32 @llvm.fshl.i32(i32 %xor66, i32 %xor66, i32 28)
  %and69 = and i32 %xor65, 63
  %arrayidx70 = getelementptr [64 x i32], ptr @S8, i32 0, i32 %and69
  %30 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx70, align 4
  %xor71 = xor i32 %31, %R.0574
  %shr73 = lshr i32 %xor65, 8
  %and74 = and i32 %shr73, 63
  %arrayidx75 = getelementptr [64 x i32], ptr @S6, i32 0, i32 %and74
  %32 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx75, align 4
  %xor76 = xor i32 %xor71, %33
  %and67 = lshr i32 %xor65, 16
  %and78 = and i32 %or.i561, 63
  %arrayidx79 = getelementptr [64 x i32], ptr @S7, i32 0, i32 %and78
  %34 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx79, align 4
  %xor80 = xor i32 %xor76, %35
  %shr81 = lshr i32 %or.i561, 8
  %and82 = and i32 %shr81, 63
  %arrayidx83 = getelementptr [64 x i32], ptr @S5, i32 0, i32 %and82
  %36 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx83, align 4
  %xor84 = xor i32 %xor80, %37
  %and72 = lshr i32 %or.i561, 16
  %and86 = and i32 %and67, 63
  %arrayidx87 = getelementptr [64 x i32], ptr @S4, i32 0, i32 %and86
  %38 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx87, align 4
  %xor88 = xor i32 %xor84, %39
  %shr77 = lshr i32 %xor65, 24
  %shr89 = and i32 %shr77, 63
  %arrayidx91 = getelementptr [64 x i32], ptr @S2, i32 0, i32 %shr89
  %40 = ptrtoint ptr %arrayidx91 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx91, align 4
  %xor92 = xor i32 %xor88, %41
  %and93 = and i32 %and72, 63
  %arrayidx94 = getelementptr [64 x i32], ptr @S3, i32 0, i32 %and93
  %42 = ptrtoint ptr %arrayidx94 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx94, align 4
  %xor95 = xor i32 %xor92, %43
  %shr85 = lshr i32 %or.i561, 24
  %shr96 = and i32 %shr85, 63
  %arrayidx98 = getelementptr [64 x i32], ptr @S1, i32 0, i32 %shr96
  %44 = ptrtoint ptr %arrayidx98 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx98, align 4
  %xor99 = xor i32 %xor95, %45
  %inc = add nuw nsw i32 %i.0575, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.body102.preheader, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body102.preheader:                            ; preds = %for.body
  %uglygep = getelementptr i8, ptr %dctx, i32 128
  br label %for.body102

for.body102:                                      ; preds = %for.body102.for.body102_crit_edge, %for.body102.preheader
  %i.1579 = phi i32 [ %inc180, %for.body102.for.body102_crit_edge ], [ 0, %for.body102.preheader ]
  %R.1578 = phi i32 [ %xor140, %for.body102.for.body102_crit_edge ], [ %xor99, %for.body102.preheader ]
  %L.1577 = phi i32 [ %xor178, %for.body102.for.body102_crit_edge ], [ %xor61, %for.body102.preheader ]
  %K.1576 = phi ptr [ %add.ptr143, %for.body102.for.body102_crit_edge ], [ %uglygep, %for.body102.preheader ]
  %46 = ptrtoint ptr %K.1576 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %K.1576, align 4
  %arrayidx104 = getelementptr i32, ptr %K.1576, i32 1
  %48 = ptrtoint ptr %arrayidx104 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx104, align 4
  %add.ptr105 = getelementptr i32, ptr %K.1576, i32 2
  %xor106 = xor i32 %47, %L.1577
  %xor107 = xor i32 %49, %L.1577
  %or.i562 = tail call i32 @llvm.fshl.i32(i32 %xor107, i32 %xor107, i32 28)
  %and110 = and i32 %xor106, 63
  %arrayidx111 = getelementptr [64 x i32], ptr @S8, i32 0, i32 %and110
  %50 = ptrtoint ptr %arrayidx111 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx111, align 4
  %xor112 = xor i32 %51, %R.1578
  %shr114 = lshr i32 %xor106, 8
  %and115 = and i32 %shr114, 63
  %arrayidx116 = getelementptr [64 x i32], ptr @S6, i32 0, i32 %and115
  %52 = ptrtoint ptr %arrayidx116 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx116, align 4
  %xor117 = xor i32 %xor112, %53
  %and108 = lshr i32 %xor106, 16
  %and119 = and i32 %or.i562, 63
  %arrayidx120 = getelementptr [64 x i32], ptr @S7, i32 0, i32 %and119
  %54 = ptrtoint ptr %arrayidx120 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx120, align 4
  %xor121 = xor i32 %xor117, %55
  %shr122 = lshr i32 %or.i562, 8
  %and123 = and i32 %shr122, 63
  %arrayidx124 = getelementptr [64 x i32], ptr @S5, i32 0, i32 %and123
  %56 = ptrtoint ptr %arrayidx124 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx124, align 4
  %xor125 = xor i32 %xor121, %57
  %and113 = lshr i32 %or.i562, 16
  %and127 = and i32 %and108, 63
  %arrayidx128 = getelementptr [64 x i32], ptr @S4, i32 0, i32 %and127
  %58 = ptrtoint ptr %arrayidx128 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx128, align 4
  %xor129 = xor i32 %xor125, %59
  %shr118 = lshr i32 %xor106, 24
  %shr130 = and i32 %shr118, 63
  %arrayidx132 = getelementptr [64 x i32], ptr @S2, i32 0, i32 %shr130
  %60 = ptrtoint ptr %arrayidx132 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx132, align 4
  %xor133 = xor i32 %xor129, %61
  %and134 = and i32 %and113, 63
  %arrayidx135 = getelementptr [64 x i32], ptr @S3, i32 0, i32 %and134
  %62 = ptrtoint ptr %arrayidx135 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx135, align 4
  %xor136 = xor i32 %xor133, %63
  %shr126 = lshr i32 %or.i562, 24
  %shr137 = and i32 %shr126, 63
  %arrayidx139 = getelementptr [64 x i32], ptr @S1, i32 0, i32 %shr137
  %64 = ptrtoint ptr %arrayidx139 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx139, align 4
  %xor140 = xor i32 %xor136, %65
  %66 = ptrtoint ptr %add.ptr105 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %add.ptr105, align 4
  %arrayidx142 = getelementptr i32, ptr %K.1576, i32 3
  %68 = ptrtoint ptr %arrayidx142 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx142, align 4
  %add.ptr143 = getelementptr i32, ptr %K.1576, i32 4
  %xor144 = xor i32 %67, %xor140
  %xor145 = xor i32 %69, %xor140
  %or.i563 = tail call i32 @llvm.fshl.i32(i32 %xor145, i32 %xor145, i32 28)
  %and148 = and i32 %xor144, 63
  %arrayidx149 = getelementptr [64 x i32], ptr @S8, i32 0, i32 %and148
  %70 = ptrtoint ptr %arrayidx149 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx149, align 4
  %xor150 = xor i32 %71, %L.1577
  %shr152 = lshr i32 %xor144, 8
  %and153 = and i32 %shr152, 63
  %arrayidx154 = getelementptr [64 x i32], ptr @S6, i32 0, i32 %and153
  %72 = ptrtoint ptr %arrayidx154 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx154, align 4
  %xor155 = xor i32 %xor150, %73
  %and146 = lshr i32 %xor144, 16
  %and157 = and i32 %or.i563, 63
  %arrayidx158 = getelementptr [64 x i32], ptr @S7, i32 0, i32 %and157
  %74 = ptrtoint ptr %arrayidx158 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx158, align 4
  %xor159 = xor i32 %xor155, %75
  %shr160 = lshr i32 %or.i563, 8
  %and161 = and i32 %shr160, 63
  %arrayidx162 = getelementptr [64 x i32], ptr @S5, i32 0, i32 %and161
  %76 = ptrtoint ptr %arrayidx162 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx162, align 4
  %xor163 = xor i32 %xor159, %77
  %and151 = lshr i32 %or.i563, 16
  %and165 = and i32 %and146, 63
  %arrayidx166 = getelementptr [64 x i32], ptr @S4, i32 0, i32 %and165
  %78 = ptrtoint ptr %arrayidx166 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %arrayidx166, align 4
  %xor167 = xor i32 %xor163, %79
  %shr156 = lshr i32 %xor144, 24
  %shr168 = and i32 %shr156, 63
  %arrayidx170 = getelementptr [64 x i32], ptr @S2, i32 0, i32 %shr168
  %80 = ptrtoint ptr %arrayidx170 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx170, align 4
  %xor171 = xor i32 %xor167, %81
  %and172 = and i32 %and151, 63
  %arrayidx173 = getelementptr [64 x i32], ptr @S3, i32 0, i32 %and172
  %82 = ptrtoint ptr %arrayidx173 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %arrayidx173, align 4
  %xor174 = xor i32 %xor171, %83
  %shr164 = lshr i32 %or.i563, 24
  %shr175 = and i32 %shr164, 63
  %arrayidx177 = getelementptr [64 x i32], ptr @S1, i32 0, i32 %shr175
  %84 = ptrtoint ptr %arrayidx177 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %arrayidx177, align 4
  %xor178 = xor i32 %xor174, %85
  %inc180 = add nuw nsw i32 %i.1579, 1
  %exitcond585.not = icmp eq i32 %inc180, 8
  br i1 %exitcond585.not, label %for.body184.preheader, label %for.body102.for.body102_crit_edge

for.body102.for.body102_crit_edge:                ; preds = %for.body102
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body102

for.body184.preheader:                            ; preds = %for.body102
  %uglygep584 = getelementptr i8, ptr %dctx, i32 256
  br label %for.body184

for.body184:                                      ; preds = %for.body184.for.body184_crit_edge, %for.body184.preheader
  %i.2583 = phi i32 [ %inc262, %for.body184.for.body184_crit_edge ], [ 0, %for.body184.preheader ]
  %R.2582 = phi i32 [ %xor260, %for.body184.for.body184_crit_edge ], [ %xor140, %for.body184.preheader ]
  %L.2581 = phi i32 [ %xor222, %for.body184.for.body184_crit_edge ], [ %xor178, %for.body184.preheader ]
  %K.2580 = phi ptr [ %add.ptr225, %for.body184.for.body184_crit_edge ], [ %uglygep584, %for.body184.preheader ]
  %86 = ptrtoint ptr %K.2580 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %K.2580, align 4
  %arrayidx186 = getelementptr i32, ptr %K.2580, i32 1
  %88 = ptrtoint ptr %arrayidx186 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %arrayidx186, align 4
  %add.ptr187 = getelementptr i32, ptr %K.2580, i32 2
  %xor188 = xor i32 %87, %R.2582
  %xor189 = xor i32 %89, %R.2582
  %or.i564 = tail call i32 @llvm.fshl.i32(i32 %xor189, i32 %xor189, i32 28)
  %and192 = and i32 %xor188, 63
  %arrayidx193 = getelementptr [64 x i32], ptr @S8, i32 0, i32 %and192
  %90 = ptrtoint ptr %arrayidx193 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %arrayidx193, align 4
  %xor194 = xor i32 %91, %L.2581
  %shr196 = lshr i32 %xor188, 8
  %and197 = and i32 %shr196, 63
  %arrayidx198 = getelementptr [64 x i32], ptr @S6, i32 0, i32 %and197
  %92 = ptrtoint ptr %arrayidx198 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %arrayidx198, align 4
  %xor199 = xor i32 %xor194, %93
  %and190 = lshr i32 %xor188, 16
  %and201 = and i32 %or.i564, 63
  %arrayidx202 = getelementptr [64 x i32], ptr @S7, i32 0, i32 %and201
  %94 = ptrtoint ptr %arrayidx202 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %arrayidx202, align 4
  %xor203 = xor i32 %xor199, %95
  %shr204 = lshr i32 %or.i564, 8
  %and205 = and i32 %shr204, 63
  %arrayidx206 = getelementptr [64 x i32], ptr @S5, i32 0, i32 %and205
  %96 = ptrtoint ptr %arrayidx206 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %arrayidx206, align 4
  %xor207 = xor i32 %xor203, %97
  %and195 = lshr i32 %or.i564, 16
  %and209 = and i32 %and190, 63
  %arrayidx210 = getelementptr [64 x i32], ptr @S4, i32 0, i32 %and209
  %98 = ptrtoint ptr %arrayidx210 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %arrayidx210, align 4
  %xor211 = xor i32 %xor207, %99
  %shr200 = lshr i32 %xor188, 24
  %shr212 = and i32 %shr200, 63
  %arrayidx214 = getelementptr [64 x i32], ptr @S2, i32 0, i32 %shr212
  %100 = ptrtoint ptr %arrayidx214 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %arrayidx214, align 4
  %xor215 = xor i32 %xor211, %101
  %and216 = and i32 %and195, 63
  %arrayidx217 = getelementptr [64 x i32], ptr @S3, i32 0, i32 %and216
  %102 = ptrtoint ptr %arrayidx217 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %arrayidx217, align 4
  %xor218 = xor i32 %xor215, %103
  %shr208 = lshr i32 %or.i564, 24
  %shr219 = and i32 %shr208, 63
  %arrayidx221 = getelementptr [64 x i32], ptr @S1, i32 0, i32 %shr219
  %104 = ptrtoint ptr %arrayidx221 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %arrayidx221, align 4
  %xor222 = xor i32 %xor218, %105
  %106 = ptrtoint ptr %add.ptr187 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %add.ptr187, align 4
  %arrayidx224 = getelementptr i32, ptr %K.2580, i32 3
  %108 = ptrtoint ptr %arrayidx224 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %arrayidx224, align 4
  %add.ptr225 = getelementptr i32, ptr %K.2580, i32 4
  %xor226 = xor i32 %107, %xor222
  %xor227 = xor i32 %109, %xor222
  %or.i565 = tail call i32 @llvm.fshl.i32(i32 %xor227, i32 %xor227, i32 28)
  %and230 = and i32 %xor226, 63
  %arrayidx231 = getelementptr [64 x i32], ptr @S8, i32 0, i32 %and230
  %110 = ptrtoint ptr %arrayidx231 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %arrayidx231, align 4
  %xor232 = xor i32 %111, %R.2582
  %shr234 = lshr i32 %xor226, 8
  %and235 = and i32 %shr234, 63
  %arrayidx236 = getelementptr [64 x i32], ptr @S6, i32 0, i32 %and235
  %112 = ptrtoint ptr %arrayidx236 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %arrayidx236, align 4
  %xor237 = xor i32 %xor232, %113
  %and228 = lshr i32 %xor226, 16
  %and239 = and i32 %or.i565, 63
  %arrayidx240 = getelementptr [64 x i32], ptr @S7, i32 0, i32 %and239
  %114 = ptrtoint ptr %arrayidx240 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %arrayidx240, align 4
  %xor241 = xor i32 %xor237, %115
  %shr242 = lshr i32 %or.i565, 8
  %and243 = and i32 %shr242, 63
  %arrayidx244 = getelementptr [64 x i32], ptr @S5, i32 0, i32 %and243
  %116 = ptrtoint ptr %arrayidx244 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %arrayidx244, align 4
  %xor245 = xor i32 %xor241, %117
  %and233 = lshr i32 %or.i565, 16
  %and247 = and i32 %and228, 63
  %arrayidx248 = getelementptr [64 x i32], ptr @S4, i32 0, i32 %and247
  %118 = ptrtoint ptr %arrayidx248 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %arrayidx248, align 4
  %xor249 = xor i32 %xor245, %119
  %shr238 = lshr i32 %xor226, 24
  %shr250 = and i32 %shr238, 63
  %arrayidx252 = getelementptr [64 x i32], ptr @S2, i32 0, i32 %shr250
  %120 = ptrtoint ptr %arrayidx252 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %arrayidx252, align 4
  %xor253 = xor i32 %xor249, %121
  %and254 = and i32 %and233, 63
  %arrayidx255 = getelementptr [64 x i32], ptr @S3, i32 0, i32 %and254
  %122 = ptrtoint ptr %arrayidx255 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %arrayidx255, align 4
  %xor256 = xor i32 %xor253, %123
  %shr246 = lshr i32 %or.i565, 24
  %shr257 = and i32 %shr246, 63
  %arrayidx259 = getelementptr [64 x i32], ptr @S1, i32 0, i32 %shr257
  %124 = ptrtoint ptr %arrayidx259 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %arrayidx259, align 4
  %xor260 = xor i32 %xor256, %125
  %inc262 = add nuw nsw i32 %i.2583, 1
  %exitcond586.not = icmp eq i32 %inc262, 8
  br i1 %exitcond586.not, label %for.end263, label %for.body184.for.body184_crit_edge

for.body184.for.body184_crit_edge:                ; preds = %for.body184
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body184

for.end263:                                       ; preds = %for.body184
  call void @__sanitizer_cov_trace_pc() #7
  %or.i566 = tail call i32 @llvm.fshl.i32(i32 %xor260, i32 %xor260, i32 31)
  %xor265 = xor i32 %or.i566, %xor222
  %and266 = and i32 %xor265, -1431655766
  %xor267 = xor i32 %and266, %xor222
  %xor268 = xor i32 %and266, %or.i566
  %or.i567 = tail call i32 @llvm.fshl.i32(i32 %xor267, i32 %xor267, i32 7) #5
  %xor270 = xor i32 %or.i567, %xor268
  %and271 = and i32 %xor270, -16711936
  %xor272 = xor i32 %and271, %or.i567
  %xor273 = xor i32 %and271, %xor268
  %or.i568 = tail call i32 @llvm.fshl.i32(i32 %or.i567, i32 %xor272, i32 26)
  %xor275 = xor i32 %or.i568, %xor273
  %and276 = and i32 %xor275, -858993460
  %xor277 = xor i32 %and276, %or.i568
  %xor278 = xor i32 %and276, %xor273
  %or.i569 = tail call i32 @llvm.fshl.i32(i32 %xor277, i32 %xor277, i32 14) #5
  %xor280 = xor i32 %or.i569, %xor278
  %and281 = and i32 %xor280, -65536
  %xor282 = xor i32 %and281, %or.i569
  %xor283 = xor i32 %and281, %xor278
  %or.i570 = tail call i32 @llvm.fshl.i32(i32 %or.i569, i32 %xor282, i32 20)
  %xor285 = xor i32 %or.i570, %xor283
  %and286 = and i32 %xor285, -252645136
  %xor287 = xor i32 %and286, %or.i570
  %xor288 = xor i32 %and286, %xor283
  %or.i571 = tail call i32 @llvm.fshl.i32(i32 %or.i570, i32 %xor287, i32 28)
  %126 = tail call i32 @llvm.bswap.i32(i32 %xor288) #5
  %127 = ptrtoint ptr %dst to i32
  call void @__asan_storeN_noabort(i32 %127, i32 4)
  store i32 %126, ptr %dst, align 1
  %add.ptr290 = getelementptr i8, ptr %dst, i32 4
  %128 = tail call i32 @llvm.bswap.i32(i32 %or.i571) #5
  %129 = ptrtoint ptr %add.ptr290 to i32
  call void @__asan_storeN_noabort(i32 %129, i32 4)
  store i32 %128, ptr %add.ptr290, align 1
  ret void
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @des3_ede_decrypt(ptr nocapture noundef readonly %dctx, ptr nocapture noundef writeonly %dst, ptr nocapture noundef readonly %src) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr1 = getelementptr i32, ptr %dctx, i32 94
  %0 = ptrtoint ptr %src to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %src, align 1
  %2 = tail call i32 @llvm.bswap.i32(i32 %1) #5
  %add.ptr2 = getelementptr i8, ptr %src, i32 4
  %3 = ptrtoint ptr %add.ptr2 to i32
  call void @__asan_loadN_noabort(i32 %3, i32 4)
  %4 = load i32, ptr %add.ptr2, align 1
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #5
  %or.i = tail call i32 @llvm.fshl.i32(i32 %5, i32 %5, i32 4) #5
  %xor = xor i32 %or.i, %2
  %and = and i32 %xor, -252645136
  %xor5 = xor i32 %and, %or.i
  %xor6 = xor i32 %and, %2
  %or.i557 = tail call i32 @llvm.fshl.i32(i32 %xor5, i32 %xor5, i32 12) #5
  %xor8 = xor i32 %or.i557, %xor6
  %and9 = and i32 %xor8, -65536
  %xor10 = xor i32 %and9, %or.i557
  %xor11 = xor i32 %and9, %xor6
  %or.i558 = tail call i32 @llvm.fshl.i32(i32 %or.i557, i32 %xor10, i32 18)
  %xor13 = xor i32 %or.i558, %xor11
  %and14 = and i32 %xor13, -858993460
  %xor15 = xor i32 %and14, %or.i558
  %xor16 = xor i32 %and14, %xor11
  %or.i559 = tail call i32 @llvm.fshl.i32(i32 %xor15, i32 %xor15, i32 6) #5
  %xor18 = xor i32 %or.i559, %xor16
  %and19 = and i32 %xor18, -16711936
  %xor20 = xor i32 %and19, %or.i559
  %xor21 = xor i32 %and19, %xor16
  %or.i560 = tail call i32 @llvm.fshl.i32(i32 %or.i559, i32 %xor20, i32 25)
  %xor23 = xor i32 %or.i560, %xor21
  %and24 = and i32 %xor23, -1431655766
  %xor25 = xor i32 %and24, %or.i560
  %xor26 = xor i32 %and24, %xor21
  %or.i561 = tail call i32 @llvm.fshl.i32(i32 %xor26, i32 %xor26, i32 1) #5
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.0577 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %R.0576 = phi i32 [ %xor25, %entry ], [ %xor101, %for.body.for.body_crit_edge ]
  %L.0575 = phi i32 [ %or.i561, %entry ], [ %xor63, %for.body.for.body_crit_edge ]
  %K.0574 = phi ptr [ %add.ptr1, %entry ], [ %add.ptr66, %for.body.for.body_crit_edge ]
  %6 = ptrtoint ptr %K.0574 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %K.0574, align 4
  %arrayidx28 = getelementptr i32, ptr %K.0574, i32 1
  %8 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx28, align 4
  %add.ptr29 = getelementptr i32, ptr %K.0574, i32 -2
  %xor30 = xor i32 %7, %R.0576
  %xor31 = xor i32 %9, %R.0576
  %or.i562 = tail call i32 @llvm.fshl.i32(i32 %xor31, i32 %xor31, i32 28)
  %and34 = and i32 %xor30, 63
  %arrayidx35 = getelementptr [64 x i32], ptr @S8, i32 0, i32 %and34
  %10 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx35, align 4
  %xor36 = xor i32 %11, %L.0575
  %shr = lshr i32 %xor30, 8
  %and38 = and i32 %shr, 63
  %arrayidx39 = getelementptr [64 x i32], ptr @S6, i32 0, i32 %and38
  %12 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx39, align 4
  %xor40 = xor i32 %xor36, %13
  %and32 = lshr i32 %xor30, 16
  %and42 = and i32 %or.i562, 63
  %arrayidx43 = getelementptr [64 x i32], ptr @S7, i32 0, i32 %and42
  %14 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx43, align 4
  %xor44 = xor i32 %xor40, %15
  %shr45 = lshr i32 %or.i562, 8
  %and46 = and i32 %shr45, 63
  %arrayidx47 = getelementptr [64 x i32], ptr @S5, i32 0, i32 %and46
  %16 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx47, align 4
  %xor48 = xor i32 %xor44, %17
  %and37 = lshr i32 %or.i562, 16
  %and50 = and i32 %and32, 63
  %arrayidx51 = getelementptr [64 x i32], ptr @S4, i32 0, i32 %and50
  %18 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx51, align 4
  %xor52 = xor i32 %xor48, %19
  %shr41 = lshr i32 %xor30, 24
  %shr53 = and i32 %shr41, 63
  %arrayidx55 = getelementptr [64 x i32], ptr @S2, i32 0, i32 %shr53
  %20 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx55, align 4
  %xor56 = xor i32 %xor52, %21
  %and57 = and i32 %and37, 63
  %arrayidx58 = getelementptr [64 x i32], ptr @S3, i32 0, i32 %and57
  %22 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx58, align 4
  %xor59 = xor i32 %xor56, %23
  %shr49 = lshr i32 %or.i562, 24
  %shr60 = and i32 %shr49, 63
  %arrayidx62 = getelementptr [64 x i32], ptr @S1, i32 0, i32 %shr60
  %24 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx62, align 4
  %xor63 = xor i32 %xor59, %25
  %26 = ptrtoint ptr %add.ptr29 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %add.ptr29, align 4
  %arrayidx65 = getelementptr i32, ptr %K.0574, i32 -1
  %28 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx65, align 4
  %add.ptr66 = getelementptr i32, ptr %K.0574, i32 -4
  %xor67 = xor i32 %27, %xor63
  %xor68 = xor i32 %29, %xor63
  %or.i563 = tail call i32 @llvm.fshl.i32(i32 %xor68, i32 %xor68, i32 28)
  %and71 = and i32 %xor67, 63
  %arrayidx72 = getelementptr [64 x i32], ptr @S8, i32 0, i32 %and71
  %30 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx72, align 4
  %xor73 = xor i32 %31, %R.0576
  %shr75 = lshr i32 %xor67, 8
  %and76 = and i32 %shr75, 63
  %arrayidx77 = getelementptr [64 x i32], ptr @S6, i32 0, i32 %and76
  %32 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx77, align 4
  %xor78 = xor i32 %xor73, %33
  %and69 = lshr i32 %xor67, 16
  %and80 = and i32 %or.i563, 63
  %arrayidx81 = getelementptr [64 x i32], ptr @S7, i32 0, i32 %and80
  %34 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx81, align 4
  %xor82 = xor i32 %xor78, %35
  %shr83 = lshr i32 %or.i563, 8
  %and84 = and i32 %shr83, 63
  %arrayidx85 = getelementptr [64 x i32], ptr @S5, i32 0, i32 %and84
  %36 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx85, align 4
  %xor86 = xor i32 %xor82, %37
  %and74 = lshr i32 %or.i563, 16
  %and88 = and i32 %and69, 63
  %arrayidx89 = getelementptr [64 x i32], ptr @S4, i32 0, i32 %and88
  %38 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx89, align 4
  %xor90 = xor i32 %xor86, %39
  %shr79 = lshr i32 %xor67, 24
  %shr91 = and i32 %shr79, 63
  %arrayidx93 = getelementptr [64 x i32], ptr @S2, i32 0, i32 %shr91
  %40 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx93, align 4
  %xor94 = xor i32 %xor90, %41
  %and95 = and i32 %and74, 63
  %arrayidx96 = getelementptr [64 x i32], ptr @S3, i32 0, i32 %and95
  %42 = ptrtoint ptr %arrayidx96 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx96, align 4
  %xor97 = xor i32 %xor94, %43
  %shr87 = lshr i32 %or.i563, 24
  %shr98 = and i32 %shr87, 63
  %arrayidx100 = getelementptr [64 x i32], ptr @S1, i32 0, i32 %shr98
  %44 = ptrtoint ptr %arrayidx100 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx100, align 4
  %xor101 = xor i32 %xor97, %45
  %inc = add nuw nsw i32 %i.0577, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.body104.preheader, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body104.preheader:                            ; preds = %for.body
  %uglygep = getelementptr i8, ptr %dctx, i32 248
  br label %for.body104

for.body104:                                      ; preds = %for.body104.for.body104_crit_edge, %for.body104.preheader
  %i.1581 = phi i32 [ %inc182, %for.body104.for.body104_crit_edge ], [ 0, %for.body104.preheader ]
  %R.1580 = phi i32 [ %xor142, %for.body104.for.body104_crit_edge ], [ %xor101, %for.body104.preheader ]
  %L.1579 = phi i32 [ %xor180, %for.body104.for.body104_crit_edge ], [ %xor63, %for.body104.preheader ]
  %K.1578 = phi ptr [ %add.ptr145, %for.body104.for.body104_crit_edge ], [ %uglygep, %for.body104.preheader ]
  %46 = ptrtoint ptr %K.1578 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %K.1578, align 4
  %arrayidx106 = getelementptr i32, ptr %K.1578, i32 1
  %48 = ptrtoint ptr %arrayidx106 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx106, align 4
  %add.ptr107 = getelementptr i32, ptr %K.1578, i32 -2
  %xor108 = xor i32 %47, %L.1579
  %xor109 = xor i32 %49, %L.1579
  %or.i564 = tail call i32 @llvm.fshl.i32(i32 %xor109, i32 %xor109, i32 28)
  %and112 = and i32 %xor108, 63
  %arrayidx113 = getelementptr [64 x i32], ptr @S8, i32 0, i32 %and112
  %50 = ptrtoint ptr %arrayidx113 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx113, align 4
  %xor114 = xor i32 %51, %R.1580
  %shr116 = lshr i32 %xor108, 8
  %and117 = and i32 %shr116, 63
  %arrayidx118 = getelementptr [64 x i32], ptr @S6, i32 0, i32 %and117
  %52 = ptrtoint ptr %arrayidx118 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx118, align 4
  %xor119 = xor i32 %xor114, %53
  %and110 = lshr i32 %xor108, 16
  %and121 = and i32 %or.i564, 63
  %arrayidx122 = getelementptr [64 x i32], ptr @S7, i32 0, i32 %and121
  %54 = ptrtoint ptr %arrayidx122 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx122, align 4
  %xor123 = xor i32 %xor119, %55
  %shr124 = lshr i32 %or.i564, 8
  %and125 = and i32 %shr124, 63
  %arrayidx126 = getelementptr [64 x i32], ptr @S5, i32 0, i32 %and125
  %56 = ptrtoint ptr %arrayidx126 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx126, align 4
  %xor127 = xor i32 %xor123, %57
  %and115 = lshr i32 %or.i564, 16
  %and129 = and i32 %and110, 63
  %arrayidx130 = getelementptr [64 x i32], ptr @S4, i32 0, i32 %and129
  %58 = ptrtoint ptr %arrayidx130 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx130, align 4
  %xor131 = xor i32 %xor127, %59
  %shr120 = lshr i32 %xor108, 24
  %shr132 = and i32 %shr120, 63
  %arrayidx134 = getelementptr [64 x i32], ptr @S2, i32 0, i32 %shr132
  %60 = ptrtoint ptr %arrayidx134 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx134, align 4
  %xor135 = xor i32 %xor131, %61
  %and136 = and i32 %and115, 63
  %arrayidx137 = getelementptr [64 x i32], ptr @S3, i32 0, i32 %and136
  %62 = ptrtoint ptr %arrayidx137 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx137, align 4
  %xor138 = xor i32 %xor135, %63
  %shr128 = lshr i32 %or.i564, 24
  %shr139 = and i32 %shr128, 63
  %arrayidx141 = getelementptr [64 x i32], ptr @S1, i32 0, i32 %shr139
  %64 = ptrtoint ptr %arrayidx141 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx141, align 4
  %xor142 = xor i32 %xor138, %65
  %66 = ptrtoint ptr %add.ptr107 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %add.ptr107, align 4
  %arrayidx144 = getelementptr i32, ptr %K.1578, i32 -1
  %68 = ptrtoint ptr %arrayidx144 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx144, align 4
  %add.ptr145 = getelementptr i32, ptr %K.1578, i32 -4
  %xor146 = xor i32 %67, %xor142
  %xor147 = xor i32 %69, %xor142
  %or.i565 = tail call i32 @llvm.fshl.i32(i32 %xor147, i32 %xor147, i32 28)
  %and150 = and i32 %xor146, 63
  %arrayidx151 = getelementptr [64 x i32], ptr @S8, i32 0, i32 %and150
  %70 = ptrtoint ptr %arrayidx151 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx151, align 4
  %xor152 = xor i32 %71, %L.1579
  %shr154 = lshr i32 %xor146, 8
  %and155 = and i32 %shr154, 63
  %arrayidx156 = getelementptr [64 x i32], ptr @S6, i32 0, i32 %and155
  %72 = ptrtoint ptr %arrayidx156 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx156, align 4
  %xor157 = xor i32 %xor152, %73
  %and148 = lshr i32 %xor146, 16
  %and159 = and i32 %or.i565, 63
  %arrayidx160 = getelementptr [64 x i32], ptr @S7, i32 0, i32 %and159
  %74 = ptrtoint ptr %arrayidx160 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx160, align 4
  %xor161 = xor i32 %xor157, %75
  %shr162 = lshr i32 %or.i565, 8
  %and163 = and i32 %shr162, 63
  %arrayidx164 = getelementptr [64 x i32], ptr @S5, i32 0, i32 %and163
  %76 = ptrtoint ptr %arrayidx164 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx164, align 4
  %xor165 = xor i32 %xor161, %77
  %and153 = lshr i32 %or.i565, 16
  %and167 = and i32 %and148, 63
  %arrayidx168 = getelementptr [64 x i32], ptr @S4, i32 0, i32 %and167
  %78 = ptrtoint ptr %arrayidx168 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %arrayidx168, align 4
  %xor169 = xor i32 %xor165, %79
  %shr158 = lshr i32 %xor146, 24
  %shr170 = and i32 %shr158, 63
  %arrayidx172 = getelementptr [64 x i32], ptr @S2, i32 0, i32 %shr170
  %80 = ptrtoint ptr %arrayidx172 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx172, align 4
  %xor173 = xor i32 %xor169, %81
  %and174 = and i32 %and153, 63
  %arrayidx175 = getelementptr [64 x i32], ptr @S3, i32 0, i32 %and174
  %82 = ptrtoint ptr %arrayidx175 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %arrayidx175, align 4
  %xor176 = xor i32 %xor173, %83
  %shr166 = lshr i32 %or.i565, 24
  %shr177 = and i32 %shr166, 63
  %arrayidx179 = getelementptr [64 x i32], ptr @S1, i32 0, i32 %shr177
  %84 = ptrtoint ptr %arrayidx179 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %arrayidx179, align 4
  %xor180 = xor i32 %xor176, %85
  %inc182 = add nuw nsw i32 %i.1581, 1
  %exitcond587.not = icmp eq i32 %inc182, 8
  br i1 %exitcond587.not, label %for.body186.preheader, label %for.body104.for.body104_crit_edge

for.body104.for.body104_crit_edge:                ; preds = %for.body104
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body104

for.body186.preheader:                            ; preds = %for.body104
  %uglygep586 = getelementptr i8, ptr %dctx, i32 120
  br label %for.body186

for.body186:                                      ; preds = %for.body186.for.body186_crit_edge, %for.body186.preheader
  %i.2585 = phi i32 [ %inc264, %for.body186.for.body186_crit_edge ], [ 0, %for.body186.preheader ]
  %R.2584 = phi i32 [ %xor262, %for.body186.for.body186_crit_edge ], [ %xor142, %for.body186.preheader ]
  %L.2583 = phi i32 [ %xor224, %for.body186.for.body186_crit_edge ], [ %xor180, %for.body186.preheader ]
  %K.2582 = phi ptr [ %add.ptr227, %for.body186.for.body186_crit_edge ], [ %uglygep586, %for.body186.preheader ]
  %86 = ptrtoint ptr %K.2582 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %K.2582, align 4
  %arrayidx188 = getelementptr i32, ptr %K.2582, i32 1
  %88 = ptrtoint ptr %arrayidx188 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %arrayidx188, align 4
  %add.ptr189 = getelementptr i32, ptr %K.2582, i32 -2
  %xor190 = xor i32 %87, %R.2584
  %xor191 = xor i32 %89, %R.2584
  %or.i566 = tail call i32 @llvm.fshl.i32(i32 %xor191, i32 %xor191, i32 28)
  %and194 = and i32 %xor190, 63
  %arrayidx195 = getelementptr [64 x i32], ptr @S8, i32 0, i32 %and194
  %90 = ptrtoint ptr %arrayidx195 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %arrayidx195, align 4
  %xor196 = xor i32 %91, %L.2583
  %shr198 = lshr i32 %xor190, 8
  %and199 = and i32 %shr198, 63
  %arrayidx200 = getelementptr [64 x i32], ptr @S6, i32 0, i32 %and199
  %92 = ptrtoint ptr %arrayidx200 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %arrayidx200, align 4
  %xor201 = xor i32 %xor196, %93
  %and192 = lshr i32 %xor190, 16
  %and203 = and i32 %or.i566, 63
  %arrayidx204 = getelementptr [64 x i32], ptr @S7, i32 0, i32 %and203
  %94 = ptrtoint ptr %arrayidx204 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %arrayidx204, align 4
  %xor205 = xor i32 %xor201, %95
  %shr206 = lshr i32 %or.i566, 8
  %and207 = and i32 %shr206, 63
  %arrayidx208 = getelementptr [64 x i32], ptr @S5, i32 0, i32 %and207
  %96 = ptrtoint ptr %arrayidx208 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %arrayidx208, align 4
  %xor209 = xor i32 %xor205, %97
  %and197 = lshr i32 %or.i566, 16
  %and211 = and i32 %and192, 63
  %arrayidx212 = getelementptr [64 x i32], ptr @S4, i32 0, i32 %and211
  %98 = ptrtoint ptr %arrayidx212 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %arrayidx212, align 4
  %xor213 = xor i32 %xor209, %99
  %shr202 = lshr i32 %xor190, 24
  %shr214 = and i32 %shr202, 63
  %arrayidx216 = getelementptr [64 x i32], ptr @S2, i32 0, i32 %shr214
  %100 = ptrtoint ptr %arrayidx216 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %arrayidx216, align 4
  %xor217 = xor i32 %xor213, %101
  %and218 = and i32 %and197, 63
  %arrayidx219 = getelementptr [64 x i32], ptr @S3, i32 0, i32 %and218
  %102 = ptrtoint ptr %arrayidx219 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %arrayidx219, align 4
  %xor220 = xor i32 %xor217, %103
  %shr210 = lshr i32 %or.i566, 24
  %shr221 = and i32 %shr210, 63
  %arrayidx223 = getelementptr [64 x i32], ptr @S1, i32 0, i32 %shr221
  %104 = ptrtoint ptr %arrayidx223 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %arrayidx223, align 4
  %xor224 = xor i32 %xor220, %105
  %106 = ptrtoint ptr %add.ptr189 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %add.ptr189, align 4
  %arrayidx226 = getelementptr i32, ptr %K.2582, i32 -1
  %108 = ptrtoint ptr %arrayidx226 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %arrayidx226, align 4
  %add.ptr227 = getelementptr i32, ptr %K.2582, i32 -4
  %xor228 = xor i32 %107, %xor224
  %xor229 = xor i32 %109, %xor224
  %or.i567 = tail call i32 @llvm.fshl.i32(i32 %xor229, i32 %xor229, i32 28)
  %and232 = and i32 %xor228, 63
  %arrayidx233 = getelementptr [64 x i32], ptr @S8, i32 0, i32 %and232
  %110 = ptrtoint ptr %arrayidx233 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %arrayidx233, align 4
  %xor234 = xor i32 %111, %R.2584
  %shr236 = lshr i32 %xor228, 8
  %and237 = and i32 %shr236, 63
  %arrayidx238 = getelementptr [64 x i32], ptr @S6, i32 0, i32 %and237
  %112 = ptrtoint ptr %arrayidx238 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %arrayidx238, align 4
  %xor239 = xor i32 %xor234, %113
  %and230 = lshr i32 %xor228, 16
  %and241 = and i32 %or.i567, 63
  %arrayidx242 = getelementptr [64 x i32], ptr @S7, i32 0, i32 %and241
  %114 = ptrtoint ptr %arrayidx242 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %arrayidx242, align 4
  %xor243 = xor i32 %xor239, %115
  %shr244 = lshr i32 %or.i567, 8
  %and245 = and i32 %shr244, 63
  %arrayidx246 = getelementptr [64 x i32], ptr @S5, i32 0, i32 %and245
  %116 = ptrtoint ptr %arrayidx246 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %arrayidx246, align 4
  %xor247 = xor i32 %xor243, %117
  %and235 = lshr i32 %or.i567, 16
  %and249 = and i32 %and230, 63
  %arrayidx250 = getelementptr [64 x i32], ptr @S4, i32 0, i32 %and249
  %118 = ptrtoint ptr %arrayidx250 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %arrayidx250, align 4
  %xor251 = xor i32 %xor247, %119
  %shr240 = lshr i32 %xor228, 24
  %shr252 = and i32 %shr240, 63
  %arrayidx254 = getelementptr [64 x i32], ptr @S2, i32 0, i32 %shr252
  %120 = ptrtoint ptr %arrayidx254 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %arrayidx254, align 4
  %xor255 = xor i32 %xor251, %121
  %and256 = and i32 %and235, 63
  %arrayidx257 = getelementptr [64 x i32], ptr @S3, i32 0, i32 %and256
  %122 = ptrtoint ptr %arrayidx257 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %arrayidx257, align 4
  %xor258 = xor i32 %xor255, %123
  %shr248 = lshr i32 %or.i567, 24
  %shr259 = and i32 %shr248, 63
  %arrayidx261 = getelementptr [64 x i32], ptr @S1, i32 0, i32 %shr259
  %124 = ptrtoint ptr %arrayidx261 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %arrayidx261, align 4
  %xor262 = xor i32 %xor258, %125
  %inc264 = add nuw nsw i32 %i.2585, 1
  %exitcond588.not = icmp eq i32 %inc264, 8
  br i1 %exitcond588.not, label %for.end265, label %for.body186.for.body186_crit_edge

for.body186.for.body186_crit_edge:                ; preds = %for.body186
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body186

for.end265:                                       ; preds = %for.body186
  call void @__sanitizer_cov_trace_pc() #7
  %or.i568 = tail call i32 @llvm.fshl.i32(i32 %xor262, i32 %xor262, i32 31)
  %xor267 = xor i32 %or.i568, %xor224
  %and268 = and i32 %xor267, -1431655766
  %xor269 = xor i32 %and268, %xor224
  %xor270 = xor i32 %and268, %or.i568
  %or.i569 = tail call i32 @llvm.fshl.i32(i32 %xor269, i32 %xor269, i32 7) #5
  %xor272 = xor i32 %or.i569, %xor270
  %and273 = and i32 %xor272, -16711936
  %xor274 = xor i32 %and273, %or.i569
  %xor275 = xor i32 %and273, %xor270
  %or.i570 = tail call i32 @llvm.fshl.i32(i32 %or.i569, i32 %xor274, i32 26)
  %xor277 = xor i32 %or.i570, %xor275
  %and278 = and i32 %xor277, -858993460
  %xor279 = xor i32 %and278, %or.i570
  %xor280 = xor i32 %and278, %xor275
  %or.i571 = tail call i32 @llvm.fshl.i32(i32 %xor279, i32 %xor279, i32 14) #5
  %xor282 = xor i32 %or.i571, %xor280
  %and283 = and i32 %xor282, -65536
  %xor284 = xor i32 %and283, %or.i571
  %xor285 = xor i32 %and283, %xor280
  %or.i572 = tail call i32 @llvm.fshl.i32(i32 %or.i571, i32 %xor284, i32 20)
  %xor287 = xor i32 %or.i572, %xor285
  %and288 = and i32 %xor287, -252645136
  %xor289 = xor i32 %and288, %or.i572
  %xor290 = xor i32 %and288, %xor285
  %or.i573 = tail call i32 @llvm.fshl.i32(i32 %or.i572, i32 %xor289, i32 28)
  %126 = tail call i32 @llvm.bswap.i32(i32 %xor290) #5
  %127 = ptrtoint ptr %dst to i32
  call void @__asan_storeN_noabort(i32 %127, i32 4)
  store i32 %126, ptr %dst, align 1
  %add.ptr292 = getelementptr i8, ptr %dst, i32 4
  %128 = tail call i32 @llvm.bswap.i32(i32 %or.i573) #5
  %129 = ptrtoint ptr %add.ptr292 to i32
  call void @__asan_storeN_noabort(i32 %129, i32 4)
  store i32 %128, ptr %add.ptr292, align 1
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35}
!llvm.module.flags = !{!37, !38, !39, !40, !41, !42, !43, !44}
!llvm.ident = !{!45}

!0 = !{ptr @__ksymtab_des_expand_key, !1, !"__ksymtab_des_expand_key", i1 false, i1 false}
!1 = !{!"../lib/crypto/des.c", i32 706, i32 1}
!2 = !{ptr @__ksymtab_des_encrypt, !3, !"__ksymtab_des_encrypt", i1 false, i1 false}
!3 = !{!"../lib/crypto/des.c", i32 800, i32 1}
!4 = !{ptr @__ksymtab_des_decrypt, !5, !"__ksymtab_des_decrypt", i1 false, i1 false}
!5 = !{!"../lib/crypto/des.c", i32 821, i32 1}
!6 = !{ptr @__ksymtab_des3_ede_expand_key, !7, !"__ksymtab_des3_ede_expand_key", i1 false, i1 false}
!7 = !{!"../lib/crypto/des.c", i32 842, i32 1}
!8 = !{ptr @__ksymtab_des3_ede_encrypt, !9, !"__ksymtab_des3_ede_encrypt", i1 false, i1 false}
!9 = !{!"../lib/crypto/des.c", i32 871, i32 1}
!10 = !{ptr @__ksymtab_des3_ede_decrypt, !11, !"__ksymtab_des3_ede_decrypt", i1 false, i1 false}
!11 = !{!"../lib/crypto/des.c", i32 900, i32 1}
!12 = !{ptr @__UNIQUE_ID_file173, !13, !"__UNIQUE_ID_file173", i1 false, i1 false}
!13 = !{!"../lib/crypto/des.c", i32 902, i32 1}
!14 = !{ptr @__UNIQUE_ID_license174, !13, !"__UNIQUE_ID_license174", i1 false, i1 false}
!15 = !{ptr @pc2, !16, !"pc2", i1 false, i1 false}
!16 = !{!"../lib/crypto/des.c", i32 100, i32 18}
!17 = !{ptr @pc1, !18, !"pc1", i1 false, i1 false}
!18 = !{!"../lib/crypto/des.c", i32 30, i32 17}
!19 = !{ptr @rs, !20, !"rs", i1 false, i1 false}
!20 = !{!"../lib/crypto/des.c", i32 65, i32 17}
!21 = !{ptr @S8, !22, !"S8", i1 false, i1 false}
!22 = !{!"../lib/crypto/des.c", i32 495, i32 18}
!23 = !{ptr @S6, !24, !"S6", i1 false, i1 false}
!24 = !{!"../lib/crypto/des.c", i32 457, i32 18}
!25 = !{ptr @S7, !26, !"S7", i1 false, i1 false}
!26 = !{!"../lib/crypto/des.c", i32 476, i32 18}
!27 = !{ptr @S5, !28, !"S5", i1 false, i1 false}
!28 = !{!"../lib/crypto/des.c", i32 438, i32 18}
!29 = !{ptr @S4, !30, !"S4", i1 false, i1 false}
!30 = !{!"../lib/crypto/des.c", i32 419, i32 18}
!31 = !{ptr @S2, !32, !"S2", i1 false, i1 false}
!32 = !{!"../lib/crypto/des.c", i32 381, i32 18}
!33 = !{ptr @S3, !34, !"S3", i1 false, i1 false}
!34 = !{!"../lib/crypto/des.c", i32 400, i32 18}
!35 = !{ptr @S1, !36, !"S1", i1 false, i1 false}
!36 = !{!"../lib/crypto/des.c", i32 362, i32 18}
!37 = !{i32 1, !"wchar_size", i32 2}
!38 = !{i32 1, !"min_enum_size", i32 4}
!39 = !{i32 8, !"branch-target-enforcement", i32 0}
!40 = !{i32 8, !"sign-return-address", i32 0}
!41 = !{i32 8, !"sign-return-address-all", i32 0}
!42 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!43 = !{i32 7, !"uwtable", i32 1}
!44 = !{i32 7, !"frame-pointer", i32 2}
!45 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!46 = !{i64 2149240027}
