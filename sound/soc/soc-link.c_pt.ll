; ModuleID = '/llk/IR_all_yes/sound/soc/soc-link.c_pt.bc'
source_filename = "../sound/soc/soc-link.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+snd_soc_link_compr_startup\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_soc_link_compr_startup\09\09\09\09"
module asm "\09.long\09__crc_snd_soc_link_compr_startup\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_soc_link_compr_startup:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_soc_link_compr_startup\22\09\09\09\09\09"
module asm "__kstrtabns_snd_soc_link_compr_startup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+snd_soc_link_compr_shutdown\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_soc_link_compr_shutdown\09\09\09\09"
module asm "\09.long\09__crc_snd_soc_link_compr_shutdown\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_soc_link_compr_shutdown:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_soc_link_compr_shutdown\22\09\09\09\09\09"
module asm "__kstrtabns_snd_soc_link_compr_shutdown:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+snd_soc_link_compr_set_params\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_soc_link_compr_set_params\09\09\09\09"
module asm "\09.long\09__crc_snd_soc_link_compr_set_params\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_soc_link_compr_set_params:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_soc_link_compr_set_params\22\09\09\09\09\09"
module asm "__kstrtabns_snd_soc_link_compr_set_params:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.snd_soc_pcm_runtime = type { ptr, ptr, ptr, %struct.snd_pcm_ops, i32, [2 x %struct.snd_soc_dpcm_runtime], i32, ptr, ptr, ptr, i32, i32, ptr, ptr, %struct.delayed_work, ptr, ptr, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8, i32, [0 x ptr] }
%struct.snd_pcm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dpcm_runtime = type { %struct.list_head, %struct.list_head, i32, ptr, %struct.snd_pcm_hw_params, i32, i32, i32, i32 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.snd_soc_dai_link = type { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i24, %struct.snd_soc_dobj }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.91, ptr }
%union.anon.91 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, %struct.snd_pcm_oss_substream, ptr, i8 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.snd_pcm_group = type { %struct.spinlock, %struct.mutex, %struct.list_head, %struct.refcount_struct }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.snd_pcm_oss_substream = type { i8, %struct.snd_pcm_oss_setup }
%struct.snd_pcm_oss_setup = type { ptr, i8, i32, i32, ptr }
%struct.snd_soc_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_compr_stream = type { ptr, ptr, ptr, ptr, %struct.delayed_work, i32, i8, i8, i8, i8, ptr, %struct.snd_dma_buffer }
%struct.snd_soc_compr_ops = type { ptr, ptr, ptr, ptr }

@__func__.snd_soc_link_init = private unnamed_addr constant [18 x i8] c"snd_soc_link_init\00", align 1
@__func__.snd_soc_link_be_hw_params_fixup = private unnamed_addr constant [32 x i8] c"snd_soc_link_be_hw_params_fixup\00", align 1
@__func__.snd_soc_link_startup = private unnamed_addr constant [21 x i8] c"snd_soc_link_startup\00", align 1
@__func__.snd_soc_link_prepare = private unnamed_addr constant [21 x i8] c"snd_soc_link_prepare\00", align 1
@__func__.snd_soc_link_hw_params = private unnamed_addr constant [23 x i8] c"snd_soc_link_hw_params\00", align 1
@__func__.snd_soc_link_compr_startup = private unnamed_addr constant [27 x i8] c"snd_soc_link_compr_startup\00", align 1
@__kstrtab_snd_soc_link_compr_startup = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_soc_link_compr_startup = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_soc_link_compr_startup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_soc_link_compr_startup to i32), ptr @__kstrtab_snd_soc_link_compr_startup, ptr @__kstrtabns_snd_soc_link_compr_startup }, section "___ksymtab_gpl+snd_soc_link_compr_startup", align 4
@__kstrtab_snd_soc_link_compr_shutdown = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_soc_link_compr_shutdown = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_soc_link_compr_shutdown = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_soc_link_compr_shutdown to i32), ptr @__kstrtab_snd_soc_link_compr_shutdown, ptr @__kstrtabns_snd_soc_link_compr_shutdown }, section "___ksymtab_gpl+snd_soc_link_compr_shutdown", align 4
@__func__.snd_soc_link_compr_set_params = private unnamed_addr constant [30 x i8] c"snd_soc_link_compr_set_params\00", align 1
@__kstrtab_snd_soc_link_compr_set_params = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_soc_link_compr_set_params = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_soc_link_compr_set_params = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_soc_link_compr_set_params to i32), ptr @__kstrtab_snd_soc_link_compr_set_params, ptr @__kstrtabns_snd_soc_link_compr_set_params }, section "___ksymtab_gpl+snd_soc_link_compr_set_params", align 4
@_soc_link_ret._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 27, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ASoC: error at %s on %s: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"_soc_link_ret\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sound/soc/soc-link.c\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@_soc_link_ret._entry_ptr = internal global ptr @_soc_link_ret._entry, section ".printk_index", align 4
@__func__.soc_link_trigger = private unnamed_addr constant [17 x i8] c"soc_link_trigger\00", align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4294966772, i64 4294966779]
@__sancov_gen_cov_switch_values.5 = internal global [4 x i64] [i64 2, i64 32, i64 4294966772, i64 4294966779]
@__sancov_gen_cov_switch_values.6 = internal global [4 x i64] [i64 2, i64 32, i64 4294966772, i64 4294966779]
@__sancov_gen_cov_switch_values.7 = internal global [4 x i64] [i64 2, i64 32, i64 4294966772, i64 4294966779]
@__sancov_gen_cov_switch_values.8 = internal global [4 x i64] [i64 2, i64 32, i64 4294966772, i64 4294966779]
@__sancov_gen_cov_switch_values.9 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.10 = internal global [4 x i64] [i64 2, i64 32, i64 4294966772, i64 4294966779]
@__sancov_gen_cov_switch_values.11 = internal global [4 x i64] [i64 2, i64 32, i64 4294966772, i64 4294966779]
@__sancov_gen_cov_switch_values.12 = internal global [4 x i64] [i64 2, i64 32, i64 4294966772, i64 4294966779]
@__sancov_gen_cov_switch_values.13 = internal global [4 x i64] [i64 2, i64 32, i64 4294966772, i64 4294966779]
@___asan_gen_.14 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.29 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.30 = private constant [24 x i8] c"../sound/soc/soc-link.c\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 25, i32 3 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @__ksymtab_snd_soc_link_compr_set_params, ptr @__ksymtab_snd_soc_link_compr_shutdown, ptr @__ksymtab_snd_soc_link_compr_startup, ptr @_soc_link_ret._entry, ptr @_soc_link_ret._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_soc_link_ret._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_soc_link_init(ptr noundef %rtd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %dai_link = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %rtd, i32 0, i32 2
  %0 = ptrtoint ptr %dai_link to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dai_link, align 4
  %init = getelementptr inbounds %struct.snd_soc_dai_link, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry._soc_link_ret.exit_crit_edge, label %if.end

entry._soc_link_ret.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %_soc_link_ret.exit

if.end:                                           ; preds = %entry
  %call = tail call i32 %3(ptr noundef %rtd) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %cmp.i = icmp sgt i32 %call, -1
  br i1 %cmp.i, label %if.end._soc_link_ret.exit_crit_edge, label %if.end.i

if.end._soc_link_ret.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %_soc_link_ret.exit

if.end.i:                                         ; preds = %if.end
  %4 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call, label %do.end.i [
    i32 -517, label %if.end.i._soc_link_ret.exit_crit_edge
    i32 -524, label %if.end.i._soc_link_ret.exit_crit_edge10
  ]

if.end.i._soc_link_ret.exit_crit_edge10:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %_soc_link_ret.exit

if.end.i._soc_link_ret.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %_soc_link_ret.exit

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #4
  %5 = ptrtoint ptr %rtd to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rtd, align 4
  %7 = ptrtoint ptr %dai_link to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dai_link, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.snd_soc_link_init, ptr noundef %10, i32 noundef %call) #5
  br label %_soc_link_ret.exit

_soc_link_ret.exit:                               ; preds = %do.end.i, %if.end.i._soc_link_ret.exit_crit_edge, %if.end.i._soc_link_ret.exit_crit_edge10, %if.end._soc_link_ret.exit_crit_edge, %entry._soc_link_ret.exit_crit_edge
  %ret.09 = phi i32 [ %call, %if.end._soc_link_ret.exit_crit_edge ], [ %call, %if.end.i._soc_link_ret.exit_crit_edge ], [ %call, %if.end.i._soc_link_ret.exit_crit_edge10 ], [ %call, %do.end.i ], [ 0, %entry._soc_link_ret.exit_crit_edge ]
  ret i32 %ret.09
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_soc_link_exit(ptr noundef %rtd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %dai_link = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %rtd, i32 0, i32 2
  %0 = ptrtoint ptr %dai_link to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dai_link, align 4
  %exit = getelementptr inbounds %struct.snd_soc_dai_link, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %exit to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %exit, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  tail call void %3(ptr noundef %rtd) #2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_soc_link_be_hw_params_fixup(ptr noundef %rtd, ptr noundef %params) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %dai_link = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %rtd, i32 0, i32 2
  %0 = ptrtoint ptr %dai_link to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dai_link, align 4
  %be_hw_params_fixup = getelementptr inbounds %struct.snd_soc_dai_link, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %be_hw_params_fixup to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %be_hw_params_fixup, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry._soc_link_ret.exit_crit_edge, label %if.end

entry._soc_link_ret.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %_soc_link_ret.exit

if.end:                                           ; preds = %entry
  %call = tail call i32 %3(ptr noundef %rtd, ptr noundef %params) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %cmp.i = icmp sgt i32 %call, -1
  br i1 %cmp.i, label %if.end._soc_link_ret.exit_crit_edge, label %if.end.i

if.end._soc_link_ret.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %_soc_link_ret.exit

if.end.i:                                         ; preds = %if.end
  %4 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.5)
  switch i32 %call, label %do.end.i [
    i32 -517, label %if.end.i._soc_link_ret.exit_crit_edge
    i32 -524, label %if.end.i._soc_link_ret.exit_crit_edge10
  ]

if.end.i._soc_link_ret.exit_crit_edge10:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %_soc_link_ret.exit

if.end.i._soc_link_ret.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %_soc_link_ret.exit

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #4
  %5 = ptrtoint ptr %rtd to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rtd, align 4
  %7 = ptrtoint ptr %dai_link to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dai_link, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.snd_soc_link_be_hw_params_fixup, ptr noundef %10, i32 noundef %call) #5
  br label %_soc_link_ret.exit

_soc_link_ret.exit:                               ; preds = %do.end.i, %if.end.i._soc_link_ret.exit_crit_edge, %if.end.i._soc_link_ret.exit_crit_edge10, %if.end._soc_link_ret.exit_crit_edge, %entry._soc_link_ret.exit_crit_edge
  %ret.09 = phi i32 [ %call, %if.end._soc_link_ret.exit_crit_edge ], [ %call, %if.end.i._soc_link_ret.exit_crit_edge ], [ %call, %if.end.i._soc_link_ret.exit_crit_edge10 ], [ %call, %do.end.i ], [ 0, %entry._soc_link_ret.exit_crit_edge ]
  ret i32 %ret.09
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_soc_link_startup(ptr noundef %substream) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %dai_link = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dai_link to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dai_link, align 4
  %ops = getelementptr inbounds %struct.snd_soc_dai_link, ptr %3, i32 0, i32 16
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end8.thread_crit_edge, label %land.lhs.true

entry.if.end8.thread_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end8.thread

land.lhs.true:                                    ; preds = %entry
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %tobool3.not = icmp eq ptr %7, null
  br i1 %tobool3.not, label %land.lhs.true.if.end8.thread_crit_edge, label %if.end

land.lhs.true.if.end8.thread_crit_edge:           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end8.thread

if.end:                                           ; preds = %land.lhs.true
  %call = tail call i32 %7(ptr noundef %substream) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.end.if.end8.thread_crit_edge, label %if.end8

if.end.if.end8.thread_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end8.thread

if.end8.thread:                                   ; preds = %if.end.if.end8.thread_crit_edge, %land.lhs.true.if.end8.thread_crit_edge, %entry.if.end8.thread_crit_edge
  %mark_startup = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 19
  %8 = ptrtoint ptr %mark_startup to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %substream, ptr %mark_startup, align 4
  br label %_soc_link_ret.exit

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %cmp.i = icmp sgt i32 %call, -1
  br i1 %cmp.i, label %if.end8._soc_link_ret.exit_crit_edge, label %if.end.i

if.end8._soc_link_ret.exit_crit_edge:             ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #4
  br label %_soc_link_ret.exit

if.end.i:                                         ; preds = %if.end8
  %9 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %call, label %do.end.i [
    i32 -517, label %if.end.i._soc_link_ret.exit_crit_edge
    i32 -524, label %if.end.i._soc_link_ret.exit_crit_edge25
  ]

if.end.i._soc_link_ret.exit_crit_edge25:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %_soc_link_ret.exit

if.end.i._soc_link_ret.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %_soc_link_ret.exit

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #4
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %12 = ptrtoint ptr %dai_link to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dai_link, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.snd_soc_link_startup, ptr noundef %15, i32 noundef %call) #5
  br label %_soc_link_ret.exit

_soc_link_ret.exit:                               ; preds = %do.end.i, %if.end.i._soc_link_ret.exit_crit_edge, %if.end.i._soc_link_ret.exit_crit_edge25, %if.end8._soc_link_ret.exit_crit_edge, %if.end8.thread
  %ret.022 = phi i32 [ %call, %if.end8._soc_link_ret.exit_crit_edge ], [ %call, %if.end.i._soc_link_ret.exit_crit_edge ], [ %call, %if.end.i._soc_link_ret.exit_crit_edge25 ], [ %call, %do.end.i ], [ 0, %if.end8.thread ]
  ret i32 %ret.022
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_soc_link_shutdown(ptr noundef %substream, i32 noundef %rollback) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rollback)
  %tobool.not = icmp eq i32 %rollback, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %mark_startup = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %mark_startup to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mark_startup, align 4
  %cmp = icmp eq ptr %3, %substream
  br i1 %cmp, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %dai_link = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %dai_link to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dai_link, align 4
  %ops = getelementptr inbounds %struct.snd_soc_dai_link, ptr %5, i32 0, i32 16
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops, align 4
  %tobool1.not = icmp eq ptr %7, null
  br i1 %tobool1.not, label %if.end.if.end10_crit_edge, label %land.lhs.true2

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end10

land.lhs.true2:                                   ; preds = %if.end
  %shutdown = getelementptr inbounds %struct.snd_soc_ops, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %shutdown to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %shutdown, align 4
  %tobool5.not = icmp eq ptr %9, null
  br i1 %tobool5.not, label %land.lhs.true2.if.end10_crit_edge, label %if.then6

land.lhs.true2.if.end10_crit_edge:                ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end10

if.then6:                                         ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #4
  tail call void %9(ptr noundef %substream) #2
  br label %if.end10

if.end10:                                         ; preds = %if.then6, %land.lhs.true2.if.end10_crit_edge, %if.end.if.end10_crit_edge
  %mark_startup11 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 19
  %10 = ptrtoint ptr %mark_startup11 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %mark_startup11, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %land.lhs.true.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_soc_link_prepare(ptr noundef %substream) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %dai_link = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dai_link to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dai_link, align 4
  %ops = getelementptr inbounds %struct.snd_soc_dai_link, ptr %3, i32 0, i32 16
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry._soc_link_ret.exit_crit_edge, label %land.lhs.true

entry._soc_link_ret.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %_soc_link_ret.exit

land.lhs.true:                                    ; preds = %entry
  %prepare = getelementptr inbounds %struct.snd_soc_ops, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %prepare to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prepare, align 4
  %tobool3.not = icmp eq ptr %7, null
  br i1 %tobool3.not, label %land.lhs.true._soc_link_ret.exit_crit_edge, label %if.end

land.lhs.true._soc_link_ret.exit_crit_edge:       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #4
  br label %_soc_link_ret.exit

if.end:                                           ; preds = %land.lhs.true
  %call = tail call i32 %7(ptr noundef %substream) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %cmp.i = icmp sgt i32 %call, -1
  br i1 %cmp.i, label %if.end._soc_link_ret.exit_crit_edge, label %if.end.i

if.end._soc_link_ret.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %_soc_link_ret.exit

if.end.i:                                         ; preds = %if.end
  %8 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.7)
  switch i32 %call, label %do.end.i [
    i32 -517, label %if.end.i._soc_link_ret.exit_crit_edge
    i32 -524, label %if.end.i._soc_link_ret.exit_crit_edge16
  ]

if.end.i._soc_link_ret.exit_crit_edge16:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %_soc_link_ret.exit

if.end.i._soc_link_ret.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %_soc_link_ret.exit

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #4
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %11 = ptrtoint ptr %dai_link to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dai_link, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.snd_soc_link_prepare, ptr noundef %14, i32 noundef %call) #5
  br label %_soc_link_ret.exit

_soc_link_ret.exit:                               ; preds = %do.end.i, %if.end.i._soc_link_ret.exit_crit_edge, %if.end.i._soc_link_ret.exit_crit_edge16, %if.end._soc_link_ret.exit_crit_edge, %land.lhs.true._soc_link_ret.exit_crit_edge, %entry._soc_link_ret.exit_crit_edge
  %ret.015 = phi i32 [ %call, %if.end._soc_link_ret.exit_crit_edge ], [ %call, %if.end.i._soc_link_ret.exit_crit_edge ], [ %call, %if.end.i._soc_link_ret.exit_crit_edge16 ], [ %call, %do.end.i ], [ 0, %land.lhs.true._soc_link_ret.exit_crit_edge ], [ 0, %entry._soc_link_ret.exit_crit_edge ]
  ret i32 %ret.015
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_soc_link_hw_params(ptr noundef %substream, ptr noundef %params) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %dai_link = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dai_link to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dai_link, align 4
  %ops = getelementptr inbounds %struct.snd_soc_dai_link, ptr %3, i32 0, i32 16
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end8.thread_crit_edge, label %land.lhs.true

entry.if.end8.thread_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end8.thread

land.lhs.true:                                    ; preds = %entry
  %hw_params = getelementptr inbounds %struct.snd_soc_ops, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %hw_params to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw_params, align 4
  %tobool3.not = icmp eq ptr %7, null
  br i1 %tobool3.not, label %land.lhs.true.if.end8.thread_crit_edge, label %if.end

land.lhs.true.if.end8.thread_crit_edge:           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end8.thread

if.end:                                           ; preds = %land.lhs.true
  %call = tail call i32 %7(ptr noundef %substream, ptr noundef %params) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.end.if.end8.thread_crit_edge, label %if.end8

if.end.if.end8.thread_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end8.thread

if.end8.thread:                                   ; preds = %if.end.if.end8.thread_crit_edge, %land.lhs.true.if.end8.thread_crit_edge, %entry.if.end8.thread_crit_edge
  %mark_hw_params = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 20
  %8 = ptrtoint ptr %mark_hw_params to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %substream, ptr %mark_hw_params, align 4
  br label %_soc_link_ret.exit

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %cmp.i = icmp sgt i32 %call, -1
  br i1 %cmp.i, label %if.end8._soc_link_ret.exit_crit_edge, label %if.end.i

if.end8._soc_link_ret.exit_crit_edge:             ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #4
  br label %_soc_link_ret.exit

if.end.i:                                         ; preds = %if.end8
  %9 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %call, label %do.end.i [
    i32 -517, label %if.end.i._soc_link_ret.exit_crit_edge
    i32 -524, label %if.end.i._soc_link_ret.exit_crit_edge25
  ]

if.end.i._soc_link_ret.exit_crit_edge25:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %_soc_link_ret.exit

if.end.i._soc_link_ret.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %_soc_link_ret.exit

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #4
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %12 = ptrtoint ptr %dai_link to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dai_link, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.snd_soc_link_hw_params, ptr noundef %15, i32 noundef %call) #5
  br label %_soc_link_ret.exit

_soc_link_ret.exit:                               ; preds = %do.end.i, %if.end.i._soc_link_ret.exit_crit_edge, %if.end.i._soc_link_ret.exit_crit_edge25, %if.end8._soc_link_ret.exit_crit_edge, %if.end8.thread
  %ret.022 = phi i32 [ %call, %if.end8._soc_link_ret.exit_crit_edge ], [ %call, %if.end.i._soc_link_ret.exit_crit_edge ], [ %call, %if.end.i._soc_link_ret.exit_crit_edge25 ], [ %call, %do.end.i ], [ 0, %if.end8.thread ]
  ret i32 %ret.022
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_soc_link_hw_free(ptr noundef %substream, i32 noundef %rollback) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rollback)
  %tobool.not = icmp eq i32 %rollback, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %mark_hw_params = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %mark_hw_params to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mark_hw_params, align 4
  %cmp = icmp eq ptr %3, %substream
  br i1 %cmp, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %dai_link = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %dai_link to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dai_link, align 4
  %ops = getelementptr inbounds %struct.snd_soc_dai_link, ptr %5, i32 0, i32 16
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops, align 4
  %tobool1.not = icmp eq ptr %7, null
  br i1 %tobool1.not, label %if.end.if.end10_crit_edge, label %land.lhs.true2

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end10

land.lhs.true2:                                   ; preds = %if.end
  %hw_free = getelementptr inbounds %struct.snd_soc_ops, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %hw_free to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hw_free, align 4
  %tobool5.not = icmp eq ptr %9, null
  br i1 %tobool5.not, label %land.lhs.true2.if.end10_crit_edge, label %if.then6

land.lhs.true2.if.end10_crit_edge:                ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end10

if.then6:                                         ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #4
  %call = tail call i32 %9(ptr noundef %substream) #2
  br label %if.end10

if.end10:                                         ; preds = %if.then6, %land.lhs.true2.if.end10_crit_edge, %if.end.if.end10_crit_edge
  %mark_hw_params11 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 20
  %10 = ptrtoint ptr %mark_hw_params11 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %mark_hw_params11, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %land.lhs.true.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_soc_link_trigger(ptr noundef %substream, i32 noundef %cmd, i32 noundef %rollback) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %cmd, label %entry.sw.epilog_crit_edge [
    i32 1, label %entry.sw.bb_crit_edge
    i32 6, label %entry.sw.bb_crit_edge33
    i32 4, label %entry.sw.bb_crit_edge34
    i32 0, label %entry.sw.bb1_crit_edge
    i32 5, label %entry.sw.bb1_crit_edge35
    i32 3, label %entry.sw.bb1_crit_edge36
  ]

entry.sw.bb1_crit_edge36:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.bb1

entry.sw.bb1_crit_edge35:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.bb1

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.bb1

entry.sw.bb_crit_edge34:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.bb

entry.sw.bb_crit_edge33:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge33, %entry.sw.bb_crit_edge34
  %dai_link.i = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %dai_link.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dai_link.i, align 4
  %ops.i = getelementptr inbounds %struct.snd_soc_dai_link, ptr %4, i32 0, i32 16
  %5 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ops.i, align 4
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %sw.bb.if.end_crit_edge, label %land.lhs.true.i

sw.bb.if.end_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

land.lhs.true.i:                                  ; preds = %sw.bb
  %trigger.i = getelementptr inbounds %struct.snd_soc_ops, ptr %6, i32 0, i32 5
  %7 = ptrtoint ptr %trigger.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %trigger.i, align 4
  %tobool3.not.i = icmp eq ptr %8, null
  br i1 %tobool3.not.i, label %land.lhs.true.i.if.end_crit_edge, label %if.end.i

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

if.end.i:                                         ; preds = %land.lhs.true.i
  %call.i = tail call i32 %8(ptr noundef %substream, i32 noundef %cmd) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp.i.i = icmp sgt i32 %call.i, -1
  br i1 %cmp.i.i, label %if.end.i.if.end_crit_edge, label %if.end.i.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

if.end.i.i:                                       ; preds = %if.end.i
  %9 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %call.i, label %do.end.i.i [
    i32 -517, label %if.end.i.i.sw.epilog_crit_edge
    i32 -524, label %if.end.i.i.sw.epilog_crit_edge37
  ]

if.end.i.i.sw.epilog_crit_edge37:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog

if.end.i.i.sw.epilog_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog

do.end.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #4
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %12 = ptrtoint ptr %dai_link.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dai_link.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.soc_link_trigger, ptr noundef %15, i32 noundef %call.i) #5
  br label %sw.epilog

if.end:                                           ; preds = %if.end.i.if.end_crit_edge, %land.lhs.true.i.if.end_crit_edge, %sw.bb.if.end_crit_edge
  %ret.015.i.ph = phi i32 [ 0, %sw.bb.if.end_crit_edge ], [ 0, %land.lhs.true.i.if.end_crit_edge ], [ %call.i, %if.end.i.if.end_crit_edge ]
  %mark_trigger = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 21
  %16 = ptrtoint ptr %mark_trigger to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %substream, ptr %mark_trigger, align 4
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge35, %entry.sw.bb1_crit_edge36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rollback)
  %tobool.not = icmp eq i32 %rollback, 0
  br i1 %tobool.not, label %sw.bb1.if.end5_crit_edge, label %land.lhs.true

sw.bb1.if.end5_crit_edge:                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end5

land.lhs.true:                                    ; preds = %sw.bb1
  %mark_trigger2 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 21
  %17 = ptrtoint ptr %mark_trigger2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mark_trigger2, align 4
  %cmp3 = icmp eq ptr %18, %substream
  br i1 %cmp3, label %land.lhs.true.if.end5_crit_edge, label %land.lhs.true.sw.epilog_crit_edge

land.lhs.true.sw.epilog_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog

land.lhs.true.if.end5_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end5

if.end5:                                          ; preds = %land.lhs.true.if.end5_crit_edge, %sw.bb1.if.end5_crit_edge
  %dai_link.i17 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 2
  %19 = ptrtoint ptr %dai_link.i17 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dai_link.i17, align 4
  %ops.i18 = getelementptr inbounds %struct.snd_soc_dai_link, ptr %20, i32 0, i32 16
  %21 = ptrtoint ptr %ops.i18 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ops.i18, align 4
  %tobool.not.i19 = icmp eq ptr %22, null
  br i1 %tobool.not.i19, label %if.end5.soc_link_trigger.exit29_crit_edge, label %land.lhs.true.i22

if.end5.soc_link_trigger.exit29_crit_edge:        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #4
  br label %soc_link_trigger.exit29

land.lhs.true.i22:                                ; preds = %if.end5
  %trigger.i20 = getelementptr inbounds %struct.snd_soc_ops, ptr %22, i32 0, i32 5
  %23 = ptrtoint ptr %trigger.i20 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %trigger.i20, align 4
  %tobool3.not.i21 = icmp eq ptr %24, null
  br i1 %tobool3.not.i21, label %land.lhs.true.i22.soc_link_trigger.exit29_crit_edge, label %if.end.i25

land.lhs.true.i22.soc_link_trigger.exit29_crit_edge: ; preds = %land.lhs.true.i22
  call void @__sanitizer_cov_trace_pc() #4
  br label %soc_link_trigger.exit29

if.end.i25:                                       ; preds = %land.lhs.true.i22
  %call.i23 = tail call i32 %24(ptr noundef %substream, i32 noundef %cmd) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i23)
  %cmp.i.i24 = icmp sgt i32 %call.i23, -1
  br i1 %cmp.i.i24, label %if.end.i25.soc_link_trigger.exit29_crit_edge, label %if.end.i.i26

if.end.i25.soc_link_trigger.exit29_crit_edge:     ; preds = %if.end.i25
  call void @__sanitizer_cov_trace_pc() #4
  br label %soc_link_trigger.exit29

if.end.i.i26:                                     ; preds = %if.end.i25
  %25 = zext i32 %call.i23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %call.i23, label %do.end.i.i27 [
    i32 -517, label %if.end.i.i26.soc_link_trigger.exit29_crit_edge
    i32 -524, label %if.end.i.i26.soc_link_trigger.exit29_crit_edge38
  ]

if.end.i.i26.soc_link_trigger.exit29_crit_edge38: ; preds = %if.end.i.i26
  call void @__sanitizer_cov_trace_pc() #4
  br label %soc_link_trigger.exit29

if.end.i.i26.soc_link_trigger.exit29_crit_edge:   ; preds = %if.end.i.i26
  call void @__sanitizer_cov_trace_pc() #4
  br label %soc_link_trigger.exit29

do.end.i.i27:                                     ; preds = %if.end.i.i26
  call void @__sanitizer_cov_trace_pc() #4
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 4
  %28 = ptrtoint ptr %dai_link.i17 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dai_link.i17, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.soc_link_trigger, ptr noundef %31, i32 noundef %call.i23) #5
  br label %soc_link_trigger.exit29

soc_link_trigger.exit29:                          ; preds = %do.end.i.i27, %if.end.i.i26.soc_link_trigger.exit29_crit_edge, %if.end.i.i26.soc_link_trigger.exit29_crit_edge38, %if.end.i25.soc_link_trigger.exit29_crit_edge, %land.lhs.true.i22.soc_link_trigger.exit29_crit_edge, %if.end5.soc_link_trigger.exit29_crit_edge
  %ret.015.i28 = phi i32 [ %call.i23, %if.end.i25.soc_link_trigger.exit29_crit_edge ], [ %call.i23, %if.end.i.i26.soc_link_trigger.exit29_crit_edge ], [ %call.i23, %if.end.i.i26.soc_link_trigger.exit29_crit_edge38 ], [ %call.i23, %do.end.i.i27 ], [ 0, %land.lhs.true.i22.soc_link_trigger.exit29_crit_edge ], [ 0, %if.end5.soc_link_trigger.exit29_crit_edge ]
  %mark_startup = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 19
  %32 = ptrtoint ptr %mark_startup to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %mark_startup, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %soc_link_trigger.exit29, %land.lhs.true.sw.epilog_crit_edge, %if.end, %do.end.i.i, %if.end.i.i.sw.epilog_crit_edge, %if.end.i.i.sw.epilog_crit_edge37, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ 0, %entry.sw.epilog_crit_edge ], [ %ret.015.i28, %soc_link_trigger.exit29 ], [ 0, %land.lhs.true.sw.epilog_crit_edge ], [ %ret.015.i.ph, %if.end ], [ %call.i, %if.end.i.i.sw.epilog_crit_edge ], [ %call.i, %if.end.i.i.sw.epilog_crit_edge37 ], [ %call.i, %do.end.i.i ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_soc_link_compr_startup(ptr noundef %cstream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_compr_stream, ptr %cstream, i32 0, i32 10
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %dai_link = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dai_link to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dai_link, align 4
  %compr_ops = getelementptr inbounds %struct.snd_soc_dai_link, ptr %3, i32 0, i32 17
  %4 = ptrtoint ptr %compr_ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %compr_ops, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end8.thread_crit_edge, label %land.lhs.true

entry.if.end8.thread_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end8.thread

land.lhs.true:                                    ; preds = %entry
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %tobool3.not = icmp eq ptr %7, null
  br i1 %tobool3.not, label %land.lhs.true.if.end8.thread_crit_edge, label %if.end

land.lhs.true.if.end8.thread_crit_edge:           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end8.thread

if.end:                                           ; preds = %land.lhs.true
  %call = tail call i32 %7(ptr noundef %cstream) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.end.if.end8.thread_crit_edge, label %if.end8

if.end.if.end8.thread_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end8.thread

if.end8.thread:                                   ; preds = %if.end.if.end8.thread_crit_edge, %land.lhs.true.if.end8.thread_crit_edge, %entry.if.end8.thread_crit_edge
  %mark_compr_startup = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 22
  %8 = ptrtoint ptr %mark_compr_startup to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %cstream, ptr %mark_compr_startup, align 4
  br label %_soc_link_ret.exit

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %cmp.i = icmp sgt i32 %call, -1
  br i1 %cmp.i, label %if.end8._soc_link_ret.exit_crit_edge, label %if.end.i

if.end8._soc_link_ret.exit_crit_edge:             ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #4
  br label %_soc_link_ret.exit

if.end.i:                                         ; preds = %if.end8
  %9 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %call, label %do.end.i [
    i32 -517, label %if.end.i._soc_link_ret.exit_crit_edge
    i32 -524, label %if.end.i._soc_link_ret.exit_crit_edge25
  ]

if.end.i._soc_link_ret.exit_crit_edge25:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %_soc_link_ret.exit

if.end.i._soc_link_ret.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %_soc_link_ret.exit

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #4
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %12 = ptrtoint ptr %dai_link to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dai_link, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.snd_soc_link_compr_startup, ptr noundef %15, i32 noundef %call) #5
  br label %_soc_link_ret.exit

_soc_link_ret.exit:                               ; preds = %do.end.i, %if.end.i._soc_link_ret.exit_crit_edge, %if.end.i._soc_link_ret.exit_crit_edge25, %if.end8._soc_link_ret.exit_crit_edge, %if.end8.thread
  %ret.022 = phi i32 [ %call, %if.end8._soc_link_ret.exit_crit_edge ], [ %call, %if.end.i._soc_link_ret.exit_crit_edge ], [ %call, %if.end.i._soc_link_ret.exit_crit_edge25 ], [ %call, %do.end.i ], [ 0, %if.end8.thread ]
  ret i32 %ret.022
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_soc_link_compr_shutdown(ptr noundef %cstream, i32 noundef %rollback) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_compr_stream, ptr %cstream, i32 0, i32 10
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rollback)
  %tobool.not = icmp eq i32 %rollback, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %mark_compr_startup = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %mark_compr_startup to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mark_compr_startup, align 4
  %cmp = icmp eq ptr %3, %cstream
  br i1 %cmp, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %dai_link = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %dai_link to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dai_link, align 4
  %compr_ops = getelementptr inbounds %struct.snd_soc_dai_link, ptr %5, i32 0, i32 17
  %6 = ptrtoint ptr %compr_ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %compr_ops, align 4
  %tobool1.not = icmp eq ptr %7, null
  br i1 %tobool1.not, label %if.end.if.end10_crit_edge, label %land.lhs.true2

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end10

land.lhs.true2:                                   ; preds = %if.end
  %shutdown = getelementptr inbounds %struct.snd_soc_compr_ops, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %shutdown to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %shutdown, align 4
  %tobool5.not = icmp eq ptr %9, null
  br i1 %tobool5.not, label %land.lhs.true2.if.end10_crit_edge, label %if.then6

land.lhs.true2.if.end10_crit_edge:                ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end10

if.then6:                                         ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #4
  tail call void %9(ptr noundef %cstream) #2
  br label %if.end10

if.end10:                                         ; preds = %if.then6, %land.lhs.true2.if.end10_crit_edge, %if.end.if.end10_crit_edge
  %mark_compr_startup11 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 22
  %10 = ptrtoint ptr %mark_compr_startup11 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %mark_compr_startup11, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %land.lhs.true.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_soc_link_compr_set_params(ptr noundef %cstream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_compr_stream, ptr %cstream, i32 0, i32 10
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %dai_link = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dai_link to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dai_link, align 4
  %compr_ops = getelementptr inbounds %struct.snd_soc_dai_link, ptr %3, i32 0, i32 17
  %4 = ptrtoint ptr %compr_ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %compr_ops, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry._soc_link_ret.exit_crit_edge, label %land.lhs.true

entry._soc_link_ret.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %_soc_link_ret.exit

land.lhs.true:                                    ; preds = %entry
  %set_params = getelementptr inbounds %struct.snd_soc_compr_ops, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %set_params to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %set_params, align 4
  %tobool3.not = icmp eq ptr %7, null
  br i1 %tobool3.not, label %land.lhs.true._soc_link_ret.exit_crit_edge, label %if.end

land.lhs.true._soc_link_ret.exit_crit_edge:       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #4
  br label %_soc_link_ret.exit

if.end:                                           ; preds = %land.lhs.true
  %call = tail call i32 %7(ptr noundef %cstream) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %cmp.i = icmp sgt i32 %call, -1
  br i1 %cmp.i, label %if.end._soc_link_ret.exit_crit_edge, label %if.end.i

if.end._soc_link_ret.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %_soc_link_ret.exit

if.end.i:                                         ; preds = %if.end
  %8 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %call, label %do.end.i [
    i32 -517, label %if.end.i._soc_link_ret.exit_crit_edge
    i32 -524, label %if.end.i._soc_link_ret.exit_crit_edge16
  ]

if.end.i._soc_link_ret.exit_crit_edge16:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %_soc_link_ret.exit

if.end.i._soc_link_ret.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %_soc_link_ret.exit

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #4
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %11 = ptrtoint ptr %dai_link to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dai_link, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.snd_soc_link_compr_set_params, ptr noundef %14, i32 noundef %call) #5
  br label %_soc_link_ret.exit

_soc_link_ret.exit:                               ; preds = %do.end.i, %if.end.i._soc_link_ret.exit_crit_edge, %if.end.i._soc_link_ret.exit_crit_edge16, %if.end._soc_link_ret.exit_crit_edge, %land.lhs.true._soc_link_ret.exit_crit_edge, %entry._soc_link_ret.exit_crit_edge
  %ret.015 = phi i32 [ %call, %if.end._soc_link_ret.exit_crit_edge ], [ %call, %if.end.i._soc_link_ret.exit_crit_edge ], [ %call, %if.end.i._soc_link_ret.exit_crit_edge16 ], [ %call, %do.end.i ], [ 0, %land.lhs.true._soc_link_ret.exit_crit_edge ], [ 0, %entry._soc_link_ret.exit_crit_edge ]
  ret i32 %ret.015
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }
attributes #5 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !23, !24, !25, !26, !27, !28}
!llvm.module.flags = !{!30, !31, !32, !33, !34, !35, !36, !37}
!llvm.ident = !{!38}

!0 = !{ptr @__func__.snd_soc_link_init, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/soc/soc-link.c", i32 48, i32 9}
!2 = !{ptr @__func__.snd_soc_link_be_hw_params_fixup, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../sound/soc/soc-link.c", i32 65, i32 9}
!4 = !{ptr @__func__.snd_soc_link_startup, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../sound/soc/soc-link.c", i32 81, i32 9}
!6 = !{ptr @__func__.snd_soc_link_prepare, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../sound/soc/soc-link.c", i32 109, i32 9}
!8 = !{ptr @__func__.snd_soc_link_hw_params, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../sound/soc/soc-link.c", i32 126, i32 9}
!10 = !{ptr @__func__.snd_soc_link_compr_startup, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/soc/soc-link.c", i32 196, i32 9}
!12 = !{ptr @__ksymtab_snd_soc_link_compr_startup, !13, !"__ksymtab_snd_soc_link_compr_startup", i1 false, i1 false}
!13 = !{!"../sound/soc/soc-link.c", i32 198, i32 1}
!14 = !{ptr @__ksymtab_snd_soc_link_compr_shutdown, !15, !"__ksymtab_snd_soc_link_compr_shutdown", i1 false, i1 false}
!15 = !{!"../sound/soc/soc-link.c", i32 214, i32 1}
!16 = !{ptr @__func__.snd_soc_link_compr_set_params, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/soc/soc-link.c", i32 225, i32 9}
!18 = !{ptr @__ksymtab_snd_soc_link_compr_set_params, !19, !"__ksymtab_snd_soc_link_compr_set_params", i1 false, i1 false}
!19 = !{!"../sound/soc/soc-link.c", i32 227, i32 1}
!20 = !{ptr @.str, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../sound/soc/soc-link.c", i32 25, i32 3}
!22 = !{ptr @.str.1, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @_soc_link_ret._entry, !21, !"_entry", i1 false, i1 false}
!27 = !{ptr @_soc_link_ret._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @__func__.soc_link_trigger, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../sound/soc/soc-link.c", i32 153, i32 9}
!30 = !{i32 1, !"wchar_size", i32 2}
!31 = !{i32 1, !"min_enum_size", i32 4}
!32 = !{i32 8, !"branch-target-enforcement", i32 0}
!33 = !{i32 8, !"sign-return-address", i32 0}
!34 = !{i32 8, !"sign-return-address-all", i32 0}
!35 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!36 = !{i32 7, !"uwtable", i32 1}
!37 = !{i32 7, !"frame-pointer", i32 2}
!38 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
