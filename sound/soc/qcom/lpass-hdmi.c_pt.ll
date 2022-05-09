; ModuleID = '/llk/IR_all_yes/sound/soc/qcom/lpass-hdmi.c_pt.bc'
source_filename = "../sound/soc/qcom/lpass-hdmi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+asoc_qcom_lpass_hdmi_dai_ops\22, \22a\22\09"
module asm "\09.weak\09__crc_asoc_qcom_lpass_hdmi_dai_ops\09\09\09\09"
module asm "\09.long\09__crc_asoc_qcom_lpass_hdmi_dai_ops\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_asoc_qcom_lpass_hdmi_dai_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22asoc_qcom_lpass_hdmi_dai_ops\22\09\09\09\09\09"
module asm "__kstrtabns_asoc_qcom_lpass_hdmi_dai_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.lpass_data = type { ptr, [8 x ptr], [8 x ptr], [8 x i32], [8 x i32], [8 x i8], i32, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, [8 x ptr], [4 x ptr], ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, [4 x ptr], [4 x ptr], ptr, ptr, [4 x ptr], ptr, ptr }
%struct.lpass_vbit_ctrl = type { ptr, ptr }
%struct.lpass_hdmitx_dmactl = type { ptr, ptr, ptr, ptr }
%struct.lpass_dp_metadata_ctl = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lpass_sstream_ctl = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@asoc_qcom_lpass_hdmi_dai_ops = dso_local constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @lpass_hdmi_daiops_hw_params, ptr null, ptr @lpass_hdmi_daiops_prepare, ptr @lpass_hdmi_daiops_trigger, ptr null, ptr null, ptr null, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@__kstrtab_asoc_qcom_lpass_hdmi_dai_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_asoc_qcom_lpass_hdmi_dai_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_asoc_qcom_lpass_hdmi_dai_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @asoc_qcom_lpass_hdmi_dai_ops to i32), ptr @__kstrtab_asoc_qcom_lpass_hdmi_dai_ops, ptr @__kstrtabns_asoc_qcom_lpass_hdmi_dai_ops }, section "___ksymtab_gpl+asoc_qcom_lpass_hdmi_dai_ops", align 4
@__UNIQUE_ID_description238 = internal constant [53 x i8] c"snd_soc_lpass_hdmi.description=QTi LPASS HDMI Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file239 = internal constant [58 x i8] c"snd_soc_lpass_hdmi.file=sound/soc/qcom/snd-soc-lpass-hdmi\00", section ".modinfo", align 1
@__UNIQUE_ID_license240 = internal constant [34 x i8] c"snd_soc_lpass_hdmi.license=GPL v2\00", section ".modinfo", align 1
@lpass_hdmi_daiops_hw_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 40, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s invalid bit width given : %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"lpass_hdmi_daiops_hw_params\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"sound/soc/qcom/lpass-hdmi.c\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@lpass_hdmi_daiops_hw_params._entry_ptr = internal global ptr @lpass_hdmi_daiops_hw_params._entry, section ".printk_index", align 4
@lpass_hdmi_daiops_hw_params._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 53, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@lpass_hdmi_daiops_hw_params._entry_ptr.6 = internal global ptr @lpass_hdmi_daiops_hw_params._entry.5, section ".printk_index", align 4
@lpass_hdmi_daiops_hw_params._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 69, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@lpass_hdmi_daiops_hw_params._entry_ptr.8 = internal global ptr @lpass_hdmi_daiops_hw_params._entry.7, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 16, i64 24]
@__sancov_gen_cov_switch_values.9 = internal global [5 x i64] [i64 3, i64 32, i64 32000, i64 44100, i64 48000]
@__sancov_gen_cov_switch_values.10 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 3, i64 4, i64 5, i64 6]
@___asan_gen_.11 = private unnamed_addr constant [29 x i8] c"asoc_qcom_lpass_hdmi_dai_ops\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 246, i32 30 }
@___asan_gen_.29 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 39, i32 3 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 52, i32 3 }
@___asan_gen_.35 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.36 = private constant [31 x i8] c"../sound/soc/qcom/lpass-hdmi.c\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 68, i32 3 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @__UNIQUE_ID_description238, ptr @__UNIQUE_ID_file239, ptr @__UNIQUE_ID_license240, ptr @__ksymtab_asoc_qcom_lpass_hdmi_dai_ops, ptr @lpass_hdmi_daiops_hw_params._entry, ptr @lpass_hdmi_daiops_hw_params._entry.5, ptr @lpass_hdmi_daiops_hw_params._entry.7, ptr @lpass_hdmi_daiops_hw_params._entry_ptr, ptr @lpass_hdmi_daiops_hw_params._entry_ptr.6, ptr @lpass_hdmi_daiops_hw_params._entry_ptr.8, ptr @asoc_qcom_lpass_hdmi_dai_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asoc_qcom_lpass_hdmi_dai_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpass_hdmi_daiops_hw_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpass_hdmi_daiops_hw_params._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpass_hdmi_daiops_hw_params._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpass_hdmi_daiops_hw_params(ptr nocapture noundef readnone %substream, ptr nocapture noundef readonly %params, ptr nocapture noundef readonly %dai) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i.i, label %for.inc.i.i, label %entry.if.then.i.i_crit_edge

entry.if.then.i.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %for.inc.i.i.if.then.i.i_crit_edge, %entry.if.then.i.i_crit_edge
  %i.09.lcssa.i.i = phi i32 [ 0, %entry.if.then.i.i_crit_edge ], [ 32, %for.inc.i.i.if.then.i.i_crit_edge ]
  %.lcssa.i.i = phi i32 [ %5, %entry.if.then.i.i_crit_edge ], [ %8, %for.inc.i.i.if.then.i.i_crit_edge ]
  %6 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i, i1 true) #4, !range !32
  %add.i.i = or i32 %6, %i.09.lcssa.i.i
  br label %params_format.exit

for.inc.i.i:                                      ; preds = %entry
  %arrayidx.1.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %7 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.1.i.i = icmp eq i32 %8, 0
  br i1 %tobool.not.1.i.i, label %for.inc.i.i.params_format.exit_crit_edge, label %for.inc.i.i.if.then.i.i_crit_edge

for.inc.i.i.if.then.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i.i

for.inc.i.i.params_format.exit_crit_edge:         ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %params_format.exit

params_format.exit:                               ; preds = %for.inc.i.i.params_format.exit_crit_edge, %if.then.i.i
  %retval.0.i.i = phi i32 [ %add.i.i, %if.then.i.i ], [ 0, %for.inc.i.i.params_format.exit_crit_edge ]
  %arrayidx.i.i248 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %9 = ptrtoint ptr %arrayidx.i.i248 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i.i248, align 4
  %arrayidx.i.i249 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2
  %11 = ptrtoint ptr %arrayidx.i.i249 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i.i249, align 4
  %meta_ctl4 = getelementptr inbounds %struct.lpass_data, ptr %3, i32 0, i32 31
  %13 = ptrtoint ptr %meta_ctl4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %meta_ctl4, align 4
  %sstream_ctl5 = getelementptr inbounds %struct.lpass_data, ptr %3, i32 0, i32 32
  %15 = ptrtoint ptr %sstream_ctl5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sstream_ctl5, align 4
  %call6 = tail call i32 @snd_pcm_format_width(i32 noundef %retval.0.i.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp = icmp slt i32 %call6, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #6
  %17 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %call6) #7
  br label %cleanup

if.end:                                           ; preds = %params_format.exit
  %19 = zext i32 %call6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call6, label %do.end10 [
    i32 16, label %if.end.sw.epilog_crit_edge
    i32 24, label %sw.bb7
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb7:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

do.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %20 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %call6) #7
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb7, %if.end.sw.epilog_crit_edge
  %word_length.0 = phi i32 [ 11, %sw.bb7 ], [ 0, %if.end.sw.epilog_crit_edge ]
  %22 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %10, label %do.end18 [
    i32 32000, label %sw.epilog.sw.epilog20_crit_edge
    i32 44100, label %sw.bb13
    i32 48000, label %sw.bb14
  ]

sw.epilog.sw.epilog20_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog20

sw.bb13:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog20

sw.bb14:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog20

do.end18:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  %23 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %call6) #7
  br label %cleanup

sw.epilog20:                                      ; preds = %sw.bb14, %sw.bb13, %sw.epilog.sw.epilog20_crit_edge
  %sampling_freq.0 = phi i32 [ 2, %sw.bb14 ], [ 0, %sw.bb13 ], [ 3, %sw.epilog.sw.epilog20_crit_edge ]
  %shl21 = shl nuw nsw i32 %sampling_freq.0, 24
  %tx_ctl = getelementptr inbounds %struct.lpass_data, ptr %3, i32 0, i32 28
  %25 = ptrtoint ptr %tx_ctl to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %tx_ctl, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 4
  %call.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %28, i32 noundef -1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end26, label %sw.epilog20.cleanup_crit_edge

sw.epilog20.cleanup_crit_edge:                    ; preds = %sw.epilog20
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end26:                                         ; preds = %sw.epilog20
  %29 = ptrtoint ptr %tx_ctl to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %tx_ctl, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 4
  %call.i250 = tail call i32 @regmap_field_update_bits_base(ptr noundef %32, i32 noundef -1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i250)
  %tobool30.not = icmp eq i32 %call.i250, 0
  br i1 %tobool30.not, label %if.end32, label %if.end26.cleanup_crit_edge

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end32:                                         ; preds = %if.end26
  %hdmitx_legacy_en = getelementptr inbounds %struct.lpass_data, ptr %3, i32 0, i32 24
  %33 = ptrtoint ptr %hdmitx_legacy_en to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %hdmitx_legacy_en, align 4
  %call.i251 = tail call i32 @regmap_field_update_bits_base(ptr noundef %34, i32 noundef -1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i251)
  %tobool34.not = icmp eq i32 %call.i251, 0
  br i1 %tobool34.not, label %if.end36, label %if.end32.cleanup_crit_edge

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end36:                                         ; preds = %if.end32
  %hdmitx_parity_calc_en = getelementptr inbounds %struct.lpass_data, ptr %3, i32 0, i32 25
  %35 = ptrtoint ptr %hdmitx_parity_calc_en to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %hdmitx_parity_calc_en, align 4
  %call.i252 = tail call i32 @regmap_field_update_bits_base(ptr noundef %36, i32 noundef -1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i252)
  %tobool38.not = icmp eq i32 %call.i252, 0
  br i1 %tobool38.not, label %if.end40, label %if.end36.cleanup_crit_edge

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end40:                                         ; preds = %if.end36
  %vbit_ctl = getelementptr inbounds %struct.lpass_data, ptr %3, i32 0, i32 29
  %37 = ptrtoint ptr %vbit_ctl to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %vbit_ctl, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %38, align 4
  %call.i253 = tail call i32 @regmap_field_update_bits_base(ptr noundef %40, i32 noundef -1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i253)
  %tobool42.not = icmp eq i32 %call.i253, 0
  br i1 %tobool42.not, label %if.end44, label %if.end40.cleanup_crit_edge

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end44:                                         ; preds = %if.end40
  %41 = ptrtoint ptr %vbit_ctl to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %vbit_ctl, align 4
  %vbit_stream = getelementptr inbounds %struct.lpass_vbit_ctrl, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %vbit_stream to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %vbit_stream, align 4
  %call.i254 = tail call i32 @regmap_field_update_bits_base(ptr noundef %44, i32 noundef -1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i254)
  %tobool47.not = icmp eq i32 %call.i254, 0
  br i1 %tobool47.not, label %if.end49, label %if.end44.cleanup_crit_edge

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end49:                                         ; preds = %if.end44
  %hdmitx_ch_msb = getelementptr inbounds %struct.lpass_data, ptr %3, i32 0, i32 26
  %45 = ptrtoint ptr %hdmitx_ch_msb to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %hdmitx_ch_msb, align 4
  %call.i255 = tail call i32 @regmap_field_update_bits_base(ptr noundef %46, i32 noundef -1, i32 noundef %word_length.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i255)
  %tobool51.not = icmp eq i32 %call.i255, 0
  br i1 %tobool51.not, label %if.end53, label %if.end49.cleanup_crit_edge

if.end49.cleanup_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end53:                                         ; preds = %if.end49
  %hdmitx_ch_lsb = getelementptr inbounds %struct.lpass_data, ptr %3, i32 0, i32 27
  %47 = ptrtoint ptr %hdmitx_ch_lsb to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %hdmitx_ch_lsb, align 4
  %call.i256 = tail call i32 @regmap_field_update_bits_base(ptr noundef %48, i32 noundef -1, i32 noundef %shl21, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i256)
  %tobool56.not = icmp eq i32 %call.i256, 0
  br i1 %tobool56.not, label %if.end58, label %if.end53.cleanup_crit_edge

if.end53.cleanup_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end58:                                         ; preds = %if.end53
  %hdmi_tx_dmactl = getelementptr inbounds %struct.lpass_data, ptr %3, i32 0, i32 30
  %49 = ptrtoint ptr %hdmi_tx_dmactl to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %hdmi_tx_dmactl, align 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %50, align 4
  %call.i257 = tail call i32 @regmap_field_update_bits_base(ptr noundef %52, i32 noundef -1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i257)
  %tobool61.not = icmp eq i32 %call.i257, 0
  br i1 %tobool61.not, label %if.end63, label %if.end58.cleanup_crit_edge

if.end58.cleanup_crit_edge:                       ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end63:                                         ; preds = %if.end58
  %53 = ptrtoint ptr %hdmi_tx_dmactl to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %hdmi_tx_dmactl, align 4
  %hw_chs_sel = getelementptr inbounds %struct.lpass_hdmitx_dmactl, ptr %54, i32 0, i32 2
  %55 = ptrtoint ptr %hw_chs_sel to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %hw_chs_sel, align 4
  %call.i258 = tail call i32 @regmap_field_update_bits_base(ptr noundef %56, i32 noundef -1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i258)
  %tobool67.not = icmp eq i32 %call.i258, 0
  br i1 %tobool67.not, label %if.end69, label %if.end63.cleanup_crit_edge

if.end63.cleanup_crit_edge:                       ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end69:                                         ; preds = %if.end63
  %57 = ptrtoint ptr %hdmi_tx_dmactl to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %hdmi_tx_dmactl, align 4
  %use_hw_usr = getelementptr inbounds %struct.lpass_hdmitx_dmactl, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %use_hw_usr to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %use_hw_usr, align 4
  %call.i259 = tail call i32 @regmap_field_update_bits_base(ptr noundef %60, i32 noundef -1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i259)
  %tobool73.not = icmp eq i32 %call.i259, 0
  br i1 %tobool73.not, label %if.end75, label %if.end69.cleanup_crit_edge

if.end69.cleanup_crit_edge:                       ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end75:                                         ; preds = %if.end69
  %61 = ptrtoint ptr %hdmi_tx_dmactl to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %hdmi_tx_dmactl, align 4
  %hw_usr_sel = getelementptr inbounds %struct.lpass_hdmitx_dmactl, ptr %62, i32 0, i32 3
  %63 = ptrtoint ptr %hw_usr_sel to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %hw_usr_sel, align 4
  %call.i260 = tail call i32 @regmap_field_update_bits_base(ptr noundef %64, i32 noundef -1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i260)
  %tobool79.not = icmp eq i32 %call.i260, 0
  br i1 %tobool79.not, label %if.end81, label %if.end75.cleanup_crit_edge

if.end75.cleanup_crit_edge:                       ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end81:                                         ; preds = %if.end75
  %65 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %14, align 4
  %call.i261 = tail call i32 @regmap_field_update_bits_base(ptr noundef %66, i32 noundef -1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i261)
  %tobool83.not = icmp eq i32 %call.i261, 0
  br i1 %tobool83.not, label %if.end85, label %if.end81.cleanup_crit_edge

if.end81.cleanup_crit_edge:                       ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end85:                                         ; preds = %if.end81
  %as_sdp_cc = getelementptr inbounds %struct.lpass_dp_metadata_ctl, ptr %14, i32 0, i32 1
  %67 = ptrtoint ptr %as_sdp_cc to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %as_sdp_cc, align 4
  %sub = add i32 %12, -1
  %call.i262 = tail call i32 @regmap_field_update_bits_base(ptr noundef %68, i32 noundef -1, i32 noundef %sub, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i262)
  %tobool87.not = icmp eq i32 %call.i262, 0
  br i1 %tobool87.not, label %if.end89, label %if.end85.cleanup_crit_edge

if.end85.cleanup_crit_edge:                       ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end89:                                         ; preds = %if.end85
  %as_sdp_ct = getelementptr inbounds %struct.lpass_dp_metadata_ctl, ptr %14, i32 0, i32 2
  %69 = ptrtoint ptr %as_sdp_ct to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %as_sdp_ct, align 4
  %call.i263 = tail call i32 @regmap_field_update_bits_base(ptr noundef %70, i32 noundef -1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i263)
  %tobool91.not = icmp eq i32 %call.i263, 0
  br i1 %tobool91.not, label %if.end93, label %if.end89.cleanup_crit_edge

if.end89.cleanup_crit_edge:                       ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end93:                                         ; preds = %if.end89
  %aif_db4 = getelementptr inbounds %struct.lpass_dp_metadata_ctl, ptr %14, i32 0, i32 3
  %71 = ptrtoint ptr %aif_db4 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %aif_db4, align 4
  %call.i264 = tail call i32 @regmap_field_update_bits_base(ptr noundef %72, i32 noundef -1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i264)
  %tobool95.not = icmp eq i32 %call.i264, 0
  br i1 %tobool95.not, label %if.end97, label %if.end93.cleanup_crit_edge

if.end93.cleanup_crit_edge:                       ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end97:                                         ; preds = %if.end93
  %frequency = getelementptr inbounds %struct.lpass_dp_metadata_ctl, ptr %14, i32 0, i32 4
  %73 = ptrtoint ptr %frequency to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %frequency, align 4
  %call.i265 = tail call i32 @regmap_field_update_bits_base(ptr noundef %74, i32 noundef -1, i32 noundef %sampling_freq.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i265)
  %tobool99.not = icmp eq i32 %call.i265, 0
  br i1 %tobool99.not, label %if.end101, label %if.end97.cleanup_crit_edge

if.end97.cleanup_crit_edge:                       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end101:                                        ; preds = %if.end97
  %mst_index = getelementptr inbounds %struct.lpass_dp_metadata_ctl, ptr %14, i32 0, i32 5
  %75 = ptrtoint ptr %mst_index to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %mst_index, align 4
  %call.i266 = tail call i32 @regmap_field_update_bits_base(ptr noundef %76, i32 noundef -1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i266)
  %tobool103.not = icmp eq i32 %call.i266, 0
  br i1 %tobool103.not, label %if.end105, label %if.end101.cleanup_crit_edge

if.end101.cleanup_crit_edge:                      ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end105:                                        ; preds = %if.end101
  %dptx_index = getelementptr inbounds %struct.lpass_dp_metadata_ctl, ptr %14, i32 0, i32 6
  %77 = ptrtoint ptr %dptx_index to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %dptx_index, align 4
  %call.i267 = tail call i32 @regmap_field_update_bits_base(ptr noundef %78, i32 noundef -1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i267)
  %tobool107.not = icmp eq i32 %call.i267, 0
  br i1 %tobool107.not, label %if.end109, label %if.end105.cleanup_crit_edge

if.end105.cleanup_crit_edge:                      ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end109:                                        ; preds = %if.end105
  %79 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %16, align 4
  %call.i268 = tail call i32 @regmap_field_update_bits_base(ptr noundef %80, i32 noundef -1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i268)
  %tobool111.not = icmp eq i32 %call.i268, 0
  br i1 %tobool111.not, label %if.end113, label %if.end109.cleanup_crit_edge

if.end109.cleanup_crit_edge:                      ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end113:                                        ; preds = %if.end109
  %dma_sel = getelementptr inbounds %struct.lpass_sstream_ctl, ptr %16, i32 0, i32 1
  %81 = ptrtoint ptr %dma_sel to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %dma_sel, align 4
  %call.i269 = tail call i32 @regmap_field_update_bits_base(ptr noundef %82, i32 noundef -1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i269)
  %tobool115.not = icmp eq i32 %call.i269, 0
  br i1 %tobool115.not, label %if.end117, label %if.end113.cleanup_crit_edge

if.end113.cleanup_crit_edge:                      ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end117:                                        ; preds = %if.end113
  %auto_bbit_en = getelementptr inbounds %struct.lpass_sstream_ctl, ptr %16, i32 0, i32 2
  %83 = ptrtoint ptr %auto_bbit_en to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %auto_bbit_en, align 4
  %call.i270 = tail call i32 @regmap_field_update_bits_base(ptr noundef %84, i32 noundef -1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i270)
  %tobool119.not = icmp eq i32 %call.i270, 0
  br i1 %tobool119.not, label %if.end121, label %if.end117.cleanup_crit_edge

if.end117.cleanup_crit_edge:                      ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end121:                                        ; preds = %if.end117
  %layout = getelementptr inbounds %struct.lpass_sstream_ctl, ptr %16, i32 0, i32 3
  %85 = ptrtoint ptr %layout to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %layout, align 4
  %call.i271 = tail call i32 @regmap_field_update_bits_base(ptr noundef %86, i32 noundef -1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i271)
  %tobool123.not = icmp eq i32 %call.i271, 0
  br i1 %tobool123.not, label %if.end125, label %if.end121.cleanup_crit_edge

if.end121.cleanup_crit_edge:                      ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end125:                                        ; preds = %if.end121
  %layout_sp = getelementptr inbounds %struct.lpass_sstream_ctl, ptr %16, i32 0, i32 4
  %87 = ptrtoint ptr %layout_sp to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %layout_sp, align 4
  %call.i272 = tail call i32 @regmap_field_update_bits_base(ptr noundef %88, i32 noundef -1, i32 noundef 15, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i272)
  %tobool127.not = icmp eq i32 %call.i272, 0
  br i1 %tobool127.not, label %if.end129, label %if.end125.cleanup_crit_edge

if.end125.cleanup_crit_edge:                      ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end129:                                        ; preds = %if.end125
  %dp_audio = getelementptr inbounds %struct.lpass_sstream_ctl, ptr %16, i32 0, i32 6
  %89 = ptrtoint ptr %dp_audio to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %dp_audio, align 4
  %call.i273 = tail call i32 @regmap_field_update_bits_base(ptr noundef %90, i32 noundef -1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i273)
  %tobool131.not = icmp eq i32 %call.i273, 0
  br i1 %tobool131.not, label %if.end133, label %if.end129.cleanup_crit_edge

if.end129.cleanup_crit_edge:                      ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end133:                                        ; preds = %if.end129
  %set_sp_on_en = getelementptr inbounds %struct.lpass_sstream_ctl, ptr %16, i32 0, i32 5
  %91 = ptrtoint ptr %set_sp_on_en to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %set_sp_on_en, align 4
  %call.i274 = tail call i32 @regmap_field_update_bits_base(ptr noundef %92, i32 noundef -1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i274)
  %tobool135.not = icmp eq i32 %call.i274, 0
  br i1 %tobool135.not, label %if.end137, label %if.end133.cleanup_crit_edge

if.end133.cleanup_crit_edge:                      ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end137:                                        ; preds = %if.end133
  %dp_sp_b_hw_en = getelementptr inbounds %struct.lpass_sstream_ctl, ptr %16, i32 0, i32 8
  %93 = ptrtoint ptr %dp_sp_b_hw_en to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %dp_sp_b_hw_en, align 4
  %call.i275 = tail call i32 @regmap_field_update_bits_base(ptr noundef %94, i32 noundef -1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i275)
  %tobool139.not = icmp eq i32 %call.i275, 0
  br i1 %tobool139.not, label %if.end141, label %if.end137.cleanup_crit_edge

if.end137.cleanup_crit_edge:                      ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end141:                                        ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #6
  %dp_staffing_en = getelementptr inbounds %struct.lpass_sstream_ctl, ptr %16, i32 0, i32 7
  %95 = ptrtoint ptr %dp_staffing_en to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %dp_staffing_en, align 4
  %call.i276 = tail call i32 @regmap_field_update_bits_base(ptr noundef %96, i32 noundef -1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end141, %if.end137.cleanup_crit_edge, %if.end133.cleanup_crit_edge, %if.end129.cleanup_crit_edge, %if.end125.cleanup_crit_edge, %if.end121.cleanup_crit_edge, %if.end117.cleanup_crit_edge, %if.end113.cleanup_crit_edge, %if.end109.cleanup_crit_edge, %if.end105.cleanup_crit_edge, %if.end101.cleanup_crit_edge, %if.end97.cleanup_crit_edge, %if.end93.cleanup_crit_edge, %if.end89.cleanup_crit_edge, %if.end85.cleanup_crit_edge, %if.end81.cleanup_crit_edge, %if.end75.cleanup_crit_edge, %if.end69.cleanup_crit_edge, %if.end63.cleanup_crit_edge, %if.end58.cleanup_crit_edge, %if.end53.cleanup_crit_edge, %if.end49.cleanup_crit_edge, %if.end44.cleanup_crit_edge, %if.end40.cleanup_crit_edge, %if.end36.cleanup_crit_edge, %if.end32.cleanup_crit_edge, %if.end26.cleanup_crit_edge, %sw.epilog20.cleanup_crit_edge, %do.end18, %do.end10, %do.end
  %retval.0 = phi i32 [ %call6, %do.end ], [ -22, %do.end10 ], [ -22, %do.end18 ], [ %call.i276, %if.end141 ], [ %call.i, %sw.epilog20.cleanup_crit_edge ], [ %call.i250, %if.end26.cleanup_crit_edge ], [ %call.i251, %if.end32.cleanup_crit_edge ], [ %call.i252, %if.end36.cleanup_crit_edge ], [ %call.i253, %if.end40.cleanup_crit_edge ], [ %call.i254, %if.end44.cleanup_crit_edge ], [ %call.i255, %if.end49.cleanup_crit_edge ], [ %call.i256, %if.end53.cleanup_crit_edge ], [ %call.i257, %if.end58.cleanup_crit_edge ], [ %call.i258, %if.end63.cleanup_crit_edge ], [ %call.i259, %if.end69.cleanup_crit_edge ], [ %call.i260, %if.end75.cleanup_crit_edge ], [ %call.i261, %if.end81.cleanup_crit_edge ], [ %call.i262, %if.end85.cleanup_crit_edge ], [ %call.i263, %if.end89.cleanup_crit_edge ], [ %call.i264, %if.end93.cleanup_crit_edge ], [ %call.i265, %if.end97.cleanup_crit_edge ], [ %call.i266, %if.end101.cleanup_crit_edge ], [ %call.i267, %if.end105.cleanup_crit_edge ], [ %call.i268, %if.end109.cleanup_crit_edge ], [ %call.i269, %if.end113.cleanup_crit_edge ], [ %call.i270, %if.end117.cleanup_crit_edge ], [ %call.i271, %if.end121.cleanup_crit_edge ], [ %call.i272, %if.end125.cleanup_crit_edge ], [ %call.i273, %if.end129.cleanup_crit_edge ], [ %call.i274, %if.end133.cleanup_crit_edge ], [ %call.i275, %if.end137.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpass_hdmi_daiops_prepare(ptr nocapture noundef readnone %substream, ptr nocapture noundef readonly %dai) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %sstream_ctl = getelementptr inbounds %struct.lpass_data, ptr %3, i32 0, i32 32
  %4 = ptrtoint ptr %sstream_ctl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sstream_ctl, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %call.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %7, i32 noundef -1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %meta_ctl = getelementptr inbounds %struct.lpass_data, ptr %3, i32 0, i32 31
  %8 = ptrtoint ptr %meta_ctl to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %meta_ctl, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %call.i7 = tail call i32 @regmap_field_update_bits_base(ptr noundef %11, i32 noundef -1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i7, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpass_hdmi_daiops_trigger(ptr nocapture noundef readnone %substream, i32 noundef %cmd, ptr nocapture noundef readonly %dai) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %meta_ctl1 = getelementptr inbounds %struct.lpass_data, ptr %3, i32 0, i32 31
  %4 = ptrtoint ptr %meta_ctl1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %meta_ctl1, align 4
  %sstream_ctl2 = getelementptr inbounds %struct.lpass_data, ptr %3, i32 0, i32 32
  %6 = ptrtoint ptr %sstream_ctl2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sstream_ctl2, align 4
  %8 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %cmd, label %entry.sw.epilog_crit_edge [
    i32 1, label %entry.sw.bb_crit_edge
    i32 6, label %entry.sw.bb_crit_edge44
    i32 4, label %entry.sw.bb_crit_edge45
    i32 0, label %entry.sw.bb8_crit_edge
    i32 5, label %entry.sw.bb8_crit_edge46
    i32 3, label %entry.sw.bb8_crit_edge47
  ]

entry.sw.bb8_crit_edge47:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb8

entry.sw.bb8_crit_edge46:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb8

entry.sw.bb8_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb8

entry.sw.bb_crit_edge45:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb

entry.sw.bb_crit_edge44:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge44, %entry.sw.bb_crit_edge45
  %9 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %7, align 4
  %call.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %10, i32 noundef -1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %5, align 4
  %call.i40 = tail call i32 @regmap_field_update_bits_base(ptr noundef %12, i32 noundef -1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i40)
  %tobool5.not = icmp eq i32 %call.i40, 0
  br i1 %tobool5.not, label %if.end.sw.epilog_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry.sw.bb8_crit_edge, %entry.sw.bb8_crit_edge46, %entry.sw.bb8_crit_edge47
  %13 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %7, align 4
  %call.i41 = tail call i32 @regmap_field_update_bits_base(ptr noundef %14, i32 noundef -1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i41)
  %tobool11.not = icmp eq i32 %call.i41, 0
  br i1 %tobool11.not, label %if.end13, label %sw.bb8.cleanup_crit_edge

sw.bb8.cleanup_crit_edge:                         ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end13:                                         ; preds = %sw.bb8
  %15 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %5, align 4
  %call.i42 = tail call i32 @regmap_field_update_bits_base(ptr noundef %16, i32 noundef -1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i42)
  %tobool16.not = icmp eq i32 %call.i42, 0
  br i1 %tobool16.not, label %if.end18, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end18:                                         ; preds = %if.end13
  %dp_audio = getelementptr inbounds %struct.lpass_sstream_ctl, ptr %7, i32 0, i32 6
  %17 = ptrtoint ptr %dp_audio to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dp_audio, align 4
  %call.i43 = tail call i32 @regmap_field_update_bits_base(ptr noundef %18, i32 noundef -1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i43)
  %tobool20.not = icmp eq i32 %call.i43, 0
  br i1 %tobool20.not, label %if.end18.sw.epilog_crit_edge, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end18.sw.epilog_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end18.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ -22, %entry.sw.epilog_crit_edge ], [ 0, %if.end18.sw.epilog_crit_edge ], [ 0, %if.end.sw.epilog_crit_edge ]
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end18.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %sw.bb8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %sw.bb.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %sw.epilog ], [ %call.i, %sw.bb.cleanup_crit_edge ], [ %call.i40, %if.end.cleanup_crit_edge ], [ %call.i41, %sw.bb8.cleanup_crit_edge ], [ %call.i42, %if.end13.cleanup_crit_edge ], [ %call.i43, %if.end18.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_width(i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_field_update_bits_base(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !12, !13, !14, !15, !16, !17, !19, !20, !22}
!llvm.module.flags = !{!23, !24, !25, !26, !27, !28, !29, !30}
!llvm.ident = !{!31}

!0 = !{ptr @asoc_qcom_lpass_hdmi_dai_ops, !1, !"asoc_qcom_lpass_hdmi_dai_ops", i1 false, i1 false}
!1 = !{!"../sound/soc/qcom/lpass-hdmi.c", i32 246, i32 30}
!2 = !{ptr @__ksymtab_asoc_qcom_lpass_hdmi_dai_ops, !3, !"__ksymtab_asoc_qcom_lpass_hdmi_dai_ops", i1 false, i1 false}
!3 = !{!"../sound/soc/qcom/lpass-hdmi.c", i32 251, i32 1}
!4 = !{ptr @__UNIQUE_ID_description238, !5, !"__UNIQUE_ID_description238", i1 false, i1 false}
!5 = !{!"../sound/soc/qcom/lpass-hdmi.c", i32 253, i32 1}
!6 = !{ptr @__UNIQUE_ID_file239, !7, !"__UNIQUE_ID_file239", i1 false, i1 false}
!7 = !{!"../sound/soc/qcom/lpass-hdmi.c", i32 254, i32 1}
!8 = !{ptr @__UNIQUE_ID_license240, !7, !"__UNIQUE_ID_license240", i1 false, i1 false}
!9 = !{ptr @.str, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../sound/soc/qcom/lpass-hdmi.c", i32 39, i32 3}
!11 = !{ptr @.str.1, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.2, !10, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @lpass_hdmi_daiops_hw_params._entry, !10, !"_entry", i1 false, i1 false}
!16 = !{ptr @lpass_hdmi_daiops_hw_params._entry_ptr, !10, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @lpass_hdmi_daiops_hw_params._entry.5, !18, !"_entry", i1 false, i1 false}
!18 = !{!"../sound/soc/qcom/lpass-hdmi.c", i32 52, i32 3}
!19 = !{ptr @lpass_hdmi_daiops_hw_params._entry_ptr.6, !18, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @lpass_hdmi_daiops_hw_params._entry.7, !21, !"_entry", i1 false, i1 false}
!21 = !{!"../sound/soc/qcom/lpass-hdmi.c", i32 68, i32 3}
!22 = !{ptr @lpass_hdmi_daiops_hw_params._entry_ptr.8, !21, !"_entry_ptr", i1 false, i1 false}
!23 = !{i32 1, !"wchar_size", i32 2}
!24 = !{i32 1, !"min_enum_size", i32 4}
!25 = !{i32 8, !"branch-target-enforcement", i32 0}
!26 = !{i32 8, !"sign-return-address", i32 0}
!27 = !{i32 8, !"sign-return-address-all", i32 0}
!28 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!29 = !{i32 7, !"uwtable", i32 1}
!30 = !{i32 7, !"frame-pointer", i32 2}
!31 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!32 = !{i32 0, i32 33}
