; ModuleID = '/llk/IR_all_yes/drivers/isdn/mISDN/dsp_tones.c_pt.bc'
source_filename = "../drivers/isdn/mISDN/dsp_tones.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pattern = type { i32, [10 x ptr], [10 x ptr], [10 x i32] }
%struct.dsp = type { %struct.list_head, %struct.mISDNchannel, ptr, [64 x i8], i32, %struct.dsp_echo, i32, i32, i32, %struct.dsp_tone, %struct.dsp_dtmf, i32, i32, %struct.work_struct, %struct.sk_buff_head, i32, i32, i32, ptr, ptr, i32, i32, i32, i32, i32, [5 x i32], [5 x i32], [32768 x i8], [32768 x i8], i32, i32, i32, i32, %struct.dsp_features, i32, i32, i32, i32, i32, i32, i32, i32, [18 x i32], [1024 x i32], i32, [9 x i8], [9 x i8], i32, i32, [16 x i8], [9 x i8], i32, %struct.dsp_pipeline }
%struct.list_head = type { ptr, ptr }
%struct.mISDNchannel = type { %struct.list_head, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.dsp_echo = type { i32, i32 }
%struct.dsp_tone = type { i32, i32, i32, ptr, i32, i32, %struct.timer_list }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.dsp_dtmf = type { i32, i32, i32, i32, i32, [102 x i16], i8, i8, i32, [16 x i8] }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.sk_buff_head = type { %union.anon.94, i32, %struct.spinlock }
%union.anon.94 = type { %struct.anon.95 }
%struct.anon.95 = type { ptr, ptr }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.dsp_features = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dsp_pipeline = type { %struct.rwlock_t, %struct.list_head, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
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

@dsp_audio_alaw_to_ulaw = external dso_local local_unnamed_addr global [256 x i8], align 1
@dsp_silence = external dso_local local_unnamed_addr global i8, align 1
@dsp_debug = external dso_local local_unnamed_addr global i32, align 4
@dsp_tone_copy._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 407, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017%s: reaching next sequence (index=%d)\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dsp_tone_copy\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/isdn/mISDN/dsp_tones.c\00", [33 x i8] zeroinitializer }, align 32
@dsp_tone_copy._entry_ptr = internal global ptr @dsp_tone_copy._entry, section ".printk_index", align 4
@sample_silence = internal global { [96 x i8], [32 x i8] } { [96 x i8] c"************************************************************************************************", [32 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@dsp_tone._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 525, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\014dsp: given tone 0x%x is invalid\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dsp_tone\00", [23 x i8] zeroinitializer }, align 32
@dsp_tone._entry_ptr = internal global ptr @dsp_tone._entry, section ".printk_index", align 4
@dsp_tone._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.4, ptr @.str.2, i32 530, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\017%s: now starting tone %d (index=%d)\0A\00", [57 x i8] zeroinitializer }, align 32
@dsp_tone._entry_ptr.7 = internal global ptr @dsp_tone._entry.5, section ".printk_index", align 4
@sizeof_german_all = internal global { i32, [28 x i8] } { i32 76, [28 x i8] zeroinitializer }, align 32
@sample_german_all = internal global { [76 x i8], [52 x i8] } { [76 x i8] c"\80\AB\81m\FD\DD]\9DM\D1\89\88\D0L\9C\\\DC\FCl\80\AB\81m\FD\DD]\9DM\D1\89\88\D0L\9C\\\DC\FCl\80\AB\81m\FD\DD]\9DM\D1\89\88\D0L\9C\\\DC\FCl\80\AB\81m\FD\DD]\9DM\D1\89\88\D0L\9C\\\DC\FCl", [52 x i8] zeroinitializer }, align 32
@sizeof_german_old = internal global { i32, [28 x i8] } { i32 68, [28 x i8] zeroinitializer }, align 32
@sample_german_old = internal global { [68 x i8], [60 x i8] } { [68 x i8] c"\ECh\E1mm\91Q\EDm\01\1E\10\0C\90`p\8C\ECh\E1mm\91Q\EDm\01\1E\10\0C\90`p\8C\ECh\E1mm\91Q\EDm\01\1E\10\0C\90`p\8C\ECh\E1mm\91Q\EDm\01\1E\10\0C\90`p\8C", [60 x i8] zeroinitializer }, align 32
@sizeof_american_dialtone = internal global { i32, [28 x i8] } { i32 91, [28 x i8] zeroinitializer }, align 32
@sample_american_dialtone = internal global { [91 x i8], [37 x i8] } { [91 x i8] c"*\18\90lL\BCLl\10X2\B91-\8D\0D\8D-1\99\0F(`\F0\D0P\D00`\08\8Eg\09\19!\E1\D9\B9)g\83\02\CE\BE\EE\1A\1B\EF\BF\CF\03\82f(\B8\D8\E0 \18\08f\8F\09a1\D1Q\D1\F1a)\0E\980,\8C\0C\8C,0\B83Y\11mM\BDMm\91\19", [37 x i8] zeroinitializer }, align 32
@sizeof_american_ringing = internal global { i32, [28 x i8] } { i32 165, [28 x i8] zeroinitializer }, align 32
@sample_american_ringing = internal global { [165 x i8], [59 x i8] } { [165 x i8] c"*\E0\AC\0C\BCL\8C\90H\C7\C1\ED\CDM\CD\ED\C1\B7\080\EC\CC\CC\8C\10X\1A\99q\ED\8D\8D-A\89\9E p,\EC,p \86w\E11\11\D1\F1\81\09\A3VX\00@\C0`8FCW9\D9Y\99\C9w/.\C6\D6(\D66&.\8A\A3CcKJbB\A2\8B/'7\D7)\D7\C7/.v\C8\98X\D88VBG9a\C1A\01YW\A2\08\80\F0\D0\100\E0v\87!q-\ED-q!\9F\88@,\8C\8C\ECp\98\1BY\11\8D\CD\CD\ED1\09\B6\C0\EC\CCL\CC\EC\C0\C6I\91\8DM\BD\0D\AD\E1", [59 x i8] zeroinitializer }, align 32
@sizeof_american_busy = internal global { i32, [28 x i8] } { i32 116, [28 x i8] zeroinitializer }, align 32
@sample_american_busy = internal global { [116 x i8], [44 x i8] } { [116 x i8] c"*\00lLLl\B0f\99\11m\8D-A\D7\96`\F0p@X\F6SW\09\89\D7_\E3*\E3_\D7\89\09WS\F6X@p\F0`\96\D7A-\8Dm\11\99f\B0lLLl\00*\01mMMm\B1g\98\10l\8C,@\D6\97a\F1qAY\F7RV\08\88\D6^\E2*\E2^\D6\88\08VR\F7YAq\F1a\97\D6@,\8Cl\10\98g\B1mMMm\01", [44 x i8] zeroinitializer }, align 32
@sizeof_special1 = internal global { i32, [28 x i8] } { i32 59, [28 x i8] zeroinitializer }, align 32
@sample_special1 = internal global { [59 x i8], [37 x i8] } { [59 x i8] c"*,\BCl\D6q\BD\0D\D9\80\CCL@9\0D\BD\11\86\EC\BC\EC\0EQ\BD\8D\890L\CC\E0\E1\CDM1\88\8C\BCP\0F\ED\BD\ED\87\10\BC\0C8AM\CD\81\D8\0C\BCp\D7m\BD-", [37 x i8] zeroinitializer }, align 32
@sizeof_special2 = internal global { i32, [28 x i8] } { i32 80, [28 x i8] zeroinitializer }, align 32
@sample_special2 = internal global { [80 x i8], [48 x i8] } { [80 x i8] c"*\CC\8C\D7M-\18\BC\10\C1\BD\C1\10\BC\18-M\D7\8C\CC*\CD\8D\D6L,\19\BD\11\C0\BC\C0\11\BD\19,L\D6\8D\CD*\CC\8C\D7M-\18\BC\10\C1\BD\C1\10\BC\18-M\D7\8C\CC*\CD\8D\D6L,\19\BD\11\C0\BC\C0\11\BD\19,L\D6\8D\CD", [48 x i8] zeroinitializer }, align 32
@sizeof_special3 = internal global { i32, [28 x i8] } { i32 80, [28 x i8] zeroinitializer }, align 32
@sample_special3 = internal global { [80 x i8], [48 x i8] } { [80 x i8] c"*\BC\18\CD\11,\8C\C1M\D6\BC\D6M\C1\8C,\11\CD\18\BC*\BD\19\CC\10-\8D\C0L\D7\BD\D7L\C0\8D-\10\CC\19\BD*\BC\18\CD\11,\8C\C1M\D6\BC\D6M\C1\8C,\11\CD\18\BC*\BD\19\CC\10-\8D\C0L\D7\BD\D7L\C0\8D-\10\CC\19\BD", [48 x i8] zeroinitializer }, align 32
@sizeof_silence = internal global { i32, [28 x i8] } { i32 96, [28 x i8] zeroinitializer }, align 32
@pattern = internal global { <{ { i32, <{ ptr, [9 x ptr] }>, <{ ptr, [9 x ptr] }>, <{ i32, [9 x i32] }> }, { i32, <{ ptr, [9 x ptr] }>, <{ ptr, [9 x ptr] }>, <{ i32, [9 x i32] }> }, { i32, <{ ptr, [9 x ptr] }>, <{ ptr, [9 x ptr] }>, <{ i32, [9 x i32] }> }, %struct.pattern, %struct.pattern, %struct.pattern, { i32, <{ ptr, ptr, [8 x ptr] }>, <{ ptr, ptr, [8 x ptr] }>, <{ i32, i32, [8 x i32] }> }, { i32, <{ ptr, ptr, [8 x ptr] }>, <{ ptr, ptr, [8 x ptr] }>, <{ i32, i32, [8 x i32] }> }, { i32, <{ ptr, ptr, [8 x ptr] }>, <{ ptr, ptr, [8 x ptr] }>, <{ i32, i32, [8 x i32] }> }, %struct.pattern, %struct.pattern, %struct.pattern, { i32, <{ ptr, ptr, [8 x ptr] }>, <{ ptr, ptr, [8 x ptr] }>, <{ i32, i32, [8 x i32] }> }, { i32, <{ ptr, ptr, [8 x ptr] }>, <{ ptr, ptr, [8 x ptr] }>, <{ i32, i32, [8 x i32] }> }, { i32, <{ ptr, ptr, [8 x ptr] }>, <{ ptr, ptr, [8 x ptr] }>, <{ i32, i32, [8 x i32] }> }, { i32, <{ ptr, ptr, [8 x ptr] }>, <{ ptr, ptr, [8 x ptr] }>, <{ i32, i32, [8 x i32] }> }, { i32, <{ ptr, ptr, [8 x ptr] }>, <{ ptr, ptr, [8 x ptr] }>, <{ i32, i32, [8 x i32] }> }, { i32, <{ ptr, [9 x ptr] }>, <{ ptr, [9 x ptr] }>, <{ i32, [9 x i32] }> }, %struct.pattern, { i32, <{ ptr, ptr, [8 x ptr] }>, <{ ptr, ptr, [8 x ptr] }>, <{ i32, i32, [8 x i32] }> }, %struct.pattern, %struct.pattern }>, [696 x i8] } { <{ { i32, <{ ptr, [9 x ptr] }>, <{ ptr, [9 x ptr] }>, <{ i32, [9 x i32] }> }, { i32, <{ ptr, [9 x ptr] }>, <{ ptr, [9 x ptr] }>, <{ i32, [9 x i32] }> }, { i32, <{ ptr, [9 x ptr] }>, <{ ptr, [9 x ptr] }>, <{ i32, [9 x i32] }> }, %struct.pattern, %struct.pattern, %struct.pattern, { i32, <{ ptr, ptr, [8 x ptr] }>, <{ ptr, ptr, [8 x ptr] }>, <{ i32, i32, [8 x i32] }> }, { i32, <{ ptr, ptr, [8 x ptr] }>, <{ ptr, ptr, [8 x ptr] }>, <{ i32, i32, [8 x i32] }> }, { i32, <{ ptr, ptr, [8 x ptr] }>, <{ ptr, ptr, [8 x ptr] }>, <{ i32, i32, [8 x i32] }> }, %struct.pattern, %struct.pattern, %struct.pattern, { i32, <{ ptr, ptr, [8 x ptr] }>, <{ ptr, ptr, [8 x ptr] }>, <{ i32, i32, [8 x i32] }> }, { i32, <{ ptr, ptr, [8 x ptr] }>, <{ ptr, ptr, [8 x ptr] }>, <{ i32, i32, [8 x i32] }> }, { i32, <{ ptr, ptr, [8 x ptr] }>, <{ ptr, ptr, [8 x ptr] }>, <{ i32, i32, [8 x i32] }> }, { i32, <{ ptr, ptr, [8 x ptr] }>, <{ ptr, ptr, [8 x ptr] }>, <{ i32, i32, [8 x i32] }> }, { i32, <{ ptr, ptr, [8 x ptr] }>, <{ ptr, ptr, [8 x ptr] }>, <{ i32, i32, [8 x i32] }> }, { i32, <{ ptr, [9 x ptr] }>, <{ ptr, [9 x ptr] }>, <{ i32, [9 x i32] }> }, %struct.pattern, { i32, <{ ptr, ptr, [8 x ptr] }>, <{ ptr, ptr, [8 x ptr] }>, <{ i32, i32, [8 x i32] }> }, %struct.pattern, %struct.pattern }> <{ { i32, <{ ptr, [9 x ptr] }>, <{ ptr, [9 x ptr] }>, <{ i32, [9 x i32] }> } { i32 1, <{ ptr, [9 x ptr] }> <{ ptr @sample_german_all, [9 x ptr] zeroinitializer }>, <{ ptr, [9 x ptr] }> <{ ptr @sizeof_german_all, [9 x ptr] zeroinitializer }>, <{ i32, [9 x i32] }> <{ i32 1900, [9 x i32] zeroinitializer }> }, { i32, <{ ptr, [9 x ptr] }>, <{ ptr, [9 x ptr] }>, <{ i32, [9 x i32] }> } { i32 2, <{ ptr, [9 x ptr] }> <{ ptr @sample_german_old, [9 x ptr] zeroinitializer }>, <{ ptr, [9 x ptr] }> <{ ptr @sizeof_german_old, [9 x ptr] zeroinitializer }>, <{ i32, [9 x i32] }> <{ i32 1998, [9 x i32] zeroinitializer }> }, { i32, <{ ptr, [9 x ptr] }>, <{ ptr, [9 x ptr] }>, <{ i32, [9 x i32] }> } { i32 3, <{ ptr, [9 x ptr] }> <{ ptr @sample_american_dialtone, [9 x ptr] zeroinitializer }>, <{ ptr, [9 x ptr] }> <{ ptr @sizeof_american_dialtone, [9 x ptr] zeroinitializer }>, <{ i32, [9 x i32] }> <{ i32 8000, [9 x i32] zeroinitializer }> }, %struct.pattern { i32 4, [10 x ptr] [ptr @sample_german_all, ptr @sample_silence, ptr @sample_german_all, ptr @sample_silence, ptr @sample_german_all, ptr @sample_silence, ptr null, ptr null, ptr null, ptr null], [10 x ptr] [ptr @sizeof_german_all, ptr @sizeof_silence, ptr @sizeof_german_all, ptr @sizeof_silence, ptr @sizeof_german_all, ptr @sizeof_silence, ptr null, ptr null, ptr null, ptr null], [10 x i32] [i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 12000, i32 0, i32 0, i32 0, i32 0] }, %struct.pattern { i32 5, [10 x ptr] [ptr @sample_german_old, ptr @sample_silence, ptr @sample_german_old, ptr @sample_silence, ptr @sample_german_old, ptr @sample_silence, ptr null, ptr null, ptr null, ptr null], [10 x ptr] [ptr @sizeof_german_old, ptr @sizeof_silence, ptr @sizeof_german_old, ptr @sizeof_silence, ptr @sizeof_german_old, ptr @sizeof_silence, ptr null, ptr null, ptr null, ptr null], [10 x i32] [i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 12000, i32 0, i32 0, i32 0, i32 0] }, %struct.pattern { i32 6, [10 x ptr] [ptr @sample_american_dialtone, ptr @sample_silence, ptr @sample_american_dialtone, ptr @sample_silence, ptr @sample_american_dialtone, ptr @sample_silence, ptr null, ptr null, ptr null, ptr null], [10 x ptr] [ptr @sizeof_american_dialtone, ptr @sizeof_silence, ptr @sizeof_american_dialtone, ptr @sizeof_silence, ptr @sizeof_american_dialtone, ptr @sizeof_silence, ptr null, ptr null, ptr null, ptr null], [10 x i32] [i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 12000, i32 0, i32 0, i32 0, i32 0] }, { i32, <{ ptr, ptr, [8 x ptr] }>, <{ ptr, ptr, [8 x ptr] }>, <{ i32, i32, [8 x i32] }> } { i32 7, <{ ptr, ptr, [8 x ptr] }> <{ ptr @sample_german_all, ptr @sample_silence, [8 x ptr] zeroinitializer }>, <{ ptr, ptr, [8 x ptr] }> <{ ptr @sizeof_german_all, ptr @sizeof_silence, [8 x ptr] zeroinitializer }>, <{ i32, i32, [8 x i32] }> <{ i32 8000, i32 32000, [8 x i32] zeroinitializer }> }, { i32, <{ ptr, ptr, [8 x ptr] }>, <{ ptr, ptr, [8 x ptr] }>, <{ i32, i32, [8 x i32] }> } { i32 8, <{ ptr, ptr, [8 x ptr] }> <{ ptr @sample_german_old, ptr @sample_silence, [8 x ptr] zeroinitializer }>, <{ ptr, ptr, [8 x ptr] }> <{ ptr @sizeof_german_old, ptr @sizeof_silence, [8 x ptr] zeroinitializer }>, <{ i32, i32, [8 x i32] }> <{ i32 8000, i32 40000, [8 x i32] zeroinitializer }> }, { i32, <{ ptr, ptr, [8 x ptr] }>, <{ ptr, ptr, [8 x ptr] }>, <{ i32, i32, [8 x i32] }> } { i32 14, <{ ptr, ptr, [8 x ptr] }> <{ ptr @sample_american_ringing, ptr @sample_silence, [8 x ptr] zeroinitializer }>, <{ ptr, ptr, [8 x ptr] }> <{ ptr @sizeof_american_ringing, ptr @sizeof_silence, [8 x ptr] zeroinitializer }>, <{ i32, i32, [8 x i32] }> <{ i32 8000, i32 32000, [8 x i32] zeroinitializer }> }, %struct.pattern { i32 12, [10 x ptr] [ptr @sample_german_all, ptr @sample_silence, ptr @sample_german_all, ptr @sample_silence, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null], [10 x ptr] [ptr @sizeof_german_all, ptr @sizeof_silence, ptr @sizeof_german_all, ptr @sizeof_silence, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null], [10 x i32] [i32 4000, i32 4000, i32 4000, i32 28000, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0] }, %struct.pattern { i32 13, [10 x ptr] [ptr @sample_german_old, ptr @sample_silence, ptr @sample_german_old, ptr @sample_silence, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null], [10 x ptr] [ptr @sizeof_german_old, ptr @sizeof_silence, ptr @sizeof_german_old, ptr @sizeof_silence, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null], [10 x i32] [i32 4000, i32 4000, i32 4000, i32 28000, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0] }, %struct.pattern { i32 11, [10 x ptr] [ptr @sample_american_ringing, ptr @sample_silence, ptr @sample_american_ringing, ptr @sample_silence, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null], [10 x ptr] [ptr @sizeof_american_ringing, ptr @sizeof_silence, ptr @sizeof_american_ringing, ptr @sizeof_silence, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null], [10 x i32] [i32 4000, i32 4000, i32 4000, i32 28000, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0] }, { i32, <{ ptr, ptr, [8 x ptr] }>, <{ ptr, ptr, [8 x ptr] }>, <{ i32, i32, [8 x i32] }> } { i32 15, <{ ptr, ptr, [8 x ptr] }> <{ ptr @sample_german_all, ptr @sample_silence, [8 x ptr] zeroinitializer }>, <{ ptr, ptr, [8 x ptr] }> <{ ptr @sizeof_german_all, ptr @sizeof_silence, [8 x ptr] zeroinitializer }>, <{ i32, i32, [8 x i32] }> <{ i32 4000, i32 4000, [8 x i32] zeroinitializer }> }, { i32, <{ ptr, ptr, [8 x ptr] }>, <{ ptr, ptr, [8 x ptr] }>, <{ i32, i32, [8 x i32] }> } { i32 16, <{ ptr, ptr, [8 x ptr] }> <{ ptr @sample_german_old, ptr @sample_silence, [8 x ptr] zeroinitializer }>, <{ ptr, ptr, [8 x ptr] }> <{ ptr @sizeof_german_old, ptr @sizeof_silence, [8 x ptr] zeroinitializer }>, <{ i32, i32, [8 x i32] }> <{ i32 1000, i32 5000, [8 x i32] zeroinitializer }> }, { i32, <{ ptr, ptr, [8 x ptr] }>, <{ ptr, ptr, [8 x ptr] }>, <{ i32, i32, [8 x i32] }> } { i32 17, <{ ptr, ptr, [8 x ptr] }> <{ ptr @sample_american_busy, ptr @sample_silence, [8 x ptr] zeroinitializer }>, <{ ptr, ptr, [8 x ptr] }> <{ ptr @sizeof_american_busy, ptr @sizeof_silence, [8 x ptr] zeroinitializer }>, <{ i32, i32, [8 x i32] }> <{ i32 4000, i32 4000, [8 x i32] zeroinitializer }> }, { i32, <{ ptr, ptr, [8 x ptr] }>, <{ ptr, ptr, [8 x ptr] }>, <{ i32, i32, [8 x i32] }> } { i32 18, <{ ptr, ptr, [8 x ptr] }> <{ ptr @sample_german_all, ptr @sample_silence, [8 x ptr] zeroinitializer }>, <{ ptr, ptr, [8 x ptr] }> <{ ptr @sizeof_german_all, ptr @sizeof_silence, [8 x ptr] zeroinitializer }>, <{ i32, i32, [8 x i32] }> <{ i32 4000, i32 4000, [8 x i32] zeroinitializer }> }, { i32, <{ ptr, ptr, [8 x ptr] }>, <{ ptr, ptr, [8 x ptr] }>, <{ i32, i32, [8 x i32] }> } { i32 19, <{ ptr, ptr, [8 x ptr] }> <{ ptr @sample_german_old, ptr @sample_silence, [8 x ptr] zeroinitializer }>, <{ ptr, ptr, [8 x ptr] }> <{ ptr @sizeof_german_old, ptr @sizeof_silence, [8 x ptr] zeroinitializer }>, <{ i32, i32, [8 x i32] }> <{ i32 1000, i32 5000, [8 x i32] zeroinitializer }> }, { i32, <{ ptr, [9 x ptr] }>, <{ ptr, [9 x ptr] }>, <{ i32, [9 x i32] }> } { i32 20, <{ ptr, [9 x ptr] }> <{ ptr @sample_american_dialtone, [9 x ptr] zeroinitializer }>, <{ ptr, [9 x ptr] }> <{ ptr @sizeof_american_dialtone, [9 x ptr] zeroinitializer }>, <{ i32, [9 x i32] }> <{ i32 8000, [9 x i32] zeroinitializer }> }, %struct.pattern { i32 21, [10 x ptr] [ptr @sample_special1, ptr @sample_special2, ptr @sample_special3, ptr @sample_silence, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null], [10 x ptr] [ptr @sizeof_special1, ptr @sizeof_special2, ptr @sizeof_special3, ptr @sizeof_silence, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null], [10 x i32] [i32 2666, i32 2666, i32 2666, i32 8002, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0] }, { i32, <{ ptr, ptr, [8 x ptr] }>, <{ ptr, ptr, [8 x ptr] }>, <{ i32, i32, [8 x i32] }> } { i32 22, <{ ptr, ptr, [8 x ptr] }> <{ ptr @sample_german_all, ptr @sample_silence, [8 x ptr] zeroinitializer }>, <{ ptr, ptr, [8 x ptr] }> <{ ptr @sizeof_german_all, ptr @sizeof_silence, [8 x ptr] zeroinitializer }>, <{ i32, i32, [8 x i32] }> <{ i32 2000, i32 2000, [8 x i32] zeroinitializer }> }, %struct.pattern { i32 22, [10 x ptr] [ptr @sample_german_old, ptr @sample_silence, ptr @sample_german_old, ptr @sample_silence, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null], [10 x ptr] [ptr @sizeof_german_old, ptr @sizeof_silence, ptr @sizeof_german_old, ptr @sizeof_silence, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null], [10 x i32] [i32 1000, i32 5000, i32 1000, i32 17000, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0] }, %struct.pattern zeroinitializer }>, [696 x i8] zeroinitializer }, align 32
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 406, i32 5 }
@___asan_gen_.21 = private unnamed_addr constant [15 x i8] c"sample_silence\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 176, i32 11 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 525, i32 3 }
@___asan_gen_.33 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.36 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 529, i32 3 }
@___asan_gen_.39 = private unnamed_addr constant [18 x i8] c"sizeof_german_all\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 58, i32 12 }
@___asan_gen_.42 = private unnamed_addr constant [18 x i8] c"sample_german_all\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 44, i32 11 }
@___asan_gen_.45 = private unnamed_addr constant [18 x i8] c"sizeof_german_old\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 74, i32 12 }
@___asan_gen_.48 = private unnamed_addr constant [18 x i8] c"sample_german_old\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 60, i32 11 }
@___asan_gen_.51 = private unnamed_addr constant [25 x i8] c"sizeof_american_dialtone\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 90, i32 12 }
@___asan_gen_.54 = private unnamed_addr constant [25 x i8] c"sample_american_dialtone\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 76, i32 11 }
@___asan_gen_.57 = private unnamed_addr constant [24 x i8] c"sizeof_american_ringing\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 115, i32 12 }
@___asan_gen_.60 = private unnamed_addr constant [24 x i8] c"sample_american_ringing\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 92, i32 11 }
@___asan_gen_.63 = private unnamed_addr constant [21 x i8] c"sizeof_american_busy\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 134, i32 12 }
@___asan_gen_.66 = private unnamed_addr constant [21 x i8] c"sample_american_busy\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 117, i32 11 }
@___asan_gen_.69 = private unnamed_addr constant [16 x i8] c"sizeof_special1\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 146, i32 12 }
@___asan_gen_.72 = private unnamed_addr constant [16 x i8] c"sample_special1\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 136, i32 11 }
@___asan_gen_.75 = private unnamed_addr constant [16 x i8] c"sizeof_special2\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 160, i32 12 }
@___asan_gen_.78 = private unnamed_addr constant [16 x i8] c"sample_special2\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 148, i32 11 }
@___asan_gen_.81 = private unnamed_addr constant [16 x i8] c"sizeof_special3\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 174, i32 12 }
@___asan_gen_.84 = private unnamed_addr constant [16 x i8] c"sample_special3\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 162, i32 11 }
@___asan_gen_.87 = private unnamed_addr constant [15 x i8] c"sizeof_silence\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 190, i32 12 }
@___asan_gen_.90 = private unnamed_addr constant [8 x i8] c"pattern\00", align 1
@___asan_gen_.91 = private constant [34 x i8] c"../drivers/isdn/mISDN/dsp_tones.c\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 240, i32 3 }
@llvm.compiler.used = appending global [31 x ptr] [ptr @dsp_tone._entry, ptr @dsp_tone._entry.5, ptr @dsp_tone._entry_ptr, ptr @dsp_tone._entry_ptr.7, ptr @dsp_tone_copy._entry, ptr @dsp_tone_copy._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @sample_silence, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @sizeof_german_all, ptr @sample_german_all, ptr @sizeof_german_old, ptr @sample_german_old, ptr @sizeof_american_dialtone, ptr @sample_american_dialtone, ptr @sizeof_american_ringing, ptr @sample_american_ringing, ptr @sizeof_american_busy, ptr @sample_american_busy, ptr @sizeof_special1, ptr @sample_special1, ptr @sizeof_special2, ptr @sample_special2, ptr @sizeof_special3, ptr @sample_special3, ptr @sizeof_silence, ptr @pattern], section "llvm.metadata"
@0 = internal global [28 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_tone_copy._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sample_silence to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_tone._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_tone._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sizeof_german_all to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sample_german_all to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sizeof_german_old to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sample_german_old to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sizeof_american_dialtone to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sample_american_dialtone to i32), i32 91, i32 128, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sizeof_american_ringing to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sample_american_ringing to i32), i32 165, i32 224, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sizeof_american_busy to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sample_american_busy to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sizeof_special1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sample_special1 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sizeof_special2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sample_special2 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sizeof_special3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sample_special3 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sizeof_silence to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pattern to i32), i32 2728, i32 3424, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dsp_audio_generate_ulaw_samples() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @sizeof_german_all, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp20.not = icmp eq i32 %0, 0
  br i1 %cmp20.not, label %entry.while.end_crit_edge, label %while.body4.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.body4.lr.ph:                                ; preds = %entry
  %1 = load i32, ptr @sizeof_german_all, align 4
  br label %while.body4

while.body4:                                      ; preds = %while.body4.while.body4_crit_edge, %while.body4.lr.ph
  %j.021 = phi i32 [ 0, %while.body4.lr.ph ], [ %inc, %while.body4.while.body4_crit_edge ]
  %arrayidx6 = getelementptr i8, ptr @sample_german_all, i32 %j.021
  %2 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx6, align 1
  %idxprom = zext i8 %3 to i32
  %arrayidx7 = getelementptr [256 x i8], ptr @dsp_audio_alaw_to_ulaw, i32 0, i32 %idxprom
  %4 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx7, align 1
  store i8 %5, ptr %arrayidx6, align 1
  %inc = add nuw i32 %j.021, 1
  %cmp = icmp ult i32 %inc, %1
  br i1 %cmp, label %while.body4.while.body4_crit_edge, label %while.body4.while.end_crit_edge

while.body4.while.end_crit_edge:                  ; preds = %while.body4
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.body4.while.body4_crit_edge:                ; preds = %while.body4
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body4

while.end:                                        ; preds = %while.body4.while.end_crit_edge, %entry.while.end_crit_edge
  %6 = load i32, ptr @sizeof_german_old, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp20.not.1 = icmp eq i32 %6, 0
  br i1 %cmp20.not.1, label %while.end.while.end.1_crit_edge, label %while.body4.lr.ph.1

while.end.while.end.1_crit_edge:                  ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end.1

while.body4.lr.ph.1:                              ; preds = %while.end
  %7 = load i32, ptr @sizeof_german_old, align 4
  br label %while.body4.1

while.body4.1:                                    ; preds = %while.body4.1.while.body4.1_crit_edge, %while.body4.lr.ph.1
  %j.021.1 = phi i32 [ 0, %while.body4.lr.ph.1 ], [ %inc.1, %while.body4.1.while.body4.1_crit_edge ]
  %arrayidx6.1 = getelementptr i8, ptr @sample_german_old, i32 %j.021.1
  %8 = ptrtoint ptr %arrayidx6.1 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx6.1, align 1
  %idxprom.1 = zext i8 %9 to i32
  %arrayidx7.1 = getelementptr [256 x i8], ptr @dsp_audio_alaw_to_ulaw, i32 0, i32 %idxprom.1
  %10 = ptrtoint ptr %arrayidx7.1 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx7.1, align 1
  store i8 %11, ptr %arrayidx6.1, align 1
  %inc.1 = add nuw i32 %j.021.1, 1
  %cmp.1 = icmp ult i32 %inc.1, %7
  br i1 %cmp.1, label %while.body4.1.while.body4.1_crit_edge, label %while.body4.1.while.end.1_crit_edge

while.body4.1.while.end.1_crit_edge:              ; preds = %while.body4.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end.1

while.body4.1.while.body4.1_crit_edge:            ; preds = %while.body4.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body4.1

while.end.1:                                      ; preds = %while.body4.1.while.end.1_crit_edge, %while.end.while.end.1_crit_edge
  %12 = load i32, ptr @sizeof_american_dialtone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp20.not.2 = icmp eq i32 %12, 0
  br i1 %cmp20.not.2, label %while.end.1.while.end.2_crit_edge, label %while.body4.lr.ph.2

while.end.1.while.end.2_crit_edge:                ; preds = %while.end.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end.2

while.body4.lr.ph.2:                              ; preds = %while.end.1
  %13 = load i32, ptr @sizeof_american_dialtone, align 4
  br label %while.body4.2

while.body4.2:                                    ; preds = %while.body4.2.while.body4.2_crit_edge, %while.body4.lr.ph.2
  %j.021.2 = phi i32 [ 0, %while.body4.lr.ph.2 ], [ %inc.2, %while.body4.2.while.body4.2_crit_edge ]
  %arrayidx6.2 = getelementptr i8, ptr @sample_american_dialtone, i32 %j.021.2
  %14 = ptrtoint ptr %arrayidx6.2 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx6.2, align 1
  %idxprom.2 = zext i8 %15 to i32
  %arrayidx7.2 = getelementptr [256 x i8], ptr @dsp_audio_alaw_to_ulaw, i32 0, i32 %idxprom.2
  %16 = ptrtoint ptr %arrayidx7.2 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx7.2, align 1
  store i8 %17, ptr %arrayidx6.2, align 1
  %inc.2 = add nuw i32 %j.021.2, 1
  %cmp.2 = icmp ult i32 %inc.2, %13
  br i1 %cmp.2, label %while.body4.2.while.body4.2_crit_edge, label %while.body4.2.while.end.2_crit_edge

while.body4.2.while.end.2_crit_edge:              ; preds = %while.body4.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end.2

while.body4.2.while.body4.2_crit_edge:            ; preds = %while.body4.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body4.2

while.end.2:                                      ; preds = %while.body4.2.while.end.2_crit_edge, %while.end.1.while.end.2_crit_edge
  %18 = load i32, ptr @sizeof_american_ringing, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp20.not.3 = icmp eq i32 %18, 0
  br i1 %cmp20.not.3, label %while.end.2.while.end.3_crit_edge, label %while.body4.lr.ph.3

while.end.2.while.end.3_crit_edge:                ; preds = %while.end.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end.3

while.body4.lr.ph.3:                              ; preds = %while.end.2
  %19 = load i32, ptr @sizeof_american_ringing, align 4
  br label %while.body4.3

while.body4.3:                                    ; preds = %while.body4.3.while.body4.3_crit_edge, %while.body4.lr.ph.3
  %j.021.3 = phi i32 [ 0, %while.body4.lr.ph.3 ], [ %inc.3, %while.body4.3.while.body4.3_crit_edge ]
  %arrayidx6.3 = getelementptr i8, ptr @sample_american_ringing, i32 %j.021.3
  %20 = ptrtoint ptr %arrayidx6.3 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx6.3, align 1
  %idxprom.3 = zext i8 %21 to i32
  %arrayidx7.3 = getelementptr [256 x i8], ptr @dsp_audio_alaw_to_ulaw, i32 0, i32 %idxprom.3
  %22 = ptrtoint ptr %arrayidx7.3 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx7.3, align 1
  store i8 %23, ptr %arrayidx6.3, align 1
  %inc.3 = add nuw i32 %j.021.3, 1
  %cmp.3 = icmp ult i32 %inc.3, %19
  br i1 %cmp.3, label %while.body4.3.while.body4.3_crit_edge, label %while.body4.3.while.end.3_crit_edge

while.body4.3.while.end.3_crit_edge:              ; preds = %while.body4.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end.3

while.body4.3.while.body4.3_crit_edge:            ; preds = %while.body4.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body4.3

while.end.3:                                      ; preds = %while.body4.3.while.end.3_crit_edge, %while.end.2.while.end.3_crit_edge
  %24 = load i32, ptr @sizeof_american_busy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp20.not.4 = icmp eq i32 %24, 0
  br i1 %cmp20.not.4, label %while.end.3.while.end.4_crit_edge, label %while.body4.lr.ph.4

while.end.3.while.end.4_crit_edge:                ; preds = %while.end.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end.4

while.body4.lr.ph.4:                              ; preds = %while.end.3
  %25 = load i32, ptr @sizeof_american_busy, align 4
  br label %while.body4.4

while.body4.4:                                    ; preds = %while.body4.4.while.body4.4_crit_edge, %while.body4.lr.ph.4
  %j.021.4 = phi i32 [ 0, %while.body4.lr.ph.4 ], [ %inc.4, %while.body4.4.while.body4.4_crit_edge ]
  %arrayidx6.4 = getelementptr i8, ptr @sample_american_busy, i32 %j.021.4
  %26 = ptrtoint ptr %arrayidx6.4 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx6.4, align 1
  %idxprom.4 = zext i8 %27 to i32
  %arrayidx7.4 = getelementptr [256 x i8], ptr @dsp_audio_alaw_to_ulaw, i32 0, i32 %idxprom.4
  %28 = ptrtoint ptr %arrayidx7.4 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx7.4, align 1
  store i8 %29, ptr %arrayidx6.4, align 1
  %inc.4 = add nuw i32 %j.021.4, 1
  %cmp.4 = icmp ult i32 %inc.4, %25
  br i1 %cmp.4, label %while.body4.4.while.body4.4_crit_edge, label %while.body4.4.while.end.4_crit_edge

while.body4.4.while.end.4_crit_edge:              ; preds = %while.body4.4
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end.4

while.body4.4.while.body4.4_crit_edge:            ; preds = %while.body4.4
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body4.4

while.end.4:                                      ; preds = %while.body4.4.while.end.4_crit_edge, %while.end.3.while.end.4_crit_edge
  %30 = load i32, ptr @sizeof_special1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp20.not.5 = icmp eq i32 %30, 0
  br i1 %cmp20.not.5, label %while.end.4.while.end.5_crit_edge, label %while.body4.lr.ph.5

while.end.4.while.end.5_crit_edge:                ; preds = %while.end.4
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end.5

while.body4.lr.ph.5:                              ; preds = %while.end.4
  %31 = load i32, ptr @sizeof_special1, align 4
  br label %while.body4.5

while.body4.5:                                    ; preds = %while.body4.5.while.body4.5_crit_edge, %while.body4.lr.ph.5
  %j.021.5 = phi i32 [ 0, %while.body4.lr.ph.5 ], [ %inc.5, %while.body4.5.while.body4.5_crit_edge ]
  %arrayidx6.5 = getelementptr i8, ptr @sample_special1, i32 %j.021.5
  %32 = ptrtoint ptr %arrayidx6.5 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx6.5, align 1
  %idxprom.5 = zext i8 %33 to i32
  %arrayidx7.5 = getelementptr [256 x i8], ptr @dsp_audio_alaw_to_ulaw, i32 0, i32 %idxprom.5
  %34 = ptrtoint ptr %arrayidx7.5 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx7.5, align 1
  store i8 %35, ptr %arrayidx6.5, align 1
  %inc.5 = add nuw i32 %j.021.5, 1
  %cmp.5 = icmp ult i32 %inc.5, %31
  br i1 %cmp.5, label %while.body4.5.while.body4.5_crit_edge, label %while.body4.5.while.end.5_crit_edge

while.body4.5.while.end.5_crit_edge:              ; preds = %while.body4.5
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end.5

while.body4.5.while.body4.5_crit_edge:            ; preds = %while.body4.5
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body4.5

while.end.5:                                      ; preds = %while.body4.5.while.end.5_crit_edge, %while.end.4.while.end.5_crit_edge
  %36 = load i32, ptr @sizeof_special2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp20.not.6 = icmp eq i32 %36, 0
  br i1 %cmp20.not.6, label %while.end.5.while.end.6_crit_edge, label %while.body4.lr.ph.6

while.end.5.while.end.6_crit_edge:                ; preds = %while.end.5
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end.6

while.body4.lr.ph.6:                              ; preds = %while.end.5
  %37 = load i32, ptr @sizeof_special2, align 4
  br label %while.body4.6

while.body4.6:                                    ; preds = %while.body4.6.while.body4.6_crit_edge, %while.body4.lr.ph.6
  %j.021.6 = phi i32 [ 0, %while.body4.lr.ph.6 ], [ %inc.6, %while.body4.6.while.body4.6_crit_edge ]
  %arrayidx6.6 = getelementptr i8, ptr @sample_special2, i32 %j.021.6
  %38 = ptrtoint ptr %arrayidx6.6 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx6.6, align 1
  %idxprom.6 = zext i8 %39 to i32
  %arrayidx7.6 = getelementptr [256 x i8], ptr @dsp_audio_alaw_to_ulaw, i32 0, i32 %idxprom.6
  %40 = ptrtoint ptr %arrayidx7.6 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx7.6, align 1
  store i8 %41, ptr %arrayidx6.6, align 1
  %inc.6 = add nuw i32 %j.021.6, 1
  %cmp.6 = icmp ult i32 %inc.6, %37
  br i1 %cmp.6, label %while.body4.6.while.body4.6_crit_edge, label %while.body4.6.while.end.6_crit_edge

while.body4.6.while.end.6_crit_edge:              ; preds = %while.body4.6
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end.6

while.body4.6.while.body4.6_crit_edge:            ; preds = %while.body4.6
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body4.6

while.end.6:                                      ; preds = %while.body4.6.while.end.6_crit_edge, %while.end.5.while.end.6_crit_edge
  %42 = load i32, ptr @sizeof_special3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp20.not.7 = icmp eq i32 %42, 0
  br i1 %cmp20.not.7, label %while.end.6.while.end.7_crit_edge, label %while.body4.lr.ph.7

while.end.6.while.end.7_crit_edge:                ; preds = %while.end.6
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end.7

while.body4.lr.ph.7:                              ; preds = %while.end.6
  %43 = load i32, ptr @sizeof_special3, align 4
  br label %while.body4.7

while.body4.7:                                    ; preds = %while.body4.7.while.body4.7_crit_edge, %while.body4.lr.ph.7
  %j.021.7 = phi i32 [ 0, %while.body4.lr.ph.7 ], [ %inc.7, %while.body4.7.while.body4.7_crit_edge ]
  %arrayidx6.7 = getelementptr i8, ptr @sample_special3, i32 %j.021.7
  %44 = ptrtoint ptr %arrayidx6.7 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx6.7, align 1
  %idxprom.7 = zext i8 %45 to i32
  %arrayidx7.7 = getelementptr [256 x i8], ptr @dsp_audio_alaw_to_ulaw, i32 0, i32 %idxprom.7
  %46 = ptrtoint ptr %arrayidx7.7 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx7.7, align 1
  store i8 %47, ptr %arrayidx6.7, align 1
  %inc.7 = add nuw i32 %j.021.7, 1
  %cmp.7 = icmp ult i32 %inc.7, %43
  br i1 %cmp.7, label %while.body4.7.while.body4.7_crit_edge, label %while.body4.7.while.end.7_crit_edge

while.body4.7.while.end.7_crit_edge:              ; preds = %while.body4.7
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end.7

while.body4.7.while.body4.7_crit_edge:            ; preds = %while.body4.7
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body4.7

while.end.7:                                      ; preds = %while.body4.7.while.end.7_crit_edge, %while.end.6.while.end.7_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dsp_tone_copy(ptr nocapture noundef %dsp, ptr nocapture noundef writeonly %data, i32 noundef %len) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tone2 = getelementptr inbounds %struct.dsp, ptr %dsp, i32 0, i32 9, i32 2
  %0 = ptrtoint ptr %tone2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tone2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @dsp_silence to i32))
  %2 = load i8, ptr @dsp_silence, align 1
  %3 = zext i8 %2 to i32
  %4 = call ptr @memset(ptr %data, i32 %3, i32 %len)
  br label %cleanup

if.end:                                           ; preds = %entry
  %pattern = getelementptr inbounds %struct.dsp, ptr %dsp, i32 0, i32 9, i32 3
  %5 = ptrtoint ptr %pattern to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pattern, align 4
  %index3 = getelementptr inbounds %struct.dsp, ptr %dsp, i32 0, i32 9, i32 5
  %7 = ptrtoint ptr %index3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %index3, align 4
  %count4 = getelementptr inbounds %struct.dsp, ptr %dsp, i32 0, i32 9, i32 4
  %9 = ptrtoint ptr %count4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %count4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool5.not111 = icmp eq i32 %len, 0
  br i1 %tobool5.not111, label %if.end.while.end46_crit_edge, label %if.end.while.cond6.preheader_crit_edge

if.end.while.cond6.preheader_crit_edge:           ; preds = %if.end
  br label %while.cond6.preheader

if.end.while.end46_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end46

while.cond6.preheader:                            ; preds = %while.end.while.cond6.preheader_crit_edge, %if.end.while.cond6.preheader_crit_edge
  %data.addr.0115 = phi ptr [ %add.ptr43, %while.end.while.cond6.preheader_crit_edge ], [ %data, %if.end.while.cond6.preheader_crit_edge ]
  %count.0114 = phi i32 [ %add44, %while.end.while.cond6.preheader_crit_edge ], [ %10, %if.end.while.cond6.preheader_crit_edge ]
  %index.0113 = phi i32 [ %spec.select.lcssa, %while.end.while.cond6.preheader_crit_edge ], [ %8, %if.end.while.cond6.preheader_crit_edge ]
  %len.addr.0112 = phi i32 [ %sub45, %while.end.while.cond6.preheader_crit_edge ], [ %len, %if.end.while.cond6.preheader_crit_edge ]
  %arrayidx99 = getelementptr %struct.pattern, ptr %6, i32 0, i32 3, i32 %index.0113
  %11 = ptrtoint ptr %arrayidx99 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx99, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool8.not100 = icmp eq i32 %12, 0
  %spec.select101 = select i1 %tobool8.not100, i32 0, i32 %index.0113
  %spec.select97102 = select i1 %tobool8.not100, i32 0, i32 %count.0114
  %arrayidx12103 = getelementptr %struct.pattern, ptr %6, i32 0, i32 3, i32 %spec.select101
  %13 = ptrtoint ptr %arrayidx12103 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx12103, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %spec.select97102)
  %cmp104 = icmp ugt i32 %14, %spec.select97102
  br i1 %cmp104, label %while.cond6.preheader.while.end_crit_edge, label %while.cond6.preheader.if.end15_crit_edge

while.cond6.preheader.if.end15_crit_edge:         ; preds = %while.cond6.preheader
  br label %if.end15

while.cond6.preheader.while.end_crit_edge:        ; preds = %while.cond6.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

if.end15:                                         ; preds = %if.end18.if.end15_crit_edge, %while.cond6.preheader.if.end15_crit_edge
  %arrayidx12108 = phi ptr [ %arrayidx12, %if.end18.if.end15_crit_edge ], [ %arrayidx12103, %while.cond6.preheader.if.end15_crit_edge ]
  %spec.select97107 = phi i32 [ %spec.select97, %if.end18.if.end15_crit_edge ], [ %spec.select97102, %while.cond6.preheader.if.end15_crit_edge ]
  %spec.select105 = phi i32 [ %spec.select, %if.end18.if.end15_crit_edge ], [ %spec.select101, %while.cond6.preheader.if.end15_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dsp_debug to i32))
  %15 = load i32, ptr @dsp_debug, align 4
  %and = and i32 %15, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool16.not = icmp eq i32 %and, 0
  br i1 %tobool16.not, label %if.end15.if.end18_crit_edge, label %do.end

if.end15.if.end18_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end18

do.end:                                           ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %spec.select105) #7
  br label %if.end18

if.end18:                                         ; preds = %do.end, %if.end15.if.end18_crit_edge
  %16 = ptrtoint ptr %arrayidx12108 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx12108, align 4
  %sub = sub i32 %spec.select97107, %17
  %inc = add i32 %spec.select105, 1
  %arrayidx = getelementptr %struct.pattern, ptr %6, i32 0, i32 3, i32 %inc
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool8.not = icmp eq i32 %19, 0
  %spec.select = select i1 %tobool8.not, i32 0, i32 %inc
  %spec.select97 = select i1 %tobool8.not, i32 0, i32 %sub
  %arrayidx12 = getelementptr %struct.pattern, ptr %6, i32 0, i32 3, i32 %spec.select
  %20 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx12, align 4
  %cmp = icmp ugt i32 %21, %spec.select97
  br i1 %cmp, label %if.end18.while.end_crit_edge, label %if.end18.if.end15_crit_edge

if.end18.if.end15_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end15

if.end18.while.end_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.end:                                        ; preds = %if.end18.while.end_crit_edge, %while.cond6.preheader.while.end_crit_edge
  %spec.select.lcssa = phi i32 [ %spec.select101, %while.cond6.preheader.while.end_crit_edge ], [ %spec.select, %if.end18.while.end_crit_edge ]
  %spec.select97.lcssa = phi i32 [ %spec.select97102, %while.cond6.preheader.while.end_crit_edge ], [ %spec.select97, %if.end18.while.end_crit_edge ]
  %.lcssa = phi i32 [ %14, %while.cond6.preheader.while.end_crit_edge ], [ %21, %if.end18.while.end_crit_edge ]
  %arrayidx21 = getelementptr %struct.pattern, ptr %6, i32 0, i32 2, i32 %spec.select.lcssa
  %22 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx21, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 4
  %rem = urem i32 %spec.select97.lcssa, %25
  %add = add i32 %spec.select97.lcssa, %len.addr.0112
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %.lcssa)
  %cmp24 = icmp ugt i32 %add, %.lcssa
  %sub29 = sub i32 %.lcssa, %spec.select97.lcssa
  %spec.select98 = select i1 %cmp24, i32 %sub29, i32 %len.addr.0112
  %add31 = add i32 %rem, %spec.select98
  call void @__sanitizer_cov_trace_cmp4(i32 %add31, i32 %25)
  %cmp34 = icmp ugt i32 %add31, %25
  %sub39 = sub i32 %25, %rem
  %num.1 = select i1 %cmp34, i32 %sub39, i32 %spec.select98
  %arrayidx42 = getelementptr %struct.pattern, ptr %6, i32 0, i32 1, i32 %spec.select.lcssa
  %26 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx42, align 4
  %add.ptr = getelementptr i8, ptr %27, i32 %rem
  %28 = call ptr @memcpy(ptr %data.addr.0115, ptr %add.ptr, i32 %num.1)
  %add.ptr43 = getelementptr i8, ptr %data.addr.0115, i32 %num.1
  %add44 = add i32 %num.1, %spec.select97.lcssa
  %sub45 = sub i32 %len.addr.0112, %num.1
  %tobool5.not = icmp eq i32 %sub45, 0
  br i1 %tobool5.not, label %while.end.while.end46_crit_edge, label %while.end.while.cond6.preheader_crit_edge

while.end.while.cond6.preheader_crit_edge:        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond6.preheader

while.end.while.end46_crit_edge:                  ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end46

while.end46:                                      ; preds = %while.end.while.end46_crit_edge, %if.end.while.end46_crit_edge
  %index.0.lcssa = phi i32 [ %8, %if.end.while.end46_crit_edge ], [ %spec.select.lcssa, %while.end.while.end46_crit_edge ]
  %count.0.lcssa = phi i32 [ %10, %if.end.while.end46_crit_edge ], [ %add44, %while.end.while.end46_crit_edge ]
  %29 = ptrtoint ptr %index3 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %index.0.lcssa, ptr %index3, align 4
  %30 = ptrtoint ptr %count4 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %count.0.lcssa, ptr %count4, align 4
  br label %cleanup

cleanup:                                          ; preds = %while.end46, %if.then
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dsp_tone_timeout(ptr noundef %t) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %pattern = getelementptr i8, ptr %t, i32 -12
  %0 = ptrtoint ptr %pattern to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pattern, align 4
  %tone3 = getelementptr i8, ptr %t, i32 -16
  %2 = ptrtoint ptr %tone3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tone3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %index2 = getelementptr i8, ptr %t, i32 -4
  %4 = ptrtoint ptr %index2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index2, align 4
  %inc = add i32 %5, 1
  %arrayidx = getelementptr %struct.pattern, ptr %1, i32 0, i32 3, i32 %inc
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool4.not = icmp eq i32 %7, 0
  %spec.store.select = select i1 %tobool4.not, i32 0, i32 %inc
  %8 = ptrtoint ptr %index2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %spec.store.select, ptr %index2, align 4
  %arrayidx8 = getelementptr %struct.pattern, ptr %1, i32 0, i32 1, i32 %spec.store.select
  %9 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx8, align 4
  %cmp = icmp eq ptr %10, @sample_silence
  br i1 %cmp, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.end
  %call.i.i.i.i = tail call ptr @__alloc_skb(i32 noundef 8, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #4
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.then9.if.end13_crit_edge, label %if.end.i.i, !prof !64

if.then9.if.end13_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end13

if.end.i.i:                                       ; preds = %if.then9
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 19
  %11 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %12, i32 8
  store ptr %add.ptr.i.i.i.i, ptr %data.i.i.i.i, align 4
  %tail.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 16
  %13 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tail.i.i.i.i, align 8
  %add.ptr1.i.i.i.i = getelementptr i8, ptr %14, i32 8
  store ptr %add.ptr1.i.i.i.i, ptr %tail.i.i.i.i, align 8
  %cb.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 3
  %15 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_storeN_noabort(i32 %15, i32 4)
  store i32 2049, ptr %cb.i.i, align 1
  %id6.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 3, i32 4
  %16 = ptrtoint ptr %id6.i.i to i32
  call void @__asan_storeN_noabort(i32 %16, i32 4)
  store i32 9732, ptr %id6.i.i, align 1
  %peer.i = getelementptr i8, ptr %t, i32 -132
  %17 = ptrtoint ptr %peer.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %peer.i, align 4
  %tobool2.not.i = icmp eq ptr %18, null
  br i1 %tobool2.not.i, label %if.end.i.i.if.end13.sink.split_crit_edge, label %if.then3.i

if.end.i.i.if.end13.sink.split_crit_edge:         ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end13.sink.split

if.then3.i:                                       ; preds = %if.end.i.i
  %recv.i = getelementptr i8, ptr %t, i32 -124
  %19 = ptrtoint ptr %recv.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %recv.i, align 4
  %call7.i = tail call i32 %20(ptr noundef nonnull %18, ptr noundef nonnull %call.i.i.i.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %if.then3.i.if.end13_crit_edge, label %if.then3.i.if.end13.sink.split_crit_edge

if.then3.i.if.end13.sink.split_crit_edge:         ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end13.sink.split

if.then3.i.if.end13_crit_edge:                    ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end13

if.else:                                          ; preds = %if.end
  %arrayidx12 = getelementptr %struct.pattern, ptr %1, i32 0, i32 2, i32 %spec.store.select
  %21 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx12, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not.i = icmp eq i32 %24, 0
  %cond.i = select i1 %tobool.not.i, i32 9732, i32 9731
  %add.i.i.i = add i32 %24, 8
  %call.i.i.i.i37 = tail call ptr @__alloc_skb(i32 noundef %add.i.i.i, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #4
  %tobool.not.i.i.i38 = icmp eq ptr %call.i.i.i.i37, null
  br i1 %tobool.not.i.i.i38, label %if.else.if.end13_crit_edge, label %if.end.i.i43, !prof !64

if.else.if.end13_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end13

if.end.i.i43:                                     ; preds = %if.else
  %data.i.i.i.i39 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i37, i32 0, i32 19
  %25 = ptrtoint ptr %data.i.i.i.i39 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %data.i.i.i.i39, align 4
  %add.ptr.i.i.i.i40 = getelementptr i8, ptr %26, i32 8
  store ptr %add.ptr.i.i.i.i40, ptr %data.i.i.i.i39, align 4
  %tail.i.i.i.i41 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i37, i32 0, i32 16
  %27 = ptrtoint ptr %tail.i.i.i.i41 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %tail.i.i.i.i41, align 8
  %add.ptr1.i.i.i.i42 = getelementptr i8, ptr %28, i32 8
  store ptr %add.ptr1.i.i.i.i42, ptr %tail.i.i.i.i41, align 8
  br i1 %tobool.not.i, label %if.end.i.i43.if.then.i_crit_edge, label %if.then2.i.i

if.end.i.i43.if.then.i_crit_edge:                 ; preds = %if.end.i.i43
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i

if.then2.i.i:                                     ; preds = %if.end.i.i43
  call void @__sanitizer_cov_trace_pc() #6
  %call.i.i.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i.i37, i32 noundef %24) #4
  %29 = call ptr @memcpy(ptr %call.i.i.i, ptr %10, i32 %24)
  br label %if.then.i

if.then.i:                                        ; preds = %if.then2.i.i, %if.end.i.i43.if.then.i_crit_edge
  %cb.i.i44 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i37, i32 0, i32 3
  %30 = ptrtoint ptr %cb.i.i44 to i32
  call void @__asan_storeN_noabort(i32 %30, i32 4)
  store i32 2049, ptr %cb.i.i44, align 1
  %id6.i.i45 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i37, i32 0, i32 3, i32 4
  %31 = ptrtoint ptr %id6.i.i45 to i32
  call void @__asan_storeN_noabort(i32 %31, i32 4)
  store i32 %cond.i, ptr %id6.i.i45, align 1
  %peer.i46 = getelementptr i8, ptr %t, i32 -132
  %32 = ptrtoint ptr %peer.i46 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %peer.i46, align 4
  %tobool2.not.i47 = icmp eq ptr %33, null
  br i1 %tobool2.not.i47, label %if.then.i.if.end13.sink.split_crit_edge, label %if.then3.i51

if.then.i.if.end13.sink.split_crit_edge:          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end13.sink.split

if.then3.i51:                                     ; preds = %if.then.i
  %recv.i48 = getelementptr i8, ptr %t, i32 -124
  %34 = ptrtoint ptr %recv.i48 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %recv.i48, align 4
  %call7.i49 = tail call i32 %35(ptr noundef nonnull %33, ptr noundef nonnull %call.i.i.i.i37) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i49)
  %tobool8.not.i50 = icmp eq i32 %call7.i49, 0
  br i1 %tobool8.not.i50, label %if.then3.i51.if.end13_crit_edge, label %if.then3.i51.if.end13.sink.split_crit_edge

if.then3.i51.if.end13.sink.split_crit_edge:       ; preds = %if.then3.i51
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end13.sink.split

if.then3.i51.if.end13_crit_edge:                  ; preds = %if.then3.i51
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end13

if.end13.sink.split:                              ; preds = %if.then3.i51.if.end13.sink.split_crit_edge, %if.then.i.if.end13.sink.split_crit_edge, %if.then3.i.if.end13.sink.split_crit_edge, %if.end.i.i.if.end13.sink.split_crit_edge
  %call.i.i.i.i37.sink = phi ptr [ %call.i.i.i.i, %if.then3.i.if.end13.sink.split_crit_edge ], [ %call.i.i.i.i, %if.end.i.i.if.end13.sink.split_crit_edge ], [ %call.i.i.i.i37, %if.then3.i51.if.end13.sink.split_crit_edge ], [ %call.i.i.i.i37, %if.then.i.if.end13.sink.split_crit_edge ]
  tail call void @consume_skb(ptr noundef nonnull %call.i.i.i.i37.sink) #4
  br label %if.end13

if.end13:                                         ; preds = %if.end13.sink.split, %if.then3.i51.if.end13_crit_edge, %if.else.if.end13_crit_edge, %if.then3.i.if.end13_crit_edge, %if.then9.if.end13_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %36 = load volatile i32, ptr @jiffies, align 128
  %arrayidx15 = getelementptr %struct.pattern, ptr %1, i32 0, i32 3, i32 %spec.store.select
  %37 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx15, align 4
  %mul = mul i32 %38, 100
  %div = udiv i32 %mul, 8000
  %add = add i32 %div, %36
  %expires = getelementptr inbounds %struct.timer_list, ptr %t, i32 0, i32 1
  %39 = ptrtoint ptr %expires to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %add, ptr %expires, align 4
  tail call void @add_timer(ptr noundef %t) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_timer(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dsp_tone(ptr noundef %dsp, i32 noundef %tone) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tone1 = getelementptr inbounds %struct.dsp, ptr %dsp, i32 0, i32 9
  %0 = ptrtoint ptr %tone1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %tone1, align 4
  %hardware = getelementptr inbounds %struct.dsp, ptr %dsp, i32 0, i32 9, i32 1
  %1 = ptrtoint ptr %hardware to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %hardware, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tone)
  %tobool.not = icmp eq i32 %tone, 0
  br i1 %tobool.not, label %if.then, label %while.cond.preheader

while.cond.preheader:                             ; preds = %entry
  %2 = load i32, ptr @pattern, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool15.not110 = icmp eq i32 %2, 0
  br i1 %tobool15.not110, label %while.cond.preheader.do.end_crit_edge, label %while.body.preheader

while.cond.preheader.do.end_crit_edge:            ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

while.body.preheader:                             ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %tone)
  %cmp119 = icmp eq i32 %2, %tone
  br i1 %cmp119, label %while.body.preheader.while.end_crit_edge, label %while.body.preheader.if.end20_crit_edge

while.body.preheader.if.end20_crit_edge:          ; preds = %while.body.preheader
  br label %if.end20

while.body.preheader.while.end_crit_edge:         ; preds = %while.body.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

if.then:                                          ; preds = %entry
  %hfc_loops = getelementptr inbounds %struct.dsp, ptr %dsp, i32 0, i32 33, i32 3
  %3 = ptrtoint ptr %hfc_loops to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %hfc_loops, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool2.not = icmp eq i32 %4, 0
  br i1 %tobool2.not, label %if.then.if.end11_crit_edge, label %land.lhs.true

if.then.if.end11_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end11

land.lhs.true:                                    ; preds = %if.then
  %pprev.i.i = getelementptr inbounds %struct.dsp, ptr %dsp, i32 0, i32 9, i32 6, i32 0, i32 1
  %5 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.i.not = icmp eq ptr %6, null
  br i1 %tobool.not.i.i.not, label %land.lhs.true.if.end_crit_edge, label %if.then4

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then4:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  %tl = getelementptr inbounds %struct.dsp, ptr %dsp, i32 0, i32 9, i32 6
  %call6 = tail call i32 @del_timer(ptr noundef %tl) #4
  br label %if.end

if.end:                                           ; preds = %if.then4, %land.lhs.true.if.end_crit_edge
  %7 = ptrtoint ptr %hfc_loops to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pr = load i32, ptr %hfc_loops, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool9.not = icmp eq i32 %.pr, 0
  br i1 %tobool9.not, label %if.end.if.end11_crit_edge, label %if.then10

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end11

if.then10:                                        ; preds = %if.end
  %call.i.i.i.i = tail call ptr @__alloc_skb(i32 noundef 8, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #4
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.then10.if.end11_crit_edge, label %if.end.i.i, !prof !64

if.then10.if.end11_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end11

if.end.i.i:                                       ; preds = %if.then10
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 19
  %8 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %9, i32 8
  store ptr %add.ptr.i.i.i.i, ptr %data.i.i.i.i, align 4
  %tail.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 16
  %10 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tail.i.i.i.i, align 8
  %add.ptr1.i.i.i.i = getelementptr i8, ptr %11, i32 8
  store ptr %add.ptr1.i.i.i.i, ptr %tail.i.i.i.i, align 8
  %cb.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 3
  %12 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_storeN_noabort(i32 %12, i32 4)
  store i32 2049, ptr %cb.i.i, align 1
  %id6.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 3, i32 4
  %13 = ptrtoint ptr %id6.i.i to i32
  call void @__asan_storeN_noabort(i32 %13, i32 4)
  store i32 9732, ptr %id6.i.i, align 1
  %peer.i = getelementptr inbounds %struct.dsp, ptr %dsp, i32 0, i32 1, i32 6
  %14 = ptrtoint ptr %peer.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %peer.i, align 4
  %tobool2.not.i = icmp eq ptr %15, null
  br i1 %tobool2.not.i, label %if.end.i.i.if.end11.sink.split.i_crit_edge, label %if.then3.i

if.end.i.i.if.end11.sink.split.i_crit_edge:       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end11.sink.split.i

if.then3.i:                                       ; preds = %if.end.i.i
  %recv.i = getelementptr inbounds %struct.dsp, ptr %dsp, i32 0, i32 1, i32 8
  %16 = ptrtoint ptr %recv.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %recv.i, align 4
  %call7.i = tail call i32 %17(ptr noundef nonnull %15, ptr noundef nonnull %call.i.i.i.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %if.then3.i.if.end11_crit_edge, label %if.then3.i.if.end11.sink.split.i_crit_edge

if.then3.i.if.end11.sink.split.i_crit_edge:       ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end11.sink.split.i

if.then3.i.if.end11_crit_edge:                    ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end11

if.end11.sink.split.i:                            ; preds = %if.then3.i.if.end11.sink.split.i_crit_edge, %if.end.i.i.if.end11.sink.split.i_crit_edge
  tail call void @consume_skb(ptr noundef nonnull %call.i.i.i.i) #4
  br label %if.end11

if.end11:                                         ; preds = %if.end11.sink.split.i, %if.then3.i.if.end11_crit_edge, %if.then10.if.end11_crit_edge, %if.end.if.end11_crit_edge, %if.then.if.end11_crit_edge
  %tone12 = getelementptr inbounds %struct.dsp, ptr %dsp, i32 0, i32 9, i32 2
  %18 = ptrtoint ptr %tone12 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %tone12, align 4
  br label %cleanup

while.body:                                       ; preds = %if.end20
  %cmp = icmp eq i32 %20, %tone
  br i1 %cmp, label %while.body.while.end_crit_edge, label %while.body.if.end20_crit_edge

while.body.if.end20_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end20

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

if.end20:                                         ; preds = %while.body.if.end20_crit_edge, %while.body.preheader.if.end20_crit_edge
  %i.0111120 = phi i32 [ %inc, %while.body.if.end20_crit_edge ], [ 0, %while.body.preheader.if.end20_crit_edge ]
  %inc = add i32 %i.0111120, 1
  %arrayidx = getelementptr [22 x %struct.pattern], ptr @pattern, i32 0, i32 %inc
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool15.not = icmp eq i32 %20, 0
  br i1 %tobool15.not, label %if.end20.do.end_crit_edge, label %while.body

if.end20.do.end_crit_edge:                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %while.body.preheader.while.end_crit_edge
  %arrayidx112.lcssa = phi ptr [ @pattern, %while.body.preheader.while.end_crit_edge ], [ %arrayidx, %while.body.while.end_crit_edge ]
  %i.0111.lcssa = phi i32 [ 0, %while.body.preheader.while.end_crit_edge ], [ %inc, %while.body.while.end_crit_edge ]
  %tobool21.not = icmp eq ptr %arrayidx112.lcssa, null
  br i1 %tobool21.not, label %while.end.do.end_crit_edge, label %if.end24

while.end.do.end_crit_edge:                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

do.end:                                           ; preds = %while.end.do.end_crit_edge, %if.end20.do.end_crit_edge, %while.cond.preheader.do.end_crit_edge
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %tone) #7
  br label %cleanup

if.end24:                                         ; preds = %while.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dsp_debug to i32))
  %21 = load i32, ptr @dsp_debug, align 4
  %and = and i32 %21, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool25.not = icmp eq i32 %and, 0
  br i1 %tobool25.not, label %if.end24.if.end32_crit_edge, label %do.end29

if.end24.if.end32_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end32

do.end29:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #6
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.4, i32 noundef %tone, i32 noundef 0) #7
  br label %if.end32

if.end32:                                         ; preds = %do.end29, %if.end24.if.end32_crit_edge
  %tone33 = getelementptr inbounds %struct.dsp, ptr %dsp, i32 0, i32 9, i32 2
  %22 = ptrtoint ptr %tone33 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %tone, ptr %tone33, align 4
  %pattern = getelementptr inbounds %struct.dsp, ptr %dsp, i32 0, i32 9, i32 3
  %23 = ptrtoint ptr %pattern to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %arrayidx112.lcssa, ptr %pattern, align 4
  %index = getelementptr inbounds %struct.dsp, ptr %dsp, i32 0, i32 9, i32 5
  %24 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %index, align 4
  %count = getelementptr inbounds %struct.dsp, ptr %dsp, i32 0, i32 9, i32 4
  %25 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %count, align 4
  %hfc_loops35 = getelementptr inbounds %struct.dsp, ptr %dsp, i32 0, i32 33, i32 3
  %26 = ptrtoint ptr %hfc_loops35 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %hfc_loops35, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool36.not = icmp eq i32 %27, 0
  br i1 %tobool36.not, label %if.else, label %if.then37

if.then37:                                        ; preds = %if.end32
  %28 = ptrtoint ptr %hardware to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %hardware, align 4
  %data = getelementptr [22 x %struct.pattern], ptr @pattern, i32 0, i32 %i.0111.lcssa, i32 1
  %29 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %data, align 4
  %siz = getelementptr [22 x %struct.pattern], ptr @pattern, i32 0, i32 %i.0111.lcssa, i32 2
  %31 = ptrtoint ptr %siz to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %siz, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %32, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.not.i = icmp eq i32 %34, 0
  %cond.i = select i1 %tobool.not.i, i32 9732, i32 9731
  %add.i.i.i = add i32 %34, 8
  %call.i.i.i.i85 = tail call ptr @__alloc_skb(i32 noundef %add.i.i.i, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #4
  %tobool.not.i.i.i86 = icmp eq ptr %call.i.i.i.i85, null
  br i1 %tobool.not.i.i.i86, label %if.then37.dsp_tone_hw_message.exit101_crit_edge, label %if.end.i.i91, !prof !64

if.then37.dsp_tone_hw_message.exit101_crit_edge:  ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #6
  br label %dsp_tone_hw_message.exit101

if.end.i.i91:                                     ; preds = %if.then37
  %data.i.i.i.i87 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i85, i32 0, i32 19
  %35 = ptrtoint ptr %data.i.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %data.i.i.i.i87, align 4
  %add.ptr.i.i.i.i88 = getelementptr i8, ptr %36, i32 8
  store ptr %add.ptr.i.i.i.i88, ptr %data.i.i.i.i87, align 4
  %tail.i.i.i.i89 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i85, i32 0, i32 16
  %37 = ptrtoint ptr %tail.i.i.i.i89 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %tail.i.i.i.i89, align 8
  %add.ptr1.i.i.i.i90 = getelementptr i8, ptr %38, i32 8
  store ptr %add.ptr1.i.i.i.i90, ptr %tail.i.i.i.i89, align 8
  br i1 %tobool.not.i, label %if.end.i.i91.if.then.i_crit_edge, label %if.then2.i.i

if.end.i.i91.if.then.i_crit_edge:                 ; preds = %if.end.i.i91
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i

if.then2.i.i:                                     ; preds = %if.end.i.i91
  call void @__sanitizer_cov_trace_pc() #6
  %call.i.i.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i.i85, i32 noundef %34) #4
  %39 = call ptr @memcpy(ptr %call.i.i.i, ptr %30, i32 %34)
  br label %if.then.i

if.then.i:                                        ; preds = %if.then2.i.i, %if.end.i.i91.if.then.i_crit_edge
  %cb.i.i92 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i85, i32 0, i32 3
  %40 = ptrtoint ptr %cb.i.i92 to i32
  call void @__asan_storeN_noabort(i32 %40, i32 4)
  store i32 2049, ptr %cb.i.i92, align 1
  %id6.i.i93 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i85, i32 0, i32 3, i32 4
  %41 = ptrtoint ptr %id6.i.i93 to i32
  call void @__asan_storeN_noabort(i32 %41, i32 4)
  store i32 %cond.i, ptr %id6.i.i93, align 1
  %peer.i94 = getelementptr inbounds %struct.dsp, ptr %dsp, i32 0, i32 1, i32 6
  %42 = ptrtoint ptr %peer.i94 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %peer.i94, align 4
  %tobool2.not.i95 = icmp eq ptr %43, null
  br i1 %tobool2.not.i95, label %if.then.i.if.end11.sink.split.i100_crit_edge, label %if.then3.i99

if.then.i.if.end11.sink.split.i100_crit_edge:     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end11.sink.split.i100

if.then3.i99:                                     ; preds = %if.then.i
  %recv.i96 = getelementptr inbounds %struct.dsp, ptr %dsp, i32 0, i32 1, i32 8
  %44 = ptrtoint ptr %recv.i96 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %recv.i96, align 4
  %call7.i97 = tail call i32 %45(ptr noundef nonnull %43, ptr noundef nonnull %call.i.i.i.i85) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i97)
  %tobool8.not.i98 = icmp eq i32 %call7.i97, 0
  br i1 %tobool8.not.i98, label %if.then3.i99.dsp_tone_hw_message.exit101_crit_edge, label %if.then3.i99.if.end11.sink.split.i100_crit_edge

if.then3.i99.if.end11.sink.split.i100_crit_edge:  ; preds = %if.then3.i99
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end11.sink.split.i100

if.then3.i99.dsp_tone_hw_message.exit101_crit_edge: ; preds = %if.then3.i99
  call void @__sanitizer_cov_trace_pc() #6
  br label %dsp_tone_hw_message.exit101

if.end11.sink.split.i100:                         ; preds = %if.then3.i99.if.end11.sink.split.i100_crit_edge, %if.then.i.if.end11.sink.split.i100_crit_edge
  tail call void @consume_skb(ptr noundef nonnull %call.i.i.i.i85) #4
  br label %dsp_tone_hw_message.exit101

dsp_tone_hw_message.exit101:                      ; preds = %if.end11.sink.split.i100, %if.then3.i99.dsp_tone_hw_message.exit101_crit_edge, %if.then37.dsp_tone_hw_message.exit101_crit_edge
  %tl41 = getelementptr inbounds %struct.dsp, ptr %dsp, i32 0, i32 9, i32 6
  %pprev.i.i102 = getelementptr inbounds %struct.dsp, ptr %dsp, i32 0, i32 9, i32 6, i32 0, i32 1
  %46 = ptrtoint ptr %pprev.i.i102 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile ptr, ptr %pprev.i.i102, align 4
  %tobool.not.i.i103.not = icmp eq ptr %47, null
  br i1 %tobool.not.i.i103.not, label %dsp_tone_hw_message.exit101.if.end47_crit_edge, label %if.then44

dsp_tone_hw_message.exit101.if.end47_crit_edge:   ; preds = %dsp_tone_hw_message.exit101
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end47

if.then44:                                        ; preds = %dsp_tone_hw_message.exit101
  call void @__sanitizer_cov_trace_pc() #6
  %call46 = tail call i32 @del_timer(ptr noundef %tl41) #4
  br label %if.end47

if.end47:                                         ; preds = %if.then44, %dsp_tone_hw_message.exit101.if.end47_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %48 = load volatile i32, ptr @jiffies, align 128
  %seq = getelementptr [22 x %struct.pattern], ptr @pattern, i32 0, i32 %i.0111.lcssa, i32 3
  %49 = ptrtoint ptr %seq to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %seq, align 4
  %mul = mul i32 %50, 100
  %div = udiv i32 %mul, 8000
  %add = add i32 %div, %48
  %expires = getelementptr inbounds %struct.dsp, ptr %dsp, i32 0, i32 9, i32 6, i32 1
  %51 = ptrtoint ptr %expires to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %add, ptr %expires, align 4
  tail call void @add_timer(ptr noundef %tl41) #4
  br label %cleanup

if.else:                                          ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #6
  %52 = ptrtoint ptr %tone1 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 1, ptr %tone1, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.end47, %do.end, %if.end11
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end11 ], [ 0, %if.else ], [ 0, %if.end47 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !13, !14, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53}
!llvm.module.flags = !{!55, !56, !57, !58, !59, !60, !61, !62}
!llvm.ident = !{!63}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/isdn/mISDN/dsp_tones.c", i32 406, i32 5}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @dsp_tone_copy._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @dsp_tone_copy._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/isdn/mISDN/dsp_tones.c", i32 525, i32 3}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @dsp_tone._entry, !7, !"_entry", i1 false, i1 false}
!10 = !{ptr @dsp_tone._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/isdn/mISDN/dsp_tones.c", i32 529, i32 3}
!13 = !{ptr @dsp_tone._entry.5, !12, !"_entry", i1 false, i1 false}
!14 = !{ptr @dsp_tone._entry_ptr.7, !12, !"_entry_ptr", i1 false, i1 false}
!15 = distinct !{null, !16, !"samples", i1 false, i1 false}
!16 = !{!"../drivers/isdn/mISDN/dsp_tones.c", i32 197, i32 15}
!17 = !{ptr @sizeof_german_all, !18, !"sizeof_german_all", i1 false, i1 false}
!18 = !{!"../drivers/isdn/mISDN/dsp_tones.c", i32 58, i32 12}
!19 = !{ptr @sample_german_all, !20, !"sample_german_all", i1 false, i1 false}
!20 = !{!"../drivers/isdn/mISDN/dsp_tones.c", i32 44, i32 11}
!21 = !{ptr @sizeof_german_old, !22, !"sizeof_german_old", i1 false, i1 false}
!22 = !{!"../drivers/isdn/mISDN/dsp_tones.c", i32 74, i32 12}
!23 = !{ptr @sample_german_old, !24, !"sample_german_old", i1 false, i1 false}
!24 = !{!"../drivers/isdn/mISDN/dsp_tones.c", i32 60, i32 11}
!25 = !{ptr @sizeof_american_dialtone, !26, !"sizeof_american_dialtone", i1 false, i1 false}
!26 = !{!"../drivers/isdn/mISDN/dsp_tones.c", i32 90, i32 12}
!27 = !{ptr @sample_american_dialtone, !28, !"sample_american_dialtone", i1 false, i1 false}
!28 = !{!"../drivers/isdn/mISDN/dsp_tones.c", i32 76, i32 11}
!29 = !{ptr @sizeof_american_ringing, !30, !"sizeof_american_ringing", i1 false, i1 false}
!30 = !{!"../drivers/isdn/mISDN/dsp_tones.c", i32 115, i32 12}
!31 = !{ptr @sample_american_ringing, !32, !"sample_american_ringing", i1 false, i1 false}
!32 = !{!"../drivers/isdn/mISDN/dsp_tones.c", i32 92, i32 11}
!33 = !{ptr @sizeof_american_busy, !34, !"sizeof_american_busy", i1 false, i1 false}
!34 = !{!"../drivers/isdn/mISDN/dsp_tones.c", i32 134, i32 12}
!35 = !{ptr @sample_american_busy, !36, !"sample_american_busy", i1 false, i1 false}
!36 = !{!"../drivers/isdn/mISDN/dsp_tones.c", i32 117, i32 11}
!37 = !{ptr @sizeof_special1, !38, !"sizeof_special1", i1 false, i1 false}
!38 = !{!"../drivers/isdn/mISDN/dsp_tones.c", i32 146, i32 12}
!39 = !{ptr @sample_special1, !40, !"sample_special1", i1 false, i1 false}
!40 = !{!"../drivers/isdn/mISDN/dsp_tones.c", i32 136, i32 11}
!41 = !{ptr @sizeof_special2, !42, !"sizeof_special2", i1 false, i1 false}
!42 = !{!"../drivers/isdn/mISDN/dsp_tones.c", i32 160, i32 12}
!43 = !{ptr @sample_special2, !44, !"sample_special2", i1 false, i1 false}
!44 = !{!"../drivers/isdn/mISDN/dsp_tones.c", i32 148, i32 11}
!45 = !{ptr @sizeof_special3, !46, !"sizeof_special3", i1 false, i1 false}
!46 = !{!"../drivers/isdn/mISDN/dsp_tones.c", i32 174, i32 12}
!47 = !{ptr @sample_special3, !48, !"sample_special3", i1 false, i1 false}
!48 = !{!"../drivers/isdn/mISDN/dsp_tones.c", i32 162, i32 11}
!49 = !{ptr @sample_silence, !50, !"sample_silence", i1 false, i1 false}
!50 = !{!"../drivers/isdn/mISDN/dsp_tones.c", i32 176, i32 11}
!51 = !{ptr @pattern, !52, !"pattern", i1 false, i1 false}
!52 = !{!"../drivers/isdn/mISDN/dsp_tones.c", i32 240, i32 3}
!53 = !{ptr @sizeof_silence, !54, !"sizeof_silence", i1 false, i1 false}
!54 = !{!"../drivers/isdn/mISDN/dsp_tones.c", i32 190, i32 12}
!55 = !{i32 1, !"wchar_size", i32 2}
!56 = !{i32 1, !"min_enum_size", i32 4}
!57 = !{i32 8, !"branch-target-enforcement", i32 0}
!58 = !{i32 8, !"sign-return-address", i32 0}
!59 = !{i32 8, !"sign-return-address-all", i32 0}
!60 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!61 = !{i32 7, !"uwtable", i32 1}
!62 = !{i32 7, !"frame-pointer", i32 2}
!63 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!64 = !{!"branch_weights", i32 1, i32 2000}
