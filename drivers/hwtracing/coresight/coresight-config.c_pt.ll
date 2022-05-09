; ModuleID = '/llk/IR_all_yes/drivers/hwtracing/coresight/coresight-config.c_pt.bc'
source_filename = "../drivers/hwtracing/coresight/coresight-config.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.cscfg_feature_csdev = type { ptr, ptr, %struct.list_head, ptr, i32, ptr, i32, ptr }
%struct.list_head = type { ptr, ptr }
%struct.cscfg_feature_desc = type { ptr, ptr, %struct.list_head, i32, i32, ptr, i32, ptr, ptr, ptr }
%struct.cscfg_parameter_desc = type { ptr, i64 }
%struct.cscfg_parameter_csdev = type { ptr, ptr, i64, i8 }
%struct.cscfg_regval_desc = type { %struct.anon, %union.anon }
%struct.anon = type { i32 }
%union.anon = type { i64 }
%struct.cscfg_regval_csdev = type { %struct.cscfg_regval_desc, ptr }
%struct.cscfg_config_csdev = type { ptr, ptr, i8, %struct.list_head, i32, [0 x ptr] }
%struct.coresight_device = type { ptr, i32, %union.coresight_dev_subtype, ptr, %struct.csdev_access, %struct.device, ptr, i8, i8, i8, ptr, ptr, ptr, i32, i8, i8, %struct.list_head, %struct.list_head, %struct.spinlock, ptr }
%union.coresight_dev_subtype = type { %struct.anon.101 }
%struct.anon.101 = type { i32, i32 }
%struct.csdev_access = type { i8, %union.anon.102 }
%union.anon.102 = type { %struct.anon.103 }
%struct.anon.103 = type { ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.3 }
%union.anon.3 = type { i32 }
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
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.cscfg_config_desc = type { ptr, ptr, %struct.list_head, i32, ptr, i32, i32, ptr, ptr, %struct.atomic_t, ptr, ptr }
%struct.anon.0 = type { i32, i32 }

@cscfg_update_presets.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 42, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"coresight\00", [22 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cscfg_update_presets\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"drivers/hwtracing/coresight/coresight-config.c\00", [49 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"set param %s (%lld)\00", [44 x i8] zeroinitializer }, align 32
@cscfg_update_presets.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 44, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"set param %s (%d)\00", [46 x i8] zeroinitializer }, align 32
@cscfg_update_curr_params.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.3, i8 0, i8 52, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cscfg_update_curr_params\00", [39 x i8] zeroinitializer }, align 32
@cscfg_update_curr_params.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.4, i8 0, i8 53, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@cscfg_prog_config.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.6, ptr @.str.2, ptr @.str.7, i8 0, i8 59, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cscfg_prog_config\00", [46 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cfg %s;  %s feature:%s\00", [41 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"enable\00", [25 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"disable\00", [24 x i8] zeroinitializer }, align 32
@cscfg_set_on_enable.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.2, ptr @.str.11, i8 0, i8 21, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cscfg_set_on_enable\00", [44 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Feature %s: %s\00", [17 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"set on enable\00", [18 x i8] zeroinitializer }, align 32
@cscfg_save_on_disable.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.2, ptr @.str.11, i8 0, i8 24, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cscfg_save_on_disable\00", [42 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"save on disable\00", [16 x i8] zeroinitializer }, align 32
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 170, i32 5 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 175, i32 5 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 209, i32 5 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 235, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 83, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.58 = private constant [50 x i8] c"../drivers/hwtracing/coresight/coresight-config.c\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 98, i32 2 }
@llvm.compiler.used = appending global [15 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cscfg_reset_feat(ptr nocapture noundef readonly %feat_csdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %nr_params = getelementptr inbounds %struct.cscfg_feature_csdev, ptr %feat_csdev, i32 0, i32 4
  %0 = ptrtoint ptr %nr_params to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nr_params, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp34 = icmp sgt i32 %1, 0
  br i1 %cmp34, label %for.body.lr.ph, label %entry.for.cond2.preheader_crit_edge

entry.for.cond2.preheader_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.cond2.preheader

for.body.lr.ph:                                   ; preds = %entry
  %params_csdev = getelementptr inbounds %struct.cscfg_feature_csdev, ptr %feat_csdev, i32 0, i32 5
  br label %for.body

for.cond2.preheader:                              ; preds = %for.body.for.cond2.preheader_crit_edge, %entry.for.cond2.preheader_crit_edge
  %nr_regs = getelementptr inbounds %struct.cscfg_feature_csdev, ptr %feat_csdev, i32 0, i32 6
  %2 = ptrtoint ptr %nr_regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nr_regs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp336 = icmp sgt i32 %3, 0
  br i1 %cmp336, label %for.body4.lr.ph, label %for.cond2.preheader.for.end15_crit_edge

for.cond2.preheader.for.end15_crit_edge:          ; preds = %for.cond2.preheader
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end15

for.body4.lr.ph:                                  ; preds = %for.cond2.preheader
  %regs_csdev = getelementptr inbounds %struct.cscfg_feature_csdev, ptr %feat_csdev, i32 0, i32 7
  %params_csdev.i = getelementptr inbounds %struct.cscfg_feature_csdev, ptr %feat_csdev, i32 0, i32 5
  br label %for.body4

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.035 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %4 = ptrtoint ptr %feat_csdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %feat_csdev, align 4
  %params_desc = getelementptr inbounds %struct.cscfg_feature_desc, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %params_desc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %params_desc, align 4
  %value = getelementptr %struct.cscfg_parameter_desc, ptr %7, i32 %i.035, i32 1
  %8 = ptrtoint ptr %value to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %value, align 8
  %10 = ptrtoint ptr %params_csdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %params_csdev, align 4
  %current_value = getelementptr %struct.cscfg_parameter_csdev, ptr %11, i32 %i.035, i32 2
  %12 = ptrtoint ptr %current_value to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %9, ptr %current_value, align 8
  %inc = add nuw nsw i32 %i.035, 1
  %13 = ptrtoint ptr %nr_params to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %nr_params, align 4
  %cmp = icmp slt i32 %inc, %14
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.cond2.preheader_crit_edge

for.body.for.cond2.preheader_crit_edge:           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.cond2.preheader

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.body4:                                        ; preds = %for.inc13.for.body4_crit_edge, %for.body4.lr.ph
  %i.137 = phi i32 [ 0, %for.body4.lr.ph ], [ %inc14, %for.inc13.for.body4_crit_edge ]
  %15 = ptrtoint ptr %feat_csdev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %feat_csdev, align 4
  %regs_desc = getelementptr inbounds %struct.cscfg_feature_desc, ptr %16, i32 0, i32 7
  %17 = ptrtoint ptr %regs_desc to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs_desc, align 4
  %arrayidx6 = getelementptr %struct.cscfg_regval_desc, ptr %18, i32 %i.137
  %19 = ptrtoint ptr %regs_csdev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regs_csdev, align 4
  %arrayidx7 = getelementptr %struct.cscfg_regval_csdev, ptr %20, i32 %i.137
  %21 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %21)
  %bf.load = load i32, ptr %arrayidx6, align 8
  %bf.lshr = and i32 %bf.load, -16777216
  %22 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %22)
  %bf.load9 = load i32, ptr %arrayidx7, align 8
  %bf.clear = and i32 %bf.load9, 16777215
  %bf.set = or i32 %bf.clear, %bf.lshr
  store i32 %bf.set, ptr %arrayidx7, align 8
  %bf.load10 = load i32, ptr %arrayidx6, align 8
  %23 = and i32 %bf.load10, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not = icmp eq i32 %23, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %for.body4
  %24 = ptrtoint ptr %params_csdev.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %params_csdev.i, align 4
  %26 = getelementptr %struct.cscfg_regval_desc, ptr %18, i32 %i.137, i32 1
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %26, align 8
  %reg_csdev1.i = getelementptr %struct.cscfg_parameter_csdev, ptr %25, i32 %28, i32 1
  %29 = ptrtoint ptr %reg_csdev1.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %arrayidx7, ptr %reg_csdev1.i, align 4
  %30 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %30)
  %bf.load.i = load i32, ptr %arrayidx7, align 8
  %31 = and i32 %bf.load.i, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not.i = icmp eq i32 %31, 0
  %val64.i = getelementptr %struct.cscfg_parameter_csdev, ptr %25, i32 %28, i32 3
  %.lobit.i = lshr exact i32 %31, 25
  %32 = trunc i32 %.lobit.i to i8
  %33 = ptrtoint ptr %val64.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %val64.i, align 8
  %current_value6.i = getelementptr %struct.cscfg_parameter_csdev, ptr %25, i32 %28, i32 2
  %34 = ptrtoint ptr %current_value6.i to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %current_value6.i, align 8
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  %36 = getelementptr inbounds %struct.cscfg_regval_desc, ptr %arrayidx7, i32 0, i32 1
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %35, ptr %36, align 8
  br label %for.inc13

if.else.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  %conv.i = trunc i64 %35 to i32
  %38 = getelementptr inbounds %struct.cscfg_regval_desc, ptr %arrayidx7, i32 0, i32 1
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %conv.i, ptr %38, align 8
  br label %for.inc13

if.else:                                          ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #5
  %40 = getelementptr %struct.cscfg_regval_desc, ptr %18, i32 %i.137, i32 1
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %40, align 8
  %43 = getelementptr inbounds %struct.cscfg_regval_desc, ptr %arrayidx7, i32 0, i32 1
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %42, ptr %43, align 8
  br label %for.inc13

for.inc13:                                        ; preds = %if.else, %if.else.i, %if.then.i
  %inc14 = add nuw nsw i32 %i.137, 1
  %45 = ptrtoint ptr %nr_regs to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %nr_regs, align 4
  %cmp3 = icmp slt i32 %inc14, %46
  br i1 %cmp3, label %for.inc13.for.body4_crit_edge, label %for.inc13.for.end15_crit_edge

for.inc13.for.end15_crit_edge:                    ; preds = %for.inc13
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end15

for.inc13.for.body4_crit_edge:                    ; preds = %for.inc13
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body4

for.end15:                                        ; preds = %for.inc13.for.end15_crit_edge, %for.cond2.preheader.for.end15_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cscfg_csdev_enable_config(ptr nocapture noundef readonly %config_csdev, i32 noundef %preset) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %preset)
  %tobool.not = icmp eq i32 %preset, 0
  br i1 %tobool.not, label %if.end.thread, label %if.end

if.end.thread:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call fastcc void @cscfg_update_curr_params(ptr noundef %config_csdev)
  br label %if.then3

if.end:                                           ; preds = %entry
  %call = tail call fastcc i32 @cscfg_update_presets(ptr noundef %config_csdev, i32 noundef %preset)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.end.if.then3_crit_edge, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end5

if.end.if.then3_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then3

if.then3:                                         ; preds = %if.end.if.then3_crit_edge, %if.end.thread
  %nr_feat.i = getelementptr inbounds %struct.cscfg_config_csdev, ptr %config_csdev, i32 0, i32 4
  %0 = ptrtoint ptr %nr_feat.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nr_feat.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp2.i = icmp sgt i32 %1, 0
  br i1 %cmp2.i, label %if.then3.for.body.i_crit_edge, label %if.then3.if.end5_crit_edge

if.then3.if.end5_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end5

if.then3.for.body.i_crit_edge:                    ; preds = %if.then3
  br label %for.body.i

for.body.i:                                       ; preds = %do.end.i.for.body.i_crit_edge, %if.then3.for.body.i_crit_edge
  %i.03.i = phi i32 [ %inc.i, %do.end.i.for.body.i_crit_edge ], [ 0, %if.then3.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.cscfg_config_csdev, ptr %config_csdev, i32 0, i32 5, i32 %i.03.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  %csdev1.i = getelementptr inbounds %struct.cscfg_feature_csdev, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %csdev1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %csdev1.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cscfg_prog_config.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cscfg_csdev_enable_config, %if.then.i)) #3
          to label %do.end.i [label %if.then.i], !srcloc !38

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  %dev.i = getelementptr inbounds %struct.coresight_device, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %config_csdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %config_csdev, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %3, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cscfg_prog_config.__UNIQUE_ID_ddebug303, ptr noundef %dev.i, ptr noundef nonnull @.str.7, ptr noundef %9, ptr noundef nonnull @.str.8, ptr noundef %13) #3
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %for.body.i
  tail call fastcc void @cscfg_set_on_enable(ptr noundef %3) #3
  %inc.i = add nuw nsw i32 %i.03.i, 1
  %14 = ptrtoint ptr %nr_feat.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %nr_feat.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %15
  br i1 %cmp.i, label %do.end.i.for.body.i_crit_edge, label %do.end.i.if.end5_crit_edge

do.end.i.if.end5_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end5

do.end.i.for.body.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i

if.end5:                                          ; preds = %do.end.i.if.end5_crit_edge, %if.then3.if.end5_crit_edge, %if.end.if.end5_crit_edge
  %err.1 = phi i32 [ %call, %if.end.if.end5_crit_edge ], [ 0, %if.then3.if.end5_crit_edge ], [ 0, %do.end.i.if.end5_crit_edge ]
  ret i32 %err.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cscfg_update_presets(ptr nocapture noundef readonly %config_csdev, i32 noundef %preset) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %config_csdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %config_csdev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %preset)
  %cmp = icmp slt i32 %preset, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %nr_presets = getelementptr inbounds %struct.cscfg_config_desc, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %nr_presets to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nr_presets, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %preset)
  %cmp2 = icmp slt i32 %3, %preset
  br i1 %cmp2, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %nr_total_params = getelementptr inbounds %struct.cscfg_config_desc, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %nr_total_params to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nr_total_params, align 4
  %presets = getelementptr inbounds %struct.cscfg_config_desc, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %presets to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %presets, align 4
  %sub = add nsw i32 %preset, -1
  %mul = mul i32 %5, %sub
  %arrayidx = getelementptr i64, ptr %7, i32 %mul
  %nr_feat = getelementptr inbounds %struct.cscfg_config_csdev, ptr %config_csdev, i32 0, i32 4
  %8 = ptrtoint ptr %nr_feat to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nr_feat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp394 = icmp sgt i32 %9, 0
  br i1 %cmp394, label %for.body.lr.ph, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end
  %csdev = getelementptr inbounds %struct.cscfg_config_csdev, ptr %config_csdev, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc49.for.body_crit_edge, %for.body.lr.ph
  %i.096 = phi i32 [ 0, %for.body.lr.ph ], [ %inc50, %for.inc49.for.body_crit_edge ]
  %val_idx.095 = phi i32 [ 0, %for.body.lr.ph ], [ %val_idx.2, %for.inc49.for.body_crit_edge ]
  %arrayidx4 = getelementptr %struct.cscfg_config_csdev, ptr %config_csdev, i32 0, i32 5, i32 %i.096
  %10 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx4, align 4
  %nr_params = getelementptr inbounds %struct.cscfg_feature_csdev, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %nr_params to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nr_params, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not = icmp eq i32 %13, 0
  br i1 %tobool.not, label %for.body.for.inc49_crit_edge, label %for.cond7.preheader

for.body.for.inc49_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc49

for.cond7.preheader:                              ; preds = %for.body
  %14 = ptrtoint ptr %nr_params to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %nr_params, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp990 = icmp sgt i32 %15, 0
  br i1 %cmp990, label %for.body10.lr.ph, label %for.cond7.preheader.for.end_crit_edge

for.cond7.preheader.for.end_crit_edge:            ; preds = %for.cond7.preheader
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.body10.lr.ph:                                 ; preds = %for.cond7.preheader
  %params_csdev = getelementptr inbounds %struct.cscfg_feature_csdev, ptr %11, i32 0, i32 5
  br label %for.body10

for.body10:                                       ; preds = %for.inc.for.body10_crit_edge, %for.body10.lr.ph
  %j.092 = phi i32 [ 0, %for.body10.lr.ph ], [ %inc44, %for.inc.for.body10_crit_edge ]
  %val_idx.191 = phi i32 [ %val_idx.095, %for.body10.lr.ph ], [ %inc, %for.inc.for.body10_crit_edge ]
  %16 = ptrtoint ptr %params_csdev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %params_csdev, align 4
  %18 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %11, align 4
  %params_desc = getelementptr inbounds %struct.cscfg_feature_desc, ptr %19, i32 0, i32 5
  %20 = ptrtoint ptr %params_desc to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %params_desc, align 4
  %arrayidx12 = getelementptr %struct.cscfg_parameter_desc, ptr %21, i32 %j.092
  %22 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx12, align 8
  %inc = add i32 %val_idx.191, 1
  %arrayidx14 = getelementptr i64, ptr %arrayidx, i32 %val_idx.191
  %24 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %arrayidx14, align 8
  %val64 = getelementptr %struct.cscfg_parameter_csdev, ptr %17, i32 %j.092, i32 3
  %26 = ptrtoint ptr %val64 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %val64, align 8, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool15.not = icmp eq i8 %27, 0
  br i1 %tobool15.not, label %if.else, label %do.body

do.body:                                          ; preds = %for.body10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cscfg_update_presets.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cscfg_update_presets, %if.then20)) #3
          to label %do.end [label %if.then20], !srcloc !38

if.then20:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  %28 = ptrtoint ptr %csdev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %csdev, align 4
  %dev = getelementptr inbounds %struct.coresight_device, ptr %29, i32 0, i32 5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cscfg_update_presets.__UNIQUE_ID_ddebug299, ptr noundef %dev, ptr noundef nonnull @.str.3, ptr noundef %23, i64 noundef %25) #3
  br label %do.end

do.end:                                           ; preds = %if.then20, %do.body
  %reg_csdev = getelementptr %struct.cscfg_parameter_csdev, ptr %17, i32 %j.092, i32 1
  %30 = ptrtoint ptr %reg_csdev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %reg_csdev, align 4
  %32 = getelementptr inbounds %struct.cscfg_regval_desc, ptr %31, i32 0, i32 1
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %25, ptr %32, align 8
  br label %for.inc

if.else:                                          ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #5
  %conv = trunc i64 %25 to i32
  %reg_csdev22 = getelementptr %struct.cscfg_parameter_csdev, ptr %17, i32 %j.092, i32 1
  %34 = ptrtoint ptr %reg_csdev22 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %reg_csdev22, align 4
  %36 = getelementptr inbounds %struct.cscfg_regval_desc, ptr %35, i32 0, i32 1
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %conv, ptr %36, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cscfg_update_presets.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cscfg_update_presets, %if.then36)) #3
          to label %for.inc [label %if.then36], !srcloc !38

if.then36:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  %38 = ptrtoint ptr %csdev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %csdev, align 4
  %dev38 = getelementptr inbounds %struct.coresight_device, ptr %39, i32 0, i32 5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cscfg_update_presets.__UNIQUE_ID_ddebug300, ptr noundef %dev38, ptr noundef nonnull @.str.4, ptr noundef %23, i32 noundef %conv) #3
  br label %for.inc

for.inc:                                          ; preds = %if.then36, %if.else, %do.end
  %inc44 = add nuw nsw i32 %j.092, 1
  %40 = ptrtoint ptr %nr_params to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %nr_params, align 4
  %cmp9 = icmp slt i32 %inc44, %41
  br i1 %cmp9, label %for.inc.for.body10_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.inc.for.body10_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body10

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond7.preheader.for.end_crit_edge
  %val_idx.1.lcssa = phi i32 [ %val_idx.095, %for.cond7.preheader.for.end_crit_edge ], [ %inc, %for.inc.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %val_idx.1.lcssa, i32 %5)
  %cmp45.not = icmp slt i32 %val_idx.1.lcssa, %5
  br i1 %cmp45.not, label %for.end.for.inc49_crit_edge, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.end.for.inc49_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc49

for.inc49:                                        ; preds = %for.end.for.inc49_crit_edge, %for.body.for.inc49_crit_edge
  %val_idx.2 = phi i32 [ %val_idx.1.lcssa, %for.end.for.inc49_crit_edge ], [ %val_idx.095, %for.body.for.inc49_crit_edge ]
  %inc50 = add nuw nsw i32 %i.096, 1
  %42 = ptrtoint ptr %nr_feat to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %nr_feat, align 4
  %cmp3 = icmp slt i32 %inc50, %43
  br i1 %cmp3, label %for.inc49.for.body_crit_edge, label %for.inc49.cleanup_crit_edge

for.inc49.cleanup_crit_edge:                      ; preds = %for.inc49
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.inc49.for.body_crit_edge:                     ; preds = %for.inc49
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

cleanup:                                          ; preds = %for.inc49.cleanup_crit_edge, %for.end.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %for.inc49.cleanup_crit_edge ], [ 0, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cscfg_update_curr_params(ptr nocapture noundef readonly %config_csdev) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %nr_feat = getelementptr inbounds %struct.cscfg_config_csdev, ptr %config_csdev, i32 0, i32 4
  %0 = ptrtoint ptr %nr_feat to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nr_feat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp9 = icmp sgt i32 %1, 0
  br i1 %cmp9, label %for.body.lr.ph, label %entry.for.end39_crit_edge

entry.for.end39_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end39

for.body.lr.ph:                                   ; preds = %entry
  %csdev = getelementptr inbounds %struct.cscfg_config_csdev, ptr %config_csdev, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc37.for.body_crit_edge, %for.body.lr.ph
  %i.010 = phi i32 [ 0, %for.body.lr.ph ], [ %inc38, %for.inc37.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.cscfg_config_csdev, ptr %config_csdev, i32 0, i32 5, i32 %i.010
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %nr_params = getelementptr inbounds %struct.cscfg_feature_csdev, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %nr_params to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nr_params, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %for.body.for.inc37_crit_edge, label %for.cond1.preheader

for.body.for.inc37_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc37

for.cond1.preheader:                              ; preds = %for.body
  %6 = ptrtoint ptr %nr_params to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nr_params, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp36 = icmp sgt i32 %7, 0
  br i1 %cmp36, label %for.body4.lr.ph, label %for.cond1.preheader.for.inc37_crit_edge

for.cond1.preheader.for.inc37_crit_edge:          ; preds = %for.cond1.preheader
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc37

for.body4.lr.ph:                                  ; preds = %for.cond1.preheader
  %params_csdev = getelementptr inbounds %struct.cscfg_feature_csdev, ptr %3, i32 0, i32 5
  br label %for.body4

for.body4:                                        ; preds = %for.inc.for.body4_crit_edge, %for.body4.lr.ph
  %j.07 = phi i32 [ 0, %for.body4.lr.ph ], [ %inc, %for.inc.for.body4_crit_edge ]
  %8 = ptrtoint ptr %params_csdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %params_csdev, align 4
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %3, align 4
  %params_desc = getelementptr inbounds %struct.cscfg_feature_desc, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %params_desc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %params_desc, align 4
  %arrayidx6 = getelementptr %struct.cscfg_parameter_desc, ptr %13, i32 %j.07
  %14 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx6, align 8
  %current_value = getelementptr %struct.cscfg_parameter_csdev, ptr %9, i32 %j.07, i32 2
  %16 = ptrtoint ptr %current_value to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %current_value, align 8
  %val64 = getelementptr %struct.cscfg_parameter_csdev, ptr %9, i32 %j.07, i32 3
  %18 = ptrtoint ptr %val64 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %val64, align 8, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool8.not = icmp eq i8 %19, 0
  br i1 %tobool8.not, label %if.else, label %do.body

do.body:                                          ; preds = %for.body4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cscfg_update_curr_params.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cscfg_update_curr_params, %if.then13)) #3
          to label %do.end [label %if.then13], !srcloc !38

if.then13:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  %20 = ptrtoint ptr %csdev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %csdev, align 4
  %dev = getelementptr inbounds %struct.coresight_device, ptr %21, i32 0, i32 5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cscfg_update_curr_params.__UNIQUE_ID_ddebug301, ptr noundef %dev, ptr noundef nonnull @.str.3, ptr noundef %15, i64 noundef %17) #3
  br label %do.end

do.end:                                           ; preds = %if.then13, %do.body
  %reg_csdev = getelementptr %struct.cscfg_parameter_csdev, ptr %9, i32 %j.07, i32 1
  %22 = ptrtoint ptr %reg_csdev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %reg_csdev, align 4
  %24 = getelementptr inbounds %struct.cscfg_regval_desc, ptr %23, i32 0, i32 1
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %17, ptr %24, align 8
  br label %for.inc

if.else:                                          ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #5
  %conv = trunc i64 %17 to i32
  %reg_csdev15 = getelementptr %struct.cscfg_parameter_csdev, ptr %9, i32 %j.07, i32 1
  %26 = ptrtoint ptr %reg_csdev15 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %reg_csdev15, align 4
  %28 = getelementptr inbounds %struct.cscfg_regval_desc, ptr %27, i32 0, i32 1
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %conv, ptr %28, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cscfg_update_curr_params.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cscfg_update_curr_params, %if.then29)) #3
          to label %for.inc [label %if.then29], !srcloc !38

if.then29:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  %30 = ptrtoint ptr %csdev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %csdev, align 4
  %dev31 = getelementptr inbounds %struct.coresight_device, ptr %31, i32 0, i32 5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cscfg_update_curr_params.__UNIQUE_ID_ddebug302, ptr noundef %dev31, ptr noundef nonnull @.str.4, ptr noundef %15, i32 noundef %conv) #3
  br label %for.inc

for.inc:                                          ; preds = %if.then29, %if.else, %do.end
  %inc = add nuw nsw i32 %j.07, 1
  %32 = ptrtoint ptr %nr_params to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %nr_params, align 4
  %cmp3 = icmp slt i32 %inc, %33
  br i1 %cmp3, label %for.inc.for.body4_crit_edge, label %for.inc.for.inc37_crit_edge

for.inc.for.inc37_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc37

for.inc.for.body4_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body4

for.inc37:                                        ; preds = %for.inc.for.inc37_crit_edge, %for.cond1.preheader.for.inc37_crit_edge, %for.body.for.inc37_crit_edge
  %inc38 = add nuw nsw i32 %i.010, 1
  %34 = ptrtoint ptr %nr_feat to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %nr_feat, align 4
  %cmp = icmp slt i32 %inc38, %35
  br i1 %cmp, label %for.inc37.for.body_crit_edge, label %for.inc37.for.end39_crit_edge

for.inc37.for.end39_crit_edge:                    ; preds = %for.inc37
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end39

for.inc37.for.body_crit_edge:                     ; preds = %for.inc37
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.end39:                                        ; preds = %for.inc37.for.end39_crit_edge, %entry.for.end39_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cscfg_csdev_disable_config(ptr nocapture noundef readonly %config_csdev) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %nr_feat.i = getelementptr inbounds %struct.cscfg_config_csdev, ptr %config_csdev, i32 0, i32 4
  %0 = ptrtoint ptr %nr_feat.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nr_feat.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp2.i = icmp sgt i32 %1, 0
  br i1 %cmp2.i, label %entry.for.body.i_crit_edge, label %entry.cscfg_prog_config.exit_crit_edge

entry.cscfg_prog_config.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cscfg_prog_config.exit

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

for.body.i:                                       ; preds = %do.end.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.03.i = phi i32 [ %inc.i, %do.end.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.cscfg_config_csdev, ptr %config_csdev, i32 0, i32 5, i32 %i.03.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  %csdev1.i = getelementptr inbounds %struct.cscfg_feature_csdev, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %csdev1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %csdev1.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cscfg_prog_config.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cscfg_csdev_disable_config, %if.then.i)) #3
          to label %do.end.i [label %if.then.i], !srcloc !38

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  %dev.i = getelementptr inbounds %struct.coresight_device, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %config_csdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %config_csdev, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %3, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cscfg_prog_config.__UNIQUE_ID_ddebug303, ptr noundef %dev.i, ptr noundef nonnull @.str.7, ptr noundef %9, ptr noundef nonnull @.str.9, ptr noundef %13) #3
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %for.body.i
  tail call fastcc void @cscfg_save_on_disable(ptr noundef %3) #3
  %inc.i = add nuw nsw i32 %i.03.i, 1
  %14 = ptrtoint ptr %nr_feat.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %nr_feat.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %15
  br i1 %cmp.i, label %do.end.i.for.body.i_crit_edge, label %do.end.i.cscfg_prog_config.exit_crit_edge

do.end.i.cscfg_prog_config.exit_crit_edge:        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cscfg_prog_config.exit

do.end.i.for.body.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i

cscfg_prog_config.exit:                           ; preds = %do.end.i.cscfg_prog_config.exit_crit_edge, %entry.cscfg_prog_config.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cscfg_set_on_enable(ptr nocapture noundef readonly %feat_csdev) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_spinlock = getelementptr inbounds %struct.cscfg_feature_csdev, ptr %feat_csdev, i32 0, i32 3
  %0 = ptrtoint ptr %drv_spinlock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_spinlock, align 4
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #3
  %nr_regs = getelementptr inbounds %struct.cscfg_feature_csdev, ptr %feat_csdev, i32 0, i32 6
  %2 = ptrtoint ptr %nr_regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nr_regs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp52 = icmp sgt i32 %3, 0
  br i1 %cmp52, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %regs_csdev = getelementptr inbounds %struct.cscfg_feature_csdev, ptr %feat_csdev, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %cscfg_set_reg.exit.for.body_crit_edge, %for.body.lr.ph
  %i.03 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cscfg_set_reg.exit.for.body_crit_edge ]
  %4 = ptrtoint ptr %regs_csdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs_csdev, align 4
  %arrayidx = getelementptr %struct.cscfg_regval_csdev, ptr %5, i32 %i.03
  %driver_regval.i = getelementptr %struct.cscfg_regval_csdev, ptr %5, i32 %i.03, i32 1
  %6 = ptrtoint ptr %driver_regval.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_regval.i, align 8
  %8 = getelementptr inbounds %struct.cscfg_regval_desc, ptr %arrayidx, i32 0, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 8
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %bf.load.i = load i32, ptr %arrayidx, align 8
  %12 = and i32 %bf.load.i, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i = icmp eq i32 %12, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  %13 = ptrtoint ptr %8 to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %8, align 8
  %15 = ptrtoint ptr %7 to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %14, ptr %7, align 8
  br label %cscfg_set_reg.exit

if.end.i:                                         ; preds = %for.body
  %16 = and i32 %bf.load.i, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool8.not.i = icmp eq i32 %16, 0
  br i1 %tobool8.not.i, label %if.end.i.if.end17.i_crit_edge, label %if.then9.i

if.end.i.if.end17.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end17.i

if.then9.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  %17 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %7, align 4
  %mask32.i = getelementptr inbounds %struct.anon.0, ptr %8, i32 0, i32 1
  %19 = ptrtoint ptr %mask32.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %mask32.i, align 4
  %neg.i = xor i32 %20, -1
  %and11.i = and i32 %18, %neg.i
  %and16.i = and i32 %20, %10
  %or.i = or i32 %and11.i, %and16.i
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.then9.i, %if.end.i.if.end17.i_crit_edge
  %tmp32.0.i = phi i32 [ %or.i, %if.then9.i ], [ %10, %if.end.i.if.end17.i_crit_edge ]
  %21 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %tmp32.0.i, ptr %7, align 4
  br label %cscfg_set_reg.exit

cscfg_set_reg.exit:                               ; preds = %if.end17.i, %if.then.i
  %inc = add nuw nsw i32 %i.03, 1
  %22 = ptrtoint ptr %nr_regs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %nr_regs, align 4
  %cmp5 = icmp slt i32 %inc, %23
  br i1 %cmp5, label %cscfg_set_reg.exit.for.body_crit_edge, label %cscfg_set_reg.exit.for.end_crit_edge

cscfg_set_reg.exit.for.end_crit_edge:             ; preds = %cscfg_set_reg.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

cscfg_set_reg.exit.for.body_crit_edge:            ; preds = %cscfg_set_reg.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.end:                                          ; preds = %cscfg_set_reg.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %24 = ptrtoint ptr %drv_spinlock to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %drv_spinlock, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %25, i32 noundef %call2) #3
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cscfg_set_on_enable.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cscfg_set_on_enable, %if.then)) #3
          to label %do.end14 [label %if.then], !srcloc !38

if.then:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #5
  %csdev = getelementptr inbounds %struct.cscfg_feature_csdev, ptr %feat_csdev, i32 0, i32 1
  %26 = ptrtoint ptr %csdev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %csdev, align 4
  %dev = getelementptr inbounds %struct.coresight_device, ptr %27, i32 0, i32 5
  %28 = ptrtoint ptr %feat_csdev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %feat_csdev, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cscfg_set_on_enable.__UNIQUE_ID_ddebug297, ptr noundef %dev, ptr noundef nonnull @.str.11, ptr noundef %31, ptr noundef nonnull @.str.12) #3
  br label %do.end14

do.end14:                                         ; preds = %if.then, %for.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cscfg_save_on_disable(ptr nocapture noundef readonly %feat_csdev) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_spinlock = getelementptr inbounds %struct.cscfg_feature_csdev, ptr %feat_csdev, i32 0, i32 3
  %0 = ptrtoint ptr %drv_spinlock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_spinlock, align 4
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #3
  %nr_regs = getelementptr inbounds %struct.cscfg_feature_csdev, ptr %feat_csdev, i32 0, i32 6
  %2 = ptrtoint ptr %nr_regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nr_regs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp523 = icmp sgt i32 %3, 0
  br i1 %cmp523, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %regs_csdev = getelementptr inbounds %struct.cscfg_feature_csdev, ptr %feat_csdev, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %cscfg_save_reg.exit.for.body_crit_edge, %for.body.lr.ph
  %i.024 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cscfg_save_reg.exit.for.body_crit_edge ]
  %4 = ptrtoint ptr %regs_csdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs_csdev, align 4
  %arrayidx = getelementptr %struct.cscfg_regval_csdev, ptr %5, i32 %i.024
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %bf.load.i = load i32, ptr %arrayidx, align 8
  %7 = and i32 %bf.load.i, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %for.body.cscfg_save_reg.exit_crit_edge, label %if.end.i

for.body.cscfg_save_reg.exit_crit_edge:           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %cscfg_save_reg.exit

if.end.i:                                         ; preds = %for.body
  %8 = and i32 %bf.load.i, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool5.not.i = icmp eq i32 %8, 0
  %driver_regval8.i = getelementptr %struct.cscfg_regval_csdev, ptr %5, i32 %i.024, i32 1
  %9 = ptrtoint ptr %driver_regval8.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %driver_regval8.i, align 8
  br i1 %tobool5.not.i, label %if.else.i, label %if.then6.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %10, align 8
  %13 = getelementptr inbounds %struct.cscfg_regval_desc, ptr %arrayidx, i32 0, i32 1
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %12, ptr %13, align 8
  br label %cscfg_save_reg.exit

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  %15 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %10, align 4
  %17 = getelementptr inbounds %struct.cscfg_regval_desc, ptr %arrayidx, i32 0, i32 1
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %16, ptr %17, align 8
  br label %cscfg_save_reg.exit

cscfg_save_reg.exit:                              ; preds = %if.else.i, %if.then6.i, %for.body.cscfg_save_reg.exit_crit_edge
  %inc = add nuw nsw i32 %i.024, 1
  %19 = ptrtoint ptr %nr_regs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %nr_regs, align 4
  %cmp5 = icmp slt i32 %inc, %20
  br i1 %cmp5, label %cscfg_save_reg.exit.for.body_crit_edge, label %cscfg_save_reg.exit.for.end_crit_edge

cscfg_save_reg.exit.for.end_crit_edge:            ; preds = %cscfg_save_reg.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

cscfg_save_reg.exit.for.body_crit_edge:           ; preds = %cscfg_save_reg.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.end:                                          ; preds = %cscfg_save_reg.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %21 = ptrtoint ptr %drv_spinlock to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %drv_spinlock, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %22, i32 noundef %call2) #3
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cscfg_save_on_disable.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cscfg_save_on_disable, %if.then)) #3
          to label %do.end14 [label %if.then], !srcloc !38

if.then:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #5
  %csdev = getelementptr inbounds %struct.cscfg_feature_csdev, ptr %feat_csdev, i32 0, i32 1
  %23 = ptrtoint ptr %csdev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %csdev, align 4
  %dev = getelementptr inbounds %struct.coresight_device, ptr %24, i32 0, i32 5
  %25 = ptrtoint ptr %feat_csdev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %feat_csdev, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cscfg_save_on_disable.__UNIQUE_ID_ddebug298, ptr noundef %dev, ptr noundef nonnull @.str.11, ptr noundef %28, ptr noundef nonnull @.str.14) #3
  br label %do.end14

do.end14:                                         ; preds = %if.then, %for.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !11, !12, !14, !16, !17, !18, !19, !20, !22, !23, !24, !25, !27, !28}
!llvm.module.flags = !{!29, !30, !31, !32, !33, !34, !35, !36}
!llvm.ident = !{!37}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/hwtracing/coresight/coresight-config.c", i32 170, i32 5}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @cscfg_update_presets.__UNIQUE_ID_ddebug299, !1, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/hwtracing/coresight/coresight-config.c", i32 175, i32 5}
!8 = !{ptr @cscfg_update_presets.__UNIQUE_ID_ddebug300, !7, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/hwtracing/coresight/coresight-config.c", i32 209, i32 5}
!11 = !{ptr @cscfg_update_curr_params.__UNIQUE_ID_ddebug301, !10, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!12 = !{ptr @cscfg_update_curr_params.__UNIQUE_ID_ddebug302, !13, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!13 = !{!"../drivers/hwtracing/coresight/coresight-config.c", i32 214, i32 5}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/hwtracing/coresight/coresight-config.c", i32 235, i32 3}
!16 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @cscfg_prog_config.__UNIQUE_ID_ddebug303, !15, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!18 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/hwtracing/coresight/coresight-config.c", i32 83, i32 2}
!22 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @cscfg_set_on_enable.__UNIQUE_ID_ddebug297, !21, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!24 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.13, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/hwtracing/coresight/coresight-config.c", i32 98, i32 2}
!27 = !{ptr @cscfg_save_on_disable.__UNIQUE_ID_ddebug298, !26, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!28 = !{ptr @.str.14, !26, !"<string literal>", i1 false, i1 false}
!29 = !{i32 1, !"wchar_size", i32 2}
!30 = !{i32 1, !"min_enum_size", i32 4}
!31 = !{i32 8, !"branch-target-enforcement", i32 0}
!32 = !{i32 8, !"sign-return-address", i32 0}
!33 = !{i32 8, !"sign-return-address-all", i32 0}
!34 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!35 = !{i32 7, !"uwtable", i32 1}
!36 = !{i32 7, !"frame-pointer", i32 2}
!37 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!38 = !{i64 2148324238, i64 2148324243, i64 2148324256, i64 2148324300, i64 2148324334, i64 2148324355}
!39 = !{i8 0, i8 2}
