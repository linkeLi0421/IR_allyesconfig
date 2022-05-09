; ModuleID = '/llk/IR_all_yes/sound/soc/sh/rcar/ctu.c_pt.bc'
source_filename = "../sound/soc/sh/rcar/ctu.c"
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
%struct.rsnd_ctu = type { %struct.rsnd_mod, %struct.rsnd_kctrl_cfg_m, [4 x %struct.rsnd_kctrl_cfg_m], %struct.rsnd_kctrl_cfg_s, i32, i32 }
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

@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sound/soc/sh/rcar/ctu.c\00", [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rcar_sound,ctu\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s.%d\00", [26 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ctu\00", [28 x i8] zeroinitializer }, align 32
@rsnd_ctu_ops = internal global { %struct.rsnd_mod_ops, [44 x i8] } { %struct.rsnd_mod_ops { ptr @.str.3, ptr null, ptr @rsnd_ctu_probe_, ptr null, ptr @rsnd_ctu_init, ptr @rsnd_ctu_quit, ptr null, ptr null, ptr null, ptr @rsnd_ctu_pcm_new, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rsnd_mod_get_status, ptr @rsnd_ctu_id, ptr @rsnd_ctu_id_sub, ptr @rsnd_mod_id_raw, ptr @rsnd_ctu_debug_info }, [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"CTU Pass\00", [23 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CTU SV0\00", [24 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CTU SV1\00", [24 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CTU SV2\00", [24 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CTU SV3\00", [24 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"CTU Reset\00", [22 x i8] zeroinitializer }, align 32
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 306, i32 6 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 326, i32 9 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 354, i32 33 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 355, i32 5 }
@___asan_gen_.22 = private unnamed_addr constant [13 x i8] c"rsnd_ctu_ops\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 291, i32 28 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 205, i32 8 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 214, i32 8 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 223, i32 8 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 232, i32 8 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 241, i32 8 }
@___asan_gen_.40 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.41 = private constant [27 x i8] c"../sound/soc/sh/rcar/ctu.c\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 250, i32 8 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @rsnd_ctu_ops, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rsnd_ctu_ops to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @rsnd_ctu_mod_get(ptr nocapture noundef readonly %priv, i32 noundef %id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %id)
  %cmp = icmp slt i32 %id, 0
  br i1 %cmp, label %entry.do.end_crit_edge, label %lor.end, !prof !31

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

lor.end:                                          ; preds = %entry
  %ctu_nr = getelementptr inbounds %struct.rsnd_priv, ptr %priv, i32 0, i32 13
  %0 = ptrtoint ptr %ctu_nr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ctu_nr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %id)
  %cmp1.not = icmp sgt i32 %1, %id
  br i1 %cmp1.not, label %lor.end.if.end_crit_edge, label %lor.end.do.end_crit_edge, !prof !32

lor.end.do.end_crit_edge:                         ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

lor.end.if.end_crit_edge:                         ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %lor.end.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 306, i32 noundef 9, ptr noundef null) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %lor.end.if.end_crit_edge
  %2 = phi i32 [ 0, %do.end ], [ %id, %lor.end.if.end_crit_edge ]
  %ctu = getelementptr inbounds %struct.rsnd_priv, ptr %priv, i32 0, i32 12
  %3 = ptrtoint ptr %ctu to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ctu, align 4
  %add.ptr = getelementptr %struct.rsnd_ctu, ptr %4, i32 %2
  ret ptr %add.ptr
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rsnd_ctu_probe(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  %name = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %name) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %of_node = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3, i32 27
  %5 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @of_get_child_by_name(ptr noundef %6, ptr noundef nonnull @.str.1) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call.i = tail call ptr @of_get_next_child(ptr noundef nonnull %call, ptr noundef null) #7
  %cmp.not5.i = icmp eq ptr %call.i, null
  br i1 %cmp.not5.i, label %if.end5.rsnd_ctu_probe_done_crit_edge, label %if.end5.for.body.i_crit_edge

if.end5.for.body.i_crit_edge:                     ; preds = %if.end5
  br label %for.body.i

if.end5.rsnd_ctu_probe_done_crit_edge:            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %rsnd_ctu_probe_done

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end5.for.body.i_crit_edge
  %num.07.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end5.for.body.i_crit_edge ]
  %child.06.i = phi ptr [ %call1.i, %for.body.i.for.body.i_crit_edge ], [ %call.i, %if.end5.for.body.i_crit_edge ]
  %inc.i = add i32 %num.07.i, 1
  %call1.i = tail call ptr @of_get_next_child(ptr noundef nonnull %call, ptr noundef nonnull %child.06.i) #7
  %cmp.not.i = icmp eq ptr %call1.i, null
  br i1 %cmp.not.i, label %of_get_child_count.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

of_get_child_count.exit:                          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc.i)
  %tobool7.not = icmp eq i32 %inc.i, 0
  br i1 %tobool7.not, label %of_get_child_count.exit.rsnd_ctu_probe_done_crit_edge, label %if.end9

of_get_child_count.exit.rsnd_ctu_probe_done_crit_edge: ; preds = %of_get_child_count.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %rsnd_ctu_probe_done

if.end9:                                          ; preds = %of_get_child_count.exit
  %7 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %inc.i, i32 436) #7
  %8 = extractvalue { i32, i1 } %7, 1
  br i1 %8, label %if.end9.rsnd_ctu_probe_done_crit_edge, label %devm_kcalloc.exit, !prof !33

if.end9.rsnd_ctu_probe_done_crit_edge:            ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %rsnd_ctu_probe_done

devm_kcalloc.exit:                                ; preds = %if.end9
  %9 = extractvalue { i32, i1 } %7, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %9, i32 noundef 3520) #7
  %tobool11.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool11.not, label %devm_kcalloc.exit.rsnd_ctu_probe_done_crit_edge, label %if.end13

devm_kcalloc.exit.rsnd_ctu_probe_done_crit_edge:  ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %rsnd_ctu_probe_done

if.end13:                                         ; preds = %devm_kcalloc.exit
  %ctu_nr = getelementptr inbounds %struct.rsnd_priv, ptr %priv, i32 0, i32 13
  %10 = ptrtoint ptr %ctu_nr to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %inc.i, ptr %ctu_nr, align 4
  %ctu14 = getelementptr inbounds %struct.rsnd_priv, ptr %priv, i32 0, i32 12
  %11 = ptrtoint ptr %ctu14 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call5.i.i, ptr %ctu14, align 4
  %call15 = tail call ptr @of_get_next_child(ptr noundef nonnull %call, ptr noundef null) #7
  %cmp16.not69 = icmp eq ptr %call15, null
  br i1 %cmp16.not69, label %if.end13.rsnd_ctu_probe_done_crit_edge, label %if.end13.for.body_crit_edge

if.end13.for.body_crit_edge:                      ; preds = %if.end13
  br label %for.body

if.end13.rsnd_ctu_probe_done_crit_edge:           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %rsnd_ctu_probe_done

for.body:                                         ; preds = %if.end28.for.body_crit_edge, %if.end13.for.body_crit_edge
  %i.071 = phi i32 [ %inc, %if.end28.for.body_crit_edge ], [ 0, %if.end13.for.body_crit_edge ]
  %np.070 = phi ptr [ %call29, %if.end28.for.body_crit_edge ], [ %call15, %if.end13.for.body_crit_edge ]
  %12 = ptrtoint ptr %ctu14 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ctu14, align 4
  %div = sdiv i32 %i.071, 4
  %call18 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name, i32 noundef 16, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef %div)
  %call20 = call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull %name) #7
  %cmp.i = icmp ugt ptr %call20, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then22, label %if.end24

if.then22:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %call20 to i32
  br label %rsnd_ctu_probe_done.sink.split

if.end24:                                         ; preds = %for.body
  %add.ptr = getelementptr %struct.rsnd_ctu, ptr %13, i32 %i.071
  %call25 = call i32 @rsnd_mod_init(ptr noundef %priv, ptr noundef %add.ptr, ptr noundef nonnull @rsnd_ctu_ops, ptr noundef %call20, i32 noundef 4, i32 noundef %i.071) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end28, label %if.end24.rsnd_ctu_probe_done.sink.split_crit_edge

if.end24.rsnd_ctu_probe_done.sink.split_crit_edge: ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %rsnd_ctu_probe_done.sink.split

if.end28:                                         ; preds = %if.end24
  %inc = add i32 %i.071, 1
  %call29 = call ptr @of_get_next_child(ptr noundef nonnull %call, ptr noundef nonnull %np.070) #7
  %cmp16.not = icmp eq ptr %call29, null
  br i1 %cmp16.not, label %if.end28.rsnd_ctu_probe_done_crit_edge, label %if.end28.for.body_crit_edge

if.end28.for.body_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

if.end28.rsnd_ctu_probe_done_crit_edge:           ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %rsnd_ctu_probe_done

rsnd_ctu_probe_done.sink.split:                   ; preds = %if.end24.rsnd_ctu_probe_done.sink.split_crit_edge, %if.then22
  %ret.1.ph = phi i32 [ %14, %if.then22 ], [ %call25, %if.end24.rsnd_ctu_probe_done.sink.split_crit_edge ]
  call void @of_node_put(ptr noundef nonnull %np.070) #7
  br label %rsnd_ctu_probe_done

rsnd_ctu_probe_done:                              ; preds = %rsnd_ctu_probe_done.sink.split, %if.end28.rsnd_ctu_probe_done_crit_edge, %if.end13.rsnd_ctu_probe_done_crit_edge, %devm_kcalloc.exit.rsnd_ctu_probe_done_crit_edge, %if.end9.rsnd_ctu_probe_done_crit_edge, %of_get_child_count.exit.rsnd_ctu_probe_done_crit_edge, %if.end5.rsnd_ctu_probe_done_crit_edge
  %ret.1 = phi i32 [ -22, %of_get_child_count.exit.rsnd_ctu_probe_done_crit_edge ], [ -12, %devm_kcalloc.exit.rsnd_ctu_probe_done_crit_edge ], [ -22, %if.end5.rsnd_ctu_probe_done_crit_edge ], [ -12, %if.end9.rsnd_ctu_probe_done_crit_edge ], [ 0, %if.end13.rsnd_ctu_probe_done_crit_edge ], [ %ret.1.ph, %rsnd_ctu_probe_done.sink.split ], [ 0, %if.end28.rsnd_ctu_probe_done_crit_edge ]
  call void @of_node_put(ptr noundef nonnull %call) #7
  br label %cleanup

cleanup:                                          ; preds = %rsnd_ctu_probe_done, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %rsnd_ctu_probe_done ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %name) #7
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
define dso_local void @rsnd_ctu_remove(ptr nocapture noundef readonly %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ctu1 = getelementptr inbounds %struct.rsnd_priv, ptr %priv, i32 0, i32 12
  %ctu_nr = getelementptr inbounds %struct.rsnd_priv, ptr %priv, i32 0, i32 13
  %0 = ptrtoint ptr %ctu_nr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ctu_nr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp5 = icmp sgt i32 %1, 0
  br i1 %cmp5, label %entry.land.rhs_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

entry.land.rhs_crit_edge:                         ; preds = %entry
  br label %land.rhs

land.rhs:                                         ; preds = %for.body.land.rhs_crit_edge, %entry.land.rhs_crit_edge
  %i.06 = phi i32 [ %inc, %for.body.land.rhs_crit_edge ], [ 0, %entry.land.rhs_crit_edge ]
  %2 = ptrtoint ptr %ctu1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctu1, align 4
  %add.ptr = getelementptr %struct.rsnd_ctu, ptr %3, i32 %i.06
  %tobool.not = icmp eq ptr %add.ptr, null
  br i1 %tobool.not, label %land.rhs.for.end_crit_edge, label %for.body

land.rhs.for.end_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %land.rhs
  tail call void @rsnd_mod_quit(ptr noundef nonnull %add.ptr) #7
  %inc = add nuw nsw i32 %i.06, 1
  %4 = ptrtoint ptr %ctu_nr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ctu_nr, align 4
  %cmp = icmp slt i32 %inc, %5
  br i1 %cmp, label %for.body.land.rhs_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.land.rhs_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
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
define internal i32 @rsnd_ctu_probe_(ptr noundef %mod, ptr noundef %io, ptr nocapture noundef readnone %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rsnd_mod_id(ptr noundef %mod) #7
  %call1 = tail call i32 @rsnd_cmd_attach(ptr noundef %io, i32 noundef %call) #7
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rsnd_ctu_init(ptr noundef %mod, ptr noundef %io, ptr nocapture noundef readnone %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %clk = getelementptr inbounds %struct.rsnd_mod, ptr %mod, i32 0, i32 4
  %0 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk, align 4
  %call = tail call i32 @clk_enable(ptr noundef %1) #7
  tail call void @rsnd_mod_write(ptr noundef %mod, i32 noundef 33, i32 noundef 0) #7
  tail call void @rsnd_mod_write(ptr noundef %mod, i32 noundef 33, i32 noundef 1) #7
  %arrayidx.i = getelementptr %struct.rsnd_ctu, ptr %mod, i32 0, i32 1, i32 1, i32 0
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.i, align 4
  %shl.i = shl i32 %3, 28
  %4 = tail call i32 @llvm.usub.sat.i32(i32 %3, i32 8) #7
  %arrayidx.1.i = getelementptr %struct.rsnd_ctu, ptr %mod, i32 0, i32 1, i32 1, i32 1
  %5 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx.1.i, align 4
  %shl.1.i = shl i32 %6, 24
  %or.1.i = or i32 %shl.1.i, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %6)
  %cmp2.1.i = icmp ugt i32 %6, 8
  %sub3.1.i = add i32 %6, -8
  %7 = tail call i32 @llvm.umax.i32(i32 %4, i32 %sub3.1.i) #7
  %scmdr.1.1.i = select i1 %cmp2.1.i, i32 %7, i32 %4
  %arrayidx.2.i = getelementptr %struct.rsnd_ctu, ptr %mod, i32 0, i32 1, i32 1, i32 2
  %8 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.2.i, align 4
  %shl.2.i = shl i32 %9, 20
  %or.2.i = or i32 %or.1.i, %shl.2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %9)
  %cmp2.2.i = icmp ugt i32 %9, 8
  %sub3.2.i = add i32 %9, -8
  %10 = tail call i32 @llvm.umax.i32(i32 %scmdr.1.1.i, i32 %sub3.2.i) #7
  %scmdr.1.2.i = select i1 %cmp2.2.i, i32 %10, i32 %scmdr.1.1.i
  %arrayidx.3.i = getelementptr %struct.rsnd_ctu, ptr %mod, i32 0, i32 1, i32 1, i32 3
  %11 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.3.i, align 4
  %shl.3.i = shl i32 %12, 16
  %or.3.i = or i32 %or.2.i, %shl.3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %12)
  %cmp2.3.i = icmp ugt i32 %12, 8
  %sub3.3.i = add i32 %12, -8
  %13 = tail call i32 @llvm.umax.i32(i32 %scmdr.1.2.i, i32 %sub3.3.i) #7
  %scmdr.1.3.i = select i1 %cmp2.3.i, i32 %13, i32 %scmdr.1.2.i
  %arrayidx.4.i = getelementptr %struct.rsnd_ctu, ptr %mod, i32 0, i32 1, i32 1, i32 4
  %14 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.4.i, align 4
  %shl.4.i = shl i32 %15, 12
  %or.4.i = or i32 %or.3.i, %shl.4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %15)
  %cmp2.4.i = icmp ugt i32 %15, 8
  %sub3.4.i = add i32 %15, -8
  %16 = tail call i32 @llvm.umax.i32(i32 %scmdr.1.3.i, i32 %sub3.4.i) #7
  %scmdr.1.4.i = select i1 %cmp2.4.i, i32 %16, i32 %scmdr.1.3.i
  %arrayidx.5.i = getelementptr %struct.rsnd_ctu, ptr %mod, i32 0, i32 1, i32 1, i32 5
  %17 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.5.i, align 4
  %shl.5.i = shl i32 %18, 8
  %or.5.i = or i32 %or.4.i, %shl.5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %18)
  %cmp2.5.i = icmp ugt i32 %18, 8
  %sub3.5.i = add i32 %18, -8
  %19 = tail call i32 @llvm.umax.i32(i32 %scmdr.1.4.i, i32 %sub3.5.i) #7
  %scmdr.1.5.i = select i1 %cmp2.5.i, i32 %19, i32 %scmdr.1.4.i
  %arrayidx.6.i = getelementptr %struct.rsnd_ctu, ptr %mod, i32 0, i32 1, i32 1, i32 6
  %20 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.6.i, align 4
  %shl.6.i = shl i32 %21, 4
  %or.6.i = or i32 %or.5.i, %shl.6.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %21)
  %cmp2.6.i = icmp ugt i32 %21, 8
  %sub3.6.i = add i32 %21, -8
  %22 = tail call i32 @llvm.umax.i32(i32 %scmdr.1.5.i, i32 %sub3.6.i) #7
  %scmdr.1.6.i = select i1 %cmp2.6.i, i32 %22, i32 %scmdr.1.5.i
  %arrayidx.7.i = getelementptr %struct.rsnd_ctu, ptr %mod, i32 0, i32 1, i32 1, i32 7
  %23 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.7.i, align 4
  %or.7.i = or i32 %or.6.i, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %24)
  %cmp2.7.i = icmp ugt i32 %24, 8
  %sub3.7.i = add i32 %24, -8
  %25 = tail call i32 @llvm.umax.i32(i32 %scmdr.1.6.i, i32 %sub3.7.i) #7
  %scmdr.1.7.i = select i1 %cmp2.7.i, i32 %25, i32 %scmdr.1.6.i
  tail call void @rsnd_mod_write(ptr noundef %mod, i32 noundef 34, i32 noundef 1) #7
  %call.i = tail call i32 @rsnd_runtime_channel_original_with_params(ptr noundef %io, ptr noundef null) #7
  tail call void @rsnd_mod_write(ptr noundef %mod, i32 noundef 35, i32 noundef %call.i) #7
  tail call void @rsnd_mod_write(ptr noundef %mod, i32 noundef 36, i32 noundef %or.7.i) #7
  tail call void @rsnd_mod_write(ptr noundef %mod, i32 noundef 37, i32 noundef %scmdr.1.7.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %scmdr.1.7.i)
  %cmp9.not54.not.i = icmp eq i32 %scmdr.1.7.i, 0
  br i1 %cmp9.not54.not.i, label %entry.rsnd_ctu_value_init.exit_crit_edge, label %for.cond12.preheader.preheader.i

entry.rsnd_ctu_value_init.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %rsnd_ctu_value_init.exit

for.cond12.preheader.preheader.i:                 ; preds = %entry
  %26 = add i32 %scmdr.1.7.i, -1
  %umin.i = tail call i32 @llvm.umin.i32(i32 %26, i32 3) #7
  br label %for.cond12.preheader.i

for.cond12.preheader.i:                           ; preds = %for.cond12.preheader.i.for.cond12.preheader.i_crit_edge, %for.cond12.preheader.preheader.i
  %i.155.i = phi i32 [ %inc24.i, %for.cond12.preheader.i.for.cond12.preheader.i_crit_edge ], [ 0, %for.cond12.preheader.preheader.i ]
  %mul15.i = shl i32 %i.155.i, 3
  %add.i = add nuw nsw i32 %mul15.i, 38
  %arrayidx19.i = getelementptr %struct.rsnd_ctu, ptr %mod, i32 0, i32 2, i32 %i.155.i, i32 1, i32 0
  %27 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx19.i, align 4
  tail call void @rsnd_mod_write(ptr noundef %mod, i32 noundef %add.i, i32 noundef %28) #7
  %add16.1.i = add nuw nsw i32 %mul15.i, 39
  %arrayidx19.1.i = getelementptr %struct.rsnd_ctu, ptr %mod, i32 0, i32 2, i32 %i.155.i, i32 1, i32 1
  %29 = ptrtoint ptr %arrayidx19.1.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx19.1.i, align 4
  tail call void @rsnd_mod_write(ptr noundef %mod, i32 noundef %add16.1.i, i32 noundef %30) #7
  %add16.2.i = add nuw nsw i32 %mul15.i, 40
  %arrayidx19.2.i = getelementptr %struct.rsnd_ctu, ptr %mod, i32 0, i32 2, i32 %i.155.i, i32 1, i32 2
  %31 = ptrtoint ptr %arrayidx19.2.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx19.2.i, align 4
  tail call void @rsnd_mod_write(ptr noundef %mod, i32 noundef %add16.2.i, i32 noundef %32) #7
  %add16.3.i = add nuw nsw i32 %mul15.i, 41
  %arrayidx19.3.i = getelementptr %struct.rsnd_ctu, ptr %mod, i32 0, i32 2, i32 %i.155.i, i32 1, i32 3
  %33 = ptrtoint ptr %arrayidx19.3.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx19.3.i, align 4
  tail call void @rsnd_mod_write(ptr noundef %mod, i32 noundef %add16.3.i, i32 noundef %34) #7
  %add16.4.i = add nuw nsw i32 %mul15.i, 42
  %arrayidx19.4.i = getelementptr %struct.rsnd_ctu, ptr %mod, i32 0, i32 2, i32 %i.155.i, i32 1, i32 4
  %35 = ptrtoint ptr %arrayidx19.4.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx19.4.i, align 4
  tail call void @rsnd_mod_write(ptr noundef %mod, i32 noundef %add16.4.i, i32 noundef %36) #7
  %add16.5.i = add nuw nsw i32 %mul15.i, 43
  %arrayidx19.5.i = getelementptr %struct.rsnd_ctu, ptr %mod, i32 0, i32 2, i32 %i.155.i, i32 1, i32 5
  %37 = ptrtoint ptr %arrayidx19.5.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx19.5.i, align 4
  tail call void @rsnd_mod_write(ptr noundef %mod, i32 noundef %add16.5.i, i32 noundef %38) #7
  %add16.6.i = add nuw nsw i32 %mul15.i, 44
  %arrayidx19.6.i = getelementptr %struct.rsnd_ctu, ptr %mod, i32 0, i32 2, i32 %i.155.i, i32 1, i32 6
  %39 = ptrtoint ptr %arrayidx19.6.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx19.6.i, align 4
  tail call void @rsnd_mod_write(ptr noundef %mod, i32 noundef %add16.6.i, i32 noundef %40) #7
  %add16.7.i = add nuw nsw i32 %mul15.i, 45
  %arrayidx19.7.i = getelementptr %struct.rsnd_ctu, ptr %mod, i32 0, i32 2, i32 %i.155.i, i32 1, i32 7
  %41 = ptrtoint ptr %arrayidx19.7.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx19.7.i, align 4
  tail call void @rsnd_mod_write(ptr noundef %mod, i32 noundef %add16.7.i, i32 noundef %42) #7
  %inc24.i = add nuw nsw i32 %i.155.i, 1
  %exitcond.not.i = icmp eq i32 %i.155.i, %umin.i
  br i1 %exitcond.not.i, label %for.cond12.preheader.i.rsnd_ctu_value_init.exit_crit_edge, label %for.cond12.preheader.i.for.cond12.preheader.i_crit_edge

for.cond12.preheader.i.for.cond12.preheader.i_crit_edge: ; preds = %for.cond12.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond12.preheader.i

for.cond12.preheader.i.rsnd_ctu_value_init.exit_crit_edge: ; preds = %for.cond12.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rsnd_ctu_value_init.exit

rsnd_ctu_value_init.exit:                         ; preds = %for.cond12.preheader.i.rsnd_ctu_value_init.exit_crit_edge, %entry.rsnd_ctu_value_init.exit_crit_edge
  tail call void @rsnd_mod_write(ptr noundef %mod, i32 noundef 34, i32 noundef 0) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rsnd_ctu_quit(ptr noundef %mod, ptr nocapture noundef readnone %io, ptr nocapture noundef readnone %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @rsnd_mod_write(ptr noundef %mod, i32 noundef 34, i32 noundef 1) #7
  tail call void @rsnd_mod_write(ptr noundef %mod, i32 noundef 33, i32 noundef 0) #7
  %clk = getelementptr inbounds %struct.rsnd_mod, ptr %mod, i32 0, i32 4
  %0 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %1) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rsnd_ctu_pcm_new(ptr noundef %mod, ptr noundef %io, ptr noundef %rtd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.rsnd_ctu, ptr %mod, i32 0, i32 5
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %pass = getelementptr inbounds %struct.rsnd_ctu, ptr %mod, i32 0, i32 1
  %call = tail call ptr @rsnd_kctrl_init_m(ptr noundef %pass) #7
  %call1 = tail call i32 @rsnd_kctrl_new(ptr noundef %mod, ptr noundef %io, ptr noundef %rtd, ptr noundef nonnull @.str.4, ptr noundef nonnull @rsnd_kctrl_accept_anytime, ptr noundef null, ptr noundef %call, ptr noundef null, i32 noundef 8, i32 noundef 12) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %sv = getelementptr inbounds %struct.rsnd_ctu, ptr %mod, i32 0, i32 2
  %call4 = tail call ptr @rsnd_kctrl_init_m(ptr noundef %sv) #7
  %call5 = tail call i32 @rsnd_kctrl_new(ptr noundef %mod, ptr noundef %io, ptr noundef %rtd, ptr noundef nonnull @.str.5, ptr noundef nonnull @rsnd_kctrl_accept_anytime, ptr noundef null, ptr noundef %call4, ptr noundef null, i32 noundef 8, i32 noundef 16777215) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.end3.cleanup_crit_edge, label %if.end8

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %if.end3
  %arrayidx10 = getelementptr %struct.rsnd_ctu, ptr %mod, i32 0, i32 2, i32 1
  %call11 = tail call ptr @rsnd_kctrl_init_m(ptr noundef %arrayidx10) #7
  %call12 = tail call i32 @rsnd_kctrl_new(ptr noundef %mod, ptr noundef %io, ptr noundef %rtd, ptr noundef nonnull @.str.6, ptr noundef nonnull @rsnd_kctrl_accept_anytime, ptr noundef null, ptr noundef %call11, ptr noundef null, i32 noundef 8, i32 noundef 16777215) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %if.end8.cleanup_crit_edge, label %if.end15

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end15:                                         ; preds = %if.end8
  %arrayidx17 = getelementptr %struct.rsnd_ctu, ptr %mod, i32 0, i32 2, i32 2
  %call18 = tail call ptr @rsnd_kctrl_init_m(ptr noundef %arrayidx17) #7
  %call19 = tail call i32 @rsnd_kctrl_new(ptr noundef %mod, ptr noundef %io, ptr noundef %rtd, ptr noundef nonnull @.str.7, ptr noundef nonnull @rsnd_kctrl_accept_anytime, ptr noundef null, ptr noundef %call18, ptr noundef null, i32 noundef 8, i32 noundef 16777215) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %if.end15.cleanup_crit_edge, label %if.end22

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end22:                                         ; preds = %if.end15
  %arrayidx24 = getelementptr %struct.rsnd_ctu, ptr %mod, i32 0, i32 2, i32 3
  %call25 = tail call ptr @rsnd_kctrl_init_m(ptr noundef %arrayidx24) #7
  %call26 = tail call i32 @rsnd_kctrl_new(ptr noundef %mod, ptr noundef %io, ptr noundef %rtd, ptr noundef nonnull @.str.8, ptr noundef nonnull @rsnd_kctrl_accept_anytime, ptr noundef null, ptr noundef %call25, ptr noundef null, i32 noundef 8, i32 noundef 16777215) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp27 = icmp slt i32 %call26, 0
  br i1 %cmp27, label %if.end22.cleanup_crit_edge, label %if.end29

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end29:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  %reset = getelementptr inbounds %struct.rsnd_ctu, ptr %mod, i32 0, i32 3
  %call30 = tail call ptr @rsnd_kctrl_init_s(ptr noundef %reset) #7
  %call31 = tail call i32 @rsnd_kctrl_new(ptr noundef %mod, ptr noundef %io, ptr noundef %rtd, ptr noundef nonnull @.str.9, ptr noundef nonnull @rsnd_kctrl_accept_anytime, ptr noundef nonnull @rsnd_ctu_value_reset, ptr noundef %call30, ptr noundef null, i32 noundef 1, i32 noundef 1) #7
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %or = or i32 %3, 1
  store i32 %or, ptr %flags, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %if.end22.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call31, %if.end29 ], [ 0, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ %call5, %if.end3.cleanup_crit_edge ], [ %call12, %if.end8.cleanup_crit_edge ], [ %call19, %if.end15.cleanup_crit_edge ], [ %call26, %if.end22.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rsnd_mod_get_status(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rsnd_ctu_id(ptr nocapture noundef readonly %mod) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mod to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mod, align 4
  %div = sdiv i32 %1, 4
  ret i32 %div
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rsnd_ctu_id_sub(ptr nocapture noundef readonly %mod) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mod to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mod, align 4
  %rem = srem i32 %1, 4
  ret i32 %rem
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_mod_id_raw(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rsnd_ctu_debug_info(ptr noundef %m, ptr nocapture noundef readnone %io, ptr noundef %mod) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rsnd_mod_id_raw(ptr noundef %mod) #7
  %mul = shl i32 %call, 8
  %add = add i32 %mul, 1280
  tail call void @rsnd_debugfs_mod_reg_show(ptr noundef %m, ptr noundef %mod, i32 noundef 0, i32 noundef %add, i32 noundef 256) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_cmd_attach(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_mod_id(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rsnd_mod_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_runtime_channel_original_with_params(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_kctrl_new(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_kctrl_accept_anytime(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rsnd_kctrl_init_m(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rsnd_ctu_value_reset(ptr nocapture noundef readnone %io, ptr nocapture noundef %mod) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %val = getelementptr inbounds %struct.rsnd_ctu, ptr %mod, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.body.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx = getelementptr %struct.rsnd_ctu, ptr %mod, i32 0, i32 1, i32 1, i32 0
  %arrayidx4 = getelementptr %struct.rsnd_ctu, ptr %mod, i32 0, i32 2, i32 0, i32 1, i32 0
  %arrayidx8 = getelementptr %struct.rsnd_ctu, ptr %mod, i32 0, i32 2, i32 1, i32 1, i32 0
  %arrayidx12 = getelementptr %struct.rsnd_ctu, ptr %mod, i32 0, i32 2, i32 2, i32 1, i32 0
  %arrayidx16 = getelementptr %struct.rsnd_ctu, ptr %mod, i32 0, i32 2, i32 3, i32 1, i32 0
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %val, align 4
  %3 = call ptr @memset(ptr %arrayidx, i32 0, i32 32)
  %4 = call ptr @memset(ptr %arrayidx4, i32 0, i32 32)
  %5 = call ptr @memset(ptr %arrayidx8, i32 0, i32 32)
  %6 = call ptr @memset(ptr %arrayidx12, i32 0, i32 32)
  %7 = call ptr @memset(ptr %arrayidx16, i32 0, i32 32)
  br label %cleanup

cleanup:                                          ; preds = %for.body.preheader, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rsnd_kctrl_init_s(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rsnd_debugfs_mod_reg_show(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20}
!llvm.module.flags = !{!22, !23, !24, !25, !26, !27, !28, !29}
!llvm.ident = !{!30}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/soc/sh/rcar/ctu.c", i32 306, i32 6}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../sound/soc/sh/rcar/ctu.c", i32 326, i32 9}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../sound/soc/sh/rcar/ctu.c", i32 354, i32 33}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../sound/soc/sh/rcar/ctu.c", i32 355, i32 5}
!8 = !{ptr @rsnd_ctu_ops, !9, !"rsnd_ctu_ops", i1 false, i1 false}
!9 = !{!"../sound/soc/sh/rcar/ctu.c", i32 291, i32 28}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/soc/sh/rcar/ctu.c", i32 205, i32 8}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../sound/soc/sh/rcar/ctu.c", i32 214, i32 8}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../sound/soc/sh/rcar/ctu.c", i32 223, i32 8}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/soc/sh/rcar/ctu.c", i32 232, i32 8}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../sound/soc/sh/rcar/ctu.c", i32 241, i32 8}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../sound/soc/sh/rcar/ctu.c", i32 250, i32 8}
!22 = !{i32 1, !"wchar_size", i32 2}
!23 = !{i32 1, !"min_enum_size", i32 4}
!24 = !{i32 8, !"branch-target-enforcement", i32 0}
!25 = !{i32 8, !"sign-return-address", i32 0}
!26 = !{i32 8, !"sign-return-address-all", i32 0}
!27 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!28 = !{i32 7, !"uwtable", i32 1}
!29 = !{i32 7, !"frame-pointer", i32 2}
!30 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!31 = !{!"branch_weights", i32 1073205, i32 2146410443}
!32 = !{!"branch_weights", i32 2000, i32 1}
!33 = !{!"branch_weights", i32 1, i32 2000}
