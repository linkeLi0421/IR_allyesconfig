; ModuleID = '/llk/IR_all_yes/sound/soc/sh/rcar/mix.c_pt.bc'
source_filename = "../sound/soc/sh/rcar/mix.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.rsnd_mod_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.rsnd_priv = type { ptr, %struct.spinlock, i32, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.rsnd_mix = type { %struct.rsnd_mod, %struct.rsnd_kctrl_cfg_s, %struct.rsnd_kctrl_cfg_s, %struct.rsnd_kctrl_cfg_s, %struct.rsnd_kctrl_cfg_s, %struct.rsnd_kctrl_cfg_s, %struct.rsnd_kctrl_cfg_s, %struct.rsnd_kctrl_cfg_s, i32 }
%struct.rsnd_mod = type { i32, i32, ptr, ptr, ptr, i32 }
%struct.rsnd_kctrl_cfg_s = type { %struct.rsnd_kctrl_cfg, i32 }
%struct.rsnd_kctrl_cfg = type { i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.rsnd_dai_stream = type { [16 x i8], ptr, [13 x ptr], ptr, ptr, ptr, i32, i32, i32, i32 }

@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sound/soc/sh/rcar/mix.c\00", [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rcar_sound,mix\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s.%d\00", [26 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mix\00", [28 x i8] zeroinitializer }, align 32
@rsnd_mix_ops = internal global { %struct.rsnd_mod_ops, [44 x i8] } { %struct.rsnd_mod_ops { ptr @.str.3, ptr null, ptr @rsnd_mix_probe_, ptr null, ptr @rsnd_mix_init, ptr @rsnd_mix_quit, ptr null, ptr null, ptr null, ptr @rsnd_mix_pcm_new, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rsnd_mod_get_status, ptr null, ptr null, ptr null, ptr @rsnd_mix_debug_info }, [44 x i8] zeroinitializer }, align 32
@rsnd_mix_volume_parameter.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.5, ptr @.str, ptr @.str.6, i8 0, i8 24, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"snd_soc_rcar\00", [19 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rsnd_mix_volume_parameter\00", [38 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"MIX A/B/C/D = %02x/%02x/%02x/%02x\0A\00", [61 x i8] zeroinitializer }, align 32
@rsnd_mix_pcm_new._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str, i32 204, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"unknown SRC is connected\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rsnd_mix_pcm_new\00", [47 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rsnd_mix_pcm_new._entry_ptr = internal global ptr @rsnd_mix_pcm_new._entry, section ".printk_index", align 4
@.str.11 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"MIX Playback Volume\00", [44 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"MIX Ramp Switch\00", [16 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"MIX Ramp Up Rate\00", [47 x i8] zeroinitializer }, align 32
@volume_ramp_rate = external dso_local constant [0 x ptr], align 4
@.str.14 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"MIX Ramp Down Rate\00", [45 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 9]
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 278, i32 6 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 298, i32 9 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 322, i32 33 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 323, i32 5 }
@___asan_gen_.27 = private unnamed_addr constant [13 x i8] c"rsnd_mix_ops\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 266, i32 28 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 95, i32 2 }
@___asan_gen_.39 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 204, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 209, i32 8 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 222, i32 8 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 230, i32 8 }
@___asan_gen_.63 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.64 = private constant [27 x i8] c"../sound/soc/sh/rcar/mix.c\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 240, i32 8 }
@llvm.compiler.used = appending global [18 x ptr] [ptr @rsnd_mix_pcm_new._entry, ptr @rsnd_mix_pcm_new._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @rsnd_mix_ops, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rsnd_mix_ops to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rsnd_mix_pcm_new._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @rsnd_mix_mod_get(ptr nocapture noundef readonly %priv, i32 noundef %id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %id)
  %cmp = icmp slt i32 %id, 0
  br i1 %cmp, label %entry.do.end_crit_edge, label %lor.end, !prof !39

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

lor.end:                                          ; preds = %entry
  %mix_nr = getelementptr inbounds %struct.rsnd_priv, ptr %priv, i32 0, i32 15
  %0 = ptrtoint ptr %mix_nr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mix_nr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %id)
  %cmp1.not = icmp sgt i32 %1, %id
  br i1 %cmp1.not, label %lor.end.if.end_crit_edge, label %lor.end.do.end_crit_edge, !prof !40

lor.end.do.end_crit_edge:                         ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

lor.end.if.end_crit_edge:                         ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %lor.end.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 278, i32 noundef 9, ptr noundef null) #6
  br label %if.end

if.end:                                           ; preds = %do.end, %lor.end.if.end_crit_edge
  %2 = phi i32 [ 0, %do.end ], [ %id, %lor.end.if.end_crit_edge ]
  %mix = getelementptr inbounds %struct.rsnd_priv, ptr %priv, i32 0, i32 14
  %3 = ptrtoint ptr %mix to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mix, align 4
  %add.ptr = getelementptr %struct.rsnd_mix, ptr %4, i32 %2
  ret ptr %add.ptr
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rsnd_mix_probe(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  %name = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %name) #6
  %flags = getelementptr inbounds %struct.rsnd_priv, ptr %priv, i32 0, i32 2
  %2 = call ptr @memset(ptr %name, i32 255, i32 16)
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags, align 4
  %and = and i32 %4, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and)
  %cmp = icmp eq i32 %and, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %of_node = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3, i32 27
  %5 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @of_get_child_by_name(ptr noundef %6, ptr noundef nonnull @.str.1) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call.i = tail call ptr @of_get_next_child(ptr noundef nonnull %call, ptr noundef null) #6
  %cmp.not5.i = icmp eq ptr %call.i, null
  br i1 %cmp.not5.i, label %if.end5.rsnd_mix_probe_done_crit_edge, label %if.end5.for.body.i_crit_edge

if.end5.for.body.i_crit_edge:                     ; preds = %if.end5
  br label %for.body.i

if.end5.rsnd_mix_probe_done_crit_edge:            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %rsnd_mix_probe_done

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end5.for.body.i_crit_edge
  %num.07.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end5.for.body.i_crit_edge ]
  %child.06.i = phi ptr [ %call1.i, %for.body.i.for.body.i_crit_edge ], [ %call.i, %if.end5.for.body.i_crit_edge ]
  %inc.i = add i32 %num.07.i, 1
  %call1.i = tail call ptr @of_get_next_child(ptr noundef nonnull %call, ptr noundef nonnull %child.06.i) #6
  %cmp.not.i = icmp eq ptr %call1.i, null
  br i1 %cmp.not.i, label %of_get_child_count.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

of_get_child_count.exit:                          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc.i)
  %tobool7.not = icmp eq i32 %inc.i, 0
  br i1 %tobool7.not, label %of_get_child_count.exit.rsnd_mix_probe_done_crit_edge, label %if.end9

of_get_child_count.exit.rsnd_mix_probe_done_crit_edge: ; preds = %of_get_child_count.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %rsnd_mix_probe_done

if.end9:                                          ; preds = %of_get_child_count.exit
  %7 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %inc.i, i32 336) #6
  %8 = extractvalue { i32, i1 } %7, 1
  br i1 %8, label %if.end9.rsnd_mix_probe_done_crit_edge, label %devm_kcalloc.exit, !prof !41

if.end9.rsnd_mix_probe_done_crit_edge:            ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %rsnd_mix_probe_done

devm_kcalloc.exit:                                ; preds = %if.end9
  %9 = extractvalue { i32, i1 } %7, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %9, i32 noundef 3520) #6
  %tobool11.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool11.not, label %devm_kcalloc.exit.rsnd_mix_probe_done_crit_edge, label %if.end13

devm_kcalloc.exit.rsnd_mix_probe_done_crit_edge:  ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %rsnd_mix_probe_done

if.end13:                                         ; preds = %devm_kcalloc.exit
  %mix_nr = getelementptr inbounds %struct.rsnd_priv, ptr %priv, i32 0, i32 15
  %10 = ptrtoint ptr %mix_nr to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %inc.i, ptr %mix_nr, align 4
  %mix14 = getelementptr inbounds %struct.rsnd_priv, ptr %priv, i32 0, i32 14
  %11 = ptrtoint ptr %mix14 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call5.i.i, ptr %mix14, align 4
  %call15 = tail call ptr @of_get_next_child(ptr noundef nonnull %call, ptr noundef null) #6
  %cmp16.not69 = icmp eq ptr %call15, null
  br i1 %cmp16.not69, label %if.end13.rsnd_mix_probe_done_crit_edge, label %if.end13.for.body_crit_edge

if.end13.for.body_crit_edge:                      ; preds = %if.end13
  br label %for.body

if.end13.rsnd_mix_probe_done_crit_edge:           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %rsnd_mix_probe_done

for.body:                                         ; preds = %if.end28.for.body_crit_edge, %if.end13.for.body_crit_edge
  %i.071 = phi i32 [ %inc, %if.end28.for.body_crit_edge ], [ 0, %if.end13.for.body_crit_edge ]
  %np.070 = phi ptr [ %call29, %if.end28.for.body_crit_edge ], [ %call15, %if.end13.for.body_crit_edge ]
  %12 = ptrtoint ptr %mix14 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mix14, align 4
  %call18 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name, i32 noundef 16, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef %i.071)
  %call20 = call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull %name) #6
  %cmp.i = icmp ugt ptr %call20, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then22, label %if.end24

if.then22:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %call20 to i32
  br label %rsnd_mix_probe_done.sink.split

if.end24:                                         ; preds = %for.body
  %add.ptr = getelementptr %struct.rsnd_mix, ptr %13, i32 %i.071
  %call25 = call i32 @rsnd_mod_init(ptr noundef %priv, ptr noundef %add.ptr, ptr noundef nonnull @rsnd_mix_ops, ptr noundef %call20, i32 noundef 3, i32 noundef %i.071) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end28, label %if.end24.rsnd_mix_probe_done.sink.split_crit_edge

if.end24.rsnd_mix_probe_done.sink.split_crit_edge: ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %rsnd_mix_probe_done.sink.split

if.end28:                                         ; preds = %if.end24
  %inc = add i32 %i.071, 1
  %call29 = call ptr @of_get_next_child(ptr noundef nonnull %call, ptr noundef nonnull %np.070) #6
  %cmp16.not = icmp eq ptr %call29, null
  br i1 %cmp16.not, label %if.end28.rsnd_mix_probe_done_crit_edge, label %if.end28.for.body_crit_edge

if.end28.for.body_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

if.end28.rsnd_mix_probe_done_crit_edge:           ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %rsnd_mix_probe_done

rsnd_mix_probe_done.sink.split:                   ; preds = %if.end24.rsnd_mix_probe_done.sink.split_crit_edge, %if.then22
  %ret.1.ph = phi i32 [ %14, %if.then22 ], [ %call25, %if.end24.rsnd_mix_probe_done.sink.split_crit_edge ]
  call void @of_node_put(ptr noundef nonnull %np.070) #6
  br label %rsnd_mix_probe_done

rsnd_mix_probe_done:                              ; preds = %rsnd_mix_probe_done.sink.split, %if.end28.rsnd_mix_probe_done_crit_edge, %if.end13.rsnd_mix_probe_done_crit_edge, %devm_kcalloc.exit.rsnd_mix_probe_done_crit_edge, %if.end9.rsnd_mix_probe_done_crit_edge, %of_get_child_count.exit.rsnd_mix_probe_done_crit_edge, %if.end5.rsnd_mix_probe_done_crit_edge
  %ret.1 = phi i32 [ -22, %of_get_child_count.exit.rsnd_mix_probe_done_crit_edge ], [ -12, %devm_kcalloc.exit.rsnd_mix_probe_done_crit_edge ], [ -22, %if.end5.rsnd_mix_probe_done_crit_edge ], [ -12, %if.end9.rsnd_mix_probe_done_crit_edge ], [ 0, %if.end13.rsnd_mix_probe_done_crit_edge ], [ %ret.1.ph, %rsnd_mix_probe_done.sink.split ], [ 0, %if.end28.rsnd_mix_probe_done_crit_edge ]
  call void @of_node_put(ptr noundef nonnull %call) #6
  br label %cleanup

cleanup:                                          ; preds = %rsnd_mix_probe_done, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %rsnd_mix_probe_done ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %name) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_mod_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rsnd_mix_remove(ptr nocapture noundef readonly %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mix1 = getelementptr inbounds %struct.rsnd_priv, ptr %priv, i32 0, i32 14
  %mix_nr = getelementptr inbounds %struct.rsnd_priv, ptr %priv, i32 0, i32 15
  %0 = ptrtoint ptr %mix_nr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mix_nr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp5 = icmp sgt i32 %1, 0
  br i1 %cmp5, label %entry.land.rhs_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

entry.land.rhs_crit_edge:                         ; preds = %entry
  br label %land.rhs

land.rhs:                                         ; preds = %for.body.land.rhs_crit_edge, %entry.land.rhs_crit_edge
  %i.06 = phi i32 [ %inc, %for.body.land.rhs_crit_edge ], [ 0, %entry.land.rhs_crit_edge ]
  %2 = ptrtoint ptr %mix1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mix1, align 4
  %add.ptr = getelementptr %struct.rsnd_mix, ptr %3, i32 %i.06
  %tobool.not = icmp eq ptr %add.ptr, null
  br i1 %tobool.not, label %land.rhs.for.end_crit_edge, label %for.body

land.rhs.for.end_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %land.rhs
  tail call void @rsnd_mod_quit(ptr noundef nonnull %add.ptr) #6
  %inc = add nuw nsw i32 %i.06, 1
  %4 = ptrtoint ptr %mix_nr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mix_nr, align 4
  %cmp = icmp slt i32 %inc, %5
  br i1 %cmp, label %for.body.land.rhs_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.land.rhs_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs

for.end:                                          ; preds = %for.body.for.end_crit_edge, %land.rhs.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rsnd_mod_quit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rsnd_mix_probe_(ptr noundef %mod, ptr noundef %io, ptr nocapture noundef readnone %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rsnd_mod_id(ptr noundef %mod) #6
  %call1 = tail call i32 @rsnd_cmd_attach(ptr noundef %io, i32 noundef %call) #6
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rsnd_mix_init(ptr noundef %mod, ptr noundef %io, ptr nocapture noundef readnone %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %clk = getelementptr inbounds %struct.rsnd_mod, ptr %mod, i32 0, i32 4
  %0 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk, align 4
  %call = tail call i32 @clk_enable(ptr noundef %1) #6
  tail call void @rsnd_mod_write(ptr noundef %mod, i32 noundef 70, i32 noundef 0) #6
  tail call void @rsnd_mod_write(ptr noundef %mod, i32 noundef 70, i32 noundef 1) #6
  tail call void @rsnd_mod_write(ptr noundef %mod, i32 noundef 71, i32 noundef 1) #6
  %call.i = tail call i32 @rsnd_runtime_channel_after_ctu_with_params(ptr noundef %io, ptr noundef null) #6
  tail call void @rsnd_mod_write(ptr noundef %mod, i32 noundef 72, i32 noundef %call.i) #6
  %val.i = getelementptr inbounds %struct.rsnd_mix, ptr %mod, i32 0, i32 5, i32 1
  %2 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %val.i, align 4
  tail call void @rsnd_mod_write(ptr noundef %mod, i32 noundef 73, i32 noundef %3) #6
  %val1.i = getelementptr inbounds %struct.rsnd_mix, ptr %mod, i32 0, i32 6, i32 1
  %4 = ptrtoint ptr %val1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %val1.i, align 4
  %shl.i = shl i32 %5, 8
  %val2.i = getelementptr inbounds %struct.rsnd_mix, ptr %mod, i32 0, i32 7, i32 1
  %6 = ptrtoint ptr %val2.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %val2.i, align 4
  %or.i = or i32 %shl.i, %7
  tail call void @rsnd_mod_write(ptr noundef %mod, i32 noundef 74, i32 noundef %or.i) #6
  tail call fastcc void @rsnd_mix_volume_parameter(ptr noundef %mod) #6
  tail call void @rsnd_mod_write(ptr noundef %mod, i32 noundef 71, i32 noundef 0) #6
  tail call void @rsnd_mod_write(ptr noundef %mod, i32 noundef 79, i32 noundef 0) #6
  tail call fastcc void @rsnd_mix_volume_parameter(ptr noundef %mod) #6
  tail call void @rsnd_mod_write(ptr noundef %mod, i32 noundef 79, i32 noundef 1) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rsnd_mix_quit(ptr noundef %mod, ptr nocapture noundef readnone %io, ptr nocapture noundef readnone %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @rsnd_mod_write(ptr noundef %mod, i32 noundef 71, i32 noundef 1) #6
  tail call void @rsnd_mod_write(ptr noundef %mod, i32 noundef 70, i32 noundef 0) #6
  %clk = getelementptr inbounds %struct.rsnd_mod, ptr %mod, i32 0, i32 4
  %0 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %1) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rsnd_mix_pcm_new(ptr noundef %mod, ptr noundef %io, ptr noundef %rtd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.rsnd_mod, ptr %mod, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %arrayidx = getelementptr %struct.rsnd_dai_stream, ptr %io, i32 0, i32 2, i32 6
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %call = tail call i32 @rsnd_mod_id(ptr noundef %5) #6
  %6 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call, label %do.end [
    i32 3, label %entry.sw.bb_crit_edge
    i32 6, label %entry.sw.bb_crit_edge71
    i32 4, label %entry.sw.bb4_crit_edge
    i32 9, label %entry.sw.bb4_crit_edge72
    i32 0, label %entry.sw.bb7_crit_edge
    i32 1, label %entry.sw.bb7_crit_edge73
    i32 2, label %entry.sw.bb10_crit_edge
    i32 5, label %entry.sw.bb10_crit_edge74
  ]

entry.sw.bb10_crit_edge74:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb10

entry.sw.bb10_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb10

entry.sw.bb7_crit_edge73:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb7

entry.sw.bb7_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb7

entry.sw.bb4_crit_edge72:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb4

entry.sw.bb4_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb4

entry.sw.bb_crit_edge71:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge71
  %volumeA = getelementptr inbounds %struct.rsnd_mix, ptr %mod, i32 0, i32 1
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry.sw.bb4_crit_edge, %entry.sw.bb4_crit_edge72
  %volumeB = getelementptr inbounds %struct.rsnd_mix, ptr %mod, i32 0, i32 2
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry.sw.bb7_crit_edge, %entry.sw.bb7_crit_edge73
  %volumeC = getelementptr inbounds %struct.rsnd_mix, ptr %mod, i32 0, i32 3
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry.sw.bb10_crit_edge, %entry.sw.bb10_crit_edge74
  %volumeD = getelementptr inbounds %struct.rsnd_mix, ptr %mod, i32 0, i32 4
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev2 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.7) #9
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb10, %sw.bb7, %sw.bb4, %sw.bb
  %.sink69 = phi i32 [ 16, %sw.bb10 ], [ 8, %sw.bb7 ], [ 4, %sw.bb4 ], [ 2, %sw.bb ]
  %volume.0 = phi ptr [ %volumeD, %sw.bb10 ], [ %volumeC, %sw.bb7 ], [ %volumeB, %sw.bb4 ], [ %volumeA, %sw.bb ]
  %flags11 = getelementptr inbounds %struct.rsnd_mix, ptr %mod, i32 0, i32 8
  %7 = ptrtoint ptr %flags11 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags11, align 4
  %or12 = or i32 %8, %.sink69
  store i32 %or12, ptr %flags11, align 4
  %call13 = tail call ptr @rsnd_kctrl_init_s(ptr noundef %volume.0) #6
  %call14 = tail call i32 @rsnd_kctrl_new(ptr noundef %mod, ptr noundef %io, ptr noundef %rtd, ptr noundef nonnull @.str.11, ptr noundef nonnull @rsnd_kctrl_accept_anytime, ptr noundef nonnull @rsnd_mix_volume_update, ptr noundef %call13, ptr noundef null, i32 noundef 1, i32 noundef 1023) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp = icmp slt i32 %call14, 0
  br i1 %cmp, label %sw.epilog.cleanup_crit_edge, label %if.end

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %sw.epilog
  %val = getelementptr inbounds %struct.rsnd_kctrl_cfg_s, ptr %volume.0, i32 0, i32 1
  %9 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1023, ptr %val, align 4
  %flags15 = getelementptr inbounds %struct.rsnd_mix, ptr %mod, i32 0, i32 8
  %10 = ptrtoint ptr %flags15 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags15, align 4
  %and = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end17, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end17:                                         ; preds = %if.end
  %ren = getelementptr inbounds %struct.rsnd_mix, ptr %mod, i32 0, i32 5
  %call18 = tail call ptr @rsnd_kctrl_init_s(ptr noundef %ren) #6
  %call19 = tail call i32 @rsnd_kctrl_new(ptr noundef %mod, ptr noundef %io, ptr noundef %rtd, ptr noundef nonnull @.str.12, ptr noundef nonnull @rsnd_kctrl_accept_anytime, ptr noundef nonnull @rsnd_mix_volume_update, ptr noundef %call18, ptr noundef null, i32 noundef 1, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %if.end17.cleanup_crit_edge, label %if.end22

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end22:                                         ; preds = %if.end17
  %rup = getelementptr inbounds %struct.rsnd_mix, ptr %mod, i32 0, i32 6
  %call23 = tail call ptr @rsnd_kctrl_init_s(ptr noundef %rup) #6
  %call24 = tail call i32 @rsnd_kctrl_new(ptr noundef %mod, ptr noundef %io, ptr noundef %rtd, ptr noundef nonnull @.str.13, ptr noundef nonnull @rsnd_kctrl_accept_anytime, ptr noundef nonnull @rsnd_mix_volume_update, ptr noundef %call23, ptr noundef nonnull @volume_ramp_rate, i32 noundef 1, i32 noundef 11) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp25 = icmp slt i32 %call24, 0
  br i1 %cmp25, label %if.end22.cleanup_crit_edge, label %if.end27

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end27:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  %rdw = getelementptr inbounds %struct.rsnd_mix, ptr %mod, i32 0, i32 7
  %call28 = tail call ptr @rsnd_kctrl_init_s(ptr noundef %rdw) #6
  %call29 = tail call i32 @rsnd_kctrl_new(ptr noundef %mod, ptr noundef %io, ptr noundef %rtd, ptr noundef nonnull @.str.14, ptr noundef nonnull @rsnd_kctrl_accept_anytime, ptr noundef nonnull @rsnd_mix_volume_update, ptr noundef %call28, ptr noundef nonnull @volume_ramp_rate, i32 noundef 1, i32 noundef 11) #6
  %12 = ptrtoint ptr %flags15 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags15, align 4
  %or31 = or i32 %13, 1
  store i32 %or31, ptr %flags15, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %if.end22.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %if.end.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call29, %if.end27 ], [ %call14, %sw.epilog.cleanup_crit_edge ], [ %call14, %if.end.cleanup_crit_edge ], [ %call19, %if.end17.cleanup_crit_edge ], [ %call24, %if.end22.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rsnd_mod_get_status(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rsnd_mix_debug_info(ptr noundef %m, ptr nocapture noundef readnone %io, ptr noundef %mod) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rsnd_mod_id(ptr noundef %mod) #6
  %mul = shl i32 %call, 6
  %add = add i32 %mul, 3328
  tail call void @rsnd_debugfs_mod_reg_show(ptr noundef %m, ptr noundef %mod, i32 noundef 0, i32 noundef %add, i32 noundef 48) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_cmd_attach(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_mod_id(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rsnd_mix_volume_update(ptr nocapture noundef readnone %io, ptr noundef %mod) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @rsnd_mod_write(ptr noundef %mod, i32 noundef 79, i32 noundef 0) #6
  tail call fastcc void @rsnd_mix_volume_parameter(ptr noundef %mod)
  tail call void @rsnd_mod_write(ptr noundef %mod, i32 noundef 79, i32 noundef 1) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rsnd_mod_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_runtime_channel_after_ctu_with_params(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rsnd_mix_volume_parameter(ptr noundef %mod) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.rsnd_mod, ptr %mod, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dev2 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %flags = getelementptr inbounds %struct.rsnd_mix, ptr %mod, i32 0, i32 8
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %and = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %val = getelementptr inbounds %struct.rsnd_mix, ptr %mod, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %val, align 4
  %sub = sub i32 1023, %7
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %sub, %cond.true ], [ 0, %entry.cond.end_crit_edge ]
  %and4 = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %cond.end.cond.end10_crit_edge, label %cond.true6

cond.end.cond.end10_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end10

cond.true6:                                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  %val7 = getelementptr inbounds %struct.rsnd_mix, ptr %mod, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %val7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %val7, align 4
  %sub8 = sub i32 1023, %9
  br label %cond.end10

cond.end10:                                       ; preds = %cond.true6, %cond.end.cond.end10_crit_edge
  %cond11 = phi i32 [ %sub8, %cond.true6 ], [ 0, %cond.end.cond.end10_crit_edge ]
  %and13 = and i32 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %cond.end10.cond.end19_crit_edge, label %cond.true15

cond.end10.cond.end19_crit_edge:                  ; preds = %cond.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end19

cond.true15:                                      ; preds = %cond.end10
  call void @__sanitizer_cov_trace_pc() #8
  %val16 = getelementptr inbounds %struct.rsnd_mix, ptr %mod, i32 0, i32 3, i32 1
  %10 = ptrtoint ptr %val16 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %val16, align 4
  %sub17 = sub i32 1023, %11
  br label %cond.end19

cond.end19:                                       ; preds = %cond.true15, %cond.end10.cond.end19_crit_edge
  %cond20 = phi i32 [ %sub17, %cond.true15 ], [ 0, %cond.end10.cond.end19_crit_edge ]
  %and22 = and i32 %5, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %cond.end19.cond.end28_crit_edge, label %cond.true24

cond.end19.cond.end28_crit_edge:                  ; preds = %cond.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end28

cond.true24:                                      ; preds = %cond.end19
  call void @__sanitizer_cov_trace_pc() #8
  %val25 = getelementptr inbounds %struct.rsnd_mix, ptr %mod, i32 0, i32 4, i32 1
  %12 = ptrtoint ptr %val25 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %val25, align 4
  %sub26 = sub i32 1023, %13
  br label %cond.end28

cond.end28:                                       ; preds = %cond.true24, %cond.end19.cond.end28_crit_edge
  %cond29 = phi i32 [ %sub26, %cond.true24 ], [ 0, %cond.end19.cond.end28_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rsnd_mix_volume_parameter.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rsnd_mix_volume_parameter, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !42

if.then:                                          ; preds = %cond.end28
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rsnd_mix_volume_parameter.__UNIQUE_ID_ddebug242, ptr noundef %dev2, ptr noundef nonnull @.str.6, i32 noundef %cond, i32 noundef %cond11, i32 noundef %cond20, i32 noundef %cond29) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %cond.end28
  tail call void @rsnd_mod_write(ptr noundef %mod, i32 noundef 75, i32 noundef %cond) #6
  tail call void @rsnd_mod_write(ptr noundef %mod, i32 noundef 76, i32 noundef %cond11) #6
  tail call void @rsnd_mod_write(ptr noundef %mod, i32 noundef 77, i32 noundef %cond20) #6
  tail call void @rsnd_mod_write(ptr noundef %mod, i32 noundef 78, i32 noundef %cond29) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_kctrl_new(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_kctrl_accept_anytime(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rsnd_kctrl_init_s(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rsnd_debugfs_mod_reg_show(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !14, !15, !17, !18, !19, !20, !21, !22, !24, !26, !28}
!llvm.module.flags = !{!30, !31, !32, !33, !34, !35, !36, !37}
!llvm.ident = !{!38}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/soc/sh/rcar/mix.c", i32 278, i32 6}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../sound/soc/sh/rcar/mix.c", i32 298, i32 9}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../sound/soc/sh/rcar/mix.c", i32 322, i32 33}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../sound/soc/sh/rcar/mix.c", i32 323, i32 5}
!8 = !{ptr @rsnd_mix_ops, !9, !"rsnd_mix_ops", i1 false, i1 false}
!9 = !{!"../sound/soc/sh/rcar/mix.c", i32 266, i32 28}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/soc/sh/rcar/mix.c", i32 95, i32 2}
!12 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @rsnd_mix_volume_parameter.__UNIQUE_ID_ddebug242, !11, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../sound/soc/sh/rcar/mix.c", i32 204, i32 3}
!17 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.10, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @rsnd_mix_pcm_new._entry, !16, !"_entry", i1 false, i1 false}
!21 = !{ptr @rsnd_mix_pcm_new._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../sound/soc/sh/rcar/mix.c", i32 209, i32 8}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../sound/soc/sh/rcar/mix.c", i32 222, i32 8}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../sound/soc/sh/rcar/mix.c", i32 230, i32 8}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../sound/soc/sh/rcar/mix.c", i32 240, i32 8}
!30 = !{i32 1, !"wchar_size", i32 2}
!31 = !{i32 1, !"min_enum_size", i32 4}
!32 = !{i32 8, !"branch-target-enforcement", i32 0}
!33 = !{i32 8, !"sign-return-address", i32 0}
!34 = !{i32 8, !"sign-return-address-all", i32 0}
!35 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!36 = !{i32 7, !"uwtable", i32 1}
!37 = !{i32 7, !"frame-pointer", i32 2}
!38 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!39 = !{!"branch_weights", i32 1073205, i32 2146410443}
!40 = !{!"branch_weights", i32 2000, i32 1}
!41 = !{!"branch_weights", i32 1, i32 2000}
!42 = !{i64 2148754332, i64 2148754337, i64 2148754350, i64 2148754394, i64 2148754428, i64 2148754449}
