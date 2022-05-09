; ModuleID = '/llk/IR_all_yes/kernel/bpf/reuseport_array.c_pt.bc'
source_filename = "../kernel/bpf/reuseport_array.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.8 }
%union.anon.8 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.bpf_map_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.156, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.157, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.158, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.sock_common = type { %union.anon, %union.anon.0, %union.anon.1, i16, i8, i8, i32, %union.anon.3, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.152, [0 x i32], %union.anon.153, i16, i16, %union.anon.154, %struct.refcount_struct, [0 x i32], %union.anon.155 }
%union.anon = type { i64 }
%union.anon.0 = type { i32 }
%union.anon.1 = type { i32 }
%union.anon.3 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.42 }
%union.anon.42 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.152 = type { i32 }
%union.anon.153 = type { %struct.hlist_node }
%union.anon.154 = type { i32 }
%union.anon.155 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.anon.156 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.157 = type { ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.158 = type { ptr }
%struct.sk_buff_head = type { %union.anon.66, i32, %struct.spinlock }
%union.anon.66 = type { %struct.anon.67 }
%struct.anon.67 = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.page_frag = type { ptr, i16, i16 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.callback_head = type { ptr, ptr }
%struct.bpf_map = type { ptr, ptr, ptr, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, [16 x i8], i8, i8, [30 x i8], %struct.atomic64_t, %struct.atomic64_t, %struct.work_struct, %struct.mutex, %struct.atomic64_t, [96 x i8] }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.reuseport_array = type { %struct.bpf_map, [0 x ptr] }
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [104 x i8], %struct.socket_wq }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [60 x i8] }
%struct.anon.73 = type { i32, i32, i32, i32, i32, i32, i32, [16 x i8], i32, i32, i32, i32, i32, i64 }

@reuseport_lock = external dso_local global %struct.spinlock, align 4
@bpf_fd_reuseport_array_update_elem.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"kernel/bpf/reuseport_array.c\00", [35 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@bpf_fd_reuseport_array_update_elem.__warned.2 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"reuseport_array\00", [16 x i8] zeroinitializer }, align 32
@reuseport_array_map_btf_id = internal global { i32, [28 x i8] } zeroinitializer, align 32
@reuseport_array_ops = dso_local constant { %struct.bpf_map_ops, [60 x i8] } { %struct.bpf_map_ops { ptr @reuseport_array_alloc_check, ptr @reuseport_array_alloc, ptr null, ptr @reuseport_array_free, ptr @reuseport_array_get_next_key, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @reuseport_array_lookup_elem, ptr null, ptr @reuseport_array_delete_elem, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bpf_map_meta_equal, ptr null, ptr null, ptr @.str.3, ptr @reuseport_array_map_btf_id, ptr null }, [60 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@reuseport_array_lookup_elem.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.6 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.7 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@reuseport_array_free.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@reuseport_array_delete_elem.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 6, i64 17]
@__sancov_gen_cov_switch_values.8 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.9 = internal global [4 x i64] [i64 2, i64 16, i64 6, i64 17]
@__sancov_gen_cov_switch_values.10 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.11 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 8]
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 290, i32 8 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 349, i32 18 }
@___asan_gen_.21 = private unnamed_addr constant [27 x i8] c"reuseport_array_map_btf_id\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 340, i32 12 }
@___asan_gen_.24 = private unnamed_addr constant [20 x i8] c"reuseport_array_ops\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 341, i32 26 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 695, i32 2 }
@___asan_gen_.34 = private constant [32 x i8] c"../kernel/bpf/reuseport_array.c\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 60, i32 9 }
@___asan_gen_.36 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.37 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 723, i32 2 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.3, ptr @reuseport_array_map_btf_id, ptr @reuseport_array_ops, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reuseport_array_map_btf_id to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reuseport_array_ops to i32), i32 164, i32 224, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bpf_sk_reuseport_detach(ptr noundef %sk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sk_callback_lock = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 50
  tail call void @_raw_write_lock_bh(ptr noundef %sk_callback_lock) #7
  %sk_user_data1 = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 72
  %0 = ptrtoint ptr %sk_user_data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk_user_data1, align 4
  %2 = ptrtoint ptr %1 to i32
  %and = and i32 %2, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %and2 = and i32 %2, -4
  %3 = inttoptr i32 %and2 to ptr
  %4 = ptrtoint ptr %sk_user_data1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr null, ptr %sk_user_data1, align 4
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr null, ptr %3, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @_raw_write_unlock_bh(ptr noundef %sk_callback_lock) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bpf_fd_reuseport_array_lookup_elem(ptr noundef %map, ptr nocapture noundef readonly %key, ptr nocapture noundef writeonly %value) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %value_size = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 5
  %0 = ptrtoint ptr %value_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %value_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %1)
  %cmp.not = icmp eq i32 %1, 8
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = tail call i32 @llvm.read_register.i32(metadata !26) #7
  %and.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !36
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #7
  %call.i = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 696, ptr noundef nonnull @.str.5) #7
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %6 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %key, align 4
  %max_entries.i = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 6
  %8 = ptrtoint ptr %max_entries.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %max_entries.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp.not.i = icmp ult i32 %7, %9
  br i1 %cmp.not.i, label %if.end.i, label %rcu_read_lock.exit.if.end3_crit_edge, !prof !37

rcu_read_lock.exit.if.end3_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

if.end.i:                                         ; preds = %rcu_read_lock.exit
  %arrayidx.i = getelementptr %struct.reuseport_array, ptr %map, i32 0, i32 1, i32 %7
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %arrayidx.i, align 4
  %call4.i = tail call i32 @rcu_read_lock_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %land.lhs.true.i7, label %if.end.i.reuseport_array_lookup_elem.exit_crit_edge

if.end.i.reuseport_array_lookup_elem.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %reuseport_array_lookup_elem.exit

land.lhs.true.i7:                                 ; preds = %if.end.i
  %call6.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %land.lhs.true.i7.reuseport_array_lookup_elem.exit_crit_edge, label %land.lhs.true8.i

land.lhs.true.i7.reuseport_array_lookup_elem.exit_crit_edge: ; preds = %land.lhs.true.i7
  call void @__sanitizer_cov_trace_pc() #9
  br label %reuseport_array_lookup_elem.exit

land.lhs.true8.i:                                 ; preds = %land.lhs.true.i7
  %.b18.i = load i1, ptr @reuseport_array_lookup_elem.__warned, align 1
  br i1 %.b18.i, label %land.lhs.true8.i.reuseport_array_lookup_elem.exit_crit_edge, label %if.then10.i

land.lhs.true8.i.reuseport_array_lookup_elem.exit_crit_edge: ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %reuseport_array_lookup_elem.exit

if.then10.i:                                      ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @reuseport_array_lookup_elem.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 60, ptr noundef nonnull @.str.6) #7
  br label %reuseport_array_lookup_elem.exit

reuseport_array_lookup_elem.exit:                 ; preds = %if.then10.i, %land.lhs.true8.i.reuseport_array_lookup_elem.exit_crit_edge, %land.lhs.true.i7.reuseport_array_lookup_elem.exit_crit_edge, %if.end.i.reuseport_array_lookup_elem.exit_crit_edge
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %reuseport_array_lookup_elem.exit.if.end3_crit_edge, label %if.then1

reuseport_array_lookup_elem.exit.if.end3_crit_edge: ; preds = %reuseport_array_lookup_elem.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

if.then1:                                         ; preds = %reuseport_array_lookup_elem.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call2 = tail call i64 @__sock_gen_cookie(ptr noundef nonnull %11) #7
  %12 = ptrtoint ptr %value to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %call2, ptr %value, align 8
  br label %if.end3

if.end3:                                          ; preds = %if.then1, %reuseport_array_lookup_elem.exit.if.end3_crit_edge, %rcu_read_lock.exit.if.end3_crit_edge
  %err.0 = phi i32 [ 0, %if.then1 ], [ -2, %reuseport_array_lookup_elem.exit.if.end3_crit_edge ], [ -2, %rcu_read_lock.exit.if.end3_crit_edge ]
  %call.i8 = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i8, label %if.end3.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i11

if.end3.rcu_read_unlock.exit_crit_edge:           ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true.i11:                                ; preds = %if.end3
  %call1.i9 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i9)
  %tobool.not.i10 = icmp eq i32 %call1.i9, 0
  br i1 %tobool.not.i10, label %land.lhs.true.i11.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i13

land.lhs.true.i11.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i11
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true2.i13:                               ; preds = %land.lhs.true.i11
  %.b4.i12 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i12, label %land.lhs.true2.i13.rcu_read_unlock.exit_crit_edge, label %if.then.i14

land.lhs.true2.i13.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i13
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

if.then.i14:                                      ; preds = %land.lhs.true2.i13
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 724, ptr noundef nonnull @.str.7) #7
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i14, %land.lhs.true2.i13.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i11.rcu_read_unlock.exit_crit_edge, %if.end3.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !38
  %13 = tail call i32 @llvm.read_register.i32(metadata !26) #7
  %and.i.i.i.i.i15 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i.i.i15 to ptr
  %preempt_count.i.i.i.i16 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i.i.i16 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i.i.i16, align 4
  %sub.i.i.i = add i32 %16, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i16, align 4
  tail call void @rcu_read_unlock_strict() #7
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #7
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %rcu_read_unlock.exit ], [ -28, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @reuseport_array_lookup_elem(ptr noundef %map, ptr nocapture noundef readonly %key) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge, !prof !37

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr %struct.reuseport_array, ptr %map, i32 0, i32 1, i32 %1
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %arrayidx, align 4
  %call4 = tail call i32 @rcu_read_lock_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end
  %call6 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true8

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true8:                                   ; preds = %land.lhs.true
  %.b18 = load i1, ptr @reuseport_array_lookup_elem.__warned, align 1
  br i1 %.b18, label %land.lhs.true8.cleanup_crit_edge, label %if.then10

land.lhs.true8.cleanup_crit_edge:                 ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then10:                                        ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @reuseport_array_lookup_elem.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 60, ptr noundef nonnull @.str.6) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then10, %land.lhs.true8.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ %5, %if.then10 ], [ %5, %land.lhs.true8.cleanup_crit_edge ], [ %5, %land.lhs.true.cleanup_crit_edge ], [ %5, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__sock_gen_cookie(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bpf_fd_reuseport_array_update_elem(ptr noundef %map, ptr nocapture noundef readonly %key, ptr nocapture noundef readonly %value, i64 noundef %map_flags) local_unnamed_addr #0 align 64 {
entry:
  %err = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %key, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err) #7
  %2 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %err, align 4, !annotation !39
  call void @__sanitizer_cov_trace_const_cmp8(i64 2, i64 %map_flags)
  %cmp = icmp ugt i64 %map_flags, 2
  br i1 %cmp, label %entry.cleanup132_crit_edge, label %if.end

entry.cleanup132_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup132

if.end:                                           ; preds = %entry
  %max_entries = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 6
  %3 = ptrtoint ptr %max_entries to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %max_entries, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %4)
  %cmp1.not = icmp ult i32 %1, %4
  br i1 %cmp1.not, label %if.end3, label %if.end.cleanup132_crit_edge

if.end.cleanup132_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup132

if.end3:                                          ; preds = %if.end
  %value_size = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 5
  %5 = ptrtoint ptr %value_size to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %value_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %6)
  %cmp4 = icmp eq i32 %6, 8
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end3
  %7 = ptrtoint ptr %value to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %value, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 2147483647, i64 %8)
  %cmp6 = icmp ugt i64 %8, 2147483647
  %conv = trunc i64 %8 to i32
  br i1 %cmp6, label %if.then5.cleanup132_crit_edge, label %if.then5.if.end9_crit_edge

if.then5.if.end9_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then5.cleanup132_crit_edge:                    ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup132

if.else:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %value, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then5.if.end9_crit_edge
  %fd.1 = phi i32 [ %conv, %if.then5.if.end9_crit_edge ], [ %10, %if.else ]
  %call10 = call ptr @sockfd_lookup(i32 noundef %fd.1, ptr noundef nonnull %err) #7
  %tobool.not = icmp eq ptr %call10, null
  br i1 %tobool.not, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %err, align 4
  br label %cleanup132

if.end12:                                         ; preds = %if.end9
  %sk = getelementptr inbounds %struct.socket, ptr %call10, i32 0, i32 4
  %13 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sk, align 16
  %tobool13.not = icmp eq ptr %14, null
  br i1 %tobool13.not, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -22, ptr %err, align 4
  br label %put_file

if.end15:                                         ; preds = %if.end12
  %arrayidx = getelementptr %struct.reuseport_array, ptr %map, i32 0, i32 1, i32 %1
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %arrayidx, align 4
  %sk_reuseport_cb = getelementptr inbounds %struct.sock, ptr %14, i32 0, i32 83
  %18 = ptrtoint ptr %sk_reuseport_cb to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %sk_reuseport_cb, align 8
  %conv22 = trunc i64 %map_flags to i32
  %tobool.not.i = icmp eq ptr %17, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %conv22)
  %cmp.i = icmp ne i32 %conv22, 1
  %20 = or i1 %cmp.i, %tobool.not.i
  br i1 %20, label %if.end.i, label %if.end15.reuseport_array_update_check.exit.thread_crit_edge

if.end15.reuseport_array_update_check.exit.thread_crit_edge: ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %reuseport_array_update_check.exit.thread

if.end.i:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %conv22)
  %cmp3.i = icmp eq i32 %conv22, 2
  %or.cond1.i = and i1 %cmp3.i, %tobool.not.i
  br i1 %or.cond1.i, label %if.end.i.reuseport_array_update_check.exit.thread_crit_edge, label %if.end5.i

if.end.i.reuseport_array_update_check.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %reuseport_array_update_check.exit.thread

if.end5.i:                                        ; preds = %if.end.i
  %sk_protocol.i = getelementptr inbounds %struct.sock, ptr %14, i32 0, i32 46
  %21 = ptrtoint ptr %sk_protocol.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %sk_protocol.i, align 4
  %23 = zext i16 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values)
  switch i16 %22, label %if.end5.i.reuseport_array_update_check.exit.thread_crit_edge [
    i16 17, label %if.end5.i.if.end14.i_crit_edge
    i16 6, label %if.end5.i.if.end14.i_crit_edge210
  ]

if.end5.i.if.end14.i_crit_edge210:                ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14.i

if.end5.i.if.end14.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14.i

if.end5.i.reuseport_array_update_check.exit.thread_crit_edge: ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %reuseport_array_update_check.exit.thread

if.end14.i:                                       ; preds = %if.end5.i.if.end14.i_crit_edge, %if.end5.i.if.end14.i_crit_edge210
  %skc_family.i = getelementptr inbounds %struct.sock_common, ptr %14, i32 0, i32 3
  %24 = ptrtoint ptr %skc_family.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %skc_family.i, align 8
  %26 = zext i16 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.8)
  switch i16 %25, label %if.end14.i.reuseport_array_update_check.exit.thread_crit_edge [
    i16 2, label %if.end14.i.if.end25.i_crit_edge
    i16 10, label %if.end14.i.if.end25.i_crit_edge211
  ]

if.end14.i.if.end25.i_crit_edge211:               ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25.i

if.end14.i.if.end25.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25.i

if.end14.i.reuseport_array_update_check.exit.thread_crit_edge: ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %reuseport_array_update_check.exit.thread

if.end25.i:                                       ; preds = %if.end14.i.if.end25.i_crit_edge, %if.end14.i.if.end25.i_crit_edge211
  %sk_type.i = getelementptr inbounds %struct.sock, ptr %14, i32 0, i32 45
  %27 = ptrtoint ptr %sk_type.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %sk_type.i, align 2
  %.off.i = add i16 %28, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %.off.i)
  %switch.i = icmp ult i16 %.off.i, 2
  br i1 %switch.i, label %if.end35.i, label %if.end25.i.reuseport_array_update_check.exit.thread_crit_edge

if.end25.i.reuseport_array_update_check.exit.thread_crit_edge: ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %reuseport_array_update_check.exit.thread

if.end35.i:                                       ; preds = %if.end25.i
  %29 = getelementptr inbounds %struct.sock_common, ptr %14, i32 0, i32 13
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %29, align 4
  %32 = and i32 %31, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.i.not.i = icmp eq i32 %32, 0
  br i1 %tobool.i.not.i, label %if.end35.i.reuseport_array_update_check.exit.thread_crit_edge, label %lor.lhs.false.i

if.end35.i.reuseport_array_update_check.exit.thread_crit_edge: ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %reuseport_array_update_check.exit.thread

lor.lhs.false.i:                                  ; preds = %if.end35.i
  %pprev.i.i.i.i = getelementptr inbounds %struct.sock_common, ptr %14, i32 0, i32 15, i32 0, i32 1
  %33 = ptrtoint ptr %pprev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pprev.i.i.i.i, align 4
  %tobool.not.i.i.i.not.i = icmp eq ptr %34, null
  %tobool38.not.i = icmp eq ptr %19, null
  %or.cond2.i = or i1 %tobool38.not.i, %tobool.not.i.i.i.not.i
  br i1 %or.cond2.i, label %lor.lhs.false.i.reuseport_array_update_check.exit.thread_crit_edge, label %do.end.i

lor.lhs.false.i.reuseport_array_update_check.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %reuseport_array_update_check.exit.thread

do.end.i:                                         ; preds = %lor.lhs.false.i
  %sk_user_data.i = getelementptr inbounds %struct.sock, ptr %14, i32 0, i32 72
  %35 = ptrtoint ptr %sk_user_data.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile ptr, ptr %sk_user_data.i, align 4
  %tobool41.not.i = icmp eq ptr %36, null
  br i1 %tobool41.not.i, label %if.end26, label %do.end.i.reuseport_array_update_check.exit.thread_crit_edge

do.end.i.reuseport_array_update_check.exit.thread_crit_edge: ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %reuseport_array_update_check.exit.thread

reuseport_array_update_check.exit.thread:         ; preds = %do.end.i.reuseport_array_update_check.exit.thread_crit_edge, %lor.lhs.false.i.reuseport_array_update_check.exit.thread_crit_edge, %if.end35.i.reuseport_array_update_check.exit.thread_crit_edge, %if.end25.i.reuseport_array_update_check.exit.thread_crit_edge, %if.end14.i.reuseport_array_update_check.exit.thread_crit_edge, %if.end5.i.reuseport_array_update_check.exit.thread_crit_edge, %if.end.i.reuseport_array_update_check.exit.thread_crit_edge, %if.end15.reuseport_array_update_check.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -16, %do.end.i.reuseport_array_update_check.exit.thread_crit_edge ], [ -22, %if.end35.i.reuseport_array_update_check.exit.thread_crit_edge ], [ -22, %lor.lhs.false.i.reuseport_array_update_check.exit.thread_crit_edge ], [ -524, %if.end25.i.reuseport_array_update_check.exit.thread_crit_edge ], [ -524, %if.end14.i.reuseport_array_update_check.exit.thread_crit_edge ], [ -524, %if.end5.i.reuseport_array_update_check.exit.thread_crit_edge ], [ -2, %if.end.i.reuseport_array_update_check.exit.thread_crit_edge ], [ -17, %if.end15.reuseport_array_update_check.exit.thread_crit_edge ]
  %37 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %retval.0.i.ph, ptr %err, align 4
  br label %put_file

if.end26:                                         ; preds = %do.end.i
  %38 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %err, align 4
  call void @_raw_spin_lock_bh(ptr noundef nonnull @reuseport_lock) #7
  %sk_callback_lock = getelementptr inbounds %struct.sock, ptr %14, i32 0, i32 50
  call void @_raw_write_lock_bh(ptr noundef %sk_callback_lock) #7
  %call.i = call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.spinlock, ptr @reuseport_lock, i32 0, i32 0, i32 0, i32 4), i32 noundef -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool29.not = icmp eq i32 %call.i, 0
  br i1 %tobool29.not, label %land.lhs.true, label %if.end26.do.end37_crit_edge

if.end26.do.end37_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end37

land.lhs.true:                                    ; preds = %if.end26
  %call30 = call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %land.lhs.true.do.end37_crit_edge, label %land.lhs.true32

land.lhs.true.do.end37_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end37

land.lhs.true32:                                  ; preds = %land.lhs.true
  %.b175 = load i1, ptr @bpf_fd_reuseport_array_update_elem.__warned, align 1
  br i1 %.b175, label %land.lhs.true32.do.end37_crit_edge, label %if.then34

land.lhs.true32.do.end37_crit_edge:               ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end37

if.then34:                                        ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @bpf_fd_reuseport_array_update_elem.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 291, ptr noundef nonnull @.str.1) #7
  br label %do.end37

do.end37:                                         ; preds = %if.then34, %land.lhs.true32.do.end37_crit_edge, %land.lhs.true.do.end37_crit_edge, %if.end26.do.end37_crit_edge
  %39 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx, align 4
  %call.i176 = call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.spinlock, ptr @reuseport_lock, i32 0, i32 0, i32 0, i32 4), i32 noundef -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i176)
  %tobool43.not = icmp eq i32 %call.i176, 0
  br i1 %tobool43.not, label %land.lhs.true44, label %do.end37.do.end52_crit_edge

do.end37.do.end52_crit_edge:                      ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end52

land.lhs.true44:                                  ; preds = %do.end37
  %call45 = call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %land.lhs.true44.do.end52_crit_edge, label %land.lhs.true47

land.lhs.true44.do.end52_crit_edge:               ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end52

land.lhs.true47:                                  ; preds = %land.lhs.true44
  %.b173174 = load i1, ptr @bpf_fd_reuseport_array_update_elem.__warned.2, align 1
  br i1 %.b173174, label %land.lhs.true47.do.end52_crit_edge, label %if.then49

land.lhs.true47.do.end52_crit_edge:               ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end52

if.then49:                                        ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @bpf_fd_reuseport_array_update_elem.__warned.2, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 293, ptr noundef nonnull @.str.1) #7
  br label %do.end52

do.end52:                                         ; preds = %if.then49, %land.lhs.true47.do.end52_crit_edge, %land.lhs.true44.do.end52_crit_edge, %do.end37.do.end52_crit_edge
  %41 = ptrtoint ptr %sk_reuseport_cb to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %sk_reuseport_cb, align 8
  %tobool.not.i177 = icmp eq ptr %40, null
  %43 = or i1 %cmp.i, %tobool.not.i177
  br i1 %43, label %if.end.i181, label %do.end52.put_file_unlock.thread_crit_edge

do.end52.put_file_unlock.thread_crit_edge:        ; preds = %do.end52
  call void @__sanitizer_cov_trace_pc() #9
  br label %put_file_unlock.thread

if.end.i181:                                      ; preds = %do.end52
  %or.cond1.i180 = and i1 %cmp3.i, %tobool.not.i177
  br i1 %or.cond1.i180, label %if.end.i181.put_file_unlock.thread_crit_edge, label %if.end5.i183

if.end.i181.put_file_unlock.thread_crit_edge:     ; preds = %if.end.i181
  call void @__sanitizer_cov_trace_pc() #9
  br label %put_file_unlock.thread

if.end5.i183:                                     ; preds = %if.end.i181
  %44 = ptrtoint ptr %sk_protocol.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %sk_protocol.i, align 4
  %46 = zext i16 %45 to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values.9)
  switch i16 %45, label %if.end5.i183.put_file_unlock.thread_crit_edge [
    i16 17, label %if.end5.i183.if.end14.i185_crit_edge
    i16 6, label %if.end5.i183.if.end14.i185_crit_edge212
  ]

if.end5.i183.if.end14.i185_crit_edge212:          ; preds = %if.end5.i183
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14.i185

if.end5.i183.if.end14.i185_crit_edge:             ; preds = %if.end5.i183
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14.i185

if.end5.i183.put_file_unlock.thread_crit_edge:    ; preds = %if.end5.i183
  call void @__sanitizer_cov_trace_pc() #9
  br label %put_file_unlock.thread

if.end14.i185:                                    ; preds = %if.end5.i183.if.end14.i185_crit_edge, %if.end5.i183.if.end14.i185_crit_edge212
  %47 = ptrtoint ptr %skc_family.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %skc_family.i, align 8
  %49 = zext i16 %48 to i64
  call void @__sanitizer_cov_trace_switch(i64 %49, ptr @__sancov_gen_cov_switch_values.10)
  switch i16 %48, label %if.end14.i185.put_file_unlock.thread_crit_edge [
    i16 2, label %if.end14.i185.if.end25.i189_crit_edge
    i16 10, label %if.end14.i185.if.end25.i189_crit_edge213
  ]

if.end14.i185.if.end25.i189_crit_edge213:         ; preds = %if.end14.i185
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25.i189

if.end14.i185.if.end25.i189_crit_edge:            ; preds = %if.end14.i185
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25.i189

if.end14.i185.put_file_unlock.thread_crit_edge:   ; preds = %if.end14.i185
  call void @__sanitizer_cov_trace_pc() #9
  br label %put_file_unlock.thread

if.end25.i189:                                    ; preds = %if.end14.i185.if.end25.i189_crit_edge, %if.end14.i185.if.end25.i189_crit_edge213
  %50 = ptrtoint ptr %sk_type.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %sk_type.i, align 2
  %.off.i187 = add i16 %51, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %.off.i187)
  %switch.i188 = icmp ult i16 %.off.i187, 2
  br i1 %switch.i188, label %if.end35.i191, label %if.end25.i189.put_file_unlock.thread_crit_edge

if.end25.i189.put_file_unlock.thread_crit_edge:   ; preds = %if.end25.i189
  call void @__sanitizer_cov_trace_pc() #9
  br label %put_file_unlock.thread

if.end35.i191:                                    ; preds = %if.end25.i189
  %52 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %29, align 4
  %54 = and i32 %53, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool.i.not.i190 = icmp eq i32 %54, 0
  br i1 %tobool.i.not.i190, label %if.end35.i191.put_file_unlock.thread_crit_edge, label %lor.lhs.false.i196

if.end35.i191.put_file_unlock.thread_crit_edge:   ; preds = %if.end35.i191
  call void @__sanitizer_cov_trace_pc() #9
  br label %put_file_unlock.thread

lor.lhs.false.i196:                               ; preds = %if.end35.i191
  %55 = ptrtoint ptr %pprev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %pprev.i.i.i.i, align 4
  %tobool.not.i.i.i.not.i193 = icmp eq ptr %56, null
  %tobool38.not.i194 = icmp eq ptr %42, null
  %or.cond2.i195 = or i1 %tobool38.not.i194, %tobool.not.i.i.i.not.i193
  br i1 %or.cond2.i195, label %lor.lhs.false.i196.put_file_unlock.thread_crit_edge, label %do.end.i200

lor.lhs.false.i196.put_file_unlock.thread_crit_edge: ; preds = %lor.lhs.false.i196
  call void @__sanitizer_cov_trace_pc() #9
  br label %put_file_unlock.thread

do.end.i200:                                      ; preds = %lor.lhs.false.i196
  %57 = ptrtoint ptr %sk_user_data.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile ptr, ptr %sk_user_data.i, align 4
  %tobool41.not.i198 = icmp eq ptr %58, null
  br i1 %tobool41.not.i198, label %put_file_unlock, label %do.end.i200.put_file_unlock.thread_crit_edge

do.end.i200.put_file_unlock.thread_crit_edge:     ; preds = %do.end.i200
  call void @__sanitizer_cov_trace_pc() #9
  br label %put_file_unlock.thread

put_file_unlock.thread:                           ; preds = %do.end.i200.put_file_unlock.thread_crit_edge, %lor.lhs.false.i196.put_file_unlock.thread_crit_edge, %if.end35.i191.put_file_unlock.thread_crit_edge, %if.end25.i189.put_file_unlock.thread_crit_edge, %if.end14.i185.put_file_unlock.thread_crit_edge, %if.end5.i183.put_file_unlock.thread_crit_edge, %if.end.i181.put_file_unlock.thread_crit_edge, %do.end52.put_file_unlock.thread_crit_edge
  %retval.0.i201.ph = phi i32 [ -16, %do.end.i200.put_file_unlock.thread_crit_edge ], [ -22, %if.end35.i191.put_file_unlock.thread_crit_edge ], [ -22, %lor.lhs.false.i196.put_file_unlock.thread_crit_edge ], [ -524, %if.end25.i189.put_file_unlock.thread_crit_edge ], [ -524, %if.end14.i185.put_file_unlock.thread_crit_edge ], [ -524, %if.end5.i183.put_file_unlock.thread_crit_edge ], [ -2, %if.end.i181.put_file_unlock.thread_crit_edge ], [ -17, %do.end52.put_file_unlock.thread_crit_edge ]
  %59 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %retval.0.i201.ph, ptr %err, align 4
  br label %if.end131.sink.split

put_file_unlock:                                  ; preds = %do.end.i200
  %60 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %err, align 4
  %61 = ptrtoint ptr %arrayidx to i32
  %or62 = or i32 %61, 3
  %62 = inttoptr i32 %or62 to ptr
  %63 = ptrtoint ptr %sk_user_data.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile ptr %62, ptr %sk_user_data.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !40
  %64 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %64)
  store volatile ptr %14, ptr %arrayidx, align 4
  %65 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 0, ptr %err, align 4
  call void @_raw_write_unlock_bh(ptr noundef %sk_callback_lock) #7
  br i1 %tobool.not.i177, label %put_file_unlock.if.end131_crit_edge, label %if.then118

put_file_unlock.if.end131_crit_edge:              ; preds = %put_file_unlock
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end131

if.then118:                                       ; preds = %put_file_unlock
  call void @__sanitizer_cov_trace_pc() #9
  %sk_callback_lock119 = getelementptr inbounds %struct.sock, ptr %40, i32 0, i32 50
  call void @_raw_write_lock_bh(ptr noundef %sk_callback_lock119) #7
  %sk_user_data125 = getelementptr inbounds %struct.sock, ptr %40, i32 0, i32 72
  %66 = ptrtoint ptr %sk_user_data125 to i32
  call void @__asan_store4_noabort(i32 %66)
  store volatile ptr null, ptr %sk_user_data125, align 4
  br label %if.end131.sink.split

if.end131.sink.split:                             ; preds = %if.then118, %put_file_unlock.thread
  %sk_callback_lock.sink = phi ptr [ %sk_callback_lock, %put_file_unlock.thread ], [ %sk_callback_lock119, %if.then118 ]
  call void @_raw_write_unlock_bh(ptr noundef %sk_callback_lock.sink) #7
  br label %if.end131

if.end131:                                        ; preds = %if.end131.sink.split, %put_file_unlock.if.end131_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef nonnull @reuseport_lock) #7
  br label %put_file

put_file:                                         ; preds = %if.end131, %reuseport_array_update_check.exit.thread, %if.then14
  %file = getelementptr inbounds %struct.socket, ptr %call10, i32 0, i32 3
  %67 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %file, align 4
  call void @fput(ptr noundef %68) #7
  %69 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %err, align 4
  br label %cleanup132

cleanup132:                                       ; preds = %put_file, %if.then11, %if.then5.cleanup132_crit_edge, %if.end.cleanup132_crit_edge, %entry.cleanup132_crit_edge
  %retval.1 = phi i32 [ %70, %put_file ], [ %12, %if.then11 ], [ -22, %if.then5.cleanup132_crit_edge ], [ -22, %entry.cleanup132_crit_edge ], [ -7, %if.end.cleanup132_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err) #7
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sockfd_lookup(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @reuseport_array_alloc_check(ptr noundef %attr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %value_size = getelementptr inbounds %struct.anon.73, ptr %attr, i32 0, i32 2
  %0 = ptrtoint ptr %value_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %value_size, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %1, label %entry.return_crit_edge [
    i32 4, label %entry.if.end_crit_edge
    i32 8, label %entry.if.end_crit_edge5
  ]

entry.if.end_crit_edge5:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge5
  %call = tail call i32 @array_map_alloc_check(ptr noundef %attr) #7
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @reuseport_array_alloc(ptr noundef %attr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %map_flags.i = getelementptr inbounds %struct.anon.73, ptr %attr, i32 0, i32 4
  %0 = ptrtoint ptr %map_flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %map_flags.i, align 8
  %and.i = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.bpf_map_attr_numa_node.exit_crit_edge, label %cond.true.i

entry.bpf_map_attr_numa_node.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %bpf_map_attr_numa_node.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %numa_node.i = getelementptr inbounds %struct.anon.73, ptr %attr, i32 0, i32 6
  %2 = ptrtoint ptr %numa_node.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %numa_node.i, align 8
  br label %bpf_map_attr_numa_node.exit

bpf_map_attr_numa_node.exit:                      ; preds = %cond.true.i, %entry.bpf_map_attr_numa_node.exit_crit_edge
  %cond.i = phi i32 [ %3, %cond.true.i ], [ -1, %entry.bpf_map_attr_numa_node.exit_crit_edge ]
  %call.i = tail call zeroext i1 @capable(i32 noundef 39) #7
  br i1 %call.i, label %bpf_map_attr_numa_node.exit.if.end_crit_edge, label %bpf_capable.exit

bpf_map_attr_numa_node.exit.if.end_crit_edge:     ; preds = %bpf_map_attr_numa_node.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

bpf_capable.exit:                                 ; preds = %bpf_map_attr_numa_node.exit
  %call1.i = tail call zeroext i1 @capable(i32 noundef 21) #7
  br i1 %call1.i, label %bpf_capable.exit.if.end_crit_edge, label %bpf_capable.exit.cleanup_crit_edge

bpf_capable.exit.cleanup_crit_edge:               ; preds = %bpf_capable.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

bpf_capable.exit.if.end_crit_edge:                ; preds = %bpf_capable.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %bpf_capable.exit.if.end_crit_edge, %bpf_map_attr_numa_node.exit.if.end_crit_edge
  %max_entries = getelementptr inbounds %struct.anon.73, ptr %attr, i32 0, i32 3
  %4 = ptrtoint ptr %max_entries to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_entries, align 4
  %6 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %5, i32 4) #7
  %7 = extractvalue { i32, i1 } %6, 1
  %8 = extractvalue { i32, i1 } %6, 0
  %spec.select.i = tail call i32 @llvm.uadd.sat.i32(i32 %8, i32 384) #7
  %9 = zext i32 %spec.select.i to i64
  %conv = select i1 %7, i64 4294967295, i64 %9
  %call4 = tail call ptr @bpf_map_area_alloc(i64 noundef %conv, i32 noundef %cond.i) #7
  %tobool.not = icmp eq ptr %call4, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @bpf_map_init_from_attr(ptr noundef nonnull %call4, ptr noundef %attr) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end.cleanup_crit_edge, %bpf_capable.exit.cleanup_crit_edge
  %retval.0 = phi ptr [ %call4, %if.end7 ], [ inttoptr (i32 -1 to ptr), %bpf_capable.exit.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @reuseport_array_free(ptr noundef %map) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !26) #7
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !36
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #7
  %call.i = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 696, ptr noundef nonnull @.str.5) #7
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %max_entries = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 6
  %4 = ptrtoint ptr %max_entries to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_entries, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp47.not = icmp eq i32 %5, 0
  br i1 %cmp47.not, label %rcu_read_lock.exit.for.end_crit_edge, label %rcu_read_lock.exit.for.body_crit_edge

rcu_read_lock.exit.for.body_crit_edge:            ; preds = %rcu_read_lock.exit
  br label %for.body

rcu_read_lock.exit.for.end_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %rcu_read_lock.exit.for.body_crit_edge
  %i.048 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %rcu_read_lock.exit.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.reuseport_array, ptr %map, i32 0, i32 1, i32 %i.048
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %arrayidx, align 4
  %call2 = tail call i32 @rcu_read_lock_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %land.lhs.true, label %for.body.do.end8_crit_edge

for.body.do.end8_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end8

land.lhs.true:                                    ; preds = %for.body
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end8_crit_edge, label %land.lhs.true5

land.lhs.true.do.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end8

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b37 = load i1, ptr @reuseport_array_free.__warned, align 1
  br i1 %.b37, label %land.lhs.true5.do.end8_crit_edge, label %if.then

land.lhs.true5.do.end8_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end8

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @reuseport_array_free.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 129, ptr noundef nonnull @.str.6) #7
  br label %do.end8

do.end8:                                          ; preds = %if.then, %land.lhs.true5.do.end8_crit_edge, %land.lhs.true.do.end8_crit_edge, %for.body.do.end8_crit_edge
  %tobool10.not = icmp eq ptr %7, null
  br i1 %tobool10.not, label %do.end8.for.inc_crit_edge, label %if.then11

do.end8.for.inc_crit_edge:                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then11:                                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #9
  %sk_callback_lock = getelementptr inbounds %struct.sock, ptr %7, i32 0, i32 50
  tail call void @_raw_write_lock_bh(ptr noundef %sk_callback_lock) #7
  %sk_user_data = getelementptr inbounds %struct.sock, ptr %7, i32 0, i32 72
  %8 = ptrtoint ptr %sk_user_data to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %sk_user_data, align 4
  tail call void @_raw_write_unlock_bh(ptr noundef %sk_callback_lock) #7
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr null, ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then11, %do.end8.for.inc_crit_edge
  %inc = add nuw i32 %i.048, 1
  %10 = ptrtoint ptr %max_entries to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %max_entries, align 8
  %cmp = icmp ult i32 %inc, %11
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %rcu_read_lock.exit.for.end_crit_edge
  %call.i38 = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i38, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i41

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true.i41:                                ; preds = %for.end
  %call1.i39 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i39)
  %tobool.not.i40 = icmp eq i32 %call1.i39, 0
  br i1 %tobool.not.i40, label %land.lhs.true.i41.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i43

land.lhs.true.i41.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i41
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true2.i43:                               ; preds = %land.lhs.true.i41
  %.b4.i42 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i42, label %land.lhs.true2.i43.rcu_read_unlock.exit_crit_edge, label %if.then.i44

land.lhs.true2.i43.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i43
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

if.then.i44:                                      ; preds = %land.lhs.true2.i43
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 724, ptr noundef nonnull @.str.7) #7
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i44, %land.lhs.true2.i43.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i41.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !38
  %12 = tail call i32 @llvm.read_register.i32(metadata !26) #7
  %and.i.i.i.i.i45 = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i.i45 to ptr
  %preempt_count.i.i.i.i46 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %preempt_count.i.i.i.i46 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %preempt_count.i.i.i.i46, align 4
  %sub.i.i.i = add i32 %15, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i46, align 4
  tail call void @rcu_read_unlock_strict() #7
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #7
  tail call void @bpf_map_area_free(ptr noundef %map) #7
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @reuseport_array_get_next_key(ptr nocapture noundef readonly %map, ptr noundef readonly %key, ptr nocapture noundef writeonly %next_key) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %key, null
  br i1 %tobool.not, label %entry.cleanup.sink.split_crit_edge, label %cond.end

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end:                                           ; preds = %cond.end
  %sub = add i32 %3, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %sub)
  %cmp4 = icmp eq i32 %1, %sub
  br i1 %cmp4, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @reuseport_array_delete_elem(ptr noundef %map, ptr nocapture noundef readonly %key) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr %struct.reuseport_array, ptr %map, i32 0, i32 1, i32 %1
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @reuseport_lock) #7
  %call.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.spinlock, ptr @reuseport_lock, i32 0, i32 0, i32 0, i32 4), i32 noundef -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool6.not = icmp eq i32 %call.i, 0
  br i1 %tobool6.not, label %land.lhs.true, label %if.end3.do.end14_crit_edge

if.end3.do.end14_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end14

land.lhs.true:                                    ; preds = %if.end3
  %call7 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %land.lhs.true.do.end14_crit_edge, label %land.lhs.true9

land.lhs.true.do.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end14

land.lhs.true9:                                   ; preds = %land.lhs.true
  %.b58 = load i1, ptr @reuseport_array_delete_elem.__warned, align 1
  br i1 %.b58, label %land.lhs.true9.do.end14_crit_edge, label %if.then11

land.lhs.true9.do.end14_crit_edge:                ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end14

if.then11:                                        ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @reuseport_array_delete_elem.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 80, ptr noundef nonnull @.str.1) #7
  br label %do.end14

do.end14:                                         ; preds = %if.then11, %land.lhs.true9.do.end14_crit_edge, %land.lhs.true.do.end14_crit_edge, %if.end3.do.end14_crit_edge
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %tobool18.not = icmp eq ptr %7, null
  br i1 %tobool18.not, label %do.end14.if.end44_crit_edge, label %if.then19

do.end14.if.end44_crit_edge:                      ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end44

if.then19:                                        ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #9
  %sk_callback_lock = getelementptr inbounds %struct.sock, ptr %7, i32 0, i32 50
  tail call void @_raw_write_lock_bh(ptr noundef %sk_callback_lock) #7
  %sk_user_data = getelementptr inbounds %struct.sock, ptr %7, i32 0, i32 72
  %8 = ptrtoint ptr %sk_user_data to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr null, ptr %sk_user_data, align 4
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr null, ptr %arrayidx, align 4
  tail call void @_raw_write_unlock_bh(ptr noundef %sk_callback_lock) #7
  br label %if.end44

if.end44:                                         ; preds = %if.then19, %do.end14.if.end44_crit_edge
  %err.0 = phi i32 [ 0, %if.then19 ], [ -2, %do.end14.if.end44_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @reuseport_lock) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end44, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %if.end44 ], [ -7, %entry.cleanup_crit_edge ], [ -2, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @bpf_map_meta_equal(ptr noundef, ptr noundef) #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @array_map_alloc_check(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bpf_map_area_alloc(i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_map_init_from_attr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_map_area_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !8, !10, !12, !14, !15, !16, !18, !19, !21, !22, !24}
!llvm.named.register.sp = !{!26}
!llvm.module.flags = !{!27, !28, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!35}

!0 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!1 = !{!"../kernel/bpf/reuseport_array.c", i32 290, i32 8}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = distinct !{null, !5, !"__warned", i1 false, i1 false}
!5 = !{!"../kernel/bpf/reuseport_array.c", i32 292, i32 10}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../kernel/bpf/reuseport_array.c", i32 349, i32 18}
!8 = !{ptr @reuseport_array_ops, !9, !"reuseport_array_ops", i1 false, i1 false}
!9 = !{!"../kernel/bpf/reuseport_array.c", i32 341, i32 26}
!10 = !{ptr @reuseport_array_map_btf_id, !11, !"reuseport_array_map_btf_id", i1 false, i1 false}
!11 = !{!"../kernel/bpf/reuseport_array.c", i32 340, i32 12}
!12 = distinct !{null, !13, !"__warned", i1 false, i1 false}
!13 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!14 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!16 = distinct !{null, !17, !"__warned", i1 false, i1 false}
!17 = !{!"../kernel/bpf/reuseport_array.c", i32 60, i32 9}
!18 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!19 = distinct !{null, !20, !"__warned", i1 false, i1 false}
!20 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!21 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!22 = distinct !{null, !23, !"__warned", i1 false, i1 false}
!23 = !{!"../kernel/bpf/reuseport_array.c", i32 129, i32 8}
!24 = distinct !{null, !25, !"__warned", i1 false, i1 false}
!25 = !{!"../kernel/bpf/reuseport_array.c", i32 79, i32 7}
!26 = !{!"sp"}
!27 = !{i32 1, !"wchar_size", i32 2}
!28 = !{i32 1, !"min_enum_size", i32 4}
!29 = !{i32 8, !"branch-target-enforcement", i32 0}
!30 = !{i32 8, !"sign-return-address", i32 0}
!31 = !{i32 8, !"sign-return-address-all", i32 0}
!32 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!33 = !{i32 7, !"uwtable", i32 1}
!34 = !{i32 7, !"frame-pointer", i32 2}
!35 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!36 = !{i64 2149682305}
!37 = !{!"branch_weights", i32 2000, i32 1}
!38 = !{i64 2149682571}
!39 = !{!"auto-init"}
!40 = !{i64 2157868118}
