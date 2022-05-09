; ModuleID = '/llk/IR_all_yes/sound/soc/meson/aiu-encoder-spdif.c_pt.bc'
source_filename = "../sound/soc/meson/aiu-encoder-spdif.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.aiu = type { ptr, ptr, %struct.aiu_interface, %struct.aiu_interface, ptr }
%struct.aiu_interface = type { ptr, i32, i32 }
%struct.clk_bulk_data = type { ptr, ptr }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }

@aiu_encoder_spdif_dai_ops = dso_local constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @aiu_encoder_spdif_startup, ptr @aiu_encoder_spdif_shutdown, ptr @aiu_encoder_spdif_hw_params, ptr @aiu_encoder_spdif_hw_free, ptr null, ptr @aiu_encoder_spdif_trigger, ptr null, ptr null, ptr null, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@aiu_encoder_spdif_startup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 190, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to enable spdif clocks\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"aiu_encoder_spdif_startup\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"sound/soc/meson/aiu-encoder-spdif.c\00", [60 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@aiu_encoder_spdif_startup._entry_ptr = internal global ptr @aiu_encoder_spdif_startup._entry, section ".printk_index", align 4
@aiu_encoder_spdif_hw_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 116, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Unsupported physical width\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"aiu_encoder_spdif_hw_params\00", [36 x i8] zeroinitializer }, align 32
@aiu_encoder_spdif_hw_params._entry_ptr = internal global ptr @aiu_encoder_spdif_hw_params._entry, section ".printk_index", align 4
@aiu_encoder_spdif_hw_params._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.6, ptr @.str.2, i32 132, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to set channel status word\0A\00", [61 x i8] zeroinitializer }, align 32
@aiu_encoder_spdif_hw_params._entry_ptr.9 = internal global ptr @aiu_encoder_spdif_hw_params._entry.7, section ".printk_index", align 4
@aiu_encoder_spdif_hw_params._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.6, ptr @.str.2, i32 146, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to set mclk rate\0A\00", [39 x i8] zeroinitializer }, align 32
@aiu_encoder_spdif_hw_params._entry_ptr.12 = internal global ptr @aiu_encoder_spdif_hw_params._entry.10, section ".printk_index", align 4
@switch.table.aiu_encoder_spdif_trigger = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 1, i32 0, i32 0, i32 1, i32 0, i32 1, i32 0], [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 16, i64 32]
@___asan_gen_.13 = private unnamed_addr constant [26 x i8] c"aiu_encoder_spdif_dai_ops\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 203, i32 30 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 190, i32 3 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 116, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 132, i32 3 }
@___asan_gen_.49 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.52 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.53 = private constant [39 x i8] c"../sound/soc/meson/aiu-encoder-spdif.c\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 146, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant [39 x i8] c"switch.table.aiu_encoder_spdif_trigger\00", align 1
@llvm.compiler.used = appending global [19 x ptr] [ptr @aiu_encoder_spdif_hw_params._entry, ptr @aiu_encoder_spdif_hw_params._entry.10, ptr @aiu_encoder_spdif_hw_params._entry.7, ptr @aiu_encoder_spdif_hw_params._entry_ptr, ptr @aiu_encoder_spdif_hw_params._entry_ptr.12, ptr @aiu_encoder_spdif_hw_params._entry_ptr.9, ptr @aiu_encoder_spdif_startup._entry, ptr @aiu_encoder_spdif_startup._entry_ptr, ptr @aiu_encoder_spdif_dai_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @switch.table.aiu_encoder_spdif_trigger], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aiu_encoder_spdif_dai_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aiu_encoder_spdif_startup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aiu_encoder_spdif_hw_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aiu_encoder_spdif_hw_params._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aiu_encoder_spdif_hw_params._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.aiu_encoder_spdif_trigger to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aiu_encoder_spdif_startup(ptr nocapture noundef readnone %substream, ptr nocapture noundef readonly %dai) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %component = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 12
  %0 = ptrtoint ptr %component to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %spdif = getelementptr inbounds %struct.aiu, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %spdif to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %spdif, align 4
  %clk = getelementptr %struct.clk_bulk_data, ptr %7, i32 2, i32 1
  %8 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk, align 4
  %spdif_mclk = getelementptr inbounds %struct.aiu, ptr %5, i32 0, i32 1
  %10 = ptrtoint ptr %spdif_mclk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %spdif_mclk, align 4
  %call1 = tail call i32 @clk_set_parent(ptr noundef %9, ptr noundef %11) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %clk_num = getelementptr inbounds %struct.aiu, ptr %5, i32 0, i32 3, i32 1
  %12 = ptrtoint ptr %clk_num to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %clk_num, align 4
  %14 = ptrtoint ptr %spdif to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %spdif, align 4
  %call.i = tail call i32 @clk_bulk_prepare(i32 noundef %13, ptr noundef %15) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.do.end_crit_edge

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.end.i:                                         ; preds = %if.end
  %call1.i = tail call i32 @clk_bulk_enable(i32 noundef %13, ptr noundef %15) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.cleanup_crit_edge, label %if.then3.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_bulk_unprepare(i32 noundef %13, ptr noundef %15) #5
  br label %do.end

do.end:                                           ; preds = %if.then3.i, %if.end.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %if.end.do.end_crit_edge ]
  %dev = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %entry.cleanup_crit_edge ], [ %retval.0.i.ph, %do.end ], [ 0, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @aiu_encoder_spdif_shutdown(ptr nocapture noundef readnone %substream, ptr nocapture noundef readonly %dai) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %component = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 12
  %0 = ptrtoint ptr %component to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %spdif = getelementptr inbounds %struct.aiu, ptr %5, i32 0, i32 3
  %clk_num = getelementptr inbounds %struct.aiu, ptr %5, i32 0, i32 3, i32 1
  %6 = ptrtoint ptr %clk_num to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %clk_num, align 4
  %8 = ptrtoint ptr %spdif to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %spdif, align 4
  tail call void @clk_bulk_disable(i32 noundef %7, ptr noundef %9) #5
  tail call void @clk_bulk_unprepare(i32 noundef %7, ptr noundef %9) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aiu_encoder_spdif_hw_params(ptr nocapture noundef readnone %substream, ptr noundef %params, ptr nocapture noundef readonly %dai) #0 align 64 {
entry:
  %cs.i = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %component1 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 12
  %0 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component1, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %call.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 88, i32 noundef 2, i32 noundef 0) #5
  %arrayidx.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i.i.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i.i.i, label %for.inc.i.i.i, label %entry.if.then.i.i.i_crit_edge

entry.if.then.i.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %for.inc.i.i.i.if.then.i.i.i_crit_edge, %entry.if.then.i.i.i_crit_edge
  %i.09.lcssa.i.i.i = phi i32 [ 0, %entry.if.then.i.i.i_crit_edge ], [ 32, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %.lcssa.i.i.i = phi i32 [ %7, %entry.if.then.i.i.i_crit_edge ], [ %10, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %8 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i.i, i1 true) #5, !range !32
  %add.i.i.i = or i32 %8, %i.09.lcssa.i.i.i
  br label %params_physical_width.exit

for.inc.i.i.i:                                    ; preds = %entry
  %arrayidx.1.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %9 = ptrtoint ptr %arrayidx.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.1.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.1.i.i.i = icmp eq i32 %10, 0
  br i1 %tobool.not.1.i.i.i, label %for.inc.i.i.i.params_physical_width.exit_crit_edge, label %for.inc.i.i.i.if.then.i.i.i_crit_edge

for.inc.i.i.i.if.then.i.i.i_crit_edge:            ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i.i.i

for.inc.i.i.i.params_physical_width.exit_crit_edge: ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %params_physical_width.exit

params_physical_width.exit:                       ; preds = %for.inc.i.i.i.params_physical_width.exit_crit_edge, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %add.i.i.i, %if.then.i.i.i ], [ 0, %for.inc.i.i.i.params_physical_width.exit_crit_edge ]
  %call1.i = tail call i32 @snd_pcm_format_physical_width(i32 noundef %retval.0.i.i.i) #5
  %11 = zext i32 %call1.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call1.i, label %do.end20 [
    i32 16, label %params_physical_width.exit.sw.epilog_crit_edge
    i32 32, label %sw.bb16
  ]

params_physical_width.exit.sw.epilog_crit_edge:   ; preds = %params_physical_width.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb16:                                          ; preds = %params_physical_width.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.end20:                                         ; preds = %params_physical_width.exit
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.5) #8
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb16, %params_physical_width.exit.sw.epilog_crit_edge
  %val.0 = phi i32 [ 128, %sw.bb16 ], [ 66, %params_physical_width.exit.sw.epilog_crit_edge ]
  %call21 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 16, i32 noundef 12515, i32 noundef %val.0) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cs.i) #5
  %14 = ptrtoint ptr %cs.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %cs.i, align 4
  %call.i75 = call i32 @snd_pcm_create_iec958_consumer_hw_params(ptr noundef %params, ptr noundef nonnull %cs.i, i32 noundef 4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i75)
  %cmp.i = icmp slt i32 %call.i75, 0
  br i1 %cmp.i, label %do.end25, label %if.end

do.end25:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cs.i) #5
  %dev26 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %15 = ptrtoint ptr %dev26 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev26, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.8) #8
  br label %cleanup

if.end:                                           ; preds = %sw.epilog
  %17 = getelementptr inbounds [4 x i8], ptr %cs.i, i32 0, i32 3
  %18 = getelementptr inbounds [4 x i8], ptr %cs.i, i32 0, i32 2
  %19 = getelementptr inbounds [4 x i8], ptr %cs.i, i32 0, i32 1
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %19, align 1
  %conv.i = zext i8 %21 to i32
  %22 = ptrtoint ptr %cs.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %cs.i, align 4
  %conv2.i = zext i8 %23 to i32
  %shl.i = shl nuw nsw i32 %conv2.i, 8
  %or.i = or i32 %shl.i, %conv.i
  %call3.i = call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 32, i32 noundef %or.i) #5
  %call4.i = call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 192, i32 noundef %or.i) #5
  %24 = ptrtoint ptr %17 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %17, align 1
  %conv6.i = zext i8 %25 to i32
  %26 = ptrtoint ptr %18 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %18, align 2
  %conv8.i = zext i8 %27 to i32
  %shl9.i = shl nuw nsw i32 %conv8.i, 8
  %or10.i = or i32 %shl9.i, %conv6.i
  %call11.i = call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 36, i32 noundef %or10.i) #5
  %call12.i = call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 196, i32 noundef %or10.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cs.i) #5
  %call44 = call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 88, i32 noundef 4144, i32 noundef 16) #5
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %28 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.i.i, align 4
  %mul46 = shl i32 %29, 8
  %spdif = getelementptr inbounds %struct.aiu, ptr %5, i32 0, i32 3
  %30 = ptrtoint ptr %spdif to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %spdif, align 4
  %clk = getelementptr %struct.clk_bulk_data, ptr %31, i32 2, i32 1
  %32 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %clk, align 4
  %call47 = call i32 @clk_set_rate(ptr noundef %33, i32 noundef %mul46) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.end54, label %do.end52

do.end52:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %dev53 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %34 = ptrtoint ptr %dev53 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev53, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.11) #8
  br label %cleanup

if.end54:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call.i76 = call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 88, i32 noundef 2, i32 noundef 2) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end54, %do.end52, %do.end25, %do.end20
  %retval.0 = phi i32 [ -22, %do.end20 ], [ %call.i75, %do.end25 ], [ %call47, %do.end52 ], [ 0, %if.end54 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aiu_encoder_spdif_hw_free(ptr nocapture noundef readnone %substream, ptr nocapture noundef readonly %dai) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %component1 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 12
  %0 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component1, align 4
  %call.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 88, i32 noundef 2, i32 noundef 0) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aiu_encoder_spdif_trigger(ptr nocapture noundef readnone %substream, i32 noundef %cmd, ptr nocapture noundef readonly %dai) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %component1 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 12
  %0 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %cmd)
  %2 = icmp ult i32 %cmd, 7
  br i1 %2, label %switch.hole_check, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

switch.hole_check:                                ; preds = %entry
  %switch.maskindex = trunc i32 %cmd to i8
  %switch.shifted = lshr i8 123, %switch.maskindex
  %3 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %switch.lobit.not = icmp eq i8 %3, 0
  br i1 %switch.lobit.not, label %switch.hole_check.cleanup_crit_edge, label %switch.lookup

switch.hole_check.cleanup_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep = getelementptr inbounds [7 x i32], ptr @switch.table.aiu_encoder_spdif_trigger, i32 0, i32 %cmd
  %4 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %4)
  %switch.load = load i32, ptr %switch.gep, align 4
  %call.i4 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 40, i32 noundef 1, i32 noundef %switch.load) #5
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %switch.hole_check.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %switch.lookup ], [ -22, %switch.hole_check.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_parent(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_prepare(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_unprepare(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_update_bits(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_physical_width(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_create_iec958_consumer_hw_params(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !12, !13, !14, !15, !17, !18, !19, !21, !22}
!llvm.module.flags = !{!23, !24, !25, !26, !27, !28, !29, !30}
!llvm.ident = !{!31}

!0 = !{ptr @aiu_encoder_spdif_dai_ops, !1, !"aiu_encoder_spdif_dai_ops", i1 false, i1 false}
!1 = !{!"../sound/soc/meson/aiu-encoder-spdif.c", i32 203, i32 30}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../sound/soc/meson/aiu-encoder-spdif.c", i32 190, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @aiu_encoder_spdif_startup._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @aiu_encoder_spdif_startup._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/soc/meson/aiu-encoder-spdif.c", i32 116, i32 3}
!12 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @aiu_encoder_spdif_hw_params._entry, !11, !"_entry", i1 false, i1 false}
!14 = !{ptr @aiu_encoder_spdif_hw_params._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../sound/soc/meson/aiu-encoder-spdif.c", i32 132, i32 3}
!17 = !{ptr @aiu_encoder_spdif_hw_params._entry.7, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @aiu_encoder_spdif_hw_params._entry_ptr.9, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../sound/soc/meson/aiu-encoder-spdif.c", i32 146, i32 3}
!21 = !{ptr @aiu_encoder_spdif_hw_params._entry.10, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @aiu_encoder_spdif_hw_params._entry_ptr.12, !20, !"_entry_ptr", i1 false, i1 false}
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
