; ModuleID = '/llk/IR_all_yes/net/ipv4/udp_bpf.c_pt.bc'
source_filename = "../net/ipv4/udp_bpf.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+udp_bpf_update_proto\22, \22a\22\09"
module asm "\09.weak\09__crc_udp_bpf_update_proto\09\09\09\09"
module asm "\09.long\09__crc_udp_bpf_update_proto\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_udp_bpf_update_proto:\09\09\09\09\09"
module asm "\09.asciz \09\22udp_bpf_update_proto\22\09\09\09\09\09"
module asm "__kstrtabns_udp_bpf_update_proto:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.proto = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8, ptr, i32, i32, i32, i32, ptr, ptr, ptr, %union.anon.154, ptr, [32 x i8], %struct.list_head, ptr }
%union.anon.154 = type { ptr }
%struct.list_head = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.spinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.8 }
%union.anon.8 = type { i32 }
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
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%union.anon.158 = type { i32 }
%struct.sk_psock = type { ptr, ptr, i32, i32, i32, ptr, %struct.sk_psock_progs, %struct.strparser, %struct.sk_buff_head, %struct.list_head, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, %struct.refcount_struct, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.sk_psock_work_state, %struct.work_struct, %struct.rcu_work }
%struct.sk_psock_progs = type { ptr, ptr, ptr, ptr }
%struct.strparser = type { ptr, i8, ptr, ptr, i32, %struct.delayed_work, %struct.work_struct, %struct.strp_stats, %struct.strp_callbacks }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.strp_stats = type { i64, i64, i32, i32, i32, i32, i32 }
%struct.strp_callbacks = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sk_buff_head = type { %union.anon.68, i32, %struct.spinlock }
%union.anon.68 = type { %struct.anon.69 }
%struct.anon.69 = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.sk_psock_work_state = type { ptr, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rcu_work = type { %struct.work_struct, %struct.callback_head, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.159, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.160, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.161, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.159 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.160 = type { ptr }
%union.anon.161 = type { ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.udp_sock = type { %struct.inet_sock, i32, i32, i8, i8, i16, i16, i16, i16, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, [92 x i8], %struct.sk_buff_head, i32, [68 x i8] }
%struct.inet_sock = type { %struct.sock, ptr, i32, i16, i16, ptr, i16, i16, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, ptr, %struct.inet_cork_full }
%struct.inet_cork_full = type { %struct.inet_cork, %struct.flowi }
%struct.inet_cork = type { i32, i32, ptr, i32, i32, ptr, i8, i8, i16, i8, i16, i64, i32 }
%struct.flowi = type { %union.anon.39 }
%union.anon.39 = type { %struct.flowi6 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [60 x i8] }

@__initcall__kmod_udp_bpf__603_137_udp_bpf_v4_build_proto7 = internal global ptr @udp_bpf_v4_build_proto, section ".initcall7.init", align 4
@udp_bpf_prots = internal global { [2 x %struct.proto], [104 x i8] } zeroinitializer, align 32
@__kstrtab_udp_bpf_update_proto = external dso_local constant [0 x i8], align 1
@__kstrtabns_udp_bpf_update_proto = external dso_local constant [0 x i8], align 1
@__ksymtab_udp_bpf_update_proto = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @udp_bpf_update_proto to i32), ptr @__kstrtab_udp_bpf_update_proto, ptr @__kstrtabns_udp_bpf_update_proto }, section "___ksymtab_gpl+udp_bpf_update_proto", align 4
@udp_prot = external dso_local local_unnamed_addr global %struct.proto, align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@sk_psock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/linux/skmsg.h\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@udpv6_prot_saved = internal global ptr null, section ".data..read_mostly", align 4
@udpv6_prot_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.7 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.5, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"udpv6_prot_lock\00", [16 x i8] zeroinitializer }, align 32
@___asan_gen_.6 = private unnamed_addr constant [14 x i8] c"udp_bpf_prots\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 110, i32 21 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 695, i32 2 }
@___asan_gen_.19 = private unnamed_addr constant [25 x i8] c"../include/linux/skmsg.h\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 286, i32 9 }
@___asan_gen_.22 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 723, i32 2 }
@___asan_gen_.24 = private unnamed_addr constant [16 x i8] c"udpv6_prot_lock\00", align 1
@___asan_gen_.27 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.28 = private constant [22 x i8] c"../net/ipv4/udp_bpf.c\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 109, i32 8 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @__initcall__kmod_udp_bpf__603_137_udp_bpf_v4_build_proto7, ptr @__ksymtab_udp_bpf_update_proto, ptr @udp_bpf_prots, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @udpv6_prot_lock, ptr @.str.5], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @udp_bpf_prots to i32), i32 504, i32 608, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @udpv6_prot_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold mustprogress nofree nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @udp_bpf_v4_build_proto() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memcpy(ptr @udp_bpf_prots, ptr @udp_prot, i32 252)
  store ptr @sock_map_close, ptr @udp_bpf_prots, align 4
  store ptr @udp_bpf_recvmsg, ptr getelementptr inbounds ([2 x %struct.proto], ptr @udp_bpf_prots, i32 0, i32 0, i32 13), align 4
  store ptr @sk_msg_is_readable, ptr getelementptr inbounds ([2 x %struct.proto], ptr @udp_bpf_prots, i32 0, i32 0, i32 29), align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @udp_bpf_update_proto(ptr noundef %sk, ptr nocapture noundef readonly %psock, i1 noundef zeroext %restore) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %skc_family = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 3
  %0 = ptrtoint ptr %skc_family to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %skc_family, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %1)
  %cmp = icmp ne i16 %1, 2
  %cond = zext i1 %cmp to i32
  br i1 %restore, label %if.then, label %if.end

if.then:                                          ; preds = %entry
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
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %1)
  %cmp12 = icmp eq i16 %1, 10
  br i1 %cmp12, label %if.then14, label %if.end.do.body21_crit_edge

if.end.do.body21_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body21

if.then14:                                        ; preds = %if.end
  %sk_proto15 = getelementptr inbounds %struct.sk_psock, ptr %psock, i32 0, i32 20
  %7 = ptrtoint ptr %sk_proto15 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sk_proto15, align 4
  %9 = load volatile ptr, ptr @udpv6_prot_saved, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !32
  %cmp.not.i = icmp eq ptr %9, %8
  br i1 %cmp.not.i, label %if.then14.do.body21_crit_edge, label %if.then.i, !prof !33

if.then14.do.body21_crit_edge:                    ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body21

if.then.i:                                        ; preds = %if.then14
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @udpv6_prot_lock) #7
  %10 = load ptr, ptr @udpv6_prot_saved, align 4
  %cmp6.not.i = icmp eq ptr %10, %8
  br i1 %cmp6.not.i, label %if.then.i.if.end.i_crit_edge, label %if.then13.i, !prof !34

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then13.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %11 = call ptr @memcpy(ptr getelementptr inbounds ([2 x %struct.proto], ptr @udp_bpf_prots, i32 0, i32 1), ptr %8, i32 252)
  store ptr @sock_map_close, ptr getelementptr inbounds ([2 x %struct.proto], ptr @udp_bpf_prots, i32 0, i32 1), align 4
  store ptr @udp_bpf_recvmsg, ptr getelementptr inbounds ([2 x %struct.proto], ptr @udp_bpf_prots, i32 0, i32 1, i32 13), align 4
  store ptr @sk_msg_is_readable, ptr getelementptr inbounds ([2 x %struct.proto], ptr @udp_bpf_prots, i32 0, i32 1, i32 29), align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !35
  store volatile ptr %8, ptr @udpv6_prot_saved, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then13.i, %if.then.i.if.end.i_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @udpv6_prot_lock) #7
  br label %do.body21

do.body21:                                        ; preds = %if.end.i, %if.then14.do.body21_crit_edge, %if.end.do.body21_crit_edge
  %arrayidx = getelementptr [2 x %struct.proto], ptr @udp_bpf_prots, i32 0, i32 %cond
  br label %cleanup

cleanup:                                          ; preds = %do.body21, %if.then
  %arrayidx.sink = phi ptr [ %arrayidx, %do.body21 ], [ %6, %if.then ]
  %skc_prot23 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 8
  %12 = ptrtoint ptr %skc_prot23 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %arrayidx.sink, ptr %skc_prot23, align 8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_map_close(ptr noundef, i32 noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @udp_bpf_recvmsg(ptr noundef %sk, ptr noundef %msg, i32 noundef %len, i32 noundef %nonblock, i32 noundef %flags, ptr noundef %addr_len) #1 align 64 {
entry:
  %wait.i = alloca %struct.wait_queue_entry, align 4
  %old.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %flags, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then, !prof !33

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @inet_recv_error(ptr noundef %sk, ptr noundef %msg, i32 noundef %len, ptr noundef %addr_len) #7
  br label %cleanup35

if.end:                                           ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !22) #7
  %and.i.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !36
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #7
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i.i, label %if.end.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.end.rcu_read_lock.exit.i_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.end
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 696, ptr noundef nonnull @.str.1) #7
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.end.rcu_read_lock.exit.i_crit_edge
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 286, ptr noundef nonnull @.str.3) #7
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
  %14 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 %13, i32 %add.i.i.i8.i, ptr elementtype(i32) %refcnt.i) #7, !srcloc !37
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %14, 0
  %tobool.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i:     ; preds = %do.body.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i = extractvalue { i32, i32 } %14, 1
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i, %13
  br i1 %cmp.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, !prof !33

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
  br i1 %.not.i.i.i.i, label %if.end4.i.i.i.i.refcount_inc_not_zero.exit.i_crit_edge, label %if.then10.i.i.i.i, !prof !33

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
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 724, ptr noundef nonnull @.str.4) #7
  br label %sk_psock_get.exit

sk_psock_get.exit:                                ; preds = %if.then.i15.i, %land.lhs.true2.i14.i.sk_psock_get.exit_crit_edge, %land.lhs.true.i12.i.sk_psock_get.exit_crit_edge, %if.end.i.sk_psock_get.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !38
  %20 = call i32 @llvm.read_register.i32(metadata !22) #7
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
  %tobool4.not = icmp eq ptr %psock.0.i, null
  br i1 %tobool4.not, label %if.then13, label %if.end15, !prof !34

if.then13:                                        ; preds = %sk_psock_get.exit
  %skc_family.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 3
  %24 = ptrtoint ptr %skc_family.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %skc_family.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %25)
  %cmp.i = icmp eq i16 %25, 10
  br i1 %cmp.i, label %if.then.i, label %if.then13.sk_udp_recvmsg.exit_crit_edge

if.then13.sk_udp_recvmsg.exit_crit_edge:          ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  br label %sk_udp_recvmsg.exit

if.then.i:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  %26 = load ptr, ptr @udpv6_prot_saved, align 4
  %recvmsg.i = getelementptr inbounds %struct.proto, ptr %26, i32 0, i32 13
  br label %sk_udp_recvmsg.exit

sk_udp_recvmsg.exit:                              ; preds = %if.then.i, %if.then13.sk_udp_recvmsg.exit_crit_edge
  %.sink10.i = phi ptr [ %recvmsg.i, %if.then.i ], [ getelementptr inbounds (%struct.proto, ptr @udp_prot, i32 0, i32 13), %if.then13.sk_udp_recvmsg.exit_crit_edge ]
  %27 = ptrtoint ptr %.sink10.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %.sink10.i, align 4
  %call2.i = call i32 %28(ptr noundef %sk, ptr noundef %msg, i32 noundef %len, i32 noundef %nonblock, i32 noundef %flags, ptr noundef %addr_len) #7
  br label %cleanup35

if.end15:                                         ; preds = %sk_psock_get.exit
  %ingress_skb.i = getelementptr inbounds %struct.sk_psock, ptr %psock.0.i, i32 0, i32 8
  %29 = ptrtoint ptr %ingress_skb.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ingress_skb.i, align 4
  %cmp.i.not.i = icmp eq ptr %30, %ingress_skb.i
  br i1 %cmp.i.not.i, label %cond.true.i.i, label %if.end15.msg_bytes_ready.preheader_crit_edge

if.end15.msg_bytes_ready.preheader_crit_edge:     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %msg_bytes_ready.preheader

msg_bytes_ready.preheader:                        ; preds = %cond.true.i.i.msg_bytes_ready.preheader_crit_edge, %if.end15.msg_bytes_ready.preheader_crit_edge
  %call20117 = call i32 @sk_msg_recvmsg(ptr noundef %sk, ptr noundef nonnull %psock.0.i, ptr noundef %msg, i32 noundef %len, i32 noundef %flags) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20117)
  %tobool21.not118 = icmp eq i32 %call20117, 0
  br i1 %tobool21.not118, label %if.then22.lr.ph, label %msg_bytes_ready.preheader.out_crit_edge

msg_bytes_ready.preheader.out_crit_edge:          ; preds = %msg_bytes_ready.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.then22.lr.ph:                                  ; preds = %msg_bytes_ready.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nonblock)
  %tobool23.not = icmp eq i32 %nonblock, 0
  %sk_rcvtimeo.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 62
  %31 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait.i, i32 0, i32 1
  %32 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait.i, i32 0, i32 2
  %33 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait.i, i32 0, i32 3
  %34 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait.i, i32 0, i32 3, i32 1
  %sk_shutdown.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 66
  %35 = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 17
  %36 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 13
  %reader_queue.i.i = getelementptr inbounds %struct.udp_sock, ptr %sk, i32 0, i32 17
  %sk_receive_queue.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 8
  %ingress_msg.i.i.i = getelementptr inbounds %struct.sk_psock, ptr %psock.0.i, i32 0, i32 9
  br label %if.then22

cond.true.i.i:                                    ; preds = %if.end15
  %ingress_msg.i.i = getelementptr inbounds %struct.sk_psock, ptr %psock.0.i, i32 0, i32 9
  %37 = ptrtoint ptr %ingress_msg.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile ptr, ptr %ingress_msg.i.i, align 4
  %cmp.i.i.i.not = icmp eq ptr %38, %ingress_msg.i.i
  br i1 %cmp.i.i.i.not, label %if.then17, label %cond.true.i.i.msg_bytes_ready.preheader_crit_edge

cond.true.i.i.msg_bytes_ready.preheader_crit_edge: ; preds = %cond.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %msg_bytes_ready.preheader

if.then17:                                        ; preds = %cond.true.i.i
  %skc_family.i71 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 3
  %39 = ptrtoint ptr %skc_family.i71 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %skc_family.i71, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %40)
  %cmp.i72 = icmp eq i16 %40, 10
  br i1 %cmp.i72, label %if.then.i74, label %if.then17.sk_udp_recvmsg.exit77_crit_edge

if.then17.sk_udp_recvmsg.exit77_crit_edge:        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #9
  br label %sk_udp_recvmsg.exit77

if.then.i74:                                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #9
  %41 = load ptr, ptr @udpv6_prot_saved, align 4
  %recvmsg.i73 = getelementptr inbounds %struct.proto, ptr %41, i32 0, i32 13
  br label %sk_udp_recvmsg.exit77

sk_udp_recvmsg.exit77:                            ; preds = %if.then.i74, %if.then17.sk_udp_recvmsg.exit77_crit_edge
  %.sink10.i75 = phi ptr [ %recvmsg.i73, %if.then.i74 ], [ getelementptr inbounds (%struct.proto, ptr @udp_prot, i32 0, i32 13), %if.then17.sk_udp_recvmsg.exit77_crit_edge ]
  %42 = ptrtoint ptr %.sink10.i75 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %.sink10.i75, align 4
  %call2.i76 = call i32 %43(ptr noundef %sk, ptr noundef %msg, i32 noundef %len, i32 noundef %nonblock, i32 noundef %flags, ptr noundef %addr_len) #7
  br label %out

if.then22:                                        ; preds = %cleanup.if.then22_crit_edge, %if.then22.lr.ph
  br i1 %tobool23.not, label %cond.false.i, label %if.then22.sock_rcvtimeo.exit_crit_edge

if.then22.sock_rcvtimeo.exit_crit_edge:           ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #9
  br label %sock_rcvtimeo.exit

cond.false.i:                                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #9
  %44 = ptrtoint ptr %sk_rcvtimeo.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %sk_rcvtimeo.i, align 4
  br label %sock_rcvtimeo.exit

sock_rcvtimeo.exit:                               ; preds = %cond.false.i, %if.then22.sock_rcvtimeo.exit_crit_edge
  %cond.i = phi i32 [ %45, %cond.false.i ], [ 0, %if.then22.sock_rcvtimeo.exit_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait.i) #7
  %46 = ptrtoint ptr %wait.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %wait.i, align 4
  %47 = call i32 @llvm.read_register.i32(metadata !22) #7
  %and.i.i78 = and i32 %47, -16384
  %48 = inttoptr i32 %and.i.i78 to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %48, i32 0, i32 2
  %49 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %task.i, align 8
  %51 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %50, ptr %31, align 4
  %52 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @woken_wake_function, ptr %32, align 4
  %53 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %33, ptr %33, align 4
  %54 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %33, ptr %34, align 4
  %55 = ptrtoint ptr %sk_shutdown.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %sk_shutdown.i, align 2
  %57 = and i8 %56, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool.not.i79 = icmp eq i8 %57, 0
  br i1 %tobool.not.i79, label %if.end.i80, label %udp_msg_wait_data.exit.thread107

udp_msg_wait_data.exit.thread107:                 ; preds = %sock_rcvtimeo.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait.i) #7
  br label %if.then27

if.end.i80:                                       ; preds = %sock_rcvtimeo.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i)
  %tobool4.not.i = icmp eq i32 %cond.i, 0
  br i1 %tobool4.not.i, label %udp_msg_wait_data.exit.thread, label %if.end6.i

udp_msg_wait_data.exit.thread:                    ; preds = %if.end.i80
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait.i) #7
  br label %out

if.end6.i:                                        ; preds = %if.end.i80
  %58 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile ptr, ptr %35, align 8
  call void @add_wait_queue(ptr noundef %59, ptr noundef nonnull %wait.i) #7
  %60 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile i32, ptr %36, align 4
  %62 = and i32 %61, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool.i.not.i.i = icmp eq i32 %62, 0
  br i1 %tobool.i.not.i.i, label %if.end6.i.sk_set_bit.exit.i_crit_edge, label %if.end.i.i

if.end6.i.sk_set_bit.exit.i_crit_edge:            ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sk_set_bit.exit.i

if.end.i.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  %63 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %35, align 8
  %flags.i.i = getelementptr inbounds %struct.socket_wq, ptr %64, i32 0, i32 2
  call void @_set_bit(i32 noundef 1, ptr noundef %flags.i.i) #7
  br label %sk_set_bit.exit.i

sk_set_bit.exit.i:                                ; preds = %if.end.i.i, %if.end6.i.sk_set_bit.exit.i_crit_edge
  %65 = ptrtoint ptr %reader_queue.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %reader_queue.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %66, %reader_queue.i.i
  br i1 %cmp.i.not.i.i, label %udp_sk_has_data.exit.i, label %sk_set_bit.exit.i.if.end23.i_crit_edge

sk_set_bit.exit.i.if.end23.i_crit_edge:           ; preds = %sk_set_bit.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23.i

udp_sk_has_data.exit.i:                           ; preds = %sk_set_bit.exit.i
  %67 = ptrtoint ptr %sk_receive_queue.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %sk_receive_queue.i.i, align 4
  %cmp.i5.i.not.i = icmp eq ptr %68, %sk_receive_queue.i.i
  br i1 %cmp.i5.i.not.i, label %lor.rhs.i81, label %udp_sk_has_data.exit.i.if.end23.i_crit_edge

udp_sk_has_data.exit.i.if.end23.i_crit_edge:      ; preds = %udp_sk_has_data.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23.i

lor.rhs.i81:                                      ; preds = %udp_sk_has_data.exit.i
  %69 = ptrtoint ptr %ingress_skb.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %ingress_skb.i, align 4
  %cmp.i.not.i36.i = icmp eq ptr %70, %ingress_skb.i
  br i1 %cmp.i.not.i36.i, label %lor.end.i, label %lor.rhs.i81.if.end23.i_crit_edge

lor.rhs.i81.if.end23.i_crit_edge:                 ; preds = %lor.rhs.i81
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23.i

lor.end.i:                                        ; preds = %lor.rhs.i81
  %71 = ptrtoint ptr %ingress_msg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load volatile ptr, ptr %ingress_msg.i.i.i, align 4
  %cmp.i.i.i.not.i = icmp eq ptr %72, %ingress_msg.i.i.i
  br i1 %cmp.i.i.i.not.i, label %if.then13.i, label %lor.end.i.if.end23.i_crit_edge

lor.end.i.if.end23.i_crit_edge:                   ; preds = %lor.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23.i

if.then13.i:                                      ; preds = %lor.end.i
  %call14.i = call i32 @wait_woken(ptr noundef nonnull %wait.i, i32 noundef 1, i32 noundef %cond.i) #7
  %73 = ptrtoint ptr %reader_queue.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %reader_queue.i.i, align 4
  %cmp.i.not.i39.i = icmp eq ptr %74, %reader_queue.i.i
  br i1 %cmp.i.not.i39.i, label %udp_sk_has_data.exit43.i, label %if.then13.i.if.end23.i_crit_edge

if.then13.i.if.end23.i_crit_edge:                 ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23.i

udp_sk_has_data.exit43.i:                         ; preds = %if.then13.i
  %75 = ptrtoint ptr %sk_receive_queue.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %sk_receive_queue.i.i, align 4
  %cmp.i5.i41.not.i = icmp eq ptr %76, %sk_receive_queue.i.i
  br i1 %cmp.i5.i41.not.i, label %lor.rhs18.i, label %udp_sk_has_data.exit43.i.if.end23.i_crit_edge

udp_sk_has_data.exit43.i.if.end23.i_crit_edge:    ; preds = %udp_sk_has_data.exit43.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23.i

lor.rhs18.i:                                      ; preds = %udp_sk_has_data.exit43.i
  %77 = ptrtoint ptr %ingress_skb.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %ingress_skb.i, align 4
  %cmp.i.not.i45.i.not = icmp eq ptr %78, %ingress_skb.i
  br i1 %cmp.i.not.i45.i.not, label %cond.true.i.i50.i, label %lor.rhs18.i.if.end23.i_crit_edge

lor.rhs18.i.if.end23.i_crit_edge:                 ; preds = %lor.rhs18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23.i

cond.true.i.i50.i:                                ; preds = %lor.rhs18.i
  call void @__sanitizer_cov_trace_pc() #9
  %79 = ptrtoint ptr %ingress_msg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load volatile ptr, ptr %ingress_msg.i.i.i, align 4
  %cmp.i.i.i49.i = icmp ne ptr %80, %ingress_msg.i.i.i
  br label %if.end23.i

if.end23.i:                                       ; preds = %cond.true.i.i50.i, %lor.rhs18.i.if.end23.i_crit_edge, %udp_sk_has_data.exit43.i.if.end23.i_crit_edge, %if.then13.i.if.end23.i_crit_edge, %lor.end.i.if.end23.i_crit_edge, %lor.rhs.i81.if.end23.i_crit_edge, %udp_sk_has_data.exit.i.if.end23.i_crit_edge, %sk_set_bit.exit.i.if.end23.i_crit_edge
  %ret.0.shrunk.i = phi i1 [ true, %lor.end.i.if.end23.i_crit_edge ], [ true, %udp_sk_has_data.exit43.i.if.end23.i_crit_edge ], [ true, %udp_sk_has_data.exit.i.if.end23.i_crit_edge ], [ true, %lor.rhs.i81.if.end23.i_crit_edge ], [ true, %sk_set_bit.exit.i.if.end23.i_crit_edge ], [ true, %if.then13.i.if.end23.i_crit_edge ], [ true, %lor.rhs18.i.if.end23.i_crit_edge ], [ %cmp.i.i.i49.i, %cond.true.i.i50.i ]
  %81 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load volatile i32, ptr %36, align 4
  %83 = and i32 %82, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %tobool.i.not.i52.i = icmp eq i32 %83, 0
  br i1 %tobool.i.not.i52.i, label %if.end23.i.udp_msg_wait_data.exit_crit_edge, label %if.end.i54.i

if.end23.i.udp_msg_wait_data.exit_crit_edge:      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %udp_msg_wait_data.exit

if.end.i54.i:                                     ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #9
  %84 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %35, align 8
  %flags.i53.i = getelementptr inbounds %struct.socket_wq, ptr %85, i32 0, i32 2
  call void @_clear_bit(i32 noundef 1, ptr noundef %flags.i53.i) #7
  br label %udp_msg_wait_data.exit

udp_msg_wait_data.exit:                           ; preds = %if.end.i54.i, %if.end23.i.udp_msg_wait_data.exit_crit_edge
  %86 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load volatile ptr, ptr %35, align 8
  call void @remove_wait_queue(ptr noundef %87, ptr noundef nonnull %wait.i) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait.i) #7
  br i1 %ret.0.shrunk.i, label %udp_msg_wait_data.exit.if.then27_crit_edge, label %udp_msg_wait_data.exit.out_crit_edge

udp_msg_wait_data.exit.out_crit_edge:             ; preds = %udp_msg_wait_data.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

udp_msg_wait_data.exit.if.then27_crit_edge:       ; preds = %udp_msg_wait_data.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then27

if.then27:                                        ; preds = %udp_msg_wait_data.exit.if.then27_crit_edge, %udp_msg_wait_data.exit.thread107
  %88 = ptrtoint ptr %ingress_skb.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %ingress_skb.i, align 4
  %cmp.i.not.i83 = icmp eq ptr %89, %ingress_skb.i
  br i1 %cmp.i.not.i83, label %psock_has_data.exit90, label %if.then27.cleanup_crit_edge

if.then27.cleanup_crit_edge:                      ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

psock_has_data.exit90:                            ; preds = %if.then27
  %90 = ptrtoint ptr %ingress_msg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load volatile ptr, ptr %ingress_msg.i.i.i, align 4
  %cmp.i.i.i87.not = icmp eq ptr %91, %ingress_msg.i.i.i
  br i1 %cmp.i.i.i87.not, label %if.end30, label %psock_has_data.exit90.cleanup_crit_edge

psock_has_data.exit90.cleanup_crit_edge:          ; preds = %psock_has_data.exit90
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end30:                                         ; preds = %psock_has_data.exit90
  %skc_family.i91 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 3
  %92 = ptrtoint ptr %skc_family.i91 to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %skc_family.i91, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %93)
  %cmp.i92 = icmp eq i16 %93, 10
  br i1 %cmp.i92, label %if.then.i94, label %if.end30.cleanup.thread113_crit_edge

if.end30.cleanup.thread113_crit_edge:             ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread113

if.then.i94:                                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  %94 = load ptr, ptr @udpv6_prot_saved, align 4
  %recvmsg.i93 = getelementptr inbounds %struct.proto, ptr %94, i32 0, i32 13
  br label %cleanup.thread113

cleanup.thread113:                                ; preds = %if.then.i94, %if.end30.cleanup.thread113_crit_edge
  %.sink10.i95 = phi ptr [ %recvmsg.i93, %if.then.i94 ], [ getelementptr inbounds (%struct.proto, ptr @udp_prot, i32 0, i32 13), %if.end30.cleanup.thread113_crit_edge ]
  %95 = ptrtoint ptr %.sink10.i95 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %.sink10.i95, align 4
  %call2.i96 = call i32 %96(ptr noundef %sk, ptr noundef %msg, i32 noundef %len, i32 noundef %nonblock, i32 noundef %flags, ptr noundef %addr_len) #7
  br label %out

cleanup:                                          ; preds = %psock_has_data.exit90.cleanup_crit_edge, %if.then27.cleanup_crit_edge
  %call20 = call i32 @sk_msg_recvmsg(ptr noundef %sk, ptr noundef nonnull %psock.0.i, ptr noundef %msg, i32 noundef %len, i32 noundef %flags) #7
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %cleanup.if.then22_crit_edge, label %cleanup.out_crit_edge

cleanup.out_crit_edge:                            ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

cleanup.if.then22_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then22

out:                                              ; preds = %cleanup.out_crit_edge, %cleanup.thread113, %udp_msg_wait_data.exit.out_crit_edge, %udp_msg_wait_data.exit.thread, %sk_udp_recvmsg.exit77, %msg_bytes_ready.preheader.out_crit_edge
  %ret.2 = phi i32 [ %call2.i76, %sk_udp_recvmsg.exit77 ], [ %call2.i96, %cleanup.thread113 ], [ -11, %udp_msg_wait_data.exit.thread ], [ %call20117, %msg_bytes_ready.preheader.out_crit_edge ], [ %call20, %cleanup.out_crit_edge ], [ -11, %udp_msg_wait_data.exit.out_crit_edge ]
  %refcnt.i98 = getelementptr inbounds %struct.sk_psock, ptr %psock.0.i, i32 0, i32 14
  %call.i.i.i.i.i.i99 = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i98, i32 noundef 4) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !39
  call void @llvm.prefetch.p0(ptr %refcnt.i98, i32 1, i32 3, i32 1) #7
  %97 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i98, ptr %refcnt.i98, i32 1, ptr elementtype(i32) %refcnt.i98) #7, !srcloc !40
  %asmresult.i.i.i.i.i.i.i100 = extractvalue { i32, i32, i32 } %97, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i100)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i100, 1
  br i1 %cmp.i.i.i.i, label %if.then.i103, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %out
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i100)
  %.not.i.i.i.i101 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i100, 0
  br i1 %.not.i.i.i.i101, label %if.end5.i.i.i.i.cleanup35_crit_edge, label %if.then10.i.i.i.i102, !prof !33

if.end5.i.i.i.i.cleanup35_crit_edge:              ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup35

if.then10.i.i.i.i102:                             ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @refcount_warn_saturate(ptr noundef %refcnt.i98, i32 noundef 3) #7
  br label %cleanup35

if.then.i103:                                     ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !41
  call void @sk_psock_drop(ptr noundef %sk, ptr noundef nonnull %psock.0.i) #7
  br label %cleanup35

cleanup35:                                        ; preds = %if.then.i103, %if.then10.i.i.i.i102, %if.end5.i.i.i.i.cleanup35_crit_edge, %sk_udp_recvmsg.exit, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call2.i, %sk_udp_recvmsg.exit ], [ %ret.2, %if.end5.i.i.i.i.cleanup35_crit_edge ], [ %ret.2, %if.then10.i.i.i.i102 ], [ %ret.2, %if.then.i103 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @sk_msg_is_readable(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_recv_error(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

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
declare dso_local void @sk_psock_drop(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { cold mustprogress nofree nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !12, !13, !14, !16, !17, !19, !21}
!llvm.named.register.sp = !{!22}
!llvm.module.flags = !{!23, !24, !25, !26, !27, !28, !29, !30}
!llvm.ident = !{!31}

!0 = !{ptr @__initcall__kmod_udp_bpf__603_137_udp_bpf_v4_build_proto7, !1, !"__initcall__kmod_udp_bpf__603_137_udp_bpf_v4_build_proto7", i1 false, i1 false}
!1 = !{!"../net/ipv4/udp_bpf.c", i32 137, i32 1}
!2 = !{ptr @__ksymtab_udp_bpf_update_proto, !3, !"__ksymtab_udp_bpf_update_proto", i1 false, i1 false}
!3 = !{!"../net/ipv4/udp_bpf.c", i32 155, i32 1}
!4 = !{ptr @udp_bpf_prots, !5, !"udp_bpf_prots", i1 false, i1 false}
!5 = !{!"../net/ipv4/udp_bpf.c", i32 110, i32 21}
!6 = distinct !{null, !7, !"__warned", i1 false, i1 false}
!7 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!8 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!10 = distinct !{null, !11, !"__warned", i1 false, i1 false}
!11 = !{!"../include/linux/skmsg.h", i32 286, i32 9}
!12 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!14 = distinct !{null, !15, !"__warned", i1 false, i1 false}
!15 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!16 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @udpv6_prot_saved, !18, !"udpv6_prot_saved", i1 false, i1 false}
!18 = !{!"../net/ipv4/udp_bpf.c", i32 11, i32 22}
!19 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../net/ipv4/udp_bpf.c", i32 109, i32 8}
!21 = !{ptr @udpv6_prot_lock, !20, !"udpv6_prot_lock", i1 false, i1 false}
!22 = !{!"sp"}
!23 = !{i32 1, !"wchar_size", i32 2}
!24 = !{i32 1, !"min_enum_size", i32 4}
!25 = !{i32 8, !"branch-target-enforcement", i32 0}
!26 = !{i32 8, !"sign-return-address", i32 0}
!27 = !{i32 8, !"sign-return-address-all", i32 0}
!28 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!29 = !{i32 7, !"uwtable", i32 1}
!30 = !{i32 7, !"frame-pointer", i32 2}
!31 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!32 = !{i64 2158718571}
!33 = !{!"branch_weights", i32 2000, i32 1}
!34 = !{!"branch_weights", i32 1, i32 2000}
!35 = !{i64 2158720837}
!36 = !{i64 2149691155}
!37 = !{i64 1184367, i64 1184391, i64 1184412, i64 1184429, i64 1184446}
!38 = !{i64 2149691421}
!39 = !{i64 2148789389}
!40 = !{i64 2148703829, i64 2148703861, i64 2148703890, i64 2148703924, i64 2148703955, i64 2148703978}
!41 = !{i64 2150252705}
