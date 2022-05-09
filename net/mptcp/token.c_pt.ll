; ModuleID = '/llk/IR_all_yes/net/mptcp/token.c_pt.bc'
source_filename = "../net/mptcp/token.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+mptcp_token_get_sock\22, \22a\22\09"
module asm "\09.weak\09__crc_mptcp_token_get_sock\09\09\09\09"
module asm "\09.long\09__crc_mptcp_token_get_sock\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mptcp_token_get_sock:\09\09\09\09\09"
module asm "\09.asciz \09\22mptcp_token_get_sock\22\09\09\09\09\09"
module asm "__kstrtabns_mptcp_token_get_sock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mptcp_token_iter_next\22, \22a\22\09"
module asm "\09.weak\09__crc_mptcp_token_iter_next\09\09\09\09"
module asm "\09.long\09__crc_mptcp_token_iter_next\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mptcp_token_iter_next:\09\09\09\09\09"
module asm "\09.asciz \09\22mptcp_token_iter_next\22\09\09\09\09\09"
module asm "__kstrtabns_mptcp_token_iter_next:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.atomic_t = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.9 }
%union.anon.9 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mptcp_subflow_request_sock = type { %struct.tcp_request_sock, i8, i8, i8, i64, i64, i32, i32, i64, i32, i32, ptr, %struct.hlist_nulls_node }
%struct.tcp_request_sock = type { %struct.inet_request_sock, ptr, i64, i8, i8, i8, i32, i32, i32, i32, i32, i32, i8 }
%struct.inet_request_sock = type { %struct.request_sock, i16, i32, %union.anon.189 }
%struct.request_sock = type { %struct.sock_common, ptr, i16, i8, i8, i32, %struct.timer_list, ptr, ptr, ptr, i32, i32 }
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
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.158 = type { i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%union.anon.189 = type { %struct.anon.190 }
%struct.anon.190 = type { ptr, ptr }
%struct.hlist_nulls_node = type { ptr, ptr }
%struct.token_bucket = type { %struct.spinlock, i32, %struct.hlist_nulls_head, %struct.hlist_nulls_head }
%struct.spinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.8 }
%union.anon.8 = type { i32 }
%struct.hlist_nulls_head = type { ptr }
%struct.inet_connection_sock = type { %struct.inet_sock, %struct.request_sock_queue, ptr, i32, %struct.timer_list, %struct.timer_list, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.hlist_node, ptr, i8, i8, i8, i8, i8, i8, i16, %struct.anon.194, %struct.anon.195, i32, i32, [13 x i64] }
%struct.inet_sock = type { %struct.sock, ptr, i32, i16, i16, ptr, i16, i16, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, ptr, %struct.inet_cork_full }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.159, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.160, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.161, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.anon.159 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.160 = type { ptr }
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
%struct.anon.194 = type { i8, i8, i8, i8, i32, i32, i32, i16, i16 }
%struct.anon.195 = type { i32, i32, i32, i32 }
%struct.mptcp_subflow_context = type { %struct.list_head, %union.anon.199, %struct.list_head, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head }
%union.anon.199 = type { %struct.anon.200 }
%struct.anon.200 = type { i32, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i24, i32, i32, i64, i32, i32, [20 x i8], i8, i8, i8, i8, i32 }
%struct.mptcp_sock = type { %struct.inet_connection_sock, i64, i64, i64, i64, i64, i64, i64, i32, ptr, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.work_struct, ptr, %struct.rb_root, %struct.sk_buff_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, ptr, ptr, %struct.mptcp_pm_data, %struct.anon.197, i32, [16 x i8] }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rb_root = type { ptr }
%struct.mptcp_pm_data = type { %struct.mptcp_addr_info, %struct.mptcp_addr_info, %struct.list_head, %struct.spinlock, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i32], %struct.mptcp_rm_list, %struct.mptcp_rm_list }
%struct.mptcp_addr_info = type { i8, i16, i16, %union.anon.196 }
%union.anon.196 = type { %struct.in6_addr }
%struct.mptcp_rm_list = type { [8 x i8], i8 }
%struct.anon.197 = type { i32, i32, i64, i64 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@mptcp_token_new_request.__UNIQUE_ID_ddebug622 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 29, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"mptcp\00", [26 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mptcp_token_new_request\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"net/mptcp/token.c\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"req=%p local_key=%llu, token=%u, idsn=%llu\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"MPTCP: req=%p local_key=%llu, token=%u, idsn=%llu\0A\00", [45 x i8] zeroinitializer }, align 32
@mptcp_token_new_connect.__UNIQUE_ID_ddebug623 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.6, i8 0, i8 43, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mptcp_token_new_connect\00", [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"ssk=%p, local_key=%llu, token=%u, idsn=%llu\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"MPTCP: ssk=%p, local_key=%llu, token=%u, idsn=%llu\0A\00", [44 x i8] zeroinitializer }, align 32
@mptcp_token_accept.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@token_mask = internal global i32 0, section ".data..read_mostly", align 4
@__kstrtab_mptcp_token_get_sock = external dso_local constant [0 x i8], align 1
@__kstrtabns_mptcp_token_get_sock = external dso_local constant [0 x i8], align 1
@__ksymtab_mptcp_token_get_sock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mptcp_token_get_sock to i32), ptr @__kstrtab_mptcp_token_get_sock, ptr @__kstrtabns_mptcp_token_get_sock }, section "___ksymtab_gpl+mptcp_token_get_sock", align 4
@token_hash = internal unnamed_addr global ptr null, section ".data..read_mostly", align 4
@__kstrtab_mptcp_token_iter_next = external dso_local constant [0 x i8], align 1
@__kstrtabns_mptcp_token_iter_next = external dso_local constant [0 x i8], align 1
@__ksymtab_mptcp_token_iter_next = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mptcp_token_iter_next to i32), ptr @__kstrtab_mptcp_token_iter_next, ptr @__kstrtabns_mptcp_token_iter_next }, section "___ksymtab_gpl+mptcp_token_iter_next", align 4
@mptcp_token_destroy_request.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@mptcp_token_destroy.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.8 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"MPTCP token\00", [20 x i8] zeroinitializer }, align 32
@mptcp_token_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&token_hash[i].lock\00", [44 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.12 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 117, i32 2 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 171, i32 2 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 394, i32 39 }
@___asan_gen_.40 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.44 = private constant [21 x i8] c"../net/mptcp/token.c\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 406, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 695, i32 2 }
@___asan_gen_.52 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.53 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 723, i32 2 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @__ksymtab_mptcp_token_get_sock, ptr @__ksymtab_mptcp_token_iter_next, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @mptcp_token_init.__key, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptcp_token_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mptcp_token_new_request(ptr noundef %req) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %local_key = getelementptr inbounds %struct.mptcp_subflow_request_sock, ptr %req, i32 0, i32 4
  %0 = ptrtoint ptr %local_key to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %local_key, align 8
  %token1 = getelementptr inbounds %struct.mptcp_subflow_request_sock, ptr %req, i32 0, i32 6
  %idsn = getelementptr inbounds %struct.mptcp_subflow_request_sock, ptr %req, i32 0, i32 5
  tail call void @mptcp_crypto_key_sha(i64 noundef %1, ptr noundef %token1, ptr noundef %idsn) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mptcp_token_new_request.__UNIQUE_ID_ddebug622, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mptcp_token_new_request, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !48

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %local_key to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %local_key, align 8
  %4 = ptrtoint ptr %token1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %token1, align 8
  %6 = ptrtoint ptr %idsn to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %idsn, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mptcp_token_new_request.__UNIQUE_ID_ddebug622, ptr noundef nonnull @.str.4, ptr noundef %req, i64 noundef %3, i32 noundef %5, i64 noundef %7) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %8 = ptrtoint ptr %token1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %token1, align 8
  %10 = load ptr, ptr @token_hash, align 4
  %11 = load i32, ptr @token_mask, align 4
  %and.i = and i32 %11, %9
  %arrayidx.i = getelementptr %struct.token_bucket, ptr %10, i32 %and.i
  tail call void @_raw_spin_lock_bh(ptr noundef %arrayidx.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i, label %do.end.cleanup_crit_edge, label %lor.lhs.false.i

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %do.end
  %chain_len.i = getelementptr %struct.token_bucket, ptr %10, i32 %and.i, i32 1
  %12 = ptrtoint ptr %chain_len.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %chain_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %13)
  %cmp.i = icmp sgt i32 %13, 3
  br i1 %cmp.i, label %lor.lhs.false.i.cleanup_crit_edge, label %lor.lhs.false1.i

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false1.i:                                 ; preds = %lor.lhs.false.i
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !49
  %req_chain.i.i = getelementptr %struct.token_bucket, ptr %10, i32 %and.i, i32 2
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %land.rhs.i.i.for.cond.i.i_crit_edge, %lor.lhs.false1.i
  %pos.0.in.i.i = phi ptr [ %req_chain.i.i, %lor.lhs.false1.i ], [ %pos.0.i.i, %land.rhs.i.i.for.cond.i.i_crit_edge ]
  %14 = ptrtoint ptr %pos.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %pos.0.i.i = load volatile ptr, ptr %pos.0.in.i.i, align 4
  %15 = ptrtoint ptr %pos.0.i.i to i32
  %and.i.i.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %land.rhs.i.i, label %for.cond.i.i.lor.rhs.i_crit_edge

for.cond.i.i.lor.rhs.i_crit_edge:                 ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.rhs.i

land.rhs.i.i:                                     ; preds = %for.cond.i.i
  %token5.i.i = getelementptr i8, ptr %pos.0.i.i, i32 -28
  %16 = ptrtoint ptr %token5.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %token5.i.i, align 8
  %cmp.i.i = icmp eq i32 %17, %9
  br i1 %cmp.i.i, label %__token_lookup_req.exit.i, label %land.rhs.i.i.for.cond.i.i_crit_edge

land.rhs.i.i.for.cond.i.i_crit_edge:              ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i.i

__token_lookup_req.exit.i:                        ; preds = %land.rhs.i.i
  %add.ptr.le.i.i = getelementptr i8, ptr %pos.0.i.i, i32 -308
  %tobool2.not.i = icmp eq ptr %add.ptr.le.i.i, null
  br i1 %tobool2.not.i, label %__token_lookup_req.exit.i.lor.rhs.i_crit_edge, label %__token_lookup_req.exit.i.cleanup_crit_edge

__token_lookup_req.exit.i.cleanup_crit_edge:      ; preds = %__token_lookup_req.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

__token_lookup_req.exit.i.lor.rhs.i_crit_edge:    ; preds = %__token_lookup_req.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.rhs.i

lor.rhs.i:                                        ; preds = %__token_lookup_req.exit.i.lor.rhs.i_crit_edge, %for.cond.i.i.lor.rhs.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !50
  %msk_chain.i.i = getelementptr %struct.token_bucket, ptr %10, i32 %and.i, i32 3
  br label %for.cond.i13.i

for.cond.i13.i:                                   ; preds = %land.rhs.i15.i.for.cond.i13.i_crit_edge, %lor.rhs.i
  %pos.0.in.i9.i = phi ptr [ %msk_chain.i.i, %lor.rhs.i ], [ %pos.0.i10.i, %land.rhs.i15.i.for.cond.i13.i_crit_edge ]
  %18 = ptrtoint ptr %pos.0.in.i9.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %pos.0.i10.i = load volatile ptr, ptr %pos.0.in.i9.i, align 4
  %19 = ptrtoint ptr %pos.0.i10.i to i32
  %and.i.i11.i = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i11.i)
  %tobool.not.i12.i = icmp eq i32 %and.i.i11.i, 0
  br i1 %tobool.not.i12.i, label %land.rhs.i15.i, label %for.cond.i13.i.if.end13_crit_edge

for.cond.i13.i.if.end13_crit_edge:                ; preds = %for.cond.i13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

land.rhs.i15.i:                                   ; preds = %for.cond.i13.i
  %token6.i.i = getelementptr i8, ptr %pos.0.i10.i, i32 1600
  %20 = ptrtoint ptr %token6.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %token6.i.i, align 4
  %cmp.i14.i = icmp eq i32 %21, %9
  br i1 %cmp.i14.i, label %__token_bucket_busy.exit, label %land.rhs.i15.i.for.cond.i13.i_crit_edge

land.rhs.i15.i.for.cond.i13.i_crit_edge:          ; preds = %land.rhs.i15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i13.i

__token_bucket_busy.exit:                         ; preds = %land.rhs.i15.i
  %add.ptr.le.i16.i = getelementptr i8, ptr %pos.0.i10.i, i32 -84
  %phi.cmp.i.not = icmp eq ptr %add.ptr.le.i16.i, null
  br i1 %phi.cmp.i.not, label %__token_bucket_busy.exit.if.end13_crit_edge, label %__token_bucket_busy.exit.cleanup_crit_edge

__token_bucket_busy.exit.cleanup_crit_edge:       ; preds = %__token_bucket_busy.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

__token_bucket_busy.exit.if.end13_crit_edge:      ; preds = %__token_bucket_busy.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.end13:                                         ; preds = %__token_bucket_busy.exit.if.end13_crit_edge, %for.cond.i13.i.if.end13_crit_edge
  %token_node = getelementptr inbounds %struct.mptcp_subflow_request_sock, ptr %req, i32 0, i32 12
  %22 = ptrtoint ptr %req_chain.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %req_chain.i.i, align 4
  %24 = ptrtoint ptr %token_node to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %23, ptr %token_node, align 4
  %pprev.i = getelementptr inbounds %struct.mptcp_subflow_request_sock, ptr %req, i32 0, i32 12, i32 1
  %25 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %req_chain.i.i, ptr %pprev.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !51
  %26 = ptrtoint ptr %req_chain.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %token_node, ptr %req_chain.i.i, align 4
  %27 = ptrtoint ptr %23 to i32
  %and.i.i = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i31 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i31, label %do.body49.i, label %if.end13.hlist_nulls_add_head_rcu.exit_crit_edge

if.end13.hlist_nulls_add_head_rcu.exit_crit_edge: ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %hlist_nulls_add_head_rcu.exit

do.body49.i:                                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  %pprev51.i = getelementptr inbounds %struct.hlist_nulls_node, ptr %23, i32 0, i32 1
  %28 = ptrtoint ptr %pprev51.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %token_node, ptr %pprev51.i, align 4
  br label %hlist_nulls_add_head_rcu.exit

hlist_nulls_add_head_rcu.exit:                    ; preds = %do.body49.i, %if.end13.hlist_nulls_add_head_rcu.exit_crit_edge
  %29 = ptrtoint ptr %chain_len.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %chain_len.i, align 4
  %inc = add i32 %30, 1
  store i32 %inc, ptr %chain_len.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %hlist_nulls_add_head_rcu.exit, %__token_bucket_busy.exit.cleanup_crit_edge, %__token_lookup_req.exit.i.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %hlist_nulls_add_head_rcu.exit ], [ -16, %do.end.cleanup_crit_edge ], [ -16, %lor.lhs.false.i.cleanup_crit_edge ], [ -16, %__token_lookup_req.exit.i.cleanup_crit_edge ], [ -16, %__token_bucket_busy.exit.cleanup_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %arrayidx.i) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mptcp_crypto_key_sha(i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mptcp_token_new_connect(ptr noundef %sk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %icsk_ulp_data.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 13
  %0 = ptrtoint ptr %icsk_ulp_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %icsk_ulp_data.i, align 8
  %conn = getelementptr inbounds %struct.mptcp_subflow_context, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %conn, align 4
  %local_key = getelementptr inbounds %struct.mptcp_subflow_context, ptr %1, i32 0, i32 1, i32 0, i32 1
  %token = getelementptr inbounds %struct.mptcp_subflow_context, ptr %1, i32 0, i32 1, i32 0, i32 6
  %idsn = getelementptr inbounds %struct.mptcp_subflow_context, ptr %1, i32 0, i32 1, i32 0, i32 3
  br label %again

again:                                            ; preds = %if.then.again_crit_edge, %entry
  %retries.0 = phi i32 [ 4, %entry ], [ %dec, %if.then.again_crit_edge ]
  tail call void @get_random_bytes(ptr noundef %local_key, i32 noundef 8) #7
  %4 = ptrtoint ptr %local_key to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %local_key, align 8
  tail call void @mptcp_crypto_key_sha(i64 noundef %5, ptr noundef %token, ptr noundef %idsn) #7
  %6 = ptrtoint ptr %token to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %token, align 4
  %8 = load ptr, ptr @token_hash, align 4
  %9 = load i32, ptr @token_mask, align 4
  %and.i = and i32 %9, %7
  %arrayidx.i = getelementptr %struct.token_bucket, ptr %8, i32 %and.i
  tail call void @_raw_spin_lock_bh(ptr noundef %arrayidx.i) #7
  %10 = ptrtoint ptr %token to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %token, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i, label %again.if.then_crit_edge, label %lor.lhs.false.i

again.if.then_crit_edge:                          ; preds = %again
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.lhs.false.i:                                  ; preds = %again
  %chain_len.i = getelementptr %struct.token_bucket, ptr %8, i32 %and.i, i32 1
  %12 = ptrtoint ptr %chain_len.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %chain_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %13)
  %cmp.i = icmp sgt i32 %13, 3
  br i1 %cmp.i, label %lor.lhs.false.i.if.then_crit_edge, label %lor.lhs.false1.i

lor.lhs.false.i.if.then_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.lhs.false1.i:                                 ; preds = %lor.lhs.false.i
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !49
  %req_chain.i.i = getelementptr %struct.token_bucket, ptr %8, i32 %and.i, i32 2
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %land.rhs.i.i.for.cond.i.i_crit_edge, %lor.lhs.false1.i
  %pos.0.in.i.i = phi ptr [ %req_chain.i.i, %lor.lhs.false1.i ], [ %pos.0.i.i, %land.rhs.i.i.for.cond.i.i_crit_edge ]
  %14 = ptrtoint ptr %pos.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %pos.0.i.i = load volatile ptr, ptr %pos.0.in.i.i, align 4
  %15 = ptrtoint ptr %pos.0.i.i to i32
  %and.i.i.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %land.rhs.i.i, label %for.cond.i.i.lor.rhs.i_crit_edge

for.cond.i.i.lor.rhs.i_crit_edge:                 ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.rhs.i

land.rhs.i.i:                                     ; preds = %for.cond.i.i
  %token5.i.i = getelementptr i8, ptr %pos.0.i.i, i32 -28
  %16 = ptrtoint ptr %token5.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %token5.i.i, align 8
  %cmp.i.i = icmp eq i32 %17, %11
  br i1 %cmp.i.i, label %__token_lookup_req.exit.i, label %land.rhs.i.i.for.cond.i.i_crit_edge

land.rhs.i.i.for.cond.i.i_crit_edge:              ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i.i

__token_lookup_req.exit.i:                        ; preds = %land.rhs.i.i
  %add.ptr.le.i.i = getelementptr i8, ptr %pos.0.i.i, i32 -308
  %tobool2.not.i = icmp eq ptr %add.ptr.le.i.i, null
  br i1 %tobool2.not.i, label %__token_lookup_req.exit.i.lor.rhs.i_crit_edge, label %__token_lookup_req.exit.i.if.then_crit_edge

__token_lookup_req.exit.i.if.then_crit_edge:      ; preds = %__token_lookup_req.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

__token_lookup_req.exit.i.lor.rhs.i_crit_edge:    ; preds = %__token_lookup_req.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.rhs.i

lor.rhs.i:                                        ; preds = %__token_lookup_req.exit.i.lor.rhs.i_crit_edge, %for.cond.i.i.lor.rhs.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !50
  %msk_chain.i.i = getelementptr %struct.token_bucket, ptr %8, i32 %and.i, i32 3
  br label %for.cond.i13.i

for.cond.i13.i:                                   ; preds = %land.rhs.i15.i.for.cond.i13.i_crit_edge, %lor.rhs.i
  %pos.0.in.i9.i = phi ptr [ %msk_chain.i.i, %lor.rhs.i ], [ %pos.0.i10.i, %land.rhs.i15.i.for.cond.i13.i_crit_edge ]
  %18 = ptrtoint ptr %pos.0.in.i9.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %pos.0.i10.i = load volatile ptr, ptr %pos.0.in.i9.i, align 4
  %19 = ptrtoint ptr %pos.0.i10.i to i32
  %and.i.i11.i = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i11.i)
  %tobool.not.i12.i = icmp eq i32 %and.i.i11.i, 0
  br i1 %tobool.not.i12.i, label %land.rhs.i15.i, label %for.cond.i13.i.do.body_crit_edge

for.cond.i13.i.do.body_crit_edge:                 ; preds = %for.cond.i13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

land.rhs.i15.i:                                   ; preds = %for.cond.i13.i
  %token6.i.i = getelementptr i8, ptr %pos.0.i10.i, i32 1600
  %20 = ptrtoint ptr %token6.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %token6.i.i, align 4
  %cmp.i14.i = icmp eq i32 %21, %11
  br i1 %cmp.i14.i, label %__token_bucket_busy.exit, label %land.rhs.i15.i.for.cond.i13.i_crit_edge

land.rhs.i15.i.for.cond.i13.i_crit_edge:          ; preds = %land.rhs.i15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i13.i

__token_bucket_busy.exit:                         ; preds = %land.rhs.i15.i
  %add.ptr.le.i16.i = getelementptr i8, ptr %pos.0.i10.i, i32 -84
  %phi.cmp.i.not = icmp eq ptr %add.ptr.le.i16.i, null
  br i1 %phi.cmp.i.not, label %__token_bucket_busy.exit.do.body_crit_edge, label %__token_bucket_busy.exit.if.then_crit_edge

__token_bucket_busy.exit.if.then_crit_edge:       ; preds = %__token_bucket_busy.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

__token_bucket_busy.exit.do.body_crit_edge:       ; preds = %__token_bucket_busy.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.then:                                          ; preds = %__token_bucket_busy.exit.if.then_crit_edge, %__token_lookup_req.exit.i.if.then_crit_edge, %lor.lhs.false.i.if.then_crit_edge, %again.if.then_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %arrayidx.i) #7
  %dec = add nsw i32 %retries.0, -1
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %if.then.again_crit_edge

if.then.again_crit_edge:                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %again

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %__token_bucket_busy.exit.do.body_crit_edge, %for.cond.i13.i.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mptcp_token_new_connect.__UNIQUE_ID_ddebug623, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mptcp_token_new_connect, %if.then13)) #7
          to label %do.body22 [label %if.then13], !srcloc !48

if.then13:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %local_key to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %local_key, align 8
  %24 = ptrtoint ptr %token to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %token, align 4
  %26 = ptrtoint ptr %idsn to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %idsn, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mptcp_token_new_connect.__UNIQUE_ID_ddebug623, ptr noundef nonnull @.str.7, ptr noundef %sk, i64 noundef %23, i32 noundef %25, i64 noundef %27) #7
  br label %do.body22

do.body22:                                        ; preds = %if.then13, %do.body
  %28 = ptrtoint ptr %token to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %token, align 4
  %token24 = getelementptr inbounds %struct.mptcp_sock, ptr %3, i32 0, i32 16
  %30 = ptrtoint ptr %token24 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile i32 %29, ptr %token24, align 4
  %31 = getelementptr inbounds %struct.sock_common, ptr %3, i32 0, i32 15
  %32 = ptrtoint ptr %msk_chain.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %msk_chain.i.i, align 4
  %34 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %33, ptr %31, align 4
  %pprev.i.i = getelementptr inbounds %struct.sock_common, ptr %3, i32 0, i32 15, i32 0, i32 1
  %35 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %msk_chain.i.i, ptr %pprev.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !51
  %36 = ptrtoint ptr %msk_chain.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %31, ptr %msk_chain.i.i, align 4
  %37 = ptrtoint ptr %33 to i32
  %and.i.i.i49 = and i32 %37, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i49)
  %tobool.not.i.i50 = icmp eq i32 %and.i.i.i49, 0
  br i1 %tobool.not.i.i50, label %do.body49.i.i, label %do.body22.__sk_nulls_add_node_rcu.exit_crit_edge

do.body22.__sk_nulls_add_node_rcu.exit_crit_edge: ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #9
  br label %__sk_nulls_add_node_rcu.exit

do.body49.i.i:                                    ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #9
  %pprev51.i.i = getelementptr inbounds %struct.hlist_nulls_node, ptr %33, i32 0, i32 1
  %38 = ptrtoint ptr %pprev51.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %31, ptr %pprev51.i.i, align 4
  br label %__sk_nulls_add_node_rcu.exit

__sk_nulls_add_node_rcu.exit:                     ; preds = %do.body49.i.i, %do.body22.__sk_nulls_add_node_rcu.exit_crit_edge
  %39 = ptrtoint ptr %chain_len.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %chain_len.i, align 4
  %inc = add i32 %40, 1
  store i32 %inc, ptr %chain_len.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %arrayidx.i) #7
  br label %cleanup

cleanup:                                          ; preds = %__sk_nulls_add_node_rcu.exit, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %__sk_nulls_add_node_rcu.exit ], [ -16, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mptcp_token_accept(ptr noundef %req, ptr noundef %msk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %token = getelementptr inbounds %struct.mptcp_subflow_request_sock, ptr %req, i32 0, i32 6
  %0 = ptrtoint ptr %token to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %token, align 8
  %2 = load ptr, ptr @token_hash, align 4
  %3 = load i32, ptr @token_mask, align 4
  %and.i = and i32 %3, %1
  %arrayidx.i = getelementptr %struct.token_bucket, ptr %2, i32 %and.i
  tail call void @_raw_spin_lock_bh(ptr noundef %arrayidx.i) #7
  %4 = ptrtoint ptr %token to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %token, align 8
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !49
  %req_chain.i = getelementptr %struct.token_bucket, ptr %2, i32 %and.i, i32 2
  br label %for.cond.i

for.cond.i:                                       ; preds = %land.rhs.i.for.cond.i_crit_edge, %entry
  %pos.0.in.i = phi ptr [ %req_chain.i, %entry ], [ %pos.0.i, %land.rhs.i.for.cond.i_crit_edge ]
  %6 = ptrtoint ptr %pos.0.in.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %pos.0.i = load volatile ptr, ptr %pos.0.in.i, align 4
  %7 = ptrtoint ptr %pos.0.i to i32
  %and.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %land.rhs.i, label %for.cond.i.__token_lookup_req.exit_crit_edge

for.cond.i.__token_lookup_req.exit_crit_edge:     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__token_lookup_req.exit

land.rhs.i:                                       ; preds = %for.cond.i
  %token5.i = getelementptr i8, ptr %pos.0.i, i32 -28
  %8 = ptrtoint ptr %token5.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %token5.i, align 8
  %cmp.i = icmp eq i32 %9, %5
  br i1 %cmp.i, label %cleanup.split.loop.exit15.i, label %land.rhs.i.for.cond.i_crit_edge

land.rhs.i.for.cond.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i

cleanup.split.loop.exit15.i:                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.le.i = getelementptr i8, ptr %pos.0.i, i32 -308
  br label %__token_lookup_req.exit

__token_lookup_req.exit:                          ; preds = %cleanup.split.loop.exit15.i, %for.cond.i.__token_lookup_req.exit_crit_edge
  %retval.0.i = phi ptr [ %add.ptr.le.i, %cleanup.split.loop.exit15.i ], [ null, %for.cond.i.__token_lookup_req.exit_crit_edge ]
  %cmp.not = icmp eq ptr %retval.0.i, %req
  br i1 %cmp.not, label %if.then38.critedge, label %land.rhs

land.rhs:                                         ; preds = %__token_lookup_req.exit
  %.b49 = load i1, ptr @mptcp_token_accept.__already_done, align 1
  br i1 %.b49, label %land.rhs.if.end39_crit_edge, label %if.then, !prof !52

land.rhs.if.end39_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @mptcp_token_accept.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 200, i32 noundef 9, ptr noundef null) #7
  br label %if.end39

if.then38.critedge:                               ; preds = %__token_lookup_req.exit
  %pprev.i.i = getelementptr inbounds %struct.mptcp_subflow_request_sock, ptr %req, i32 0, i32 12, i32 1
  %10 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i.not.i, label %if.then38.critedge.if.end39_crit_edge, label %if.then.i

if.then38.critedge.if.end39_crit_edge:            ; preds = %if.then38.critedge
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39

if.then.i:                                        ; preds = %if.then38.critedge
  %token_node = getelementptr inbounds %struct.mptcp_subflow_request_sock, ptr %req, i32 0, i32 12
  %12 = ptrtoint ptr %token_node to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %token_node, align 4
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %13, ptr %11, align 4
  %15 = ptrtoint ptr %13 to i32
  %and.i.i.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i7.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i7.i, label %do.body13.i.i, label %if.then.i.__hlist_nulls_del.exit.i_crit_edge

if.then.i.__hlist_nulls_del.exit.i_crit_edge:     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__hlist_nulls_del.exit.i

do.body13.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %pprev14.i.i = getelementptr inbounds %struct.hlist_nulls_node, ptr %13, i32 0, i32 1
  %16 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %11, ptr %pprev14.i.i, align 4
  br label %__hlist_nulls_del.exit.i

__hlist_nulls_del.exit.i:                         ; preds = %do.body13.i.i, %if.then.i.__hlist_nulls_del.exit.i_crit_edge
  %17 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr null, ptr %pprev.i.i, align 4
  br label %if.end39

if.end39:                                         ; preds = %__hlist_nulls_del.exit.i, %if.then38.critedge.if.end39_crit_edge, %if.then, %land.rhs.if.end39_crit_edge
  %msk_chain = getelementptr %struct.token_bucket, ptr %2, i32 %and.i, i32 3
  %18 = getelementptr inbounds %struct.sock_common, ptr %msk, i32 0, i32 15
  %19 = ptrtoint ptr %msk_chain to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %msk_chain, align 4
  %21 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %20, ptr %18, align 4
  %pprev.i.i51 = getelementptr inbounds %struct.sock_common, ptr %msk, i32 0, i32 15, i32 0, i32 1
  %22 = ptrtoint ptr %pprev.i.i51 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %msk_chain, ptr %pprev.i.i51, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !51
  %23 = ptrtoint ptr %msk_chain to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %18, ptr %msk_chain, align 4
  %24 = ptrtoint ptr %20 to i32
  %and.i.i.i52 = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i52)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i52, 0
  br i1 %tobool.not.i.i, label %do.body49.i.i, label %if.end39.__sk_nulls_add_node_rcu.exit_crit_edge

if.end39.__sk_nulls_add_node_rcu.exit_crit_edge:  ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %__sk_nulls_add_node_rcu.exit

do.body49.i.i:                                    ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  %pprev51.i.i = getelementptr inbounds %struct.hlist_nulls_node, ptr %20, i32 0, i32 1
  %25 = ptrtoint ptr %pprev51.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %18, ptr %pprev51.i.i, align 4
  br label %__sk_nulls_add_node_rcu.exit

__sk_nulls_add_node_rcu.exit:                     ; preds = %do.body49.i.i, %if.end39.__sk_nulls_add_node_rcu.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %arrayidx.i) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @mptcp_token_exists(i32 noundef %token) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !38) #7
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !53
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 696, ptr noundef nonnull @.str.11) #7
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %4 = load ptr, ptr @token_hash, align 4
  %5 = load i32, ptr @token_mask, align 4
  %and.i = and i32 %5, %token
  %msk_chain = getelementptr %struct.token_bucket, ptr %4, i32 %and.i, i32 3
  br label %again

again:                                            ; preds = %for.end.again_crit_edge, %rcu_read_lock.exit
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !54
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %again
  %pos.0.in = phi ptr [ %msk_chain, %again ], [ %pos.0, %for.body.for.cond_crit_edge ]
  %6 = ptrtoint ptr %pos.0.in to i32
  call void @__asan_load4_noabort(i32 %6)
  %pos.0 = load volatile ptr, ptr %pos.0.in, align 4
  %7 = ptrtoint ptr %pos.0 to i32
  %and.i29 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i29)
  %tobool.not = icmp eq i32 %and.i29, 0
  br i1 %tobool.not, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %token11 = getelementptr i8, ptr %pos.0, i32 1600
  %8 = ptrtoint ptr %token11 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %token11, align 4
  %cmp = icmp eq i32 %9, %token
  br i1 %cmp, label %found, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %10 = ptrtoint ptr %pos.0 to i32
  %shr.i = lshr i32 %10, 1
  %11 = load i32, ptr @token_mask, align 4
  %and = and i32 %11, %token
  %cmp18.not = icmp eq i32 %shr.i, %and
  br i1 %cmp18.not, label %if.end20, label %for.end.again_crit_edge

for.end.again_crit_edge:                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %again

if.end20:                                         ; preds = %for.end
  %call.i30 = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i30, label %if.end20.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i33

if.end20.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true.i33:                                ; preds = %if.end20
  %call1.i31 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i31)
  %tobool.not.i32 = icmp eq i32 %call1.i31, 0
  br i1 %tobool.not.i32, label %land.lhs.true.i33.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i35

land.lhs.true.i33.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i33
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true2.i35:                               ; preds = %land.lhs.true.i33
  %.b4.i34 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i34, label %land.lhs.true2.i35.rcu_read_unlock.exit_crit_edge, label %if.then.i36

land.lhs.true2.i35.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i35
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

if.then.i36:                                      ; preds = %land.lhs.true2.i35
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 724, ptr noundef nonnull @.str.12) #7
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i36, %land.lhs.true2.i35.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i33.rcu_read_unlock.exit_crit_edge, %if.end20.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !55
  br label %cleanup

found:                                            ; preds = %for.body
  %call.i39 = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i39, label %found.rcu_read_unlock.exit49_crit_edge, label %land.lhs.true.i42

found.rcu_read_unlock.exit49_crit_edge:           ; preds = %found
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit49

land.lhs.true.i42:                                ; preds = %found
  %call1.i40 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i40)
  %tobool.not.i41 = icmp eq i32 %call1.i40, 0
  br i1 %tobool.not.i41, label %land.lhs.true.i42.rcu_read_unlock.exit49_crit_edge, label %land.lhs.true2.i44

land.lhs.true.i42.rcu_read_unlock.exit49_crit_edge: ; preds = %land.lhs.true.i42
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit49

land.lhs.true2.i44:                               ; preds = %land.lhs.true.i42
  %.b4.i43 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i43, label %land.lhs.true2.i44.rcu_read_unlock.exit49_crit_edge, label %if.then.i45

land.lhs.true2.i44.rcu_read_unlock.exit49_crit_edge: ; preds = %land.lhs.true2.i44
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit49

if.then.i45:                                      ; preds = %land.lhs.true2.i44
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 724, ptr noundef nonnull @.str.12) #7
  br label %rcu_read_unlock.exit49

rcu_read_unlock.exit49:                           ; preds = %if.then.i45, %land.lhs.true2.i44.rcu_read_unlock.exit49_crit_edge, %land.lhs.true.i42.rcu_read_unlock.exit49_crit_edge, %found.rcu_read_unlock.exit49_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !55
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit49, %rcu_read_unlock.exit
  %12 = tail call i32 @llvm.read_register.i32(metadata !38) #7
  %and.i.i.i.i.i46 = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i.i46 to ptr
  %preempt_count.i.i.i.i47 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %preempt_count.i.i.i.i47 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %preempt_count.i.i.i.i47, align 4
  %sub.i.i.i48 = add i32 %15, -1
  store volatile i32 %sub.i.i.i48, ptr %preempt_count.i.i.i.i47, align 4
  tail call void @rcu_read_unlock_strict() #7
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #7
  ret i1 %tobool.not
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mptcp_token_get_sock(ptr noundef readnone %net, i32 noundef %token) #0 align 64 {
entry:
  %old.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !38) #7
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !53
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 696, ptr noundef nonnull @.str.11) #7
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %4 = load ptr, ptr @token_hash, align 4
  %5 = load i32, ptr @token_mask, align 4
  %and.i = and i32 %5, %token
  %msk_chain = getelementptr %struct.token_bucket, ptr %4, i32 %and.i, i32 3
  br label %again

again:                                            ; preds = %again.backedge, %rcu_read_lock.exit
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !56
  %6 = ptrtoint ptr %msk_chain to i32
  call void @__asan_load4_noabort(i32 %6)
  %pos.074 = load volatile ptr, ptr %msk_chain, align 4
  %7 = ptrtoint ptr %pos.074 to i32
  %and.i5275 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i5275)
  %tobool.not76 = icmp eq i32 %and.i5275, 0
  br i1 %tobool.not76, label %again.land.rhs_crit_edge, label %again.for.end_crit_edge

again.for.end_crit_edge:                          ; preds = %again
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

again.land.rhs_crit_edge:                         ; preds = %again
  br label %land.rhs

land.rhs:                                         ; preds = %for.inc.land.rhs_crit_edge, %again.land.rhs_crit_edge
  %pos.077 = phi ptr [ %pos.0, %for.inc.land.rhs_crit_edge ], [ %pos.074, %again.land.rhs_crit_edge ]
  %token11 = getelementptr i8, ptr %pos.077, i32 1600
  %8 = ptrtoint ptr %token11 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %token11, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %token)
  %cmp.not = icmp eq i32 %9, %token
  br i1 %cmp.not, label %lor.lhs.false, label %land.rhs.for.inc_crit_edge

land.rhs.for.inc_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

lor.lhs.false:                                    ; preds = %land.rhs
  %skc_net.i = getelementptr i8, ptr %pos.077, i32 -48
  %10 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %skc_net.i, align 4
  %cmp.i.not = icmp eq ptr %11, %net
  br i1 %cmp.i.not, label %if.end, label %lor.lhs.false.for.inc_crit_edge

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end:                                           ; preds = %lor.lhs.false
  %token11.le = getelementptr i8, ptr %pos.077, i32 1600
  %skc_net.i.le = getelementptr i8, ptr %pos.077, i32 -48
  %add.ptr.le = getelementptr i8, ptr %pos.077, i32 -84
  %skc_refcnt = getelementptr i8, ptr %pos.077, i32 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i) #7
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %skc_refcnt, i32 noundef 4) #7
  %12 = ptrtoint ptr %skc_refcnt to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %skc_refcnt, align 4
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, %if.end
  %14 = phi i32 [ %13, %if.end ], [ %asmresult3.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge ]
  %15 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %old.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i.i.i = icmp eq i32 %14, 0
  br i1 %tobool.not.i.i.i, label %do.body.i.i.i.if.end4.i.i.i_crit_edge, label %do.cond.i.i.i

do.body.i.i.i.if.end4.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i.i.i

do.cond.i.i.i:                                    ; preds = %do.body.i.i.i
  %add.i.i.i53 = add i32 %14, 1
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt, i32 noundef 4) #7
  %call.i3.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i, i32 noundef 4) #7
  %16 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %old.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %skc_refcnt, i32 1, i32 3, i32 1) #7
  br label %do.body.i.i.i.i.i.i

do.body.i.i.i.i.i.i:                              ; preds = %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i
  %18 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt, ptr %skc_refcnt, i32 %17, i32 %add.i.i.i53, ptr elementtype(i32) %skc_refcnt) #7, !srcloc !57
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %18, 0
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i, label %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i:       ; preds = %do.body.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i = extractvalue { i32, i32 } %18, 1
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i, %17
  br i1 %cmp.not.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, !prof !52

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i.i.i

if.end4.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, %do.body.i.i.i.if.end4.i.i.i_crit_edge
  %19 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %old.i.i.i, align 4
  %add5.i.i.i = add i32 %20, 1
  %21 = or i32 %add5.i.i.i, %20
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %21)
  %.not.i.i.i = icmp sgt i32 %21, -1
  br i1 %.not.i.i.i, label %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge, label %if.then10.i.i.i, !prof !52

if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge: ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %refcount_inc_not_zero.exit

if.then10.i.i.i:                                  ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @refcount_warn_saturate(ptr noundef %skc_refcnt, i32 noundef 0) #7
  %22 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %.pr = load i32, ptr %old.i.i.i, align 4
  br label %refcount_inc_not_zero.exit

refcount_inc_not_zero.exit:                       ; preds = %if.then10.i.i.i, %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge
  %23 = phi i32 [ %20, %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge ], [ %.pr, %if.then10.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool12.i.i.i.not = icmp eq i32 %23, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i) #7
  br i1 %tobool12.i.i.i.not, label %refcount_inc_not_zero.exit.found_crit_edge, label %do.end20

refcount_inc_not_zero.exit.found_crit_edge:       ; preds = %refcount_inc_not_zero.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %found

do.end20:                                         ; preds = %refcount_inc_not_zero.exit
  %24 = ptrtoint ptr %token11.le to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %token11.le, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %token)
  %cmp23.not = icmp eq i32 %25, %token
  br i1 %cmp23.not, label %lor.lhs.false24, label %do.end20.if.then28_crit_edge

do.end20.if.then28_crit_edge:                     ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then28

lor.lhs.false24:                                  ; preds = %do.end20
  %26 = ptrtoint ptr %skc_net.i.le to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %skc_net.i.le, align 4
  %cmp.i55.not = icmp eq ptr %27, %net
  br i1 %cmp.i55.not, label %lor.lhs.false24.found_crit_edge, label %lor.lhs.false24.if.then28_crit_edge

lor.lhs.false24.if.then28_crit_edge:              ; preds = %lor.lhs.false24
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then28

lor.lhs.false24.found_crit_edge:                  ; preds = %lor.lhs.false24
  call void @__sanitizer_cov_trace_pc() #9
  br label %found

if.then28:                                        ; preds = %lor.lhs.false24.if.then28_crit_edge, %do.end20.if.then28_crit_edge
  %call.i.i.i.i.i.i57 = call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt, i32 noundef 4) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !58
  call void @llvm.prefetch.p0(ptr %skc_refcnt, i32 1, i32 3, i32 1) #7
  %28 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt, ptr %skc_refcnt, i32 1, ptr elementtype(i32) %skc_refcnt) #7, !srcloc !59
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %28, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i58, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.again.backedge_crit_edge, label %if.then10.i.i.i.i, !prof !52

if.end5.i.i.i.i.again.backedge_crit_edge:         ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %again.backedge

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @refcount_warn_saturate(ptr noundef %skc_refcnt, i32 noundef 3) #7
  br label %again.backedge

if.then.i58:                                      ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !60
  call void @sk_free(ptr noundef %add.ptr.le) #7
  br label %again.backedge

again.backedge:                                   ; preds = %for.end.again.backedge_crit_edge, %if.then.i58, %if.then10.i.i.i.i, %if.end5.i.i.i.i.again.backedge_crit_edge
  br label %again

for.inc:                                          ; preds = %lor.lhs.false.for.inc_crit_edge, %land.rhs.for.inc_crit_edge
  %29 = ptrtoint ptr %pos.077 to i32
  call void @__asan_load4_noabort(i32 %29)
  %pos.0 = load volatile ptr, ptr %pos.077, align 4
  %30 = ptrtoint ptr %pos.0 to i32
  %and.i52 = and i32 %30, 1
  %tobool.not = icmp eq i32 %and.i52, 0
  br i1 %tobool.not, label %for.inc.land.rhs_crit_edge, label %for.end.loopexit

for.inc.land.rhs_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs

for.end.loopexit:                                 ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  %31 = ptrtoint ptr %pos.0 to i32
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %again.for.end_crit_edge
  %.pre-phi = phi i32 [ %7, %again.for.end_crit_edge ], [ %31, %for.end.loopexit ]
  %shr.i = lshr i32 %.pre-phi, 1
  %32 = load i32, ptr @token_mask, align 4
  %and = and i32 %32, %token
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i, i32 %and)
  %cmp36.not = icmp eq i32 %shr.i, %and
  br i1 %cmp36.not, label %for.end.found_crit_edge, label %for.end.again.backedge_crit_edge

for.end.again.backedge_crit_edge:                 ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %again.backedge

for.end.found_crit_edge:                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %found

found:                                            ; preds = %for.end.found_crit_edge, %lor.lhs.false24.found_crit_edge, %refcount_inc_not_zero.exit.found_crit_edge
  %msk.0 = phi ptr [ %add.ptr.le, %lor.lhs.false24.found_crit_edge ], [ null, %for.end.found_crit_edge ], [ null, %refcount_inc_not_zero.exit.found_crit_edge ]
  %call.i59 = call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i59, label %found.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i62

found.rcu_read_unlock.exit_crit_edge:             ; preds = %found
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true.i62:                                ; preds = %found
  %call1.i60 = call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i60)
  %tobool.not.i61 = icmp eq i32 %call1.i60, 0
  br i1 %tobool.not.i61, label %land.lhs.true.i62.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i64

land.lhs.true.i62.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i62
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true2.i64:                               ; preds = %land.lhs.true.i62
  %.b4.i63 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i63, label %land.lhs.true2.i64.rcu_read_unlock.exit_crit_edge, label %if.then.i65

land.lhs.true2.i64.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i64
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

if.then.i65:                                      ; preds = %land.lhs.true2.i64
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 724, ptr noundef nonnull @.str.12) #7
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i65, %land.lhs.true2.i64.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i62.rcu_read_unlock.exit_crit_edge, %found.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !55
  %33 = call i32 @llvm.read_register.i32(metadata !38) #7
  %and.i.i.i.i.i66 = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i.i66 to ptr
  %preempt_count.i.i.i.i67 = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i.i67 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i.i67, align 4
  %sub.i.i.i = add i32 %36, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i67, align 4
  call void @rcu_read_unlock_strict() #7
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #7
  ret ptr %msk.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mptcp_token_iter_next(ptr noundef readnone %net, ptr nocapture noundef %s_slot, ptr nocapture noundef %s_num) #0 align 64 {
entry:
  %old.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %s_slot to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %s_slot, align 4
  %2 = load i32, ptr @token_mask, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %2)
  %cmp.not96 = icmp ugt i32 %1, %2
  br i1 %cmp.not96, label %entry.cleanup36_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup36_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup36

for.body:                                         ; preds = %for.inc33.for.body_crit_edge, %entry.for.body_crit_edge
  %slot.097 = phi i32 [ %inc34, %for.inc33.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %3 = load ptr, ptr @token_hash, align 4
  %msk_chain = getelementptr %struct.token_bucket, ptr %3, i32 %slot.097, i32 3
  %4 = ptrtoint ptr %msk_chain to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %msk_chain, align 4
  %6 = ptrtoint ptr %5 to i32
  %and.i.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not, label %if.end, label %for.body.for.inc33_crit_edge

for.body.for.inc33_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc33

if.end:                                           ; preds = %for.body
  %7 = call i32 @llvm.read_register.i32(metadata !38) #7
  %and.i.i.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %10, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !53
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #7
  %call.i = call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #7
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
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 696, ptr noundef nonnull @.str.11) #7
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !61
  %11 = ptrtoint ptr %msk_chain to i32
  call void @__asan_load4_noabort(i32 %11)
  %pos.091 = load volatile ptr, ptr %msk_chain, align 4
  %12 = ptrtoint ptr %pos.091 to i32
  %and.i92 = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i92)
  %tobool5.not93 = icmp eq i32 %and.i92, 0
  br i1 %tobool5.not93, label %rcu_read_lock.exit.land.rhs_crit_edge, label %rcu_read_lock.exit.for.end_crit_edge

rcu_read_lock.exit.for.end_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

rcu_read_lock.exit.land.rhs_crit_edge:            ; preds = %rcu_read_lock.exit
  br label %land.rhs

land.rhs:                                         ; preds = %for.inc.land.rhs_crit_edge, %rcu_read_lock.exit.land.rhs_crit_edge
  %pos.095 = phi ptr [ %pos.0, %for.inc.land.rhs_crit_edge ], [ %pos.091, %rcu_read_lock.exit.land.rhs_crit_edge ]
  %num.194 = phi i32 [ %inc, %for.inc.land.rhs_crit_edge ], [ 0, %rcu_read_lock.exit.land.rhs_crit_edge ]
  %add.ptr = getelementptr i8, ptr %pos.095, i32 -84
  %inc = add i32 %num.194, 1
  %skc_net.i = getelementptr i8, ptr %pos.095, i32 -48
  %13 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %skc_net.i, align 4
  %cmp.i.not = icmp eq ptr %14, %net
  br i1 %cmp.i.not, label %if.end14, label %land.rhs.for.inc_crit_edge

land.rhs.for.inc_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end14:                                         ; preds = %land.rhs
  %15 = ptrtoint ptr %s_num to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %s_num, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %16)
  %cmp15.not = icmp sgt i32 %inc, %16
  br i1 %cmp15.not, label %if.end17, label %if.end14.for.inc_crit_edge

if.end14.for.inc_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end17:                                         ; preds = %if.end14
  %skc_refcnt = getelementptr i8, ptr %pos.095, i32 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i) #7
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %skc_refcnt, i32 noundef 4) #7
  %17 = ptrtoint ptr %skc_refcnt to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %skc_refcnt, align 4
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, %if.end17
  %19 = phi i32 [ %18, %if.end17 ], [ %asmresult3.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge ]
  %20 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %old.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i.i.i = icmp eq i32 %19, 0
  br i1 %tobool.not.i.i.i, label %do.body.i.i.i.if.end4.i.i.i_crit_edge, label %do.cond.i.i.i

do.body.i.i.i.if.end4.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i.i.i

do.cond.i.i.i:                                    ; preds = %do.body.i.i.i
  %add.i.i.i56 = add i32 %19, 1
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt, i32 noundef 4) #7
  %call.i3.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i, i32 noundef 4) #7
  %21 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %old.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %skc_refcnt, i32 1, i32 3, i32 1) #7
  br label %do.body.i.i.i.i.i.i

do.body.i.i.i.i.i.i:                              ; preds = %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i
  %23 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt, ptr %skc_refcnt, i32 %22, i32 %add.i.i.i56, ptr elementtype(i32) %skc_refcnt) #7, !srcloc !57
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %23, 0
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i, label %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i:       ; preds = %do.body.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i = extractvalue { i32, i32 } %23, 1
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i, %22
  br i1 %cmp.not.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, !prof !52

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i.i.i

if.end4.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, %do.body.i.i.i.if.end4.i.i.i_crit_edge
  %24 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %old.i.i.i, align 4
  %add5.i.i.i = add i32 %25, 1
  %26 = or i32 %add5.i.i.i, %25
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %26)
  %.not.i.i.i = icmp sgt i32 %26, -1
  br i1 %.not.i.i.i, label %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge, label %if.then10.i.i.i, !prof !52

if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge: ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %refcount_inc_not_zero.exit

if.then10.i.i.i:                                  ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @refcount_warn_saturate(ptr noundef %skc_refcnt, i32 noundef 0) #7
  %27 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %.pr = load i32, ptr %old.i.i.i, align 4
  br label %refcount_inc_not_zero.exit

refcount_inc_not_zero.exit:                       ; preds = %if.then10.i.i.i, %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge
  %28 = phi i32 [ %25, %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge ], [ %.pr, %if.then10.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool12.i.i.i.not = icmp eq i32 %28, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i) #7
  br i1 %tobool12.i.i.i.not, label %refcount_inc_not_zero.exit.for.inc_crit_edge, label %if.end20

refcount_inc_not_zero.exit.for.inc_crit_edge:     ; preds = %refcount_inc_not_zero.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end20:                                         ; preds = %refcount_inc_not_zero.exit
  %29 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %skc_net.i, align 4
  %cmp.i58.not = icmp eq ptr %30, %net
  br i1 %cmp.i58.not, label %if.end25, label %if.then24

if.then24:                                        ; preds = %if.end20
  %call.i.i.i.i.i.i60 = call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt, i32 noundef 4) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !58
  call void @llvm.prefetch.p0(ptr %skc_refcnt, i32 1, i32 3, i32 1) #7
  %31 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt, ptr %skc_refcnt, i32 1, ptr elementtype(i32) %skc_refcnt) #7, !srcloc !59
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %31, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i61, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.for.inc_crit_edge, label %if.then10.i.i.i.i, !prof !52

if.end5.i.i.i.i.for.inc_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @refcount_warn_saturate(ptr noundef %skc_refcnt, i32 noundef 3) #7
  br label %for.inc

if.then.i61:                                      ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !60
  call void @sk_free(ptr noundef %add.ptr) #7
  br label %for.inc

if.end25:                                         ; preds = %if.end20
  %call.i62 = call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i62, label %if.end25.cleanup_crit_edge, label %land.lhs.true.i65

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true.i65:                                ; preds = %if.end25
  %call1.i63 = call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i63)
  %tobool.not.i64 = icmp eq i32 %call1.i63, 0
  br i1 %tobool.not.i64, label %land.lhs.true.i65.cleanup_crit_edge, label %land.lhs.true2.i67

land.lhs.true.i65.cleanup_crit_edge:              ; preds = %land.lhs.true.i65
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true2.i67:                               ; preds = %land.lhs.true.i65
  %.b4.i66 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i66, label %land.lhs.true2.i67.cleanup_crit_edge, label %if.then.i68

land.lhs.true2.i67.cleanup_crit_edge:             ; preds = %land.lhs.true2.i67
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i68:                                      ; preds = %land.lhs.true2.i67
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 724, ptr noundef nonnull @.str.12) #7
  br label %cleanup

for.inc:                                          ; preds = %if.then.i61, %if.then10.i.i.i.i, %if.end5.i.i.i.i.for.inc_crit_edge, %refcount_inc_not_zero.exit.for.inc_crit_edge, %if.end14.for.inc_crit_edge, %land.rhs.for.inc_crit_edge
  %32 = ptrtoint ptr %pos.095 to i32
  call void @__asan_load4_noabort(i32 %32)
  %pos.0 = load volatile ptr, ptr %pos.095, align 4
  %33 = ptrtoint ptr %pos.0 to i32
  %and.i = and i32 %33, 1
  %tobool5.not = icmp eq i32 %and.i, 0
  br i1 %tobool5.not, label %for.inc.land.rhs_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.land.rhs_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %rcu_read_lock.exit.for.end_crit_edge
  %num.1.lcssa = phi i32 [ 0, %rcu_read_lock.exit.for.end_crit_edge ], [ %inc, %for.inc.for.end_crit_edge ]
  %call.i71 = call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i71, label %for.end.rcu_read_unlock.exit81_crit_edge, label %land.lhs.true.i74

for.end.rcu_read_unlock.exit81_crit_edge:         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit81

land.lhs.true.i74:                                ; preds = %for.end
  %call1.i72 = call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i72)
  %tobool.not.i73 = icmp eq i32 %call1.i72, 0
  br i1 %tobool.not.i73, label %land.lhs.true.i74.rcu_read_unlock.exit81_crit_edge, label %land.lhs.true2.i76

land.lhs.true.i74.rcu_read_unlock.exit81_crit_edge: ; preds = %land.lhs.true.i74
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit81

land.lhs.true2.i76:                               ; preds = %land.lhs.true.i74
  %.b4.i75 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i75, label %land.lhs.true2.i76.rcu_read_unlock.exit81_crit_edge, label %if.then.i77

land.lhs.true2.i76.rcu_read_unlock.exit81_crit_edge: ; preds = %land.lhs.true2.i76
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit81

if.then.i77:                                      ; preds = %land.lhs.true2.i76
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 724, ptr noundef nonnull @.str.12) #7
  br label %rcu_read_unlock.exit81

rcu_read_unlock.exit81:                           ; preds = %if.then.i77, %land.lhs.true2.i76.rcu_read_unlock.exit81_crit_edge, %land.lhs.true.i74.rcu_read_unlock.exit81_crit_edge, %for.end.rcu_read_unlock.exit81_crit_edge
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !55
  %34 = call i32 @llvm.read_register.i32(metadata !38) #7
  %and.i.i.i.i.i78 = and i32 %34, -16384
  %35 = inttoptr i32 %and.i.i.i.i.i78 to ptr
  %preempt_count.i.i.i.i79 = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %preempt_count.i.i.i.i79 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %preempt_count.i.i.i.i79, align 4
  %sub.i.i.i80 = add i32 %37, -1
  store volatile i32 %sub.i.i.i80, ptr %preempt_count.i.i.i.i79, align 4
  call void @rcu_read_unlock_strict() #7
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #7
  br label %for.inc33

cleanup:                                          ; preds = %if.then.i68, %land.lhs.true2.i67.cleanup_crit_edge, %land.lhs.true.i65.cleanup_crit_edge, %if.end25.cleanup_crit_edge
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !55
  %38 = call i32 @llvm.read_register.i32(metadata !38) #7
  %and.i.i.i.i.i69 = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i.i.i69 to ptr
  %preempt_count.i.i.i.i70 = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %preempt_count.i.i.i.i70 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %preempt_count.i.i.i.i70, align 4
  %sub.i.i.i = add i32 %41, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i70, align 4
  call void @rcu_read_unlock_strict() #7
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #7
  br label %cleanup36

for.inc33:                                        ; preds = %rcu_read_unlock.exit81, %for.body.for.inc33_crit_edge
  %num.2.ph = phi i32 [ 0, %for.body.for.inc33_crit_edge ], [ %num.1.lcssa, %rcu_read_unlock.exit81 ]
  %42 = ptrtoint ptr %s_num to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %s_num, align 4
  %inc34 = add i32 %slot.097, 1
  %43 = load i32, ptr @token_mask, align 4
  %cmp.not = icmp ugt i32 %inc34, %43
  br i1 %cmp.not, label %for.inc33.cleanup36_crit_edge, label %for.inc33.for.body_crit_edge

for.inc33.for.body_crit_edge:                     ; preds = %for.inc33
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc33.cleanup36_crit_edge:                    ; preds = %for.inc33
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup36

cleanup36:                                        ; preds = %for.inc33.cleanup36_crit_edge, %cleanup, %entry.cleanup36_crit_edge
  %slot.089 = phi i32 [ %slot.097, %cleanup ], [ %1, %entry.cleanup36_crit_edge ], [ %inc34, %for.inc33.cleanup36_crit_edge ]
  %num.3 = phi i32 [ %inc, %cleanup ], [ 0, %entry.cleanup36_crit_edge ], [ %num.2.ph, %for.inc33.cleanup36_crit_edge ]
  %ret.2 = phi ptr [ %add.ptr, %cleanup ], [ null, %entry.cleanup36_crit_edge ], [ null, %for.inc33.cleanup36_crit_edge ]
  %44 = ptrtoint ptr %s_slot to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %slot.089, ptr %s_slot, align 4
  %45 = ptrtoint ptr %s_num to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %num.3, ptr %s_num, align 4
  ret ptr %ret.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mptcp_token_destroy_request(ptr noundef readonly %req) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pprev.i = getelementptr inbounds %struct.mptcp_subflow_request_sock, ptr %req, i32 0, i32 12, i32 1
  %0 = ptrtoint ptr %pprev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pprev.i, align 4
  %tobool.not.i.not = icmp eq ptr %1, null
  br i1 %tobool.not.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %token = getelementptr inbounds %struct.mptcp_subflow_request_sock, ptr %req, i32 0, i32 6
  %2 = ptrtoint ptr %token to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %token, align 8
  %4 = load ptr, ptr @token_hash, align 4
  %5 = load i32, ptr @token_mask, align 4
  %and.i = and i32 %5, %3
  %arrayidx.i = getelementptr %struct.token_bucket, ptr %4, i32 %and.i
  tail call void @_raw_spin_lock_bh(ptr noundef %arrayidx.i) #7
  %6 = ptrtoint ptr %token to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %token, align 8
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !49
  %req_chain.i = getelementptr %struct.token_bucket, ptr %4, i32 %and.i, i32 2
  br label %for.cond.i

for.cond.i:                                       ; preds = %land.rhs.i.for.cond.i_crit_edge, %if.end
  %pos.0.in.i = phi ptr [ %req_chain.i, %if.end ], [ %pos.0.i, %land.rhs.i.for.cond.i_crit_edge ]
  %8 = ptrtoint ptr %pos.0.in.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %pos.0.i = load volatile ptr, ptr %pos.0.in.i, align 4
  %9 = ptrtoint ptr %pos.0.i to i32
  %and.i.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i60 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i60, label %land.rhs.i, label %for.cond.i.__token_lookup_req.exit_crit_edge

for.cond.i.__token_lookup_req.exit_crit_edge:     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__token_lookup_req.exit

land.rhs.i:                                       ; preds = %for.cond.i
  %token5.i = getelementptr i8, ptr %pos.0.i, i32 -28
  %10 = ptrtoint ptr %token5.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %token5.i, align 8
  %cmp.i = icmp eq i32 %11, %7
  br i1 %cmp.i, label %cleanup.split.loop.exit15.i, label %land.rhs.i.for.cond.i_crit_edge

land.rhs.i.for.cond.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i

cleanup.split.loop.exit15.i:                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.le.i = getelementptr i8, ptr %pos.0.i, i32 -308
  br label %__token_lookup_req.exit

__token_lookup_req.exit:                          ; preds = %cleanup.split.loop.exit15.i, %for.cond.i.__token_lookup_req.exit_crit_edge
  %retval.0.i = phi ptr [ %add.ptr.le.i, %cleanup.split.loop.exit15.i ], [ null, %for.cond.i.__token_lookup_req.exit_crit_edge ]
  %cmp.not = icmp eq ptr %retval.0.i, %req
  br i1 %cmp.not, label %if.then43.critedge, label %land.rhs

land.rhs:                                         ; preds = %__token_lookup_req.exit
  %.b58 = load i1, ptr @mptcp_token_destroy_request.__already_done, align 1
  br i1 %.b58, label %land.rhs.if.end45_crit_edge, label %if.then12, !prof !52

land.rhs.if.end45_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45

if.then12:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @mptcp_token_destroy_request.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 358, i32 noundef 9, ptr noundef null) #7
  br label %if.end45

if.then43.critedge:                               ; preds = %__token_lookup_req.exit
  %12 = ptrtoint ptr %pprev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pprev.i, align 4
  %tobool.not.i.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i.not.i, label %if.then43.critedge.hlist_nulls_del_init_rcu.exit_crit_edge, label %if.then.i

if.then43.critedge.hlist_nulls_del_init_rcu.exit_crit_edge: ; preds = %if.then43.critedge
  call void @__sanitizer_cov_trace_pc() #9
  br label %hlist_nulls_del_init_rcu.exit

if.then.i:                                        ; preds = %if.then43.critedge
  %token_node44 = getelementptr inbounds %struct.mptcp_subflow_request_sock, ptr %req, i32 0, i32 12
  %14 = ptrtoint ptr %token_node44 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %token_node44, align 4
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %15, ptr %13, align 4
  %17 = ptrtoint ptr %15 to i32
  %and.i.i.i = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i7.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i7.i, label %do.body13.i.i, label %if.then.i.__hlist_nulls_del.exit.i_crit_edge

if.then.i.__hlist_nulls_del.exit.i_crit_edge:     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__hlist_nulls_del.exit.i

do.body13.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %pprev14.i.i = getelementptr inbounds %struct.hlist_nulls_node, ptr %15, i32 0, i32 1
  %18 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %13, ptr %pprev14.i.i, align 4
  br label %__hlist_nulls_del.exit.i

__hlist_nulls_del.exit.i:                         ; preds = %do.body13.i.i, %if.then.i.__hlist_nulls_del.exit.i_crit_edge
  %19 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr null, ptr %pprev.i, align 4
  br label %hlist_nulls_del_init_rcu.exit

hlist_nulls_del_init_rcu.exit:                    ; preds = %__hlist_nulls_del.exit.i, %if.then43.critedge.hlist_nulls_del_init_rcu.exit_crit_edge
  %chain_len = getelementptr %struct.token_bucket, ptr %4, i32 %and.i, i32 1
  %20 = ptrtoint ptr %chain_len to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %chain_len, align 4
  %dec = add i32 %21, -1
  store i32 %dec, ptr %chain_len, align 4
  br label %if.end45

if.end45:                                         ; preds = %hlist_nulls_del_init_rcu.exit, %if.then12, %land.rhs.if.end45_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %arrayidx.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end45, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mptcp_token_destroy(ptr noundef %msk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pprev.i.i = getelementptr inbounds %struct.sock_common, ptr %msk, i32 0, i32 15, i32 0, i32 1
  %0 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %token = getelementptr inbounds %struct.mptcp_sock, ptr %msk, i32 0, i32 16
  %2 = ptrtoint ptr %token to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %token, align 4
  %4 = load ptr, ptr @token_hash, align 4
  %5 = load i32, ptr @token_mask, align 4
  %and.i = and i32 %5, %3
  %arrayidx.i = getelementptr %struct.token_bucket, ptr %4, i32 %and.i
  tail call void @_raw_spin_lock_bh(ptr noundef %arrayidx.i) #7
  %6 = ptrtoint ptr %token to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %token, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !50
  %msk_chain.i = getelementptr %struct.token_bucket, ptr %4, i32 %and.i, i32 3
  br label %for.cond.i

for.cond.i:                                       ; preds = %land.rhs.i.for.cond.i_crit_edge, %if.end
  %pos.0.in.i = phi ptr [ %msk_chain.i, %if.end ], [ %pos.0.i, %land.rhs.i.for.cond.i_crit_edge ]
  %8 = ptrtoint ptr %pos.0.in.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %pos.0.i = load volatile ptr, ptr %pos.0.in.i, align 4
  %9 = ptrtoint ptr %pos.0.i to i32
  %and.i.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %land.rhs.i, label %for.cond.i.__token_lookup_msk.exit_crit_edge

for.cond.i.__token_lookup_msk.exit_crit_edge:     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__token_lookup_msk.exit

land.rhs.i:                                       ; preds = %for.cond.i
  %token6.i = getelementptr i8, ptr %pos.0.i, i32 1600
  %10 = ptrtoint ptr %token6.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %token6.i, align 4
  %cmp.i = icmp eq i32 %11, %7
  br i1 %cmp.i, label %cleanup.split.loop.exit.i, label %land.rhs.i.for.cond.i_crit_edge

land.rhs.i.for.cond.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i

cleanup.split.loop.exit.i:                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.le.i = getelementptr i8, ptr %pos.0.i, i32 -84
  br label %__token_lookup_msk.exit

__token_lookup_msk.exit:                          ; preds = %cleanup.split.loop.exit.i, %for.cond.i.__token_lookup_msk.exit_crit_edge
  %retval.0.i = phi ptr [ %add.ptr.le.i, %cleanup.split.loop.exit.i ], [ null, %for.cond.i.__token_lookup_msk.exit_crit_edge ]
  %cmp.not = icmp eq ptr %retval.0.i, %msk
  br i1 %cmp.not, label %if.then41.critedge, label %land.rhs

land.rhs:                                         ; preds = %__token_lookup_msk.exit
  %.b66 = load i1, ptr @mptcp_token_destroy.__already_done, align 1
  br i1 %.b66, label %land.rhs.if.end43_crit_edge, label %if.then10, !prof !52

land.rhs.if.end43_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43

if.then10:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @mptcp_token_destroy.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 382, i32 noundef 9, ptr noundef null) #7
  br label %if.end43

if.then41.critedge:                               ; preds = %__token_lookup_msk.exit
  %12 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.i.i.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i.i.i.not.i, label %if.then41.critedge.__sk_nulls_del_node_init_rcu.exit_crit_edge, label %if.then.i.i

if.then41.critedge.__sk_nulls_del_node_init_rcu.exit_crit_edge: ; preds = %if.then41.critedge
  call void @__sanitizer_cov_trace_pc() #9
  br label %__sk_nulls_del_node_init_rcu.exit

if.then.i.i:                                      ; preds = %if.then41.critedge
  %14 = getelementptr inbounds %struct.sock_common, ptr %msk, i32 0, i32 15
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %16, ptr %13, align 4
  %18 = ptrtoint ptr %16 to i32
  %and.i.i.i.i = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i7.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i7.i.i, label %do.body13.i.i.i, label %if.then.i.i.__hlist_nulls_del.exit.i.i_crit_edge

if.then.i.i.__hlist_nulls_del.exit.i.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__hlist_nulls_del.exit.i.i

do.body13.i.i.i:                                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %pprev14.i.i.i = getelementptr inbounds %struct.hlist_nulls_node, ptr %16, i32 0, i32 1
  %19 = ptrtoint ptr %pprev14.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %13, ptr %pprev14.i.i.i, align 4
  br label %__hlist_nulls_del.exit.i.i

__hlist_nulls_del.exit.i.i:                       ; preds = %do.body13.i.i.i, %if.then.i.i.__hlist_nulls_del.exit.i.i_crit_edge
  %20 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr null, ptr %pprev.i.i, align 4
  br label %__sk_nulls_del_node_init_rcu.exit

__sk_nulls_del_node_init_rcu.exit:                ; preds = %__hlist_nulls_del.exit.i.i, %if.then41.critedge.__sk_nulls_del_node_init_rcu.exit_crit_edge
  %chain_len = getelementptr %struct.token_bucket, ptr %4, i32 %and.i, i32 1
  %21 = ptrtoint ptr %chain_len to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %chain_len, align 4
  %dec = add i32 %22, -1
  store i32 %dec, ptr %chain_len, align 4
  br label %if.end43

if.end43:                                         ; preds = %__sk_nulls_del_node_init_rcu.exit, %if.then10, %land.rhs.if.end43_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %arrayidx.i) #7
  %23 = ptrtoint ptr %token to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile i32 0, ptr %token, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end43, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @mptcp_token_init() local_unnamed_addr #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @alloc_large_system_hash(ptr noundef nonnull @.str.8, i32 noundef 56, i32 noundef 0, i32 noundef 20, i32 noundef 4, ptr noundef null, ptr noundef nonnull @token_mask, i32 noundef 0, i32 noundef 65536) #7
  store ptr %call, ptr @token_hash, align 4
  %0 = load i32, ptr @token_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %0)
  %cmp14.not = icmp eq i32 %0, -1
  br i1 %cmp14.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.015 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %shl = shl i32 %i.015, 1
  %or = or i32 %shl, 1
  %1 = inttoptr i32 %or to ptr
  %2 = load ptr, ptr @token_hash, align 4
  %req_chain = getelementptr %struct.token_bucket, ptr %2, i32 %i.015, i32 2
  %3 = ptrtoint ptr %req_chain to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %1, ptr %req_chain, align 4
  %msk_chain = getelementptr %struct.token_bucket, ptr %2, i32 %i.015, i32 3
  %4 = ptrtoint ptr %msk_chain to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %msk_chain, align 4
  %arrayidx5 = getelementptr %struct.token_bucket, ptr %2, i32 %i.015
  tail call void @__raw_spin_lock_init(ptr noundef %arrayidx5, ptr noundef nonnull @.str.9, ptr noundef nonnull @mptcp_token_init.__key, i16 noundef signext 3) #7
  %inc = add nuw i32 %i.015, 1
  %5 = load i32, ptr @token_mask, align 4
  %add = add i32 %5, 1
  %cmp = icmp ult i32 %inc, %add
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_large_system_hash(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #2

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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

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
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !9, !10, !11, !12, !14, !16, !18, !20, !22, !24, !26, !27, !29, !31, !33, !34, !35, !37}
!llvm.named.register.sp = !{!38}
!llvm.module.flags = !{!39, !40, !41, !42, !43, !44, !45, !46}
!llvm.ident = !{!47}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/mptcp/token.c", i32 117, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @mptcp_token_new_request.__UNIQUE_ID_ddebug622, !1, !"__UNIQUE_ID_ddebug622", i1 false, i1 false}
!6 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../net/mptcp/token.c", i32 171, i32 2}
!9 = !{ptr @.str.6, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @mptcp_token_new_connect.__UNIQUE_ID_ddebug623, !8, !"__UNIQUE_ID_ddebug623", i1 false, i1 false}
!11 = !{ptr @.str.7, !8, !"<string literal>", i1 false, i1 false}
!12 = distinct !{null, !13, !"__already_done", i1 false, i1 false}
!13 = !{!"../net/mptcp/token.c", i32 200, i32 7}
!14 = !{ptr @__ksymtab_mptcp_token_get_sock, !15, !"__ksymtab_mptcp_token_get_sock", i1 false, i1 false}
!15 = !{!"../net/mptcp/token.c", i32 279, i32 1}
!16 = !{ptr @__ksymtab_mptcp_token_iter_next, !17, !"__ksymtab_mptcp_token_iter_next", i1 false, i1 false}
!17 = !{!"../net/mptcp/token.c", i32 338, i32 1}
!18 = distinct !{null, !19, !"__already_done", i1 false, i1 false}
!19 = !{!"../net/mptcp/token.c", i32 358, i32 7}
!20 = distinct !{null, !21, !"__already_done", i1 false, i1 false}
!21 = !{!"../net/mptcp/token.c", i32 382, i32 7}
!22 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../net/mptcp/token.c", i32 394, i32 39}
!24 = !{ptr @mptcp_token_init.__key, !25, !"__key", i1 false, i1 false}
!25 = !{!"../net/mptcp/token.c", i32 406, i32 3}
!26 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @token_hash, !28, !"token_hash", i1 false, i1 false}
!28 = !{!"../net/mptcp/token.c", i32 45, i32 29}
!29 = !{ptr @token_mask, !30, !"token_mask", i1 false, i1 false}
!30 = !{!"../net/mptcp/token.c", i32 46, i32 21}
!31 = distinct !{null, !32, !"__warned", i1 false, i1 false}
!32 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!33 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!35 = distinct !{null, !36, !"__warned", i1 false, i1 false}
!36 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!37 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!38 = !{!"sp"}
!39 = !{i32 1, !"wchar_size", i32 2}
!40 = !{i32 1, !"min_enum_size", i32 4}
!41 = !{i32 8, !"branch-target-enforcement", i32 0}
!42 = !{i32 8, !"sign-return-address", i32 0}
!43 = !{i32 8, !"sign-return-address-all", i32 0}
!44 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!45 = !{i32 7, !"uwtable", i32 1}
!46 = !{i32 7, !"frame-pointer", i32 2}
!47 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!48 = !{i64 2148700631, i64 2148700636, i64 2148700649, i64 2148700693, i64 2148700727, i64 2148700748}
!49 = !{i64 2158870005}
!50 = !{i64 2158881810}
!51 = !{i64 2156336089}
!52 = !{!"branch_weights", i32 2000, i32 1}
!53 = !{i64 2149365285}
!54 = !{i64 2158902122}
!55 = !{i64 2149365551}
!56 = !{i64 2158916987}
!57 = !{i64 702552, i64 702576, i64 702597, i64 702614, i64 702631}
!58 = !{i64 2148308347}
!59 = !{i64 2148222811, i64 2148222843, i64 2148222872, i64 2148222906, i64 2148222937, i64 2148222960}
!60 = !{i64 2149314795}
!61 = !{i64 2158940298}
