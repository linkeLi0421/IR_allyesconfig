; ModuleID = '/llk/IR_all_yes/sound/core/pcm_iec958.c_pt.bc'
source_filename = "../sound/core/pcm_iec958.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+snd_pcm_create_iec958_consumer_default\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_pcm_create_iec958_consumer_default\09\09\09\09"
module asm "\09.long\09__crc_snd_pcm_create_iec958_consumer_default\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_pcm_create_iec958_consumer_default:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_pcm_create_iec958_consumer_default\22\09\09\09\09\09"
module asm "__kstrtabns_snd_pcm_create_iec958_consumer_default:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+snd_pcm_fill_iec958_consumer\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_pcm_fill_iec958_consumer\09\09\09\09"
module asm "\09.long\09__crc_snd_pcm_fill_iec958_consumer\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_pcm_fill_iec958_consumer:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_pcm_fill_iec958_consumer\22\09\09\09\09\09"
module asm "__kstrtabns_snd_pcm_fill_iec958_consumer:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+snd_pcm_fill_iec958_consumer_hw_params\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_pcm_fill_iec958_consumer_hw_params\09\09\09\09"
module asm "\09.long\09__crc_snd_pcm_fill_iec958_consumer_hw_params\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_pcm_fill_iec958_consumer_hw_params:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_pcm_fill_iec958_consumer_hw_params\22\09\09\09\09\09"
module asm "__kstrtabns_snd_pcm_fill_iec958_consumer_hw_params:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+snd_pcm_create_iec958_consumer\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_pcm_create_iec958_consumer\09\09\09\09"
module asm "\09.long\09__crc_snd_pcm_create_iec958_consumer\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_pcm_create_iec958_consumer:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_pcm_create_iec958_consumer\22\09\09\09\09\09"
module asm "__kstrtabns_snd_pcm_create_iec958_consumer:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+snd_pcm_create_iec958_consumer_hw_params\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_pcm_create_iec958_consumer_hw_params\09\09\09\09"
module asm "\09.long\09__crc_snd_pcm_create_iec958_consumer_hw_params\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_pcm_create_iec958_consumer_hw_params:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_pcm_create_iec958_consumer_hw_params\22\09\09\09\09\09"
module asm "__kstrtabns_snd_pcm_create_iec958_consumer_hw_params:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.snd_pcm_runtime = type { ptr, %struct.timespec64, i8, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.snd_pcm_sync_id, ptr, ptr, i32, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i8, ptr, ptr, %struct.snd_pcm_hardware, %struct.snd_pcm_hw_constraints, i32, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.snd_pcm_audio_tstamp_config, %struct.snd_pcm_audio_tstamp_report, %struct.timespec64, %struct.snd_pcm_oss_runtime }
%union.snd_pcm_sync_id = type { [4 x i32] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_pcm_hw_constraints = type { [3 x %struct.snd_mask], [12 x %struct.snd_interval], i32, i32, ptr }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.snd_pcm_audio_tstamp_config = type { i8, [3 x i8] }
%struct.snd_pcm_audio_tstamp_report = type { i8, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.snd_pcm_oss_runtime = type { i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.atomic_t, ptr, ptr, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }

@__kstrtab_snd_pcm_create_iec958_consumer_default = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_pcm_create_iec958_consumer_default = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_pcm_create_iec958_consumer_default = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_pcm_create_iec958_consumer_default to i32), ptr @__kstrtab_snd_pcm_create_iec958_consumer_default, ptr @__kstrtabns_snd_pcm_create_iec958_consumer_default }, section "___ksymtab_gpl+snd_pcm_create_iec958_consumer_default", align 4
@__kstrtab_snd_pcm_fill_iec958_consumer = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_pcm_fill_iec958_consumer = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_pcm_fill_iec958_consumer = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_pcm_fill_iec958_consumer to i32), ptr @__kstrtab_snd_pcm_fill_iec958_consumer, ptr @__kstrtabns_snd_pcm_fill_iec958_consumer }, section "___ksymtab_gpl+snd_pcm_fill_iec958_consumer", align 4
@__kstrtab_snd_pcm_fill_iec958_consumer_hw_params = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_pcm_fill_iec958_consumer_hw_params = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_pcm_fill_iec958_consumer_hw_params = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_pcm_fill_iec958_consumer_hw_params to i32), ptr @__kstrtab_snd_pcm_fill_iec958_consumer_hw_params, ptr @__kstrtabns_snd_pcm_fill_iec958_consumer_hw_params }, section "___ksymtab_gpl+snd_pcm_fill_iec958_consumer_hw_params", align 4
@__kstrtab_snd_pcm_create_iec958_consumer = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_pcm_create_iec958_consumer = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_pcm_create_iec958_consumer = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_pcm_create_iec958_consumer to i32), ptr @__kstrtab_snd_pcm_create_iec958_consumer, ptr @__kstrtabns_snd_pcm_create_iec958_consumer }, section "___ksymtab+snd_pcm_create_iec958_consumer", align 4
@__kstrtab_snd_pcm_create_iec958_consumer_hw_params = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_pcm_create_iec958_consumer_hw_params = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_pcm_create_iec958_consumer_hw_params = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_pcm_create_iec958_consumer_hw_params to i32), ptr @__kstrtab_snd_pcm_create_iec958_consumer_hw_params, ptr @__kstrtabns_snd_pcm_create_iec958_consumer_hw_params }, section "___ksymtab+snd_pcm_create_iec958_consumer_hw_params", align 4
@switch.table.snd_pcm_fill_iec958_consumer = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\02\04\03\02\0B\02\02\02\0B", [23 x i8] zeroinitializer }, align 32
@switch.table.snd_pcm_fill_iec958_consumer_hw_params = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\02\04\03\02\0B\02\02\02\0B", [23 x i8] zeroinitializer }, align 32
@switch.table.snd_pcm_create_iec958_consumer_hw_params = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\02\04\03\02\0B\02\02\02\0B", [23 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 32, i64 32000, i64 44100, i64 48000, i64 88200, i64 96000, i64 176400, i64 192000]
@__sancov_gen_cov_switch_values.1 = internal global [9 x i64] [i64 7, i64 32, i64 32000, i64 44100, i64 48000, i64 88200, i64 96000, i64 176400, i64 192000]
@__sancov_gen_cov_switch_values.2 = internal global [9 x i64] [i64 7, i64 32, i64 32000, i64 44100, i64 48000, i64 88200, i64 96000, i64 176400, i64 192000]
@___asan_gen_ = private constant [27 x i8] c"../sound/core/pcm_iec958.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant [42 x i8] c"switch.table.snd_pcm_fill_iec958_consumer\00", align 1
@___asan_gen_.4 = private unnamed_addr constant [52 x i8] c"switch.table.snd_pcm_fill_iec958_consumer_hw_params\00", align 1
@___asan_gen_.5 = private unnamed_addr constant [54 x i8] c"switch.table.snd_pcm_create_iec958_consumer_hw_params\00", align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @__ksymtab_snd_pcm_create_iec958_consumer, ptr @__ksymtab_snd_pcm_create_iec958_consumer_default, ptr @__ksymtab_snd_pcm_create_iec958_consumer_hw_params, ptr @__ksymtab_snd_pcm_fill_iec958_consumer, ptr @__ksymtab_snd_pcm_fill_iec958_consumer_hw_params, ptr @switch.table.snd_pcm_fill_iec958_consumer, ptr @switch.table.snd_pcm_fill_iec958_consumer_hw_params, ptr @switch.table.snd_pcm_create_iec958_consumer_hw_params], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.snd_pcm_fill_iec958_consumer to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.snd_pcm_fill_iec958_consumer_hw_params to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.snd_pcm_create_iec958_consumer_hw_params to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @snd_pcm_create_iec958_consumer_default(ptr nocapture noundef writeonly %cs, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %len)
  %cmp = icmp ult i32 %len, 4
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end:                                           ; preds = %entry
  %0 = call ptr @memset(ptr %cs, i32 0, i32 %len)
  %1 = ptrtoint ptr %cs to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 4, ptr %cs, align 1
  %arrayidx1 = getelementptr i8, ptr %cs, i32 1
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %arrayidx1, align 1
  %arrayidx2 = getelementptr i8, ptr %cs, i32 2
  %3 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %arrayidx2, align 1
  %arrayidx3 = getelementptr i8, ptr %cs, i32 3
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %arrayidx3, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %len)
  %cmp4.not = icmp eq i32 %len, 4
  br i1 %cmp4.not, label %if.end.return_crit_edge, label %if.then5

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx6 = getelementptr i8, ptr %cs, i32 4
  %5 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %arrayidx6, align 1
  br label %return

return:                                           ; preds = %if.then5, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %entry.return_crit_edge ], [ %len, %if.then5 ], [ 4, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_pcm_fill_iec958_consumer(ptr nocapture noundef readonly %runtime, ptr nocapture noundef %cs, i32 noundef %len) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %rate = getelementptr inbounds %struct.snd_pcm_runtime, ptr %runtime, i32 0, i32 14
  %0 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rate, align 4
  %format = getelementptr inbounds %struct.snd_pcm_runtime, ptr %runtime, i32 0, i32 12
  %2 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %format, align 4
  %call = tail call i32 @snd_pcm_format_width(i32 noundef %3) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %len)
  %cmp.i = icmp ult i32 %len, 4
  br i1 %cmp.i, label %entry.fill_iec958_consumer.exit_crit_edge, label %if.end.i

entry.fill_iec958_consumer.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %fill_iec958_consumer.exit

if.end.i:                                         ; preds = %entry
  %arrayidx.i = getelementptr i8, ptr %cs, i32 3
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.i, align 1
  %6 = and i8 %5, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %6)
  %cmp1.i = icmp eq i8 %6, 1
  br i1 %cmp1.i, label %if.then3.i, label %if.end.i.if.end17.i_crit_edge

if.end.i.if.end17.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end17.i

if.then3.i:                                       ; preds = %if.end.i
  %7 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %if.then3.i.fill_iec958_consumer.exit_crit_edge [
    i32 32000, label %if.then3.i.cleanup.thread.i_crit_edge
    i32 44100, label %sw.bb4.i
    i32 48000, label %sw.bb5.i
    i32 88200, label %sw.bb6.i
    i32 96000, label %sw.bb7.i
    i32 176400, label %sw.bb8.i
    i32 192000, label %sw.bb9.i
  ]

if.then3.i.cleanup.thread.i_crit_edge:            ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.thread.i

if.then3.i.fill_iec958_consumer.exit_crit_edge:   ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %fill_iec958_consumer.exit

sw.bb4.i:                                         ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.thread.i

sw.bb5.i:                                         ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.thread.i

sw.bb6.i:                                         ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.thread.i

sw.bb7.i:                                         ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.thread.i

sw.bb8.i:                                         ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.thread.i

sw.bb9.i:                                         ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.thread.i

cleanup.thread.i:                                 ; preds = %sw.bb9.i, %sw.bb8.i, %sw.bb7.i, %sw.bb6.i, %sw.bb5.i, %sw.bb4.i, %if.then3.i.cleanup.thread.i_crit_edge
  %fs.0.i = phi i8 [ 14, %sw.bb9.i ], [ 12, %sw.bb8.i ], [ 10, %sw.bb7.i ], [ 8, %sw.bb6.i ], [ 2, %sw.bb5.i ], [ 0, %sw.bb4.i ], [ 3, %if.then3.i.cleanup.thread.i_crit_edge ]
  %8 = and i8 %5, -16
  %or.i = or i8 %fs.0.i, %8
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %or.i, ptr %arrayidx.i, align 1
  br label %if.end17.i

if.end17.i:                                       ; preds = %cleanup.thread.i, %if.end.i.if.end17.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %len)
  %cmp18.i = icmp ugt i32 %len, 4
  br i1 %cmp18.i, label %land.lhs.true.i, label %if.end17.i.fill_iec958_consumer.exit_crit_edge

if.end17.i.fill_iec958_consumer.exit_crit_edge:   ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %fill_iec958_consumer.exit

land.lhs.true.i:                                  ; preds = %if.end17.i
  %arrayidx20.i = getelementptr i8, ptr %cs, i32 4
  %10 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx20.i, align 1
  %12 = and i8 %11, 14
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %cmp23.i = icmp eq i8 %12, 0
  br i1 %cmp23.i, label %if.then25.i, label %land.lhs.true.i.fill_iec958_consumer.exit_crit_edge

land.lhs.true.i.fill_iec958_consumer.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %fill_iec958_consumer.exit

if.then25.i:                                      ; preds = %land.lhs.true.i
  %13 = add i32 %call, -16
  %14 = tail call i32 @llvm.fshl.i32(i32 %13, i32 %13, i32 31) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %14)
  %15 = icmp ult i32 %14, 9
  br i1 %15, label %switch.hole_check, label %if.then25.i.fill_iec958_consumer.exit_crit_edge

if.then25.i.fill_iec958_consumer.exit_crit_edge:  ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %fill_iec958_consumer.exit

switch.hole_check:                                ; preds = %if.then25.i
  %switch.maskindex = trunc i32 %14 to i16
  %switch.shifted = lshr i16 279, %switch.maskindex
  %16 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %switch.lobit.not = icmp eq i16 %16, 0
  br i1 %switch.lobit.not, label %switch.hole_check.fill_iec958_consumer.exit_crit_edge, label %switch.lookup

switch.hole_check.fill_iec958_consumer.exit_crit_edge: ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #6
  br label %fill_iec958_consumer.exit

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #6
  %switch.gep = getelementptr inbounds [9 x i8], ptr @switch.table.snd_pcm_fill_iec958_consumer, i32 0, i32 %14
  %17 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %17)
  %switch.load = load i8, ptr %switch.gep, align 1
  %18 = and i8 %11, -15
  %or38.i = or i8 %switch.load, %18
  %19 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %or38.i, ptr %arrayidx20.i, align 1
  br label %fill_iec958_consumer.exit

fill_iec958_consumer.exit:                        ; preds = %switch.lookup, %switch.hole_check.fill_iec958_consumer.exit_crit_edge, %if.then25.i.fill_iec958_consumer.exit_crit_edge, %land.lhs.true.i.fill_iec958_consumer.exit_crit_edge, %if.end17.i.fill_iec958_consumer.exit_crit_edge, %if.then3.i.fill_iec958_consumer.exit_crit_edge, %entry.fill_iec958_consumer.exit_crit_edge
  %retval.3.i = phi i32 [ -22, %entry.fill_iec958_consumer.exit_crit_edge ], [ -22, %if.then3.i.fill_iec958_consumer.exit_crit_edge ], [ -22, %if.then25.i.fill_iec958_consumer.exit_crit_edge ], [ %len, %switch.lookup ], [ %len, %land.lhs.true.i.fill_iec958_consumer.exit_crit_edge ], [ 4, %if.end17.i.fill_iec958_consumer.exit_crit_edge ], [ -22, %switch.hole_check.fill_iec958_consumer.exit_crit_edge ]
  ret i32 %retval.3.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_width(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_pcm_fill_iec958_consumer_hw_params(ptr nocapture noundef readonly %params, ptr nocapture noundef %cs, i32 noundef %len) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %0 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx.i.i, align 4
  %arrayidx.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i.i.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i.i.i, label %for.inc.i.i.i, label %entry.if.then.i.i.i_crit_edge

entry.if.then.i.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %for.inc.i.i.i.if.then.i.i.i_crit_edge, %entry.if.then.i.i.i_crit_edge
  %i.09.lcssa.i.i.i = phi i32 [ 0, %entry.if.then.i.i.i_crit_edge ], [ 32, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %.lcssa.i.i.i = phi i32 [ %3, %entry.if.then.i.i.i_crit_edge ], [ %6, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %4 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i.i, i1 true) #4, !range !19
  %add.i.i.i = or i32 %4, %i.09.lcssa.i.i.i
  br label %params_width.exit

for.inc.i.i.i:                                    ; preds = %entry
  %arrayidx.1.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %5 = ptrtoint ptr %arrayidx.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx.1.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.1.i.i.i = icmp eq i32 %6, 0
  br i1 %tobool.not.1.i.i.i, label %for.inc.i.i.i.params_width.exit_crit_edge, label %for.inc.i.i.i.if.then.i.i.i_crit_edge

for.inc.i.i.i.if.then.i.i.i_crit_edge:            ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i.i.i

for.inc.i.i.i.params_width.exit_crit_edge:        ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %params_width.exit

params_width.exit:                                ; preds = %for.inc.i.i.i.params_width.exit_crit_edge, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %add.i.i.i, %if.then.i.i.i ], [ 0, %for.inc.i.i.i.params_width.exit_crit_edge ]
  %call1.i = tail call i32 @snd_pcm_format_width(i32 noundef %retval.0.i.i.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %len)
  %cmp.i = icmp ult i32 %len, 4
  br i1 %cmp.i, label %params_width.exit.fill_iec958_consumer.exit_crit_edge, label %if.end.i

params_width.exit.fill_iec958_consumer.exit_crit_edge: ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %fill_iec958_consumer.exit

if.end.i:                                         ; preds = %params_width.exit
  %arrayidx.i = getelementptr i8, ptr %cs, i32 3
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx.i, align 1
  %9 = and i8 %8, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %9)
  %cmp1.i = icmp eq i8 %9, 1
  br i1 %cmp1.i, label %if.then3.i, label %if.end.i.if.end17.i_crit_edge

if.end.i.if.end17.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end17.i

if.then3.i:                                       ; preds = %if.end.i
  %10 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %1, label %if.then3.i.fill_iec958_consumer.exit_crit_edge [
    i32 32000, label %if.then3.i.cleanup.thread.i_crit_edge
    i32 44100, label %sw.bb4.i
    i32 48000, label %sw.bb5.i
    i32 88200, label %sw.bb6.i
    i32 96000, label %sw.bb7.i
    i32 176400, label %sw.bb8.i
    i32 192000, label %sw.bb9.i
  ]

if.then3.i.cleanup.thread.i_crit_edge:            ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.thread.i

if.then3.i.fill_iec958_consumer.exit_crit_edge:   ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %fill_iec958_consumer.exit

sw.bb4.i:                                         ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.thread.i

sw.bb5.i:                                         ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.thread.i

sw.bb6.i:                                         ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.thread.i

sw.bb7.i:                                         ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.thread.i

sw.bb8.i:                                         ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.thread.i

sw.bb9.i:                                         ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.thread.i

cleanup.thread.i:                                 ; preds = %sw.bb9.i, %sw.bb8.i, %sw.bb7.i, %sw.bb6.i, %sw.bb5.i, %sw.bb4.i, %if.then3.i.cleanup.thread.i_crit_edge
  %fs.0.i = phi i8 [ 14, %sw.bb9.i ], [ 12, %sw.bb8.i ], [ 10, %sw.bb7.i ], [ 8, %sw.bb6.i ], [ 2, %sw.bb5.i ], [ 0, %sw.bb4.i ], [ 3, %if.then3.i.cleanup.thread.i_crit_edge ]
  %11 = and i8 %8, -16
  %or.i = or i8 %fs.0.i, %11
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %or.i, ptr %arrayidx.i, align 1
  br label %if.end17.i

if.end17.i:                                       ; preds = %cleanup.thread.i, %if.end.i.if.end17.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %len)
  %cmp18.i = icmp ugt i32 %len, 4
  br i1 %cmp18.i, label %land.lhs.true.i, label %if.end17.i.fill_iec958_consumer.exit_crit_edge

if.end17.i.fill_iec958_consumer.exit_crit_edge:   ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %fill_iec958_consumer.exit

land.lhs.true.i:                                  ; preds = %if.end17.i
  %arrayidx20.i = getelementptr i8, ptr %cs, i32 4
  %13 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx20.i, align 1
  %15 = and i8 %14, 14
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp23.i = icmp eq i8 %15, 0
  br i1 %cmp23.i, label %if.then25.i, label %land.lhs.true.i.fill_iec958_consumer.exit_crit_edge

land.lhs.true.i.fill_iec958_consumer.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %fill_iec958_consumer.exit

if.then25.i:                                      ; preds = %land.lhs.true.i
  %16 = add i32 %call1.i, -16
  %17 = tail call i32 @llvm.fshl.i32(i32 %16, i32 %16, i32 31) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %17)
  %18 = icmp ult i32 %17, 9
  br i1 %18, label %switch.hole_check, label %if.then25.i.fill_iec958_consumer.exit_crit_edge

if.then25.i.fill_iec958_consumer.exit_crit_edge:  ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %fill_iec958_consumer.exit

switch.hole_check:                                ; preds = %if.then25.i
  %switch.maskindex = trunc i32 %17 to i16
  %switch.shifted = lshr i16 279, %switch.maskindex
  %19 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %switch.lobit.not = icmp eq i16 %19, 0
  br i1 %switch.lobit.not, label %switch.hole_check.fill_iec958_consumer.exit_crit_edge, label %switch.lookup

switch.hole_check.fill_iec958_consumer.exit_crit_edge: ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #6
  br label %fill_iec958_consumer.exit

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #6
  %switch.gep = getelementptr inbounds [9 x i8], ptr @switch.table.snd_pcm_fill_iec958_consumer_hw_params, i32 0, i32 %17
  %20 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %20)
  %switch.load = load i8, ptr %switch.gep, align 1
  %21 = and i8 %14, -15
  %or38.i = or i8 %switch.load, %21
  %22 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %or38.i, ptr %arrayidx20.i, align 1
  br label %fill_iec958_consumer.exit

fill_iec958_consumer.exit:                        ; preds = %switch.lookup, %switch.hole_check.fill_iec958_consumer.exit_crit_edge, %if.then25.i.fill_iec958_consumer.exit_crit_edge, %land.lhs.true.i.fill_iec958_consumer.exit_crit_edge, %if.end17.i.fill_iec958_consumer.exit_crit_edge, %if.then3.i.fill_iec958_consumer.exit_crit_edge, %params_width.exit.fill_iec958_consumer.exit_crit_edge
  %retval.3.i = phi i32 [ -22, %params_width.exit.fill_iec958_consumer.exit_crit_edge ], [ -22, %if.then3.i.fill_iec958_consumer.exit_crit_edge ], [ -22, %if.then25.i.fill_iec958_consumer.exit_crit_edge ], [ %len, %switch.lookup ], [ %len, %land.lhs.true.i.fill_iec958_consumer.exit_crit_edge ], [ 4, %if.end17.i.fill_iec958_consumer.exit_crit_edge ], [ -22, %switch.hole_check.fill_iec958_consumer.exit_crit_edge ]
  ret i32 %retval.3.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_pcm_create_iec958_consumer(ptr nocapture noundef readonly %runtime, ptr nocapture noundef %cs, i32 noundef %len) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %len)
  %cmp.i = icmp ult i32 %len, 4
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %0 = call ptr @memset(ptr %cs, i32 0, i32 %len)
  %1 = ptrtoint ptr %cs to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 4, ptr %cs, align 1
  %arrayidx1.i = getelementptr i8, ptr %cs, i32 1
  %2 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %arrayidx1.i, align 1
  %arrayidx2.i = getelementptr i8, ptr %cs, i32 2
  %3 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %arrayidx2.i, align 1
  %arrayidx3.i = getelementptr i8, ptr %cs, i32 3
  %4 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %arrayidx3.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %len)
  %cmp4.not.i = icmp eq i32 %len, 4
  br i1 %cmp4.not.i, label %if.end.i.if.end_crit_edge, label %snd_pcm_create_iec958_consumer_default.exit

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

snd_pcm_create_iec958_consumer_default.exit:      ; preds = %if.end.i
  %arrayidx6.i = getelementptr i8, ptr %cs, i32 4
  %5 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %arrayidx6.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp = icmp slt i32 %len, 0
  br i1 %cmp, label %snd_pcm_create_iec958_consumer_default.exit.cleanup_crit_edge, label %snd_pcm_create_iec958_consumer_default.exit.if.end_crit_edge

snd_pcm_create_iec958_consumer_default.exit.if.end_crit_edge: ; preds = %snd_pcm_create_iec958_consumer_default.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

snd_pcm_create_iec958_consumer_default.exit.cleanup_crit_edge: ; preds = %snd_pcm_create_iec958_consumer_default.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %snd_pcm_create_iec958_consumer_default.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge
  %call1 = tail call i32 @snd_pcm_fill_iec958_consumer(ptr noundef %runtime, ptr noundef %cs, i32 noundef %len)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %snd_pcm_create_iec958_consumer_default.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %len, %snd_pcm_create_iec958_consumer_default.exit.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_pcm_create_iec958_consumer_hw_params(ptr nocapture noundef readonly %params, ptr nocapture noundef %cs, i32 noundef %len) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %len)
  %cmp.i = icmp ult i32 %len, 4
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %0 = call ptr @memset(ptr %cs, i32 0, i32 %len)
  %1 = ptrtoint ptr %cs to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 4, ptr %cs, align 1
  %arrayidx1.i = getelementptr i8, ptr %cs, i32 1
  %2 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %arrayidx1.i, align 1
  %arrayidx2.i = getelementptr i8, ptr %cs, i32 2
  %3 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %arrayidx2.i, align 1
  %arrayidx3.i = getelementptr i8, ptr %cs, i32 3
  %4 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %arrayidx3.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %len)
  %cmp4.not.i = icmp eq i32 %len, 4
  br i1 %cmp4.not.i, label %if.end.i.if.end_crit_edge, label %snd_pcm_create_iec958_consumer_default.exit

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

snd_pcm_create_iec958_consumer_default.exit:      ; preds = %if.end.i
  %arrayidx6.i = getelementptr i8, ptr %cs, i32 4
  %5 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %arrayidx6.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp = icmp slt i32 %len, 0
  br i1 %cmp, label %snd_pcm_create_iec958_consumer_default.exit.cleanup_crit_edge, label %snd_pcm_create_iec958_consumer_default.exit.if.end_crit_edge

snd_pcm_create_iec958_consumer_default.exit.if.end_crit_edge: ; preds = %snd_pcm_create_iec958_consumer_default.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

snd_pcm_create_iec958_consumer_default.exit.cleanup_crit_edge: ; preds = %snd_pcm_create_iec958_consumer_default.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %snd_pcm_create_iec958_consumer_default.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i.i, align 4
  %arrayidx.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i.i.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i.i.i, label %for.inc.i.i.i, label %if.end.if.then.i.i.i_crit_edge

if.end.if.then.i.i.i_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %for.inc.i.i.i.if.then.i.i.i_crit_edge, %if.end.if.then.i.i.i_crit_edge
  %i.09.lcssa.i.i.i = phi i32 [ 0, %if.end.if.then.i.i.i_crit_edge ], [ 32, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %.lcssa.i.i.i = phi i32 [ %9, %if.end.if.then.i.i.i_crit_edge ], [ %12, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %10 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i.i, i1 true) #4, !range !19
  %add.i.i.i = or i32 %10, %i.09.lcssa.i.i.i
  br label %if.end.i9

for.inc.i.i.i:                                    ; preds = %if.end
  %arrayidx.1.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %11 = ptrtoint ptr %arrayidx.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.1.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.1.i.i.i = icmp eq i32 %12, 0
  br i1 %tobool.not.1.i.i.i, label %for.inc.i.i.i.if.end.i9_crit_edge, label %for.inc.i.i.i.if.then.i.i.i_crit_edge

for.inc.i.i.i.if.then.i.i.i_crit_edge:            ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i.i.i

for.inc.i.i.i.if.end.i9_crit_edge:                ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i9

if.end.i9:                                        ; preds = %for.inc.i.i.i.if.end.i9_crit_edge, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %add.i.i.i, %if.then.i.i.i ], [ 0, %for.inc.i.i.i.if.end.i9_crit_edge ]
  %call1.i = tail call i32 @snd_pcm_format_width(i32 noundef %retval.0.i.i.i) #4
  %13 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx3.i, align 1
  %15 = and i8 %14, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %15)
  %cmp1.i = icmp eq i8 %15, 1
  br i1 %cmp1.i, label %if.then3.i, label %if.end.i9.if.end17.i_crit_edge

if.end.i9.if.end17.i_crit_edge:                   ; preds = %if.end.i9
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end17.i

if.then3.i:                                       ; preds = %if.end.i9
  %16 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.2)
  switch i32 %7, label %if.then3.i.cleanup_crit_edge [
    i32 32000, label %if.then3.i.cleanup.thread.i_crit_edge
    i32 44100, label %sw.bb4.i
    i32 48000, label %sw.bb5.i
    i32 88200, label %sw.bb6.i
    i32 96000, label %sw.bb7.i
    i32 176400, label %sw.bb8.i
    i32 192000, label %sw.bb9.i
  ]

if.then3.i.cleanup.thread.i_crit_edge:            ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.thread.i

if.then3.i.cleanup_crit_edge:                     ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb4.i:                                         ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.thread.i

sw.bb5.i:                                         ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.thread.i

sw.bb6.i:                                         ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.thread.i

sw.bb7.i:                                         ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.thread.i

sw.bb8.i:                                         ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.thread.i

sw.bb9.i:                                         ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.thread.i

cleanup.thread.i:                                 ; preds = %sw.bb9.i, %sw.bb8.i, %sw.bb7.i, %sw.bb6.i, %sw.bb5.i, %sw.bb4.i, %if.then3.i.cleanup.thread.i_crit_edge
  %fs.0.i = phi i8 [ 14, %sw.bb9.i ], [ 12, %sw.bb8.i ], [ 10, %sw.bb7.i ], [ 8, %sw.bb6.i ], [ 2, %sw.bb5.i ], [ 0, %sw.bb4.i ], [ 3, %if.then3.i.cleanup.thread.i_crit_edge ]
  %17 = and i8 %14, -16
  %or.i = or i8 %fs.0.i, %17
  %18 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %or.i, ptr %arrayidx3.i, align 1
  br label %if.end17.i

if.end17.i:                                       ; preds = %cleanup.thread.i, %if.end.i9.if.end17.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %len)
  %cmp18.i = icmp ugt i32 %len, 4
  br i1 %cmp18.i, label %land.lhs.true.i, label %if.end17.i.cleanup_crit_edge

if.end17.i.cleanup_crit_edge:                     ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true.i:                                  ; preds = %if.end17.i
  %arrayidx20.i = getelementptr i8, ptr %cs, i32 4
  %19 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx20.i, align 1
  %21 = and i8 %20, 14
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %cmp23.i = icmp eq i8 %21, 0
  br i1 %cmp23.i, label %if.then25.i, label %land.lhs.true.i.cleanup_crit_edge

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then25.i:                                      ; preds = %land.lhs.true.i
  %22 = add i32 %call1.i, -16
  %23 = tail call i32 @llvm.fshl.i32(i32 %22, i32 %22, i32 31) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %23)
  %24 = icmp ult i32 %23, 9
  br i1 %24, label %switch.hole_check, label %if.then25.i.cleanup_crit_edge

if.then25.i.cleanup_crit_edge:                    ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

switch.hole_check:                                ; preds = %if.then25.i
  %switch.maskindex = trunc i32 %23 to i16
  %switch.shifted = lshr i16 279, %switch.maskindex
  %25 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %switch.lobit.not = icmp eq i16 %25, 0
  br i1 %switch.lobit.not, label %switch.hole_check.cleanup_crit_edge, label %switch.lookup

switch.hole_check.cleanup_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #6
  %switch.gep = getelementptr inbounds [9 x i8], ptr @switch.table.snd_pcm_create_iec958_consumer_hw_params, i32 0, i32 %23
  %26 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %26)
  %switch.load = load i8, ptr %switch.gep, align 1
  %27 = and i8 %20, -15
  %or38.i = or i8 %switch.load, %27
  %28 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %or38.i, ptr %arrayidx20.i, align 1
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %switch.hole_check.cleanup_crit_edge, %if.then25.i.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %if.end17.i.cleanup_crit_edge, %if.then3.i.cleanup_crit_edge, %snd_pcm_create_iec958_consumer_default.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %len, %snd_pcm_create_iec958_consumer_default.exit.cleanup_crit_edge ], [ -22, %if.then3.i.cleanup_crit_edge ], [ -22, %if.then25.i.cleanup_crit_edge ], [ %len, %switch.lookup ], [ %len, %land.lhs.true.i.cleanup_crit_edge ], [ 4, %if.end17.i.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %switch.hole_check.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8}
!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = !{ptr @__ksymtab_snd_pcm_create_iec958_consumer_default, !1, !"__ksymtab_snd_pcm_create_iec958_consumer_default", i1 false, i1 false}
!1 = !{!"../sound/core/pcm_iec958.c", i32 46, i32 1}
!2 = !{ptr @__ksymtab_snd_pcm_fill_iec958_consumer, !3, !"__ksymtab_snd_pcm_fill_iec958_consumer", i1 false, i1 false}
!3 = !{!"../sound/core/pcm_iec958.c", i32 140, i32 1}
!4 = !{ptr @__ksymtab_snd_pcm_fill_iec958_consumer_hw_params, !5, !"__ksymtab_snd_pcm_fill_iec958_consumer_hw_params", i1 false, i1 false}
!5 = !{!"../sound/core/pcm_iec958.c", i32 161, i32 1}
!6 = !{ptr @__ksymtab_snd_pcm_create_iec958_consumer, !7, !"__ksymtab_snd_pcm_create_iec958_consumer", i1 false, i1 false}
!7 = !{!"../sound/core/pcm_iec958.c", i32 187, i32 1}
!8 = !{ptr @__ksymtab_snd_pcm_create_iec958_consumer_hw_params, !9, !"__ksymtab_snd_pcm_create_iec958_consumer_hw_params", i1 false, i1 false}
!9 = !{!"../sound/core/pcm_iec958.c", i32 213, i32 1}
!10 = !{i32 1, !"wchar_size", i32 2}
!11 = !{i32 1, !"min_enum_size", i32 4}
!12 = !{i32 8, !"branch-target-enforcement", i32 0}
!13 = !{i32 8, !"sign-return-address", i32 0}
!14 = !{i32 8, !"sign-return-address-all", i32 0}
!15 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{i32 7, !"frame-pointer", i32 2}
!18 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!19 = !{i32 0, i32 33}
