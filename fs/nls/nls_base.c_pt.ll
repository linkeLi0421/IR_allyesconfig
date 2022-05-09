; ModuleID = '/llk/IR_all_yes/fs/nls/nls_base.c_pt.bc'
source_filename = "../fs/nls/nls_base.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+utf8_to_utf32\22, \22a\22\09"
module asm "\09.weak\09__crc_utf8_to_utf32\09\09\09\09"
module asm "\09.long\09__crc_utf8_to_utf32\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_utf8_to_utf32:\09\09\09\09\09"
module asm "\09.asciz \09\22utf8_to_utf32\22\09\09\09\09\09"
module asm "__kstrtabns_utf8_to_utf32:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+utf32_to_utf8\22, \22a\22\09"
module asm "\09.weak\09__crc_utf32_to_utf8\09\09\09\09"
module asm "\09.long\09__crc_utf32_to_utf8\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_utf32_to_utf8:\09\09\09\09\09"
module asm "\09.asciz \09\22utf32_to_utf8\22\09\09\09\09\09"
module asm "__kstrtabns_utf32_to_utf8:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+utf8s_to_utf16s\22, \22a\22\09"
module asm "\09.weak\09__crc_utf8s_to_utf16s\09\09\09\09"
module asm "\09.long\09__crc_utf8s_to_utf16s\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_utf8s_to_utf16s:\09\09\09\09\09"
module asm "\09.asciz \09\22utf8s_to_utf16s\22\09\09\09\09\09"
module asm "__kstrtabns_utf8s_to_utf16s:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+utf16s_to_utf8s\22, \22a\22\09"
module asm "\09.weak\09__crc_utf16s_to_utf8s\09\09\09\09"
module asm "\09.long\09__crc_utf16s_to_utf8s\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_utf16s_to_utf8s:\09\09\09\09\09"
module asm "\09.asciz \09\22utf16s_to_utf8s\22\09\09\09\09\09"
module asm "__kstrtabns_utf16s_to_utf8s:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__register_nls\22, \22a\22\09"
module asm "\09.weak\09__crc___register_nls\09\09\09\09"
module asm "\09.long\09__crc___register_nls\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___register_nls:\09\09\09\09\09"
module asm "\09.asciz \09\22__register_nls\22\09\09\09\09\09"
module asm "__kstrtabns___register_nls:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+unregister_nls\22, \22a\22\09"
module asm "\09.weak\09__crc_unregister_nls\09\09\09\09"
module asm "\09.long\09__crc_unregister_nls\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_unregister_nls:\09\09\09\09\09"
module asm "\09.asciz \09\22unregister_nls\22\09\09\09\09\09"
module asm "__kstrtabns_unregister_nls:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+unload_nls\22, \22a\22\09"
module asm "\09.weak\09__crc_unload_nls\09\09\09\09"
module asm "\09.long\09__crc_unload_nls\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_unload_nls:\09\09\09\09\09"
module asm "\09.asciz \09\22unload_nls\22\09\09\09\09\09"
module asm "__kstrtabns_unload_nls:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+load_nls\22, \22a\22\09"
module asm "\09.weak\09__crc_load_nls\09\09\09\09"
module asm "\09.long\09__crc_load_nls\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_load_nls:\09\09\09\09\09"
module asm "\09.asciz \09\22load_nls\22\09\09\09\09\09"
module asm "__kstrtabns_load_nls:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+load_nls_default\22, \22a\22\09"
module asm "\09.weak\09__crc_load_nls_default\09\09\09\09"
module asm "\09.long\09__crc_load_nls_default\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_load_nls_default:\09\09\09\09\09"
module asm "\09.asciz \09\22load_nls_default\22\09\09\09\09\09"
module asm "__kstrtabns_load_nls_default:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.utf8_table = type { i32, i32, i32, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.nls_table = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@utf8_table = internal constant { [7 x %struct.utf8_table], [52 x i8] } { [7 x %struct.utf8_table] [%struct.utf8_table { i32 128, i32 0, i32 0, i32 127, i32 0 }, %struct.utf8_table { i32 224, i32 192, i32 6, i32 2047, i32 128 }, %struct.utf8_table { i32 240, i32 224, i32 12, i32 65535, i32 2048 }, %struct.utf8_table { i32 248, i32 240, i32 18, i32 2097151, i32 65536 }, %struct.utf8_table { i32 252, i32 248, i32 24, i32 67108863, i32 2097152 }, %struct.utf8_table { i32 254, i32 252, i32 30, i32 2147483647, i32 67108864 }, %struct.utf8_table zeroinitializer], [52 x i8] zeroinitializer }, align 32
@__kstrtab_utf8_to_utf32 = external dso_local constant [0 x i8], align 1
@__kstrtabns_utf8_to_utf32 = external dso_local constant [0 x i8], align 1
@__ksymtab_utf8_to_utf32 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @utf8_to_utf32 to i32), ptr @__kstrtab_utf8_to_utf32, ptr @__kstrtabns_utf8_to_utf32 }, section "___ksymtab+utf8_to_utf32", align 4
@__kstrtab_utf32_to_utf8 = external dso_local constant [0 x i8], align 1
@__kstrtabns_utf32_to_utf8 = external dso_local constant [0 x i8], align 1
@__ksymtab_utf32_to_utf8 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @utf32_to_utf8 to i32), ptr @__kstrtab_utf32_to_utf8, ptr @__kstrtabns_utf32_to_utf8 }, section "___ksymtab+utf32_to_utf8", align 4
@__kstrtab_utf8s_to_utf16s = external dso_local constant [0 x i8], align 1
@__kstrtabns_utf8s_to_utf16s = external dso_local constant [0 x i8], align 1
@__ksymtab_utf8s_to_utf16s = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @utf8s_to_utf16s to i32), ptr @__kstrtab_utf8s_to_utf16s, ptr @__kstrtabns_utf8s_to_utf16s }, section "___ksymtab+utf8s_to_utf16s", align 4
@__kstrtab_utf16s_to_utf8s = external dso_local constant [0 x i8], align 1
@__kstrtabns_utf16s_to_utf8s = external dso_local constant [0 x i8], align 1
@__ksymtab_utf16s_to_utf8s = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @utf16s_to_utf8s to i32), ptr @__kstrtab_utf16s_to_utf8s, ptr @__kstrtabns_utf16s_to_utf8s }, section "___ksymtab+utf16s_to_utf8s", align 4
@tables = internal global { ptr, [28 x i8] } { ptr @default_table, [28 x i8] zeroinitializer }, align 32
@nls_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.2, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@__kstrtab___register_nls = external dso_local constant [0 x i8], align 1
@__kstrtabns___register_nls = external dso_local constant [0 x i8], align 1
@__ksymtab___register_nls = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__register_nls to i32), ptr @__kstrtab___register_nls, ptr @__kstrtabns___register_nls }, section "___ksymtab+__register_nls", align 4
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"nls_%s\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"iso8859-1\00", [22 x i8] zeroinitializer }, align 32
@default_table = internal global { %struct.nls_table, [32 x i8] } { %struct.nls_table { ptr @.str.3, ptr null, ptr @uni2char, ptr @char2uni, ptr @charset2lower, ptr @charset2upper, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@__kstrtab_unregister_nls = external dso_local constant [0 x i8], align 1
@__kstrtabns_unregister_nls = external dso_local constant [0 x i8], align 1
@__ksymtab_unregister_nls = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @unregister_nls to i32), ptr @__kstrtab_unregister_nls, ptr @__kstrtabns_unregister_nls }, section "___ksymtab+unregister_nls", align 4
@__kstrtab_unload_nls = external dso_local constant [0 x i8], align 1
@__kstrtabns_unload_nls = external dso_local constant [0 x i8], align 1
@__ksymtab_unload_nls = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @unload_nls to i32), ptr @__kstrtab_unload_nls, ptr @__kstrtabns_unload_nls }, section "___ksymtab+unload_nls", align 4
@__kstrtab_load_nls = external dso_local constant [0 x i8], align 1
@__kstrtabns_load_nls = external dso_local constant [0 x i8], align 1
@__ksymtab_load_nls = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @load_nls to i32), ptr @__kstrtab_load_nls, ptr @__kstrtabns_load_nls }, section "___ksymtab+load_nls", align 4
@__kstrtab_load_nls_default = external dso_local constant [0 x i8], align 1
@__kstrtabns_load_nls_default = external dso_local constant [0 x i8], align 1
@__ksymtab_load_nls_default = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @load_nls_default to i32), ptr @__kstrtab_load_nls_default, ptr @__kstrtabns_load_nls_default }, section "___ksymtab+load_nls_default", align 4
@__UNIQUE_ID_file106 = internal constant [30 x i8] c"nls_base.file=fs/nls/nls_base\00", section ".modinfo", align 1
@__UNIQUE_ID_license107 = internal constant [30 x i8] c"nls_base.license=Dual BSD/GPL\00", section ".modinfo", align 1
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"nls_lock\00", [23 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"default\00", [24 x i8] zeroinitializer }, align 32
@charset2lower = internal constant { [256 x i8], [64 x i8] } { [256 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F !\22#$%&'()*+,-./0123456789:;<=>?@abcdefghijklmnopqrstuvwxyz[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~\7F\80\81\82\83\84\85\86\87\88\89\8A\8B\8C\8D\8E\8F\90\91\92\93\94\95\96\97\98\99\9A\9B\9C\9D\9E\9F\A0\A1\A2\A3\A4\A5\A6\A7\A8\A9\AA\AB\AC\AD\AE\AF\B0\B1\B2\B3\B4\B5\B6\B7\B8\B9\BA\BB\BC\BD\BE\BF\C0\C1\C2\C3\C4\C5\C6\C7\C8\C9\CA\CB\CC\CD\CE\CF\D0\D1\D2\D3\D4\D5\D6\D7\D8\D9\DA\DB\DC\DD\DE\DF\E0\E1\E2\E3\E4\E5\E6\E7\E8\E9\EA\EB\EC\ED\EE\EF\F0\F1\F2\F3\F4\F5\F6\F7\F8\F9\FA\FB\FC\FD\FE\FF", [64 x i8] zeroinitializer }, align 32
@charset2upper = internal constant { [256 x i8], [64 x i8] } { [256 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F !\22#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_`ABCDEFGHIJKLMNOPQRSTUVWXYZ{|}~\7F\80\81\82\83\84\85\86\87\88\89\8A\8B\8C\8D\8E\8F\90\91\92\93\94\95\96\97\98\99\9A\9B\9C\9D\9E\9F\A0\A1\A2\A3\A4\A5\A6\A7\A8\A9\AA\AB\AC\AD\AE\AF\B0\B1\B2\B3\B4\B5\B6\B7\B8\B9\BA\BB\BC\BD\BE\BF\C0\C1\C2\C3\C4\C5\C6\C7\C8\C9\CA\CB\CC\CD\CE\CF\D0\D1\D2\D3\D4\D5\D6\D7\D8\D9\DA\DB\DC\DD\DE\DF\E0\E1\E2\E3\E4\E5\E6\E7\E8\E9\EA\EB\EC\ED\EE\EF\F0\F1\F2\F3\F4\F5\F6\F7\F8\F9\FA\FB\FC\FD\FE\FF", [64 x i8] zeroinitializer }, align 32
@page00 = internal constant { [256 x i8], [64 x i8] } { [256 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F !\22#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~\7F\80\81\82\83\84\85\86\87\88\89\8A\8B\8C\8D\8E\8F\90\91\92\93\94\95\96\97\98\99\9A\9B\9C\9D\9E\9F\A0\A1\A2\A3\A4\A5\A6\A7\A8\A9\AA\AB\AC\AD\AE\AF\B0\B1\B2\B3\B4\B5\B6\B7\B8\B9\BA\BB\BC\BD\BE\BF\C0\C1\C2\C3\C4\C5\C6\C7\C8\C9\CA\CB\CC\CD\CE\CF\D0\D1\D2\D3\D4\D5\D6\D7\D8\D9\DA\DB\DC\DD\DE\DF\E0\E1\E2\E3\E4\E5\E6\E7\E8\E9\EA\EB\EC\ED\EE\EF\F0\F1\F2\F3\F4\F5\F6\F7\F8\F9\FA\FB\FC\FD\FE\FF", [64 x i8] zeroinitializer }, align 32
@page_uni2charset = internal constant { <{ ptr, [255 x ptr] }>, [256 x i8] } { <{ ptr, [255 x ptr] }> <{ ptr @page00, [255 x ptr] zeroinitializer }>, [256 x i8] zeroinitializer }, align 32
@charset2uni = internal constant { [256 x i16], [128 x i8] } { [256 x i16] [i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15, i16 16, i16 17, i16 18, i16 19, i16 20, i16 21, i16 22, i16 23, i16 24, i16 25, i16 26, i16 27, i16 28, i16 29, i16 30, i16 31, i16 32, i16 33, i16 34, i16 35, i16 36, i16 37, i16 38, i16 39, i16 40, i16 41, i16 42, i16 43, i16 44, i16 45, i16 46, i16 47, i16 48, i16 49, i16 50, i16 51, i16 52, i16 53, i16 54, i16 55, i16 56, i16 57, i16 58, i16 59, i16 60, i16 61, i16 62, i16 63, i16 64, i16 65, i16 66, i16 67, i16 68, i16 69, i16 70, i16 71, i16 72, i16 73, i16 74, i16 75, i16 76, i16 77, i16 78, i16 79, i16 80, i16 81, i16 82, i16 83, i16 84, i16 85, i16 86, i16 87, i16 88, i16 89, i16 90, i16 91, i16 92, i16 93, i16 94, i16 95, i16 96, i16 97, i16 98, i16 99, i16 100, i16 101, i16 102, i16 103, i16 104, i16 105, i16 106, i16 107, i16 108, i16 109, i16 110, i16 111, i16 112, i16 113, i16 114, i16 115, i16 116, i16 117, i16 118, i16 119, i16 120, i16 121, i16 122, i16 123, i16 124, i16 125, i16 126, i16 127, i16 128, i16 129, i16 130, i16 131, i16 132, i16 133, i16 134, i16 135, i16 136, i16 137, i16 138, i16 139, i16 140, i16 141, i16 142, i16 143, i16 144, i16 145, i16 146, i16 147, i16 148, i16 149, i16 150, i16 151, i16 152, i16 153, i16 154, i16 155, i16 156, i16 157, i16 158, i16 159, i16 160, i16 161, i16 162, i16 163, i16 164, i16 165, i16 166, i16 167, i16 168, i16 169, i16 170, i16 171, i16 172, i16 173, i16 174, i16 175, i16 176, i16 177, i16 178, i16 179, i16 180, i16 181, i16 182, i16 183, i16 184, i16 185, i16 186, i16 187, i16 188, i16 189, i16 190, i16 191, i16 192, i16 193, i16 194, i16 195, i16 196, i16 197, i16 198, i16 199, i16 200, i16 201, i16 202, i16 203, i16 204, i16 205, i16 206, i16 207, i16 208, i16 209, i16 210, i16 211, i16 212, i16 213, i16 214, i16 215, i16 216, i16 217, i16 218, i16 219, i16 220, i16 221, i16 222, i16 223, i16 224, i16 225, i16 226, i16 227, i16 228, i16 229, i16 230, i16 231, i16 232, i16 233, i16 234, i16 235, i16 236, i16 237, i16 238, i16 239, i16 240, i16 241, i16 242, i16 243, i16 244, i16 245, i16 246, i16 247, i16 248, i16 249, i16 250, i16 251, i16 252, i16 253, i16 254, i16 255], [128 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.5 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.6 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.7 = private unnamed_addr constant [11 x i8] c"utf8_table\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 36, i32 32 }
@___asan_gen_.10 = private unnamed_addr constant [7 x i8] c"tables\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 21, i32 26 }
@___asan_gen_.13 = private unnamed_addr constant [9 x i8] c"nls_lock\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 293, i32 9 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 536, i32 25 }
@___asan_gen_.22 = private unnamed_addr constant [14 x i8] c"default_table\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 523, i32 25 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 22, i32 8 }
@___asan_gen_.28 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 524, i32 13 }
@___asan_gen_.31 = private unnamed_addr constant [14 x i8] c"charset2lower\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 425, i32 28 }
@___asan_gen_.34 = private unnamed_addr constant [14 x i8] c"charset2upper\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 461, i32 28 }
@___asan_gen_.37 = private unnamed_addr constant [7 x i8] c"page00\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 385, i32 28 }
@___asan_gen_.40 = private unnamed_addr constant [17 x i8] c"page_uni2charset\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 421, i32 35 }
@___asan_gen_.43 = private unnamed_addr constant [12 x i8] c"charset2uni\00", align 1
@___asan_gen_.44 = private constant [21 x i8] c"../fs/nls/nls_base.c\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 302, i32 22 }
@llvm.compiler.used = appending global [24 x ptr] [ptr @__UNIQUE_ID_file106, ptr @__UNIQUE_ID_license107, ptr @__ksymtab___register_nls, ptr @__ksymtab_load_nls, ptr @__ksymtab_load_nls_default, ptr @__ksymtab_unload_nls, ptr @__ksymtab_unregister_nls, ptr @__ksymtab_utf16s_to_utf8s, ptr @__ksymtab_utf32_to_utf8, ptr @__ksymtab_utf8_to_utf32, ptr @__ksymtab_utf8s_to_utf16s, ptr @utf8_table, ptr @tables, ptr @nls_lock, ptr @.str, ptr @.str.1, ptr @default_table, ptr @.str.2, ptr @.str.3, ptr @charset2lower, ptr @charset2upper, ptr @page00, ptr @page_uni2charset, ptr @charset2uni], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @utf8_table to i32), i32 140, i32 192, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tables to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nls_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @default_table to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @charset2lower to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @charset2upper to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @page00 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @page_uni2charset to i32), i32 1024, i32 1280, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @charset2uni to i32), i32 512, i32 640, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @utf8_to_utf32(ptr nocapture noundef readonly %s, i32 noundef %inlen, ptr nocapture noundef writeonly %pu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %s to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %s, align 1
  %conv = zext i8 %1 to i32
  %smax = call i32 @llvm.smax.i32(i32 %inlen, i32 1)
  %2 = add nsw i32 %smax, -1
  %and = and i32 %conv, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %entry.if.then_crit_edge, label %if.end13

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %if.end23.4.if.then_crit_edge, %if.end23.3.if.then_crit_edge, %if.end23.2.if.then_crit_edge, %if.end23.1.if.then_crit_edge, %if.end23.if.then_crit_edge, %entry.if.then_crit_edge
  %t.051.lcssa = phi ptr [ @utf8_table, %entry.if.then_crit_edge ], [ getelementptr inbounds ([7 x %struct.utf8_table], ptr @utf8_table, i32 0, i32 1), %if.end23.if.then_crit_edge ], [ getelementptr inbounds ([7 x %struct.utf8_table], ptr @utf8_table, i32 0, i32 2), %if.end23.1.if.then_crit_edge ], [ getelementptr inbounds ([7 x %struct.utf8_table], ptr @utf8_table, i32 0, i32 3), %if.end23.2.if.then_crit_edge ], [ getelementptr inbounds ([7 x %struct.utf8_table], ptr @utf8_table, i32 0, i32 4), %if.end23.3.if.then_crit_edge ], [ getelementptr inbounds ([7 x %struct.utf8_table], ptr @utf8_table, i32 0, i32 5), %if.end23.4.if.then_crit_edge ]
  %l.049.lcssa = phi i32 [ %conv, %entry.if.then_crit_edge ], [ %or, %if.end23.if.then_crit_edge ], [ %or.1, %if.end23.1.if.then_crit_edge ], [ %or.2, %if.end23.2.if.then_crit_edge ], [ %or.3, %if.end23.3.if.then_crit_edge ], [ %or.4, %if.end23.4.if.then_crit_edge ]
  %inc.lcssa = phi i32 [ 1, %entry.if.then_crit_edge ], [ 2, %if.end23.if.then_crit_edge ], [ 3, %if.end23.1.if.then_crit_edge ], [ 4, %if.end23.2.if.then_crit_edge ], [ 5, %if.end23.3.if.then_crit_edge ], [ 6, %if.end23.4.if.then_crit_edge ]
  %lmask = getelementptr inbounds %struct.utf8_table, ptr %t.051.lcssa, i32 0, i32 3
  %3 = ptrtoint ptr %lmask to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %lmask, align 4
  %and3 = and i32 %4, %l.049.lcssa
  %lval = getelementptr inbounds %struct.utf8_table, ptr %t.051.lcssa, i32 0, i32 4
  %5 = ptrtoint ptr %lval to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %lval, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and3, i32 %6)
  %cmp4 = icmp ult i32 %and3, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1114111, i32 %and3)
  %cmp6 = icmp ugt i32 %and3, 1114111
  %or.cond = or i1 %cmp4, %cmp6
  %and9 = and i32 %and3, -2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 55296, i32 %and9)
  %cmp10 = icmp eq i32 %and9, 55296
  %or.cond45 = or i1 %or.cond, %cmp10
  br i1 %or.cond45, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %pu to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %and3, ptr %pu, align 4
  br label %cleanup

if.end13:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %exitcond.not = icmp eq i32 %2, 0
  br i1 %exitcond.not, label %if.end13.cleanup_crit_edge, label %if.end17

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end17:                                         ; preds = %if.end13
  %incdec.ptr = getelementptr i8, ptr %s, i32 1
  %8 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %incdec.ptr, align 1
  %10 = xor i8 %9, -128
  %xor = zext i8 %10 to i32
  %and20 = and i32 %xor, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %if.end23, label %if.end17.cleanup_crit_edge

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end23:                                         ; preds = %if.end17
  %shl = shl nuw nsw i32 %conv, 6
  %or = or i32 %shl, %xor
  %and.1 = and i32 %conv, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 192, i32 %and.1)
  %cmp.1 = icmp eq i32 %and.1, 192
  br i1 %cmp.1, label %if.end23.if.then_crit_edge, label %if.end13.1

if.end23.if.then_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.end13.1:                                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %exitcond.1.not = icmp eq i32 %2, 1
  br i1 %exitcond.1.not, label %if.end13.1.cleanup_crit_edge, label %if.end17.1

if.end13.1.cleanup_crit_edge:                     ; preds = %if.end13.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end17.1:                                       ; preds = %if.end13.1
  %incdec.ptr.1 = getelementptr i8, ptr %s, i32 2
  %11 = ptrtoint ptr %incdec.ptr.1 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %incdec.ptr.1, align 1
  %13 = xor i8 %12, -128
  %xor.1 = zext i8 %13 to i32
  %and20.1 = and i32 %xor.1, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.1)
  %tobool21.not.1 = icmp eq i32 %and20.1, 0
  br i1 %tobool21.not.1, label %if.end23.1, label %if.end17.1.cleanup_crit_edge

if.end17.1.cleanup_crit_edge:                     ; preds = %if.end17.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end23.1:                                       ; preds = %if.end17.1
  %shl.1 = shl nuw nsw i32 %or, 6
  %or.1 = or i32 %shl.1, %xor.1
  %and.2 = and i32 %conv, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 224, i32 %and.2)
  %cmp.2 = icmp eq i32 %and.2, 224
  br i1 %cmp.2, label %if.end23.1.if.then_crit_edge, label %if.end13.2

if.end23.1.if.then_crit_edge:                     ; preds = %if.end23.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.end13.2:                                       ; preds = %if.end23.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %exitcond.2.not = icmp eq i32 %2, 2
  br i1 %exitcond.2.not, label %if.end13.2.cleanup_crit_edge, label %if.end17.2

if.end13.2.cleanup_crit_edge:                     ; preds = %if.end13.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end17.2:                                       ; preds = %if.end13.2
  %incdec.ptr.2 = getelementptr i8, ptr %s, i32 3
  %14 = ptrtoint ptr %incdec.ptr.2 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %incdec.ptr.2, align 1
  %16 = xor i8 %15, -128
  %xor.2 = zext i8 %16 to i32
  %and20.2 = and i32 %xor.2, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.2)
  %tobool21.not.2 = icmp eq i32 %and20.2, 0
  br i1 %tobool21.not.2, label %if.end23.2, label %if.end17.2.cleanup_crit_edge

if.end17.2.cleanup_crit_edge:                     ; preds = %if.end17.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end23.2:                                       ; preds = %if.end17.2
  %shl.2 = shl nuw nsw i32 %or.1, 6
  %or.2 = or i32 %shl.2, %xor.2
  %and.3 = and i32 %conv, 248
  call void @__sanitizer_cov_trace_const_cmp4(i32 240, i32 %and.3)
  %cmp.3 = icmp eq i32 %and.3, 240
  br i1 %cmp.3, label %if.end23.2.if.then_crit_edge, label %if.end13.3

if.end23.2.if.then_crit_edge:                     ; preds = %if.end23.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.end13.3:                                       ; preds = %if.end23.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %2)
  %exitcond.3.not = icmp eq i32 %2, 3
  br i1 %exitcond.3.not, label %if.end13.3.cleanup_crit_edge, label %if.end17.3

if.end13.3.cleanup_crit_edge:                     ; preds = %if.end13.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end17.3:                                       ; preds = %if.end13.3
  %incdec.ptr.3 = getelementptr i8, ptr %s, i32 4
  %17 = ptrtoint ptr %incdec.ptr.3 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %incdec.ptr.3, align 1
  %19 = xor i8 %18, -128
  %xor.3 = zext i8 %19 to i32
  %and20.3 = and i32 %xor.3, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.3)
  %tobool21.not.3 = icmp eq i32 %and20.3, 0
  br i1 %tobool21.not.3, label %if.end23.3, label %if.end17.3.cleanup_crit_edge

if.end17.3.cleanup_crit_edge:                     ; preds = %if.end17.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end23.3:                                       ; preds = %if.end17.3
  %shl.3 = shl i32 %or.2, 6
  %or.3 = or i32 %shl.3, %xor.3
  %and.4 = and i32 %conv, 252
  call void @__sanitizer_cov_trace_const_cmp4(i32 248, i32 %and.4)
  %cmp.4 = icmp eq i32 %and.4, 248
  br i1 %cmp.4, label %if.end23.3.if.then_crit_edge, label %if.end13.4

if.end23.3.if.then_crit_edge:                     ; preds = %if.end23.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.end13.4:                                       ; preds = %if.end23.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %2)
  %exitcond.4.not = icmp eq i32 %2, 4
  br i1 %exitcond.4.not, label %if.end13.4.cleanup_crit_edge, label %if.end17.4

if.end13.4.cleanup_crit_edge:                     ; preds = %if.end13.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end17.4:                                       ; preds = %if.end13.4
  %incdec.ptr.4 = getelementptr i8, ptr %s, i32 5
  %20 = ptrtoint ptr %incdec.ptr.4 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %incdec.ptr.4, align 1
  %22 = xor i8 %21, -128
  %xor.4 = zext i8 %22 to i32
  %and20.4 = and i32 %xor.4, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.4)
  %tobool21.not.4 = icmp eq i32 %and20.4, 0
  br i1 %tobool21.not.4, label %if.end23.4, label %if.end17.4.cleanup_crit_edge

if.end17.4.cleanup_crit_edge:                     ; preds = %if.end17.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end23.4:                                       ; preds = %if.end17.4
  %shl.4 = shl i32 %or.3, 6
  %or.4 = or i32 %shl.4, %xor.4
  %and.5 = and i32 %conv, 254
  call void @__sanitizer_cov_trace_const_cmp4(i32 252, i32 %and.5)
  %cmp.5 = icmp eq i32 %and.5, 252
  br i1 %cmp.5, label %if.end23.4.if.then_crit_edge, label %if.end23.4.cleanup_crit_edge

if.end23.4.cleanup_crit_edge:                     ; preds = %if.end23.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end23.4.if.then_crit_edge:                     ; preds = %if.end23.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

cleanup:                                          ; preds = %if.end23.4.cleanup_crit_edge, %if.end17.4.cleanup_crit_edge, %if.end13.4.cleanup_crit_edge, %if.end17.3.cleanup_crit_edge, %if.end13.3.cleanup_crit_edge, %if.end17.2.cleanup_crit_edge, %if.end13.2.cleanup_crit_edge, %if.end17.1.cleanup_crit_edge, %if.end13.1.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %if.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %inc.lcssa, %if.end ], [ -1, %if.then.cleanup_crit_edge ], [ -1, %if.end17.4.cleanup_crit_edge ], [ -1, %if.end13.4.cleanup_crit_edge ], [ -1, %if.end17.3.cleanup_crit_edge ], [ -1, %if.end13.3.cleanup_crit_edge ], [ -1, %if.end17.2.cleanup_crit_edge ], [ -1, %if.end13.2.cleanup_crit_edge ], [ -1, %if.end17.1.cleanup_crit_edge ], [ -1, %if.end13.1.cleanup_crit_edge ], [ -1, %if.end13.cleanup_crit_edge ], [ -1, %if.end17.cleanup_crit_edge ], [ -1, %if.end23.4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @utf32_to_utf8(i32 noundef %u, ptr noundef writeonly %s, i32 noundef %maxout) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %s, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1114111, i32 %u)
  %cmp = icmp ugt i32 %u, 1114111
  %and = and i32 %u, -2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 55296, i32 %and)
  %cmp1 = icmp eq i32 %and, 55296
  %or.cond = or i1 %cmp, %cmp1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %maxout)
  %tobool5.not38 = icmp eq i32 %maxout, 0
  %or.cond45 = or i1 %or.cond, %tobool5.not38
  br i1 %or.cond45, label %if.end.cleanup_crit_edge, label %for.body.preheader

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.preheader:                               ; preds = %if.end
  %0 = add i32 %maxout, -1
  %umin = call i32 @llvm.umin.i32(i32 %0, i32 5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %u)
  %cmp6.not = icmp ugt i32 %u, 127
  br i1 %cmp6.not, label %for.inc, label %for.body.preheader.if.then7_crit_edge

for.body.preheader.if.then7_crit_edge:            ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then7

if.then7:                                         ; preds = %for.inc.4.if.then7_crit_edge, %for.body.4.if.then7_crit_edge, %for.body.3.if.then7_crit_edge, %for.body.2.if.then7_crit_edge, %for.body.1.if.then7_crit_edge, %for.body.preheader.if.then7_crit_edge
  %t.041.lcssa = phi ptr [ @utf8_table, %for.body.preheader.if.then7_crit_edge ], [ getelementptr inbounds ([7 x %struct.utf8_table], ptr @utf8_table, i32 0, i32 1), %for.body.1.if.then7_crit_edge ], [ getelementptr inbounds ([7 x %struct.utf8_table], ptr @utf8_table, i32 0, i32 2), %for.body.2.if.then7_crit_edge ], [ getelementptr inbounds ([7 x %struct.utf8_table], ptr @utf8_table, i32 0, i32 3), %for.body.3.if.then7_crit_edge ], [ getelementptr inbounds ([7 x %struct.utf8_table], ptr @utf8_table, i32 0, i32 4), %for.body.4.if.then7_crit_edge ], [ getelementptr inbounds ([7 x %struct.utf8_table], ptr @utf8_table, i32 0, i32 5), %for.inc.4.if.then7_crit_edge ]
  %inc.lcssa = phi i32 [ 1, %for.body.preheader.if.then7_crit_edge ], [ 2, %for.body.1.if.then7_crit_edge ], [ 3, %for.body.2.if.then7_crit_edge ], [ 4, %for.body.3.if.then7_crit_edge ], [ 5, %for.body.4.if.then7_crit_edge ], [ 6, %for.inc.4.if.then7_crit_edge ]
  %shift = getelementptr inbounds %struct.utf8_table, ptr %t.041.lcssa, i32 0, i32 2
  %1 = ptrtoint ptr %shift to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %shift, align 4
  %cval = getelementptr inbounds %struct.utf8_table, ptr %t.041.lcssa, i32 0, i32 1
  %3 = ptrtoint ptr %cval to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cval, align 4
  %shr = lshr i32 %u, %2
  %or = or i32 %4, %shr
  %conv = trunc i32 %or to i8
  %5 = ptrtoint ptr %s to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv, ptr %s, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp842 = icmp sgt i32 %2, 0
  br i1 %cmp842, label %if.then7.while.body_crit_edge, label %if.then7.cleanup_crit_edge

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then7.while.body_crit_edge:                    ; preds = %if.then7
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.then7.while.body_crit_edge
  %c.044 = phi i32 [ %sub, %while.body.while.body_crit_edge ], [ %2, %if.then7.while.body_crit_edge ]
  %s.addr.043 = phi ptr [ %incdec.ptr, %while.body.while.body_crit_edge ], [ %s, %if.then7.while.body_crit_edge ]
  %sub = add nsw i32 %c.044, -6
  %incdec.ptr = getelementptr i8, ptr %s.addr.043, i32 1
  %shr10 = lshr i32 %u, %sub
  %6 = trunc i32 %shr10 to i8
  %7 = and i8 %6, 63
  %conv13 = or i8 %7, -128
  %8 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv13, ptr %incdec.ptr, align 1
  %cmp8 = icmp ugt i32 %c.044, 6
  br i1 %cmp8, label %while.body.while.body_crit_edge, label %while.body.cleanup_crit_edge

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

for.inc:                                          ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %umin)
  %exitcond = icmp eq i32 %umin, 0
  br i1 %exitcond, label %for.inc.cleanup_crit_edge, label %for.body.1

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.1:                                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 2047, i32 %u)
  %cmp6.not.1 = icmp ugt i32 %u, 2047
  br i1 %cmp6.not.1, label %for.inc.1, label %for.body.1.if.then7_crit_edge

for.body.1.if.then7_crit_edge:                    ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then7

for.inc.1:                                        ; preds = %for.body.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %umin)
  %exitcond.1 = icmp eq i32 %umin, 1
  br i1 %exitcond.1, label %for.inc.1.cleanup_crit_edge, label %for.body.2

for.inc.1.cleanup_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.2:                                       ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %u)
  %cmp6.not.2 = icmp ugt i32 %u, 65535
  br i1 %cmp6.not.2, label %for.inc.2, label %for.body.2.if.then7_crit_edge

for.body.2.if.then7_crit_edge:                    ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then7

for.inc.2:                                        ; preds = %for.body.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %umin)
  %exitcond.2 = icmp eq i32 %umin, 2
  br i1 %exitcond.2, label %for.inc.2.cleanup_crit_edge, label %for.body.3

for.inc.2.cleanup_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.3:                                       ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097151, i32 %u)
  %cmp6.not.3 = icmp ugt i32 %u, 2097151
  br i1 %cmp6.not.3, label %for.inc.3, label %for.body.3.if.then7_crit_edge

for.body.3.if.then7_crit_edge:                    ; preds = %for.body.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then7

for.inc.3:                                        ; preds = %for.body.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %umin)
  %exitcond.3 = icmp eq i32 %umin, 3
  br i1 %exitcond.3, label %for.inc.3.cleanup_crit_edge, label %for.body.4

for.inc.3.cleanup_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.4:                                       ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108863, i32 %u)
  %cmp6.not.4 = icmp ugt i32 %u, 67108863
  br i1 %cmp6.not.4, label %for.inc.4, label %for.body.4.if.then7_crit_edge

for.body.4.if.then7_crit_edge:                    ; preds = %for.body.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then7

for.inc.4:                                        ; preds = %for.body.4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %umin)
  %exitcond.4 = icmp eq i32 %umin, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %u)
  %cmp6.not.5 = icmp slt i32 %u, 0
  %or.cond58 = or i1 %exitcond.4, %cmp6.not.5
  br i1 %or.cond58, label %for.inc.4.cleanup_crit_edge, label %for.inc.4.if.then7_crit_edge

for.inc.4.if.then7_crit_edge:                     ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then7

for.inc.4.cleanup_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %for.inc.4.cleanup_crit_edge, %for.inc.3.cleanup_crit_edge, %for.inc.2.cleanup_crit_edge, %for.inc.1.cleanup_crit_edge, %for.inc.cleanup_crit_edge, %while.body.cleanup_crit_edge, %if.then7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -1, %if.end.cleanup_crit_edge ], [ %inc.lcssa, %if.then7.cleanup_crit_edge ], [ %inc.lcssa, %while.body.cleanup_crit_edge ], [ -1, %for.inc.4.cleanup_crit_edge ], [ -1, %for.inc.3.cleanup_crit_edge ], [ -1, %for.inc.2.cleanup_crit_edge ], [ -1, %for.inc.1.cleanup_crit_edge ], [ -1, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @utf8s_to_utf16s(ptr nocapture noundef readonly %s, i32 noundef %inlen, i32 noundef %endian, ptr noundef %pwcs, i32 noundef %maxout) #2 align 64 {
entry:
  %u = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %u) #9
  %0 = ptrtoint ptr %u to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %u, align 4, !annotation !55
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inlen)
  %cmp92 = icmp sgt i32 %inlen, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %maxout)
  %cmp193 = icmp sgt i32 %maxout, 0
  %or.cond94 = and i1 %cmp92, %cmp193
  br i1 %or.cond94, label %entry.land.rhs_crit_edge, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

entry.land.rhs_crit_edge:                         ; preds = %entry
  br label %land.rhs

land.rhs:                                         ; preds = %if.end28.land.rhs_crit_edge, %entry.land.rhs_crit_edge
  %op.098 = phi ptr [ %op.1, %if.end28.land.rhs_crit_edge ], [ %pwcs, %entry.land.rhs_crit_edge ]
  %maxout.addr.097 = phi i32 [ %sub19, %if.end28.land.rhs_crit_edge ], [ %maxout, %entry.land.rhs_crit_edge ]
  %s.addr.096 = phi ptr [ %s.addr.1, %if.end28.land.rhs_crit_edge ], [ %s, %entry.land.rhs_crit_edge ]
  %inlen.addr.095 = phi i32 [ %inlen.addr.1, %if.end28.land.rhs_crit_edge ], [ %inlen, %entry.land.rhs_crit_edge ]
  %1 = ptrtoint ptr %s.addr.096 to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %s.addr.096, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %land.rhs.while.end_crit_edge, label %while.body

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body:                                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %2)
  %tobool3.not = icmp sgt i8 %2, -1
  br i1 %tobool3.not, label %if.else22, label %if.then

if.then:                                          ; preds = %while.body
  %call = call i32 @utf8_to_utf32(ptr noundef %s.addr.096, i32 noundef %inlen.addr.095, ptr noundef nonnull %u)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp4 = icmp slt i32 %call, 0
  br i1 %cmp4, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %if.then
  %add.ptr = getelementptr i8, ptr %s.addr.096, i32 %call
  %sub = sub nsw i32 %inlen.addr.095, %call
  %3 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %u, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %4)
  %cmp7 = icmp ugt i32 %4, 65535
  br i1 %cmp7, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %maxout.addr.097)
  %cmp10 = icmp ult i32 %maxout.addr.097, 2
  br i1 %cmp10, label %if.then9.while.end_crit_edge, label %if.end13

if.then9.while.end_crit_edge:                     ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.end13:                                         ; preds = %if.then9
  %sub14 = add i32 %4, -65536
  %5 = ptrtoint ptr %u to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %sub14, ptr %u, align 4
  %incdec.ptr = getelementptr i16, ptr %op.098, i32 1
  %shr = lshr i32 %sub14, 10
  %and15 = and i32 %shr, 1023
  %or = or i32 %and15, 55296
  %6 = zext i32 %endian to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %endian, label %put_utf16.exit [
    i32 1, label %put_utf16.exit.thread
    i32 2, label %put_utf16.exit.thread84
  ]

put_utf16.exit.thread:                            ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  %conv1.i = trunc i32 %or to i16
  %7 = tail call i16 @llvm.bswap.i16(i16 %conv1.i) #9
  %8 = ptrtoint ptr %op.098 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %op.098, align 2
  %9 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %u, align 4
  %11 = trunc i32 %10 to i16
  %12 = and i16 %11, 1023
  %conv1.i55 = or i16 %12, -9216
  %13 = tail call i16 @llvm.bswap.i16(i16 %conv1.i55) #9
  br label %put_utf16.exit60

put_utf16.exit.thread84:                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  %conv3.i = trunc i32 %or to i16
  %14 = ptrtoint ptr %op.098 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv3.i, ptr %op.098, align 2
  %15 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %u, align 4
  %17 = trunc i32 %16 to i16
  %18 = and i16 %17, 1023
  %conv3.i57 = or i16 %18, -9216
  br label %put_utf16.exit60

put_utf16.exit:                                   ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i = trunc i32 %or to i16
  %19 = ptrtoint ptr %op.098 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv.i, ptr %op.098, align 2
  %20 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %u, align 4
  %22 = trunc i32 %21 to i16
  %23 = and i16 %22, 1023
  %conv.i53 = or i16 %23, -9216
  br label %put_utf16.exit60

put_utf16.exit60:                                 ; preds = %put_utf16.exit, %put_utf16.exit.thread84, %put_utf16.exit.thread
  %conv3.sink.i59 = phi i16 [ %conv3.i57, %put_utf16.exit.thread84 ], [ %13, %put_utf16.exit.thread ], [ %conv.i53, %put_utf16.exit ]
  %incdec.ptr1681 = getelementptr i16, ptr %op.098, i32 2
  %24 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %conv3.sink.i59, ptr %incdec.ptr, align 2
  br label %if.end28

if.else:                                          ; preds = %if.end
  %incdec.ptr20 = getelementptr i16, ptr %op.098, i32 1
  %25 = zext i32 %endian to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.5)
  switch i32 %endian, label %sw.default.i62 [
    i32 1, label %sw.bb.i64
    i32 2, label %sw.bb2.i66
  ]

sw.default.i62:                                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i61 = trunc i32 %4 to i16
  br label %put_utf16.exit68

sw.bb.i64:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %conv1.i63 = trunc i32 %4 to i16
  %26 = tail call i16 @llvm.bswap.i16(i16 %conv1.i63) #9
  br label %put_utf16.exit68

sw.bb2.i66:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %conv3.i65 = trunc i32 %4 to i16
  br label %put_utf16.exit68

put_utf16.exit68:                                 ; preds = %sw.bb2.i66, %sw.bb.i64, %sw.default.i62
  %conv3.sink.i67 = phi i16 [ %conv3.i65, %sw.bb2.i66 ], [ %26, %sw.bb.i64 ], [ %conv.i61, %sw.default.i62 ]
  %27 = ptrtoint ptr %op.098 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %conv3.sink.i67, ptr %op.098, align 2
  br label %if.end28

if.else22:                                        ; preds = %while.body
  %incdec.ptr23 = getelementptr i16, ptr %op.098, i32 1
  %incdec.ptr24 = getelementptr i8, ptr %s.addr.096, i32 1
  %28 = zext i32 %endian to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %endian, label %sw.default.i70 [
    i32 1, label %sw.bb.i72
    i32 2, label %sw.bb2.i74
  ]

sw.default.i70:                                   ; preds = %if.else22
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i69 = zext i8 %2 to i16
  br label %put_utf16.exit76

sw.bb.i72:                                        ; preds = %if.else22
  call void @__sanitizer_cov_trace_pc() #11
  %conv1.i71 = zext i8 %2 to i16
  %29 = shl nuw nsw i16 %conv1.i71, 8
  br label %put_utf16.exit76

sw.bb2.i74:                                       ; preds = %if.else22
  call void @__sanitizer_cov_trace_pc() #11
  %conv3.i73 = zext i8 %2 to i16
  br label %put_utf16.exit76

put_utf16.exit76:                                 ; preds = %sw.bb2.i74, %sw.bb.i72, %sw.default.i70
  %conv3.sink.i75 = phi i16 [ %conv3.i73, %sw.bb2.i74 ], [ %29, %sw.bb.i72 ], [ %conv.i69, %sw.default.i70 ]
  %30 = ptrtoint ptr %op.098 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %conv3.sink.i75, ptr %op.098, align 2
  %dec26 = add nsw i32 %inlen.addr.095, -1
  br label %if.end28

if.end28:                                         ; preds = %put_utf16.exit76, %put_utf16.exit68, %put_utf16.exit60
  %.sink = phi i32 [ -2, %put_utf16.exit60 ], [ -1, %put_utf16.exit68 ], [ -1, %put_utf16.exit76 ]
  %inlen.addr.1 = phi i32 [ %sub, %put_utf16.exit60 ], [ %sub, %put_utf16.exit68 ], [ %dec26, %put_utf16.exit76 ]
  %s.addr.1 = phi ptr [ %add.ptr, %put_utf16.exit60 ], [ %add.ptr, %put_utf16.exit68 ], [ %incdec.ptr24, %put_utf16.exit76 ]
  %op.1 = phi ptr [ %incdec.ptr1681, %put_utf16.exit60 ], [ %incdec.ptr20, %put_utf16.exit68 ], [ %incdec.ptr23, %put_utf16.exit76 ]
  %sub19 = add nsw i32 %maxout.addr.097, %.sink
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inlen.addr.1)
  %cmp = icmp sgt i32 %inlen.addr.1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub19)
  %cmp1 = icmp sgt i32 %sub19, 0
  %or.cond = select i1 %cmp, i1 %cmp1, i1 false
  br i1 %or.cond, label %if.end28.land.rhs_crit_edge, label %if.end28.while.end_crit_edge

if.end28.while.end_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.end28.land.rhs_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs

while.end:                                        ; preds = %if.end28.while.end_crit_edge, %if.then9.while.end_crit_edge, %land.rhs.while.end_crit_edge, %entry.while.end_crit_edge
  %op.0.lcssa = phi ptr [ %pwcs, %entry.while.end_crit_edge ], [ %op.1, %if.end28.while.end_crit_edge ], [ %op.098, %if.then9.while.end_crit_edge ], [ %op.098, %land.rhs.while.end_crit_edge ]
  %sub.ptr.lhs.cast = ptrtoint ptr %op.0.lcssa to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %pwcs to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i32 %sub.ptr.sub, 1
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %sub.ptr.div, %while.end ], [ -22, %if.then.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %u) #9
  ret i32 %retval.0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @utf16s_to_utf8s(ptr nocapture noundef readonly %pwcs, i32 noundef %inlen, i32 noundef %endian, ptr noundef %s, i32 noundef %maxout) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %maxout)
  %cmp1100 = icmp sgt i32 %maxout, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inlen)
  %cmp93101 = icmp sgt i32 %inlen, 0
  %or.cond94102 = and i1 %cmp93101, %cmp1100
  br i1 %or.cond94102, label %while.body.lr.ph.lr.ph, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.lr.ph.lr.ph:                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %endian)
  %cond = icmp eq i32 %endian, 1
  br label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %if.end40.while.body.lr.ph_crit_edge, %while.body.lr.ph.lr.ph
  %op.0.ph107 = phi ptr [ %s, %while.body.lr.ph.lr.ph ], [ %op.1, %if.end40.while.body.lr.ph_crit_edge ]
  %maxout.addr.0.ph105 = phi i32 [ %maxout, %while.body.lr.ph.lr.ph ], [ %maxout.addr.1, %if.end40.while.body.lr.ph_crit_edge ]
  %pwcs.addr.0.ph104 = phi ptr [ %pwcs, %while.body.lr.ph.lr.ph ], [ %pwcs.addr.2, %if.end40.while.body.lr.ph_crit_edge ]
  %inlen.addr.0.ph103 = phi i32 [ %inlen, %while.body.lr.ph.lr.ph ], [ %inlen.addr.2, %if.end40.while.body.lr.ph_crit_edge ]
  br label %while.body

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %while.body.lr.ph
  %pwcs.addr.096 = phi ptr [ %pwcs.addr.0.ph104, %while.body.lr.ph ], [ %incdec.ptr, %while.cond.backedge.while.body_crit_edge ]
  %inlen.addr.095 = phi i32 [ %inlen.addr.0.ph103, %while.body.lr.ph ], [ %dec, %while.cond.backedge.while.body_crit_edge ]
  %0 = ptrtoint ptr %pwcs.addr.096 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %pwcs.addr.096, align 2
  %2 = tail call i16 @llvm.bswap.i16(i16 %1) #9
  %retval.0.i.v = select i1 %cond, i16 %2, i16 %1
  %retval.0.i = zext i16 %retval.0.i.v to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %retval.0.i.v)
  %tobool.not = icmp eq i16 %retval.0.i.v, 0
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %if.end

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.end:                                           ; preds = %while.body
  %incdec.ptr = getelementptr i16, ptr %pwcs.addr.096, i32 1
  %dec = add nsw i32 %inlen.addr.095, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 127, i16 %retval.0.i.v)
  %cmp2 = icmp ugt i16 %retval.0.i.v, 127
  br i1 %cmp2, label %if.then4, label %if.else36

if.then4:                                         ; preds = %if.end
  %and = and i32 %retval.0.i, 63488
  call void @__sanitizer_cov_trace_const_cmp4(i32 55296, i32 %and)
  %cmp5 = icmp eq i32 %and, 55296
  br i1 %cmp5, label %if.then7, label %if.then4.if.end30_crit_edge

if.then4.if.end30_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

if.then7:                                         ; preds = %if.then4
  %and8 = and i32 %retval.0.i, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.end11, label %if.then7.while.cond.backedge_crit_edge

if.then7.while.cond.backedge_crit_edge:           ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.end15.while.cond.backedge_crit_edge, %if.then7.while.cond.backedge_crit_edge
  %cmp = icmp ugt i32 %inlen.addr.095, 1
  br i1 %cmp, label %while.cond.backedge.while.body_crit_edge, label %while.cond.backedge.while.end_crit_edge

while.cond.backedge.while.end_crit_edge:          ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

if.end11:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp12 = icmp eq i32 %dec, 0
  br i1 %cmp12, label %if.end11.while.end_crit_edge, label %if.end15

if.end11.while.end_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.end15:                                         ; preds = %if.end11
  %3 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %incdec.ptr, align 2
  %5 = tail call i16 @llvm.bswap.i16(i16 %4) #9
  %retval.0.i70.v = select i1 %cond, i16 %5, i16 %4
  %retval.0.i70 = zext i16 %retval.0.i70.v to i32
  %6 = and i32 %retval.0.i70, 64512
  call void @__sanitizer_cov_trace_const_cmp4(i32 56320, i32 %6)
  %.not = icmp eq i32 %6, 56320
  br i1 %.not, label %if.end24, label %if.end15.while.cond.backedge_crit_edge

if.end15.while.cond.backedge_crit_edge:           ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.backedge

if.end24:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  %and25 = shl nuw nsw i32 %retval.0.i, 10
  %shl = and i32 %and25, 1047552
  %add = add nuw nsw i32 %shl, 65536
  %and26 = and i32 %retval.0.i70, 1023
  %add27 = or i32 %and26, %add
  %incdec.ptr28 = getelementptr i16, ptr %pwcs.addr.096, i32 2
  %dec29 = add nsw i32 %inlen.addr.095, -2
  br label %if.end30

if.end30:                                         ; preds = %if.end24, %if.then4.if.end30_crit_edge
  %inlen.addr.1 = phi i32 [ %dec29, %if.end24 ], [ %dec, %if.then4.if.end30_crit_edge ]
  %pwcs.addr.1 = phi ptr [ %incdec.ptr28, %if.end24 ], [ %incdec.ptr, %if.then4.if.end30_crit_edge ]
  %u.0 = phi i32 [ %add27, %if.end24 ], [ %retval.0.i, %if.then4.if.end30_crit_edge ]
  %tobool.not.i = icmp eq ptr %op.0.ph107, null
  br i1 %tobool.not.i, label %if.end30.if.else_crit_edge, label %if.end.i

if.end30.if.else_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.end.i:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_const_cmp4(i32 1114111, i32 %u.0)
  %cmp.i = icmp ugt i32 %u.0, 1114111
  %and.i = and i32 %u.0, -2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 55296, i32 %and.i)
  %cmp1.i = icmp eq i32 %and.i, 55296
  %or.cond.i = or i1 %cmp.i, %cmp1.i
  br i1 %or.cond.i, label %if.end.i.if.end40_crit_edge, label %for.body.preheader.i

if.end.i.if.end40_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40

for.body.preheader.i:                             ; preds = %if.end.i
  %7 = add nsw i32 %maxout.addr.0.ph105, -1
  %umin.i = tail call i32 @llvm.umin.i32(i32 %7, i32 5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %u.0)
  %cmp6.not.i = icmp ugt i32 %u.0, 127
  br i1 %cmp6.not.i, label %for.inc.i, label %for.body.preheader.i.if.then7.i_crit_edge

for.body.preheader.i.if.then7.i_crit_edge:        ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then7.i

if.then7.i:                                       ; preds = %for.inc.i.4.if.then7.i_crit_edge, %for.body.i.4.if.then7.i_crit_edge, %for.body.i.3.if.then7.i_crit_edge, %for.body.i.2.if.then7.i_crit_edge, %for.body.i.1.if.then7.i_crit_edge, %for.body.preheader.i.if.then7.i_crit_edge
  %t.041.i.lcssa = phi ptr [ @utf8_table, %for.body.preheader.i.if.then7.i_crit_edge ], [ getelementptr inbounds ([7 x %struct.utf8_table], ptr @utf8_table, i32 0, i32 1), %for.body.i.1.if.then7.i_crit_edge ], [ getelementptr inbounds ([7 x %struct.utf8_table], ptr @utf8_table, i32 0, i32 2), %for.body.i.2.if.then7.i_crit_edge ], [ getelementptr inbounds ([7 x %struct.utf8_table], ptr @utf8_table, i32 0, i32 3), %for.body.i.3.if.then7.i_crit_edge ], [ getelementptr inbounds ([7 x %struct.utf8_table], ptr @utf8_table, i32 0, i32 4), %for.body.i.4.if.then7.i_crit_edge ], [ getelementptr inbounds ([7 x %struct.utf8_table], ptr @utf8_table, i32 0, i32 5), %for.inc.i.4.if.then7.i_crit_edge ]
  %inc.i.lcssa = phi i32 [ 1, %for.body.preheader.i.if.then7.i_crit_edge ], [ 2, %for.body.i.1.if.then7.i_crit_edge ], [ 3, %for.body.i.2.if.then7.i_crit_edge ], [ 4, %for.body.i.3.if.then7.i_crit_edge ], [ 5, %for.body.i.4.if.then7.i_crit_edge ], [ 6, %for.inc.i.4.if.then7.i_crit_edge ]
  %shift.i = getelementptr inbounds %struct.utf8_table, ptr %t.041.i.lcssa, i32 0, i32 2
  %8 = ptrtoint ptr %shift.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %shift.i, align 4
  %cval.i = getelementptr inbounds %struct.utf8_table, ptr %t.041.i.lcssa, i32 0, i32 1
  %10 = ptrtoint ptr %cval.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cval.i, align 4
  %shr.i = lshr i32 %u.0, %9
  %or.i = or i32 %11, %shr.i
  %conv.i = trunc i32 %or.i to i8
  %12 = ptrtoint ptr %op.0.ph107 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv.i, ptr %op.0.ph107, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp842.i = icmp sgt i32 %9, 0
  br i1 %cmp842.i, label %if.then7.i.while.body.i_crit_edge, label %if.then7.i.if.else_crit_edge

if.then7.i.if.else_crit_edge:                     ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.then7.i.while.body.i_crit_edge:                ; preds = %if.then7.i
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.then7.i.while.body.i_crit_edge
  %c.044.i = phi i32 [ %sub.i, %while.body.i.while.body.i_crit_edge ], [ %9, %if.then7.i.while.body.i_crit_edge ]
  %s.addr.043.i = phi ptr [ %incdec.ptr.i, %while.body.i.while.body.i_crit_edge ], [ %op.0.ph107, %if.then7.i.while.body.i_crit_edge ]
  %sub.i = add nsw i32 %c.044.i, -6
  %incdec.ptr.i = getelementptr i8, ptr %s.addr.043.i, i32 1
  %shr10.i = lshr i32 %u.0, %sub.i
  %13 = trunc i32 %shr10.i to i8
  %14 = and i8 %13, 63
  %conv13.i = or i8 %14, -128
  %15 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv13.i, ptr %incdec.ptr.i, align 1
  %cmp8.i = icmp ugt i32 %c.044.i, 6
  br i1 %cmp8.i, label %while.body.i.while.body.i_crit_edge, label %while.body.i.if.else_crit_edge

while.body.i.if.else_crit_edge:                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

for.inc.i:                                        ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %umin.i)
  %exitcond.i = icmp eq i32 %umin.i, 0
  br i1 %exitcond.i, label %for.inc.i.if.end40_crit_edge, label %for.body.i.1

for.inc.i.if.end40_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40

for.body.i.1:                                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2047, i32 %u.0)
  %cmp6.not.i.1 = icmp ugt i32 %u.0, 2047
  br i1 %cmp6.not.i.1, label %for.inc.i.1, label %for.body.i.1.if.then7.i_crit_edge

for.body.i.1.if.then7.i_crit_edge:                ; preds = %for.body.i.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then7.i

for.inc.i.1:                                      ; preds = %for.body.i.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %umin.i)
  %exitcond.i.1 = icmp eq i32 %umin.i, 1
  br i1 %exitcond.i.1, label %for.inc.i.1.if.end40_crit_edge, label %for.body.i.2

for.inc.i.1.if.end40_crit_edge:                   ; preds = %for.inc.i.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40

for.body.i.2:                                     ; preds = %for.inc.i.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %u.0)
  %cmp6.not.i.2 = icmp ugt i32 %u.0, 65535
  br i1 %cmp6.not.i.2, label %for.inc.i.2, label %for.body.i.2.if.then7.i_crit_edge

for.body.i.2.if.then7.i_crit_edge:                ; preds = %for.body.i.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then7.i

for.inc.i.2:                                      ; preds = %for.body.i.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %umin.i)
  %exitcond.i.2 = icmp eq i32 %umin.i, 2
  br i1 %exitcond.i.2, label %for.inc.i.2.if.end40_crit_edge, label %for.body.i.3

for.inc.i.2.if.end40_crit_edge:                   ; preds = %for.inc.i.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40

for.body.i.3:                                     ; preds = %for.inc.i.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097151, i32 %u.0)
  %cmp6.not.i.3 = icmp ugt i32 %u.0, 2097151
  br i1 %cmp6.not.i.3, label %for.inc.i.3, label %for.body.i.3.if.then7.i_crit_edge

for.body.i.3.if.then7.i_crit_edge:                ; preds = %for.body.i.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then7.i

for.inc.i.3:                                      ; preds = %for.body.i.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %umin.i)
  %exitcond.i.3 = icmp eq i32 %umin.i, 3
  br i1 %exitcond.i.3, label %for.inc.i.3.if.end40_crit_edge, label %for.body.i.4

for.inc.i.3.if.end40_crit_edge:                   ; preds = %for.inc.i.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40

for.body.i.4:                                     ; preds = %for.inc.i.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108863, i32 %u.0)
  %cmp6.not.i.4 = icmp ugt i32 %u.0, 67108863
  br i1 %cmp6.not.i.4, label %for.inc.i.4, label %for.body.i.4.if.then7.i_crit_edge

for.body.i.4.if.then7.i_crit_edge:                ; preds = %for.body.i.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then7.i

for.inc.i.4:                                      ; preds = %for.body.i.4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %umin.i)
  %exitcond.i.4 = icmp eq i32 %umin.i, 4
  br i1 %exitcond.i.4, label %for.inc.i.4.if.end40_crit_edge, label %for.inc.i.4.if.then7.i_crit_edge

for.inc.i.4.if.then7.i_crit_edge:                 ; preds = %for.inc.i.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then7.i

for.inc.i.4.if.end40_crit_edge:                   ; preds = %for.inc.i.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40

if.else:                                          ; preds = %while.body.i.if.else_crit_edge, %if.then7.i.if.else_crit_edge, %if.end30.if.else_crit_edge
  %retval.0.i72.ph = phi i32 [ %inc.i.lcssa, %if.then7.i.if.else_crit_edge ], [ 0, %if.end30.if.else_crit_edge ], [ %inc.i.lcssa, %while.body.i.if.else_crit_edge ]
  %add.ptr = getelementptr i8, ptr %op.0.ph107, i32 %retval.0.i72.ph
  %sub = sub i32 %maxout.addr.0.ph105, %retval.0.i72.ph
  br label %if.end40

if.else36:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %conv37 = trunc i16 %retval.0.i.v to i8
  %incdec.ptr38 = getelementptr i8, ptr %op.0.ph107, i32 1
  %16 = ptrtoint ptr %op.0.ph107 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv37, ptr %op.0.ph107, align 1
  %dec39 = add nsw i32 %maxout.addr.0.ph105, -1
  br label %if.end40

if.end40:                                         ; preds = %if.else36, %if.else, %for.inc.i.4.if.end40_crit_edge, %for.inc.i.3.if.end40_crit_edge, %for.inc.i.2.if.end40_crit_edge, %for.inc.i.1.if.end40_crit_edge, %for.inc.i.if.end40_crit_edge, %if.end.i.if.end40_crit_edge
  %inlen.addr.2 = phi i32 [ %inlen.addr.1, %if.else ], [ %dec, %if.else36 ], [ %inlen.addr.1, %if.end.i.if.end40_crit_edge ], [ %inlen.addr.1, %for.inc.i.4.if.end40_crit_edge ], [ %inlen.addr.1, %for.inc.i.3.if.end40_crit_edge ], [ %inlen.addr.1, %for.inc.i.2.if.end40_crit_edge ], [ %inlen.addr.1, %for.inc.i.1.if.end40_crit_edge ], [ %inlen.addr.1, %for.inc.i.if.end40_crit_edge ]
  %pwcs.addr.2 = phi ptr [ %pwcs.addr.1, %if.else ], [ %incdec.ptr, %if.else36 ], [ %pwcs.addr.1, %if.end.i.if.end40_crit_edge ], [ %pwcs.addr.1, %for.inc.i.4.if.end40_crit_edge ], [ %pwcs.addr.1, %for.inc.i.3.if.end40_crit_edge ], [ %pwcs.addr.1, %for.inc.i.2.if.end40_crit_edge ], [ %pwcs.addr.1, %for.inc.i.1.if.end40_crit_edge ], [ %pwcs.addr.1, %for.inc.i.if.end40_crit_edge ]
  %maxout.addr.1 = phi i32 [ %sub, %if.else ], [ %dec39, %if.else36 ], [ %maxout.addr.0.ph105, %if.end.i.if.end40_crit_edge ], [ %maxout.addr.0.ph105, %for.inc.i.4.if.end40_crit_edge ], [ %maxout.addr.0.ph105, %for.inc.i.3.if.end40_crit_edge ], [ %maxout.addr.0.ph105, %for.inc.i.2.if.end40_crit_edge ], [ %maxout.addr.0.ph105, %for.inc.i.1.if.end40_crit_edge ], [ %maxout.addr.0.ph105, %for.inc.i.if.end40_crit_edge ]
  %op.1 = phi ptr [ %add.ptr, %if.else ], [ %incdec.ptr38, %if.else36 ], [ %op.0.ph107, %if.end.i.if.end40_crit_edge ], [ %op.0.ph107, %for.inc.i.4.if.end40_crit_edge ], [ %op.0.ph107, %for.inc.i.3.if.end40_crit_edge ], [ %op.0.ph107, %for.inc.i.2.if.end40_crit_edge ], [ %op.0.ph107, %for.inc.i.1.if.end40_crit_edge ], [ %op.0.ph107, %for.inc.i.if.end40_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %maxout.addr.1)
  %cmp1 = icmp sgt i32 %maxout.addr.1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inlen.addr.2)
  %cmp93 = icmp sgt i32 %inlen.addr.2, 0
  %or.cond94 = select i1 %cmp93, i1 %cmp1, i1 false
  br i1 %or.cond94, label %if.end40.while.body.lr.ph_crit_edge, label %if.end40.while.end_crit_edge

if.end40.while.end_crit_edge:                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.end40.while.body.lr.ph_crit_edge:              ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.lr.ph

while.end:                                        ; preds = %if.end40.while.end_crit_edge, %if.end11.while.end_crit_edge, %while.cond.backedge.while.end_crit_edge, %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %op.0.ph.lcssa = phi ptr [ %s, %entry.while.end_crit_edge ], [ %op.0.ph107, %while.cond.backedge.while.end_crit_edge ], [ %op.0.ph107, %if.end11.while.end_crit_edge ], [ %op.0.ph107, %while.body.while.end_crit_edge ], [ %op.1, %if.end40.while.end_crit_edge ]
  %sub.ptr.lhs.cast = ptrtoint ptr %op.0.ph.lcssa to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %s to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  ret i32 %sub.ptr.sub
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__register_nls(ptr noundef %nls, ptr noundef %owner) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %next = getelementptr inbounds %struct.nls_table, ptr %nls, i32 0, i32 7
  %0 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %next, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %owner1 = getelementptr inbounds %struct.nls_table, ptr %nls, i32 0, i32 6
  %2 = ptrtoint ptr %owner1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %owner, ptr %owner1, align 4
  tail call void @_raw_spin_lock(ptr noundef nonnull @nls_lock) #9
  %3 = load ptr, ptr @tables, align 4
  %tobool2.not13 = icmp eq ptr %3, null
  br i1 %tobool2.not13, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.cond:                                       ; preds = %while.body
  %next5 = getelementptr inbounds %struct.nls_table, ptr %6, i32 0, i32 7
  %4 = ptrtoint ptr %next5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %next5, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %while.cond.while.end_crit_edge, label %while.cond.while.body_crit_edge

while.cond.while.body_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body:                                       ; preds = %while.cond.while.body_crit_edge, %if.end.while.body_crit_edge
  %6 = phi ptr [ %5, %while.cond.while.body_crit_edge ], [ %3, %if.end.while.body_crit_edge ]
  %cmp = icmp eq ptr %6, %nls
  br i1 %cmp, label %while.body.cleanup.sink.split_crit_edge, label %while.cond

while.body.cleanup.sink.split_crit_edge:          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

while.end:                                        ; preds = %while.cond.while.end_crit_edge, %if.end.while.end_crit_edge
  %7 = load ptr, ptr @tables, align 4
  %8 = ptrtoint ptr %next to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %next, align 4
  store ptr %nls, ptr @tables, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %while.end, %while.body.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ 0, %while.end ], [ -16, %while.body.cleanup.sink.split_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef nonnull @nls_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @unregister_nls(ptr noundef readonly %nls) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @nls_lock) #9
  %0 = load ptr, ptr @tables, align 4
  %tobool.not7 = icmp eq ptr %0, null
  br i1 %tobool.not7, label %entry.cleanup_crit_edge, label %while.body.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.body.preheader:                             ; preds = %entry
  %cmp12 = icmp eq ptr %0, %nls
  br i1 %cmp12, label %while.body.preheader.if.then_crit_edge, label %while.body.preheader.while.cond_crit_edge

while.body.preheader.while.cond_crit_edge:        ; preds = %while.body.preheader
  br label %while.cond

while.body.preheader.if.then_crit_edge:           ; preds = %while.body.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %while.body.preheader.while.cond_crit_edge
  %1 = phi ptr [ %3, %while.body.while.cond_crit_edge ], [ %0, %while.body.preheader.while.cond_crit_edge ]
  %next1 = getelementptr inbounds %struct.nls_table, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %next1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %next1, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %while.cond.cleanup_crit_edge, label %while.body

while.cond.cleanup_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.body:                                       ; preds = %while.cond
  %cmp = icmp eq ptr %3, %nls
  br i1 %cmp, label %if.then.loopexit, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond

if.then.loopexit:                                 ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %next1.le = getelementptr inbounds %struct.nls_table, ptr %1, i32 0, i32 7
  br label %if.then

if.then:                                          ; preds = %if.then.loopexit, %while.body.preheader.if.then_crit_edge
  %tmp.08.lcssa = phi ptr [ @tables, %while.body.preheader.if.then_crit_edge ], [ %next1.le, %if.then.loopexit ]
  %next = getelementptr inbounds %struct.nls_table, ptr %nls, i32 0, i32 7
  %4 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %next, align 4
  %6 = ptrtoint ptr %tmp.08.lcssa to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %tmp.08.lcssa, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then, %while.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then ], [ -22, %entry.cleanup_crit_edge ], [ -22, %while.cond.cleanup_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef nonnull @nls_lock) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @load_nls(ptr noundef %charset) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @find_nls(ptr noundef %charset)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %cond.false, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call1 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str, ptr noundef %charset) #9
  %call2 = tail call fastcc ptr @find_nls(ptr noundef %charset)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond = phi ptr [ %call2, %cond.false ], [ %call, %entry.cond.end_crit_edge ]
  ret ptr %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @find_nls(ptr nocapture noundef readonly %charset) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @nls_lock) #9
  %nls.024 = load ptr, ptr @tables, align 4
  %tobool.not25 = icmp eq ptr %nls.024, null
  br i1 %tobool.not25, label %entry.if.end13_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %nls.026 = phi ptr [ %nls.0, %for.inc.for.body_crit_edge ], [ %nls.024, %entry.for.body_crit_edge ]
  %0 = ptrtoint ptr %nls.026 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nls.026, align 4
  %call = tail call i32 @strcmp(ptr noundef %1, ptr noundef %charset) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %for.body.land.lhs.true10_crit_edge, label %if.end

for.body.land.lhs.true10_crit_edge:               ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true10

if.end:                                           ; preds = %for.body
  %alias = getelementptr inbounds %struct.nls_table, ptr %nls.026, i32 0, i32 1
  %2 = ptrtoint ptr %alias to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %alias, align 4
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %if.end.for.inc_crit_edge, label %land.lhs.true

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true:                                    ; preds = %if.end
  %call5 = tail call i32 @strcmp(ptr noundef nonnull %3, ptr noundef %charset) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %land.lhs.true.land.lhs.true10_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true.land.lhs.true10_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true10

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %if.end.for.inc_crit_edge
  %next = getelementptr inbounds %struct.nls_table, ptr %nls.026, i32 0, i32 7
  %4 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %4)
  %nls.0 = load ptr, ptr %next, align 4
  %tobool.not = icmp eq ptr %nls.0, null
  br i1 %tobool.not, label %for.inc.if.end13_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.if.end13_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

land.lhs.true10:                                  ; preds = %land.lhs.true.land.lhs.true10_crit_edge, %for.body.land.lhs.true10_crit_edge
  %owner = getelementptr inbounds %struct.nls_table, ptr %nls.026, i32 0, i32 6
  %5 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %owner, align 4
  %call11 = tail call zeroext i1 @try_module_get(ptr noundef %6) #9
  %spec.select = select i1 %call11, ptr %nls.026, ptr null
  br label %if.end13

if.end13:                                         ; preds = %land.lhs.true10, %for.inc.if.end13_crit_edge, %entry.if.end13_crit_edge
  %nls.1 = phi ptr [ %spec.select, %land.lhs.true10 ], [ null, %entry.if.end13_crit_edge ], [ null, %for.inc.if.end13_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef nonnull @nls_lock) #9
  ret ptr %nls.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @unload_nls(ptr noundef readonly %nls) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %nls, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %owner = getelementptr inbounds %struct.nls_table, ptr %nls, i32 0, i32 6
  %0 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %owner, align 4
  tail call void @module_put(ptr noundef %1) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @load_nls_default() #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call fastcc ptr @find_nls(ptr noundef nonnull @.str.1) #9
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %cond.false.i, label %entry.load_nls.exit_crit_edge

entry.load_nls.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %load_nls.exit

cond.false.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call1.i = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #9
  %call2.i = tail call fastcc ptr @find_nls(ptr noundef nonnull @.str.1) #9
  br label %load_nls.exit

load_nls.exit:                                    ; preds = %cond.false.i, %entry.load_nls.exit_crit_edge
  %cond.i = phi ptr [ %call2.i, %cond.false.i ], [ %call.i, %entry.load_nls.exit_crit_edge ]
  %cmp.not = icmp eq ptr %cond.i, null
  %default_table.call = select i1 %cmp.not, ptr @default_table, ptr %cond.i
  ret ptr %default_table.call
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @uni2char(i16 noundef zeroext %uni, ptr nocapture noundef writeonly %out, i32 noundef %boundlen) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %boundlen)
  %cmp = icmp slt i32 %boundlen, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = lshr i16 %uni, 8
  %conv4 = zext i16 %0 to i32
  %arrayidx = getelementptr [256 x ptr], ptr @page_uni2charset, i32 0, i32 %conv4
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %land.lhs.true

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end
  %3 = and i16 %uni, 255
  %idxprom6 = zext i16 %3 to i32
  %arrayidx7 = getelementptr i8, ptr %2, i32 %idxprom6
  %4 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool9.not = icmp eq i8 %5, 0
  br i1 %tobool9.not, label %land.lhs.true.cleanup_crit_edge, label %if.then10

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then10:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %out to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %out, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then10, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then10 ], [ -36, %entry.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @char2uni(ptr nocapture noundef readonly %rawstring, i32 noundef %boundlen, ptr nocapture noundef writeonly %uni) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rawstring to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %rawstring, align 1
  %idxprom = zext i8 %1 to i32
  %arrayidx = getelementptr [256 x i16], ptr @charset2uni, i32 0, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arrayidx, align 2
  %4 = ptrtoint ptr %uni to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %3, ptr %uni, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp = icmp eq i8 %1, 0
  %. = select i1 %cmp, i32 -22, i32 1
  ret i32 %.
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !25, !27, !29, !31, !32, !34, !36, !38, !40, !42, !44}
!llvm.module.flags = !{!46, !47, !48, !49, !50, !51, !52, !53}
!llvm.ident = !{!54}

!0 = !{ptr @__ksymtab_utf8_to_utf32, !1, !"__ksymtab_utf8_to_utf32", i1 false, i1 false}
!1 = !{!"../fs/nls/nls_base.c", i32 84, i32 1}
!2 = !{ptr @__ksymtab_utf32_to_utf8, !3, !"__ksymtab_utf32_to_utf8", i1 false, i1 false}
!3 = !{!"../fs/nls/nls_base.c", i32 115, i32 1}
!4 = !{ptr @__ksymtab_utf8s_to_utf16s, !5, !"__ksymtab_utf8s_to_utf16s", i1 false, i1 false}
!5 = !{!"../fs/nls/nls_base.c", i32 172, i32 1}
!6 = !{ptr @__ksymtab_utf16s_to_utf8s, !7, !"__ksymtab_utf16s_to_utf8s", i1 false, i1 false}
!7 = !{!"../fs/nls/nls_base.c", i32 233, i32 1}
!8 = !{ptr @__ksymtab___register_nls, !9, !"__ksymtab___register_nls", i1 false, i1 false}
!9 = !{!"../fs/nls/nls_base.c", i32 256, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/nls/nls_base.c", i32 293, i32 9}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/nls/nls_base.c", i32 536, i32 25}
!14 = !{ptr @__ksymtab_unregister_nls, !15, !"__ksymtab_unregister_nls", i1 false, i1 false}
!15 = !{!"../fs/nls/nls_base.c", i32 543, i32 1}
!16 = !{ptr @__ksymtab_unload_nls, !17, !"__ksymtab_unload_nls", i1 false, i1 false}
!17 = !{!"../fs/nls/nls_base.c", i32 544, i32 1}
!18 = !{ptr @__ksymtab_load_nls, !19, !"__ksymtab_load_nls", i1 false, i1 false}
!19 = !{!"../fs/nls/nls_base.c", i32 545, i32 1}
!20 = !{ptr @__ksymtab_load_nls_default, !21, !"__ksymtab_load_nls_default", i1 false, i1 false}
!21 = !{!"../fs/nls/nls_base.c", i32 546, i32 1}
!22 = !{ptr @__UNIQUE_ID_file106, !23, !"__UNIQUE_ID_file106", i1 false, i1 false}
!23 = !{!"../fs/nls/nls_base.c", i32 548, i32 1}
!24 = !{ptr @__UNIQUE_ID_license107, !23, !"__UNIQUE_ID_license107", i1 false, i1 false}
!25 = !{ptr @utf8_table, !26, !"utf8_table", i1 false, i1 false}
!26 = !{!"../fs/nls/nls_base.c", i32 36, i32 32}
!27 = !{ptr @tables, !28, !"tables", i1 false, i1 false}
!28 = !{!"../fs/nls/nls_base.c", i32 21, i32 26}
!29 = !{ptr @.str.2, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../fs/nls/nls_base.c", i32 22, i32 8}
!31 = !{ptr @nls_lock, !30, !"nls_lock", i1 false, i1 false}
!32 = !{ptr @.str.3, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../fs/nls/nls_base.c", i32 524, i32 13}
!34 = !{ptr @default_table, !35, !"default_table", i1 false, i1 false}
!35 = !{!"../fs/nls/nls_base.c", i32 523, i32 25}
!36 = !{ptr @page_uni2charset, !37, !"page_uni2charset", i1 false, i1 false}
!37 = !{!"../fs/nls/nls_base.c", i32 421, i32 35}
!38 = !{ptr @page00, !39, !"page00", i1 false, i1 false}
!39 = !{!"../fs/nls/nls_base.c", i32 385, i32 28}
!40 = !{ptr @charset2uni, !41, !"charset2uni", i1 false, i1 false}
!41 = !{!"../fs/nls/nls_base.c", i32 302, i32 22}
!42 = !{ptr @charset2lower, !43, !"charset2lower", i1 false, i1 false}
!43 = !{!"../fs/nls/nls_base.c", i32 425, i32 28}
!44 = !{ptr @charset2upper, !45, !"charset2upper", i1 false, i1 false}
!45 = !{!"../fs/nls/nls_base.c", i32 461, i32 28}
!46 = !{i32 1, !"wchar_size", i32 2}
!47 = !{i32 1, !"min_enum_size", i32 4}
!48 = !{i32 8, !"branch-target-enforcement", i32 0}
!49 = !{i32 8, !"sign-return-address", i32 0}
!50 = !{i32 8, !"sign-return-address-all", i32 0}
!51 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!52 = !{i32 7, !"uwtable", i32 1}
!53 = !{i32 7, !"frame-pointer", i32 2}
!54 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!55 = !{!"auto-init"}
