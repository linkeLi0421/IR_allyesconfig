; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/netronome/nfp/nfpcore/nfp_mutex.c_pt.bc'
source_filename = "../drivers/net/ethernet/netronome/nfp/nfpcore/nfp_mutex.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nfp_cpp_mutex = type { ptr, i32, i16, i64, i32 }
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
%struct.list_head = type { ptr, ptr }

@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@nfp_cpp_mutex_lock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 191, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"nfp: interrupted waiting for NFP mutex\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"nfp_cpp_mutex_lock\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"drivers/net/ethernet/netronome/nfp/nfpcore/nfp_mutex.c\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nfp_cpp_mutex_lock._entry_ptr = internal global ptr @nfp_cpp_mutex_lock._entry, section ".printk_index", align 4
@nfp_cpp_mutex_lock._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 200, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"nfp: Warning: waiting for NFP mutex [depth:%hd target:%d addr:%llx key:%08x]\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@nfp_cpp_mutex_lock._entry_ptr.8 = internal global ptr @nfp_cpp_mutex_lock._entry.5, section ".printk_index", align 4
@nfp_cpp_mutex_lock._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 203, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"nfp: Error: mutex wait timed out\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@nfp_cpp_mutex_lock._entry_ptr.12 = internal global ptr @nfp_cpp_mutex_lock._entry.9, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 65535]
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 190, i32 4 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 197, i32 4 }
@___asan_gen_.40 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.46 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.47 = private constant [58 x i8] c"../drivers/net/ethernet/netronome/nfp/nfpcore/nfp_mutex.c\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 203, i32 4 }
@llvm.compiler.used = appending global [15 x ptr] [ptr @nfp_cpp_mutex_lock._entry, ptr @nfp_cpp_mutex_lock._entry.5, ptr @nfp_cpp_mutex_lock._entry.9, ptr @nfp_cpp_mutex_lock._entry_ptr, ptr @nfp_cpp_mutex_lock._entry_ptr.12, ptr @nfp_cpp_mutex_lock._entry_ptr.8, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.10, ptr @.str.11], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_cpp_mutex_lock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_cpp_mutex_lock._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_cpp_mutex_lock._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfp_cpp_mutex_init(ptr noundef %cpp, i32 noundef %target, i64 noundef %address, i32 noundef %key) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %and = shl i32 %target, 24
  %shl = and i32 %and, 2130706432
  %or1 = or i32 %shl, 1024
  %call = tail call zeroext i16 @nfp_cpp_interface(ptr noundef %cpp) #5
  call void @__sanitizer_cov_trace_const_cmp2(i16 4095, i16 %call)
  %cmp.i = icmp ugt i16 %call, 4095
  %and2.i = and i64 %address, 7
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and2.i)
  %tobool.not.i = icmp eq i64 %and2.i, 0
  %or.cond.i = and i1 %tobool.not.i, %cmp.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %target)
  %cmp5.not.i = icmp eq i32 %target, 7
  %or.cond = and i1 %cmp5.not.i, %or.cond.i
  br i1 %or.cond, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %add = add nuw i64 %address, 4
  %call3 = tail call i32 @nfp_cpp_writel(ptr noundef %cpp, i32 noundef %or1, i64 noundef %add, i32 noundef %key) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %conv.i = zext i16 %call to i32
  %shl.i = shl nuw i32 %conv.i, 16
  %or.i = or i32 %shl.i, 15
  %call8 = tail call i32 @nfp_cpp_writel(ptr noundef %cpp, i32 noundef %or1, i64 noundef %address, i32 noundef %or.i) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end.cleanup_crit_edge ], [ %call8, %if.end6 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @nfp_cpp_interface(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_cpp_writel(ptr noundef, i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local noalias ptr @nfp_cpp_mutex_alloc(ptr noundef %cpp, i32 noundef %target, i64 noundef %address, i32 noundef %key) local_unnamed_addr #0 align 64 {
entry:
  %tmp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i16 @nfp_cpp_interface(ptr noundef %cpp) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp) #5
  %0 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %tmp, align 4, !annotation !27
  call void @__sanitizer_cov_trace_const_cmp2(i16 4095, i16 %call)
  %cmp.i = icmp ugt i16 %call, 4095
  %and2.i = and i64 %address, 7
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and2.i)
  %tobool.not.i = icmp eq i64 %and2.i, 0
  %or.cond.i = and i1 %tobool.not.i, %cmp.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %target)
  %cmp5.not.i = icmp eq i32 %target, 7
  %or.cond = and i1 %cmp5.not.i, %or.cond.i
  br i1 %or.cond, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %add = add nuw i64 %address, 4
  %call3 = call i32 @nfp_cpp_readl(ptr noundef %cpp, i32 noundef 117441280, i64 noundef %add, ptr noundef nonnull %tmp) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %1 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %tmp, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %key)
  %cmp6.not = icmp eq i32 %2, %key
  br i1 %cmp6.not, label %if.end8, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end8:                                          ; preds = %if.end5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 32) #8
  %tobool10.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool10.not, label %if.end8.cleanup_crit_edge, label %if.end12

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %cpp, ptr %call7.i.i, align 8
  %target14 = getelementptr inbounds %struct.nfp_cpp_mutex, ptr %call7.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %target14 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 7, ptr %target14, align 4
  %address15 = getelementptr inbounds %struct.nfp_cpp_mutex, ptr %call7.i.i, i32 0, i32 3
  %6 = ptrtoint ptr %address15 to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %address, ptr %address15, align 8
  %key16 = getelementptr inbounds %struct.nfp_cpp_mutex, ptr %call7.i.i, i32 0, i32 4
  %7 = ptrtoint ptr %key16 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %key, ptr %key16, align 8
  %depth = getelementptr inbounds %struct.nfp_cpp_mutex, ptr %call7.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %depth to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 0, ptr %depth, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.end8.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i, %if.end12 ], [ null, %if.end.cleanup_crit_edge ], [ null, %if.end5.cleanup_crit_edge ], [ null, %if.end8.cleanup_crit_edge ], [ null, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp) #5
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_cpp_readl(ptr noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfp_cpp_mutex_free(ptr noundef %mutex) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %mutex) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfp_cpp_mutex_lock(ptr nocapture noundef %mutex) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %0, 1500
  %1 = load volatile i32, ptr @jiffies, align 128
  %depth = getelementptr inbounds %struct.nfp_cpp_mutex, ptr %mutex, i32 0, i32 2
  %target = getelementptr inbounds %struct.nfp_cpp_mutex, ptr %mutex, i32 0, i32 1
  %address = getelementptr inbounds %struct.nfp_cpp_mutex, ptr %mutex, i32 0, i32 3
  %key = getelementptr inbounds %struct.nfp_cpp_mutex, ptr %mutex, i32 0, i32 4
  %add1.neg = sub i32 -6000, %1
  br label %for.cond

for.cond:                                         ; preds = %if.end16.for.cond_crit_edge, %entry
  %warn_at.0 = phi i32 [ %add, %entry ], [ %warn_at.1, %if.end16.for.cond_crit_edge ]
  %call = tail call i32 @nfp_cpp_mutex_trylock(ptr noundef %mutex)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %call)
  %cmp.not = icmp eq i32 %call, -16
  br i1 %cmp.not, label %if.end, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %for.cond
  %call2 = tail call i32 @msleep_interruptible(i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3.not = icmp eq i32 %call2, 0
  br i1 %cmp3.not, label %if.end6, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %mutex to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mutex, align 8
  %call5 = tail call ptr @nfp_cpp_device(ptr noundef %3) #5
  %parent = getelementptr inbounds %struct.device, ptr %call5, i32 0, i32 1
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %5, ptr noundef nonnull @.str) #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %6, %warn_at.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub)
  %cmp7 = icmp sgt i32 %sub, -1
  br i1 %cmp7, label %if.then8, label %if.end6.if.end16_crit_edge

if.end6.if.end16_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %add9 = add i32 %7, 500
  %8 = ptrtoint ptr %mutex to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mutex, align 8
  %call14 = tail call ptr @nfp_cpp_device(ptr noundef %9) #5
  %parent15 = getelementptr inbounds %struct.device, ptr %call14, i32 0, i32 1
  %10 = ptrtoint ptr %parent15 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %parent15, align 8
  %12 = ptrtoint ptr %depth to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %depth, align 8
  %conv = zext i16 %13 to i32
  %14 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %target, align 4
  %16 = ptrtoint ptr %address to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %address, align 8
  %18 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %key, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %11, ptr noundef nonnull @.str.6, i32 noundef %conv, i32 noundef %15, i64 noundef %17, i32 noundef %19) #9
  br label %if.end16

if.end16:                                         ; preds = %if.then8, %if.end6.if.end16_crit_edge
  %warn_at.1 = phi i32 [ %add9, %if.then8 ], [ %warn_at.0, %if.end6.if.end16_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %20 = load volatile i32, ptr @jiffies, align 128
  %sub17 = add i32 %add1.neg, %20
  %cmp18 = icmp sgt i32 %sub17, -1
  br i1 %cmp18, label %do.end23, label %if.end16.for.cond_crit_edge

if.end16.for.cond_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond

do.end23:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  %21 = ptrtoint ptr %mutex to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mutex, align 8
  %call25 = tail call ptr @nfp_cpp_device(ptr noundef %22) #5
  %parent26 = getelementptr inbounds %struct.device, ptr %call25, i32 0, i32 1
  %23 = ptrtoint ptr %parent26 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %parent26, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.10) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end23, %do.end, %for.cond.cleanup_crit_edge
  %retval.0 = phi i32 [ -512, %do.end ], [ -16, %do.end23 ], [ %call, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfp_cpp_mutex_trylock(ptr nocapture noundef %mutex) local_unnamed_addr #0 align 64 {
entry:
  %key = alloca i32, align 4
  %tmp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %target = getelementptr inbounds %struct.nfp_cpp_mutex, ptr %mutex, i32 0, i32 1
  %0 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %target, align 4
  %and = shl i32 %1, 24
  %shl = and i32 %and, 2130706432
  %or1 = or i32 %shl, 1024
  %or6 = or i32 %shl, 197888
  %2 = ptrtoint ptr %mutex to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mutex, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %key) #5
  %4 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %key, align 4, !annotation !27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp) #5
  %5 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %tmp, align 4, !annotation !27
  %depth = getelementptr inbounds %struct.nfp_cpp_mutex, ptr %mutex, i32 0, i32 2
  %6 = ptrtoint ptr %depth to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %depth, align 8
  %8 = zext i16 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i16 %7, label %if.end [
    i16 0, label %if.end20
    i16 -1, label %entry.cleanup_crit_edge
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %inc = add nuw i16 %7, 1
  %9 = ptrtoint ptr %depth to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %inc, ptr %depth, align 8
  br label %cleanup

if.end20:                                         ; preds = %entry
  %or11 = or i32 %shl, 768
  %address = getelementptr inbounds %struct.nfp_cpp_mutex, ptr %mutex, i32 0, i32 3
  %10 = ptrtoint ptr %address to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %address, align 8
  %add = add i64 %11, 4
  %call = call i32 @nfp_cpp_readl(ptr noundef %3, i32 noundef %or11, i64 noundef %add, ptr noundef nonnull %key) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp21 = icmp slt i32 %call, 0
  br i1 %cmp21, label %if.end20.cleanup_crit_edge, label %if.end24

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end24:                                         ; preds = %if.end20
  %12 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %key, align 4
  %key25 = getelementptr inbounds %struct.nfp_cpp_mutex, ptr %mutex, i32 0, i32 4
  %14 = ptrtoint ptr %key25 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %key25, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp26.not = icmp eq i32 %13, %15
  br i1 %cmp26.not, label %if.end29, label %if.end24.cleanup_crit_edge

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end29:                                         ; preds = %if.end24
  %call30 = call zeroext i16 @nfp_cpp_interface(ptr noundef %3) #5
  %conv.i = zext i16 %call30 to i32
  %shl.i = shl nuw i32 %conv.i, 16
  %or.i = or i32 %shl.i, 15
  %16 = ptrtoint ptr %address to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %address, align 8
  %call33 = call i32 @nfp_cpp_readl(ptr noundef %3, i32 noundef %or6, i64 noundef %17, ptr noundef nonnull %tmp) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %cmp34 = icmp slt i32 %call33, 0
  br i1 %cmp34, label %if.end29.cleanup_crit_edge, label %if.end37

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end37:                                         ; preds = %if.end29
  %18 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tmp, align 4
  %and.i = and i32 %19, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 0
  br i1 %cmp.i, label %if.then39, label %if.end47

if.then39:                                        ; preds = %if.end37
  %20 = ptrtoint ptr %address to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %address, align 8
  %call41 = call i32 @nfp_cpp_writel(ptr noundef %3, i32 noundef %or1, i64 noundef %21, i32 noundef %or.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %cmp42 = icmp slt i32 %call41, 0
  br i1 %cmp42, label %if.then39.cleanup_crit_edge, label %if.end45

if.then39.cleanup_crit_edge:                      ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end45:                                         ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #7
  %22 = ptrtoint ptr %depth to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 1, ptr %depth, align 8
  br label %cleanup

if.end47:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %and.i)
  %cmp.i77 = icmp eq i32 %and.i, 15
  %cond = select i1 %cmp.i77, i32 -16, i32 -22
  br label %cleanup

cleanup:                                          ; preds = %if.end47, %if.end45, %if.then39.cleanup_crit_edge, %if.end29.cleanup_crit_edge, %if.end24.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ 0, %if.end45 ], [ %cond, %if.end47 ], [ -7, %entry.cleanup_crit_edge ], [ %call, %if.end20.cleanup_crit_edge ], [ -1, %if.end24.cleanup_crit_edge ], [ %call33, %if.end29.cleanup_crit_edge ], [ %call41, %if.then39.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %key) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msleep_interruptible(i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfp_cpp_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfp_cpp_mutex_unlock(ptr nocapture noundef %mutex) local_unnamed_addr #0 align 64 {
entry:
  %key = alloca i32, align 4
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %target = getelementptr inbounds %struct.nfp_cpp_mutex, ptr %mutex, i32 0, i32 1
  %0 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %target, align 4
  %and = shl i32 %1, 24
  %shl = and i32 %and, 2130706432
  %or1 = or i32 %shl, 1024
  %or6 = or i32 %shl, 768
  %2 = ptrtoint ptr %mutex to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mutex, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %key) #5
  %4 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %key, align 4, !annotation !27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #5
  %5 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %value, align 4, !annotation !27
  %call = tail call zeroext i16 @nfp_cpp_interface(ptr noundef %3) #5
  %depth = getelementptr inbounds %struct.nfp_cpp_mutex, ptr %mutex, i32 0, i32 2
  %6 = ptrtoint ptr %depth to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %depth, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %7)
  %cmp = icmp ugt i16 %7, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dec = add i16 %7, -1
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %mutex to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mutex, align 8
  %address = getelementptr inbounds %struct.nfp_cpp_mutex, ptr %mutex, i32 0, i32 3
  %10 = ptrtoint ptr %address to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %address, align 8
  %add = add i64 %11, 4
  %call11 = call i32 @nfp_cpp_readl(ptr noundef %9, i32 noundef %or6, i64 noundef %add, ptr noundef nonnull %key) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %if.end.cleanup_crit_edge, label %if.end15

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end15:                                         ; preds = %if.end
  %12 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %key, align 4
  %key16 = getelementptr inbounds %struct.nfp_cpp_mutex, ptr %mutex, i32 0, i32 4
  %14 = ptrtoint ptr %key16 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %key16, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp17.not = icmp eq i32 %13, %15
  br i1 %cmp17.not, label %if.end20, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end20:                                         ; preds = %if.end15
  %16 = ptrtoint ptr %mutex to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mutex, align 8
  %18 = ptrtoint ptr %address to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %address, align 8
  %call23 = call i32 @nfp_cpp_readl(ptr noundef %17, i32 noundef %or6, i64 noundef %19, ptr noundef nonnull %value) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp24 = icmp slt i32 %call23, 0
  br i1 %cmp24, label %if.end20.cleanup_crit_edge, label %if.end27

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end27:                                         ; preds = %if.end20
  %20 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %value, align 4
  %conv.i = zext i16 %call to i32
  %shl.i = shl nuw i32 %conv.i, 16
  %or.i = or i32 %shl.i, 15
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %or.i)
  %cmp29.not = icmp eq i32 %21, %or.i
  br i1 %cmp29.not, label %if.end32, label %if.end27.cleanup_crit_edge

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end32:                                         ; preds = %if.end27
  %22 = ptrtoint ptr %address to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %address, align 8
  %call35 = call i32 @nfp_cpp_writel(ptr noundef %3, i32 noundef %or1, i64 noundef %23, i32 noundef %shl.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %cmp36 = icmp slt i32 %call35, 0
  br i1 %cmp36, label %if.end32.cleanup_crit_edge, label %if.end32.cleanup.sink.split_crit_edge

if.end32.cleanup.sink.split_crit_edge:            ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.end32.cleanup.sink.split_crit_edge, %if.then
  %.sink = phi i16 [ %dec, %if.then ], [ 0, %if.end32.cleanup.sink.split_crit_edge ]
  %24 = ptrtoint ptr %depth to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %.sink, ptr %depth, align 8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end32.cleanup_crit_edge, %if.end27.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call11, %if.end.cleanup_crit_edge ], [ -1, %if.end15.cleanup_crit_edge ], [ %call23, %if.end20.cleanup_crit_edge ], [ -13, %if.end27.cleanup_crit_edge ], [ %call35, %if.end32.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %key) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfp_cpp_mutex_reclaim(ptr noundef %cpp, i32 noundef %target, i64 noundef %address) local_unnamed_addr #0 align 64 {
entry:
  %tmp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %and = shl i32 %target, 24
  %shl = and i32 %and, 2130706432
  %or5 = or i32 %shl, 1024
  %call = tail call zeroext i16 @nfp_cpp_interface(ptr noundef %cpp) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp) #5
  %0 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %tmp, align 4, !annotation !27
  call void @__sanitizer_cov_trace_const_cmp2(i16 4095, i16 %call)
  %cmp.i = icmp ugt i16 %call, 4095
  %and2.i = and i64 %address, 7
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and2.i)
  %tobool.not.i = icmp eq i64 %and2.i, 0
  %or.cond.i = and i1 %tobool.not.i, %cmp.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %target)
  %cmp5.not.i = icmp eq i32 %target, 7
  %or.cond = and i1 %cmp5.not.i, %or.cond.i
  br i1 %or.cond, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %or1 = or i32 %shl, 768
  %call7 = call i32 @nfp_cpp_readl(ptr noundef %cpp, i32 noundef %or1, i64 noundef %address, ptr noundef nonnull %tmp) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp = icmp slt i32 %call7, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %1 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %tmp, align 4
  %and.i = and i32 %2, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i37 = icmp ne i32 %and.i, 0
  %shr.i = lshr i32 %2, 16
  %conv = zext i16 %call to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i, i32 %conv)
  %cmp12.not = icmp eq i32 %shr.i, %conv
  %or.cond40 = select i1 %cmp.i37, i1 %cmp12.not, i1 false
  br i1 %or.cond40, label %if.end15, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end15:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  %shl.i = and i32 %2, -65536
  %call17 = call i32 @nfp_cpp_writel(ptr noundef %cpp, i32 noundef %or5, i64 noundef %address, i32 noundef %shl.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18 = icmp slt i32 %call17, 0
  %call17. = select i1 %cmp18, i32 %call17, i32 1
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.end9.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.end.cleanup_crit_edge ], [ 0, %if.end9.cleanup_crit_edge ], [ %call17., %if.end15 ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !16, !17}
!llvm.module.flags = !{!18, !19, !20, !21, !22, !23, !24, !25}
!llvm.ident = !{!26}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/netronome/nfp/nfpcore/nfp_mutex.c", i32 190, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @nfp_cpp_mutex_lock._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @nfp_cpp_mutex_lock._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/netronome/nfp/nfpcore/nfp_mutex.c", i32 197, i32 4}
!10 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @nfp_cpp_mutex_lock._entry.5, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @nfp_cpp_mutex_lock._entry_ptr.8, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.10, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/netronome/nfp/nfpcore/nfp_mutex.c", i32 203, i32 4}
!15 = !{ptr @.str.11, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @nfp_cpp_mutex_lock._entry.9, !14, !"_entry", i1 false, i1 false}
!17 = !{ptr @nfp_cpp_mutex_lock._entry_ptr.12, !14, !"_entry_ptr", i1 false, i1 false}
!18 = !{i32 1, !"wchar_size", i32 2}
!19 = !{i32 1, !"min_enum_size", i32 4}
!20 = !{i32 8, !"branch-target-enforcement", i32 0}
!21 = !{i32 8, !"sign-return-address", i32 0}
!22 = !{i32 8, !"sign-return-address-all", i32 0}
!23 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!24 = !{i32 7, !"uwtable", i32 1}
!25 = !{i32 7, !"frame-pointer", i32 2}
!26 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!27 = !{!"auto-init"}
