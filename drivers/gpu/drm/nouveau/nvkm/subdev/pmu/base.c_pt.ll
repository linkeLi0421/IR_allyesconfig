; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/subdev/pmu/base.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/pmu/base.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_subdev_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.144, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.anon.144 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_pmu_func = type { ptr, %struct.anon.109, %struct.anon.110, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.109 = type { ptr, i32 }
%struct.anon.110 = type { ptr, i32 }
%struct.nvkm_pmu = type { ptr, %struct.nvkm_subdev, %struct.nvkm_falcon, ptr, ptr, ptr, ptr, i8, %struct.completion, %struct.anon.111, %struct.anon.112 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.nvkm_falcon = type { ptr, ptr, ptr, i32, %struct.mutex, %struct.mutex, i8, ptr, i8, i8, i8, ptr, i8, %struct.anon.103, %struct.anon.104, %struct.nvkm_engine }
%struct.anon.103 = type { i32, ptr, i32, i8 }
%struct.anon.104 = type { i32, ptr, i32, i8 }
%struct.nvkm_engine = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.anon.107 }
%struct.anon.107 = type { %struct.refcount_struct, %struct.mutex, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.anon.111 = type { %struct.mutex, i32, i32 }
%struct.anon.112 = type { i32, i32, %struct.work_struct, %struct.wait_queue_head, i32, i32, [2 x i32] }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.nvkm_pmu_fwif = type { i32, ptr, ptr, ptr }
%struct.nvkm_timer_wait = type { ptr, i64, i64, i64, i32 }
%struct.nvkm_timer = type { ptr, %struct.nvkm_subdev, %struct.list_head, %struct.spinlock }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }

@nvkm_pmu = internal constant { %struct.nvkm_subdev_func, [36 x i8] } { %struct.nvkm_subdev_func { ptr @nvkm_pmu_dtor, ptr @nvkm_pmu_preinit, ptr null, ptr null, ptr @nvkm_pmu_init, ptr @nvkm_pmu_fini, ptr @nvkm_pmu_intr }, [36 x i8] zeroinitializer }, align 32
@nvkm_pmu_ctor.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&pmu->send.mutex\00", [47 x i8] zeroinitializer }, align 32
@nvkm_pmu_ctor.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"(work_completion)(&pmu->recv.work)\00", [61 x i8] zeroinitializer }, align 32
@nvkm_pmu_ctor.__key.3 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&pmu->recv.wait\00", [16 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"Pmu\00", [28 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Nv%sFw\00", [25 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Nv%sFwVer\00", [22 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"hpq\00", [28 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"lpq\00", [28 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"msgq\00", [27 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"drivers/gpu/drm/nouveau/nvkm/subdev/pmu/base.c\00", [49 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s %s: timeout\0A\00", [16 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.14 = private unnamed_addr constant [9 x i8] c"nvkm_pmu\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 161, i32 1 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 177, i32 2 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 179, i32 2 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 180, i32 2 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 182, i32 9 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 194, i32 45 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 195, i32 45 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 196, i32 45 }
@___asan_gen_.57 = private constant [50 x i8] c"../drivers/gpu/drm/nouveau/nvkm/subdev/pmu/base.c\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 110, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.62 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.63 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 87, i32 2 }
@llvm.compiler.used = appending global [17 x ptr] [ptr @nvkm_pmu, ptr @nvkm_pmu_ctor.__key, ptr @.str, ptr @nvkm_pmu_ctor.__key.1, ptr @.str.2, ptr @nvkm_pmu_ctor.__key.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @init_completion.__key, ptr @.str.13], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_pmu to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_pmu_ctor.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_pmu_ctor.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_pmu_ctor.__key.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @nvkm_pmu_fan_controlled(ptr nocapture noundef readonly %device) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pmu1 = getelementptr inbounds %struct.nvkm_device, ptr %device, i32 0, i32 39
  %0 = ptrtoint ptr %pmu1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pmu1, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %size = getelementptr inbounds %struct.nvkm_pmu_func, ptr %3, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool2.not = icmp eq i32 %5, 0
  br i1 %tobool2.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %chipset = getelementptr inbounds %struct.nvkm_device, ptr %device, i32 0, i32 16
  %6 = ptrtoint ptr %chipset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %chipset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 191, i32 %7)
  %cmp = icmp ugt i32 %7, 191
  br label %cleanup

cleanup:                                          ; preds = %if.end, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i1 [ %cmp, %if.end ], [ false, %land.lhs.true.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvkm_pmu_pgob(ptr noundef %pmu, i1 noundef zeroext %enable) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %pmu, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %0 = ptrtoint ptr %pmu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pmu, align 4
  %pgob = getelementptr inbounds %struct.nvkm_pmu_func, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pgob to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pgob, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %3(ptr noundef nonnull %pmu, i1 noundef zeroext %enable) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_pmu_send(ptr noundef %pmu, ptr noundef %reply, i32 noundef %process, i32 noundef %message, i32 noundef %data0, i32 noundef %data1) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %pmu, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %0 = ptrtoint ptr %pmu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pmu, align 4
  %send = getelementptr inbounds %struct.nvkm_pmu_func, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %send to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %send, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %lor.lhs.false.return_crit_edge, label %if.end

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 %3(ptr noundef nonnull %pmu, ptr noundef %reply, i32 noundef %process, i32 noundef %message, i32 noundef %data0, i32 noundef %data1) #6
  br label %return

return:                                           ; preds = %if.end, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -19, %lor.lhs.false.return_crit_edge ], [ -19, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_pmu_ctor(ptr noundef %fwif, ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef %pmu) local_unnamed_addr #2 align 64 {
entry:
  %_option = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %subdev = getelementptr inbounds %struct.nvkm_pmu, ptr %pmu, i32 0, i32 1
  tail call void @nvkm_subdev_ctor(ptr noundef nonnull @nvkm_pmu, ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef %subdev) #6
  %send = getelementptr inbounds %struct.nvkm_pmu, ptr %pmu, i32 0, i32 9
  tail call void @__mutex_init(ptr noundef %send, ptr noundef nonnull @.str, ptr noundef nonnull @nvkm_pmu_ctor.__key) #6
  %work = getelementptr inbounds %struct.nvkm_pmu, ptr %pmu, i32 0, i32 10, i32 2
  tail call void @__init_work(ptr noundef %work, i32 noundef 0) #6
  %0 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -64, ptr %work, align 4
  %lockdep_map = getelementptr inbounds %struct.nvkm_pmu, ptr %pmu, i32 0, i32 10, i32 2, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.2, ptr noundef nonnull @nvkm_pmu_ctor.__key.1, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  %entry8 = getelementptr inbounds %struct.nvkm_pmu, ptr %pmu, i32 0, i32 10, i32 2, i32 1
  %1 = ptrtoint ptr %entry8 to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %entry8, ptr %entry8, align 4
  %prev.i = getelementptr inbounds %struct.nvkm_pmu, ptr %pmu, i32 0, i32 10, i32 2, i32 1, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %entry8, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.nvkm_pmu, ptr %pmu, i32 0, i32 10, i32 2, i32 2
  %3 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @nvkm_pmu_recv, ptr %func, align 4
  %wait = getelementptr inbounds %struct.nvkm_pmu, ptr %pmu, i32 0, i32 10, i32 3
  tail call void @__init_waitqueue_head(ptr noundef %wait, ptr noundef nonnull @.str.4, ptr noundef nonnull @nvkm_pmu_ctor.__key.3) #6
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %_option) #6
  %4 = call ptr @memset(ptr %_option, i32 255, i32 32)
  %call = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %_option, i32 noundef 32, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.5)
  %device18 = getelementptr inbounds %struct.nvkm_pmu, ptr %pmu, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %device18 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %device18, align 4
  %cfgopt = getelementptr inbounds %struct.nvkm_device, ptr %6, i32 0, i32 6
  %7 = ptrtoint ptr %cfgopt to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cfgopt, align 4
  %call20 = call i32 @nvkm_longopt(ptr noundef %8, ptr noundef nonnull %_option, i32 noundef -2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call20)
  %cmp = icmp sgt i32 %call20, -2
  br i1 %cmp, label %entry.land.rhs_crit_edge, label %15

entry.land.rhs_crit_edge:                         ; preds = %entry
  br label %land.rhs

land.rhs:                                         ; preds = %for.body.land.rhs_crit_edge, %entry.land.rhs_crit_edge
  %_next.0180 = phi ptr [ %incdec.ptr, %for.body.land.rhs_crit_edge ], [ %fwif, %entry.land.rhs_crit_edge ]
  %load = getelementptr inbounds %struct.nvkm_pmu_fwif, ptr %_next.0180, i32 0, i32 1
  %9 = ptrtoint ptr %load to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %load, align 4
  %tobool21.not = icmp eq ptr %10, null
  br i1 %tobool21.not, label %land.rhs.if.then63_crit_edge, label %for.body

land.rhs.if.then63_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then63

for.body:                                         ; preds = %land.rhs
  %11 = ptrtoint ptr %_next.0180 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %_next.0180, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %call20)
  %cmp22 = icmp ne i32 %12, %call20
  %incdec.ptr = getelementptr %struct.nvkm_pmu_fwif, ptr %_next.0180, i32 1
  %tobool.not187 = icmp eq ptr %_next.0180, null
  %tobool.not = select i1 %cmp22, i1 true, i1 %tobool.not187
  br i1 %tobool.not, label %for.body.land.rhs_crit_edge, label %cond.end

for.body.land.rhs_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs

cond.end:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %call29 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %_option, i32 noundef 32, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.5)
  %13 = ptrtoint ptr %_next.0180 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %_next.0180, align 4
  br label %16

15:                                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call29157 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %_option, i32 noundef 32, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.5)
  br label %16

16:                                               ; preds = %15, %cond.end
  %.sink203 = phi i32 [ %14, %cond.end ], [ -1, %15 ]
  %_fwif.2155165 = phi ptr [ %_next.0180, %cond.end ], [ null, %15 ]
  %17 = phi ptr [ %_next.0180, %cond.end ], [ %fwif, %15 ]
  %18 = ptrtoint ptr %device18 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %device18, align 4
  %cfgopt34 = getelementptr inbounds %struct.nvkm_device, ptr %19, i32 0, i32 6
  %20 = ptrtoint ptr %cfgopt34 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cfgopt34, align 4
  %call36 = call i32 @nvkm_longopt(ptr noundef %21, ptr noundef nonnull %_option, i32 noundef %.sink203) #6
  %load43181 = getelementptr inbounds %struct.nvkm_pmu_fwif, ptr %17, i32 0, i32 1
  %22 = ptrtoint ptr %load43181 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %load43181, align 4
  %tobool44.not182 = icmp eq ptr %23, null
  br i1 %tobool44.not182, label %.if.end65_crit_edge, label %for.body45.lr.ph

.if.end65_crit_edge:                              ; preds = %16
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end65

for.body45.lr.ph:                                 ; preds = %16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call36)
  %cmp46 = icmp sgt i32 %call36, -1
  br label %for.body45

for.body45:                                       ; preds = %for.inc58.for.body45_crit_edge, %for.body45.lr.ph
  %24 = phi ptr [ %23, %for.body45.lr.ph ], [ %28, %for.inc58.for.body45_crit_edge ]
  %_next.1183 = phi ptr [ %17, %for.body45.lr.ph ], [ %incdec.ptr59, %for.inc58.for.body45_crit_edge ]
  br i1 %cmp46, label %if.end61, label %cond.end50

cond.end50:                                       ; preds = %for.body45
  %25 = ptrtoint ptr %_next.1183 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %_next.1183, align 4
  %call53 = call i32 %24(ptr noundef %pmu, i32 noundef %26, ptr noundef %_next.1183) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %cmp54 = icmp eq i32 %call53, 0
  br i1 %cmp54, label %cond.end50.if.end65_crit_edge, label %for.inc58

cond.end50.if.end65_crit_edge:                    ; preds = %cond.end50
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end65

for.inc58:                                        ; preds = %cond.end50
  %incdec.ptr59 = getelementptr %struct.nvkm_pmu_fwif, ptr %_next.1183, i32 1
  %load43 = getelementptr %struct.nvkm_pmu_fwif, ptr %_next.1183, i32 1, i32 1
  %27 = ptrtoint ptr %load43 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %load43, align 4
  %tobool44.not = icmp eq ptr %28, null
  br i1 %tobool44.not, label %for.inc58.if.then63_crit_edge, label %for.inc58.for.body45_crit_edge

for.inc58.for.body45_crit_edge:                   ; preds = %for.inc58
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body45

for.inc58.if.then63_crit_edge:                    ; preds = %for.inc58
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then63

if.end61:                                         ; preds = %for.body45
  %call53170 = call i32 %23(ptr noundef %pmu, i32 noundef %call36, ptr noundef %17) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53170)
  %tobool62.not = icmp eq i32 %call53170, 0
  br i1 %tobool62.not, label %if.end61.if.end65_crit_edge, label %if.end61.if.then63_crit_edge

if.end61.if.then63_crit_edge:                     ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then63

if.end61.if.end65_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end65

if.then63:                                        ; preds = %if.end61.if.then63_crit_edge, %for.inc58.if.then63_crit_edge, %land.rhs.if.then63_crit_edge
  %_ret.2176 = phi i32 [ %call53170, %if.end61.if.then63_crit_edge ], [ %call53, %for.inc58.if.then63_crit_edge ], [ -22, %land.rhs.if.then63_crit_edge ]
  %29 = inttoptr i32 %_ret.2176 to ptr
  br label %if.end65

if.end65:                                         ; preds = %if.then63, %if.end61.if.end65_crit_edge, %cond.end50.if.end65_crit_edge, %.if.end65_crit_edge
  %_fwif.4 = phi ptr [ %29, %if.then63 ], [ %17, %if.end61.if.end65_crit_edge ], [ %_fwif.2155165, %.if.end65_crit_edge ], [ %_next.1183, %cond.end50.if.end65_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %_option) #6
  %cmp.i = icmp ugt ptr %_fwif.4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then67, label %if.end69

if.then67:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #8
  %30 = ptrtoint ptr %_fwif.4 to i32
  br label %cleanup

if.end69:                                         ; preds = %if.end65
  %func70 = getelementptr inbounds %struct.nvkm_pmu_fwif, ptr %_fwif.4, i32 0, i32 2
  %31 = ptrtoint ptr %func70 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %func70, align 4
  %33 = ptrtoint ptr %pmu to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %32, ptr %pmu, align 4
  %34 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %32, align 4
  %name = getelementptr inbounds %struct.nvkm_pmu, ptr %pmu, i32 0, i32 1, i32 4
  %falcon = getelementptr inbounds %struct.nvkm_pmu, ptr %pmu, i32 0, i32 2
  %call76 = call i32 @nvkm_falcon_ctor(ptr noundef %35, ptr noundef %subdev, ptr noundef %name, i32 noundef 1089536, ptr noundef %falcon) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %if.end79, label %if.end69.cleanup_crit_edge

if.end69.cleanup_crit_edge:                       ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end79:                                         ; preds = %if.end69
  %qmgr = getelementptr inbounds %struct.nvkm_pmu, ptr %pmu, i32 0, i32 3
  %call81 = call i32 @nvkm_falcon_qmgr_new(ptr noundef %falcon, ptr noundef %qmgr) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %lor.lhs.false83, label %if.end79.cleanup_crit_edge

if.end79.cleanup_crit_edge:                       ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false83:                                  ; preds = %if.end79
  %36 = ptrtoint ptr %qmgr to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %qmgr, align 4
  %hpq = getelementptr inbounds %struct.nvkm_pmu, ptr %pmu, i32 0, i32 4
  %call85 = call i32 @nvkm_falcon_cmdq_new(ptr noundef %37, ptr noundef nonnull @.str.8, ptr noundef %hpq) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %lor.lhs.false87, label %lor.lhs.false83.cleanup_crit_edge

lor.lhs.false83.cleanup_crit_edge:                ; preds = %lor.lhs.false83
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false87:                                  ; preds = %lor.lhs.false83
  %38 = ptrtoint ptr %qmgr to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %qmgr, align 4
  %lpq = getelementptr inbounds %struct.nvkm_pmu, ptr %pmu, i32 0, i32 5
  %call89 = call i32 @nvkm_falcon_cmdq_new(ptr noundef %39, ptr noundef nonnull @.str.9, ptr noundef %lpq) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89)
  %tobool90.not = icmp eq i32 %call89, 0
  br i1 %tobool90.not, label %lor.lhs.false91, label %lor.lhs.false87.cleanup_crit_edge

lor.lhs.false87.cleanup_crit_edge:                ; preds = %lor.lhs.false87
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false91:                                  ; preds = %lor.lhs.false87
  %40 = ptrtoint ptr %qmgr to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %qmgr, align 4
  %msgq = getelementptr inbounds %struct.nvkm_pmu, ptr %pmu, i32 0, i32 6
  %call93 = call i32 @nvkm_falcon_msgq_new(ptr noundef %41, ptr noundef nonnull @.str.10, ptr noundef %msgq) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %tobool94.not = icmp eq i32 %call93, 0
  br i1 %tobool94.not, label %if.end96, label %lor.lhs.false91.cleanup_crit_edge

lor.lhs.false91.cleanup_crit_edge:                ; preds = %lor.lhs.false91
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end96:                                         ; preds = %lor.lhs.false91
  call void @__sanitizer_cov_trace_pc() #8
  %wpr_ready = getelementptr inbounds %struct.nvkm_pmu, ptr %pmu, i32 0, i32 8
  %42 = ptrtoint ptr %wpr_ready to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %wpr_ready, align 4
  %wait.i = getelementptr inbounds %struct.nvkm_pmu, ptr %pmu, i32 0, i32 8, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.13, ptr noundef nonnull @init_completion.__key) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end96, %lor.lhs.false91.cleanup_crit_edge, %lor.lhs.false87.cleanup_crit_edge, %lor.lhs.false83.cleanup_crit_edge, %if.end79.cleanup_crit_edge, %if.end69.cleanup_crit_edge, %if.then67
  %retval.0 = phi i32 [ %30, %if.then67 ], [ 0, %if.end96 ], [ %call76, %if.end69.cleanup_crit_edge ], [ %call81, %if.end79.cleanup_crit_edge ], [ %call85, %lor.lhs.false83.cleanup_crit_edge ], [ %call89, %lor.lhs.false87.cleanup_crit_edge ], [ %call93, %lor.lhs.false91.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_subdev_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvkm_pmu_recv(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -692
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %recv = getelementptr inbounds %struct.nvkm_pmu_func, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %recv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %recv, align 4
  tail call void %3(ptr noundef %add.ptr) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_longopt(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_falcon_ctor(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_falcon_qmgr_new(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_falcon_cmdq_new(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_falcon_msgq_new(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_pmu_new_(ptr noundef %fwif, ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr nocapture noundef writeonly %ppmu) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 804) #9
  %1 = ptrtoint ptr %ppmu to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %ppmu, align 4
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call i32 @nvkm_pmu_ctor(ptr noundef %fwif, ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef nonnull %call7.i.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @nvkm_pmu_dtor(ptr noundef %subdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %subdev, i32 -4
  %msgq = getelementptr i8, ptr %subdev, i32 516
  tail call void @nvkm_falcon_msgq_del(ptr noundef %msgq) #6
  %lpq = getelementptr i8, ptr %subdev, i32 512
  tail call void @nvkm_falcon_cmdq_del(ptr noundef %lpq) #6
  %hpq = getelementptr i8, ptr %subdev, i32 508
  tail call void @nvkm_falcon_cmdq_del(ptr noundef %hpq) #6
  %qmgr = getelementptr i8, ptr %subdev, i32 504
  tail call void @nvkm_falcon_qmgr_del(ptr noundef %qmgr) #6
  %falcon = getelementptr i8, ptr %subdev, i32 52
  tail call void @nvkm_falcon_dtor(ptr noundef %falcon) #6
  %send = getelementptr i8, ptr %subdev, i32 580
  tail call void @mutex_destroy(ptr noundef %send) #6
  ret ptr %add.ptr
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvkm_pmu_preinit(ptr noundef %subdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %subdev, i32 -4
  tail call fastcc void @nvkm_pmu_reset(ptr noundef %add.ptr)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvkm_pmu_init(ptr noundef %subdev) #2 align 64 {
entry:
  %_wait = alloca %struct.nvkm_timer_wait, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %subdev, i32 -4
  %device2 = getelementptr inbounds %struct.nvkm_subdev, ptr %subdev, i32 0, i32 1
  %0 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device2, align 4
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  %init = getelementptr inbounds %struct.nvkm_pmu_func, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %enabled = getelementptr inbounds %struct.nvkm_pmu_func, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %enabled to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %enabled, align 4
  %call = tail call zeroext i1 %7(ptr noundef %add.ptr) #6
  br i1 %call, label %do.body, label %if.end.if.end51_crit_edge

if.end.if.end51_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end51

do.body:                                          ; preds = %if.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !36
  tail call void @arm_heavy_mb() #6
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %8 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pri, align 4
  %add.ptr5 = getelementptr i8, ptr %9, i32 1089556
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 65535) #6, !srcloc !37
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %_wait) #6
  %10 = call ptr @memset(ptr %_wait, i32 255, i32 40)
  call void @nvkm_timer_wait_init(ptr noundef %1, i64 noundef 2000000000, ptr noundef nonnull %_wait) #6
  br label %do.body6

do.body6:                                         ; preds = %do.cond14.do.body6_crit_edge, %do.body
  %11 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pri, align 4
  %add.ptr8 = getelementptr i8, ptr %12, i32 1089612
  %13 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8) #6, !srcloc !38
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !39
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool11.not = icmp eq i32 %13, 0
  br i1 %tobool11.not, label %do.body6.if.end49_crit_edge, label %do.cond14

do.body6.if.end49_crit_edge:                      ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end49

do.cond14:                                        ; preds = %do.body6
  %call15 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %_wait) #6
  %cmp = icmp sgt i64 %call15, -1
  br i1 %cmp, label %do.cond14.do.body6_crit_edge, label %do.end27

do.cond14.do.body6_crit_edge:                     ; preds = %do.cond14
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body6

do.end27:                                         ; preds = %do.cond14
  %14 = ptrtoint ptr %_wait to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %_wait, align 8
  %device29 = getelementptr inbounds %struct.nvkm_timer, ptr %15, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %device29 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %device29, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 8
  %call30 = call ptr @dev_driver_string(ptr noundef %19) #6
  %20 = ptrtoint ptr %_wait to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %_wait, align 8
  %device33 = getelementptr inbounds %struct.nvkm_timer, ptr %21, i32 0, i32 1, i32 1
  %22 = ptrtoint ptr %device33 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %device33, align 4
  %dev34 = getelementptr inbounds %struct.nvkm_device, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %dev34 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev34, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %27, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end27.dev_name.exit_crit_edge

do.end27.dev_name.exit_crit_edge:                 ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #8
  %28 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %25, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end27.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %29, %if.end.i ], [ %27, %do.end27.dev_name.exit_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 139, i32 noundef 9, ptr noundef nonnull @.str.12, ptr noundef %call30, ptr noundef %retval.0.i) #6
  br label %if.end49

if.end49:                                         ; preds = %dev_name.exit, %do.body6.if.end49_crit_edge
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_wait) #6
  call fastcc void @nvkm_pmu_reset(ptr noundef %add.ptr)
  br label %if.end51

if.end51:                                         ; preds = %if.end49, %if.end.if.end51_crit_edge
  %30 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %add.ptr, align 4
  %init53 = getelementptr inbounds %struct.nvkm_pmu_func, ptr %31, i32 0, i32 5
  %32 = ptrtoint ptr %init53 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %init53, align 4
  %call54 = call i32 %33(ptr noundef %add.ptr) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end51, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call54, %if.end51 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvkm_pmu_fini(ptr noundef %subdev, i1 noundef zeroext %suspend) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %subdev, i32 -4
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %fini = getelementptr inbounds %struct.nvkm_pmu_func, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %fini to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fini, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %3(ptr noundef %add.ptr) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %work = getelementptr i8, ptr %subdev, i32 688
  %call = tail call zeroext i1 @flush_work(ptr noundef %work) #6
  %wpr_ready = getelementptr i8, ptr %subdev, i32 524
  %4 = ptrtoint ptr %wpr_ready to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %wpr_ready, align 4
  %lpq = getelementptr i8, ptr %subdev, i32 512
  %5 = ptrtoint ptr %lpq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %lpq, align 4
  tail call void @nvkm_falcon_cmdq_fini(ptr noundef %6) #6
  %hpq = getelementptr i8, ptr %subdev, i32 508
  %7 = ptrtoint ptr %hpq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hpq, align 4
  tail call void @nvkm_falcon_cmdq_fini(ptr noundef %8) #6
  %initmsg_received = getelementptr i8, ptr %subdev, i32 520
  %9 = ptrtoint ptr %initmsg_received to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %initmsg_received, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvkm_pmu_intr(ptr noundef %subdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %subdev, i32 -4
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %intr = getelementptr inbounds %struct.nvkm_pmu_func, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %intr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %intr, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %3(ptr noundef %add.ptr) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_falcon_msgq_del(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_falcon_cmdq_del(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_falcon_qmgr_del(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_falcon_dtor(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nvkm_pmu_reset(ptr noundef %pmu) unnamed_addr #2 align 64 {
entry:
  %_wait = alloca %struct.nvkm_timer_wait, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr inbounds %struct.nvkm_pmu, ptr %pmu, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  %2 = ptrtoint ptr %pmu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pmu, align 4
  %enabled = getelementptr inbounds %struct.nvkm_pmu_func, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %enabled to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %enabled, align 4
  %call = tail call zeroext i1 %5(ptr noundef %pmu) #6
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %pmu to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pmu, align 4
  %reset = getelementptr inbounds %struct.nvkm_pmu_func, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reset, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %if.end.if.end6_crit_edge, label %if.then3

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %9(ptr noundef %pmu) #6
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %if.end.if.end6_crit_edge
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %_wait) #6
  %10 = call ptr @memset(ptr %_wait, i32 255, i32 40)
  call void @nvkm_timer_wait_init(ptr noundef %1, i64 noundef 2000000000, ptr noundef nonnull %_wait) #6
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %if.end6
  %11 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %12, i32 1089804
  %13 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !38
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !40
  %and = and i32 %13, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %do.body.if.end44_crit_edge, label %do.cond

do.body.if.end44_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end44

do.cond:                                          ; preds = %do.body
  %call11 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %_wait) #6
  %cmp = icmp sgt i64 %call11, -1
  br i1 %cmp, label %do.cond.do.body_crit_edge, label %do.end22

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

do.end22:                                         ; preds = %do.cond
  %14 = ptrtoint ptr %_wait to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %_wait, align 8
  %device24 = getelementptr inbounds %struct.nvkm_timer, ptr %15, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %device24 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %device24, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 8
  %call25 = call ptr @dev_driver_string(ptr noundef %19) #6
  %20 = ptrtoint ptr %_wait to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %_wait, align 8
  %device28 = getelementptr inbounds %struct.nvkm_timer, ptr %21, i32 0, i32 1, i32 1
  %22 = ptrtoint ptr %device28 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %device28, align 4
  %dev29 = getelementptr inbounds %struct.nvkm_device, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %dev29 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev29, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %27, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end22.dev_name.exit_crit_edge

do.end22.dev_name.exit_crit_edge:                 ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #8
  %28 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %25, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end22.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %29, %if.end.i ], [ %27, %do.end22.dev_name.exit_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 113, i32 noundef 9, ptr noundef nonnull @.str.12, ptr noundef %call25, ptr noundef %retval.0.i) #6
  br label %if.end44

if.end44:                                         ; preds = %dev_name.exit, %do.body.if.end44_crit_edge
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_wait) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end44, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_timer_wait_init(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nvkm_timer_wait_test(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_falcon_cmdq_fini(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

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

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !9, !11, !12, !13, !15, !17, !19, !21, !23, !24, !26}
!llvm.module.flags = !{!27, !28, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!35}

!0 = !{ptr @nvkm_pmu_ctor.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/pmu/base.c", i32 177, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @nvkm_pmu_ctor.__key.1, !4, !"__key", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/pmu/base.c", i32 179, i32 2}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @nvkm_pmu_ctor.__key.3, !7, !"__key", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/pmu/base.c", i32 180, i32 2}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/pmu/base.c", i32 182, i32 9}
!11 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.7, !10, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/pmu/base.c", i32 194, i32 45}
!15 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/pmu/base.c", i32 195, i32 45}
!17 = !{ptr @.str.10, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/pmu/base.c", i32 196, i32 45}
!19 = !{ptr @nvkm_pmu, !20, !"nvkm_pmu", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/pmu/base.c", i32 161, i32 1}
!21 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/pmu/base.c", i32 110, i32 2}
!23 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @init_completion.__key, !25, !"__key", i1 false, i1 false}
!25 = !{!"../include/linux/completion.h", i32 87, i32 2}
!26 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!27 = !{i32 1, !"wchar_size", i32 2}
!28 = !{i32 1, !"min_enum_size", i32 4}
!29 = !{i32 8, !"branch-target-enforcement", i32 0}
!30 = !{i32 8, !"sign-return-address", i32 0}
!31 = !{i32 8, !"sign-return-address-all", i32 0}
!32 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!33 = !{i32 7, !"uwtable", i32 1}
!34 = !{i32 7, !"frame-pointer", i32 2}
!35 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!36 = !{i64 2156254449}
!37 = !{i64 5389752}
!38 = !{i64 5390170}
!39 = !{i64 2156256303}
!40 = !{i64 2156250681}
