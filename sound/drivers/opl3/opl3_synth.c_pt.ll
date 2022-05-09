; ModuleID = '/llk/IR_all_yes/sound/drivers/opl3/opl3_synth.c_pt.bc'
source_filename = "../sound/drivers/opl3/opl3_synth.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+snd_opl3_regmap\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_opl3_regmap\09\09\09\09"
module asm "\09.long\09__crc_snd_opl3_regmap\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_opl3_regmap:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_opl3_regmap\22\09\09\09\09\09"
module asm "__kstrtabns_snd_opl3_regmap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+snd_opl3_load_patch\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_opl3_load_patch\09\09\09\09"
module asm "\09.long\09__crc_snd_opl3_load_patch\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_opl3_load_patch:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_opl3_load_patch\22\09\09\09\09\09"
module asm "__kstrtabns_snd_opl3_load_patch:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+snd_opl3_find_patch\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_opl3_find_patch\09\09\09\09"
module asm "\09.long\09__crc_snd_opl3_find_patch\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_opl3_find_patch:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_opl3_find_patch\22\09\09\09\09\09"
module asm "__kstrtabns_snd_opl3_find_patch:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+snd_opl3_reset\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_opl3_reset\09\09\09\09"
module asm "\09.long\09__crc_snd_opl3_reset\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_opl3_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_opl3_reset\22\09\09\09\09\09"
module asm "__kstrtabns_snd_opl3_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.snd_dm_fm_info = type { i8, i8 }
%struct.snd_dm_fm_note = type { i8, i8, i32, i8 }
%struct.snd_dm_fm_voice = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.snd_dm_fm_params = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.snd_hwdep = type { ptr, %struct.list_head, i32, [32 x i8], [80 x i8], i32, i32, i32, %struct.snd_hwdep_ops, %struct.wait_queue_head, ptr, ptr, %struct.device, %struct.mutex, i32, i32, i8 }
%struct.list_head = type { ptr, ptr }
%struct.snd_hwdep_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.snd_opl3 = type { i32, i32, ptr, ptr, i16, ptr, i16, i32, ptr, ptr, %struct.spinlock, ptr, ptr, ptr, %struct.spinlock, ptr, i8, i8, i8, i32, i32, ptr, ptr, ptr, ptr, [32 x ptr], [18 x %struct.snd_opl3_voice], i32, i16, i8, %struct.spinlock, %struct.timer_list, i32, %struct.spinlock }
%struct.snd_opl3_voice = type { i32, i32, i8, i32, i32, i8, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.fm_patch = type { i8, i8, i8, %struct.fm_instrument, [24 x i8], ptr }
%struct.fm_instrument = type { [4 x %struct.fm_operator], [2 x i8], i8, i8, i8, i8, i8, i8, i8 }
%struct.fm_operator = type { i8, i8, i8, i8, i8 }
%struct.sbi_patch = type { i8, i8, [4 x i8], [25 x i8], [7 x i8], [32 x i8] }

@snd_opl3_regmap = dso_local global { [9 x [4 x i8]], [60 x i8] } { [9 x [4 x i8]] [[4 x i8] c"\00\03\08\0B", [4 x i8] c"\01\04\09\0C", [4 x i8] c"\02\05\0A\0D", [4 x i8] c"\08\0B\00\00", [4 x i8] c"\09\0C\00\00", [4 x i8] c"\0A\0D\00\00", [4 x i8] c"\10\13\00\00", [4 x i8] c"\11\14\00\00", [4 x i8] c"\12\15\00\00"], [60 x i8] zeroinitializer }, align 32
@__kstrtab_snd_opl3_regmap = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_opl3_regmap = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_opl3_regmap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_opl3_regmap to i32), ptr @__kstrtab_snd_opl3_regmap, ptr @__kstrtabns_snd_opl3_regmap }, section "___ksymtab+snd_opl3_regmap", align 4
@.str = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"sound/drivers/opl3/opl3_synth.c\00", [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\014unknown IOCTL: 0x%x\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"SBI\1A\00", [27 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"2OP\1A\00", [27 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"4OP\1A\00", [27 x i8] zeroinitializer }, align 32
@__kstrtab_snd_opl3_load_patch = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_opl3_load_patch = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_opl3_load_patch = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_opl3_load_patch to i32), ptr @__kstrtab_snd_opl3_load_patch, ptr @__kstrtabns_snd_opl3_load_patch }, section "___ksymtab+snd_opl3_load_patch", align 4
@__kstrtab_snd_opl3_find_patch = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_opl3_find_patch = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_opl3_find_patch = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_opl3_find_patch to i32), ptr @__kstrtab_snd_opl3_find_patch, ptr @__kstrtabns_snd_opl3_find_patch }, section "___ksymtab+snd_opl3_find_patch", align 4
@__kstrtab_snd_opl3_reset = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_opl3_reset = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_opl3_reset = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_opl3_reset to i32), ptr @__kstrtab_snd_opl3_reset, ptr @__kstrtabns_snd_opl3_reset }, section "___ksymtab+snd_opl3_reset", align 4
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [16 x i64] [i64 14, i64 32, i64 32, i64 33, i64 34, i64 35, i64 36, i64 37, i64 18465, i64 18496, i64 1074022437, i64 1074022438, i64 1074350116, i64 1074546722, i64 1074939939, i64 2147633184]
@___asan_gen_.8 = private unnamed_addr constant [16 x i8] c"snd_opl3_regmap\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 38, i32 6 }
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 85, i32 6 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 163, i32 3 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 196, i32 25 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 197, i32 25 }
@___asan_gen_.24 = private constant [35 x i8] c"../sound/drivers/opl3/opl3_synth.c\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 199, i32 30 }
@___asan_gen_.26 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.27 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 174, i32 2 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @__ksymtab_snd_opl3_find_patch, ptr @__ksymtab_snd_opl3_load_patch, ptr @__ksymtab_snd_opl3_regmap, ptr @__ksymtab_snd_opl3_reset, ptr @snd_opl3_regmap, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.7], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_opl3_regmap to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @snd_opl3_open(ptr nocapture noundef readnone %hw, ptr nocapture noundef readnone %file) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_opl3_ioctl(ptr nocapture noundef readonly %hw, ptr nocapture noundef readnone %file, i32 noundef %cmd, i32 noundef %arg) local_unnamed_addr #1 align 64 {
entry:
  %info = alloca %struct.snd_dm_fm_info, align 2
  %note = alloca %struct.snd_dm_fm_note, align 4
  %voice = alloca %struct.snd_dm_fm_voice, align 1
  %params = alloca %struct.snd_dm_fm_params, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_hwdep, ptr %hw, i32 0, i32 10
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = inttoptr i32 %arg to ptr
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !37

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 85, i32 noundef 9, ptr noundef null) #7
  br label %cleanup56

if.end23:                                         ; preds = %entry
  %3 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %sw.default [
    i32 -2147334112, label %sw.bb
    i32 18465, label %if.end23.sw.bb29_crit_edge
    i32 32, label %if.end23.sw.bb29_crit_edge191
    i32 1074546722, label %if.end23.sw.bb30_crit_edge
    i32 33, label %if.end23.sw.bb30_crit_edge192
    i32 1074939939, label %if.end23.sw.bb37_crit_edge
    i32 34, label %if.end23.sw.bb37_crit_edge193
    i32 1074350116, label %if.end23.sw.bb44_crit_edge
    i32 35, label %if.end23.sw.bb44_crit_edge194
    i32 1074022437, label %if.end23.sw.bb51_crit_edge
    i32 36, label %if.end23.sw.bb51_crit_edge195
    i32 1074022438, label %if.end23.sw.bb53_crit_edge
    i32 37, label %if.end23.sw.bb53_crit_edge196
    i32 18496, label %if.end23.for.body.i170_crit_edge
  ]

if.end23.for.body.i170_crit_edge:                 ; preds = %if.end23
  br label %for.body.i170

if.end23.sw.bb53_crit_edge196:                    ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb53

if.end23.sw.bb53_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb53

if.end23.sw.bb51_crit_edge195:                    ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb51

if.end23.sw.bb51_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb51

if.end23.sw.bb44_crit_edge194:                    ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb44

if.end23.sw.bb44_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb44

if.end23.sw.bb37_crit_edge193:                    ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb37

if.end23.sw.bb37_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb37

if.end23.sw.bb30_crit_edge192:                    ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb30

if.end23.sw.bb30_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb30

if.end23.sw.bb29_crit_edge191:                    ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb29

if.end23.sw.bb29_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb29

sw.bb:                                            ; preds = %if.end23
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %info) #7
  %4 = getelementptr inbounds %struct.snd_dm_fm_info, ptr %info, i32 0, i32 1
  %fm_mode = getelementptr inbounds %struct.snd_opl3, ptr %1, i32 0, i32 16
  %5 = ptrtoint ptr %fm_mode to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %fm_mode, align 4
  %7 = ptrtoint ptr %info to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %info, align 2
  %rhythm = getelementptr inbounds %struct.snd_opl3, ptr %1, i32 0, i32 17
  %8 = ptrtoint ptr %rhythm to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %rhythm, align 1
  %10 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %4, align 1
  tail call void @__might_fault(ptr noundef nonnull @.str.7, i32 noundef 174) #7
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i, label %sw.bb.copy_to_user.exit.thread_crit_edge, label %if.end.i.i

sw.bb.copy_to_user.exit.thread_crit_edge:         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %copy_to_user.exit.thread

if.end.i.i:                                       ; preds = %sw.bb
  %11 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 2, i32 -1226833920) #10, !srcloc !38
  %asmresult.i.i = extractvalue { i32, i32 } %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i1.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i1.i, label %copy_to_user.exit, label %if.end.i.i.copy_to_user.exit.thread_crit_edge

if.end.i.i.copy_to_user.exit.thread_crit_edge:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %copy_to_user.exit.thread

copy_to_user.exit:                                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %info, i32 noundef 2) #7
  %call.i1.i.i = call i32 @arm_copy_to_user(ptr noundef %2, ptr noundef nonnull %info, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i)
  %tobool26.not = icmp eq i32 %call.i1.i.i, 0
  %spec.select = select i1 %tobool26.not, i32 0, i32 -14
  br label %copy_to_user.exit.thread

copy_to_user.exit.thread:                         ; preds = %copy_to_user.exit, %if.end.i.i.copy_to_user.exit.thread_crit_edge, %sw.bb.copy_to_user.exit.thread_crit_edge
  %12 = phi i32 [ -14, %sw.bb.copy_to_user.exit.thread_crit_edge ], [ -14, %if.end.i.i.copy_to_user.exit.thread_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %info) #7
  br label %cleanup56

sw.bb29:                                          ; preds = %if.end23.sw.bb29_crit_edge, %if.end23.sw.bb29_crit_edge191
  %hardware.i = getelementptr inbounds %struct.snd_opl3, ptr %1, i32 0, i32 4
  %13 = ptrtoint ptr %hardware.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %hardware.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 768, i16 %14)
  %cmp.i = icmp ult i16 %14, 768
  %cond.i = select i1 %cmp.i, i32 9, i32 18
  %command.i = getelementptr inbounds %struct.snd_opl3, ptr %1, i32 0, i32 5
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %sw.bb29
  %i.053.i = phi i32 [ 0, %sw.bb29 ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %i.053.i)
  %cmp4.i = icmp ult i32 %i.053.i, 9
  %conv7.i = add nuw nsw i32 %i.053.i, 247
  %reg_side.0.i = select i1 %cmp4.i, i32 0, i32 256
  %voice_offset.0.i = select i1 %cmp4.i, i32 %i.053.i, i32 %conv7.i
  %idxprom.i = and i32 %voice_offset.0.i, 255
  %arrayidx.i = getelementptr [9 x [4 x i8]], ptr @snd_opl3_regmap, i32 0, i32 %idxprom.i
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx.i, align 1
  %conv10.i = zext i8 %16 to i32
  %add.i = add nuw nsw i32 %conv10.i, 64
  %or.i = or i32 %add.i, %reg_side.0.i
  %conv11.i = trunc i32 %or.i to i16
  %17 = ptrtoint ptr %command.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %command.i, align 4
  tail call void %18(ptr noundef %1, i16 noundef zeroext %conv11.i, i8 noundef zeroext 63) #7
  %arrayidx15.i = getelementptr [9 x [4 x i8]], ptr @snd_opl3_regmap, i32 0, i32 %idxprom.i, i32 1
  %19 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx15.i, align 1
  %conv16.i = zext i8 %20 to i32
  %add17.i = add nuw nsw i32 %conv16.i, 64
  %or18.i = or i32 %add17.i, %reg_side.0.i
  %conv19.i = trunc i32 %or18.i to i16
  %21 = ptrtoint ptr %command.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %command.i, align 4
  tail call void %22(ptr noundef %1, i16 noundef zeroext %conv19.i, i8 noundef zeroext 63) #7
  %add23.i = add nuw nsw i32 %idxprom.i, 176
  %or24.i = or i32 %add23.i, %reg_side.0.i
  %conv25.i = trunc i32 %or24.i to i16
  %23 = ptrtoint ptr %command.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %command.i, align 4
  tail call void %24(ptr noundef %1, i16 noundef zeroext %conv25.i, i8 noundef zeroext 0) #7
  %inc.i = add nuw nsw i32 %i.053.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %cond.i
  br i1 %exitcond.not.i, label %snd_opl3_reset.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

snd_opl3_reset.exit:                              ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %max_voices27.i = getelementptr inbounds %struct.snd_opl3, ptr %1, i32 0, i32 18
  %25 = ptrtoint ptr %max_voices27.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 9, ptr %max_voices27.i, align 2
  %fm_mode.i = getelementptr inbounds %struct.snd_opl3, ptr %1, i32 0, i32 16
  %26 = ptrtoint ptr %fm_mode.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %fm_mode.i, align 4
  %27 = ptrtoint ptr %command.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %command.i, align 4
  tail call void %28(ptr noundef %1, i16 noundef zeroext 1, i8 noundef zeroext 32) #7
  %29 = ptrtoint ptr %command.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %command.i, align 4
  tail call void %30(ptr noundef %1, i16 noundef zeroext 189, i8 noundef zeroext 0) #7
  %rhythm.i = getelementptr inbounds %struct.snd_opl3, ptr %1, i32 0, i32 17
  %31 = ptrtoint ptr %rhythm.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %rhythm.i, align 1
  br label %cleanup56

sw.bb30:                                          ; preds = %if.end23.sw.bb30_crit_edge, %if.end23.sw.bb30_crit_edge192
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %note) #7
  %32 = call ptr @memset(ptr %note, i32 255, i32 12)
  tail call void @__might_fault(ptr noundef nonnull @.str.7, i32 noundef 156) #7
  %call.i.i75 = tail call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i75, label %sw.bb30.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

sw.bb30.if.then11.i.i_crit_edge:                  ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %sw.bb30
  %33 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 12, i32 -1226833920) #10, !srcloc !39
  %asmresult.i.i77 = extractvalue { i32, i32 } %33, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i77)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i77, 0
  br i1 %cmp.i6.i, label %if.end.i.i79, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !40

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i

if.end.i.i79:                                     ; preds = %land.lhs.true.i.i
  %call.i.i.i78 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %note, i32 noundef 12) #7
  %34 = call i32 @llvm.read_register.i32(metadata !27) #7
  %and.i.i.i.i.i.i = and i32 %34, -16384
  %35 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 4
  %36 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #4, !srcloc !41
  %and.i.i.i.i = and i32 %36, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #7, !srcloc !42
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !43
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %note, ptr noundef %2, i32 noundef 12) #7
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %36) #7, !srcloc !42
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !43
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end34, label %if.end.i.i79.if.then11.i.i_crit_edge, !prof !40

if.end.i.i79.if.then11.i.i_crit_edge:             ; preds = %if.end.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i79.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %sw.bb30.if.then11.i.i_crit_edge
  %res.0.i.i178 = phi i32 [ %call1.i.i.i, %if.end.i.i79.if.then11.i.i_crit_edge ], [ 12, %sw.bb30.if.then11.i.i_crit_edge ], [ 12, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 12, %res.0.i.i178
  %add.ptr.i.i = getelementptr i8, ptr %note, i32 %sub.i.i
  %37 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i178)
  br label %cleanup36

if.end34:                                         ; preds = %if.end.i.i79
  %38 = ptrtoint ptr %note to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %note, align 4
  %conv.i = zext i8 %39 to i32
  %fm_mode.i129 = getelementptr inbounds %struct.snd_opl3, ptr %1, i32 0, i32 16
  %40 = ptrtoint ptr %fm_mode.i129 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %fm_mode.i129, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %41)
  %cmp.i130 = icmp eq i8 %41, 1
  %cond.i131 = select i1 %cmp.i130, i32 18, i32 9
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i131, i32 %conv.i)
  %cmp3.not.i = icmp ugt i32 %cond.i131, %conv.i
  br i1 %cmp3.not.i, label %if.end.i, label %if.end34.cleanup36_crit_edge

if.end34.cleanup36_crit_edge:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup36

if.end.i:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %39)
  %cmp7.i = icmp ult i8 %39, 9
  %sub.i = add i8 %39, -9
  %reg_side.0.i132 = select i1 %cmp7.i, i32 0, i32 256
  %voice_offset.0.i133 = select i1 %cmp7.i, i8 %39, i8 %sub.i
  %fnum.i = getelementptr inbounds %struct.snd_dm_fm_note, ptr %note, i32 0, i32 2
  %42 = ptrtoint ptr %fnum.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %fnum.i, align 4
  %conv15.i = trunc i32 %43 to i8
  %conv17.i = zext i8 %voice_offset.0.i133 to i32
  %add.i134 = add nuw nsw i32 %conv17.i, 160
  %or.i135 = or i32 %add.i134, %reg_side.0.i132
  %conv18.i = trunc i32 %or.i135 to i16
  %command.i136 = getelementptr inbounds %struct.snd_opl3, ptr %1, i32 0, i32 5
  %44 = ptrtoint ptr %command.i136 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %command.i136, align 4
  call void %45(ptr noundef nonnull %1, i16 noundef zeroext %conv18.i, i8 noundef zeroext %conv15.i) #7
  %key_on.i = getelementptr inbounds %struct.snd_dm_fm_note, ptr %note, i32 0, i32 3
  %46 = ptrtoint ptr %key_on.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %key_on.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool.not.i = icmp eq i8 %47, 0
  %reg_val.0.i = select i1 %tobool.not.i, i8 0, i8 32
  %octave.i = getelementptr inbounds %struct.snd_dm_fm_note, ptr %note, i32 0, i32 1
  %48 = ptrtoint ptr %octave.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %octave.i, align 1
  %shl.i = shl i8 %49, 2
  %and.i = and i8 %shl.i, 28
  %or26.i = or i8 %and.i, %reg_val.0.i
  %50 = ptrtoint ptr %fnum.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %fnum.i, align 4
  %shr.i = lshr i32 %51, 8
  %52 = trunc i32 %shr.i to i8
  %53 = and i8 %52, 3
  %conv34.i = or i8 %or26.i, %53
  %add37.i = add nuw nsw i32 %conv17.i, 176
  %or38.i = or i32 %add37.i, %reg_side.0.i132
  %conv39.i = trunc i32 %or38.i to i16
  %54 = ptrtoint ptr %command.i136 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %command.i136, align 4
  call void %55(ptr noundef nonnull %1, i16 noundef zeroext %conv39.i, i8 noundef zeroext %conv34.i) #7
  br label %cleanup36

cleanup36:                                        ; preds = %if.end.i, %if.end34.cleanup36_crit_edge, %if.then11.i.i
  %retval.1 = phi i32 [ 0, %if.end.i ], [ -22, %if.end34.cleanup36_crit_edge ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %note) #7
  br label %cleanup56

sw.bb37:                                          ; preds = %if.end23.sw.bb37_crit_edge, %if.end23.sw.bb37_crit_edge193
  call void @llvm.lifetime.start.p0(i64 18, ptr nonnull %voice) #7
  %56 = getelementptr inbounds %struct.snd_dm_fm_voice, ptr %voice, i32 0, i32 1
  %57 = getelementptr inbounds %struct.snd_dm_fm_voice, ptr %voice, i32 0, i32 2
  %58 = getelementptr inbounds %struct.snd_dm_fm_voice, ptr %voice, i32 0, i32 3
  %59 = getelementptr inbounds %struct.snd_dm_fm_voice, ptr %voice, i32 0, i32 4
  %60 = getelementptr inbounds %struct.snd_dm_fm_voice, ptr %voice, i32 0, i32 5
  %61 = getelementptr inbounds %struct.snd_dm_fm_voice, ptr %voice, i32 0, i32 6
  %62 = getelementptr inbounds %struct.snd_dm_fm_voice, ptr %voice, i32 0, i32 7
  %63 = getelementptr inbounds %struct.snd_dm_fm_voice, ptr %voice, i32 0, i32 8
  %64 = getelementptr inbounds %struct.snd_dm_fm_voice, ptr %voice, i32 0, i32 9
  %65 = getelementptr inbounds %struct.snd_dm_fm_voice, ptr %voice, i32 0, i32 10
  %66 = getelementptr inbounds %struct.snd_dm_fm_voice, ptr %voice, i32 0, i32 11
  %67 = getelementptr inbounds %struct.snd_dm_fm_voice, ptr %voice, i32 0, i32 12
  %68 = getelementptr inbounds %struct.snd_dm_fm_voice, ptr %voice, i32 0, i32 13
  %69 = getelementptr inbounds %struct.snd_dm_fm_voice, ptr %voice, i32 0, i32 14
  %70 = getelementptr inbounds %struct.snd_dm_fm_voice, ptr %voice, i32 0, i32 15
  %71 = getelementptr inbounds %struct.snd_dm_fm_voice, ptr %voice, i32 0, i32 16
  %72 = getelementptr inbounds %struct.snd_dm_fm_voice, ptr %voice, i32 0, i32 17
  %73 = call ptr @memset(ptr %voice, i32 255, i32 18)
  tail call void @__might_fault(ptr noundef nonnull @.str.7, i32 noundef 156) #7
  %call.i.i85 = tail call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i85, label %sw.bb37.if.then11.i.i102_crit_edge, label %land.lhs.true.i.i89

sw.bb37.if.then11.i.i102_crit_edge:               ; preds = %sw.bb37
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i102

land.lhs.true.i.i89:                              ; preds = %sw.bb37
  %74 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 18, i32 -1226833920) #10, !srcloc !39
  %asmresult.i.i87 = extractvalue { i32, i32 } %74, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i87)
  %cmp.i6.i88 = icmp eq i32 %asmresult.i.i87, 0
  br i1 %cmp.i6.i88, label %if.end.i.i99, label %land.lhs.true.i.i89.if.then11.i.i102_crit_edge, !prof !40

land.lhs.true.i.i89.if.then11.i.i102_crit_edge:   ; preds = %land.lhs.true.i.i89
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i102

if.end.i.i99:                                     ; preds = %land.lhs.true.i.i89
  %call.i.i.i90 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %voice, i32 noundef 18) #7
  %75 = call i32 @llvm.read_register.i32(metadata !27) #7
  %and.i.i.i.i.i.i91 = and i32 %75, -16384
  %76 = inttoptr i32 %and.i.i.i.i.i.i91 to ptr
  %cpu_domain.i.i.i.i.i92 = getelementptr inbounds %struct.thread_info, ptr %76, i32 0, i32 4
  %77 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i92) #4, !srcloc !41
  %and.i.i.i.i93 = and i32 %77, -13
  %or.i.i.i.i94 = or i32 %and.i.i.i.i93, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i94) #7, !srcloc !42
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !43
  %call1.i.i.i95 = call i32 @arm_copy_from_user(ptr noundef nonnull %voice, ptr noundef %2, i32 noundef 18) #7
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %77) #7, !srcloc !42
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !43
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i95)
  %tobool4.not.i.i98 = icmp eq i32 %call1.i.i.i95, 0
  br i1 %tobool4.not.i.i98, label %if.end41, label %if.end.i.i99.if.then11.i.i102_crit_edge, !prof !40

if.end.i.i99.if.then11.i.i102_crit_edge:          ; preds = %if.end.i.i99
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i102

if.then11.i.i102:                                 ; preds = %if.end.i.i99.if.then11.i.i102_crit_edge, %land.lhs.true.i.i89.if.then11.i.i102_crit_edge, %sw.bb37.if.then11.i.i102_crit_edge
  %res.0.i.i97183 = phi i32 [ %call1.i.i.i95, %if.end.i.i99.if.then11.i.i102_crit_edge ], [ 18, %sw.bb37.if.then11.i.i102_crit_edge ], [ 18, %land.lhs.true.i.i89.if.then11.i.i102_crit_edge ]
  %sub.i.i100 = sub i32 18, %res.0.i.i97183
  %add.ptr.i.i101 = getelementptr i8, ptr %voice, i32 %sub.i.i100
  %78 = call ptr @memset(ptr %add.ptr.i.i101, i32 0, i32 %res.0.i.i97183)
  br label %cleanup43

if.end41:                                         ; preds = %if.end.i.i99
  %79 = ptrtoint ptr %voice to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %voice, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %80)
  %cmp.i137 = icmp ugt i8 %80, 1
  br i1 %cmp.i137, label %if.end41.cleanup43_crit_edge, label %if.end.i140

if.end41.cleanup43_crit_edge:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup43

if.end.i140:                                      ; preds = %if.end41
  %81 = ptrtoint ptr %56 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %56, align 1
  %conv3.i = zext i8 %82 to i32
  %fm_mode.i138 = getelementptr inbounds %struct.snd_opl3, ptr %1, i32 0, i32 16
  %83 = ptrtoint ptr %fm_mode.i138 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %fm_mode.i138, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %84)
  %cmp5.i = icmp eq i8 %84, 1
  %cond.i139 = select i1 %cmp5.i, i32 18, i32 9
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i139, i32 %conv3.i)
  %cmp7.not.i = icmp ugt i32 %cond.i139, %conv3.i
  br i1 %cmp7.not.i, label %if.end10.i, label %if.end.i140.cleanup43_crit_edge

if.end.i140.cleanup43_crit_edge:                  ; preds = %if.end.i140
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup43

if.end10.i:                                       ; preds = %if.end.i140
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %82)
  %cmp13.i = icmp ult i8 %82, 9
  %sub.i141 = add i8 %82, -9
  %voice_offset.0.i142 = select i1 %cmp13.i, i8 %82, i8 %sub.i141
  %reg_side.0.i143 = select i1 %cmp13.i, i32 0, i32 256
  %conv21.i = zext i8 %voice_offset.0.i142 to i32
  %85 = call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %conv21.i, i32 9) #7, !srcloc !44
  %86 = trunc i32 %85 to i8
  %conv26.i = and i8 %voice_offset.0.i142, %86
  %87 = ptrtoint ptr %voice to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %voice, align 1
  %conv31.i = zext i8 %88 to i32
  %89 = call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %conv31.i, i32 4) #7, !srcloc !44
  %90 = trunc i32 %89 to i8
  %conv42.i = and i8 %88, %90
  %idxprom.i144 = zext i8 %conv26.i to i32
  %idxprom43.i = zext i8 %conv42.i to i32
  %arrayidx44.i = getelementptr [9 x [4 x i8]], ptr @snd_opl3_regmap, i32 0, i32 %idxprom.i144, i32 %idxprom43.i
  %91 = ptrtoint ptr %arrayidx44.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %arrayidx44.i, align 1
  %93 = ptrtoint ptr %57 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %57, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %94)
  %tobool.not.i145 = icmp eq i8 %94, 0
  %reg_val.0.i146 = select i1 %tobool.not.i145, i8 0, i8 -128
  %95 = ptrtoint ptr %58 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %58, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %96)
  %tobool49.not.i = icmp eq i8 %96, 0
  %97 = or i8 %reg_val.0.i146, 64
  %reg_val.1.i = select i1 %tobool49.not.i, i8 %reg_val.0.i146, i8 %97
  %98 = ptrtoint ptr %59 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %59, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %99)
  %tobool55.not.i = icmp eq i8 %99, 0
  %100 = or i8 %reg_val.1.i, 32
  %reg_val.2.i = select i1 %tobool55.not.i, i8 %reg_val.1.i, i8 %100
  %101 = ptrtoint ptr %60 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %60, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %102)
  %tobool61.not.i = icmp eq i8 %102, 0
  %103 = or i8 %reg_val.2.i, 16
  %reg_val.3.i = select i1 %tobool61.not.i, i8 %reg_val.2.i, i8 %103
  %104 = ptrtoint ptr %61 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %61, align 1
  %106 = and i8 %105, 15
  %or70236.i = or i8 %reg_val.3.i, %106
  %conv73.i = zext i8 %92 to i32
  %add.i147 = add nuw nsw i32 %conv73.i, 32
  %or74.i = or i32 %add.i147, %reg_side.0.i143
  %conv75.i = trunc i32 %or74.i to i16
  %command.i148 = getelementptr inbounds %struct.snd_opl3, ptr %1, i32 0, i32 5
  %107 = ptrtoint ptr %command.i148 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %command.i148, align 4
  call void %108(ptr noundef nonnull %1, i16 noundef zeroext %conv75.i, i8 noundef zeroext %or70236.i) #7
  %109 = ptrtoint ptr %62 to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %62, align 1
  %shl.i149 = shl i8 %110, 6
  %111 = ptrtoint ptr %63 to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %63, align 1
  %113 = and i8 %112, 63
  %114 = or i8 %113, %shl.i149
  %or82237.i = xor i8 %114, 63
  %add86.i = add nuw nsw i32 %conv73.i, 64
  %or87.i = or i32 %add86.i, %reg_side.0.i143
  %conv88.i = trunc i32 %or87.i to i16
  %115 = ptrtoint ptr %command.i148 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %command.i148, align 4
  call void %116(ptr noundef nonnull %1, i16 noundef zeroext %conv88.i, i8 noundef zeroext %or82237.i) #7
  %117 = ptrtoint ptr %64 to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %64, align 1
  %shl91.i = shl i8 %118, 4
  %119 = ptrtoint ptr %65 to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %65, align 1
  %121 = and i8 %120, 15
  %or97238.i = or i8 %121, %shl91.i
  %add101.i = add nuw nsw i32 %conv73.i, 96
  %or102.i = or i32 %add101.i, %reg_side.0.i143
  %conv103.i = trunc i32 %or102.i to i16
  %122 = ptrtoint ptr %command.i148 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %command.i148, align 4
  call void %123(ptr noundef nonnull %1, i16 noundef zeroext %conv103.i, i8 noundef zeroext %or97238.i) #7
  %124 = ptrtoint ptr %66 to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %66, align 1
  %shl106.i = shl i8 %125, 4
  %126 = ptrtoint ptr %67 to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %67, align 1
  %128 = and i8 %127, 15
  %or112239.i = or i8 %128, %shl106.i
  %add116.i = add nuw nsw i32 %conv73.i, 128
  %or117.i = or i32 %add116.i, %reg_side.0.i143
  %conv118.i = trunc i32 %or117.i to i16
  %129 = ptrtoint ptr %command.i148 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %command.i148, align 4
  call void %130(ptr noundef nonnull %1, i16 noundef zeroext %conv118.i, i8 noundef zeroext %or112239.i) #7
  %131 = ptrtoint ptr %68 to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %68, align 1
  %shl121.i = shl i8 %132, 1
  %and122.i = and i8 %shl121.i, 14
  %133 = ptrtoint ptr %69 to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %69, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %134)
  %tobool124.not.i = icmp ne i8 %134, 0
  %135 = zext i1 %tobool124.not.i to i8
  %reg_val.4.i = or i8 %and122.i, %135
  %136 = ptrtoint ptr %fm_mode.i138 to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %fm_mode.i138, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %137)
  %cmp132.i = icmp eq i8 %137, 1
  br i1 %cmp132.i, label %if.then134.i, label %if.end10.i.if.end147.i_crit_edge

if.end10.i.if.end147.i_crit_edge:                 ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end147.i

if.then134.i:                                     ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  %138 = ptrtoint ptr %70 to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %70, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %139)
  %tobool135.not.i = icmp eq i8 %139, 0
  %140 = or i8 %reg_val.4.i, 16
  %spec.select.i = select i1 %tobool135.not.i, i8 %reg_val.4.i, i8 %140
  %141 = ptrtoint ptr %71 to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %71, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %142)
  %tobool141.not.i = icmp eq i8 %142, 0
  %143 = or i8 %spec.select.i, 32
  %spec.select240.i = select i1 %tobool141.not.i, i8 %spec.select.i, i8 %143
  br label %if.end147.i

if.end147.i:                                      ; preds = %if.then134.i, %if.end10.i.if.end147.i_crit_edge
  %reg_val.6.i = phi i8 [ %reg_val.4.i, %if.end10.i.if.end147.i_crit_edge ], [ %spec.select240.i, %if.then134.i ]
  %add150.i = add nuw nsw i32 %idxprom.i144, 192
  %or151.i = or i32 %add150.i, %reg_side.0.i143
  %conv152.i = trunc i32 %or151.i to i16
  %144 = ptrtoint ptr %command.i148 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %command.i148, align 4
  call void %145(ptr noundef nonnull %1, i16 noundef zeroext %conv152.i, i8 noundef zeroext %reg_val.6.i) #7
  %146 = ptrtoint ptr %72 to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %72, align 1
  %148 = and i8 %147, 7
  %add159.i = add nuw nsw i32 %conv73.i, 224
  %or160.i = or i32 %add159.i, %reg_side.0.i143
  %conv161.i = trunc i32 %or160.i to i16
  %149 = ptrtoint ptr %command.i148 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %command.i148, align 4
  call void %150(ptr noundef nonnull %1, i16 noundef zeroext %conv161.i, i8 noundef zeroext %148) #7
  br label %cleanup43

cleanup43:                                        ; preds = %if.end147.i, %if.end.i140.cleanup43_crit_edge, %if.end41.cleanup43_crit_edge, %if.then11.i.i102
  %retval.2 = phi i32 [ 0, %if.end147.i ], [ -22, %if.end41.cleanup43_crit_edge ], [ -22, %if.end.i140.cleanup43_crit_edge ], [ -14, %if.then11.i.i102 ]
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %voice) #7
  br label %cleanup56

sw.bb44:                                          ; preds = %if.end23.sw.bb44_crit_edge, %if.end23.sw.bb44_crit_edge194
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %params) #7
  %151 = getelementptr inbounds %struct.snd_dm_fm_params, ptr %params, i32 0, i32 1
  %152 = getelementptr inbounds %struct.snd_dm_fm_params, ptr %params, i32 0, i32 2
  %153 = getelementptr inbounds %struct.snd_dm_fm_params, ptr %params, i32 0, i32 3
  %154 = getelementptr inbounds %struct.snd_dm_fm_params, ptr %params, i32 0, i32 4
  %155 = getelementptr inbounds %struct.snd_dm_fm_params, ptr %params, i32 0, i32 5
  %156 = getelementptr inbounds %struct.snd_dm_fm_params, ptr %params, i32 0, i32 6
  %157 = getelementptr inbounds %struct.snd_dm_fm_params, ptr %params, i32 0, i32 7
  %158 = getelementptr inbounds %struct.snd_dm_fm_params, ptr %params, i32 0, i32 8
  %159 = call ptr @memset(ptr %params, i32 255, i32 9)
  tail call void @__might_fault(ptr noundef nonnull @.str.7, i32 noundef 156) #7
  %call.i.i109 = tail call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i109, label %sw.bb44.if.then11.i.i126_crit_edge, label %land.lhs.true.i.i113

sw.bb44.if.then11.i.i126_crit_edge:               ; preds = %sw.bb44
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i126

land.lhs.true.i.i113:                             ; preds = %sw.bb44
  %160 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 9, i32 -1226833920) #10, !srcloc !39
  %asmresult.i.i111 = extractvalue { i32, i32 } %160, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i111)
  %cmp.i6.i112 = icmp eq i32 %asmresult.i.i111, 0
  br i1 %cmp.i6.i112, label %if.end.i.i123, label %land.lhs.true.i.i113.if.then11.i.i126_crit_edge, !prof !40

land.lhs.true.i.i113.if.then11.i.i126_crit_edge:  ; preds = %land.lhs.true.i.i113
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i126

if.end.i.i123:                                    ; preds = %land.lhs.true.i.i113
  %call.i.i.i114 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %params, i32 noundef 9) #7
  %161 = call i32 @llvm.read_register.i32(metadata !27) #7
  %and.i.i.i.i.i.i115 = and i32 %161, -16384
  %162 = inttoptr i32 %and.i.i.i.i.i.i115 to ptr
  %cpu_domain.i.i.i.i.i116 = getelementptr inbounds %struct.thread_info, ptr %162, i32 0, i32 4
  %163 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i116) #4, !srcloc !41
  %and.i.i.i.i117 = and i32 %163, -13
  %or.i.i.i.i118 = or i32 %and.i.i.i.i117, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i118) #7, !srcloc !42
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !43
  %call1.i.i.i119 = call i32 @arm_copy_from_user(ptr noundef nonnull %params, ptr noundef %2, i32 noundef 9) #7
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %163) #7, !srcloc !42
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !43
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i119)
  %tobool4.not.i.i122 = icmp eq i32 %call1.i.i.i119, 0
  br i1 %tobool4.not.i.i122, label %if.end48, label %if.end.i.i123.if.then11.i.i126_crit_edge, !prof !40

if.end.i.i123.if.then11.i.i126_crit_edge:         ; preds = %if.end.i.i123
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i126

if.then11.i.i126:                                 ; preds = %if.end.i.i123.if.then11.i.i126_crit_edge, %land.lhs.true.i.i113.if.then11.i.i126_crit_edge, %sw.bb44.if.then11.i.i126_crit_edge
  %res.0.i.i121188 = phi i32 [ %call1.i.i.i119, %if.end.i.i123.if.then11.i.i126_crit_edge ], [ 9, %sw.bb44.if.then11.i.i126_crit_edge ], [ 9, %land.lhs.true.i.i113.if.then11.i.i126_crit_edge ]
  %sub.i.i124 = sub i32 9, %res.0.i.i121188
  %add.ptr.i.i125 = getelementptr i8, ptr %params, i32 %sub.i.i124
  %164 = call ptr @memset(ptr %add.ptr.i.i125, i32 0, i32 %res.0.i.i121188)
  br label %cleanup50

if.end48:                                         ; preds = %if.end.i.i123
  call void @__sanitizer_cov_trace_pc() #9
  %165 = ptrtoint ptr %152 to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %152, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %166)
  %tobool.not.i151 = icmp eq i8 %166, 0
  %spec.select.i152 = select i1 %tobool.not.i151, i8 0, i8 64
  %command.i153 = getelementptr inbounds %struct.snd_opl3, ptr %1, i32 0, i32 5
  %167 = ptrtoint ptr %command.i153 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %command.i153, align 4
  call void %168(ptr noundef nonnull %1, i16 noundef zeroext 8, i8 noundef zeroext %spec.select.i152) #7
  %169 = ptrtoint ptr %params to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %params, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %170)
  %tobool2.not.i = icmp eq i8 %170, 0
  %reg_val.1.i154 = select i1 %tobool2.not.i, i8 0, i8 -128
  %171 = ptrtoint ptr %151 to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %151, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %172)
  %tobool8.not.i = icmp eq i8 %172, 0
  %173 = or i8 %reg_val.1.i154, 64
  %reg_val.2.i155 = select i1 %tobool8.not.i, i8 %reg_val.1.i154, i8 %173
  %174 = ptrtoint ptr %153 to i32
  call void @__asan_load1_noabort(i32 %174)
  %175 = load i8, ptr %153, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %175)
  %tobool14.not.i = icmp eq i8 %175, 0
  %176 = or i8 %reg_val.2.i155, 32
  %not.tobool14.not.i = xor i1 %tobool14.not.i, true
  %spec.select2.i = zext i1 %not.tobool14.not.i to i8
  %spec.select3.i = select i1 %tobool14.not.i, i8 %reg_val.2.i155, i8 %176
  %177 = getelementptr inbounds %struct.snd_opl3, ptr %1, i32 0, i32 17
  %178 = ptrtoint ptr %177 to i32
  call void @__asan_store1_noabort(i32 %178)
  store i8 %spec.select2.i, ptr %177, align 1
  %179 = ptrtoint ptr %154 to i32
  call void @__asan_load1_noabort(i32 %179)
  %180 = load i8, ptr %154, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %180)
  %tobool22.not.i = icmp eq i8 %180, 0
  %181 = or i8 %spec.select3.i, 16
  %spec.select1.i = select i1 %tobool22.not.i, i8 %spec.select3.i, i8 %181
  %182 = ptrtoint ptr %155 to i32
  call void @__asan_load1_noabort(i32 %182)
  %183 = load i8, ptr %155, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %183)
  %tobool28.not.i = icmp eq i8 %183, 0
  %184 = or i8 %spec.select1.i, 8
  %reg_val.5.i = select i1 %tobool28.not.i, i8 %spec.select1.i, i8 %184
  %185 = ptrtoint ptr %156 to i32
  call void @__asan_load1_noabort(i32 %185)
  %186 = load i8, ptr %156, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %186)
  %tobool34.not.i = icmp eq i8 %186, 0
  %187 = or i8 %reg_val.5.i, 4
  %reg_val.6.i157 = select i1 %tobool34.not.i, i8 %reg_val.5.i, i8 %187
  %188 = ptrtoint ptr %157 to i32
  call void @__asan_load1_noabort(i32 %188)
  %189 = load i8, ptr %157, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %189)
  %tobool40.not.i = icmp eq i8 %189, 0
  %190 = or i8 %reg_val.6.i157, 2
  %reg_val.7.i = select i1 %tobool40.not.i, i8 %reg_val.6.i157, i8 %190
  %191 = ptrtoint ptr %158 to i32
  call void @__asan_load1_noabort(i32 %191)
  %192 = load i8, ptr %158, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %192)
  %tobool46.not.i = icmp ne i8 %192, 0
  %193 = zext i1 %tobool46.not.i to i8
  %reg_val.8.i = or i8 %reg_val.7.i, %193
  %194 = ptrtoint ptr %command.i153 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %command.i153, align 4
  call void %195(ptr noundef nonnull %1, i16 noundef zeroext 189, i8 noundef zeroext %reg_val.8.i) #7
  br label %cleanup50

cleanup50:                                        ; preds = %if.end48, %if.then11.i.i126
  %retval.3 = phi i32 [ 0, %if.end48 ], [ -14, %if.then11.i.i126 ]
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %params) #7
  br label %cleanup56

sw.bb51:                                          ; preds = %if.end23.sw.bb51_crit_edge, %if.end23.sw.bb51_crit_edge195
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %arg)
  %cmp.i158 = icmp eq i32 %arg, 1
  br i1 %cmp.i158, label %land.lhs.true.i, label %sw.bb51.if.end.i162_crit_edge

sw.bb51.if.end.i162_crit_edge:                    ; preds = %sw.bb51
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i162

land.lhs.true.i:                                  ; preds = %sw.bb51
  %hardware.i159 = getelementptr inbounds %struct.snd_opl3, ptr %1, i32 0, i32 4
  %196 = ptrtoint ptr %hardware.i159 to i32
  call void @__asan_load2_noabort(i32 %196)
  %197 = load i16, ptr %hardware.i159, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 768, i16 %197)
  %cmp1.i = icmp ult i16 %197, 768
  br i1 %cmp1.i, label %land.lhs.true.i.cleanup56_crit_edge, label %land.lhs.true.i.if.end.i162_crit_edge

land.lhs.true.i.if.end.i162_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i162

land.lhs.true.i.cleanup56_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup56

if.end.i162:                                      ; preds = %land.lhs.true.i.if.end.i162_crit_edge, %sw.bb51.if.end.i162_crit_edge
  %conv3.i160 = trunc i32 %arg to i8
  %fm_mode.i161 = getelementptr inbounds %struct.snd_opl3, ptr %1, i32 0, i32 16
  %198 = ptrtoint ptr %fm_mode.i161 to i32
  call void @__asan_store1_noabort(i32 %198)
  store i8 %conv3.i160, ptr %fm_mode.i161, align 4
  %hardware4.i = getelementptr inbounds %struct.snd_opl3, ptr %1, i32 0, i32 4
  %199 = ptrtoint ptr %hardware4.i to i32
  call void @__asan_load2_noabort(i32 %199)
  %200 = load i16, ptr %hardware4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 767, i16 %200)
  %cmp6.i = icmp ugt i16 %200, 767
  br i1 %cmp6.i, label %if.then8.i, label %if.end.i162.cleanup56_crit_edge

if.end.i162.cleanup56_crit_edge:                  ; preds = %if.end.i162
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup56

if.then8.i:                                       ; preds = %if.end.i162
  call void @__sanitizer_cov_trace_pc() #9
  %command.i163 = getelementptr inbounds %struct.snd_opl3, ptr %1, i32 0, i32 5
  %201 = ptrtoint ptr %command.i163 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %command.i163, align 4
  tail call void %202(ptr noundef nonnull %1, i16 noundef zeroext 260, i8 noundef zeroext 0) #7
  br label %cleanup56

sw.bb53:                                          ; preds = %if.end23.sw.bb53_crit_edge, %if.end23.sw.bb53_crit_edge196
  %fm_mode.i165 = getelementptr inbounds %struct.snd_opl3, ptr %1, i32 0, i32 16
  %203 = ptrtoint ptr %fm_mode.i165 to i32
  call void @__asan_load1_noabort(i32 %203)
  %204 = load i8, ptr %fm_mode.i165, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %204)
  %cmp.not.i = icmp eq i8 %204, 1
  br i1 %cmp.not.i, label %if.end.i167, label %sw.bb53.cleanup56_crit_edge

sw.bb53.cleanup56_crit_edge:                      ; preds = %sw.bb53
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup56

if.end.i167:                                      ; preds = %sw.bb53
  call void @__sanitizer_cov_trace_pc() #9
  %205 = trunc i32 %arg to i8
  %conv2.i = and i8 %205, 63
  %command.i166 = getelementptr inbounds %struct.snd_opl3, ptr %1, i32 0, i32 5
  %206 = ptrtoint ptr %command.i166 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %command.i166, align 4
  tail call void %207(ptr noundef nonnull %1, i16 noundef zeroext 260, i8 noundef zeroext %conv2.i) #7
  br label %cleanup56

for.body.i170:                                    ; preds = %for.end.i.for.body.i170_crit_edge, %if.end23.for.body.i170_crit_edge
  %i.014.i = phi i32 [ %inc.i172, %for.end.i.for.body.i170_crit_edge ], [ 0, %if.end23.for.body.i170_crit_edge ]
  %arrayidx.i169 = getelementptr %struct.snd_opl3, ptr %1, i32 0, i32 25, i32 %i.014.i
  %208 = ptrtoint ptr %arrayidx.i169 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %arrayidx.i169, align 4
  %tobool.not12.i = icmp eq ptr %209, null
  br i1 %tobool.not12.i, label %for.body.i170.for.end.i_crit_edge, label %for.body.i170.for.body2.i_crit_edge

for.body.i170.for.body2.i_crit_edge:              ; preds = %for.body.i170
  br label %for.body2.i

for.body.i170.for.end.i_crit_edge:                ; preds = %for.body.i170
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body2.i:                                      ; preds = %for.body2.i.for.body2.i_crit_edge, %for.body.i170.for.body2.i_crit_edge
  %patch.013.i = phi ptr [ %211, %for.body2.i.for.body2.i_crit_edge ], [ %209, %for.body.i170.for.body2.i_crit_edge ]
  %next3.i = getelementptr inbounds %struct.fm_patch, ptr %patch.013.i, i32 0, i32 5
  %210 = ptrtoint ptr %next3.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %next3.i, align 4
  tail call void @kfree(ptr noundef nonnull %patch.013.i) #7
  %tobool.not.i171 = icmp eq ptr %211, null
  br i1 %tobool.not.i171, label %for.body2.i.for.end.i_crit_edge, label %for.body2.i.for.body2.i_crit_edge

for.body2.i.for.body2.i_crit_edge:                ; preds = %for.body2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body2.i

for.body2.i.for.end.i_crit_edge:                  ; preds = %for.body2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.end.i:                                        ; preds = %for.body2.i.for.end.i_crit_edge, %for.body.i170.for.end.i_crit_edge
  %inc.i172 = add nuw nsw i32 %i.014.i, 1
  %exitcond.not.i173 = icmp eq i32 %inc.i172, 32
  br i1 %exitcond.not.i173, label %snd_opl3_clear_patches.exit, label %for.end.i.for.body.i170_crit_edge

for.end.i.for.body.i170_crit_edge:                ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i170

snd_opl3_clear_patches.exit:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %patch_table6.i = getelementptr inbounds %struct.snd_opl3, ptr %1, i32 0, i32 25
  %212 = call ptr @memset(ptr %patch_table6.i, i32 0, i32 128)
  br label %cleanup56

sw.default:                                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 0, ptr noundef nonnull @.str, i32 noundef 163, ptr noundef nonnull @.str.1, i32 noundef %cmd) #7
  br label %cleanup56

cleanup56:                                        ; preds = %sw.default, %snd_opl3_clear_patches.exit, %if.end.i167, %sw.bb53.cleanup56_crit_edge, %if.then8.i, %if.end.i162.cleanup56_crit_edge, %land.lhs.true.i.cleanup56_crit_edge, %cleanup50, %cleanup43, %cleanup36, %snd_opl3_reset.exit, %copy_to_user.exit.thread, %do.end
  %retval.4 = phi i32 [ -22, %do.end ], [ -25, %sw.default ], [ 0, %snd_opl3_clear_patches.exit ], [ %retval.3, %cleanup50 ], [ %retval.2, %cleanup43 ], [ %retval.1, %cleanup36 ], [ 0, %snd_opl3_reset.exit ], [ %12, %copy_to_user.exit.thread ], [ -22, %land.lhs.true.i.cleanup56_crit_edge ], [ 0, %if.then8.i ], [ 0, %if.end.i162.cleanup56_crit_edge ], [ 0, %if.end.i167 ], [ -22, %sw.bb53.cleanup56_crit_edge ]
  ret i32 %retval.4
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_opl3_reset(ptr noundef %opl3) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hardware = getelementptr inbounds %struct.snd_opl3, ptr %opl3, i32 0, i32 4
  %0 = ptrtoint ptr %hardware to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %hardware, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 768, i16 %1)
  %cmp = icmp ult i16 %1, 768
  %cond = select i1 %cmp, i32 9, i32 18
  %command = getelementptr inbounds %struct.snd_opl3, ptr %opl3, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.053 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %i.053)
  %cmp4 = icmp ult i32 %i.053, 9
  %conv7 = add nuw nsw i32 %i.053, 247
  %reg_side.0 = select i1 %cmp4, i32 0, i32 256
  %voice_offset.0 = select i1 %cmp4, i32 %i.053, i32 %conv7
  %idxprom = and i32 %voice_offset.0, 255
  %arrayidx = getelementptr [9 x [4 x i8]], ptr @snd_opl3_regmap, i32 0, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv10 = zext i8 %3 to i32
  %add = add nuw nsw i32 %conv10, 64
  %or = or i32 %add, %reg_side.0
  %conv11 = trunc i32 %or to i16
  %4 = ptrtoint ptr %command to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %command, align 4
  tail call void %5(ptr noundef %opl3, i16 noundef zeroext %conv11, i8 noundef zeroext 63) #7
  %arrayidx15 = getelementptr [9 x [4 x i8]], ptr @snd_opl3_regmap, i32 0, i32 %idxprom, i32 1
  %6 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx15, align 1
  %conv16 = zext i8 %7 to i32
  %add17 = add nuw nsw i32 %conv16, 64
  %or18 = or i32 %add17, %reg_side.0
  %conv19 = trunc i32 %or18 to i16
  %8 = ptrtoint ptr %command to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %command, align 4
  tail call void %9(ptr noundef %opl3, i16 noundef zeroext %conv19, i8 noundef zeroext 63) #7
  %add23 = add nuw nsw i32 %idxprom, 176
  %or24 = or i32 %add23, %reg_side.0
  %conv25 = trunc i32 %or24 to i16
  %10 = ptrtoint ptr %command to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %command, align 4
  tail call void %11(ptr noundef %opl3, i16 noundef zeroext %conv25, i8 noundef zeroext 0) #7
  %inc = add nuw nsw i32 %i.053, 1
  %exitcond.not = icmp eq i32 %inc, %cond
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %max_voices27 = getelementptr inbounds %struct.snd_opl3, ptr %opl3, i32 0, i32 18
  %12 = ptrtoint ptr %max_voices27 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 9, ptr %max_voices27, align 2
  %fm_mode = getelementptr inbounds %struct.snd_opl3, ptr %opl3, i32 0, i32 16
  %13 = ptrtoint ptr %fm_mode to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %fm_mode, align 4
  %14 = ptrtoint ptr %command to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %command, align 4
  tail call void %15(ptr noundef %opl3, i16 noundef zeroext 1, i8 noundef zeroext 32) #7
  %16 = ptrtoint ptr %command to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %command, align 4
  tail call void %17(ptr noundef %opl3, i16 noundef zeroext 189, i8 noundef zeroext 0) #7
  %rhythm = getelementptr inbounds %struct.snd_opl3, ptr %opl3, i32 0, i32 17
  %18 = ptrtoint ptr %rhythm to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %rhythm, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_opl3_clear_patches(ptr nocapture noundef %opl3) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.end.for.body_crit_edge, %entry
  %i.014 = phi i32 [ 0, %entry ], [ %inc, %for.end.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.snd_opl3, ptr %opl3, i32 0, i32 25, i32 %i.014
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not12 = icmp eq ptr %1, null
  br i1 %tobool.not12, label %for.body.for.end_crit_edge, label %for.body.for.body2_crit_edge

for.body.for.body2_crit_edge:                     ; preds = %for.body
  br label %for.body2

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body2:                                        ; preds = %for.body2.for.body2_crit_edge, %for.body.for.body2_crit_edge
  %patch.013 = phi ptr [ %3, %for.body2.for.body2_crit_edge ], [ %1, %for.body.for.body2_crit_edge ]
  %next3 = getelementptr inbounds %struct.fm_patch, ptr %patch.013, i32 0, i32 5
  %2 = ptrtoint ptr %next3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %next3, align 4
  tail call void @kfree(ptr noundef nonnull %patch.013) #7
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %for.body2.for.end_crit_edge, label %for.body2.for.body2_crit_edge

for.body2.for.body2_crit_edge:                    ; preds = %for.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body2

for.body2.for.end_crit_edge:                      ; preds = %for.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.body2.for.end_crit_edge, %for.body.for.end_crit_edge
  %inc = add nuw nsw i32 %i.014, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.end5, label %for.end.for.body_crit_edge

for.end.for.body_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end5:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %patch_table6 = getelementptr inbounds %struct.snd_opl3, ptr %opl3, i32 0, i32 25
  %4 = call ptr @memset(ptr %patch_table6, i32 0, i32 128)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__snd_printk(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_opl3_release(ptr nocapture noundef readonly %hw, ptr nocapture noundef readnone %file) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_hwdep, ptr %hw, i32 0, i32 10
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %hardware.i = getelementptr inbounds %struct.snd_opl3, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %hardware.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %hardware.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 768, i16 %3)
  %cmp.i = icmp ult i16 %3, 768
  %cond.i = select i1 %cmp.i, i32 9, i32 18
  %command.i = getelementptr inbounds %struct.snd_opl3, ptr %1, i32 0, i32 5
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry
  %i.053.i = phi i32 [ 0, %entry ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %i.053.i)
  %cmp4.i = icmp ult i32 %i.053.i, 9
  %conv7.i = add nuw nsw i32 %i.053.i, 247
  %reg_side.0.i = select i1 %cmp4.i, i32 0, i32 256
  %voice_offset.0.i = select i1 %cmp4.i, i32 %i.053.i, i32 %conv7.i
  %idxprom.i = and i32 %voice_offset.0.i, 255
  %arrayidx.i = getelementptr [9 x [4 x i8]], ptr @snd_opl3_regmap, i32 0, i32 %idxprom.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.i, align 1
  %conv10.i = zext i8 %5 to i32
  %add.i = add nuw nsw i32 %conv10.i, 64
  %or.i = or i32 %add.i, %reg_side.0.i
  %conv11.i = trunc i32 %or.i to i16
  %6 = ptrtoint ptr %command.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %command.i, align 4
  tail call void %7(ptr noundef %1, i16 noundef zeroext %conv11.i, i8 noundef zeroext 63) #7
  %arrayidx15.i = getelementptr [9 x [4 x i8]], ptr @snd_opl3_regmap, i32 0, i32 %idxprom.i, i32 1
  %8 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx15.i, align 1
  %conv16.i = zext i8 %9 to i32
  %add17.i = add nuw nsw i32 %conv16.i, 64
  %or18.i = or i32 %add17.i, %reg_side.0.i
  %conv19.i = trunc i32 %or18.i to i16
  %10 = ptrtoint ptr %command.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %command.i, align 4
  tail call void %11(ptr noundef %1, i16 noundef zeroext %conv19.i, i8 noundef zeroext 63) #7
  %add23.i = add nuw nsw i32 %idxprom.i, 176
  %or24.i = or i32 %add23.i, %reg_side.0.i
  %conv25.i = trunc i32 %or24.i to i16
  %12 = ptrtoint ptr %command.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %command.i, align 4
  tail call void %13(ptr noundef %1, i16 noundef zeroext %conv25.i, i8 noundef zeroext 0) #7
  %inc.i = add nuw nsw i32 %i.053.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %cond.i
  br i1 %exitcond.not.i, label %snd_opl3_reset.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

snd_opl3_reset.exit:                              ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %max_voices27.i = getelementptr inbounds %struct.snd_opl3, ptr %1, i32 0, i32 18
  %14 = ptrtoint ptr %max_voices27.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 9, ptr %max_voices27.i, align 2
  %fm_mode.i = getelementptr inbounds %struct.snd_opl3, ptr %1, i32 0, i32 16
  %15 = ptrtoint ptr %fm_mode.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %fm_mode.i, align 4
  %16 = ptrtoint ptr %command.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %command.i, align 4
  tail call void %17(ptr noundef %1, i16 noundef zeroext 1, i8 noundef zeroext 32) #7
  %18 = ptrtoint ptr %command.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %command.i, align 4
  tail call void %19(ptr noundef %1, i16 noundef zeroext 189, i8 noundef zeroext 0) #7
  %rhythm.i = getelementptr inbounds %struct.snd_opl3, ptr %1, i32 0, i32 17
  %20 = ptrtoint ptr %rhythm.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %rhythm.i, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_opl3_write(ptr nocapture noundef readonly %hw, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readnone %offset) local_unnamed_addr #1 align 64 {
entry:
  %inst = alloca %struct.sbi_patch, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_hwdep, ptr %hw, i32 0, i32 10
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 70, ptr nonnull %inst) #7
  %2 = call ptr @memset(ptr %inst, i32 255, i32 70)
  call void @__sanitizer_cov_trace_const_cmp4(i32 69, i32 %count)
  %cmp53 = icmp ugt i32 %count, 69
  br i1 %cmp53, label %if.end59.i.i.lr.ph, label %entry.cleanup28_crit_edge

entry.cleanup28_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup28

if.end59.i.i.lr.ph:                               ; preds = %entry
  %key = getelementptr inbounds %struct.sbi_patch, ptr %inst, i32 0, i32 2
  %bank = getelementptr inbounds %struct.sbi_patch, ptr %inst, i32 0, i32 1
  %name = getelementptr inbounds %struct.sbi_patch, ptr %inst, i32 0, i32 3
  %extension = getelementptr inbounds %struct.sbi_patch, ptr %inst, i32 0, i32 4
  %data = getelementptr inbounds %struct.sbi_patch, ptr %inst, i32 0, i32 5
  %3 = add i32 %count, -70
  %4 = urem i32 %3, 70
  %5 = sub i32 %3, %4
  %6 = add i32 %5, 70
  br label %if.end59.i.i

if.end59.i.i:                                     ; preds = %cleanup.if.end59.i.i_crit_edge, %if.end59.i.i.lr.ph
  %result.055 = phi i32 [ 0, %if.end59.i.i.lr.ph ], [ %add, %cleanup.if.end59.i.i_crit_edge ]
  %count.addr.054 = phi i32 [ %count, %if.end59.i.i.lr.ph ], [ %sub, %cleanup.if.end59.i.i_crit_edge ]
  call void @__might_fault(ptr noundef nonnull @.str.7, i32 noundef 156) #7
  %call.i.i = call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i, label %if.end59.i.i.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.end59.i.i.if.then11.i.i_crit_edge:             ; preds = %if.end59.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.end59.i.i
  %7 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 70, i32 -1226833920) #10, !srcloc !39
  %asmresult.i.i = extractvalue { i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !40

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %inst, i32 noundef 70) #7
  %8 = call i32 @llvm.read_register.i32(metadata !27) #7
  %and.i.i.i.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 4
  %10 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #4, !srcloc !41
  %and.i.i.i.i = and i32 %10, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #7, !srcloc !42
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !43
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %inst, ptr noundef %buf, i32 noundef 70) #7
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %10) #7, !srcloc !42
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !43
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !40

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.end59.i.i.if.then11.i.i_crit_edge
  %res.0.i.i40 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 70, %if.end59.i.i.if.then11.i.i_crit_edge ], [ 70, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 70, %res.0.i.i40
  %add.ptr.i.i = getelementptr i8, ptr %inst, i32 %sub.i.i
  %11 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i40)
  br label %cleanup28

if.end:                                           ; preds = %if.end.i.i
  %bcmp = call i32 @bcmp(ptr noundef dereferenceable(4) %key, ptr noundef nonnull dereferenceable(4) @.str.2, i32 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool2.not = icmp eq i32 %bcmp, 0
  br i1 %tobool2.not, label %if.end.if.end15_crit_edge, label %lor.lhs.false

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

lor.lhs.false:                                    ; preds = %if.end
  %bcmp36 = call i32 @bcmp(ptr noundef dereferenceable(4) %key, ptr noundef nonnull dereferenceable(4) @.str.3, i32 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp36)
  %tobool6.not = icmp eq i32 %bcmp36, 0
  br i1 %tobool6.not, label %lor.lhs.false.if.end15_crit_edge, label %if.else

lor.lhs.false.if.end15_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

if.else:                                          ; preds = %lor.lhs.false
  %bcmp37 = call i32 @bcmp(ptr noundef dereferenceable(4) %key, ptr noundef nonnull dereferenceable(4) @.str.4, i32 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp37)
  %tobool11.not = icmp eq i32 %bcmp37, 0
  br i1 %tobool11.not, label %if.else.if.end15_crit_edge, label %if.else.while.end_crit_edge

if.else.while.end_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

if.else.if.end15_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

if.end15:                                         ; preds = %if.else.if.end15_crit_edge, %lor.lhs.false.if.end15_crit_edge, %if.end.if.end15_crit_edge
  %type.0 = phi i32 [ 1, %lor.lhs.false.if.end15_crit_edge ], [ 1, %if.end.if.end15_crit_edge ], [ 2, %if.else.if.end15_crit_edge ]
  %12 = ptrtoint ptr %inst to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %inst, align 1
  %conv = zext i8 %13 to i32
  %14 = ptrtoint ptr %bank to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %bank, align 1
  %conv16 = zext i8 %15 to i32
  %call21 = call i32 @snd_opl3_load_patch(ptr noundef %1, i32 noundef %conv, i32 noundef %conv16, i32 noundef %type.0, ptr noundef %name, ptr noundef %extension, ptr noundef %data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22 = icmp slt i32 %call21, 0
  br i1 %cmp22, label %if.end15.while.end_crit_edge, label %cleanup

if.end15.while.end_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

cleanup:                                          ; preds = %if.end15
  %add = add i32 %result.055, 70
  %sub = add i32 %count.addr.054, -70
  %cmp = icmp ugt i32 %sub, 69
  br i1 %cmp, label %cleanup.if.end59.i.i_crit_edge, label %cleanup.while.end_crit_edge

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

cleanup.if.end59.i.i_crit_edge:                   ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end59.i.i

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %if.end15.while.end_crit_edge, %if.else.while.end_crit_edge
  %result.0.lcssa = phi i32 [ %6, %cleanup.while.end_crit_edge ], [ %result.055, %if.else.while.end_crit_edge ], [ %result.055, %if.end15.while.end_crit_edge ]
  %err.2 = phi i32 [ 0, %cleanup.while.end_crit_edge ], [ 0, %if.else.while.end_crit_edge ], [ %call21, %if.end15.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %result.0.lcssa)
  %cmp26 = icmp sgt i32 %result.0.lcssa, 0
  %spec.select = select i1 %cmp26, i32 %result.0.lcssa, i32 %err.2
  br label %cleanup28

cleanup28:                                        ; preds = %while.end, %if.then11.i.i, %entry.cleanup28_crit_edge
  %retval.2 = phi i32 [ -14, %if.then11.i.i ], [ 0, %entry.cleanup28_crit_edge ], [ %spec.select, %while.end ]
  call void @llvm.lifetime.end.p0(i64 70, ptr nonnull %inst) #7
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_opl3_load_patch(ptr nocapture noundef %opl3, i32 noundef %prog, i32 noundef %bank, i32 noundef %type, ptr noundef %name, ptr noundef readonly %ext, ptr nocapture noundef readonly %data) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.i = add i32 %bank, %prog
  %rem.i = srem i32 %add.i, 32
  %arrayidx.i = getelementptr %struct.snd_opl3, ptr %opl3, i32 0, i32 25, i32 %rem.i
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %patch.042.i = load ptr, ptr %arrayidx.i, align 4
  %tobool.not43.i = icmp eq ptr %patch.042.i, null
  br i1 %tobool.not43.i, label %entry.for.end.i_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.for.end.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %patch.044.i = phi ptr [ %patch.0.i, %for.inc.i.for.body.i_crit_edge ], [ %patch.042.i, %entry.for.body.i_crit_edge ]
  %1 = ptrtoint ptr %patch.044.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %patch.044.i, align 4
  %conv.i = zext i8 %2 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i, i32 %prog)
  %cmp.i = icmp eq i32 %conv.i, %prog
  br i1 %cmp.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %bank3.i = getelementptr inbounds %struct.fm_patch, ptr %patch.044.i, i32 0, i32 1
  %3 = ptrtoint ptr %bank3.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %bank3.i, align 1
  %conv4.i = zext i8 %4 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv4.i, i32 %bank)
  %cmp5.i = icmp eq i32 %conv4.i, %bank
  br i1 %cmp5.i, label %land.lhs.true.i.if.end_crit_edge, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %next.i = getelementptr inbounds %struct.fm_patch, ptr %patch.044.i, i32 0, i32 5
  %5 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %patch.0.i = load ptr, ptr %next.i, align 4
  %tobool.not.i = icmp eq ptr %patch.0.i, null
  br i1 %tobool.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %entry.for.end.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 60) #12
  %tobool10.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool10.not.i, label %for.end.i.cleanup_crit_edge, label %if.end12.i

for.end.i.cleanup_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end12.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv13.i = trunc i32 %prog to i8
  %7 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv13.i, ptr %call7.i.i.i, align 8
  %conv15.i = trunc i32 %bank to i8
  %bank16.i = getelementptr inbounds %struct.fm_patch, ptr %call7.i.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %bank16.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv15.i, ptr %bank16.i, align 1
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.i, align 4
  %next19.i = getelementptr inbounds %struct.fm_patch, ptr %call7.i.i.i, i32 0, i32 5
  %11 = ptrtoint ptr %next19.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %next19.i, align 8
  store ptr %call7.i.i.i, ptr %arrayidx.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.end12.i, %land.lhs.true.i.if.end_crit_edge
  %retval.0.i.ph = phi ptr [ %call7.i.i.i, %if.end12.i ], [ %patch.044.i, %land.lhs.true.i.if.end_crit_edge ]
  %conv = trunc i32 %type to i8
  %type1 = getelementptr inbounds %struct.fm_patch, ptr %retval.0.i.ph, i32 0, i32 2
  %12 = ptrtoint ptr %type1 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv, ptr %type1, align 2
  %inst = getelementptr inbounds %struct.fm_patch, ptr %retval.0.i.ph, i32 0, i32 3
  %13 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %data, align 1
  %15 = ptrtoint ptr %inst to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %inst, align 1
  %arrayidx5 = getelementptr i8, ptr %data, i32 2
  %16 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx5, align 1
  %ksl_level = getelementptr %struct.fm_patch, ptr %retval.0.i.ph, i32 0, i32 3, i32 0, i32 0, i32 1
  %18 = ptrtoint ptr %ksl_level to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %ksl_level, align 1
  %arrayidx10 = getelementptr i8, ptr %data, i32 4
  %19 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx10, align 1
  %attack_decay = getelementptr %struct.fm_patch, ptr %retval.0.i.ph, i32 0, i32 3, i32 0, i32 0, i32 2
  %21 = ptrtoint ptr %attack_decay to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %attack_decay, align 1
  %arrayidx15 = getelementptr i8, ptr %data, i32 6
  %22 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx15, align 1
  %sustain_release = getelementptr %struct.fm_patch, ptr %retval.0.i.ph, i32 0, i32 3, i32 0, i32 0, i32 3
  %24 = ptrtoint ptr %sustain_release to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %sustain_release, align 1
  %arrayidx20 = getelementptr i8, ptr %data, i32 8
  %25 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx20, align 1
  %wave_select = getelementptr %struct.fm_patch, ptr %retval.0.i.ph, i32 0, i32 3, i32 0, i32 0, i32 4
  %27 = ptrtoint ptr %wave_select to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %wave_select, align 1
  %arrayidx.1 = getelementptr i8, ptr %data, i32 1
  %28 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx.1, align 1
  %arrayidx3.1 = getelementptr %struct.fm_patch, ptr %retval.0.i.ph, i32 0, i32 3, i32 0, i32 1
  %30 = ptrtoint ptr %arrayidx3.1 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %arrayidx3.1, align 1
  %arrayidx5.1 = getelementptr i8, ptr %data, i32 3
  %31 = ptrtoint ptr %arrayidx5.1 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx5.1, align 1
  %ksl_level.1 = getelementptr %struct.fm_patch, ptr %retval.0.i.ph, i32 0, i32 3, i32 0, i32 1, i32 1
  %33 = ptrtoint ptr %ksl_level.1 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %ksl_level.1, align 1
  %arrayidx10.1 = getelementptr i8, ptr %data, i32 5
  %34 = ptrtoint ptr %arrayidx10.1 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx10.1, align 1
  %attack_decay.1 = getelementptr %struct.fm_patch, ptr %retval.0.i.ph, i32 0, i32 3, i32 0, i32 1, i32 2
  %36 = ptrtoint ptr %attack_decay.1 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %attack_decay.1, align 1
  %arrayidx15.1 = getelementptr i8, ptr %data, i32 7
  %37 = ptrtoint ptr %arrayidx15.1 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx15.1, align 1
  %sustain_release.1 = getelementptr %struct.fm_patch, ptr %retval.0.i.ph, i32 0, i32 3, i32 0, i32 1, i32 3
  %39 = ptrtoint ptr %sustain_release.1 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %38, ptr %sustain_release.1, align 1
  %arrayidx20.1 = getelementptr i8, ptr %data, i32 9
  %40 = ptrtoint ptr %arrayidx20.1 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx20.1, align 1
  %wave_select.1 = getelementptr %struct.fm_patch, ptr %retval.0.i.ph, i32 0, i32 3, i32 0, i32 1, i32 4
  %42 = ptrtoint ptr %wave_select.1 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %41, ptr %wave_select.1, align 1
  %arrayidx24 = getelementptr i8, ptr %data, i32 10
  %43 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx24, align 1
  %feedback_connection = getelementptr inbounds %struct.fm_patch, ptr %retval.0.i.ph, i32 0, i32 3, i32 1
  %45 = ptrtoint ptr %feedback_connection to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %44, ptr %feedback_connection, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %type)
  %cmp27 = icmp eq i32 %type, 2
  br i1 %cmp27, label %for.body33.preheader, label %if.end.if.end76_crit_edge

if.end.if.end76_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end76

for.body33.preheader:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx35 = getelementptr i8, ptr %data, i32 11
  %46 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx35, align 1
  %arrayidx39 = getelementptr %struct.fm_patch, ptr %retval.0.i.ph, i32 0, i32 3, i32 0, i32 2
  %48 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %47, ptr %arrayidx39, align 1
  %arrayidx42 = getelementptr i8, ptr %data, i32 13
  %49 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx42, align 1
  %ksl_level47 = getelementptr %struct.fm_patch, ptr %retval.0.i.ph, i32 0, i32 3, i32 0, i32 2, i32 1
  %51 = ptrtoint ptr %ksl_level47 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %50, ptr %ksl_level47, align 1
  %arrayidx49 = getelementptr i8, ptr %data, i32 15
  %52 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx49, align 1
  %attack_decay54 = getelementptr %struct.fm_patch, ptr %retval.0.i.ph, i32 0, i32 3, i32 0, i32 2, i32 2
  %54 = ptrtoint ptr %attack_decay54 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %53, ptr %attack_decay54, align 1
  %arrayidx56 = getelementptr i8, ptr %data, i32 17
  %55 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx56, align 1
  %sustain_release61 = getelementptr %struct.fm_patch, ptr %retval.0.i.ph, i32 0, i32 3, i32 0, i32 2, i32 3
  %57 = ptrtoint ptr %sustain_release61 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %56, ptr %sustain_release61, align 1
  %arrayidx63 = getelementptr i8, ptr %data, i32 19
  %58 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx63, align 1
  %wave_select68 = getelementptr %struct.fm_patch, ptr %retval.0.i.ph, i32 0, i32 3, i32 0, i32 2, i32 4
  %60 = ptrtoint ptr %wave_select68 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %59, ptr %wave_select68, align 1
  %arrayidx35.1 = getelementptr i8, ptr %data, i32 12
  %61 = ptrtoint ptr %arrayidx35.1 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx35.1, align 1
  %arrayidx39.1 = getelementptr %struct.fm_patch, ptr %retval.0.i.ph, i32 0, i32 3, i32 0, i32 3
  %63 = ptrtoint ptr %arrayidx39.1 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %62, ptr %arrayidx39.1, align 1
  %arrayidx42.1 = getelementptr i8, ptr %data, i32 14
  %64 = ptrtoint ptr %arrayidx42.1 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx42.1, align 1
  %ksl_level47.1 = getelementptr %struct.fm_patch, ptr %retval.0.i.ph, i32 0, i32 3, i32 0, i32 3, i32 1
  %66 = ptrtoint ptr %ksl_level47.1 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %65, ptr %ksl_level47.1, align 1
  %arrayidx49.1 = getelementptr i8, ptr %data, i32 16
  %67 = ptrtoint ptr %arrayidx49.1 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %arrayidx49.1, align 1
  %attack_decay54.1 = getelementptr %struct.fm_patch, ptr %retval.0.i.ph, i32 0, i32 3, i32 0, i32 3, i32 2
  %69 = ptrtoint ptr %attack_decay54.1 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %68, ptr %attack_decay54.1, align 1
  %arrayidx56.1 = getelementptr i8, ptr %data, i32 18
  %70 = ptrtoint ptr %arrayidx56.1 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx56.1, align 1
  %sustain_release61.1 = getelementptr %struct.fm_patch, ptr %retval.0.i.ph, i32 0, i32 3, i32 0, i32 3, i32 3
  %72 = ptrtoint ptr %sustain_release61.1 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %71, ptr %sustain_release61.1, align 1
  %arrayidx63.1 = getelementptr i8, ptr %data, i32 20
  %73 = ptrtoint ptr %arrayidx63.1 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx63.1, align 1
  %wave_select68.1 = getelementptr %struct.fm_patch, ptr %retval.0.i.ph, i32 0, i32 3, i32 0, i32 3, i32 4
  %75 = ptrtoint ptr %wave_select68.1 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %74, ptr %wave_select68.1, align 1
  %arrayidx72 = getelementptr i8, ptr %data, i32 21
  %76 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %arrayidx72, align 1
  %arrayidx75 = getelementptr %struct.fm_patch, ptr %retval.0.i.ph, i32 0, i32 3, i32 1, i32 1
  %78 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %77, ptr %arrayidx75, align 1
  br label %if.end76

if.end76:                                         ; preds = %for.body33.preheader, %if.end.if.end76_crit_edge
  %tobool77.not = icmp eq ptr %ext, null
  br i1 %tobool77.not, label %if.end76.if.end93_crit_edge, label %if.then78

if.end76.if.end93_crit_edge:                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end93

if.then78:                                        ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #9
  %79 = ptrtoint ptr %ext to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %ext, align 1
  %echo_delay = getelementptr inbounds %struct.fm_patch, ptr %retval.0.i.ph, i32 0, i32 3, i32 2
  %81 = ptrtoint ptr %echo_delay to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %80, ptr %echo_delay, align 1
  %arrayidx81 = getelementptr i8, ptr %ext, i32 1
  %82 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %arrayidx81, align 1
  %echo_atten = getelementptr inbounds %struct.fm_patch, ptr %retval.0.i.ph, i32 0, i32 3, i32 3
  %84 = ptrtoint ptr %echo_atten to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %83, ptr %echo_atten, align 1
  %arrayidx83 = getelementptr i8, ptr %ext, i32 2
  %85 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %arrayidx83, align 1
  %chorus_spread = getelementptr inbounds %struct.fm_patch, ptr %retval.0.i.ph, i32 0, i32 3, i32 4
  %87 = ptrtoint ptr %chorus_spread to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %86, ptr %chorus_spread, align 1
  %arrayidx85 = getelementptr i8, ptr %ext, i32 3
  %88 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %arrayidx85, align 1
  %trnsps = getelementptr inbounds %struct.fm_patch, ptr %retval.0.i.ph, i32 0, i32 3, i32 5
  %90 = ptrtoint ptr %trnsps to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %89, ptr %trnsps, align 1
  %arrayidx87 = getelementptr i8, ptr %ext, i32 4
  %91 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %arrayidx87, align 1
  %fix_dur = getelementptr inbounds %struct.fm_patch, ptr %retval.0.i.ph, i32 0, i32 3, i32 6
  %93 = ptrtoint ptr %fix_dur to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %92, ptr %fix_dur, align 1
  %arrayidx89 = getelementptr i8, ptr %ext, i32 5
  %94 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %arrayidx89, align 1
  %modes = getelementptr inbounds %struct.fm_patch, ptr %retval.0.i.ph, i32 0, i32 3, i32 7
  %96 = ptrtoint ptr %modes to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %95, ptr %modes, align 1
  %arrayidx91 = getelementptr i8, ptr %ext, i32 6
  %97 = ptrtoint ptr %arrayidx91 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %arrayidx91, align 1
  %fix_key = getelementptr inbounds %struct.fm_patch, ptr %retval.0.i.ph, i32 0, i32 3, i32 8
  %99 = ptrtoint ptr %fix_key to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 %98, ptr %fix_key, align 1
  br label %if.end93

if.end93:                                         ; preds = %if.then78, %if.end76.if.end93_crit_edge
  %tobool94.not = icmp eq ptr %name, null
  br i1 %tobool94.not, label %if.end93.cleanup_crit_edge, label %if.then95

if.end93.cleanup_crit_edge:                       ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then95:                                        ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #9
  %name96 = getelementptr inbounds %struct.fm_patch, ptr %retval.0.i.ph, i32 0, i32 4
  %call97 = tail call i32 @strscpy(ptr noundef %name96, ptr noundef nonnull %name, i32 noundef 24) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then95, %if.end93.cleanup_crit_edge, %for.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then95 ], [ 0, %if.end93.cleanup_crit_edge ], [ -12, %for.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @snd_opl3_find_patch(ptr nocapture noundef %opl3, i32 noundef %prog, i32 noundef %bank, i32 noundef %create_patch) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %bank, %prog
  %rem = srem i32 %add, 32
  %arrayidx = getelementptr %struct.snd_opl3, ptr %opl3, i32 0, i32 25, i32 %rem
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %patch.042 = load ptr, ptr %arrayidx, align 4
  %tobool.not43 = icmp eq ptr %patch.042, null
  br i1 %tobool.not43, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %patch.044 = phi ptr [ %patch.0, %for.inc.for.body_crit_edge ], [ %patch.042, %entry.for.body_crit_edge ]
  %1 = ptrtoint ptr %patch.044 to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %patch.044, align 4
  %conv = zext i8 %2 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %prog)
  %cmp = icmp eq i32 %conv, %prog
  br i1 %cmp, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %bank3 = getelementptr inbounds %struct.fm_patch, ptr %patch.044, i32 0, i32 1
  %3 = ptrtoint ptr %bank3 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %bank3, align 1
  %conv4 = zext i8 %4 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv4, i32 %bank)
  %cmp5 = icmp eq i32 %conv4, %bank
  br i1 %cmp5, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %next = getelementptr inbounds %struct.fm_patch, ptr %patch.044, i32 0, i32 5
  %5 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %5)
  %patch.0 = load ptr, ptr %next, align 4
  %tobool.not = icmp eq ptr %patch.0, null
  br i1 %tobool.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %create_patch)
  %tobool7.not = icmp eq i32 %create_patch, 0
  br i1 %tobool7.not, label %for.end.cleanup_crit_edge, label %if.end9

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9:                                          ; preds = %for.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 60) #12
  %tobool10.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool10.not, label %if.end9.cleanup_crit_edge, label %if.end12

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end12:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %conv13 = trunc i32 %prog to i8
  %7 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv13, ptr %call7.i.i, align 8
  %conv15 = trunc i32 %bank to i8
  %bank16 = getelementptr inbounds %struct.fm_patch, ptr %call7.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %bank16 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv15, ptr %bank16, align 1
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  %next19 = getelementptr inbounds %struct.fm_patch, ptr %call7.i.i, i32 0, i32 5
  %11 = ptrtoint ptr %next19 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %next19, align 8
  store ptr %call7.i.i, ptr %arrayidx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.end9.cleanup_crit_edge, %for.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i, %if.end12 ], [ null, %for.end.cleanup_crit_edge ], [ null, %if.end9.cleanup_crit_edge ], [ %patch.044, %land.lhs.true.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind readonly }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind readonly willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind readnone }
attributes #11 = { nobuiltin }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !23, !25}
!llvm.named.register.sp = !{!27}
!llvm.module.flags = !{!28, !29, !30, !31, !32, !33, !34, !35}
!llvm.ident = !{!36}

!0 = !{ptr @snd_opl3_regmap, !1, !"snd_opl3_regmap", i1 false, i1 false}
!1 = !{!"../sound/drivers/opl3/opl3_synth.c", i32 38, i32 6}
!2 = !{ptr @__ksymtab_snd_opl3_regmap, !3, !"__ksymtab_snd_opl3_regmap", i1 false, i1 false}
!3 = !{!"../sound/drivers/opl3/opl3_synth.c", i32 55, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../sound/drivers/opl3/opl3_synth.c", i32 85, i32 6}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../sound/drivers/opl3/opl3_synth.c", i32 163, i32 3}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../sound/drivers/opl3/opl3_synth.c", i32 196, i32 25}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/drivers/opl3/opl3_synth.c", i32 197, i32 25}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../sound/drivers/opl3/opl3_synth.c", i32 199, i32 30}
!14 = !{ptr @__ksymtab_snd_opl3_load_patch, !15, !"__ksymtab_snd_opl3_load_patch", i1 false, i1 false}
!15 = !{!"../sound/drivers/opl3/opl3_synth.c", i32 297, i32 1}
!16 = !{ptr @__ksymtab_snd_opl3_find_patch, !17, !"__ksymtab_snd_opl3_find_patch", i1 false, i1 false}
!17 = !{!"../sound/drivers/opl3/opl3_synth.c", i32 327, i32 1}
!18 = !{ptr @__ksymtab_snd_opl3_reset, !19, !"__ksymtab_snd_opl3_reset", i1 false, i1 false}
!19 = !{!"../sound/drivers/opl3/opl3_synth.c", i32 388, i32 1}
!20 = distinct !{null, !21, !"__already_done", i1 false, i1 false}
!21 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!22 = distinct !{null, !21, !"<string literal>", i1 false, i1 false}
!23 = distinct !{null, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!27 = !{!"sp"}
!28 = !{i32 1, !"wchar_size", i32 2}
!29 = !{i32 1, !"min_enum_size", i32 4}
!30 = !{i32 8, !"branch-target-enforcement", i32 0}
!31 = !{i32 8, !"sign-return-address", i32 0}
!32 = !{i32 8, !"sign-return-address-all", i32 0}
!33 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!34 = !{i32 7, !"uwtable", i32 1}
!35 = !{i32 7, !"frame-pointer", i32 2}
!36 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!37 = !{!"branch_weights", i32 1, i32 2000}
!38 = !{i64 2153157645, i64 2153157670}
!39 = !{i64 2153156964, i64 2153156989}
!40 = !{!"branch_weights", i32 2000, i32 1}
!41 = !{i64 5652519}
!42 = !{i64 5652716}
!43 = !{i64 2153137949}
!44 = !{i64 859342, i64 859359}
