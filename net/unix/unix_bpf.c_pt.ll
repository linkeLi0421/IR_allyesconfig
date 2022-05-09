; ModuleID = '/llk/IR_all_yes/net/unix/unix_bpf.c_pt.bc'
source_filename = "../net/unix/unix_bpf.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.proto = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8, ptr, i32, i32, i32, i32, ptr, ptr, ptr, %union.anon.154, ptr, [32 x i8], %struct.list_head, ptr }
%union.anon.154 = type { ptr }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.8 }
%union.anon.8 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.159, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.160, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.161, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.sock_common = type { %union.anon, %union.anon.0, %union.anon.1, i16, i8, i8, i32, %union.anon.3, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.155, [0 x i32], %union.anon.156, i16, i16, %union.anon.157, %struct.refcount_struct, [0 x i32], %union.anon.158 }
%union.anon = type { i64 }
%union.anon.0 = type { i32 }
%union.anon.1 = type { i32 }
%union.anon.3 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.44 }
%union.anon.44 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.155 = type { i32 }
%union.anon.156 = type { %struct.hlist_node }
%union.anon.157 = type { i32 }
%union.anon.158 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.159 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.160 = type { ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.161 = type { ptr }
%struct.sk_buff_head = type { %union.anon.68, i32, %struct.spinlock }
%union.anon.68 = type { %struct.anon.69 }
%struct.anon.69 = type { ptr, ptr }
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
%struct.sk_psock = type { ptr, ptr, i32, i32, i32, ptr, %struct.sk_psock_progs, %struct.strparser, %struct.sk_buff_head, %struct.list_head, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, %struct.refcount_struct, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.sk_psock_work_state, %struct.work_struct, %struct.rcu_work }
%struct.sk_psock_progs = type { ptr, ptr, ptr, ptr }
%struct.strparser = type { ptr, i8, ptr, ptr, i32, %struct.delayed_work, %struct.work_struct, %struct.strp_stats, %struct.strp_callbacks }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.strp_stats = type { i64, i64, i32, i32, i32, i32, i32 }
%struct.strp_callbacks = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.sk_psock_work_state = type { ptr, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rcu_work = type { %struct.work_struct, %struct.callback_head, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.unix_sock = type { %struct.sock, ptr, %struct.path, %struct.mutex, %struct.mutex, ptr, %struct.list_head, %struct.atomic_t, %struct.spinlock, i32, [60 x i8], %struct.socket_wq, %struct.wait_queue_entry, %struct.scm_stat, ptr, [100 x i8] }
%struct.path = type { ptr, ptr }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [60 x i8] }
%struct.scm_stat = type { %struct.atomic_t }

@unix_dgram_bpf_prot = internal global { %struct.proto, [36 x i8] } zeroinitializer, align 32
@unix_stream_bpf_prot = internal global { %struct.proto, [36 x i8] } zeroinitializer, align 32
@unix_dgram_proto = external dso_local local_unnamed_addr global %struct.proto, align 4
@unix_stream_proto = external dso_local local_unnamed_addr global %struct.proto, align 4
@unix_dgram_prot_saved = internal global ptr null, section ".data..read_mostly", align 4
@unix_dgram_prot_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.7 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"unix_dgram_prot_lock\00", [43 x i8] zeroinitializer }, align 32
@unix_stream_prot_saved = internal global ptr null, section ".data..read_mostly", align 4
@unix_stream_prot_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.7 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"unix_stream_prot_lock\00", [42 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@sk_psock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/linux/skmsg.h\00", [42 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.6 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@___asan_gen_.7 = private unnamed_addr constant [20 x i8] c"unix_dgram_bpf_prot\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 94, i32 21 }
@___asan_gen_.10 = private unnamed_addr constant [21 x i8] c"unix_stream_bpf_prot\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 98, i32 21 }
@___asan_gen_.13 = private unnamed_addr constant [21 x i8] c"unix_dgram_prot_lock\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 93, i32 8 }
@___asan_gen_.19 = private unnamed_addr constant [22 x i8] c"unix_stream_prot_lock\00", align 1
@___asan_gen_.23 = private constant [23 x i8] c"../net/unix/unix_bpf.c\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 97, i32 8 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 695, i32 2 }
@___asan_gen_.35 = private unnamed_addr constant [25 x i8] c"../include/linux/skmsg.h\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 286, i32 9 }
@___asan_gen_.37 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.38 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 723, i32 2 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @unix_dgram_bpf_prot, ptr @unix_stream_bpf_prot, ptr @unix_dgram_prot_lock, ptr @.str, ptr @unix_stream_prot_lock, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @unix_dgram_bpf_prot to i32), i32 252, i32 288, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @unix_stream_bpf_prot to i32), i32 252, i32 288, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @unix_dgram_prot_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @unix_stream_prot_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @unix_dgram_bpf_update_proto(ptr noundef %sk, ptr nocapture noundef readonly %psock, i1 noundef zeroext %restore) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sk_type = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 45
  %0 = ptrtoint ptr %sk_type to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %sk_type, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %1)
  %cmp.not = icmp eq i16 %1, 2
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  br i1 %restore, label %if.then2, label %if.end7

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %saved_write_space = getelementptr inbounds %struct.sk_psock, ptr %psock, i32 0, i32 17
  %2 = ptrtoint ptr %saved_write_space to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %saved_write_space, align 8
  %sk_write_space = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 78
  %4 = ptrtoint ptr %sk_write_space to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %sk_write_space, align 4
  %sk_proto = getelementptr inbounds %struct.sk_psock, ptr %psock, i32 0, i32 20
  %5 = ptrtoint ptr %sk_proto to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sk_proto, align 4
  br label %return.sink.split

if.end7:                                          ; preds = %if.end
  %sk_proto8 = getelementptr inbounds %struct.sk_psock, ptr %psock, i32 0, i32 20
  %7 = ptrtoint ptr %sk_proto8 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sk_proto8, align 4
  %9 = load volatile ptr, ptr @unix_dgram_prot_saved, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !35
  %cmp.not.i = icmp eq ptr %9, %8
  br i1 %cmp.not.i, label %if.end7.return.sink.split_crit_edge, label %if.then.i, !prof !36

if.end7.return.sink.split_crit_edge:              ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %return.sink.split

if.then.i:                                        ; preds = %if.end7
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @unix_dgram_prot_lock) #7
  %10 = load ptr, ptr @unix_dgram_prot_saved, align 4
  %cmp6.not.i = icmp eq ptr %10, %8
  br i1 %cmp6.not.i, label %if.then.i.if.end.i_crit_edge, label %if.then13.i, !prof !37

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then13.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %11 = call ptr @memcpy(ptr @unix_dgram_bpf_prot, ptr %8, i32 252)
  store ptr @sock_map_close, ptr @unix_dgram_bpf_prot, align 4
  store ptr @unix_bpf_recvmsg, ptr getelementptr inbounds (%struct.proto, ptr @unix_dgram_bpf_prot, i32 0, i32 13), align 4
  store ptr @sk_msg_is_readable, ptr getelementptr inbounds (%struct.proto, ptr @unix_dgram_bpf_prot, i32 0, i32 29), align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !38
  store volatile ptr %8, ptr @unix_dgram_prot_saved, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then13.i, %if.then.i.if.end.i_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @unix_dgram_prot_lock) #7
  br label %return.sink.split

return.sink.split:                                ; preds = %if.end.i, %if.end7.return.sink.split_crit_edge, %if.then2
  %unix_dgram_bpf_prot.sink = phi ptr [ %6, %if.then2 ], [ @unix_dgram_bpf_prot, %if.end7.return.sink.split_crit_edge ], [ @unix_dgram_bpf_prot, %if.end.i ]
  %skc_prot14 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 8
  %12 = ptrtoint ptr %skc_prot14 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %unix_dgram_bpf_prot.sink, ptr %skc_prot14, align 8
  br label %return

return:                                           ; preds = %return.sink.split, %entry.return_crit_edge
  %retval.0 = phi i32 [ -95, %entry.return_crit_edge ], [ 0, %return.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @unix_stream_bpf_update_proto(ptr noundef %sk, ptr nocapture noundef readonly %psock, i1 noundef zeroext %restore) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %restore, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %saved_write_space = getelementptr inbounds %struct.sk_psock, ptr %psock, i32 0, i32 17
  %0 = ptrtoint ptr %saved_write_space to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %saved_write_space, align 8
  %sk_write_space = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 78
  %2 = ptrtoint ptr %sk_write_space to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %sk_write_space, align 4
  %sk_proto = getelementptr inbounds %struct.sk_psock, ptr %psock, i32 0, i32 20
  %3 = ptrtoint ptr %sk_proto to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sk_proto, align 4
  br label %return

if.end:                                           ; preds = %entry
  %sk_proto5 = getelementptr inbounds %struct.sk_psock, ptr %psock, i32 0, i32 20
  %5 = ptrtoint ptr %sk_proto5 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sk_proto5, align 4
  %7 = load volatile ptr, ptr @unix_stream_prot_saved, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !39
  %cmp.not.i = icmp eq ptr %7, %6
  br i1 %cmp.not.i, label %if.end.return_crit_edge, label %if.then.i, !prof !36

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.then.i:                                        ; preds = %if.end
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @unix_stream_prot_lock) #7
  %8 = load ptr, ptr @unix_stream_prot_saved, align 4
  %cmp6.not.i = icmp eq ptr %8, %6
  br i1 %cmp6.not.i, label %if.then.i.if.end.i_crit_edge, label %if.then13.i, !prof !37

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then13.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %9 = call ptr @memcpy(ptr @unix_stream_bpf_prot, ptr %6, i32 252)
  store ptr @sock_map_close, ptr @unix_stream_bpf_prot, align 4
  store ptr @unix_bpf_recvmsg, ptr getelementptr inbounds (%struct.proto, ptr @unix_stream_bpf_prot, i32 0, i32 13), align 4
  store ptr @sk_msg_is_readable, ptr getelementptr inbounds (%struct.proto, ptr @unix_stream_bpf_prot, i32 0, i32 29), align 4
  store ptr @sock_map_unhash, ptr getelementptr inbounds (%struct.proto, ptr @unix_stream_bpf_prot, i32 0, i32 21), align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !40
  store volatile ptr %6, ptr @unix_stream_prot_saved, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then13.i, %if.then.i.if.end.i_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @unix_stream_prot_lock) #7
  br label %return

return:                                           ; preds = %if.end.i, %if.end.return_crit_edge, %if.then
  %unix_stream_bpf_prot.sink = phi ptr [ %4, %if.then ], [ @unix_stream_bpf_prot, %if.end.return_crit_edge ], [ @unix_stream_bpf_prot, %if.end.i ]
  %skc_prot11 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 8
  %10 = ptrtoint ptr %skc_prot11 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %unix_stream_bpf_prot.sink, ptr %skc_prot11, align 8
  ret i32 0
}

; Function Attrs: cold mustprogress nofree nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @unix_bpf_build_proto() local_unnamed_addr #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memcpy(ptr @unix_dgram_bpf_prot, ptr @unix_dgram_proto, i32 252)
  store ptr @sock_map_close, ptr @unix_dgram_bpf_prot, align 4
  store ptr @unix_bpf_recvmsg, ptr getelementptr inbounds (%struct.proto, ptr @unix_dgram_bpf_prot, i32 0, i32 13), align 4
  store ptr @sk_msg_is_readable, ptr getelementptr inbounds (%struct.proto, ptr @unix_dgram_bpf_prot, i32 0, i32 29), align 4
  %1 = call ptr @memcpy(ptr @unix_stream_bpf_prot, ptr @unix_stream_proto, i32 252)
  store ptr @sock_map_close, ptr @unix_stream_bpf_prot, align 4
  store ptr @unix_bpf_recvmsg, ptr getelementptr inbounds (%struct.proto, ptr @unix_stream_bpf_prot, i32 0, i32 13), align 4
  store ptr @sk_msg_is_readable, ptr getelementptr inbounds (%struct.proto, ptr @unix_stream_bpf_prot, i32 0, i32 29), align 4
  store ptr @sock_map_unhash, ptr getelementptr inbounds (%struct.proto, ptr @unix_stream_bpf_prot, i32 0, i32 21), align 4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_map_close(ptr noundef, i32 noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @unix_bpf_recvmsg(ptr noundef %sk, ptr noundef %msg, i32 noundef %len, i32 noundef %nonblock, i32 noundef %flags, ptr nocapture noundef readnone %addr_len) #0 align 64 {
entry:
  %wait.i = alloca %struct.wait_queue_entry, align 4
  %old.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !25) #7
  %and.i.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !41
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #7
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i.i, label %entry.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

entry.rcu_read_lock.exit.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %entry
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 696, ptr noundef nonnull @.str.3) #7
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %entry.rcu_read_lock.exit.i_crit_edge
  %sk_user_data.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 72
  %4 = ptrtoint ptr %sk_user_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %sk_user_data.i.i, align 4
  %call.i4.i = tail call i32 @rcu_read_lock_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4.i)
  %tobool.not.i5.i = icmp eq i32 %call.i4.i, 0
  br i1 %tobool.not.i5.i, label %land.lhs.true.i6.i, label %rcu_read_lock.exit.i.sk_psock.exit.i_crit_edge

rcu_read_lock.exit.i.sk_psock.exit.i_crit_edge:   ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sk_psock.exit.i

land.lhs.true.i6.i:                               ; preds = %rcu_read_lock.exit.i
  %call2.i.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %land.lhs.true.i6.i.sk_psock.exit.i_crit_edge, label %land.lhs.true4.i.i

land.lhs.true.i6.i.sk_psock.exit.i_crit_edge:     ; preds = %land.lhs.true.i6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sk_psock.exit.i

land.lhs.true4.i.i:                               ; preds = %land.lhs.true.i6.i
  %.b10.i.i = load i1, ptr @sk_psock.__warned, align 1
  br i1 %.b10.i.i, label %land.lhs.true4.i.i.sk_psock.exit.i_crit_edge, label %if.then.i7.i

land.lhs.true4.i.i.sk_psock.exit.i_crit_edge:     ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sk_psock.exit.i

if.then.i7.i:                                     ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @sk_psock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 286, ptr noundef nonnull @.str.5) #7
  br label %sk_psock.exit.i

sk_psock.exit.i:                                  ; preds = %if.then.i7.i, %land.lhs.true4.i.i.sk_psock.exit.i_crit_edge, %land.lhs.true.i6.i.sk_psock.exit.i_crit_edge, %rcu_read_lock.exit.i.sk_psock.exit.i_crit_edge
  %6 = ptrtoint ptr %5 to i32
  %and.i.i = and i32 %6, -4
  %7 = inttoptr i32 %and.i.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %sk_psock.exit.i.if.end.i_crit_edge, label %land.lhs.true.i

sk_psock.exit.i.if.end.i_crit_edge:               ; preds = %sk_psock.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %sk_psock.exit.i
  %refcnt.i = getelementptr inbounds %struct.sk_psock, ptr %7, i32 0, i32 14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i) #7
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcnt.i, i32 noundef 4) #7
  %8 = ptrtoint ptr %refcnt.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %refcnt.i, align 4
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, %land.lhs.true.i
  %10 = phi i32 [ %9, %land.lhs.true.i ], [ %asmresult3.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge ]
  %11 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %old.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i.i.i.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i.i.i.i, label %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %do.cond.i.i.i.i

do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i.i.i.i

do.cond.i.i.i.i:                                  ; preds = %do.body.i.i.i.i
  %add.i.i.i8.i = add i32 %10, 1
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #7
  %call.i3.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i, i32 noundef 4) #7
  %12 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %old.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #7
  br label %do.body.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i:                            ; preds = %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i
  %14 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 %13, i32 %add.i.i.i8.i, ptr elementtype(i32) %refcnt.i) #7, !srcloc !42
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %14, 0
  %tobool.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i:     ; preds = %do.body.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i = extractvalue { i32, i32 } %14, 1
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i, %13
  br i1 %cmp.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, !prof !36

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i.i.i.i

if.end4.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge
  %15 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %old.i.i.i.i, align 4
  %add5.i.i.i.i = add i32 %16, 1
  %17 = or i32 %add5.i.i.i.i, %16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %17)
  %.not.i.i.i.i = icmp sgt i32 %17, -1
  br i1 %.not.i.i.i.i, label %if.end4.i.i.i.i.refcount_inc_not_zero.exit.i_crit_edge, label %if.then10.i.i.i.i, !prof !36

if.end4.i.i.i.i.refcount_inc_not_zero.exit.i_crit_edge: ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %refcount_inc_not_zero.exit.i

if.then10.i.i.i.i:                                ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 0) #7
  br label %refcount_inc_not_zero.exit.i

refcount_inc_not_zero.exit.i:                     ; preds = %if.then10.i.i.i.i, %if.end4.i.i.i.i.refcount_inc_not_zero.exit.i_crit_edge
  %18 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %old.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool12.i.i.i.not.i = icmp eq i32 %19, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i) #7
  %spec.select.i = select i1 %tobool12.i.i.i.not.i, ptr null, ptr %7
  br label %if.end.i

if.end.i:                                         ; preds = %refcount_inc_not_zero.exit.i, %sk_psock.exit.i.if.end.i_crit_edge
  %psock.0.i = phi ptr [ null, %sk_psock.exit.i.if.end.i_crit_edge ], [ %spec.select.i, %refcount_inc_not_zero.exit.i ]
  %call.i9.i = call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i9.i, label %if.end.i.sk_psock_get.exit_crit_edge, label %land.lhs.true.i12.i

if.end.i.sk_psock_get.exit_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sk_psock_get.exit

land.lhs.true.i12.i:                              ; preds = %if.end.i
  %call1.i10.i = call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i10.i)
  %tobool.not.i11.i = icmp eq i32 %call1.i10.i, 0
  br i1 %tobool.not.i11.i, label %land.lhs.true.i12.i.sk_psock_get.exit_crit_edge, label %land.lhs.true2.i14.i

land.lhs.true.i12.i.sk_psock_get.exit_crit_edge:  ; preds = %land.lhs.true.i12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sk_psock_get.exit

land.lhs.true2.i14.i:                             ; preds = %land.lhs.true.i12.i
  %.b4.i13.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i13.i, label %land.lhs.true2.i14.i.sk_psock_get.exit_crit_edge, label %if.then.i15.i

land.lhs.true2.i14.i.sk_psock_get.exit_crit_edge: ; preds = %land.lhs.true2.i14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sk_psock_get.exit

if.then.i15.i:                                    ; preds = %land.lhs.true2.i14.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 724, ptr noundef nonnull @.str.6) #7
  br label %sk_psock_get.exit

sk_psock_get.exit:                                ; preds = %if.then.i15.i, %land.lhs.true2.i14.i.sk_psock_get.exit_crit_edge, %land.lhs.true.i12.i.sk_psock_get.exit_crit_edge, %if.end.i.sk_psock_get.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !43
  %20 = call i32 @llvm.read_register.i32(metadata !25) #7
  %and.i.i.i.i.i16.i = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i.i.i16.i to ptr
  %preempt_count.i.i.i.i17.i = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i.i.i17.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i.i.i17.i, align 4
  %sub.i.i.i.i = add i32 %23, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i17.i, align 4
  call void @rcu_read_unlock_strict() #7
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #7
  %tobool.not = icmp eq ptr %psock.0.i, null
  br i1 %tobool.not, label %if.then, label %if.end, !prof !37

if.then:                                          ; preds = %sk_psock_get.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call5 = call fastcc i32 @__unix_recvmsg(ptr noundef %sk, ptr noundef %msg, i32 noundef %len, i32 noundef %flags)
  br label %cleanup30

if.end:                                           ; preds = %sk_psock_get.exit
  %iolock = getelementptr inbounds %struct.unix_sock, ptr %sk, i32 0, i32 3
  call void @mutex_lock_nested(ptr noundef %iolock, i32 noundef 0) #7
  %sk_receive_queue = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 8
  %24 = ptrtoint ptr %sk_receive_queue to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sk_receive_queue, align 4
  %cmp.i.not = icmp eq ptr %25, %sk_receive_queue
  br i1 %cmp.i.not, label %if.end.if.end12_crit_edge, label %sk_psock_queue_empty.exit

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

sk_psock_queue_empty.exit:                        ; preds = %if.end
  %ingress_msg.i = getelementptr inbounds %struct.sk_psock, ptr %psock.0.i, i32 0, i32 9
  %26 = ptrtoint ptr %ingress_msg.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile ptr, ptr %ingress_msg.i, align 4
  %cmp.i.i = icmp eq ptr %27, %ingress_msg.i
  br i1 %cmp.i.i, label %if.then9, label %sk_psock_queue_empty.exit.if.end12_crit_edge

sk_psock_queue_empty.exit.if.end12_crit_edge:     ; preds = %sk_psock_queue_empty.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.then9:                                         ; preds = %sk_psock_queue_empty.exit
  call void @mutex_unlock(ptr noundef %iolock) #7
  %refcnt.i65 = getelementptr inbounds %struct.sk_psock, ptr %psock.0.i, i32 0, i32 14
  %call.i.i.i.i.i.i66 = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i65, i32 noundef 4) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !44
  call void @llvm.prefetch.p0(ptr %refcnt.i65, i32 1, i32 3, i32 1) #7
  %28 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i65, ptr %refcnt.i65, i32 1, ptr elementtype(i32) %refcnt.i65) #7, !srcloc !45
  %asmresult.i.i.i.i.i.i.i67 = extractvalue { i32, i32, i32 } %28, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i67)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i67, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i67)
  %.not.i.i.i.i68 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i67, 0
  br i1 %.not.i.i.i.i68, label %if.end5.i.i.i.i.sk_psock_put.exit_crit_edge, label %if.then10.i.i.i.i69, !prof !36

if.end5.i.i.i.i.sk_psock_put.exit_crit_edge:      ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sk_psock_put.exit

if.then10.i.i.i.i69:                              ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @refcount_warn_saturate(ptr noundef %refcnt.i65, i32 noundef 3) #7
  br label %sk_psock_put.exit

if.then.i:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !46
  call void @sk_psock_drop(ptr noundef %sk, ptr noundef nonnull %psock.0.i) #7
  br label %sk_psock_put.exit

sk_psock_put.exit:                                ; preds = %if.then.i, %if.then10.i.i.i.i69, %if.end5.i.i.i.i.sk_psock_put.exit_crit_edge
  %sk_type.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 45
  %29 = ptrtoint ptr %sk_type.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %sk_type.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %30)
  %cmp.i71 = icmp eq i16 %30, 2
  br i1 %cmp.i71, label %if.then.i72, label %if.else.i

if.then.i72:                                      ; preds = %sk_psock_put.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = call i32 @__unix_dgram_recvmsg(ptr noundef %sk, ptr noundef %msg, i32 noundef %len, i32 noundef %flags) #7
  br label %cleanup30

if.else.i:                                        ; preds = %sk_psock_put.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call2.i = call i32 @__unix_stream_recvmsg(ptr noundef %sk, ptr noundef %msg, i32 noundef %len, i32 noundef %flags) #7
  br label %cleanup30

if.end12:                                         ; preds = %sk_psock_queue_empty.exit.if.end12_crit_edge, %if.end.if.end12_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nonblock)
  %tobool16.not = icmp eq i32 %nonblock, 0
  %sk_rcvtimeo.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 62
  %31 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait.i, i32 0, i32 1
  %32 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait.i, i32 0, i32 2
  %33 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait.i, i32 0, i32 3
  %34 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait.i, i32 0, i32 3, i32 1
  %sk_shutdown.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 66
  %35 = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 17
  %36 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 13
  %ingress_skb.i = getelementptr inbounds %struct.sk_psock, ptr %psock.0.i, i32 0, i32 8
  %ingress_msg.i77 = getelementptr inbounds %struct.sk_psock, ptr %psock.0.i, i32 0, i32 9
  br label %msg_bytes_ready

msg_bytes_ready:                                  ; preds = %sk_psock_queue_empty.exit84.msg_bytes_ready_crit_edge, %if.end12
  %call13 = call i32 @sk_msg_recvmsg(ptr noundef %sk, ptr noundef nonnull %psock.0.i, ptr noundef %msg, i32 noundef %len, i32 noundef %flags) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.then15, label %msg_bytes_ready.if.end28_crit_edge

msg_bytes_ready.if.end28_crit_edge:               ; preds = %msg_bytes_ready
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

if.then15:                                        ; preds = %msg_bytes_ready
  br i1 %tobool16.not, label %cond.false.i, label %if.then15.sock_rcvtimeo.exit_crit_edge

if.then15.sock_rcvtimeo.exit_crit_edge:           ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #9
  br label %sock_rcvtimeo.exit

cond.false.i:                                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #9
  %37 = ptrtoint ptr %sk_rcvtimeo.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %sk_rcvtimeo.i, align 4
  br label %sock_rcvtimeo.exit

sock_rcvtimeo.exit:                               ; preds = %cond.false.i, %if.then15.sock_rcvtimeo.exit_crit_edge
  %cond.i73 = phi i32 [ %38, %cond.false.i ], [ 0, %if.then15.sock_rcvtimeo.exit_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait.i) #7
  %39 = ptrtoint ptr %wait.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %wait.i, align 4
  %40 = call i32 @llvm.read_register.i32(metadata !25) #7
  %and.i.i74 = and i32 %40, -16384
  %41 = inttoptr i32 %and.i.i74 to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %task.i, align 8
  %44 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %43, ptr %31, align 4
  %45 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @woken_wake_function, ptr %32, align 4
  %46 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %33, ptr %33, align 4
  %47 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %33, ptr %34, align 4
  %48 = ptrtoint ptr %sk_shutdown.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %sk_shutdown.i, align 2
  %50 = and i8 %49, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool.not.i75 = icmp eq i8 %50, 0
  br i1 %tobool.not.i75, label %if.end.i76, label %unix_msg_wait_data.exit.thread115

unix_msg_wait_data.exit.thread115:                ; preds = %sock_rcvtimeo.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait.i) #7
  br label %sk_psock_queue_empty.exit84

if.end.i76:                                       ; preds = %sock_rcvtimeo.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i73)
  %tobool5.not.i = icmp eq i32 %cond.i73, 0
  br i1 %tobool5.not.i, label %unix_msg_wait_data.exit.thread, label %if.end7.i

unix_msg_wait_data.exit.thread:                   ; preds = %if.end.i76
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait.i) #7
  br label %if.end28

if.end7.i:                                        ; preds = %if.end.i76
  %51 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile ptr, ptr %35, align 8
  call void @add_wait_queue(ptr noundef %52, ptr noundef nonnull %wait.i) #7
  %53 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %36, align 4
  %55 = and i32 %54, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool.i.not.i.i = icmp eq i32 %55, 0
  br i1 %tobool.i.not.i.i, label %if.end7.i.sk_set_bit.exit.i_crit_edge, label %if.end.i.i

if.end7.i.sk_set_bit.exit.i_crit_edge:            ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sk_set_bit.exit.i

if.end.i.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  %56 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %35, align 8
  %flags.i.i = getelementptr inbounds %struct.socket_wq, ptr %57, i32 0, i32 2
  call void @_set_bit(i32 noundef 1, ptr noundef %flags.i.i) #7
  br label %sk_set_bit.exit.i

sk_set_bit.exit.i:                                ; preds = %if.end.i.i, %if.end7.i.sk_set_bit.exit.i_crit_edge
  %58 = ptrtoint ptr %sk_receive_queue to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %sk_receive_queue, align 4
  %cmp.i.not.i = icmp eq ptr %59, %sk_receive_queue
  br i1 %cmp.i.not.i, label %lor.lhs.false.i, label %sk_set_bit.exit.i.if.end34.i_crit_edge

sk_set_bit.exit.i.if.end34.i_crit_edge:           ; preds = %sk_set_bit.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34.i

lor.lhs.false.i:                                  ; preds = %sk_set_bit.exit.i
  %60 = ptrtoint ptr %ingress_skb.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %ingress_skb.i, align 4
  %cmp.i52.not.i = icmp eq ptr %61, %ingress_skb.i
  br i1 %cmp.i52.not.i, label %lor.rhs.i, label %lor.lhs.false.i.if.end34.i_crit_edge

lor.lhs.false.i.if.end34.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34.i

lor.rhs.i:                                        ; preds = %lor.lhs.false.i
  %62 = ptrtoint ptr %ingress_msg.i77 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile ptr, ptr %ingress_msg.i77, align 4
  %cmp.i54.not.i = icmp eq ptr %63, %ingress_msg.i77
  br i1 %cmp.i54.not.i, label %if.then16.i, label %lor.rhs.i.if.end34.i_crit_edge

lor.rhs.i.if.end34.i_crit_edge:                   ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34.i

if.then16.i:                                      ; preds = %lor.rhs.i
  call void @mutex_unlock(ptr noundef %iolock) #7
  %call17.i = call i32 @wait_woken(ptr noundef nonnull %wait.i, i32 noundef 1, i32 noundef %cond.i73) #7
  call void @mutex_lock_nested(ptr noundef %iolock, i32 noundef 0) #7
  %64 = ptrtoint ptr %sk_receive_queue to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %sk_receive_queue, align 4
  %cmp.i56.not.i = icmp eq ptr %65, %sk_receive_queue
  br i1 %cmp.i56.not.i, label %lor.lhs.false23.i, label %if.then16.i.if.end34.i_crit_edge

if.then16.i.if.end34.i_crit_edge:                 ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34.i

lor.lhs.false23.i:                                ; preds = %if.then16.i
  %66 = ptrtoint ptr %ingress_skb.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %ingress_skb.i, align 4
  %cmp.i58.not.i = icmp eq ptr %67, %ingress_skb.i
  br i1 %cmp.i58.not.i, label %lor.rhs27.i, label %lor.lhs.false23.i.if.end34.i_crit_edge

lor.lhs.false23.i.if.end34.i_crit_edge:           ; preds = %lor.lhs.false23.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34.i

lor.rhs27.i:                                      ; preds = %lor.lhs.false23.i
  call void @__sanitizer_cov_trace_pc() #9
  %68 = ptrtoint ptr %ingress_msg.i77 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile ptr, ptr %ingress_msg.i77, align 4
  %cmp.i60.i = icmp ne ptr %69, %ingress_msg.i77
  %phi.cast.i = zext i1 %cmp.i60.i to i32
  br label %if.end34.i

if.end34.i:                                       ; preds = %lor.rhs27.i, %lor.lhs.false23.i.if.end34.i_crit_edge, %if.then16.i.if.end34.i_crit_edge, %lor.rhs.i.if.end34.i_crit_edge, %lor.lhs.false.i.if.end34.i_crit_edge, %sk_set_bit.exit.i.if.end34.i_crit_edge
  %ret.0.i = phi i32 [ 0, %lor.rhs.i.if.end34.i_crit_edge ], [ 1, %lor.lhs.false23.i.if.end34.i_crit_edge ], [ 1, %if.then16.i.if.end34.i_crit_edge ], [ %phi.cast.i, %lor.rhs27.i ], [ 0, %lor.lhs.false.i.if.end34.i_crit_edge ], [ 0, %sk_set_bit.exit.i.if.end34.i_crit_edge ]
  %70 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load volatile i32, ptr %36, align 4
  %72 = and i32 %71, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool.i.not.i62.i = icmp eq i32 %72, 0
  br i1 %tobool.i.not.i62.i, label %if.end34.i.unix_msg_wait_data.exit_crit_edge, label %if.end.i64.i

if.end34.i.unix_msg_wait_data.exit_crit_edge:     ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %unix_msg_wait_data.exit

if.end.i64.i:                                     ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #9
  %73 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %35, align 8
  %flags.i63.i = getelementptr inbounds %struct.socket_wq, ptr %74, i32 0, i32 2
  call void @_clear_bit(i32 noundef 1, ptr noundef %flags.i63.i) #7
  br label %unix_msg_wait_data.exit

unix_msg_wait_data.exit:                          ; preds = %if.end.i64.i, %if.end34.i.unix_msg_wait_data.exit_crit_edge
  %75 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load volatile ptr, ptr %35, align 8
  call void @remove_wait_queue(ptr noundef %76, ptr noundef nonnull %wait.i) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %tobool19.not = icmp eq i32 %ret.0.i, 0
  br i1 %tobool19.not, label %unix_msg_wait_data.exit.if.end28_crit_edge, label %unix_msg_wait_data.exit.sk_psock_queue_empty.exit84_crit_edge

unix_msg_wait_data.exit.sk_psock_queue_empty.exit84_crit_edge: ; preds = %unix_msg_wait_data.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sk_psock_queue_empty.exit84

unix_msg_wait_data.exit.if.end28_crit_edge:       ; preds = %unix_msg_wait_data.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

sk_psock_queue_empty.exit84:                      ; preds = %unix_msg_wait_data.exit.sk_psock_queue_empty.exit84_crit_edge, %unix_msg_wait_data.exit.thread115
  %77 = ptrtoint ptr %ingress_msg.i77 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load volatile ptr, ptr %ingress_msg.i77, align 4
  %cmp.i.i81 = icmp eq ptr %78, %ingress_msg.i77
  br i1 %cmp.i.i81, label %if.end23, label %sk_psock_queue_empty.exit84.msg_bytes_ready_crit_edge

sk_psock_queue_empty.exit84.msg_bytes_ready_crit_edge: ; preds = %sk_psock_queue_empty.exit84
  call void @__sanitizer_cov_trace_pc() #9
  br label %msg_bytes_ready

if.end23:                                         ; preds = %sk_psock_queue_empty.exit84
  call void @mutex_unlock(ptr noundef %iolock) #7
  %refcnt.i85 = getelementptr inbounds %struct.sk_psock, ptr %psock.0.i, i32 0, i32 14
  %call.i.i.i.i.i.i86 = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i85, i32 noundef 4) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !44
  call void @llvm.prefetch.p0(ptr %refcnt.i85, i32 1, i32 3, i32 1) #7
  %79 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i85, ptr %refcnt.i85, i32 1, ptr elementtype(i32) %refcnt.i85) #7, !srcloc !45
  %asmresult.i.i.i.i.i.i.i87 = extractvalue { i32, i32, i32 } %79, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i87)
  %cmp.i.i.i.i88 = icmp eq i32 %asmresult.i.i.i.i.i.i.i87, 1
  br i1 %cmp.i.i.i.i88, label %if.then.i92, label %if.end5.i.i.i.i90

if.end5.i.i.i.i90:                                ; preds = %if.end23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i87)
  %.not.i.i.i.i89 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i87, 0
  br i1 %.not.i.i.i.i89, label %if.end5.i.i.i.i90.sk_psock_put.exit94_crit_edge, label %if.then10.i.i.i.i91, !prof !36

if.end5.i.i.i.i90.sk_psock_put.exit94_crit_edge:  ; preds = %if.end5.i.i.i.i90
  call void @__sanitizer_cov_trace_pc() #9
  br label %sk_psock_put.exit94

if.then10.i.i.i.i91:                              ; preds = %if.end5.i.i.i.i90
  call void @__sanitizer_cov_trace_pc() #9
  call void @refcount_warn_saturate(ptr noundef %refcnt.i85, i32 noundef 3) #7
  br label %sk_psock_put.exit94

if.then.i92:                                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !46
  call void @sk_psock_drop(ptr noundef %sk, ptr noundef nonnull %psock.0.i) #7
  br label %sk_psock_put.exit94

sk_psock_put.exit94:                              ; preds = %if.then.i92, %if.then10.i.i.i.i91, %if.end5.i.i.i.i90.sk_psock_put.exit94_crit_edge
  %sk_type.i95 = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 45
  %80 = ptrtoint ptr %sk_type.i95 to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %sk_type.i95, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %81)
  %cmp.i96 = icmp eq i16 %81, 2
  br i1 %cmp.i96, label %if.then.i98, label %if.else.i100

if.then.i98:                                      ; preds = %sk_psock_put.exit94
  call void @__sanitizer_cov_trace_pc() #9
  %call.i97 = call i32 @__unix_dgram_recvmsg(ptr noundef %sk, ptr noundef %msg, i32 noundef %len, i32 noundef %flags) #7
  br label %cleanup30

if.else.i100:                                     ; preds = %sk_psock_put.exit94
  call void @__sanitizer_cov_trace_pc() #9
  %call2.i99 = call i32 @__unix_stream_recvmsg(ptr noundef %sk, ptr noundef %msg, i32 noundef %len, i32 noundef %flags) #7
  br label %cleanup30

if.end28:                                         ; preds = %unix_msg_wait_data.exit.if.end28_crit_edge, %unix_msg_wait_data.exit.thread, %msg_bytes_ready.if.end28_crit_edge
  %copied.1 = phi i32 [ -11, %unix_msg_wait_data.exit.thread ], [ -11, %unix_msg_wait_data.exit.if.end28_crit_edge ], [ %call13, %msg_bytes_ready.if.end28_crit_edge ]
  call void @mutex_unlock(ptr noundef %iolock) #7
  %refcnt.i103 = getelementptr inbounds %struct.sk_psock, ptr %psock.0.i, i32 0, i32 14
  %call.i.i.i.i.i.i104 = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i103, i32 noundef 4) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !44
  call void @llvm.prefetch.p0(ptr %refcnt.i103, i32 1, i32 3, i32 1) #7
  %82 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i103, ptr %refcnt.i103, i32 1, ptr elementtype(i32) %refcnt.i103) #7, !srcloc !45
  %asmresult.i.i.i.i.i.i.i105 = extractvalue { i32, i32, i32 } %82, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i105)
  %cmp.i.i.i.i106 = icmp eq i32 %asmresult.i.i.i.i.i.i.i105, 1
  br i1 %cmp.i.i.i.i106, label %if.then.i110, label %if.end5.i.i.i.i108

if.end5.i.i.i.i108:                               ; preds = %if.end28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i105)
  %.not.i.i.i.i107 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i105, 0
  br i1 %.not.i.i.i.i107, label %if.end5.i.i.i.i108.cleanup30_crit_edge, label %if.then10.i.i.i.i109, !prof !36

if.end5.i.i.i.i108.cleanup30_crit_edge:           ; preds = %if.end5.i.i.i.i108
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup30

if.then10.i.i.i.i109:                             ; preds = %if.end5.i.i.i.i108
  call void @__sanitizer_cov_trace_pc() #9
  call void @refcount_warn_saturate(ptr noundef %refcnt.i103, i32 noundef 3) #7
  br label %cleanup30

if.then.i110:                                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !46
  call void @sk_psock_drop(ptr noundef %sk, ptr noundef nonnull %psock.0.i) #7
  br label %cleanup30

cleanup30:                                        ; preds = %if.then.i110, %if.then10.i.i.i.i109, %if.end5.i.i.i.i108.cleanup30_crit_edge, %if.else.i100, %if.then.i98, %if.else.i, %if.then.i72, %if.then
  %retval.2 = phi i32 [ %call5, %if.then ], [ %call.i, %if.then.i72 ], [ %call2.i, %if.else.i ], [ %copied.1, %if.end5.i.i.i.i108.cleanup30_crit_edge ], [ %copied.1, %if.then10.i.i.i.i109 ], [ %copied.1, %if.then.i110 ], [ %call2.i99, %if.else.i100 ], [ %call.i97, %if.then.i98 ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @sk_msg_is_readable(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__unix_recvmsg(ptr noundef %sk, ptr noundef %msg, i32 noundef %len, i32 noundef %flags) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sk_type = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 45
  %0 = ptrtoint ptr %sk_type to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %sk_type, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %1)
  %cmp = icmp eq i16 %1, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @__unix_dgram_recvmsg(ptr noundef %sk, ptr noundef %msg, i32 noundef %len, i32 noundef %flags) #7
  br label %return

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call2 = tail call i32 @__unix_stream_recvmsg(ptr noundef %sk, ptr noundef %msg, i32 noundef %len, i32 noundef %flags) #7
  br label %return

return:                                           ; preds = %if.else, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call2, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sk_msg_recvmsg(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

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
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

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
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__unix_dgram_recvmsg(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__unix_stream_recvmsg(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_psock_drop(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @woken_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_woken(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_map_unhash(ptr noundef) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold mustprogress nofree nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !14, !16, !17, !18, !20, !21, !22, !24}
!llvm.named.register.sp = !{!25}
!llvm.module.flags = !{!26, !27, !28, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{ptr @unix_dgram_bpf_prot, !1, !"unix_dgram_bpf_prot", i1 false, i1 false}
!1 = !{!"../net/unix/unix_bpf.c", i32 94, i32 21}
!2 = !{ptr @unix_stream_bpf_prot, !3, !"unix_stream_bpf_prot", i1 false, i1 false}
!3 = !{!"../net/unix/unix_bpf.c", i32 98, i32 21}
!4 = !{ptr @unix_dgram_prot_saved, !5, !"unix_dgram_prot_saved", i1 false, i1 false}
!5 = !{!"../net/unix/unix_bpf.c", i32 92, i32 22}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../net/unix/unix_bpf.c", i32 93, i32 8}
!8 = !{ptr @unix_dgram_prot_lock, !7, !"unix_dgram_prot_lock", i1 false, i1 false}
!9 = !{ptr @unix_stream_prot_saved, !10, !"unix_stream_prot_saved", i1 false, i1 false}
!10 = !{!"../net/unix/unix_bpf.c", i32 96, i32 22}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../net/unix/unix_bpf.c", i32 97, i32 8}
!13 = !{ptr @unix_stream_prot_lock, !12, !"unix_stream_prot_lock", i1 false, i1 false}
!14 = distinct !{null, !15, !"__warned", i1 false, i1 false}
!15 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = distinct !{null, !19, !"__warned", i1 false, i1 false}
!19 = !{!"../include/linux/skmsg.h", i32 286, i32 9}
!20 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!22 = distinct !{null, !23, !"__warned", i1 false, i1 false}
!23 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!24 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!25 = !{!"sp"}
!26 = !{i32 1, !"wchar_size", i32 2}
!27 = !{i32 1, !"min_enum_size", i32 4}
!28 = !{i32 8, !"branch-target-enforcement", i32 0}
!29 = !{i32 8, !"sign-return-address", i32 0}
!30 = !{i32 8, !"sign-return-address-all", i32 0}
!31 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!32 = !{i32 7, !"uwtable", i32 1}
!33 = !{i32 7, !"frame-pointer", i32 2}
!34 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!35 = !{i64 2158647086}
!36 = !{!"branch_weights", i32 2000, i32 1}
!37 = !{!"branch_weights", i32 1, i32 2000}
!38 = !{i64 2158649462}
!39 = !{i64 2158660323}
!40 = !{i64 2158662721}
!41 = !{i64 2149692031}
!42 = !{i64 1185243, i64 1185267, i64 1185288, i64 1185305, i64 1185322}
!43 = !{i64 2149692297}
!44 = !{i64 2148790265}
!45 = !{i64 2148704705, i64 2148704737, i64 2148704766, i64 2148704800, i64 2148704831, i64 2148704854}
!46 = !{i64 2150253581}
