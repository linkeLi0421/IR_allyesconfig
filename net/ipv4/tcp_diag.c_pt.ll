; ModuleID = '/llk/IR_all_yes/net/ipv4/tcp_diag.c_pt.bc'
source_filename = "../net/ipv4/tcp_diag.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.inet_diag_handler = type { ptr, ptr, ptr, ptr, ptr, ptr, i16, i16 }
%struct.inet_hashinfo = type { ptr, ptr, i32, i32, ptr, ptr, i32, i32, ptr, [92 x i8], [32 x %struct.inet_listen_hashbucket] }
%struct.inet_listen_hashbucket = type { %struct.spinlock, i32, %union.anon.21 }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%union.anon.21 = type { %struct.hlist_head }
%struct.hlist_head = type { ptr }
%struct.sock_common = type { %union.anon.137, %union.anon.139, %union.anon.140, i16, i8, i8, i32, %union.anon.142, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.145, [0 x i32], %union.anon.146, i16, i16, %union.anon.147, %struct.refcount_struct, [0 x i32], %union.anon.148 }
%union.anon.137 = type { i64 }
%union.anon.139 = type { i32 }
%union.anon.140 = type { i32 }
%union.anon.142 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.28 }
%union.anon.28 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.145 = type { i32 }
%union.anon.146 = type { %struct.hlist_node }
%union.anon.147 = type { i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%union.anon.148 = type { i32 }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.149, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.150, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.151, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.anon.149 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.150 = type { ptr }
%union.anon.151 = type { ptr }
%struct.sk_buff_head = type { %union.anon.96, i32, %struct.spinlock }
%union.anon.96 = type { %struct.anon.97 }
%struct.anon.97 = type { ptr, ptr }
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
%struct.inet_diag_msg = type { i8, i8, i8, i8, %struct.inet_diag_sockid, i32, i32, i32, i32, i32 }
%struct.inet_diag_sockid = type { i16, i16, [4 x i32], [4 x i32], i32, [2 x i32] }
%struct.tcp_sock = type { %struct.inet_connection_sock, i16, i16, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, %struct.tcp_rack, i16, i8, i8, i32, [3 x i32], i16, i8, i8, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, %struct.minmax, i32, i32, i32, i32, i16, i8, i8, i32, i32, i32, %struct.tcp_options_received, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrtimer, %struct.hrtimer, ptr, ptr, %struct.rb_root, ptr, [1 x %struct.tcp_sack_block], [4 x %struct.tcp_sack_block], [4 x %struct.tcp_sack_block], ptr, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i8, i16, i32, i32, %struct.anon.194, %struct.anon.195, %struct.anon.196, i32, i8, i8, ptr, ptr, ptr, ptr, ptr }
%struct.inet_connection_sock = type { %struct.inet_sock, %struct.request_sock_queue, ptr, i32, %struct.timer_list, %struct.timer_list, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.hlist_node, ptr, i8, i8, i8, i8, i8, i8, i16, %struct.anon.192, %struct.anon.193, i32, i32, [13 x i64] }
%struct.inet_sock = type { %struct.sock, ptr, i32, i16, i16, ptr, i16, i16, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, ptr, %struct.inet_cork_full }
%struct.inet_cork_full = type { %struct.inet_cork, %struct.flowi }
%struct.inet_cork = type { i32, i32, ptr, i32, i32, ptr, i8, i8, i16, i8, i16, i64, i32 }
%struct.flowi = type { %union.anon.23 }
%union.anon.23 = type { %struct.flowi6 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.request_sock_queue = type { %struct.spinlock, i8, i32, %struct.atomic_t, %struct.atomic_t, ptr, ptr, %struct.fastopen_queue }
%struct.fastopen_queue = type { ptr, ptr, %struct.spinlock, i32, i32, ptr }
%struct.anon.192 = type { i8, i8, i8, i8, i32, i32, i32, i16, i16 }
%struct.anon.193 = type { i32, i32, i32, i32 }
%struct.tcp_rack = type { i64, i32, i32, i32, i8, i8 }
%struct.minmax = type { [3 x %struct.minmax_sample] }
%struct.minmax_sample = type { i32, i32 }
%struct.tcp_options_received = type { i32, i32, i32, i32, [3 x i8], i8, i16, i16 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rb_root = type { ptr }
%struct.tcp_sack_block = type { i32, i32 }
%struct.anon.194 = type { i32, i32, i64 }
%struct.anon.195 = type { i32, i32, i64 }
%struct.anon.196 = type { i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.tcp_diag_md5sig = type { i8, i8, i16, [4 x i32], [80 x i8] }
%struct.tcp_md5sig_key = type { %struct.hlist_node, i8, i8, i8, i8, %union.tcp_md5_addr, i32, [80 x i8], %struct.callback_head }
%union.tcp_md5_addr = type { %struct.in6_addr }
%struct.sk_buff = type { %union.anon, %union.anon.168, %union.anon.169, [48 x i8], %union.anon.170, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.172, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.168 = type { ptr }
%union.anon.169 = type { i64 }
%union.anon.170 = type { %struct.anon.171 }
%struct.anon.171 = type { i32, ptr }
%union.anon.172 = type { %struct.anon.173 }
%struct.anon.173 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.174, i32, i32, i32, i16, i16, %union.anon.176, i32, %union.anon.177, %union.anon.178, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.174 = type { i32 }
%union.anon.176 = type { i32 }
%union.anon.177 = type { i32 }
%union.anon.178 = type { i16 }
%struct.tcp_ulp_ops = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, [16 x i8], ptr }

@tcp_diag_handler = internal constant { %struct.inet_diag_handler, [36 x i8] } { %struct.inet_diag_handler { ptr @tcp_diag_dump, ptr @tcp_diag_dump_one, ptr @tcp_diag_get_info, ptr @tcp_diag_get_aux, ptr @tcp_diag_get_aux_size, ptr @tcp_diag_destroy, i16 6, i16 232 }, [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_tcp_diag__616_235_tcp_diag_init6 = internal global ptr @tcp_diag_init, section ".initcall6.init", align 4
@__exitcall_tcp_diag_exit = internal global ptr @tcp_diag_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file617 = internal constant [32 x i8] c"tcp_diag.file=net/ipv4/tcp_diag\00", section ".modinfo", align 1
@__UNIQUE_ID_license618 = internal constant [21 x i8] c"tcp_diag.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias619 = internal constant [42 x i8] c"tcp_diag.alias=net-pf-16-proto-4-type-2-6\00", section ".modinfo", align 1
@tcp_hashinfo = external dso_local global %struct.inet_hashinfo, align 128
@tcp_diag_get_aux.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"net/ipv4/tcp_diag.c\00", [44 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@tcp_diag_put_md5sig.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@tcp_diag_put_md5sig.__warned.5 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.6 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/netlink.h\00", [42 x i8] zeroinitializer }, align 32
@tcp_diag_get_aux_size.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@tcp_diag_get_aux_size.__warned.8 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 10]
@___asan_gen_.9 = private unnamed_addr constant [17 x i8] c"tcp_diag_handler\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 212, i32 39 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 123, i32 12 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 695, i32 2 }
@___asan_gen_.25 = private constant [23 x i8] c"../net/ipv4/tcp_diag.c\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 63, i32 2 }
@___asan_gen_.28 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 723, i32 2 }
@___asan_gen_.30 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.31 = private unnamed_addr constant [25 x i8] c"../include/net/netlink.h\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 991, i32 3 }
@llvm.compiler.used = appending global [14 x ptr] [ptr @__UNIQUE_ID_alias619, ptr @__UNIQUE_ID_file617, ptr @__UNIQUE_ID_license618, ptr @__exitcall_tcp_diag_exit, ptr @__initcall__kmod_tcp_diag__616_235_tcp_diag_init6, ptr @tcp_diag_exit, ptr @tcp_diag_handler, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.7], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcp_diag_handler to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tcp_diag_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @inet_diag_unregister(ptr noundef nonnull @tcp_diag_handler) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet_diag_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tcp_diag_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @inet_diag_register(ptr noundef nonnull @tcp_diag_handler) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tcp_diag_dump(ptr noundef %skb, ptr noundef %cb, ptr noundef %r) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @inet_diag_dump_icsk(ptr noundef nonnull @tcp_hashinfo, ptr noundef %skb, ptr noundef %cb, ptr noundef %r) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcp_diag_dump_one(ptr noundef %cb, ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @inet_diag_dump_one_icsk(ptr noundef nonnull @tcp_hashinfo, ptr noundef %cb, ptr noundef %req) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tcp_diag_get_info(ptr noundef %sk, ptr nocapture noundef writeonly %r, ptr noundef %_info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %skc_state.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %0 = ptrtoint ptr %skc_state.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load volatile i8, ptr %skc_state.i, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !43
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %1)
  %cmp = icmp eq i8 %1, 10
  br i1 %cmp, label %do.end, label %if.else

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %sk_ack_backlog = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 53
  %2 = ptrtoint ptr %sk_ack_backlog to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %sk_ack_backlog, align 4
  %idiag_rqueue = getelementptr inbounds %struct.inet_diag_msg, ptr %r, i32 0, i32 6
  %4 = ptrtoint ptr %idiag_rqueue to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %idiag_rqueue, align 4
  %sk_max_ack_backlog = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 54
  %5 = ptrtoint ptr %sk_max_ack_backlog to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %sk_max_ack_backlog, align 8
  br label %if.end27.sink.split

if.else:                                          ; preds = %entry
  %sk_type = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 45
  %7 = ptrtoint ptr %sk_type to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %sk_type, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %8)
  %cmp5 = icmp eq i16 %8, 1
  br i1 %cmp5, label %if.then7, label %if.else.if.end27_crit_edge

if.else.if.end27_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

if.then7:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %rcv_nxt = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 7
  %9 = ptrtoint ptr %rcv_nxt to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %rcv_nxt, align 8
  %copied_seq = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 8
  %11 = ptrtoint ptr %copied_seq to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %copied_seq, align 4
  %sub = sub i32 %10, %12
  %13 = tail call i32 @llvm.smax.i32(i32 %sub, i32 0)
  %idiag_rqueue20 = getelementptr inbounds %struct.inet_diag_msg, ptr %r, i32 0, i32 6
  %14 = ptrtoint ptr %idiag_rqueue20 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %idiag_rqueue20, align 4
  %write_seq = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 80
  %15 = ptrtoint ptr %write_seq to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %write_seq, align 4
  %snd_una = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 16
  %17 = ptrtoint ptr %snd_una to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %snd_una, align 4
  %sub25 = sub i32 %16, %18
  br label %if.end27.sink.split

if.end27.sink.split:                              ; preds = %if.then7, %do.end
  %sub25.sink = phi i32 [ %sub25, %if.then7 ], [ %6, %do.end ]
  %idiag_wqueue26 = getelementptr inbounds %struct.inet_diag_msg, ptr %r, i32 0, i32 7
  %19 = ptrtoint ptr %idiag_wqueue26 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %sub25.sink, ptr %idiag_wqueue26, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.end27.sink.split, %if.else.if.end27_crit_edge
  %tobool.not = icmp eq ptr %_info, null
  br i1 %tobool.not, label %if.end27.if.end29_crit_edge, label %if.then28

if.end27.if.end29_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

if.then28:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @tcp_get_info(ptr noundef %sk, ptr noundef nonnull %_info) #7
  br label %if.end29

if.end29:                                         ; preds = %if.then28, %if.end27.if.end29_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcp_diag_get_aux(ptr noundef %sk, i1 noundef zeroext %net_admin, ptr noundef %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %net_admin, label %if.then, label %entry.cleanup33_crit_edge

entry.cleanup33_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup33

if.then:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !33) #7
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !44
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #7
  %call.i = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i, label %if.then.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.then.rcu_read_lock.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.then
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 696, ptr noundef nonnull @.str.3) #7
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.then.rcu_read_lock.exit_crit_edge
  %md5sig_info = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 118
  %4 = ptrtoint ptr %md5sig_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %md5sig_info, align 4
  %call3 = tail call i32 @rcu_read_lock_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end11_crit_edge

rcu_read_lock.exit.do.end11_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end11

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call5 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %land.lhs.true.do.end11_crit_edge, label %land.lhs.true7

land.lhs.true.do.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end11

land.lhs.true7:                                   ; preds = %land.lhs.true
  %.b47 = load i1, ptr @tcp_diag_get_aux.__warned, align 1
  br i1 %.b47, label %land.lhs.true7.do.end11_crit_edge, label %if.then9

land.lhs.true7.do.end11_crit_edge:                ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end11

if.then9:                                         ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @tcp_diag_get_aux.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 123, ptr noundef nonnull @.str.1) #7
  br label %do.end11

do.end11:                                         ; preds = %if.then9, %land.lhs.true7.do.end11_crit_edge, %land.lhs.true.do.end11_crit_edge, %rcu_read_lock.exit.do.end11_crit_edge
  %tobool13.not = icmp eq ptr %5, null
  br i1 %tobool13.not, label %do.end11.if.end16_crit_edge, label %if.then14

do.end11.if.end16_crit_edge:                      ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

if.then14:                                        ; preds = %do.end11
  %call.i48 = tail call i32 @rcu_read_lock_any_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i48)
  %tobool.not.i49 = icmp eq i32 %call.i48, 0
  br i1 %tobool.not.i49, label %land.lhs.true.i51, label %if.then14.for.cond.i.preheader_crit_edge

if.then14.for.cond.i.preheader_crit_edge:         ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i.preheader

land.lhs.true.i51:                                ; preds = %if.then14
  %call1.i50 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i50)
  %tobool2.not.i = icmp eq i32 %call1.i50, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i51.for.cond.i.preheader_crit_edge, label %land.lhs.true3.i

land.lhs.true.i51.for.cond.i.preheader_crit_edge: ; preds = %land.lhs.true.i51
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i.preheader

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i51
  %.b113.i = load i1, ptr @tcp_diag_put_md5sig.__warned, align 1
  br i1 %.b113.i, label %land.lhs.true3.i.for.cond.i.preheader_crit_edge, label %if.then.i52

land.lhs.true3.i.for.cond.i.preheader_crit_edge:  ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i.preheader

if.then.i52:                                      ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @tcp_diag_put_md5sig.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 63, ptr noundef nonnull @.str.4) #7
  br label %for.cond.i.preheader

for.cond.i.preheader:                             ; preds = %if.then.i52, %land.lhs.true3.i.for.cond.i.preheader_crit_edge, %land.lhs.true.i51.for.cond.i.preheader_crit_edge, %if.then14.for.cond.i.preheader_crit_edge
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.cond.i.for.cond.i_crit_edge, %for.cond.i.preheader
  %md5sig_count.0.i = phi i32 [ %inc.i, %for.cond.i.for.cond.i_crit_edge ], [ 0, %for.cond.i.preheader ]
  %key.0.in.i = phi ptr [ %key.0.i, %for.cond.i.for.cond.i_crit_edge ], [ %5, %for.cond.i.preheader ]
  %6 = ptrtoint ptr %key.0.in.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %key.0.i = load volatile ptr, ptr %key.0.in.i, align 4
  %tobool12.not.i = icmp eq ptr %key.0.i, null
  %inc.i = add i32 %md5sig_count.0.i, 1
  br i1 %tobool12.not.i, label %for.end.i, label %for.cond.i.for.cond.i_crit_edge

for.cond.i.for.cond.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i

for.end.i:                                        ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %md5sig_count.0.i)
  %cmp.i = icmp eq i32 %md5sig_count.0.i, 0
  br i1 %cmp.i, label %for.end.i.if.end16_crit_edge, label %if.end29.i

for.end.i.if.end16_crit_edge:                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

if.end29.i:                                       ; preds = %for.end.i
  %mul.i = mul i32 %md5sig_count.0.i, 100
  %call30.i = tail call ptr @nla_reserve(ptr noundef %skb, i32 noundef 18, i32 noundef %mul.i) #7
  %tobool31.not.i = icmp eq ptr %call30.i, null
  br i1 %tobool31.not.i, label %if.end29.i.if.end16_crit_edge, label %if.end33.i

if.end29.i.if.end16_crit_edge:                    ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

if.end33.i:                                       ; preds = %if.end29.i
  %add.ptr.i.i = getelementptr i8, ptr %call30.i, i32 4
  %7 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %mul.i)
  %call37.i = tail call i32 @rcu_read_lock_any_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37.i)
  %tobool38.not.i = icmp eq i32 %call37.i, 0
  br i1 %tobool38.not.i, label %land.lhs.true39.i, label %if.end33.i.for.cond65.i.preheader_crit_edge

if.end33.i.for.cond65.i.preheader_crit_edge:      ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond65.i.preheader

land.lhs.true39.i:                                ; preds = %if.end33.i
  %call40.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40.i)
  %tobool41.not.i = icmp eq i32 %call40.i, 0
  br i1 %tobool41.not.i, label %land.lhs.true39.i.for.cond65.i.preheader_crit_edge, label %land.lhs.true42.i

land.lhs.true39.i.for.cond65.i.preheader_crit_edge: ; preds = %land.lhs.true39.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond65.i.preheader

land.lhs.true42.i:                                ; preds = %land.lhs.true39.i
  %.b111112.i = load i1, ptr @tcp_diag_put_md5sig.__warned.5, align 1
  br i1 %.b111112.i, label %land.lhs.true42.i.for.cond65.i.preheader_crit_edge, label %if.then44.i

land.lhs.true42.i.for.cond65.i.preheader_crit_edge: ; preds = %land.lhs.true42.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond65.i.preheader

if.then44.i:                                      ; preds = %land.lhs.true42.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @tcp_diag_put_md5sig.__warned.5, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 75, ptr noundef nonnull @.str.4) #7
  br label %for.cond65.i.preheader

for.cond65.i.preheader:                           ; preds = %if.then44.i, %land.lhs.true42.i.for.cond65.i.preheader_crit_edge, %land.lhs.true39.i.for.cond65.i.preheader_crit_edge, %if.end33.i.for.cond65.i.preheader_crit_edge
  br label %for.cond65.i

for.cond65.i:                                     ; preds = %tcp_diag_md5sig_fill.exit.i.for.cond65.i_crit_edge, %for.cond65.i.preheader
  %md5sig_count.1.i = phi i32 [ %dec.i, %tcp_diag_md5sig_fill.exit.i.for.cond65.i_crit_edge ], [ %md5sig_count.0.i, %for.cond65.i.preheader ]
  %info.0.i = phi ptr [ %incdec.ptr.i, %tcp_diag_md5sig_fill.exit.i.for.cond65.i_crit_edge ], [ %add.ptr.i.i, %for.cond65.i.preheader ]
  %key.1.in.i = phi ptr [ %key.1.i, %tcp_diag_md5sig_fill.exit.i.for.cond65.i_crit_edge ], [ %5, %for.cond65.i.preheader ]
  %8 = ptrtoint ptr %key.1.in.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %key.1.i = load volatile ptr, ptr %key.1.in.i, align 4
  %tobool66.not.i = icmp eq ptr %key.1.i, null
  br i1 %tobool66.not.i, label %for.cond65.i.if.end16_crit_edge, label %for.body67.i

for.cond65.i.if.end16_crit_edge:                  ; preds = %for.cond65.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

for.body67.i:                                     ; preds = %for.cond65.i
  %incdec.ptr.i = getelementptr %struct.tcp_diag_md5sig, ptr %info.0.i, i32 1
  %family.i.i = getelementptr inbounds %struct.tcp_md5sig_key, ptr %key.1.i, i32 0, i32 2
  %9 = ptrtoint ptr %family.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %family.i.i, align 1
  %11 = ptrtoint ptr %info.0.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %info.0.i, align 4
  %prefixlen.i.i = getelementptr inbounds %struct.tcp_md5sig_key, ptr %key.1.i, i32 0, i32 3
  %12 = ptrtoint ptr %prefixlen.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %prefixlen.i.i, align 2
  %tcpm_prefixlen.i.i = getelementptr inbounds %struct.tcp_diag_md5sig, ptr %info.0.i, i32 0, i32 1
  %14 = ptrtoint ptr %tcpm_prefixlen.i.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %tcpm_prefixlen.i.i, align 1
  %keylen.i.i = getelementptr inbounds %struct.tcp_md5sig_key, ptr %key.1.i, i32 0, i32 1
  %15 = ptrtoint ptr %keylen.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %keylen.i.i, align 4
  %conv.i.i = zext i8 %16 to i16
  %tcpm_keylen.i.i = getelementptr inbounds %struct.tcp_diag_md5sig, ptr %info.0.i, i32 0, i32 2
  %17 = ptrtoint ptr %tcpm_keylen.i.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv.i.i, ptr %tcpm_keylen.i.i, align 2
  %tcpm_key.i.i = getelementptr inbounds %struct.tcp_diag_md5sig, ptr %info.0.i, i32 0, i32 4
  %key1.i.i = getelementptr inbounds %struct.tcp_md5sig_key, ptr %key.1.i, i32 0, i32 7
  %18 = load i8, ptr %keylen.i.i, align 4
  %conv4.i.i = zext i8 %18 to i32
  %19 = call ptr @memcpy(ptr %tcpm_key.i.i, ptr %key1.i.i, i32 %conv4.i.i)
  %20 = load i8, ptr %family.i.i, align 1
  %21 = zext i8 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values)
  switch i8 %20, label %for.body67.i.tcp_diag_md5sig_fill.exit.i_crit_edge [
    i8 2, label %if.then.i.i
    i8 10, label %if.then12.i.i
  ]

for.body67.i.tcp_diag_md5sig_fill.exit.i_crit_edge: ; preds = %for.body67.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tcp_diag_md5sig_fill.exit.i

if.then.i.i:                                      ; preds = %for.body67.i
  call void @__sanitizer_cov_trace_pc() #9
  %addr.i.i = getelementptr inbounds %struct.tcp_md5sig_key, ptr %key.1.i, i32 0, i32 5
  %22 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %addr.i.i, align 4
  %tcpm_addr.i.i = getelementptr inbounds %struct.tcp_diag_md5sig, ptr %info.0.i, i32 0, i32 3
  %24 = ptrtoint ptr %tcpm_addr.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %tcpm_addr.i.i, align 4
  br label %tcp_diag_md5sig_fill.exit.i

if.then12.i.i:                                    ; preds = %for.body67.i
  call void @__sanitizer_cov_trace_pc() #9
  %tcpm_addr13.i.i = getelementptr inbounds %struct.tcp_diag_md5sig, ptr %info.0.i, i32 0, i32 3
  %addr14.i.i = getelementptr inbounds %struct.tcp_md5sig_key, ptr %key.1.i, i32 0, i32 5
  %25 = call ptr @memcpy(ptr %tcpm_addr13.i.i, ptr %addr14.i.i, i32 16)
  br label %tcp_diag_md5sig_fill.exit.i

tcp_diag_md5sig_fill.exit.i:                      ; preds = %if.then12.i.i, %if.then.i.i, %for.body67.i.tcp_diag_md5sig_fill.exit.i_crit_edge
  %dec.i = add i32 %md5sig_count.1.i, -1
  %cmp68.i = icmp eq i32 %dec.i, 0
  br i1 %cmp68.i, label %tcp_diag_md5sig_fill.exit.i.if.end16_crit_edge, label %tcp_diag_md5sig_fill.exit.i.for.cond65.i_crit_edge

tcp_diag_md5sig_fill.exit.i.for.cond65.i_crit_edge: ; preds = %tcp_diag_md5sig_fill.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond65.i

tcp_diag_md5sig_fill.exit.i.if.end16_crit_edge:   ; preds = %tcp_diag_md5sig_fill.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

if.end16:                                         ; preds = %tcp_diag_md5sig_fill.exit.i.if.end16_crit_edge, %for.cond65.i.if.end16_crit_edge, %if.end29.i.if.end16_crit_edge, %for.end.i.if.end16_crit_edge, %do.end11.if.end16_crit_edge
  %cmp = phi i1 [ true, %if.end29.i.if.end16_crit_edge ], [ false, %for.end.i.if.end16_crit_edge ], [ false, %do.end11.if.end16_crit_edge ], [ false, %for.cond65.i.if.end16_crit_edge ], [ false, %tcp_diag_md5sig_fill.exit.i.if.end16_crit_edge ]
  %err.0 = phi i32 [ -90, %if.end29.i.if.end16_crit_edge ], [ 0, %for.end.i.if.end16_crit_edge ], [ 0, %do.end11.if.end16_crit_edge ], [ 0, %for.cond65.i.if.end16_crit_edge ], [ 0, %tcp_diag_md5sig_fill.exit.i.if.end16_crit_edge ]
  %call.i53 = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i53, label %if.end16.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i56

if.end16.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true.i56:                                ; preds = %if.end16
  %call1.i54 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i54)
  %tobool.not.i55 = icmp eq i32 %call1.i54, 0
  br i1 %tobool.not.i55, label %land.lhs.true.i56.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i58

land.lhs.true.i56.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i56
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true2.i58:                               ; preds = %land.lhs.true.i56
  %.b4.i57 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i57, label %land.lhs.true2.i58.rcu_read_unlock.exit_crit_edge, label %if.then.i59

land.lhs.true2.i58.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i58
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

if.then.i59:                                      ; preds = %land.lhs.true2.i58
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 724, ptr noundef nonnull @.str.6) #7
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i59, %land.lhs.true2.i58.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i56.rcu_read_unlock.exit_crit_edge, %if.end16.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !45
  %26 = tail call i32 @llvm.read_register.i32(metadata !33) #7
  %and.i.i.i.i.i60 = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i.i60 to ptr
  %preempt_count.i.i.i.i61 = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i.i61 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i.i61, align 4
  %sub.i.i.i = add i32 %29, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i61, align 4
  tail call void @rcu_read_unlock_strict() #7
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #7
  br i1 %cmp, label %rcu_read_unlock.exit.cleanup33_crit_edge, label %if.then21

rcu_read_unlock.exit.cleanup33_crit_edge:         ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup33

if.then21:                                        ; preds = %rcu_read_unlock.exit
  %icsk_ulp_ops = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 12
  %30 = ptrtoint ptr %icsk_ulp_ops to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %icsk_ulp_ops, align 4
  %tobool22.not = icmp eq ptr %31, null
  br i1 %tobool22.not, label %if.then21.cleanup33_crit_edge, label %if.then23

if.then21.cleanup33_crit_edge:                    ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup33

if.then23:                                        ; preds = %if.then21
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %32 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %tail.i.i.i, align 8
  %call1.i.i = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 19, i32 noundef 0, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i.i = icmp slt i32 %call1.i.i, 0
  %tobool.not29.i = icmp eq ptr %33, null
  %tobool.not.i63 = select i1 %cmp.i.i, i1 true, i1 %tobool.not29.i
  br i1 %tobool.not.i63, label %if.then23.cleanup33_crit_edge, label %if.end.i

if.then23.cleanup33_crit_edge:                    ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup33

if.end.i:                                         ; preds = %if.then23
  %name.i = getelementptr inbounds %struct.tcp_ulp_ops, ptr %31, i32 0, i32 7
  %call.i.i = tail call i32 @strlen(ptr noundef %name.i) #10
  %add.i.i = add i32 %call.i.i, 1
  %call1.i25.i = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef %add.i.i, ptr noundef %name.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i25.i)
  %tobool2.not.i64 = icmp eq i32 %call1.i25.i, 0
  br i1 %tobool2.not.i64, label %if.end4.i, label %if.end.i.if.then.i.i.i_crit_edge

if.end.i.if.then.i.i.i_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i.i

if.end4.i:                                        ; preds = %if.end.i
  %get_info.i = getelementptr inbounds %struct.tcp_ulp_ops, ptr %31, i32 0, i32 4
  %34 = ptrtoint ptr %get_info.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %get_info.i, align 4
  %tobool5.not.i = icmp eq ptr %35, null
  br i1 %tobool5.not.i, label %if.end4.i.if.end12.i_crit_edge, label %if.end9.i

if.end4.i.if.end12.i_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12.i

if.end9.i:                                        ; preds = %if.end4.i
  %call8.i = tail call i32 %35(ptr noundef %sk, ptr noundef %skb) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool10.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool10.not.i, label %if.end9.i.if.end12.i_crit_edge, label %if.end9.i.if.then.i.i.i_crit_edge

if.end9.i.if.then.i.i.i_crit_edge:                ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i.i

if.end9.i.if.end12.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.end9.i.if.end12.i_crit_edge, %if.end4.i.if.end12.i_crit_edge
  %36 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %37 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %33 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i65 = trunc i32 %sub.ptr.sub.i.i to i16
  %38 = ptrtoint ptr %33 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %conv.i.i65, ptr %33, align 2
  br label %cleanup33

if.then.i.i.i:                                    ; preds = %if.end9.i.if.then.i.i.i_crit_edge, %if.end.i.if.then.i.i.i_crit_edge
  %err.1.i = phi i32 [ %call1.i25.i, %if.end.i.if.then.i.i.i_crit_edge ], [ %call8.i, %if.end9.i.if.then.i.i.i_crit_edge ]
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %39 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %data.i.i.i, align 4
  %cmp.i.i.i = icmp ugt ptr %40, %33
  br i1 %cmp.i.i.i, label %do.end.i.i.i, label %if.then.i.i.i.nla_nest_cancel.exit.i_crit_edge, !prof !46

if.then.i.i.i.nla_nest_cancel.exit.i_crit_edge:   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nla_nest_cancel.exit.i

do.end.i.i.i:                                     ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 991, i32 noundef 9, ptr noundef null) #7
  br label %nla_nest_cancel.exit.i

nla_nest_cancel.exit.i:                           ; preds = %do.end.i.i.i, %if.then.i.i.i.nla_nest_cancel.exit.i_crit_edge
  %41 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %data.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %33 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %42 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  tail call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i.i) #7
  br label %cleanup33

cleanup33:                                        ; preds = %nla_nest_cancel.exit.i, %if.end12.i, %if.then23.cleanup33_crit_edge, %if.then21.cleanup33_crit_edge, %rcu_read_unlock.exit.cleanup33_crit_edge, %entry.cleanup33_crit_edge
  %retval.3 = phi i32 [ %err.0, %rcu_read_unlock.exit.cleanup33_crit_edge ], [ 0, %entry.cleanup33_crit_edge ], [ 0, %if.then21.cleanup33_crit_edge ], [ 0, %if.end12.i ], [ %err.1.i, %nla_nest_cancel.exit.i ], [ -90, %if.then23.cleanup33_crit_edge ]
  ret i32 %retval.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcp_diag_get_aux_size(ptr noundef %sk, i1 noundef zeroext %net_admin) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %net_admin, label %land.lhs.true, label %entry.if.end73_crit_edge

entry.if.end73_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end73

land.lhs.true:                                    ; preds = %entry
  %skc_state.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %0 = ptrtoint ptr %skc_state.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load volatile i8, ptr %skc_state.i, align 2
  %conv.i = zext i8 %1 to i32
  %shl.i = shl nuw i32 1, %conv.i
  %and.i = and i32 %shl.i, -4161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %land.lhs.true.land.lhs.true57_crit_edge, label %if.then

land.lhs.true.land.lhs.true57_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true57

if.then:                                          ; preds = %land.lhs.true
  %2 = tail call i32 @llvm.read_register.i32(metadata !33) #7
  %and.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !44
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #7
  %call.i = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i, label %if.then.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.then.rcu_read_lock.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.then
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 696, ptr noundef nonnull @.str.3) #7
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.then.rcu_read_lock.exit_crit_edge
  %md5sig_info = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 118
  %6 = ptrtoint ptr %md5sig_info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %md5sig_info, align 4
  %call4 = tail call i32 @rcu_read_lock_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true6, label %rcu_read_lock.exit.do.end13_crit_edge

rcu_read_lock.exit.do.end13_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end13

land.lhs.true6:                                   ; preds = %rcu_read_lock.exit
  %call7 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %land.lhs.true6.do.end13_crit_edge, label %land.lhs.true9

land.lhs.true6.do.end13_crit_edge:                ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end13

land.lhs.true9:                                   ; preds = %land.lhs.true6
  %.b95 = load i1, ptr @tcp_diag_get_aux_size.__warned, align 1
  br i1 %.b95, label %land.lhs.true9.do.end13_crit_edge, label %if.then11

land.lhs.true9.do.end13_crit_edge:                ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end13

if.then11:                                        ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @tcp_diag_get_aux_size.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 156, ptr noundef nonnull @.str.1) #7
  br label %do.end13

do.end13:                                         ; preds = %if.then11, %land.lhs.true9.do.end13_crit_edge, %land.lhs.true6.do.end13_crit_edge, %rcu_read_lock.exit.do.end13_crit_edge
  %tobool15.not = icmp eq ptr %7, null
  br i1 %tobool15.not, label %do.end13.if.end53_crit_edge, label %do.body17

do.end13.if.end53_crit_edge:                      ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end53

do.body17:                                        ; preds = %do.end13
  %call18 = tail call i32 @rcu_read_lock_any_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %land.lhs.true20, label %do.body17.for.cond.preheader_crit_edge

do.body17.for.cond.preheader_crit_edge:           ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.preheader

land.lhs.true20:                                  ; preds = %do.body17
  %call21 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %land.lhs.true20.for.cond.preheader_crit_edge, label %land.lhs.true23

land.lhs.true20.for.cond.preheader_crit_edge:     ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.preheader

land.lhs.true23:                                  ; preds = %land.lhs.true20
  %.b9394 = load i1, ptr @tcp_diag_get_aux_size.__warned.8, align 1
  br i1 %.b9394, label %land.lhs.true23.for.cond.preheader_crit_edge, label %if.then25

land.lhs.true23.for.cond.preheader_crit_edge:     ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.preheader

if.then25:                                        ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @tcp_diag_get_aux_size.__warned.8, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 158, ptr noundef nonnull @.str.4) #7
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.then25, %land.lhs.true23.for.cond.preheader_crit_edge, %land.lhs.true20.for.cond.preheader_crit_edge, %do.body17.for.cond.preheader_crit_edge
  br label %for.cond

for.cond:                                         ; preds = %for.cond.for.cond_crit_edge, %for.cond.preheader
  %md5sig_count.0 = phi i32 [ %inc, %for.cond.for.cond_crit_edge ], [ 0, %for.cond.preheader ]
  %key.0.in = phi ptr [ %key.0, %for.cond.for.cond_crit_edge ], [ %7, %for.cond.preheader ]
  %8 = ptrtoint ptr %key.0.in to i32
  call void @__asan_load4_noabort(i32 %8)
  %key.0 = load volatile ptr, ptr %key.0.in, align 4
  %tobool37.not = icmp eq ptr %key.0, null
  %inc = add i32 %md5sig_count.0, 1
  br i1 %tobool37.not, label %for.cond.if.end53_crit_edge, label %for.cond.for.cond_crit_edge

for.cond.for.cond_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond

for.cond.if.end53_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end53

if.end53:                                         ; preds = %for.cond.if.end53_crit_edge, %do.end13.if.end53_crit_edge
  %md5sig_count.1 = phi i32 [ 0, %do.end13.if.end53_crit_edge ], [ %md5sig_count.0, %for.cond.if.end53_crit_edge ]
  %call.i97 = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i97, label %if.end53.if.end55_crit_edge, label %land.lhs.true.i100

if.end53.if.end55_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end55

land.lhs.true.i100:                               ; preds = %if.end53
  %call1.i98 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i98)
  %tobool.not.i99 = icmp eq i32 %call1.i98, 0
  br i1 %tobool.not.i99, label %land.lhs.true.i100.if.end55_crit_edge, label %land.lhs.true2.i102

land.lhs.true.i100.if.end55_crit_edge:            ; preds = %land.lhs.true.i100
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end55

land.lhs.true2.i102:                              ; preds = %land.lhs.true.i100
  %.b4.i101 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i101, label %land.lhs.true2.i102.if.end55_crit_edge, label %if.then.i103

land.lhs.true2.i102.if.end55_crit_edge:           ; preds = %land.lhs.true2.i102
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end55

if.then.i103:                                     ; preds = %land.lhs.true2.i102
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 724, ptr noundef nonnull @.str.6) #7
  br label %if.end55

if.end55:                                         ; preds = %if.then.i103, %land.lhs.true2.i102.if.end55_crit_edge, %land.lhs.true.i100.if.end55_crit_edge, %if.end53.if.end55_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !45
  %9 = tail call i32 @llvm.read_register.i32(metadata !33) #7
  %and.i.i.i.i.i104 = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i104 to ptr
  %preempt_count.i.i.i.i105 = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i.i.i105 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i.i.i105, align 4
  %sub.i.i.i = add i32 %12, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i105, align 4
  tail call void @rcu_read_unlock_strict() #7
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #7
  %mul = mul i32 %md5sig_count.1, 100
  %sub.i = add i32 %mul, 7
  %and.i106 = and i32 %sub.i, -4
  br label %land.lhs.true57

land.lhs.true57:                                  ; preds = %if.end55, %land.lhs.true.land.lhs.true57_crit_edge
  %size.0113 = phi i32 [ %and.i106, %if.end55 ], [ 0, %land.lhs.true.land.lhs.true57_crit_edge ]
  %13 = ptrtoint ptr %skc_state.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load volatile i8, ptr %skc_state.i, align 2
  %conv.i108 = zext i8 %14 to i32
  %shl.i109 = shl nuw i32 1, %conv.i108
  %and.i110 = and i32 %shl.i109, -4161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i110)
  %tobool.i111.not = icmp eq i32 %and.i110, 0
  br i1 %tobool.i111.not, label %land.lhs.true57.if.end73_crit_edge, label %if.then59

land.lhs.true57.if.end73_crit_edge:               ; preds = %land.lhs.true57
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end73

if.then59:                                        ; preds = %land.lhs.true57
  %icsk_ulp_ops = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 12
  %15 = ptrtoint ptr %icsk_ulp_ops to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %icsk_ulp_ops, align 4
  %tobool60.not = icmp eq ptr %16, null
  br i1 %tobool60.not, label %if.then59.if.end73_crit_edge, label %if.then61

if.then59.if.end73_crit_edge:                     ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end73

if.then61:                                        ; preds = %if.then59
  %add65 = add i32 %size.0113, 24
  %get_info_size = getelementptr inbounds %struct.tcp_ulp_ops, ptr %16, i32 0, i32 5
  %17 = ptrtoint ptr %get_info_size to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %get_info_size, align 4
  %tobool66.not = icmp eq ptr %18, null
  br i1 %tobool66.not, label %if.then61.if.end73_crit_edge, label %if.then67

if.then61.if.end73_crit_edge:                     ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end73

if.then67:                                        ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #9
  %call69 = tail call i32 %18(ptr noundef %sk) #7
  %add70 = add i32 %call69, %add65
  br label %if.end73

if.end73:                                         ; preds = %if.then67, %if.then61.if.end73_crit_edge, %if.then59.if.end73_crit_edge, %land.lhs.true57.if.end73_crit_edge, %entry.if.end73_crit_edge
  %size.2 = phi i32 [ %size.0113, %land.lhs.true57.if.end73_crit_edge ], [ %add70, %if.then67 ], [ %add65, %if.then61.if.end73_crit_edge ], [ %size.0113, %if.then59.if.end73_crit_edge ], [ 0, %entry.if.end73_crit_edge ]
  ret i32 %size.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcp_diag_destroy(ptr nocapture noundef readonly %in_skb, ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %in_skb, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 9
  %3 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %skc_net.i, align 4
  %call1 = tail call ptr @inet_diag_find_one_icsk(ptr noundef %4, ptr noundef nonnull @tcp_hashinfo, ptr noundef %req) #7
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %call1 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call4 = tail call i32 @sock_diag_destroy(ptr noundef %call1, i32 noundef 103) #7
  tail call void @sock_gen_put(ptr noundef %call1) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %5, %if.then ], [ %call4, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet_diag_dump_icsk(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_diag_dump_one_icsk(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_get_info(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nla_reserve(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @inet_diag_find_one_icsk(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_diag_destroy(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_gen_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_diag_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

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

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind readonly }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !14, !15, !17, !18, !19, !21, !22, !24, !26, !27, !29, !31}
!llvm.named.register.sp = !{!33}
!llvm.module.flags = !{!34, !35, !36, !37, !38, !39, !40, !41}
!llvm.ident = !{!42}

!0 = !{ptr @__initcall__kmod_tcp_diag__616_235_tcp_diag_init6, !1, !"__initcall__kmod_tcp_diag__616_235_tcp_diag_init6", i1 false, i1 false}
!1 = !{!"../net/ipv4/tcp_diag.c", i32 235, i32 1}
!2 = !{ptr @__exitcall_tcp_diag_exit, !3, !"__exitcall_tcp_diag_exit", i1 false, i1 false}
!3 = !{!"../net/ipv4/tcp_diag.c", i32 236, i32 1}
!4 = !{ptr @__UNIQUE_ID_file617, !5, !"__UNIQUE_ID_file617", i1 false, i1 false}
!5 = !{!"../net/ipv4/tcp_diag.c", i32 237, i32 1}
!6 = !{ptr @__UNIQUE_ID_license618, !5, !"__UNIQUE_ID_license618", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_alias619, !8, !"__UNIQUE_ID_alias619", i1 false, i1 false}
!8 = !{!"../net/ipv4/tcp_diag.c", i32 238, i32 1}
!9 = !{ptr @tcp_diag_handler, !10, !"tcp_diag_handler", i1 false, i1 false}
!10 = !{!"../net/ipv4/tcp_diag.c", i32 212, i32 39}
!11 = distinct !{null, !12, !"__warned", i1 false, i1 false}
!12 = !{!"../net/ipv4/tcp_diag.c", i32 123, i32 12}
!13 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!15 = distinct !{null, !16, !"__warned", i1 false, i1 false}
!16 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!17 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!19 = distinct !{null, !20, !"__warned", i1 false, i1 false}
!20 = !{!"../net/ipv4/tcp_diag.c", i32 63, i32 2}
!21 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!22 = distinct !{null, !23, !"__warned", i1 false, i1 false}
!23 = !{!"../net/ipv4/tcp_diag.c", i32 75, i32 2}
!24 = distinct !{null, !25, !"__warned", i1 false, i1 false}
!25 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!26 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../include/net/netlink.h", i32 991, i32 3}
!29 = distinct !{null, !30, !"__warned", i1 false, i1 false}
!30 = !{!"../net/ipv4/tcp_diag.c", i32 156, i32 12}
!31 = distinct !{null, !32, !"__warned", i1 false, i1 false}
!32 = !{!"../net/ipv4/tcp_diag.c", i32 158, i32 4}
!33 = !{!"sp"}
!34 = !{i32 1, !"wchar_size", i32 2}
!35 = !{i32 1, !"min_enum_size", i32 4}
!36 = !{i32 8, !"branch-target-enforcement", i32 0}
!37 = !{i32 8, !"sign-return-address", i32 0}
!38 = !{i32 8, !"sign-return-address-all", i32 0}
!39 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!40 = !{i32 7, !"uwtable", i32 1}
!41 = !{i32 7, !"frame-pointer", i32 2}
!42 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!43 = !{i64 2156898326}
!44 = !{i64 2149359822}
!45 = !{i64 2149360088}
!46 = !{!"branch_weights", i32 1, i32 2000}
