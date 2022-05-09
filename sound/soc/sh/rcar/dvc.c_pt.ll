; ModuleID = '/llk/IR_all_yes/sound/soc/sh/rcar/dvc.c_pt.bc'
source_filename = "../sound/soc/sh/rcar/dvc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.rsnd_mod_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rsnd_priv = type { ptr, %struct.spinlock, i32, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.rsnd_dvc = type { %struct.rsnd_mod, %struct.rsnd_kctrl_cfg_m, %struct.rsnd_kctrl_cfg_m, %struct.rsnd_kctrl_cfg_s, %struct.rsnd_kctrl_cfg_s, %struct.rsnd_kctrl_cfg_s }
%struct.rsnd_mod = type { i32, i32, ptr, ptr, ptr, i32 }
%struct.rsnd_kctrl_cfg_m = type { %struct.rsnd_kctrl_cfg, [8 x i32] }
%struct.rsnd_kctrl_cfg = type { i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rsnd_kctrl_cfg_s = type { %struct.rsnd_kctrl_cfg, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.rsnd_dai = type { [16 x i8], %struct.rsnd_dai_stream, %struct.rsnd_dai_stream, ptr, %struct.snd_pcm_hw_constraint_list, i32, i32, i32, i8 }
%struct.snd_pcm_hw_constraint_list = type { ptr, i32, i32 }

@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sound/soc/sh/rcar/dvc.c\00", [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rcar_sound,dvc\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s.%d\00", [26 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dvc\00", [28 x i8] zeroinitializer }, align 32
@rsnd_dvc_ops = internal global { %struct.rsnd_mod_ops, [44 x i8] } { %struct.rsnd_mod_ops { ptr @.str.3, ptr @rsnd_dvc_dma_req, ptr @rsnd_dvc_probe_, ptr null, ptr @rsnd_dvc_init, ptr @rsnd_dvc_quit, ptr null, ptr null, ptr null, ptr @rsnd_dvc_pcm_new, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rsnd_mod_get_status, ptr null, ptr null, ptr null, ptr @rsnd_dvc_debug_info }, [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"tx\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"DVC Out Playback Volume\00", [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"DVC In Capture Volume\00", [42 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"DVC Out Mute Switch\00", [44 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DVC In Mute Switch\00", [45 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"DVC Out Ramp Switch\00", [44 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DVC In Ramp Switch\00", [45 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"DVC Out Ramp Up Rate\00", [43 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"DVC In Ramp Up Rate\00", [44 x i8] zeroinitializer }, align 32
@volume_ramp_rate = external dso_local constant [0 x ptr], align 4
@.str.13 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"DVC Out Ramp Down Rate\00", [41 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"DVC In Ramp Down Rate\00", [42 x i8] zeroinitializer }, align 32
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 314, i32 6 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 334, i32 9 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 358, i32 38 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 359, i32 5 }
@___asan_gen_.27 = private unnamed_addr constant [13 x i8] c"rsnd_dvc_ops\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 301, i32 28 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 285, i32 21 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 222, i32 8 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 233, i32 8 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 244, i32 8 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 253, i32 8 }
@___asan_gen_.60 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.61 = private constant [27 x i8] c"../sound/soc/sh/rcar/dvc.c\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 264, i32 8 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @rsnd_dvc_ops, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rsnd_dvc_ops to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @rsnd_dvc_mod_get(ptr nocapture noundef readonly %priv, i32 noundef %id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %id)
  %cmp = icmp slt i32 %id, 0
  br i1 %cmp, label %entry.do.end_crit_edge, label %lor.end, !prof !36

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

lor.end:                                          ; preds = %entry
  %dvc_nr = getelementptr inbounds %struct.rsnd_priv, ptr %priv, i32 0, i32 17
  %0 = ptrtoint ptr %dvc_nr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dvc_nr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %id)
  %cmp1.not = icmp sgt i32 %1, %id
  br i1 %cmp1.not, label %lor.end.if.end_crit_edge, label %lor.end.do.end_crit_edge, !prof !37

lor.end.do.end_crit_edge:                         ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

lor.end.if.end_crit_edge:                         ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %lor.end.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 314, i32 noundef 9, ptr noundef null) #5
  br label %if.end

if.end:                                           ; preds = %do.end, %lor.end.if.end_crit_edge
  %2 = phi i32 [ 0, %do.end ], [ %id, %lor.end.if.end_crit_edge ]
  %dvc = getelementptr inbounds %struct.rsnd_priv, ptr %priv, i32 0, i32 16
  %3 = ptrtoint ptr %dvc to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dvc, align 4
  %add.ptr = getelementptr %struct.rsnd_dvc, ptr %4, i32 %2
  ret ptr %add.ptr
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rsnd_dvc_probe(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  %name = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %name) #5
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
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %of_node = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3, i32 27
  %5 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @of_get_child_by_name(ptr noundef %6, ptr noundef nonnull @.str.1) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call.i = tail call ptr @of_get_next_child(ptr noundef nonnull %call, ptr noundef null) #5
  %cmp.not5.i = icmp eq ptr %call.i, null
  br i1 %cmp.not5.i, label %if.end5.rsnd_dvc_probe_done_crit_edge, label %if.end5.for.body.i_crit_edge

if.end5.for.body.i_crit_edge:                     ; preds = %if.end5
  br label %for.body.i

if.end5.rsnd_dvc_probe_done_crit_edge:            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %rsnd_dvc_probe_done

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end5.for.body.i_crit_edge
  %num.07.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end5.for.body.i_crit_edge ]
  %child.06.i = phi ptr [ %call1.i, %for.body.i.for.body.i_crit_edge ], [ %call.i, %if.end5.for.body.i_crit_edge ]
  %inc.i = add i32 %num.07.i, 1
  %call1.i = tail call ptr @of_get_next_child(ptr noundef nonnull %call, ptr noundef nonnull %child.06.i) #5
  %cmp.not.i = icmp eq ptr %call1.i, null
  br i1 %cmp.not.i, label %of_get_child_count.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

of_get_child_count.exit:                          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc.i)
  %tobool7.not = icmp eq i32 %inc.i, 0
  br i1 %tobool7.not, label %of_get_child_count.exit.rsnd_dvc_probe_done_crit_edge, label %if.end9

of_get_child_count.exit.rsnd_dvc_probe_done_crit_edge: ; preds = %of_get_child_count.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %rsnd_dvc_probe_done

if.end9:                                          ; preds = %of_get_child_count.exit
  %7 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %inc.i, i32 300) #5
  %8 = extractvalue { i32, i1 } %7, 1
  br i1 %8, label %if.end9.rsnd_dvc_probe_done_crit_edge, label %devm_kcalloc.exit, !prof !38

if.end9.rsnd_dvc_probe_done_crit_edge:            ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %rsnd_dvc_probe_done

devm_kcalloc.exit:                                ; preds = %if.end9
  %9 = extractvalue { i32, i1 } %7, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %9, i32 noundef 3520) #5
  %tobool11.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool11.not, label %devm_kcalloc.exit.rsnd_dvc_probe_done_crit_edge, label %if.end13

devm_kcalloc.exit.rsnd_dvc_probe_done_crit_edge:  ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %rsnd_dvc_probe_done

if.end13:                                         ; preds = %devm_kcalloc.exit
  %dvc_nr = getelementptr inbounds %struct.rsnd_priv, ptr %priv, i32 0, i32 17
  %10 = ptrtoint ptr %dvc_nr to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %inc.i, ptr %dvc_nr, align 4
  %dvc14 = getelementptr inbounds %struct.rsnd_priv, ptr %priv, i32 0, i32 16
  %11 = ptrtoint ptr %dvc14 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call5.i.i, ptr %dvc14, align 4
  %call15 = tail call ptr @of_get_next_child(ptr noundef nonnull %call, ptr noundef null) #5
  %cmp16.not69 = icmp eq ptr %call15, null
  br i1 %cmp16.not69, label %if.end13.rsnd_dvc_probe_done_crit_edge, label %if.end13.for.body_crit_edge

if.end13.for.body_crit_edge:                      ; preds = %if.end13
  br label %for.body

if.end13.rsnd_dvc_probe_done_crit_edge:           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %rsnd_dvc_probe_done

for.body:                                         ; preds = %if.end28.for.body_crit_edge, %if.end13.for.body_crit_edge
  %i.071 = phi i32 [ %inc, %if.end28.for.body_crit_edge ], [ 0, %if.end13.for.body_crit_edge ]
  %np.070 = phi ptr [ %call29, %if.end28.for.body_crit_edge ], [ %call15, %if.end13.for.body_crit_edge ]
  %12 = ptrtoint ptr %dvc14 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dvc14, align 4
  %call18 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name, i32 noundef 16, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef %i.071)
  %call20 = call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull %name) #5
  %cmp.i = icmp ugt ptr %call20, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then22, label %if.end24

if.then22:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %call20 to i32
  br label %rsnd_dvc_probe_done.sink.split

if.end24:                                         ; preds = %for.body
  %add.ptr = getelementptr %struct.rsnd_dvc, ptr %13, i32 %i.071
  %call25 = call i32 @rsnd_mod_init(ptr noundef %priv, ptr noundef %add.ptr, ptr noundef nonnull @rsnd_dvc_ops, ptr noundef %call20, i32 noundef 2, i32 noundef %i.071) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end28, label %if.end24.rsnd_dvc_probe_done.sink.split_crit_edge

if.end24.rsnd_dvc_probe_done.sink.split_crit_edge: ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  br label %rsnd_dvc_probe_done.sink.split

if.end28:                                         ; preds = %if.end24
  %inc = add i32 %i.071, 1
  %call29 = call ptr @of_get_next_child(ptr noundef nonnull %call, ptr noundef nonnull %np.070) #5
  %cmp16.not = icmp eq ptr %call29, null
  br i1 %cmp16.not, label %if.end28.rsnd_dvc_probe_done_crit_edge, label %if.end28.for.body_crit_edge

if.end28.for.body_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

if.end28.rsnd_dvc_probe_done_crit_edge:           ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  br label %rsnd_dvc_probe_done

rsnd_dvc_probe_done.sink.split:                   ; preds = %if.end24.rsnd_dvc_probe_done.sink.split_crit_edge, %if.then22
  %ret.1.ph = phi i32 [ %14, %if.then22 ], [ %call25, %if.end24.rsnd_dvc_probe_done.sink.split_crit_edge ]
  call void @of_node_put(ptr noundef nonnull %np.070) #5
  br label %rsnd_dvc_probe_done

rsnd_dvc_probe_done:                              ; preds = %rsnd_dvc_probe_done.sink.split, %if.end28.rsnd_dvc_probe_done_crit_edge, %if.end13.rsnd_dvc_probe_done_crit_edge, %devm_kcalloc.exit.rsnd_dvc_probe_done_crit_edge, %if.end9.rsnd_dvc_probe_done_crit_edge, %of_get_child_count.exit.rsnd_dvc_probe_done_crit_edge, %if.end5.rsnd_dvc_probe_done_crit_edge
  %ret.1 = phi i32 [ -22, %of_get_child_count.exit.rsnd_dvc_probe_done_crit_edge ], [ -12, %devm_kcalloc.exit.rsnd_dvc_probe_done_crit_edge ], [ -22, %if.end5.rsnd_dvc_probe_done_crit_edge ], [ -12, %if.end9.rsnd_dvc_probe_done_crit_edge ], [ 0, %if.end13.rsnd_dvc_probe_done_crit_edge ], [ %ret.1.ph, %rsnd_dvc_probe_done.sink.split ], [ 0, %if.end28.rsnd_dvc_probe_done_crit_edge ]
  call void @of_node_put(ptr noundef nonnull %call) #5
  br label %cleanup

cleanup:                                          ; preds = %rsnd_dvc_probe_done, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %rsnd_dvc_probe_done ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %name) #5
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
define dso_local void @rsnd_dvc_remove(ptr nocapture noundef readonly %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dvc1 = getelementptr inbounds %struct.rsnd_priv, ptr %priv, i32 0, i32 16
  %dvc_nr = getelementptr inbounds %struct.rsnd_priv, ptr %priv, i32 0, i32 17
  %0 = ptrtoint ptr %dvc_nr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dvc_nr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp5 = icmp sgt i32 %1, 0
  br i1 %cmp5, label %entry.land.rhs_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

entry.land.rhs_crit_edge:                         ; preds = %entry
  br label %land.rhs

land.rhs:                                         ; preds = %for.body.land.rhs_crit_edge, %entry.land.rhs_crit_edge
  %i.06 = phi i32 [ %inc, %for.body.land.rhs_crit_edge ], [ 0, %entry.land.rhs_crit_edge ]
  %2 = ptrtoint ptr %dvc1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dvc1, align 4
  %add.ptr = getelementptr %struct.rsnd_dvc, ptr %3, i32 %i.06
  %tobool.not = icmp eq ptr %add.ptr, null
  br i1 %tobool.not, label %land.rhs.for.end_crit_edge, label %for.body

land.rhs.for.end_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %land.rhs
  tail call void @rsnd_mod_quit(ptr noundef nonnull %add.ptr) #5
  %inc = add nuw nsw i32 %i.06, 1
  %4 = ptrtoint ptr %dvc_nr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dvc_nr, align 4
  %cmp = icmp slt i32 %inc, %5
  br i1 %cmp, label %for.body.land.rhs_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.land.rhs_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
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
define internal ptr @rsnd_dvc_dma_req(ptr nocapture noundef readnone %io, ptr noundef %mod) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.rsnd_mod, ptr %mod, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3, i32 27
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @of_get_child_by_name(ptr noundef %5, ptr noundef nonnull @.str.1) #5
  %call2 = tail call ptr @rsnd_dma_request_channel(ptr noundef %call, ptr noundef nonnull @.str.3, ptr noundef %mod, ptr noundef nonnull @.str.4) #5
  ret ptr %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rsnd_dvc_probe_(ptr noundef %mod, ptr noundef %io, ptr nocapture noundef readnone %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rsnd_mod_id(ptr noundef %mod) #5
  %call1 = tail call i32 @rsnd_cmd_attach(ptr noundef %io, i32 noundef %call) #5
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rsnd_dvc_init(ptr noundef %mod, ptr noundef %io, ptr nocapture noundef readnone %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %clk = getelementptr inbounds %struct.rsnd_mod, ptr %mod, i32 0, i32 4
  %0 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk, align 4
  %call = tail call i32 @clk_enable(ptr noundef %1) #5
  tail call void @rsnd_mod_write(ptr noundef %mod, i32 noundef 80, i32 noundef 0) #5
  tail call void @rsnd_mod_write(ptr noundef %mod, i32 noundef 80, i32 noundef 1) #5
  %call.i = tail call i32 @rsnd_get_adinr_bit(ptr noundef %mod, ptr noundef %io) #5
  %call1.i = tail call i32 @rsnd_runtime_channel_after_ctu_with_params(ptr noundef %io, ptr noundef null) #5
  %val.i = getelementptr inbounds %struct.rsnd_dvc, ptr %mod, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %entry.rsnd_dvc_volume_init.exit_crit_edge, label %if.then.i

entry.rsnd_dvc_volume_init.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %rsnd_dvc_volume_init.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %val4.i = getelementptr inbounds %struct.rsnd_dvc, ptr %mod, i32 0, i32 4, i32 1
  %4 = ptrtoint ptr %val4.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %val4.i, align 4
  %shl.i = shl i32 %5, 8
  %val5.i = getelementptr inbounds %struct.rsnd_dvc, ptr %mod, i32 0, i32 5, i32 1
  %6 = ptrtoint ptr %val5.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %val5.i, align 4
  %or6.i = or i32 %shl.i, %7
  %val7.i = getelementptr inbounds %struct.rsnd_dvc, ptr %mod, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %val7.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %val7.i, align 4
  %shr.i = lshr i32 %9, 13
  %sub.i = sub nsw i32 1023, %shr.i
  br label %rsnd_dvc_volume_init.exit

rsnd_dvc_volume_init.exit:                        ; preds = %if.then.i, %entry.rsnd_dvc_volume_init.exit_crit_edge
  %dvucr.0.i = phi i32 [ 273, %if.then.i ], [ 257, %entry.rsnd_dvc_volume_init.exit_crit_edge ]
  %vrctr.0.i = phi i32 [ 255, %if.then.i ], [ 0, %entry.rsnd_dvc_volume_init.exit_crit_edge ]
  %vrpdr.0.i = phi i32 [ %or6.i, %if.then.i ], [ 0, %entry.rsnd_dvc_volume_init.exit_crit_edge ]
  %vrdbr.0.i = phi i32 [ %sub.i, %if.then.i ], [ 0, %entry.rsnd_dvc_volume_init.exit_crit_edge ]
  %or.i = or i32 %call1.i, %call.i
  tail call void @rsnd_mod_write(ptr noundef %mod, i32 noundef 81, i32 noundef 1) #5
  tail call void @rsnd_mod_write(ptr noundef %mod, i32 noundef 82, i32 noundef %or.i) #5
  tail call void @rsnd_mod_write(ptr noundef %mod, i32 noundef 83, i32 noundef %dvucr.0.i) #5
  tail call void @rsnd_mod_write(ptr noundef %mod, i32 noundef 94, i32 noundef %vrctr.0.i) #5
  tail call void @rsnd_mod_write(ptr noundef %mod, i32 noundef 95, i32 noundef %vrpdr.0.i) #5
  tail call void @rsnd_mod_write(ptr noundef %mod, i32 noundef 96, i32 noundef %vrdbr.0.i) #5
  tail call fastcc void @rsnd_dvc_volume_parameter(ptr noundef %mod) #5
  tail call void @rsnd_mod_write(ptr noundef %mod, i32 noundef 81, i32 noundef 0) #5
  tail call void @rsnd_dvc_volume_update(ptr noundef %io, ptr noundef %mod)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rsnd_dvc_quit(ptr noundef %mod, ptr nocapture noundef readnone %io, ptr nocapture noundef readnone %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @rsnd_mod_write(ptr noundef %mod, i32 noundef 81, i32 noundef 1) #5
  tail call void @rsnd_mod_write(ptr noundef %mod, i32 noundef 80, i32 noundef 0) #5
  %clk = getelementptr inbounds %struct.rsnd_mod, ptr %mod, i32 0, i32 4
  %0 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %1) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rsnd_dvc_pcm_new(ptr noundef %mod, ptr noundef %io, ptr noundef %rtd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %rdai1 = getelementptr inbounds %struct.rsnd_dai_stream, ptr %io, i32 0, i32 4
  %0 = ptrtoint ptr %rdai1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rdai1, align 4
  %playback = getelementptr inbounds %struct.rsnd_dai, ptr %1, i32 0, i32 1
  %cmp = icmp eq ptr %playback, %io
  %call = tail call i32 @rsnd_rdai_channels_ctrl(ptr noundef %1, i32 noundef 0) #5
  %cond = select i1 %cmp, ptr @.str.5, ptr @.str.6
  %volume = getelementptr inbounds %struct.rsnd_dvc, ptr %mod, i32 0, i32 1
  %call3 = tail call ptr @rsnd_kctrl_init_m(ptr noundef %volume) #5
  %call4 = tail call i32 @rsnd_kctrl_new(ptr noundef %mod, ptr noundef %io, ptr noundef %rtd, ptr noundef nonnull %cond, ptr noundef nonnull @rsnd_kctrl_accept_anytime, ptr noundef nonnull @rsnd_dvc_volume_update, ptr noundef %call3, ptr noundef null, i32 noundef %call, i32 noundef 8388607) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %cond8 = select i1 %cmp, ptr @.str.7, ptr @.str.8
  %mute = getelementptr inbounds %struct.rsnd_dvc, ptr %mod, i32 0, i32 2
  %call9 = tail call ptr @rsnd_kctrl_init_m(ptr noundef %mute) #5
  %call10 = tail call i32 @rsnd_kctrl_new(ptr noundef %mod, ptr noundef %io, ptr noundef %rtd, ptr noundef nonnull %cond8, ptr noundef nonnull @rsnd_kctrl_accept_anytime, ptr noundef nonnull @rsnd_dvc_volume_update, ptr noundef %call9, ptr noundef null, i32 noundef %call, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.end.cleanup_crit_edge, label %if.end14

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end14:                                         ; preds = %if.end
  %cond16 = select i1 %cmp, ptr @.str.9, ptr @.str.10
  %ren = getelementptr inbounds %struct.rsnd_dvc, ptr %mod, i32 0, i32 3
  %call17 = tail call ptr @rsnd_kctrl_init_s(ptr noundef %ren) #5
  %call18 = tail call i32 @rsnd_kctrl_new(ptr noundef %mod, ptr noundef %io, ptr noundef %rtd, ptr noundef nonnull %cond16, ptr noundef nonnull @rsnd_kctrl_accept_anytime, ptr noundef nonnull @rsnd_dvc_volume_update, ptr noundef %call17, ptr noundef null, i32 noundef 1, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp19 = icmp slt i32 %call18, 0
  br i1 %cmp19, label %if.end14.cleanup_crit_edge, label %if.end22

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end22:                                         ; preds = %if.end14
  %cond24 = select i1 %cmp, ptr @.str.11, ptr @.str.12
  %rup = getelementptr inbounds %struct.rsnd_dvc, ptr %mod, i32 0, i32 4
  %call25 = tail call ptr @rsnd_kctrl_init_s(ptr noundef %rup) #5
  %call26 = tail call i32 @rsnd_kctrl_new(ptr noundef %mod, ptr noundef %io, ptr noundef %rtd, ptr noundef nonnull %cond24, ptr noundef nonnull @rsnd_kctrl_accept_anytime, ptr noundef nonnull @rsnd_dvc_volume_update, ptr noundef %call25, ptr noundef nonnull @volume_ramp_rate, i32 noundef 1, i32 noundef 24) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp27 = icmp slt i32 %call26, 0
  br i1 %cmp27, label %if.end22.cleanup_crit_edge, label %if.end30

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end30:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  %cond32 = select i1 %cmp, ptr @.str.13, ptr @.str.14
  %rdown = getelementptr inbounds %struct.rsnd_dvc, ptr %mod, i32 0, i32 5
  %call33 = tail call ptr @rsnd_kctrl_init_s(ptr noundef %rdown) #5
  %call34 = tail call i32 @rsnd_kctrl_new(ptr noundef %mod, ptr noundef %io, ptr noundef %rtd, ptr noundef nonnull %cond32, ptr noundef nonnull @rsnd_kctrl_accept_anytime, ptr noundef nonnull @rsnd_dvc_volume_update, ptr noundef %call33, ptr noundef nonnull @volume_ramp_rate, i32 noundef 1, i32 noundef 24) #5
  %2 = tail call i32 @llvm.smin.i32(i32 %call34, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %if.end22.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %entry.cleanup_crit_edge ], [ %call10, %if.end.cleanup_crit_edge ], [ %call18, %if.end14.cleanup_crit_edge ], [ %call26, %if.end22.cleanup_crit_edge ], [ %2, %if.end30 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rsnd_mod_get_status(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rsnd_dvc_debug_info(ptr noundef %m, ptr nocapture noundef readnone %io, ptr noundef %mod) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rsnd_mod_id(ptr noundef %mod) #5
  %mul = shl i32 %call, 8
  %add = add i32 %mul, 3584
  tail call void @rsnd_debugfs_mod_reg_show(ptr noundef %m, ptr noundef %mod, i32 noundef 0, i32 noundef %add, i32 noundef 96) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rsnd_dma_request_channel(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_cmd_attach(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_mod_id(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rsnd_dvc_volume_update(ptr nocapture noundef readnone %io, ptr noundef %mod) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %size = getelementptr inbounds %struct.rsnd_dvc, ptr %mod, i32 0, i32 2, i32 0, i32 1
  %0 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp26.not = icmp eq i32 %1, 0
  br i1 %cmp26.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.028 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %zcmcr.027 = phi i32 [ %or, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.rsnd_dvc, ptr %mod, i32 0, i32 2, i32 1, i32 %i.028
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool = icmp ne i32 %3, 0
  %lnot.ext = zext i1 %tobool to i32
  %shl = shl nuw i32 %lnot.ext, %i.028
  %or = or i32 %shl, %zcmcr.027
  %inc = add nuw i32 %i.028, 1
  %exitcond.not = icmp eq i32 %inc, %1
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %zcmcr.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %or, %for.body.for.end_crit_edge ]
  %val3 = getelementptr inbounds %struct.rsnd_dvc, ptr %mod, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %val3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %val3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool4.not = icmp eq i32 %5, 0
  br i1 %tobool4.not, label %for.end.if.end_crit_edge, label %if.then

for.end.if.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %val5 = getelementptr inbounds %struct.rsnd_dvc, ptr %mod, i32 0, i32 4, i32 1
  %6 = ptrtoint ptr %val5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %val5, align 4
  %shl6 = shl i32 %7, 8
  %val7 = getelementptr inbounds %struct.rsnd_dvc, ptr %mod, i32 0, i32 5, i32 1
  %8 = ptrtoint ptr %val7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %val7, align 4
  %or8 = or i32 %shl6, %9
  %val9 = getelementptr inbounds %struct.rsnd_dvc, ptr %mod, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %val9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %val9, align 4
  %shr = lshr i32 %11, 13
  %sub = sub nsw i32 1023, %shr
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end.if.end_crit_edge
  %vrpdr.0 = phi i32 [ %or8, %if.then ], [ 0, %for.end.if.end_crit_edge ]
  %vrdbr.0 = phi i32 [ %sub, %if.then ], [ 0, %for.end.if.end_crit_edge ]
  tail call void @rsnd_mod_write(ptr noundef %mod, i32 noundef 93, i32 noundef 0) #5
  tail call void @rsnd_mod_write(ptr noundef %mod, i32 noundef 84, i32 noundef %zcmcr.0.lcssa) #5
  tail call void @rsnd_mod_write(ptr noundef %mod, i32 noundef 95, i32 noundef %vrpdr.0) #5
  tail call void @rsnd_mod_write(ptr noundef %mod, i32 noundef 96, i32 noundef %vrdbr.0) #5
  tail call fastcc void @rsnd_dvc_volume_parameter(ptr noundef %mod)
  tail call void @rsnd_mod_write(ptr noundef %mod, i32 noundef 93, i32 noundef 1) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rsnd_mod_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_get_adinr_bit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_runtime_channel_after_ctu_with_params(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rsnd_dvc_volume_parameter(ptr noundef %mod) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %val1 = getelementptr inbounds %struct.rsnd_dvc, ptr %mod, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %val1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %val1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %for.body4.preheader, label %for.cond.preheader

for.body4.preheader:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %uglygep = getelementptr i8, ptr %mod, i32 64
  %2 = ptrtoint ptr %uglygep to i32
  call void @__asan_load4_noabort(i32 %2)
  %val.sroa.0.0.copyload = load i32, ptr %uglygep, align 4
  %val.sroa.6.0.uglygep.sroa_idx = getelementptr i8, ptr %mod, i32 68
  %3 = ptrtoint ptr %val.sroa.6.0.uglygep.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %3)
  %val.sroa.6.0.copyload = load i32, ptr %val.sroa.6.0.uglygep.sroa_idx, align 4
  %val.sroa.9.0.uglygep.sroa_idx = getelementptr i8, ptr %mod, i32 72
  %4 = ptrtoint ptr %val.sroa.9.0.uglygep.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %4)
  %val.sroa.9.0.copyload = load i32, ptr %val.sroa.9.0.uglygep.sroa_idx, align 4
  %val.sroa.12.0.uglygep.sroa_idx = getelementptr i8, ptr %mod, i32 76
  %5 = ptrtoint ptr %val.sroa.12.0.uglygep.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %5)
  %val.sroa.12.0.copyload = load i32, ptr %val.sroa.12.0.uglygep.sroa_idx, align 4
  %val.sroa.15.0.uglygep.sroa_idx = getelementptr i8, ptr %mod, i32 80
  %6 = ptrtoint ptr %val.sroa.15.0.uglygep.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %6)
  %val.sroa.15.0.copyload = load i32, ptr %val.sroa.15.0.uglygep.sroa_idx, align 4
  %val.sroa.18.0.uglygep.sroa_idx = getelementptr i8, ptr %mod, i32 84
  %7 = ptrtoint ptr %val.sroa.18.0.uglygep.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %7)
  %val.sroa.18.0.copyload = load i32, ptr %val.sroa.18.0.uglygep.sroa_idx, align 4
  %val.sroa.21.0.uglygep.sroa_idx = getelementptr i8, ptr %mod, i32 88
  %8 = ptrtoint ptr %val.sroa.21.0.uglygep.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %8)
  %val.sroa.21.0.copyload = load i32, ptr %val.sroa.21.0.uglygep.sroa_idx, align 4
  %val.sroa.24.0.uglygep.sroa_idx = getelementptr i8, ptr %mod, i32 92
  %9 = ptrtoint ptr %val.sroa.24.0.uglygep.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %9)
  %val.sroa.24.0.copyload = load i32, ptr %val.sroa.24.0.uglygep.sroa_idx, align 4
  br label %if.end

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %volume = getelementptr inbounds %struct.rsnd_dvc, ptr %mod, i32 0, i32 1
  %10 = ptrtoint ptr %volume to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %volume, align 4
  br label %if.end

if.end:                                           ; preds = %for.cond.preheader, %for.body4.preheader
  %val.sroa.24.0 = phi i32 [ %val.sroa.24.0.copyload, %for.body4.preheader ], [ %11, %for.cond.preheader ]
  %val.sroa.21.0 = phi i32 [ %val.sroa.21.0.copyload, %for.body4.preheader ], [ %11, %for.cond.preheader ]
  %val.sroa.18.0 = phi i32 [ %val.sroa.18.0.copyload, %for.body4.preheader ], [ %11, %for.cond.preheader ]
  %val.sroa.15.0 = phi i32 [ %val.sroa.15.0.copyload, %for.body4.preheader ], [ %11, %for.cond.preheader ]
  %val.sroa.12.0 = phi i32 [ %val.sroa.12.0.copyload, %for.body4.preheader ], [ %11, %for.cond.preheader ]
  %val.sroa.9.0 = phi i32 [ %val.sroa.9.0.copyload, %for.body4.preheader ], [ %11, %for.cond.preheader ]
  %val.sroa.6.0 = phi i32 [ %val.sroa.6.0.copyload, %for.body4.preheader ], [ %11, %for.cond.preheader ]
  %val.sroa.0.0 = phi i32 [ %val.sroa.0.0.copyload, %for.body4.preheader ], [ %11, %for.cond.preheader ]
  tail call void @rsnd_mod_write(ptr noundef %mod, i32 noundef 85, i32 noundef %val.sroa.0.0) #5
  tail call void @rsnd_mod_write(ptr noundef %mod, i32 noundef 86, i32 noundef %val.sroa.6.0) #5
  tail call void @rsnd_mod_write(ptr noundef %mod, i32 noundef 87, i32 noundef %val.sroa.9.0) #5
  tail call void @rsnd_mod_write(ptr noundef %mod, i32 noundef 88, i32 noundef %val.sroa.12.0) #5
  tail call void @rsnd_mod_write(ptr noundef %mod, i32 noundef 89, i32 noundef %val.sroa.15.0) #5
  tail call void @rsnd_mod_write(ptr noundef %mod, i32 noundef 90, i32 noundef %val.sroa.18.0) #5
  tail call void @rsnd_mod_write(ptr noundef %mod, i32 noundef 91, i32 noundef %val.sroa.21.0) #5
  tail call void @rsnd_mod_write(ptr noundef %mod, i32 noundef 92, i32 noundef %val.sroa.24.0) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_rdai_channels_ctrl(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_kctrl_new(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_kctrl_accept_anytime(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rsnd_kctrl_init_m(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rsnd_kctrl_init_s(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rsnd_debugfs_mod_reg_show(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !17, !18, !20, !21, !23, !24, !26}
!llvm.module.flags = !{!27, !28, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!35}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/soc/sh/rcar/dvc.c", i32 314, i32 6}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../sound/soc/sh/rcar/dvc.c", i32 334, i32 9}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../sound/soc/sh/rcar/dvc.c", i32 358, i32 38}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../sound/soc/sh/rcar/dvc.c", i32 359, i32 5}
!8 = !{ptr @rsnd_dvc_ops, !9, !"rsnd_dvc_ops", i1 false, i1 false}
!9 = !{!"../sound/soc/sh/rcar/dvc.c", i32 301, i32 28}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/soc/sh/rcar/dvc.c", i32 285, i32 21}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../sound/soc/sh/rcar/dvc.c", i32 222, i32 8}
!14 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../sound/soc/sh/rcar/dvc.c", i32 233, i32 8}
!17 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../sound/soc/sh/rcar/dvc.c", i32 244, i32 8}
!20 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../sound/soc/sh/rcar/dvc.c", i32 253, i32 8}
!23 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../sound/soc/sh/rcar/dvc.c", i32 264, i32 8}
!26 = !{ptr @.str.14, !25, !"<string literal>", i1 false, i1 false}
!27 = !{i32 1, !"wchar_size", i32 2}
!28 = !{i32 1, !"min_enum_size", i32 4}
!29 = !{i32 8, !"branch-target-enforcement", i32 0}
!30 = !{i32 8, !"sign-return-address", i32 0}
!31 = !{i32 8, !"sign-return-address-all", i32 0}
!32 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!33 = !{i32 7, !"uwtable", i32 1}
!34 = !{i32 7, !"frame-pointer", i32 2}
!35 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!36 = !{!"branch_weights", i32 1073205, i32 2146410443}
!37 = !{!"branch_weights", i32 2000, i32 1}
!38 = !{!"branch_weights", i32 1, i32 2000}
