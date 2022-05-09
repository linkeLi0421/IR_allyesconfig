; ModuleID = '/llk/IR_all_yes/net/hsr/hsr_framereg.c_pt.bc'
source_filename = "../net/hsr/hsr_framereg.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hsr_priv = type { %struct.callback_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.timer_list, %struct.timer_list, i32, i16, i16, i32, %struct.spinlock, %struct.spinlock, ptr, i8, i8, [6 x i8], ptr }
%struct.callback_head = type { ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.hsr_node = type { %struct.list_head, [6 x i8], [6 x i8], i32, [5 x i32], [5 x i8], [5 x i32], i8, i8, [5 x i16], %struct.callback_head }
%struct.hsr_port = type { %struct.list_head, ptr, ptr, i32 }
%struct.sk_buff = type { %union.anon.3, %union.anon.6, %union.anon.7, [48 x i8], %union.anon.8, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.10, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.3 = type { %struct.anon.4 }
%struct.anon.4 = type { ptr, ptr, %union.anon.5 }
%union.anon.5 = type { ptr }
%union.anon.6 = type { ptr }
%union.anon.7 = type { i64 }
%union.anon.8 = type { %struct.anon.9 }
%struct.anon.9 = type { i32, ptr }
%union.anon.10 = type { %struct.anon.11 }
%struct.anon.11 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.12, i32, i32, i32, i16, i16, %union.anon.14, i32, %union.anon.15, %union.anon.16, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.12 = type { i32 }
%union.anon.14 = type { i32 }
%union.anon.15 = type { i32 }
%union.anon.16 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
%struct.hsr_proto_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hsr_ethhdr = type { %struct.ethhdr, %struct.hsr_tag }
%struct.hsr_tag = type { i16, i16, i16 }
%struct.hsr_frame_info = type { ptr, ptr, ptr, ptr, ptr, i16, i8, i8, i8, i8, i8 }
%struct.hsr_sup_tlv = type { i8, i8 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.2, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.113, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.2 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.113 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@hsr_addr_is_self.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"net/hsr/hsr_framereg.c\00", [41 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"HSR: No self node\0A\00", [45 x i8] zeroinitializer }, align 32
@hsr_get_node.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@hsr_addr_subst_source.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: Mac header not set\0A\00", [40 x i8] zeroinitializer }, align 32
@__func__.hsr_addr_subst_source = private unnamed_addr constant [22 x i8] c"hsr_addr_subst_source\00", align 1
@hsr_addr_subst_dest.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__func__.hsr_addr_subst_dest = private unnamed_addr constant [20 x i8] c"hsr_addr_subst_dest\00", align 1
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s: Unknown node\0A\00", [46 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@hsr_add_node.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@find_node_by_addr_A.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.7 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.8 = internal global [4 x i64] [i64 2, i64 16, i64 35067, i64 35119]
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 48, i32 3 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 221, i32 2 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 389, i32 3 }
@___asan_gen_.22 = private constant [26 x i8] c"../net/hsr/hsr_framereg.c\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 422, i32 25 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 695, i32 2 }
@___asan_gen_.30 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.31 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 723, i32 2 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @hsr_addr_is_self(ptr noundef %hsr, ptr nocapture noundef readonly %addr) local_unnamed_addr #0 align 64 {
entry:
  %__next = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %self_node_db = getelementptr inbounds %struct.hsr_priv, ptr %hsr, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__next)
  %0 = ptrtoint ptr %self_node_db to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %self_node_db, align 4
  %2 = ptrtoint ptr %__next to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %__next, align 4
  %cmp.not = icmp eq ptr %self_node_db, %1
  br i1 %cmp.not, label %cond.end.thread, label %cond.end, !prof !37

cond.end.thread:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__next)
  br label %land.end

cond.end:                                         ; preds = %entry
  %3 = ptrtoint ptr %__next to i32
  call void @__asan_load4_noabort(i32 %3)
  %__next.0.__next.0.__next.0.61 = load volatile ptr, ptr %__next, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__next)
  %tobool8.not = icmp eq ptr %__next.0.__next.0.__next.0.61, null
  br i1 %tobool8.not, label %cond.end.land.end_crit_edge, label %if.end52

cond.end.land.end_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.end

land.end:                                         ; preds = %cond.end.land.end_crit_edge, %cond.end.thread
  %.b66 = load i1, ptr @hsr_addr_is_self.__already_done, align 1
  br i1 %.b66, label %land.end.cleanup_crit_edge, label %if.then19, !prof !38

land.end.cleanup_crit_edge:                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then19:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @hsr_addr_is_self.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 48, i32 noundef 9, ptr noundef nonnull @.str.1) #10
  br label %cleanup

if.end52:                                         ; preds = %cond.end
  %macaddress_A = getelementptr inbounds %struct.hsr_node, ptr %__next.0.__next.0.__next.0.61, i32 0, i32 1
  %4 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %addr, align 4
  %6 = ptrtoint ptr %macaddress_A to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %macaddress_A, align 4
  %xor.i = xor i32 %7, %5
  %add.ptr.i = getelementptr i8, ptr %addr, i32 4
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr %struct.hsr_node, ptr %__next.0.__next.0.__next.0.61, i32 0, i32 1, i32 4
  %10 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %add.ptr1.i, align 2
  %xor37.i = xor i16 %11, %9
  %xor3.i = zext i16 %xor37.i to i32
  %or.i = or i32 %xor.i, %xor3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i = icmp eq i32 %or.i, 0
  br i1 %cmp.i, label %if.end52.cleanup_crit_edge, label %if.end54

if.end52.cleanup_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end54:                                         ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #12
  %macaddress_B = getelementptr inbounds %struct.hsr_node, ptr %__next.0.__next.0.__next.0.61, i32 0, i32 2
  %12 = ptrtoint ptr %macaddress_B to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %macaddress_B, align 4
  %xor.i67 = xor i32 %13, %5
  %add.ptr1.i69 = getelementptr %struct.hsr_node, ptr %__next.0.__next.0.__next.0.61, i32 0, i32 2, i32 4
  %14 = ptrtoint ptr %add.ptr1.i69 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %add.ptr1.i69, align 2
  %xor37.i70 = xor i16 %15, %9
  %xor3.i71 = zext i16 %xor37.i70 to i32
  %or.i72 = or i32 %xor.i67, %xor3.i71
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i72)
  %cmp.i73 = icmp eq i32 %or.i72, 0
  br label %cleanup

cleanup:                                          ; preds = %if.end54, %if.end52.cleanup_crit_edge, %if.then19, %land.end.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %if.then19 ], [ false, %land.end.cleanup_crit_edge ], [ true, %if.end52.cleanup_crit_edge ], [ %cmp.i73, %if.end54 ]
  ret i1 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hsr_create_self_node(ptr noundef %hsr, ptr nocapture noundef readonly %addr_a, ptr nocapture noundef readonly %addr_b) local_unnamed_addr #0 align 64 {
entry:
  %__next = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %self_node_db1 = getelementptr inbounds %struct.hsr_priv, ptr %hsr, i32 0, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 92) #13
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %macaddress_A = getelementptr inbounds %struct.hsr_node, ptr %call7.i, i32 0, i32 1
  %1 = ptrtoint ptr %addr_a to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %addr_a, align 4
  %3 = ptrtoint ptr %macaddress_A to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %macaddress_A, align 8
  %add.ptr.i = getelementptr i8, ptr %addr_a, i32 4
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr %struct.hsr_node, ptr %call7.i, i32 0, i32 1, i32 4
  %6 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %add.ptr1.i, align 4
  %macaddress_B = getelementptr inbounds %struct.hsr_node, ptr %call7.i, i32 0, i32 2
  %7 = ptrtoint ptr %addr_b to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %addr_b, align 4
  %9 = ptrtoint ptr %macaddress_B to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %macaddress_B, align 4
  %add.ptr.i42 = getelementptr i8, ptr %addr_b, i32 4
  %10 = ptrtoint ptr %add.ptr.i42 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %add.ptr.i42, align 2
  %add.ptr1.i43 = getelementptr %struct.hsr_node, ptr %call7.i, i32 0, i32 2, i32 4
  %12 = ptrtoint ptr %add.ptr1.i43 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %add.ptr1.i43, align 2
  %list_lock = getelementptr inbounds %struct.hsr_priv, ptr %hsr, i32 0, i32 11
  tail call void @_raw_spin_lock_bh(ptr noundef %list_lock) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__next)
  %13 = ptrtoint ptr %self_node_db1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %self_node_db1, align 4
  %15 = ptrtoint ptr %__next to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %__next, align 4
  %cmp.not = icmp eq ptr %self_node_db1, %14
  br i1 %cmp.not, label %cond.end.thread, label %cond.end, !prof !37

cond.end.thread:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__next)
  br label %if.else

cond.end:                                         ; preds = %if.end
  %16 = ptrtoint ptr %__next to i32
  call void @__asan_load4_noabort(i32 %16)
  %__next.0.__next.0.__next.0.30 = load volatile ptr, ptr %__next, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__next)
  %tobool11.not = icmp eq ptr %__next.0.__next.0.__next.0.30, null
  br i1 %tobool11.not, label %cond.end.if.else_crit_edge, label %if.then12

cond.end.if.else_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.then12:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %__next.0.__next.0.__next.0.30 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %__next.0.__next.0.__next.0.30, align 4
  %19 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %call7.i, align 8
  %prev.i = getelementptr inbounds %struct.list_head, ptr %__next.0.__next.0.__next.0.30, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev.i, align 4
  %prev2.i = getelementptr inbounds %struct.list_head, ptr %call7.i, i32 0, i32 1
  %22 = ptrtoint ptr %prev2.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %prev2.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !39
  %23 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %call7.i, ptr %21, align 4
  %24 = ptrtoint ptr %call7.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %call7.i, align 8
  %prev38.i = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %prev38.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call7.i, ptr %prev38.i, align 4
  %27 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %list_lock) #10
  %callback_head = getelementptr inbounds %struct.hsr_node, ptr %__next.0.__next.0.__next.0.30, i32 0, i32 10
  tail call void @kvfree_call_rcu(ptr noundef %callback_head, ptr noundef nonnull inttoptr (i32 84 to ptr)) #10
  br label %cleanup

if.else:                                          ; preds = %cond.end.if.else_crit_edge, %cond.end.thread
  %prev.i44 = getelementptr inbounds %struct.hsr_priv, ptr %hsr, i32 0, i32 3, i32 1
  %28 = ptrtoint ptr %prev.i44 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %prev.i44, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i, ptr noundef %29, ptr noundef %self_node_db1) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.else.list_add_tail_rcu.exit_crit_edge

if.else.list_add_tail_rcu.exit_crit_edge:         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail_rcu.exit

if.end.i.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %30 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %self_node_db1, ptr %call7.i, align 8
  %prev2.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i, i32 0, i32 1
  %31 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %29, ptr %prev2.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !40
  %32 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %call7.i, ptr %29, align 4
  %33 = ptrtoint ptr %prev.i44 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call7.i, ptr %prev.i44, align 4
  br label %list_add_tail_rcu.exit

list_add_tail_rcu.exit:                           ; preds = %if.end.i.i, %if.else.list_add_tail_rcu.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %list_lock) #10
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail_rcu.exit, %if.then12, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ 0, %list_add_tail_rcu.exit ], [ 0, %if.then12 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hsr_del_self_node(ptr noundef %hsr) local_unnamed_addr #0 align 64 {
entry:
  %__next = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %self_node_db1 = getelementptr inbounds %struct.hsr_priv, ptr %hsr, i32 0, i32 3
  %list_lock = getelementptr inbounds %struct.hsr_priv, ptr %hsr, i32 0, i32 11
  tail call void @_raw_spin_lock_bh(ptr noundef %list_lock) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__next)
  %0 = ptrtoint ptr %self_node_db1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %self_node_db1, align 4
  %2 = ptrtoint ptr %__next to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %__next, align 4
  %cmp.not = icmp eq ptr %self_node_db1, %1
  br i1 %cmp.not, label %cond.end.thread, label %cond.end, !prof !37

cond.end.thread:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__next)
  br label %if.end18

cond.end:                                         ; preds = %entry
  %3 = ptrtoint ptr %__next to i32
  call void @__asan_load4_noabort(i32 %3)
  %__next.0.__next.0.__next.0.21 = load volatile ptr, ptr %__next, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__next)
  %tobool9.not = icmp eq ptr %__next.0.__next.0.__next.0.21, null
  br i1 %tobool9.not, label %cond.end.if.end18_crit_edge, label %if.then

cond.end.if.end18_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

if.then:                                          ; preds = %cond.end
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %__next.0.__next.0.__next.0.21) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del_rcu.exit_crit_edge

if.then.list_del_rcu.exit_crit_edge:              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_rcu.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %__next.0.__next.0.__next.0.21, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %__next.0.__next.0.__next.0.21 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %__next.0.__next.0.__next.0.21, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del_rcu.exit

list_del_rcu.exit:                                ; preds = %if.end.i.i, %if.then.list_del_rcu.exit_crit_edge
  %prev.i = getelementptr inbounds %struct.list_head, ptr %__next.0.__next.0.__next.0.21, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %callback_head = getelementptr inbounds %struct.hsr_node, ptr %__next.0.__next.0.__next.0.21, i32 0, i32 10
  tail call void @kvfree_call_rcu(ptr noundef %callback_head, ptr noundef nonnull inttoptr (i32 84 to ptr)) #10
  br label %if.end18

if.end18:                                         ; preds = %list_del_rcu.exit, %cond.end.if.end18_crit_edge, %cond.end.thread
  tail call void @_raw_spin_unlock_bh(ptr noundef %list_lock) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hsr_del_nodes(ptr noundef readonly %node_db) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %node_db to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %node_db, align 4
  %cmp.not16 = icmp eq ptr %1, %node_db
  br i1 %cmp.not16, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %node.017 = phi ptr [ %tmp.0, %for.body.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %2 = ptrtoint ptr %node.017 to i32
  call void @__asan_load4_noabort(i32 %2)
  %tmp.0 = load ptr, ptr %node.017, align 4
  tail call void @kfree(ptr noundef %node.017) #10
  %cmp.not = icmp eq ptr %tmp.0, %node_db
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @prp_handle_san_frame(i1 noundef zeroext %san, i32 noundef %port, ptr nocapture noundef writeonly %node) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %port to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %port, label %entry.if.end3_crit_edge [
    i32 1, label %if.then
    i32 2, label %if.then2
  ]

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %san_a = getelementptr inbounds %struct.hsr_node, ptr %node, i32 0, i32 7
  %1 = ptrtoint ptr %san_a to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 1, ptr %san_a, align 4
  br label %if.end3

if.then2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %san_b = getelementptr inbounds %struct.hsr_node, ptr %node, i32 0, i32 8
  %2 = ptrtoint ptr %san_b to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %san_b, align 1
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.then, %entry.if.end3_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @prp_update_san_info(ptr nocapture noundef writeonly %node, i1 noundef zeroext %is_sup) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %is_sup, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %san_a = getelementptr inbounds %struct.hsr_node, ptr %node, i32 0, i32 7
  %0 = ptrtoint ptr %san_a to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %san_a, align 4
  %san_b = getelementptr inbounds %struct.hsr_node, ptr %node, i32 0, i32 8
  %1 = ptrtoint ptr %san_b to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %san_b, align 1
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @hsr_get_node(ptr nocapture noundef readonly %port, ptr noundef %node_db, ptr nocapture noundef readonly %skb, i1 noundef zeroext %is_sup, i32 noundef %rx_port) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hsr1 = getelementptr inbounds %struct.hsr_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %hsr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hsr1, align 4
  %mac_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %2 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %mac_header.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %3)
  %cmp.i.not = icmp eq i16 %3, -1
  br i1 %cmp.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %4 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %head.i, align 8
  %conv.i = zext i16 %3 to i32
  %add.ptr.i = getelementptr i8, ptr %5, i32 %conv.i
  %call3 = tail call i32 @rcu_read_lock_any_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true, label %if.end.do.end_crit_edge

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true:                                    ; preds = %if.end
  %call5 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true7

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true7:                                   ; preds = %land.lhs.true
  %.b109 = load i1, ptr @hsr_get_node.__warned, align 1
  br i1 %.b109, label %land.lhs.true7.do.end_crit_edge, label %if.then9

land.lhs.true7.do.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then9:                                         ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @hsr_get_node.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 221, ptr noundef nonnull @.str.2) #10
  br label %do.end

do.end:                                           ; preds = %if.then9, %land.lhs.true7.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %if.end.do.end_crit_edge
  %h_source = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i, i32 0, i32 1
  %add.ptr1.i = getelementptr i8, ptr %h_source, i32 4
  br label %for.cond

for.cond:                                         ; preds = %if.end24.for.cond_crit_edge, %do.end
  %node.0.in = phi ptr [ %node_db, %do.end ], [ %node.0, %if.end24.for.cond_crit_edge ]
  %6 = ptrtoint ptr %node.0.in to i32
  call void @__asan_load4_noabort(i32 %6)
  %node.0 = load volatile ptr, ptr %node.0.in, align 4
  %cmp.not = icmp eq ptr %node.0, %node_db
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %macaddress_A = getelementptr inbounds %struct.hsr_node, ptr %node.0, i32 0, i32 1
  %7 = ptrtoint ptr %macaddress_A to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %macaddress_A, align 4
  %9 = ptrtoint ptr %h_source to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %h_source, align 4
  %xor.i = xor i32 %10, %8
  %add.ptr.i111 = getelementptr %struct.hsr_node, ptr %node.0, i32 0, i32 1, i32 4
  %11 = ptrtoint ptr %add.ptr.i111 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %add.ptr.i111, align 2
  %13 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %add.ptr1.i, align 2
  %xor37.i = xor i16 %14, %12
  %xor3.i = zext i16 %xor37.i to i32
  %or.i = or i32 %xor.i, %xor3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i112 = icmp eq i32 %or.i, 0
  br i1 %cmp.i112, label %if.then17, label %if.end24

if.then17:                                        ; preds = %for.body
  %proto_ops = getelementptr inbounds %struct.hsr_priv, ptr %1, i32 0, i32 12
  %15 = ptrtoint ptr %proto_ops to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %proto_ops, align 4
  %update_san_info = getelementptr inbounds %struct.hsr_proto_ops, ptr %16, i32 0, i32 7
  %17 = ptrtoint ptr %update_san_info to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %update_san_info, align 4
  %tobool18.not = icmp eq ptr %18, null
  br i1 %tobool18.not, label %if.then17.cleanup_crit_edge, label %if.then19

if.then17.cleanup_crit_edge:                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then19:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %18(ptr noundef %node.0, i1 noundef zeroext %is_sup) #10
  br label %cleanup

if.end24:                                         ; preds = %for.body
  %macaddress_B = getelementptr inbounds %struct.hsr_node, ptr %node.0, i32 0, i32 2
  %19 = ptrtoint ptr %macaddress_B to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %macaddress_B, align 4
  %xor.i113 = xor i32 %20, %10
  %add.ptr.i114 = getelementptr %struct.hsr_node, ptr %node.0, i32 0, i32 2, i32 4
  %21 = ptrtoint ptr %add.ptr.i114 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %add.ptr.i114, align 2
  %xor37.i116 = xor i16 %22, %14
  %xor3.i117 = zext i16 %xor37.i116 to i32
  %or.i118 = or i32 %xor.i113, %xor3.i117
  %cmp.i119 = icmp eq i32 %or.i118, 0
  br i1 %cmp.i119, label %if.then29, label %if.end24.for.cond_crit_edge

if.end24.for.cond_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond

if.then29:                                        ; preds = %if.end24
  %proto_ops30 = getelementptr inbounds %struct.hsr_priv, ptr %1, i32 0, i32 12
  %23 = ptrtoint ptr %proto_ops30 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %proto_ops30, align 4
  %update_san_info31 = getelementptr inbounds %struct.hsr_proto_ops, ptr %24, i32 0, i32 7
  %25 = ptrtoint ptr %update_san_info31 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %update_san_info31, align 4
  %tobool32.not = icmp eq ptr %26, null
  br i1 %tobool32.not, label %if.then29.cleanup_crit_edge, label %if.then33

if.then29.cleanup_crit_edge:                      ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then33:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %26(ptr noundef %node.0, i1 noundef zeroext %is_sup) #10
  br label %cleanup

for.end:                                          ; preds = %for.cond
  %h_proto = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i, i32 0, i32 2
  %27 = ptrtoint ptr %h_proto to i32
  call void @__asan_loadN_noabort(i32 %27, i32 2)
  %28 = load i16, ptr %h_proto, align 1
  %29 = zext i16 %28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.8)
  switch i16 %28, label %if.else [
    i16 -30469, label %for.end.if.then54_crit_edge
    i16 -30417, label %for.end.if.then54_crit_edge140
  ]

for.end.if.then54_crit_edge140:                   ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then54

for.end.if.then54_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then54

if.then54:                                        ; preds = %for.end.if.then54_crit_edge, %for.end.if.then54_crit_edge140
  %30 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %head.i, align 8
  %32 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %mac_header.i, align 2
  %conv.i.i = zext i16 %33 to i32
  %add.ptr.i.i = getelementptr i8, ptr %31, i32 %conv.i.i
  %sequence_nr.i = getelementptr inbounds %struct.hsr_ethhdr, ptr %add.ptr.i.i, i32 0, i32 1, i32 1
  %34 = ptrtoint ptr %sequence_nr.i to i32
  call void @__asan_loadN_noabort(i32 %34, i32 2)
  %35 = load i16, ptr %sequence_nr.i, align 1
  %sub = add i16 %35, -1
  br label %if.end72

if.else:                                          ; preds = %for.end
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %36 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %tail.i.i, align 8
  %PRP_suffix.i = getelementptr i8, ptr %37, i32 -2
  %38 = ptrtoint ptr %PRP_suffix.i to i32
  call void @__asan_loadN_noabort(i32 %38, i32 2)
  %39 = load i16, ptr %PRP_suffix.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30469, i16 %39)
  %cmp.i120 = icmp ne i16 %39, -30469
  %add.ptr.i121 = getelementptr i8, ptr %37, i32 -6
  %tobool59.not127 = icmp eq ptr %add.ptr.i121, null
  %tobool59.not = select i1 %cmp.i120, i1 true, i1 %tobool59.not127
  br i1 %tobool59.not, label %if.else.if.else66_crit_edge, label %land.lhs.true60

if.else.if.else66_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else66

land.lhs.true60:                                  ; preds = %if.else
  br i1 %is_sup, label %land.lhs.true60.prp_check_lsdu_size.exit_crit_edge, label %if.else.i

land.lhs.true60.prp_check_lsdu_size.exit_crit_edge: ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_pc() #12
  br label %prp_check_lsdu_size.exit

if.else.i:                                        ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_pc() #12
  %40 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %head.i, align 8
  %42 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %mac_header.i, align 2
  %conv.i.i124 = zext i16 %43 to i32
  %add.ptr.i.i125 = getelementptr i8, ptr %41, i32 %conv.i.i124
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %44 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %len.i, align 4
  %h_proto.i = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i125, i32 0, i32 2
  %46 = ptrtoint ptr %h_proto.i to i32
  call void @__asan_loadN_noabort(i32 %46, i32 2)
  %47 = load i16, ptr %h_proto.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32512, i16 %47)
  %cmp.i126 = icmp eq i16 %47, -32512
  %spec.select.v.i = select i1 %cmp.i126, i32 -18, i32 -14
  %spec.select.i = add i32 %spec.select.v.i, %45
  br label %prp_check_lsdu_size.exit

prp_check_lsdu_size.exit:                         ; preds = %if.else.i, %land.lhs.true60.prp_check_lsdu_size.exit_crit_edge
  %expected_lsdu_size.0.i = phi i32 [ 52, %land.lhs.true60.prp_check_lsdu_size.exit_crit_edge ], [ %spec.select.i, %if.else.i ]
  %lan_id_and_LSDU_size.i.i = getelementptr i8, ptr %37, i32 -4
  %48 = ptrtoint ptr %lan_id_and_LSDU_size.i.i to i32
  call void @__asan_loadN_noabort(i32 %48, i32 2)
  %49 = load i16, ptr %lan_id_and_LSDU_size.i.i, align 1
  %50 = and i16 %49, 4095
  %conv6.i = zext i16 %50 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %expected_lsdu_size.0.i, i32 %conv6.i)
  %cmp7.i = icmp eq i32 %expected_lsdu_size.0.i, %conv6.i
  br i1 %cmp7.i, label %if.then64, label %prp_check_lsdu_size.exit.if.else66_crit_edge

prp_check_lsdu_size.exit.if.else66_crit_edge:     ; preds = %prp_check_lsdu_size.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else66

if.then64:                                        ; preds = %prp_check_lsdu_size.exit
  call void @__sanitizer_cov_trace_pc() #12
  %51 = ptrtoint ptr %add.ptr.i121 to i32
  call void @__asan_loadN_noabort(i32 %51, i32 2)
  %52 = load i16, ptr %add.ptr.i121, align 1
  br label %if.end72

if.else66:                                        ; preds = %prp_check_lsdu_size.exit.if.else66_crit_edge, %if.else.if.else66_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %rx_port)
  %cmp67.not = icmp ne i32 %rx_port, 4
  br label %if.end72

if.end72:                                         ; preds = %if.else66, %if.then64, %if.then54
  %seq_out.0 = phi i16 [ %sub, %if.then54 ], [ %52, %if.then64 ], [ -1025, %if.else66 ]
  %san.1.off0 = phi i1 [ false, %if.then54 ], [ false, %if.then64 ], [ %cmp67.not, %if.else66 ]
  %call76 = tail call fastcc ptr @hsr_add_node(ptr noundef %1, ptr noundef %node_db, ptr noundef %h_source, i16 noundef zeroext %seq_out.0, i1 noundef zeroext %san.1.off0, i32 noundef %rx_port)
  br label %cleanup

cleanup:                                          ; preds = %if.end72, %if.then33, %if.then29.cleanup_crit_edge, %if.then19, %if.then17.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call76, %if.end72 ], [ null, %entry.cleanup_crit_edge ], [ %node.0, %if.then19 ], [ %node.0, %if.then17.cleanup_crit_edge ], [ %node.0, %if.then33 ], [ %node.0, %if.then29.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @hsr_add_node(ptr noundef %hsr, ptr noundef %node_db, ptr nocapture noundef readonly %addr, i16 noundef zeroext %seq_out, i1 noundef zeroext %san, i32 noundef %rx_port) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 2848, i32 noundef 92) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %macaddress_A = getelementptr inbounds %struct.hsr_node, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %addr, align 4
  %3 = ptrtoint ptr %macaddress_A to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %macaddress_A, align 8
  %add.ptr.i = getelementptr i8, ptr %addr, i32 4
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr %struct.hsr_node, ptr %call7.i.i, i32 0, i32 1, i32 4
  %6 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %add.ptr1.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %arrayidx = getelementptr %struct.hsr_node, ptr %call7.i.i, i32 0, i32 4, i32 0
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %arrayidx, align 8
  %arrayidx1 = getelementptr %struct.hsr_node, ptr %call7.i.i, i32 0, i32 6, i32 0
  %9 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %7, ptr %arrayidx1, align 4
  %arrayidx.1 = getelementptr %struct.hsr_node, ptr %call7.i.i, i32 0, i32 4, i32 1
  %10 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %7, ptr %arrayidx.1, align 4
  %arrayidx1.1 = getelementptr %struct.hsr_node, ptr %call7.i.i, i32 0, i32 6, i32 1
  %11 = ptrtoint ptr %arrayidx1.1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %7, ptr %arrayidx1.1, align 8
  %arrayidx.2 = getelementptr %struct.hsr_node, ptr %call7.i.i, i32 0, i32 4, i32 2
  %12 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %7, ptr %arrayidx.2, align 8
  %arrayidx1.2 = getelementptr %struct.hsr_node, ptr %call7.i.i, i32 0, i32 6, i32 2
  %13 = ptrtoint ptr %arrayidx1.2 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %7, ptr %arrayidx1.2, align 4
  %arrayidx.3 = getelementptr %struct.hsr_node, ptr %call7.i.i, i32 0, i32 4, i32 3
  %14 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %7, ptr %arrayidx.3, align 4
  %arrayidx1.3 = getelementptr %struct.hsr_node, ptr %call7.i.i, i32 0, i32 6, i32 3
  %15 = ptrtoint ptr %arrayidx1.3 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %7, ptr %arrayidx1.3, align 8
  %arrayidx.4 = getelementptr %struct.hsr_node, ptr %call7.i.i, i32 0, i32 4, i32 4
  %16 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %7, ptr %arrayidx.4, align 8
  %arrayidx1.4 = getelementptr %struct.hsr_node, ptr %call7.i.i, i32 0, i32 6, i32 4
  %17 = ptrtoint ptr %arrayidx1.4 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %7, ptr %arrayidx1.4, align 4
  %arrayidx6 = getelementptr %struct.hsr_node, ptr %call7.i.i, i32 0, i32 9, i32 0
  %18 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %seq_out, ptr %arrayidx6, align 2
  %arrayidx6.1 = getelementptr %struct.hsr_node, ptr %call7.i.i, i32 0, i32 9, i32 1
  %19 = ptrtoint ptr %arrayidx6.1 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %seq_out, ptr %arrayidx6.1, align 4
  %arrayidx6.2 = getelementptr %struct.hsr_node, ptr %call7.i.i, i32 0, i32 9, i32 2
  %20 = ptrtoint ptr %arrayidx6.2 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %seq_out, ptr %arrayidx6.2, align 2
  %arrayidx6.3 = getelementptr %struct.hsr_node, ptr %call7.i.i, i32 0, i32 9, i32 3
  %21 = ptrtoint ptr %arrayidx6.3 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %seq_out, ptr %arrayidx6.3, align 8
  %arrayidx6.4 = getelementptr %struct.hsr_node, ptr %call7.i.i, i32 0, i32 9, i32 4
  %22 = ptrtoint ptr %arrayidx6.4 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %seq_out, ptr %arrayidx6.4, align 2
  br i1 %san, label %land.lhs.true, label %if.end.if.end16_crit_edge

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

land.lhs.true:                                    ; preds = %if.end
  %proto_ops = getelementptr inbounds %struct.hsr_priv, ptr %hsr, i32 0, i32 12
  %23 = ptrtoint ptr %proto_ops to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %proto_ops, align 4
  %handle_san_frame = getelementptr inbounds %struct.hsr_proto_ops, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %handle_san_frame to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %handle_san_frame, align 4
  %tobool11.not = icmp eq ptr %26, null
  br i1 %tobool11.not, label %land.lhs.true.if.end16_crit_edge, label %if.then12

land.lhs.true.if.end16_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

if.then12:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %26(i1 noundef zeroext true, i32 noundef %rx_port, ptr noundef nonnull %call7.i.i) #10
  br label %if.end16

if.end16:                                         ; preds = %if.then12, %land.lhs.true.if.end16_crit_edge, %if.end.if.end16_crit_edge
  %list_lock = getelementptr inbounds %struct.hsr_priv, ptr %hsr, i32 0, i32 11
  tail call void @_raw_spin_lock_bh(ptr noundef %list_lock) #10
  %dep_map = getelementptr inbounds %struct.hsr_priv, ptr %hsr, i32 0, i32 11, i32 0, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool19.not = icmp eq i32 %call.i, 0
  br i1 %tobool19.not, label %land.lhs.true20, label %if.end16.for.cond34.preheader_crit_edge

if.end16.for.cond34.preheader_crit_edge:          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond34.preheader

land.lhs.true20:                                  ; preds = %if.end16
  %call21 = tail call i32 @rcu_read_lock_any_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %land.lhs.true23, label %land.lhs.true20.for.cond34.preheader_crit_edge

land.lhs.true20.for.cond34.preheader_crit_edge:   ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond34.preheader

land.lhs.true23:                                  ; preds = %land.lhs.true20
  %call24 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %land.lhs.true23.for.cond34.preheader_crit_edge, label %land.lhs.true26

land.lhs.true23.for.cond34.preheader_crit_edge:   ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond34.preheader

land.lhs.true26:                                  ; preds = %land.lhs.true23
  %.b92 = load i1, ptr @hsr_add_node.__warned, align 1
  br i1 %.b92, label %land.lhs.true26.for.cond34.preheader_crit_edge, label %if.then28

land.lhs.true26.for.cond34.preheader_crit_edge:   ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond34.preheader

if.then28:                                        ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @hsr_add_node.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 179, ptr noundef nonnull @.str.2) #10
  br label %for.cond34.preheader

for.cond34.preheader:                             ; preds = %if.then28, %land.lhs.true26.for.cond34.preheader_crit_edge, %land.lhs.true23.for.cond34.preheader_crit_edge, %land.lhs.true20.for.cond34.preheader_crit_edge, %if.end16.for.cond34.preheader_crit_edge
  br label %for.cond34

for.cond34:                                       ; preds = %if.end41.for.cond34_crit_edge, %for.cond34.preheader
  %node.0.in = phi ptr [ %node.0, %if.end41.for.cond34_crit_edge ], [ %node_db, %for.cond34.preheader ]
  %27 = ptrtoint ptr %node.0.in to i32
  call void @__asan_load4_noabort(i32 %27)
  %node.0 = load volatile ptr, ptr %node.0.in, align 4
  %cmp35.not = icmp eq ptr %node.0, %node_db
  br i1 %cmp35.not, label %for.end56, label %for.body36

for.body36:                                       ; preds = %for.cond34
  %macaddress_A37 = getelementptr inbounds %struct.hsr_node, ptr %node.0, i32 0, i32 1
  %28 = ptrtoint ptr %macaddress_A37 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %macaddress_A37, align 4
  %30 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %addr, align 4
  %xor.i = xor i32 %31, %29
  %add.ptr.i93 = getelementptr %struct.hsr_node, ptr %node.0, i32 0, i32 1, i32 4
  %32 = ptrtoint ptr %add.ptr.i93 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %add.ptr.i93, align 2
  %34 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %add.ptr.i, align 2
  %xor37.i = xor i16 %35, %33
  %xor3.i = zext i16 %xor37.i to i32
  %or.i = or i32 %xor.i, %xor3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i = icmp eq i32 %or.i, 0
  br i1 %cmp.i, label %for.body36.out_crit_edge, label %if.end41

for.body36.out_crit_edge:                         ; preds = %for.body36
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end41:                                         ; preds = %for.body36
  %macaddress_B = getelementptr inbounds %struct.hsr_node, ptr %node.0, i32 0, i32 2
  %36 = ptrtoint ptr %macaddress_B to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %macaddress_B, align 4
  %xor.i95 = xor i32 %37, %31
  %add.ptr.i96 = getelementptr %struct.hsr_node, ptr %node.0, i32 0, i32 2, i32 4
  %38 = ptrtoint ptr %add.ptr.i96 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %add.ptr.i96, align 2
  %xor37.i98 = xor i16 %39, %35
  %xor3.i99 = zext i16 %xor37.i98 to i32
  %or.i100 = or i32 %xor.i95, %xor3.i99
  %cmp.i101 = icmp eq i32 %or.i100, 0
  br i1 %cmp.i101, label %if.end41.out_crit_edge, label %if.end41.for.cond34_crit_edge

if.end41.for.cond34_crit_edge:                    ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond34

if.end41.out_crit_edge:                           ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

for.end56:                                        ; preds = %for.cond34
  %prev.i = getelementptr inbounds %struct.list_head, ptr %node_db, i32 0, i32 1
  %40 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %41, ptr noundef %node_db) #10
  br i1 %call.i.i, label %if.end.i.i, label %for.end56.list_add_tail_rcu.exit_crit_edge

for.end56.list_add_tail_rcu.exit_crit_edge:       ; preds = %for.end56
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail_rcu.exit

if.end.i.i:                                       ; preds = %for.end56
  call void @__sanitizer_cov_trace_pc() #12
  %42 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %node_db, ptr %call7.i.i, align 8
  %prev2.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %43 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %41, ptr %prev2.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !40
  %44 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %call7.i.i, ptr %41, align 4
  %45 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call7.i.i, ptr %prev.i, align 4
  br label %list_add_tail_rcu.exit

list_add_tail_rcu.exit:                           ; preds = %if.end.i.i, %for.end56.list_add_tail_rcu.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %list_lock) #10
  br label %cleanup

out:                                              ; preds = %if.end41.out_crit_edge, %for.body36.out_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %list_lock) #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %out, %list_add_tail_rcu.exit, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %node.0, %out ], [ %call7.i.i, %list_add_tail_rcu.exit ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hsr_handle_sup_frame(ptr nocapture noundef readonly %frame) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %node_src = getelementptr inbounds %struct.hsr_frame_info, ptr %frame, i32 0, i32 4
  %0 = ptrtoint ptr %node_src to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %node_src, align 4
  %port_rcv1 = getelementptr inbounds %struct.hsr_frame_info, ptr %frame, i32 0, i32 3
  %2 = ptrtoint ptr %port_rcv1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port_rcv1, align 4
  %hsr2 = getelementptr inbounds %struct.hsr_port, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %hsr2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hsr2, align 4
  %skb_hsr = getelementptr inbounds %struct.hsr_frame_info, ptr %frame, i32 0, i32 1
  %6 = ptrtoint ptr %skb_hsr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %skb_hsr, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %if.else, label %entry.if.end15_crit_edge

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.else:                                          ; preds = %entry
  %skb_prp = getelementptr inbounds %struct.hsr_frame_info, ptr %frame, i32 0, i32 2
  %8 = ptrtoint ptr %skb_prp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %skb_prp, align 4
  %tobool4.not = icmp eq ptr %9, null
  br i1 %tobool4.not, label %if.end12, label %if.else.if.end15_crit_edge

if.else.if.end15_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.end12:                                         ; preds = %if.else
  %10 = ptrtoint ptr %frame to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %frame, align 4
  %tobool13.not = icmp eq ptr %11, null
  br i1 %tobool13.not, label %if.end12.cleanup_crit_edge, label %if.end12.if.end15_crit_edge

if.end12.if.end15_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end15:                                         ; preds = %if.end12.if.end15_crit_edge, %if.else.if.end15_crit_edge, %entry.if.end15_crit_edge
  %skb.0197 = phi ptr [ %11, %if.end12.if.end15_crit_edge ], [ %9, %if.else.if.end15_crit_edge ], [ %7, %entry.if.end15_crit_edge ]
  %call = tail call ptr @skb_pull(ptr noundef nonnull %skb.0197, i32 noundef 14) #10
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0197, i32 0, i32 18
  %12 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %head.i, align 8
  %mac_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0197, i32 0, i32 15, i32 0, i32 21
  %14 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %mac_header.i, align 2
  %conv.i = zext i16 %15 to i32
  %add.ptr.i = getelementptr i8, ptr %13, i32 %conv.i
  %h_proto = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i, i32 0, i32 2
  %16 = ptrtoint ptr %h_proto to i32
  call void @__asan_loadN_noabort(i32 %16, i32 2)
  %17 = load i16, ptr %h_proto, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30417, i16 %17)
  %cmp = icmp eq i16 %17, -30417
  br i1 %cmp, label %if.then18, label %if.end15.if.end21_crit_edge

if.end15.if.end21_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  %call19 = tail call ptr @skb_pull(ptr noundef nonnull %skb.0197, i32 noundef 14) #10
  br label %if.end21

if.end21:                                         ; preds = %if.then18, %if.end15.if.end21_crit_edge
  %total_pull_size.0 = phi i32 [ 34, %if.then18 ], [ 20, %if.end15.if.end21_crit_edge ]
  %call22 = tail call ptr @skb_pull(ptr noundef nonnull %skb.0197, i32 noundef 6) #10
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb.0197, i32 0, i32 19
  %18 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data, align 4
  %20 = ptrtoint ptr %hsr2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hsr2, align 4
  %node_db25 = getelementptr inbounds %struct.hsr_priv, ptr %21, i32 0, i32 2
  %call.i = tail call i32 @rcu_read_lock_any_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.end21.do.end.i_crit_edge

if.end21.do.end.i_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %if.end21
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true3.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %.b25.i = load i1, ptr @find_node_by_addr_A.__warned, align 1
  br i1 %.b25.i, label %land.lhs.true3.i.do.end.i_crit_edge, label %if.then.i

land.lhs.true3.i.do.end.i_crit_edge:              ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

if.then.i:                                        ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @find_node_by_addr_A.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 67, ptr noundef nonnull @.str.2) #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %land.lhs.true3.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %if.end21.do.end.i_crit_edge
  %add.ptr1.i.i = getelementptr i8, ptr %19, i32 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %do.end.i
  %node.0.in.i = phi ptr [ %node_db25, %do.end.i ], [ %node.0.i, %for.body.i.for.cond.i_crit_edge ]
  %22 = ptrtoint ptr %node.0.in.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %node.0.i = load volatile ptr, ptr %node.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %node.0.i, %node_db25
  br i1 %cmp.not.i, label %for.cond.i.if.then28_crit_edge, label %for.body.i

for.cond.i.if.then28_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then28

for.body.i:                                       ; preds = %for.cond.i
  %macaddress_A.i = getelementptr inbounds %struct.hsr_node, ptr %node.0.i, i32 0, i32 1
  %23 = ptrtoint ptr %macaddress_A.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %macaddress_A.i, align 4
  %25 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %19, align 4
  %xor.i.i = xor i32 %26, %24
  %add.ptr.i.i = getelementptr %struct.hsr_node, ptr %node.0.i, i32 0, i32 1, i32 4
  %27 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %add.ptr.i.i, align 2
  %29 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %add.ptr1.i.i, align 2
  %xor37.i.i = xor i16 %30, %28
  %xor3.i.i = zext i16 %xor37.i.i to i32
  %or.i.i = or i32 %xor.i.i, %xor3.i.i
  %cmp.i.i = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i, label %find_node_by_addr_A.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i

find_node_by_addr_A.exit:                         ; preds = %for.body.i
  %tobool27.not = icmp eq ptr %node.0.i, null
  br i1 %tobool27.not, label %find_node_by_addr_A.exit.if.then28_crit_edge, label %find_node_by_addr_A.exit.if.end32_crit_edge

find_node_by_addr_A.exit.if.end32_crit_edge:      ; preds = %find_node_by_addr_A.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

find_node_by_addr_A.exit.if.then28_crit_edge:     ; preds = %find_node_by_addr_A.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then28

if.then28:                                        ; preds = %find_node_by_addr_A.exit.if.then28_crit_edge, %for.cond.i.if.then28_crit_edge
  %type = getelementptr inbounds %struct.hsr_port, ptr %3, i32 0, i32 3
  %31 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %type, align 4
  %call31 = tail call fastcc ptr @hsr_add_node(ptr noundef %5, ptr noundef %node_db25, ptr noundef %19, i16 noundef zeroext -1026, i1 noundef zeroext true, i32 noundef %32)
  br label %if.end32

if.end32:                                         ; preds = %if.then28, %find_node_by_addr_A.exit.if.end32_crit_edge
  %node_real.0 = phi ptr [ %node.0.i, %find_node_by_addr_A.exit.if.end32_crit_edge ], [ %call31, %if.then28 ]
  %tobool33.not = icmp eq ptr %node_real.0, null
  %cmp36 = icmp eq ptr %node_real.0, %1
  %or.cond = select i1 %tobool33.not, i1 true, i1 %cmp36
  br i1 %or.cond, label %if.end32.done_crit_edge, label %if.end39

if.end32.done_crit_edge:                          ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %done

if.end39:                                         ; preds = %if.end32
  %call40 = tail call ptr @skb_pull(ptr noundef nonnull %skb.0197, i32 noundef 6) #10
  %add41 = add nuw nsw i32 %total_pull_size.0, 6
  %33 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %data, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %34, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 30, i8 %36)
  %cmp44 = icmp eq i8 %36, 30
  br i1 %cmp44, label %if.then46, label %if.end39.if.end62_crit_edge

if.end39.if.end62_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end62

if.then46:                                        ; preds = %if.end39
  %HSR_TLV_length = getelementptr inbounds %struct.hsr_sup_tlv, ptr %34, i32 0, i32 1
  %37 = ptrtoint ptr %HSR_TLV_length to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %HSR_TLV_length, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %38)
  %cmp48.not = icmp eq i8 %38, 6
  br i1 %cmp48.not, label %if.end51, label %if.then46.done_crit_edge

if.then46.done_crit_edge:                         ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #12
  br label %done

if.end51:                                         ; preds = %if.then46
  %call52 = tail call ptr @skb_pull(ptr noundef nonnull %skb.0197, i32 noundef 2) #10
  %add53 = or i32 %total_pull_size.0, 8
  %39 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %data, align 4
  %macaddress_A55 = getelementptr inbounds %struct.hsr_node, ptr %node_real.0, i32 0, i32 1
  %41 = ptrtoint ptr %macaddress_A55 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %macaddress_A55, align 4
  %43 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %40, align 4
  %xor.i = xor i32 %44, %42
  %add.ptr.i189 = getelementptr %struct.hsr_node, ptr %node_real.0, i32 0, i32 1, i32 4
  %45 = ptrtoint ptr %add.ptr.i189 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %add.ptr.i189, align 2
  %add.ptr1.i = getelementptr i8, ptr %40, i32 4
  %47 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %add.ptr1.i, align 2
  %xor37.i = xor i16 %48, %46
  %xor3.i = zext i16 %xor37.i to i32
  %or.i = or i32 %xor.i, %xor3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i = icmp eq i32 %or.i, 0
  br i1 %cmp.i, label %if.end51.if.end62_crit_edge, label %if.end51.done_crit_edge

if.end51.done_crit_edge:                          ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #12
  br label %done

if.end51.if.end62_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end62

if.end62:                                         ; preds = %if.end51.if.end62_crit_edge, %if.end39.if.end62_crit_edge
  %total_pull_size.1 = phi i32 [ %add53, %if.end51.if.end62_crit_edge ], [ %add41, %if.end39.if.end62_crit_edge ]
  %macaddress_B = getelementptr inbounds %struct.hsr_node, ptr %node_real.0, i32 0, i32 2
  %h_source = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i, i32 0, i32 1
  %49 = ptrtoint ptr %h_source to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %h_source, align 4
  %51 = ptrtoint ptr %macaddress_B to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %macaddress_B, align 4
  %add.ptr.i190 = getelementptr i8, ptr %h_source, i32 4
  %52 = ptrtoint ptr %add.ptr.i190 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %add.ptr.i190, align 2
  %add.ptr1.i191 = getelementptr %struct.hsr_node, ptr %node_real.0, i32 0, i32 2, i32 4
  %54 = ptrtoint ptr %add.ptr1.i191 to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %53, ptr %add.ptr1.i191, align 2
  %arrayidx = getelementptr %struct.hsr_node, ptr %1, i32 0, i32 5, i32 0
  %55 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx, align 1, !range !41
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool67.not = icmp eq i8 %56, 0
  br i1 %tobool67.not, label %land.lhs.true, label %if.end62.if.end83_crit_edge

if.end62.if.end83_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end83

land.lhs.true:                                    ; preds = %if.end62
  %arrayidx68 = getelementptr %struct.hsr_node, ptr %node_real.0, i32 0, i32 4, i32 0
  %57 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx68, align 4
  %arrayidx70 = getelementptr %struct.hsr_node, ptr %1, i32 0, i32 4, i32 0
  %59 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx70, align 4
  %sub = sub i32 %58, %60
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp71 = icmp slt i32 %sub, 0
  br i1 %cmp71, label %if.then73, label %land.lhs.true.if.end83_crit_edge

land.lhs.true.if.end83_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end83

if.then73:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %61 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %arrayidx68, align 4
  %62 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx, align 1, !range !41
  %arrayidx82 = getelementptr %struct.hsr_node, ptr %node_real.0, i32 0, i32 5, i32 0
  %64 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %63, ptr %arrayidx82, align 1
  br label %if.end83

if.end83:                                         ; preds = %if.then73, %land.lhs.true.if.end83_crit_edge, %if.end62.if.end83_crit_edge
  %arrayidx84 = getelementptr %struct.hsr_node, ptr %1, i32 0, i32 9, i32 0
  %65 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %arrayidx84, align 2
  %arrayidx86 = getelementptr %struct.hsr_node, ptr %node_real.0, i32 0, i32 9, i32 0
  %67 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %arrayidx86, align 2
  %conv.i192 = zext i16 %68 to i32
  %conv1.i = zext i16 %66 to i32
  %sub.i = sub nsw i32 %conv.i192, %conv1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %sub.i)
  %cmp.i193 = icmp ne i32 %sub.i, 32768
  %sext.mask.i = and i32 %sub.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sext.mask.i)
  %cmp8.i = icmp ne i32 %sext.mask.i, 0
  %retval.0.i194 = and i1 %cmp.i193, %cmp8.i
  br i1 %retval.0.i194, label %if.then88, label %if.end83.for.inc_crit_edge

if.end83.for.inc_crit_edge:                       ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then88:                                        ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #12
  %69 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 %66, ptr %arrayidx86, align 2
  br label %for.inc

for.inc:                                          ; preds = %if.then88, %if.end83.for.inc_crit_edge
  %arrayidx.1 = getelementptr %struct.hsr_node, ptr %1, i32 0, i32 5, i32 1
  %70 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx.1, align 1, !range !41
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool67.not.1 = icmp eq i8 %71, 0
  br i1 %tobool67.not.1, label %land.lhs.true.1, label %for.inc.if.end83.1_crit_edge

for.inc.if.end83.1_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end83.1

land.lhs.true.1:                                  ; preds = %for.inc
  %arrayidx68.1 = getelementptr %struct.hsr_node, ptr %node_real.0, i32 0, i32 4, i32 1
  %72 = ptrtoint ptr %arrayidx68.1 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx68.1, align 4
  %arrayidx70.1 = getelementptr %struct.hsr_node, ptr %1, i32 0, i32 4, i32 1
  %74 = ptrtoint ptr %arrayidx70.1 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx70.1, align 4
  %sub.1 = sub i32 %73, %75
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.1)
  %cmp71.1 = icmp slt i32 %sub.1, 0
  br i1 %cmp71.1, label %if.then73.1, label %land.lhs.true.1.if.end83.1_crit_edge

land.lhs.true.1.if.end83.1_crit_edge:             ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end83.1

if.then73.1:                                      ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #12
  %76 = ptrtoint ptr %arrayidx68.1 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %arrayidx68.1, align 4
  %77 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %arrayidx.1, align 1, !range !41
  %arrayidx82.1 = getelementptr %struct.hsr_node, ptr %node_real.0, i32 0, i32 5, i32 1
  %79 = ptrtoint ptr %arrayidx82.1 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %78, ptr %arrayidx82.1, align 1
  br label %if.end83.1

if.end83.1:                                       ; preds = %if.then73.1, %land.lhs.true.1.if.end83.1_crit_edge, %for.inc.if.end83.1_crit_edge
  %arrayidx84.1 = getelementptr %struct.hsr_node, ptr %1, i32 0, i32 9, i32 1
  %80 = ptrtoint ptr %arrayidx84.1 to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %arrayidx84.1, align 2
  %arrayidx86.1 = getelementptr %struct.hsr_node, ptr %node_real.0, i32 0, i32 9, i32 1
  %82 = ptrtoint ptr %arrayidx86.1 to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %arrayidx86.1, align 2
  %conv.i192.1 = zext i16 %83 to i32
  %conv1.i.1 = zext i16 %81 to i32
  %sub.i.1 = sub nsw i32 %conv.i192.1, %conv1.i.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %sub.i.1)
  %cmp.i193.1 = icmp ne i32 %sub.i.1, 32768
  %sext.mask.i.1 = and i32 %sub.i.1, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sext.mask.i.1)
  %cmp8.i.1 = icmp ne i32 %sext.mask.i.1, 0
  %retval.0.i194.1 = and i1 %cmp.i193.1, %cmp8.i.1
  br i1 %retval.0.i194.1, label %if.then88.1, label %if.end83.1.for.inc.1_crit_edge

if.end83.1.for.inc.1_crit_edge:                   ; preds = %if.end83.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1

if.then88.1:                                      ; preds = %if.end83.1
  call void @__sanitizer_cov_trace_pc() #12
  %84 = ptrtoint ptr %arrayidx86.1 to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 %81, ptr %arrayidx86.1, align 2
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then88.1, %if.end83.1.for.inc.1_crit_edge
  %arrayidx.2 = getelementptr %struct.hsr_node, ptr %1, i32 0, i32 5, i32 2
  %85 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %arrayidx.2, align 1, !range !41
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %86)
  %tobool67.not.2 = icmp eq i8 %86, 0
  br i1 %tobool67.not.2, label %land.lhs.true.2, label %for.inc.1.if.end83.2_crit_edge

for.inc.1.if.end83.2_crit_edge:                   ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end83.2

land.lhs.true.2:                                  ; preds = %for.inc.1
  %arrayidx68.2 = getelementptr %struct.hsr_node, ptr %node_real.0, i32 0, i32 4, i32 2
  %87 = ptrtoint ptr %arrayidx68.2 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %arrayidx68.2, align 4
  %arrayidx70.2 = getelementptr %struct.hsr_node, ptr %1, i32 0, i32 4, i32 2
  %89 = ptrtoint ptr %arrayidx70.2 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %arrayidx70.2, align 4
  %sub.2 = sub i32 %88, %90
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.2)
  %cmp71.2 = icmp slt i32 %sub.2, 0
  br i1 %cmp71.2, label %if.then73.2, label %land.lhs.true.2.if.end83.2_crit_edge

land.lhs.true.2.if.end83.2_crit_edge:             ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end83.2

if.then73.2:                                      ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #12
  %91 = ptrtoint ptr %arrayidx68.2 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %90, ptr %arrayidx68.2, align 4
  %92 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %arrayidx.2, align 1, !range !41
  %arrayidx82.2 = getelementptr %struct.hsr_node, ptr %node_real.0, i32 0, i32 5, i32 2
  %94 = ptrtoint ptr %arrayidx82.2 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 %93, ptr %arrayidx82.2, align 1
  br label %if.end83.2

if.end83.2:                                       ; preds = %if.then73.2, %land.lhs.true.2.if.end83.2_crit_edge, %for.inc.1.if.end83.2_crit_edge
  %arrayidx84.2 = getelementptr %struct.hsr_node, ptr %1, i32 0, i32 9, i32 2
  %95 = ptrtoint ptr %arrayidx84.2 to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %arrayidx84.2, align 2
  %arrayidx86.2 = getelementptr %struct.hsr_node, ptr %node_real.0, i32 0, i32 9, i32 2
  %97 = ptrtoint ptr %arrayidx86.2 to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %arrayidx86.2, align 2
  %conv.i192.2 = zext i16 %98 to i32
  %conv1.i.2 = zext i16 %96 to i32
  %sub.i.2 = sub nsw i32 %conv.i192.2, %conv1.i.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %sub.i.2)
  %cmp.i193.2 = icmp ne i32 %sub.i.2, 32768
  %sext.mask.i.2 = and i32 %sub.i.2, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sext.mask.i.2)
  %cmp8.i.2 = icmp ne i32 %sext.mask.i.2, 0
  %retval.0.i194.2 = and i1 %cmp.i193.2, %cmp8.i.2
  br i1 %retval.0.i194.2, label %if.then88.2, label %if.end83.2.for.inc.2_crit_edge

if.end83.2.for.inc.2_crit_edge:                   ; preds = %if.end83.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.2

if.then88.2:                                      ; preds = %if.end83.2
  call void @__sanitizer_cov_trace_pc() #12
  %99 = ptrtoint ptr %arrayidx86.2 to i32
  call void @__asan_store2_noabort(i32 %99)
  store i16 %96, ptr %arrayidx86.2, align 2
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then88.2, %if.end83.2.for.inc.2_crit_edge
  %arrayidx.3 = getelementptr %struct.hsr_node, ptr %1, i32 0, i32 5, i32 3
  %100 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %arrayidx.3, align 1, !range !41
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %101)
  %tobool67.not.3 = icmp eq i8 %101, 0
  br i1 %tobool67.not.3, label %land.lhs.true.3, label %for.inc.2.if.end83.3_crit_edge

for.inc.2.if.end83.3_crit_edge:                   ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end83.3

land.lhs.true.3:                                  ; preds = %for.inc.2
  %arrayidx68.3 = getelementptr %struct.hsr_node, ptr %node_real.0, i32 0, i32 4, i32 3
  %102 = ptrtoint ptr %arrayidx68.3 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %arrayidx68.3, align 4
  %arrayidx70.3 = getelementptr %struct.hsr_node, ptr %1, i32 0, i32 4, i32 3
  %104 = ptrtoint ptr %arrayidx70.3 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %arrayidx70.3, align 4
  %sub.3 = sub i32 %103, %105
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.3)
  %cmp71.3 = icmp slt i32 %sub.3, 0
  br i1 %cmp71.3, label %if.then73.3, label %land.lhs.true.3.if.end83.3_crit_edge

land.lhs.true.3.if.end83.3_crit_edge:             ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end83.3

if.then73.3:                                      ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #12
  %106 = ptrtoint ptr %arrayidx68.3 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %105, ptr %arrayidx68.3, align 4
  %107 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %arrayidx.3, align 1, !range !41
  %arrayidx82.3 = getelementptr %struct.hsr_node, ptr %node_real.0, i32 0, i32 5, i32 3
  %109 = ptrtoint ptr %arrayidx82.3 to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 %108, ptr %arrayidx82.3, align 1
  br label %if.end83.3

if.end83.3:                                       ; preds = %if.then73.3, %land.lhs.true.3.if.end83.3_crit_edge, %for.inc.2.if.end83.3_crit_edge
  %arrayidx84.3 = getelementptr %struct.hsr_node, ptr %1, i32 0, i32 9, i32 3
  %110 = ptrtoint ptr %arrayidx84.3 to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %arrayidx84.3, align 2
  %arrayidx86.3 = getelementptr %struct.hsr_node, ptr %node_real.0, i32 0, i32 9, i32 3
  %112 = ptrtoint ptr %arrayidx86.3 to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %arrayidx86.3, align 2
  %conv.i192.3 = zext i16 %113 to i32
  %conv1.i.3 = zext i16 %111 to i32
  %sub.i.3 = sub nsw i32 %conv.i192.3, %conv1.i.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %sub.i.3)
  %cmp.i193.3 = icmp ne i32 %sub.i.3, 32768
  %sext.mask.i.3 = and i32 %sub.i.3, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sext.mask.i.3)
  %cmp8.i.3 = icmp ne i32 %sext.mask.i.3, 0
  %retval.0.i194.3 = and i1 %cmp.i193.3, %cmp8.i.3
  br i1 %retval.0.i194.3, label %if.then88.3, label %if.end83.3.for.inc.3_crit_edge

if.end83.3.for.inc.3_crit_edge:                   ; preds = %if.end83.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.3

if.then88.3:                                      ; preds = %if.end83.3
  call void @__sanitizer_cov_trace_pc() #12
  %114 = ptrtoint ptr %arrayidx86.3 to i32
  call void @__asan_store2_noabort(i32 %114)
  store i16 %111, ptr %arrayidx86.3, align 2
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then88.3, %if.end83.3.for.inc.3_crit_edge
  %arrayidx.4 = getelementptr %struct.hsr_node, ptr %1, i32 0, i32 5, i32 4
  %115 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %arrayidx.4, align 1, !range !41
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %116)
  %tobool67.not.4 = icmp eq i8 %116, 0
  br i1 %tobool67.not.4, label %land.lhs.true.4, label %for.inc.3.if.end83.4_crit_edge

for.inc.3.if.end83.4_crit_edge:                   ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end83.4

land.lhs.true.4:                                  ; preds = %for.inc.3
  %arrayidx68.4 = getelementptr %struct.hsr_node, ptr %node_real.0, i32 0, i32 4, i32 4
  %117 = ptrtoint ptr %arrayidx68.4 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %arrayidx68.4, align 4
  %arrayidx70.4 = getelementptr %struct.hsr_node, ptr %1, i32 0, i32 4, i32 4
  %119 = ptrtoint ptr %arrayidx70.4 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %arrayidx70.4, align 4
  %sub.4 = sub i32 %118, %120
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.4)
  %cmp71.4 = icmp slt i32 %sub.4, 0
  br i1 %cmp71.4, label %if.then73.4, label %land.lhs.true.4.if.end83.4_crit_edge

land.lhs.true.4.if.end83.4_crit_edge:             ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end83.4

if.then73.4:                                      ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #12
  %121 = ptrtoint ptr %arrayidx68.4 to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %120, ptr %arrayidx68.4, align 4
  %122 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %arrayidx.4, align 1, !range !41
  %arrayidx82.4 = getelementptr %struct.hsr_node, ptr %node_real.0, i32 0, i32 5, i32 4
  %124 = ptrtoint ptr %arrayidx82.4 to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 %123, ptr %arrayidx82.4, align 1
  br label %if.end83.4

if.end83.4:                                       ; preds = %if.then73.4, %land.lhs.true.4.if.end83.4_crit_edge, %for.inc.3.if.end83.4_crit_edge
  %arrayidx84.4 = getelementptr %struct.hsr_node, ptr %1, i32 0, i32 9, i32 4
  %125 = ptrtoint ptr %arrayidx84.4 to i32
  call void @__asan_load2_noabort(i32 %125)
  %126 = load i16, ptr %arrayidx84.4, align 2
  %arrayidx86.4 = getelementptr %struct.hsr_node, ptr %node_real.0, i32 0, i32 9, i32 4
  %127 = ptrtoint ptr %arrayidx86.4 to i32
  call void @__asan_load2_noabort(i32 %127)
  %128 = load i16, ptr %arrayidx86.4, align 2
  %conv.i192.4 = zext i16 %128 to i32
  %conv1.i.4 = zext i16 %126 to i32
  %sub.i.4 = sub nsw i32 %conv.i192.4, %conv1.i.4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %sub.i.4)
  %cmp.i193.4 = icmp ne i32 %sub.i.4, 32768
  %sext.mask.i.4 = and i32 %sub.i.4, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sext.mask.i.4)
  %cmp8.i.4 = icmp ne i32 %sext.mask.i.4, 0
  %retval.0.i194.4 = and i1 %cmp.i193.4, %cmp8.i.4
  br i1 %retval.0.i194.4, label %if.then88.4, label %if.end83.4.for.inc.4_crit_edge

if.end83.4.for.inc.4_crit_edge:                   ; preds = %if.end83.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.4

if.then88.4:                                      ; preds = %if.end83.4
  call void @__sanitizer_cov_trace_pc() #12
  %129 = ptrtoint ptr %arrayidx86.4 to i32
  call void @__asan_store2_noabort(i32 %129)
  store i16 %126, ptr %arrayidx86.4, align 2
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then88.4, %if.end83.4.for.inc.4_crit_edge
  %type94 = getelementptr inbounds %struct.hsr_port, ptr %3, i32 0, i32 3
  %130 = ptrtoint ptr %type94 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %type94, align 4
  %addr_B_port = getelementptr inbounds %struct.hsr_node, ptr %node_real.0, i32 0, i32 3
  %132 = ptrtoint ptr %addr_B_port to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %131, ptr %addr_B_port, align 4
  %list_lock = getelementptr inbounds %struct.hsr_priv, ptr %5, i32 0, i32 11
  tail call void @_raw_spin_lock_bh(ptr noundef %list_lock) #10
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %1) #10
  br i1 %call.i.i, label %if.end.i.i, label %for.inc.4.list_del_rcu.exit_crit_edge

for.inc.4.list_del_rcu.exit_crit_edge:            ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_rcu.exit

if.end.i.i:                                       ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %133 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %prev.i.i, align 4
  %135 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %1, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %136, i32 0, i32 1
  %137 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr %134, ptr %prev1.i.i.i, align 4
  %138 = ptrtoint ptr %134 to i32
  call void @__asan_store4_noabort(i32 %138)
  store volatile ptr %136, ptr %134, align 4
  br label %list_del_rcu.exit

list_del_rcu.exit:                                ; preds = %if.end.i.i, %for.inc.4.list_del_rcu.exit_crit_edge
  %prev.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %139 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %list_lock) #10
  %tobool96.not = icmp eq ptr %1, null
  br i1 %tobool96.not, label %list_del_rcu.exit.done_crit_edge, label %do.end

list_del_rcu.exit.done_crit_edge:                 ; preds = %list_del_rcu.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %done

do.end:                                           ; preds = %list_del_rcu.exit
  call void @__sanitizer_cov_trace_pc() #12
  %callback_head = getelementptr inbounds %struct.hsr_node, ptr %1, i32 0, i32 10
  tail call void @kvfree_call_rcu(ptr noundef %callback_head, ptr noundef nonnull inttoptr (i32 84 to ptr)) #10
  br label %done

done:                                             ; preds = %do.end, %list_del_rcu.exit.done_crit_edge, %if.end51.done_crit_edge, %if.then46.done_crit_edge, %if.end32.done_crit_edge
  %total_pull_size.2 = phi i32 [ %add41, %if.then46.done_crit_edge ], [ %add53, %if.end51.done_crit_edge ], [ %total_pull_size.0, %if.end32.done_crit_edge ], [ %total_pull_size.1, %do.end ], [ %total_pull_size.1, %list_del_rcu.exit.done_crit_edge ]
  %call102 = tail call ptr @skb_push(ptr noundef nonnull %skb.0197, i32 noundef %total_pull_size.2) #10
  br label %cleanup

cleanup:                                          ; preds = %done, %if.end12.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hsr_addr_subst_source(ptr nocapture noundef readonly %node, ptr nocapture noundef readonly %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mac_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %0 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %mac_header.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %1)
  %cmp.i.not = icmp eq i16 %1, -1
  br i1 %cmp.i.not, label %land.end, label %if.end35

land.end:                                         ; preds = %entry
  %.b40 = load i1, ptr @hsr_addr_subst_source.__already_done, align 1
  br i1 %.b40, label %land.end.return_crit_edge, label %if.then6, !prof !38

land.end.return_crit_edge:                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.then6:                                         ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @hsr_addr_subst_source.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 389, i32 noundef 9, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.hsr_addr_subst_source) #10
  br label %return

if.end35:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %2 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %head.i.i, align 8
  %conv.i.i = zext i16 %1 to i32
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 %conv.i.i
  %h_source = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i, i32 0, i32 1
  %macaddress_A = getelementptr inbounds %struct.hsr_node, ptr %node, i32 0, i32 1
  %4 = call ptr @memcpy(ptr %h_source, ptr %macaddress_A, i32 6)
  br label %return

return:                                           ; preds = %if.end35, %if.then6, %land.end.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hsr_addr_subst_dest(ptr nocapture noundef readnone %node_src, ptr nocapture noundef readonly %skb, ptr nocapture noundef readonly %port) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mac_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %0 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %mac_header.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %1)
  %cmp.i.not = icmp eq i16 %1, -1
  br i1 %cmp.i.not, label %land.end, label %if.end35

land.end:                                         ; preds = %entry
  %.b72 = load i1, ptr @hsr_addr_subst_dest.__already_done, align 1
  br i1 %.b72, label %land.end.cleanup_crit_edge, label %if.then6, !prof !38

land.end.cleanup_crit_edge:                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then6:                                         ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @hsr_addr_subst_dest.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 411, i32 noundef 9, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.hsr_addr_subst_dest) #10
  br label %cleanup

if.end35:                                         ; preds = %entry
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %2 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %head.i.i, align 8
  %conv.i.i = zext i16 %1 to i32
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 %conv.i.i
  %4 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr.i.i, align 4
  %6 = and i32 %5, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.i.not.i = icmp eq i32 %6, 0
  br i1 %tobool.i.not.i, label %if.end39, label %if.end35.cleanup_crit_edge

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end39:                                         ; preds = %if.end35
  %hsr = getelementptr inbounds %struct.hsr_port, ptr %port, i32 0, i32 2
  %7 = ptrtoint ptr %hsr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hsr, align 4
  %node_db = getelementptr inbounds %struct.hsr_priv, ptr %8, i32 0, i32 2
  %call.i = tail call i32 @rcu_read_lock_any_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.end39.do.end.i_crit_edge

if.end39.do.end.i_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %if.end39
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true3.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %.b25.i = load i1, ptr @find_node_by_addr_A.__warned, align 1
  br i1 %.b25.i, label %land.lhs.true3.i.do.end.i_crit_edge, label %if.then.i

land.lhs.true3.i.do.end.i_crit_edge:              ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

if.then.i:                                        ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @find_node_by_addr_A.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 67, ptr noundef nonnull @.str.2) #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %land.lhs.true3.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %if.end39.do.end.i_crit_edge
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %do.end.i
  %node.0.in.i = phi ptr [ %node_db, %do.end.i ], [ %node.0.i, %for.body.i.for.cond.i_crit_edge ]
  %9 = ptrtoint ptr %node.0.in.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %node.0.i = load volatile ptr, ptr %node.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %node.0.i, %node_db
  br i1 %cmp.not.i, label %for.cond.i.if.then45_crit_edge, label %for.body.i

for.cond.i.if.then45_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then45

for.body.i:                                       ; preds = %for.cond.i
  %macaddress_A.i = getelementptr inbounds %struct.hsr_node, ptr %node.0.i, i32 0, i32 1
  %10 = ptrtoint ptr %macaddress_A.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %macaddress_A.i, align 4
  %12 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr.i.i, align 4
  %xor.i.i = xor i32 %13, %11
  %add.ptr.i.i77 = getelementptr %struct.hsr_node, ptr %node.0.i, i32 0, i32 1, i32 4
  %14 = ptrtoint ptr %add.ptr.i.i77 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %add.ptr.i.i77, align 2
  %16 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %add.ptr1.i.i, align 2
  %xor37.i.i = xor i16 %17, %15
  %xor3.i.i = zext i16 %xor37.i.i to i32
  %or.i.i = or i32 %xor.i.i, %xor3.i.i
  %cmp.i.i = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i, label %find_node_by_addr_A.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i

find_node_by_addr_A.exit:                         ; preds = %for.body.i
  %tobool44.not = icmp eq ptr %node.0.i, null
  br i1 %tobool44.not, label %find_node_by_addr_A.exit.if.then45_crit_edge, label %if.end50

find_node_by_addr_A.exit.if.then45_crit_edge:     ; preds = %find_node_by_addr_A.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then45

if.then45:                                        ; preds = %find_node_by_addr_A.exit.if.then45_crit_edge, %for.cond.i.if.then45_crit_edge
  %call46 = tail call i32 @net_ratelimit() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.then45.cleanup_crit_edge, label %if.then48

if.then45.cleanup_crit_edge:                      ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then48:                                        ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #12
  %18 = getelementptr inbounds %struct.anon.4, ptr %skb, i32 0, i32 2
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %20, ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.hsr_addr_subst_dest) #14
  br label %cleanup

if.end50:                                         ; preds = %find_node_by_addr_A.exit
  %type = getelementptr inbounds %struct.hsr_port, ptr %port, i32 0, i32 3
  %21 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %type, align 4
  %addr_B_port = getelementptr inbounds %struct.hsr_node, ptr %node.0.i, i32 0, i32 3
  %23 = ptrtoint ptr %addr_B_port to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %addr_B_port, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %24)
  %cmp.not = icmp eq i32 %22, %24
  br i1 %cmp.not, label %if.end52, label %if.end50.cleanup_crit_edge

if.end50.cleanup_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end52:                                         ; preds = %if.end50
  %macaddress_B = getelementptr inbounds %struct.hsr_node, ptr %node.0.i, i32 0, i32 2
  %25 = ptrtoint ptr %macaddress_B to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %macaddress_B, align 4
  %27 = and i32 %26, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.i.not.i78 = icmp eq i32 %27, 0
  br i1 %tobool.i.not.i78, label %is_valid_ether_addr.exit, label %if.end52.cleanup_crit_edge

if.end52.cleanup_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

is_valid_ether_addr.exit:                         ; preds = %if.end52
  %add.ptr.i.i79 = getelementptr %struct.hsr_node, ptr %node.0.i, i32 0, i32 2, i32 4
  %28 = ptrtoint ptr %add.ptr.i.i79 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %add.ptr.i.i79, align 2
  %conv.i.i80 = zext i16 %29 to i32
  %or.i.i81 = or i32 %26, %conv.i.i80
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i81)
  %cmp.i.i82.not = icmp eq i32 %or.i.i81, 0
  br i1 %cmp.i.i82.not, label %is_valid_ether_addr.exit.cleanup_crit_edge, label %if.then55

is_valid_ether_addr.exit.cleanup_crit_edge:       ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then55:                                        ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #12
  %30 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %head.i.i, align 8
  %32 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %mac_header.i, align 2
  %conv.i.i85 = zext i16 %33 to i32
  %add.ptr.i.i86 = getelementptr i8, ptr %31, i32 %conv.i.i85
  %34 = ptrtoint ptr %add.ptr.i.i86 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %26, ptr %add.ptr.i.i86, align 4
  %35 = ptrtoint ptr %add.ptr.i.i79 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %add.ptr.i.i79, align 2
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i.i86, i32 4
  %37 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %36, ptr %add.ptr1.i, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.then55, %is_valid_ether_addr.exit.cleanup_crit_edge, %if.end52.cleanup_crit_edge, %if.end50.cleanup_crit_edge, %if.then48, %if.then45.cleanup_crit_edge, %if.end35.cleanup_crit_edge, %if.then6, %land.end.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @hsr_register_frame_in(ptr nocapture noundef %node, ptr nocapture noundef readonly %port, i16 noundef zeroext %sequence_nr) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.hsr_port, ptr %port, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %features = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %features, align 16
  %and = and i64 %3, 2305843009213693952
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %type = getelementptr inbounds %struct.hsr_port, ptr %port, i32 0, i32 3
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type, align 4
  %arrayidx = getelementptr %struct.hsr_node, ptr %node, i32 0, i32 9, i32 %5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx, align 2
  %conv.i = zext i16 %sequence_nr to i32
  %conv1.i = zext i16 %7 to i32
  %sub.i = sub nsw i32 %conv.i, %conv1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %sub.i)
  %cmp.i = icmp ne i32 %sub.i, 32768
  %sext.mask.i = and i32 %sub.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sext.mask.i)
  %cmp8.i = icmp ne i32 %sext.mask.i, 0
  %retval.0.i = and i1 %cmp.i, %cmp8.i
  br i1 %retval.0.i, label %land.lhs.true.return_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %type1 = getelementptr inbounds %struct.hsr_port, ptr %port, i32 0, i32 3
  %9 = ptrtoint ptr %type1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %type1, align 4
  %arrayidx2 = getelementptr %struct.hsr_node, ptr %node, i32 0, i32 4, i32 %10
  %11 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %8, ptr %arrayidx2, align 4
  %12 = load i32, ptr %type1, align 4
  %arrayidx4 = getelementptr %struct.hsr_node, ptr %node, i32 0, i32 5, i32 %12
  %13 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %arrayidx4, align 1
  br label %return

return:                                           ; preds = %if.end, %land.lhs.true.return_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @hsr_register_frame_out(ptr nocapture noundef readonly %port, ptr nocapture noundef %node, i16 noundef zeroext %sequence_nr) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.hsr_port, ptr %port, i32 0, i32 3
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  %arrayidx = getelementptr %struct.hsr_node, ptr %node, i32 0, i32 9, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arrayidx, align 2
  %conv.i = zext i16 %3 to i32
  %conv1.i = zext i16 %sequence_nr to i32
  %sub.i = sub nsw i32 %conv.i, %conv1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %sub.i)
  %cmp.i = icmp ne i32 %sub.i, 32768
  %sext.mask.i = and i32 %sub.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sext.mask.i)
  %cmp8.i = icmp ne i32 %sext.mask.i, 0
  %retval.0.i = and i1 %cmp.i, %cmp8.i
  br i1 %retval.0.i, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %arrayidx2 = getelementptr %struct.hsr_node, ptr %node, i32 0, i32 6, i32 %1
  %5 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx2, align 4
  %add.neg = add i32 %4, -40
  %sub = sub i32 %add.neg, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %land.lhs.true.return_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %arrayidx6 = getelementptr %struct.hsr_node, ptr %node, i32 0, i32 6, i32 %1
  %8 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %arrayidx6, align 4
  %9 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %type, align 4
  %arrayidx9 = getelementptr %struct.hsr_node, ptr %node, i32 0, i32 9, i32 %10
  %11 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %sequence_nr, ptr %arrayidx9, align 2
  br label %return

return:                                           ; preds = %if.end, %land.lhs.true.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ 1, %land.lhs.true.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hsr_prune_nodes(ptr noundef %t) local_unnamed_addr #0 align 64 {
entry:
  %__next.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -80
  %list_lock = getelementptr i8, ptr %t, i32 104
  tail call void @_raw_spin_lock_bh(ptr noundef %list_lock) #10
  %node_db = getelementptr i8, ptr %t, i32 -64
  %0 = ptrtoint ptr %node_db to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %node_db, align 4
  %cmp.not119 = icmp eq ptr %1, %node_db
  br i1 %cmp.not119, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %self_node_db.i = getelementptr i8, ptr %t, i32 -56
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %node.0120 = phi ptr [ %1, %for.body.lr.ph ], [ %tmp1.0124, %for.inc.for.body_crit_edge ]
  %2 = ptrtoint ptr %node.0120 to i32
  call void @__asan_load4_noabort(i32 %2)
  %tmp1.0124 = load ptr, ptr %node.0120, align 4
  %macaddress_A = getelementptr inbounds %struct.hsr_node, ptr %node.0120, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__next.i)
  %3 = ptrtoint ptr %self_node_db.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %self_node_db.i, align 4
  %5 = ptrtoint ptr %__next.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %__next.i, align 4
  %cmp.not.i = icmp eq ptr %self_node_db.i, %4
  br i1 %cmp.not.i, label %cond.end.thread.i, label %cond.end.i, !prof !37

cond.end.thread.i:                                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__next.i)
  br label %land.end.i

cond.end.i:                                       ; preds = %for.body
  %6 = ptrtoint ptr %__next.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %__next.i.0.__next.i.0.__next.0.__next.0.__next.0.61.i = load volatile ptr, ptr %__next.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__next.i)
  %tobool8.not.i = icmp eq ptr %__next.i.0.__next.i.0.__next.0.__next.0.__next.0.61.i, null
  br i1 %tobool8.not.i, label %cond.end.i.land.end.i_crit_edge, label %if.end52.i

cond.end.i.land.end.i_crit_edge:                  ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.end.i

land.end.i:                                       ; preds = %cond.end.i.land.end.i_crit_edge, %cond.end.thread.i
  %.b66.i = load i1, ptr @hsr_addr_is_self.__already_done, align 1
  br i1 %.b66.i, label %land.end.i.if.end_crit_edge, label %if.then19.i, !prof !38

land.end.i.if.end_crit_edge:                      ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then19.i:                                      ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @hsr_addr_is_self.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 48, i32 noundef 9, ptr noundef nonnull @.str.1) #10
  br label %if.end

if.end52.i:                                       ; preds = %cond.end.i
  %macaddress_A.i = getelementptr inbounds %struct.hsr_node, ptr %__next.i.0.__next.i.0.__next.0.__next.0.__next.0.61.i, i32 0, i32 1
  %7 = ptrtoint ptr %macaddress_A to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %macaddress_A, align 4
  %9 = ptrtoint ptr %macaddress_A.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %macaddress_A.i, align 4
  %xor.i.i = xor i32 %10, %8
  %add.ptr.i.i = getelementptr %struct.hsr_node, ptr %node.0120, i32 0, i32 1, i32 4
  %11 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %add.ptr.i.i, align 2
  %add.ptr1.i.i = getelementptr %struct.hsr_node, ptr %__next.i.0.__next.i.0.__next.0.__next.0.__next.0.61.i, i32 0, i32 1, i32 4
  %13 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %add.ptr1.i.i, align 2
  %xor37.i.i = xor i16 %14, %12
  %xor3.i.i = zext i16 %xor37.i.i to i32
  %or.i.i = or i32 %xor.i.i, %xor3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i, label %if.end52.i.for.inc_crit_edge, label %hsr_addr_is_self.exit

if.end52.i.for.inc_crit_edge:                     ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

hsr_addr_is_self.exit:                            ; preds = %if.end52.i
  %macaddress_B.i = getelementptr inbounds %struct.hsr_node, ptr %__next.i.0.__next.i.0.__next.0.__next.0.__next.0.61.i, i32 0, i32 2
  %15 = ptrtoint ptr %macaddress_B.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %macaddress_B.i, align 4
  %xor.i67.i = xor i32 %16, %8
  %add.ptr1.i69.i = getelementptr %struct.hsr_node, ptr %__next.i.0.__next.i.0.__next.0.__next.0.__next.0.61.i, i32 0, i32 2, i32 4
  %17 = ptrtoint ptr %add.ptr1.i69.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %add.ptr1.i69.i, align 2
  %xor37.i70.i = xor i16 %18, %12
  %xor3.i71.i = zext i16 %xor37.i70.i to i32
  %or.i72.i = or i32 %xor.i67.i, %xor3.i71.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i72.i)
  %cmp.i73.i = icmp eq i32 %or.i72.i, 0
  br i1 %cmp.i73.i, label %hsr_addr_is_self.exit.for.inc_crit_edge, label %hsr_addr_is_self.exit.if.end_crit_edge

hsr_addr_is_self.exit.if.end_crit_edge:           ; preds = %hsr_addr_is_self.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

hsr_addr_is_self.exit.for.inc_crit_edge:          ; preds = %hsr_addr_is_self.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end:                                           ; preds = %hsr_addr_is_self.exit.if.end_crit_edge, %if.then19.i, %land.end.i.if.end_crit_edge
  %arrayidx = getelementptr %struct.hsr_node, ptr %node.0120, i32 0, i32 4, i32 1
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx, align 4
  %arrayidx12 = getelementptr %struct.hsr_node, ptr %node.0120, i32 0, i32 4, i32 2
  %21 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx12, align 4
  %add = add i32 %20, 536870911
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %23 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp13 = icmp slt i32 %sub, 0
  br i1 %cmp13, label %if.then14, label %if.end.if.end16_crit_edge

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx15 = getelementptr %struct.hsr_node, ptr %node.0120, i32 0, i32 5, i32 1
  %24 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %arrayidx15, align 1
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.end.if.end16_crit_edge
  %add17 = add i32 %22, 536870911
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %25 = load volatile i32, ptr @jiffies, align 128
  %sub18 = sub i32 %add17, %25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub18)
  %cmp19 = icmp slt i32 %sub18, 0
  br i1 %cmp19, label %if.then20, label %if.end16.if.end23_crit_edge

if.end16.if.end23_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

if.then20:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx22 = getelementptr %struct.hsr_node, ptr %node.0120, i32 0, i32 5, i32 2
  %26 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %arrayidx22, align 2
  br label %if.end23

if.end23:                                         ; preds = %if.then20, %if.end16.if.end23_crit_edge
  %arrayidx25 = getelementptr %struct.hsr_node, ptr %node.0120, i32 0, i32 5, i32 1
  %27 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx25, align 1, !range !41
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not = icmp eq i8 %28, 0
  br i1 %tobool.not, label %lor.lhs.false, label %if.end23.if.then31_crit_edge

if.end23.if.then31_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then31

lor.lhs.false:                                    ; preds = %if.end23
  %arrayidx27 = getelementptr %struct.hsr_node, ptr %node.0120, i32 0, i32 5, i32 2
  %29 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx27, align 2, !range !41
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool28.not = icmp eq i8 %30, 0
  %sub29 = sub i32 %20, %22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub29)
  %cmp30 = icmp slt i32 %sub29, 0
  %or.cond = select i1 %tobool28.not, i1 %cmp30, i1 false
  br i1 %or.cond, label %lor.lhs.false.if.then31_crit_edge, label %lor.lhs.false.if.end32_crit_edge

lor.lhs.false.if.end32_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

lor.lhs.false.if.then31_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then31

if.then31:                                        ; preds = %lor.lhs.false.if.then31_crit_edge, %if.end23.if.then31_crit_edge
  br label %if.end32

if.end32:                                         ; preds = %if.then31, %lor.lhs.false.if.end32_crit_edge
  %timestamp.0 = phi i32 [ %22, %if.then31 ], [ %20, %lor.lhs.false.if.end32_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %31 = load volatile i32, ptr @jiffies, align 128
  %add34.neg = sub i32 -450, %timestamp.0
  %sub35 = add i32 %add34.neg, %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub35)
  %cmp36 = icmp slt i32 %sub35, 0
  br i1 %cmp36, label %if.then37, label %if.end32.if.end44_crit_edge

if.end32.if.end44_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end44

if.then37:                                        ; preds = %if.end32
  %32 = tail call i32 @llvm.read_register.i32(metadata !27) #10
  %and.i.i.i.i.i = and i32 %32, -16384
  %33 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %35, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !42
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i, label %if.then37.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.then37.rcu_read_lock.exit_crit_edge:           ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.then37
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 696, ptr noundef nonnull @.str.6) #10
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.then37.rcu_read_lock.exit_crit_edge
  %36 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx25, align 1, !range !41
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool.not.i98 = icmp eq i8 %37, 0
  br i1 %tobool.not.i98, label %if.end.i, label %rcu_read_lock.exit.get_late_port.exit_crit_edge

rcu_read_lock.exit.get_late_port.exit_crit_edge:  ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_late_port.exit

if.end.i:                                         ; preds = %rcu_read_lock.exit
  %arrayidx2.i = getelementptr %struct.hsr_node, ptr %node.0120, i32 0, i32 5, i32 2
  %38 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx2.i, align 2, !range !41
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool3.not.i = icmp eq i8 %39, 0
  br i1 %tobool3.not.i, label %if.end6.i, label %if.end.i.get_late_port.exit_crit_edge

if.end.i.get_late_port.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_late_port.exit

if.end6.i:                                        ; preds = %if.end.i
  %40 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx, align 4
  %add.i = add i32 %41, 300
  %42 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx12, align 4
  %sub.i = sub i32 %add.i, %43
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %if.end6.i.get_late_port.exit_crit_edge, label %if.end13.i

if.end6.i.get_late_port.exit_crit_edge:           ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_late_port.exit

if.end13.i:                                       ; preds = %if.end6.i
  %add17.i = sub i32 300, %41
  %sub20.i = add i32 %add17.i, %43
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub20.i)
  %cmp21.i = icmp slt i32 %sub20.i, 0
  br i1 %cmp21.i, label %if.end13.i.get_late_port.exit_crit_edge, label %if.end13.i.if.end43_crit_edge

if.end13.i.if.end43_crit_edge:                    ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end43

if.end13.i.get_late_port.exit_crit_edge:          ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_late_port.exit

get_late_port.exit:                               ; preds = %if.end13.i.get_late_port.exit_crit_edge, %if.end6.i.get_late_port.exit_crit_edge, %if.end.i.get_late_port.exit_crit_edge, %rcu_read_lock.exit.get_late_port.exit_crit_edge
  %.sink.i = phi i32 [ 1, %rcu_read_lock.exit.get_late_port.exit_crit_edge ], [ 2, %if.end.i.get_late_port.exit_crit_edge ], [ 1, %if.end6.i.get_late_port.exit_crit_edge ], [ 2, %if.end13.i.get_late_port.exit_crit_edge ]
  %call23.i = tail call ptr @hsr_port_get_hsr(ptr noundef %add.ptr, i32 noundef %.sink.i) #10
  %tobool39.not = icmp eq ptr %call23.i, null
  br i1 %tobool39.not, label %get_late_port.exit.if.end43_crit_edge, label %if.then40

get_late_port.exit.if.end43_crit_edge:            ; preds = %get_late_port.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end43

if.then40:                                        ; preds = %get_late_port.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @hsr_nl_ringerror(ptr noundef %add.ptr, ptr noundef %macaddress_A, ptr noundef nonnull %call23.i) #10
  br label %if.end43

if.end43:                                         ; preds = %if.then40, %get_late_port.exit.if.end43_crit_edge, %if.end13.i.if.end43_crit_edge
  %call.i100 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i100, label %if.end43.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i103

if.end43.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i103:                               ; preds = %if.end43
  %call1.i101 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i101)
  %tobool.not.i102 = icmp eq i32 %call1.i101, 0
  br i1 %tobool.not.i102, label %land.lhs.true.i103.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i105

land.lhs.true.i103.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i103
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i105:                              ; preds = %land.lhs.true.i103
  %.b4.i104 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i104, label %land.lhs.true2.i105.rcu_read_unlock.exit_crit_edge, label %if.then.i106

land.lhs.true2.i105.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i105
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i106:                                     ; preds = %land.lhs.true2.i105
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 724, ptr noundef nonnull @.str.7) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i106, %land.lhs.true2.i105.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i103.rcu_read_unlock.exit_crit_edge, %if.end43.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !43
  %44 = tail call i32 @llvm.read_register.i32(metadata !27) #10
  %and.i.i.i.i.i107 = and i32 %44, -16384
  %45 = inttoptr i32 %and.i.i.i.i.i107 to ptr
  %preempt_count.i.i.i.i108 = getelementptr inbounds %struct.thread_info, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %preempt_count.i.i.i.i108 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %preempt_count.i.i.i.i108, align 4
  %sub.i.i.i = add i32 %47, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i108, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  br label %if.end44

if.end44:                                         ; preds = %rcu_read_unlock.exit, %if.end32.if.end44_crit_edge
  %add46 = add i32 %timestamp.0, 6000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %48 = load volatile i32, ptr @jiffies, align 128
  %sub47 = sub i32 %add46, %48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub47)
  %cmp48 = icmp slt i32 %sub47, 0
  br i1 %cmp48, label %if.then49, label %if.end44.for.inc_crit_edge

if.end44.for.inc_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then49:                                        ; preds = %if.end44
  tail call void @hsr_nl_nodedown(ptr noundef %add.ptr, ptr noundef %macaddress_A) #10
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %node.0120) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.then49.list_del_rcu.exit_crit_edge

if.then49.list_del_rcu.exit_crit_edge:            ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_rcu.exit

if.end.i.i:                                       ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %node.0120, i32 0, i32 1
  %49 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %prev.i.i, align 4
  %51 = ptrtoint ptr %node.0120 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %node.0120, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %50, ptr %prev1.i.i.i, align 4
  %54 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr %52, ptr %50, align 4
  br label %list_del_rcu.exit

list_del_rcu.exit:                                ; preds = %if.end.i.i, %if.then49.list_del_rcu.exit_crit_edge
  %prev.i = getelementptr inbounds %struct.list_head, ptr %node.0120, i32 0, i32 1
  %55 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %tobool53.not = icmp eq ptr %node.0120, null
  br i1 %tobool53.not, label %list_del_rcu.exit.for.inc_crit_edge, label %do.end

list_del_rcu.exit.for.inc_crit_edge:              ; preds = %list_del_rcu.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

do.end:                                           ; preds = %list_del_rcu.exit
  call void @__sanitizer_cov_trace_pc() #12
  %callback_head = getelementptr inbounds %struct.hsr_node, ptr %node.0120, i32 0, i32 10
  tail call void @kvfree_call_rcu(ptr noundef %callback_head, ptr noundef nonnull inttoptr (i32 84 to ptr)) #10
  br label %for.inc

for.inc:                                          ; preds = %do.end, %list_del_rcu.exit.for.inc_crit_edge, %if.end44.for.inc_crit_edge, %hsr_addr_is_self.exit.for.inc_crit_edge, %if.end52.i.for.inc_crit_edge
  %cmp.not = icmp eq ptr %tmp1.0124, %node_db
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %list_lock) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %56 = load volatile i32, ptr @jiffies, align 128
  %add67 = add i32 %56, 300
  %call68 = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add67) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hsr_nl_ringerror(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hsr_nl_nodedown(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @hsr_get_next_node(ptr noundef %hsr, ptr noundef %_pos, ptr nocapture noundef writeonly %addr) local_unnamed_addr #6 align 64 {
entry:
  %__next = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %_pos, null
  br i1 %tobool.not, label %if.then, label %if.end11

if.then:                                          ; preds = %entry
  %node_db = getelementptr inbounds %struct.hsr_priv, ptr %hsr, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__next)
  %0 = ptrtoint ptr %node_db to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %node_db, align 4
  %2 = ptrtoint ptr %__next to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %__next, align 4
  %cmp.not = icmp eq ptr %node_db, %1
  br i1 %cmp.not, label %cond.end.thread, label %cond.end, !prof !37

cond.end.thread:                                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__next)
  br label %cleanup

cond.end:                                         ; preds = %if.then
  %3 = ptrtoint ptr %__next to i32
  call void @__asan_load4_noabort(i32 %3)
  %__next.0.__next.0.__next.0.34 = load volatile ptr, ptr %__next, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__next)
  %tobool9.not = icmp eq ptr %__next.0.__next.0.__next.0.34, null
  br i1 %tobool9.not, label %cond.end.cleanup_crit_edge, label %if.then10

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then10:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  %macaddress_A = getelementptr inbounds %struct.hsr_node, ptr %__next.0.__next.0.__next.0.34, i32 0, i32 1
  %4 = ptrtoint ptr %macaddress_A to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %macaddress_A, align 4
  %6 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %addr, align 4
  %add.ptr.i = getelementptr %struct.hsr_node, ptr %__next.0.__next.0.__next.0.34, i32 0, i32 1, i32 4
  %7 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr i8, ptr %addr, i32 4
  %9 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %add.ptr1.i, align 2
  br label %cleanup

if.end11:                                         ; preds = %entry
  %10 = ptrtoint ptr %_pos to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %_pos, align 4
  %node_db21 = getelementptr inbounds %struct.hsr_priv, ptr %hsr, i32 0, i32 2
  %cmp22.not = icmp eq ptr %11, %node_db21
  br i1 %cmp22.not, label %if.end11.cleanup_crit_edge, label %for.body

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  %macaddress_A23 = getelementptr inbounds %struct.hsr_node, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %macaddress_A23 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %macaddress_A23, align 4
  %14 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %addr, align 4
  %add.ptr.i45 = getelementptr %struct.hsr_node, ptr %11, i32 0, i32 1, i32 4
  %15 = ptrtoint ptr %add.ptr.i45 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %add.ptr.i45, align 2
  %add.ptr1.i46 = getelementptr i8, ptr %addr, i32 4
  %17 = ptrtoint ptr %add.ptr1.i46 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %add.ptr1.i46, align 2
  br label %cleanup

cleanup:                                          ; preds = %for.body, %if.end11.cleanup_crit_edge, %if.then10, %cond.end.cleanup_crit_edge, %cond.end.thread
  %retval.0 = phi ptr [ %11, %for.body ], [ %__next.0.__next.0.__next.0.34, %if.then10 ], [ null, %cond.end.cleanup_crit_edge ], [ null, %if.end11.cleanup_crit_edge ], [ null, %cond.end.thread ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hsr_get_node_data(ptr noundef %hsr, ptr nocapture noundef readonly %addr, ptr nocapture noundef writeonly %addr_b, ptr nocapture noundef writeonly %addr_b_ifindex, ptr nocapture noundef writeonly %if1_age, ptr nocapture noundef writeonly %if1_seq, ptr nocapture noundef writeonly %if2_age, ptr nocapture noundef writeonly %if2_seq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %node_db = getelementptr inbounds %struct.hsr_priv, ptr %hsr, i32 0, i32 2
  %call.i = tail call i32 @rcu_read_lock_any_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %entry.do.end.i_crit_edge

entry.do.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true3.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %.b25.i = load i1, ptr @find_node_by_addr_A.__warned, align 1
  br i1 %.b25.i, label %land.lhs.true3.i.do.end.i_crit_edge, label %if.then.i

land.lhs.true3.i.do.end.i_crit_edge:              ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

if.then.i:                                        ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @find_node_by_addr_A.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 67, ptr noundef nonnull @.str.2) #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %land.lhs.true3.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  %add.ptr1.i.i = getelementptr i8, ptr %addr, i32 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %do.end.i
  %node.0.in.i = phi ptr [ %node_db, %do.end.i ], [ %node.0.i, %for.body.i.for.cond.i_crit_edge ]
  %0 = ptrtoint ptr %node.0.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %node.0.i = load volatile ptr, ptr %node.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %node.0.i, %node_db
  br i1 %cmp.not.i, label %for.cond.i.cleanup_crit_edge, label %for.body.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i
  %macaddress_A.i = getelementptr inbounds %struct.hsr_node, ptr %node.0.i, i32 0, i32 1
  %1 = ptrtoint ptr %macaddress_A.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %macaddress_A.i, align 4
  %3 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %addr, align 4
  %xor.i.i = xor i32 %4, %2
  %add.ptr.i.i = getelementptr %struct.hsr_node, ptr %node.0.i, i32 0, i32 1, i32 4
  %5 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %add.ptr.i.i, align 2
  %7 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %add.ptr1.i.i, align 2
  %xor37.i.i = xor i16 %8, %6
  %xor3.i.i = zext i16 %xor37.i.i to i32
  %or.i.i = or i32 %xor.i.i, %xor3.i.i
  %cmp.i.i = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i, label %find_node_by_addr_A.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i

find_node_by_addr_A.exit:                         ; preds = %for.body.i
  %tobool.not = icmp eq ptr %node.0.i, null
  br i1 %tobool.not, label %find_node_by_addr_A.exit.cleanup_crit_edge, label %if.end

find_node_by_addr_A.exit.cleanup_crit_edge:       ; preds = %find_node_by_addr_A.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %find_node_by_addr_A.exit
  %macaddress_B = getelementptr inbounds %struct.hsr_node, ptr %node.0.i, i32 0, i32 2
  %9 = ptrtoint ptr %macaddress_B to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %macaddress_B, align 4
  %11 = ptrtoint ptr %addr_b to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %addr_b, align 4
  %add.ptr.i = getelementptr %struct.hsr_node, ptr %node.0.i, i32 0, i32 2, i32 4
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr i8, ptr %addr_b, i32 4
  %14 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %add.ptr1.i, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %15 = load volatile i32, ptr @jiffies, align 128
  %arrayidx = getelementptr %struct.hsr_node, ptr %node.0.i, i32 0, i32 4, i32 1
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx, align 4
  %sub = sub i32 %15, %17
  %arrayidx1 = getelementptr %struct.hsr_node, ptr %node.0.i, i32 0, i32 5, i32 1
  %18 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx1, align 1, !range !41
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool2.not = icmp ne i8 %19, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 214748365, i32 %sub)
  %cmp = icmp ugt i32 %sub, 214748365
  %or.cond = select i1 %tobool2.not, i1 true, i1 %cmp
  br i1 %or.cond, label %if.end.if.end9_crit_edge, label %if.else6

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.else6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call7 = tail call i32 @jiffies_to_msecs(i32 noundef %sub) #10
  br label %if.end9

if.end9:                                          ; preds = %if.else6, %if.end.if.end9_crit_edge
  %.sink = phi i32 [ %call7, %if.else6 ], [ 2147483647, %if.end.if.end9_crit_edge ]
  %20 = ptrtoint ptr %if1_age to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %.sink, ptr %if1_age, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %21 = load volatile i32, ptr @jiffies, align 128
  %arrayidx11 = getelementptr %struct.hsr_node, ptr %node.0.i, i32 0, i32 4, i32 2
  %22 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx11, align 4
  %sub12 = sub i32 %21, %23
  %arrayidx14 = getelementptr %struct.hsr_node, ptr %node.0.i, i32 0, i32 5, i32 2
  %24 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx14, align 2, !range !41
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool15.not = icmp ne i8 %25, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 214748365, i32 %sub12)
  %cmp19 = icmp ugt i32 %sub12, 214748365
  %or.cond60 = select i1 %tobool15.not, i1 true, i1 %cmp19
  br i1 %or.cond60, label %if.end9.if.end24_crit_edge, label %if.else21

if.end9.if.end24_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

if.else21:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  %call22 = tail call i32 @jiffies_to_msecs(i32 noundef %sub12) #10
  br label %if.end24

if.end24:                                         ; preds = %if.else21, %if.end9.if.end24_crit_edge
  %.sink59 = phi i32 [ %call22, %if.else21 ], [ 2147483647, %if.end9.if.end24_crit_edge ]
  %26 = ptrtoint ptr %if2_age to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %.sink59, ptr %if2_age, align 4
  %arrayidx25 = getelementptr %struct.hsr_node, ptr %node.0.i, i32 0, i32 9, i32 2
  %27 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %arrayidx25, align 2
  %29 = ptrtoint ptr %if1_seq to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %28, ptr %if1_seq, align 2
  %arrayidx27 = getelementptr %struct.hsr_node, ptr %node.0.i, i32 0, i32 9, i32 1
  %30 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %arrayidx27, align 2
  %32 = ptrtoint ptr %if2_seq to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %31, ptr %if2_seq, align 2
  %addr_B_port = getelementptr inbounds %struct.hsr_node, ptr %node.0.i, i32 0, i32 3
  %33 = ptrtoint ptr %addr_B_port to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %addr_B_port, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp28.not = icmp eq i32 %34, 0
  br i1 %cmp28.not, label %if.end24.if.end33_crit_edge, label %if.then29

if.end24.if.end33_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33

if.then29:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  %call31 = tail call ptr @hsr_port_get_hsr(ptr noundef %hsr, i32 noundef %34) #10
  %dev = getelementptr inbounds %struct.hsr_port, ptr %call31, i32 0, i32 1
  %35 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev, align 4
  %ifindex = getelementptr inbounds %struct.net_device, ptr %36, i32 0, i32 17
  %37 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %ifindex, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.then29, %if.end24.if.end33_crit_edge
  %storemerge = phi i32 [ %38, %if.then29 ], [ -1, %if.end24.if.end33_crit_edge ]
  %39 = ptrtoint ptr %addr_b_ifindex to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %storemerge, ptr %addr_b_ifindex, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %find_node_by_addr_A.exit.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end33 ], [ -2, %find_node_by_addr_A.exit.cleanup_crit_edge ], [ -2, %for.cond.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hsr_port_get_hsr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind readonly }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !9, !10, !11, !13, !14, !16, !18, !20, !22, !23, !24, !26}
!llvm.named.register.sp = !{!27}
!llvm.module.flags = !{!28, !29, !30, !31, !32, !33, !34, !35}
!llvm.ident = !{!36}

!0 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!1 = !{!"../net/hsr/hsr_framereg.c", i32 48, i32 3}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = distinct !{null, !5, !"__warned", i1 false, i1 false}
!5 = !{!"../net/hsr/hsr_framereg.c", i32 221, i32 2}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = distinct !{null, !8, !"__already_done", i1 false, i1 false}
!8 = !{!"../net/hsr/hsr_framereg.c", i32 389, i32 3}
!9 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @__func__.hsr_addr_subst_source, !8, !"<string literal>", i1 false, i1 false}
!11 = distinct !{null, !12, !"__already_done", i1 false, i1 false}
!12 = !{!"../net/hsr/hsr_framereg.c", i32 411, i32 3}
!13 = !{ptr @__func__.hsr_addr_subst_dest, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../net/hsr/hsr_framereg.c", i32 422, i32 25}
!16 = distinct !{null, !17, !"__warned", i1 false, i1 false}
!17 = !{!"../net/hsr/hsr_framereg.c", i32 178, i32 2}
!18 = distinct !{null, !19, !"__warned", i1 false, i1 false}
!19 = !{!"../net/hsr/hsr_framereg.c", i32 67, i32 2}
!20 = distinct !{null, !21, !"__warned", i1 false, i1 false}
!21 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!22 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!24 = distinct !{null, !25, !"__warned", i1 false, i1 false}
!25 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!26 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!27 = !{!"sp"}
!28 = !{i32 1, !"wchar_size", i32 2}
!29 = !{i32 1, !"min_enum_size", i32 4}
!30 = !{i32 8, !"branch-target-enforcement", i32 0}
!31 = !{i32 8, !"sign-return-address", i32 0}
!32 = !{i32 8, !"sign-return-address-all", i32 0}
!33 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!34 = !{i32 7, !"uwtable", i32 1}
!35 = !{i32 7, !"frame-pointer", i32 2}
!36 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!37 = !{!"branch_weights", i32 1, i32 2000}
!38 = !{!"branch_weights", i32 2000, i32 1}
!39 = !{i64 2149701548}
!40 = !{i64 2149687620}
!41 = !{i8 0, i8 2}
!42 = !{i64 2149662228}
!43 = !{i64 2149662494}
