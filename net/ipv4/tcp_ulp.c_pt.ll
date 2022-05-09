; ModuleID = '/llk/IR_all_yes/net/ipv4/tcp_ulp.c_pt.bc'
source_filename = "../net/ipv4/tcp_ulp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+tcp_register_ulp\22, \22a\22\09"
module asm "\09.weak\09__crc_tcp_register_ulp\09\09\09\09"
module asm "\09.long\09__crc_tcp_register_ulp\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tcp_register_ulp:\09\09\09\09\09"
module asm "\09.asciz \09\22tcp_register_ulp\22\09\09\09\09\09"
module asm "__kstrtabns_tcp_register_ulp:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+tcp_unregister_ulp\22, \22a\22\09"
module asm "\09.weak\09__crc_tcp_unregister_ulp\09\09\09\09"
module asm "\09.long\09__crc_tcp_unregister_ulp\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tcp_unregister_ulp:\09\09\09\09\09"
module asm "\09.asciz \09\22tcp_unregister_ulp\22\09\09\09\09\09"
module asm "__kstrtabns_tcp_unregister_ulp:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.spinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.8 }
%union.anon.8 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.tcp_ulp_ops = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, [16 x i8], ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.inet_connection_sock = type { %struct.inet_sock, %struct.request_sock_queue, ptr, i32, %struct.timer_list, %struct.timer_list, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.hlist_node, ptr, i8, i8, i8, i8, i8, i8, i16, %struct.anon.192, %struct.anon.193, i32, i32, [13 x i64] }
%struct.inet_sock = type { %struct.sock, ptr, i32, i16, i16, ptr, i16, i16, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, ptr, %struct.inet_cork_full }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.159, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.160, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.161, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.sock_common = type { %union.anon, %union.anon.0, %union.anon.1, i16, i8, i8, i32, %union.anon.3, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.155, [0 x i32], %union.anon.156, i16, i16, %union.anon.157, %struct.refcount_struct, [0 x i32], %union.anon.158 }
%union.anon = type { i64 }
%union.anon.0 = type { i32 }
%union.anon.1 = type { i32 }
%union.anon.3 = type { %struct.hlist_node }
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
%struct.inet_cork_full = type { %struct.inet_cork, %struct.flowi }
%struct.inet_cork = type { i32, i32, ptr, i32, i32, ptr, i8, i8, i16, i8, i16, i64, i32 }
%struct.flowi = type { %union.anon.39 }
%union.anon.39 = type { %struct.flowi6 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.request_sock_queue = type { %struct.spinlock, i8, i32, %struct.atomic_t, %struct.atomic_t, ptr, ptr, %struct.fastopen_queue }
%struct.fastopen_queue = type { ptr, ptr, %struct.spinlock, i32, i32, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.anon.192 = type { i8, i8, i8, i8, i32, i32, i32, i16, i16 }
%struct.anon.193 = type { i32, i32, i32, i32 }

@tcp_ulp_list_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.7 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.5, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@tcp_ulp_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @tcp_ulp_list, ptr @tcp_ulp_list }, [24 x i8] zeroinitializer }, align 32
@__kstrtab_tcp_register_ulp = external dso_local constant [0 x i8], align 1
@__kstrtabns_tcp_register_ulp = external dso_local constant [0 x i8], align 1
@__ksymtab_tcp_register_ulp = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tcp_register_ulp to i32), ptr @__kstrtab_tcp_register_ulp, ptr @__kstrtabns_tcp_register_ulp }, section "___ksymtab_gpl+tcp_register_ulp", align 4
@__kstrtab_tcp_unregister_ulp = external dso_local constant [0 x i8], align 1
@__kstrtabns_tcp_unregister_ulp = external dso_local constant [0 x i8], align 1
@__ksymtab_tcp_unregister_ulp = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tcp_unregister_ulp to i32), ptr @__kstrtab_tcp_unregister_ulp, ptr @__kstrtabns_tcp_unregister_ulp }, section "___ksymtab_gpl+tcp_unregister_ulp", align 4
@tcp_get_available_ulp.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"net/ipv4/tcp_ulp.c\00", [45 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%s%s\00", [27 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c" \00", [30 x i8] zeroinitializer }, align 32
@tcp_get_available_ulp.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.5 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tcp_ulp_list_lock\00", [46 x i8] zeroinitializer }, align 32
@tcp_ulp_find.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.8 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@sock_owned_by_me.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str.9 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"include/net/sock.h\00", [45 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"tcp-ulp-%s\00", [21 x i8] zeroinitializer }, align 32
@___asan_gen_.11 = private unnamed_addr constant [18 x i8] c"tcp_ulp_list_lock\00", align 1
@___asan_gen_.14 = private unnamed_addr constant [13 x i8] c"tcp_ulp_list\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 18, i32 8 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 92, i32 2 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 94, i32 6 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 95, i32 18 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 95, i32 23 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 17, i32 8 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 695, i32 2 }
@___asan_gen_.42 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 723, i32 2 }
@___asan_gen_.45 = private unnamed_addr constant [22 x i8] c"../include/net/sock.h\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 1750, i32 2 }
@___asan_gen_.47 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.48 = private constant [22 x i8] c"../net/ipv4/tcp_ulp.c\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 44, i32 3 }
@llvm.compiler.used = appending global [15 x ptr] [ptr @__ksymtab_tcp_register_ulp, ptr @__ksymtab_tcp_unregister_ulp, ptr @tcp_ulp_list_lock, ptr @tcp_ulp_list, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcp_ulp_list_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcp_ulp_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tcp_register_ulp(ptr noundef %ulp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @tcp_ulp_list_lock) #6
  %name = getelementptr inbounds %struct.tcp_ulp_ops, ptr %ulp, i32 0, i32 7
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.spinlock, ptr @tcp_ulp_list_lock, i32 0, i32 0, i32 0, i32 4), i32 noundef -1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %entry.for.cond.i.preheader_crit_edge

entry.for.cond.i.preheader_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i.preheader

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @rcu_read_lock_any_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true3.i, label %land.lhs.true.i.for.cond.i.preheader_crit_edge

land.lhs.true.i.for.cond.i.preheader_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i.preheader

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %call4.i = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %land.lhs.true3.i.for.cond.i.preheader_crit_edge, label %land.lhs.true6.i

land.lhs.true3.i.for.cond.i.preheader_crit_edge:  ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i.preheader

land.lhs.true6.i:                                 ; preds = %land.lhs.true3.i
  %.b28.i = load i1, ptr @tcp_ulp_find.__warned, align 1
  br i1 %.b28.i, label %land.lhs.true6.i.for.cond.i.preheader_crit_edge, label %if.then.i

land.lhs.true6.i.for.cond.i.preheader_crit_edge:  ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i.preheader

if.then.i:                                        ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @tcp_ulp_find.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 26, ptr noundef nonnull @.str.1) #6
  br label %for.cond.i.preheader

for.cond.i.preheader:                             ; preds = %if.then.i, %land.lhs.true6.i.for.cond.i.preheader_crit_edge, %land.lhs.true3.i.for.cond.i.preheader_crit_edge, %land.lhs.true.i.for.cond.i.preheader_crit_edge, %entry.for.cond.i.preheader_crit_edge
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %for.cond.i.preheader
  %e.0.in.i = phi ptr [ %e.0.i, %for.body.i.for.cond.i_crit_edge ], [ @tcp_ulp_list, %for.cond.i.preheader ]
  %0 = ptrtoint ptr %e.0.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %e.0.i = load volatile ptr, ptr %e.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %e.0.i, @tcp_ulp_list
  br i1 %cmp.not.i, label %for.cond.i.if.else_crit_edge, label %for.body.i

for.cond.i.if.else_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

for.body.i:                                       ; preds = %for.cond.i
  %name12.i = getelementptr inbounds %struct.tcp_ulp_ops, ptr %e.0.i, i32 0, i32 7
  %call13.i = tail call i32 @strcmp(ptr noundef %name12.i, ptr noundef %name) #9
  %cmp14.i = icmp eq i32 %call13.i, 0
  br i1 %cmp14.i, label %tcp_ulp_find.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i

tcp_ulp_find.exit:                                ; preds = %for.body.i
  %tobool.not = icmp eq ptr %e.0.i, null
  br i1 %tobool.not, label %tcp_ulp_find.exit.if.else_crit_edge, label %tcp_ulp_find.exit.if.end_crit_edge

tcp_ulp_find.exit.if.end_crit_edge:               ; preds = %tcp_ulp_find.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

tcp_ulp_find.exit.if.else_crit_edge:              ; preds = %tcp_ulp_find.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.else:                                          ; preds = %tcp_ulp_find.exit.if.else_crit_edge, %for.cond.i.if.else_crit_edge
  %1 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @tcp_ulp_list, i32 0, i32 1), align 4
  %call.i.i2 = tail call zeroext i1 @__list_add_valid(ptr noundef %ulp, ptr noundef %1, ptr noundef nonnull @tcp_ulp_list) #6
  br i1 %call.i.i2, label %if.end.i.i, label %if.else.if.end_crit_edge

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end.i.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %ulp to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @tcp_ulp_list, ptr %ulp, align 4
  %prev2.i.i = getelementptr inbounds %struct.list_head, ptr %ulp, i32 0, i32 1
  %3 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %1, ptr %prev2.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !45
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %ulp, ptr %1, align 4
  store ptr %ulp, ptr getelementptr inbounds (%struct.list_head, ptr @tcp_ulp_list, i32 0, i32 1), align 4
  br label %if.end

if.end:                                           ; preds = %if.end.i.i, %if.else.if.end_crit_edge, %tcp_ulp_find.exit.if.end_crit_edge
  %ret.0 = phi i32 [ -17, %tcp_ulp_find.exit.if.end_crit_edge ], [ 0, %if.else.if.end_crit_edge ], [ 0, %if.end.i.i ]
  tail call void @_raw_spin_unlock(ptr noundef nonnull @tcp_ulp_list_lock) #6
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tcp_unregister_ulp(ptr noundef %ulp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @tcp_ulp_list_lock) #6
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %ulp) #6
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del_rcu.exit_crit_edge

entry.list_del_rcu.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del_rcu.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %ulp, i32 0, i32 1
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %2 = ptrtoint ptr %ulp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ulp, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %list_del_rcu.exit

list_del_rcu.exit:                                ; preds = %if.end.i.i, %entry.list_del_rcu.exit_crit_edge
  %prev.i = getelementptr inbounds %struct.list_head, ptr %ulp, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @tcp_ulp_list_lock) #6
  tail call void @synchronize_rcu() #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tcp_get_available_ulp(ptr nocapture noundef writeonly %buf, i32 noundef %maxlen) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %buf, align 1
  %1 = tail call i32 @llvm.read_register.i32(metadata !35) #6
  %and.i.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %4, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !46
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #6
  %call.i = tail call zeroext i1 @rcu_is_watching() #6
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 696, ptr noundef nonnull @.str.7) #6
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call = tail call i32 @rcu_read_lock_any_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.for.cond.preheader_crit_edge

rcu_read_lock.exit.for.cond.preheader_crit_edge:  ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.preheader

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.for.cond.preheader_crit_edge, label %land.lhs.true3

land.lhs.true.for.cond.preheader_crit_edge:       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.preheader

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b77 = load i1, ptr @tcp_get_available_ulp.__warned, align 1
  br i1 %.b77, label %land.lhs.true3.for.cond.preheader_crit_edge, label %if.then

land.lhs.true3.for.cond.preheader_crit_edge:      ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.preheader

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @tcp_get_available_ulp.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 92, ptr noundef nonnull @.str.1) #6
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.then, %land.lhs.true3.for.cond.preheader_crit_edge, %land.lhs.true.for.cond.preheader_crit_edge, %rcu_read_lock.exit.for.cond.preheader_crit_edge
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %for.cond.preheader
  %offs.0 = phi i32 [ %add, %for.body.for.cond_crit_edge ], [ 0, %for.cond.preheader ]
  %ulp_ops.0.in = phi ptr [ %ulp_ops.0, %for.body.for.cond_crit_edge ], [ @tcp_ulp_list, %for.cond.preheader ]
  %5 = ptrtoint ptr %ulp_ops.0.in to i32
  call void @__asan_load4_noabort(i32 %5)
  %ulp_ops.0 = load volatile ptr, ptr %ulp_ops.0.in, align 4
  %cmp.not = icmp eq ptr %ulp_ops.0, @tcp_ulp_list
  br i1 %cmp.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.cond
  %add.ptr9 = getelementptr i8, ptr %buf, i32 %offs.0
  %sub = sub i32 %maxlen, %offs.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %offs.0)
  %cmp10 = icmp eq i32 %offs.0, 0
  %cond = select i1 %cmp10, ptr @.str.3, ptr @.str.4
  %name = getelementptr inbounds %struct.tcp_ulp_ops, ptr %ulp_ops.0, i32 0, i32 7
  %call11 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr9, i32 noundef %sub, ptr noundef nonnull @.str.2, ptr noundef nonnull %cond, ptr noundef %name)
  %add = add i32 %call11, %offs.0
  %cmp12.not = icmp ult i32 %add, %maxlen
  br i1 %cmp12.not, label %for.body.for.cond_crit_edge, label %land.rhs

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond

land.rhs:                                         ; preds = %for.body
  %.b7576 = load i1, ptr @tcp_get_available_ulp.__already_done, align 1
  br i1 %.b7576, label %land.rhs.for.end_crit_edge, label %if.then20, !prof !47

land.rhs.for.end_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.then20:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @tcp_get_available_ulp.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 97, i32 noundef 9, ptr noundef null) #6
  br label %for.end

for.end:                                          ; preds = %if.then20, %land.rhs.for.end_crit_edge, %for.cond.for.end_crit_edge
  %call.i79 = tail call zeroext i1 @rcu_is_watching() #6
  br i1 %call.i79, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i82

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit

land.lhs.true.i82:                                ; preds = %for.end
  %call1.i80 = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i80)
  %tobool.not.i81 = icmp eq i32 %call1.i80, 0
  br i1 %tobool.not.i81, label %land.lhs.true.i82.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i84

land.lhs.true.i82.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i82
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit

land.lhs.true2.i84:                               ; preds = %land.lhs.true.i82
  %.b4.i83 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i83, label %land.lhs.true2.i84.rcu_read_unlock.exit_crit_edge, label %if.then.i85

land.lhs.true2.i84.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i84
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit

if.then.i85:                                      ; preds = %land.lhs.true2.i84
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 724, ptr noundef nonnull @.str.8) #6
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i85, %land.lhs.true2.i84.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i82.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !48
  %6 = tail call i32 @llvm.read_register.i32(metadata !35) #6
  %and.i.i.i.i.i86 = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i86 to ptr
  %preempt_count.i.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %preempt_count.i.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %preempt_count.i.i.i.i87, align 4
  %sub.i.i.i = add i32 %9, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i87, align 4
  tail call void @rcu_read_unlock_strict() #6
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tcp_update_ulp(ptr noundef %sk, ptr noundef %proto, ptr noundef %write_space) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %icsk_ulp_ops = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 12
  %0 = ptrtoint ptr %icsk_ulp_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %icsk_ulp_ops, align 4
  %update = getelementptr inbounds %struct.tcp_ulp_ops, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %update to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %update, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %3(ptr noundef %sk, ptr noundef %proto, ptr noundef %write_space) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tcp_cleanup_ulp(ptr noundef %sk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %icsk_ulp_ops = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 12
  %0 = ptrtoint ptr %icsk_ulp_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %icsk_ulp_ops, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %release = getelementptr inbounds %struct.tcp_ulp_ops, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %release, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %if.end.if.end6_crit_edge, label %if.then3

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %3(ptr noundef %sk) #6
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %if.end.if.end6_crit_edge
  %4 = ptrtoint ptr %icsk_ulp_ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %icsk_ulp_ops, align 4
  %owner = getelementptr inbounds %struct.tcp_ulp_ops, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %owner, align 4
  tail call void @module_put(ptr noundef %7) #6
  %8 = ptrtoint ptr %icsk_ulp_ops to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %icsk_ulp_ops, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tcp_set_ulp(ptr noundef %sk, ptr noundef %name) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dep_map.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 4, i32 3
  %call.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i, i32 noundef -1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %lockdep_sock_is_held.exit.i, label %entry.sock_owned_by_me.exit_crit_edge

entry.sock_owned_by_me.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sock_owned_by_me.exit

lockdep_sock_is_held.exit.i:                      ; preds = %entry
  %dep_map2.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 4, i32 0, i32 0, i32 0, i32 4
  %call.i6.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map2.i.i, i32 noundef -1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i6.i.i)
  %tobool4.i.not.i = icmp eq i32 %call.i6.i.i, 0
  br i1 %tobool4.i.not.i, label %land.rhs.i, label %lockdep_sock_is_held.exit.i.sock_owned_by_me.exit_crit_edge

lockdep_sock_is_held.exit.i.sock_owned_by_me.exit_crit_edge: ; preds = %lockdep_sock_is_held.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sock_owned_by_me.exit

land.rhs.i:                                       ; preds = %lockdep_sock_is_held.exit.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i, label %land.rhs.i.sock_owned_by_me.exit_crit_edge, label %land.rhs3.i

land.rhs.i.sock_owned_by_me.exit_crit_edge:       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sock_owned_by_me.exit

land.rhs3.i:                                      ; preds = %land.rhs.i
  %.b40.i = load i1, ptr @sock_owned_by_me.__already_done, align 1
  br i1 %.b40.i, label %land.rhs3.i.sock_owned_by_me.exit_crit_edge, label %if.then.i, !prof !47

land.rhs3.i.sock_owned_by_me.exit_crit_edge:      ; preds = %land.rhs3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sock_owned_by_me.exit

if.then.i:                                        ; preds = %land.rhs3.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @sock_owned_by_me.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 1750, i32 noundef 9, ptr noundef null) #6
  br label %sock_owned_by_me.exit

sock_owned_by_me.exit:                            ; preds = %if.then.i, %land.rhs3.i.sock_owned_by_me.exit_crit_edge, %land.rhs.i.sock_owned_by_me.exit_crit_edge, %lockdep_sock_is_held.exit.i.sock_owned_by_me.exit_crit_edge, %entry.sock_owned_by_me.exit_crit_edge
  %1 = tail call i32 @llvm.read_register.i32(metadata !35) #6
  %and.i.i.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %4, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !46
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #6
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #6
  br i1 %call.i.i, label %sock_owned_by_me.exit.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

sock_owned_by_me.exit.rcu_read_lock.exit.i_crit_edge: ; preds = %sock_owned_by_me.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %sock_owned_by_me.exit
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i4 = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i4, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 696, ptr noundef nonnull @.str.7) #6
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %sock_owned_by_me.exit.rcu_read_lock.exit.i_crit_edge
  %call.i.i.i5 = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.spinlock, ptr @tcp_ulp_list_lock, i32 0, i32 0, i32 0, i32 4), i32 noundef -1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i5)
  %tobool.not.i24.i = icmp eq i32 %call.i.i.i5, 0
  br i1 %tobool.not.i24.i, label %land.lhs.true.i26.i, label %rcu_read_lock.exit.i.for.cond.i.i.preheader_crit_edge

rcu_read_lock.exit.i.for.cond.i.i.preheader_crit_edge: ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i.i.preheader

land.lhs.true.i26.i:                              ; preds = %rcu_read_lock.exit.i
  %call1.i25.i = tail call i32 @rcu_read_lock_any_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i25.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i25.i, 0
  br i1 %tobool2.not.i.i, label %land.lhs.true3.i.i, label %land.lhs.true.i26.i.for.cond.i.i.preheader_crit_edge

land.lhs.true.i26.i.for.cond.i.i.preheader_crit_edge: ; preds = %land.lhs.true.i26.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i.i.preheader

land.lhs.true3.i.i:                               ; preds = %land.lhs.true.i26.i
  %call4.i.i = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool5.not.i.i = icmp eq i32 %call4.i.i, 0
  br i1 %tobool5.not.i.i, label %land.lhs.true3.i.i.for.cond.i.i.preheader_crit_edge, label %land.lhs.true6.i.i

land.lhs.true3.i.i.for.cond.i.i.preheader_crit_edge: ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i.i.preheader

land.lhs.true6.i.i:                               ; preds = %land.lhs.true3.i.i
  %.b28.i.i = load i1, ptr @tcp_ulp_find.__warned, align 1
  br i1 %.b28.i.i, label %land.lhs.true6.i.i.for.cond.i.i.preheader_crit_edge, label %if.then.i27.i

land.lhs.true6.i.i.for.cond.i.i.preheader_crit_edge: ; preds = %land.lhs.true6.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i.i.preheader

if.then.i27.i:                                    ; preds = %land.lhs.true6.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @tcp_ulp_find.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 26, ptr noundef nonnull @.str.1) #6
  br label %for.cond.i.i.preheader

for.cond.i.i.preheader:                           ; preds = %if.then.i27.i, %land.lhs.true6.i.i.for.cond.i.i.preheader_crit_edge, %land.lhs.true3.i.i.for.cond.i.i.preheader_crit_edge, %land.lhs.true.i26.i.for.cond.i.i.preheader_crit_edge, %rcu_read_lock.exit.i.for.cond.i.i.preheader_crit_edge
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %for.cond.i.i.preheader
  %e.0.in.i.i = phi ptr [ %e.0.i.i, %for.body.i.i.for.cond.i.i_crit_edge ], [ @tcp_ulp_list, %for.cond.i.i.preheader ]
  %5 = ptrtoint ptr %e.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %e.0.i.i = load volatile ptr, ptr %e.0.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %e.0.i.i, @tcp_ulp_list
  br i1 %cmp.not.i.i, label %for.cond.i.i.land.lhs.true.i_crit_edge, label %for.body.i.i

for.cond.i.i.land.lhs.true.i_crit_edge:           ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %name12.i.i = getelementptr inbounds %struct.tcp_ulp_ops, ptr %e.0.i.i, i32 0, i32 7
  %call13.i.i = tail call i32 @strcmp(ptr noundef %name12.i.i, ptr noundef %name) #9
  %cmp14.i.i = icmp eq i32 %call13.i.i, 0
  br i1 %cmp14.i.i, label %tcp_ulp_find.exit.i, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i.i

tcp_ulp_find.exit.i:                              ; preds = %for.body.i.i
  %tobool.not.i6 = icmp eq ptr %e.0.i.i, null
  br i1 %tobool.not.i6, label %tcp_ulp_find.exit.i.land.lhs.true.i_crit_edge, label %tcp_ulp_find.exit.i.lor.lhs.false.i_crit_edge

tcp_ulp_find.exit.i.lor.lhs.false.i_crit_edge:    ; preds = %tcp_ulp_find.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false.i

tcp_ulp_find.exit.i.land.lhs.true.i_crit_edge:    ; preds = %tcp_ulp_find.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %tcp_ulp_find.exit.i.land.lhs.true.i_crit_edge, %for.cond.i.i.land.lhs.true.i_crit_edge
  %call1.i = tail call zeroext i1 @capable(i32 noundef 12) #6
  br i1 %call1.i, label %if.then.i7, label %land.lhs.true.i.if.then6.i_crit_edge

land.lhs.true.i.if.then6.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then6.i

if.then.i7:                                       ; preds = %land.lhs.true.i
  %call.i28.i = tail call zeroext i1 @rcu_is_watching() #6
  br i1 %call.i28.i, label %if.then.i7.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i31.i

if.then.i7.rcu_read_unlock.exit.i_crit_edge:      ; preds = %if.then.i7
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit.i

land.lhs.true.i31.i:                              ; preds = %if.then.i7
  %call1.i29.i = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i29.i)
  %tobool.not.i30.i = icmp eq i32 %call1.i29.i, 0
  br i1 %tobool.not.i30.i, label %land.lhs.true.i31.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i33.i

land.lhs.true.i31.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i31.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i33.i:                             ; preds = %land.lhs.true.i31.i
  %.b4.i32.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i32.i, label %land.lhs.true2.i33.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i34.i

land.lhs.true2.i33.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i33.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit.i

if.then.i34.i:                                    ; preds = %land.lhs.true2.i33.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 724, ptr noundef nonnull @.str.8) #6
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i34.i, %land.lhs.true2.i33.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i31.i.rcu_read_unlock.exit.i_crit_edge, %if.then.i7.rcu_read_unlock.exit.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !48
  %6 = tail call i32 @llvm.read_register.i32(metadata !35) #6
  %and.i.i.i.i.i35.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i35.i to ptr
  %preempt_count.i.i.i.i36.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %preempt_count.i.i.i.i36.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %preempt_count.i.i.i.i36.i, align 4
  %sub.i.i.i.i = add i32 %9, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i36.i, align 4
  tail call void @rcu_read_unlock_strict() #6
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #6
  %call2.i = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.10, ptr noundef %name) #6
  %10 = tail call i32 @llvm.read_register.i32(metadata !35) #6
  %and.i.i.i.i.i13.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i.i13.i to ptr
  %preempt_count.i.i.i.i14.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %preempt_count.i.i.i.i14.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %preempt_count.i.i.i.i14.i, align 4
  %add.i.i.i15.i = add i32 %13, 1
  store volatile i32 %add.i.i.i15.i, ptr %preempt_count.i.i.i.i14.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !46
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #6
  %call.i16.i = tail call zeroext i1 @rcu_is_watching() #6
  br i1 %call.i16.i, label %rcu_read_unlock.exit.i.rcu_read_lock.exit23.i_crit_edge, label %land.lhs.true.i19.i

rcu_read_unlock.exit.i.rcu_read_lock.exit23.i_crit_edge: ; preds = %rcu_read_unlock.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_lock.exit23.i

land.lhs.true.i19.i:                              ; preds = %rcu_read_unlock.exit.i
  %call1.i17.i = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i17.i)
  %tobool.not.i18.i = icmp eq i32 %call1.i17.i, 0
  br i1 %tobool.not.i18.i, label %land.lhs.true.i19.i.rcu_read_lock.exit23.i_crit_edge, label %land.lhs.true2.i21.i

land.lhs.true.i19.i.rcu_read_lock.exit23.i_crit_edge: ; preds = %land.lhs.true.i19.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_lock.exit23.i

land.lhs.true2.i21.i:                             ; preds = %land.lhs.true.i19.i
  %.b4.i20.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i20.i, label %land.lhs.true2.i21.i.rcu_read_lock.exit23.i_crit_edge, label %if.then.i22.i

land.lhs.true2.i21.i.rcu_read_lock.exit23.i_crit_edge: ; preds = %land.lhs.true2.i21.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_lock.exit23.i

if.then.i22.i:                                    ; preds = %land.lhs.true2.i21.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 696, ptr noundef nonnull @.str.7) #6
  br label %rcu_read_lock.exit23.i

rcu_read_lock.exit23.i:                           ; preds = %if.then.i22.i, %land.lhs.true2.i21.i.rcu_read_lock.exit23.i_crit_edge, %land.lhs.true.i19.i.rcu_read_lock.exit23.i_crit_edge, %rcu_read_unlock.exit.i.rcu_read_lock.exit23.i_crit_edge
  %call.i.i38.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.spinlock, ptr @tcp_ulp_list_lock, i32 0, i32 0, i32 0, i32 4), i32 noundef -1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i38.i)
  %tobool.not.i39.i = icmp eq i32 %call.i.i38.i, 0
  br i1 %tobool.not.i39.i, label %land.lhs.true.i42.i, label %rcu_read_lock.exit23.i.for.cond.i53.i.preheader_crit_edge

rcu_read_lock.exit23.i.for.cond.i53.i.preheader_crit_edge: ; preds = %rcu_read_lock.exit23.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i53.i.preheader

land.lhs.true.i42.i:                              ; preds = %rcu_read_lock.exit23.i
  %call1.i40.i = tail call i32 @rcu_read_lock_any_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i40.i)
  %tobool2.not.i41.i = icmp eq i32 %call1.i40.i, 0
  br i1 %tobool2.not.i41.i, label %land.lhs.true3.i45.i, label %land.lhs.true.i42.i.for.cond.i53.i.preheader_crit_edge

land.lhs.true.i42.i.for.cond.i53.i.preheader_crit_edge: ; preds = %land.lhs.true.i42.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i53.i.preheader

land.lhs.true3.i45.i:                             ; preds = %land.lhs.true.i42.i
  %call4.i43.i = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i43.i)
  %tobool5.not.i44.i = icmp eq i32 %call4.i43.i, 0
  br i1 %tobool5.not.i44.i, label %land.lhs.true3.i45.i.for.cond.i53.i.preheader_crit_edge, label %land.lhs.true6.i47.i

land.lhs.true3.i45.i.for.cond.i53.i.preheader_crit_edge: ; preds = %land.lhs.true3.i45.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i53.i.preheader

land.lhs.true6.i47.i:                             ; preds = %land.lhs.true3.i45.i
  %.b28.i46.i = load i1, ptr @tcp_ulp_find.__warned, align 1
  br i1 %.b28.i46.i, label %land.lhs.true6.i47.i.for.cond.i53.i.preheader_crit_edge, label %if.then.i48.i

land.lhs.true6.i47.i.for.cond.i53.i.preheader_crit_edge: ; preds = %land.lhs.true6.i47.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i53.i.preheader

if.then.i48.i:                                    ; preds = %land.lhs.true6.i47.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @tcp_ulp_find.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 26, ptr noundef nonnull @.str.1) #6
  br label %for.cond.i53.i.preheader

for.cond.i53.i.preheader:                         ; preds = %if.then.i48.i, %land.lhs.true6.i47.i.for.cond.i53.i.preheader_crit_edge, %land.lhs.true3.i45.i.for.cond.i53.i.preheader_crit_edge, %land.lhs.true.i42.i.for.cond.i53.i.preheader_crit_edge, %rcu_read_lock.exit23.i.for.cond.i53.i.preheader_crit_edge
  br label %for.cond.i53.i

for.cond.i53.i:                                   ; preds = %for.body.i57.i.for.cond.i53.i_crit_edge, %for.cond.i53.i.preheader
  %e.0.in.i50.i = phi ptr [ %e.0.i51.i, %for.body.i57.i.for.cond.i53.i_crit_edge ], [ @tcp_ulp_list, %for.cond.i53.i.preheader ]
  %14 = ptrtoint ptr %e.0.in.i50.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %e.0.i51.i = load volatile ptr, ptr %e.0.in.i50.i, align 4
  %cmp.not.i52.i = icmp eq ptr %e.0.i51.i, @tcp_ulp_list
  br i1 %cmp.not.i52.i, label %for.cond.i53.i.if.then6.i_crit_edge, label %for.body.i57.i

for.cond.i53.i.if.then6.i_crit_edge:              ; preds = %for.cond.i53.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then6.i

for.body.i57.i:                                   ; preds = %for.cond.i53.i
  %name12.i54.i = getelementptr inbounds %struct.tcp_ulp_ops, ptr %e.0.i51.i, i32 0, i32 7
  %call13.i55.i = tail call i32 @strcmp(ptr noundef %name12.i54.i, ptr noundef %name) #9
  %cmp14.i56.i = icmp eq i32 %call13.i55.i, 0
  br i1 %cmp14.i56.i, label %if.end.i, label %for.body.i57.i.for.cond.i53.i_crit_edge

for.body.i57.i.for.cond.i53.i_crit_edge:          ; preds = %for.body.i57.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i53.i

if.end.i:                                         ; preds = %for.body.i57.i
  %tobool4.not.i = icmp eq ptr %e.0.i51.i, null
  br i1 %tobool4.not.i, label %if.end.i.if.then6.i_crit_edge, label %if.end.i.lor.lhs.false.i_crit_edge

if.end.i.lor.lhs.false.i_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false.i

if.end.i.if.then6.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then6.i

lor.lhs.false.i:                                  ; preds = %if.end.i.lor.lhs.false.i_crit_edge, %tcp_ulp_find.exit.i.lor.lhs.false.i_crit_edge
  %ulp.079.i = phi ptr [ %e.0.i51.i, %if.end.i.lor.lhs.false.i_crit_edge ], [ %e.0.i.i, %tcp_ulp_find.exit.i.lor.lhs.false.i_crit_edge ]
  %owner.i = getelementptr inbounds %struct.tcp_ulp_ops, ptr %ulp.079.i, i32 0, i32 8
  %15 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %owner.i, align 4
  %call5.i = tail call zeroext i1 @try_module_get(ptr noundef %16) #6
  br i1 %call5.i, label %lor.lhs.false.i.if.end7.i_crit_edge, label %lor.lhs.false.i.if.then6.i_crit_edge

lor.lhs.false.i.if.then6.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then6.i

lor.lhs.false.i.if.end7.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.i

if.then6.i:                                       ; preds = %lor.lhs.false.i.if.then6.i_crit_edge, %if.end.i.if.then6.i_crit_edge, %for.cond.i53.i.if.then6.i_crit_edge, %land.lhs.true.i.if.then6.i_crit_edge
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then6.i, %lor.lhs.false.i.if.end7.i_crit_edge
  %ulp.1.i = phi ptr [ %ulp.079.i, %lor.lhs.false.i.if.end7.i_crit_edge ], [ null, %if.then6.i ]
  %call.i60.i = tail call zeroext i1 @rcu_is_watching() #6
  br i1 %call.i60.i, label %if.end7.i.__tcp_ulp_find_autoload.exit_crit_edge, label %land.lhs.true.i63.i

if.end7.i.__tcp_ulp_find_autoload.exit_crit_edge: ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__tcp_ulp_find_autoload.exit

land.lhs.true.i63.i:                              ; preds = %if.end7.i
  %call1.i61.i = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i61.i)
  %tobool.not.i62.i = icmp eq i32 %call1.i61.i, 0
  br i1 %tobool.not.i62.i, label %land.lhs.true.i63.i.__tcp_ulp_find_autoload.exit_crit_edge, label %land.lhs.true2.i65.i

land.lhs.true.i63.i.__tcp_ulp_find_autoload.exit_crit_edge: ; preds = %land.lhs.true.i63.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__tcp_ulp_find_autoload.exit

land.lhs.true2.i65.i:                             ; preds = %land.lhs.true.i63.i
  %.b4.i64.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i64.i, label %land.lhs.true2.i65.i.__tcp_ulp_find_autoload.exit_crit_edge, label %if.then.i66.i

land.lhs.true2.i65.i.__tcp_ulp_find_autoload.exit_crit_edge: ; preds = %land.lhs.true2.i65.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__tcp_ulp_find_autoload.exit

if.then.i66.i:                                    ; preds = %land.lhs.true2.i65.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 724, ptr noundef nonnull @.str.8) #6
  br label %__tcp_ulp_find_autoload.exit

__tcp_ulp_find_autoload.exit:                     ; preds = %if.then.i66.i, %land.lhs.true2.i65.i.__tcp_ulp_find_autoload.exit_crit_edge, %land.lhs.true.i63.i.__tcp_ulp_find_autoload.exit_crit_edge, %if.end7.i.__tcp_ulp_find_autoload.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !48
  %17 = tail call i32 @llvm.read_register.i32(metadata !35) #6
  %and.i.i.i.i.i67.i = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i.i.i.i67.i to ptr
  %preempt_count.i.i.i.i68.i = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %preempt_count.i.i.i.i68.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %preempt_count.i.i.i.i68.i, align 4
  %sub.i.i.i69.i = add i32 %20, -1
  store volatile i32 %sub.i.i.i69.i, ptr %preempt_count.i.i.i.i68.i, align 4
  tail call void @rcu_read_unlock_strict() #6
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #6
  %tobool.not = icmp eq ptr %ulp.1.i, null
  br i1 %tobool.not, label %__tcp_ulp_find_autoload.exit.cleanup_crit_edge, label %if.end

__tcp_ulp_find_autoload.exit.cleanup_crit_edge:   ; preds = %__tcp_ulp_find_autoload.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %__tcp_ulp_find_autoload.exit
  %icsk_ulp_ops.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 12
  %21 = ptrtoint ptr %icsk_ulp_ops.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %icsk_ulp_ops.i, align 4
  %tobool.not.i8 = icmp eq ptr %22, null
  br i1 %tobool.not.i8, label %if.end.i10, label %if.end.out_err.i_crit_edge

if.end.out_err.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_err.i

if.end.i10:                                       ; preds = %if.end
  %init.i = getelementptr inbounds %struct.tcp_ulp_ops, ptr %ulp.1.i, i32 0, i32 1
  %23 = ptrtoint ptr %init.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %init.i, align 4
  %call1.i9 = tail call i32 %24(ptr noundef %sk) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i9)
  %tobool2.not.i = icmp eq i32 %call1.i9, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i10.out_err.i_crit_edge

if.end.i10.out_err.i_crit_edge:                   ; preds = %if.end.i10
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_err.i

if.end4.i:                                        ; preds = %if.end.i10
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %icsk_ulp_ops.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %ulp.1.i, ptr %icsk_ulp_ops.i, align 4
  br label %cleanup

out_err.i:                                        ; preds = %if.end.i10.out_err.i_crit_edge, %if.end.out_err.i_crit_edge
  %err.0.i = phi i32 [ -17, %if.end.out_err.i_crit_edge ], [ %call1.i9, %if.end.i10.out_err.i_crit_edge ]
  %owner.i11 = getelementptr inbounds %struct.tcp_ulp_ops, ptr %ulp.1.i, i32 0, i32 8
  %26 = ptrtoint ptr %owner.i11 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %owner.i11, align 4
  tail call void @module_put(ptr noundef %27) #6
  br label %cleanup

cleanup:                                          ; preds = %out_err.i, %if.end4.i, %__tcp_ulp_find_autoload.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -2, %__tcp_ulp_find_autoload.exit.cleanup_crit_edge ], [ %err.0.i, %out_err.i ], [ 0, %if.end4.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !10, !12, !14, !16, !18, !19, !21, !23, !25, !26, !27, !29, !30, !32, !33}
!llvm.named.register.sp = !{!35}
!llvm.module.flags = !{!36, !37, !38, !39, !40, !41, !42, !43}
!llvm.ident = !{!44}

!0 = !{ptr @__ksymtab_tcp_register_ulp, !1, !"__ksymtab_tcp_register_ulp", i1 false, i1 false}
!1 = !{!"../net/ipv4/tcp_ulp.c", i32 72, i32 1}
!2 = !{ptr @__ksymtab_tcp_unregister_ulp, !3, !"__ksymtab_tcp_unregister_ulp", i1 false, i1 false}
!3 = !{!"../net/ipv4/tcp_ulp.c", i32 82, i32 1}
!4 = distinct !{null, !5, !"__warned", i1 false, i1 false}
!5 = !{!"../net/ipv4/tcp_ulp.c", i32 92, i32 2}
!6 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../net/ipv4/tcp_ulp.c", i32 94, i32 6}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../net/ipv4/tcp_ulp.c", i32 95, i32 18}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../net/ipv4/tcp_ulp.c", i32 95, i32 23}
!14 = distinct !{null, !15, !"__already_done", i1 false, i1 false}
!15 = !{!"../net/ipv4/tcp_ulp.c", i32 97, i32 7}
!16 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../net/ipv4/tcp_ulp.c", i32 17, i32 8}
!18 = !{ptr @tcp_ulp_list_lock, !17, !"tcp_ulp_list_lock", i1 false, i1 false}
!19 = distinct !{null, !20, !"__warned", i1 false, i1 false}
!20 = !{!"../net/ipv4/tcp_ulp.c", i32 25, i32 2}
!21 = !{ptr @tcp_ulp_list, !22, !"tcp_ulp_list", i1 false, i1 false}
!22 = !{!"../net/ipv4/tcp_ulp.c", i32 18, i32 8}
!23 = distinct !{null, !24, !"__warned", i1 false, i1 false}
!24 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!25 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!27 = distinct !{null, !28, !"__warned", i1 false, i1 false}
!28 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!29 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!30 = distinct !{null, !31, !"__already_done", i1 false, i1 false}
!31 = !{!"../include/net/sock.h", i32 1750, i32 2}
!32 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../net/ipv4/tcp_ulp.c", i32 44, i32 3}
!35 = !{!"sp"}
!36 = !{i32 1, !"wchar_size", i32 2}
!37 = !{i32 1, !"min_enum_size", i32 4}
!38 = !{i32 8, !"branch-target-enforcement", i32 0}
!39 = !{i32 8, !"sign-return-address", i32 0}
!40 = !{i32 8, !"sign-return-address-all", i32 0}
!41 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!42 = !{i32 7, !"uwtable", i32 1}
!43 = !{i32 7, !"frame-pointer", i32 2}
!44 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!45 = !{i64 2151890541}
!46 = !{i64 2149357683}
!47 = !{!"branch_weights", i32 2000, i32 1}
!48 = !{i64 2149357949}
