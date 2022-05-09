; ModuleID = '/llk/IR_all_yes/drivers/net/ipa/gsi_trans.c_pt.bc'
source_filename = "../drivers/net/ipa/gsi_trans.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.gsi_trans_pool = type { ptr, i32, i32, i32, i32, i32 }
%struct.gsi_channel = type { ptr, i8, i8, i8, i16, i16, %struct.gsi_ring, i32, i64, i64, i64, i64, i64, i64, %struct.gsi_trans_info, %struct.napi_struct }
%struct.gsi_ring = type { ptr, i32, i32, i32 }
%struct.gsi_trans_info = type { %struct.atomic_t, %struct.gsi_trans_pool, %struct.gsi_trans_pool, %struct.gsi_trans_pool, %struct.gsi_trans_pool, ptr, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.gsi_trans = type { %struct.list_head, ptr, i8, i8, i8, i8, i32, ptr, ptr, ptr, i32, %struct.refcount_struct, %struct.completion, i64, i64 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.gsi = type { ptr, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.completion, %struct.mutex, [23 x %struct.gsi_channel], [24 x %struct.gsi_evt_ring], %struct.net_device }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.gsi_evt_ring = type { ptr, %struct.gsi_ring }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.103, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.117, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.103 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.117 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.ipa_cmd_info = type { i32, i32 }
%struct.sk_buff = type { %union.anon.43, %union.anon.46, %union.anon.47, [48 x i8], %union.anon.48, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.50, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.43 = type { %struct.anon.44 }
%struct.anon.44 = type { ptr, ptr, %union.anon.45 }
%union.anon.45 = type { ptr }
%union.anon.46 = type { ptr }
%union.anon.47 = type { i64 }
%union.anon.48 = type { %struct.anon.49 }
%struct.anon.49 = type { i32, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.52, i32, i32, i32, i16, i16, %union.anon.54, i32, %union.anon.55, %union.anon.56, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.52 = type { i32 }
%union.anon.54 = type { i32 }
%union.anon.55 = type { i32 }
%union.anon.56 = type { i16 }
%struct.gsi_tre = type { i64, i16, i16, i32 }

@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/net/ipa/gsi_trans.c\00", [36 x i8] zeroinitializer }, align 32
@gsi_channel_trans_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&trans_info->spinlock\00", [42 x i8] zeroinitializer }, align 32
@gsi_channel_trans_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str, i32 797, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"error %d initializing channel %u transactions\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"gsi_channel_trans_init\00", [41 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@gsi_channel_trans_init._entry_ptr = internal global ptr @gsi_channel_trans_init._entry, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 224, i32 2 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 783, i32 2 }
@___asan_gen_.16 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.29 = private constant [31 x i8] c"../drivers/net/ipa/gsi_trans.c\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 796, i32 2 }
@___asan_gen_.31 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.34 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.35 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 87, i32 2 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @gsi_channel_trans_init._entry, ptr @gsi_channel_trans_init._entry_ptr, ptr @.str, ptr @gsi_channel_trans_init.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @init_completion.__key, ptr @.str.6], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsi_channel_trans_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsi_channel_trans_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gsi_trans_pool_init(ptr nocapture noundef writeonly %pool, i32 noundef %size, i32 noundef %count, i32 noundef %max_alloc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %tobool.not = icmp eq i32 %size, 0
  %0 = add i32 %max_alloc, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %0, i32 %count)
  %1 = icmp uge i32 %0, %count
  %2 = or i1 %tobool.not, %1
  br i1 %2, label %entry.cleanup_crit_edge, label %if.end5

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %entry
  %sub = add i32 %0, %count
  %3 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %sub, i32 %size) #9
  %4 = extractvalue { i32, i1 } %3, 1
  br i1 %4, label %if.end5.cleanup_crit_edge, label %if.end7.i.i, !prof !24

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7.i.i:                                      ; preds = %if.end5
  %5 = extractvalue { i32, i1 } %3, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %5, i32 noundef 3520) #12
  %tobool6.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool6.not, label %if.end7.i.i.cleanup_crit_edge, label %if.end8

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8:                                          ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %pool to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call8.i.i, ptr %pool, align 4
  %call10 = tail call i32 @ksize(ptr noundef nonnull %call8.i.i) #9
  %div = udiv i32 %call10, %size
  %count11 = getelementptr inbounds %struct.gsi_trans_pool, ptr %pool, i32 0, i32 1
  %7 = ptrtoint ptr %count11 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %div, ptr %count11, align 4
  %free = getelementptr inbounds %struct.gsi_trans_pool, ptr %pool, i32 0, i32 2
  %8 = ptrtoint ptr %free to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %free, align 4
  %max_alloc12 = getelementptr inbounds %struct.gsi_trans_pool, ptr %pool, i32 0, i32 4
  %9 = ptrtoint ptr %max_alloc12 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %max_alloc, ptr %max_alloc12, align 4
  %size13 = getelementptr inbounds %struct.gsi_trans_pool, ptr %pool, i32 0, i32 3
  %10 = ptrtoint ptr %size13 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %size, ptr %size13, align 4
  %addr = getelementptr inbounds %struct.gsi_trans_pool, ptr %pool, i32 0, i32 5
  %11 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %addr, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end7.i.i.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end8 ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end7.i.i.cleanup_crit_edge ], [ -12, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ksize(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gsi_trans_pool_exit(ptr nocapture noundef %pool) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pool to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pool, align 4
  tail call void @kfree(ptr noundef %1) #9
  %2 = call ptr @memset(ptr %pool, i32 0, i32 24)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gsi_trans_pool_init_dma(ptr noundef %dev, ptr nocapture noundef writeonly %pool, i32 noundef %size, i32 noundef %count, i32 noundef %max_alloc) local_unnamed_addr #0 align 64 {
entry:
  %addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr) #9
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %addr, align 4, !annotation !25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %tobool.not = icmp eq i32 %size, 0
  %1 = add i32 %max_alloc, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %count)
  %2 = icmp uge i32 %1, %count
  %3 = or i1 %tobool.not, %2
  br i1 %3, label %entry.cleanup_crit_edge, label %if.end5

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %entry
  %sub.i34 = add i32 %size, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i34)
  %tobool.not.i.i.i = icmp eq i32 %sub.i34, 0
  %4 = tail call i32 @llvm.ctlz.i32(i32 %sub.i34, i1 true) #9, !range !26
  %sub.i.i.i = sub nuw nsw i32 32, %4
  %sub.i.i.op.i = shl nuw i32 1, %sub.i.i.i
  %shl.i = select i1 %tobool.not.i.i.i, i32 1, i32 %sub.i.i.op.i
  %sub = add i32 %1, %count
  %mul = mul i32 %shl.i, %sub
  %dec.i = add i32 %mul, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %dec.i)
  %tobool.not.i.i = icmp ult i32 %dec.i, 4096
  %shr.i = lshr i32 %dec.i, 12
  %5 = tail call i32 @llvm.ctlz.i32(i32 %shr.i, i1 true) #9, !range !26
  %.neg = mul nsw i32 %5, -4096
  %sub.i.i.op = add nsw i32 %.neg, 131072
  %shl = select i1 %tobool.not.i.i, i32 0, i32 %sub.i.i.op
  %call.i = call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef %shl, ptr noundef nonnull %addr, i32 noundef 3264, i32 noundef 0) #9
  %tobool8.not = icmp eq ptr %call.i, null
  br i1 %tobool8.not, label %if.end5.cleanup_crit_edge, label %if.end10

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end10:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %pool to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i, ptr %pool, align 4
  %7 = select i1 %tobool.not.i.i.i, i32 0, i32 %sub.i.i.i
  %div35 = lshr i32 %shl, %7
  %count11 = getelementptr inbounds %struct.gsi_trans_pool, ptr %pool, i32 0, i32 1
  %8 = ptrtoint ptr %count11 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %div35, ptr %count11, align 4
  %free = getelementptr inbounds %struct.gsi_trans_pool, ptr %pool, i32 0, i32 2
  %9 = ptrtoint ptr %free to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %free, align 4
  %size12 = getelementptr inbounds %struct.gsi_trans_pool, ptr %pool, i32 0, i32 3
  %10 = ptrtoint ptr %size12 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %shl.i, ptr %size12, align 4
  %max_alloc13 = getelementptr inbounds %struct.gsi_trans_pool, ptr %pool, i32 0, i32 4
  %11 = ptrtoint ptr %max_alloc13 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %max_alloc, ptr %max_alloc13, align 4
  %12 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %addr, align 4
  %addr14 = getelementptr inbounds %struct.gsi_trans_pool, ptr %pool, i32 0, i32 5
  %14 = ptrtoint ptr %addr14 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %addr14, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.end5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end10 ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end5.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gsi_trans_pool_exit_dma(ptr noundef %dev, ptr nocapture noundef %pool) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %count = getelementptr inbounds %struct.gsi_trans_pool, ptr %pool, i32 0, i32 1
  %0 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count, align 4
  %size = getelementptr inbounds %struct.gsi_trans_pool, ptr %pool, i32 0, i32 3
  %2 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size, align 4
  %mul = mul i32 %3, %1
  %4 = ptrtoint ptr %pool to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pool, align 4
  %addr = getelementptr inbounds %struct.gsi_trans_pool, ptr %pool, i32 0, i32 5
  %6 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %addr, align 4
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef %mul, ptr noundef %5, i32 noundef %7, i32 noundef 0) #9
  %8 = call ptr @memset(ptr %pool, i32 0, i32 24)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @gsi_trans_pool_alloc(ptr nocapture noundef %pool, i32 noundef %count) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pool to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pool, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool.not.i = icmp eq i32 %count, 0
  br i1 %tobool.not.i, label %do.end.i, label %entry.if.end.i_crit_edge, !prof !24

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 187, i32 noundef 9, ptr noundef null) #9
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %entry.if.end.i_crit_edge
  %max_alloc.i = getelementptr inbounds %struct.gsi_trans_pool, ptr %pool, i32 0, i32 4
  %2 = ptrtoint ptr %max_alloc.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_alloc.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %count)
  %cmp.i = icmp ult i32 %3, %count
  br i1 %cmp.i, label %do.end37.i, label %if.end.i.if.end43.i_crit_edge, !prof !24

if.end.i.if.end43.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43.i

do.end37.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 188, i32 noundef 9, ptr noundef null) #9
  br label %if.end43.i

if.end43.i:                                       ; preds = %do.end37.i, %if.end.i.if.end43.i_crit_edge
  %count51.i = getelementptr inbounds %struct.gsi_trans_pool, ptr %pool, i32 0, i32 1
  %4 = ptrtoint ptr %count51.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %count51.i, align 4
  %free.i = getelementptr inbounds %struct.gsi_trans_pool, ptr %pool, i32 0, i32 2
  %6 = ptrtoint ptr %free.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %free.i, align 4
  %sub.i = sub i32 %5, %7
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %count)
  %cmp52.i = icmp ult i32 %sub.i, %count
  br i1 %cmp52.i, label %if.then53.i, label %if.end43.i.gsi_trans_pool_alloc_common.exit_crit_edge

if.end43.i.gsi_trans_pool_alloc_common.exit_crit_edge: ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %gsi_trans_pool_alloc_common.exit

if.then53.i:                                      ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %free.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %free.i, align 4
  br label %gsi_trans_pool_alloc_common.exit

gsi_trans_pool_alloc_common.exit:                 ; preds = %if.then53.i, %if.end43.i.gsi_trans_pool_alloc_common.exit_crit_edge
  %9 = ptrtoint ptr %free.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %free.i, align 4
  %size.i = getelementptr inbounds %struct.gsi_trans_pool, ptr %pool, i32 0, i32 3
  %11 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %size.i, align 4
  %mul.i = mul i32 %12, %10
  %add.i = add i32 %10, %count
  store i32 %add.i, ptr %free.i, align 4
  %13 = ptrtoint ptr %pool to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pool, align 4
  %add.ptr.i = getelementptr i8, ptr %14, i32 %mul.i
  %mul59.i = mul i32 %12, %count
  %15 = call ptr @memset(ptr %add.ptr.i, i32 0, i32 %mul59.i)
  %add.ptr = getelementptr i8, ptr %1, i32 %mul.i
  ret ptr %add.ptr
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @gsi_trans_pool_alloc_dma(ptr nocapture noundef %pool, ptr nocapture noundef writeonly %addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %max_alloc.i = getelementptr inbounds %struct.gsi_trans_pool, ptr %pool, i32 0, i32 4
  %0 = ptrtoint ptr %max_alloc.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_alloc.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i = icmp eq i32 %1, 0
  br i1 %cmp.i, label %do.end37.i, label %entry.if.end43.i_crit_edge, !prof !24

entry.if.end43.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43.i

do.end37.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 188, i32 noundef 9, ptr noundef null) #9
  br label %if.end43.i

if.end43.i:                                       ; preds = %do.end37.i, %entry.if.end43.i_crit_edge
  %count51.i = getelementptr inbounds %struct.gsi_trans_pool, ptr %pool, i32 0, i32 1
  %2 = ptrtoint ptr %count51.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %count51.i, align 4
  %free.i = getelementptr inbounds %struct.gsi_trans_pool, ptr %pool, i32 0, i32 2
  %4 = ptrtoint ptr %free.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %free.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp52.i = icmp eq i32 %3, %5
  br i1 %cmp52.i, label %if.then53.i, label %if.end43.i.gsi_trans_pool_alloc_common.exit_crit_edge

if.end43.i.gsi_trans_pool_alloc_common.exit_crit_edge: ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %gsi_trans_pool_alloc_common.exit

if.then53.i:                                      ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %free.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %free.i, align 4
  br label %gsi_trans_pool_alloc_common.exit

gsi_trans_pool_alloc_common.exit:                 ; preds = %if.then53.i, %if.end43.i.gsi_trans_pool_alloc_common.exit_crit_edge
  %7 = ptrtoint ptr %free.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %free.i, align 4
  %size.i = getelementptr inbounds %struct.gsi_trans_pool, ptr %pool, i32 0, i32 3
  %9 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %size.i, align 4
  %mul.i = mul i32 %10, %8
  %add.i = add i32 %8, 1
  store i32 %add.i, ptr %free.i, align 4
  %11 = ptrtoint ptr %pool to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pool, align 4
  %add.ptr.i = getelementptr i8, ptr %12, i32 %mul.i
  %13 = call ptr @memset(ptr %add.ptr.i, i32 0, i32 %10)
  %addr1 = getelementptr inbounds %struct.gsi_trans_pool, ptr %pool, i32 0, i32 5
  %14 = ptrtoint ptr %addr1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %addr1, align 4
  %add = add i32 %15, %mul.i
  %16 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %add, ptr %addr, align 4
  %17 = load ptr, ptr %pool, align 4
  %add.ptr = getelementptr i8, ptr %17, i32 %mul.i
  ret ptr %add.ptr
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @gsi_trans_pool_next(ptr nocapture noundef readonly %pool, ptr noundef readnone %element) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pool to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pool, align 4
  %count = getelementptr inbounds %struct.gsi_trans_pool, ptr %pool, i32 0, i32 1
  %2 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %count, align 4
  %size = getelementptr inbounds %struct.gsi_trans_pool, ptr %pool, i32 0, i32 3
  %4 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %size, align 4
  %mul = mul i32 %5, %3
  %add.ptr = getelementptr i8, ptr %1, i32 %mul
  %cmp = icmp ugt ptr %1, %element
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge, !prof !24

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 224, i32 noundef 9, ptr noundef null) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %cmp21.not = icmp ugt ptr %add.ptr, %element
  br i1 %cmp21.not, label %if.end.if.end43_crit_edge, label %do.end37, !prof !27

if.end.if.end43_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43

do.end37:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 225, i32 noundef 9, ptr noundef null) #9
  br label %if.end43

if.end43:                                         ; preds = %do.end37, %if.end.if.end43_crit_edge
  %max_alloc = getelementptr inbounds %struct.gsi_trans_pool, ptr %pool, i32 0, i32 4
  %6 = ptrtoint ptr %max_alloc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max_alloc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp52.not = icmp eq i32 %7, 1
  br i1 %cmp52.not, label %if.end43.if.end74_crit_edge, label %do.end68, !prof !27

if.end43.if.end74_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end74

do.end68:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 226, i32 noundef 9, ptr noundef null) #9
  br label %if.end74

if.end74:                                         ; preds = %do.end68, %if.end43.if.end74_crit_edge
  %8 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %size, align 4
  %add.ptr83 = getelementptr i8, ptr %element, i32 %9
  %cmp84 = icmp ult ptr %add.ptr83, %add.ptr
  br i1 %cmp84, label %if.end74.cond.end_crit_edge, label %cond.false

if.end74.cond.end_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.false:                                       ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %pool to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pool, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end74.cond.end_crit_edge
  %cond = phi ptr [ %11, %cond.false ], [ %add.ptr83, %if.end74.cond.end_crit_edge ]
  ret ptr %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @gsi_channel_trans_mapped(ptr nocapture noundef readonly %channel, i32 noundef %index) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %map = getelementptr inbounds %struct.gsi_channel, ptr %channel, i32 0, i32 14, i32 5
  %0 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %map, align 4
  %count = getelementptr inbounds %struct.gsi_channel, ptr %channel, i32 0, i32 6, i32 2
  %2 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %count, align 4
  %rem = urem i32 %index, %3
  %arrayidx = getelementptr ptr, ptr %1, i32 %rem
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  ret ptr %5
}

; Function Attrs: argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @gsi_channel_trans_complete(ptr noundef %channel) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %complete = getelementptr inbounds %struct.gsi_channel, ptr %channel, i32 0, i32 14, i32 9
  %0 = ptrtoint ptr %complete to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %complete, align 4
  %cmp.not = icmp eq ptr %1, %complete
  %spec.select = select i1 %cmp.not, ptr null, ptr %1
  ret ptr %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gsi_trans_move_complete(ptr noundef %trans) local_unnamed_addr #0 align 64 {
entry:
  %list = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %list.sroa.gep = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 1
  %gsi = getelementptr inbounds %struct.gsi_trans, ptr %trans, i32 0, i32 1
  %0 = ptrtoint ptr %gsi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gsi, align 8
  %channel_id = getelementptr inbounds %struct.gsi_trans, ptr %trans, i32 0, i32 2
  %2 = ptrtoint ptr %channel_id to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %channel_id, align 4
  %idxprom = zext i8 %3 to i32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %list) #9
  %4 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %list, align 4, !annotation !25
  %5 = ptrtoint ptr %list.sroa.gep to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -1 to ptr), ptr %list.sroa.gep, align 4, !annotation !25
  %spinlock = getelementptr %struct.gsi, ptr %1, i32 0, i32 14, i32 %idxprom, i32 14, i32 6
  tail call void @_raw_spin_lock_bh(ptr noundef %spinlock) #9
  %pending = getelementptr %struct.gsi, ptr %1, i32 0, i32 14, i32 %idxprom, i32 14, i32 8
  %6 = ptrtoint ptr %pending to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %pending, align 4
  %cmp.i.not.i = icmp eq ptr %7, %pending
  br i1 %cmp.i.not.i, label %entry.list_cut_position.exit_crit_edge, label %if.end.i

entry.list_cut_position.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_cut_position.exit

if.end.i:                                         ; preds = %entry
  %8 = ptrtoint ptr %pending to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %pending, align 4
  %cmp.i.not.i.i = icmp eq ptr %9, %pending
  br i1 %cmp.i.not.i.i, label %if.end.i.if.end8.i_crit_edge, label %list_is_singular.exit.i

if.end.i.if.end8.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i

list_is_singular.exit.i:                          ; preds = %if.end.i
  %prev.i.i = getelementptr %struct.gsi, ptr %1, i32 0, i32 14, i32 %idxprom, i32 14, i32 8, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i.i, align 4
  %cmp.i22.not.i = icmp eq ptr %9, %11
  br i1 %cmp.i22.not.i, label %land.lhs.true.i, label %list_is_singular.exit.i.if.end8.i_crit_edge

list_is_singular.exit.i.if.end8.i_crit_edge:      ; preds = %list_is_singular.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i

land.lhs.true.i:                                  ; preds = %list_is_singular.exit.i
  %cmp.i23.i = icmp eq ptr %pending, %trans
  %cmp.not.i = icmp eq ptr %9, %trans
  %or.cond.i = select i1 %cmp.i23.i, i1 true, i1 %cmp.not.i
  br i1 %or.cond.i, label %land.lhs.true.i.if.end8.i_crit_edge, label %land.lhs.true.i.list_cut_position.exit_crit_edge

land.lhs.true.i.list_cut_position.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_cut_position.exit

land.lhs.true.i.if.end8.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i

if.end8.i:                                        ; preds = %land.lhs.true.i.if.end8.i_crit_edge, %list_is_singular.exit.i.if.end8.i_crit_edge, %if.end.i.if.end8.i_crit_edge
  %cmp.i25.not.i = icmp eq ptr %pending, %trans
  br i1 %cmp.i25.not.i, label %if.then11.i, label %if.else.i

if.then11.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %list, ptr %list, align 4
  br label %if.end12.sink.split.i

if.else.i:                                        ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %trans, align 4
  %.sroa.gep = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %9, ptr %list, align 4
  %prev.i28.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i28.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %list, ptr %prev.i28.i, align 4
  %17 = ptrtoint ptr %list.sroa.gep to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %trans, ptr %list.sroa.gep, align 4
  store ptr %list, ptr %trans, align 4
  %18 = ptrtoint ptr %pending to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %14, ptr %pending, align 4
  br label %if.end12.sink.split.i

if.end12.sink.split.i:                            ; preds = %if.else.i, %if.then11.i
  %head.sink.i = phi ptr [ %pending, %if.else.i ], [ %list, %if.then11.i ]
  %.sink.i.sroa.phi = phi ptr [ %.sroa.gep, %if.else.i ], [ %list.sroa.gep, %if.then11.i ]
  %19 = ptrtoint ptr %.sink.i.sroa.phi to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %head.sink.i, ptr %.sink.i.sroa.phi, align 4
  br label %list_cut_position.exit

list_cut_position.exit:                           ; preds = %if.end12.sink.split.i, %land.lhs.true.i.list_cut_position.exit_crit_edge, %entry.list_cut_position.exit_crit_edge
  %20 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %list, align 4
  %cmp.i.not.i9 = icmp eq ptr %21, %list
  br i1 %cmp.i.not.i9, label %list_cut_position.exit.list_splice_tail.exit_crit_edge, label %if.then.i

list_cut_position.exit.list_splice_tail.exit_crit_edge: ; preds = %list_cut_position.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_splice_tail.exit

if.then.i:                                        ; preds = %list_cut_position.exit
  call void @__sanitizer_cov_trace_pc() #11
  %complete = getelementptr %struct.gsi, ptr %1, i32 0, i32 14, i32 %idxprom, i32 14, i32 9
  %prev.i = getelementptr %struct.gsi, ptr %1, i32 0, i32 14, i32 %idxprom, i32 14, i32 9, i32 1
  %22 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prev.i, align 4
  %24 = ptrtoint ptr %list.sroa.gep to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %list.sroa.gep, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %26 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %23, ptr %prev3.i.i, align 4
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %21, ptr %23, align 4
  %28 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %complete, ptr %25, align 4
  store ptr %25, ptr %prev.i, align 4
  br label %list_splice_tail.exit

list_splice_tail.exit:                            ; preds = %if.then.i, %list_cut_position.exit.list_splice_tail.exit_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %spinlock) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %list) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gsi_trans_move_polled(ptr noundef %trans) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %gsi = getelementptr inbounds %struct.gsi_trans, ptr %trans, i32 0, i32 1
  %0 = ptrtoint ptr %gsi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gsi, align 8
  %channel_id = getelementptr inbounds %struct.gsi_trans, ptr %trans, i32 0, i32 2
  %2 = ptrtoint ptr %channel_id to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %channel_id, align 4
  %idxprom = zext i8 %3 to i32
  %spinlock = getelementptr %struct.gsi, ptr %1, i32 0, i32 14, i32 %idxprom, i32 14, i32 6
  tail call void @_raw_spin_lock_bh(ptr noundef %spinlock) #9
  %polled = getelementptr %struct.gsi, ptr %1, i32 0, i32 14, i32 %idxprom, i32 14, i32 10
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %trans) #9
  br i1 %call.i.i, label %if.end.i.i, label %entry.__list_del_entry.exit.i_crit_edge

entry.__list_del_entry.exit.i_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %trans, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %trans, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %entry.__list_del_entry.exit.i_crit_edge
  %prev.i2.i = getelementptr %struct.gsi, ptr %1, i32 0, i32 14, i32 %idxprom, i32 14, i32 10, i32 1
  %10 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i2.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %trans, ptr noundef %11, ptr noundef %polled) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move_tail.exit_crit_edge

__list_del_entry.exit.i.list_move_tail.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_move_tail.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %trans, ptr %prev.i2.i, align 4
  %13 = ptrtoint ptr %trans to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %polled, ptr %trans, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %trans, i32 0, i32 1
  %14 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev3.i.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %trans, ptr %11, align 4
  br label %list_move_tail.exit

list_move_tail.exit:                              ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %spinlock) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @gsi_channel_trans_alloc(ptr noundef %gsi, i32 noundef %channel_id, i32 noundef %tre_count, i32 noundef %direction) local_unnamed_addr #0 align 64 {
entry:
  %avail.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @gsi_channel_trans_tre_max(ptr noundef %gsi, i32 noundef %channel_id) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %tre_count)
  %cmp = icmp ult i32 %call, %tre_count
  br i1 %cmp, label %do.end, label %if.end22, !prof !24

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 332, i32 noundef 9, ptr noundef null) #9
  br label %cleanup

if.end22:                                         ; preds = %entry
  %trans_info23 = getelementptr %struct.gsi, ptr %gsi, i32 0, i32 14, i32 %channel_id, i32 14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %avail.i) #9
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %trans_info23, i32 noundef 4) #9
  %0 = ptrtoint ptr %trans_info23 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %trans_info23, align 4
  br label %do.body.i

do.body.i:                                        ; preds = %arch_atomic_cmpxchg.exit.i.i.i.do.body.i_crit_edge, %if.end22
  %storemerge.i = phi i32 [ %1, %if.end22 ], [ %asmresult3.i.i.i.i.i, %arch_atomic_cmpxchg.exit.i.i.i.do.body.i_crit_edge ]
  %2 = ptrtoint ptr %avail.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %storemerge.i, ptr %avail.i, align 4
  %sub.i = sub i32 %storemerge.i, %tre_count
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %gsi_trans_tre_reserve.exit.thread, label %do.cond.i, !prof !24

gsi_trans_tre_reserve.exit.thread:                ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %avail.i) #9
  br label %cleanup

do.cond.i:                                        ; preds = %do.body.i
  %call.i.i9.i = call zeroext i1 @__kasan_check_write(ptr noundef %trans_info23, i32 noundef 4) #9
  %call.i3.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %avail.i, i32 noundef 4) #9
  %3 = ptrtoint ptr %avail.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %avail.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !28
  call void @llvm.prefetch.p0(ptr %trans_info23, i32 1, i32 3, i32 1) #9
  br label %do.body.i.i.i.i.i

do.body.i.i.i.i.i:                                ; preds = %do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, %do.cond.i
  %5 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %trans_info23, ptr %trans_info23, i32 %4, i32 %sub.i, ptr elementtype(i32) %trans_info23) #9, !srcloc !29
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %5, 0
  %tobool.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %arch_atomic_cmpxchg.exit.i.i.i, label %do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge:    ; preds = %do.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i.i.i.i

arch_atomic_cmpxchg.exit.i.i.i:                   ; preds = %do.body.i.i.i.i.i
  %asmresult3.i.i.i.i.i = extractvalue { i32, i32 } %5, 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !30
  %cmp.not.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i, %4
  br i1 %cmp.not.i.i.i, label %if.end26, label %arch_atomic_cmpxchg.exit.i.i.i.do.body.i_crit_edge, !prof !27

arch_atomic_cmpxchg.exit.i.i.i.do.body.i_crit_edge: ; preds = %arch_atomic_cmpxchg.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

if.end26:                                         ; preds = %arch_atomic_cmpxchg.exit.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %avail.i) #9
  %pool = getelementptr %struct.gsi, ptr %gsi, i32 0, i32 14, i32 %channel_id, i32 14, i32 1
  %6 = ptrtoint ptr %pool to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pool, align 4
  %max_alloc.i.i = getelementptr %struct.gsi, ptr %gsi, i32 0, i32 14, i32 %channel_id, i32 14, i32 1, i32 4
  %8 = ptrtoint ptr %max_alloc.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %max_alloc.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.i.i = icmp eq i32 %9, 0
  br i1 %cmp.i.i, label %do.end37.i.i, label %if.end26.if.end43.i.i_crit_edge, !prof !24

if.end26.if.end43.i.i_crit_edge:                  ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43.i.i

do.end37.i.i:                                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 188, i32 noundef 9, ptr noundef null) #9
  br label %if.end43.i.i

if.end43.i.i:                                     ; preds = %do.end37.i.i, %if.end26.if.end43.i.i_crit_edge
  %count51.i.i = getelementptr %struct.gsi, ptr %gsi, i32 0, i32 14, i32 %channel_id, i32 14, i32 1, i32 1
  %10 = ptrtoint ptr %count51.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %count51.i.i, align 4
  %free.i.i = getelementptr %struct.gsi, ptr %gsi, i32 0, i32 14, i32 %channel_id, i32 14, i32 1, i32 2
  %12 = ptrtoint ptr %free.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %free.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp52.i.i = icmp eq i32 %11, %13
  br i1 %cmp52.i.i, label %if.then53.i.i, label %if.end43.i.i.gsi_trans_pool_alloc.exit_crit_edge

if.end43.i.i.gsi_trans_pool_alloc.exit_crit_edge: ; preds = %if.end43.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %gsi_trans_pool_alloc.exit

if.then53.i.i:                                    ; preds = %if.end43.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %free.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %free.i.i, align 4
  br label %gsi_trans_pool_alloc.exit

gsi_trans_pool_alloc.exit:                        ; preds = %if.then53.i.i, %if.end43.i.i.gsi_trans_pool_alloc.exit_crit_edge
  %15 = ptrtoint ptr %free.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %free.i.i, align 4
  %size.i.i = getelementptr %struct.gsi, ptr %gsi, i32 0, i32 14, i32 %channel_id, i32 14, i32 1, i32 3
  %17 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %size.i.i, align 4
  %mul.i.i = mul i32 %18, %16
  %add.i.i = add i32 %16, 1
  store i32 %add.i.i, ptr %free.i.i, align 4
  %19 = ptrtoint ptr %pool to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pool, align 4
  %add.ptr.i.i = getelementptr i8, ptr %20, i32 %mul.i.i
  %21 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %18)
  %add.ptr.i = getelementptr i8, ptr %7, i32 %mul.i.i
  %gsi28 = getelementptr inbounds %struct.gsi_trans, ptr %add.ptr.i, i32 0, i32 1
  %22 = ptrtoint ptr %gsi28 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %gsi, ptr %gsi28, align 8
  %conv = trunc i32 %channel_id to i8
  %channel_id29 = getelementptr inbounds %struct.gsi_trans, ptr %add.ptr.i, i32 0, i32 2
  %23 = ptrtoint ptr %channel_id29 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv, ptr %channel_id29, align 4
  %conv30 = trunc i32 %tre_count to i8
  %tre_count31 = getelementptr inbounds %struct.gsi_trans, ptr %add.ptr.i, i32 0, i32 4
  %24 = ptrtoint ptr %tre_count31 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv30, ptr %tre_count31, align 2
  %completion = getelementptr inbounds %struct.gsi_trans, ptr %add.ptr.i, i32 0, i32 12
  %25 = ptrtoint ptr %completion to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %completion, align 4
  %wait.i = getelementptr inbounds %struct.completion, ptr %completion, i32 0, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.6, ptr noundef nonnull @init_completion.__key) #9
  %sg_pool = getelementptr %struct.gsi, ptr %gsi, i32 0, i32 14, i32 %channel_id, i32 14, i32 2
  %26 = ptrtoint ptr %sg_pool to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %sg_pool, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tre_count)
  %tobool.not.i.i = icmp eq i32 %tre_count, 0
  br i1 %tobool.not.i.i, label %do.end.i.i, label %gsi_trans_pool_alloc.exit.if.end.i.i_crit_edge, !prof !24

gsi_trans_pool_alloc.exit.if.end.i.i_crit_edge:   ; preds = %gsi_trans_pool_alloc.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

do.end.i.i:                                       ; preds = %gsi_trans_pool_alloc.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 187, i32 noundef 9, ptr noundef null) #9
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i.i, %gsi_trans_pool_alloc.exit.if.end.i.i_crit_edge
  %max_alloc.i.i61 = getelementptr %struct.gsi, ptr %gsi, i32 0, i32 14, i32 %channel_id, i32 14, i32 2, i32 4
  %28 = ptrtoint ptr %max_alloc.i.i61 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %max_alloc.i.i61, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %tre_count)
  %cmp.i.i62 = icmp ult i32 %29, %tre_count
  br i1 %cmp.i.i62, label %do.end37.i.i63, label %if.end.i.i.if.end43.i.i68_crit_edge, !prof !24

if.end.i.i.if.end43.i.i68_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43.i.i68

do.end37.i.i63:                                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 188, i32 noundef 9, ptr noundef null) #9
  br label %if.end43.i.i68

if.end43.i.i68:                                   ; preds = %do.end37.i.i63, %if.end.i.i.if.end43.i.i68_crit_edge
  %count51.i.i64 = getelementptr %struct.gsi, ptr %gsi, i32 0, i32 14, i32 %channel_id, i32 14, i32 2, i32 1
  %30 = ptrtoint ptr %count51.i.i64 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %count51.i.i64, align 4
  %free.i.i65 = getelementptr %struct.gsi, ptr %gsi, i32 0, i32 14, i32 %channel_id, i32 14, i32 2, i32 2
  %32 = ptrtoint ptr %free.i.i65 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %free.i.i65, align 4
  %sub.i.i66 = sub i32 %31, %33
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i66, i32 %tre_count)
  %cmp52.i.i67 = icmp ult i32 %sub.i.i66, %tre_count
  br i1 %cmp52.i.i67, label %if.then53.i.i69, label %if.end43.i.i68.gsi_trans_pool_alloc.exit75_crit_edge

if.end43.i.i68.gsi_trans_pool_alloc.exit75_crit_edge: ; preds = %if.end43.i.i68
  call void @__sanitizer_cov_trace_pc() #11
  br label %gsi_trans_pool_alloc.exit75

if.then53.i.i69:                                  ; preds = %if.end43.i.i68
  call void @__sanitizer_cov_trace_pc() #11
  %34 = ptrtoint ptr %free.i.i65 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %free.i.i65, align 4
  br label %gsi_trans_pool_alloc.exit75

gsi_trans_pool_alloc.exit75:                      ; preds = %if.then53.i.i69, %if.end43.i.i68.gsi_trans_pool_alloc.exit75_crit_edge
  %35 = ptrtoint ptr %free.i.i65 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %free.i.i65, align 4
  %size.i.i70 = getelementptr %struct.gsi, ptr %gsi, i32 0, i32 14, i32 %channel_id, i32 14, i32 2, i32 3
  %37 = ptrtoint ptr %size.i.i70 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %size.i.i70, align 4
  %mul.i.i71 = mul i32 %38, %36
  %add.i.i72 = add i32 %36, %tre_count
  store i32 %add.i.i72, ptr %free.i.i65, align 4
  %39 = ptrtoint ptr %sg_pool to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %sg_pool, align 4
  %add.ptr.i.i73 = getelementptr i8, ptr %40, i32 %mul.i.i71
  %mul59.i.i = mul i32 %38, %tre_count
  %41 = call ptr @memset(ptr %add.ptr.i.i73, i32 0, i32 %mul59.i.i)
  %add.ptr.i74 = getelementptr i8, ptr %27, i32 %mul.i.i71
  %sgl = getelementptr inbounds %struct.gsi_trans, ptr %add.ptr.i, i32 0, i32 8
  %42 = ptrtoint ptr %sgl to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %add.ptr.i74, ptr %sgl, align 8
  %sub.i76 = add i32 %tre_count, -1
  %arrayidx.i = getelementptr %struct.scatterlist, ptr %add.ptr.i74, i32 %sub.i76
  %43 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx.i, align 4
  %or.i.i = and i32 %44, -4
  %and.i.i = or i32 %or.i.i, 2
  store i32 %and.i.i, ptr %arrayidx.i, align 4
  %direction34 = getelementptr inbounds %struct.gsi_trans, ptr %add.ptr.i, i32 0, i32 10
  %45 = ptrtoint ptr %direction34 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %direction, ptr %direction34, align 8
  %spinlock = getelementptr %struct.gsi, ptr %gsi, i32 0, i32 14, i32 %channel_id, i32 14, i32 6
  call void @_raw_spin_lock_bh(ptr noundef %spinlock) #9
  %alloc = getelementptr %struct.gsi, ptr %gsi, i32 0, i32 14, i32 %channel_id, i32 14, i32 7
  %prev.i = getelementptr %struct.gsi, ptr %gsi, i32 0, i32 14, i32 %channel_id, i32 14, i32 7, i32 1
  %46 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %prev.i, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %add.ptr.i, ptr noundef %47, ptr noundef %alloc) #9
  br i1 %call.i.i, label %if.end.i.i77, label %gsi_trans_pool_alloc.exit75.list_add_tail.exit_crit_edge

gsi_trans_pool_alloc.exit75.list_add_tail.exit_crit_edge: ; preds = %gsi_trans_pool_alloc.exit75
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit

if.end.i.i77:                                     ; preds = %gsi_trans_pool_alloc.exit75
  call void @__sanitizer_cov_trace_pc() #11
  %48 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %add.ptr.i, ptr %prev.i, align 4
  %49 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %alloc, ptr %add.ptr.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %add.ptr.i, i32 0, i32 1
  %50 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %47, ptr %prev3.i.i, align 4
  %51 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile ptr %add.ptr.i, ptr %47, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i77, %gsi_trans_pool_alloc.exit75.list_add_tail.exit_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %spinlock) #9
  %refcount = getelementptr inbounds %struct.gsi_trans, ptr %add.ptr.i, i32 0, i32 11
  %call.i.i.i78 = call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #9
  %52 = ptrtoint ptr %refcount to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile i32 1, ptr %refcount, align 4
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit, %gsi_trans_tre_reserve.exit.thread, %do.end
  %retval.0 = phi ptr [ null, %do.end ], [ %add.ptr.i, %list_add_tail.exit ], [ null, %gsi_trans_tre_reserve.exit.thread ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gsi_channel_trans_tre_max(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gsi_trans_free(ptr noundef %trans) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %refcount1 = getelementptr inbounds %struct.gsi_trans, ptr %trans, i32 0, i32 11
  %call = tail call zeroext i1 @refcount_dec_not_one(ptr noundef %refcount1) #9
  br i1 %call, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %gsi = getelementptr inbounds %struct.gsi_trans, ptr %trans, i32 0, i32 1
  %0 = ptrtoint ptr %gsi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gsi, align 8
  %channel_id = getelementptr inbounds %struct.gsi_trans, ptr %trans, i32 0, i32 2
  %2 = ptrtoint ptr %channel_id to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %channel_id, align 4
  %idxprom = zext i8 %3 to i32
  %trans_info2 = getelementptr %struct.gsi, ptr %1, i32 0, i32 14, i32 %idxprom, i32 14
  %spinlock = getelementptr %struct.gsi, ptr %1, i32 0, i32 14, i32 %idxprom, i32 14, i32 6
  tail call void @_raw_spin_lock_bh(ptr noundef %spinlock) #9
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount1, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !31
  tail call void @llvm.prefetch.p0(ptr %refcount1, i32 1, i32 3, i32 1) #9
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount1, ptr %refcount1, i32 1, ptr elementtype(i32) %refcount1) #9, !srcloc !32
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then4, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.if.then8.critedge_crit_edge, label %if.then10.i.i.i, !prof !27

if.end5.i.i.i.if.then8.critedge_crit_edge:        ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then8.critedge

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %refcount1, i32 noundef 3) #9
  br label %if.then8.critedge

if.then4:                                         ; preds = %if.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !33
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %trans) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.then4.list_del.exit_crit_edge

if.then4.list_del.exit_crit_edge:                 ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %trans, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i, align 4
  %7 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %trans, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then4.list_del.exit_crit_edge
  %11 = ptrtoint ptr %trans to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 256 to ptr), ptr %trans, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %trans, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %spinlock) #9
  tail call void @ipa_gsi_trans_release(ptr noundef %trans) #9
  %tre_count = getelementptr inbounds %struct.gsi_trans, ptr %trans, i32 0, i32 4
  %13 = ptrtoint ptr %tre_count to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %tre_count, align 2
  %conv = zext i8 %14 to i32
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %trans_info2, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %trans_info2, i32 1, i32 3, i32 1) #9
  %15 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %trans_info2, ptr %trans_info2, i32 %conv, ptr elementtype(i32) %trans_info2) #9, !srcloc !34
  br label %cleanup

if.then8.critedge:                                ; preds = %if.then10.i.i.i, %if.end5.i.i.i.if.then8.critedge_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %spinlock) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then8.critedge, %list_del.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @refcount_dec_not_one(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipa_gsi_trans_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gsi_trans_cmd_add(ptr nocapture noundef %trans, ptr nocapture noundef readnone %buf, i32 noundef %size, i32 noundef %addr, i32 noundef %direction, i32 noundef %opcode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %used = getelementptr inbounds %struct.gsi_trans, ptr %trans, i32 0, i32 5
  %0 = ptrtoint ptr %used to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %used, align 1
  %inc = add i8 %1, 1
  store i8 %inc, ptr %used, align 1
  %tre_count = getelementptr inbounds %struct.gsi_trans, ptr %trans, i32 0, i32 4
  %2 = ptrtoint ptr %tre_count to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %tre_count, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %3)
  %cmp.not = icmp ult i8 %1, %3
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.end, !prof !27

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 409, i32 noundef 9, ptr noundef null) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %conv = zext i8 %1 to i32
  %sgl = getelementptr inbounds %struct.gsi_trans, ptr %trans, i32 0, i32 8
  %4 = ptrtoint ptr %sgl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sgl, align 8
  %arrayidx = getelementptr %struct.scatterlist, ptr %5, i32 %conv
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %and.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %sg_assign_page.exit, label %do.body19.i, !prof !27

do.body19.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #9, !srcloc !35
  unreachable

sg_assign_page.exit:                              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %and.i = and i32 %7, 3
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %and.i, ptr %arrayidx, align 4
  %dma_address = getelementptr %struct.scatterlist, ptr %5, i32 %conv, i32 3
  %9 = ptrtoint ptr %dma_address to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %addr, ptr %dma_address, align 4
  %dma_length = getelementptr %struct.scatterlist, ptr %5, i32 %conv, i32 4
  %10 = ptrtoint ptr %dma_length to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %size, ptr %dma_length, align 4
  %info21 = getelementptr inbounds %struct.gsi_trans, ptr %trans, i32 0, i32 9
  %11 = ptrtoint ptr %info21 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %info21, align 4
  %arrayidx22 = getelementptr %struct.ipa_cmd_info, ptr %12, i32 %conv
  %13 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %opcode, ptr %arrayidx22, align 4
  %direction24 = getelementptr %struct.ipa_cmd_info, ptr %12, i32 %conv, i32 1
  %14 = ptrtoint ptr %direction24 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %direction, ptr %direction24, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gsi_trans_page_add(ptr nocapture noundef %trans, ptr noundef %page, i32 noundef %size, i32 noundef %offset) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sgl = getelementptr inbounds %struct.gsi_trans, ptr %trans, i32 0, i32 8
  %0 = ptrtoint ptr %sgl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sgl, align 8
  %tre_count = getelementptr inbounds %struct.gsi_trans, ptr %trans, i32 0, i32 4
  %2 = ptrtoint ptr %tre_count to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %tre_count, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cmp.not = icmp eq i8 %3, 1
  br i1 %cmp.not, label %if.end22, label %do.end, !prof !27

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 442, i32 noundef 9, ptr noundef null) #9
  br label %cleanup

if.end22:                                         ; preds = %entry
  %used = getelementptr inbounds %struct.gsi_trans, ptr %trans, i32 0, i32 5
  %4 = ptrtoint ptr %used to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %used, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool24.not = icmp eq i8 %5, 0
  br i1 %tobool24.not, label %if.end56, label %do.end40, !prof !27

do.end40:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 444, i32 noundef 9, ptr noundef null) #9
  br label %cleanup

if.end56:                                         ; preds = %if.end22
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %1, align 4
  %8 = ptrtoint ptr %page to i32
  %and2.i.i = and i32 %8, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool.not.i.i = icmp eq i32 %and2.i.i, 0
  br i1 %tobool.not.i.i, label %do.body11.i.i, label %do.body5.i.i, !prof !27

do.body5.i.i:                                     ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #9, !srcloc !36
  unreachable

do.body11.i.i:                                    ; preds = %if.end56
  %and.i.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %sg_set_page.exit, label %do.body19.i.i, !prof !27

do.body19.i.i:                                    ; preds = %do.body11.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #9, !srcloc !35
  unreachable

sg_set_page.exit:                                 ; preds = %do.body11.i.i
  %and.i.i = and i32 %7, 3
  %or.i.i = or i32 %and.i.i, %8
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %or.i.i, ptr %1, align 4
  %offset1.i = getelementptr inbounds %struct.scatterlist, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %offset1.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %offset, ptr %offset1.i, align 4
  %length.i = getelementptr inbounds %struct.scatterlist, ptr %1, i32 0, i32 2
  %11 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %size, ptr %length.i, align 4
  %gsi = getelementptr inbounds %struct.gsi_trans, ptr %trans, i32 0, i32 1
  %12 = ptrtoint ptr %gsi to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %gsi, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 128
  %direction = getelementptr inbounds %struct.gsi_trans, ptr %trans, i32 0, i32 10
  %16 = ptrtoint ptr %direction to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %direction, align 8
  %call = tail call i32 @dma_map_sg_attrs(ptr noundef %15, ptr noundef %1, i32 noundef 1, i32 noundef %17, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool57.not = icmp eq i32 %call, 0
  br i1 %tobool57.not, label %sg_set_page.exit.cleanup_crit_edge, label %if.end59

sg_set_page.exit.cleanup_crit_edge:               ; preds = %sg_set_page.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end59:                                         ; preds = %sg_set_page.exit
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %used to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %used, align 1
  %inc = add i8 %19, 1
  store i8 %inc, ptr %used, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end59, %sg_set_page.exit.cleanup_crit_edge, %do.end40, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end40 ], [ 0, %if.end59 ], [ -12, %sg_set_page.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gsi_trans_skb_add(ptr nocapture noundef %trans, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sgl = getelementptr inbounds %struct.gsi_trans, ptr %trans, i32 0, i32 8
  %0 = ptrtoint ptr %sgl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sgl, align 8
  %tre_count = getelementptr inbounds %struct.gsi_trans, ptr %trans, i32 0, i32 4
  %2 = ptrtoint ptr %tre_count to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %tre_count, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cmp.not = icmp eq i8 %3, 1
  br i1 %cmp.not, label %if.end22, label %do.end, !prof !27

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 464, i32 noundef 9, ptr noundef null) #9
  br label %cleanup

if.end22:                                         ; preds = %entry
  %used24 = getelementptr inbounds %struct.gsi_trans, ptr %trans, i32 0, i32 5
  %4 = ptrtoint ptr %used24 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %used24, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool25.not = icmp eq i8 %5, 0
  br i1 %tobool25.not, label %if.end57, label %do.end41, !prof !27

do.end41:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 466, i32 noundef 9, ptr noundef null) #9
  br label %cleanup

if.end57:                                         ; preds = %if.end22
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %6 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len, align 4
  %call = tail call i32 @skb_to_sgvec(ptr noundef %skb, ptr noundef %1, i32 noundef 0, i32 noundef %7) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp58 = icmp slt i32 %call, 0
  br i1 %cmp58, label %if.end57.cleanup_crit_edge, label %if.end61

if.end57.cleanup_crit_edge:                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end61:                                         ; preds = %if.end57
  %gsi = getelementptr inbounds %struct.gsi_trans, ptr %trans, i32 0, i32 1
  %8 = ptrtoint ptr %gsi to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %gsi, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 128
  %direction = getelementptr inbounds %struct.gsi_trans, ptr %trans, i32 0, i32 10
  %12 = ptrtoint ptr %direction to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %direction, align 8
  %call62 = tail call i32 @dma_map_sg_attrs(ptr noundef %11, ptr noundef %1, i32 noundef %call, i32 noundef %13, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %if.end61.cleanup_crit_edge, label %if.end65

if.end61.cleanup_crit_edge:                       ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end65:                                         ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %used24 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %used24, align 1
  %16 = trunc i32 %call to i8
  %conv68 = add i8 %15, %16
  store i8 %conv68, ptr %used24, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end65, %if.end61.cleanup_crit_edge, %if.end57.cleanup_crit_edge, %do.end41, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end41 ], [ 0, %if.end65 ], [ %call, %if.end57.cleanup_crit_edge ], [ -12, %if.end61.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_to_sgvec(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gsi_trans_commit(ptr noundef %trans, i1 noundef zeroext %ring_db) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %used = getelementptr inbounds %struct.gsi_trans, ptr %trans, i32 0, i32 5
  %0 = ptrtoint ptr %used to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %used, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @__gsi_trans_commit(ptr noundef %trans, i1 noundef zeroext %ring_db)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @gsi_trans_free(ptr noundef %trans)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__gsi_trans_commit(ptr noundef %trans, i1 noundef zeroext %ring_db) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %gsi = getelementptr inbounds %struct.gsi_trans, ptr %trans, i32 0, i32 1
  %0 = ptrtoint ptr %gsi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gsi, align 8
  %channel_id = getelementptr inbounds %struct.gsi_trans, ptr %trans, i32 0, i32 2
  %2 = ptrtoint ptr %channel_id to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %channel_id, align 4
  %idxprom = zext i8 %3 to i32
  %arrayidx = getelementptr %struct.gsi, ptr %1, i32 0, i32 14, i32 %idxprom
  %tre_ring = getelementptr %struct.gsi, ptr %1, i32 0, i32 14, i32 %idxprom, i32 6
  %toward_ipa = getelementptr %struct.gsi, ptr %1, i32 0, i32 14, i32 %idxprom, i32 1
  %4 = ptrtoint ptr %toward_ipa to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %toward_ipa, align 4, !range !37
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  %used = getelementptr inbounds %struct.gsi_trans, ptr %trans, i32 0, i32 5
  %6 = ptrtoint ptr %used to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %used, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool3.not = icmp eq i8 %7, 0
  br i1 %tobool3.not, label %do.end, label %entry.if.end_crit_edge, !prof !24

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 555, i32 noundef 9, ptr noundef null) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %info24 = getelementptr inbounds %struct.gsi_trans, ptr %trans, i32 0, i32 9
  %8 = ptrtoint ptr %info24 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %info24, align 4
  %count = getelementptr %struct.gsi, ptr %1, i32 0, i32 14, i32 %idxprom, i32 6, i32 2
  %10 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %count, align 4
  %index = getelementptr %struct.gsi, ptr %1, i32 0, i32 14, i32 %idxprom, i32 6, i32 3
  %12 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %index, align 4
  %call = tail call ptr @gsi_ring_virt(ptr noundef %tre_ring, i32 noundef %13) #9
  %14 = ptrtoint ptr %used to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %used, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp121.not = icmp eq i8 %15, 0
  br i1 %cmp121.not, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %conv120 = zext i8 %15 to i32
  %sgl = getelementptr inbounds %struct.gsi_trans, ptr %trans, i32 0, i32 8
  %16 = ptrtoint ptr %sgl to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sgl, align 8
  %rem = urem i32 %13, %11
  %sub = sub i32 %11, %rem
  %spec.select.v.i.i = select i1 %tobool.not, i32 512, i32 1536
  br label %for.body

for.body:                                         ; preds = %if.end45.for.body_crit_edge, %for.body.lr.ph
  %conv129 = phi i32 [ %conv120, %for.body.lr.ph ], [ %conv, %if.end45.for.body_crit_edge ]
  %i.0128 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end45.for.body_crit_edge ]
  %avail.0127 = phi i32 [ %sub, %for.body.lr.ph ], [ %dec, %if.end45.for.body_crit_edge ]
  %byte_count.0126 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %if.end45.for.body_crit_edge ]
  %sg.0125 = phi ptr [ %17, %for.body.lr.ph ], [ %call49, %if.end45.for.body_crit_edge ]
  %dest_tre.0124 = phi ptr [ %call, %for.body.lr.ph ], [ %incdec.ptr48, %if.end45.for.body_crit_edge ]
  %info.0123 = phi ptr [ %9, %for.body.lr.ph ], [ %info.1, %if.end45.for.body_crit_edge ]
  %opcode.0122 = phi i32 [ 0, %for.body.lr.ph ], [ %opcode.1, %if.end45.for.body_crit_edge ]
  %sub34 = add nsw i32 %conv129, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0128, i32 %sub34)
  %cmp35 = icmp eq i32 %i.0128, %sub34
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %sg.0125, i32 0, i32 3
  %18 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dma_address, align 4
  %dma_length = getelementptr inbounds %struct.scatterlist, ptr %sg.0125, i32 0, i32 4
  %20 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dma_length, align 4
  %add = add i32 %21, %byte_count.0126
  %dec = add i32 %avail.0127, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %avail.0127)
  %tobool38.not = icmp eq i32 %avail.0127, 0
  br i1 %tobool38.not, label %if.then39, label %for.body.if.end41_crit_edge

for.body.if.end41_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41

if.then39:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %call40 = tail call ptr @gsi_ring_virt(ptr noundef %tre_ring, i32 noundef 0) #9
  br label %if.end41

if.end41:                                         ; preds = %if.then39, %for.body.if.end41_crit_edge
  %dest_tre.1 = phi ptr [ %dest_tre.0124, %for.body.if.end41_crit_edge ], [ %call40, %if.then39 ]
  %tobool42.not = icmp eq ptr %info.0123, null
  br i1 %tobool42.not, label %if.end41.if.end45_crit_edge, label %if.then43

if.end41.if.end45_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45

if.then43:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  %incdec.ptr = getelementptr %struct.ipa_cmd_info, ptr %info.0123, i32 1
  %22 = ptrtoint ptr %info.0123 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %info.0123, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.then43, %if.end41.if.end45_crit_edge
  %opcode.1 = phi i32 [ %23, %if.then43 ], [ %opcode.0122, %if.end41.if.end45_crit_edge ]
  %info.1 = phi ptr [ %incdec.ptr, %if.then43 ], [ null, %if.end41.if.end45_crit_edge ]
  %conv.i = zext i32 %19 to i64
  %24 = tail call i64 @llvm.bswap.i64(i64 %conv.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %opcode.1)
  %cmp.i.i = icmp eq i32 %opcode.1, 0
  %conv.i.i = trunc i32 %21 to i16
  %25 = tail call i16 @llvm.bswap.i16(i16 %conv.i.i) #9
  %conv2.i.i = trunc i32 %opcode.1 to i16
  %26 = tail call i16 @llvm.bswap.i16(i16 %conv2.i.i) #9
  %cond.in.i.i = select i1 %cmp.i.i, i16 %25, i16 %26
  %cond.i.i = select i1 %cmp.i.i, i32 131072, i32 196608
  %tre_flags.0.v.i.i = select i1 %cmp35, i32 %spec.select.v.i.i, i32 1
  %tre_flags.0.i.i = or i32 %cond.i.i, %tre_flags.0.v.i.i
  %27 = tail call i32 @llvm.bswap.i32(i32 %tre_flags.0.i.i) #9
  %28 = ptrtoint ptr %dest_tre.1 to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %24, ptr %dest_tre.1, align 8
  %tre.sroa.5.0..sroa_idx.i = getelementptr inbounds i8, ptr %dest_tre.1, i32 8
  %29 = ptrtoint ptr %tre.sroa.5.0..sroa_idx.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %cond.in.i.i, ptr %tre.sroa.5.0..sroa_idx.i, align 8
  %tre.sroa.7.0..sroa_idx.i = getelementptr inbounds i8, ptr %dest_tre.1, i32 10
  %30 = ptrtoint ptr %tre.sroa.7.0..sroa_idx.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 0, ptr %tre.sroa.7.0..sroa_idx.i, align 2
  %tre.sroa.9.0..sroa_idx.i = getelementptr inbounds i8, ptr %dest_tre.1, i32 12
  %31 = ptrtoint ptr %tre.sroa.9.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %27, ptr %tre.sroa.9.0..sroa_idx.i, align 4
  %incdec.ptr48 = getelementptr %struct.gsi_tre, ptr %dest_tre.1, i32 1
  %inc = add nuw nsw i32 %i.0128, 1
  %call49 = tail call ptr @sg_next(ptr noundef %sg.0125) #9
  %32 = ptrtoint ptr %used to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %used, align 1
  %conv = zext i8 %33 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %if.end45.for.body_crit_edge, label %for.end.loopexit

if.end45.for.body_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end.loopexit:                                 ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  %phi.cast = zext i8 %33 to i32
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %if.end.for.end_crit_edge
  %.lcssa = phi i32 [ %phi.cast, %for.end.loopexit ], [ 0, %if.end.for.end_crit_edge ]
  %byte_count.0.lcssa = phi i32 [ %add, %for.end.loopexit ], [ 0, %if.end.for.end_crit_edge ]
  %34 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %index, align 4
  %add53 = add i32 %35, %.lcssa
  store i32 %add53, ptr %index, align 4
  %36 = ptrtoint ptr %toward_ipa to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %toward_ipa, align 4, !range !37
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool55.not = icmp eq i8 %37, 0
  br i1 %tobool55.not, label %for.end.if.end66_crit_edge, label %if.then56

for.end.if.end66_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end66

if.then56:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %len57 = getelementptr inbounds %struct.gsi_trans, ptr %trans, i32 0, i32 6
  %38 = ptrtoint ptr %len57 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %byte_count.0.lcssa, ptr %len57, align 8
  %trans_count = getelementptr %struct.gsi, ptr %1, i32 0, i32 14, i32 %idxprom, i32 9
  %39 = ptrtoint ptr %trans_count to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %trans_count, align 8
  %trans_count58 = getelementptr inbounds %struct.gsi_trans, ptr %trans, i32 0, i32 14
  %41 = ptrtoint ptr %trans_count58 to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 %40, ptr %trans_count58, align 8
  %byte_count59 = getelementptr %struct.gsi, ptr %1, i32 0, i32 14, i32 %idxprom, i32 8
  %42 = ptrtoint ptr %byte_count59 to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %byte_count59, align 8
  %byte_count60 = getelementptr inbounds %struct.gsi_trans, ptr %trans, i32 0, i32 13
  %44 = ptrtoint ptr %byte_count60 to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %43, ptr %byte_count60, align 8
  %45 = load i64, ptr %trans_count, align 8
  %inc62 = add i64 %45, 1
  store i64 %inc62, ptr %trans_count, align 8
  %conv63 = zext i32 %byte_count.0.lcssa to i64
  %46 = load i64, ptr %byte_count59, align 8
  %add65 = add i64 %46, %conv63
  store i64 %add65, ptr %byte_count59, align 8
  br label %if.end66

if.end66:                                         ; preds = %if.then56, %for.end.if.end66_crit_edge
  %47 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %index, align 4
  %sub68 = add i32 %48, -1
  %map.i = getelementptr %struct.gsi, ptr %1, i32 0, i32 14, i32 %idxprom, i32 14, i32 5
  %49 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %map.i, align 4
  %51 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %count, align 4
  %rem.i = urem i32 %sub68, %52
  %arrayidx.i = getelementptr ptr, ptr %50, i32 %rem.i
  %53 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %trans, ptr %arrayidx.i, align 4
  %54 = ptrtoint ptr %gsi to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %gsi, align 8
  %56 = ptrtoint ptr %channel_id to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %channel_id, align 4
  %idxprom.i = zext i8 %57 to i32
  %spinlock.i = getelementptr %struct.gsi, ptr %55, i32 0, i32 14, i32 %idxprom.i, i32 14, i32 6
  tail call void @_raw_spin_lock_bh(ptr noundef %spinlock.i) #9
  %pending.i = getelementptr %struct.gsi, ptr %55, i32 0, i32 14, i32 %idxprom.i, i32 14, i32 8
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %trans) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end66.__list_del_entry.exit.i.i_crit_edge

if.end66.__list_del_entry.exit.i.i_crit_edge:     ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #11
  br label %__list_del_entry.exit.i.i

if.end.i.i.i:                                     ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %trans, i32 0, i32 1
  %58 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %prev.i.i.i, align 4
  %60 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %trans, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %59, ptr %prev1.i.i.i.i, align 4
  %63 = ptrtoint ptr %59 to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile ptr %61, ptr %59, align 4
  br label %__list_del_entry.exit.i.i

__list_del_entry.exit.i.i:                        ; preds = %if.end.i.i.i, %if.end66.__list_del_entry.exit.i.i_crit_edge
  %prev.i2.i.i = getelementptr %struct.gsi, ptr %55, i32 0, i32 14, i32 %idxprom.i, i32 14, i32 8, i32 1
  %64 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %prev.i2.i.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %trans, ptr noundef %65, ptr noundef %pending.i) #9
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %__list_del_entry.exit.i.i.gsi_trans_move_pending.exit_crit_edge

__list_del_entry.exit.i.i.gsi_trans_move_pending.exit_crit_edge: ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %gsi_trans_move_pending.exit

if.end.i.i.i.i:                                   ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %66 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %trans, ptr %prev.i2.i.i, align 4
  %67 = ptrtoint ptr %trans to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %pending.i, ptr %trans, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %trans, i32 0, i32 1
  %68 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %65, ptr %prev3.i.i.i.i, align 4
  %69 = ptrtoint ptr %65 to i32
  call void @__asan_store4_noabort(i32 %69)
  store volatile ptr %trans, ptr %65, align 4
  br label %gsi_trans_move_pending.exit

gsi_trans_move_pending.exit:                      ; preds = %if.end.i.i.i.i, %__list_del_entry.exit.i.i.gsi_trans_move_pending.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %spinlock.i) #9
  br i1 %ring_db, label %gsi_trans_move_pending.exit.if.then73_crit_edge, label %lor.lhs.false

gsi_trans_move_pending.exit.if.then73_crit_edge:  ; preds = %gsi_trans_move_pending.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then73

lor.lhs.false:                                    ; preds = %gsi_trans_move_pending.exit
  %trans_info = getelementptr %struct.gsi, ptr %1, i32 0, i32 14, i32 %idxprom, i32 14
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %trans_info, i32 noundef 4) #9
  %70 = ptrtoint ptr %trans_info to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load volatile i32, ptr %trans_info, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool72.not = icmp eq i32 %71, 0
  br i1 %tobool72.not, label %lor.lhs.false.if.then73_crit_edge, label %lor.lhs.false.if.end78_crit_edge

lor.lhs.false.if.end78_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end78

lor.lhs.false.if.then73_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then73

if.then73:                                        ; preds = %lor.lhs.false.if.then73_crit_edge, %gsi_trans_move_pending.exit.if.then73_crit_edge
  %72 = ptrtoint ptr %toward_ipa to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %toward_ipa, align 4, !range !37
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %tobool75.not = icmp eq i8 %73, 0
  br i1 %tobool75.not, label %if.then73.if.end77_crit_edge, label %if.then76

if.then73.if.end77_crit_edge:                     ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end77

if.then76:                                        ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @gsi_channel_tx_queued(ptr noundef %arrayidx) #9
  br label %if.end77

if.end77:                                         ; preds = %if.then76, %if.then73.if.end77_crit_edge
  tail call void @gsi_channel_doorbell(ptr noundef %arrayidx) #9
  br label %if.end78

if.end78:                                         ; preds = %if.end77, %lor.lhs.false.if.end78_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gsi_trans_commit_wait(ptr noundef %trans) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %used = getelementptr inbounds %struct.gsi_trans, ptr %trans, i32 0, i32 5
  %0 = ptrtoint ptr %used to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %used, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.out_trans_free_crit_edge, label %if.end

entry.out_trans_free_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_trans_free

if.end:                                           ; preds = %entry
  %refcount = getelementptr inbounds %struct.gsi_trans, ptr %trans, i32 0, i32 11
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #9
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #9, !srcloc !38
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %if.end.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !24

if.end.if.end15.sink.split.i.i.i_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %if.end
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %3 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %.not.i.i.i = icmp sgt i32 %3, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.refcount_inc.exit_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !27

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.refcount_inc.exit_crit_edge:        ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %refcount_inc.exit

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %if.end.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %if.end.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef %.sink.i.i.i) #9
  br label %refcount_inc.exit

refcount_inc.exit:                                ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.refcount_inc.exit_crit_edge
  tail call fastcc void @__gsi_trans_commit(ptr noundef %trans, i1 noundef zeroext true)
  %completion = getelementptr inbounds %struct.gsi_trans, ptr %trans, i32 0, i32 12
  tail call void @wait_for_completion(ptr noundef %completion) #9
  br label %out_trans_free

out_trans_free:                                   ; preds = %refcount_inc.exit, %entry.out_trans_free_crit_edge
  tail call void @gsi_trans_free(ptr noundef %trans)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gsi_trans_commit_wait_timeout(ptr noundef %trans, i32 noundef %timeout) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %timeout) #9
  %used = getelementptr inbounds %struct.gsi_trans, ptr %trans, i32 0, i32 5
  %0 = ptrtoint ptr %used to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %used, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.out_trans_free_crit_edge, label %if.end

entry.out_trans_free_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_trans_free

if.end:                                           ; preds = %entry
  %refcount = getelementptr inbounds %struct.gsi_trans, ptr %trans, i32 0, i32 11
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #9
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #9, !srcloc !38
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %if.end.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !24

if.end.if.end15.sink.split.i.i.i_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %if.end
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %3 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %.not.i.i.i = icmp sgt i32 %3, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.refcount_inc.exit_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !27

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.refcount_inc.exit_crit_edge:        ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %refcount_inc.exit

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %if.end.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %if.end.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef %.sink.i.i.i) #9
  br label %refcount_inc.exit

refcount_inc.exit:                                ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.refcount_inc.exit_crit_edge
  tail call fastcc void @__gsi_trans_commit(ptr noundef %trans, i1 noundef zeroext true)
  %completion = getelementptr inbounds %struct.gsi_trans, ptr %trans, i32 0, i32 12
  %call1 = tail call i32 @wait_for_completion_timeout(ptr noundef %completion, i32 noundef %call2.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %phi.cmp = icmp eq i32 %call1, 0
  %phi.sel = select i1 %phi.cmp, i32 -110, i32 0
  br label %out_trans_free

out_trans_free:                                   ; preds = %refcount_inc.exit, %entry.out_trans_free_crit_edge
  %remaining.0 = phi i32 [ %phi.sel, %refcount_inc.exit ], [ 0, %entry.out_trans_free_crit_edge ]
  tail call void @gsi_trans_free(ptr noundef %trans)
  ret i32 %remaining.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gsi_trans_complete(ptr noundef %trans) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %direction = getelementptr inbounds %struct.gsi_trans, ptr %trans, i32 0, i32 10
  %0 = ptrtoint ptr %direction to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %direction, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp.not = icmp eq i32 %1, 3
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %gsi = getelementptr inbounds %struct.gsi_trans, ptr %trans, i32 0, i32 1
  %2 = ptrtoint ptr %gsi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gsi, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 128
  %sgl = getelementptr inbounds %struct.gsi_trans, ptr %trans, i32 0, i32 8
  %6 = ptrtoint ptr %sgl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sgl, align 8
  %used = getelementptr inbounds %struct.gsi_trans, ptr %trans, i32 0, i32 5
  %8 = ptrtoint ptr %used to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %used, align 1
  %conv = zext i8 %9 to i32
  tail call void @dma_unmap_sg_attrs(ptr noundef %5, ptr noundef %7, i32 noundef %conv, i32 noundef %1, i32 noundef 0) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @ipa_gsi_trans_complete(ptr noundef %trans) #9
  %completion = getelementptr inbounds %struct.gsi_trans, ptr %trans, i32 0, i32 12
  tail call void @complete(ptr noundef %completion) #9
  tail call void @gsi_trans_free(ptr noundef %trans)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipa_gsi_trans_complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gsi_channel_trans_cancel_pending(ptr noundef %channel) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %spinlock = getelementptr inbounds %struct.gsi_channel, ptr %channel, i32 0, i32 14, i32 6
  tail call void @_raw_spin_lock_bh(ptr noundef %spinlock) #9
  %pending = getelementptr inbounds %struct.gsi_channel, ptr %channel, i32 0, i32 14, i32 8
  %0 = ptrtoint ptr %pending to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %pending, align 4
  %cmp.i.not = icmp eq ptr %1, %pending
  br i1 %cmp.i.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %trans.026 = phi ptr [ %trans.0, %for.body.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %cancelled5 = getelementptr inbounds %struct.gsi_trans, ptr %trans.026, i32 0, i32 3
  %2 = ptrtoint ptr %cancelled5 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %cancelled5, align 1
  %3 = ptrtoint ptr %trans.026 to i32
  call void @__asan_load4_noabort(i32 %3)
  %trans.0 = load ptr, ptr %trans.026, align 4
  %cmp.not = icmp eq ptr %trans.0, %pending
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %4 = ptrtoint ptr %pending to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %pending, align 4
  %cmp.i.not.i = icmp eq ptr %5, %pending
  br i1 %cmp.i.not.i, label %for.end.list_splice_tail_init.exit_crit_edge, label %if.then.i

for.end.list_splice_tail_init.exit_crit_edge:     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_splice_tail_init.exit

if.then.i:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %complete = getelementptr inbounds %struct.gsi_channel, ptr %channel, i32 0, i32 14, i32 9
  %prev.i = getelementptr inbounds %struct.gsi_channel, ptr %channel, i32 0, i32 14, i32 9, i32 1
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i, align 4
  %prev2.i.i = getelementptr inbounds %struct.gsi_channel, ptr %channel, i32 0, i32 14, i32 8, i32 1
  %8 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %10 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev3.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %5, ptr %7, align 4
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %complete, ptr %9, align 4
  store ptr %9, ptr %prev.i, align 4
  %13 = ptrtoint ptr %pending to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %pending, ptr %pending, align 4
  store ptr %pending, ptr %prev2.i.i, align 4
  br label %list_splice_tail_init.exit

list_splice_tail_init.exit:                       ; preds = %if.then.i, %for.end.list_splice_tail_init.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %spinlock) #9
  br i1 %cmp.i.not, label %list_splice_tail_init.exit.if.end_crit_edge, label %if.then

list_splice_tail_init.exit.if.end_crit_edge:      ; preds = %list_splice_tail_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %list_splice_tail_init.exit
  %napi = getelementptr inbounds %struct.gsi_channel, ptr %channel, i32 0, i32 15
  %call.i = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi) #9
  br i1 %call.i, label %if.then.i23, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then.i23:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__napi_schedule(ptr noundef %napi) #9
  br label %if.end

if.end:                                           ; preds = %if.then.i23, %if.then.if.end_crit_edge, %list_splice_tail_init.exit.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gsi_trans_read_byte(ptr noundef %gsi, i32 noundef %channel_id, i32 noundef %addr) local_unnamed_addr #0 align 64 {
entry:
  %avail.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %trans_info2 = getelementptr %struct.gsi, ptr %gsi, i32 0, i32 14, i32 %channel_id, i32 14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %avail.i) #9
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %trans_info2, i32 noundef 4) #9
  %0 = ptrtoint ptr %trans_info2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %trans_info2, align 4
  br label %do.body.i

do.body.i:                                        ; preds = %arch_atomic_cmpxchg.exit.i.i.i.do.body.i_crit_edge, %entry
  %storemerge.i = phi i32 [ %1, %entry ], [ %asmresult3.i.i.i.i.i, %arch_atomic_cmpxchg.exit.i.i.i.do.body.i_crit_edge ]
  %2 = ptrtoint ptr %avail.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %storemerge.i, ptr %avail.i, align 4
  %sub.i = add i32 %storemerge.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %gsi_trans_tre_reserve.exit.thread, label %do.cond.i, !prof !24

gsi_trans_tre_reserve.exit.thread:                ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %avail.i) #9
  br label %cleanup

do.cond.i:                                        ; preds = %do.body.i
  %call.i.i9.i = call zeroext i1 @__kasan_check_write(ptr noundef %trans_info2, i32 noundef 4) #9
  %call.i3.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %avail.i, i32 noundef 4) #9
  %3 = ptrtoint ptr %avail.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %avail.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !28
  call void @llvm.prefetch.p0(ptr %trans_info2, i32 1, i32 3, i32 1) #9
  br label %do.body.i.i.i.i.i

do.body.i.i.i.i.i:                                ; preds = %do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, %do.cond.i
  %5 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %trans_info2, ptr %trans_info2, i32 %4, i32 %sub.i, ptr elementtype(i32) %trans_info2) #9, !srcloc !29
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %5, 0
  %tobool.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %arch_atomic_cmpxchg.exit.i.i.i, label %do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge:    ; preds = %do.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i.i.i.i

arch_atomic_cmpxchg.exit.i.i.i:                   ; preds = %do.body.i.i.i.i.i
  %asmresult3.i.i.i.i.i = extractvalue { i32, i32 } %5, 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !30
  %cmp.not.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i, %4
  br i1 %cmp.not.i.i.i, label %if.end, label %arch_atomic_cmpxchg.exit.i.i.i.do.body.i_crit_edge, !prof !27

arch_atomic_cmpxchg.exit.i.i.i.do.body.i_crit_edge: ; preds = %arch_atomic_cmpxchg.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

if.end:                                           ; preds = %arch_atomic_cmpxchg.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %avail.i) #9
  %arrayidx = getelementptr %struct.gsi, ptr %gsi, i32 0, i32 14, i32 %channel_id
  %tre_ring = getelementptr %struct.gsi, ptr %gsi, i32 0, i32 14, i32 %channel_id, i32 6
  %index = getelementptr %struct.gsi, ptr %gsi, i32 0, i32 14, i32 %channel_id, i32 6, i32 3
  %6 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %index, align 4
  %call3 = call ptr @gsi_ring_virt(ptr noundef %tre_ring, i32 noundef %7) #9
  %conv.i = zext i32 %addr to i64
  %8 = call i64 @llvm.bswap.i64(i64 %conv.i) #9
  %9 = ptrtoint ptr %call3 to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %8, ptr %call3, align 8
  %tre.sroa.5.0..sroa_idx.i = getelementptr inbounds i8, ptr %call3, i32 8
  %10 = ptrtoint ptr %tre.sroa.5.0..sroa_idx.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 256, ptr %tre.sroa.5.0..sroa_idx.i, align 8
  %tre.sroa.7.0..sroa_idx.i = getelementptr inbounds i8, ptr %call3, i32 10
  %11 = ptrtoint ptr %tre.sroa.7.0..sroa_idx.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %tre.sroa.7.0..sroa_idx.i, align 2
  %tre.sroa.9.0..sroa_idx.i = getelementptr inbounds i8, ptr %call3, i32 12
  %12 = ptrtoint ptr %tre.sroa.9.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 131584, ptr %tre.sroa.9.0..sroa_idx.i, align 4
  %13 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %index, align 4
  %inc = add i32 %14, 1
  store i32 %inc, ptr %index, align 4
  call void @gsi_channel_doorbell(ptr noundef %arrayidx) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %gsi_trans_tre_reserve.exit.thread
  %retval.0 = phi i32 [ 0, %if.end ], [ -16, %gsi_trans_tre_reserve.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gsi_ring_virt(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gsi_channel_doorbell(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gsi_trans_read_byte_done(ptr noundef %gsi, i32 noundef %channel_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %trans_info = getelementptr %struct.gsi, ptr %gsi, i32 0, i32 14, i32 %channel_id, i32 14
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %trans_info, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %trans_info, i32 1, i32 3, i32 1) #9
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %trans_info, ptr %trans_info, i32 1, ptr elementtype(i32) %trans_info) #9, !srcloc !34
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gsi_channel_trans_init(ptr noundef %gsi, i32 noundef %channel_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %trans_info2 = getelementptr %struct.gsi, ptr %gsi, i32 0, i32 14, i32 %channel_id, i32 14
  %tre_count = getelementptr %struct.gsi, ptr %gsi, i32 0, i32 14, i32 %channel_id, i32 4
  %0 = ptrtoint ptr %tre_count to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %tre_count, align 8
  %conv = zext i16 %1 to i32
  %2 = shl nuw nsw i32 %conv, 2
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %2, i32 noundef 3520) #12
  %map = getelementptr %struct.gsi, ptr %gsi, i32 0, i32 14, i32 %channel_id, i32 14, i32 5
  %3 = ptrtoint ptr %map to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call8.i.i, ptr %map, align 4
  %tobool.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr %struct.gsi, ptr %gsi, i32 0, i32 14, i32 %channel_id
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 8
  %call5 = tail call i32 @gsi_channel_tre_max(ptr noundef %5, i32 noundef %channel_id) #9
  %pool = getelementptr %struct.gsi, ptr %gsi, i32 0, i32 14, i32 %channel_id, i32 14, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %6 = icmp eq i32 %call5, 0
  br i1 %6, label %if.end.err_kfree_crit_edge, label %if.end5.i

if.end.err_kfree_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_kfree

if.end5.i:                                        ; preds = %if.end
  %7 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %call5, i32 112) #9
  %8 = extractvalue { i32, i1 } %7, 1
  br i1 %8, label %if.end5.i.err_kfree_crit_edge, label %if.end7.i.i.i, !prof !24

if.end5.i.err_kfree_crit_edge:                    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_kfree

if.end7.i.i.i:                                    ; preds = %if.end5.i
  %9 = extractvalue { i32, i1 } %7, 0
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %9, i32 noundef 3520) #12
  %tobool6.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool6.not.i, label %if.end7.i.i.i.err_kfree_crit_edge, label %if.end9

if.end7.i.i.i.err_kfree_crit_edge:                ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_kfree

if.end9:                                          ; preds = %if.end7.i.i.i
  %10 = ptrtoint ptr %pool to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call8.i.i.i, ptr %pool, align 4
  %call10.i = tail call i32 @ksize(ptr noundef nonnull %call8.i.i.i) #9
  %div.i = udiv i32 %call10.i, 112
  %count11.i = getelementptr %struct.gsi, ptr %gsi, i32 0, i32 14, i32 %channel_id, i32 14, i32 1, i32 1
  %11 = ptrtoint ptr %count11.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %div.i, ptr %count11.i, align 4
  %free.i = getelementptr %struct.gsi, ptr %gsi, i32 0, i32 14, i32 %channel_id, i32 14, i32 1, i32 2
  %12 = ptrtoint ptr %free.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %free.i, align 4
  %max_alloc12.i = getelementptr %struct.gsi, ptr %gsi, i32 0, i32 14, i32 %channel_id, i32 14, i32 1, i32 4
  %13 = ptrtoint ptr %max_alloc12.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %max_alloc12.i, align 4
  %size13.i = getelementptr %struct.gsi, ptr %gsi, i32 0, i32 14, i32 %channel_id, i32 14, i32 1, i32 3
  %14 = ptrtoint ptr %size13.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 112, ptr %size13.i, align 4
  %addr.i = getelementptr %struct.gsi, ptr %gsi, i32 0, i32 14, i32 %channel_id, i32 14, i32 1, i32 5
  %15 = ptrtoint ptr %addr.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %addr.i, align 4
  %sg_pool = getelementptr %struct.gsi, ptr %gsi, i32 0, i32 14, i32 %channel_id, i32 14, i32 2
  %tlv_count = getelementptr %struct.gsi, ptr %gsi, i32 0, i32 14, i32 %channel_id, i32 3
  %16 = ptrtoint ptr %tlv_count to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %tlv_count, align 2
  %conv10 = zext i8 %17 to i32
  %18 = add nsw i32 %conv10, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %call5)
  %.not = icmp ult i32 %18, %call5
  br i1 %.not, label %if.end7.i.i.i86, label %if.end9.err_trans_pool_exit_crit_edge

if.end9.err_trans_pool_exit_crit_edge:            ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_trans_pool_exit

if.end7.i.i.i86:                                  ; preds = %if.end9
  %sub.i = add nuw nsw i32 %18, %call5
  %19 = mul nuw nsw i32 %sub.i, 20
  %call8.i.i.i85 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %19, i32 noundef 3520) #12
  %tobool6.not.i88 = icmp eq ptr %call8.i.i.i85, null
  br i1 %tobool6.not.i88, label %if.end7.i.i.i86.err_trans_pool_exit_crit_edge, label %if.end14

if.end7.i.i.i86.err_trans_pool_exit_crit_edge:    ; preds = %if.end7.i.i.i86
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_trans_pool_exit

if.end14:                                         ; preds = %if.end7.i.i.i86
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %sg_pool to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call8.i.i.i85, ptr %sg_pool, align 4
  %call10.i91 = tail call i32 @ksize(ptr noundef nonnull %call8.i.i.i85) #9
  %div.i92 = udiv i32 %call10.i91, 20
  %count11.i93 = getelementptr %struct.gsi, ptr %gsi, i32 0, i32 14, i32 %channel_id, i32 14, i32 2, i32 1
  %21 = ptrtoint ptr %count11.i93 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %div.i92, ptr %count11.i93, align 4
  %free.i94 = getelementptr %struct.gsi, ptr %gsi, i32 0, i32 14, i32 %channel_id, i32 14, i32 2, i32 2
  %22 = ptrtoint ptr %free.i94 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %free.i94, align 4
  %max_alloc12.i95 = getelementptr %struct.gsi, ptr %gsi, i32 0, i32 14, i32 %channel_id, i32 14, i32 2, i32 4
  %23 = ptrtoint ptr %max_alloc12.i95 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %conv10, ptr %max_alloc12.i95, align 4
  %size13.i96 = getelementptr %struct.gsi, ptr %gsi, i32 0, i32 14, i32 %channel_id, i32 14, i32 2, i32 3
  %24 = ptrtoint ptr %size13.i96 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 20, ptr %size13.i96, align 4
  %addr.i97 = getelementptr %struct.gsi, ptr %gsi, i32 0, i32 14, i32 %channel_id, i32 14, i32 2, i32 5
  %25 = ptrtoint ptr %addr.i97 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %addr.i97, align 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %trans_info2, i32 noundef 4) #9
  %26 = ptrtoint ptr %trans_info2 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile i32 %call5, ptr %trans_info2, align 4
  %spinlock = getelementptr %struct.gsi, ptr %gsi, i32 0, i32 14, i32 %channel_id, i32 14, i32 6
  tail call void @__raw_spin_lock_init(ptr noundef %spinlock, ptr noundef nonnull @.str.1, ptr noundef nonnull @gsi_channel_trans_init.__key, i16 noundef signext 3) #9
  %alloc = getelementptr %struct.gsi, ptr %gsi, i32 0, i32 14, i32 %channel_id, i32 14, i32 7
  %27 = ptrtoint ptr %alloc to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %alloc, ptr %alloc, align 4
  %prev.i = getelementptr %struct.gsi, ptr %gsi, i32 0, i32 14, i32 %channel_id, i32 14, i32 7, i32 1
  %28 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %alloc, ptr %prev.i, align 4
  %pending = getelementptr %struct.gsi, ptr %gsi, i32 0, i32 14, i32 %channel_id, i32 14, i32 8
  %29 = ptrtoint ptr %pending to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %pending, ptr %pending, align 4
  %prev.i101 = getelementptr %struct.gsi, ptr %gsi, i32 0, i32 14, i32 %channel_id, i32 14, i32 8, i32 1
  %30 = ptrtoint ptr %prev.i101 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %pending, ptr %prev.i101, align 4
  %complete = getelementptr %struct.gsi, ptr %gsi, i32 0, i32 14, i32 %channel_id, i32 14, i32 9
  %31 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %complete, ptr %complete, align 4
  %prev.i102 = getelementptr %struct.gsi, ptr %gsi, i32 0, i32 14, i32 %channel_id, i32 14, i32 9, i32 1
  %32 = ptrtoint ptr %prev.i102 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %complete, ptr %prev.i102, align 4
  %polled = getelementptr %struct.gsi, ptr %gsi, i32 0, i32 14, i32 %channel_id, i32 14, i32 10
  %33 = ptrtoint ptr %polled to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %polled, ptr %polled, align 4
  %prev.i103 = getelementptr %struct.gsi, ptr %gsi, i32 0, i32 14, i32 %channel_id, i32 14, i32 10, i32 1
  %34 = ptrtoint ptr %prev.i103 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %polled, ptr %prev.i103, align 4
  br label %cleanup

err_trans_pool_exit:                              ; preds = %if.end7.i.i.i86.err_trans_pool_exit_crit_edge, %if.end9.err_trans_pool_exit_crit_edge
  %retval.0.i99.ph = phi i32 [ -12, %if.end7.i.i.i86.err_trans_pool_exit_crit_edge ], [ -22, %if.end9.err_trans_pool_exit_crit_edge ]
  %35 = ptrtoint ptr %pool to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pool, align 4
  tail call void @kfree(ptr noundef %36) #9
  %37 = call ptr @memset(ptr %pool, i32 0, i32 24)
  br label %err_kfree

err_kfree:                                        ; preds = %err_trans_pool_exit, %if.end7.i.i.i.err_kfree_crit_edge, %if.end5.i.err_kfree_crit_edge, %if.end.err_kfree_crit_edge
  %ret.0 = phi i32 [ %retval.0.i99.ph, %err_trans_pool_exit ], [ -12, %if.end5.i.err_kfree_crit_edge ], [ -12, %if.end7.i.i.i.err_kfree_crit_edge ], [ -22, %if.end.err_kfree_crit_edge ]
  %38 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %map, align 4
  tail call void @kfree(ptr noundef %39) #9
  %40 = ptrtoint ptr %gsi to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %gsi, align 128
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.2, i32 noundef %ret.0, i32 noundef %channel_id) #13
  br label %cleanup

cleanup:                                          ; preds = %err_kfree, %if.end14, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %err_kfree ], [ 0, %if.end14 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gsi_channel_tre_max(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gsi_channel_trans_exit(ptr nocapture noundef %channel) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sg_pool = getelementptr inbounds %struct.gsi_channel, ptr %channel, i32 0, i32 14, i32 2
  %0 = ptrtoint ptr %sg_pool to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sg_pool, align 4
  tail call void @kfree(ptr noundef %1) #9
  %2 = call ptr @memset(ptr %sg_pool, i32 0, i32 24)
  %pool = getelementptr inbounds %struct.gsi_channel, ptr %channel, i32 0, i32 14, i32 1
  %3 = ptrtoint ptr %pool to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pool, align 4
  tail call void @kfree(ptr noundef %4) #9
  %5 = call ptr @memset(ptr %pool, i32 0, i32 24)
  %map = getelementptr inbounds %struct.gsi_channel, ptr %channel, i32 0, i32 14, i32 5
  %6 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %map, align 4
  tail call void @kfree(ptr noundef %7) #9
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gsi_channel_tx_queued(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_schedule_prep(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__napi_schedule(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !9, !10, !11, !12, !14}
!llvm.module.flags = !{!15, !16, !17, !18, !19, !20, !21, !22}
!llvm.ident = !{!23}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ipa/gsi_trans.c", i32 224, i32 2}
!2 = !{ptr @gsi_channel_trans_init.__key, !3, !"__key", i1 false, i1 false}
!3 = !{!"../drivers/net/ipa/gsi_trans.c", i32 783, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/net/ipa/gsi_trans.c", i32 796, i32 2}
!7 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.4, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.5, !6, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @gsi_channel_trans_init._entry, !6, !"_entry", i1 false, i1 false}
!11 = !{ptr @gsi_channel_trans_init._entry_ptr, !6, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @init_completion.__key, !13, !"__key", i1 false, i1 false}
!13 = !{!"../include/linux/completion.h", i32 87, i32 2}
!14 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!15 = !{i32 1, !"wchar_size", i32 2}
!16 = !{i32 1, !"min_enum_size", i32 4}
!17 = !{i32 8, !"branch-target-enforcement", i32 0}
!18 = !{i32 8, !"sign-return-address", i32 0}
!19 = !{i32 8, !"sign-return-address-all", i32 0}
!20 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!21 = !{i32 7, !"uwtable", i32 1}
!22 = !{i32 7, !"frame-pointer", i32 2}
!23 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!24 = !{!"branch_weights", i32 1, i32 2000}
!25 = !{!"auto-init"}
!26 = !{i32 0, i32 33}
!27 = !{!"branch_weights", i32 2000, i32 1}
!28 = !{i64 2148319826}
!29 = !{i64 628998, i64 629022, i64 629043, i64 629060, i64 629077}
!30 = !{i64 2148320052}
!31 = !{i64 2148307534}
!32 = !{i64 2148221998, i64 2148222030, i64 2148222059, i64 2148222093, i64 2148222124, i64 2148222147}
!33 = !{i64 2148654533}
!34 = !{i64 2148218003, i64 2148218029, i64 2148218058, i64 2148218092, i64 2148218123, i64 2148218146}
!35 = !{i64 2153397925, i64 2153398417, i64 2153397962, i64 2153398018, i64 2153398052, i64 2153398076, i64 2153398117, i64 2153398138, i64 2153398166, i64 2153398200}
!36 = !{i64 2153396315, i64 2153396807, i64 2153396352, i64 2153396408, i64 2153396442, i64 2153396466, i64 2153396507, i64 2153396528, i64 2153396556, i64 2153396590}
!37 = !{i8 0, i8 2}
!38 = !{i64 2148219533, i64 2148219565, i64 2148219594, i64 2148219628, i64 2148219659, i64 2148219682}
