; ModuleID = '/llk/IR_all_yes/drivers/isdn/mISDN/dsp_audio.c_pt.bc'
source_filename = "../drivers/isdn/mISDN/dsp_audio.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+dsp_audio_law_to_s32\22, \22a\22\09"
module asm "\09.weak\09__crc_dsp_audio_law_to_s32\09\09\09\09"
module asm "\09.long\09__crc_dsp_audio_law_to_s32\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dsp_audio_law_to_s32:\09\09\09\09\09"
module asm "\09.asciz \09\22dsp_audio_law_to_s32\22\09\09\09\09\09"
module asm "__kstrtabns_dsp_audio_law_to_s32:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+dsp_audio_s16_to_law\22, \22a\22\09"
module asm "\09.weak\09__crc_dsp_audio_s16_to_law\09\09\09\09"
module asm "\09.long\09__crc_dsp_audio_s16_to_law\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dsp_audio_s16_to_law:\09\09\09\09\09"
module asm "\09.asciz \09\22dsp_audio_s16_to_law\22\09\09\09\09\09"
module asm "__kstrtabns_dsp_audio_s16_to_law:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.sk_buff = type { %union.anon, %union.anon.124, %union.anon.125, [48 x i8], %union.anon.126, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.128, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.124 = type { ptr }
%union.anon.125 = type { i64 }
%union.anon.126 = type { %struct.anon.127 }
%struct.anon.127 = type { i32, ptr }
%union.anon.128 = type { %struct.anon.129 }
%struct.anon.129 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.130, i32, i32, i32, i16, i16, %union.anon.132, i32, %union.anon.133, %union.anon.134, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.130 = type { i32 }
%union.anon.132 = type { i32 }
%union.anon.133 = type { i32 }
%union.anon.134 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }

@dsp_audio_law_to_s32 = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@__kstrtab_dsp_audio_law_to_s32 = external dso_local constant [0 x i8], align 1
@__kstrtabns_dsp_audio_law_to_s32 = external dso_local constant [0 x i8], align 1
@__ksymtab_dsp_audio_law_to_s32 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dsp_audio_law_to_s32 to i32), ptr @__kstrtab_dsp_audio_law_to_s32, ptr @__kstrtabns_dsp_audio_law_to_s32 }, section "___ksymtab+dsp_audio_law_to_s32", align 4
@dsp_audio_s16_to_law = dso_local global { [65536 x i8], [16384 x i8] } zeroinitializer, align 32
@__kstrtab_dsp_audio_s16_to_law = external dso_local constant [0 x i8], align 1
@__kstrtabns_dsp_audio_s16_to_law = external dso_local constant [0 x i8], align 1
@__ksymtab_dsp_audio_s16_to_law = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dsp_audio_s16_to_law to i32), ptr @__kstrtab_dsp_audio_s16_to_law, ptr @__kstrtabns_dsp_audio_s16_to_law }, section "___ksymtab+dsp_audio_s16_to_law", align 4
@dsp_audio_alaw_to_s32 = dso_local global { [256 x i32], [256 x i8] } zeroinitializer, align 32
@dsp_audio_ulaw_to_s32 = dso_local global { [256 x i32], [256 x i8] } zeroinitializer, align 32
@dsp_audio_alaw_to_ulaw = dso_local global { [256 x i8], [64 x i8] } zeroinitializer, align 32
@dsp_audio_ulaw_to_alaw = internal global { [256 x i8], [64 x i8] } zeroinitializer, align 32
@dsp_options = external dso_local local_unnamed_addr global i32, align 4
@dsp_audio_law2seven = dso_local global { [256 x i8], [64 x i8] } zeroinitializer, align 32
@dsp_audio_seven2law = dso_local global { [128 x i8], [32 x i8] } zeroinitializer, align 32
@dsp_audio_mix_law = dso_local global { [65536 x i8], [16384 x i8] } zeroinitializer, align 32
@dsp_audio_reduce8 = internal global { [256 x i8], [64 x i8] } zeroinitializer, align 32
@dsp_audio_reduce7 = internal global { [256 x i8], [64 x i8] } zeroinitializer, align 32
@dsp_audio_reduce6 = internal global { [256 x i8], [64 x i8] } zeroinitializer, align 32
@dsp_audio_reduce5 = internal global { [256 x i8], [64 x i8] } zeroinitializer, align 32
@dsp_audio_reduce4 = internal global { [256 x i8], [64 x i8] } zeroinitializer, align 32
@dsp_audio_reduce3 = internal global { [256 x i8], [64 x i8] } zeroinitializer, align 32
@dsp_audio_reduce2 = internal global { [256 x i8], [64 x i8] } zeroinitializer, align 32
@dsp_audio_reduce1 = internal global { [256 x i8], [64 x i8] } zeroinitializer, align 32
@dsp_audio_increase1 = internal global { [256 x i8], [64 x i8] } zeroinitializer, align 32
@dsp_audio_increase2 = internal global { [256 x i8], [64 x i8] } zeroinitializer, align 32
@dsp_audio_increase3 = internal global { [256 x i8], [64 x i8] } zeroinitializer, align 32
@dsp_audio_increase4 = internal global { [256 x i8], [64 x i8] } zeroinitializer, align 32
@dsp_audio_increase5 = internal global { [256 x i8], [64 x i8] } zeroinitializer, align 32
@dsp_audio_increase6 = internal global { [256 x i8], [64 x i8] } zeroinitializer, align 32
@dsp_audio_increase7 = internal global { [256 x i8], [64 x i8] } zeroinitializer, align 32
@dsp_audio_increase8 = internal global { [256 x i8], [64 x i8] } zeroinitializer, align 32
@dsp_audio_volume_change = internal constant { [16 x ptr], [32 x i8] } { [16 x ptr] [ptr @dsp_audio_reduce8, ptr @dsp_audio_reduce7, ptr @dsp_audio_reduce6, ptr @dsp_audio_reduce5, ptr @dsp_audio_reduce4, ptr @dsp_audio_reduce3, ptr @dsp_audio_reduce2, ptr @dsp_audio_reduce1, ptr @dsp_audio_increase1, ptr @dsp_audio_increase2, ptr @dsp_audio_increase3, ptr @dsp_audio_increase4, ptr @dsp_audio_increase5, ptr @dsp_audio_increase6, ptr @dsp_audio_increase7, ptr @dsp_audio_increase8], [32 x i8] zeroinitializer }, align 32
@dsp_silence = dso_local global { i8, [31 x i8] } zeroinitializer, align 32
@byte_rev_table = external dso_local local_unnamed_addr constant [256 x i8], align 1
@ulaw2linear.etab = internal constant { [8 x i16], [16 x i8] } { [8 x i16] [i16 0, i16 132, i16 396, i16 924, i16 1980, i16 4092, i16 8316, i16 16764], [16 x i8] zeroinitializer }, align 32
@linear2ulaw.exp_lut = internal constant { [256 x i32], [256 x i8] } { [256 x i32] [i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7], [256 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [21 x i8] c"dsp_audio_law_to_s32\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 25, i32 6 }
@___asan_gen_.4 = private unnamed_addr constant [21 x i8] c"dsp_audio_s16_to_law\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 29, i32 4 }
@___asan_gen_.7 = private unnamed_addr constant [22 x i8] c"dsp_audio_alaw_to_s32\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 23, i32 5 }
@___asan_gen_.10 = private unnamed_addr constant [22 x i8] c"dsp_audio_ulaw_to_s32\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 21, i32 5 }
@___asan_gen_.13 = private unnamed_addr constant [23 x i8] c"dsp_audio_alaw_to_ulaw\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 33, i32 4 }
@___asan_gen_.16 = private unnamed_addr constant [23 x i8] c"dsp_audio_ulaw_to_alaw\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 35, i32 11 }
@___asan_gen_.19 = private unnamed_addr constant [20 x i8] c"dsp_audio_law2seven\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 184, i32 4 }
@___asan_gen_.22 = private unnamed_addr constant [20 x i8] c"dsp_audio_seven2law\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 183, i32 4 }
@___asan_gen_.25 = private unnamed_addr constant [18 x i8] c"dsp_audio_mix_law\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 232, i32 4 }
@___asan_gen_.28 = private unnamed_addr constant [18 x i8] c"dsp_audio_reduce8\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 267, i32 11 }
@___asan_gen_.31 = private unnamed_addr constant [18 x i8] c"dsp_audio_reduce7\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 268, i32 11 }
@___asan_gen_.34 = private unnamed_addr constant [18 x i8] c"dsp_audio_reduce6\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 269, i32 11 }
@___asan_gen_.37 = private unnamed_addr constant [18 x i8] c"dsp_audio_reduce5\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 270, i32 11 }
@___asan_gen_.40 = private unnamed_addr constant [18 x i8] c"dsp_audio_reduce4\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 271, i32 11 }
@___asan_gen_.43 = private unnamed_addr constant [18 x i8] c"dsp_audio_reduce3\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 272, i32 11 }
@___asan_gen_.46 = private unnamed_addr constant [18 x i8] c"dsp_audio_reduce2\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 273, i32 11 }
@___asan_gen_.49 = private unnamed_addr constant [18 x i8] c"dsp_audio_reduce1\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 274, i32 11 }
@___asan_gen_.52 = private unnamed_addr constant [20 x i8] c"dsp_audio_increase1\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 275, i32 11 }
@___asan_gen_.55 = private unnamed_addr constant [20 x i8] c"dsp_audio_increase2\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 276, i32 11 }
@___asan_gen_.58 = private unnamed_addr constant [20 x i8] c"dsp_audio_increase3\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 277, i32 11 }
@___asan_gen_.61 = private unnamed_addr constant [20 x i8] c"dsp_audio_increase4\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 278, i32 11 }
@___asan_gen_.64 = private unnamed_addr constant [20 x i8] c"dsp_audio_increase5\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 279, i32 11 }
@___asan_gen_.67 = private unnamed_addr constant [20 x i8] c"dsp_audio_increase6\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 280, i32 11 }
@___asan_gen_.70 = private unnamed_addr constant [20 x i8] c"dsp_audio_increase7\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 281, i32 11 }
@___asan_gen_.73 = private unnamed_addr constant [20 x i8] c"dsp_audio_increase8\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 282, i32 11 }
@___asan_gen_.76 = private unnamed_addr constant [24 x i8] c"dsp_audio_volume_change\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 284, i32 12 }
@___asan_gen_.79 = private unnamed_addr constant [12 x i8] c"dsp_silence\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 36, i32 4 }
@___asan_gen_.82 = private unnamed_addr constant [5 x i8] c"etab\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 91, i32 15 }
@___asan_gen_.85 = private unnamed_addr constant [8 x i8] c"exp_lut\00", align 1
@___asan_gen_.86 = private constant [34 x i8] c"../drivers/isdn/mISDN/dsp_audio.c\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 107, i32 13 }
@llvm.compiler.used = appending global [31 x ptr] [ptr @__ksymtab_dsp_audio_law_to_s32, ptr @__ksymtab_dsp_audio_s16_to_law, ptr @dsp_audio_law_to_s32, ptr @dsp_audio_s16_to_law, ptr @dsp_audio_alaw_to_s32, ptr @dsp_audio_ulaw_to_s32, ptr @dsp_audio_alaw_to_ulaw, ptr @dsp_audio_ulaw_to_alaw, ptr @dsp_audio_law2seven, ptr @dsp_audio_seven2law, ptr @dsp_audio_mix_law, ptr @dsp_audio_reduce8, ptr @dsp_audio_reduce7, ptr @dsp_audio_reduce6, ptr @dsp_audio_reduce5, ptr @dsp_audio_reduce4, ptr @dsp_audio_reduce3, ptr @dsp_audio_reduce2, ptr @dsp_audio_reduce1, ptr @dsp_audio_increase1, ptr @dsp_audio_increase2, ptr @dsp_audio_increase3, ptr @dsp_audio_increase4, ptr @dsp_audio_increase5, ptr @dsp_audio_increase6, ptr @dsp_audio_increase7, ptr @dsp_audio_increase8, ptr @dsp_audio_volume_change, ptr @dsp_silence, ptr @ulaw2linear.etab, ptr @linear2ulaw.exp_lut], section "llvm.metadata"
@0 = internal global [29 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_audio_law_to_s32 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_audio_s16_to_law to i32), i32 65536, i32 81920, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_audio_alaw_to_s32 to i32), i32 1024, i32 1280, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_audio_ulaw_to_s32 to i32), i32 1024, i32 1280, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_audio_alaw_to_ulaw to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_audio_ulaw_to_alaw to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_audio_law2seven to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_audio_seven2law to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_audio_mix_law to i32), i32 65536, i32 81920, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_audio_reduce8 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_audio_reduce7 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_audio_reduce6 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_audio_reduce5 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_audio_reduce4 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_audio_reduce3 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_audio_reduce2 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_audio_reduce1 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_audio_increase1 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_audio_increase2 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_audio_increase3 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_audio_increase4 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_audio_increase5 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_audio_increase6 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_audio_increase7 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_audio_increase8 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_audio_volume_change to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_silence to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ulaw2linear.etab to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @linear2ulaw.exp_lut to i32), i32 1024, i32 1280, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dsp_audio_generate_law_tables() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  br label %cond.end

cond.end:                                         ; preds = %cond.end.cond.end_crit_edge, %entry
  %i.0134 = phi i32 [ 0, %entry ], [ %inc, %cond.end.cond.end_crit_edge ]
  %arrayidx.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %i.0134
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx.i, align 1
  %2 = xor i8 %1, 85
  %conv2.i = zext i8 %2 to i32
  %and.i = shl nuw nsw i32 %conv2.i, 4
  %shl.i = and i32 %and.i, 240
  %add.i = or i32 %shl.i, 8
  %and4.i = lshr i32 %conv2.i, 4
  %3 = and i32 %and4.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  %add5.i = or i32 %shl.i, 264
  %sub.i = add nsw i32 %3, -1
  %shl6.i = shl i32 %add5.i, %sub.i
  %i.0.i = select i1 %tobool.not.i, i32 %add.i, i32 %shl6.i
  %and8.i = and i32 %conv2.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %tobool9.not.i = icmp eq i32 %and8.i, 0
  %sub10.i = sub i32 0, %i.0.i
  %cond.i = select i1 %tobool9.not.i, i32 %sub10.i, i32 %i.0.i
  %sext133 = shl i32 %cond.i, 16
  %conv24 = ashr exact i32 %sext133, 16
  %arrayidx = getelementptr [256 x i32], ptr @dsp_audio_alaw_to_s32, i32 0, i32 %i.0134
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %conv24, ptr %arrayidx, align 4
  %inc = add nuw nsw i32 %i.0134, 1
  %exitcond.not = icmp eq i32 %inc, 256
  br i1 %exitcond.not, label %cond.end.cond.end61_crit_edge, label %cond.end.cond.end_crit_edge

cond.end.cond.end_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end

cond.end.cond.end61_crit_edge:                    ; preds = %cond.end
  br label %cond.end61

cond.end61:                                       ; preds = %cond.end61.cond.end61_crit_edge, %cond.end.cond.end61_crit_edge
  %i.1136 = phi i32 [ %inc68, %cond.end61.cond.end61_crit_edge ], [ 0, %cond.end.cond.end61_crit_edge ]
  %arrayidx.i117 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %i.1136
  %5 = ptrtoint ptr %arrayidx.i117 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx.i117, align 1
  %7 = xor i8 %6, -1
  %8 = lshr i8 %7, 4
  %9 = and i8 %8, 7
  %10 = and i8 %7, 15
  %11 = zext i8 %10 to i32
  %12 = zext i8 %9 to i32
  %shl.i118 = shl nuw nsw i32 8, %12
  %mul.i = mul nuw nsw i32 %shl.i118, %11
  %arrayidx.i119 = getelementptr [8 x i16], ptr @ulaw2linear.etab, i32 0, i32 %12
  %13 = ptrtoint ptr %arrayidx.i119 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %arrayidx.i119, align 2
  %15 = trunc i32 %mul.i to i16
  %conv13.i = add i16 %14, %15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i120 = icmp slt i8 %6, 0
  %sub17.i = sub i16 0, %conv13.i
  %spec.select.i = select i1 %tobool.not.i120, i16 %conv13.i, i16 %sub17.i
  %conv65 = sext i16 %spec.select.i to i32
  %arrayidx66 = getelementptr [256 x i32], ptr @dsp_audio_ulaw_to_s32, i32 0, i32 %i.1136
  %16 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %conv65, ptr %arrayidx66, align 4
  %inc68 = add nuw nsw i32 %i.1136, 1
  %exitcond139.not = icmp eq i32 %inc68, 256
  br i1 %exitcond139.not, label %cond.end61.for.body73_crit_edge, label %cond.end61.cond.end61_crit_edge

cond.end61.cond.end61_crit_edge:                  ; preds = %cond.end61
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end61

cond.end61.for.body73_crit_edge:                  ; preds = %cond.end61
  br label %for.body73

for.body73:                                       ; preds = %linear2alaw.exit.for.body73_crit_edge, %cond.end61.for.body73_crit_edge
  %i.2138 = phi i32 [ %inc83, %linear2alaw.exit.for.body73_crit_edge ], [ 0, %cond.end61.for.body73_crit_edge ]
  %arrayidx74 = getelementptr [256 x i32], ptr @dsp_audio_alaw_to_s32, i32 0, i32 %i.2138
  %17 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx74, align 4
  %conv75 = trunc i32 %18 to i16
  %19 = lshr i16 %conv75, 8
  %20 = and i16 %19, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %cmp.not.i = icmp eq i16 %20, 0
  %sub.i121 = sub i32 0, %18
  %spec.select.i122 = select i1 %cmp.not.i, i32 %18, i32 %sub.i121
  %and.i123 = zext i16 %20 to i32
  %add.i124 = shl i32 %spec.select.i122, 16
  %sext = add i32 %add.i124, 8650752
  %conv6.i = ashr exact i32 %sext, 16
  %21 = lshr i32 %conv6.i, 7
  %and8.i125 = and i32 %21, 255
  %arrayidx.i126 = getelementptr [256 x i32], ptr @linear2ulaw.exp_lut, i32 0, i32 %and8.i125
  %22 = ptrtoint ptr %arrayidx.i126 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.i126, align 4
  %add10.i = add i32 %23, 3
  %shr11.i = ashr i32 %conv6.i, %add10.i
  %and12.i = and i32 %shr11.i, 15
  %shl.i127 = shl i32 %23, 4
  %or.i = or i32 %shl.i127, %and.i123
  %or13.i = or i32 %or.i, %and12.i
  %24 = trunc i32 %or13.i to i8
  %conv14.i = xor i8 %24, -1
  %arrayidx77 = getelementptr [256 x i8], ptr @dsp_audio_alaw_to_ulaw, i32 0, i32 %i.2138
  %25 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv14.i, ptr %arrayidx77, align 1
  %arrayidx78 = getelementptr [256 x i32], ptr @dsp_audio_ulaw_to_s32, i32 0, i32 %i.2138
  %26 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx78, align 4
  %conv79 = trunc i32 %27 to i16
  %28 = tail call i16 @llvm.abs.i16(i16 %conv79, i1 false) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %28)
  %cmp4.not.i = icmp ugt i16 %28, 255
  br i1 %cmp4.not.i, label %for.inc.i, label %for.body73.linear2alaw.exit_crit_edge

for.body73.linear2alaw.exit_crit_edge:            ; preds = %for.body73
  call void @__sanitizer_cov_trace_pc() #6
  br label %linear2alaw.exit

for.inc.i:                                        ; preds = %for.body73
  call void @__sanitizer_cov_trace_const_cmp2(i16 511, i16 %28)
  %cmp4.not.1.i = icmp ugt i16 %28, 511
  br i1 %cmp4.not.1.i, label %for.inc.1.i, label %for.inc.i.linear2alaw.exit_crit_edge

for.inc.i.linear2alaw.exit_crit_edge:             ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %linear2alaw.exit

for.inc.1.i:                                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 1023, i16 %28)
  %cmp4.not.2.i = icmp ugt i16 %28, 1023
  br i1 %cmp4.not.2.i, label %for.inc.2.i, label %for.inc.1.i.linear2alaw.exit_crit_edge

for.inc.1.i.linear2alaw.exit_crit_edge:           ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %linear2alaw.exit

for.inc.2.i:                                      ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 2047, i16 %28)
  %cmp4.not.3.i = icmp ugt i16 %28, 2047
  br i1 %cmp4.not.3.i, label %for.inc.3.i, label %for.inc.2.i.linear2alaw.exit_crit_edge

for.inc.2.i.linear2alaw.exit_crit_edge:           ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %linear2alaw.exit

for.inc.3.i:                                      ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 4095, i16 %28)
  %cmp4.not.4.i = icmp ugt i16 %28, 4095
  br i1 %cmp4.not.4.i, label %for.inc.4.i, label %for.inc.3.i.linear2alaw.exit_crit_edge

for.inc.3.i.linear2alaw.exit_crit_edge:           ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %linear2alaw.exit

for.inc.4.i:                                      ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 8191, i16 %28)
  %cmp4.not.5.i = icmp ugt i16 %28, 8191
  br i1 %cmp4.not.5.i, label %for.inc.5.i, label %for.inc.4.i.linear2alaw.exit_crit_edge

for.inc.4.i.linear2alaw.exit_crit_edge:           ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %linear2alaw.exit

for.inc.5.i:                                      ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 16383, i16 %28)
  %cmp4.not.6.i = icmp ugt i16 %28, 16383
  br i1 %cmp4.not.6.i, label %for.inc.6.i, label %for.inc.5.i.linear2alaw.exit_crit_edge

for.inc.5.i.linear2alaw.exit_crit_edge:           ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %linear2alaw.exit

for.inc.6.i:                                      ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %28)
  %cmp4.not.7.i = icmp slt i16 %28, 0
  %spec.select18.i = select i1 %cmp4.not.7.i, i32 8, i32 7
  br label %linear2alaw.exit

linear2alaw.exit:                                 ; preds = %for.inc.6.i, %for.inc.5.i.linear2alaw.exit_crit_edge, %for.inc.4.i.linear2alaw.exit_crit_edge, %for.inc.3.i.linear2alaw.exit_crit_edge, %for.inc.2.i.linear2alaw.exit_crit_edge, %for.inc.1.i.linear2alaw.exit_crit_edge, %for.inc.i.linear2alaw.exit_crit_edge, %for.body73.linear2alaw.exit_crit_edge
  %seg.0.lcssa.i = phi i32 [ 0, %for.body73.linear2alaw.exit_crit_edge ], [ 1, %for.inc.i.linear2alaw.exit_crit_edge ], [ 2, %for.inc.1.i.linear2alaw.exit_crit_edge ], [ 3, %for.inc.2.i.linear2alaw.exit_crit_edge ], [ 4, %for.inc.3.i.linear2alaw.exit_crit_edge ], [ 5, %for.inc.4.i.linear2alaw.exit_crit_edge ], [ 6, %for.inc.5.i.linear2alaw.exit_crit_edge ], [ %spec.select18.i, %for.inc.6.i ]
  %29 = zext i16 %28 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %conv79)
  %cmp.i = icmp sgt i16 %conv79, -1
  %mask.0.i = select i1 %cmp.i, i32 213, i32 85
  %add.i128 = add nuw nsw i32 %seg.0.lcssa.i, 3
  %spec.select.i129 = select i1 %cmp4.not.i, i32 %add.i128, i32 4
  %shl.i130 = shl nuw nsw i32 %seg.0.lcssa.i, 4
  %shr.i = lshr i32 %29, %spec.select.i129
  %and.i131 = and i32 %shr.i, 15
  %or.i132 = or i32 %and.i131, %shl.i130
  %xor.i = xor i32 %or.i132, %mask.0.i
  %conv8.i = trunc i32 %xor.i to i8
  %arrayidx81 = getelementptr [256 x i8], ptr @dsp_audio_ulaw_to_alaw, i32 0, i32 %i.2138
  %30 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv8.i, ptr %arrayidx81, align 1
  %inc83 = add nuw nsw i32 %i.2138, 1
  %exitcond140.not = icmp eq i32 %inc83, 256
  br i1 %exitcond140.not, label %for.end84, label %linear2alaw.exit.for.body73_crit_edge

linear2alaw.exit.for.body73_crit_edge:            ; preds = %linear2alaw.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body73

for.end84:                                        ; preds = %linear2alaw.exit
  call void @__sanitizer_cov_trace_pc() #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dsp_audio_generate_s2law_table() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dsp_options to i32))
  %0 = load i32, ptr @dsp_options, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.for.body29_crit_edge, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  br label %cond.end

entry.for.body29_crit_edge:                       ; preds = %entry
  br label %for.body29

cond.end:                                         ; preds = %cond.end.cond.end_crit_edge, %entry.cond.end_crit_edge
  %i.0104 = phi i32 [ %inc, %cond.end.cond.end_crit_edge ], [ -32768, %entry.cond.end_crit_edge ]
  %conv = trunc i32 %i.0104 to i16
  %1 = lshr i16 %conv, 8
  %2 = and i16 %1, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %cmp.not.i = icmp eq i16 %2, 0
  %sub.i = sub nsw i32 0, %i.0104
  %spec.select.i = select i1 %cmp.not.i, i32 %i.0104, i32 %sub.i
  %add.i = shl i32 %spec.select.i, 16
  %sext = add i32 %add.i, 8650752
  %conv6.i = ashr exact i32 %sext, 16
  %3 = lshr i32 %conv6.i, 7
  %and8.i = and i32 %3, 255
  %arrayidx.i = getelementptr [256 x i32], ptr @linear2ulaw.exp_lut, i32 0, i32 %and8.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  %shl.i = shl i32 %5, 4
  %shl.i.masked = and i32 %shl.i, 240
  %and.i = zext i16 %2 to i32
  %or.i.masked = or i32 %shl.i.masked, %and.i
  %add10.i = add i32 %5, 3
  %shr11.i = ashr i32 %conv6.i, %add10.i
  %and12.i = and i32 %shr11.i, 15
  %conv14.i = or i32 %or.i.masked, %and12.i
  %idxprom.i = xor i32 %conv14.i, 255
  %arrayidx.i95 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i
  %6 = ptrtoint ptr %arrayidx.i95 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i95, align 1
  %and25 = and i32 %i.0104, 65535
  %arrayidx = getelementptr [65536 x i8], ptr @dsp_audio_s16_to_law, i32 0, i32 %and25
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %arrayidx, align 1
  %inc = add nsw i32 %i.0104, 1
  %exitcond.not = icmp eq i32 %inc, 32768
  br i1 %exitcond.not, label %cond.end.if.end_crit_edge, label %cond.end.cond.end_crit_edge

cond.end.cond.end_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end

cond.end.if.end_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

for.body29:                                       ; preds = %cond.end63.for.body29_crit_edge, %entry.for.body29_crit_edge
  %i.1105 = phi i32 [ %inc69, %cond.end63.for.body29_crit_edge ], [ -32768, %entry.for.body29_crit_edge ]
  %conv31 = trunc i32 %i.1105 to i16
  %9 = tail call i16 @llvm.abs.i16(i16 %conv31, i1 false) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %9)
  %cmp4.not.i = icmp ugt i16 %9, 255
  br i1 %cmp4.not.i, label %for.inc.i, label %for.body29.cond.end63_crit_edge

for.body29.cond.end63_crit_edge:                  ; preds = %for.body29
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end63

for.inc.i:                                        ; preds = %for.body29
  call void @__sanitizer_cov_trace_const_cmp2(i16 511, i16 %9)
  %cmp4.not.1.i = icmp ugt i16 %9, 511
  br i1 %cmp4.not.1.i, label %for.inc.1.i, label %for.inc.i.cond.end63_crit_edge

for.inc.i.cond.end63_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end63

for.inc.1.i:                                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 1023, i16 %9)
  %cmp4.not.2.i = icmp ugt i16 %9, 1023
  br i1 %cmp4.not.2.i, label %for.inc.2.i, label %for.inc.1.i.cond.end63_crit_edge

for.inc.1.i.cond.end63_crit_edge:                 ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end63

for.inc.2.i:                                      ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 2047, i16 %9)
  %cmp4.not.3.i = icmp ugt i16 %9, 2047
  br i1 %cmp4.not.3.i, label %for.inc.3.i, label %for.inc.2.i.cond.end63_crit_edge

for.inc.2.i.cond.end63_crit_edge:                 ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end63

for.inc.3.i:                                      ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 4095, i16 %9)
  %cmp4.not.4.i = icmp ugt i16 %9, 4095
  br i1 %cmp4.not.4.i, label %for.inc.4.i, label %for.inc.3.i.cond.end63_crit_edge

for.inc.3.i.cond.end63_crit_edge:                 ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end63

for.inc.4.i:                                      ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 8191, i16 %9)
  %cmp4.not.5.i = icmp ugt i16 %9, 8191
  br i1 %cmp4.not.5.i, label %for.inc.5.i, label %for.inc.4.i.cond.end63_crit_edge

for.inc.4.i.cond.end63_crit_edge:                 ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end63

for.inc.5.i:                                      ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 16383, i16 %9)
  %cmp4.not.6.i = icmp ugt i16 %9, 16383
  br i1 %cmp4.not.6.i, label %for.inc.6.i, label %for.inc.5.i.cond.end63_crit_edge

for.inc.5.i.cond.end63_crit_edge:                 ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end63

for.inc.6.i:                                      ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %cmp4.not.7.i = icmp slt i16 %9, 0
  %spec.select18.i = select i1 %cmp4.not.7.i, i32 8, i32 7
  br label %cond.end63

cond.end63:                                       ; preds = %for.inc.6.i, %for.inc.5.i.cond.end63_crit_edge, %for.inc.4.i.cond.end63_crit_edge, %for.inc.3.i.cond.end63_crit_edge, %for.inc.2.i.cond.end63_crit_edge, %for.inc.1.i.cond.end63_crit_edge, %for.inc.i.cond.end63_crit_edge, %for.body29.cond.end63_crit_edge
  %seg.0.lcssa.i = phi i32 [ 0, %for.body29.cond.end63_crit_edge ], [ 1, %for.inc.i.cond.end63_crit_edge ], [ 2, %for.inc.1.i.cond.end63_crit_edge ], [ 3, %for.inc.2.i.cond.end63_crit_edge ], [ 4, %for.inc.3.i.cond.end63_crit_edge ], [ 5, %for.inc.4.i.cond.end63_crit_edge ], [ 6, %for.inc.5.i.cond.end63_crit_edge ], [ %spec.select18.i, %for.inc.6.i ]
  %10 = zext i16 %9 to i32
  %add.i96 = add nuw nsw i32 %seg.0.lcssa.i, 3
  %spec.select.i97 = select i1 %cmp4.not.i, i32 %add.i96, i32 4
  %shr.i = lshr i32 %10, %spec.select.i97
  %and.i99 = and i32 %shr.i, 15
  %shl.i98 = shl nuw nsw i32 %seg.0.lcssa.i, 4
  %or.i100 = or i32 %and.i99, %shl.i98
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %conv31)
  %cmp.i = icmp sgt i16 %conv31, -1
  %mask.0.i = select i1 %cmp.i, i32 213, i32 85
  %xor.i = xor i32 %or.i100, %mask.0.i
  %arrayidx.i102 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %xor.i
  %11 = ptrtoint ptr %arrayidx.i102 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx.i102, align 1
  %and66 = and i32 %i.1105, 65535
  %arrayidx67 = getelementptr [65536 x i8], ptr @dsp_audio_s16_to_law, i32 0, i32 %and66
  %13 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %arrayidx67, align 1
  %inc69 = add nsw i32 %i.1105, 1
  %exitcond107.not = icmp eq i32 %inc69, 32768
  br i1 %exitcond107.not, label %cond.end63.if.end_crit_edge, label %cond.end63.for.body29_crit_edge

cond.end63.for.body29_crit_edge:                  ; preds = %cond.end63
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body29

cond.end63.if.end_crit_edge:                      ; preds = %cond.end63
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.end:                                           ; preds = %cond.end63.if.end_crit_edge, %cond.end.if.end_crit_edge
  ret void
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dsp_audio_generate_seven() local_unnamed_addr #0 align 64 {
entry:
  %sorted_alaw = alloca [256 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %sorted_alaw) #4
  %0 = call ptr @memset(ptr %sorted_alaw, i32 255, i32 256)
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.end.for.cond1.preheader_crit_edge, %entry
  %i.075 = phi i32 [ 0, %entry ], [ %inc9, %for.end.for.cond1.preheader_crit_edge ]
  %arrayidx4 = getelementptr [256 x i32], ptr @dsp_audio_alaw_to_s32, i32 0, i32 %i.075
  %1 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx4, align 4
  br label %for.body3

for.cond11.preheader:                             ; preds = %for.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dsp_options to i32))
  %3 = load i32, ptr @dsp_options, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br label %for.body14

for.body3:                                        ; preds = %for.body3.for.body3_crit_edge, %for.cond1.preheader
  %k.074 = phi i32 [ 0, %for.cond1.preheader ], [ %inc6, %for.body3.for.body3_crit_edge ]
  %j.073 = phi i32 [ 0, %for.cond1.preheader ], [ %spec.select, %for.body3.for.body3_crit_edge ]
  %arrayidx = getelementptr [256 x i32], ptr @dsp_audio_alaw_to_s32, i32 0, i32 %k.074
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %2)
  %cmp5 = icmp slt i32 %5, %2
  %inc = zext i1 %cmp5 to i32
  %spec.select = add i32 %j.073, %inc
  %inc6 = add nuw nsw i32 %k.074, 1
  %exitcond.not = icmp eq i32 %inc6, 256
  br i1 %exitcond.not, label %for.end, label %for.body3.for.body3_crit_edge

for.body3.for.body3_crit_edge:                    ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body3

for.end:                                          ; preds = %for.body3
  %conv = trunc i32 %i.075 to i8
  %arrayidx7 = getelementptr [256 x i8], ptr %sorted_alaw, i32 0, i32 %spec.select
  %6 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv, ptr %arrayidx7, align 1
  %inc9 = add nuw nsw i32 %i.075, 1
  %exitcond80.not = icmp eq i32 %inc9, 256
  br i1 %exitcond80.not, label %for.cond11.preheader, label %for.end.for.cond1.preheader_crit_edge

for.end.for.cond1.preheader_crit_edge:            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond1.preheader

for.cond38.preheader:                             ; preds = %for.end32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dsp_options to i32))
  %7 = load i32, ptr @dsp_options, align 4
  %and43 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  br label %for.body41

for.body14:                                       ; preds = %for.end32.for.body14_crit_edge, %for.cond11.preheader
  %i.177 = phi i32 [ 0, %for.cond11.preheader ], [ %inc36, %for.end32.for.body14_crit_edge ]
  %conv15 = trunc i32 %i.177 to i8
  br i1 %tobool.not, label %for.body14.if.end18_crit_edge, label %if.then16

for.body14.if.end18_crit_edge:                    ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end18

if.then16:                                        ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx17 = getelementptr [256 x i8], ptr @dsp_audio_ulaw_to_alaw, i32 0, i32 %i.177
  %8 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx17, align 1
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %for.body14.if.end18_crit_edge
  %spl.0 = phi i8 [ %9, %if.then16 ], [ %conv15, %for.body14.if.end18_crit_edge ]
  br label %for.body22

for.body22:                                       ; preds = %for.inc30.for.body22_crit_edge, %if.end18
  %j.276 = phi i32 [ 0, %if.end18 ], [ %inc31, %for.inc30.for.body22_crit_edge ]
  %arrayidx23 = getelementptr [256 x i8], ptr %sorted_alaw, i32 0, i32 %j.276
  %10 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx23, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %11, i8 %spl.0)
  %cmp26 = icmp eq i8 %11, %spl.0
  br i1 %cmp26, label %for.body22.for.end32_crit_edge, label %for.inc30

for.body22.for.end32_crit_edge:                   ; preds = %for.body22
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end32

for.inc30:                                        ; preds = %for.body22
  %inc31 = add nuw nsw i32 %j.276, 1
  %exitcond81.not = icmp eq i32 %inc31, 256
  br i1 %exitcond81.not, label %for.inc30.for.end32_crit_edge, label %for.inc30.for.body22_crit_edge

for.inc30.for.body22_crit_edge:                   ; preds = %for.inc30
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body22

for.inc30.for.end32_crit_edge:                    ; preds = %for.inc30
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end32

for.end32:                                        ; preds = %for.inc30.for.end32_crit_edge, %for.body22.for.end32_crit_edge
  %j.2.lcssa = phi i32 [ %j.276, %for.body22.for.end32_crit_edge ], [ 256, %for.inc30.for.end32_crit_edge ]
  %12 = lshr i32 %j.2.lcssa, 1
  %conv33 = trunc i32 %12 to i8
  %arrayidx34 = getelementptr [256 x i8], ptr @dsp_audio_law2seven, i32 0, i32 %i.177
  %13 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv33, ptr %arrayidx34, align 1
  %inc36 = add nuw nsw i32 %i.177, 1
  %exitcond82.not = icmp eq i32 %inc36, 256
  br i1 %exitcond82.not, label %for.cond38.preheader, label %for.end32.for.body14_crit_edge

for.end32.for.body14_crit_edge:                   ; preds = %for.end32
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body14

for.body41:                                       ; preds = %if.end47.for.body41_crit_edge, %for.cond38.preheader
  %i.279 = phi i32 [ 0, %for.cond38.preheader ], [ %inc50, %if.end47.for.body41_crit_edge ]
  %shl = shl nuw i32 %i.279, 1
  %arrayidx42 = getelementptr [256 x i8], ptr %sorted_alaw, i32 0, i32 %shl
  %14 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx42, align 1
  br i1 %tobool44.not, label %for.body41.if.end47_crit_edge, label %if.then45

for.body41.if.end47_crit_edge:                    ; preds = %for.body41
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end47

if.then45:                                        ; preds = %for.body41
  call void @__sanitizer_cov_trace_pc() #6
  %idxprom = zext i8 %15 to i32
  %arrayidx46 = getelementptr [256 x i8], ptr @dsp_audio_alaw_to_ulaw, i32 0, i32 %idxprom
  %16 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx46, align 1
  br label %if.end47

if.end47:                                         ; preds = %if.then45, %for.body41.if.end47_crit_edge
  %spl.1 = phi i8 [ %17, %if.then45 ], [ %15, %for.body41.if.end47_crit_edge ]
  %arrayidx48 = getelementptr [128 x i8], ptr @dsp_audio_seven2law, i32 0, i32 %i.279
  %18 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %spl.1, ptr %arrayidx48, align 1
  %inc50 = add nuw nsw i32 %i.279, 1
  %exitcond83.not = icmp eq i32 %inc50, 128
  br i1 %exitcond83.not, label %for.end51, label %if.end47.for.body41_crit_edge

if.end47.for.body41_crit_edge:                    ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body41

for.end51:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %sorted_alaw) #4
  ret void
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dsp_audio_generate_mix_table() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @dsp_audio_law_to_s32, align 4
  br label %while.cond1.preheader

while.cond1.preheader:                            ; preds = %while.end.while.cond1.preheader_crit_edge, %entry
  %i.024 = phi i32 [ 0, %entry ], [ %inc11, %while.end.while.cond1.preheader_crit_edge ]
  %arrayidx = getelementptr i32, ptr %0, i32 %i.024
  %shl = shl i32 %i.024, 8
  br label %while.body3

while.body3:                                      ; preds = %while.body3.while.body3_crit_edge, %while.cond1.preheader
  %j.023 = phi i32 [ 0, %while.cond1.preheader ], [ %inc, %while.body3.while.body3_crit_edge ]
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx, align 4
  %arrayidx4 = getelementptr i32, ptr %0, i32 %j.023
  %3 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx4, align 4
  %add = add i32 %4, %2
  %5 = tail call i32 @llvm.smin.i32(i32 %add, i32 32767)
  %6 = tail call i32 @llvm.smax.i32(i32 %5, i32 -32768)
  %and = and i32 %6, 65535
  %arrayidx9 = getelementptr [65536 x i8], ptr @dsp_audio_s16_to_law, i32 0, i32 %and
  %7 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx9, align 1
  %or = or i32 %j.023, %shl
  %arrayidx10 = getelementptr [65536 x i8], ptr @dsp_audio_mix_law, i32 0, i32 %or
  %9 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %arrayidx10, align 1
  %inc = add nuw nsw i32 %j.023, 1
  %exitcond.not = icmp eq i32 %inc, 256
  br i1 %exitcond.not, label %while.end, label %while.body3.while.body3_crit_edge

while.body3.while.body3_crit_edge:                ; preds = %while.body3
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body3

while.end:                                        ; preds = %while.body3
  %inc11 = add nuw nsw i32 %i.024, 1
  %exitcond25.not = icmp eq i32 %inc11, 256
  br i1 %exitcond25.not, label %while.end12, label %while.end.while.cond1.preheader_crit_edge

while.end.while.cond1.preheader_crit_edge:        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond1.preheader

while.end12:                                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #6
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dsp_audio_generate_volume_changes() local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @dsp_audio_law_to_s32, align 4
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry
  %i.0257 = phi i32 [ 0, %entry ], [ %inc, %while.body.while.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %0, i32 %i.0257
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx, align 4
  %mul = mul i32 %2, 100
  %div = sdiv i32 %mul, 500
  %and = and i32 %div, 65535
  %arrayidx3 = getelementptr [65536 x i8], ptr @dsp_audio_s16_to_law, i32 0, i32 %and
  %3 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx3, align 1
  %arrayidx4 = getelementptr [256 x i8], ptr @dsp_audio_reduce8, i32 0, i32 %i.0257
  %5 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %arrayidx4, align 1
  %6 = load i32, ptr %arrayidx, align 4
  %mul7 = mul i32 %6, 100
  %div9 = sdiv i32 %mul7, 400
  %and10 = and i32 %div9, 65535
  %arrayidx11 = getelementptr [65536 x i8], ptr @dsp_audio_s16_to_law, i32 0, i32 %and10
  %7 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx11, align 1
  %arrayidx12 = getelementptr [256 x i8], ptr @dsp_audio_reduce7, i32 0, i32 %i.0257
  %9 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %arrayidx12, align 1
  %10 = load i32, ptr %arrayidx, align 4
  %mul15 = mul i32 %10, 100
  %div17 = sdiv i32 %mul15, 300
  %and18 = and i32 %div17, 65535
  %arrayidx19 = getelementptr [65536 x i8], ptr @dsp_audio_s16_to_law, i32 0, i32 %and18
  %11 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx19, align 1
  %arrayidx20 = getelementptr [256 x i8], ptr @dsp_audio_reduce6, i32 0, i32 %i.0257
  %13 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %arrayidx20, align 1
  %14 = load i32, ptr %arrayidx, align 4
  %mul23 = mul i32 %14, 100
  %div25 = sdiv i32 %mul23, 200
  %and26 = and i32 %div25, 65535
  %arrayidx27 = getelementptr [65536 x i8], ptr @dsp_audio_s16_to_law, i32 0, i32 %and26
  %15 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx27, align 1
  %arrayidx28 = getelementptr [256 x i8], ptr @dsp_audio_reduce5, i32 0, i32 %i.0257
  %17 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %arrayidx28, align 1
  %18 = load i32, ptr %arrayidx, align 4
  %mul31 = mul i32 %18, 100
  %div33 = sdiv i32 %mul31, 175
  %and34 = and i32 %div33, 65535
  %arrayidx35 = getelementptr [65536 x i8], ptr @dsp_audio_s16_to_law, i32 0, i32 %and34
  %19 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx35, align 1
  %arrayidx36 = getelementptr [256 x i8], ptr @dsp_audio_reduce4, i32 0, i32 %i.0257
  %21 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %arrayidx36, align 1
  %22 = load i32, ptr %arrayidx, align 4
  %mul39 = mul i32 %22, 100
  %div41 = sdiv i32 %mul39, 150
  %and42 = and i32 %div41, 65535
  %arrayidx43 = getelementptr [65536 x i8], ptr @dsp_audio_s16_to_law, i32 0, i32 %and42
  %23 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx43, align 1
  %arrayidx44 = getelementptr [256 x i8], ptr @dsp_audio_reduce3, i32 0, i32 %i.0257
  %25 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %arrayidx44, align 1
  %26 = load i32, ptr %arrayidx, align 4
  %mul47 = mul i32 %26, 100
  %div49 = sdiv i32 %mul47, 125
  %and50 = and i32 %div49, 65535
  %arrayidx51 = getelementptr [65536 x i8], ptr @dsp_audio_s16_to_law, i32 0, i32 %and50
  %27 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx51, align 1
  %arrayidx52 = getelementptr [256 x i8], ptr @dsp_audio_reduce2, i32 0, i32 %i.0257
  %29 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %arrayidx52, align 1
  %30 = load i32, ptr %arrayidx, align 4
  %mul55 = mul i32 %30, 100
  %div57 = sdiv i32 %mul55, 110
  %and58 = and i32 %div57, 65535
  %arrayidx59 = getelementptr [65536 x i8], ptr @dsp_audio_s16_to_law, i32 0, i32 %and58
  %31 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx59, align 1
  %arrayidx60 = getelementptr [256 x i8], ptr @dsp_audio_reduce1, i32 0, i32 %i.0257
  %33 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %arrayidx60, align 1
  %34 = load i32, ptr %arrayidx, align 4
  %mul63 = mul i32 %34, 110
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3276899, i32 %mul63)
  %cmp66 = icmp slt i32 %mul63, -3276899
  %div65 = sdiv i32 %mul63, 100
  call void @__sanitizer_cov_trace_const_cmp4(i32 3276799, i32 %mul63)
  %cmp67 = icmp sgt i32 %mul63, 3276799
  %div65.op = and i32 %div65, 65535
  %spec.select.op = select i1 %cmp67, i32 32767, i32 %div65.op
  %and70 = select i1 %cmp66, i32 32768, i32 %spec.select.op
  %arrayidx71 = getelementptr [65536 x i8], ptr @dsp_audio_s16_to_law, i32 0, i32 %and70
  %35 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx71, align 1
  %arrayidx72 = getelementptr [256 x i8], ptr @dsp_audio_increase1, i32 0, i32 %i.0257
  %37 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %36, ptr %arrayidx72, align 1
  %38 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx, align 4
  %mul75 = mul i32 %39, 125
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3276899, i32 %mul75)
  %cmp78 = icmp slt i32 %mul75, -3276899
  %div77 = sdiv i32 %mul75, 100
  call void @__sanitizer_cov_trace_const_cmp4(i32 3276799, i32 %mul75)
  %cmp81 = icmp sgt i32 %mul75, 3276799
  %div77.op = and i32 %div77, 65535
  %spec.select250.op = select i1 %cmp81, i32 32767, i32 %div77.op
  %and85 = select i1 %cmp78, i32 32768, i32 %spec.select250.op
  %arrayidx86 = getelementptr [65536 x i8], ptr @dsp_audio_s16_to_law, i32 0, i32 %and85
  %40 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx86, align 1
  %arrayidx87 = getelementptr [256 x i8], ptr @dsp_audio_increase2, i32 0, i32 %i.0257
  %42 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %41, ptr %arrayidx87, align 1
  %43 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx, align 4
  %mul90 = mul i32 %44, 150
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3276899, i32 %mul90)
  %cmp93 = icmp slt i32 %mul90, -3276899
  %div92 = sdiv i32 %mul90, 100
  call void @__sanitizer_cov_trace_const_cmp4(i32 3276799, i32 %mul90)
  %cmp96 = icmp sgt i32 %mul90, 3276799
  %div92.op = and i32 %div92, 65535
  %spec.select251.op = select i1 %cmp96, i32 32767, i32 %div92.op
  %and100 = select i1 %cmp93, i32 32768, i32 %spec.select251.op
  %arrayidx101 = getelementptr [65536 x i8], ptr @dsp_audio_s16_to_law, i32 0, i32 %and100
  %45 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx101, align 1
  %arrayidx102 = getelementptr [256 x i8], ptr @dsp_audio_increase3, i32 0, i32 %i.0257
  %47 = ptrtoint ptr %arrayidx102 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %46, ptr %arrayidx102, align 1
  %48 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx, align 4
  %mul105 = mul i32 %49, 175
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3276899, i32 %mul105)
  %cmp108 = icmp slt i32 %mul105, -3276899
  %div107 = sdiv i32 %mul105, 100
  call void @__sanitizer_cov_trace_const_cmp4(i32 3276799, i32 %mul105)
  %cmp111 = icmp sgt i32 %mul105, 3276799
  %div107.op = and i32 %div107, 65535
  %spec.select252.op = select i1 %cmp111, i32 32767, i32 %div107.op
  %and115 = select i1 %cmp108, i32 32768, i32 %spec.select252.op
  %arrayidx116 = getelementptr [65536 x i8], ptr @dsp_audio_s16_to_law, i32 0, i32 %and115
  %50 = ptrtoint ptr %arrayidx116 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx116, align 1
  %arrayidx117 = getelementptr [256 x i8], ptr @dsp_audio_increase4, i32 0, i32 %i.0257
  %52 = ptrtoint ptr %arrayidx117 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %51, ptr %arrayidx117, align 1
  %53 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx, align 4
  %mul120 = mul i32 %54, 200
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3276899, i32 %mul120)
  %cmp123 = icmp slt i32 %mul120, -3276899
  %div122 = sdiv i32 %mul120, 100
  call void @__sanitizer_cov_trace_const_cmp4(i32 3276799, i32 %mul120)
  %cmp126 = icmp sgt i32 %mul120, 3276799
  %div122.op = and i32 %div122, 65535
  %spec.select253.op = select i1 %cmp126, i32 32767, i32 %div122.op
  %and130 = select i1 %cmp123, i32 32768, i32 %spec.select253.op
  %arrayidx131 = getelementptr [65536 x i8], ptr @dsp_audio_s16_to_law, i32 0, i32 %and130
  %55 = ptrtoint ptr %arrayidx131 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx131, align 1
  %arrayidx132 = getelementptr [256 x i8], ptr @dsp_audio_increase5, i32 0, i32 %i.0257
  %57 = ptrtoint ptr %arrayidx132 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %56, ptr %arrayidx132, align 1
  %58 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx, align 4
  %mul135 = mul i32 %59, 300
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3276899, i32 %mul135)
  %cmp138 = icmp slt i32 %mul135, -3276899
  %div137 = sdiv i32 %mul135, 100
  call void @__sanitizer_cov_trace_const_cmp4(i32 3276799, i32 %mul135)
  %cmp141 = icmp sgt i32 %mul135, 3276799
  %div137.op = and i32 %div137, 65535
  %spec.select254.op = select i1 %cmp141, i32 32767, i32 %div137.op
  %and145 = select i1 %cmp138, i32 32768, i32 %spec.select254.op
  %arrayidx146 = getelementptr [65536 x i8], ptr @dsp_audio_s16_to_law, i32 0, i32 %and145
  %60 = ptrtoint ptr %arrayidx146 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx146, align 1
  %arrayidx147 = getelementptr [256 x i8], ptr @dsp_audio_increase6, i32 0, i32 %i.0257
  %62 = ptrtoint ptr %arrayidx147 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %61, ptr %arrayidx147, align 1
  %63 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx, align 4
  %mul150 = mul i32 %64, 400
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3276899, i32 %mul150)
  %cmp153 = icmp slt i32 %mul150, -3276899
  %div152 = sdiv i32 %mul150, 100
  call void @__sanitizer_cov_trace_const_cmp4(i32 3276799, i32 %mul150)
  %cmp156 = icmp sgt i32 %mul150, 3276799
  %div152.op = and i32 %div152, 65535
  %spec.select255.op = select i1 %cmp156, i32 32767, i32 %div152.op
  %and160 = select i1 %cmp153, i32 32768, i32 %spec.select255.op
  %arrayidx161 = getelementptr [65536 x i8], ptr @dsp_audio_s16_to_law, i32 0, i32 %and160
  %65 = ptrtoint ptr %arrayidx161 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx161, align 1
  %arrayidx162 = getelementptr [256 x i8], ptr @dsp_audio_increase7, i32 0, i32 %i.0257
  %67 = ptrtoint ptr %arrayidx162 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %66, ptr %arrayidx162, align 1
  %68 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx, align 4
  %mul165 = mul i32 %69, 500
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3276899, i32 %mul165)
  %cmp168 = icmp slt i32 %mul165, -3276899
  %div167 = sdiv i32 %mul165, 100
  call void @__sanitizer_cov_trace_const_cmp4(i32 3276799, i32 %mul165)
  %cmp171 = icmp sgt i32 %mul165, 3276799
  %div167.op = and i32 %div167, 65535
  %spec.select256.op = select i1 %cmp171, i32 32767, i32 %div167.op
  %and175 = select i1 %cmp168, i32 32768, i32 %spec.select256.op
  %arrayidx176 = getelementptr [65536 x i8], ptr @dsp_audio_s16_to_law, i32 0, i32 %and175
  %70 = ptrtoint ptr %arrayidx176 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx176, align 1
  %arrayidx177 = getelementptr [256 x i8], ptr @dsp_audio_increase8, i32 0, i32 %i.0257
  %72 = ptrtoint ptr %arrayidx177 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %71, ptr %arrayidx177, align 1
  %inc = add nuw nsw i32 %i.0257, 1
  %exitcond.not = icmp eq i32 %inc, 256
  br i1 %exitcond.not, label %while.end, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

while.end:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  ret void
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dsp_change_volume(ptr nocapture noundef readonly %skb, i32 noundef %volume) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %volume)
  %cmp = icmp eq i32 %volume, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %volume)
  %cmp1 = icmp slt i32 %volume, 0
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %0 = tail call i32 @llvm.smax.i32(i32 %volume, i32 -8)
  %1 = add nsw i32 %0, 8
  br label %if.end10

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %add6 = add nuw i32 %volume, 7
  %2 = tail call i32 @llvm.smin.i32(i32 %add6, i32 15)
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then2
  %shift.0 = phi i32 [ %1, %if.then2 ], [ %2, %if.else ]
  %arrayidx = getelementptr [16 x ptr], ptr @dsp_audio_volume_change, i32 0, i32 %shift.0
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %5 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp1127 = icmp sgt i32 %6, 0
  br i1 %cmp1127, label %while.body.preheader, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

while.body.preheader:                             ; preds = %if.end10
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data, align 4
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.preheader
  %p.029 = phi ptr [ %incdec.ptr, %while.body.while.body_crit_edge ], [ %8, %while.body.preheader ]
  %i.028 = phi i32 [ %inc, %while.body.while.body_crit_edge ], [ 0, %while.body.preheader ]
  %9 = ptrtoint ptr %p.029 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %p.029, align 1
  %idxprom = zext i8 %10 to i32
  %arrayidx12 = getelementptr i8, ptr %4, i32 %idxprom
  %11 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx12, align 1
  store i8 %12, ptr %p.029, align 1
  %incdec.ptr = getelementptr i8, ptr %p.029, i32 1
  %inc = add nuw nsw i32 %i.028, 1
  %exitcond.not = icmp eq i32 %inc, %6
  br i1 %exitcond.not, label %while.body.cleanup_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cleanup:                                          ; preds = %while.body.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.abs.i16(i16, i1 immarg) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

attributes #0 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62}
!llvm.module.flags = !{!64, !65, !66, !67, !68, !69, !70, !71}
!llvm.ident = !{!72}

!0 = !{ptr @__ksymtab_dsp_audio_law_to_s32, !1, !"__ksymtab_dsp_audio_law_to_s32", i1 false, i1 false}
!1 = !{!"../drivers/isdn/mISDN/dsp_audio.c", i32 26, i32 1}
!2 = !{ptr @__ksymtab_dsp_audio_s16_to_law, !3, !"__ksymtab_dsp_audio_s16_to_law", i1 false, i1 false}
!3 = !{!"../drivers/isdn/mISDN/dsp_audio.c", i32 30, i32 1}
!4 = !{ptr @dsp_audio_ulaw_to_s32, !5, !"dsp_audio_ulaw_to_s32", i1 false, i1 false}
!5 = !{!"../drivers/isdn/mISDN/dsp_audio.c", i32 21, i32 5}
!6 = !{ptr @dsp_audio_alaw_to_s32, !7, !"dsp_audio_alaw_to_s32", i1 false, i1 false}
!7 = !{!"../drivers/isdn/mISDN/dsp_audio.c", i32 23, i32 5}
!8 = !{ptr @dsp_audio_law_to_s32, !9, !"dsp_audio_law_to_s32", i1 false, i1 false}
!9 = !{!"../drivers/isdn/mISDN/dsp_audio.c", i32 25, i32 6}
!10 = !{ptr @dsp_audio_s16_to_law, !11, !"dsp_audio_s16_to_law", i1 false, i1 false}
!11 = !{!"../drivers/isdn/mISDN/dsp_audio.c", i32 29, i32 4}
!12 = !{ptr @dsp_audio_alaw_to_ulaw, !13, !"dsp_audio_alaw_to_ulaw", i1 false, i1 false}
!13 = !{!"../drivers/isdn/mISDN/dsp_audio.c", i32 33, i32 4}
!14 = !{ptr @dsp_audio_ulaw_to_alaw, !15, !"dsp_audio_ulaw_to_alaw", i1 false, i1 false}
!15 = !{!"../drivers/isdn/mISDN/dsp_audio.c", i32 35, i32 11}
!16 = !{ptr @dsp_silence, !17, !"dsp_silence", i1 false, i1 false}
!17 = !{!"../drivers/isdn/mISDN/dsp_audio.c", i32 36, i32 4}
!18 = !{ptr @dsp_audio_seven2law, !19, !"dsp_audio_seven2law", i1 false, i1 false}
!19 = !{!"../drivers/isdn/mISDN/dsp_audio.c", i32 183, i32 4}
!20 = !{ptr @dsp_audio_law2seven, !21, !"dsp_audio_law2seven", i1 false, i1 false}
!21 = !{!"../drivers/isdn/mISDN/dsp_audio.c", i32 184, i32 4}
!22 = !{ptr @dsp_audio_mix_law, !23, !"dsp_audio_mix_law", i1 false, i1 false}
!23 = !{!"../drivers/isdn/mISDN/dsp_audio.c", i32 232, i32 4}
!24 = !{ptr @dsp_audio_reduce8, !25, !"dsp_audio_reduce8", i1 false, i1 false}
!25 = !{!"../drivers/isdn/mISDN/dsp_audio.c", i32 267, i32 11}
!26 = !{ptr @dsp_audio_reduce7, !27, !"dsp_audio_reduce7", i1 false, i1 false}
!27 = !{!"../drivers/isdn/mISDN/dsp_audio.c", i32 268, i32 11}
!28 = !{ptr @dsp_audio_reduce6, !29, !"dsp_audio_reduce6", i1 false, i1 false}
!29 = !{!"../drivers/isdn/mISDN/dsp_audio.c", i32 269, i32 11}
!30 = !{ptr @dsp_audio_reduce5, !31, !"dsp_audio_reduce5", i1 false, i1 false}
!31 = !{!"../drivers/isdn/mISDN/dsp_audio.c", i32 270, i32 11}
!32 = !{ptr @dsp_audio_reduce4, !33, !"dsp_audio_reduce4", i1 false, i1 false}
!33 = !{!"../drivers/isdn/mISDN/dsp_audio.c", i32 271, i32 11}
!34 = !{ptr @dsp_audio_reduce3, !35, !"dsp_audio_reduce3", i1 false, i1 false}
!35 = !{!"../drivers/isdn/mISDN/dsp_audio.c", i32 272, i32 11}
!36 = !{ptr @dsp_audio_reduce2, !37, !"dsp_audio_reduce2", i1 false, i1 false}
!37 = !{!"../drivers/isdn/mISDN/dsp_audio.c", i32 273, i32 11}
!38 = !{ptr @dsp_audio_reduce1, !39, !"dsp_audio_reduce1", i1 false, i1 false}
!39 = !{!"../drivers/isdn/mISDN/dsp_audio.c", i32 274, i32 11}
!40 = !{ptr @dsp_audio_increase1, !41, !"dsp_audio_increase1", i1 false, i1 false}
!41 = !{!"../drivers/isdn/mISDN/dsp_audio.c", i32 275, i32 11}
!42 = !{ptr @dsp_audio_increase2, !43, !"dsp_audio_increase2", i1 false, i1 false}
!43 = !{!"../drivers/isdn/mISDN/dsp_audio.c", i32 276, i32 11}
!44 = !{ptr @dsp_audio_increase3, !45, !"dsp_audio_increase3", i1 false, i1 false}
!45 = !{!"../drivers/isdn/mISDN/dsp_audio.c", i32 277, i32 11}
!46 = !{ptr @dsp_audio_increase4, !47, !"dsp_audio_increase4", i1 false, i1 false}
!47 = !{!"../drivers/isdn/mISDN/dsp_audio.c", i32 278, i32 11}
!48 = !{ptr @dsp_audio_increase5, !49, !"dsp_audio_increase5", i1 false, i1 false}
!49 = !{!"../drivers/isdn/mISDN/dsp_audio.c", i32 279, i32 11}
!50 = !{ptr @dsp_audio_increase6, !51, !"dsp_audio_increase6", i1 false, i1 false}
!51 = !{!"../drivers/isdn/mISDN/dsp_audio.c", i32 280, i32 11}
!52 = !{ptr @dsp_audio_increase7, !53, !"dsp_audio_increase7", i1 false, i1 false}
!53 = !{!"../drivers/isdn/mISDN/dsp_audio.c", i32 281, i32 11}
!54 = !{ptr @dsp_audio_increase8, !55, !"dsp_audio_increase8", i1 false, i1 false}
!55 = !{!"../drivers/isdn/mISDN/dsp_audio.c", i32 282, i32 11}
!56 = !{ptr @ulaw2linear.etab, !57, !"etab", i1 false, i1 false}
!57 = !{!"../drivers/isdn/mISDN/dsp_audio.c", i32 91, i32 15}
!58 = !{ptr @linear2ulaw.exp_lut, !59, !"exp_lut", i1 false, i1 false}
!59 = !{!"../drivers/isdn/mISDN/dsp_audio.c", i32 107, i32 13}
!60 = distinct !{null, !61, !"seg_end", i1 false, i1 false}
!61 = !{!"../drivers/isdn/mISDN/dsp_audio.c", i32 50, i32 13}
!62 = !{ptr @dsp_audio_volume_change, !63, !"dsp_audio_volume_change", i1 false, i1 false}
!63 = !{!"../drivers/isdn/mISDN/dsp_audio.c", i32 284, i32 12}
!64 = !{i32 1, !"wchar_size", i32 2}
!65 = !{i32 1, !"min_enum_size", i32 4}
!66 = !{i32 8, !"branch-target-enforcement", i32 0}
!67 = !{i32 8, !"sign-return-address", i32 0}
!68 = !{i32 8, !"sign-return-address-all", i32 0}
!69 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!70 = !{i32 7, !"uwtable", i32 1}
!71 = !{i32 7, !"frame-pointer", i32 2}
!72 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
