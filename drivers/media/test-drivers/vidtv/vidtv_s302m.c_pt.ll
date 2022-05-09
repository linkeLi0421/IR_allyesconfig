; ModuleID = '/llk/IR_all_yes/drivers/media/test-drivers/vidtv/vidtv_s302m.c_pt.bc'
source_filename = "../drivers/media/test-drivers/vidtv/vidtv_s302m.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tone_duration = type { i32, i32 }
%struct.vidtv_encoder = type { i32, ptr, ptr, i32, i32, i64, ptr, ptr, i32, i32, i8, ptr, i16, i16, ptr, ptr, ptr, i32, ptr, ptr, ptr }
%struct.vidtv_s302m_ctx = type { ptr, i32, i32, i32, i32, i32 }
%struct.vidtv_s302m_frame_16 = type { [5 x i8] }
%struct.vidtv_smpte_s302m_es = type { i32 }
%struct.vidtv_access_unit = type { i32, i64, i64, i32, i32, ptr }

@vidtv_s302m_encoder_destroy._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.vidtv_s302m_encoder_destroy = private unnamed_addr constant [28 x i8] c"vidtv_s302m_encoder_destroy\00", align 1
@vidtv_s302m_encoder_destroy._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.vidtv_s302m_encoder_destroy, ptr @.str.2, i32 506, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\013dvb_vidtv_bridge:%s, %d: Encoder type mismatch, skipping.\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"drivers/media/test-drivers/vidtv/vidtv_s302m.c\00", [49 x i8] zeroinitializer }, align 32
@vidtv_s302m_encoder_destroy._entry_ptr = internal global ptr @vidtv_s302m_encoder_destroy._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@vidtv_s302m_write_frames._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.vidtv_s302m_write_frames = private unnamed_addr constant [25 x i8] c"vidtv_s302m_write_frames\00", align 1
@vidtv_s302m_write_frames._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @__func__.vidtv_s302m_write_frames, ptr @.str.2, i32 377, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\014dvb_vidtv_bridge:%s, %d: write size was %u, expected %zu\0A\00", [36 x i8] zeroinitializer }, align 32
@vidtv_s302m_write_frames._entry_ptr = internal global ptr @vidtv_s302m_write_frames._entry, section ".printk_index", align 4
@beethoven_fur_elise = internal constant { [179 x %struct.tone_duration], [360 x i8] } { [179 x %struct.tone_duration] [%struct.tone_duration { i32 0, i32 512 }, %struct.tone_duration { i32 1319, i32 128 }, %struct.tone_duration { i32 1245, i32 128 }, %struct.tone_duration { i32 1319, i32 128 }, %struct.tone_duration { i32 1245, i32 128 }, %struct.tone_duration { i32 1319, i32 128 }, %struct.tone_duration { i32 988, i32 128 }, %struct.tone_duration { i32 1175, i32 128 }, %struct.tone_duration { i32 1047, i32 128 }, %struct.tone_duration { i32 220, i32 128 }, %struct.tone_duration { i32 330, i32 128 }, %struct.tone_duration { i32 440, i32 128 }, %struct.tone_duration { i32 523, i32 128 }, %struct.tone_duration { i32 659, i32 128 }, %struct.tone_duration { i32 880, i32 128 }, %struct.tone_duration { i32 165, i32 128 }, %struct.tone_duration { i32 330, i32 128 }, %struct.tone_duration { i32 415, i32 128 }, %struct.tone_duration { i32 659, i32 128 }, %struct.tone_duration { i32 831, i32 128 }, %struct.tone_duration { i32 988, i32 128 }, %struct.tone_duration { i32 220, i32 128 }, %struct.tone_duration { i32 330, i32 128 }, %struct.tone_duration { i32 440, i32 128 }, %struct.tone_duration { i32 659, i32 128 }, %struct.tone_duration { i32 1319, i32 128 }, %struct.tone_duration { i32 1245, i32 128 }, %struct.tone_duration { i32 1319, i32 128 }, %struct.tone_duration { i32 1245, i32 128 }, %struct.tone_duration { i32 1319, i32 128 }, %struct.tone_duration { i32 988, i32 128 }, %struct.tone_duration { i32 1175, i32 128 }, %struct.tone_duration { i32 1047, i32 128 }, %struct.tone_duration { i32 220, i32 128 }, %struct.tone_duration { i32 330, i32 128 }, %struct.tone_duration { i32 440, i32 128 }, %struct.tone_duration { i32 523, i32 128 }, %struct.tone_duration { i32 659, i32 128 }, %struct.tone_duration { i32 880, i32 128 }, %struct.tone_duration { i32 165, i32 128 }, %struct.tone_duration { i32 330, i32 128 }, %struct.tone_duration { i32 415, i32 128 }, %struct.tone_duration { i32 659, i32 128 }, %struct.tone_duration { i32 1047, i32 128 }, %struct.tone_duration { i32 988, i32 128 }, %struct.tone_duration { i32 220, i32 128 }, %struct.tone_duration { i32 330, i32 128 }, %struct.tone_duration { i32 440, i32 128 }, %struct.tone_duration { i32 0, i32 128 }, %struct.tone_duration { i32 1319, i32 128 }, %struct.tone_duration { i32 1245, i32 128 }, %struct.tone_duration { i32 1319, i32 128 }, %struct.tone_duration { i32 1245, i32 128 }, %struct.tone_duration { i32 1319, i32 128 }, %struct.tone_duration { i32 988, i32 128 }, %struct.tone_duration { i32 1175, i32 128 }, %struct.tone_duration { i32 1047, i32 128 }, %struct.tone_duration { i32 220, i32 128 }, %struct.tone_duration { i32 330, i32 128 }, %struct.tone_duration { i32 440, i32 128 }, %struct.tone_duration { i32 523, i32 128 }, %struct.tone_duration { i32 659, i32 128 }, %struct.tone_duration { i32 880, i32 128 }, %struct.tone_duration { i32 165, i32 128 }, %struct.tone_duration { i32 330, i32 128 }, %struct.tone_duration { i32 415, i32 128 }, %struct.tone_duration { i32 659, i32 128 }, %struct.tone_duration { i32 831, i32 128 }, %struct.tone_duration { i32 988, i32 128 }, %struct.tone_duration { i32 220, i32 128 }, %struct.tone_duration { i32 330, i32 128 }, %struct.tone_duration { i32 440, i32 128 }, %struct.tone_duration { i32 659, i32 128 }, %struct.tone_duration { i32 1319, i32 128 }, %struct.tone_duration { i32 1245, i32 128 }, %struct.tone_duration { i32 1319, i32 128 }, %struct.tone_duration { i32 1245, i32 128 }, %struct.tone_duration { i32 1319, i32 128 }, %struct.tone_duration { i32 988, i32 128 }, %struct.tone_duration { i32 1175, i32 128 }, %struct.tone_duration { i32 1047, i32 128 }, %struct.tone_duration { i32 220, i32 128 }, %struct.tone_duration { i32 330, i32 128 }, %struct.tone_duration { i32 440, i32 128 }, %struct.tone_duration { i32 523, i32 128 }, %struct.tone_duration { i32 659, i32 128 }, %struct.tone_duration { i32 880, i32 128 }, %struct.tone_duration { i32 165, i32 128 }, %struct.tone_duration { i32 330, i32 128 }, %struct.tone_duration { i32 415, i32 128 }, %struct.tone_duration { i32 659, i32 128 }, %struct.tone_duration { i32 1047, i32 128 }, %struct.tone_duration { i32 988, i32 128 }, %struct.tone_duration { i32 220, i32 128 }, %struct.tone_duration { i32 330, i32 128 }, %struct.tone_duration { i32 440, i32 128 }, %struct.tone_duration { i32 494, i32 128 }, %struct.tone_duration { i32 523, i32 128 }, %struct.tone_duration { i32 587, i32 128 }, %struct.tone_duration { i32 262, i32 128 }, %struct.tone_duration { i32 392, i32 128 }, %struct.tone_duration { i32 523, i32 128 }, %struct.tone_duration { i32 392, i32 128 }, %struct.tone_duration { i32 698, i32 128 }, %struct.tone_duration { i32 659, i32 128 }, %struct.tone_duration { i32 196, i32 128 }, %struct.tone_duration { i32 392, i32 128 }, %struct.tone_duration { i32 247, i32 128 }, %struct.tone_duration { i32 349, i32 128 }, %struct.tone_duration { i32 659, i32 128 }, %struct.tone_duration { i32 587, i32 128 }, %struct.tone_duration { i32 220, i32 128 }, %struct.tone_duration { i32 330, i32 128 }, %struct.tone_duration { i32 440, i32 128 }, %struct.tone_duration { i32 330, i32 128 }, %struct.tone_duration { i32 587, i32 128 }, %struct.tone_duration { i32 523, i32 128 }, %struct.tone_duration { i32 165, i32 128 }, %struct.tone_duration { i32 330, i32 128 }, %struct.tone_duration { i32 659, i32 128 }, %struct.tone_duration { i32 659, i32 128 }, %struct.tone_duration { i32 1319, i32 128 }, %struct.tone_duration { i32 659, i32 128 }, %struct.tone_duration { i32 1319, i32 128 }, %struct.tone_duration { i32 659, i32 128 }, %struct.tone_duration { i32 659, i32 128 }, %struct.tone_duration { i32 622, i32 128 }, %struct.tone_duration { i32 659, i32 128 }, %struct.tone_duration { i32 1245, i32 128 }, %struct.tone_duration { i32 1319, i32 128 }, %struct.tone_duration { i32 622, i32 128 }, %struct.tone_duration { i32 659, i32 128 }, %struct.tone_duration { i32 1245, i32 128 }, %struct.tone_duration { i32 1319, i32 128 }, %struct.tone_duration { i32 1245, i32 128 }, %struct.tone_duration { i32 1319, i32 128 }, %struct.tone_duration { i32 1245, i32 128 }, %struct.tone_duration { i32 1319, i32 128 }, %struct.tone_duration { i32 988, i32 128 }, %struct.tone_duration { i32 1175, i32 128 }, %struct.tone_duration { i32 1047, i32 128 }, %struct.tone_duration { i32 220, i32 128 }, %struct.tone_duration { i32 330, i32 128 }, %struct.tone_duration { i32 440, i32 128 }, %struct.tone_duration { i32 523, i32 128 }, %struct.tone_duration { i32 659, i32 128 }, %struct.tone_duration { i32 880, i32 128 }, %struct.tone_duration { i32 165, i32 128 }, %struct.tone_duration { i32 330, i32 128 }, %struct.tone_duration { i32 415, i32 128 }, %struct.tone_duration { i32 659, i32 128 }, %struct.tone_duration { i32 831, i32 128 }, %struct.tone_duration { i32 988, i32 128 }, %struct.tone_duration { i32 220, i32 128 }, %struct.tone_duration { i32 330, i32 128 }, %struct.tone_duration { i32 440, i32 128 }, %struct.tone_duration { i32 659, i32 128 }, %struct.tone_duration { i32 1319, i32 128 }, %struct.tone_duration { i32 1245, i32 128 }, %struct.tone_duration { i32 1319, i32 128 }, %struct.tone_duration { i32 1245, i32 128 }, %struct.tone_duration { i32 1319, i32 128 }, %struct.tone_duration { i32 988, i32 128 }, %struct.tone_duration { i32 1175, i32 128 }, %struct.tone_duration { i32 1047, i32 128 }, %struct.tone_duration { i32 220, i32 128 }, %struct.tone_duration { i32 330, i32 128 }, %struct.tone_duration { i32 440, i32 128 }, %struct.tone_duration { i32 523, i32 128 }, %struct.tone_duration { i32 659, i32 128 }, %struct.tone_duration { i32 880, i32 128 }, %struct.tone_duration { i32 165, i32 128 }, %struct.tone_duration { i32 330, i32 128 }, %struct.tone_duration { i32 415, i32 128 }, %struct.tone_duration { i32 659, i32 128 }, %struct.tone_duration { i32 1047, i32 128 }, %struct.tone_duration { i32 988, i32 128 }, %struct.tone_duration { i32 880, i32 512 }, %struct.tone_duration { i32 0, i32 256 }], [360 x i8] zeroinitializer }, align 32
@vidtv_s302m_get_sample._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.vidtv_s302m_get_sample = private unnamed_addr constant [23 x i8] c"vidtv_s302m_get_sample\00", align 1
@vidtv_s302m_get_sample._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @__func__.vidtv_s302m_get_sample, ptr @.str.2, i32 272, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\013dvb_vidtv_bridge:%s, %d: overflow detected: %d > %d, wrapping.\0A\00", [62 x i8] zeroinitializer }, align 32
@vidtv_s302m_get_sample._entry_ptr = internal global ptr @vidtv_s302m_get_sample._entry, section ".printk_index", align 4
@sin_table = internal constant { [91 x i32], [84 x i8] } { [91 x i32] [i32 0, i32 37478757, i32 74946098, i32 112390610, i32 149800886, i32 187165532, i32 224473165, i32 261712422, i32 298871958, i32 335940455, i32 372906621, i32 409759197, i32 446486956, i32 483078710, i32 519523314, i32 555809666, i32 591926714, i32 627863454, i32 663608942, i32 699152287, i32 734482664, i32 769589311, i32 804461533, i32 839088708, i32 873460289, i32 907565806, i32 941394869, i32 974937174, i32 1008182503, i32 1041120731, i32 1073741823, i32 1106035843, i32 1137992954, i32 1169603421, i32 1200857615, i32 1231746017, i32 1262259217, i32 1292387920, i32 1322122950, i32 1351455248, i32 1380375880, i32 1408876036, i32 1436947034, i32 1464580325, i32 1491767490, i32 1518500249, i32 1544770457, i32 1570570114, i32 1595891360, i32 1620726481, i32 1645067914, i32 1668908243, i32 1692240207, i32 1715056697, i32 1737350765, i32 1759115619, i32 1780344629, i32 1801031329, i32 1821169418, i32 1840752761, i32 1859775392, i32 1878231518, i32 1896115516, i32 1913421940, i32 1930145516, i32 1946281151, i32 1961823931, i32 1976769119, i32 1991112165, i32 2004848699, i32 2017974536, i32 2030485679, i32 2042378316, i32 2053648824, i32 2064293772, i32 2074309916, i32 2083694204, i32 2092443780, i32 2100555976, i32 2108028323, i32 2114858545, i32 2121044559, i32 2126584483, i32 2131476629, i32 2135719506, i32 2139311823, i32 2142252484, i32 2144540595, i32 2146175457, i32 2147156574, i32 2147483647], [84 x i8] zeroinitializer }, align 32
@reverse = internal constant { [256 x i8], [64 x i8] } { [256 x i8] c"\00\80@\C0 \A0`\E0\10\90P\D00\B0p\F0\08\88H\C8(\A8h\E8\18\98X\D88\B8x\F8\04\84D\C4$\A4d\E4\14\94T\D44\B4t\F4\0C\8CL\CC,\ACl\EC\1C\9C\\\DC<\BC|\FC\02\82B\C2\22\A2b\E2\12\92R\D22\B2r\F2\0A\8AJ\CA*\AAj\EA\1A\9AZ\DA:\BAz\FA\06\86F\C6&\A6f\E6\16\96V\D66\B6v\F6\0E\8EN\CE.\AEn\EE\1E\9E^\DE>\BE~\FE\01\81A\C1!\A1a\E1\11\91Q\D11\B1q\F1\09\89I\C9)\A9i\E9\19\99Y\D99\B9y\F9\05\85E\C5%\A5e\E5\15\95U\D55\B5u\F5\0D\8DM\CD-\ADm\ED\1D\9D]\DD=\BD}\FD\03\83C\C3#\A3c\E3\13\93S\D33\B3s\F3\0B\8BK\CB+\ABk\EB\1B\9B[\DB;\BB{\FB\07\87G\C7'\A7g\E7\17\97W\D77\B7w\F7\0F\8FO\CF/\AFo\EF\1F\9F_\DF?\BF\7F\FF", [64 x i8] zeroinitializer }, align 32
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 506, i32 3 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 375, i32 4 }
@___asan_gen_.29 = private unnamed_addr constant [20 x i8] c"beethoven_fur_elise\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 82, i32 35 }
@___asan_gen_.32 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.35 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.38 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 270, i32 3 }
@___asan_gen_.41 = private unnamed_addr constant [10 x i8] c"sin_table\00", align 1
@___asan_gen_.42 = private unnamed_addr constant [30 x i8] c"../include/linux/fixp-arith.h\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 22, i32 18 }
@___asan_gen_.44 = private unnamed_addr constant [8 x i8] c"reverse\00", align 1
@___asan_gen_.45 = private constant [50 x i8] c"../drivers/media/test-drivers/vidtv/vidtv_s302m.c\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 50, i32 17 }
@llvm.compiler.used = appending global [17 x ptr] [ptr @vidtv_s302m_encoder_destroy._entry, ptr @vidtv_s302m_encoder_destroy._entry_ptr, ptr @vidtv_s302m_get_sample._entry, ptr @vidtv_s302m_get_sample._entry_ptr, ptr @vidtv_s302m_write_frames._entry, ptr @vidtv_s302m_write_frames._entry_ptr, ptr @vidtv_s302m_encoder_destroy._rs, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @vidtv_s302m_write_frames._rs, ptr @.str.3, ptr @beethoven_fur_elise, ptr @vidtv_s302m_get_sample._rs, ptr @.str.4, ptr @sin_table, ptr @reverse], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidtv_s302m_encoder_destroy._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidtv_s302m_encoder_destroy._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidtv_s302m_write_frames._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidtv_s302m_write_frames._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @beethoven_fur_elise to i32), i32 1432, i32 1792, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidtv_s302m_get_sample._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidtv_s302m_get_sample._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sin_table to i32), i32 364, i32 448, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reverse to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @vidtv_s302m_encoder_init([7 x i32] %args.coerce) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %args.coerce.fca.0.extract = extractvalue [7 x i32] %args.coerce, 0
  %0 = inttoptr i32 %args.coerce.fca.0.extract to ptr
  %args.coerce.fca.1.extract = extractvalue [7 x i32] %args.coerce, 1
  %1 = inttoptr i32 %args.coerce.fca.1.extract to ptr
  %args.coerce.fca.2.extract = extractvalue [7 x i32] %args.coerce, 2
  %args.coerce.fca.3.extract = extractvalue [7 x i32] %args.coerce, 3
  %args.sroa.9.12.extract.shift = lshr i32 %args.coerce.fca.3.extract, 16
  %args.sroa.9.12.extract.trunc = trunc i32 %args.sroa.9.12.extract.shift to i16
  %args.coerce.fca.4.extract = extractvalue [7 x i32] %args.coerce, 4
  %2 = inttoptr i32 %args.coerce.fca.4.extract to ptr
  %args.coerce.fca.5.extract = extractvalue [7 x i32] %args.coerce, 5
  %3 = inttoptr i32 %args.coerce.fca.5.extract to ptr
  %args.coerce.fca.6.extract = extractvalue [7 x i32] %args.coerce, 6
  %4 = inttoptr i32 %args.coerce.fca.6.extract to ptr
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 88) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %call7.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %args.coerce.fca.0.extract)
  %tobool1.not = icmp eq i32 %args.coerce.fca.0.extract, 0
  br i1 %tobool1.not, label %if.end.if.end6_crit_edge, label %if.then2

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call4 = tail call noalias ptr @kstrdup(ptr noundef nonnull %0, i32 noundef 3264) #6
  %name5 = getelementptr inbounds %struct.vidtv_encoder, ptr %call7.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %name5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call4, ptr %name5, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then2, %if.end.if.end6_crit_edge
  %call7 = tail call noalias ptr @vzalloc(i32 noundef 65024) #10
  %encoder_buf = getelementptr inbounds %struct.vidtv_encoder, ptr %call7.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %encoder_buf to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call7, ptr %encoder_buf, align 8
  %encoder_buf_sz = getelementptr inbounds %struct.vidtv_encoder, ptr %call7.i.i, i32 0, i32 3
  %9 = ptrtoint ptr %encoder_buf_sz to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 65024, ptr %encoder_buf_sz, align 4
  %encoder_buf_offset = getelementptr inbounds %struct.vidtv_encoder, ptr %call7.i.i, i32 0, i32 4
  %10 = ptrtoint ptr %encoder_buf_offset to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %encoder_buf_offset, align 8
  %sample_count = getelementptr inbounds %struct.vidtv_encoder, ptr %call7.i.i, i32 0, i32 5
  %11 = ptrtoint ptr %sample_count to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 0, ptr %sample_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %args.coerce.fca.1.extract)
  %tobool8.not = icmp eq i32 %args.coerce.fca.1.extract, 0
  %src_buf10 = getelementptr inbounds %struct.vidtv_encoder, ptr %call7.i.i, i32 0, i32 7
  %12 = ptrtoint ptr %src_buf10 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %1, ptr %src_buf10, align 4
  %cond16 = select i1 %tobool8.not, i32 0, i32 %args.coerce.fca.2.extract
  %src_buf_sz17 = getelementptr inbounds %struct.vidtv_encoder, ptr %call7.i.i, i32 0, i32 8
  %13 = ptrtoint ptr %src_buf_sz17 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %cond16, ptr %src_buf_sz17, align 8
  %src_buf_offset = getelementptr inbounds %struct.vidtv_encoder, ptr %call7.i.i, i32 0, i32 9
  %14 = ptrtoint ptr %src_buf_offset to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %src_buf_offset, align 4
  %is_video_encoder = getelementptr inbounds %struct.vidtv_encoder, ptr %call7.i.i, i32 0, i32 10
  %15 = ptrtoint ptr %is_video_encoder to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %is_video_encoder, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %16 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i74 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 3520, i32 noundef 24) #9
  %tobool19.not = icmp eq ptr %call7.i.i74, null
  br i1 %tobool19.not, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

if.end21:                                         ; preds = %if.end6
  %ctx22 = getelementptr inbounds %struct.vidtv_encoder, ptr %call7.i.i, i32 0, i32 11
  %17 = ptrtoint ptr %ctx22 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call7.i.i74, ptr %ctx22, align 4
  %last_duration = getelementptr inbounds %struct.vidtv_s302m_ctx, ptr %call7.i.i74, i32 0, i32 3
  %18 = ptrtoint ptr %last_duration to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %last_duration, align 4
  %encode = getelementptr inbounds %struct.vidtv_encoder, ptr %call7.i.i, i32 0, i32 14
  %19 = ptrtoint ptr %encode to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @vidtv_s302m_encode, ptr %encode, align 4
  %clear = getelementptr inbounds %struct.vidtv_encoder, ptr %call7.i.i, i32 0, i32 15
  %20 = ptrtoint ptr %clear to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @vidtv_s302m_clear, ptr %clear, align 8
  %es_pid23 = getelementptr inbounds %struct.vidtv_encoder, ptr %call7.i.i, i32 0, i32 13
  %21 = ptrtoint ptr %es_pid23 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %args.sroa.9.12.extract.trunc, ptr %es_pid23, align 2
  %stream_id = getelementptr inbounds %struct.vidtv_encoder, ptr %call7.i.i, i32 0, i32 12
  %22 = ptrtoint ptr %stream_id to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 189, ptr %stream_id, align 8
  %sync24 = getelementptr inbounds %struct.vidtv_encoder, ptr %call7.i.i, i32 0, i32 16
  %23 = ptrtoint ptr %sync24 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %2, ptr %sync24, align 4
  %sampling_rate_hz = getelementptr inbounds %struct.vidtv_encoder, ptr %call7.i.i, i32 0, i32 17
  %24 = ptrtoint ptr %sampling_rate_hz to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 48000, ptr %sampling_rate_hz, align 8
  %last_sample_cb25 = getelementptr inbounds %struct.vidtv_encoder, ptr %call7.i.i, i32 0, i32 18
  %25 = ptrtoint ptr %last_sample_cb25 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %3, ptr %last_sample_cb25, align 4
  %destroy = getelementptr inbounds %struct.vidtv_encoder, ptr %call7.i.i, i32 0, i32 19
  %26 = ptrtoint ptr %destroy to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @vidtv_s302m_encoder_destroy, ptr %destroy, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %args.coerce.fca.6.extract)
  %tobool26.not = icmp eq i32 %args.coerce.fca.6.extract, 0
  br i1 %tobool26.not, label %if.end21.if.end35_crit_edge, label %if.end21.while.cond_crit_edge

if.end21.while.cond_crit_edge:                    ; preds = %if.end21
  br label %while.cond

if.end21.if.end35_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end35

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %if.end21.while.cond_crit_edge
  %args.sroa.15.0 = phi ptr [ %28, %while.cond.while.cond_crit_edge ], [ %4, %if.end21.while.cond_crit_edge ]
  %next = getelementptr inbounds %struct.vidtv_encoder, ptr %args.sroa.15.0, i32 0, i32 20
  %27 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %next, align 4
  %tobool29.not = icmp eq ptr %28, null
  br i1 %tobool29.not, label %while.end, label %while.cond.while.cond_crit_edge

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #8
  %next.le = getelementptr inbounds %struct.vidtv_encoder, ptr %args.sroa.15.0, i32 0, i32 20
  %29 = ptrtoint ptr %next.le to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call7.i.i, ptr %next.le, align 4
  br label %if.end35

if.end35:                                         ; preds = %while.end, %if.end21.if.end35_crit_edge
  %next36 = getelementptr inbounds %struct.vidtv_encoder, ptr %call7.i.i, i32 0, i32 20
  %30 = ptrtoint ptr %next36 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %next36, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %if.then20, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i, %if.end35 ], [ null, %if.then20 ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vzalloc(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @vidtv_s302m_encode(ptr noundef %e) #0 align 64 {
entry:
  %f.i.i = alloca %struct.vidtv_s302m_frame_16, align 1
  %h.i.i = alloca %struct.vidtv_smpte_s302m_es, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx1 = getelementptr inbounds %struct.vidtv_encoder, ptr %e, i32 0, i32 11
  %0 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx1, align 4
  %access_units.i = getelementptr inbounds %struct.vidtv_encoder, ptr %e, i32 0, i32 6
  %2 = ptrtoint ptr %access_units.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %access_units.i, align 8
  %tobool.not5.i = icmp eq ptr %3, null
  br i1 %tobool.not5.i, label %entry.vidtv_s302m_access_unit_destroy.exit_crit_edge, label %entry.while.body.i_crit_edge

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

entry.vidtv_s302m_access_unit_destroy.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %vidtv_s302m_access_unit_destroy.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %head.06.i = phi ptr [ %5, %while.body.i.while.body.i_crit_edge ], [ %3, %entry.while.body.i_crit_edge ]
  %next.i = getelementptr inbounds %struct.vidtv_access_unit, ptr %head.06.i, i32 0, i32 5
  %4 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %next.i, align 8
  tail call void @kfree(ptr noundef nonnull %head.06.i) #6
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %while.body.i.vidtv_s302m_access_unit_destroy.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

while.body.i.vidtv_s302m_access_unit_destroy.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %vidtv_s302m_access_unit_destroy.exit

vidtv_s302m_access_unit_destroy.exit:             ; preds = %while.body.i.vidtv_s302m_access_unit_destroy.exit_crit_edge, %entry.vidtv_s302m_access_unit_destroy.exit_crit_edge
  %6 = ptrtoint ptr %access_units.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %access_units.i, align 8
  %sync.i = getelementptr inbounds %struct.vidtv_encoder, ptr %e, i32 0, i32 16
  %7 = ptrtoint ptr %sync.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sync.i, align 4
  %tobool.not.i15 = icmp eq ptr %8, null
  br i1 %tobool.not.i15, label %vidtv_s302m_access_unit_destroy.exit.if.end10.i_crit_edge, label %land.lhs.true.i

vidtv_s302m_access_unit_destroy.exit.if.end10.i_crit_edge: ; preds = %vidtv_s302m_access_unit_destroy.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10.i

land.lhs.true.i:                                  ; preds = %vidtv_s302m_access_unit_destroy.exit
  %is_video_encoder.i = getelementptr inbounds %struct.vidtv_encoder, ptr %8, i32 0, i32 10
  %9 = ptrtoint ptr %is_video_encoder.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %is_video_encoder.i, align 8, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool2.not.i = icmp eq i8 %10, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.if.end10.i_crit_edge, label %if.then.i

land.lhs.true.i.if.end10.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10.i

if.then.i:                                        ; preds = %land.lhs.true.i
  %access_units.i16 = getelementptr inbounds %struct.vidtv_encoder, ptr %8, i32 0, i32 6
  %11 = ptrtoint ptr %access_units.i16 to i32
  call void @__asan_load4_noabort(i32 %11)
  %sync_au.023.i = load ptr, ptr %access_units.i16, align 8
  %tobool4.not24.i = icmp eq ptr %sync_au.023.i, null
  br i1 %tobool4.not24.i, label %if.then.i.vidtv_s302m_alloc_au.exit_crit_edge, label %if.then.i.while.body.i17_crit_edge

if.then.i.while.body.i17_crit_edge:               ; preds = %if.then.i
  br label %while.body.i17

if.then.i.vidtv_s302m_alloc_au.exit_crit_edge:    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %vidtv_s302m_alloc_au.exit

while.body.i17:                                   ; preds = %if.end.i.while.body.i17_crit_edge, %if.then.i.while.body.i17_crit_edge
  %sync_au.025.i = phi ptr [ %sync_au.0.i, %if.end.i.while.body.i17_crit_edge ], [ %sync_au.023.i, %if.then.i.while.body.i17_crit_edge ]
  %12 = ptrtoint ptr %access_units.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %access_units.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %14 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 3520, i32 noundef 40) #9
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  %tobool1.not.i.i = icmp eq ptr %13, null
  %or.cond.i.i = or i1 %tobool1.not.i.i, %tobool.not.i.i
  br i1 %or.cond.i.i, label %while.body.i17.vidtv_s302m_access_unit_init.exit.i_crit_edge, label %while.body.i17.while.cond.i.i_crit_edge

while.body.i17.while.cond.i.i_crit_edge:          ; preds = %while.body.i17
  br label %while.cond.i.i

while.body.i17.vidtv_s302m_access_unit_init.exit.i_crit_edge: ; preds = %while.body.i17
  call void @__sanitizer_cov_trace_pc() #8
  br label %vidtv_s302m_access_unit_init.exit.i

while.cond.i.i:                                   ; preds = %while.cond.i.i.while.cond.i.i_crit_edge, %while.body.i17.while.cond.i.i_crit_edge
  %head.addr.0.i.i = phi ptr [ %16, %while.cond.i.i.while.cond.i.i_crit_edge ], [ %13, %while.body.i17.while.cond.i.i_crit_edge ]
  %next.i.i = getelementptr inbounds %struct.vidtv_access_unit, ptr %head.addr.0.i.i, i32 0, i32 5
  %15 = ptrtoint ptr %next.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %next.i.i, align 8
  %tobool3.not.i.i = icmp eq ptr %16, null
  br i1 %tobool3.not.i.i, label %while.end.i.i, label %while.cond.i.i.while.cond.i.i_crit_edge

while.cond.i.i.while.cond.i.i_crit_edge:          ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i.i

while.end.i.i:                                    ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %next.i.i.le = getelementptr inbounds %struct.vidtv_access_unit, ptr %head.addr.0.i.i, i32 0, i32 5
  %17 = ptrtoint ptr %next.i.i.le to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call7.i.i.i.i, ptr %next.i.i.le, align 8
  br label %vidtv_s302m_access_unit_init.exit.i

vidtv_s302m_access_unit_init.exit.i:              ; preds = %while.end.i.i, %while.body.i17.vidtv_s302m_access_unit_init.exit.i_crit_edge
  %18 = ptrtoint ptr %access_units.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %access_units.i, align 8
  %tobool7.not.i = icmp eq ptr %19, null
  br i1 %tobool7.not.i, label %if.then8.i, label %vidtv_s302m_access_unit_init.exit.i.if.end.i_crit_edge

vidtv_s302m_access_unit_init.exit.i.if.end.i_crit_edge: ; preds = %vidtv_s302m_access_unit_init.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then8.i:                                       ; preds = %vidtv_s302m_access_unit_init.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %access_units.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call7.i.i.i.i, ptr %access_units.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then8.i, %vidtv_s302m_access_unit_init.exit.i.if.end.i_crit_edge
  %next.i18 = getelementptr inbounds %struct.vidtv_access_unit, ptr %sync_au.025.i, i32 0, i32 5
  %21 = ptrtoint ptr %next.i18 to i32
  call void @__asan_load4_noabort(i32 %21)
  %sync_au.0.i = load ptr, ptr %next.i18, align 8
  %tobool4.not.i = icmp eq ptr %sync_au.0.i, null
  br i1 %tobool4.not.i, label %if.end.i.vidtv_s302m_alloc_au.exit_crit_edge, label %if.end.i.while.body.i17_crit_edge

if.end.i.while.body.i17_crit_edge:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i17

if.end.i.vidtv_s302m_alloc_au.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %vidtv_s302m_alloc_au.exit

if.end10.i:                                       ; preds = %land.lhs.true.i.if.end10.i_crit_edge, %vidtv_s302m_access_unit_destroy.exit.if.end10.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %22 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i21.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %22, i32 noundef 3520, i32 noundef 40) #9
  %23 = ptrtoint ptr %access_units.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call7.i.i.i21.i, ptr %access_units.i, align 8
  br label %vidtv_s302m_alloc_au.exit

vidtv_s302m_alloc_au.exit:                        ; preds = %if.end10.i, %if.end.i.vidtv_s302m_alloc_au.exit_crit_edge, %if.then.i.vidtv_s302m_alloc_au.exit_crit_edge
  %24 = ptrtoint ptr %sync.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sync.i, align 4
  %tobool.not = icmp eq ptr %25, null
  br i1 %tobool.not, label %vidtv_s302m_alloc_au.exit.if.else_crit_edge, label %land.lhs.true

vidtv_s302m_alloc_au.exit.if.else_crit_edge:      ; preds = %vidtv_s302m_alloc_au.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

land.lhs.true:                                    ; preds = %vidtv_s302m_alloc_au.exit
  %is_video_encoder = getelementptr inbounds %struct.vidtv_encoder, ptr %25, i32 0, i32 10
  %26 = ptrtoint ptr %is_video_encoder to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %is_video_encoder, align 8, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool3.not = icmp eq i8 %27, 0
  br i1 %tobool3.not, label %land.lhs.true.if.else_crit_edge, label %if.then

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  %access_units.i20 = getelementptr inbounds %struct.vidtv_encoder, ptr %25, i32 0, i32 6
  %28 = ptrtoint ptr %access_units.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %au.015.i = load ptr, ptr %access_units.i, align 8
  %29 = ptrtoint ptr %access_units.i20 to i32
  call void @__asan_load4_noabort(i32 %29)
  %sync_au.016.i = load ptr, ptr %access_units.i20, align 8
  %tobool.not17.i = icmp eq ptr %au.015.i, null
  %tobool5.not18.i = icmp eq ptr %sync_au.016.i, null
  %or.cond19.i = select i1 %tobool.not17.i, i1 true, i1 %tobool5.not18.i
  br i1 %or.cond19.i, label %if.then.vidtv_s302m_compute_sample_count_from_video.exit_crit_edge, label %while.body.lr.ph.i21

if.then.vidtv_s302m_compute_sample_count_from_video.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %vidtv_s302m_compute_sample_count_from_video.exit

while.body.lr.ph.i21:                             ; preds = %if.then
  %sampling_rate_hz3.i = getelementptr inbounds %struct.vidtv_encoder, ptr %e, i32 0, i32 17
  %30 = ptrtoint ptr %sampling_rate_hz3.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %sampling_rate_hz3.i, align 8
  %div4.i = udiv i32 1000000, %31
  %sampling_rate_hz.i = getelementptr inbounds %struct.vidtv_encoder, ptr %25, i32 0, i32 17
  %32 = ptrtoint ptr %sampling_rate_hz.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %sampling_rate_hz.i, align 8
  %div.i = udiv i32 1000000, %33
  %add.i = add nsw i32 %div4.i, -1
  %sub.i = add nsw i32 %add.i, %div.i
  %div6.i = udiv i32 %sub.i, %div4.i
  br label %while.body.i25

while.body.i25:                                   ; preds = %while.body.i25.while.body.i25_crit_edge, %while.body.lr.ph.i21
  %sync_au.021.i = phi ptr [ %sync_au.016.i, %while.body.lr.ph.i21 ], [ %sync_au.0.i23, %while.body.i25.while.body.i25_crit_edge ]
  %au.020.i = phi ptr [ %au.015.i, %while.body.lr.ph.i21 ], [ %au.0.i, %while.body.i25.while.body.i25_crit_edge ]
  %34 = ptrtoint ptr %au.020.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %div6.i, ptr %au.020.i, align 8
  %next.i22 = getelementptr inbounds %struct.vidtv_access_unit, ptr %au.020.i, i32 0, i32 5
  %next7.i = getelementptr inbounds %struct.vidtv_access_unit, ptr %sync_au.021.i, i32 0, i32 5
  %35 = ptrtoint ptr %next.i22 to i32
  call void @__asan_load4_noabort(i32 %35)
  %au.0.i = load ptr, ptr %next.i22, align 8
  %36 = ptrtoint ptr %next7.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %sync_au.0.i23 = load ptr, ptr %next7.i, align 8
  %tobool.not.i24 = icmp eq ptr %au.0.i, null
  %tobool5.not.i = icmp eq ptr %sync_au.0.i23, null
  %or.cond.i = select i1 %tobool.not.i24, i1 true, i1 %tobool5.not.i
  br i1 %or.cond.i, label %while.body.i25.vidtv_s302m_compute_sample_count_from_video.exit_crit_edge, label %while.body.i25.while.body.i25_crit_edge

while.body.i25.while.body.i25_crit_edge:          ; preds = %while.body.i25
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i25

while.body.i25.vidtv_s302m_compute_sample_count_from_video.exit_crit_edge: ; preds = %while.body.i25
  call void @__sanitizer_cov_trace_pc() #8
  br label %vidtv_s302m_compute_sample_count_from_video.exit

vidtv_s302m_compute_sample_count_from_video.exit: ; preds = %while.body.i25.vidtv_s302m_compute_sample_count_from_video.exit_crit_edge, %if.then.vidtv_s302m_compute_sample_count_from_video.exit_crit_edge
  %37 = ptrtoint ptr %sync.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %sync.i, align 4
  %access_units1.i28 = getelementptr inbounds %struct.vidtv_encoder, ptr %38, i32 0, i32 6
  %39 = ptrtoint ptr %access_units1.i28 to i32
  call void @__asan_load4_noabort(i32 %39)
  %sync_au.010.i = load ptr, ptr %access_units1.i28, align 8
  %40 = ptrtoint ptr %access_units.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %au.011.i = load ptr, ptr %access_units.i, align 8
  %tobool.not12.i = icmp eq ptr %au.011.i, null
  %tobool2.not13.i = icmp eq ptr %sync_au.010.i, null
  %or.cond14.i = select i1 %tobool.not12.i, i1 true, i1 %tobool2.not13.i
  br i1 %or.cond14.i, label %vidtv_s302m_compute_sample_count_from_video.exit.if.end_crit_edge, label %vidtv_s302m_compute_sample_count_from_video.exit.while.body.i35_crit_edge

vidtv_s302m_compute_sample_count_from_video.exit.while.body.i35_crit_edge: ; preds = %vidtv_s302m_compute_sample_count_from_video.exit
  br label %while.body.i35

vidtv_s302m_compute_sample_count_from_video.exit.if.end_crit_edge: ; preds = %vidtv_s302m_compute_sample_count_from_video.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

while.body.i35:                                   ; preds = %while.body.i35.while.body.i35_crit_edge, %vidtv_s302m_compute_sample_count_from_video.exit.while.body.i35_crit_edge
  %au.016.i = phi ptr [ %au.0.i31, %while.body.i35.while.body.i35_crit_edge ], [ %au.011.i, %vidtv_s302m_compute_sample_count_from_video.exit.while.body.i35_crit_edge ]
  %sync_au.015.i = phi ptr [ %sync_au.0.i30, %while.body.i35.while.body.i35_crit_edge ], [ %sync_au.010.i, %vidtv_s302m_compute_sample_count_from_video.exit.while.body.i35_crit_edge ]
  %pts.i = getelementptr inbounds %struct.vidtv_access_unit, ptr %sync_au.015.i, i32 0, i32 1
  %41 = ptrtoint ptr %pts.i to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %pts.i, align 8
  %pts3.i = getelementptr inbounds %struct.vidtv_access_unit, ptr %au.016.i, i32 0, i32 1
  %43 = ptrtoint ptr %pts3.i to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 %42, ptr %pts3.i, align 8
  %next.i29 = getelementptr inbounds %struct.vidtv_access_unit, ptr %au.016.i, i32 0, i32 5
  %next4.i = getelementptr inbounds %struct.vidtv_access_unit, ptr %sync_au.015.i, i32 0, i32 5
  %44 = ptrtoint ptr %next4.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %sync_au.0.i30 = load ptr, ptr %next4.i, align 8
  %45 = ptrtoint ptr %next.i29 to i32
  call void @__asan_load4_noabort(i32 %45)
  %au.0.i31 = load ptr, ptr %next.i29, align 8
  %tobool.not.i32 = icmp eq ptr %au.0.i31, null
  %tobool2.not.i33 = icmp eq ptr %sync_au.0.i30, null
  %or.cond.i34 = select i1 %tobool.not.i32, i1 true, i1 %tobool2.not.i33
  br i1 %or.cond.i34, label %while.body.i35.if.endthread-pre-split_crit_edge, label %while.body.i35.while.body.i35_crit_edge

while.body.i35.while.body.i35_crit_edge:          ; preds = %while.body.i35
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i35

while.body.i35.if.endthread-pre-split_crit_edge:  ; preds = %while.body.i35
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.endthread-pre-split

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %vidtv_s302m_alloc_au.exit.if.else_crit_edge
  %46 = ptrtoint ptr %access_units.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %access_units.i, align 8
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 1115, ptr %47, align 8
  %au_count = getelementptr inbounds %struct.vidtv_s302m_ctx, ptr %1, i32 0, i32 2
  %49 = ptrtoint ptr %au_count to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %au_count, align 4
  %mul = mul i32 %50, 2090
  %add = add i32 %mul, 100000
  %conv = zext i32 %add to i64
  %51 = load ptr, ptr %access_units.i, align 8
  %pts = getelementptr inbounds %struct.vidtv_access_unit, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %pts to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 %conv, ptr %pts, align 8
  br label %if.endthread-pre-split

if.endthread-pre-split:                           ; preds = %if.else, %while.body.i35.if.endthread-pre-split_crit_edge
  %53 = ptrtoint ptr %access_units.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %au.051.i.pr = load ptr, ptr %access_units.i, align 8
  br label %if.end

if.end:                                           ; preds = %if.endthread-pre-split, %vidtv_s302m_compute_sample_count_from_video.exit.if.end_crit_edge
  %au.051.i = phi ptr [ %au.051.i.pr, %if.endthread-pre-split ], [ %au.011.i, %vidtv_s302m_compute_sample_count_from_video.exit.if.end_crit_edge ]
  %tobool.not52.i = icmp eq ptr %au.051.i, null
  br i1 %tobool.not52.i, label %if.end.vidtv_s302m_write_frames.exit_crit_edge, label %while.body.lr.ph.i37

if.end.vidtv_s302m_write_frames.exit_crit_edge:   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %vidtv_s302m_write_frames.exit

while.body.lr.ph.i37:                             ; preds = %if.end
  %54 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ctx1, align 4
  %encoder_buf.i.i = getelementptr inbounds %struct.vidtv_encoder, ptr %e, i32 0, i32 2
  %encoder_buf_offset.i.i = getelementptr inbounds %struct.vidtv_encoder, ptr %e, i32 0, i32 4
  %encoder_buf_sz.i.i = getelementptr inbounds %struct.vidtv_encoder, ptr %e, i32 0, i32 3
  %src_buf.i.i = getelementptr inbounds %struct.vidtv_encoder, ptr %e, i32 0, i32 7
  %src_buf_offset26.i.i = getelementptr inbounds %struct.vidtv_encoder, ptr %e, i32 0, i32 9
  %src_buf_sz.i.i = getelementptr inbounds %struct.vidtv_encoder, ptr %e, i32 0, i32 8
  %last_sample_cb.i.i = getelementptr inbounds %struct.vidtv_encoder, ptr %e, i32 0, i32 18
  %sample_count.i.i = getelementptr inbounds %struct.vidtv_encoder, ptr %e, i32 0, i32 5
  %arrayidx8.i.i = getelementptr inbounds [5 x i8], ptr %f.i.i, i32 0, i32 1
  %arrayidx14.i.i = getelementptr inbounds [5 x i8], ptr %f.i.i, i32 0, i32 2
  %arrayidx20.i.i = getelementptr inbounds [5 x i8], ptr %f.i.i, i32 0, i32 3
  %arrayidx26.i.i = getelementptr inbounds [5 x i8], ptr %f.i.i, i32 0, i32 4
  %au_count.i = getelementptr inbounds %struct.vidtv_s302m_ctx, ptr %55, i32 0, i32 2
  br label %while.body.i38

while.body.i38:                                   ; preds = %if.end18.i.while.body.i38_crit_edge, %while.body.lr.ph.i37
  %au.054.i = phi ptr [ %au.051.i, %while.body.lr.ph.i37 ], [ %au.0.i45, %if.end18.i.while.body.i38_crit_edge ]
  %nbytes.053.i = phi i32 [ 0, %while.body.lr.ph.i37 ], [ %add19.i, %if.end18.i.while.body.i38_crit_edge ]
  %56 = ptrtoint ptr %au.054.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %au.054.i, align 8
  %mul.i = mul i32 %57, 5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %h.i.i) #6
  %shl.i.i = mul i32 %57, 327680
  %58 = ptrtoint ptr %h.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %shl.i.i, ptr %h.i.i, align 4
  %59 = ptrtoint ptr %encoder_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %encoder_buf.i.i, align 8
  %61 = ptrtoint ptr %encoder_buf_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %encoder_buf_offset.i.i, align 8
  %63 = ptrtoint ptr %encoder_buf_sz.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %encoder_buf_sz.i.i, align 4
  %call.i.i = call i32 @vidtv_memcpy(ptr noundef %60, i32 noundef %62, i32 noundef %64, ptr noundef nonnull %h.i.i, i32 noundef 4) #6
  %65 = ptrtoint ptr %encoder_buf_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %encoder_buf_offset.i.i, align 8
  %add2.i.i = add i32 %66, %call.i.i
  store i32 %add2.i.i, ptr %encoder_buf_offset.i.i, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %h.i.i) #6
  %67 = ptrtoint ptr %au.054.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %au.054.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %cmp48.not.i = icmp eq i32 %68, 0
  br i1 %cmp48.not.i, label %while.body.i38.for.end.i_crit_edge, label %while.body.i38.for.body.i_crit_edge

while.body.i38.for.body.i_crit_edge:              ; preds = %while.body.i38
  br label %for.body.i

while.body.i38.for.end.i_crit_edge:               ; preds = %while.body.i38
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.body.i:                                       ; preds = %if.end.i43.for.body.i_crit_edge, %while.body.i38.for.body.i_crit_edge
  %j.050.i = phi i32 [ %inc7.i, %if.end.i43.for.body.i_crit_edge ], [ 0, %while.body.i38.for.body.i_crit_edge ]
  %nbytes_per_unit.049.i = phi i32 [ %add.i40, %if.end.i43.for.body.i_crit_edge ], [ %call.i.i, %while.body.i38.for.body.i_crit_edge ]
  %69 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %ctx1, align 4
  %71 = ptrtoint ptr %src_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %src_buf.i.i, align 4
  %tobool.not.i.i39 = icmp eq ptr %72, null
  br i1 %tobool.not.i.i39, label %if.then.i.i, label %if.end25.i.i

if.then.i.i:                                      ; preds = %for.body.i
  %last_duration.i.i = getelementptr inbounds %struct.vidtv_s302m_ctx, ptr %70, i32 0, i32 3
  %73 = ptrtoint ptr %last_duration.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %last_duration.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %74)
  %cmp.i.i = icmp slt i32 %74, 1
  br i1 %cmp.i.i, label %if.then2.i.i, label %if.else.i.i

if.then2.i.i:                                     ; preds = %if.then.i.i
  %75 = ptrtoint ptr %src_buf_offset26.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %src_buf_offset26.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 178, i32 %76)
  %cmp3.i.i = icmp ugt i32 %76, 178
  br i1 %cmp3.i.i, label %if.then4.i.i, label %if.then2.i.i.if.end.i.i_crit_edge

if.then2.i.i.if.end.i.i_crit_edge:                ; preds = %if.then2.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

if.then4.i.i:                                     ; preds = %if.then2.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %77 = ptrtoint ptr %src_buf_offset26.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 0, ptr %src_buf_offset26.i.i, align 4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then4.i.i, %if.then2.i.i.if.end.i.i_crit_edge
  %78 = ptrtoint ptr %src_buf_offset26.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %src_buf_offset26.i.i, align 4
  %arrayidx.i.i = getelementptr [179 x %struct.tone_duration], ptr @beethoven_fur_elise, i32 0, i32 %79
  %80 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx.i.i, align 4
  %last_tone.i.i = getelementptr inbounds %struct.vidtv_s302m_ctx, ptr %70, i32 0, i32 5
  %82 = ptrtoint ptr %last_tone.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %81, ptr %last_tone.i.i, align 4
  %83 = load i32, ptr %src_buf_offset26.i.i, align 4
  %duration.i.i = getelementptr [179 x %struct.tone_duration], ptr @beethoven_fur_elise, i32 0, i32 %83, i32 1
  %84 = ptrtoint ptr %duration.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %duration.i.i, align 4
  %mul.i.i = mul i32 %85, 48000
  %div9.i.i = sdiv i32 %mul.i.i, 500
  %86 = ptrtoint ptr %last_duration.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %div9.i.i, ptr %last_duration.i.i, align 4
  %87 = load i32, ptr %src_buf_offset26.i.i, align 4
  %inc.i.i = add i32 %87, 1
  store i32 %inc.i.i, ptr %src_buf_offset26.i.i, align 4
  %note_offset.i.i = getelementptr inbounds %struct.vidtv_s302m_ctx, ptr %70, i32 0, i32 4
  %88 = ptrtoint ptr %note_offset.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 0, ptr %note_offset.i.i, align 4
  br label %if.end13.i.i

if.else.i.i:                                      ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %dec.i.i = add nsw i32 %74, -1
  %89 = ptrtoint ptr %last_duration.i.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %dec.i.i, ptr %last_duration.i.i, align 4
  br label %if.end13.i.i

if.end13.i.i:                                     ; preds = %if.else.i.i, %if.end.i.i
  %last_tone14.i.i = getelementptr inbounds %struct.vidtv_s302m_ctx, ptr %70, i32 0, i32 5
  %90 = ptrtoint ptr %last_tone14.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %last_tone14.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %tobool15.not.i.i = icmp eq i32 %91, 0
  br i1 %tobool15.not.i.i, label %if.end13.i.i.vidtv_s302m_get_sample.exit.i_crit_edge, label %if.end17.i.i

if.end13.i.i.vidtv_s302m_get_sample.exit.i_crit_edge: ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %vidtv_s302m_get_sample.exit.i

if.end17.i.i:                                     ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %note_offset18.i.i = getelementptr inbounds %struct.vidtv_s302m_ctx, ptr %70, i32 0, i32 4
  %92 = ptrtoint ptr %note_offset18.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %note_offset18.i.i, align 4
  %mul19.i.i = mul i32 %91, 360
  %mul21.i.i = mul i32 %mul19.i.i, %93
  %div22.i.i = udiv i32 %mul21.i.i, 48000
  %inc24.i.i = add i32 %93, 1
  store i32 %inc24.i.i, ptr %note_offset18.i.i, align 4
  %rem.i.i = urem i32 %div22.i.i, 360
  %94 = trunc i32 %rem.i.i to i16
  %rem13.lhs.trunc.i.i.i = add nuw nsw i16 %94, 360
  %rem134.i.i.i = urem i16 %rem13.lhs.trunc.i.i.i, 360
  %rem13.zext.i.i.i = zext i16 %rem134.i.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 180, i16 %rem134.i.i.i)
  %cmp.i.i.i.i = icmp ugt i16 %rem134.i.i.i, 180
  %sub.i.i.i.i = add nsw i32 %rem13.zext.i.i.i, -180
  %spec.select.i.i.i.i = select i1 %cmp.i.i.i.i, i32 %sub.i.i.i.i, i32 %rem13.zext.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 90, i32 %spec.select.i.i.i.i)
  %cmp1.i.i.i.i = icmp ugt i32 %spec.select.i.i.i.i, 90
  %sub3.i.i.i.i = sub nuw nsw i32 180, %spec.select.i.i.i.i
  %degrees.addr.1.i.i.i.i = select i1 %cmp1.i.i.i.i, i32 %sub3.i.i.i.i, i32 %spec.select.i.i.i.i
  %arrayidx.i.i.i.i = getelementptr [91 x i32], ptr @sin_table, i32 0, i32 %degrees.addr.1.i.i.i.i
  %95 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %sub5.i.i.i.i = sub i32 0, %96
  %cond.i.i.i.i = select i1 %cmp.i.i.i.i, i32 %sub5.i.i.i.i, i32 %96
  %97 = lshr i32 %cond.i.i.i.i, 16
  %98 = trunc i32 %97 to i16
  %conv.i.i = xor i16 %98, -32768
  br label %vidtv_s302m_get_sample.exit.i

if.end25.i.i:                                     ; preds = %for.body.i
  %99 = ptrtoint ptr %src_buf_offset26.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %src_buf_offset26.i.i, align 4
  %101 = ptrtoint ptr %src_buf_sz.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %src_buf_sz.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %100, i32 %102)
  %cmp27.i.i = icmp ugt i32 %100, %102
  br i1 %cmp27.i.i, label %if.then29.i.i, label %if.end25.i.i.if.end38.i.i_crit_edge

if.end25.i.i.if.end38.i.i_crit_edge:              ; preds = %if.end25.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38.i.i

if.then29.i.i:                                    ; preds = %if.end25.i.i
  %call30.i.i = call i32 @___ratelimit(ptr noundef nonnull @vidtv_s302m_get_sample._rs, ptr noundef nonnull @__func__.vidtv_s302m_get_sample) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i.i)
  %tobool31.not.i.i = icmp eq i32 %call30.i.i, 0
  br i1 %tobool31.not.i.i, label %if.then29.i.i.if.end36.i.i_crit_edge, label %do.end.i.i

if.then29.i.i.if.end36.i.i_crit_edge:             ; preds = %if.then29.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36.i.i

do.end.i.i:                                       ; preds = %if.then29.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %103 = ptrtoint ptr %src_buf_offset26.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %src_buf_offset26.i.i, align 4
  %105 = ptrtoint ptr %src_buf_sz.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %src_buf_sz.i.i, align 8
  %call35.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.vidtv_s302m_get_sample, i32 noundef 272, i32 noundef %104, i32 noundef %106) #11
  br label %if.end36.i.i

if.end36.i.i:                                     ; preds = %do.end.i.i, %if.then29.i.i.if.end36.i.i_crit_edge
  %107 = ptrtoint ptr %src_buf_offset26.i.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 0, ptr %src_buf_offset26.i.i, align 4
  br label %if.end38.i.i

if.end38.i.i:                                     ; preds = %if.end36.i.i, %if.end25.i.i.if.end38.i.i_crit_edge
  %108 = ptrtoint ptr %src_buf_offset26.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %src_buf_offset26.i.i, align 4
  %110 = ptrtoint ptr %src_buf_sz.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %src_buf_sz.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %109, i32 %111)
  %cmp41.not.i.i = icmp ult i32 %109, %111
  br i1 %cmp41.not.i.i, label %if.end38.i.i.if.end50.i.i_crit_edge, label %if.then43.i.i

if.end38.i.i.if.end50.i.i_crit_edge:              ; preds = %if.end38.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50.i.i

if.then43.i.i:                                    ; preds = %if.end38.i.i
  %112 = ptrtoint ptr %last_sample_cb.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %last_sample_cb.i.i, align 4
  %tobool44.not.i.i = icmp eq ptr %113, null
  br i1 %tobool44.not.i.i, label %if.then43.i.i.if.end48.i.i_crit_edge, label %if.then45.i.i

if.then43.i.i.if.end48.i.i_crit_edge:             ; preds = %if.then43.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end48.i.i

if.then45.i.i:                                    ; preds = %if.then43.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %114 = ptrtoint ptr %sample_count.i.i to i32
  call void @__asan_load8_noabort(i32 %114)
  %115 = load i64, ptr %sample_count.i.i, align 8
  %conv47.i.i = trunc i64 %115 to i32
  call void %113(i32 noundef %conv47.i.i) #6
  br label %if.end48.i.i

if.end48.i.i:                                     ; preds = %if.then45.i.i, %if.then43.i.i.if.end48.i.i_crit_edge
  %116 = ptrtoint ptr %src_buf_offset26.i.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 0, ptr %src_buf_offset26.i.i, align 4
  br label %if.end50.i.i

if.end50.i.i:                                     ; preds = %if.end48.i.i, %if.end38.i.i.if.end50.i.i_crit_edge
  %117 = ptrtoint ptr %src_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %src_buf.i.i, align 4
  %119 = ptrtoint ptr %src_buf_offset26.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %src_buf_offset26.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %118, i32 %120
  %121 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %121)
  %122 = load i16, ptr %add.ptr.i.i, align 2
  br label %vidtv_s302m_get_sample.exit.i

vidtv_s302m_get_sample.exit.i:                    ; preds = %if.end50.i.i, %if.end17.i.i, %if.end13.i.i.vidtv_s302m_get_sample.exit.i_crit_edge
  %retval.0.i.i = phi i16 [ %122, %if.end50.i.i ], [ %conv.i.i, %if.end17.i.i ], [ -32768, %if.end13.i.i.vidtv_s302m_get_sample.exit.i_crit_edge ]
  %123 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %ctx1, align 4
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %f.i.i) #6
  %frame_index.i.i = getelementptr inbounds %struct.vidtv_s302m_ctx, ptr %124, i32 0, i32 1
  %125 = ptrtoint ptr %frame_index.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %frame_index.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %126)
  %cmp.i43.i = icmp eq i32 %126, 0
  %127 = lshr i16 %retval.0.i.i, 8
  %and10.i.i = shl i16 %retval.0.i.i, 4
  %conv11.i.i = select i1 %cmp.i43.i, i16 16, i16 0
  %and16.i.i = lshr i16 %retval.0.i.i, 4
  %128 = lshr i16 %retval.0.i.i, 12
  %conv3.mask.i.i = and i16 %retval.0.i.i, 255
  %idxprom.i.i = zext i16 %conv3.mask.i.i to i32
  %arrayidx29.i.i = getelementptr [256 x i8], ptr @reverse, i32 0, i32 %idxprom.i.i
  %129 = ptrtoint ptr %arrayidx29.i.i to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %arrayidx29.i.i, align 1
  %131 = ptrtoint ptr %f.i.i to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 %130, ptr %f.i.i, align 1
  %idxprom34.i.i = zext i16 %127 to i32
  %arrayidx35.i.i = getelementptr [256 x i8], ptr @reverse, i32 0, i32 %idxprom34.i.i
  %132 = ptrtoint ptr %arrayidx35.i.i to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %arrayidx35.i.i, align 1
  %134 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 %133, ptr %arrayidx8.i.i, align 1
  %and10.masked.i.i = and i16 %and10.i.i, 240
  %conv12.mask.i.i = or i16 %conv11.i.i, %and10.masked.i.i
  %idxprom40.i.i = zext i16 %conv12.mask.i.i to i32
  %arrayidx41.i.i = getelementptr [256 x i8], ptr @reverse, i32 0, i32 %idxprom40.i.i
  %135 = ptrtoint ptr %arrayidx41.i.i to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %arrayidx41.i.i, align 1
  %137 = ptrtoint ptr %arrayidx14.i.i to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 %136, ptr %arrayidx14.i.i, align 1
  %conv18.mask.i.i = and i16 %and16.i.i, 255
  %idxprom46.i.i = zext i16 %conv18.mask.i.i to i32
  %arrayidx47.i.i = getelementptr [256 x i8], ptr @reverse, i32 0, i32 %idxprom46.i.i
  %138 = ptrtoint ptr %arrayidx47.i.i to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %arrayidx47.i.i, align 1
  %140 = ptrtoint ptr %arrayidx20.i.i to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 %139, ptr %arrayidx20.i.i, align 1
  %idxprom52.i.i = zext i16 %128 to i32
  %arrayidx53.i.i = getelementptr [256 x i8], ptr @reverse, i32 0, i32 %idxprom52.i.i
  %141 = ptrtoint ptr %arrayidx53.i.i to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %arrayidx53.i.i, align 1
  %143 = ptrtoint ptr %arrayidx26.i.i to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 %142, ptr %arrayidx26.i.i, align 1
  %144 = ptrtoint ptr %encoder_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %encoder_buf.i.i, align 8
  %146 = ptrtoint ptr %encoder_buf_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %encoder_buf_offset.i.i, align 8
  %call.i46.i = call i32 @vidtv_memcpy(ptr noundef %145, i32 noundef %147, i32 noundef 65024, ptr noundef nonnull %f.i.i, i32 noundef 5) #6
  %148 = ptrtoint ptr %encoder_buf_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %encoder_buf_offset.i.i, align 8
  %add57.i.i = add i32 %149, %call.i46.i
  store i32 %add57.i.i, ptr %encoder_buf_offset.i.i, align 8
  %150 = ptrtoint ptr %frame_index.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %frame_index.i.i, align 4
  %inc.i47.i = add i32 %151, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 191, i32 %inc.i47.i)
  %cmp60.i.i = icmp ugt i32 %inc.i47.i, 191
  %spec.select.i.i = select i1 %cmp60.i.i, i32 0, i32 %inc.i47.i
  %152 = ptrtoint ptr %frame_index.i.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %spec.select.i.i, ptr %frame_index.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %f.i.i) #6
  %add.i40 = add i32 %call.i46.i, %nbytes_per_unit.049.i
  %153 = ptrtoint ptr %src_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %src_buf.i.i, align 4
  %tobool5.not.i41 = icmp eq ptr %154, null
  br i1 %tobool5.not.i41, label %vidtv_s302m_get_sample.exit.i.if.end.i43_crit_edge, label %if.then.i42

vidtv_s302m_get_sample.exit.i.if.end.i43_crit_edge: ; preds = %vidtv_s302m_get_sample.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i43

if.then.i42:                                      ; preds = %vidtv_s302m_get_sample.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %155 = ptrtoint ptr %src_buf_offset26.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %src_buf_offset26.i.i, align 4
  %add6.i = add i32 %156, 2
  store i32 %add6.i, ptr %src_buf_offset26.i.i, align 4
  br label %if.end.i43

if.end.i43:                                       ; preds = %if.then.i42, %vidtv_s302m_get_sample.exit.i.if.end.i43_crit_edge
  %157 = ptrtoint ptr %sample_count.i.i to i32
  call void @__asan_load8_noabort(i32 %157)
  %158 = load i64, ptr %sample_count.i.i, align 8
  %inc.i = add i64 %158, 1
  store i64 %inc.i, ptr %sample_count.i.i, align 8
  %inc7.i = add nuw i32 %j.050.i, 1
  %159 = ptrtoint ptr %au.054.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %au.054.i, align 8
  %cmp.i = icmp ult i32 %inc7.i, %160
  br i1 %cmp.i, label %if.end.i43.for.body.i_crit_edge, label %if.end.i43.for.end.i_crit_edge

if.end.i43.for.end.i_crit_edge:                   ; preds = %if.end.i43
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

if.end.i43.for.body.i_crit_edge:                  ; preds = %if.end.i43
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.end.i:                                        ; preds = %if.end.i43.for.end.i_crit_edge, %while.body.i38.for.end.i_crit_edge
  %nbytes_per_unit.0.lcssa.i = phi i32 [ %call.i.i, %while.body.i38.for.end.i_crit_edge ], [ %add.i40, %if.end.i43.for.end.i_crit_edge ]
  %nbytes8.i = getelementptr inbounds %struct.vidtv_access_unit, ptr %au.054.i, i32 0, i32 3
  %161 = ptrtoint ptr %nbytes8.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 %nbytes_per_unit.0.lcssa.i, ptr %nbytes8.i, align 8
  %add9.i = add i32 %mul.i, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add9.i, i32 %nbytes_per_unit.0.lcssa.i)
  %cmp10.not.i = icmp eq i32 %add9.i, %nbytes_per_unit.0.lcssa.i
  br i1 %cmp10.not.i, label %for.end.i.if.end18.i_crit_edge, label %if.then11.i

for.end.i.if.end18.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18.i

if.then11.i:                                      ; preds = %for.end.i
  %call12.i = call i32 @___ratelimit(ptr noundef nonnull @vidtv_s302m_write_frames._rs, ptr noundef nonnull @__func__.vidtv_s302m_write_frames) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %if.then11.i.if.end18.i_crit_edge, label %do.end.i

if.then11.i.if.end18.i_crit_edge:                 ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18.i

do.end.i:                                         ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #8
  %call16.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.vidtv_s302m_write_frames, i32 noundef 377, i32 noundef %nbytes_per_unit.0.lcssa.i, i32 noundef %add9.i) #11
  br label %if.end18.i

if.end18.i:                                       ; preds = %do.end.i, %if.then11.i.if.end18.i_crit_edge, %for.end.i.if.end18.i_crit_edge
  %add19.i = add i32 %nbytes_per_unit.0.lcssa.i, %nbytes.053.i
  %offset.i = getelementptr inbounds %struct.vidtv_access_unit, ptr %au.054.i, i32 0, i32 4
  %162 = ptrtoint ptr %offset.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 %nbytes.053.i, ptr %offset.i, align 4
  %163 = ptrtoint ptr %au_count.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %au_count.i, align 4
  %inc20.i = add i32 %164, 1
  store i32 %inc20.i, ptr %au_count.i, align 4
  %next.i44 = getelementptr inbounds %struct.vidtv_access_unit, ptr %au.054.i, i32 0, i32 5
  %165 = ptrtoint ptr %next.i44 to i32
  call void @__asan_load4_noabort(i32 %165)
  %au.0.i45 = load ptr, ptr %next.i44, align 8
  %tobool.not.i46 = icmp eq ptr %au.0.i45, null
  br i1 %tobool.not.i46, label %if.end18.i.vidtv_s302m_write_frames.exit_crit_edge, label %if.end18.i.while.body.i38_crit_edge

if.end18.i.while.body.i38_crit_edge:              ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i38

if.end18.i.vidtv_s302m_write_frames.exit_crit_edge: ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %vidtv_s302m_write_frames.exit

vidtv_s302m_write_frames.exit:                    ; preds = %if.end18.i.vidtv_s302m_write_frames.exit_crit_edge, %if.end.vidtv_s302m_write_frames.exit_crit_edge
  %encoder_buf = getelementptr inbounds %struct.vidtv_encoder, ptr %e, i32 0, i32 2
  %166 = ptrtoint ptr %encoder_buf to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %encoder_buf, align 8
  ret ptr %167
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidtv_s302m_clear(ptr nocapture noundef %e) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %access_units = getelementptr inbounds %struct.vidtv_encoder, ptr %e, i32 0, i32 6
  %0 = ptrtoint ptr %access_units to i32
  call void @__asan_load4_noabort(i32 %0)
  %au.06 = load ptr, ptr %access_units, align 8
  %tobool.not7 = icmp eq ptr %au.06, null
  br i1 %tobool.not7, label %entry.vidtv_s302m_access_unit_destroy.exit_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.vidtv_s302m_access_unit_destroy.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %vidtv_s302m_access_unit_destroy.exit

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %au.09 = phi ptr [ %au.0, %while.body.while.body_crit_edge ], [ %au.06, %entry.while.body_crit_edge ]
  %count.08 = phi i32 [ %inc, %while.body.while.body_crit_edge ], [ 0, %entry.while.body_crit_edge ]
  %inc = add i32 %count.08, 1
  %next = getelementptr inbounds %struct.vidtv_access_unit, ptr %au.09, i32 0, i32 5
  %1 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %1)
  %au.0 = load ptr, ptr %next, align 8
  %tobool.not = icmp eq ptr %au.0, null
  br i1 %tobool.not, label %while.end, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.end:                                        ; preds = %while.body
  %2 = ptrtoint ptr %access_units to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pr = load ptr, ptr %access_units, align 8
  %tobool.not5.i = icmp eq ptr %.pr, null
  br i1 %tobool.not5.i, label %while.end.vidtv_s302m_access_unit_destroy.exit_crit_edge, label %while.end.while.body.i_crit_edge

while.end.while.body.i_crit_edge:                 ; preds = %while.end
  br label %while.body.i

while.end.vidtv_s302m_access_unit_destroy.exit_crit_edge: ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %vidtv_s302m_access_unit_destroy.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.end.while.body.i_crit_edge
  %head.06.i = phi ptr [ %4, %while.body.i.while.body.i_crit_edge ], [ %.pr, %while.end.while.body.i_crit_edge ]
  %next.i = getelementptr inbounds %struct.vidtv_access_unit, ptr %head.06.i, i32 0, i32 5
  %3 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %next.i, align 8
  tail call void @kfree(ptr noundef nonnull %head.06.i) #6
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %while.body.i.vidtv_s302m_access_unit_destroy.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

while.body.i.vidtv_s302m_access_unit_destroy.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %vidtv_s302m_access_unit_destroy.exit

vidtv_s302m_access_unit_destroy.exit:             ; preds = %while.body.i.vidtv_s302m_access_unit_destroy.exit_crit_edge, %while.end.vidtv_s302m_access_unit_destroy.exit_crit_edge, %entry.vidtv_s302m_access_unit_destroy.exit_crit_edge
  %count.0.lcssa12 = phi i32 [ %inc, %while.end.vidtv_s302m_access_unit_destroy.exit_crit_edge ], [ 0, %entry.vidtv_s302m_access_unit_destroy.exit_crit_edge ], [ %inc, %while.body.i.vidtv_s302m_access_unit_destroy.exit_crit_edge ]
  %5 = ptrtoint ptr %access_units to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %access_units, align 8
  %encoder_buf = getelementptr inbounds %struct.vidtv_encoder, ptr %e, i32 0, i32 2
  %6 = ptrtoint ptr %encoder_buf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %encoder_buf, align 8
  %8 = call ptr @memset(ptr %7, i32 0, i32 65024)
  %encoder_buf_offset = getelementptr inbounds %struct.vidtv_encoder, ptr %e, i32 0, i32 4
  %9 = ptrtoint ptr %encoder_buf_offset to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %encoder_buf_offset, align 8
  ret i32 %count.0.lcssa12
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vidtv_s302m_encoder_destroy(ptr noundef %e) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %e to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %e, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end3, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i32 @___ratelimit(ptr noundef nonnull @vidtv_s302m_encoder_destroy._rs, ptr noundef nonnull @__func__.vidtv_s302m_encoder_destroy) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then.return_crit_edge, label %do.end

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.vidtv_s302m_encoder_destroy, i32 noundef 506) #11
  br label %return

if.end3:                                          ; preds = %entry
  %access_units.i = getelementptr inbounds %struct.vidtv_encoder, ptr %e, i32 0, i32 6
  %2 = ptrtoint ptr %access_units.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %access_units.i, align 8
  %tobool.not5.i = icmp eq ptr %3, null
  br i1 %tobool.not5.i, label %if.end3.vidtv_s302m_access_unit_destroy.exit_crit_edge, label %if.end3.while.body.i_crit_edge

if.end3.while.body.i_crit_edge:                   ; preds = %if.end3
  br label %while.body.i

if.end3.vidtv_s302m_access_unit_destroy.exit_crit_edge: ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %vidtv_s302m_access_unit_destroy.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end3.while.body.i_crit_edge
  %head.06.i = phi ptr [ %5, %while.body.i.while.body.i_crit_edge ], [ %3, %if.end3.while.body.i_crit_edge ]
  %next.i = getelementptr inbounds %struct.vidtv_access_unit, ptr %head.06.i, i32 0, i32 5
  %4 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %next.i, align 8
  tail call void @kfree(ptr noundef nonnull %head.06.i) #6
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %while.body.i.vidtv_s302m_access_unit_destroy.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

while.body.i.vidtv_s302m_access_unit_destroy.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %vidtv_s302m_access_unit_destroy.exit

vidtv_s302m_access_unit_destroy.exit:             ; preds = %while.body.i.vidtv_s302m_access_unit_destroy.exit_crit_edge, %if.end3.vidtv_s302m_access_unit_destroy.exit_crit_edge
  %6 = ptrtoint ptr %access_units.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %access_units.i, align 8
  %name = getelementptr inbounds %struct.vidtv_encoder, ptr %e, i32 0, i32 1
  %7 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %name, align 4
  tail call void @kfree(ptr noundef %8) #6
  %encoder_buf = getelementptr inbounds %struct.vidtv_encoder, ptr %e, i32 0, i32 2
  %9 = ptrtoint ptr %encoder_buf to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %encoder_buf, align 8
  tail call void @vfree(ptr noundef %10) #6
  %ctx = getelementptr inbounds %struct.vidtv_encoder, ptr %e, i32 0, i32 11
  %11 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ctx, align 4
  tail call void @kfree(ptr noundef %12) #6
  tail call void @kfree(ptr noundef %e) #6
  br label %return

return:                                           ; preds = %vidtv_s302m_access_unit_destroy.exit, %do.end, %if.then.return_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vidtv_memcpy(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { nounwind allocsize(0) }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !14, !16, !17, !18, !19, !20, !22, !24}
!llvm.module.flags = !{!26, !27, !28, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/test-drivers/vidtv/vidtv_s302m.c", i32 506, i32 3}
!2 = !{ptr @vidtv_s302m_encoder_destroy._rs, !1, !"_rs", i1 false, i1 false}
!3 = !{ptr @__func__.vidtv_s302m_encoder_destroy, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @vidtv_s302m_encoder_destroy._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @vidtv_s302m_encoder_destroy._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @vidtv_s302m_write_frames._rs, !9, !"_rs", i1 false, i1 false}
!9 = !{!"../drivers/media/test-drivers/vidtv/vidtv_s302m.c", i32 375, i32 4}
!10 = !{ptr @__func__.vidtv_s302m_write_frames, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @vidtv_s302m_write_frames._entry, !9, !"_entry", i1 false, i1 false}
!13 = !{ptr @vidtv_s302m_write_frames._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @vidtv_s302m_get_sample._rs, !15, !"_rs", i1 false, i1 false}
!15 = !{!"../drivers/media/test-drivers/vidtv/vidtv_s302m.c", i32 270, i32 3}
!16 = !{ptr @__func__.vidtv_s302m_get_sample, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @vidtv_s302m_get_sample._entry, !15, !"_entry", i1 false, i1 false}
!19 = !{ptr @vidtv_s302m_get_sample._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @beethoven_fur_elise, !21, !"beethoven_fur_elise", i1 false, i1 false}
!21 = !{!"../drivers/media/test-drivers/vidtv/vidtv_s302m.c", i32 82, i32 35}
!22 = !{ptr @sin_table, !23, !"sin_table", i1 false, i1 false}
!23 = !{!"../include/linux/fixp-arith.h", i32 22, i32 18}
!24 = !{ptr @reverse, !25, !"reverse", i1 false, i1 false}
!25 = !{!"../drivers/media/test-drivers/vidtv/vidtv_s302m.c", i32 50, i32 17}
!26 = !{i32 1, !"wchar_size", i32 2}
!27 = !{i32 1, !"min_enum_size", i32 4}
!28 = !{i32 8, !"branch-target-enforcement", i32 0}
!29 = !{i32 8, !"sign-return-address", i32 0}
!30 = !{i32 8, !"sign-return-address-all", i32 0}
!31 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!32 = !{i32 7, !"uwtable", i32 1}
!33 = !{i32 7, !"frame-pointer", i32 2}
!34 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!35 = !{i8 0, i8 2}
