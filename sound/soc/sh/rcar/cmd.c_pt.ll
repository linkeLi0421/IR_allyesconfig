; ModuleID = '/llk/IR_all_yes/sound/soc/sh/rcar/cmd.c_pt.bc'
source_filename = "../sound/soc/sh/rcar/cmd.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.rsnd_mod_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.rsnd_dai_stream = type { [16 x i8], ptr, [13 x ptr], ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.rsnd_dai = type { [16 x i8], %struct.rsnd_dai_stream, %struct.rsnd_dai_stream, ptr, %struct.snd_pcm_hw_constraint_list, i32, i32, i32, i8 }
%struct.snd_pcm_hw_constraint_list = type { ptr, i32, i32 }
%struct.rsnd_priv = type { ptr, %struct.spinlock, i32, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.rsnd_cmd = type { %struct.rsnd_mod }
%struct.rsnd_mod = type { i32, i32, ptr, ptr, ptr, i32 }
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

@rsnd_cmd_ops = internal global { %struct.rsnd_mod_ops, [44 x i8] } { %struct.rsnd_mod_ops { ptr @.str.1, ptr null, ptr null, ptr null, ptr @rsnd_cmd_init, ptr null, ptr @rsnd_cmd_start, ptr @rsnd_cmd_stop, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rsnd_mod_get_status, ptr null, ptr null, ptr null, ptr @rsnd_cmd_debug_info }, [44 x i8] zeroinitializer }, align 32
@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sound/soc/sh/rcar/cmd.c\00", [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"cmd\00", [28 x i8] zeroinitializer }, align 32
@rsnd_cmd_init.path = internal constant { [10 x i32], [56 x i8] } { [10 x i32] [i32 0, i32 1, i32 0, i32 0, i32 0, i32 256, i32 4096, i32 0, i32 0, i32 32768], [56 x i8] zeroinitializer }, align 32
@rsnd_cmd_init.cmd_case = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"\03\03\04\01\02\04\01\00\00\02", [22 x i8] zeroinitializer }, align 32
@rsnd_cmd_init.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.3, ptr @.str, ptr @.str.4, i8 0, i8 22, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"snd_soc_rcar\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rsnd_cmd_init\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ctu/mix path = 0x%08x\0A\00", [41 x i8] zeroinitializer }, align 32
@___asan_gen_.5 = private unnamed_addr constant [13 x i8] c"rsnd_cmd_ops\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 130, i32 28 }
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 141, i32 6 }
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 131, i32 11 }
@___asan_gen_.14 = private unnamed_addr constant [5 x i8] c"path\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 31, i32 19 }
@___asan_gen_.17 = private unnamed_addr constant [9 x i8] c"cmd_case\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 70, i32 19 }
@___asan_gen_.26 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.27 = private constant [27 x i8] c"../sound/soc/sh/rcar/cmd.c\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 88, i32 2 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @rsnd_cmd_ops, ptr @.str, ptr @.str.1, ptr @rsnd_cmd_init.path, ptr @rsnd_cmd_init.cmd_case, ptr @.str.2, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rsnd_cmd_ops to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rsnd_cmd_init.path to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rsnd_cmd_init.cmd_case to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rsnd_cmd_attach(ptr noundef %io, i32 noundef %id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %rdai = getelementptr inbounds %struct.rsnd_dai_stream, ptr %io, i32 0, i32 4
  %0 = ptrtoint ptr %rdai to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rdai, align 4
  %priv1 = getelementptr inbounds %struct.rsnd_dai, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %id)
  %cmp.i = icmp slt i32 %id, 0
  br i1 %cmp.i, label %entry.do.end.i_crit_edge, label %lor.end.i, !prof !24

entry.do.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end.i

lor.end.i:                                        ; preds = %entry
  %cmd_nr.i = getelementptr inbounds %struct.rsnd_priv, ptr %3, i32 0, i32 19
  %4 = ptrtoint ptr %cmd_nr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cmd_nr.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %id)
  %cmp1.not.i = icmp sgt i32 %5, %id
  br i1 %cmp1.not.i, label %lor.end.i.rsnd_cmd_mod_get.exit_crit_edge, label %lor.end.i.do.end.i_crit_edge, !prof !25

lor.end.i.do.end.i_crit_edge:                     ; preds = %lor.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end.i

lor.end.i.rsnd_cmd_mod_get.exit_crit_edge:        ; preds = %lor.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %rsnd_cmd_mod_get.exit

do.end.i:                                         ; preds = %lor.end.i.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 141, i32 noundef 9, ptr noundef null) #3
  br label %rsnd_cmd_mod_get.exit

rsnd_cmd_mod_get.exit:                            ; preds = %do.end.i, %lor.end.i.rsnd_cmd_mod_get.exit_crit_edge
  %6 = phi i32 [ 0, %do.end.i ], [ %id, %lor.end.i.rsnd_cmd_mod_get.exit_crit_edge ]
  %cmd.i = getelementptr inbounds %struct.rsnd_priv, ptr %3, i32 0, i32 18
  %7 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cmd.i, align 4
  %add.ptr.i = getelementptr %struct.rsnd_cmd, ptr %8, i32 %6
  %type = getelementptr inbounds %struct.rsnd_mod, ptr %add.ptr.i, i32 0, i32 1
  %9 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %type, align 4
  %call2 = tail call i32 @rsnd_dai_connect(ptr noundef %add.ptr.i, ptr noundef %io, i32 noundef %10) #3
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_dai_connect(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rsnd_cmd_probe(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %flags = getelementptr inbounds %struct.rsnd_priv, ptr %priv, i32 0, i32 2
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %and = and i32 %3, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and)
  %cmp = icmp eq i32 %and, 1
  br i1 %cmp, label %entry.cleanup16_crit_edge, label %if.end

entry.cleanup16_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup16

if.end:                                           ; preds = %entry
  %dvc_nr = getelementptr inbounds %struct.rsnd_priv, ptr %priv, i32 0, i32 17
  %4 = ptrtoint ptr %dvc_nr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dvc_nr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end.cleanup16_crit_edge, label %if.end3

if.end.cleanup16_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup16

if.end3:                                          ; preds = %if.end
  %6 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %5, i32 24) #3
  %7 = extractvalue { i32, i1 } %6, 1
  br i1 %7, label %if.end3.cleanup16_crit_edge, label %devm_kcalloc.exit, !prof !26

if.end3.cleanup16_crit_edge:                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup16

devm_kcalloc.exit:                                ; preds = %if.end3
  %8 = extractvalue { i32, i1 } %6, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %8, i32 noundef 3520) #3
  %tobool4.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool4.not, label %devm_kcalloc.exit.cleanup16_crit_edge, label %land.rhs.preheader

devm_kcalloc.exit.cleanup16_crit_edge:            ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup16

land.rhs.preheader:                               ; preds = %devm_kcalloc.exit
  %cmd_nr = getelementptr inbounds %struct.rsnd_priv, ptr %priv, i32 0, i32 19
  %9 = ptrtoint ptr %cmd_nr to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %5, ptr %cmd_nr, align 4
  %cmd7 = getelementptr inbounds %struct.rsnd_priv, ptr %priv, i32 0, i32 18
  %10 = ptrtoint ptr %cmd7 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call5.i.i, ptr %cmd7, align 4
  br label %land.rhs

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.038, 1
  %11 = ptrtoint ptr %cmd_nr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cmd_nr, align 4
  %cmp9 = icmp slt i32 %inc, %12
  br i1 %cmp9, label %for.cond.land.rhs_crit_edge, label %for.cond.cleanup16_crit_edge

for.cond.cleanup16_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup16

for.cond.land.rhs_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #5
  br label %land.rhs

land.rhs:                                         ; preds = %for.cond.land.rhs_crit_edge, %land.rhs.preheader
  %i.038 = phi i32 [ %inc, %for.cond.land.rhs_crit_edge ], [ 0, %land.rhs.preheader ]
  %13 = ptrtoint ptr %cmd7 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cmd7, align 4
  %add.ptr = getelementptr %struct.rsnd_cmd, ptr %14, i32 %i.038
  %tobool11.not = icmp eq ptr %add.ptr, null
  br i1 %tobool11.not, label %land.rhs.cleanup16_crit_edge, label %for.body

land.rhs.cleanup16_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup16

for.body:                                         ; preds = %land.rhs
  %call12 = tail call i32 @rsnd_mod_init(ptr noundef %priv, ptr noundef nonnull %add.ptr, ptr noundef nonnull @rsnd_cmd_ops, ptr noundef null, i32 noundef 5, i32 noundef %i.038) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %for.cond, label %for.body.cleanup16_crit_edge

for.body.cleanup16_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup16

cleanup16:                                        ; preds = %for.body.cleanup16_crit_edge, %land.rhs.cleanup16_crit_edge, %for.cond.cleanup16_crit_edge, %devm_kcalloc.exit.cleanup16_crit_edge, %if.end3.cleanup16_crit_edge, %if.end.cleanup16_crit_edge, %entry.cleanup16_crit_edge
  %retval.2 = phi i32 [ 0, %entry.cleanup16_crit_edge ], [ 0, %if.end.cleanup16_crit_edge ], [ -12, %devm_kcalloc.exit.cleanup16_crit_edge ], [ -12, %if.end3.cleanup16_crit_edge ], [ %call12, %for.body.cleanup16_crit_edge ], [ 0, %for.cond.cleanup16_crit_edge ], [ 0, %land.rhs.cleanup16_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_mod_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rsnd_cmd_remove(ptr nocapture noundef readonly %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %cmd1 = getelementptr inbounds %struct.rsnd_priv, ptr %priv, i32 0, i32 18
  %cmd_nr = getelementptr inbounds %struct.rsnd_priv, ptr %priv, i32 0, i32 19
  %0 = ptrtoint ptr %cmd_nr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cmd_nr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp5 = icmp sgt i32 %1, 0
  br i1 %cmp5, label %entry.land.rhs_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

entry.land.rhs_crit_edge:                         ; preds = %entry
  br label %land.rhs

land.rhs:                                         ; preds = %for.body.land.rhs_crit_edge, %entry.land.rhs_crit_edge
  %i.06 = phi i32 [ %inc, %for.body.land.rhs_crit_edge ], [ 0, %entry.land.rhs_crit_edge ]
  %2 = ptrtoint ptr %cmd1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cmd1, align 4
  %add.ptr = getelementptr %struct.rsnd_cmd, ptr %3, i32 %i.06
  %tobool.not = icmp eq ptr %add.ptr, null
  br i1 %tobool.not, label %land.rhs.for.end_crit_edge, label %for.body

land.rhs.for.end_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.body:                                         ; preds = %land.rhs
  tail call void @rsnd_mod_quit(ptr noundef nonnull %add.ptr) #3
  %inc = add nuw nsw i32 %i.06, 1
  %4 = ptrtoint ptr %cmd_nr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cmd_nr, align 4
  %cmp = icmp slt i32 %inc, %5
  br i1 %cmp, label %for.body.land.rhs_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.body.land.rhs_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %land.rhs

for.end:                                          ; preds = %for.body.for.end_crit_edge, %land.rhs.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rsnd_mod_quit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rsnd_cmd_init(ptr noundef %mod, ptr noundef %io, ptr noundef %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx3 = getelementptr %struct.rsnd_dai_stream, ptr %io, i32 0, i32 2, i32 3
  %0 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx3, align 4
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %dev4 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %land.lhs.true, label %if.end.thread

land.lhs.true:                                    ; preds = %entry
  %arrayidx = getelementptr %struct.rsnd_dai_stream, ptr %io, i32 0, i32 2, i32 2
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool5.not = icmp eq ptr %5, null
  br i1 %tobool5.not, label %land.lhs.true.cleanup61_crit_edge, label %if.end

land.lhs.true.cleanup61_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup61

if.end:                                           ; preds = %land.lhs.true
  %call = tail call i32 @rsnd_mod_id(ptr noundef %mod) #3
  %6 = add i32 %call, -10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %6)
  %cmp = icmp ult i32 %6, -11
  br i1 %cmp, label %if.end.cleanup61_crit_edge, label %if.else

if.end.cleanup61_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup61

if.end.thread:                                    ; preds = %entry
  %call99 = tail call i32 @rsnd_mod_id(ptr noundef %mod) #3
  %7 = add i32 %call99, -10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %7)
  %cmp100 = icmp ult i32 %7, -11
  br i1 %cmp100, label %if.end.thread.cleanup61_crit_edge, label %for.cond.preheader

if.end.thread.cleanup61_crit_edge:                ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup61

for.cond.preheader:                               ; preds = %if.end.thread
  %rdai_nr = getelementptr inbounds %struct.rsnd_priv, ptr %priv, i32 0, i32 22
  %8 = ptrtoint ptr %rdai_nr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rdai_nr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp1095 = icmp sgt i32 %9, 0
  br i1 %cmp1095, label %for.cond.preheader.land.rhs_crit_edge, label %for.cond.preheader.do.body_crit_edge

for.cond.preheader.do.body_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body

for.cond.preheader.land.rhs_crit_edge:            ; preds = %for.cond.preheader
  br label %land.rhs

land.rhs:                                         ; preds = %if.end31.land.rhs_crit_edge, %for.cond.preheader.land.rhs_crit_edge
  %i.097 = phi i32 [ %inc, %if.end31.land.rhs_crit_edge ], [ 0, %for.cond.preheader.land.rhs_crit_edge ]
  %data.096 = phi i32 [ %data.2, %if.end31.land.rhs_crit_edge ], [ 0, %for.cond.preheader.land.rhs_crit_edge ]
  %call11 = tail call ptr @rsnd_rdai_get(ptr noundef %priv, i32 noundef %i.097) #3
  %tobool12.not = icmp eq ptr %call11, null
  br i1 %tobool12.not, label %land.rhs.do.body_crit_edge, label %for.body

land.rhs.do.body_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body

for.body:                                         ; preds = %land.rhs
  %arrayidx16 = getelementptr %struct.rsnd_dai, ptr %call11, i32 0, i32 1, i32 2, i32 3
  %10 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx16, align 4
  %cmp17 = icmp eq ptr %1, %11
  br i1 %cmp17, label %if.then18, label %for.body.if.end21_crit_edge

for.body.if.end21_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end21

if.then18:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx14 = getelementptr %struct.rsnd_dai, ptr %call11, i32 0, i32 1, i32 2, i32 6
  %12 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx14, align 4
  %call19 = tail call i32 @rsnd_mod_id(ptr noundef %13) #3
  %arrayidx20 = getelementptr [10 x i32], ptr @rsnd_cmd_init.path, i32 0, i32 %call19
  %14 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx20, align 4
  %or = or i32 %15, %data.096
  br label %if.end21

if.end21:                                         ; preds = %if.then18, %for.body.if.end21_crit_edge
  %data.1 = phi i32 [ %or, %if.then18 ], [ %data.096, %for.body.if.end21_crit_edge ]
  %arrayidx25 = getelementptr %struct.rsnd_dai, ptr %call11, i32 0, i32 2, i32 2, i32 3
  %16 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx25, align 4
  %cmp26 = icmp eq ptr %1, %17
  br i1 %cmp26, label %if.then27, label %if.end21.if.end31_crit_edge

if.end21.if.end31_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end31

if.then27:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx23 = getelementptr %struct.rsnd_dai, ptr %call11, i32 0, i32 2, i32 2, i32 6
  %18 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx23, align 4
  %call28 = tail call i32 @rsnd_mod_id(ptr noundef %19) #3
  %arrayidx29 = getelementptr [10 x i32], ptr @rsnd_cmd_init.path, i32 0, i32 %call28
  %20 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx29, align 4
  %or30 = or i32 %21, %data.1
  br label %if.end31

if.end31:                                         ; preds = %if.then27, %if.end21.if.end31_crit_edge
  %data.2 = phi i32 [ %or30, %if.then27 ], [ %data.1, %if.end21.if.end31_crit_edge ]
  %inc = add nuw nsw i32 %i.097, 1
  %22 = ptrtoint ptr %rdai_nr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rdai_nr, align 4
  %cmp10 = icmp slt i32 %inc, %23
  br i1 %cmp10, label %if.end31.land.rhs_crit_edge, label %if.end31.do.body_crit_edge

if.end31.do.body_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body

if.end31.land.rhs_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #5
  br label %land.rhs

if.else:                                          ; preds = %if.end
  %arrayidx34 = getelementptr %struct.rsnd_dai_stream, ptr %io, i32 0, i32 2, i32 6
  %24 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx34, align 4
  %tobool35.not = icmp eq ptr %25, null
  br i1 %tobool35.not, label %if.else.cleanup61_crit_edge, label %cleanup, !prof !26

if.else.cleanup61_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup61

cleanup:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  %call41 = tail call i32 @rsnd_mod_id(ptr noundef nonnull %25) #3
  %arrayidx42 = getelementptr [10 x i32], ptr @rsnd_cmd_init.path, i32 0, i32 %call41
  %26 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx42, align 4
  %call43 = tail call i32 @rsnd_mod_id(ptr noundef nonnull %25) #3
  %arrayidx44 = getelementptr [10 x i8], ptr @rsnd_cmd_init.cmd_case, i32 0, i32 %call43
  %28 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx44, align 1
  %conv = zext i8 %29 to i32
  %shl = shl nuw nsw i32 %conv, 16
  %or45 = or i32 %shl, %27
  br label %do.body

do.body:                                          ; preds = %cleanup, %if.end31.do.body_crit_edge, %land.rhs.do.body_crit_edge, %for.cond.preheader.do.body_crit_edge
  %data.4 = phi i32 [ %or45, %cleanup ], [ 0, %for.cond.preheader.do.body_crit_edge ], [ %data.2, %if.end31.do.body_crit_edge ], [ %data.096, %land.rhs.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rsnd_cmd_init.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rsnd_cmd_init, %if.then55)) #3
          to label %do.end [label %if.then55], !srcloc !27

if.then55:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rsnd_cmd_init.__UNIQUE_ID_ddebug242, ptr noundef %dev4, ptr noundef nonnull @.str.4, i32 noundef %data.4) #3
  br label %do.end

do.end:                                           ; preds = %if.then55, %do.body
  tail call void @rsnd_mod_write(ptr noundef %mod, i32 noundef 31, i32 noundef %data.4) #3
  %call57 = tail call i32 @rsnd_get_busif_shift(ptr noundef %io, ptr noundef %mod) #3
  %or58 = or i32 %call57, 1
  tail call void @rsnd_mod_write(ptr noundef %mod, i32 noundef 29, i32 noundef %or58) #3
  %call59 = tail call i32 @rsnd_get_dalign(ptr noundef %mod, ptr noundef %io) #3
  tail call void @rsnd_mod_write(ptr noundef %mod, i32 noundef 30, i32 noundef %call59) #3
  %call60 = tail call i32 @rsnd_adg_set_cmd_timsel_gen2(ptr noundef %mod, ptr noundef %io) #3
  br label %cleanup61

cleanup61:                                        ; preds = %do.end, %if.else.cleanup61_crit_edge, %if.end.thread.cleanup61_crit_edge, %if.end.cleanup61_crit_edge, %land.lhs.true.cleanup61_crit_edge
  %retval.1 = phi i32 [ 0, %do.end ], [ 0, %land.lhs.true.cleanup61_crit_edge ], [ -6, %if.end.cleanup61_crit_edge ], [ -5, %if.else.cleanup61_crit_edge ], [ -6, %if.end.thread.cleanup61_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rsnd_cmd_start(ptr noundef %mod, ptr nocapture noundef readnone %io, ptr nocapture noundef readnone %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @rsnd_mod_write(ptr noundef %mod, i32 noundef 28, i32 noundef 16) #3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rsnd_cmd_stop(ptr noundef %mod, ptr nocapture noundef readnone %io, ptr nocapture noundef readnone %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @rsnd_mod_write(ptr noundef %mod, i32 noundef 28, i32 noundef 0) #3
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rsnd_mod_get_status(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rsnd_cmd_debug_info(ptr noundef %m, ptr nocapture noundef readnone %io, ptr noundef %mod) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rsnd_mod_id_raw(ptr noundef %mod) #3
  %mul = shl i32 %call, 5
  %add = add i32 %mul, 384
  tail call void @rsnd_debugfs_mod_reg_show(ptr noundef %m, ptr noundef %mod, i32 noundef 0, i32 noundef %add, i32 noundef 48) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_mod_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rsnd_rdai_get(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rsnd_mod_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_get_busif_shift(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_get_dalign(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_adg_set_cmd_timsel_gen2(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rsnd_debugfs_mod_reg_show(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_mod_id_raw(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !14}
!llvm.module.flags = !{!15, !16, !17, !18, !19, !20, !21, !22}
!llvm.ident = !{!23}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/soc/sh/rcar/cmd.c", i32 141, i32 6}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../sound/soc/sh/rcar/cmd.c", i32 131, i32 11}
!4 = !{ptr @rsnd_cmd_ops, !5, !"rsnd_cmd_ops", i1 false, i1 false}
!5 = !{!"../sound/soc/sh/rcar/cmd.c", i32 130, i32 28}
!6 = !{ptr @rsnd_cmd_init.path, !7, !"path", i1 false, i1 false}
!7 = !{!"../sound/soc/sh/rcar/cmd.c", i32 31, i32 19}
!8 = !{ptr @rsnd_cmd_init.cmd_case, !9, !"cmd_case", i1 false, i1 false}
!9 = !{!"../sound/soc/sh/rcar/cmd.c", i32 70, i32 19}
!10 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/soc/sh/rcar/cmd.c", i32 88, i32 2}
!12 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @rsnd_cmd_init.__UNIQUE_ID_ddebug242, !11, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!15 = !{i32 1, !"wchar_size", i32 2}
!16 = !{i32 1, !"min_enum_size", i32 4}
!17 = !{i32 8, !"branch-target-enforcement", i32 0}
!18 = !{i32 8, !"sign-return-address", i32 0}
!19 = !{i32 8, !"sign-return-address-all", i32 0}
!20 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!21 = !{i32 7, !"uwtable", i32 1}
!22 = !{i32 7, !"frame-pointer", i32 2}
!23 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!24 = !{!"branch_weights", i32 1073205, i32 2146410443}
!25 = !{!"branch_weights", i32 2000, i32 1}
!26 = !{!"branch_weights", i32 1, i32 2000}
!27 = !{i64 2148750160, i64 2148750165, i64 2148750178, i64 2148750222, i64 2148750256, i64 2148750277}
