; ModuleID = '/llk/IR_all_yes/net/xdp/xskmap.c_pt.bc'
source_filename = "../net/xdp/xskmap.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.bpf_map_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon.25 }
%union.anon.25 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.bpf_redirect_info = type { i32, i32, ptr, ptr, i32, i32, i32, %struct.bpf_nh_params }
%struct.bpf_nh_params = type { i32, %union.anon.186 }
%union.anon.186 = type { %struct.in6_addr }
%struct.in6_addr = type { %union.anon.95 }
%union.anon.95 = type { [4 x i32] }
%struct.xsk_map = type { %struct.bpf_map, %struct.spinlock, [0 x ptr], [84 x i8] }
%struct.bpf_map = type { ptr, ptr, ptr, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, [16 x i8], i8, i8, [30 x i8], %struct.atomic64_t, %struct.atomic64_t, %struct.work_struct, %struct.mutex, %struct.atomic64_t, [96 x i8] }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.27 }
%union.anon.27 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.atomic64_t = type { i64 }
%struct.spinlock = type { %union.anon.26 }
%union.anon.26 = type { %struct.raw_spinlock }
%struct.xdp_sock = type { %struct.sock, [64 x i8], ptr, ptr, ptr, %struct.list_head, ptr, i16, i8, i32, [96 x i8], ptr, %struct.list_head, %struct.spinlock, i64, i64, %struct.list_head, %struct.spinlock, %struct.mutex, ptr, ptr, [32 x i8] }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.104, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.115, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.116, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.sock_common = type { %union.anon.64, %union.anon.66, %union.anon.67, i16, i8, i8, i32, %union.anon.69, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.96, [0 x i32], %union.anon.97, i16, i16, %union.anon.98, %struct.refcount_struct, [0 x i32], %union.anon.99 }
%union.anon.64 = type { i64 }
%union.anon.66 = type { i32 }
%union.anon.67 = type { i32 }
%union.anon.69 = type { %struct.hlist_node }
%struct.possible_net_t = type { ptr }
%union.anon.96 = type { i32 }
%union.anon.97 = type { %struct.hlist_node }
%union.anon.98 = type { i32 }
%union.anon.99 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.104 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.115 = type { ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.116 = type { ptr }
%struct.sk_buff_head = type { %union.anon.102, i32, %struct.spinlock }
%union.anon.102 = type { %struct.anon.103 }
%struct.anon.103 = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.page_frag = type { ptr, i16, i16 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.callback_head = type { ptr, ptr }
%struct.xsk_map_node = type { %struct.list_head, ptr, ptr }
%struct.anon = type { i32, i32, i32, i32, i32, i32, i32, [16 x i8], i32, i32, i32, i32, i32, i64 }
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [104 x i8], %struct.socket_wq }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [60 x i8] }
%struct.bpf_insn = type { i8, i8, i16, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"xsk_map\00", [24 x i8] zeroinitializer }, align 32
@xsk_map_btf_id = internal global { i32, [28 x i8] } zeroinitializer, align 32
@xsk_map_ops = dso_local constant { %struct.bpf_map_ops, [60 x i8] } { %struct.bpf_map_ops { ptr null, ptr @xsk_map_alloc, ptr null, ptr @xsk_map_free, ptr @xsk_map_get_next_key, ptr null, ptr @xsk_map_lookup_elem_sys_only, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @xsk_map_lookup_elem, ptr @xsk_map_update_elem, ptr @xsk_map_delete_elem, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @xsk_map_gen_lookup, ptr null, ptr null, ptr @map_check_no_btf, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @xsk_map_redirect, ptr @xsk_map_meta_equal, ptr null, ptr null, ptr @.str, ptr @xsk_map_btf_id, ptr null }, [60 x i8] zeroinitializer }, align 32
@xsk_map_alloc.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&m->lock\00", [23 x i8] zeroinitializer }, align 32
@__xsk_map_lookup_elem.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"net/xdp/xskmap.c\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@xsk_map_update_elem.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@bpf_redirect_info = external dso_local global %struct.bpf_redirect_info, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 269, i32 18 }
@___asan_gen_.8 = private unnamed_addr constant [15 x i8] c"xsk_map_btf_id\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 257, i32 12 }
@___asan_gen_.11 = private unnamed_addr constant [12 x i8] c"xsk_map_ops\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 258, i32 26 }
@___asan_gen_.14 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 82, i32 2 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 139, i32 9 }
@___asan_gen_.26 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.27 = private constant [20 x i8] c"../net/xdp/xskmap.c\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 187, i32 11 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @.str, ptr @xsk_map_btf_id, ptr @xsk_map_ops, ptr @xsk_map_alloc.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xsk_map_btf_id to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xsk_map_ops to i32), i32 164, i32 224, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xsk_map_alloc.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xsk_map_try_sock_delete(ptr noundef %map, ptr noundef %xs, ptr noundef %map_entry) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.xsk_map, ptr %map, i32 0, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #8
  %0 = ptrtoint ptr %map_entry to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %map_entry, align 4
  %cmp = icmp eq ptr %1, %xs
  br i1 %cmp, label %do.body9, label %entry.if.end37_crit_edge

entry.if.end37_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

do.body9:                                         ; preds = %entry
  %2 = ptrtoint ptr %map_entry to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr null, ptr %map_entry, align 4
  %map_list_lock.i = getelementptr inbounds %struct.xdp_sock, ptr %xs, i32 0, i32 17
  tail call void @_raw_spin_lock_bh(ptr noundef %map_list_lock.i) #8
  %map_list.i = getelementptr inbounds %struct.xdp_sock, ptr %xs, i32 0, i32 16
  %3 = ptrtoint ptr %map_list.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %map_list.i, align 8
  %cmp.not26.i = icmp eq ptr %4, %map_list.i
  br i1 %cmp.not26.i, label %do.body9.xsk_map_sock_delete.exit_crit_edge, label %do.body9.for.body.i_crit_edge

do.body9.for.body.i_crit_edge:                    ; preds = %do.body9
  br label %for.body.i

do.body9.xsk_map_sock_delete.exit_crit_edge:      ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #10
  br label %xsk_map_sock_delete.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %do.body9.for.body.i_crit_edge
  %n.027.i = phi ptr [ %tmp.028.i, %for.inc.i.for.body.i_crit_edge ], [ %4, %do.body9.for.body.i_crit_edge ]
  %5 = ptrtoint ptr %n.027.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %tmp.028.i = load ptr, ptr %n.027.i, align 4
  %map_entry8.i = getelementptr inbounds %struct.xsk_map_node, ptr %n.027.i, i32 0, i32 2
  %6 = ptrtoint ptr %map_entry8.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %map_entry8.i, align 4
  %cmp9.i = icmp eq ptr %7, %map_entry
  br i1 %cmp9.i, label %if.then.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %n.027.i) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.list_del.exit.i_crit_edge

if.then.i.list_del.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %n.027.i, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i.i.i, align 4
  %10 = ptrtoint ptr %n.027.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %n.027.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev1.i.i.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %11, ptr %9, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.then.i.list_del.exit.i_crit_edge
  %14 = ptrtoint ptr %n.027.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 256 to ptr), ptr %n.027.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %n.027.i, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %map.i.i = getelementptr inbounds %struct.xsk_map_node, ptr %n.027.i, i32 0, i32 1
  %16 = ptrtoint ptr %map.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %map.i.i, align 4
  tail call void @bpf_map_put(ptr noundef %17) #8
  tail call void @kfree(ptr noundef %n.027.i) #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %list_del.exit.i, %for.body.i.for.inc.i_crit_edge
  %cmp.not.i = icmp eq ptr %tmp.028.i, %map_list.i
  br i1 %cmp.not.i, label %for.inc.i.xsk_map_sock_delete.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.xsk_map_sock_delete.exit_crit_edge:     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %xsk_map_sock_delete.exit

xsk_map_sock_delete.exit:                         ; preds = %for.inc.i.xsk_map_sock_delete.exit_crit_edge, %do.body9.xsk_map_sock_delete.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %map_list_lock.i) #8
  br label %if.end37

if.end37:                                         ; preds = %xsk_map_sock_delete.exit, %entry.if.end37_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xsk_map_sock_delete(ptr noundef %xs, ptr noundef readnone %map_entry) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %map_list_lock = getelementptr inbounds %struct.xdp_sock, ptr %xs, i32 0, i32 17
  tail call void @_raw_spin_lock_bh(ptr noundef %map_list_lock) #8
  %map_list = getelementptr inbounds %struct.xdp_sock, ptr %xs, i32 0, i32 16
  %0 = ptrtoint ptr %map_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %map_list, align 8
  %cmp.not26 = icmp eq ptr %1, %map_list
  br i1 %cmp.not26, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %n.027 = phi ptr [ %tmp.028, %for.inc.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %2 = ptrtoint ptr %n.027 to i32
  call void @__asan_load4_noabort(i32 %2)
  %tmp.028 = load ptr, ptr %n.027, align 4
  %map_entry8 = getelementptr inbounds %struct.xsk_map_node, ptr %n.027, i32 0, i32 2
  %3 = ptrtoint ptr %map_entry8 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %map_entry8, align 4
  %cmp9 = icmp eq ptr %4, %map_entry
  br i1 %cmp9, label %if.then, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then:                                          ; preds = %for.body
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %n.027) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del.exit_crit_edge

if.then.list_del.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %n.027, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i, align 4
  %7 = ptrtoint ptr %n.027 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %n.027, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then.list_del.exit_crit_edge
  %11 = ptrtoint ptr %n.027 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 256 to ptr), ptr %n.027, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %n.027, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %map.i = getelementptr inbounds %struct.xsk_map_node, ptr %n.027, i32 0, i32 1
  %13 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %map.i, align 4
  tail call void @bpf_map_put(ptr noundef %14) #8
  tail call void @kfree(ptr noundef %n.027) #8
  br label %for.inc

for.inc:                                          ; preds = %list_del.exit, %for.body.for.inc_crit_edge
  %cmp.not = icmp eq ptr %tmp.028, %map_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %map_list_lock) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @xsk_map_alloc(ptr noundef %attr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @capable(i32 noundef 12) #8
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %max_entries = getelementptr inbounds %struct.anon, ptr %attr, i32 0, i32 3
  %0 = ptrtoint ptr %max_entries to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_entries, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %key_size = getelementptr inbounds %struct.anon, ptr %attr, i32 0, i32 1
  %2 = ptrtoint ptr %key_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %key_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp2.not = icmp eq i32 %3, 4
  br i1 %cmp2.not, label %lor.lhs.false3, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %value_size = getelementptr inbounds %struct.anon, ptr %attr, i32 0, i32 2
  %4 = ptrtoint ptr %value_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %value_size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %cmp4.not = icmp eq i32 %5, 4
  br i1 %cmp4.not, label %lor.lhs.false5, label %lor.lhs.false3.cleanup_crit_edge

lor.lhs.false3.cleanup_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false5:                                   ; preds = %lor.lhs.false3
  %map_flags = getelementptr inbounds %struct.anon, ptr %attr, i32 0, i32 4
  %6 = ptrtoint ptr %map_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %map_flags, align 8
  %and = and i32 %7, -29
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end8, label %lor.lhs.false5.cleanup_crit_edge

lor.lhs.false5.cleanup_crit_edge:                 ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %lor.lhs.false5
  %and.i = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end8.bpf_map_attr_numa_node.exit_crit_edge, label %cond.true.i

if.end8.bpf_map_attr_numa_node.exit_crit_edge:    ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %bpf_map_attr_numa_node.exit

cond.true.i:                                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %numa_node.i = getelementptr inbounds %struct.anon, ptr %attr, i32 0, i32 6
  %8 = ptrtoint ptr %numa_node.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %numa_node.i, align 8
  br label %bpf_map_attr_numa_node.exit

bpf_map_attr_numa_node.exit:                      ; preds = %cond.true.i, %if.end8.bpf_map_attr_numa_node.exit_crit_edge
  %cond.i = phi i32 [ %9, %cond.true.i ], [ -1, %if.end8.bpf_map_attr_numa_node.exit_crit_edge ]
  %10 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %1, i32 4) #8
  %11 = extractvalue { i32, i1 } %10, 1
  %12 = extractvalue { i32, i1 } %10, 0
  %spec.select.i = tail call i32 @llvm.uadd.sat.i32(i32 %12, i32 512) #8
  %13 = zext i32 %spec.select.i to i64
  %conv = select i1 %11, i64 4294967295, i64 %13
  %call12 = tail call ptr @bpf_map_area_alloc(i64 noundef %conv, i32 noundef %cond.i) #8
  %tobool13.not = icmp eq ptr %call12, null
  br i1 %tobool13.not, label %bpf_map_attr_numa_node.exit.cleanup_crit_edge, label %if.end16

bpf_map_attr_numa_node.exit.cleanup_crit_edge:    ; preds = %bpf_map_attr_numa_node.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end16:                                         ; preds = %bpf_map_attr_numa_node.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @bpf_map_init_from_attr(ptr noundef nonnull %call12, ptr noundef %attr) #8
  %lock = getelementptr inbounds %struct.xsk_map, ptr %call12, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @xsk_map_alloc.__key, i16 noundef signext 3) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %bpf_map_attr_numa_node.exit.cleanup_crit_edge, %lor.lhs.false5.cleanup_crit_edge, %lor.lhs.false3.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call12, %if.end16 ], [ inttoptr (i32 -1 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %lor.lhs.false5.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %lor.lhs.false3.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %lor.lhs.false.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %bpf_map_attr_numa_node.exit.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xsk_map_free(ptr noundef %map) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @synchronize_net() #8
  tail call void @bpf_map_area_free(ptr noundef %map) #8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @xsk_map_get_next_key(ptr nocapture noundef readonly %map, ptr noundef readonly %key, ptr nocapture noundef writeonly %next_key) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %key, null
  br i1 %tobool.not, label %entry.cleanup.sink.split_crit_edge, label %cond.end

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

cond.end:                                         ; preds = %entry
  %0 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %key, align 4
  %max_entries = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 6
  %2 = ptrtoint ptr %max_entries to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_entries, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.not = icmp ult i32 %1, %3
  br i1 %cmp.not, label %if.end, label %cond.end.cleanup.sink.split_crit_edge

cond.end.cleanup.sink.split_crit_edge:            ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end:                                           ; preds = %cond.end
  %sub = add i32 %3, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %sub)
  %cmp4 = icmp eq i32 %1, %sub
  br i1 %cmp4, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %add = add nuw i32 %1, 1
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end6, %cond.end.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %add.sink = phi i32 [ %add, %if.end6 ], [ 0, %entry.cleanup.sink.split_crit_edge ], [ 0, %cond.end.cleanup.sink.split_crit_edge ]
  %4 = ptrtoint ptr %next_key to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %add.sink, ptr %next_key, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -2, %if.end.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal nonnull ptr @xsk_map_lookup_elem_sys_only(ptr nocapture noundef readnone %map, ptr nocapture noundef readnone %key) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret ptr inttoptr (i32 -95 to ptr)
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @xsk_map_lookup_elem(ptr noundef %map, ptr nocapture noundef readonly %key) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %key, align 4
  %max_entries.i = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 6
  %2 = ptrtoint ptr %max_entries.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_entries.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %1)
  %cmp.not.i = icmp ugt i32 %3, %1
  br i1 %cmp.not.i, label %if.end.i, label %entry.__xsk_map_lookup_elem.exit_crit_edge

entry.__xsk_map_lookup_elem.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %__xsk_map_lookup_elem.exit

if.end.i:                                         ; preds = %entry
  %arrayidx.i = getelementptr %struct.xsk_map, ptr %map, i32 0, i32 2, i32 %1
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %arrayidx.i, align 4
  %call.i = tail call i32 @rcu_read_lock_bh_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %if.end.i.__xsk_map_lookup_elem.exit_crit_edge

if.end.i.__xsk_map_lookup_elem.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__xsk_map_lookup_elem.exit

lor.lhs.false.i:                                  ; preds = %if.end.i
  %call3.i = tail call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i, label %lor.lhs.false.i.__xsk_map_lookup_elem.exit_crit_edge

lor.lhs.false.i.__xsk_map_lookup_elem.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__xsk_map_lookup_elem.exit

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %call5.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %land.lhs.true.i.__xsk_map_lookup_elem.exit_crit_edge, label %land.lhs.true7.i

land.lhs.true.i.__xsk_map_lookup_elem.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__xsk_map_lookup_elem.exit

land.lhs.true7.i:                                 ; preds = %land.lhs.true.i
  %.b16.i = load i1, ptr @__xsk_map_lookup_elem.__warned, align 1
  br i1 %.b16.i, label %land.lhs.true7.i.__xsk_map_lookup_elem.exit_crit_edge, label %if.then9.i

land.lhs.true7.i.__xsk_map_lookup_elem.exit_crit_edge: ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__xsk_map_lookup_elem.exit

if.then9.i:                                       ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @__xsk_map_lookup_elem.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 139, ptr noundef nonnull @.str.3) #8
  br label %__xsk_map_lookup_elem.exit

__xsk_map_lookup_elem.exit:                       ; preds = %if.then9.i, %land.lhs.true7.i.__xsk_map_lookup_elem.exit_crit_edge, %land.lhs.true.i.__xsk_map_lookup_elem.exit_crit_edge, %lor.lhs.false.i.__xsk_map_lookup_elem.exit_crit_edge, %if.end.i.__xsk_map_lookup_elem.exit_crit_edge, %entry.__xsk_map_lookup_elem.exit_crit_edge
  %retval.0.i = phi ptr [ null, %entry.__xsk_map_lookup_elem.exit_crit_edge ], [ %5, %if.then9.i ], [ %5, %land.lhs.true7.i.__xsk_map_lookup_elem.exit_crit_edge ], [ %5, %land.lhs.true.i.__xsk_map_lookup_elem.exit_crit_edge ], [ %5, %lor.lhs.false.i.__xsk_map_lookup_elem.exit_crit_edge ], [ %5, %if.end.i.__xsk_map_lookup_elem.exit_crit_edge ]
  ret ptr %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xsk_map_update_elem(ptr noundef %map, ptr nocapture noundef readonly %key, ptr nocapture noundef readonly %value, i64 noundef %map_flags) #0 align 64 {
entry:
  %err = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %key, align 4
  %2 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %value, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err) #8
  %4 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %err, align 4, !annotation !26
  call void @__sanitizer_cov_trace_const_cmp8(i64 2, i64 %map_flags)
  %cmp = icmp ugt i64 %map_flags, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end, !prof !27

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %max_entries = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 6
  %5 = ptrtoint ptr %max_entries to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %max_entries, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %6)
  %cmp3.not = icmp ult i32 %1, %6
  br i1 %cmp3.not, label %if.end11, label %if.end.cleanup_crit_edge, !prof !28

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %call = call ptr @sockfd_lookup(i32 noundef %3, ptr noundef nonnull %err) #8
  %tobool12.not = icmp eq ptr %call, null
  br i1 %tobool12.not, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %err, align 4
  br label %cleanup

if.end14:                                         ; preds = %if.end11
  %sk = getelementptr inbounds %struct.socket, ptr %call, i32 0, i32 4
  %9 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sk, align 16
  %skc_family = getelementptr inbounds %struct.sock_common, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %skc_family to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %skc_family, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 44, i16 %12)
  %cmp15.not = icmp eq i16 %12, 44
  br i1 %cmp15.not, label %if.end18, label %if.then17

if.then17:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  %file = getelementptr inbounds %struct.socket, ptr %call, i32 0, i32 3
  %13 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %file, align 4
  call void @fput(ptr noundef %14) #8
  br label %cleanup

if.end18:                                         ; preds = %if.end14
  %arrayidx = getelementptr %struct.xsk_map, ptr %map, i32 0, i32 2, i32 %1
  %call.i = call ptr @bpf_map_kzalloc(ptr noundef %map, i32 noundef 16, i32 noundef 10784) #8
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end18.if.then22_crit_edge, label %xsk_map_node_alloc.exit

if.end18.if.then22_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then22

xsk_map_node_alloc.exit:                          ; preds = %if.end18
  call void @bpf_map_inc(ptr noundef %map) #8
  %map4.i = getelementptr inbounds %struct.xsk_map_node, ptr %call.i, i32 0, i32 1
  %15 = ptrtoint ptr %map4.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %map, ptr %map4.i, align 4
  %map_entry5.i = getelementptr inbounds %struct.xsk_map_node, ptr %call.i, i32 0, i32 2
  %16 = ptrtoint ptr %map_entry5.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %arrayidx, ptr %map_entry5.i, align 4
  %cmp.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %xsk_map_node_alloc.exit.if.then22_crit_edge, label %if.end25

xsk_map_node_alloc.exit.if.then22_crit_edge:      ; preds = %xsk_map_node_alloc.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then22

if.then22:                                        ; preds = %xsk_map_node_alloc.exit.if.then22_crit_edge, %if.end18.if.then22_crit_edge
  %retval.0.i141 = phi ptr [ %call.i, %xsk_map_node_alloc.exit.if.then22_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end18.if.then22_crit_edge ]
  %file23 = getelementptr inbounds %struct.socket, ptr %call, i32 0, i32 3
  %17 = ptrtoint ptr %file23 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %file23, align 4
  call void @fput(ptr noundef %18) #8
  %19 = ptrtoint ptr %retval.0.i141 to i32
  br label %cleanup

if.end25:                                         ; preds = %xsk_map_node_alloc.exit
  %lock = getelementptr inbounds %struct.xsk_map, ptr %map, i32 0, i32 1
  call void @_raw_spin_lock_bh(ptr noundef %lock) #8
  %dep_map = getelementptr inbounds %struct.xsk_map, ptr %map, i32 0, i32 1, i32 0, i32 0, i32 4
  %call.i138 = call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i138)
  %tobool28.not = icmp eq i32 %call.i138, 0
  br i1 %tobool28.not, label %land.lhs.true, label %if.end25.do.end_crit_edge

if.end25.do.end_crit_edge:                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.lhs.true:                                    ; preds = %if.end25
  %call29 = call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true31

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.lhs.true31:                                  ; preds = %land.lhs.true
  %.b136 = load i1, ptr @xsk_map_update_elem.__warned, align 1
  br i1 %.b136, label %land.lhs.true31.do.end_crit_edge, label %if.then33

land.lhs.true31.do.end_crit_edge:                 ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.then33:                                        ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @xsk_map_update_elem.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 187, ptr noundef nonnull @.str.4) #8
  br label %do.end

do.end:                                           ; preds = %if.then33, %land.lhs.true31.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %if.end25.do.end_crit_edge
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx, align 4
  %cmp36 = icmp eq ptr %21, %10
  br i1 %cmp36, label %if.then38, label %if.else

if.then38:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %err, align 4
  br label %out

if.else:                                          ; preds = %do.end
  %tobool39.not = icmp eq ptr %21, null
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %map_flags)
  %cmp41 = icmp ne i64 %map_flags, 1
  %23 = or i1 %cmp41, %tobool39.not
  br i1 %23, label %if.else44, label %if.then43

if.then43:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -17, ptr %err, align 4
  br label %out

if.else44:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp8(i64 2, i64 %map_flags)
  %cmp47 = icmp eq i64 %map_flags, 2
  %or.cond137 = and i1 %cmp47, %tobool39.not
  br i1 %or.cond137, label %if.then49, label %if.end52

if.then49:                                        ; preds = %if.else44
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -2, ptr %err, align 4
  br label %out

if.end52:                                         ; preds = %if.else44
  %map_list_lock.i = getelementptr inbounds %struct.xdp_sock, ptr %10, i32 0, i32 17
  call void @_raw_spin_lock_bh(ptr noundef %map_list_lock.i) #8
  %map_list.i = getelementptr inbounds %struct.xdp_sock, ptr %10, i32 0, i32 16
  %prev.i.i = getelementptr inbounds %struct.xdp_sock, ptr %10, i32 0, i32 16, i32 1
  %26 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call.i, ptr noundef %27, ptr noundef %map_list.i) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end52.xsk_map_sock_add.exit_crit_edge

if.end52.xsk_map_sock_add.exit_crit_edge:         ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  br label %xsk_map_sock_add.exit

if.end.i.i.i:                                     ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call.i, ptr %prev.i.i, align 4
  %29 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %map_list.i, ptr %call.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call.i, i32 0, i32 1
  %30 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %27, ptr %prev3.i.i.i, align 4
  %31 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %call.i, ptr %27, align 4
  br label %xsk_map_sock_add.exit

xsk_map_sock_add.exit:                            ; preds = %if.end.i.i.i, %if.end52.xsk_map_sock_add.exit_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %map_list_lock.i) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !29
  %32 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %10, ptr %arrayidx, align 4
  br i1 %tobool39.not, label %xsk_map_sock_add.exit.if.end94_crit_edge, label %if.then93

xsk_map_sock_add.exit.if.end94_crit_edge:         ; preds = %xsk_map_sock_add.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end94

if.then93:                                        ; preds = %xsk_map_sock_add.exit
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @xsk_map_sock_delete(ptr noundef nonnull %21, ptr noundef %arrayidx)
  br label %if.end94

if.end94:                                         ; preds = %if.then93, %xsk_map_sock_add.exit.if.end94_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %lock) #8
  %file96 = getelementptr inbounds %struct.socket, ptr %call, i32 0, i32 3
  %33 = ptrtoint ptr %file96 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %file96, align 4
  call void @fput(ptr noundef %34) #8
  br label %cleanup

out:                                              ; preds = %if.then49, %if.then43, %if.then38
  call void @_raw_spin_unlock_bh(ptr noundef %lock) #8
  %file98 = getelementptr inbounds %struct.socket, ptr %call, i32 0, i32 3
  %35 = ptrtoint ptr %file98 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %file98, align 4
  call void @fput(ptr noundef %36) #8
  %37 = ptrtoint ptr %map4.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %map4.i, align 4
  call void @bpf_map_put(ptr noundef %38) #8
  call void @kfree(ptr noundef nonnull %call.i) #8
  %39 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %err, align 4
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end94, %if.then22, %if.then17, %if.then13, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %if.then17 ], [ %19, %if.then22 ], [ %40, %out ], [ 0, %if.end94 ], [ %8, %if.then13 ], [ -22, %entry.cleanup_crit_edge ], [ -7, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xsk_map_delete_elem(ptr noundef %map, ptr nocapture noundef readonly %key) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %key, align 4
  %max_entries = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 6
  %2 = ptrtoint ptr %max_entries to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_entries, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.not = icmp ult i32 %1, %3
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.xsk_map, ptr %map, i32 0, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #8
  %arrayidx = getelementptr %struct.xsk_map, ptr %map, i32 0, i32 2, i32 %1
  %call.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !30
  tail call void @llvm.prefetch.p0(ptr %arrayidx, i32 1, i32 3, i32 1) #8
  %4 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %arrayidx) #8, !srcloc !31
  %asmresult.i = extractvalue { i32, i32 } %4, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i)
  %tobool.not = icmp eq i32 %asmresult.i, 0
  br i1 %tobool.not, label %if.end.if.end18_crit_edge, label %if.then17

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

if.then17:                                        ; preds = %if.end
  %5 = inttoptr i32 %asmresult.i to ptr
  %map_list_lock.i = getelementptr inbounds %struct.xdp_sock, ptr %5, i32 0, i32 17
  tail call void @_raw_spin_lock_bh(ptr noundef %map_list_lock.i) #8
  %map_list.i = getelementptr inbounds %struct.xdp_sock, ptr %5, i32 0, i32 16
  %6 = ptrtoint ptr %map_list.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %map_list.i, align 8
  %cmp.not26.i = icmp eq ptr %7, %map_list.i
  br i1 %cmp.not26.i, label %if.then17.xsk_map_sock_delete.exit_crit_edge, label %if.then17.for.body.i_crit_edge

if.then17.for.body.i_crit_edge:                   ; preds = %if.then17
  br label %for.body.i

if.then17.xsk_map_sock_delete.exit_crit_edge:     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #10
  br label %xsk_map_sock_delete.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then17.for.body.i_crit_edge
  %n.027.i = phi ptr [ %tmp.028.i, %for.inc.i.for.body.i_crit_edge ], [ %7, %if.then17.for.body.i_crit_edge ]
  %8 = ptrtoint ptr %n.027.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %tmp.028.i = load ptr, ptr %n.027.i, align 4
  %map_entry8.i = getelementptr inbounds %struct.xsk_map_node, ptr %n.027.i, i32 0, i32 2
  %9 = ptrtoint ptr %map_entry8.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %map_entry8.i, align 4
  %cmp9.i = icmp eq ptr %10, %arrayidx
  br i1 %cmp9.i, label %if.then.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %n.027.i) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.list_del.exit.i_crit_edge

if.then.i.list_del.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %n.027.i, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev.i.i.i, align 4
  %13 = ptrtoint ptr %n.027.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %n.027.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev1.i.i.i.i, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %14, ptr %12, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.then.i.list_del.exit.i_crit_edge
  %17 = ptrtoint ptr %n.027.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 256 to ptr), ptr %n.027.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %n.027.i, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %map.i.i = getelementptr inbounds %struct.xsk_map_node, ptr %n.027.i, i32 0, i32 1
  %19 = ptrtoint ptr %map.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %map.i.i, align 4
  tail call void @bpf_map_put(ptr noundef %20) #8
  tail call void @kfree(ptr noundef %n.027.i) #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %list_del.exit.i, %for.body.i.for.inc.i_crit_edge
  %cmp.not.i = icmp eq ptr %tmp.028.i, %map_list.i
  br i1 %cmp.not.i, label %for.inc.i.xsk_map_sock_delete.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.xsk_map_sock_delete.exit_crit_edge:     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %xsk_map_sock_delete.exit

xsk_map_sock_delete.exit:                         ; preds = %for.inc.i.xsk_map_sock_delete.exit_crit_edge, %if.then17.xsk_map_sock_delete.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %map_list_lock.i) #8
  br label %if.end18

if.end18:                                         ; preds = %xsk_map_sock_delete.exit, %if.end.if.end18_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end18 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @xsk_map_gen_lookup(ptr nocapture noundef readonly %map, ptr noundef writeonly %insn_buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %incdec.ptr = getelementptr %struct.bpf_insn, ptr %insn_buf, i32 1
  %0 = ptrtoint ptr %insn_buf to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 97, ptr %insn_buf, align 4
  %.compoundliteral.sroa.2.0..sroa_idx = getelementptr inbounds i8, ptr %insn_buf, i32 1
  %1 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 2, ptr %.compoundliteral.sroa.2.0..sroa_idx, align 1
  %.compoundliteral.sroa.6.0..sroa_idx = getelementptr inbounds i8, ptr %insn_buf, i32 2
  %2 = ptrtoint ptr %.compoundliteral.sroa.6.0..sroa_idx to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 0, ptr %.compoundliteral.sroa.6.0..sroa_idx, align 2
  %.compoundliteral.sroa.7.0..sroa_idx = getelementptr inbounds i8, ptr %insn_buf, i32 4
  %3 = ptrtoint ptr %.compoundliteral.sroa.7.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %.compoundliteral.sroa.7.0..sroa_idx, align 4
  %incdec.ptr4 = getelementptr %struct.bpf_insn, ptr %insn_buf, i32 2
  %max_entries = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 6
  %4 = ptrtoint ptr %max_entries to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_entries, align 8
  %6 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 53, ptr %incdec.ptr, align 4
  %.compoundliteral5.sroa.2.0..sroa_idx = getelementptr %struct.bpf_insn, ptr %insn_buf, i32 1, i32 1
  %7 = ptrtoint ptr %.compoundliteral5.sroa.2.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %.compoundliteral5.sroa.2.0..sroa_idx, align 1
  %.compoundliteral5.sroa.6.0..sroa_idx = getelementptr %struct.bpf_insn, ptr %insn_buf, i32 1, i32 2
  %8 = ptrtoint ptr %.compoundliteral5.sroa.6.0..sroa_idx to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 5, ptr %.compoundliteral5.sroa.6.0..sroa_idx, align 2
  %.compoundliteral5.sroa.7.0..sroa_idx = getelementptr %struct.bpf_insn, ptr %insn_buf, i32 1, i32 3
  %9 = ptrtoint ptr %.compoundliteral5.sroa.7.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %5, ptr %.compoundliteral5.sroa.7.0..sroa_idx, align 4
  %incdec.ptr17 = getelementptr %struct.bpf_insn, ptr %insn_buf, i32 3
  %10 = ptrtoint ptr %incdec.ptr4 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 103, ptr %incdec.ptr4, align 4
  %.compoundliteral18.sroa.2.0..sroa_idx = getelementptr %struct.bpf_insn, ptr %insn_buf, i32 2, i32 1
  %11 = ptrtoint ptr %.compoundliteral18.sroa.2.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %.compoundliteral18.sroa.2.0..sroa_idx, align 1
  %.compoundliteral18.sroa.6.0..sroa_idx = getelementptr %struct.bpf_insn, ptr %insn_buf, i32 2, i32 2
  %12 = ptrtoint ptr %.compoundliteral18.sroa.6.0..sroa_idx to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 0, ptr %.compoundliteral18.sroa.6.0..sroa_idx, align 2
  %.compoundliteral18.sroa.7.0..sroa_idx = getelementptr %struct.bpf_insn, ptr %insn_buf, i32 2, i32 3
  %13 = ptrtoint ptr %.compoundliteral18.sroa.7.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 2, ptr %.compoundliteral18.sroa.7.0..sroa_idx, align 4
  %incdec.ptr30 = getelementptr %struct.bpf_insn, ptr %insn_buf, i32 4
  %14 = ptrtoint ptr %incdec.ptr17 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 7, ptr %incdec.ptr17, align 4
  %.compoundliteral31.sroa.2.0..sroa_idx = getelementptr %struct.bpf_insn, ptr %insn_buf, i32 3, i32 1
  %15 = ptrtoint ptr %.compoundliteral31.sroa.2.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 16, ptr %.compoundliteral31.sroa.2.0..sroa_idx, align 1
  %.compoundliteral31.sroa.6.0..sroa_idx = getelementptr %struct.bpf_insn, ptr %insn_buf, i32 3, i32 2
  %16 = ptrtoint ptr %.compoundliteral31.sroa.6.0..sroa_idx to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 0, ptr %.compoundliteral31.sroa.6.0..sroa_idx, align 2
  %.compoundliteral31.sroa.7.0..sroa_idx = getelementptr %struct.bpf_insn, ptr %insn_buf, i32 3, i32 3
  %17 = ptrtoint ptr %.compoundliteral31.sroa.7.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 428, ptr %.compoundliteral31.sroa.7.0..sroa_idx, align 4
  %18 = ptrtoint ptr %incdec.ptr30 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 15, ptr %incdec.ptr30, align 4
  %.compoundliteral44.sroa.2.0..sroa_idx = getelementptr %struct.bpf_insn, ptr %insn_buf, i32 4, i32 1
  %19 = ptrtoint ptr %.compoundliteral44.sroa.2.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %.compoundliteral44.sroa.2.0..sroa_idx, align 1
  %.compoundliteral44.sroa.6.0..sroa_idx = getelementptr %struct.bpf_insn, ptr %insn_buf, i32 4, i32 2
  %20 = ptrtoint ptr %.compoundliteral44.sroa.6.0..sroa_idx to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 0, ptr %.compoundliteral44.sroa.6.0..sroa_idx, align 2
  %.compoundliteral44.sroa.7.0..sroa_idx = getelementptr %struct.bpf_insn, ptr %insn_buf, i32 4, i32 3
  %21 = ptrtoint ptr %.compoundliteral44.sroa.7.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %.compoundliteral44.sroa.7.0..sroa_idx, align 4
  %incdec.ptr43 = getelementptr %struct.bpf_insn, ptr %insn_buf, i32 5
  %incdec.ptr56 = getelementptr %struct.bpf_insn, ptr %insn_buf, i32 6
  %22 = ptrtoint ptr %incdec.ptr43 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 97, ptr %incdec.ptr43, align 4
  %.compoundliteral57.sroa.2.0..sroa_idx = getelementptr %struct.bpf_insn, ptr %insn_buf, i32 5, i32 1
  %23 = ptrtoint ptr %.compoundliteral57.sroa.2.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %.compoundliteral57.sroa.2.0..sroa_idx, align 1
  %.compoundliteral57.sroa.6.0..sroa_idx = getelementptr %struct.bpf_insn, ptr %insn_buf, i32 5, i32 2
  %24 = ptrtoint ptr %.compoundliteral57.sroa.6.0..sroa_idx to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 0, ptr %.compoundliteral57.sroa.6.0..sroa_idx, align 2
  %.compoundliteral57.sroa.7.0..sroa_idx = getelementptr %struct.bpf_insn, ptr %insn_buf, i32 5, i32 3
  %25 = ptrtoint ptr %.compoundliteral57.sroa.7.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %.compoundliteral57.sroa.7.0..sroa_idx, align 4
  %incdec.ptr71 = getelementptr %struct.bpf_insn, ptr %insn_buf, i32 7
  %26 = ptrtoint ptr %incdec.ptr56 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 5, ptr %incdec.ptr56, align 4
  %.compoundliteral72.sroa.2.0..sroa_idx = getelementptr %struct.bpf_insn, ptr %insn_buf, i32 6, i32 1
  %27 = ptrtoint ptr %.compoundliteral72.sroa.2.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %.compoundliteral72.sroa.2.0..sroa_idx, align 1
  %.compoundliteral72.sroa.6.0..sroa_idx = getelementptr %struct.bpf_insn, ptr %insn_buf, i32 6, i32 2
  %28 = ptrtoint ptr %.compoundliteral72.sroa.6.0..sroa_idx to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 1, ptr %.compoundliteral72.sroa.6.0..sroa_idx, align 2
  %.compoundliteral72.sroa.7.0..sroa_idx = getelementptr %struct.bpf_insn, ptr %insn_buf, i32 6, i32 3
  %29 = ptrtoint ptr %.compoundliteral72.sroa.7.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %.compoundliteral72.sroa.7.0..sroa_idx, align 4
  %30 = ptrtoint ptr %incdec.ptr71 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 -73, ptr %incdec.ptr71, align 4
  %.compoundliteral85.sroa.2.0..sroa_idx = getelementptr %struct.bpf_insn, ptr %insn_buf, i32 7, i32 1
  %31 = ptrtoint ptr %.compoundliteral85.sroa.2.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %.compoundliteral85.sroa.2.0..sroa_idx, align 1
  %.compoundliteral85.sroa.6.0..sroa_idx = getelementptr %struct.bpf_insn, ptr %insn_buf, i32 7, i32 2
  %32 = ptrtoint ptr %.compoundliteral85.sroa.6.0..sroa_idx to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 0, ptr %.compoundliteral85.sroa.6.0..sroa_idx, align 2
  %.compoundliteral85.sroa.7.0..sroa_idx = getelementptr %struct.bpf_insn, ptr %insn_buf, i32 7, i32 3
  %33 = ptrtoint ptr %.compoundliteral85.sroa.7.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %.compoundliteral85.sroa.7.0..sroa_idx, align 4
  ret i32 8
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @map_check_no_btf(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xsk_map_redirect(ptr noundef %map, i32 noundef %ifindex, i64 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !16) #8
  %and.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %5, ptrtoint (ptr @bpf_redirect_info to i32)
  %6 = inttoptr i32 %add.i to ptr
  call void @__sanitizer_cov_trace_const_cmp8(i64 4, i64 %flags)
  %tobool.not.i = icmp ult i64 %flags, 4
  br i1 %tobool.not.i, label %if.end.i, label %entry.__bpf_xdp_redirect_map.exit_crit_edge, !prof !28

entry.__bpf_xdp_redirect_map.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %__bpf_xdp_redirect_map.exit

if.end.i:                                         ; preds = %entry
  %max_entries.i.i = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 6
  %7 = ptrtoint ptr %max_entries.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %max_entries.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %ifindex)
  %cmp.not.i.i = icmp ugt i32 %8, %ifindex
  br i1 %cmp.not.i.i, label %if.end.i.i, label %__xsk_map_lookup_elem.exit.thread.i

__xsk_map_lookup_elem.exit.thread.i:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %tgt_value2.i = getelementptr inbounds %struct.bpf_redirect_info, ptr %6, i32 0, i32 2
  %9 = ptrtoint ptr %tgt_value2.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %tgt_value2.i, align 4
  br label %land.lhs.true.i

if.end.i.i:                                       ; preds = %if.end.i
  %arrayidx.i.i = getelementptr %struct.xsk_map, ptr %map, i32 0, i32 2, i32 %ifindex
  %10 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %arrayidx.i.i, align 4
  %call.i.i = tail call i32 @rcu_read_lock_bh_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.i, label %if.end.i.i.__xsk_map_lookup_elem.exit.i_crit_edge

if.end.i.i.__xsk_map_lookup_elem.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__xsk_map_lookup_elem.exit.i

lor.lhs.false.i.i:                                ; preds = %if.end.i.i
  %call3.i.i = tail call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool4.not.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool4.not.i.i, label %land.lhs.true.i.i, label %lor.lhs.false.i.i.__xsk_map_lookup_elem.exit.i_crit_edge

lor.lhs.false.i.i.__xsk_map_lookup_elem.exit.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__xsk_map_lookup_elem.exit.i

land.lhs.true.i.i:                                ; preds = %lor.lhs.false.i.i
  %call5.i.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool6.not.i.i = icmp eq i32 %call5.i.i, 0
  br i1 %tobool6.not.i.i, label %land.lhs.true.i.i.__xsk_map_lookup_elem.exit.i_crit_edge, label %land.lhs.true7.i.i

land.lhs.true.i.i.__xsk_map_lookup_elem.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__xsk_map_lookup_elem.exit.i

land.lhs.true7.i.i:                               ; preds = %land.lhs.true.i.i
  %.b16.i.i = load i1, ptr @__xsk_map_lookup_elem.__warned, align 1
  br i1 %.b16.i.i, label %land.lhs.true7.i.i.__xsk_map_lookup_elem.exit.i_crit_edge, label %if.then9.i.i

land.lhs.true7.i.i.__xsk_map_lookup_elem.exit.i_crit_edge: ; preds = %land.lhs.true7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__xsk_map_lookup_elem.exit.i

if.then9.i.i:                                     ; preds = %land.lhs.true7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @__xsk_map_lookup_elem.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 139, ptr noundef nonnull @.str.3) #8
  br label %__xsk_map_lookup_elem.exit.i

__xsk_map_lookup_elem.exit.i:                     ; preds = %if.then9.i.i, %land.lhs.true7.i.i.__xsk_map_lookup_elem.exit.i_crit_edge, %land.lhs.true.i.i.__xsk_map_lookup_elem.exit.i_crit_edge, %lor.lhs.false.i.i.__xsk_map_lookup_elem.exit.i_crit_edge, %if.end.i.i.__xsk_map_lookup_elem.exit.i_crit_edge
  %tgt_value.i = getelementptr inbounds %struct.bpf_redirect_info, ptr %6, i32 0, i32 2
  %12 = ptrtoint ptr %tgt_value.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %tgt_value.i, align 4
  %tobool6.not.i = icmp eq ptr %11, null
  br i1 %tobool6.not.i, label %__xsk_map_lookup_elem.exit.i.land.lhs.true.i_crit_edge, label %if.end19.i, !prof !27

__xsk_map_lookup_elem.exit.i.land.lhs.true.i_crit_edge: ; preds = %__xsk_map_lookup_elem.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %__xsk_map_lookup_elem.exit.i.land.lhs.true.i_crit_edge, %__xsk_map_lookup_elem.exit.thread.i
  %and15.i = and i64 %flags, 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and15.i)
  %tobool16.not.i = icmp eq i64 %and15.i, 0
  br i1 %tobool16.not.i, label %if.then17.i, label %if.end19.thread.i

if.end19.thread.i:                                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %tgt_index5.i = getelementptr inbounds %struct.bpf_redirect_info, ptr %6, i32 0, i32 1
  %13 = ptrtoint ptr %tgt_index5.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %ifindex, ptr %tgt_index5.i, align 4
  %id6.i = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 11
  %14 = ptrtoint ptr %id6.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %id6.i, align 4
  %map_id207.i = getelementptr inbounds %struct.bpf_redirect_info, ptr %6, i32 0, i32 4
  %16 = ptrtoint ptr %map_id207.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %map_id207.i, align 4
  %map_type218.i = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 3
  %17 = ptrtoint ptr %map_type218.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %map_type218.i, align 4
  %map_type229.i = getelementptr inbounds %struct.bpf_redirect_info, ptr %6, i32 0, i32 5
  %19 = ptrtoint ptr %map_type229.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %map_type229.i, align 4
  br label %do.body30.i

if.then17.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %map_id.i = getelementptr inbounds %struct.bpf_redirect_info, ptr %6, i32 0, i32 4
  %20 = ptrtoint ptr %map_id.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 2147483647, ptr %map_id.i, align 4
  %map_type.i = getelementptr inbounds %struct.bpf_redirect_info, ptr %6, i32 0, i32 5
  %21 = ptrtoint ptr %map_type.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %map_type.i, align 4
  %22 = trunc i64 %flags to i32
  br label %__bpf_xdp_redirect_map.exit

if.end19.i:                                       ; preds = %__xsk_map_lookup_elem.exit.i
  %.pre.i = and i64 %flags, 8
  %tgt_index.i = getelementptr inbounds %struct.bpf_redirect_info, ptr %6, i32 0, i32 1
  %23 = ptrtoint ptr %tgt_index.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %ifindex, ptr %tgt_index.i, align 4
  %id.i = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 11
  %24 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %id.i, align 4
  %map_id20.i = getelementptr inbounds %struct.bpf_redirect_info, ptr %6, i32 0, i32 4
  %26 = ptrtoint ptr %map_id20.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %map_id20.i, align 4
  %map_type21.i = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 3
  %27 = ptrtoint ptr %map_type21.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %map_type21.i, align 4
  %map_type22.i = getelementptr inbounds %struct.bpf_redirect_info, ptr %6, i32 0, i32 5
  %29 = ptrtoint ptr %map_type22.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %map_type22.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %.pre.i)
  %tobool24.not.i = icmp eq i64 %.pre.i, 0
  br i1 %tobool24.not.i, label %do.body42.i, label %if.end19.i.do.body30.i_crit_edge

if.end19.i.do.body30.i_crit_edge:                 ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body30.i

do.body30.i:                                      ; preds = %if.end19.i.do.body30.i_crit_edge, %if.end19.thread.i
  %map31.i = getelementptr inbounds %struct.bpf_redirect_info, ptr %6, i32 0, i32 3
  %30 = ptrtoint ptr %map31.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %map, ptr %map31.i, align 4
  %conv36.i = trunc i64 %flags to i32
  br label %if.end49.i

do.body42.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #10
  %map43.i = getelementptr inbounds %struct.bpf_redirect_info, ptr %6, i32 0, i32 3
  %31 = ptrtoint ptr %map43.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr null, ptr %map43.i, align 4
  br label %if.end49.i

if.end49.i:                                       ; preds = %do.body42.i, %do.body30.i
  %storemerge.i = phi i32 [ 0, %do.body42.i ], [ %conv36.i, %do.body30.i ]
  %32 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %storemerge.i, ptr %6, align 4
  br label %__bpf_xdp_redirect_map.exit

__bpf_xdp_redirect_map.exit:                      ; preds = %if.end49.i, %if.then17.i, %entry.__bpf_xdp_redirect_map.exit_crit_edge
  %retval.0.i = phi i32 [ 4, %if.end49.i ], [ %22, %if.then17.i ], [ 0, %entry.__bpf_xdp_redirect_map.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @xsk_map_meta_equal(ptr noundef %meta0, ptr noundef %meta1) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %max_entries = getelementptr inbounds %struct.bpf_map, ptr %meta0, i32 0, i32 6
  %0 = ptrtoint ptr %max_entries to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_entries, align 8
  %max_entries1 = getelementptr inbounds %struct.bpf_map, ptr %meta1, i32 0, i32 6
  %2 = ptrtoint ptr %max_entries1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_entries1, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp = icmp eq i32 %1, %3
  br i1 %cmp, label %land.rhs, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call zeroext i1 @bpf_map_meta_equal(ptr noundef %meta0, ptr noundef %meta1) #8
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %4 = phi i1 [ false, %entry.land.end_crit_edge ], [ %call, %land.rhs ]
  ret i1 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_map_put(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bpf_map_area_alloc(i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_map_init_from_attr(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_net() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_map_area_free(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_bh_held() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sockfd_lookup(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bpf_map_kzalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_map_inc(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @bpf_map_meta_equal(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !12, !13, !15}
!llvm.named.register.sp = !{!16}
!llvm.module.flags = !{!17, !18, !19, !20, !21, !22, !23, !24}
!llvm.ident = !{!25}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/xdp/xskmap.c", i32 269, i32 18}
!2 = !{ptr @xsk_map_ops, !3, !"xsk_map_ops", i1 false, i1 false}
!3 = !{!"../net/xdp/xskmap.c", i32 258, i32 26}
!4 = !{ptr @xsk_map_btf_id, !5, !"xsk_map_btf_id", i1 false, i1 false}
!5 = !{!"../net/xdp/xskmap.c", i32 257, i32 12}
!6 = !{ptr @xsk_map_alloc.__key, !7, !"__key", i1 false, i1 false}
!7 = !{!"../net/xdp/xskmap.c", i32 82, i32 2}
!8 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!9 = distinct !{null, !10, !"__warned", i1 false, i1 false}
!10 = !{!"../net/xdp/xskmap.c", i32 139, i32 9}
!11 = !{ptr @.str.2, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!13 = distinct !{null, !14, !"__warned", i1 false, i1 false}
!14 = !{!"../net/xdp/xskmap.c", i32 187, i32 11}
!15 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!16 = !{!"sp"}
!17 = !{i32 1, !"wchar_size", i32 2}
!18 = !{i32 1, !"min_enum_size", i32 4}
!19 = !{i32 8, !"branch-target-enforcement", i32 0}
!20 = !{i32 8, !"sign-return-address", i32 0}
!21 = !{i32 8, !"sign-return-address-all", i32 0}
!22 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!23 = !{i32 7, !"uwtable", i32 1}
!24 = !{i32 7, !"frame-pointer", i32 2}
!25 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!26 = !{!"auto-init"}
!27 = !{!"branch_weights", i32 1, i32 2000}
!28 = !{!"branch_weights", i32 2000, i32 1}
!29 = !{i64 2157837991}
!30 = !{i64 2157845700}
!31 = !{i64 1195797, i64 1195814, i64 1195838, i64 1195864, i64 1195882}
!32 = !{i64 2157845973}
