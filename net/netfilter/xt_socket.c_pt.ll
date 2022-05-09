; ModuleID = '/llk/IR_all_yes/net/netfilter/xt_socket.c_pt.bc'
source_filename = "../net/netfilter/xt_socket.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.xt_match = type { %struct.list_head, [29 x i8], i8, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16 }
%struct.list_head = type { ptr, ptr }
%struct.xt_socket_mtinfo1 = type { i8 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.xt_action_param = type { %union.anon.185, %union.anon.186, ptr, i32, i16, i8 }
%union.anon.185 = type { ptr }
%union.anon.186 = type { ptr }
%struct.xt_mtchk_param = type { ptr, ptr, ptr, ptr, ptr, i32, i8, i8 }
%struct.xt_mtdtor_param = type { ptr, ptr, ptr, i8 }
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
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.nf_hook_state = type { i8, i8, ptr, ptr, ptr, ptr, ptr }
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
%union.anon.148 = type { i32 }
%struct.inet_timewait_sock = type { %struct.sock_common, i32, i8, i8, i16, i32, i32, i32, %struct.timer_list, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.inet_request_sock = type { %struct.request_sock, i16, i32, %union.anon.194 }
%struct.request_sock = type { %struct.sock_common, ptr, i16, i8, i8, i32, %struct.timer_list, ptr, ptr, ptr, i32, i32 }
%union.anon.194 = type { %struct.anon.195 }
%struct.anon.195 = type { ptr, ptr }
%struct.inet_sock = type { %struct.sock, ptr, i32, i16, i16, ptr, i16, i16, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, ptr, %struct.inet_cork_full }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.149, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.150, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.151, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.149 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.150 = type { ptr }
%union.anon.151 = type { ptr }
%struct.sk_buff_head = type { %union.anon.96, i32, %struct.spinlock }
%union.anon.96 = type { %struct.anon.97 }
%struct.anon.97 = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.callback_head = type { ptr, ptr }
%struct.inet_cork_full = type { %struct.inet_cork, %struct.flowi }
%struct.inet_cork = type { i32, i32, ptr, i32, i32, ptr, i8, i8, i16, i8, i16, i64, i32 }
%struct.flowi = type { %union.anon.23 }
%union.anon.23 = type { %struct.flowi6 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.anon.138 = type { i32, i32 }

@socket_mt_reg = internal global [7 x %struct.xt_match] [%struct.xt_match { %struct.list_head zeroinitializer, [29 x i8] c"socket\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, ptr @socket_mt4_v0, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 3, i16 0, i16 2 }, %struct.xt_match { %struct.list_head zeroinitializer, [29 x i8] c"socket\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 1, ptr @socket_mt4_v1_v2_v3, ptr @socket_mt_v1_check, ptr @socket_mt_destroy, ptr null, ptr null, i32 1, i32 0, i32 3, i16 0, i16 2 }, %struct.xt_match { %struct.list_head zeroinitializer, [29 x i8] c"socket\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 1, ptr @socket_mt6_v1_v2_v3, ptr @socket_mt_v1_check, ptr @socket_mt_destroy, ptr null, ptr null, i32 1, i32 0, i32 3, i16 0, i16 10 }, %struct.xt_match { %struct.list_head zeroinitializer, [29 x i8] c"socket\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 2, ptr @socket_mt4_v1_v2_v3, ptr @socket_mt_v2_check, ptr @socket_mt_destroy, ptr null, ptr null, i32 1, i32 0, i32 3, i16 0, i16 2 }, %struct.xt_match { %struct.list_head zeroinitializer, [29 x i8] c"socket\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 2, ptr @socket_mt6_v1_v2_v3, ptr @socket_mt_v2_check, ptr @socket_mt_destroy, ptr null, ptr null, i32 1, i32 0, i32 3, i16 0, i16 10 }, %struct.xt_match { %struct.list_head zeroinitializer, [29 x i8] c"socket\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 3, ptr @socket_mt4_v1_v2_v3, ptr @socket_mt_v3_check, ptr @socket_mt_destroy, ptr null, ptr null, i32 1, i32 0, i32 3, i16 0, i16 2 }, %struct.xt_match { %struct.list_head zeroinitializer, [29 x i8] c"socket\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 3, ptr @socket_mt6_v1_v2_v3, ptr @socket_mt_v3_check, ptr @socket_mt_destroy, ptr null, ptr null, i32 1, i32 0, i32 3, i16 0, i16 10 }], section ".data..read_mostly", align 4
@__initcall__kmod_xt_socket__619_329_socket_mt_init6 = internal global ptr @socket_mt_init, section ".initcall6.init", align 4
@__exitcall_socket_mt_exit = internal global ptr @socket_mt_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file620 = internal constant [39 x i8] c"xt_socket.file=net/netfilter/xt_socket\00", section ".modinfo", align 1
@__UNIQUE_ID_license621 = internal constant [22 x i8] c"xt_socket.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author622 = internal constant [52 x i8] c"xt_socket.author=Krisztian Kovacs, Balazs Scheidler\00", section ".modinfo", align 1
@__UNIQUE_ID_description623 = internal constant [51 x i8] c"xt_socket.description=x_tables socket match module\00", section ".modinfo", align 1
@__UNIQUE_ID_alias624 = internal constant [27 x i8] c"xt_socket.alias=ipt_socket\00", section ".modinfo", align 1
@__UNIQUE_ID_alias625 = internal constant [28 x i8] c"xt_socket.alias=ip6t_socket\00", section ".modinfo", align 1
@socket_mt4_v0.xt_info_v0 = internal global { %struct.xt_socket_mtinfo1, [31 x i8] } zeroinitializer, align 32
@socket_mt_v1_check._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.socket_mt_v1_check = private unnamed_addr constant [19 x i8] c"socket_mt_v1_check\00", align 1
@socket_mt_v1_check._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.socket_mt_v1_check, ptr @.str.2, i32 179, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016xt_socket: unknown flags 0x%x\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"net/netfilter/xt_socket.c\00", [38 x i8] zeroinitializer }, align 32
@socket_mt_v1_check._entry_ptr = internal global ptr @socket_mt_v1_check._entry, section ".printk_index", align 4
@socket_mt_enable_defrag.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Unknown family %d\0A\00", [45 x i8] zeroinitializer }, align 32
@socket_mt_v2_check._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.socket_mt_v2_check = private unnamed_addr constant [19 x i8] c"socket_mt_v2_check\00", align 1
@socket_mt_v2_check._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.socket_mt_v2_check, ptr @.str.2, i32 196, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@socket_mt_v2_check._entry_ptr = internal global ptr @socket_mt_v2_check._entry, section ".printk_index", align 4
@socket_mt_v3_check._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.socket_mt_v3_check = private unnamed_addr constant [19 x i8] c"socket_mt_v3_check\00", align 1
@socket_mt_v3_check._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.socket_mt_v3_check, ptr @.str.2, i32 213, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@socket_mt_v3_check._entry_ptr = internal global ptr @socket_mt_v3_check._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 10]
@__sancov_gen_cov_switch_values.4 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 10]
@__sancov_gen_cov_switch_values.5 = internal global [4 x i64] [i64 2, i64 8, i64 6, i64 12]
@__sancov_gen_cov_switch_values.6 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 10]
@__sancov_gen_cov_switch_values.7 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 10]
@__sancov_gen_cov_switch_values.8 = internal global [4 x i64] [i64 2, i64 8, i64 6, i64 12]
@___asan_gen_.9 = private unnamed_addr constant [11 x i8] c"xt_info_v0\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 95, i32 34 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 178, i32 3 }
@___asan_gen_.27 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 164, i32 2 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 195, i32 3 }
@___asan_gen_.36 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.39 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.40 = private constant [29 x i8] c"../net/netfilter/xt_socket.c\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 212, i32 3 }
@llvm.compiler.used = appending global [23 x ptr] [ptr @__UNIQUE_ID_alias624, ptr @__UNIQUE_ID_alias625, ptr @__UNIQUE_ID_author622, ptr @__UNIQUE_ID_description623, ptr @__UNIQUE_ID_file620, ptr @__UNIQUE_ID_license621, ptr @__exitcall_socket_mt_exit, ptr @__initcall__kmod_xt_socket__619_329_socket_mt_init6, ptr @socket_mt_exit, ptr @socket_mt_v1_check._entry, ptr @socket_mt_v1_check._entry_ptr, ptr @socket_mt_v2_check._entry, ptr @socket_mt_v2_check._entry_ptr, ptr @socket_mt_v3_check._entry, ptr @socket_mt_v3_check._entry_ptr, ptr @socket_mt4_v0.xt_info_v0, ptr @socket_mt_v1_check._rs, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @socket_mt_v2_check._rs, ptr @socket_mt_v3_check._rs], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @socket_mt4_v0.xt_info_v0 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @socket_mt_v1_check._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @socket_mt_v1_check._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @socket_mt_v2_check._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @socket_mt_v2_check._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @socket_mt_v3_check._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @socket_mt_v3_check._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @socket_mt_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @xt_unregister_matches(ptr noundef nonnull @socket_mt_reg, i32 noundef 7) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xt_unregister_matches(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @socket_mt_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @xt_register_matches(ptr noundef nonnull @socket_mt_reg, i32 noundef 7) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @socket_mt4_v0(ptr noundef %skb, ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc zeroext i1 @socket_match(ptr noundef %skb, ptr noundef %par, ptr noundef nonnull @socket_mt4_v0.xt_info_v0)
  ret i1 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @socket_mt4_v1_v2_v3(ptr noundef %skb, ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %call = tail call fastcc zeroext i1 @socket_match(ptr noundef %skb, ptr noundef %par, ptr noundef %2)
  ret i1 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @socket_mt_v1_check(ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %matchinfo = getelementptr inbounds %struct.xt_mtchk_param, ptr %par, i32 0, i32 4
  %0 = ptrtoint ptr %matchinfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %matchinfo, align 4
  %2 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %par, align 4
  %family = getelementptr inbounds %struct.xt_mtchk_param, ptr %par, i32 0, i32 6
  %4 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %family, align 4
  %conv = zext i8 %5 to i32
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i8 %5, label %land.end.i [
    i8 2, label %sw.bb.i
    i8 10, label %sw.bb1.i
  ]

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call.i = tail call i32 @nf_defrag_ipv4_enable(ptr noundef %3) #4
  br label %socket_mt_enable_defrag.exit

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call2.i = tail call i32 @nf_defrag_ipv6_enable(ptr noundef %3) #4
  br label %socket_mt_enable_defrag.exit

land.end.i:                                       ; preds = %entry
  %.b39.i = load i1, ptr @socket_mt_enable_defrag.__already_done, align 1
  br i1 %.b39.i, label %land.end.i.if.end_crit_edge, label %if.then.i, !prof !49

land.end.i.if.end_crit_edge:                      ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then.i:                                        ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @socket_mt_enable_defrag.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 164, i32 noundef 9, ptr noundef nonnull @.str.3, i32 noundef %conv) #4
  br label %if.end

socket_mt_enable_defrag.exit:                     ; preds = %sw.bb1.i, %sw.bb.i
  %retval.0.i = phi i32 [ %call2.i, %sw.bb1.i ], [ %call.i, %sw.bb.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool.not, label %socket_mt_enable_defrag.exit.if.end_crit_edge, label %socket_mt_enable_defrag.exit.cleanup_crit_edge

socket_mt_enable_defrag.exit.cleanup_crit_edge:   ; preds = %socket_mt_enable_defrag.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

socket_mt_enable_defrag.exit.if.end_crit_edge:    ; preds = %socket_mt_enable_defrag.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.end:                                           ; preds = %socket_mt_enable_defrag.exit.if.end_crit_edge, %if.then.i, %land.end.i.if.end_crit_edge
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %8)
  %tobool2.not = icmp ult i8 %8, 2
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then3:                                         ; preds = %if.end
  %call4 = tail call i32 @___ratelimit(ptr noundef nonnull @socket_mt_v1_check._rs, ptr noundef nonnull @__func__.socket_mt_v1_check) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then3.cleanup_crit_edge, label %do.end

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end:                                           ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #6
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %1, align 1
  %11 = and i8 %10, -2
  %and9 = zext i8 %11 to i32
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %and9) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %socket_mt_enable_defrag.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %socket_mt_enable_defrag.exit.cleanup_crit_edge ], [ -22, %do.end ], [ -22, %if.then3.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @socket_mt_destroy(ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %family = getelementptr inbounds %struct.xt_mtdtor_param, ptr %par, i32 0, i32 3
  %0 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %family, align 4
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.4)
  switch i8 %1, label %entry.if.end8_crit_edge [
    i8 2, label %if.then
    i8 10, label %if.then6
  ]

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end8

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %3 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %par, align 4
  tail call void @nf_defrag_ipv4_disable(ptr noundef %4) #4
  br label %if.end8

if.then6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %5 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %par, align 4
  tail call void @nf_defrag_ipv6_disable(ptr noundef %6) #4
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.then, %entry.if.end8_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @socket_mt6_v1_v2_v3(ptr noundef %skb, ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end9_crit_edge, label %land.lhs.true

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end9

land.lhs.true:                                    ; preds = %entry
  %state.i = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 2
  %6 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %state.i, align 4
  %net.i = getelementptr inbounds %struct.nf_hook_state, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %net.i, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %5, i32 0, i32 9
  %10 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %skc_net.i, align 4
  %cmp.i.not = icmp eq ptr %9, %11
  br i1 %cmp.i.not, label %land.lhs.true.if.then11_crit_edge, label %land.lhs.true.if.end9_crit_edge

land.lhs.true.if.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end9

land.lhs.true.if.then11_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then11

if.end9:                                          ; preds = %land.lhs.true.if.end9_crit_edge, %entry.if.end9_crit_edge
  %state.i75 = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 2
  %12 = ptrtoint ptr %state.i75 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %state.i75, align 4
  %net.i76 = getelementptr inbounds %struct.nf_hook_state, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %net.i76 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %net.i76, align 4
  %in.i = getelementptr inbounds %struct.nf_hook_state, ptr %13, i32 0, i32 2
  %16 = ptrtoint ptr %in.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %in.i, align 4
  %call8 = tail call ptr @nf_sk_lookup_slow_v6(ptr noundef %15, ptr noundef %skb, ptr noundef %17) #4
  %tobool10.not = icmp eq ptr %call8, null
  br i1 %tobool10.not, label %if.end9.if.end48_crit_edge, label %if.end9.if.then11_crit_edge

if.end9.if.then11_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then11

if.end9.if.end48_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end48

if.then11:                                        ; preds = %if.end9.if.then11_crit_edge, %land.lhs.true.if.then11_crit_edge
  %sk.191 = phi ptr [ %call8, %if.end9.if.then11_crit_edge ], [ %5, %land.lhs.true.if.then11_crit_edge ]
  %18 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %2, align 1
  %20 = and i8 %19, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool12.not = icmp eq i8 %20, 0
  br i1 %tobool12.not, label %land.lhs.true13, label %if.then11.land.end_crit_edge

if.then11.land.end_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.end

land.lhs.true13:                                  ; preds = %if.then11
  %skc_state.i = getelementptr inbounds %struct.sock_common, ptr %sk.191, i32 0, i32 4
  %21 = ptrtoint ptr %skc_state.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load volatile i8, ptr %skc_state.i, align 2
  %conv.i78 = zext i8 %22 to i32
  %shl.i = shl nuw i32 1, %conv.i78
  %and.i = and i32 %shl.i, -4161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %land.lhs.true13.land.end_crit_edge, label %land.rhs

land.lhs.true13.land.end_crit_edge:               ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.end

land.rhs:                                         ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #6
  %skc_v6_rcv_saddr = getelementptr inbounds %struct.sock_common, ptr %sk.191, i32 0, i32 11
  %23 = ptrtoint ptr %skc_v6_rcv_saddr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %skc_v6_rcv_saddr, align 4
  %arrayidx2.i = getelementptr %struct.sock_common, ptr %sk.191, i32 0, i32 11, i32 0, i32 0, i32 1
  %25 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx2.i, align 4
  %or.i = or i32 %26, %24
  %arrayidx4.i = getelementptr %struct.sock_common, ptr %sk.191, i32 0, i32 11, i32 0, i32 0, i32 2
  %27 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx4.i, align 4
  %or5.i = or i32 %or.i, %28
  %arrayidx7.i = getelementptr %struct.sock_common, ptr %sk.191, i32 0, i32 11, i32 0, i32 0, i32 3
  %29 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx7.i, align 4
  %or8.i = or i32 %or5.i, %30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or8.i)
  %cmp.i79 = icmp eq i32 %or8.i, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true13.land.end_crit_edge, %if.then11.land.end_crit_edge
  %31 = phi i1 [ false, %land.lhs.true13.land.end_crit_edge ], [ false, %if.then11.land.end_crit_edge ], [ %cmp.i79, %land.rhs ]
  %32 = and i8 %19, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool21.not = icmp eq i8 %32, 0
  br i1 %tobool21.not, label %land.end.if.end25_crit_edge, label %if.then22

land.end.if.end25_crit_edge:                      ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end25

if.then22:                                        ; preds = %land.end
  %skc_state.i80 = getelementptr inbounds %struct.sock_common, ptr %sk.191, i32 0, i32 4
  %33 = ptrtoint ptr %skc_state.i80 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load volatile i8, ptr %skc_state.i80, align 2
  %35 = zext i8 %34 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.5)
  switch i8 %34, label %sw.epilog.i [
    i8 6, label %sw.bb.i
    i8 12, label %sw.bb1.i
  ]

sw.bb.i:                                          ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #6
  %tw_transparent.i = getelementptr inbounds %struct.inet_timewait_sock, ptr %sk.191, i32 0, i32 5
  %36 = ptrtoint ptr %tw_transparent.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %bf.load.i = load i32, ptr %tw_transparent.i, align 8
  %37 = and i32 %bf.load.i, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool.i81 = icmp ne i32 %37, 0
  br label %if.end25

sw.bb1.i:                                         ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #6
  %no_srccheck.i = getelementptr inbounds %struct.inet_request_sock, ptr %sk.191, i32 0, i32 1
  %38 = ptrtoint ptr %no_srccheck.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %bf.load4.i = load i16, ptr %no_srccheck.i, align 8
  %39 = and i16 %bf.load4.i, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %39)
  %tobool7.i = icmp ne i16 %39, 0
  br label %if.end25

sw.epilog.i:                                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #6
  %transparent.i = getelementptr inbounds %struct.inet_sock, ptr %sk.191, i32 0, i32 12
  %40 = ptrtoint ptr %transparent.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %bf.load9.i = load i16, ptr %transparent.i, align 8
  %41 = and i16 %bf.load9.i, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %41)
  %tobool12.i = icmp ne i16 %41, 0
  br label %if.end25

if.end25:                                         ; preds = %sw.epilog.i, %sw.bb1.i, %sw.bb.i, %land.end.if.end25_crit_edge
  %transparent.0.off0 = phi i1 [ true, %land.end.if.end25_crit_edge ], [ %tobool12.i, %sw.epilog.i ], [ %tobool7.i, %sw.bb1.i ], [ %tobool.i81, %sw.bb.i ]
  %42 = and i8 %19, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool29.not = icmp eq i8 %42, 0
  %brmerge = select i1 %tobool29.not, i1 true, i1 %31
  %transparent.0.off0.not = xor i1 %transparent.0.off0, true
  %brmerge72 = select i1 %brmerge, i1 true, i1 %transparent.0.off0.not
  br i1 %brmerge72, label %if.end25.if.end39_crit_edge, label %land.lhs.true35

if.end25.if.end39_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end39

land.lhs.true35:                                  ; preds = %if.end25
  %skc_state.i82 = getelementptr inbounds %struct.sock_common, ptr %sk.191, i32 0, i32 4
  %43 = ptrtoint ptr %skc_state.i82 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load volatile i8, ptr %skc_state.i82, align 2
  %conv.i83 = zext i8 %44 to i32
  %shl.i84 = shl nuw i32 1, %conv.i83
  %and.i85 = and i32 %shl.i84, -4161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i85)
  %tobool.i86.not = icmp eq i32 %and.i85, 0
  br i1 %tobool.i86.not, label %land.lhs.true35.if.end39_crit_edge, label %if.then38

land.lhs.true35.if.end39_crit_edge:               ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end39

if.then38:                                        ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #6
  %sk_mark = getelementptr inbounds %struct.sock, ptr %sk.191, i32 0, i32 34
  %45 = ptrtoint ptr %sk_mark to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %sk_mark, align 8
  %47 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 13
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %46, ptr %47, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.then38, %land.lhs.true35.if.end39_crit_edge, %if.end25.if.end39_crit_edge
  %49 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %3, align 4
  %cmp.not = icmp eq ptr %sk.191, %50
  br i1 %cmp.not, label %if.end39.if.end42_crit_edge, label %if.then41

if.end39.if.end42_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end42

if.then41:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @sock_gen_put(ptr noundef nonnull %sk.191) #4
  br label %if.end42

if.end42:                                         ; preds = %if.then41, %if.end39.if.end42_crit_edge
  %not. = xor i1 %31, true
  %not.brmerge74 = select i1 %not., i1 %transparent.0.off0, i1 false
  br label %if.end48

if.end48:                                         ; preds = %if.end42, %if.end9.if.end48_crit_edge
  %sk.3 = phi i1 [ %not.brmerge74, %if.end42 ], [ false, %if.end9.if.end48_crit_edge ]
  ret i1 %sk.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @socket_mt_v2_check(ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %matchinfo = getelementptr inbounds %struct.xt_mtchk_param, ptr %par, i32 0, i32 4
  %0 = ptrtoint ptr %matchinfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %matchinfo, align 4
  %2 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %par, align 4
  %family = getelementptr inbounds %struct.xt_mtchk_param, ptr %par, i32 0, i32 6
  %4 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %family, align 4
  %conv = zext i8 %5 to i32
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.6)
  switch i8 %5, label %land.end.i [
    i8 2, label %sw.bb.i
    i8 10, label %sw.bb1.i
  ]

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call.i = tail call i32 @nf_defrag_ipv4_enable(ptr noundef %3) #4
  br label %socket_mt_enable_defrag.exit

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call2.i = tail call i32 @nf_defrag_ipv6_enable(ptr noundef %3) #4
  br label %socket_mt_enable_defrag.exit

land.end.i:                                       ; preds = %entry
  %.b39.i = load i1, ptr @socket_mt_enable_defrag.__already_done, align 1
  br i1 %.b39.i, label %land.end.i.if.end_crit_edge, label %if.then.i, !prof !49

land.end.i.if.end_crit_edge:                      ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then.i:                                        ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @socket_mt_enable_defrag.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 164, i32 noundef 9, ptr noundef nonnull @.str.3, i32 noundef %conv) #4
  br label %if.end

socket_mt_enable_defrag.exit:                     ; preds = %sw.bb1.i, %sw.bb.i
  %retval.0.i = phi i32 [ %call2.i, %sw.bb1.i ], [ %call.i, %sw.bb.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool.not, label %socket_mt_enable_defrag.exit.if.end_crit_edge, label %socket_mt_enable_defrag.exit.cleanup_crit_edge

socket_mt_enable_defrag.exit.cleanup_crit_edge:   ; preds = %socket_mt_enable_defrag.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

socket_mt_enable_defrag.exit.if.end_crit_edge:    ; preds = %socket_mt_enable_defrag.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.end:                                           ; preds = %socket_mt_enable_defrag.exit.if.end_crit_edge, %if.then.i, %land.end.i.if.end_crit_edge
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %8)
  %tobool2.not = icmp ult i8 %8, 4
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then3:                                         ; preds = %if.end
  %call4 = tail call i32 @___ratelimit(ptr noundef nonnull @socket_mt_v2_check._rs, ptr noundef nonnull @__func__.socket_mt_v2_check) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then3.cleanup_crit_edge, label %do.end

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end:                                           ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #6
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %1, align 1
  %11 = and i8 %10, -4
  %and9 = zext i8 %11 to i32
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %and9) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %socket_mt_enable_defrag.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %socket_mt_enable_defrag.exit.cleanup_crit_edge ], [ -22, %do.end ], [ -22, %if.then3.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @socket_mt_v3_check(ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %matchinfo = getelementptr inbounds %struct.xt_mtchk_param, ptr %par, i32 0, i32 4
  %0 = ptrtoint ptr %matchinfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %matchinfo, align 4
  %2 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %par, align 4
  %family = getelementptr inbounds %struct.xt_mtchk_param, ptr %par, i32 0, i32 6
  %4 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %family, align 4
  %conv = zext i8 %5 to i32
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.7)
  switch i8 %5, label %land.end.i [
    i8 2, label %sw.bb.i
    i8 10, label %sw.bb1.i
  ]

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call.i = tail call i32 @nf_defrag_ipv4_enable(ptr noundef %3) #4
  br label %socket_mt_enable_defrag.exit

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call2.i = tail call i32 @nf_defrag_ipv6_enable(ptr noundef %3) #4
  br label %socket_mt_enable_defrag.exit

land.end.i:                                       ; preds = %entry
  %.b39.i = load i1, ptr @socket_mt_enable_defrag.__already_done, align 1
  br i1 %.b39.i, label %land.end.i.if.end_crit_edge, label %if.then.i, !prof !49

land.end.i.if.end_crit_edge:                      ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then.i:                                        ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @socket_mt_enable_defrag.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 164, i32 noundef 9, ptr noundef nonnull @.str.3, i32 noundef %conv) #4
  br label %if.end

socket_mt_enable_defrag.exit:                     ; preds = %sw.bb1.i, %sw.bb.i
  %retval.0.i = phi i32 [ %call2.i, %sw.bb1.i ], [ %call.i, %sw.bb.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool.not, label %socket_mt_enable_defrag.exit.if.end_crit_edge, label %socket_mt_enable_defrag.exit.cleanup_crit_edge

socket_mt_enable_defrag.exit.cleanup_crit_edge:   ; preds = %socket_mt_enable_defrag.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

socket_mt_enable_defrag.exit.if.end_crit_edge:    ; preds = %socket_mt_enable_defrag.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.end:                                           ; preds = %socket_mt_enable_defrag.exit.if.end_crit_edge, %if.then.i, %land.end.i.if.end_crit_edge
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %8)
  %tobool2.not = icmp ult i8 %8, 8
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then3:                                         ; preds = %if.end
  %call4 = tail call i32 @___ratelimit(ptr noundef nonnull @socket_mt_v3_check._rs, ptr noundef nonnull @__func__.socket_mt_v3_check) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then3.cleanup_crit_edge, label %do.end

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end:                                           ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #6
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %1, align 1
  %11 = and i8 %10, -8
  %and9 = zext i8 %11 to i32
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %and9) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %socket_mt_enable_defrag.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %socket_mt_enable_defrag.exit.cleanup_crit_edge ], [ -22, %do.end ], [ -22, %if.then3.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @socket_match(ptr noundef %skb, ptr nocapture noundef readonly %par, ptr nocapture noundef readonly %info) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.if.end9_crit_edge, label %land.lhs.true

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end9

land.lhs.true:                                    ; preds = %entry
  %state.i = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 2
  %3 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %state.i, align 4
  %net.i = getelementptr inbounds %struct.nf_hook_state, ptr %4, i32 0, i32 5
  %5 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %net.i, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 9
  %7 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %skc_net.i, align 4
  %cmp.i.not = icmp eq ptr %6, %8
  br i1 %cmp.i.not, label %land.lhs.true.if.then11_crit_edge, label %land.lhs.true.if.end9_crit_edge

land.lhs.true.if.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end9

land.lhs.true.if.then11_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then11

if.end9:                                          ; preds = %land.lhs.true.if.end9_crit_edge, %entry.if.end9_crit_edge
  %state.i76 = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 2
  %9 = ptrtoint ptr %state.i76 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %state.i76, align 4
  %net.i77 = getelementptr inbounds %struct.nf_hook_state, ptr %10, i32 0, i32 5
  %11 = ptrtoint ptr %net.i77 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %net.i77, align 4
  %in.i = getelementptr inbounds %struct.nf_hook_state, ptr %10, i32 0, i32 2
  %13 = ptrtoint ptr %in.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %in.i, align 4
  %call8 = tail call ptr @nf_sk_lookup_slow_v4(ptr noundef %12, ptr noundef %skb, ptr noundef %14) #4
  %tobool10.not = icmp eq ptr %call8, null
  br i1 %tobool10.not, label %if.end9.if.end50_crit_edge, label %if.end9.if.then11_crit_edge

if.end9.if.then11_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then11

if.end9.if.end50_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end50

if.then11:                                        ; preds = %if.end9.if.then11_crit_edge, %land.lhs.true.if.then11_crit_edge
  %sk.191 = phi ptr [ %call8, %if.end9.if.then11_crit_edge ], [ %2, %land.lhs.true.if.then11_crit_edge ]
  %15 = ptrtoint ptr %info to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %info, align 1
  %17 = and i8 %16, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool12.not = icmp eq i8 %17, 0
  br i1 %tobool12.not, label %land.lhs.true13, label %if.then11.land.end_crit_edge

if.then11.land.end_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.end

land.lhs.true13:                                  ; preds = %if.then11
  %skc_state.i = getelementptr inbounds %struct.sock_common, ptr %sk.191, i32 0, i32 4
  %18 = ptrtoint ptr %skc_state.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load volatile i8, ptr %skc_state.i, align 2
  %conv.i79 = zext i8 %19 to i32
  %shl.i = shl nuw i32 1, %conv.i79
  %and.i = and i32 %shl.i, -4161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %land.lhs.true13.land.end_crit_edge, label %land.rhs

land.lhs.true13.land.end_crit_edge:               ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.end

land.rhs:                                         ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #6
  %skc_rcv_saddr = getelementptr inbounds %struct.anon.138, ptr %sk.191, i32 0, i32 1
  %20 = ptrtoint ptr %skc_rcv_saddr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %skc_rcv_saddr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp = icmp eq i32 %21, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true13.land.end_crit_edge, %if.then11.land.end_crit_edge
  %22 = phi i1 [ false, %land.lhs.true13.land.end_crit_edge ], [ false, %if.then11.land.end_crit_edge ], [ %cmp, %land.rhs ]
  %23 = and i8 %16, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool22.not = icmp eq i8 %23, 0
  br i1 %tobool22.not, label %land.end.if.end26_crit_edge, label %if.then23

land.end.if.end26_crit_edge:                      ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end26

if.then23:                                        ; preds = %land.end
  %skc_state.i80 = getelementptr inbounds %struct.sock_common, ptr %sk.191, i32 0, i32 4
  %24 = ptrtoint ptr %skc_state.i80 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load volatile i8, ptr %skc_state.i80, align 2
  %26 = zext i8 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.8)
  switch i8 %25, label %sw.epilog.i [
    i8 6, label %sw.bb.i
    i8 12, label %sw.bb1.i
  ]

sw.bb.i:                                          ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #6
  %tw_transparent.i = getelementptr inbounds %struct.inet_timewait_sock, ptr %sk.191, i32 0, i32 5
  %27 = ptrtoint ptr %tw_transparent.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %bf.load.i = load i32, ptr %tw_transparent.i, align 8
  %28 = and i32 %bf.load.i, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.i81 = icmp ne i32 %28, 0
  br label %if.end26

sw.bb1.i:                                         ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #6
  %no_srccheck.i = getelementptr inbounds %struct.inet_request_sock, ptr %sk.191, i32 0, i32 1
  %29 = ptrtoint ptr %no_srccheck.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %bf.load4.i = load i16, ptr %no_srccheck.i, align 8
  %30 = and i16 %bf.load4.i, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %30)
  %tobool7.i = icmp ne i16 %30, 0
  br label %if.end26

sw.epilog.i:                                      ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #6
  %transparent.i = getelementptr inbounds %struct.inet_sock, ptr %sk.191, i32 0, i32 12
  %31 = ptrtoint ptr %transparent.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %bf.load9.i = load i16, ptr %transparent.i, align 8
  %32 = and i16 %bf.load9.i, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %32)
  %tobool12.i = icmp ne i16 %32, 0
  br label %if.end26

if.end26:                                         ; preds = %sw.epilog.i, %sw.bb1.i, %sw.bb.i, %land.end.if.end26_crit_edge
  %transparent.0.off0 = phi i1 [ true, %land.end.if.end26_crit_edge ], [ %tobool12.i, %sw.epilog.i ], [ %tobool7.i, %sw.bb1.i ], [ %tobool.i81, %sw.bb.i ]
  %33 = and i8 %16, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool30.not = icmp eq i8 %33, 0
  %brmerge = select i1 %tobool30.not, i1 true, i1 %22
  %transparent.0.off0.not = xor i1 %transparent.0.off0, true
  %brmerge73 = select i1 %brmerge, i1 true, i1 %transparent.0.off0.not
  br i1 %brmerge73, label %if.end26.if.end40_crit_edge, label %land.lhs.true36

if.end26.if.end40_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end40

land.lhs.true36:                                  ; preds = %if.end26
  %skc_state.i82 = getelementptr inbounds %struct.sock_common, ptr %sk.191, i32 0, i32 4
  %34 = ptrtoint ptr %skc_state.i82 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load volatile i8, ptr %skc_state.i82, align 2
  %conv.i83 = zext i8 %35 to i32
  %shl.i84 = shl nuw i32 1, %conv.i83
  %and.i85 = and i32 %shl.i84, -4161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i85)
  %tobool.i86.not = icmp eq i32 %and.i85, 0
  br i1 %tobool.i86.not, label %land.lhs.true36.if.end40_crit_edge, label %if.then39

land.lhs.true36.if.end40_crit_edge:               ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end40

if.then39:                                        ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #6
  %sk_mark = getelementptr inbounds %struct.sock, ptr %sk.191, i32 0, i32 34
  %36 = ptrtoint ptr %sk_mark to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %sk_mark, align 8
  %38 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 13
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %37, ptr %38, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.then39, %land.lhs.true36.if.end40_crit_edge, %if.end26.if.end40_crit_edge
  %40 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %0, align 4
  %cmp41.not = icmp eq ptr %sk.191, %41
  br i1 %cmp41.not, label %if.end40.if.end44_crit_edge, label %if.then43

if.end40.if.end44_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end44

if.then43:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @sock_gen_put(ptr noundef nonnull %sk.191) #4
  br label %if.end44

if.end44:                                         ; preds = %if.then43, %if.end40.if.end44_crit_edge
  %not. = xor i1 %22, true
  %not.brmerge75 = select i1 %not., i1 %transparent.0.off0, i1 false
  br label %if.end50

if.end50:                                         ; preds = %if.end44, %if.end9.if.end50_crit_edge
  %sk.3 = phi i1 [ %not.brmerge75, %if.end44 ], [ false, %if.end9.if.end50_crit_edge ]
  ret i1 %sk.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nf_sk_lookup_slow_v4(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_gen_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_defrag_ipv4_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_defrag_ipv6_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_defrag_ipv4_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_defrag_ipv6_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nf_sk_lookup_slow_v6(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xt_register_matches(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19, !21, !22, !23, !24, !25, !26, !27, !29, !30, !32, !33, !34, !35, !37, !38, !39}
!llvm.module.flags = !{!40, !41, !42, !43, !44, !45, !46, !47}
!llvm.ident = !{!48}

!0 = !{ptr @__initcall__kmod_xt_socket__619_329_socket_mt_init6, !1, !"__initcall__kmod_xt_socket__619_329_socket_mt_init6", i1 false, i1 false}
!1 = !{!"../net/netfilter/xt_socket.c", i32 329, i32 1}
!2 = !{ptr @__exitcall_socket_mt_exit, !3, !"__exitcall_socket_mt_exit", i1 false, i1 false}
!3 = !{!"../net/netfilter/xt_socket.c", i32 330, i32 1}
!4 = !{ptr @__UNIQUE_ID_file620, !5, !"__UNIQUE_ID_file620", i1 false, i1 false}
!5 = !{!"../net/netfilter/xt_socket.c", i32 332, i32 1}
!6 = !{ptr @__UNIQUE_ID_license621, !5, !"__UNIQUE_ID_license621", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_author622, !8, !"__UNIQUE_ID_author622", i1 false, i1 false}
!8 = !{!"../net/netfilter/xt_socket.c", i32 333, i32 1}
!9 = !{ptr @__UNIQUE_ID_description623, !10, !"__UNIQUE_ID_description623", i1 false, i1 false}
!10 = !{!"../net/netfilter/xt_socket.c", i32 334, i32 1}
!11 = !{ptr @__UNIQUE_ID_alias624, !12, !"__UNIQUE_ID_alias624", i1 false, i1 false}
!12 = !{!"../net/netfilter/xt_socket.c", i32 335, i32 1}
!13 = !{ptr @__UNIQUE_ID_alias625, !14, !"__UNIQUE_ID_alias625", i1 false, i1 false}
!14 = !{!"../net/netfilter/xt_socket.c", i32 336, i32 1}
!15 = !{ptr @socket_mt_reg, !16, !"socket_mt_reg", i1 false, i1 false}
!16 = !{!"../net/netfilter/xt_socket.c", i32 229, i32 24}
!17 = !{ptr @socket_mt4_v0.xt_info_v0, !18, !"xt_info_v0", i1 false, i1 false}
!18 = !{!"../net/netfilter/xt_socket.c", i32 95, i32 34}
!19 = !{ptr @.str, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../net/netfilter/xt_socket.c", i32 178, i32 3}
!21 = !{ptr @socket_mt_v1_check._rs, !20, !"_rs", i1 false, i1 false}
!22 = !{ptr @__func__.socket_mt_v1_check, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.1, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @socket_mt_v1_check._entry, !20, !"_entry", i1 false, i1 false}
!26 = !{ptr @socket_mt_v1_check._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!27 = distinct !{null, !28, !"__already_done", i1 false, i1 false}
!28 = !{!"../net/netfilter/xt_socket.c", i32 164, i32 2}
!29 = !{ptr @.str.3, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @socket_mt_v2_check._rs, !31, !"_rs", i1 false, i1 false}
!31 = !{!"../net/netfilter/xt_socket.c", i32 195, i32 3}
!32 = !{ptr @__func__.socket_mt_v2_check, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @socket_mt_v2_check._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @socket_mt_v2_check._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @socket_mt_v3_check._rs, !36, !"_rs", i1 false, i1 false}
!36 = !{!"../net/netfilter/xt_socket.c", i32 212, i32 3}
!37 = !{ptr @__func__.socket_mt_v3_check, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @socket_mt_v3_check._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @socket_mt_v3_check._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{i32 1, !"wchar_size", i32 2}
!41 = !{i32 1, !"min_enum_size", i32 4}
!42 = !{i32 8, !"branch-target-enforcement", i32 0}
!43 = !{i32 8, !"sign-return-address", i32 0}
!44 = !{i32 8, !"sign-return-address-all", i32 0}
!45 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!46 = !{i32 7, !"uwtable", i32 1}
!47 = !{i32 7, !"frame-pointer", i32 2}
!48 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!49 = !{!"branch_weights", i32 2000, i32 1}
