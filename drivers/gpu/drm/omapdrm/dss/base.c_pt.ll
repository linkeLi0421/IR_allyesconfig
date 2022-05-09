; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/omapdrm/dss/base.c_pt.bc'
source_filename = "../drivers/gpu/drm/omapdrm/dss/base.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.dss_device = type { ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, i32, i32, %struct.dispc_clock_info, [2 x i32], i32, [3 x i32], i8, [128 x i32], ptr, %struct.anon.78, [4 x ptr], ptr, ptr, ptr, ptr }
%struct.dispc_clock_info = type { i32, i32, i16, i16 }
%struct.anon.78 = type { ptr, ptr, ptr }
%struct.omap_dss_device = type { ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, ptr, ptr, i32, i32, i32, i32 }
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
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.omapdss_comp_node = type { %struct.list_head, ptr, i8, ptr }

@omapdss_devices_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.7, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @omapdss_devices_lock, i64 52), ptr getelementptr (i8, ptr @omapdss_devices_lock, i64 52) }, ptr @omapdss_devices_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.8, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@omapdss_devices_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @omapdss_devices_list, ptr @omapdss_devices_list }, [24 x i8] zeroinitializer }, align 32
@omapdss_device_connect.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 36, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"omapdrm\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"omapdss_device_connect\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/gpu/drm/omapdrm/dss/base.c\00", [61 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"connect(%s, %s)\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"NULL\00", [27 x i8] zeroinitializer }, align 32
@omapdss_device_disconnect.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.6, i8 0, i8 43, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"omapdss_device_disconnect\00", [38 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"disconnect(%s, %s)\0A\00", [44 x i8] zeroinitializer }, align 32
@omapdss_comp_list = internal global { %struct.list_head, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"omapdss_devices_lock.wait_lock\00", [33 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"omapdss_devices_lock\00", [43 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"compatible\00", [21 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ports\00", [26 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"port\00", [27 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"omapdss,\00", [23 x i8] zeroinitializer }, align 32
@___asan_gen_.13 = private unnamed_addr constant [21 x i8] c"omapdss_devices_lock\00", align 1
@___asan_gen_.16 = private unnamed_addr constant [21 x i8] c"omapdss_devices_list\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 28, i32 8 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 145, i32 2 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 171, i32 2 }
@___asan_gen_.40 = private unnamed_addr constant [18 x i8] c"omapdss_comp_list\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 192, i32 25 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 29, i32 8 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 221, i32 38 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 237, i32 33 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 239, i32 34 }
@___asan_gen_.58 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.59 = private constant [38 x i8] c"../drivers/gpu/drm/omapdrm/dss/base.c\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 277, i32 31 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @omapdss_devices_lock, ptr @omapdss_devices_list, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @omapdss_comp_list, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omapdss_devices_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omapdss_devices_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omapdss_comp_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @dispc_get_dispc(ptr nocapture noundef readonly %dss) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dispc = getelementptr inbounds %struct.dss_device, ptr %dss, i32 0, i32 21
  %0 = ptrtoint ptr %dispc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dispc, align 4
  ret ptr %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omapdss_device_register(ptr noundef %dssdev) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @omapdss_devices_lock, i32 noundef 0) #5
  %list = getelementptr inbounds %struct.omap_dss_device, ptr %dssdev, i32 0, i32 5
  %0 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @omapdss_devices_list, i32 0, i32 1), align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %0, ptr noundef nonnull @omapdss_devices_list) #5
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  store ptr %list, ptr getelementptr inbounds (%struct.list_head, ptr @omapdss_devices_list, i32 0, i32 1), align 4
  %1 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @omapdss_devices_list, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.omap_dss_device, ptr %dssdev, i32 0, i32 5, i32 1
  %2 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %0, ptr %prev3.i.i, align 4
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %list, ptr %0, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @omapdss_devices_lock) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omapdss_device_unregister(ptr noundef %dssdev) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @omapdss_devices_lock, i32 noundef 0) #5
  %list = getelementptr inbounds %struct.omap_dss_device, ptr %dssdev, i32 0, i32 5
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #5
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i = getelementptr inbounds %struct.omap_dss_device, ptr %dssdev, i32 0, i32 5, i32 1
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %2 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %6 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 256 to ptr), ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.omap_dss_device, ptr %dssdev, i32 0, i32 5, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @omapdss_devices_lock) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @omapdss_device_get(ptr noundef readonly %dssdev) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dssdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dssdev, align 4
  %call = tail call ptr @get_device(ptr noundef %1) #5
  %cmp = icmp eq ptr %call, null
  %.dssdev = select i1 %cmp, ptr null, ptr %dssdev
  ret ptr %.dssdev
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omapdss_device_put(ptr nocapture noundef readonly %dssdev) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dssdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dssdev, align 4
  tail call void @put_device(ptr noundef %1) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @omapdss_find_device_by_node(ptr noundef readnone %node) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %.pn.in = phi ptr [ @omapdss_devices_list, %entry ], [ %.pn, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, @omapdss_devices_list
  br i1 %cmp.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %dssdev.0 = getelementptr i8, ptr %.pn, i32 -20
  %1 = ptrtoint ptr %dssdev.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dssdev.0, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 27
  %3 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %of_node, align 8
  %cmp1 = icmp eq ptr %4, %node
  br i1 %cmp1, label %if.then, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %dssdev.0.le = getelementptr i8, ptr %.pn, i32 -20
  %call.i = tail call ptr @get_device(ptr noundef %2) #5
  %cmp.i = icmp eq ptr %call.i, null
  %.dssdev.i = select i1 %cmp.i, ptr null, ptr %dssdev.0.le
  br label %cleanup

cleanup:                                          ; preds = %if.then, %for.cond.cleanup_crit_edge
  %retval.0 = phi ptr [ %.dssdev.i, %if.then ], [ null, %for.cond.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @omapdss_device_next_output(ptr noundef readonly %from) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @omapdss_devices_lock, i32 noundef 0) #5
  %0 = load volatile ptr, ptr @omapdss_devices_list, align 4
  %cmp.i.not = icmp eq ptr %0, @omapdss_devices_list
  br i1 %cmp.i.not, label %entry.done_crit_edge, label %if.end

entry.done_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %done

if.end:                                           ; preds = %entry
  %tobool1.not = icmp eq ptr %from, null
  %list2 = getelementptr inbounds %struct.omap_dss_device, ptr %from, i32 0, i32 5
  %spec.select = select i1 %tobool1.not, ptr @omapdss_devices_list, ptr %list2
  %1 = ptrtoint ptr %spec.select to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pn38 = load ptr, ptr %spec.select, align 4
  %cmp.not39 = icmp eq ptr %.pn38, %spec.select
  %cmp540 = icmp eq ptr %.pn38, @omapdss_devices_list
  %or.cond41 = or i1 %cmp.not39, %cmp540
  br i1 %or.cond41, label %if.end.done_crit_edge, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  br label %if.end7

if.end.done_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %done

if.end7:                                          ; preds = %for.inc.if.end7_crit_edge, %if.end.if.end7_crit_edge
  %.pn42 = phi ptr [ %.pn, %for.inc.if.end7_crit_edge ], [ %.pn38, %if.end.if.end7_crit_edge ]
  %id = getelementptr i8, ptr %.pn42, i32 28
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool8.not = icmp eq i32 %3, 0
  br i1 %tobool8.not, label %if.end7.for.inc_crit_edge, label %land.lhs.true

if.end7.for.inc_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

land.lhs.true:                                    ; preds = %if.end7
  %bridge = getelementptr i8, ptr %.pn42, i32 -12
  %4 = ptrtoint ptr %bridge to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bridge, align 4
  %tobool9.not = icmp eq ptr %5, null
  br i1 %tobool9.not, label %land.lhs.true.for.inc_crit_edge, label %done.loopexit.split.loop.exit

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %if.end7.for.inc_crit_edge
  %6 = ptrtoint ptr %.pn42 to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn = load ptr, ptr %.pn42, align 4
  %cmp.not = icmp eq ptr %.pn, %spec.select
  %cmp5 = icmp eq ptr %.pn, @omapdss_devices_list
  %or.cond = or i1 %cmp.not, %cmp5
  br i1 %or.cond, label %for.inc.done_crit_edge, label %for.inc.if.end7_crit_edge

for.inc.if.end7_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

for.inc.done_crit_edge:                           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %done

done.loopexit.split.loop.exit:                    ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %dssdev.0.le = getelementptr i8, ptr %.pn42, i32 -20
  br label %done

done:                                             ; preds = %done.loopexit.split.loop.exit, %for.inc.done_crit_edge, %if.end.done_crit_edge, %entry.done_crit_edge
  %dssdev.1 = phi ptr [ null, %entry.done_crit_edge ], [ %dssdev.0.le, %done.loopexit.split.loop.exit ], [ null, %if.end.done_crit_edge ], [ null, %for.inc.done_crit_edge ]
  %tobool17.not = icmp eq ptr %from, null
  br i1 %tobool17.not, label %done.if.end19_crit_edge, label %if.then18

done.if.end19_crit_edge:                          ; preds = %done
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end19

if.then18:                                        ; preds = %done
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %from to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %from, align 4
  tail call void @put_device(ptr noundef %8) #5
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %done.if.end19_crit_edge
  %tobool20.not = icmp eq ptr %dssdev.1, null
  br i1 %tobool20.not, label %if.end19.if.end23_crit_edge, label %if.then21

if.end19.if.end23_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end23

if.then21:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %dssdev.1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dssdev.1, align 4
  %call.i = tail call ptr @get_device(ptr noundef %10) #5
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %if.end19.if.end23_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @omapdss_devices_lock) #5
  ret ptr %dssdev.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omapdss_device_connect(ptr noundef %dss, ptr noundef readonly %src, ptr noundef %dst) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omapdss_device_connect.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@omapdss_device_connect, %do.end)) #5
          to label %if.then [label %do.end], !srcloc !36

if.then:                                          ; preds = %entry
  %0 = ptrtoint ptr %dss to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dss, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %tobool4.not = icmp eq ptr %src, null
  br i1 %tobool4.not, label %if.then.cond.end_crit_edge, label %cond.true

if.then.cond.end_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end

cond.true:                                        ; preds = %if.then
  %2 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %src, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.i, label %cond.true.cond.end_crit_edge

cond.true.cond.end_crit_edge:                     ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end

if.end.i:                                         ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  br label %cond.end

cond.end:                                         ; preds = %if.end.i, %cond.true.cond.end_crit_edge, %if.then.cond.end_crit_edge
  %cond = phi ptr [ @.str.4, %if.then.cond.end_crit_edge ], [ %7, %if.end.i ], [ %5, %cond.true.cond.end_crit_edge ]
  %tobool7.not = icmp eq ptr %dst, null
  br i1 %tobool7.not, label %cond.end.cond.end12_crit_edge, label %cond.true8

cond.end.cond.end12_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end12

cond.true8:                                       ; preds = %cond.end
  %8 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dst, align 4
  %init_name.i33 = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %init_name.i33 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %init_name.i33, align 8
  %tobool.not.i34 = icmp eq ptr %11, null
  br i1 %tobool.not.i34, label %if.end.i35, label %cond.true8.cond.end12_crit_edge

cond.true8.cond.end12_crit_edge:                  ; preds = %cond.true8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end12

if.end.i35:                                       ; preds = %cond.true8
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %9, align 4
  br label %cond.end12

cond.end12:                                       ; preds = %if.end.i35, %cond.true8.cond.end12_crit_edge, %cond.end.cond.end12_crit_edge
  %cond13 = phi ptr [ @.str.4, %cond.end.cond.end12_crit_edge ], [ %13, %if.end.i35 ], [ %11, %cond.true8.cond.end12_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @omapdss_device_connect.__UNIQUE_ID_ddebug306, ptr noundef %dev, ptr noundef nonnull @.str.3, ptr noundef %cond, ptr noundef %cond13) #5
  br label %do.end

do.end:                                           ; preds = %cond.end12, %entry
  %tobool14.not = icmp eq ptr %dst, null
  br i1 %tobool14.not, label %if.then15, label %if.end19

if.then15:                                        ; preds = %do.end
  %tobool16.not = icmp eq ptr %src, null
  br i1 %tobool16.not, label %if.then15.return_crit_edge, label %land.rhs

if.then15.return_crit_edge:                       ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

land.rhs:                                         ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #7
  %bridge = getelementptr inbounds %struct.omap_dss_device, ptr %src, i32 0, i32 2
  %14 = ptrtoint ptr %bridge to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bridge, align 4
  %tobool17.not = icmp eq ptr %15, null
  %phi.sel = select i1 %tobool17.not, i32 -22, i32 0
  br label %return

if.end19:                                         ; preds = %do.end
  %dss.i = getelementptr inbounds %struct.omap_dss_device, ptr %dst, i32 0, i32 1
  %16 = ptrtoint ptr %dss.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dss.i, align 4
  %tobool.i.not = icmp eq ptr %17, null
  br i1 %tobool.i.not, label %if.end22, label %if.end19.return_crit_edge

if.end19.return_crit_edge:                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end22:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %dss.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %dss, ptr %dss.i, align 4
  br label %return

return:                                           ; preds = %if.end22, %if.end19.return_crit_edge, %land.rhs, %if.then15.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end22 ], [ -22, %if.then15.return_crit_edge ], [ %phi.sel, %land.rhs ], [ -16, %if.end19.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omapdss_device_disconnect(ptr noundef readonly %src, ptr noundef %dst) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %src, null
  %dst.src = select i1 %tobool.not, ptr %dst, ptr %src
  %cond.in = getelementptr inbounds %struct.omap_dss_device, ptr %dst.src, i32 0, i32 1
  %0 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %cond = load ptr, ptr %cond.in, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omapdss_device_disconnect.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@omapdss_device_disconnect, %do.end)) #5
          to label %if.then [label %do.end], !srcloc !36

if.then:                                          ; preds = %entry
  %1 = ptrtoint ptr %cond to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cond, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %2, i32 0, i32 3
  br i1 %tobool.not, label %if.then.cond.end12_crit_edge, label %cond.true8

if.then.cond.end12_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end12

cond.true8:                                       ; preds = %if.then
  %3 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %src, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %if.end.i, label %cond.true8.cond.end12_crit_edge

cond.true8.cond.end12_crit_edge:                  ; preds = %cond.true8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end12

if.end.i:                                         ; preds = %cond.true8
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %4, align 4
  br label %cond.end12

cond.end12:                                       ; preds = %if.end.i, %cond.true8.cond.end12_crit_edge, %if.then.cond.end12_crit_edge
  %cond13 = phi ptr [ @.str.4, %if.then.cond.end12_crit_edge ], [ %8, %if.end.i ], [ %6, %cond.true8.cond.end12_crit_edge ]
  %tobool14.not = icmp eq ptr %dst, null
  br i1 %tobool14.not, label %cond.end12.cond.end19_crit_edge, label %cond.true15

cond.end12.cond.end19_crit_edge:                  ; preds = %cond.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end19

cond.true15:                                      ; preds = %cond.end12
  %9 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dst, align 4
  %init_name.i100 = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %init_name.i100 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %init_name.i100, align 8
  %tobool.not.i101 = icmp eq ptr %12, null
  br i1 %tobool.not.i101, label %if.end.i102, label %cond.true15.cond.end19_crit_edge

cond.true15.cond.end19_crit_edge:                 ; preds = %cond.true15
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end19

if.end.i102:                                      ; preds = %cond.true15
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %10, align 4
  br label %cond.end19

cond.end19:                                       ; preds = %if.end.i102, %cond.true15.cond.end19_crit_edge, %cond.end12.cond.end19_crit_edge
  %cond20 = phi ptr [ @.str.4, %cond.end12.cond.end19_crit_edge ], [ %14, %if.end.i102 ], [ %12, %cond.true15.cond.end19_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @omapdss_device_disconnect.__UNIQUE_ID_ddebug307, ptr noundef %dev, ptr noundef nonnull @.str.6, ptr noundef %cond13, ptr noundef %cond20) #5
  br label %do.end

do.end:                                           ; preds = %cond.end19, %entry
  %tobool21.not = icmp eq ptr %dst, null
  br i1 %tobool21.not, label %if.then22, label %if.end55

if.then22:                                        ; preds = %do.end
  %bridge = getelementptr inbounds %struct.omap_dss_device, ptr %src, i32 0, i32 2
  %15 = ptrtoint ptr %bridge to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bridge, align 4
  %tobool23.not = icmp eq ptr %16, null
  br i1 %tobool23.not, label %do.end41, label %if.then22.cleanup_crit_edge, !prof !37

if.then22.cleanup_crit_edge:                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end41:                                         ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 176, i32 noundef 9, ptr noundef null) #5
  br label %cleanup

if.end55:                                         ; preds = %do.end
  %id = getelementptr inbounds %struct.omap_dss_device, ptr %dst, i32 0, i32 11
  %17 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool56.not = icmp eq i32 %18, 0
  br i1 %tobool56.not, label %land.lhs.true, label %if.end55.if.end85_crit_edge

if.end55.if.end85_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end85

land.lhs.true:                                    ; preds = %if.end55
  %dss.i = getelementptr inbounds %struct.omap_dss_device, ptr %dst, i32 0, i32 1
  %19 = ptrtoint ptr %dss.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dss.i, align 4
  %tobool.i.not = icmp eq ptr %20, null
  br i1 %tobool.i.not, label %do.end71, label %land.lhs.true.if.end85_crit_edge

land.lhs.true.if.end85_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end85

do.end71:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 181, i32 noundef 9, ptr noundef null) #5
  br label %cleanup

if.end85:                                         ; preds = %land.lhs.true.if.end85_crit_edge, %if.end55.if.end85_crit_edge
  %dss86 = getelementptr inbounds %struct.omap_dss_device, ptr %dst, i32 0, i32 1
  %21 = ptrtoint ptr %dss86 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %dss86, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end85, %do.end71, %do.end41, %if.then22.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omapdss_gather_components(ptr noundef %dev) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  store volatile ptr @omapdss_comp_list, ptr @omapdss_comp_list, align 4
  store ptr @omapdss_comp_list, ptr getelementptr inbounds (%struct.list_head, ptr @omapdss_comp_list, i32 0, i32 1), align 4
  %of_node = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  tail call fastcc void @omapdss_walk_device(ptr noundef %dev, ptr noundef %1, i1 noundef zeroext true)
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @of_get_next_available_child(ptr noundef %3, ptr noundef null) #5
  %cmp.not10 = icmp eq ptr %call, null
  br i1 %cmp.not10, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %child.011 = phi ptr [ %call3, %for.body.for.body_crit_edge ], [ %call, %entry.for.body_crit_edge ]
  tail call fastcc void @omapdss_walk_device(ptr noundef %dev, ptr noundef nonnull %child.011, i1 noundef zeroext true)
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  %call3 = tail call ptr @of_get_next_available_child(ptr noundef %5, ptr noundef nonnull %child.011) #5
  %cmp.not = icmp eq ptr %call3, null
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @omapdss_walk_device(ptr noundef %dev, ptr noundef %node, i1 noundef zeroext %dss_core) unnamed_addr #1 align 64 {
entry:
  %compat = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %dss_core to i8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %compat) #5
  %0 = ptrtoint ptr %compat to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %compat, align 4, !annotation !38
  %call = call i32 @of_property_read_string(ptr noundef %node, ptr noundef nonnull @.str.9, ptr noundef nonnull %compat) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup26_crit_edge, label %if.end

entry.cleanup26_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup26

if.end:                                           ; preds = %entry
  %call.i = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 20, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.end.if.end7_crit_edge, label %if.then2

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

if.then2:                                         ; preds = %if.end
  %node3 = getelementptr inbounds %struct.omapdss_comp_node, ptr %call.i, i32 0, i32 1
  %1 = ptrtoint ptr %node3 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %node, ptr %node3, align 4
  %dss_core_component = getelementptr inbounds %struct.omapdss_comp_node, ptr %call.i, i32 0, i32 2
  %2 = ptrtoint ptr %dss_core_component to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %frombool, ptr %dss_core_component, align 4
  %3 = ptrtoint ptr %compat to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %compat, align 4
  %compat6 = getelementptr inbounds %struct.omapdss_comp_node, ptr %call.i, i32 0, i32 3
  %5 = ptrtoint ptr %compat6 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %compat6, align 4
  %6 = load ptr, ptr @omapdss_comp_list, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call.i, ptr noundef nonnull @omapdss_comp_list, ptr noundef %6) #5
  br i1 %call.i.i, label %if.end.i.i, label %if.then2.if.end7_crit_edge

if.then2.if.end7_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

if.end.i.i:                                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #7
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i, ptr %prev1.i.i, align 4
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %6, ptr %call.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call.i, i32 0, i32 1
  %9 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @omapdss_comp_list, ptr %prev3.i.i, align 4
  store volatile ptr %call.i, ptr @omapdss_comp_list, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.end.i.i, %if.then2.if.end7_crit_edge, %if.end.if.end7_crit_edge
  %call8 = call ptr @of_get_child_by_name(ptr noundef %node, ptr noundef nonnull @.str.10) #5
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %if.end12, label %if.end7.if.end15_crit_edge

if.end7.if.end15_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

if.end12:                                         ; preds = %if.end7
  %call11 = call ptr @of_get_child_by_name(ptr noundef %node, ptr noundef nonnull @.str.11) #5
  %tobool13.not = icmp eq ptr %call11, null
  br i1 %tobool13.not, label %if.end12.cleanup26_crit_edge, label %if.end12.if.end15_crit_edge

if.end12.if.end15_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

if.end12.cleanup26_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup26

if.end15:                                         ; preds = %if.end12.if.end15_crit_edge, %if.end7.if.end15_crit_edge
  %n.051 = phi ptr [ %call11, %if.end12.if.end15_crit_edge ], [ %call8, %if.end7.if.end15_crit_edge ]
  call void @of_node_put(ptr noundef nonnull %n.051) #5
  %call1652 = call ptr @of_graph_get_next_endpoint(ptr noundef %node, ptr noundef null) #5
  %cmp17.not53 = icmp eq ptr %call1652, null
  br i1 %cmp17.not53, label %if.end15.cleanup26_crit_edge, label %if.end15.while.body_crit_edge

if.end15.while.body_crit_edge:                    ; preds = %if.end15
  br label %while.body

if.end15.cleanup26_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup26

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %if.end15.while.body_crit_edge
  %call1654 = phi ptr [ %call16, %cleanup.while.body_crit_edge ], [ %call1652, %if.end15.while.body_crit_edge ]
  %call18 = call ptr @of_graph_get_remote_port_parent(ptr noundef nonnull %call1654) #5
  %tobool19.not = icmp eq ptr %call18, null
  br i1 %tobool19.not, label %while.body.cleanup_crit_edge, label %if.end21

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end21:                                         ; preds = %while.body
  %call22 = call zeroext i1 @of_device_is_available(ptr noundef nonnull %call18) #5
  br i1 %call22, label %if.end21.for.cond.i_crit_edge, label %if.end21.if.then24_crit_edge

if.end21.if.then24_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then24

if.end21.for.cond.i_crit_edge:                    ; preds = %if.end21
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end21.for.cond.i_crit_edge
  %comp.0.in.i = phi ptr [ %comp.0.i, %for.body.i.for.cond.i_crit_edge ], [ @omapdss_comp_list, %if.end21.for.cond.i_crit_edge ]
  %10 = ptrtoint ptr %comp.0.in.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %comp.0.i = load ptr, ptr %comp.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %comp.0.i, @omapdss_comp_list
  br i1 %cmp.not.i, label %if.end25, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %node1.i = getelementptr inbounds %struct.omapdss_comp_node, ptr %comp.0.i, i32 0, i32 1
  %11 = ptrtoint ptr %node1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %node1.i, align 4
  %cmp2.i = icmp eq ptr %12, %call18
  br i1 %cmp2.i, label %for.body.i.if.then24_crit_edge, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.i

for.body.i.if.then24_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then24

if.then24:                                        ; preds = %for.body.i.if.then24_crit_edge, %if.end21.if.then24_crit_edge
  call void @of_node_put(ptr noundef nonnull %call18) #5
  br label %cleanup

if.end25:                                         ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  call fastcc void @omapdss_walk_device(ptr noundef %dev, ptr noundef nonnull %call18, i1 noundef zeroext false)
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %if.then24, %while.body.cleanup_crit_edge
  %call16 = call ptr @of_graph_get_next_endpoint(ptr noundef %node, ptr noundef %call1654) #5
  %cmp17.not = icmp eq ptr %call16, null
  br i1 %cmp17.not, label %cleanup.cleanup26_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

cleanup.cleanup26_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup26

cleanup26:                                        ; preds = %cleanup.cleanup26_crit_edge, %if.end15.cleanup26_crit_edge, %if.end12.cleanup26_crit_edge, %entry.cleanup26_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %compat) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @omapdss_stack_is_ready() local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %comp.09 = load ptr, ptr @omapdss_comp_list, align 4
  %cmp.not10 = icmp eq ptr %comp.09, @omapdss_comp_list
  br i1 %cmp.not10, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body:                                         ; preds = %for.cond.backedge.for.body_crit_edge, %entry.for.body_crit_edge
  %comp.011 = phi ptr [ %comp.0, %for.cond.backedge.for.body_crit_edge ], [ %comp.09, %entry.for.body_crit_edge ]
  %dss_core_component.i = getelementptr inbounds %struct.omapdss_comp_node, ptr %comp.011, i32 0, i32 2
  %0 = ptrtoint ptr %dss_core_component.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dss_core_component.i, align 4, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %if.end.i, label %for.body.for.cond.backedge_crit_edge

for.body.for.cond.backedge_crit_edge:             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.backedge

if.end.i:                                         ; preds = %for.body
  %compat.i = getelementptr inbounds %struct.omapdss_comp_node, ptr %comp.011, i32 0, i32 3
  %2 = ptrtoint ptr %compat.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %compat.i, align 4
  %call1.i.i = tail call i32 @strncmp(ptr noundef %3, ptr noundef nonnull dereferenceable(9) @.str.12, i32 noundef 8) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %cmp.i.i, label %if.end2.i, label %if.end.i.for.cond.backedge_crit_edge

if.end.i.for.cond.backedge_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.backedge

if.end2.i:                                        ; preds = %if.end.i
  %node.i = getelementptr inbounds %struct.omapdss_comp_node, ptr %comp.011, i32 0, i32 1
  %4 = ptrtoint ptr %node.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %node.i, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @omapdss_devices_lock, i32 noundef 0) #5
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %if.end2.i
  %.pn.in.i.i = phi ptr [ @omapdss_devices_list, %if.end2.i ], [ %.pn.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %6 = ptrtoint ptr %.pn.in.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn.i.i = load ptr, ptr %.pn.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, @omapdss_devices_list
  br i1 %cmp.not.i.i, label %omapdss_device_is_registered.exit.i.thread, label %for.body.i.i

omapdss_device_is_registered.exit.i.thread:       ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @mutex_unlock(ptr noundef nonnull @omapdss_devices_lock) #5
  br label %cleanup

for.body.i.i:                                     ; preds = %for.cond.i.i
  %dssdev.0.i.i = getelementptr i8, ptr %.pn.i.i, i32 -20
  %7 = ptrtoint ptr %dssdev.0.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dssdev.0.i.i, align 4
  %of_node.i.i = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 27
  %9 = ptrtoint ptr %of_node.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %of_node.i.i, align 8
  %cmp1.i.i = icmp eq ptr %10, %5
  br i1 %cmp1.i.i, label %omapdss_device_is_registered.exit.i, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.i.i

omapdss_device_is_registered.exit.i:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @mutex_unlock(ptr noundef nonnull @omapdss_devices_lock) #5
  br label %for.cond.backedge

for.cond.backedge:                                ; preds = %omapdss_device_is_registered.exit.i, %if.end.i.for.cond.backedge_crit_edge, %for.body.for.cond.backedge_crit_edge
  %11 = ptrtoint ptr %comp.011 to i32
  call void @__asan_load4_noabort(i32 %11)
  %comp.0 = load ptr, ptr %comp.011, align 4
  %cmp.not = icmp eq ptr %comp.0, @omapdss_comp_list
  br i1 %cmp.not, label %for.cond.backedge.cleanup_crit_edge, label %for.cond.backedge.for.body_crit_edge

for.cond.backedge.for.body_crit_edge:             ; preds = %for.cond.backedge
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.cond.backedge.cleanup_crit_edge:              ; preds = %for.cond.backedge
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %for.cond.backedge.cleanup_crit_edge, %omapdss_device_is_registered.exit.i.thread, %entry.cleanup_crit_edge
  %cmp.not8 = phi i1 [ false, %omapdss_device_is_registered.exit.i.thread ], [ true, %entry.cleanup_crit_edge ], [ true, %for.cond.backedge.cleanup_crit_edge ]
  ret i1 %cmp.not8
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_next_endpoint(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_remote_port_parent(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_device_is_available(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

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

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !9, !10, !11, !13, !15, !16, !17, !19, !21, !23, !25}
!llvm.module.flags = !{!27, !28, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!35}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/omapdrm/dss/base.c", i32 145, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @omapdss_device_connect.__UNIQUE_ID_ddebug306, !1, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!6 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/omapdrm/dss/base.c", i32 171, i32 2}
!9 = !{ptr @.str.6, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @omapdss_device_disconnect.__UNIQUE_ID_ddebug307, !8, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!11 = !{ptr @omapdss_comp_list, !12, !"omapdss_comp_list", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/omapdrm/dss/base.c", i32 192, i32 25}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/omapdrm/dss/base.c", i32 29, i32 8}
!15 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @omapdss_devices_lock, !14, !"omapdss_devices_lock", i1 false, i1 false}
!17 = !{ptr @omapdss_devices_list, !18, !"omapdss_devices_list", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/omapdrm/dss/base.c", i32 28, i32 8}
!19 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/omapdrm/dss/base.c", i32 221, i32 38}
!21 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/omapdrm/dss/base.c", i32 237, i32 33}
!23 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/omapdrm/dss/base.c", i32 239, i32 34}
!25 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/omapdrm/dss/base.c", i32 277, i32 31}
!27 = !{i32 1, !"wchar_size", i32 2}
!28 = !{i32 1, !"min_enum_size", i32 4}
!29 = !{i32 8, !"branch-target-enforcement", i32 0}
!30 = !{i32 8, !"sign-return-address", i32 0}
!31 = !{i32 8, !"sign-return-address-all", i32 0}
!32 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!33 = !{i32 7, !"uwtable", i32 1}
!34 = !{i32 7, !"frame-pointer", i32 2}
!35 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!36 = !{i64 2148695923, i64 2148695928, i64 2148695941, i64 2148695985, i64 2148696019, i64 2148696040}
!37 = !{!"branch_weights", i32 1, i32 2000}
!38 = !{!"auto-init"}
!39 = !{i8 0, i8 2}
