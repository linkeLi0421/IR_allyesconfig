; ModuleID = '/llk/IR_all_yes/net/sunrpc/xprtmultipath.c_pt.bc'
source_filename = "../net/sunrpc/xprtmultipath.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.rpc_xprt_iter_ops = type { ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.rpc_xprt_switch = type { %struct.spinlock, %struct.kref, i32, i32, i32, i32, %struct.atomic_t, %struct.list_head, ptr, ptr, ptr, %struct.callback_head }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.rpc_xprt = type { %struct.kref, ptr, i32, ptr, %struct.__kernel_sockaddr_storage, i32, i32, i32, i32, i32, %struct.rpc_wait_queue, %struct.rpc_wait_queue, %struct.rpc_wait_queue, %struct.rpc_wait_queue, %struct.list_head, i32, i32, i32, i32, i8, %struct.atomic_t, i32, %struct.list_head, i32, i32, i32, %struct.work_struct, %struct.timer_list, i32, i32, i32, i32, %struct.atomic_t, %struct.spinlock, %struct.spinlock, %struct.spinlock, i32, ptr, %struct.list_head, %struct.atomic_t, ptr, ptr, i32, i32, %struct.atomic_t, %struct.spinlock, %struct.list_head, %struct.rb_root, %struct.anon.144, ptr, ptr, [6 x ptr], ptr, %struct.callback_head, ptr, ptr, i8 }
%struct.__kernel_sockaddr_storage = type { %union.anon.142 }
%union.anon.142 = type { ptr, [124 x i8] }
%struct.rpc_wait_queue = type { %struct.spinlock, [4 x %struct.list_head], i8, i8, i8, i16, %struct.rpc_timer, ptr }
%struct.rpc_timer = type { %struct.list_head, i32, %struct.delayed_work }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.rb_root = type { ptr }
%struct.anon.144 = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon.103 }
%union.anon.103 = type { [4 x i32] }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.rpc_xprt_iter = type { ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@rpc_xprtswitch_ids = internal global { %struct.ida, [44 x i8] } { %struct.ida { %struct.xarray { %struct.spinlock { %union.anon { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.5, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, i32 67108869, ptr null } }, [44 x i8] zeroinitializer }, align 32
@xprt_switch_alloc.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&xps->xps_lock\00", [17 x i8] zeroinitializer }, align 32
@rpc_xprt_iter_singular = internal constant { %struct.rpc_xprt_iter_ops, [20 x i8] } { %struct.rpc_xprt_iter_ops { ptr @xprt_iter_no_rewind, ptr @xprt_iter_first_entry, ptr @xprt_iter_first_entry }, [20 x i8] zeroinitializer }, align 32
@rpc_xprt_iter_roundrobin = internal constant { %struct.rpc_xprt_iter_ops, [20 x i8] } { %struct.rpc_xprt_iter_ops { ptr @xprt_iter_default_rewind, ptr @xprt_iter_current_entry, ptr @xprt_iter_next_entry_roundrobin }, [20 x i8] zeroinitializer }, align 32
@rpc_xprt_switch_has_addr.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"net/sunrpc/xprtmultipath.c\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@rpc_xprt_switch_has_addr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.1, i32 304, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016RPC:   addr %s already in xprt switch\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rpc_xprt_switch_has_addr\00", [39 x i8] zeroinitializer }, align 32
@rpc_xprt_switch_has_addr._entry_ptr = internal global ptr @rpc_xprt_switch_has_addr._entry, section ".printk_index", align 4
@rpc_xprt_iter_listall = internal constant { %struct.rpc_xprt_iter_ops, [20 x i8] } { %struct.rpc_xprt_iter_ops { ptr @xprt_iter_default_rewind, ptr @xprt_iter_current_entry, ptr @xprt_iter_next_entry_all }, [20 x i8] zeroinitializer }, align 32
@xprt_iter_xprt.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.5 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"rpc_xprtswitch_ids.xa_lock\00", [37 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@xprt_iter_ops.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.6 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.9 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@xprt_iter_first_entry.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@xprt_switch_find_first_entry.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@xprt_iter_current_entry.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@xprt_switch_find_current_entry.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@xprt_iter_next_entry_multiple.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@xprt_switch_find_next_entry.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.10 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.11 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@___asan_gen_.12 = private unnamed_addr constant [19 x i8] c"rpc_xprtswitch_ids\00", align 1
@___asan_gen_.15 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 132, i32 3 }
@___asan_gen_.21 = private unnamed_addr constant [23 x i8] c"rpc_xprt_iter_singular\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 556, i32 32 }
@___asan_gen_.24 = private unnamed_addr constant [25 x i8] c"rpc_xprt_iter_roundrobin\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 564, i32 32 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 301, i32 2 }
@___asan_gen_.33 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 303, i32 4 }
@___asan_gen_.42 = private unnamed_addr constant [22 x i8] c"rpc_xprt_iter_listall\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 572, i32 32 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 93, i32 8 }
@___asan_gen_.49 = private constant [30 x i8] c"../net/sunrpc/xprtmultipath.c\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 218, i32 9 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 695, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.58 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 723, i32 2 }
@llvm.compiler.used = appending global [17 x ptr] [ptr @rpc_xprt_switch_has_addr._entry, ptr @rpc_xprt_switch_has_addr._entry_ptr, ptr @rpc_xprtswitch_ids, ptr @xprt_switch_alloc.__key, ptr @.str, ptr @rpc_xprt_iter_singular, ptr @rpc_xprt_iter_roundrobin, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @rpc_xprt_iter_listall, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpc_xprtswitch_ids to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xprt_switch_alloc.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpc_xprt_iter_singular to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpc_xprt_iter_roundrobin to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpc_xprt_switch_has_addr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpc_xprt_iter_listall to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rpc_xprt_switch_add_xprt(ptr noundef %xps, ptr noundef %xprt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %xprt, null
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  tail call void @_raw_spin_lock(ptr noundef %xps) #10
  %xps_net = getelementptr inbounds %struct.rpc_xprt_switch, ptr %xps, i32 0, i32 8
  %0 = ptrtoint ptr %xps_net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %xps_net, align 4
  %xprt_net = getelementptr inbounds %struct.rpc_xprt, ptr %xprt, i32 0, i32 49
  %2 = ptrtoint ptr %xprt_net to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %xprt_net, align 8
  %cmp1 = icmp eq ptr %1, %3
  %cmp3 = icmp eq ptr %1, null
  %or.cond = or i1 %cmp3, %cmp1
  br i1 %or.cond, label %if.then4, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.then4:                                         ; preds = %if.end
  %call.i = tail call ptr @xprt_get(ptr noundef nonnull %xprt) #10
  %cmp.i = icmp eq ptr %call.i, null
  br i1 %cmp.i, label %if.then4.if.end5_crit_edge, label %if.end.i, !prof !57

if.then4.if.end5_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.end.i:                                         ; preds = %if.then4
  %xprt_switch.i = getelementptr inbounds %struct.rpc_xprt, ptr %xprt, i32 0, i32 22
  %xps_xprt_list.i = getelementptr inbounds %struct.rpc_xprt_switch, ptr %xps, i32 0, i32 7
  %prev.i.i = getelementptr inbounds %struct.rpc_xprt_switch, ptr %xps, i32 0, i32 7, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %xprt_switch.i, ptr noundef %5, ptr noundef %xps_xprt_list.i) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.list_add_tail_rcu.exit.i_crit_edge

if.end.i.list_add_tail_rcu.exit.i_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail_rcu.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %xprt_switch.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %xps_xprt_list.i, ptr %xprt_switch.i, align 4
  %prev2.i.i.i = getelementptr inbounds %struct.rpc_xprt, ptr %xprt, i32 0, i32 22, i32 1
  %7 = ptrtoint ptr %prev2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %5, ptr %prev2.i.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !58
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %xprt_switch.i, ptr %5, align 4
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %xprt_switch.i, ptr %prev.i.i, align 4
  br label %list_add_tail_rcu.exit.i

list_add_tail_rcu.exit.i:                         ; preds = %if.end.i.i.i, %if.end.i.list_add_tail_rcu.exit.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !59
  %xps_nxprts.i = getelementptr inbounds %struct.rpc_xprt_switch, ptr %xps, i32 0, i32 3
  %10 = ptrtoint ptr %xps_nxprts.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %xps_nxprts.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp4.i = icmp eq i32 %11, 0
  br i1 %cmp4.i, label %if.then5.i, label %list_add_tail_rcu.exit.i.if.end6.i_crit_edge

list_add_tail_rcu.exit.i.if.end6.i_crit_edge:     ; preds = %list_add_tail_rcu.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6.i

if.then5.i:                                       ; preds = %list_add_tail_rcu.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %xprt_net to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %xprt_net, align 8
  %14 = ptrtoint ptr %xps_net to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %xps_net, align 4
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then5.i, %list_add_tail_rcu.exit.i.if.end6.i_crit_edge
  %inc.i = add i32 %11, 1
  %15 = ptrtoint ptr %xps_nxprts.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %inc.i, ptr %xps_nxprts.i, align 4
  %xps_nactive.i = getelementptr inbounds %struct.rpc_xprt_switch, ptr %xps, i32 0, i32 4
  %16 = ptrtoint ptr %xps_nactive.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %xps_nactive.i, align 4
  %inc8.i = add i32 %17, 1
  store i32 %inc8.i, ptr %xps_nactive.i, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.end6.i, %if.then4.if.end5_crit_edge, %if.end.if.end5_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %xps) #10
  tail call void @rpc_sysfs_xprt_setup(ptr noundef %xps, ptr noundef nonnull %xprt, i32 noundef 3264) #10
  br label %return

return:                                           ; preds = %if.end5, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_sysfs_xprt_setup(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rpc_xprt_switch_remove_xprt(ptr noundef %xps, ptr noundef %xprt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef %xps) #10
  %cmp.i = icmp eq ptr %xprt, null
  br i1 %cmp.i, label %entry.xprt_switch_remove_xprt_locked.exit_crit_edge, label %if.end.i, !prof !57

entry.xprt_switch_remove_xprt_locked.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %xprt_switch_remove_xprt_locked.exit

if.end.i:                                         ; preds = %entry
  %state.i = getelementptr inbounds %struct.rpc_xprt, ptr %xprt, i32 0, i32 18
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state.i, align 4
  %2 = and i32 %1, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool2.not.i = icmp eq i32 %2, 0
  br i1 %tobool2.not.i, label %if.then3.i, label %if.end.i.if.end4.i_crit_edge

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %xps_nactive.i = getelementptr inbounds %struct.rpc_xprt_switch, ptr %xps, i32 0, i32 4
  %3 = ptrtoint ptr %xps_nactive.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %xps_nactive.i, align 4
  %dec.i = add i32 %4, -1
  store i32 %dec.i, ptr %xps_nactive.i, align 4
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then3.i, %if.end.i.if.end4.i_crit_edge
  %xps_nxprts.i = getelementptr inbounds %struct.rpc_xprt_switch, ptr %xps, i32 0, i32 3
  %5 = ptrtoint ptr %xps_nxprts.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %xps_nxprts.i, align 4
  %dec5.i = add i32 %6, -1
  store i32 %dec5.i, ptr %xps_nxprts.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec5.i)
  %cmp7.i = icmp eq i32 %dec5.i, 0
  br i1 %cmp7.i, label %if.then8.i, label %if.end4.i.do.end.i_crit_edge

if.end4.i.do.end.i_crit_edge:                     ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

if.then8.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  %xps_net.i = getelementptr inbounds %struct.rpc_xprt_switch, ptr %xps, i32 0, i32 8
  %7 = ptrtoint ptr %xps_net.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %xps_net.i, align 4
  br label %do.end.i

do.end.i:                                         ; preds = %if.then8.i, %if.end4.i.do.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !60
  %xprt_switch.i = getelementptr inbounds %struct.rpc_xprt, ptr %xprt, i32 0, i32 22
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %xprt_switch.i) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %do.end.i.list_del_rcu.exit.i_crit_edge

do.end.i.list_del_rcu.exit.i_crit_edge:           ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_rcu.exit.i

if.end.i.i.i:                                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i = getelementptr inbounds %struct.rpc_xprt, ptr %xprt, i32 0, i32 22, i32 1
  %8 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i.i.i, align 4
  %10 = ptrtoint ptr %xprt_switch.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %xprt_switch.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev1.i.i.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %11, ptr %9, align 4
  br label %list_del_rcu.exit.i

list_del_rcu.exit.i:                              ; preds = %if.end.i.i.i, %do.end.i.list_del_rcu.exit.i_crit_edge
  %prev.i.i = getelementptr inbounds %struct.rpc_xprt, ptr %xprt, i32 0, i32 22, i32 1
  %14 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  br label %xprt_switch_remove_xprt_locked.exit

xprt_switch_remove_xprt_locked.exit:              ; preds = %list_del_rcu.exit.i, %entry.xprt_switch_remove_xprt_locked.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %xps) #10
  tail call void @xprt_put(ptr noundef %xprt) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xprt_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xprt_multipath_cleanup_ids() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @ida_destroy(ptr noundef nonnull @rpc_xprtswitch_ids) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @xprt_switch_alloc(ptr noundef %xprt, i32 noundef %gfp_flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %and.i.i = and i32 %gfp_flags, 4194321
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp.i.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp.i.i, label %entry.kmalloc.exit_crit_edge, label %if.end.i.i, !prof !61

entry.kmalloc.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %kmalloc.exit

if.end.i.i:                                       ; preds = %entry
  %and2.i.i = and i32 %gfp_flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool3.not.i.i = icmp eq i32 %and2.i.i, 0
  br i1 %tobool3.not.i.i, label %if.end5.i.i, label %if.end.i.i.kmalloc.exit_crit_edge

if.end.i.i.kmalloc.exit_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kmalloc.exit

if.end5.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %and6.i.i = and i32 %gfp_flags, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i)
  %tobool7.not.i.i = icmp eq i32 %and6.i.i, 0
  %..i.i = select i1 %tobool7.not.i.i, i32 1, i32 2
  br label %kmalloc.exit

kmalloc.exit:                                     ; preds = %if.end5.i.i, %if.end.i.i.kmalloc.exit_crit_edge, %entry.kmalloc.exit_crit_edge
  %retval.0.i.i = phi i32 [ 0, %entry.kmalloc.exit_crit_edge ], [ 3, %if.end.i.i.kmalloc.exit_crit_edge ], [ %..i.i, %if.end5.i.i ]
  %arrayidx6.i = getelementptr [4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %retval.0.i.i, i32 7
  %0 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx6.i, align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef %gfp_flags, i32 noundef 96) #13
  %cmp.not = icmp eq ptr %call7.i, null
  br i1 %cmp.not, label %kmalloc.exit.if.end_crit_edge, label %do.body

kmalloc.exit.if.end_crit_edge:                    ; preds = %kmalloc.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.body:                                          ; preds = %kmalloc.exit
  tail call void @__raw_spin_lock_init(ptr noundef nonnull %call7.i, ptr noundef nonnull @.str, ptr noundef nonnull @xprt_switch_alloc.__key, i16 noundef signext 3) #10
  %xps_kref = getelementptr inbounds %struct.rpc_xprt_switch, ptr %call7.i, i32 0, i32 1
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %xps_kref, i32 noundef 4) #10
  %2 = ptrtoint ptr %xps_kref to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile i32 1, ptr %xps_kref, align 4
  %call.i = tail call i32 @ida_alloc_range(ptr noundef nonnull @rpc_xprtswitch_ids, i32 noundef 0, i32 noundef -1, i32 noundef %gfp_flags) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.body.xprt_switch_alloc_id.exit_crit_edge, label %if.end.i

do.body.xprt_switch_alloc_id.exit_crit_edge:      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %xprt_switch_alloc_id.exit

if.end.i:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %xps_id.i = getelementptr inbounds %struct.rpc_xprt_switch, ptr %call7.i, i32 0, i32 2
  %3 = ptrtoint ptr %xps_id.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %call.i, ptr %xps_id.i, align 8
  br label %xprt_switch_alloc_id.exit

xprt_switch_alloc_id.exit:                        ; preds = %if.end.i, %do.body.xprt_switch_alloc_id.exit_crit_edge
  %xps_nactive = getelementptr inbounds %struct.rpc_xprt_switch, ptr %call7.i, i32 0, i32 4
  %4 = ptrtoint ptr %xps_nactive to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %xps_nactive, align 8
  %xps_nxprts = getelementptr inbounds %struct.rpc_xprt_switch, ptr %call7.i, i32 0, i32 3
  %5 = ptrtoint ptr %xps_nxprts to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %xps_nxprts, align 4
  %xps_queuelen = getelementptr inbounds %struct.rpc_xprt_switch, ptr %call7.i, i32 0, i32 6
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %xps_queuelen, i32 noundef 4) #10
  %6 = ptrtoint ptr %xps_queuelen to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile i32 0, ptr %xps_queuelen, align 8
  %xps_net = getelementptr inbounds %struct.rpc_xprt_switch, ptr %call7.i, i32 0, i32 8
  %7 = ptrtoint ptr %xps_net to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %xps_net, align 4
  %xps_xprt_list = getelementptr inbounds %struct.rpc_xprt_switch, ptr %call7.i, i32 0, i32 7
  %8 = ptrtoint ptr %xps_xprt_list to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %xps_xprt_list, ptr %xps_xprt_list, align 4
  %prev.i = getelementptr inbounds %struct.rpc_xprt_switch, ptr %call7.i, i32 0, i32 7, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %xps_xprt_list, ptr %prev.i, align 8
  %xps_iter_ops = getelementptr inbounds %struct.rpc_xprt_switch, ptr %call7.i, i32 0, i32 9
  %10 = ptrtoint ptr %xps_iter_ops to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @rpc_xprt_iter_singular, ptr %xps_iter_ops, align 8
  tail call void @rpc_sysfs_xprt_switch_setup(ptr noundef nonnull %call7.i, ptr noundef %xprt, i32 noundef %gfp_flags) #10
  %call.i22 = tail call ptr @xprt_get(ptr noundef %xprt) #10
  %cmp.i23 = icmp eq ptr %call.i22, null
  br i1 %cmp.i23, label %xprt_switch_alloc_id.exit.xprt_switch_add_xprt_locked.exit_crit_edge, label %if.end.i24, !prof !57

xprt_switch_alloc_id.exit.xprt_switch_add_xprt_locked.exit_crit_edge: ; preds = %xprt_switch_alloc_id.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %xprt_switch_add_xprt_locked.exit

if.end.i24:                                       ; preds = %xprt_switch_alloc_id.exit
  %xprt_switch.i = getelementptr inbounds %struct.rpc_xprt, ptr %xprt, i32 0, i32 22
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev.i, align 8
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %xprt_switch.i, ptr noundef %12, ptr noundef %xps_xprt_list) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i24.list_add_tail_rcu.exit.i_crit_edge

if.end.i24.list_add_tail_rcu.exit.i_crit_edge:    ; preds = %if.end.i24
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail_rcu.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i24
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %xprt_switch.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %xps_xprt_list, ptr %xprt_switch.i, align 4
  %prev2.i.i.i = getelementptr inbounds %struct.rpc_xprt, ptr %xprt, i32 0, i32 22, i32 1
  %14 = ptrtoint ptr %prev2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %12, ptr %prev2.i.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !58
  %15 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %xprt_switch.i, ptr %12, align 4
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %xprt_switch.i, ptr %prev.i, align 8
  br label %list_add_tail_rcu.exit.i

list_add_tail_rcu.exit.i:                         ; preds = %if.end.i.i.i, %if.end.i24.list_add_tail_rcu.exit.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !59
  %17 = ptrtoint ptr %xps_nxprts to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %xps_nxprts, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp4.i = icmp eq i32 %18, 0
  br i1 %cmp4.i, label %if.then5.i, label %list_add_tail_rcu.exit.i.if.end6.i_crit_edge

list_add_tail_rcu.exit.i.if.end6.i_crit_edge:     ; preds = %list_add_tail_rcu.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6.i

if.then5.i:                                       ; preds = %list_add_tail_rcu.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %xprt_net.i = getelementptr inbounds %struct.rpc_xprt, ptr %xprt, i32 0, i32 49
  %19 = ptrtoint ptr %xprt_net.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %xprt_net.i, align 8
  %21 = ptrtoint ptr %xps_net to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %20, ptr %xps_net, align 4
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then5.i, %list_add_tail_rcu.exit.i.if.end6.i_crit_edge
  %inc.i = add i32 %18, 1
  %22 = ptrtoint ptr %xps_nxprts to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %inc.i, ptr %xps_nxprts, align 4
  %23 = ptrtoint ptr %xps_nactive to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %xps_nactive, align 8
  %inc8.i = add i32 %24, 1
  store i32 %inc8.i, ptr %xps_nactive, align 8
  br label %xprt_switch_add_xprt_locked.exit

xprt_switch_add_xprt_locked.exit:                 ; preds = %if.end6.i, %xprt_switch_alloc_id.exit.xprt_switch_add_xprt_locked.exit_crit_edge
  %xps_nunique_destaddr_xprts = getelementptr inbounds %struct.rpc_xprt_switch, ptr %call7.i, i32 0, i32 5
  %25 = ptrtoint ptr %xps_nunique_destaddr_xprts to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1, ptr %xps_nunique_destaddr_xprts, align 4
  tail call void @rpc_sysfs_xprt_setup(ptr noundef nonnull %call7.i, ptr noundef %xprt, i32 noundef %gfp_flags) #10
  br label %if.end

if.end:                                           ; preds = %xprt_switch_add_xprt_locked.exit, %kmalloc.exit.if.end_crit_edge
  ret ptr %call7.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_sysfs_xprt_switch_setup(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @xprt_switch_get(ptr noundef %xps) local_unnamed_addr #0 align 64 {
entry:
  %old.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp.not = icmp eq ptr %xps, null
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %xps_kref = getelementptr inbounds %struct.rpc_xprt_switch, ptr %xps, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i) #10
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %xps_kref, i32 noundef 4) #10
  %0 = ptrtoint ptr %xps_kref to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %xps_kref, align 4
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, %land.lhs.true
  %2 = phi i32 [ %1, %land.lhs.true ], [ %asmresult3.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge ]
  %3 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %old.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i.i.i.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i.i.i.i, label %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %do.cond.i.i.i.i

do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4.i.i.i.i

do.cond.i.i.i.i:                                  ; preds = %do.body.i.i.i.i
  %add.i.i.i.i = add i32 %2, 1
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %xps_kref, i32 noundef 4) #10
  %call.i3.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i, i32 noundef 4) #10
  %4 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %old.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %xps_kref, i32 1, i32 3, i32 1) #10
  br label %do.body.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i:                            ; preds = %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i
  %6 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %xps_kref, ptr %xps_kref, i32 %5, i32 %add.i.i.i.i, ptr elementtype(i32) %xps_kref) #10, !srcloc !62
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %6, 0
  %tobool.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i:     ; preds = %do.body.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i = extractvalue { i32, i32 } %6, 1
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i, %5
  br i1 %cmp.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, !prof !61

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4.i.i.i.i

if.end4.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge
  %7 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %old.i.i.i.i, align 4
  %add5.i.i.i.i = add i32 %8, 1
  %9 = or i32 %add5.i.i.i.i, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %.not.i.i.i.i = icmp sgt i32 %9, -1
  br i1 %.not.i.i.i.i, label %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge, label %if.then10.i.i.i.i, !prof !61

if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge: ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kref_get_unless_zero.exit

if.then10.i.i.i.i:                                ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef %xps_kref, i32 noundef 0) #10
  %10 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pr = load i32, ptr %old.i.i.i.i, align 4
  br label %kref_get_unless_zero.exit

kref_get_unless_zero.exit:                        ; preds = %if.then10.i.i.i.i, %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge
  %11 = phi i32 [ %8, %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge ], [ %.pr, %if.then10.i.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool12.i.i.i.i.not = icmp eq i32 %11, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i) #10
  br i1 %tobool12.i.i.i.i.not, label %kref_get_unless_zero.exit.if.end_crit_edge, label %kref_get_unless_zero.exit.return_crit_edge

kref_get_unless_zero.exit.return_crit_edge:       ; preds = %kref_get_unless_zero.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

kref_get_unless_zero.exit.if.end_crit_edge:       ; preds = %kref_get_unless_zero.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %kref_get_unless_zero.exit.if.end_crit_edge, %entry.if.end_crit_edge
  br label %return

return:                                           ; preds = %if.end, %kref_get_unless_zero.exit.return_crit_edge
  %retval.0 = phi ptr [ null, %if.end ], [ %xps, %kref_get_unless_zero.exit.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xprt_switch_put(ptr noundef %xps) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp.not = icmp eq ptr %xps, null
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  %xps_kref = getelementptr inbounds %struct.rpc_xprt_switch, ptr %xps, i32 0, i32 1
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %xps_kref, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !63
  tail call void @llvm.prefetch.p0(ptr %xps_kref, i32 1, i32 3, i32 1) #10
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %xps_kref, ptr %xps_kref, i32 1, ptr elementtype(i32) %xps_kref) #10, !srcloc !64
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.if.end_crit_edge, label %if.then10.i.i.i.i, !prof !61

if.end5.i.i.i.i.if.end_crit_edge:                 ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %xps_kref, i32 noundef 3) #10
  br label %if.end

if.then.i:                                        ; preds = %if.then
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !65
  tail call void @_raw_spin_lock(ptr noundef nonnull %xps) #10
  %xps_xprt_list.i.i.i = getelementptr %struct.rpc_xprt_switch, ptr %xps, i32 0, i32 7
  %1 = ptrtoint ptr %xps_xprt_list.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %xps_xprt_list.i.i.i, align 4
  %cmp.i.not13.i.i.i = icmp eq ptr %2, %xps_xprt_list.i.i.i
  br i1 %cmp.i.not13.i.i.i, label %if.then.i.xprt_switch_free_entries.exit.i.i_crit_edge, label %while.body.lr.ph.i.i.i

if.then.i.xprt_switch_free_entries.exit.i.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %xprt_switch_free_entries.exit.i.i

while.body.lr.ph.i.i.i:                           ; preds = %if.then.i
  %xps_nactive.i.i.i.i = getelementptr %struct.rpc_xprt_switch, ptr %xps, i32 0, i32 4
  %xps_nxprts.i.i.i.i = getelementptr %struct.rpc_xprt_switch, ptr %xps, i32 0, i32 3
  %xps_net.i.i.i.i = getelementptr %struct.rpc_xprt_switch, ptr %xps, i32 0, i32 8
  br label %while.body.i.i.i

while.body.i.i.i:                                 ; preds = %xprt_switch_remove_xprt_locked.exit.i.i.i.while.body.i.i.i_crit_edge, %while.body.lr.ph.i.i.i
  %3 = phi ptr [ %2, %while.body.lr.ph.i.i.i ], [ %20, %xprt_switch_remove_xprt_locked.exit.i.i.i.while.body.i.i.i_crit_edge ]
  %add.ptr.i.i.i = getelementptr i8, ptr %3, i32 -1000
  %cmp.i12.i.i.i = icmp eq ptr %add.ptr.i.i.i, null
  br i1 %cmp.i12.i.i.i, label %while.body.i.i.i.xprt_switch_remove_xprt_locked.exit.i.i.i_crit_edge, label %if.end.i.i.i.i, !prof !57

while.body.i.i.i.xprt_switch_remove_xprt_locked.exit.i.i.i_crit_edge: ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %xprt_switch_remove_xprt_locked.exit.i.i.i

if.end.i.i.i.i:                                   ; preds = %while.body.i.i.i
  %state.i.i.i.i = getelementptr i8, ptr %3, i32 -16
  %4 = ptrtoint ptr %state.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state.i.i.i.i, align 4
  %6 = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool2.not.i.i.i.i = icmp eq i32 %6, 0
  br i1 %tobool2.not.i.i.i.i, label %if.then3.i.i.i.i, label %if.end.i.i.i.i.if.end4.i.i.i.i_crit_edge

if.end.i.i.i.i.if.end4.i.i.i.i_crit_edge:         ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4.i.i.i.i

if.then3.i.i.i.i:                                 ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %xps_nactive.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %xps_nactive.i.i.i.i, align 4
  %dec.i.i.i.i = add i32 %8, -1
  store i32 %dec.i.i.i.i, ptr %xps_nactive.i.i.i.i, align 4
  br label %if.end4.i.i.i.i

if.end4.i.i.i.i:                                  ; preds = %if.then3.i.i.i.i, %if.end.i.i.i.i.if.end4.i.i.i.i_crit_edge
  %9 = ptrtoint ptr %xps_nxprts.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %xps_nxprts.i.i.i.i, align 4
  %dec5.i.i.i.i = add i32 %10, -1
  store i32 %dec5.i.i.i.i, ptr %xps_nxprts.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec5.i.i.i.i)
  %cmp7.i.i.i.i = icmp eq i32 %dec5.i.i.i.i, 0
  br i1 %cmp7.i.i.i.i, label %if.then8.i.i.i.i, label %if.end4.i.i.i.i.do.end.i.i.i2.i_crit_edge

if.end4.i.i.i.i.do.end.i.i.i2.i_crit_edge:        ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i.i.i2.i

if.then8.i.i.i.i:                                 ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %xps_net.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %xps_net.i.i.i.i, align 4
  br label %do.end.i.i.i2.i

do.end.i.i.i2.i:                                  ; preds = %if.then8.i.i.i.i, %if.end4.i.i.i.i.do.end.i.i.i2.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !60
  %call.i.i.i.i.i1.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %3) #10
  br i1 %call.i.i.i.i.i1.i, label %if.end.i.i.i.i.i.i, label %do.end.i.i.i2.i.list_del_rcu.exit.i.i.i.i_crit_edge

do.end.i.i.i2.i.list_del_rcu.exit.i.i.i.i_crit_edge: ; preds = %do.end.i.i.i2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_rcu.exit.i.i.i.i

if.end.i.i.i.i.i.i:                               ; preds = %do.end.i.i.i2.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i.i.i.i = getelementptr i8, ptr %3, i32 4
  %12 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i.i.i.i.i.i, align 4
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %3, align 4
  %prev1.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev1.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev1.i.i.i.i.i.i.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %15, ptr %13, align 4
  br label %list_del_rcu.exit.i.i.i.i

list_del_rcu.exit.i.i.i.i:                        ; preds = %if.end.i.i.i.i.i.i, %do.end.i.i.i2.i.list_del_rcu.exit.i.i.i.i_crit_edge
  %prev.i.i.i.i.i = getelementptr i8, ptr %3, i32 4
  %18 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i.i.i, align 4
  br label %xprt_switch_remove_xprt_locked.exit.i.i.i

xprt_switch_remove_xprt_locked.exit.i.i.i:        ; preds = %list_del_rcu.exit.i.i.i.i, %while.body.i.i.i.xprt_switch_remove_xprt_locked.exit.i.i.i_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull %xps) #10
  tail call void @xprt_put(ptr noundef %add.ptr.i.i.i) #10
  tail call void @_raw_spin_lock(ptr noundef nonnull %xps) #10
  %19 = ptrtoint ptr %xps_xprt_list.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %xps_xprt_list.i.i.i, align 4
  %cmp.i.not.i.i.i = icmp eq ptr %20, %xps_xprt_list.i.i.i
  br i1 %cmp.i.not.i.i.i, label %xprt_switch_remove_xprt_locked.exit.i.i.i.xprt_switch_free_entries.exit.i.i_crit_edge, label %xprt_switch_remove_xprt_locked.exit.i.i.i.while.body.i.i.i_crit_edge

xprt_switch_remove_xprt_locked.exit.i.i.i.while.body.i.i.i_crit_edge: ; preds = %xprt_switch_remove_xprt_locked.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i.i.i

xprt_switch_remove_xprt_locked.exit.i.i.i.xprt_switch_free_entries.exit.i.i_crit_edge: ; preds = %xprt_switch_remove_xprt_locked.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %xprt_switch_free_entries.exit.i.i

xprt_switch_free_entries.exit.i.i:                ; preds = %xprt_switch_remove_xprt_locked.exit.i.i.i.xprt_switch_free_entries.exit.i.i_crit_edge, %if.then.i.xprt_switch_free_entries.exit.i.i_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull %xps) #10
  tail call void @rpc_sysfs_xprt_switch_destroy(ptr noundef nonnull %xps) #10
  %xps_id.i.i.i = getelementptr %struct.rpc_xprt_switch, ptr %xps, i32 0, i32 2
  %21 = ptrtoint ptr %xps_id.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %xps_id.i.i.i, align 4
  tail call void @ida_free(ptr noundef nonnull @rpc_xprtswitch_ids, i32 noundef %22) #10
  %xps_rcu.i.i = getelementptr %struct.rpc_xprt_switch, ptr %xps, i32 0, i32 11
  tail call void @kvfree_call_rcu(ptr noundef %xps_rcu.i.i, ptr noundef nonnull inttoptr (i32 88 to ptr)) #10
  br label %if.end

if.end:                                           ; preds = %xprt_switch_free_entries.exit.i.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rpc_xprt_switch_set_roundrobin(ptr noundef %xps) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %xps_iter_ops = getelementptr inbounds %struct.rpc_xprt_switch, ptr %xps, i32 0, i32 9
  %0 = ptrtoint ptr %xps_iter_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %xps_iter_ops, align 4
  %cmp.not = icmp eq ptr %1, @rpc_xprt_iter_roundrobin
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.body4

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %xps_iter_ops to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr @rpc_xprt_iter_roundrobin, ptr %xps_iter_ops, align 4
  br label %if.end

if.end:                                           ; preds = %do.body4, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @rpc_xprt_switch_has_addr(ptr noundef %xps, ptr noundef %sap) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %xps, null
  %cmp1 = icmp eq ptr %sap, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %xps_xprt_list = getelementptr inbounds %struct.rpc_xprt_switch, ptr %xps, i32 0, i32 7
  %call = tail call i32 @rcu_read_lock_any_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end.do.end_crit_edge

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true:                                    ; preds = %if.end
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true4

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b37 = load i1, ptr @rpc_xprt_switch_has_addr.__warned, align 1
  br i1 %.b37, label %land.lhs.true4.do.end_crit_edge, label %if.then6

land.lhs.true4.do.end_crit_edge:                  ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then6:                                         ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rpc_xprt_switch_has_addr.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 301, ptr noundef nonnull @.str.2) #10
  br label %do.end

do.end:                                           ; preds = %if.then6, %land.lhs.true4.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %if.end.do.end_crit_edge
  %0 = ptrtoint ptr %xps_xprt_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn39 = load volatile ptr, ptr %xps_xprt_list, align 4
  %cmp12.not40 = icmp eq ptr %.pn39, %xps_xprt_list
  br i1 %cmp12.not40, label %do.end.cleanup_crit_edge, label %for.body.lr.ph

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.lr.ph:                                   ; preds = %do.end
  %sin6_addr.i.i.i = getelementptr inbounds %struct.sockaddr_in6, ptr %sap, i32 0, i32 3
  %arrayidx4.i.i.i.i = getelementptr %struct.sockaddr_in6, ptr %sap, i32 0, i32 3, i32 0, i32 0, i32 1
  %arrayidx9.i.i.i.i = getelementptr %struct.sockaddr_in6, ptr %sap, i32 0, i32 3, i32 0, i32 0, i32 2
  %arrayidx15.i.i.i.i = getelementptr %struct.sockaddr_in6, ptr %sap, i32 0, i32 3, i32 0, i32 0, i32 3
  %sin6_scope_id.i.i.i = getelementptr inbounds %struct.sockaddr_in6, ptr %sap, i32 0, i32 4
  %sin_addr.i.i.i = getelementptr inbounds %struct.sockaddr_in, ptr %sap, i32 0, i32 2
  %sin6_port.i.i = getelementptr inbounds %struct.sockaddr_in6, ptr %sap, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.cond.backedge.for.body_crit_edge, %for.body.lr.ph
  %.pn41 = phi ptr [ %.pn39, %for.body.lr.ph ], [ %.pn, %for.cond.backedge.for.body_crit_edge ]
  %addr = getelementptr i8, ptr %.pn41, i32 -984
  %1 = ptrtoint ptr %sap to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %sap, align 2
  %3 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %addr, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %2, i16 %4)
  %cmp.i.i = icmp eq i16 %2, %4
  br i1 %cmp.i.i, label %if.then.i.i, label %for.body.for.cond.backedge_crit_edge

for.body.for.cond.backedge_crit_edge:             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.backedge

if.then.i.i:                                      ; preds = %for.body
  %5 = zext i16 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i16 %2, label %if.then.i.i.for.cond.backedge_crit_edge [
    i16 2, label %if.then.i.i.rpc_cmp_addr.exit.i_crit_edge
    i16 10, label %sw.bb6.i.i
  ]

if.then.i.i.rpc_cmp_addr.exit.i_crit_edge:        ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rpc_cmp_addr.exit.i

if.then.i.i.for.cond.backedge_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.backedge

sw.bb6.i.i:                                       ; preds = %if.then.i.i
  %sin6_addr1.i.i.i = getelementptr i8, ptr %.pn41, i32 -976
  %6 = ptrtoint ptr %sin6_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sin6_addr.i.i.i, align 4
  %8 = ptrtoint ptr %sin6_addr1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sin6_addr1.i.i.i, align 4
  %xor.i.i.i.i = xor i32 %9, %7
  %10 = ptrtoint ptr %arrayidx4.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx4.i.i.i.i, align 4
  %arrayidx6.i.i.i.i = getelementptr i8, ptr %.pn41, i32 -972
  %12 = ptrtoint ptr %arrayidx6.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx6.i.i.i.i, align 4
  %xor7.i.i.i.i = xor i32 %13, %11
  %or.i.i.i.i = or i32 %xor7.i.i.i.i, %xor.i.i.i.i
  %14 = ptrtoint ptr %arrayidx9.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx9.i.i.i.i, align 4
  %arrayidx11.i.i.i.i = getelementptr i8, ptr %.pn41, i32 -968
  %16 = ptrtoint ptr %arrayidx11.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx11.i.i.i.i, align 4
  %xor12.i.i.i.i = xor i32 %17, %15
  %or13.i.i.i.i = or i32 %or.i.i.i.i, %xor12.i.i.i.i
  %18 = ptrtoint ptr %arrayidx15.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx15.i.i.i.i, align 4
  %arrayidx17.i.i.i.i = getelementptr i8, ptr %.pn41, i32 -964
  %20 = ptrtoint ptr %arrayidx17.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx17.i.i.i.i, align 4
  %xor18.i.i.i.i = xor i32 %21, %19
  %or19.i.i.i.i = or i32 %or13.i.i.i.i, %xor18.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or19.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %or19.i.i.i.i, 0
  br i1 %cmp.i.i.i.i, label %if.else.i.i.i, label %sw.bb6.i.i.for.cond.backedge_crit_edge

sw.bb6.i.i.for.cond.backedge_crit_edge:           ; preds = %sw.bb6.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.backedge

if.else.i.i.i:                                    ; preds = %sw.bb6.i.i
  %call.i.i.i.i = tail call i32 @__ipv6_addr_type(ptr noundef %sin6_addr.i.i.i) #10
  %and.i.i.i = and i32 %call.i.i.i.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.else.i.i.i.if.end.i_crit_edge, label %if.else.i.i.i.rpc_cmp_addr.exit.i_crit_edge

if.else.i.i.i.rpc_cmp_addr.exit.i_crit_edge:      ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rpc_cmp_addr.exit.i

if.else.i.i.i.if.end.i_crit_edge:                 ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

rpc_cmp_addr.exit.i:                              ; preds = %if.else.i.i.i.rpc_cmp_addr.exit.i_crit_edge, %if.then.i.i.rpc_cmp_addr.exit.i_crit_edge
  %.sink = phi i32 [ -980, %if.then.i.i.rpc_cmp_addr.exit.i_crit_edge ], [ -960, %if.else.i.i.i.rpc_cmp_addr.exit.i_crit_edge ]
  %.sink.in.i.i = phi ptr [ %sin_addr.i.i.i, %if.then.i.i.rpc_cmp_addr.exit.i_crit_edge ], [ %sin6_scope_id.i.i.i, %if.else.i.i.i.rpc_cmp_addr.exit.i_crit_edge ]
  %sin6_scope_id5.i.i.i = getelementptr i8, ptr %.pn41, i32 %.sink
  %22 = ptrtoint ptr %.sink.in.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %.sink.i.i = load i32, ptr %.sink.in.i.i, align 4
  %23 = ptrtoint ptr %sin6_scope_id5.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %sin6_scope_id5.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.sink.i.i, i32 %24)
  %cmp.i13.i.i = icmp eq i32 %.sink.i.i, %24
  br i1 %cmp.i13.i.i, label %rpc_cmp_addr.exit.i.if.end.i_crit_edge, label %rpc_cmp_addr.exit.i.for.cond.backedge_crit_edge

rpc_cmp_addr.exit.i.for.cond.backedge_crit_edge:  ; preds = %rpc_cmp_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.backedge

rpc_cmp_addr.exit.i.if.end.i_crit_edge:           ; preds = %rpc_cmp_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.end.i:                                         ; preds = %rpc_cmp_addr.exit.i.if.end.i_crit_edge, %if.else.i.i.i.if.end.i_crit_edge
  %25 = ptrtoint ptr %sap to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %sap, align 2
  %27 = zext i16 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.10)
  switch i16 %26, label %if.end.i.rpc_get_port.exit.i_crit_edge [
    i16 2, label %if.end.i.return.sink.split.i8.i_crit_edge
    i16 10, label %if.end.i.return.sink.split.i8.i_crit_edge47
  ]

if.end.i.return.sink.split.i8.i_crit_edge47:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %return.sink.split.i8.i

if.end.i.return.sink.split.i8.i_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %return.sink.split.i8.i

if.end.i.rpc_get_port.exit.i_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rpc_get_port.exit.i

return.sink.split.i8.i:                           ; preds = %if.end.i.return.sink.split.i8.i_crit_edge, %if.end.i.return.sink.split.i8.i_crit_edge47
  %28 = ptrtoint ptr %sin6_port.i.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %sin6_port.i.i, align 2
  br label %rpc_get_port.exit.i

rpc_get_port.exit.i:                              ; preds = %return.sink.split.i8.i, %if.end.i.rpc_get_port.exit.i_crit_edge
  %retval.0.i9.i = phi i16 [ 0, %if.end.i.rpc_get_port.exit.i_crit_edge ], [ %29, %return.sink.split.i8.i ]
  %30 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %addr, align 2
  %32 = zext i16 %31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.11)
  switch i16 %31, label %rpc_get_port.exit.i.rpc_get_port.exit17.i_crit_edge [
    i16 2, label %rpc_get_port.exit.i.return.sink.split.i15.i_crit_edge
    i16 10, label %rpc_get_port.exit.i.return.sink.split.i15.i_crit_edge48
  ]

rpc_get_port.exit.i.return.sink.split.i15.i_crit_edge48: ; preds = %rpc_get_port.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %return.sink.split.i15.i

rpc_get_port.exit.i.return.sink.split.i15.i_crit_edge: ; preds = %rpc_get_port.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %return.sink.split.i15.i

rpc_get_port.exit.i.rpc_get_port.exit17.i_crit_edge: ; preds = %rpc_get_port.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rpc_get_port.exit17.i

return.sink.split.i15.i:                          ; preds = %rpc_get_port.exit.i.return.sink.split.i15.i_crit_edge, %rpc_get_port.exit.i.return.sink.split.i15.i_crit_edge48
  %sin6_port.sink.i14.i = getelementptr i8, ptr %.pn41, i32 -982
  %33 = ptrtoint ptr %sin6_port.sink.i14.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %sin6_port.sink.i14.i, align 2
  br label %rpc_get_port.exit17.i

rpc_get_port.exit17.i:                            ; preds = %return.sink.split.i15.i, %rpc_get_port.exit.i.rpc_get_port.exit17.i_crit_edge
  %retval.0.i16.i = phi i16 [ 0, %rpc_get_port.exit.i.rpc_get_port.exit17.i_crit_edge ], [ %34, %return.sink.split.i15.i ]
  call void @__sanitizer_cov_trace_cmp2(i16 %retval.0.i9.i, i16 %retval.0.i16.i)
  %cmp.i = icmp eq i16 %retval.0.i9.i, %retval.0.i16.i
  br i1 %cmp.i, label %do.end17, label %rpc_get_port.exit17.i.for.cond.backedge_crit_edge

rpc_get_port.exit17.i.for.cond.backedge_crit_edge: ; preds = %rpc_get_port.exit17.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.backedge

for.cond.backedge:                                ; preds = %rpc_get_port.exit17.i.for.cond.backedge_crit_edge, %rpc_cmp_addr.exit.i.for.cond.backedge_crit_edge, %sw.bb6.i.i.for.cond.backedge_crit_edge, %if.then.i.i.for.cond.backedge_crit_edge, %for.body.for.cond.backedge_crit_edge
  %35 = ptrtoint ptr %.pn41 to i32
  call void @__asan_load4_noabort(i32 %35)
  %.pn = load volatile ptr, ptr %.pn41, align 4
  %cmp12.not = icmp eq ptr %.pn, %xps_xprt_list
  br i1 %cmp12.not, label %for.cond.backedge.cleanup_crit_edge, label %for.cond.backedge.for.body_crit_edge

for.cond.backedge.for.body_crit_edge:             ; preds = %for.cond.backedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.cond.backedge.cleanup_crit_edge:              ; preds = %for.cond.backedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end17:                                         ; preds = %rpc_get_port.exit17.i
  call void @__sanitizer_cov_trace_pc() #12
  %address_strings = getelementptr i8, ptr %.pn41, i32 432
  %36 = ptrtoint ptr %address_strings to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %address_strings, align 8
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %37) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end17, %for.cond.backedge.cleanup_crit_edge, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %do.end17 ], [ false, %entry.cleanup_crit_edge ], [ false, %do.end.cleanup_crit_edge ], [ false, %for.cond.backedge.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xprt_iter_init(ptr noundef %xpi, ptr noundef %xps) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @xprt_switch_get(ptr noundef %xps) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !66
  %0 = ptrtoint ptr %xpi to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %call.i, ptr %xpi, align 4
  %xpi_cursor.i = getelementptr inbounds %struct.rpc_xprt_iter, ptr %xpi, i32 0, i32 1
  %1 = ptrtoint ptr %xpi_cursor.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %xpi_cursor.i, align 4
  %xpi_ops.i = getelementptr inbounds %struct.rpc_xprt_iter, ptr %xpi, i32 0, i32 2
  %2 = ptrtoint ptr %xpi_ops.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %xpi_ops.i, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xprt_iter_init_listall(ptr noundef %xpi, ptr noundef %xps) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @xprt_switch_get(ptr noundef %xps) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !66
  %0 = ptrtoint ptr %xpi to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %call.i, ptr %xpi, align 4
  %xpi_cursor.i = getelementptr inbounds %struct.rpc_xprt_iter, ptr %xpi, i32 0, i32 1
  %1 = ptrtoint ptr %xpi_cursor.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %xpi_cursor.i, align 4
  %xpi_ops.i = getelementptr inbounds %struct.rpc_xprt_iter, ptr %xpi, i32 0, i32 2
  %2 = ptrtoint ptr %xpi_ops.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @rpc_xprt_iter_listall, ptr %xpi_ops.i, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @xprt_iter_xchg_switch(ptr noundef %xpi, ptr noundef %newswitch) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %xpi, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !67
  %0 = ptrtoint ptr %newswitch to i32
  tail call void @llvm.prefetch.p0(ptr %xpi, i32 1, i32 3, i32 1) #10
  %1 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 %0, ptr %xpi) #10, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !69
  %cmp.not = icmp eq ptr %newswitch, null
  br i1 %cmp.not, label %entry.do.end17_crit_edge, label %if.then

entry.do.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end17

if.then:                                          ; preds = %entry
  %2 = tail call i32 @llvm.read_register.i32(metadata !47) #10
  %and.i.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !70
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i.i, label %if.then.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.then.rcu_read_lock.exit.i_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.then
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 696, ptr noundef nonnull @.str.8) #10
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.then.rcu_read_lock.exit.i_crit_edge
  %xpi_ops.i.i = getelementptr inbounds %struct.rpc_xprt_iter, ptr %xpi, i32 0, i32 2
  %6 = ptrtoint ptr %xpi_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %xpi_ops.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %7, null
  br i1 %cmp.not.i.i, label %if.end.i.i, label %rcu_read_lock.exit.i.xprt_iter_ops.exit.i_crit_edge

rcu_read_lock.exit.i.xprt_iter_ops.exit.i_crit_edge: ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %xprt_iter_ops.exit.i

if.end.i.i:                                       ; preds = %rcu_read_lock.exit.i
  %8 = ptrtoint ptr %xpi to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %xpi, align 4
  %call.i2.i = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2.i)
  %tobool.not.i3.i = icmp eq i32 %call.i2.i, 0
  br i1 %tobool.not.i3.i, label %land.lhs.true.i4.i, label %if.end.i.i.do.end10.i.i_crit_edge

if.end.i.i.do.end10.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end10.i.i

land.lhs.true.i4.i:                               ; preds = %if.end.i.i
  %call3.i.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool4.not.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool4.not.i.i, label %land.lhs.true.i4.i.do.end10.i.i_crit_edge, label %land.lhs.true5.i.i

land.lhs.true.i4.i.do.end10.i.i_crit_edge:        ; preds = %land.lhs.true.i4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end10.i.i

land.lhs.true5.i.i:                               ; preds = %land.lhs.true.i4.i
  %.b14.i.i = load i1, ptr @xprt_iter_ops.__warned, align 1
  br i1 %.b14.i.i, label %land.lhs.true5.i.i.do.end10.i.i_crit_edge, label %if.then7.i.i

land.lhs.true5.i.i.do.end10.i.i_crit_edge:        ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end10.i.i

if.then7.i.i:                                     ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @xprt_iter_ops.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 218, ptr noundef nonnull @.str.6) #10
  br label %do.end10.i.i

do.end10.i.i:                                     ; preds = %if.then7.i.i, %land.lhs.true5.i.i.do.end10.i.i_crit_edge, %land.lhs.true.i4.i.do.end10.i.i_crit_edge, %if.end.i.i.do.end10.i.i_crit_edge
  %xps_iter_ops.i.i = getelementptr inbounds %struct.rpc_xprt_switch, ptr %9, i32 0, i32 9
  %10 = ptrtoint ptr %xps_iter_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %xps_iter_ops.i.i, align 4
  br label %xprt_iter_ops.exit.i

xprt_iter_ops.exit.i:                             ; preds = %do.end10.i.i, %rcu_read_lock.exit.i.xprt_iter_ops.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %11, %do.end10.i.i ], [ %7, %rcu_read_lock.exit.i.xprt_iter_ops.exit.i_crit_edge ]
  %12 = ptrtoint ptr %retval.0.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %retval.0.i.i, align 4
  tail call void %13(ptr noundef %xpi) #10
  %call.i5.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i5.i, label %xprt_iter_ops.exit.i.xprt_iter_rewind.exit_crit_edge, label %land.lhs.true.i8.i

xprt_iter_ops.exit.i.xprt_iter_rewind.exit_crit_edge: ; preds = %xprt_iter_ops.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %xprt_iter_rewind.exit

land.lhs.true.i8.i:                               ; preds = %xprt_iter_ops.exit.i
  %call1.i6.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i6.i)
  %tobool.not.i7.i = icmp eq i32 %call1.i6.i, 0
  br i1 %tobool.not.i7.i, label %land.lhs.true.i8.i.xprt_iter_rewind.exit_crit_edge, label %land.lhs.true2.i10.i

land.lhs.true.i8.i.xprt_iter_rewind.exit_crit_edge: ; preds = %land.lhs.true.i8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %xprt_iter_rewind.exit

land.lhs.true2.i10.i:                             ; preds = %land.lhs.true.i8.i
  %.b4.i9.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i9.i, label %land.lhs.true2.i10.i.xprt_iter_rewind.exit_crit_edge, label %if.then.i11.i

land.lhs.true2.i10.i.xprt_iter_rewind.exit_crit_edge: ; preds = %land.lhs.true2.i10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %xprt_iter_rewind.exit

if.then.i11.i:                                    ; preds = %land.lhs.true2.i10.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 724, ptr noundef nonnull @.str.9) #10
  br label %xprt_iter_rewind.exit

xprt_iter_rewind.exit:                            ; preds = %if.then.i11.i, %land.lhs.true2.i10.i.xprt_iter_rewind.exit_crit_edge, %land.lhs.true.i8.i.xprt_iter_rewind.exit_crit_edge, %xprt_iter_ops.exit.i.xprt_iter_rewind.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !71
  %14 = tail call i32 @llvm.read_register.i32(metadata !47) #10
  %and.i.i.i.i.i12.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i.i.i12.i to ptr
  %preempt_count.i.i.i.i13.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %preempt_count.i.i.i.i13.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %preempt_count.i.i.i.i13.i, align 4
  %sub.i.i.i.i = add i32 %17, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i13.i, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  br label %do.end17

do.end17:                                         ; preds = %xprt_iter_rewind.exit, %entry.do.end17_crit_edge
  %asmresult.i = extractvalue { i32, i32 } %1, 0
  %18 = inttoptr i32 %asmresult.i to ptr
  ret ptr %18
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xprt_iter_destroy(ptr noundef %xpi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %xpi, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !67
  tail call void @llvm.prefetch.p0(ptr %xpi, i32 1, i32 3, i32 1) #10
  %0 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %xpi) #10, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !69
  %asmresult.i.i = extractvalue { i32, i32 } %0, 0
  %1 = inttoptr i32 %asmresult.i.i to ptr
  tail call void @xprt_switch_put(ptr noundef %1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @xprt_iter_xprt(ptr noundef %xpi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.rhs, label %entry.if.end29_crit_edge

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

land.rhs:                                         ; preds = %entry
  %.b42 = load i1, ptr @xprt_iter_xprt.__already_done, align 1
  br i1 %.b42, label %land.rhs.if.end29_crit_edge, label %if.then, !prof !61

land.rhs.if.end29_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @xprt_iter_xprt.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 501, i32 noundef 9, ptr noundef null) #10
  br label %if.end29

if.end29:                                         ; preds = %if.then, %land.rhs.if.end29_crit_edge, %entry.if.end29_crit_edge
  %xpi_ops.i = getelementptr inbounds %struct.rpc_xprt_iter, ptr %xpi, i32 0, i32 2
  %0 = ptrtoint ptr %xpi_ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %xpi_ops.i, align 4
  %cmp.not.i = icmp eq ptr %1, null
  br i1 %cmp.not.i, label %if.end.i, label %if.end29.xprt_iter_ops.exit_crit_edge

if.end29.xprt_iter_ops.exit_crit_edge:            ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %xprt_iter_ops.exit

if.end.i:                                         ; preds = %if.end29
  %2 = ptrtoint ptr %xpi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %xpi, align 4
  %call.i = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.end.i.do.end10.i_crit_edge

if.end.i.do.end10.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end10.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %call3.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i.do.end10.i_crit_edge, label %land.lhs.true5.i

land.lhs.true.i.do.end10.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end10.i

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %.b14.i = load i1, ptr @xprt_iter_ops.__warned, align 1
  br i1 %.b14.i, label %land.lhs.true5.i.do.end10.i_crit_edge, label %if.then7.i

land.lhs.true5.i.do.end10.i_crit_edge:            ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end10.i

if.then7.i:                                       ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @xprt_iter_ops.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 218, ptr noundef nonnull @.str.6) #10
  br label %do.end10.i

do.end10.i:                                       ; preds = %if.then7.i, %land.lhs.true5.i.do.end10.i_crit_edge, %land.lhs.true.i.do.end10.i_crit_edge, %if.end.i.do.end10.i_crit_edge
  %xps_iter_ops.i = getelementptr inbounds %struct.rpc_xprt_switch, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %xps_iter_ops.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %xps_iter_ops.i, align 4
  br label %xprt_iter_ops.exit

xprt_iter_ops.exit:                               ; preds = %do.end10.i, %if.end29.xprt_iter_ops.exit_crit_edge
  %retval.0.i = phi ptr [ %5, %do.end10.i ], [ %1, %if.end29.xprt_iter_ops.exit_crit_edge ]
  %xpi_xprt = getelementptr inbounds %struct.rpc_xprt_iter_ops, ptr %retval.0.i, i32 0, i32 1
  %6 = ptrtoint ptr %xpi_xprt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %xpi_xprt, align 4
  %call38 = tail call ptr %7(ptr noundef %xpi) #10
  ret ptr %call38
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @xprt_iter_get_xprt(ptr noundef %xpi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !47) #10
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !70
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 696, ptr noundef nonnull @.str.8) #10
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %xpi_ops.i = getelementptr inbounds %struct.rpc_xprt_iter, ptr %xpi, i32 0, i32 2
  %4 = ptrtoint ptr %xpi_ops.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %xpi_ops.i, align 4
  %cmp.not.i = icmp eq ptr %5, null
  br i1 %cmp.not.i, label %if.end.i, label %rcu_read_lock.exit.xprt_iter_ops.exit_crit_edge

rcu_read_lock.exit.xprt_iter_ops.exit_crit_edge:  ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %xprt_iter_ops.exit

if.end.i:                                         ; preds = %rcu_read_lock.exit
  %6 = ptrtoint ptr %xpi to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %xpi, align 4
  %call.i3 = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3)
  %tobool.not.i4 = icmp eq i32 %call.i3, 0
  br i1 %tobool.not.i4, label %land.lhs.true.i5, label %if.end.i.do.end10.i_crit_edge

if.end.i.do.end10.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end10.i

land.lhs.true.i5:                                 ; preds = %if.end.i
  %call3.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i5.do.end10.i_crit_edge, label %land.lhs.true5.i

land.lhs.true.i5.do.end10.i_crit_edge:            ; preds = %land.lhs.true.i5
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end10.i

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i5
  %.b14.i = load i1, ptr @xprt_iter_ops.__warned, align 1
  br i1 %.b14.i, label %land.lhs.true5.i.do.end10.i_crit_edge, label %if.then7.i

land.lhs.true5.i.do.end10.i_crit_edge:            ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end10.i

if.then7.i:                                       ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @xprt_iter_ops.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 218, ptr noundef nonnull @.str.6) #10
  br label %do.end10.i

do.end10.i:                                       ; preds = %if.then7.i, %land.lhs.true5.i.do.end10.i_crit_edge, %land.lhs.true.i5.do.end10.i_crit_edge, %if.end.i.do.end10.i_crit_edge
  %xps_iter_ops.i = getelementptr inbounds %struct.rpc_xprt_switch, ptr %7, i32 0, i32 9
  %8 = ptrtoint ptr %xps_iter_ops.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %xps_iter_ops.i, align 4
  br label %xprt_iter_ops.exit

xprt_iter_ops.exit:                               ; preds = %do.end10.i, %rcu_read_lock.exit.xprt_iter_ops.exit_crit_edge
  %retval.0.i = phi ptr [ %9, %do.end10.i ], [ %5, %rcu_read_lock.exit.xprt_iter_ops.exit_crit_edge ]
  %xpi_xprt = getelementptr inbounds %struct.rpc_xprt_iter_ops, ptr %retval.0.i, i32 0, i32 1
  %10 = ptrtoint ptr %xpi_xprt to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %xpi_xprt, align 4
  br label %do.body.i

do.body.i:                                        ; preds = %if.end.i8.do.body.i_crit_edge, %xprt_iter_ops.exit
  %call.i6 = tail call ptr %11(ptr noundef %xpi) #10
  %cmp.i = icmp eq ptr %call.i6, null
  br i1 %cmp.i, label %do.body.i.xprt_iter_get_helper.exit_crit_edge, label %if.end.i8

do.body.i.xprt_iter_get_helper.exit_crit_edge:    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %xprt_iter_get_helper.exit

if.end.i8:                                        ; preds = %do.body.i
  %call1.i7 = tail call ptr @xprt_get(ptr noundef nonnull %call.i6) #10
  %cmp2.i = icmp eq ptr %call1.i7, null
  br i1 %cmp2.i, label %if.end.i8.do.body.i_crit_edge, label %if.end.i8.xprt_iter_get_helper.exit_crit_edge

if.end.i8.xprt_iter_get_helper.exit_crit_edge:    ; preds = %if.end.i8
  call void @__sanitizer_cov_trace_pc() #12
  br label %xprt_iter_get_helper.exit

if.end.i8.do.body.i_crit_edge:                    ; preds = %if.end.i8
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

xprt_iter_get_helper.exit:                        ; preds = %if.end.i8.xprt_iter_get_helper.exit_crit_edge, %do.body.i.xprt_iter_get_helper.exit_crit_edge
  %ret.0.i = phi ptr [ null, %do.body.i.xprt_iter_get_helper.exit_crit_edge ], [ %call1.i7, %if.end.i8.xprt_iter_get_helper.exit_crit_edge ]
  %call.i9 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i9, label %xprt_iter_get_helper.exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i12

xprt_iter_get_helper.exit.rcu_read_unlock.exit_crit_edge: ; preds = %xprt_iter_get_helper.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i12:                                ; preds = %xprt_iter_get_helper.exit
  %call1.i10 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i10)
  %tobool.not.i11 = icmp eq i32 %call1.i10, 0
  br i1 %tobool.not.i11, label %land.lhs.true.i12.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i14

land.lhs.true.i12.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i12
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i14:                               ; preds = %land.lhs.true.i12
  %.b4.i13 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i13, label %land.lhs.true2.i14.rcu_read_unlock.exit_crit_edge, label %if.then.i15

land.lhs.true2.i14.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i14
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i15:                                      ; preds = %land.lhs.true2.i14
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 724, ptr noundef nonnull @.str.9) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i15, %land.lhs.true2.i14.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i12.rcu_read_unlock.exit_crit_edge, %xprt_iter_get_helper.exit.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !71
  %12 = tail call i32 @llvm.read_register.i32(metadata !47) #10
  %and.i.i.i.i.i16 = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i.i16 to ptr
  %preempt_count.i.i.i.i17 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %preempt_count.i.i.i.i17 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %preempt_count.i.i.i.i17, align 4
  %sub.i.i.i = add i32 %15, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i17, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  ret ptr %ret.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @xprt_iter_get_next(ptr noundef %xpi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !47) #10
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !70
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 696, ptr noundef nonnull @.str.8) #10
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %xpi_ops.i = getelementptr inbounds %struct.rpc_xprt_iter, ptr %xpi, i32 0, i32 2
  %4 = ptrtoint ptr %xpi_ops.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %xpi_ops.i, align 4
  %cmp.not.i = icmp eq ptr %5, null
  br i1 %cmp.not.i, label %if.end.i, label %rcu_read_lock.exit.xprt_iter_ops.exit_crit_edge

rcu_read_lock.exit.xprt_iter_ops.exit_crit_edge:  ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %xprt_iter_ops.exit

if.end.i:                                         ; preds = %rcu_read_lock.exit
  %6 = ptrtoint ptr %xpi to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %xpi, align 4
  %call.i3 = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3)
  %tobool.not.i4 = icmp eq i32 %call.i3, 0
  br i1 %tobool.not.i4, label %land.lhs.true.i5, label %if.end.i.do.end10.i_crit_edge

if.end.i.do.end10.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end10.i

land.lhs.true.i5:                                 ; preds = %if.end.i
  %call3.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i5.do.end10.i_crit_edge, label %land.lhs.true5.i

land.lhs.true.i5.do.end10.i_crit_edge:            ; preds = %land.lhs.true.i5
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end10.i

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i5
  %.b14.i = load i1, ptr @xprt_iter_ops.__warned, align 1
  br i1 %.b14.i, label %land.lhs.true5.i.do.end10.i_crit_edge, label %if.then7.i

land.lhs.true5.i.do.end10.i_crit_edge:            ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end10.i

if.then7.i:                                       ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @xprt_iter_ops.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 218, ptr noundef nonnull @.str.6) #10
  br label %do.end10.i

do.end10.i:                                       ; preds = %if.then7.i, %land.lhs.true5.i.do.end10.i_crit_edge, %land.lhs.true.i5.do.end10.i_crit_edge, %if.end.i.do.end10.i_crit_edge
  %xps_iter_ops.i = getelementptr inbounds %struct.rpc_xprt_switch, ptr %7, i32 0, i32 9
  %8 = ptrtoint ptr %xps_iter_ops.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %xps_iter_ops.i, align 4
  br label %xprt_iter_ops.exit

xprt_iter_ops.exit:                               ; preds = %do.end10.i, %rcu_read_lock.exit.xprt_iter_ops.exit_crit_edge
  %retval.0.i = phi ptr [ %9, %do.end10.i ], [ %5, %rcu_read_lock.exit.xprt_iter_ops.exit_crit_edge ]
  %xpi_next = getelementptr inbounds %struct.rpc_xprt_iter_ops, ptr %retval.0.i, i32 0, i32 2
  %10 = ptrtoint ptr %xpi_next to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %xpi_next, align 4
  br label %do.body.i

do.body.i:                                        ; preds = %if.end.i8.do.body.i_crit_edge, %xprt_iter_ops.exit
  %call.i6 = tail call ptr %11(ptr noundef %xpi) #10
  %cmp.i = icmp eq ptr %call.i6, null
  br i1 %cmp.i, label %do.body.i.xprt_iter_get_helper.exit_crit_edge, label %if.end.i8

do.body.i.xprt_iter_get_helper.exit_crit_edge:    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %xprt_iter_get_helper.exit

if.end.i8:                                        ; preds = %do.body.i
  %call1.i7 = tail call ptr @xprt_get(ptr noundef nonnull %call.i6) #10
  %cmp2.i = icmp eq ptr %call1.i7, null
  br i1 %cmp2.i, label %if.end.i8.do.body.i_crit_edge, label %if.end.i8.xprt_iter_get_helper.exit_crit_edge

if.end.i8.xprt_iter_get_helper.exit_crit_edge:    ; preds = %if.end.i8
  call void @__sanitizer_cov_trace_pc() #12
  br label %xprt_iter_get_helper.exit

if.end.i8.do.body.i_crit_edge:                    ; preds = %if.end.i8
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

xprt_iter_get_helper.exit:                        ; preds = %if.end.i8.xprt_iter_get_helper.exit_crit_edge, %do.body.i.xprt_iter_get_helper.exit_crit_edge
  %ret.0.i = phi ptr [ null, %do.body.i.xprt_iter_get_helper.exit_crit_edge ], [ %call1.i7, %if.end.i8.xprt_iter_get_helper.exit_crit_edge ]
  %call.i9 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i9, label %xprt_iter_get_helper.exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i12

xprt_iter_get_helper.exit.rcu_read_unlock.exit_crit_edge: ; preds = %xprt_iter_get_helper.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i12:                                ; preds = %xprt_iter_get_helper.exit
  %call1.i10 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i10)
  %tobool.not.i11 = icmp eq i32 %call1.i10, 0
  br i1 %tobool.not.i11, label %land.lhs.true.i12.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i14

land.lhs.true.i12.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i12
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i14:                               ; preds = %land.lhs.true.i12
  %.b4.i13 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i13, label %land.lhs.true2.i14.rcu_read_unlock.exit_crit_edge, label %if.then.i15

land.lhs.true2.i14.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i14
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i15:                                      ; preds = %land.lhs.true2.i14
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 724, ptr noundef nonnull @.str.9) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i15, %land.lhs.true2.i14.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i12.rcu_read_unlock.exit_crit_edge, %xprt_iter_get_helper.exit.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !71
  %12 = tail call i32 @llvm.read_register.i32(metadata !47) #10
  %and.i.i.i.i.i16 = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i.i16 to ptr
  %preempt_count.i.i.i.i17 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %preempt_count.i.i.i.i17 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %preempt_count.i.i.i.i17, align 4
  %sub.i.i.i = add i32 %15, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i17, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  ret ptr %ret.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xprt_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ida_alloc_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_sysfs_xprt_switch_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_free(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ipv6_addr_type(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @xprt_iter_no_rewind(ptr nocapture noundef %xpi) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @xprt_iter_first_entry(ptr noundef %xpi) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %xpi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %xpi, align 4
  %call = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end7_crit_edge

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b13 = load i1, ptr @xprt_iter_first_entry.__warned, align 1
  br i1 %.b13, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @xprt_iter_first_entry.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 254, ptr noundef nonnull @.str.6) #10
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %entry.do.end7_crit_edge
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %do.end7.cleanup_crit_edge, label %if.end10

do.end7.cleanup_crit_edge:                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end10:                                         ; preds = %do.end7
  %xps_xprt_list = getelementptr inbounds %struct.rpc_xprt_switch, ptr %1, i32 0, i32 7
  %call.i = tail call i32 @rcu_read_lock_any_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.end10.do.end.i_crit_edge

if.end10.do.end.i_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %if.end10
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true3.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %.b25.i = load i1, ptr @xprt_switch_find_first_entry.__warned, align 1
  br i1 %.b25.i, label %land.lhs.true3.i.do.end.i_crit_edge, label %if.then.i

land.lhs.true3.i.do.end.i_crit_edge:              ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

if.then.i:                                        ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @xprt_switch_find_first_entry.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 244, ptr noundef nonnull @.str.2) #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %land.lhs.true3.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %if.end10.do.end.i_crit_edge
  %2 = ptrtoint ptr %xps_xprt_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn26.i = load volatile ptr, ptr %xps_xprt_list, align 4
  %cmp.not28.i = icmp eq ptr %.pn26.i, %xps_xprt_list
  br i1 %cmp.not28.i, label %do.end.i.cleanup_crit_edge, label %do.end.i.for.body.i_crit_edge

do.end.i.for.body.i_crit_edge:                    ; preds = %do.end.i
  br label %for.body.i

do.end.i.cleanup_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.backedge.i.for.body.i_crit_edge, %do.end.i.for.body.i_crit_edge
  %.pn29.i = phi ptr [ %.pn.i, %for.cond.backedge.i.for.body.i_crit_edge ], [ %.pn26.i, %do.end.i.for.body.i_crit_edge ]
  %pos.030.i = getelementptr i8, ptr %.pn29.i, i32 -1000
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %pos.030.i, i32 noundef 4) #10
  %3 = ptrtoint ptr %pos.030.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %pos.030.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.not.i.i = icmp eq i32 %4, 0
  br i1 %cmp.not.i.i, label %for.body.i.for.cond.backedge.i_crit_edge, label %land.rhs.i.i

for.body.i.for.cond.backedge.i_crit_edge:         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.backedge.i

land.rhs.i.i:                                     ; preds = %for.body.i
  %state.i.i = getelementptr i8, ptr %.pn29.i, i32 -16
  %5 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %state.i.i, align 4
  %7 = and i32 %6, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i.i, label %land.rhs.i.i.cleanup_crit_edge, label %land.rhs.i.i.for.cond.backedge.i_crit_edge

land.rhs.i.i.for.cond.backedge.i_crit_edge:       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.backedge.i

land.rhs.i.i.cleanup_crit_edge:                   ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.backedge.i:                              ; preds = %land.rhs.i.i.for.cond.backedge.i_crit_edge, %for.body.i.for.cond.backedge.i_crit_edge
  %8 = ptrtoint ptr %.pn29.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn.i = load volatile ptr, ptr %.pn29.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %xps_xprt_list
  br i1 %cmp.not.i, label %for.cond.backedge.i.cleanup_crit_edge, label %for.cond.backedge.i.for.body.i_crit_edge

for.cond.backedge.i.for.body.i_crit_edge:         ; preds = %for.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.cond.backedge.i.cleanup_crit_edge:            ; preds = %for.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %for.cond.backedge.i.cleanup_crit_edge, %land.rhs.i.i.cleanup_crit_edge, %do.end.i.cleanup_crit_edge, %do.end7.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %do.end7.cleanup_crit_edge ], [ null, %do.end.i.cleanup_crit_edge ], [ null, %for.cond.backedge.i.cleanup_crit_edge ], [ %pos.030.i, %land.rhs.i.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xprt_iter_default_rewind(ptr noundef %xpi) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %xpi_cursor = getelementptr inbounds %struct.rpc_xprt_iter, ptr %xpi, i32 0, i32 1
  %0 = ptrtoint ptr %xpi_cursor to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr null, ptr %xpi_cursor, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @xprt_iter_current_entry(ptr noundef %xpi) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %xpi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %xpi, align 4
  %call = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end7_crit_edge

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b25 = load i1, ptr @xprt_iter_current_entry.__warned, align 1
  br i1 %.b25, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @xprt_iter_current_entry.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 280, ptr noundef nonnull @.str.6) #10
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %entry.do.end7_crit_edge
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %do.end7.cleanup_crit_edge, label %if.end10

do.end7.cleanup_crit_edge:                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end10:                                         ; preds = %do.end7
  %xps_xprt_list = getelementptr inbounds %struct.rpc_xprt_switch, ptr %1, i32 0, i32 7
  %xpi_cursor = getelementptr inbounds %struct.rpc_xprt_iter, ptr %xpi, i32 0, i32 1
  %2 = ptrtoint ptr %xpi_cursor to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %xpi_cursor, align 4
  %cmp11 = icmp eq ptr %3, null
  br i1 %cmp11, label %if.end10.if.then13_crit_edge, label %lor.lhs.false

if.end10.if.then13_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then13

lor.lhs.false:                                    ; preds = %if.end10
  %xps_nxprts = getelementptr inbounds %struct.rpc_xprt_switch, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %xps_nxprts to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %xps_nxprts, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp12 = icmp ult i32 %5, 2
  br i1 %cmp12, label %lor.lhs.false.if.then13_crit_edge, label %if.end15

lor.lhs.false.if.then13_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then13

if.then13:                                        ; preds = %lor.lhs.false.if.then13_crit_edge, %if.end10.if.then13_crit_edge
  %call.i = tail call i32 @rcu_read_lock_any_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.then13.do.end.i_crit_edge

if.then13.do.end.i_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %if.then13
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true3.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %.b25.i = load i1, ptr @xprt_switch_find_first_entry.__warned, align 1
  br i1 %.b25.i, label %land.lhs.true3.i.do.end.i_crit_edge, label %if.then.i

land.lhs.true3.i.do.end.i_crit_edge:              ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

if.then.i:                                        ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @xprt_switch_find_first_entry.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 244, ptr noundef nonnull @.str.2) #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %land.lhs.true3.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %if.then13.do.end.i_crit_edge
  %6 = ptrtoint ptr %xps_xprt_list to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn26.i = load volatile ptr, ptr %xps_xprt_list, align 4
  %cmp.not28.i = icmp eq ptr %.pn26.i, %xps_xprt_list
  br i1 %cmp.not28.i, label %do.end.i.cleanup_crit_edge, label %do.end.i.for.body.i_crit_edge

do.end.i.for.body.i_crit_edge:                    ; preds = %do.end.i
  br label %for.body.i

do.end.i.cleanup_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.backedge.i.for.body.i_crit_edge, %do.end.i.for.body.i_crit_edge
  %.pn29.i = phi ptr [ %.pn.i, %for.cond.backedge.i.for.body.i_crit_edge ], [ %.pn26.i, %do.end.i.for.body.i_crit_edge ]
  %pos.030.i = getelementptr i8, ptr %.pn29.i, i32 -1000
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %pos.030.i, i32 noundef 4) #10
  %7 = ptrtoint ptr %pos.030.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %pos.030.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.not.i.i = icmp eq i32 %8, 0
  br i1 %cmp.not.i.i, label %for.body.i.for.cond.backedge.i_crit_edge, label %land.rhs.i.i

for.body.i.for.cond.backedge.i_crit_edge:         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.backedge.i

land.rhs.i.i:                                     ; preds = %for.body.i
  %state.i.i = getelementptr i8, ptr %.pn29.i, i32 -16
  %9 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %state.i.i, align 4
  %11 = and i32 %10, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i.i, label %land.rhs.i.i.cleanup_crit_edge, label %land.rhs.i.i.for.cond.backedge.i_crit_edge

land.rhs.i.i.for.cond.backedge.i_crit_edge:       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.backedge.i

land.rhs.i.i.cleanup_crit_edge:                   ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.backedge.i:                              ; preds = %land.rhs.i.i.for.cond.backedge.i_crit_edge, %for.body.i.for.cond.backedge.i_crit_edge
  %12 = ptrtoint ptr %.pn29.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn.i = load volatile ptr, ptr %.pn29.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %xps_xprt_list
  br i1 %cmp.not.i, label %for.cond.backedge.i.cleanup_crit_edge, label %for.cond.backedge.i.for.body.i_crit_edge

for.cond.backedge.i.for.body.i_crit_edge:         ; preds = %for.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.cond.backedge.i.cleanup_crit_edge:            ; preds = %for.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end15:                                         ; preds = %lor.lhs.false
  %call.i26 = tail call i32 @rcu_read_lock_any_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i26)
  %tobool.not.i27 = icmp eq i32 %call.i26, 0
  br i1 %tobool.not.i27, label %land.lhs.true.i30, label %if.end15.do.end.i33_crit_edge

if.end15.do.end.i33_crit_edge:                    ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i33

land.lhs.true.i30:                                ; preds = %if.end15
  %call1.i28 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i28)
  %tobool2.not.i29 = icmp eq i32 %call1.i28, 0
  br i1 %tobool2.not.i29, label %land.lhs.true.i30.do.end.i33_crit_edge, label %land.lhs.true3.i31

land.lhs.true.i30.do.end.i33_crit_edge:           ; preds = %land.lhs.true.i30
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i33

land.lhs.true3.i31:                               ; preds = %land.lhs.true.i30
  %.b33.i = load i1, ptr @xprt_switch_find_current_entry.__warned, align 1
  br i1 %.b33.i, label %land.lhs.true3.i31.do.end.i33_crit_edge, label %if.then.i32

land.lhs.true3.i31.do.end.i33_crit_edge:          ; preds = %land.lhs.true3.i31
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i33

if.then.i32:                                      ; preds = %land.lhs.true3.i31
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @xprt_switch_find_current_entry.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 268, ptr noundef nonnull @.str.2) #10
  br label %do.end.i33

do.end.i33:                                       ; preds = %if.then.i32, %land.lhs.true3.i31.do.end.i33_crit_edge, %land.lhs.true.i30.do.end.i33_crit_edge, %if.end15.do.end.i33_crit_edge
  %13 = ptrtoint ptr %xps_xprt_list to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pn34.i = load volatile ptr, ptr %xps_xprt_list, align 4
  %cmp.not36.i = icmp eq ptr %.pn34.i, %xps_xprt_list
  br i1 %cmp.not36.i, label %do.end.i33.cleanup_crit_edge, label %do.end.i33.for.body.i34_crit_edge

do.end.i33.for.body.i34_crit_edge:                ; preds = %do.end.i33
  br label %for.body.i34

do.end.i33.cleanup_crit_edge:                     ; preds = %do.end.i33
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.i34:                                     ; preds = %for.inc.i.for.body.i34_crit_edge, %do.end.i33.for.body.i34_crit_edge
  %.pn38.i = phi ptr [ %.pn.i39, %for.inc.i.for.body.i34_crit_edge ], [ %.pn34.i, %do.end.i33.for.body.i34_crit_edge ]
  %found.0.off037.i = phi i1 [ %spec.select.i, %for.inc.i.for.body.i34_crit_edge ], [ false, %do.end.i33.for.body.i34_crit_edge ]
  %pos.039.i = getelementptr i8, ptr %.pn38.i, i32 -1000
  %cmp9.i = icmp eq ptr %pos.039.i, %3
  %spec.select.i = select i1 %cmp9.i, i1 true, i1 %found.0.off037.i
  br i1 %spec.select.i, label %land.lhs.true13.i, label %for.body.i34.for.inc.i_crit_edge

for.body.i34.for.inc.i_crit_edge:                 ; preds = %for.body.i34
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

land.lhs.true13.i:                                ; preds = %for.body.i34
  %call.i.i.i.i.i.i35 = tail call zeroext i1 @__kasan_check_read(ptr noundef %pos.039.i, i32 noundef 4) #10
  %14 = ptrtoint ptr %pos.039.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %pos.039.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp.not.i.i36 = icmp eq i32 %15, 0
  br i1 %cmp.not.i.i36, label %land.lhs.true13.i.for.inc.i_crit_edge, label %xprt_is_active.exit.i

land.lhs.true13.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

xprt_is_active.exit.i:                            ; preds = %land.lhs.true13.i
  %state.i.i37 = getelementptr i8, ptr %.pn38.i, i32 -16
  %16 = ptrtoint ptr %state.i.i37 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %state.i.i37, align 4
  %18 = and i32 %17, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i.i38 = icmp eq i32 %18, 0
  br i1 %tobool.not.i.i38, label %xprt_is_active.exit.i.cleanup_crit_edge, label %xprt_is_active.exit.i.for.inc.i_crit_edge

xprt_is_active.exit.i.for.inc.i_crit_edge:        ; preds = %xprt_is_active.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

xprt_is_active.exit.i.cleanup_crit_edge:          ; preds = %xprt_is_active.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.inc.i:                                        ; preds = %xprt_is_active.exit.i.for.inc.i_crit_edge, %land.lhs.true13.i.for.inc.i_crit_edge, %for.body.i34.for.inc.i_crit_edge
  %19 = ptrtoint ptr %.pn38.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pn.i39 = load volatile ptr, ptr %.pn38.i, align 4
  %cmp.not.i40 = icmp eq ptr %.pn.i39, %xps_xprt_list
  br i1 %cmp.not.i40, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i34_crit_edge

for.inc.i.for.body.i34_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i34

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %for.inc.i.cleanup_crit_edge, %xprt_is_active.exit.i.cleanup_crit_edge, %do.end.i33.cleanup_crit_edge, %for.cond.backedge.i.cleanup_crit_edge, %land.rhs.i.i.cleanup_crit_edge, %do.end.i.cleanup_crit_edge, %do.end7.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %do.end7.cleanup_crit_edge ], [ null, %do.end.i.cleanup_crit_edge ], [ null, %do.end.i33.cleanup_crit_edge ], [ null, %for.cond.backedge.i.cleanup_crit_edge ], [ %pos.030.i, %land.rhs.i.i.cleanup_crit_edge ], [ %pos.039.i, %xprt_is_active.exit.i.cleanup_crit_edge ], [ null, %for.inc.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @xprt_iter_next_entry_roundrobin(ptr noundef %xpi) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %xpi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %xpi, align 4
  %call.i = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %entry.do.end7.i_crit_edge

entry.do.end7.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7.i

land.lhs.true.i:                                  ; preds = %entry
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.do.end7.i_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.do.end7.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %.b14.i = load i1, ptr @xprt_iter_next_entry_multiple.__warned, align 1
  br i1 %.b14.i, label %land.lhs.true4.i.do.end7.i_crit_edge, label %if.then.i

land.lhs.true4.i.do.end7.i_crit_edge:             ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7.i

if.then.i:                                        ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @xprt_iter_next_entry_multiple.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 345, ptr noundef nonnull @.str.6) #10
  br label %do.end7.i

do.end7.i:                                        ; preds = %if.then.i, %land.lhs.true4.i.do.end7.i_crit_edge, %land.lhs.true.i.do.end7.i_crit_edge, %entry.do.end7.i_crit_edge
  %cmp.i = icmp eq ptr %1, null
  br i1 %cmp.i, label %do.end7.i.xprt_iter_next_entry_multiple.exit_crit_edge, label %if.end10.i

do.end7.i.xprt_iter_next_entry_multiple.exit_crit_edge: ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %xprt_iter_next_entry_multiple.exit

if.end10.i:                                       ; preds = %do.end7.i
  %xpi_cursor.i = getelementptr inbounds %struct.rpc_xprt_iter, ptr %xpi, i32 0, i32 1
  %2 = ptrtoint ptr %xpi_cursor.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %xpi_cursor.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !72
  %xps_xprt_list.i = getelementptr inbounds %struct.rpc_xprt_switch, ptr %1, i32 0, i32 7
  %xps_queuelen2.i = getelementptr inbounds %struct.rpc_xprt_switch, ptr %1, i32 0, i32 6
  %xps_nactive.i = getelementptr inbounds %struct.rpc_xprt_switch, ptr %1, i32 0, i32 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %if.end.i.for.cond.i_crit_edge, %if.end10.i
  %cur.addr.0.i = phi ptr [ %3, %if.end10.i ], [ %retval.0.i23.i, %if.end.i.for.cond.i_crit_edge ]
  %call.i.i16.i = tail call i32 @rcu_read_lock_any_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i16.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i16.i, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i, label %for.cond.i.do.end.i.i.i_crit_edge

for.cond.i.do.end.i.i.i_crit_edge:                ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i.i.i

land.lhs.true.i.i.i:                              ; preds = %for.cond.i
  %call1.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool2.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool2.not.i.i.i, label %land.lhs.true.i.i.i.do.end.i.i.i_crit_edge, label %land.lhs.true3.i.i.i

land.lhs.true.i.i.i.do.end.i.i.i_crit_edge:       ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i.i.i

land.lhs.true3.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b34.i.i.i = load i1, ptr @xprt_switch_find_next_entry.__warned, align 1
  br i1 %.b34.i.i.i, label %land.lhs.true3.i.i.i.do.end.i.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true3.i.i.i.do.end.i.i.i_crit_edge:      ; preds = %land.lhs.true3.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true3.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @xprt_switch_find_next_entry.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 318, ptr noundef nonnull @.str.2) #10
  br label %do.end.i.i.i

do.end.i.i.i:                                     ; preds = %if.then.i.i.i, %land.lhs.true3.i.i.i.do.end.i.i.i_crit_edge, %land.lhs.true.i.i.i.do.end.i.i.i_crit_edge, %for.cond.i.do.end.i.i.i_crit_edge
  %4 = ptrtoint ptr %xps_xprt_list.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn35.i.i.i = load volatile ptr, ptr %xps_xprt_list.i, align 4
  %cmp.not37.i.i.i = icmp eq ptr %.pn35.i.i.i, %xps_xprt_list.i
  br i1 %cmp.not37.i.i.i, label %do.end.i.i.i.if.end.i.i_crit_edge, label %do.end.i.i.i.for.body.i.i.i_crit_edge

do.end.i.i.i.for.body.i.i.i_crit_edge:            ; preds = %do.end.i.i.i
  br label %for.body.i.i.i

do.end.i.i.i.if.end.i.i_crit_edge:                ; preds = %do.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

for.body.i.i.i:                                   ; preds = %if.end16.i.i.i.for.body.i.i.i_crit_edge, %do.end.i.i.i.for.body.i.i.i_crit_edge
  %.pn40.i.i.i = phi ptr [ %.pn.i.i.i, %if.end16.i.i.i.for.body.i.i.i_crit_edge ], [ %.pn35.i.i.i, %do.end.i.i.i.for.body.i.i.i_crit_edge ]
  %prev.039.i.i.i = phi ptr [ %pos.041.i.i.i, %if.end16.i.i.i.for.body.i.i.i_crit_edge ], [ null, %do.end.i.i.i.for.body.i.i.i_crit_edge ]
  %found.0.off038.i.i.i = phi i1 [ %spec.select.i.i.i, %if.end16.i.i.i.for.body.i.i.i_crit_edge ], [ false, %do.end.i.i.i.for.body.i.i.i_crit_edge ]
  %pos.041.i.i.i = getelementptr i8, ptr %.pn40.i.i.i, i32 -1000
  %cmp9.i.i.i = icmp eq ptr %prev.039.i.i.i, %cur.addr.0.i
  %spec.select.i.i.i = select i1 %cmp9.i.i.i, i1 true, i1 %found.0.off038.i.i.i
  br i1 %spec.select.i.i.i, label %land.lhs.true13.i.i.i, label %for.body.i.i.i.if.end16.i.i.i_crit_edge

for.body.i.i.i.if.end16.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16.i.i.i

land.lhs.true13.i.i.i:                            ; preds = %for.body.i.i.i
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %pos.041.i.i.i, i32 noundef 4) #10
  %5 = ptrtoint ptr %pos.041.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %pos.041.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.not.i.i.i.i = icmp eq i32 %6, 0
  br i1 %cmp.not.i.i.i.i, label %land.lhs.true13.i.i.i.if.end16.i.i.i_crit_edge, label %xprt_is_active.exit.i.i.i

land.lhs.true13.i.i.i.if.end16.i.i.i_crit_edge:   ; preds = %land.lhs.true13.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16.i.i.i

xprt_is_active.exit.i.i.i:                        ; preds = %land.lhs.true13.i.i.i
  %state.i.i.i.i = getelementptr i8, ptr %.pn40.i.i.i, i32 -16
  %7 = ptrtoint ptr %state.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %state.i.i.i.i, align 4
  %9 = and i32 %8, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i.i.i.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i.i.i.i, label %xprt_switch_find_next_entry.exit.i.i, label %xprt_is_active.exit.i.i.i.if.end16.i.i.i_crit_edge

xprt_is_active.exit.i.i.i.if.end16.i.i.i_crit_edge: ; preds = %xprt_is_active.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16.i.i.i

if.end16.i.i.i:                                   ; preds = %xprt_is_active.exit.i.i.i.if.end16.i.i.i_crit_edge, %land.lhs.true13.i.i.i.if.end16.i.i.i_crit_edge, %for.body.i.i.i.if.end16.i.i.i_crit_edge
  %10 = ptrtoint ptr %.pn40.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn.i.i.i = load volatile ptr, ptr %.pn40.i.i.i, align 4
  %cmp.not.i.i.i = icmp eq ptr %.pn.i.i.i, %xps_xprt_list.i
  br i1 %cmp.not.i.i.i, label %if.end16.i.i.i.if.end.i.i_crit_edge, label %if.end16.i.i.i.for.body.i.i.i_crit_edge

if.end16.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %if.end16.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i

if.end16.i.i.i.if.end.i.i_crit_edge:              ; preds = %if.end16.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

xprt_switch_find_next_entry.exit.i.i:             ; preds = %xprt_is_active.exit.i.i.i
  %cmp.not.i.i = icmp eq ptr %pos.041.i.i.i, null
  br i1 %cmp.not.i.i, label %xprt_switch_find_next_entry.exit.i.i.if.end.i.i_crit_edge, label %xprt_switch_find_next_entry.exit.i.i.if.end.i_crit_edge

xprt_switch_find_next_entry.exit.i.i.if.end.i_crit_edge: ; preds = %xprt_switch_find_next_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

xprt_switch_find_next_entry.exit.i.i.if.end.i.i_crit_edge: ; preds = %xprt_switch_find_next_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %xprt_switch_find_next_entry.exit.i.i.if.end.i.i_crit_edge, %if.end16.i.i.i.if.end.i.i_crit_edge, %do.end.i.i.i.if.end.i.i_crit_edge
  %call.i4.i.i = tail call i32 @rcu_read_lock_any_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4.i.i)
  %tobool.not.i5.i.i = icmp eq i32 %call.i4.i.i, 0
  br i1 %tobool.not.i5.i.i, label %land.lhs.true.i8.i.i, label %if.end.i.i.do.end.i11.i.i_crit_edge

if.end.i.i.do.end.i11.i.i_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i11.i.i

land.lhs.true.i8.i.i:                             ; preds = %if.end.i.i
  %call1.i6.i.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i6.i.i)
  %tobool2.not.i7.i.i = icmp eq i32 %call1.i6.i.i, 0
  br i1 %tobool2.not.i7.i.i, label %land.lhs.true.i8.i.i.do.end.i11.i.i_crit_edge, label %land.lhs.true3.i9.i.i

land.lhs.true.i8.i.i.do.end.i11.i.i_crit_edge:    ; preds = %land.lhs.true.i8.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i11.i.i

land.lhs.true3.i9.i.i:                            ; preds = %land.lhs.true.i8.i.i
  %.b25.i.i.i = load i1, ptr @xprt_switch_find_first_entry.__warned, align 1
  br i1 %.b25.i.i.i, label %land.lhs.true3.i9.i.i.do.end.i11.i.i_crit_edge, label %if.then.i10.i.i

land.lhs.true3.i9.i.i.do.end.i11.i.i_crit_edge:   ; preds = %land.lhs.true3.i9.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i11.i.i

if.then.i10.i.i:                                  ; preds = %land.lhs.true3.i9.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @xprt_switch_find_first_entry.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 244, ptr noundef nonnull @.str.2) #10
  br label %do.end.i11.i.i

do.end.i11.i.i:                                   ; preds = %if.then.i10.i.i, %land.lhs.true3.i9.i.i.do.end.i11.i.i_crit_edge, %land.lhs.true.i8.i.i.do.end.i11.i.i_crit_edge, %if.end.i.i.do.end.i11.i.i_crit_edge
  %11 = ptrtoint ptr %xps_xprt_list.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn26.i.i.i = load volatile ptr, ptr %xps_xprt_list.i, align 4
  %cmp.not28.i.i.i = icmp eq ptr %.pn26.i.i.i, %xps_xprt_list.i
  br i1 %cmp.not28.i.i.i, label %do.end.i11.i.i.xprt_switch_find_next_entry_roundrobin.exit_crit_edge, label %do.end.i11.i.i.for.body.i14.i.i_crit_edge

do.end.i11.i.i.for.body.i14.i.i_crit_edge:        ; preds = %do.end.i11.i.i
  br label %for.body.i14.i.i

do.end.i11.i.i.xprt_switch_find_next_entry_roundrobin.exit_crit_edge: ; preds = %do.end.i11.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %xprt_switch_find_next_entry_roundrobin.exit

for.body.i14.i.i:                                 ; preds = %for.cond.backedge.i.i.i.for.body.i14.i.i_crit_edge, %do.end.i11.i.i.for.body.i14.i.i_crit_edge
  %.pn29.i.i.i = phi ptr [ %.pn.i17.i.i, %for.cond.backedge.i.i.i.for.body.i14.i.i_crit_edge ], [ %.pn26.i.i.i, %do.end.i11.i.i.for.body.i14.i.i_crit_edge ]
  %pos.030.i.i.i = getelementptr i8, ptr %.pn29.i.i.i, i32 -1000
  %call.i.i.i.i.i.i12.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %pos.030.i.i.i, i32 noundef 4) #10
  %12 = ptrtoint ptr %pos.030.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %pos.030.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp.not.i.i13.i.i = icmp eq i32 %13, 0
  br i1 %cmp.not.i.i13.i.i, label %for.body.i14.i.i.for.cond.backedge.i.i.i_crit_edge, label %land.rhs.i.i.i.i

for.body.i14.i.i.for.cond.backedge.i.i.i_crit_edge: ; preds = %for.body.i14.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.backedge.i.i.i

land.rhs.i.i.i.i:                                 ; preds = %for.body.i14.i.i
  %state.i.i15.i.i = getelementptr i8, ptr %.pn29.i.i.i, i32 -16
  %14 = ptrtoint ptr %state.i.i15.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %state.i.i15.i.i, align 4
  %16 = and i32 %15, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i.i16.i.i = icmp eq i32 %16, 0
  br i1 %tobool.not.i.i16.i.i, label %__xprt_switch_find_next_entry_roundrobin.exit.i, label %land.rhs.i.i.i.i.for.cond.backedge.i.i.i_crit_edge

land.rhs.i.i.i.i.for.cond.backedge.i.i.i_crit_edge: ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.backedge.i.i.i

for.cond.backedge.i.i.i:                          ; preds = %land.rhs.i.i.i.i.for.cond.backedge.i.i.i_crit_edge, %for.body.i14.i.i.for.cond.backedge.i.i.i_crit_edge
  %17 = ptrtoint ptr %.pn29.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pn.i17.i.i = load volatile ptr, ptr %.pn29.i.i.i, align 4
  %cmp.not.i18.i.i = icmp eq ptr %.pn.i17.i.i, %xps_xprt_list.i
  br i1 %cmp.not.i18.i.i, label %for.cond.backedge.i.i.i.xprt_switch_find_next_entry_roundrobin.exit_crit_edge, label %for.cond.backedge.i.i.i.for.body.i14.i.i_crit_edge

for.cond.backedge.i.i.i.for.body.i14.i.i_crit_edge: ; preds = %for.cond.backedge.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i14.i.i

for.cond.backedge.i.i.i.xprt_switch_find_next_entry_roundrobin.exit_crit_edge: ; preds = %for.cond.backedge.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %xprt_switch_find_next_entry_roundrobin.exit

__xprt_switch_find_next_entry_roundrobin.exit.i:  ; preds = %land.rhs.i.i.i.i
  %tobool.not.i1 = icmp eq ptr %pos.030.i.i.i, null
  br i1 %tobool.not.i1, label %__xprt_switch_find_next_entry_roundrobin.exit.i.xprt_switch_find_next_entry_roundrobin.exit_crit_edge, label %__xprt_switch_find_next_entry_roundrobin.exit.i.if.end.i_crit_edge

__xprt_switch_find_next_entry_roundrobin.exit.i.if.end.i_crit_edge: ; preds = %__xprt_switch_find_next_entry_roundrobin.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

__xprt_switch_find_next_entry_roundrobin.exit.i.xprt_switch_find_next_entry_roundrobin.exit_crit_edge: ; preds = %__xprt_switch_find_next_entry_roundrobin.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %xprt_switch_find_next_entry_roundrobin.exit

if.end.i:                                         ; preds = %__xprt_switch_find_next_entry_roundrobin.exit.i.if.end.i_crit_edge, %xprt_switch_find_next_entry.exit.i.i.if.end.i_crit_edge
  %retval.0.i23.i = phi ptr [ %pos.030.i.i.i, %__xprt_switch_find_next_entry_roundrobin.exit.i.if.end.i_crit_edge ], [ %pos.041.i.i.i, %xprt_switch_find_next_entry.exit.i.i.if.end.i_crit_edge ]
  %queuelen.i = getelementptr inbounds %struct.rpc_xprt, ptr %retval.0.i23.i, i32 0, i32 32
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %queuelen.i, i32 noundef 4) #10
  %18 = ptrtoint ptr %queuelen.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %queuelen.i, align 4
  %call.i.i15.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %xps_queuelen2.i, i32 noundef 4) #10
  %20 = ptrtoint ptr %xps_queuelen2.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %xps_queuelen2.i, align 4
  %22 = ptrtoint ptr %xps_nactive.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %xps_nactive.i, align 4
  %mul.i = mul i32 %23, %19
  %cmp.not.i = icmp ugt i32 %mul.i, %21
  br i1 %cmp.not.i, label %if.end.i.for.cond.i_crit_edge, label %if.end.i.xprt_switch_find_next_entry_roundrobin.exit_crit_edge

if.end.i.xprt_switch_find_next_entry_roundrobin.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %xprt_switch_find_next_entry_roundrobin.exit

if.end.i.for.cond.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i

xprt_switch_find_next_entry_roundrobin.exit:      ; preds = %if.end.i.xprt_switch_find_next_entry_roundrobin.exit_crit_edge, %__xprt_switch_find_next_entry_roundrobin.exit.i.xprt_switch_find_next_entry_roundrobin.exit_crit_edge, %for.cond.backedge.i.i.i.xprt_switch_find_next_entry_roundrobin.exit_crit_edge, %do.end.i11.i.i.xprt_switch_find_next_entry_roundrobin.exit_crit_edge
  %retval.0.i19.ph.i = phi ptr [ null, %for.cond.backedge.i.i.i.xprt_switch_find_next_entry_roundrobin.exit_crit_edge ], [ %retval.0.i23.i, %if.end.i.xprt_switch_find_next_entry_roundrobin.exit_crit_edge ], [ null, %__xprt_switch_find_next_entry_roundrobin.exit.i.xprt_switch_find_next_entry_roundrobin.exit_crit_edge ], [ null, %do.end.i11.i.i.xprt_switch_find_next_entry_roundrobin.exit_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !73
  %24 = ptrtoint ptr %xpi_cursor.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %retval.0.i19.ph.i, ptr %xpi_cursor.i, align 4
  br label %xprt_iter_next_entry_multiple.exit

xprt_iter_next_entry_multiple.exit:               ; preds = %xprt_switch_find_next_entry_roundrobin.exit, %do.end7.i.xprt_iter_next_entry_multiple.exit_crit_edge
  %retval.0.i = phi ptr [ %retval.0.i19.ph.i, %xprt_switch_find_next_entry_roundrobin.exit ], [ null, %do.end7.i.xprt_iter_next_entry_multiple.exit_crit_edge ]
  ret ptr %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @xprt_iter_next_entry_all(ptr noundef %xpi) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %xpi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %xpi, align 4
  %call.i = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %entry.do.end7.i_crit_edge

entry.do.end7.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7.i

land.lhs.true.i:                                  ; preds = %entry
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.do.end7.i_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.do.end7.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %.b14.i = load i1, ptr @xprt_iter_next_entry_multiple.__warned, align 1
  br i1 %.b14.i, label %land.lhs.true4.i.do.end7.i_crit_edge, label %if.then.i

land.lhs.true4.i.do.end7.i_crit_edge:             ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7.i

if.then.i:                                        ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @xprt_iter_next_entry_multiple.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 345, ptr noundef nonnull @.str.6) #10
  br label %do.end7.i

do.end7.i:                                        ; preds = %if.then.i, %land.lhs.true4.i.do.end7.i_crit_edge, %land.lhs.true.i.do.end7.i_crit_edge, %entry.do.end7.i_crit_edge
  %cmp.i = icmp eq ptr %1, null
  br i1 %cmp.i, label %do.end7.i.xprt_iter_next_entry_multiple.exit_crit_edge, label %if.end10.i

do.end7.i.xprt_iter_next_entry_multiple.exit_crit_edge: ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %xprt_iter_next_entry_multiple.exit

if.end10.i:                                       ; preds = %do.end7.i
  %xpi_cursor.i = getelementptr inbounds %struct.rpc_xprt_iter, ptr %xpi, i32 0, i32 1
  %2 = ptrtoint ptr %xpi_cursor.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %xpi_cursor.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !72
  %xps_xprt_list.i = getelementptr inbounds %struct.rpc_xprt_switch, ptr %1, i32 0, i32 7
  %call.i.i1 = tail call i32 @rcu_read_lock_any_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i1)
  %tobool.not.i.i = icmp eq i32 %call.i.i1, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %if.end10.i.do.end.i.i_crit_edge

if.end10.i.do.end.i.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i.i

land.lhs.true.i.i:                                ; preds = %if.end10.i
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %land.lhs.true.i.i.do.end.i.i_crit_edge, label %land.lhs.true3.i.i

land.lhs.true.i.i.do.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i.i

land.lhs.true3.i.i:                               ; preds = %land.lhs.true.i.i
  %.b34.i.i = load i1, ptr @xprt_switch_find_next_entry.__warned, align 1
  br i1 %.b34.i.i, label %land.lhs.true3.i.i.do.end.i.i_crit_edge, label %if.then.i.i

land.lhs.true3.i.i.do.end.i.i_crit_edge:          ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i.i

if.then.i.i:                                      ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @xprt_switch_find_next_entry.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 318, ptr noundef nonnull @.str.2) #10
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %if.then.i.i, %land.lhs.true3.i.i.do.end.i.i_crit_edge, %land.lhs.true.i.i.do.end.i.i_crit_edge, %if.end10.i.do.end.i.i_crit_edge
  %4 = ptrtoint ptr %xps_xprt_list.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn35.i.i = load volatile ptr, ptr %xps_xprt_list.i, align 4
  %cmp.not37.i.i = icmp eq ptr %.pn35.i.i, %xps_xprt_list.i
  br i1 %cmp.not37.i.i, label %do.end.i.i.xprt_switch_find_next_entry_all.exit_crit_edge, label %do.end.i.i.for.body.i.i_crit_edge

do.end.i.i.for.body.i.i_crit_edge:                ; preds = %do.end.i.i
  br label %for.body.i.i

do.end.i.i.xprt_switch_find_next_entry_all.exit_crit_edge: ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %xprt_switch_find_next_entry_all.exit

for.body.i.i:                                     ; preds = %if.end16.i.i.for.body.i.i_crit_edge, %do.end.i.i.for.body.i.i_crit_edge
  %.pn40.i.i = phi ptr [ %.pn.i.i, %if.end16.i.i.for.body.i.i_crit_edge ], [ %.pn35.i.i, %do.end.i.i.for.body.i.i_crit_edge ]
  %prev.039.i.i = phi ptr [ %pos.041.i.i, %if.end16.i.i.for.body.i.i_crit_edge ], [ null, %do.end.i.i.for.body.i.i_crit_edge ]
  %found.0.off038.i.i = phi i1 [ %spec.select.i.i, %if.end16.i.i.for.body.i.i_crit_edge ], [ false, %do.end.i.i.for.body.i.i_crit_edge ]
  %pos.041.i.i = getelementptr i8, ptr %.pn40.i.i, i32 -1000
  %cmp9.i.i = icmp eq ptr %prev.039.i.i, %3
  %spec.select.i.i = select i1 %cmp9.i.i, i1 true, i1 %found.0.off038.i.i
  br i1 %spec.select.i.i, label %land.lhs.true13.i.i, label %for.body.i.i.if.end16.i.i_crit_edge

for.body.i.i.if.end16.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16.i.i

land.lhs.true13.i.i:                              ; preds = %for.body.i.i
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %pos.041.i.i, i32 noundef 4) #10
  %5 = ptrtoint ptr %pos.041.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %pos.041.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.not.i.i.i = icmp eq i32 %6, 0
  br i1 %cmp.not.i.i.i, label %land.lhs.true13.i.i.if.end16.i.i_crit_edge, label %xprt_is_active.exit.i.i

land.lhs.true13.i.i.if.end16.i.i_crit_edge:       ; preds = %land.lhs.true13.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16.i.i

xprt_is_active.exit.i.i:                          ; preds = %land.lhs.true13.i.i
  %state.i.i.i = getelementptr i8, ptr %.pn40.i.i, i32 -16
  %7 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %state.i.i.i, align 4
  %9 = and i32 %8, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i.i.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i.i.i, label %xprt_is_active.exit.i.i.xprt_switch_find_next_entry_all.exit_crit_edge, label %xprt_is_active.exit.i.i.if.end16.i.i_crit_edge

xprt_is_active.exit.i.i.if.end16.i.i_crit_edge:   ; preds = %xprt_is_active.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16.i.i

xprt_is_active.exit.i.i.xprt_switch_find_next_entry_all.exit_crit_edge: ; preds = %xprt_is_active.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %xprt_switch_find_next_entry_all.exit

if.end16.i.i:                                     ; preds = %xprt_is_active.exit.i.i.if.end16.i.i_crit_edge, %land.lhs.true13.i.i.if.end16.i.i_crit_edge, %for.body.i.i.if.end16.i.i_crit_edge
  %10 = ptrtoint ptr %.pn40.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn.i.i = load volatile ptr, ptr %.pn40.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %xps_xprt_list.i
  br i1 %cmp.not.i.i, label %if.end16.i.i.xprt_switch_find_next_entry_all.exit_crit_edge, label %if.end16.i.i.for.body.i.i_crit_edge

if.end16.i.i.for.body.i.i_crit_edge:              ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

if.end16.i.i.xprt_switch_find_next_entry_all.exit_crit_edge: ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %xprt_switch_find_next_entry_all.exit

xprt_switch_find_next_entry_all.exit:             ; preds = %if.end16.i.i.xprt_switch_find_next_entry_all.exit_crit_edge, %xprt_is_active.exit.i.i.xprt_switch_find_next_entry_all.exit_crit_edge, %do.end.i.i.xprt_switch_find_next_entry_all.exit_crit_edge
  %retval.0.i.i = phi ptr [ null, %do.end.i.i.xprt_switch_find_next_entry_all.exit_crit_edge ], [ null, %if.end16.i.i.xprt_switch_find_next_entry_all.exit_crit_edge ], [ %pos.041.i.i, %xprt_is_active.exit.i.i.xprt_switch_find_next_entry_all.exit_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !73
  %11 = ptrtoint ptr %xpi_cursor.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %retval.0.i.i, ptr %xpi_cursor.i, align 4
  br label %xprt_iter_next_entry_multiple.exit

xprt_iter_next_entry_multiple.exit:               ; preds = %xprt_switch_find_next_entry_all.exit, %do.end7.i.xprt_iter_next_entry_multiple.exit_crit_edge
  %retval.0.i = phi ptr [ %retval.0.i.i, %xprt_switch_find_next_entry_all.exit ], [ null, %do.end7.i.xprt_iter_next_entry_multiple.exit_crit_edge ]
  ret ptr %retval.0.i
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind readonly }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !9, !10, !11, !12, !14, !16, !18, !19, !21, !22, !24, !25, !26, !28, !29, !31, !33, !35, !37, !39, !41, !43, !45}
!llvm.named.register.sp = !{!47}
!llvm.module.flags = !{!48, !49, !50, !51, !52, !53, !54, !55}
!llvm.ident = !{!56}

!0 = !{ptr @xprt_switch_alloc.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../net/sunrpc/xprtmultipath.c", i32 132, i32 3}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = distinct !{null, !4, !"__warned", i1 false, i1 false}
!4 = !{!"../net/sunrpc/xprtmultipath.c", i32 301, i32 2}
!5 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../net/sunrpc/xprtmultipath.c", i32 303, i32 4}
!9 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @rpc_xprt_switch_has_addr._entry, !8, !"_entry", i1 false, i1 false}
!11 = !{ptr @rpc_xprt_switch_has_addr._entry_ptr, !8, !"_entry_ptr", i1 false, i1 false}
!12 = distinct !{null, !13, !"__warned", i1 false, i1 false}
!13 = !{!"../net/sunrpc/xprtmultipath.c", i32 479, i32 9}
!14 = distinct !{null, !15, !"__already_done", i1 false, i1 false}
!15 = !{!"../net/sunrpc/xprtmultipath.c", i32 501, i32 2}
!16 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../net/sunrpc/xprtmultipath.c", i32 93, i32 8}
!18 = !{ptr @rpc_xprtswitch_ids, !17, !"rpc_xprtswitch_ids", i1 false, i1 false}
!19 = distinct !{null, !20, !"__warned", i1 false, i1 false}
!20 = !{!"../net/sunrpc/xprtmultipath.c", i32 218, i32 9}
!21 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!22 = distinct !{null, !23, !"__warned", i1 false, i1 false}
!23 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!24 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!26 = distinct !{null, !27, !"__warned", i1 false, i1 false}
!27 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!28 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @rpc_xprt_iter_singular, !30, !"rpc_xprt_iter_singular", i1 false, i1 false}
!30 = !{!"../net/sunrpc/xprtmultipath.c", i32 556, i32 32}
!31 = distinct !{null, !32, !"__warned", i1 false, i1 false}
!32 = !{!"../net/sunrpc/xprtmultipath.c", i32 254, i32 32}
!33 = distinct !{null, !34, !"__warned", i1 false, i1 false}
!34 = !{!"../net/sunrpc/xprtmultipath.c", i32 244, i32 2}
!35 = !{ptr @rpc_xprt_iter_roundrobin, !36, !"rpc_xprt_iter_roundrobin", i1 false, i1 false}
!36 = !{!"../net/sunrpc/xprtmultipath.c", i32 564, i32 32}
!37 = distinct !{null, !38, !"__warned", i1 false, i1 false}
!38 = !{!"../net/sunrpc/xprtmultipath.c", i32 280, i32 32}
!39 = distinct !{null, !40, !"__warned", i1 false, i1 false}
!40 = !{!"../net/sunrpc/xprtmultipath.c", i32 268, i32 2}
!41 = distinct !{null, !42, !"__warned", i1 false, i1 false}
!42 = !{!"../net/sunrpc/xprtmultipath.c", i32 345, i32 32}
!43 = distinct !{null, !44, !"__warned", i1 false, i1 false}
!44 = !{!"../net/sunrpc/xprtmultipath.c", i32 318, i32 2}
!45 = !{ptr @rpc_xprt_iter_listall, !46, !"rpc_xprt_iter_listall", i1 false, i1 false}
!46 = !{!"../net/sunrpc/xprtmultipath.c", i32 572, i32 32}
!47 = !{!"sp"}
!48 = !{i32 1, !"wchar_size", i32 2}
!49 = !{i32 1, !"min_enum_size", i32 4}
!50 = !{i32 8, !"branch-target-enforcement", i32 0}
!51 = !{i32 8, !"sign-return-address", i32 0}
!52 = !{i32 8, !"sign-return-address-all", i32 0}
!53 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!54 = !{i32 7, !"uwtable", i32 1}
!55 = !{i32 7, !"frame-pointer", i32 2}
!56 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!57 = !{!"branch_weights", i32 1, i32 2000}
!58 = !{i64 2149312362}
!59 = !{i64 2157188340}
!60 = !{i64 2157188790}
!61 = !{!"branch_weights", i32 2000, i32 1}
!62 = !{i64 505773, i64 505797, i64 505818, i64 505835, i64 505852}
!63 = !{i64 2148220470}
!64 = !{i64 2148134934, i64 2148134966, i64 2148134995, i64 2148135029, i64 2148135060, i64 2148135083}
!65 = !{i64 2149217333}
!66 = !{i64 2157383428}
!67 = !{i64 2157387130}
!68 = !{i64 637707, i64 637724, i64 637748, i64 637774, i64 637792}
!69 = !{i64 2157387525}
!70 = !{i64 2149257727}
!71 = !{i64 2149257993}
!72 = !{i64 2157366865}
!73 = !{i64 2157368802}
