; ModuleID = '/llk/IR_all_yes/net/ipv6/calipso.c_pt.bc'
source_filename = "../net/ipv6/calipso.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.netlbl_calipso_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.lock_class_key = type { %union.anon.7 }
%union.anon.7 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.calipso_map_cache_bkt = type { %struct.spinlock, i32, %struct.list_head }
%struct.calipso_doi = type { i32, i32, %struct.refcount_struct, %struct.list_head, %struct.callback_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.callback_head = type { ptr, ptr }
%struct.sock_common = type { %union.anon.137, %union.anon.139, %union.anon.140, i16, i8, i8, i32, %union.anon.142, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.145, [0 x i32], %union.anon.146, i16, i16, %union.anon.147, %struct.refcount_struct, [0 x i32], %union.anon.148 }
%union.anon.137 = type { i64 }
%union.anon.139 = type { i32 }
%union.anon.140 = type { i32 }
%union.anon.142 = type { %struct.hlist_node }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.28 }
%union.anon.28 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.145 = type { i32 }
%union.anon.146 = type { %struct.hlist_node }
%union.anon.147 = type { i32 }
%union.anon.148 = type { i32 }
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
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.page_frag = type { ptr, i16, i16 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.inet_cork_full = type { %struct.inet_cork, %struct.flowi }
%struct.inet_cork = type { i32, i32, ptr, i32, i32, ptr, i8, i8, i16, i8, i16, i64, i32 }
%struct.flowi = type { %union.anon.23 }
%union.anon.23 = type { %struct.flowi6 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.ipv6_txoptions = type { %struct.refcount_struct, i32, i16, i16, ptr, ptr, ptr, ptr, %struct.callback_head }
%struct.ipv6_opt_hdr = type { i8, i8 }
%struct.inet_request_sock = type { %struct.request_sock, i16, i32, %union.anon.195 }
%struct.request_sock = type { %struct.sock_common, ptr, i16, i8, i8, i32, %struct.timer_list, ptr, ptr, ptr, i32, i32 }
%union.anon.195 = type { %struct.anon.196 }
%struct.anon.196 = type { ptr, ptr }
%struct.netlbl_lsm_secattr = type { i32, i32, ptr, ptr, %struct.anon.189 }
%struct.anon.189 = type { %struct.anon.190, i32 }
%struct.anon.190 = type { ptr, i32 }
%struct.calipso_map_cache_entry = type { i32, ptr, i32, ptr, i32, %struct.list_head }
%struct.netlbl_lsm_catmap = type { i32, [4 x i64], ptr }
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
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.ipv6_pinfo = type { %struct.in6_addr, %struct.in6_pktinfo, ptr, ptr, i32, i32, i32, i32, i32, %union.anon.192, i16, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.inet6_cork }
%struct.in6_pktinfo = type { %struct.in6_addr, i32 }
%union.anon.192 = type { %struct.anon.193 }
%struct.anon.193 = type { i16 }
%struct.inet6_cork = type { ptr, i8, i8 }
%struct.netlbl_lsm_cache = type { %struct.refcount_struct, ptr, ptr }

@calipso_cache_enabled = dso_local global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@calipso_cache_bucketsize = dso_local global { i32, [28 x i8] } { i32 10, [28 x i8] zeroinitializer }, align 32
@calipso_validate.zero = internal constant { [2 x i8], [30 x i8] } zeroinitializer, align 32
@ops = internal constant { %struct.netlbl_calipso_ops, [60 x i8] } { %struct.netlbl_calipso_ops { ptr @calipso_doi_add, ptr @calipso_doi_free, ptr @calipso_doi_remove, ptr @calipso_doi_getdef, ptr @calipso_doi_putdef, ptr @calipso_doi_walk, ptr @calipso_sock_getattr, ptr @calipso_sock_setattr, ptr @calipso_sock_delattr, ptr @calipso_req_setattr, ptr @calipso_req_delattr, ptr @calipso_opt_getattr, ptr @calipso_skbuff_optptr, ptr @calipso_skbuff_setattr, ptr @calipso_skbuff_delattr, ptr @calipso_cache_invalidate, ptr @calipso_cache_add }, [60 x i8] zeroinitializer }, align 32
@calipso_cache = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@calipso_doi_search.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"net/ipv6/calipso.c\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@calipso_doi_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @calipso_doi_list, ptr @calipso_doi_list }, [24 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@calipso_cache_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"&calipso_cache[iter].lock\00", [38 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@calipso_doi_list_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.5 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.9, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pass\00", [27 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"(unknown)\00", [22 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c" calipso_doi=%u calipso_type=%s res=%u\00", [57 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"calipso_doi_list_lock\00", [42 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c" calipso_doi=%u res=%u\00", [41 x i8] zeroinitializer }, align 32
@calipso_doi_walk.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@txopt_get.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.11 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"include/net/ipv6.h\00", [45 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@calipso_genopt.padding = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\02\01\00\03", [28 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@__sancov_gen_cov_switch_values.13 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.14 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.15 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@__sancov_gen_cov_switch_values.16 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.17 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 7]
@__sancov_gen_cov_switch_values.18 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.19 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.20 = internal global [14 x i64] [i64 12, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12]
@___asan_gen_.21 = private unnamed_addr constant [22 x i8] c"calipso_cache_enabled\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 62, i32 5 }
@___asan_gen_.24 = private unnamed_addr constant [25 x i8] c"calipso_cache_bucketsize\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 63, i32 5 }
@___asan_gen_.27 = private unnamed_addr constant [5 x i8] c"zero\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 575, i32 18 }
@___asan_gen_.30 = private unnamed_addr constant [4 x i8] c"ops\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 1416, i32 40 }
@___asan_gen_.33 = private unnamed_addr constant [14 x i8] c"calipso_cache\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 84, i32 38 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 695, i32 2 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 329, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant [17 x i8] c"calipso_doi_list\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 59, i32 8 }
@___asan_gen_.52 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 723, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 143, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant [22 x i8] c"calipso_doi_list_lock\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 381, i32 15 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 384, i32 15 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 387, i32 6 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 58, i32 8 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 460, i32 6 }
@___asan_gen_.81 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.82 = private unnamed_addr constant [22 x i8] c"../include/net/ipv6.h\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 379, i32 8 }
@___asan_gen_.84 = private unnamed_addr constant [8 x i8] c"padding\00", align 1
@___asan_gen_.85 = private constant [22 x i8] c"../net/ipv6/calipso.c\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 730, i32 29 }
@llvm.compiler.used = appending global [22 x ptr] [ptr @calipso_cache_enabled, ptr @calipso_cache_bucketsize, ptr @calipso_validate.zero, ptr @ops, ptr @calipso_cache, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @calipso_doi_list, ptr @.str.4, ptr @calipso_cache_init.__key, ptr @.str.5, ptr @calipso_doi_list_lock, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @calipso_genopt.padding], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @calipso_cache_enabled to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @calipso_cache_bucketsize to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @calipso_validate.zero to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @calipso_cache to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @calipso_doi_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @calipso_cache_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @calipso_doi_list_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @calipso_genopt.padding to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @calipso_validate(ptr nocapture noundef readnone %skb, ptr noundef %option) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr i8, ptr %option, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %call = tail call zeroext i16 @crc_ccitt(i16 noundef zeroext -1, ptr noundef %option, i32 noundef 8) #13
  %call2 = tail call zeroext i16 @crc_ccitt(i16 noundef zeroext %call, ptr noundef nonnull @calipso_validate.zero, i32 noundef 2) #13
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %1)
  %cmp = icmp ugt i8 %1, 8
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %conv = zext i8 %1 to i32
  %add.ptr = getelementptr i8, ptr %option, i32 10
  %sub = add nsw i32 %conv, -8
  %call6 = tail call zeroext i16 @crc_ccitt(i16 noundef zeroext %call2, ptr noundef %add.ptr, i32 noundef %sub) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %crc.0 = phi i16 [ %call6, %if.then ], [ %call2, %entry.if.end_crit_edge ]
  %neg = xor i16 %crc.0, -1
  %arrayidx9 = getelementptr i8, ptr %option, i32 8
  %2 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx9, align 1
  %4 = trunc i16 %neg to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %4)
  %cmp12.not = icmp eq i8 %3, %4
  br i1 %cmp12.not, label %lor.lhs.false, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %arrayidx14 = getelementptr i8, ptr %option, i32 9
  %5 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx14, align 1
  %7 = lshr i16 %neg, 8
  %8 = zext i8 %6 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %7, i16 %8)
  %cmp18.not = icmp eq i16 %7, %8
  br i1 %cmp18.not, label %if.end21, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end21:                                         ; preds = %lor.lhs.false
  %9 = tail call i32 @llvm.read_register.i32(metadata !47) #13
  %and.i.i.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %12, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !57
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i, label %if.end21.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end21.rcu_read_lock.exit_crit_edge:            ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end21
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 696, ptr noundef nonnull @.str.1) #13
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end21.rcu_read_lock.exit_crit_edge
  %add.ptr22 = getelementptr i8, ptr %option, i32 2
  %13 = ptrtoint ptr %add.ptr22 to i32
  call void @__asan_loadN_noabort(i32 %13, i32 4)
  %14 = load i32, ptr %add.ptr22, align 1
  %call.i40 = tail call i32 @rcu_read_lock_any_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i40)
  %tobool.not.i41 = icmp eq i32 %call.i40, 0
  br i1 %tobool.not.i41, label %land.lhs.true.i43, label %rcu_read_lock.exit.do.end.i_crit_edge

rcu_read_lock.exit.do.end.i_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

land.lhs.true.i43:                                ; preds = %rcu_read_lock.exit
  %call1.i42 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i42)
  %tobool2.not.i = icmp eq i32 %call1.i42, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i43.do.end.i_crit_edge, label %land.lhs.true3.i

land.lhs.true.i43.do.end.i_crit_edge:             ; preds = %land.lhs.true.i43
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i43
  %.b28.i = load i1, ptr @calipso_doi_search.__warned, align 1
  br i1 %.b28.i, label %land.lhs.true3.i.do.end.i_crit_edge, label %if.then.i44

land.lhs.true3.i.do.end.i_crit_edge:              ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

if.then.i44:                                      ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @calipso_doi_search.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 329, ptr noundef nonnull @.str.3) #13
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i44, %land.lhs.true3.i.do.end.i_crit_edge, %land.lhs.true.i43.do.end.i_crit_edge, %rcu_read_lock.exit.do.end.i_crit_edge
  %.pn29.i = load volatile ptr, ptr @calipso_doi_list, align 4
  %cmp.not31.i = icmp eq ptr %.pn29.i, @calipso_doi_list
  br i1 %cmp.not31.i, label %do.end.i.calipso_doi_search.exit_crit_edge, label %do.end.i.for.body.i_crit_edge

do.end.i.for.body.i_crit_edge:                    ; preds = %do.end.i
  br label %for.body.i

do.end.i.calipso_doi_search.exit_crit_edge:       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %calipso_doi_search.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %do.end.i.for.body.i_crit_edge
  %.pn32.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn29.i, %do.end.i.for.body.i_crit_edge ]
  %iter.033.i = getelementptr i8, ptr %.pn32.i, i32 -12
  %15 = ptrtoint ptr %iter.033.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %iter.033.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %14)
  %cmp10.i = icmp eq i32 %16, %14
  br i1 %cmp10.i, label %land.lhs.true11.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

land.lhs.true11.i:                                ; preds = %for.body.i
  %refcount.i = getelementptr i8, ptr %.pn32.i, i32 -4
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcount.i, i32 noundef 4) #13
  %17 = ptrtoint ptr %refcount.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %refcount.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool13.not.i = icmp eq i32 %18, 0
  br i1 %tobool13.not.i, label %land.lhs.true11.i.for.inc.i_crit_edge, label %calipso_doi_search.exit.loopexit.split.loop.exit55

land.lhs.true11.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true11.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %19 = ptrtoint ptr %.pn32.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pn.i = load volatile ptr, ptr %.pn32.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, @calipso_doi_list
  br i1 %cmp.not.i, label %for.inc.i.calipso_doi_search.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.inc.i.calipso_doi_search.exit_crit_edge:      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %calipso_doi_search.exit

calipso_doi_search.exit.loopexit.split.loop.exit55: ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #15
  %iter.033.i.le = getelementptr i8, ptr %.pn32.i, i32 -12
  %phi.cmp = icmp ne ptr %iter.033.i.le, null
  br label %calipso_doi_search.exit

calipso_doi_search.exit:                          ; preds = %calipso_doi_search.exit.loopexit.split.loop.exit55, %for.inc.i.calipso_doi_search.exit_crit_edge, %do.end.i.calipso_doi_search.exit_crit_edge
  %retval.0.i = phi i1 [ false, %do.end.i.calipso_doi_search.exit_crit_edge ], [ %phi.cmp, %calipso_doi_search.exit.loopexit.split.loop.exit55 ], [ false, %for.inc.i.calipso_doi_search.exit_crit_edge ]
  %call.i45 = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i45, label %calipso_doi_search.exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i48

calipso_doi_search.exit.rcu_read_unlock.exit_crit_edge: ; preds = %calipso_doi_search.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true.i48:                                ; preds = %calipso_doi_search.exit
  %call1.i46 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i46)
  %tobool.not.i47 = icmp eq i32 %call1.i46, 0
  br i1 %tobool.not.i47, label %land.lhs.true.i48.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i50

land.lhs.true.i48.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i48
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true2.i50:                               ; preds = %land.lhs.true.i48
  %.b4.i49 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i49, label %land.lhs.true2.i50.rcu_read_unlock.exit_crit_edge, label %if.then.i51

land.lhs.true2.i50.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i50
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

if.then.i51:                                      ; preds = %land.lhs.true2.i50
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 724, ptr noundef nonnull @.str.4) #13
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i51, %land.lhs.true2.i50.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i48.rcu_read_unlock.exit_crit_edge, %calipso_doi_search.exit.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !58
  %20 = tail call i32 @llvm.read_register.i32(metadata !47) #13
  %and.i.i.i.i.i52 = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i.i.i52 to ptr
  %preempt_count.i.i.i.i53 = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i.i.i53 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i.i.i53, align 4
  %sub.i.i.i = add i32 %23, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i53, align 4
  tail call void @rcu_read_unlock_strict() #13
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i1 [ %retval.0.i, %rcu_read_unlock.exit ], [ false, %lor.lhs.false.cleanup_crit_edge ], [ false, %if.end.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @crc_ccitt(i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @calipso_init() local_unnamed_addr #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @calipso_cache_init() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call1 = tail call ptr @netlbl_calipso_ops_register(ptr noundef nonnull @ops) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @calipso_cache_init() unnamed_addr #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 7168) #17
  store ptr %call7.i.i.i, ptr @calipso_cache, align 4
  %tobool.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  br label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body:                                          ; preds = %do.body.do.body_crit_edge, %entry.do.body_crit_edge
  %iter.08 = phi i32 [ %inc, %do.body.do.body_crit_edge ], [ 0, %entry.do.body_crit_edge ]
  %1 = load ptr, ptr @calipso_cache, align 4
  %arrayidx = getelementptr %struct.calipso_map_cache_bkt, ptr %1, i32 %iter.08
  tail call void @__raw_spin_lock_init(ptr noundef %arrayidx, ptr noundef nonnull @.str.5, ptr noundef nonnull @calipso_cache_init.__key, i16 noundef signext 3) #13
  %2 = load ptr, ptr @calipso_cache, align 4
  %size = getelementptr %struct.calipso_map_cache_bkt, ptr %2, i32 %iter.08, i32 1
  %3 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %size, align 4
  %list = getelementptr %struct.calipso_map_cache_bkt, ptr %2, i32 %iter.08, i32 2
  %4 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %list, ptr %list, align 4
  %prev.i = getelementptr %struct.calipso_map_cache_bkt, ptr %2, i32 %iter.08, i32 2, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %list, ptr %prev.i, align 4
  %inc = add nuw nsw i32 %iter.08, 1
  %exitcond.not = icmp eq i32 %inc, 128
  br i1 %exitcond.not, label %do.body.cleanup_crit_edge, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup:                                          ; preds = %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ 0, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @netlbl_calipso_ops_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @calipso_exit() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @netlbl_calipso_ops_register(ptr noundef null) #13
  tail call void @calipso_cache_invalidate()
  %0 = load ptr, ptr @calipso_cache, align 4
  tail call void @kfree(ptr noundef %0) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @calipso_cache_invalidate() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.end.for.body_crit_edge, %entry
  %iter.040 = phi i32 [ 0, %entry ], [ %inc, %for.end.for.body_crit_edge ]
  %0 = load ptr, ptr @calipso_cache, align 4
  %arrayidx = getelementptr %struct.calipso_map_cache_bkt, ptr %0, i32 %iter.040
  tail call void @_raw_spin_lock_bh(ptr noundef %arrayidx) #13
  %1 = load ptr, ptr @calipso_cache, align 4
  %list = getelementptr %struct.calipso_map_cache_bkt, ptr %1, i32 %iter.040, i32 2
  %2 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %list, align 4
  %cmp12.not37 = icmp eq ptr %3, %list
  br i1 %cmp12.not37, label %for.body.for.end_crit_edge, label %for.body.for.body13_crit_edge

for.body.for.body13_crit_edge:                    ; preds = %for.body
  br label %for.body13

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body13:                                       ; preds = %list_del.exit.for.body13_crit_edge, %for.body.for.body13_crit_edge
  %.pn.in38 = phi ptr [ %.pn, %list_del.exit.for.body13_crit_edge ], [ %3, %for.body.for.body13_crit_edge ]
  %entry1.0 = getelementptr i8, ptr %.pn.in38, i32 -20
  %4 = ptrtoint ptr %.pn.in38 to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn = load ptr, ptr %.pn.in38, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in38) #13
  br i1 %call.i.i, label %if.end.i.i, label %for.body13.list_del.exit_crit_edge

for.body13.list_del.exit_crit_edge:               ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in38, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i, align 4
  %7 = ptrtoint ptr %.pn.in38 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %.pn.in38, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body13.list_del.exit_crit_edge
  %11 = ptrtoint ptr %.pn.in38 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in38, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in38, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call fastcc void @calipso_cache_entry_free(ptr noundef %entry1.0)
  %13 = load ptr, ptr @calipso_cache, align 4
  %list11 = getelementptr %struct.calipso_map_cache_bkt, ptr %13, i32 %iter.040, i32 2
  %cmp12.not = icmp eq ptr %.pn, %list11
  br i1 %cmp12.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body13_crit_edge

list_del.exit.for.body13_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body13

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %for.body.for.end_crit_edge
  %.lcssa = phi ptr [ %1, %for.body.for.end_crit_edge ], [ %13, %list_del.exit.for.end_crit_edge ]
  %size = getelementptr %struct.calipso_map_cache_bkt, ptr %.lcssa, i32 %iter.040, i32 1
  %14 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %size, align 4
  %arrayidx21 = getelementptr %struct.calipso_map_cache_bkt, ptr %.lcssa, i32 %iter.040
  tail call void @_raw_spin_unlock_bh(ptr noundef %arrayidx21) #13
  %inc = add nuw nsw i32 %iter.040, 1
  %exitcond.not = icmp eq i32 %inc, 128
  br i1 %exitcond.not, label %for.end24, label %for.end.for.body_crit_edge

for.end.for.body_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end24:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #13
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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @calipso_doi_add(ptr noundef %doi_def, ptr noundef %audit_info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %doi_def to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %doi_def, align 4
  %type = getelementptr inbounds %struct.calipso_doi, ptr %doi_def, i32 0, i32 1
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %entry.doi_add_return_crit_edge, label %if.end

entry.doi_add_return_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %doi_add_return

if.end:                                           ; preds = %entry
  %refcount = getelementptr inbounds %struct.calipso_doi, ptr %doi_def, i32 0, i32 2
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #13
  %4 = ptrtoint ptr %refcount to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile i32 1, ptr %refcount, align 4
  tail call void @_raw_spin_lock(ptr noundef nonnull @calipso_doi_list_lock) #13
  %5 = ptrtoint ptr %doi_def to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %doi_def, align 4
  %call.i = tail call i32 @rcu_read_lock_any_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.end.do.end.i_crit_edge

if.end.do.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true3.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %.b28.i = load i1, ptr @calipso_doi_search.__warned, align 1
  br i1 %.b28.i, label %land.lhs.true3.i.do.end.i_crit_edge, label %if.then.i

land.lhs.true3.i.do.end.i_crit_edge:              ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

if.then.i:                                        ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @calipso_doi_search.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 329, ptr noundef nonnull @.str.3) #13
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %land.lhs.true3.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %if.end.do.end.i_crit_edge
  %.pn29.i = load volatile ptr, ptr @calipso_doi_list, align 4
  %cmp.not31.i = icmp eq ptr %.pn29.i, @calipso_doi_list
  br i1 %cmp.not31.i, label %do.end.i.if.end5_crit_edge, label %do.end.i.for.body.i_crit_edge

do.end.i.for.body.i_crit_edge:                    ; preds = %do.end.i
  br label %for.body.i

do.end.i.if.end5_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end5

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %do.end.i.for.body.i_crit_edge
  %.pn32.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn29.i, %do.end.i.for.body.i_crit_edge ]
  %iter.033.i = getelementptr i8, ptr %.pn32.i, i32 -12
  %7 = ptrtoint ptr %iter.033.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %iter.033.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %6)
  %cmp10.i = icmp eq i32 %8, %6
  br i1 %cmp10.i, label %land.lhs.true11.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

land.lhs.true11.i:                                ; preds = %for.body.i
  %refcount.i = getelementptr i8, ptr %.pn32.i, i32 -4
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcount.i, i32 noundef 4) #13
  %9 = ptrtoint ptr %refcount.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %refcount.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool13.not.i = icmp eq i32 %10, 0
  br i1 %tobool13.not.i, label %land.lhs.true11.i.for.inc.i_crit_edge, label %calipso_doi_search.exit

land.lhs.true11.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true11.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %11 = ptrtoint ptr %.pn32.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn.i = load volatile ptr, ptr %.pn32.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, @calipso_doi_list
  br i1 %cmp.not.i, label %for.inc.i.if.end5_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.inc.i.if.end5_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end5

calipso_doi_search.exit:                          ; preds = %land.lhs.true11.i
  %iter.033.i.le = getelementptr i8, ptr %.pn32.i, i32 -12
  %tobool.not = icmp eq ptr %iter.033.i.le, null
  br i1 %tobool.not, label %calipso_doi_search.exit.if.end5_crit_edge, label %calipso_doi_search.exit.doi_add_return.sink.split_crit_edge

calipso_doi_search.exit.doi_add_return.sink.split_crit_edge: ; preds = %calipso_doi_search.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %doi_add_return.sink.split

calipso_doi_search.exit.if.end5_crit_edge:        ; preds = %calipso_doi_search.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end5

if.end5:                                          ; preds = %calipso_doi_search.exit.if.end5_crit_edge, %for.inc.i.if.end5_crit_edge, %do.end.i.if.end5_crit_edge
  %list = getelementptr inbounds %struct.calipso_doi, ptr %doi_def, i32 0, i32 3
  %12 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @calipso_doi_list, i32 0, i32 1), align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %12, ptr noundef nonnull @calipso_doi_list) #13
  br i1 %call.i.i, label %if.end.i.i, label %if.end5.doi_add_return.sink.split_crit_edge

if.end5.doi_add_return.sink.split_crit_edge:      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %doi_add_return.sink.split

if.end.i.i:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  %13 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @calipso_doi_list, ptr %list, align 4
  %prev2.i.i = getelementptr inbounds %struct.calipso_doi, ptr %doi_def, i32 0, i32 3, i32 1
  %14 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %12, ptr %prev2.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !59
  %15 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %list, ptr %12, align 4
  store ptr %list, ptr getelementptr inbounds (%struct.list_head, ptr @calipso_doi_list, i32 0, i32 1), align 4
  br label %doi_add_return.sink.split

doi_add_return.sink.split:                        ; preds = %if.end.i.i, %if.end5.doi_add_return.sink.split_crit_edge, %calipso_doi_search.exit.doi_add_return.sink.split_crit_edge
  %cmp9.ph = phi i32 [ 0, %calipso_doi_search.exit.doi_add_return.sink.split_crit_edge ], [ 1, %if.end5.doi_add_return.sink.split_crit_edge ], [ 1, %if.end.i.i ]
  %ret_val.0.ph = phi i32 [ -17, %calipso_doi_search.exit.doi_add_return.sink.split_crit_edge ], [ 0, %if.end5.doi_add_return.sink.split_crit_edge ], [ 0, %if.end.i.i ]
  tail call void @_raw_spin_unlock(ptr noundef nonnull @calipso_doi_list_lock) #13
  br label %doi_add_return

doi_add_return:                                   ; preds = %doi_add_return.sink.split, %entry.doi_add_return_crit_edge
  %cmp9 = phi i32 [ 0, %entry.doi_add_return_crit_edge ], [ %cmp9.ph, %doi_add_return.sink.split ]
  %ret_val.0 = phi i32 [ -22, %entry.doi_add_return_crit_edge ], [ %ret_val.0.ph, %doi_add_return.sink.split ]
  %call6 = tail call ptr @netlbl_audit_start(i32 noundef 1418, ptr noundef %audit_info) #13
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %doi_add_return.if.end10_crit_edge, label %if.then8

doi_add_return.if.end10_crit_edge:                ; preds = %doi_add_return
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10

if.then8:                                         ; preds = %doi_add_return
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cond11 = icmp eq i32 %3, 2
  %.str.6..str.7 = select i1 %cond11, ptr @.str.6, ptr @.str.7
  tail call void (ptr, ptr, ...) @audit_log_format(ptr noundef nonnull %call6, ptr noundef nonnull @.str.8, i32 noundef %1, ptr noundef nonnull %.str.6..str.7, i32 noundef %cmp9) #13
  tail call void @audit_log_end(ptr noundef nonnull %call6) #13
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %doi_add_return.if.end10_crit_edge
  ret i32 %ret_val.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @calipso_doi_free(ptr noundef %doi_def) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %doi_def) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @calipso_doi_remove(i32 noundef %doi, ptr noundef %audit_info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @calipso_doi_list_lock) #13
  %call.i = tail call i32 @rcu_read_lock_any_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %entry.do.end.i_crit_edge

entry.do.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true3.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %.b28.i = load i1, ptr @calipso_doi_search.__warned, align 1
  br i1 %.b28.i, label %land.lhs.true3.i.do.end.i_crit_edge, label %if.then.i

land.lhs.true3.i.do.end.i_crit_edge:              ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

if.then.i:                                        ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @calipso_doi_search.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 329, ptr noundef nonnull @.str.3) #13
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %land.lhs.true3.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  %.pn29.i = load volatile ptr, ptr @calipso_doi_list, align 4
  %cmp.not31.i = icmp eq ptr %.pn29.i, @calipso_doi_list
  br i1 %cmp.not31.i, label %do.end.i.if.then_crit_edge, label %do.end.i.for.body.i_crit_edge

do.end.i.for.body.i_crit_edge:                    ; preds = %do.end.i
  br label %for.body.i

do.end.i.if.then_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %do.end.i.for.body.i_crit_edge
  %.pn32.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn29.i, %do.end.i.for.body.i_crit_edge ]
  %iter.033.i = getelementptr i8, ptr %.pn32.i, i32 -12
  %0 = ptrtoint ptr %iter.033.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %iter.033.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %doi)
  %cmp10.i = icmp eq i32 %1, %doi
  br i1 %cmp10.i, label %land.lhs.true11.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

land.lhs.true11.i:                                ; preds = %for.body.i
  %refcount.i = getelementptr i8, ptr %.pn32.i, i32 -4
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcount.i, i32 noundef 4) #13
  %2 = ptrtoint ptr %refcount.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %refcount.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool13.not.i = icmp eq i32 %3, 0
  br i1 %tobool13.not.i, label %land.lhs.true11.i.for.inc.i_crit_edge, label %calipso_doi_search.exit

land.lhs.true11.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true11.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %4 = ptrtoint ptr %.pn32.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn.i = load volatile ptr, ptr %.pn32.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, @calipso_doi_list
  br i1 %cmp.not.i, label %for.inc.i.if.then_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.inc.i.if.then_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

calipso_doi_search.exit:                          ; preds = %land.lhs.true11.i
  %iter.033.i.le = getelementptr i8, ptr %.pn32.i, i32 -12
  %tobool.not = icmp eq ptr %iter.033.i.le, null
  br i1 %tobool.not, label %calipso_doi_search.exit.if.then_crit_edge, label %if.end

calipso_doi_search.exit.if.then_crit_edge:        ; preds = %calipso_doi_search.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

if.then:                                          ; preds = %calipso_doi_search.exit.if.then_crit_edge, %for.inc.i.if.then_crit_edge, %do.end.i.if.then_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @calipso_doi_list_lock) #13
  br label %doi_remove_return

if.end:                                           ; preds = %calipso_doi_search.exit
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn32.i) #13
  br i1 %call.i.i, label %if.end.i.i, label %if.end.if.end.i_crit_edge

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn32.i, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i, align 4
  %7 = ptrtoint ptr %.pn32.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %.pn32.i, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.end.i.i, %if.end.if.end.i_crit_edge
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn32.i, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @calipso_doi_list_lock) #13
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !60
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #13
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #13, !srcloc !61
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.end2.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.doi_remove_return_crit_edge, label %if.then10.i.i.i.i, !prof !62

if.end5.i.i.i.i.doi_remove_return_crit_edge:      ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %doi_remove_return

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #13
  br label %doi_remove_return

if.end2.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !63
  tail call void @calipso_cache_invalidate() #13
  %rcu.i = getelementptr i8, ptr %.pn32.i, i32 8
  tail call void @call_rcu(ptr noundef %rcu.i, ptr noundef nonnull @calipso_doi_free_rcu) #13
  br label %doi_remove_return

doi_remove_return:                                ; preds = %if.end2.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.doi_remove_return_crit_edge, %if.then
  %tobool.not15 = phi i32 [ 0, %if.then ], [ 1, %if.end5.i.i.i.i.doi_remove_return_crit_edge ], [ 1, %if.then10.i.i.i.i ], [ 1, %if.end2.i ]
  %ret_val.0 = phi i32 [ -2, %if.then ], [ 0, %if.end5.i.i.i.i.doi_remove_return_crit_edge ], [ 0, %if.then10.i.i.i.i ], [ 0, %if.end2.i ]
  %call1 = tail call ptr @netlbl_audit_start(i32 noundef 1419, ptr noundef %audit_info) #13
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %doi_remove_return.if.end4_crit_edge, label %if.then3

doi_remove_return.if.end4_crit_edge:              ; preds = %doi_remove_return
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4

if.then3:                                         ; preds = %doi_remove_return
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @audit_log_format(ptr noundef nonnull %call1, ptr noundef nonnull @.str.10, i32 noundef %doi, i32 noundef %tobool.not15) #13
  tail call void @audit_log_end(ptr noundef nonnull %call1) #13
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %doi_remove_return.if.end4_crit_edge
  ret i32 %ret_val.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @calipso_doi_getdef(i32 noundef %doi) #0 align 64 {
entry:
  %old.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !47) #13
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !57
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 696, ptr noundef nonnull @.str.1) #13
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call.i6 = tail call i32 @rcu_read_lock_any_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i6)
  %tobool.not.i7 = icmp eq i32 %call.i6, 0
  br i1 %tobool.not.i7, label %land.lhs.true.i9, label %rcu_read_lock.exit.do.end.i_crit_edge

rcu_read_lock.exit.do.end.i_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

land.lhs.true.i9:                                 ; preds = %rcu_read_lock.exit
  %call1.i8 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i8)
  %tobool2.not.i = icmp eq i32 %call1.i8, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i9.do.end.i_crit_edge, label %land.lhs.true3.i

land.lhs.true.i9.do.end.i_crit_edge:              ; preds = %land.lhs.true.i9
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i9
  %.b28.i = load i1, ptr @calipso_doi_search.__warned, align 1
  br i1 %.b28.i, label %land.lhs.true3.i.do.end.i_crit_edge, label %if.then.i10

land.lhs.true3.i.do.end.i_crit_edge:              ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

if.then.i10:                                      ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @calipso_doi_search.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 329, ptr noundef nonnull @.str.3) #13
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i10, %land.lhs.true3.i.do.end.i_crit_edge, %land.lhs.true.i9.do.end.i_crit_edge, %rcu_read_lock.exit.do.end.i_crit_edge
  %.pn29.i = load volatile ptr, ptr @calipso_doi_list, align 4
  %cmp.not31.i = icmp eq ptr %.pn29.i, @calipso_doi_list
  br i1 %cmp.not31.i, label %do.end.i.doi_getdef_return_crit_edge, label %do.end.i.for.body.i_crit_edge

do.end.i.for.body.i_crit_edge:                    ; preds = %do.end.i
  br label %for.body.i

do.end.i.doi_getdef_return_crit_edge:             ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %doi_getdef_return

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %do.end.i.for.body.i_crit_edge
  %.pn32.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn29.i, %do.end.i.for.body.i_crit_edge ]
  %iter.033.i = getelementptr i8, ptr %.pn32.i, i32 -12
  %4 = ptrtoint ptr %iter.033.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %iter.033.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %doi)
  %cmp10.i = icmp eq i32 %5, %doi
  br i1 %cmp10.i, label %land.lhs.true11.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

land.lhs.true11.i:                                ; preds = %for.body.i
  %refcount.i = getelementptr i8, ptr %.pn32.i, i32 -4
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcount.i, i32 noundef 4) #13
  %6 = ptrtoint ptr %refcount.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %refcount.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool13.not.i = icmp eq i32 %7, 0
  br i1 %tobool13.not.i, label %land.lhs.true11.i.for.inc.i_crit_edge, label %calipso_doi_search.exit

land.lhs.true11.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true11.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %8 = ptrtoint ptr %.pn32.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn.i = load volatile ptr, ptr %.pn32.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, @calipso_doi_list
  br i1 %cmp.not.i, label %for.inc.i.doi_getdef_return_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.inc.i.doi_getdef_return_crit_edge:            ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %doi_getdef_return

calipso_doi_search.exit:                          ; preds = %land.lhs.true11.i
  %iter.033.i.le = getelementptr i8, ptr %.pn32.i, i32 -12
  %tobool.not = icmp eq ptr %iter.033.i.le, null
  br i1 %tobool.not, label %calipso_doi_search.exit.doi_getdef_return_crit_edge, label %if.end

calipso_doi_search.exit.doi_getdef_return_crit_edge: ; preds = %calipso_doi_search.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %doi_getdef_return

if.end:                                           ; preds = %calipso_doi_search.exit
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i) #13
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcount.i, i32 noundef 4) #13
  %9 = ptrtoint ptr %refcount.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %refcount.i, align 4
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, %if.end
  %11 = phi i32 [ %10, %if.end ], [ %asmresult3.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge ]
  %12 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %old.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i.i.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i.i.i, label %do.body.i.i.i.if.end4.i.i.i_crit_edge, label %do.cond.i.i.i

do.body.i.i.i.if.end4.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4.i.i.i

do.cond.i.i.i:                                    ; preds = %do.body.i.i.i
  %add.i.i.i11 = add i32 %11, 1
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #13
  %call.i3.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i, i32 noundef 4) #13
  %13 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %old.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #13
  br label %do.body.i.i.i.i.i.i

do.body.i.i.i.i.i.i:                              ; preds = %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i
  %15 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 %14, i32 %add.i.i.i11, ptr elementtype(i32) %refcount.i) #13, !srcloc !64
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %15, 0
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i, label %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i:       ; preds = %do.body.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i = extractvalue { i32, i32 } %15, 1
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i, %14
  br i1 %cmp.not.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, !prof !62

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4.i.i.i

if.end4.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, %do.body.i.i.i.if.end4.i.i.i_crit_edge
  %16 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %old.i.i.i, align 4
  %add5.i.i.i = add i32 %17, 1
  %18 = or i32 %add5.i.i.i, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %18)
  %.not.i.i.i = icmp sgt i32 %18, -1
  br i1 %.not.i.i.i, label %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge, label %if.then10.i.i.i, !prof !62

if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge: ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %refcount_inc_not_zero.exit

if.then10.i.i.i:                                  ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 0) #13
  br label %refcount_inc_not_zero.exit

refcount_inc_not_zero.exit:                       ; preds = %if.then10.i.i.i, %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge
  %19 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %old.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool12.i.i.i.not = icmp eq i32 %20, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i) #13
  %spec.select = select i1 %tobool12.i.i.i.not, ptr null, ptr %iter.033.i.le
  br label %doi_getdef_return

doi_getdef_return:                                ; preds = %refcount_inc_not_zero.exit, %calipso_doi_search.exit.doi_getdef_return_crit_edge, %for.inc.i.doi_getdef_return_crit_edge, %do.end.i.doi_getdef_return_crit_edge
  %doi_def.0 = phi ptr [ null, %calipso_doi_search.exit.doi_getdef_return_crit_edge ], [ %spec.select, %refcount_inc_not_zero.exit ], [ null, %do.end.i.doi_getdef_return_crit_edge ], [ null, %for.inc.i.doi_getdef_return_crit_edge ]
  %call.i12 = call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i12, label %doi_getdef_return.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i15

doi_getdef_return.rcu_read_unlock.exit_crit_edge: ; preds = %doi_getdef_return
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true.i15:                                ; preds = %doi_getdef_return
  %call1.i13 = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i13)
  %tobool.not.i14 = icmp eq i32 %call1.i13, 0
  br i1 %tobool.not.i14, label %land.lhs.true.i15.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i17

land.lhs.true.i15.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i15
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true2.i17:                               ; preds = %land.lhs.true.i15
  %.b4.i16 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i16, label %land.lhs.true2.i17.rcu_read_unlock.exit_crit_edge, label %if.then.i18

land.lhs.true2.i17.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i17
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

if.then.i18:                                      ; preds = %land.lhs.true2.i17
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 724, ptr noundef nonnull @.str.4) #13
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i18, %land.lhs.true2.i17.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i15.rcu_read_unlock.exit_crit_edge, %doi_getdef_return.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !58
  %21 = call i32 @llvm.read_register.i32(metadata !47) #13
  %and.i.i.i.i.i19 = and i32 %21, -16384
  %22 = inttoptr i32 %and.i.i.i.i.i19 to ptr
  %preempt_count.i.i.i.i20 = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %preempt_count.i.i.i.i20 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %preempt_count.i.i.i.i20, align 4
  %sub.i.i.i = add i32 %24, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i20, align 4
  call void @rcu_read_unlock_strict() #13
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  ret ptr %doi_def.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @calipso_doi_putdef(ptr noundef %doi_def) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %doi_def, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end:                                           ; preds = %entry
  %refcount = getelementptr inbounds %struct.calipso_doi, ptr %doi_def, i32 0, i32 2
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !60
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #13
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #13, !srcloc !61
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.end2, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.return_crit_edge, label %if.then10.i.i.i, !prof !62

if.end5.i.i.i.return_crit_edge:                   ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 3) #13
  br label %return

if.end2:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !63
  tail call void @calipso_cache_invalidate()
  %rcu = getelementptr inbounds %struct.calipso_doi, ptr %doi_def, i32 0, i32 4
  tail call void @call_rcu(ptr noundef %rcu, ptr noundef nonnull @calipso_doi_free_rcu) #13
  br label %return

return:                                           ; preds = %if.end2, %if.then10.i.i.i, %if.end5.i.i.i.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @calipso_doi_walk(ptr nocapture noundef %skip_cnt, ptr nocapture noundef readonly %callback, ptr noundef %cb_arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !47) #13
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !57
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 696, ptr noundef nonnull @.str.1) #13
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call = tail call i32 @rcu_read_lock_any_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b35 = load i1, ptr @calipso_doi_walk.__warned, align 1
  br i1 %.b35, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @calipso_doi_walk.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 537, ptr noundef nonnull @.str.3) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %.pn45 = load volatile ptr, ptr @calipso_doi_list, align 4
  %cmp.not47 = icmp eq ptr %.pn45, @calipso_doi_list
  br i1 %cmp.not47, label %do.end.doi_walk_return_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.doi_walk_return_crit_edge:                 ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %doi_walk_return

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end.for.body_crit_edge
  %.pn50 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn45, %do.end.for.body_crit_edge ]
  %ret_val.049 = phi i32 [ %ret_val.1, %for.inc.for.body_crit_edge ], [ -2, %do.end.for.body_crit_edge ]
  %doi_cnt.048 = phi i32 [ %doi_cnt.1, %for.inc.for.body_crit_edge ], [ 0, %do.end.for.body_crit_edge ]
  %iter_doi.051 = getelementptr i8, ptr %.pn50, i32 -12
  %refcount = getelementptr i8, ptr %.pn50, i32 -4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcount, i32 noundef 4) #13
  %4 = ptrtoint ptr %refcount to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %refcount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp10.not = icmp eq i32 %5, 0
  br i1 %cmp10.not, label %for.body.for.inc_crit_edge, label %if.then11

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then11:                                        ; preds = %for.body
  %inc = add i32 %doi_cnt.048, 1
  %6 = ptrtoint ptr %skip_cnt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %skip_cnt, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %doi_cnt.048, i32 %7)
  %cmp12 = icmp ult i32 %doi_cnt.048, %7
  br i1 %cmp12, label %if.then11.for.inc_crit_edge, label %if.end14

if.then11.for.inc_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end14:                                         ; preds = %if.then11
  %call15 = tail call i32 %callback(ptr noundef %iter_doi.051, ptr noundef %cb_arg) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %if.end14.doi_walk_return_crit_edge, label %if.end14.for.inc_crit_edge

if.end14.for.inc_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end14.doi_walk_return_crit_edge:               ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  br label %doi_walk_return

for.inc:                                          ; preds = %if.end14.for.inc_crit_edge, %if.then11.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %doi_cnt.1 = phi i32 [ %inc, %if.then11.for.inc_crit_edge ], [ %inc, %if.end14.for.inc_crit_edge ], [ %doi_cnt.048, %for.body.for.inc_crit_edge ]
  %ret_val.1 = phi i32 [ %ret_val.049, %if.then11.for.inc_crit_edge ], [ %call15, %if.end14.for.inc_crit_edge ], [ %ret_val.049, %for.body.for.inc_crit_edge ]
  %8 = ptrtoint ptr %.pn50 to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn = load volatile ptr, ptr %.pn50, align 4
  %cmp.not = icmp eq ptr %.pn, @calipso_doi_list
  br i1 %cmp.not, label %for.inc.doi_walk_return_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.doi_walk_return_crit_edge:                ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %doi_walk_return

doi_walk_return:                                  ; preds = %for.inc.doi_walk_return_crit_edge, %if.end14.doi_walk_return_crit_edge, %do.end.doi_walk_return_crit_edge
  %doi_cnt.0.lcssa = phi i32 [ 0, %do.end.doi_walk_return_crit_edge ], [ %doi_cnt.048, %if.end14.doi_walk_return_crit_edge ], [ %doi_cnt.1, %for.inc.doi_walk_return_crit_edge ]
  %ret_val.2 = phi i32 [ -2, %do.end.doi_walk_return_crit_edge ], [ %call15, %if.end14.doi_walk_return_crit_edge ], [ %ret_val.1, %for.inc.doi_walk_return_crit_edge ]
  %call.i36 = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i36, label %doi_walk_return.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i39

doi_walk_return.rcu_read_unlock.exit_crit_edge:   ; preds = %doi_walk_return
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true.i39:                                ; preds = %doi_walk_return
  %call1.i37 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i37)
  %tobool.not.i38 = icmp eq i32 %call1.i37, 0
  br i1 %tobool.not.i38, label %land.lhs.true.i39.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i41

land.lhs.true.i39.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i39
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true2.i41:                               ; preds = %land.lhs.true.i39
  %.b4.i40 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i40, label %land.lhs.true2.i41.rcu_read_unlock.exit_crit_edge, label %if.then.i42

land.lhs.true2.i41.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i41
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

if.then.i42:                                      ; preds = %land.lhs.true2.i41
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 724, ptr noundef nonnull @.str.4) #13
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i42, %land.lhs.true2.i41.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i39.rcu_read_unlock.exit_crit_edge, %doi_walk_return.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !58
  %9 = tail call i32 @llvm.read_register.i32(metadata !47) #13
  %and.i.i.i.i.i43 = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i43 to ptr
  %preempt_count.i.i.i.i44 = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i.i.i44 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i.i.i44, align 4
  %sub.i.i.i = add i32 %12, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i44, align 4
  tail call void @rcu_read_unlock_strict() #13
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  %13 = ptrtoint ptr %skip_cnt to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %doi_cnt.0.lcssa, ptr %skip_cnt, align 4
  ret i32 %ret_val.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @calipso_sock_getattr(ptr noundef %sk, ptr noundef %secattr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %skc_state.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %0 = ptrtoint ptr %skc_state.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load volatile i8, ptr %skc_state.i.i, align 2
  %conv.i.i = zext i8 %1 to i32
  %shl.i.i = shl nuw i32 1, %conv.i.i
  %and.i.i = and i32 %shl.i.i, -4161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %entry.inet6_sk.exit_crit_edge, label %cond.true.i

entry.inet6_sk.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %inet6_sk.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %pinet6.i = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 1
  %2 = ptrtoint ptr %pinet6.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pinet6.i, align 8
  br label %inet6_sk.exit

inet6_sk.exit:                                    ; preds = %cond.true.i, %entry.inet6_sk.exit_crit_edge
  %cond.i = phi ptr [ %3, %cond.true.i ], [ null, %entry.inet6_sk.exit_crit_edge ]
  %call1 = tail call fastcc ptr @txopt_get(ptr noundef %cond.i)
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %inet6_sk.exit.txopt_put.exit_crit_edge, label %lor.lhs.false

inet6_sk.exit.txopt_put.exit_crit_edge:           ; preds = %inet6_sk.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %txopt_put.exit

lor.lhs.false:                                    ; preds = %inet6_sk.exit
  %hopopt = getelementptr inbounds %struct.ipv6_txoptions, ptr %call1, i32 0, i32 4
  %4 = ptrtoint ptr %hopopt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hopopt, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %lor.lhs.false.land.lhs.true.i_crit_edge, label %while.body.preheader

lor.lhs.false.land.lhs.true.i_crit_edge:          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true.i

while.body.preheader:                             ; preds = %lor.lhs.false
  %hdrlen = getelementptr inbounds %struct.ipv6_opt_hdr, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %hdrlen to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %hdrlen, align 1
  %conv = zext i8 %7 to i32
  %add = shl nuw nsw i32 %conv, 3
  %shl = add nuw nsw i32 %add, 8
  br label %while.body

while.body:                                       ; preds = %sw.default.while.body_crit_edge, %while.body.preheader
  %offset.048 = phi i32 [ %add17, %sw.default.while.body_crit_edge ], [ 2, %while.body.preheader ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %offset.048)
  %cmp.i = icmp ugt i32 %offset.048, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %shl, i32 %offset.048)
  %cmp2.not.i = icmp ugt i32 %shl, %offset.048
  %or.cond.i = select i1 %cmp.i, i1 %cmp2.not.i, i1 false
  br i1 %or.cond.i, label %if.end.i, label %while.body.land.lhs.true.i_crit_edge

while.body.land.lhs.true.i_crit_edge:             ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true.i

if.end.i:                                         ; preds = %while.body
  %arrayidx.i = getelementptr i8, ptr %5, i32 %offset.048
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp5.i = icmp eq i8 %9, 0
  br i1 %cmp5.i, label %if.end9.thread, label %if.end8.i

if.end8.i:                                        ; preds = %if.end.i
  %add9.i = add nuw i32 %offset.048, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add9.i, i32 %shl)
  %cmp10.not.i = icmp ult i32 %add9.i, %shl
  br i1 %cmp10.not.i, label %if.end13.i, label %if.end8.i.land.lhs.true.i_crit_edge

if.end8.i.land.lhs.true.i_crit_edge:              ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true.i

if.end13.i:                                       ; preds = %if.end8.i
  %arrayidx15.i = getelementptr i8, ptr %5, i32 %add9.i
  %10 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx15.i, align 1
  %conv16.i = zext i8 %11 to i32
  %add17.i = add nuw nsw i32 %conv16.i, 2
  %add18.i = add i32 %add17.i, %offset.048
  call void @__sanitizer_cov_trace_cmp4(i32 %add18.i, i32 %shl)
  %cmp19.i = icmp ugt i32 %add18.i, %shl
  br i1 %cmp19.i, label %if.end13.i.land.lhs.true.i_crit_edge, label %if.end9

if.end13.i.land.lhs.true.i_crit_edge:             ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true.i

if.end9:                                          ; preds = %if.end13.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %13)
  %cond = icmp eq i8 %13, 7
  br i1 %cond, label %sw.bb, label %if.end9.sw.default_crit_edge

if.end9.sw.default_crit_edge:                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.default

if.end9.thread:                                   ; preds = %if.end.i
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %15)
  %cond35 = icmp eq i8 %15, 7
  br i1 %cond35, label %if.end9.thread.land.lhs.true.i_crit_edge, label %if.end9.thread.sw.default_crit_edge

if.end9.thread.sw.default_crit_edge:              ; preds = %if.end9.thread
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.default

if.end9.thread.land.lhs.true.i_crit_edge:         ; preds = %if.end9.thread
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true.i

sw.bb:                                            ; preds = %if.end9
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %11)
  %cmp11 = icmp ult i8 %11, 8
  br i1 %cmp11, label %sw.bb.land.lhs.true.i_crit_edge, label %if.else

sw.bb.land.lhs.true.i_crit_edge:                  ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true.i

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  %call15 = tail call i32 @calipso_opt_getattr(ptr noundef %arrayidx.i, ptr noundef %secattr)
  br label %land.lhs.true.i

sw.default:                                       ; preds = %if.end9.thread.sw.default_crit_edge, %if.end9.sw.default_crit_edge
  %retval.0.i37 = phi i32 [ %add17.i, %if.end9.sw.default_crit_edge ], [ 1, %if.end9.thread.sw.default_crit_edge ]
  %add17 = add i32 %retval.0.i37, %offset.048
  %cmp = icmp slt i32 %add17, %shl
  br i1 %cmp, label %sw.default.while.body_crit_edge, label %sw.default.land.lhs.true.i_crit_edge

sw.default.land.lhs.true.i_crit_edge:             ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true.i

sw.default.while.body_crit_edge:                  ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

land.lhs.true.i:                                  ; preds = %sw.default.land.lhs.true.i_crit_edge, %if.else, %sw.bb.land.lhs.true.i_crit_edge, %if.end9.thread.land.lhs.true.i_crit_edge, %if.end13.i.land.lhs.true.i_crit_edge, %if.end8.i.land.lhs.true.i_crit_edge, %while.body.land.lhs.true.i_crit_edge, %lor.lhs.false.land.lhs.true.i_crit_edge
  %ret_val.046 = phi i32 [ -42, %lor.lhs.false.land.lhs.true.i_crit_edge ], [ %call15, %if.else ], [ -22, %sw.bb.land.lhs.true.i_crit_edge ], [ -42, %sw.default.land.lhs.true.i_crit_edge ], [ -22, %while.body.land.lhs.true.i_crit_edge ], [ -22, %if.end8.i.land.lhs.true.i_crit_edge ], [ -22, %if.end13.i.land.lhs.true.i_crit_edge ], [ -22, %if.end9.thread.land.lhs.true.i_crit_edge ]
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call1, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !60
  tail call void @llvm.prefetch.p0(ptr nonnull %call1, i32 1, i32 3, i32 1) #13
  %16 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call1, ptr nonnull %call1, i32 1, ptr nonnull elementtype(i32) %call1) #13, !srcloc !61
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %do.end.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.txopt_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !62

if.end5.i.i.i.i.txopt_put.exit_crit_edge:         ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %txopt_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call1, i32 noundef 3) #13
  br label %txopt_put.exit

do.end.i:                                         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !63
  %rcu.i = getelementptr inbounds %struct.ipv6_txoptions, ptr %call1, i32 0, i32 8
  tail call void @kvfree_call_rcu(ptr noundef %rcu.i, ptr noundef nonnull inttoptr (i32 28 to ptr)) #13
  br label %txopt_put.exit

txopt_put.exit:                                   ; preds = %do.end.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.txopt_put.exit_crit_edge, %inet6_sk.exit.txopt_put.exit_crit_edge
  %ret_val.043 = phi i32 [ %ret_val.046, %if.end5.i.i.i.i.txopt_put.exit_crit_edge ], [ %ret_val.046, %if.then10.i.i.i.i ], [ %ret_val.046, %do.end.i ], [ -42, %inet6_sk.exit.txopt_put.exit_crit_edge ]
  ret i32 %ret_val.043
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @calipso_sock_setattr(ptr noundef %sk, ptr nocapture noundef readonly %doi_def, ptr nocapture noundef readonly %secattr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %skc_state.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %0 = ptrtoint ptr %skc_state.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load volatile i8, ptr %skc_state.i.i, align 2
  %conv.i.i = zext i8 %1 to i32
  %shl.i.i = shl nuw i32 1, %conv.i.i
  %and.i.i = and i32 %shl.i.i, -4161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %entry.inet6_sk.exit_crit_edge, label %cond.true.i

entry.inet6_sk.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %inet6_sk.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %pinet6.i = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 1
  %2 = ptrtoint ptr %pinet6.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pinet6.i, align 8
  br label %inet6_sk.exit

inet6_sk.exit:                                    ; preds = %cond.true.i, %entry.inet6_sk.exit_crit_edge
  %cond.i = phi ptr [ %3, %cond.true.i ], [ null, %entry.inet6_sk.exit_crit_edge ]
  %call1 = tail call fastcc ptr @txopt_get(ptr noundef %cond.i)
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %if.end.thread, label %land.lhs.true.i

if.end.thread:                                    ; preds = %inet6_sk.exit
  call void @__sanitizer_cov_trace_pc() #15
  %call218 = tail call fastcc ptr @calipso_opt_insert(ptr noundef null, ptr noundef %doi_def, ptr noundef %secattr)
  br label %txopt_put.exit

land.lhs.true.i:                                  ; preds = %inet6_sk.exit
  %hopopt = getelementptr inbounds %struct.ipv6_txoptions, ptr %call1, i32 0, i32 4
  %4 = ptrtoint ptr %hopopt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hopopt, align 4
  %call2 = tail call fastcc ptr @calipso_opt_insert(ptr noundef %5, ptr noundef %doi_def, ptr noundef %secattr)
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call1, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !60
  tail call void @llvm.prefetch.p0(ptr nonnull %call1, i32 1, i32 3, i32 1) #13
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call1, ptr nonnull %call1, i32 1, ptr nonnull elementtype(i32) %call1) #13, !srcloc !61
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %do.end.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.txopt_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !62

if.end5.i.i.i.i.txopt_put.exit_crit_edge:         ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %txopt_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call1, i32 noundef 3) #13
  br label %txopt_put.exit

do.end.i:                                         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !63
  %rcu.i = getelementptr inbounds %struct.ipv6_txoptions, ptr %call1, i32 0, i32 8
  tail call void @kvfree_call_rcu(ptr noundef %rcu.i, ptr noundef nonnull inttoptr (i32 28 to ptr)) #13
  br label %txopt_put.exit

txopt_put.exit:                                   ; preds = %do.end.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.txopt_put.exit_crit_edge, %if.end.thread
  %call219 = phi ptr [ %call218, %if.end.thread ], [ %call2, %if.end5.i.i.i.i.txopt_put.exit_crit_edge ], [ %call2, %if.then10.i.i.i.i ], [ %call2, %do.end.i ]
  %cmp.i = icmp ugt ptr %call219, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end6

if.then4:                                         ; preds = %txopt_put.exit
  call void @__sanitizer_cov_trace_pc() #15
  %7 = ptrtoint ptr %call219 to i32
  br label %cleanup

if.end6:                                          ; preds = %txopt_put.exit
  call void @__sanitizer_cov_trace_pc() #15
  %call7 = tail call fastcc i32 @calipso_opt_update(ptr noundef %sk, ptr noundef %call219)
  tail call void @kfree(ptr noundef %call219) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then4
  %retval.0 = phi i32 [ %7, %if.then4 ], [ %call7, %if.end6 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @calipso_sock_delattr(ptr noundef %sk) #0 align 64 {
entry:
  %new_hop = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %new_hop) #13
  %0 = ptrtoint ptr %new_hop to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %new_hop, align 4, !annotation !65
  %skc_state.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %1 = ptrtoint ptr %skc_state.i.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load volatile i8, ptr %skc_state.i.i, align 2
  %conv.i.i = zext i8 %2 to i32
  %shl.i.i = shl nuw i32 1, %conv.i.i
  %and.i.i = and i32 %shl.i.i, -4161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %entry.inet6_sk.exit_crit_edge, label %cond.true.i

entry.inet6_sk.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %inet6_sk.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %pinet6.i = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 1
  %3 = ptrtoint ptr %pinet6.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pinet6.i, align 8
  br label %inet6_sk.exit

inet6_sk.exit:                                    ; preds = %cond.true.i, %entry.inet6_sk.exit_crit_edge
  %cond.i = phi ptr [ %4, %cond.true.i ], [ null, %entry.inet6_sk.exit_crit_edge ]
  %call1 = tail call fastcc ptr @txopt_get(ptr noundef %cond.i)
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %inet6_sk.exit.txopt_put.exit_crit_edge, label %lor.lhs.false

inet6_sk.exit.txopt_put.exit_crit_edge:           ; preds = %inet6_sk.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %txopt_put.exit

lor.lhs.false:                                    ; preds = %inet6_sk.exit
  %hopopt = getelementptr inbounds %struct.ipv6_txoptions, ptr %call1, i32 0, i32 4
  %5 = ptrtoint ptr %hopopt to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hopopt, align 4
  %tobool2.not = icmp eq ptr %6, null
  br i1 %tobool2.not, label %lor.lhs.false.land.lhs.true.i_crit_edge, label %if.end

lor.lhs.false.land.lhs.true.i_crit_edge:          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true.i

if.end:                                           ; preds = %lor.lhs.false
  %call4 = call fastcc i32 @calipso_opt_del(ptr noundef nonnull %6, ptr noundef nonnull %new_hop)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.land.lhs.true.i_crit_edge

if.end.land.lhs.true.i_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true.i

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %7 = ptrtoint ptr %new_hop to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %new_hop, align 4
  %call8 = tail call fastcc i32 @calipso_opt_update(ptr noundef %sk, ptr noundef %8)
  tail call void @kfree(ptr noundef %8) #13
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.end7, %if.end.land.lhs.true.i_crit_edge, %lor.lhs.false.land.lhs.true.i_crit_edge
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call1, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !60
  tail call void @llvm.prefetch.p0(ptr nonnull %call1, i32 1, i32 3, i32 1) #13
  %9 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call1, ptr nonnull %call1, i32 1, ptr nonnull elementtype(i32) %call1) #13, !srcloc !61
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %do.end.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.txopt_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !62

if.end5.i.i.i.i.txopt_put.exit_crit_edge:         ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %txopt_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call1, i32 noundef 3) #13
  br label %txopt_put.exit

do.end.i:                                         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !63
  %rcu.i = getelementptr inbounds %struct.ipv6_txoptions, ptr %call1, i32 0, i32 8
  tail call void @kvfree_call_rcu(ptr noundef %rcu.i, ptr noundef nonnull inttoptr (i32 28 to ptr)) #13
  br label %txopt_put.exit

txopt_put.exit:                                   ; preds = %do.end.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.txopt_put.exit_crit_edge, %inet6_sk.exit.txopt_put.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %new_hop) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @calipso_req_setattr(ptr noundef %req, ptr nocapture noundef readonly %doi_def, ptr nocapture noundef readonly %secattr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %req, null
  br i1 %tobool.not.i, label %entry.sk_to_full_sk.exit_crit_edge, label %land.lhs.true.i

entry.sk_to_full_sk.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sk_to_full_sk.exit

land.lhs.true.i:                                  ; preds = %entry
  %skc_state.i = getelementptr inbounds %struct.sock_common, ptr %req, i32 0, i32 4
  %0 = ptrtoint ptr %skc_state.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load volatile i8, ptr %skc_state.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %1)
  %cmp.i = icmp eq i8 %1, 12
  br i1 %cmp.i, label %if.then.i, label %land.lhs.true.i.sk_to_full_sk.exit_crit_edge

land.lhs.true.i.sk_to_full_sk.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sk_to_full_sk.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  %2 = getelementptr inbounds %struct.sock_common, ptr %req, i32 0, i32 13
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 8
  br label %sk_to_full_sk.exit

sk_to_full_sk.exit:                               ; preds = %if.then.i, %land.lhs.true.i.sk_to_full_sk.exit_crit_edge, %entry.sk_to_full_sk.exit_crit_edge
  %sk.addr.0.i = phi ptr [ %4, %if.then.i ], [ %req, %land.lhs.true.i.sk_to_full_sk.exit_crit_edge ], [ null, %entry.sk_to_full_sk.exit_crit_edge ]
  %5 = getelementptr inbounds %struct.inet_request_sock, ptr %req, i32 0, i32 3
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %sk_to_full_sk.exit.if.else_crit_edge, label %land.lhs.true

sk_to_full_sk.exit.if.else_crit_edge:             ; preds = %sk_to_full_sk.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

land.lhs.true:                                    ; preds = %sk_to_full_sk.exit
  %hopopt = getelementptr inbounds %struct.ipv6_txoptions, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %hopopt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hopopt, align 4
  %tobool4.not = icmp eq ptr %9, null
  br i1 %tobool4.not, label %land.lhs.true.if.else_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %sk_to_full_sk.exit.if.else_crit_edge
  br label %if.end

if.end:                                           ; preds = %if.else, %land.lhs.true.if.end_crit_edge
  %old.0 = phi ptr [ null, %if.else ], [ %9, %land.lhs.true.if.end_crit_edge ]
  %call7 = tail call fastcc ptr @calipso_opt_insert(ptr noundef %old.0, ptr noundef %doi_def, ptr noundef %secattr)
  %cmp.i58 = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i58, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %10 = ptrtoint ptr %call7 to i32
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %5, align 8
  %call13 = tail call ptr @ipv6_renew_options(ptr noundef %sk.addr.0.i, ptr noundef %12, i32 noundef 54, ptr noundef %call7) #13
  tail call void @kfree(ptr noundef %call7) #13
  %cmp.i59 = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i59, label %if.then15, label %if.end17

if.then15:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  %13 = ptrtoint ptr %call13 to i32
  br label %cleanup

if.end17:                                         ; preds = %if.end11
  %call.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %5, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !66
  %14 = ptrtoint ptr %call13 to i32
  tail call void @llvm.prefetch.p0(ptr %5, i32 1, i32 3, i32 1) #13
  %15 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 %14, ptr %5) #13, !srcloc !67
  %asmresult.i = extractvalue { i32, i32 } %15, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !68
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i)
  %tobool34.not = icmp eq i32 %asmresult.i, 0
  br i1 %tobool34.not, label %if.end17.cleanup_crit_edge, label %land.lhs.true.i61

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true.i61:                                ; preds = %if.end17
  %16 = inttoptr i32 %asmresult.i to ptr
  %tot_len = getelementptr inbounds %struct.ipv6_txoptions, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %tot_len to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tot_len, align 4
  %sk_omem_alloc = getelementptr inbounds %struct.sock, ptr %sk.addr.0.i, i32 0, i32 20
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sk_omem_alloc, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %sk_omem_alloc, i32 1, i32 3, i32 1) #13
  %19 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sk_omem_alloc, ptr %sk_omem_alloc, i32 %18, ptr elementtype(i32) %sk_omem_alloc) #13, !srcloc !69
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %16, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !60
  tail call void @llvm.prefetch.p0(ptr nonnull %16, i32 1, i32 3, i32 1) #13
  %20 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %16, ptr nonnull %16, i32 1, ptr nonnull elementtype(i32) %16) #13, !srcloc !61
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %20, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %do.end.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %land.lhs.true.i61
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !62

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @refcount_warn_saturate(ptr noundef nonnull %16, i32 noundef 3) #13
  br label %cleanup

do.end.i:                                         ; preds = %land.lhs.true.i61
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !63
  %rcu.i = getelementptr inbounds %struct.ipv6_txoptions, ptr %16, i32 0, i32 8
  tail call void @kvfree_call_rcu(ptr noundef %rcu.i, ptr noundef nonnull inttoptr (i32 28 to ptr)) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %if.then15, %if.then9
  %retval.0 = phi i32 [ %10, %if.then9 ], [ %13, %if.then15 ], [ 0, %if.end17.cleanup_crit_edge ], [ 0, %if.end5.i.i.i.i.cleanup_crit_edge ], [ 0, %if.then10.i.i.i.i ], [ 0, %do.end.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @calipso_req_delattr(ptr noundef %req) #0 align 64 {
entry:
  %new = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %new) #13
  %0 = ptrtoint ptr %new to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %new, align 4, !annotation !65
  %tobool.not.i = icmp eq ptr %req, null
  br i1 %tobool.not.i, label %entry.sk_to_full_sk.exit_crit_edge, label %land.lhs.true.i

entry.sk_to_full_sk.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sk_to_full_sk.exit

land.lhs.true.i:                                  ; preds = %entry
  %skc_state.i = getelementptr inbounds %struct.sock_common, ptr %req, i32 0, i32 4
  %1 = ptrtoint ptr %skc_state.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load volatile i8, ptr %skc_state.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %2)
  %cmp.i = icmp eq i8 %2, 12
  br i1 %cmp.i, label %if.then.i, label %land.lhs.true.i.sk_to_full_sk.exit_crit_edge

land.lhs.true.i.sk_to_full_sk.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sk_to_full_sk.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  %3 = getelementptr inbounds %struct.sock_common, ptr %req, i32 0, i32 13
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  br label %sk_to_full_sk.exit

sk_to_full_sk.exit:                               ; preds = %if.then.i, %land.lhs.true.i.sk_to_full_sk.exit_crit_edge, %entry.sk_to_full_sk.exit_crit_edge
  %sk.addr.0.i = phi ptr [ %5, %if.then.i ], [ %req, %land.lhs.true.i.sk_to_full_sk.exit_crit_edge ], [ null, %entry.sk_to_full_sk.exit_crit_edge ]
  %6 = getelementptr inbounds %struct.inet_request_sock, ptr %req, i32 0, i32 3
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 8
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %sk_to_full_sk.exit.cleanup_crit_edge, label %lor.lhs.false

sk_to_full_sk.exit.cleanup_crit_edge:             ; preds = %sk_to_full_sk.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %sk_to_full_sk.exit
  %hopopt = getelementptr inbounds %struct.ipv6_txoptions, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %hopopt to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hopopt, align 4
  %tobool4.not = icmp eq ptr %10, null
  br i1 %tobool4.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call7 = call fastcc i32 @calipso_opt_del(ptr noundef nonnull %10, ptr noundef nonnull %new)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %11 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %6, align 8
  %13 = ptrtoint ptr %new to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %new, align 4
  %call12 = tail call ptr @ipv6_renew_options(ptr noundef %sk.addr.0.i, ptr noundef %12, i32 noundef 54, ptr noundef %14) #13
  %cmp.i51 = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i51, label %if.end10.if.end34_crit_edge, label %if.then14

if.end10.if.end34_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end34

if.then14:                                        ; preds = %if.end10
  %call.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %6, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !70
  %15 = ptrtoint ptr %call12 to i32
  tail call void @llvm.prefetch.p0(ptr %6, i32 1, i32 3, i32 1) #13
  %16 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 %15, ptr %6) #13, !srcloc !67
  %asmresult.i = extractvalue { i32, i32 } %16, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !71
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i)
  %tobool31.not = icmp eq i32 %asmresult.i, 0
  br i1 %tobool31.not, label %if.then14.if.end34_crit_edge, label %land.lhs.true.i53

if.then14.if.end34_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end34

land.lhs.true.i53:                                ; preds = %if.then14
  %17 = inttoptr i32 %asmresult.i to ptr
  %tot_len = getelementptr inbounds %struct.ipv6_txoptions, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %tot_len to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tot_len, align 4
  %sk_omem_alloc = getelementptr inbounds %struct.sock, ptr %sk.addr.0.i, i32 0, i32 20
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sk_omem_alloc, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %sk_omem_alloc, i32 1, i32 3, i32 1) #13
  %20 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sk_omem_alloc, ptr %sk_omem_alloc, i32 %19, ptr elementtype(i32) %sk_omem_alloc) #13, !srcloc !69
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %17, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !60
  tail call void @llvm.prefetch.p0(ptr nonnull %17, i32 1, i32 3, i32 1) #13
  %21 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %17, ptr nonnull %17, i32 1, ptr nonnull elementtype(i32) %17) #13, !srcloc !61
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %21, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %do.end.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %land.lhs.true.i53
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.if.end34_crit_edge, label %if.then10.i.i.i.i, !prof !62

if.end5.i.i.i.i.if.end34_crit_edge:               ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end34

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @refcount_warn_saturate(ptr noundef nonnull %17, i32 noundef 3) #13
  br label %if.end34

do.end.i:                                         ; preds = %land.lhs.true.i53
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !63
  %rcu.i = getelementptr inbounds %struct.ipv6_txoptions, ptr %17, i32 0, i32 8
  tail call void @kvfree_call_rcu(ptr noundef %rcu.i, ptr noundef nonnull inttoptr (i32 28 to ptr)) #13
  br label %if.end34

if.end34:                                         ; preds = %do.end.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.end34_crit_edge, %if.then14.if.end34_crit_edge, %if.end10.if.end34_crit_edge
  tail call void @kfree(ptr noundef %14) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %sk_to_full_sk.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %new) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @calipso_opt_getattr(ptr noundef %calipso, ptr noundef %secattr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr i8, ptr %calipso, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %arrayidx1 = getelementptr i8, ptr %calipso, i32 6
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx1, align 1
  %conv2 = zext i8 %3 to i32
  %mul = shl nuw nsw i32 %conv2, 2
  %add = add nuw nsw i32 %mul, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv)
  %cmp = icmp ugt i32 %add, %conv
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %calipso, i32 2
  %4 = load i32, ptr @calipso_cache_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i57 = icmp eq i32 %4, 0
  br i1 %tobool.not.i57, label %if.end.if.end9_crit_edge, label %if.end.i

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end9

if.end.i:                                         ; preds = %if.end
  %call.i58 = tail call fastcc i32 @calipso_map_cache_hash(ptr noundef %add.ptr, i32 noundef %conv) #13
  %and.i = and i32 %call.i58, 127
  %5 = load ptr, ptr @calipso_cache, align 4
  %arrayidx.i = getelementptr %struct.calipso_map_cache_bkt, ptr %5, i32 %and.i
  tail call void @_raw_spin_lock_bh(ptr noundef %arrayidx.i) #13
  %6 = load ptr, ptr @calipso_cache, align 4
  %list.i = getelementptr %struct.calipso_map_cache_bkt, ptr %6, i32 %and.i, i32 2
  %7 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn91.i = load ptr, ptr %list.i, align 4
  %cmp.not93.i = icmp eq ptr %.pn91.i, %list.i
  br i1 %cmp.not93.i, label %if.end.i.calipso_cache_check.exit.thread86_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.calipso_cache_check.exit.thread86_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %calipso_cache_check.exit.thread86

for.body.i:                                       ; preds = %if.end45.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %.pn95.i = phi ptr [ %.pn.i, %if.end45.i.for.body.i_crit_edge ], [ %.pn91.i, %if.end.i.for.body.i_crit_edge ]
  %prev_entry.094.i = phi ptr [ %entry1.096.i, %if.end45.i.for.body.i_crit_edge ], [ null, %if.end.i.for.body.i_crit_edge ]
  %entry1.096.i = getelementptr i8, ptr %.pn95.i, i32 -20
  %8 = ptrtoint ptr %entry1.096.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %entry1.096.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %call.i58)
  %cmp7.i = icmp eq i32 %9, %call.i58
  br i1 %cmp7.i, label %land.lhs.true.i59, label %for.body.i.if.end45.i_crit_edge

for.body.i.if.end45.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end45.i

land.lhs.true.i59:                                ; preds = %for.body.i
  %key_len8.i = getelementptr i8, ptr %.pn95.i, i32 -12
  %10 = ptrtoint ptr %key_len8.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %key_len8.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %conv)
  %cmp9.i = icmp eq i32 %11, %conv
  br i1 %cmp9.i, label %land.lhs.true10.i, label %land.lhs.true.i59.if.end45.i_crit_edge

land.lhs.true.i59.if.end45.i_crit_edge:           ; preds = %land.lhs.true.i59
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end45.i

land.lhs.true10.i:                                ; preds = %land.lhs.true.i59
  %key11.i = getelementptr i8, ptr %.pn95.i, i32 -16
  %12 = ptrtoint ptr %key11.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %key11.i, align 4
  %bcmp.i = tail call i32 @bcmp(ptr %13, ptr %add.ptr, i32 %conv) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %cmp13.i = icmp eq i32 %bcmp.i, 0
  br i1 %cmp13.i, label %if.then14.i, label %land.lhs.true10.i.if.end45.i_crit_edge

land.lhs.true10.i.if.end45.i_crit_edge:           ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end45.i

if.then14.i:                                      ; preds = %land.lhs.true10.i
  %activity.i = getelementptr i8, ptr %.pn95.i, i32 -4
  %14 = ptrtoint ptr %activity.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %activity.i, align 4
  %add.i = add i32 %15, 1
  store i32 %add.i, ptr %activity.i, align 4
  %lsm_data.i = getelementptr i8, ptr %.pn95.i, i32 -8
  %16 = ptrtoint ptr %lsm_data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %lsm_data.i, align 4
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %17, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %17, i32 1, i32 3, i32 1) #13
  %18 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %17, ptr %17, i32 1, ptr elementtype(i32) %17) #13, !srcloc !72
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then14.i.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !73

if.then14.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then14.i
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %19 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %19)
  %.not.i.i.i.i = icmp sgt i32 %19, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.refcount_inc.exit.i_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !62

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.refcount_inc.exit.i_crit_edge:    ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %refcount_inc.exit.i

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then14.i.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then14.i.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %17, i32 noundef %.sink.i.i.i.i) #13
  br label %refcount_inc.exit.i

refcount_inc.exit.i:                              ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.refcount_inc.exit.i_crit_edge
  %20 = ptrtoint ptr %lsm_data.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %lsm_data.i, align 4
  %cache.i = getelementptr inbounds %struct.netlbl_lsm_secattr, ptr %secattr, i32 0, i32 3
  %22 = ptrtoint ptr %cache.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %cache.i, align 4
  %23 = ptrtoint ptr %secattr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %secattr, align 4
  %or.i = or i32 %24, 2
  store i32 %or.i, ptr %secattr, align 4
  %type.i = getelementptr inbounds %struct.netlbl_lsm_secattr, ptr %secattr, i32 0, i32 1
  %25 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 7, ptr %type.i, align 4
  %tobool16.not.i = icmp eq ptr %prev_entry.094.i, null
  br i1 %tobool16.not.i, label %refcount_inc.exit.i.calipso_cache_check.exit_crit_edge, label %if.end20.i

refcount_inc.exit.i.calipso_cache_check.exit_crit_edge: ; preds = %refcount_inc.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %calipso_cache_check.exit

if.end20.i:                                       ; preds = %refcount_inc.exit.i
  %activity21.i = getelementptr inbounds %struct.calipso_map_cache_entry, ptr %prev_entry.094.i, i32 0, i32 4
  %26 = ptrtoint ptr %activity21.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %activity21.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp22.not.i = icmp eq i32 %27, 0
  br i1 %cmp22.not.i, label %if.end20.i.if.end25.i_crit_edge, label %if.then23.i

if.end20.i.if.end25.i_crit_edge:                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end25.i

if.then23.i:                                      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i = add i32 %27, -1
  %28 = ptrtoint ptr %activity21.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %sub.i, ptr %activity21.i, align 4
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.then23.i, %if.end20.i.if.end25.i_crit_edge
  %29 = ptrtoint ptr %activity.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %activity.i, align 4
  %31 = ptrtoint ptr %activity21.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %activity21.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %32)
  %cmp28.i = icmp ugt i32 %30, %32
  %sub32.i = sub i32 %30, %32
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %sub32.i)
  %cmp33.i = icmp ugt i32 %sub32.i, 10
  %or.cond.i = and i1 %cmp28.i, %cmp33.i
  br i1 %or.cond.i, label %if.then34.i, label %if.end25.i.calipso_cache_check.exit_crit_edge

if.end25.i.calipso_cache_check.exit_crit_edge:    ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %calipso_cache_check.exit

if.then34.i:                                      ; preds = %if.end25.i
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn95.i, i32 0, i32 1
  %33 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %prev.i, align 4
  %35 = ptrtoint ptr %.pn95.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %.pn95.i, align 4
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %34, ptr %prev1.i.i, align 4
  %38 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %36, ptr %34, align 4
  %list39.i = getelementptr inbounds %struct.calipso_map_cache_entry, ptr %prev_entry.094.i, i32 0, i32 5
  %prev40.i = getelementptr inbounds %struct.calipso_map_cache_entry, ptr %prev_entry.094.i, i32 0, i32 5, i32 1
  %39 = ptrtoint ptr %prev40.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %prev40.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %.pn95.i, ptr noundef %40, ptr noundef %list39.i) #13
  br i1 %call.i.i, label %if.end.i.i, label %if.then34.i.calipso_cache_check.exit_crit_edge

if.then34.i.calipso_cache_check.exit_crit_edge:   ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %calipso_cache_check.exit

if.end.i.i:                                       ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #15
  %41 = ptrtoint ptr %prev40.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %.pn95.i, ptr %prev40.i, align 4
  %42 = ptrtoint ptr %.pn95.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %list39.i, ptr %.pn95.i, align 4
  %43 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %40, ptr %prev.i, align 4
  %44 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %.pn95.i, ptr %40, align 4
  br label %calipso_cache_check.exit

if.end45.i:                                       ; preds = %land.lhs.true10.i.if.end45.i_crit_edge, %land.lhs.true.i59.if.end45.i_crit_edge, %for.body.i.if.end45.i_crit_edge
  %45 = ptrtoint ptr %.pn95.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %.pn.i = load ptr, ptr %.pn95.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %list.i
  br i1 %cmp.not.i, label %if.end45.i.calipso_cache_check.exit.thread86_crit_edge, label %if.end45.i.for.body.i_crit_edge

if.end45.i.for.body.i_crit_edge:                  ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

if.end45.i.calipso_cache_check.exit.thread86_crit_edge: ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %calipso_cache_check.exit.thread86

calipso_cache_check.exit.thread86:                ; preds = %if.end45.i.calipso_cache_check.exit.thread86_crit_edge, %if.end.i.calipso_cache_check.exit.thread86_crit_edge
  %arrayidx4.i89 = getelementptr %struct.calipso_map_cache_bkt, ptr %6, i32 %and.i
  tail call void @_raw_spin_unlock_bh(ptr noundef %arrayidx4.i89) #13
  br label %if.end9

calipso_cache_check.exit:                         ; preds = %if.end.i.i, %if.then34.i.calipso_cache_check.exit_crit_edge, %if.end25.i.calipso_cache_check.exit_crit_edge, %refcount_inc.exit.i.calipso_cache_check.exit_crit_edge
  %46 = load ptr, ptr @calipso_cache, align 4
  %arrayidx4.i = getelementptr %struct.calipso_map_cache_bkt, ptr %46, i32 %and.i
  tail call void @_raw_spin_unlock_bh(ptr noundef %arrayidx4.i) #13
  br label %cleanup

if.end9:                                          ; preds = %calipso_cache_check.exit.thread86, %if.end.if.end9_crit_edge
  %47 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %47, i32 4)
  %48 = load i32, ptr %add.ptr, align 1
  %49 = tail call i32 @llvm.read_register.i32(metadata !47) #13
  %and.i.i.i.i.i = and i32 %49, -16384
  %50 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %52, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !57
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i, label %if.end9.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end9.rcu_read_lock.exit_crit_edge:             ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end9
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 696, ptr noundef nonnull @.str.1) #13
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end9.rcu_read_lock.exit_crit_edge
  %call.i60 = tail call i32 @rcu_read_lock_any_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i60)
  %tobool.not.i61 = icmp eq i32 %call.i60, 0
  br i1 %tobool.not.i61, label %land.lhs.true.i63, label %rcu_read_lock.exit.do.end.i_crit_edge

rcu_read_lock.exit.do.end.i_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

land.lhs.true.i63:                                ; preds = %rcu_read_lock.exit
  %call1.i62 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i62)
  %tobool2.not.i = icmp eq i32 %call1.i62, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i63.do.end.i_crit_edge, label %land.lhs.true3.i

land.lhs.true.i63.do.end.i_crit_edge:             ; preds = %land.lhs.true.i63
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i63
  %.b28.i = load i1, ptr @calipso_doi_search.__warned, align 1
  br i1 %.b28.i, label %land.lhs.true3.i.do.end.i_crit_edge, label %if.then.i64

land.lhs.true3.i.do.end.i_crit_edge:              ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

if.then.i64:                                      ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @calipso_doi_search.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 329, ptr noundef nonnull @.str.3) #13
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i64, %land.lhs.true3.i.do.end.i_crit_edge, %land.lhs.true.i63.do.end.i_crit_edge, %rcu_read_lock.exit.do.end.i_crit_edge
  %.pn29.i = load volatile ptr, ptr @calipso_doi_list, align 4
  %cmp.not31.i = icmp eq ptr %.pn29.i, @calipso_doi_list
  br i1 %cmp.not31.i, label %do.end.i.getattr_return_crit_edge, label %do.end.i.for.body.i65_crit_edge

do.end.i.for.body.i65_crit_edge:                  ; preds = %do.end.i
  br label %for.body.i65

do.end.i.getattr_return_crit_edge:                ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %getattr_return

for.body.i65:                                     ; preds = %for.inc.i.for.body.i65_crit_edge, %do.end.i.for.body.i65_crit_edge
  %.pn32.i = phi ptr [ %.pn.i66, %for.inc.i.for.body.i65_crit_edge ], [ %.pn29.i, %do.end.i.for.body.i65_crit_edge ]
  %iter.033.i = getelementptr i8, ptr %.pn32.i, i32 -12
  %53 = ptrtoint ptr %iter.033.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %iter.033.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %54, i32 %48)
  %cmp10.i = icmp eq i32 %54, %48
  br i1 %cmp10.i, label %land.lhs.true11.i, label %for.body.i65.for.inc.i_crit_edge

for.body.i65.for.inc.i_crit_edge:                 ; preds = %for.body.i65
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

land.lhs.true11.i:                                ; preds = %for.body.i65
  %refcount.i = getelementptr i8, ptr %.pn32.i, i32 -4
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcount.i, i32 noundef 4) #13
  %55 = ptrtoint ptr %refcount.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %refcount.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool13.not.i = icmp eq i32 %56, 0
  br i1 %tobool13.not.i, label %land.lhs.true11.i.for.inc.i_crit_edge, label %calipso_doi_search.exit

land.lhs.true11.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true11.i.for.inc.i_crit_edge, %for.body.i65.for.inc.i_crit_edge
  %57 = ptrtoint ptr %.pn32.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %.pn.i66 = load volatile ptr, ptr %.pn32.i, align 4
  %cmp.not.i67 = icmp eq ptr %.pn.i66, @calipso_doi_list
  br i1 %cmp.not.i67, label %for.inc.i.getattr_return_crit_edge, label %for.inc.i.for.body.i65_crit_edge

for.inc.i.for.body.i65_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i65

for.inc.i.getattr_return_crit_edge:               ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %getattr_return

calipso_doi_search.exit:                          ; preds = %land.lhs.true11.i
  %iter.033.i.le = getelementptr i8, ptr %.pn32.i, i32 -12
  %tobool.not = icmp eq ptr %iter.033.i.le, null
  br i1 %tobool.not, label %calipso_doi_search.exit.getattr_return_crit_edge, label %if.end14

calipso_doi_search.exit.getattr_return_crit_edge: ; preds = %calipso_doi_search.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %getattr_return

if.end14:                                         ; preds = %calipso_doi_search.exit
  %arrayidx15 = getelementptr i8, ptr %calipso, i32 7
  %58 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx15, align 1
  %conv16 = zext i8 %59 to i32
  %attr = getelementptr inbounds %struct.netlbl_lsm_secattr, ptr %secattr, i32 0, i32 4
  %lvl = getelementptr inbounds %struct.netlbl_lsm_secattr, ptr %secattr, i32 0, i32 4, i32 0, i32 1
  %60 = ptrtoint ptr %lvl to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %conv16, ptr %lvl, align 4
  %61 = ptrtoint ptr %secattr to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %secattr, align 4
  %or = or i32 %62, 4
  store i32 %or, ptr %secattr, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool17.not = icmp eq i8 %3, 0
  br i1 %tobool17.not, label %if.end14.if.end35_crit_edge, label %if.then18

if.end14.if.end35_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end35

if.then18:                                        ; preds = %if.end14
  %add.ptr19 = getelementptr i8, ptr %calipso, i32 10
  %mul.i = shl nuw nsw i32 %conv2, 5
  br label %for.cond.i

for.cond.i:                                       ; preds = %if.end3.i.for.cond.i_crit_edge, %if.then18
  %spot.0.i = phi i32 [ -1, %if.then18 ], [ %call.i70, %if.end3.i.for.cond.i_crit_edge ]
  %add.i69 = add i32 %spot.0.i, 1
  %call.i70 = tail call i32 @netlbl_bitmap_walk(ptr noundef %add.ptr19, i32 noundef %mul.i, i32 noundef %add.i69, i8 noundef zeroext 1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i70)
  %cmp.i = icmp slt i32 %call.i70, 0
  br i1 %cmp.i, label %if.then.i71, label %if.end3.i

if.then.i71:                                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call.i70)
  %cmp1.i = icmp eq i32 %call.i70, -2
  br i1 %cmp1.i, label %if.then.i71.if.then23_crit_edge, label %if.end26

if.then.i71.if.then23_crit_edge:                  ; preds = %if.then.i71
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then23

if.end3.i:                                        ; preds = %for.cond.i
  %call4.i = tail call i32 @netlbl_catmap_setbit(ptr noundef %attr, i32 noundef %call.i70, i32 noundef 2592) #13
  %cmp5.not.i = icmp eq i32 %call4.i, 0
  br i1 %cmp5.not.i, label %if.end3.i.for.cond.i_crit_edge, label %if.end3.i.if.then23_crit_edge

if.end3.i.if.then23_crit_edge:                    ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then23

if.end3.i.for.cond.i_crit_edge:                   ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.i

if.then23:                                        ; preds = %if.end3.i.if.then23_crit_edge, %if.then.i71.if.then23_crit_edge
  %retval.0.i72.ph = phi i32 [ -14, %if.then.i71.if.then23_crit_edge ], [ %call4.i, %if.end3.i.if.then23_crit_edge ]
  %63 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %attr, align 4
  %tobool.not3.i = icmp eq ptr %64, null
  br i1 %tobool.not3.i, label %if.then23.getattr_return_crit_edge, label %if.then23.while.body.i_crit_edge

if.then23.while.body.i_crit_edge:                 ; preds = %if.then23
  br label %while.body.i

if.then23.getattr_return_crit_edge:               ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #15
  br label %getattr_return

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.then23.while.body.i_crit_edge
  %catmap.addr.04.i = phi ptr [ %66, %while.body.i.while.body.i_crit_edge ], [ %64, %if.then23.while.body.i_crit_edge ]
  %next.i = getelementptr inbounds %struct.netlbl_lsm_catmap, ptr %catmap.addr.04.i, i32 0, i32 2
  %65 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %next.i, align 8
  tail call void @kfree(ptr noundef nonnull %catmap.addr.04.i) #13
  %tobool.not.i73 = icmp eq ptr %66, null
  br i1 %tobool.not.i73, label %while.body.i.getattr_return_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i

while.body.i.getattr_return_crit_edge:            ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %getattr_return

if.end26:                                         ; preds = %if.then.i71
  %67 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %attr, align 4
  %tobool30.not = icmp eq ptr %68, null
  br i1 %tobool30.not, label %if.end26.if.end35_crit_edge, label %if.then31

if.end26.if.end35_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end35

if.then31:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #15
  %69 = ptrtoint ptr %secattr to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %secattr, align 4
  %or33 = or i32 %70, 8
  store i32 %or33, ptr %secattr, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.then31, %if.end26.if.end35_crit_edge, %if.end14.if.end35_crit_edge
  %ret_val.0 = phi i32 [ 0, %if.then31 ], [ 0, %if.end26.if.end35_crit_edge ], [ -42, %if.end14.if.end35_crit_edge ]
  %type = getelementptr inbounds %struct.netlbl_lsm_secattr, ptr %secattr, i32 0, i32 1
  %71 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 7, ptr %type, align 4
  br label %getattr_return

getattr_return:                                   ; preds = %if.end35, %while.body.i.getattr_return_crit_edge, %if.then23.getattr_return_crit_edge, %calipso_doi_search.exit.getattr_return_crit_edge, %for.inc.i.getattr_return_crit_edge, %do.end.i.getattr_return_crit_edge
  %ret_val.1 = phi i32 [ %ret_val.0, %if.end35 ], [ -42, %calipso_doi_search.exit.getattr_return_crit_edge ], [ %retval.0.i72.ph, %if.then23.getattr_return_crit_edge ], [ -42, %do.end.i.getattr_return_crit_edge ], [ %retval.0.i72.ph, %while.body.i.getattr_return_crit_edge ], [ -42, %for.inc.i.getattr_return_crit_edge ]
  %call.i74 = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i74, label %getattr_return.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i77

getattr_return.rcu_read_unlock.exit_crit_edge:    ; preds = %getattr_return
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true.i77:                                ; preds = %getattr_return
  %call1.i75 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i75)
  %tobool.not.i76 = icmp eq i32 %call1.i75, 0
  br i1 %tobool.not.i76, label %land.lhs.true.i77.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i79

land.lhs.true.i77.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i77
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true2.i79:                               ; preds = %land.lhs.true.i77
  %.b4.i78 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i78, label %land.lhs.true2.i79.rcu_read_unlock.exit_crit_edge, label %if.then.i80

land.lhs.true2.i79.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i79
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

if.then.i80:                                      ; preds = %land.lhs.true2.i79
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 724, ptr noundef nonnull @.str.4) #13
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i80, %land.lhs.true2.i79.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i77.rcu_read_unlock.exit_crit_edge, %getattr_return.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !58
  %72 = tail call i32 @llvm.read_register.i32(metadata !47) #13
  %and.i.i.i.i.i81 = and i32 %72, -16384
  %73 = inttoptr i32 %and.i.i.i.i.i81 to ptr
  %preempt_count.i.i.i.i82 = getelementptr inbounds %struct.thread_info, ptr %73, i32 0, i32 1
  %74 = ptrtoint ptr %preempt_count.i.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load volatile i32, ptr %preempt_count.i.i.i.i82, align 4
  %sub.i.i.i = add i32 %75, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i82, align 4
  tail call void @rcu_read_unlock_strict() #13
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %calipso_cache_check.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret_val.1, %rcu_read_unlock.exit ], [ -22, %entry.cleanup_crit_edge ], [ 0, %calipso_cache_check.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @calipso_skbuff_optptr(ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %0 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %2 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %3 to i32
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %conv.i.i
  %nexthdr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 3
  %4 = ptrtoint ptr %nexthdr to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %nexthdr, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp.not = icmp eq i8 %5, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call2 = tail call i32 @ipv6_find_tlv(ptr noundef %skb, i32 noundef 40, i32 noundef 7) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call2)
  %cmp3 = icmp sgt i32 %call2, -1
  %add.ptr = getelementptr i8, ptr %add.ptr.i.i, i32 %call2
  %spec.select = select i1 %cmp3, ptr %add.ptr, ptr null
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ %spec.select, %if.end ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @calipso_skbuff_setattr(ptr noundef %skb, ptr nocapture noundef readonly %doi_def, ptr nocapture noundef readonly %secattr) #0 align 64 {
entry:
  %buf = alloca [260 x i8], align 1
  %start = alloca i32, align 4
  %end = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 260, ptr nonnull %buf) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %start) #13
  %0 = ptrtoint ptr %start to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %start, align 4, !annotation !65
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %end) #13
  %1 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %end, align 4, !annotation !65
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %2 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %4 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %5 to i32
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 %conv.i.i
  %nexthdr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 3
  %6 = ptrtoint ptr %nexthdr to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %nexthdr, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp = icmp eq i8 %7, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %add.ptr = getelementptr %struct.ipv6hdr, ptr %add.ptr.i.i, i32 1
  %call2 = call fastcc i32 @calipso_opt_find(ptr noundef %add.ptr, ptr noundef nonnull %start, ptr noundef nonnull %end)
  %8 = zext i32 %call2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call2, label %if.then.cleanup_crit_edge [
    i32 0, label %if.then.if.end6thread-pre-split_crit_edge
    i32 -2, label %if.then.if.end6thread-pre-split_crit_edge130
  ]

if.then.if.end6thread-pre-split_crit_edge130:     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6thread-pre-split

if.then.if.end6thread-pre-split_crit_edge:        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6thread-pre-split

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %9 = ptrtoint ptr %start to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %start, align 4
  %10 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %end, align 4
  br label %if.end6

if.end6thread-pre-split:                          ; preds = %if.then.if.end6thread-pre-split_crit_edge, %if.then.if.end6thread-pre-split_crit_edge130
  %11 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pr = load i32, ptr %start, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.end6thread-pre-split, %if.else
  %12 = phi i32 [ %.pr, %if.end6thread-pre-split ], [ 0, %if.else ]
  %13 = call ptr @memset(ptr %buf, i32 0, i32 260)
  %and = and i32 %12, 3
  %call8 = call fastcc i32 @calipso_genopt(ptr noundef nonnull %buf, i32 noundef %and, i32 noundef 260, ptr noundef %doi_def, ptr noundef %secattr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %if.end6.cleanup_crit_edge, label %if.end12

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end12:                                         ; preds = %if.end6
  %add = add i32 %call8, %12
  %and13 = and i32 %add, 4
  %14 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %end, align 4
  %add15 = add i32 %15, %and13
  %and16 = and i32 %add15, 7
  %sub = sub i32 %add, %15
  %add17 = add i32 %and16, %sub
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %16 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data.i, align 4
  %18 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %17 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %19 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %add19 = add i32 %sub.ptr.sub.i, %add17
  %cloned.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %20 = ptrtoint ptr %cloned.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %bf.load.i.i = load i8, ptr %cloned.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool.not.i.i = icmp sgt i8 %bf.load.i.i, -1
  br i1 %tobool.not.i.i, label %if.end12.skb_cloned.exit.i_crit_edge, label %land.rhs.i.i

if.end12.skb_cloned.exit.i_crit_edge:             ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  br label %skb_cloned.exit.i

land.rhs.i.i:                                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %21 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %end.i.i.i, align 4
  %dataref.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %22, i32 0, i32 10
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %dataref.i.i, i32 noundef 4) #13
  %23 = ptrtoint ptr %dataref.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %dataref.i.i, align 4
  %and.i.i = and i32 %24, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i.i)
  %cmp.i.not.i = icmp eq i32 %and.i.i, 1
  br label %skb_cloned.exit.i

skb_cloned.exit.i:                                ; preds = %land.rhs.i.i, %if.end12.skb_cloned.exit.i_crit_edge
  %25 = phi i1 [ true, %if.end12.skb_cloned.exit.i_crit_edge ], [ %cmp.i.not.i, %land.rhs.i.i ]
  %26 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %data.i, align 4
  %28 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %27 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %29 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i.i.i, i32 %add19)
  %tobool.not.i3.i = icmp uge i32 %sub.ptr.sub.i.i.i, %add19
  %or.cond.i.i = and i1 %25, %tobool.not.i3.i
  br i1 %or.cond.i.i, label %skb_cloned.exit.i.if.end24_crit_edge, label %skb_cow.exit

skb_cloned.exit.i.if.end24_crit_edge:             ; preds = %skb_cloned.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end24

skb_cow.exit:                                     ; preds = %skb_cloned.exit.i
  %30 = call i32 @llvm.usub.sat.i32(i32 %add19, i32 %sub.ptr.sub.i.i.i) #13
  %add.i.i = add i32 %30, 127
  %and.i4.i = and i32 %add.i.i, -128
  %call4.i.i = call i32 @pskb_expand_head(ptr noundef %skb, i32 noundef %and.i4.i, i32 noundef 0, i32 noundef 2592) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %cmp21 = icmp slt i32 %call4.i.i, 0
  br i1 %cmp21, label %skb_cow.exit.cleanup_crit_edge, label %skb_cow.exit.if.end24_crit_edge

skb_cow.exit.if.end24_crit_edge:                  ; preds = %skb_cow.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end24

skb_cow.exit.cleanup_crit_edge:                   ; preds = %skb_cow.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end24:                                         ; preds = %skb_cow.exit.if.end24_crit_edge, %skb_cloned.exit.i.if.end24_crit_edge
  %31 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %head.i.i, align 8
  %33 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i116 = zext i16 %34 to i32
  %add.ptr.i.i117 = getelementptr i8, ptr %32, i32 %conv.i.i116
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add17)
  %tobool26.not = icmp eq i32 %add17, 0
  br i1 %tobool26.not, label %if.end24.if.end43_crit_edge, label %if.then27

if.end24.if.end43_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end43

if.then27:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add17)
  %cmp28 = icmp sgt i32 %add17, 0
  br i1 %cmp28, label %if.then30, label %if.else32

if.then30:                                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #15
  %call31 = call ptr @skb_push(ptr noundef %skb, i32 noundef %add17) #13
  %.pre = sub nsw i32 0, %add17
  br label %if.end35

if.else32:                                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #15
  %sub33 = sub i32 0, %add17
  %call34 = call ptr @skb_pull(ptr noundef %skb, i32 noundef %sub33) #13
  br label %if.end35

if.end35:                                         ; preds = %if.else32, %if.then30
  %idx.neg.pre-phi = phi i32 [ %sub33, %if.else32 ], [ %.pre, %if.then30 ]
  %add.ptr36 = getelementptr i8, ptr %add.ptr.i.i117, i32 %idx.neg.pre-phi
  %add37 = add i32 %12, 40
  %35 = call ptr @memmove(ptr %add.ptr36, ptr %add.ptr.i.i117, i32 %add37)
  %36 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %data.i, align 4
  %38 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i120 = ptrtoint ptr %37 to i32
  %sub.ptr.rhs.cast.i121 = ptrtoint ptr %39 to i32
  %sub.ptr.sub.i122 = sub i32 %sub.ptr.lhs.cast.i120, %sub.ptr.rhs.cast.i121
  %conv.i = trunc i32 %sub.ptr.sub.i122 to i16
  %40 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %conv.i, ptr %network_header.i.i, align 4
  %conv.i.i125 = and i32 %sub.ptr.sub.i122, 65535
  %add.ptr.i.i126 = getelementptr i8, ptr %39, i32 %conv.i.i125
  %payload_len = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i126, i32 0, i32 2
  %41 = ptrtoint ptr %payload_len to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %payload_len, align 4
  %43 = trunc i32 %add17 to i16
  %conv41 = add i16 %42, %43
  store i16 %conv41, ptr %payload_len, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.end35, %if.end24.if.end43_crit_edge
  %ip6_hdr.0 = phi ptr [ %add.ptr.i.i126, %if.end35 ], [ %add.ptr.i.i117, %if.end24.if.end43_crit_edge ]
  %add.ptr44 = getelementptr %struct.ipv6hdr, ptr %ip6_hdr.0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp45 = icmp eq i32 %12, 0
  br i1 %cmp45, label %if.then47, label %if.else54

if.then47:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #15
  %nexthdr49 = getelementptr inbounds %struct.ipv6hdr, ptr %ip6_hdr.0, i32 0, i32 3
  %44 = ptrtoint ptr %nexthdr49 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %nexthdr49, align 2
  %46 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %45, ptr %buf, align 1
  %div = sdiv i32 %add17, 8
  %47 = trunc i32 %div to i8
  %conv52 = add i8 %47, -1
  %hdrlen = getelementptr inbounds %struct.ipv6_opt_hdr, ptr %buf, i32 0, i32 1
  %48 = ptrtoint ptr %hdrlen to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %conv52, ptr %hdrlen, align 1
  store i8 0, ptr %nexthdr49, align 2
  br label %if.end60

if.else54:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #15
  %div55 = sdiv i32 %add17, 8
  %hdrlen56 = getelementptr %struct.ipv6hdr, ptr %ip6_hdr.0, i32 1, i32 1
  %49 = ptrtoint ptr %hdrlen56 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %hdrlen56, align 1
  %51 = trunc i32 %div55 to i8
  %conv59 = add i8 %50, %51
  store i8 %conv59, ptr %hdrlen56, align 1
  br label %if.end60

if.end60:                                         ; preds = %if.else54, %if.then47
  %add.ptr61 = getelementptr i8, ptr %add.ptr44, i32 %12
  %add.ptr64 = getelementptr i8, ptr %buf, i32 %and
  %52 = call ptr @memcpy(ptr %add.ptr61, ptr %add.ptr64, i32 %call8)
  %53 = zext i32 %and16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %53, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %and16, label %sw.default.i [
    i32 0, label %if.end60.cleanup_crit_edge
    i32 1, label %sw.bb.i
  ]

if.end60.cleanup_crit_edge:                       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb.i:                                          ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx.i = getelementptr i8, ptr %add.ptr44, i32 %add
  %54 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 0, ptr %arrayidx.i, align 1
  br label %cleanup

sw.default.i:                                     ; preds = %if.end60
  %arrayidx38.i = getelementptr i8, ptr %add.ptr44, i32 %add
  %55 = ptrtoint ptr %arrayidx38.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 1, ptr %arrayidx38.i, align 1
  %sub.i = add nsw i32 %and16, -2
  %conv.i127 = trunc i32 %sub.i to i8
  %add.i = add i32 %add, 1
  %arrayidx39.i = getelementptr i8, ptr %add.ptr44, i32 %add.i
  %56 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %conv.i127, ptr %arrayidx39.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and16)
  %cmp40.i = icmp ugt i32 %and16, 2
  br i1 %cmp40.i, label %if.then42.i, label %sw.default.i.cleanup_crit_edge

sw.default.i.cleanup_crit_edge:                   ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then42.i:                                      ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr43.i = getelementptr i8, ptr %arrayidx38.i, i32 2
  %57 = call ptr @memset(ptr %add.ptr43.i, i32 0, i32 %sub.i)
  br label %cleanup

cleanup:                                          ; preds = %if.then42.i, %sw.default.i.cleanup_crit_edge, %sw.bb.i, %if.end60.cleanup_crit_edge, %skb_cow.exit.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.then.cleanup_crit_edge ], [ %call8, %if.end6.cleanup_crit_edge ], [ %call4.i.i, %skb_cow.exit.cleanup_crit_edge ], [ %and16, %if.end60.cleanup_crit_edge ], [ 0, %sw.bb.i ], [ 0, %sw.default.i.cleanup_crit_edge ], [ 0, %if.then42.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %end) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %start) #13
  call void @llvm.lifetime.end.p0(i64 260, ptr nonnull %buf) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @calipso_skbuff_delattr(ptr noundef %skb) #0 align 64 {
entry:
  %start = alloca i32, align 4
  %end = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %start) #13
  %0 = ptrtoint ptr %start to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %start, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %end) #13
  %1 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %end, align 4
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %2 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %head.i.i.i, align 8
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %4 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i.i = zext i16 %5 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %3, i32 %conv.i.i.i
  %nexthdr.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i.i, i32 0, i32 3
  %6 = ptrtoint ptr %nexthdr.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %nexthdr.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp.not.i = icmp eq i8 %7, 0
  br i1 %cmp.not.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %call2.i = tail call i32 @ipv6_find_tlv(ptr noundef %skb, i32 noundef 40, i32 noundef 7) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3.i = icmp slt i32 %call2.i, 0
  %add.ptr.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %call2.i
  %tobool.not = icmp eq ptr %add.ptr.i, null
  %or.cond = select i1 %cmp3.i, i1 true, i1 %tobool.not
  br i1 %or.cond, label %if.end.i.cleanup_crit_edge, label %if.end

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %8 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data.i, align 4
  %10 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %head.i.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %9 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %11 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %cloned.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %12 = ptrtoint ptr %cloned.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load.i.i = load i8, ptr %cloned.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool.not.i.i = icmp sgt i8 %bf.load.i.i, -1
  br i1 %tobool.not.i.i, label %if.end.skb_cloned.exit.i_crit_edge, label %land.rhs.i.i

if.end.skb_cloned.exit.i_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %skb_cloned.exit.i

land.rhs.i.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %13 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %end.i.i.i, align 4
  %dataref.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %14, i32 0, i32 10
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dataref.i.i, i32 noundef 4) #13
  %15 = ptrtoint ptr %dataref.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %dataref.i.i, align 4
  %and.i.i = and i32 %16, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i.i)
  %cmp.i.not.i = icmp eq i32 %and.i.i, 1
  br label %skb_cloned.exit.i

skb_cloned.exit.i:                                ; preds = %land.rhs.i.i, %if.end.skb_cloned.exit.i_crit_edge
  %17 = phi i1 [ true, %if.end.skb_cloned.exit.i_crit_edge ], [ %cmp.i.not.i, %land.rhs.i.i ]
  %18 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data.i, align 4
  %20 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %head.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %19 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %21 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i.i.i, i32 %sub.ptr.sub.i)
  %tobool.not.i3.i = icmp uge i32 %sub.ptr.sub.i.i.i, %sub.ptr.sub.i
  %or.cond.i.i = and i1 %17, %tobool.not.i3.i
  br i1 %or.cond.i.i, label %skb_cloned.exit.i.if.end4_crit_edge, label %skb_cow.exit

skb_cloned.exit.i.if.end4_crit_edge:              ; preds = %skb_cloned.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4

skb_cow.exit:                                     ; preds = %skb_cloned.exit.i
  %22 = tail call i32 @llvm.usub.sat.i32(i32 %sub.ptr.sub.i, i32 %sub.ptr.sub.i.i.i) #13
  %add.i.i = add i32 %22, 127
  %and.i4.i = and i32 %add.i.i, -128
  %call4.i.i = tail call i32 @pskb_expand_head(ptr noundef %skb, i32 noundef %and.i4.i, i32 noundef 0, i32 noundef 2592) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %cmp = icmp slt i32 %call4.i.i, 0
  br i1 %cmp, label %skb_cow.exit.cleanup_crit_edge, label %skb_cow.exit.if.end4_crit_edge

skb_cow.exit.if.end4_crit_edge:                   ; preds = %skb_cow.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4

skb_cow.exit.cleanup_crit_edge:                   ; preds = %skb_cow.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end4:                                          ; preds = %skb_cow.exit.if.end4_crit_edge, %skb_cloned.exit.i.if.end4_crit_edge
  %23 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %head.i.i.i, align 8
  %25 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i = zext i16 %26 to i32
  %add.ptr.i.i = getelementptr i8, ptr %24, i32 %conv.i.i
  %add.ptr = getelementptr %struct.ipv6hdr, ptr %add.ptr.i.i, i32 1
  %hdrlen = getelementptr %struct.ipv6hdr, ptr %add.ptr.i.i, i32 1, i32 1
  %27 = ptrtoint ptr %hdrlen to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %hdrlen, align 1
  %conv = zext i8 %28 to i32
  %add = shl nuw nsw i32 %conv, 3
  %shl = add nuw nsw i32 %add, 8
  %call6 = call fastcc i32 @calipso_opt_find(ptr noundef %add.ptr, ptr noundef nonnull %start, ptr noundef nonnull %end)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end9:                                          ; preds = %if.end4
  %29 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %start, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %30)
  %cmp10 = icmp eq i32 %30, 2
  br i1 %cmp10, label %land.lhs.true, label %if.end9.if.else_crit_edge

if.end9.if.else_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

land.lhs.true:                                    ; preds = %if.end9
  %31 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %shl)
  %cmp12 = icmp eq i32 %32, %shl
  br i1 %cmp12, label %if.end28.thread, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

if.end28.thread:                                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %33 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %add.ptr, align 1
  %nexthdr15 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 3
  %35 = ptrtoint ptr %nexthdr15 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %nexthdr15, align 2
  br label %if.then30

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end9.if.else_crit_edge
  %36 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %end, align 4
  %sub = sub i32 %37, %30
  %and = and i32 %sub, -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool16.not = icmp eq i32 %and, 0
  br i1 %tobool16.not, label %if.else.if.end22_crit_edge, label %if.then17

if.else.if.end22_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end22

if.then17:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %div63 = lshr i32 %sub, 3
  %38 = trunc i32 %div63 to i8
  %conv21 = sub i8 %28, %38
  %39 = ptrtoint ptr %hdrlen to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv21, ptr %hdrlen, align 1
  br label %if.end22

if.end22:                                         ; preds = %if.then17, %if.else.if.end22_crit_edge
  %and24 = and i32 %sub, 7
  %add25 = add i32 %30, 40
  %add26 = add i32 %add25, %and24
  %40 = zext i32 %and24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %and24, label %sw.default.i [
    i32 0, label %if.end22.if.end28_crit_edge
    i32 1, label %sw.bb.i
  ]

if.end22.if.end28_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end28

sw.bb.i:                                          ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx.i = getelementptr i8, ptr %add.ptr, i32 %30
  %41 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %arrayidx.i, align 1
  br label %if.end28

sw.default.i:                                     ; preds = %if.end22
  %arrayidx38.i = getelementptr i8, ptr %add.ptr, i32 %30
  %42 = ptrtoint ptr %arrayidx38.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 1, ptr %arrayidx38.i, align 1
  %sub.i = add nsw i32 %and24, -2
  %conv.i = trunc i32 %sub.i to i8
  %add.i = add i32 %30, 1
  %arrayidx39.i = getelementptr i8, ptr %add.ptr, i32 %add.i
  %43 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %conv.i, ptr %arrayidx39.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and24)
  %cmp40.i = icmp ugt i32 %and24, 2
  br i1 %cmp40.i, label %if.then42.i, label %sw.default.i.if.end28_crit_edge

sw.default.i.if.end28_crit_edge:                  ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end28

if.then42.i:                                      ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr43.i = getelementptr i8, ptr %arrayidx38.i, i32 2
  %44 = call ptr @memset(ptr %add.ptr43.i, i32 0, i32 %sub.i)
  br label %if.end28

if.end28:                                         ; preds = %if.then42.i, %sw.default.i.if.end28_crit_edge, %sw.bb.i, %if.end22.if.end28_crit_edge
  br i1 %tobool16.not, label %if.end28.cleanup_crit_edge, label %if.end28.if.then30_crit_edge

if.end28.if.then30_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then30

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then30:                                        ; preds = %if.end28.if.then30_crit_edge, %if.end28.thread
  %size.079 = phi i32 [ 40, %if.end28.thread ], [ %add26, %if.end28.if.then30_crit_edge ]
  %delta.078 = phi i32 [ %shl, %if.end28.thread ], [ %and, %if.end28.if.then30_crit_edge ]
  %call31 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef %delta.078) #13
  %add.ptr32 = getelementptr i8, ptr %add.ptr.i.i, i32 %delta.078
  %45 = call ptr @memmove(ptr %add.ptr32, ptr %add.ptr.i.i, i32 %size.079)
  %46 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %data.i, align 4
  %48 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %head.i.i.i, align 8
  %sub.ptr.lhs.cast.i67 = ptrtoint ptr %47 to i32
  %sub.ptr.rhs.cast.i68 = ptrtoint ptr %49 to i32
  %sub.ptr.sub.i69 = sub i32 %sub.ptr.lhs.cast.i67, %sub.ptr.rhs.cast.i68
  %conv.i70 = trunc i32 %sub.ptr.sub.i69 to i16
  %50 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %conv.i70, ptr %network_header.i.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then30, %if.end28.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %skb_cow.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4.i.i, %skb_cow.exit.cleanup_crit_edge ], [ %call6, %if.end4.cleanup_crit_edge ], [ 0, %if.then30 ], [ 0, %if.end28.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %end) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %start) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @calipso_cache_add(ptr noundef %calipso_ptr, ptr nocapture noundef readonly %secattr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @calipso_cache_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, ptr @calipso_cache_bucketsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp slt i32 %1, 1
  br i1 %cmp, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %arrayidx = getelementptr i8, ptr %calipso_ptr, i32 1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %3 to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 2848, i32 noundef 28) #17
  %tobool2.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %add.ptr = getelementptr i8, ptr %calipso_ptr, i32 2
  %call5 = tail call ptr @kmemdup(ptr noundef %add.ptr, i32 noundef %conv, i32 noundef 2592) #13
  %key = getelementptr inbounds %struct.calipso_map_cache_entry, ptr %call7.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call5, ptr %key, align 4
  %tobool7.not = icmp eq ptr %call5, null
  br i1 %tobool7.not, label %if.then33, label %if.end9

if.end9:                                          ; preds = %if.end4
  %key_len = getelementptr inbounds %struct.calipso_map_cache_entry, ptr %call7.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %key_len to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv, ptr %key_len, align 8
  %call10 = tail call fastcc i32 @calipso_map_cache_hash(ptr noundef %calipso_ptr, i32 noundef %conv)
  %7 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call10, ptr %call7.i.i, align 8
  %cache = getelementptr inbounds %struct.netlbl_lsm_secattr, ptr %secattr, i32 0, i32 3
  %8 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cache, align 4
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %9, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %9, i32 1, i32 3, i32 1) #13
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %9, ptr %9, i32 1, ptr elementtype(i32) %9) #13, !srcloc !72
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %if.end9.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !73

if.end9.if.end15.sink.split.i.i.i_crit_edge:      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %if.end9
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %11 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %.not.i.i.i = icmp sgt i32 %11, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.refcount_inc.exit_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !62

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.refcount_inc.exit_crit_edge:        ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %refcount_inc.exit

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %if.end9.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %if.end9.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %9, i32 noundef %.sink.i.i.i) #13
  br label %refcount_inc.exit

refcount_inc.exit:                                ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.refcount_inc.exit_crit_edge
  %12 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cache, align 4
  %lsm_data = getelementptr inbounds %struct.calipso_map_cache_entry, ptr %call7.i.i, i32 0, i32 3
  %14 = ptrtoint ptr %lsm_data to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %lsm_data, align 4
  %15 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %call7.i.i, align 8
  %and = and i32 %16, 127
  %17 = load ptr, ptr @calipso_cache, align 4
  %arrayidx13 = getelementptr %struct.calipso_map_cache_bkt, ptr %17, i32 %and
  tail call void @_raw_spin_lock_bh(ptr noundef %arrayidx13) #13
  %18 = load ptr, ptr @calipso_cache, align 4
  %size = getelementptr %struct.calipso_map_cache_bkt, ptr %18, i32 %and, i32 1
  %19 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %size, align 4
  %21 = load i32, ptr @calipso_cache_bucketsize, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %21)
  %cmp15 = icmp ult i32 %20, %21
  br i1 %cmp15, label %if.then17, label %if.else

if.then17:                                        ; preds = %refcount_inc.exit
  %list = getelementptr inbounds %struct.calipso_map_cache_entry, ptr %call7.i.i, i32 0, i32 5
  %list19 = getelementptr %struct.calipso_map_cache_bkt, ptr %18, i32 %and, i32 2
  %22 = ptrtoint ptr %list19 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %list19, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %list19, ptr noundef %23) #13
  br i1 %call.i.i, label %if.end.i.i, label %if.then17.list_add.exit_crit_edge

if.then17.list_add.exit_crit_edge:                ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #15
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %list, ptr %prev1.i.i, align 4
  %25 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %23, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.calipso_map_cache_entry, ptr %call7.i.i, i32 0, i32 5, i32 1
  %26 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %list19, ptr %prev3.i.i, align 8
  %27 = ptrtoint ptr %list19 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %list, ptr %list19, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.then17.list_add.exit_crit_edge
  %28 = load ptr, ptr @calipso_cache, align 4
  %size21 = getelementptr %struct.calipso_map_cache_bkt, ptr %28, i32 %and, i32 1
  %29 = ptrtoint ptr %size21 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %size21, align 4
  %add = add i32 %30, 1
  store i32 %add, ptr %size21, align 4
  br label %if.end29

if.else:                                          ; preds = %refcount_inc.exit
  %prev = getelementptr %struct.calipso_map_cache_bkt, ptr %18, i32 %and, i32 2, i32 1
  %31 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %prev, align 4
  %add.ptr24 = getelementptr i8, ptr %32, i32 -20
  %call.i.i61 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %32) #13
  br i1 %call.i.i61, label %if.end.i.i62, label %if.else.list_del.exit_crit_edge

if.else.list_del.exit_crit_edge:                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit

if.end.i.i62:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %prev.i.i, align 4
  %35 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %32, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %34, ptr %prev1.i.i.i, align 4
  %38 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %36, ptr %34, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i62, %if.else.list_del.exit_crit_edge
  %39 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr inttoptr (i32 256 to ptr), ptr %32, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %32, i32 0, i32 1
  %40 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %list26 = getelementptr inbounds %struct.calipso_map_cache_entry, ptr %call7.i.i, i32 0, i32 5
  %41 = load ptr, ptr @calipso_cache, align 4
  %list28 = getelementptr %struct.calipso_map_cache_bkt, ptr %41, i32 %and, i32 2
  %42 = ptrtoint ptr %list28 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %list28, align 4
  %call.i.i63 = tail call zeroext i1 @__list_add_valid(ptr noundef %list26, ptr noundef %list28, ptr noundef %43) #13
  br i1 %call.i.i63, label %if.end.i.i66, label %list_del.exit.list_add.exit67_crit_edge

list_del.exit.list_add.exit67_crit_edge:          ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_add.exit67

if.end.i.i66:                                     ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #15
  %prev1.i.i64 = getelementptr inbounds %struct.list_head, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %prev1.i.i64 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %list26, ptr %prev1.i.i64, align 4
  %45 = ptrtoint ptr %list26 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %43, ptr %list26, align 4
  %prev3.i.i65 = getelementptr inbounds %struct.calipso_map_cache_entry, ptr %call7.i.i, i32 0, i32 5, i32 1
  %46 = ptrtoint ptr %prev3.i.i65 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %list28, ptr %prev3.i.i65, align 8
  %47 = ptrtoint ptr %list28 to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %list26, ptr %list28, align 4
  br label %list_add.exit67

list_add.exit67:                                  ; preds = %if.end.i.i66, %list_del.exit.list_add.exit67_crit_edge
  tail call fastcc void @calipso_cache_entry_free(ptr noundef %add.ptr24)
  br label %if.end29

if.end29:                                         ; preds = %list_add.exit67, %list_add.exit
  %48 = load ptr, ptr @calipso_cache, align 4
  %arrayidx30 = getelementptr %struct.calipso_map_cache_bkt, ptr %48, i32 %and
  tail call void @_raw_spin_unlock_bh(ptr noundef %arrayidx30) #13
  br label %cleanup

if.then33:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @calipso_cache_entry_free(ptr noundef nonnull %call7.i.i)
  br label %cleanup

cleanup:                                          ; preds = %if.then33, %if.end29, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end29 ], [ -12, %if.then33 ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @netlbl_audit_start(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @audit_log_format(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @audit_log_end(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @calipso_doi_free_rcu(ptr noundef %entry1) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %entry1, i32 -20
  tail call void @kfree(ptr noundef %add.ptr) #13
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @txopt_get(ptr noundef %np) unnamed_addr #4 align 64 {
entry:
  %old.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  %0 = tail call i32 @llvm.read_register.i32(metadata !47) #13
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !57
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 696, ptr noundef nonnull @.str.1) #13
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %opt1 = getelementptr inbounds %struct.ipv6_pinfo, ptr %np, i32 0, i32 18
  %4 = ptrtoint ptr %opt1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %opt1, align 4
  %call = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end8_crit_edge

rcu_read_lock.exit.do.end8_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end8

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end8_crit_edge, label %land.lhs.true5

land.lhs.true.do.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end8

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b19 = load i1, ptr @txopt_get.__warned, align 1
  br i1 %.b19, label %land.lhs.true5.do.end8_crit_edge, label %if.then

land.lhs.true5.do.end8_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end8

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @txopt_get.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 379, ptr noundef nonnull @.str.12) #13
  br label %do.end8

do.end8:                                          ; preds = %if.then, %land.lhs.true5.do.end8_crit_edge, %land.lhs.true.do.end8_crit_edge, %rcu_read_lock.exit.do.end8_crit_edge
  %tobool10.not = icmp eq ptr %5, null
  br i1 %tobool10.not, label %do.end8.if.end15_crit_edge, label %if.then11

do.end8.if.end15_crit_edge:                       ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

if.then11:                                        ; preds = %do.end8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i) #13
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull %5, i32 noundef 4) #13
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %5, align 4
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, %if.then11
  %8 = phi i32 [ %7, %if.then11 ], [ %asmresult3.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge ]
  %9 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %old.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i.i.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i.i.i, label %do.body.i.i.i.if.end4.i.i.i_crit_edge, label %do.cond.i.i.i

do.body.i.i.i.if.end4.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4.i.i.i

do.cond.i.i.i:                                    ; preds = %do.body.i.i.i
  %add.i.i.i20 = add i32 %8, 1
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %5, i32 noundef 4) #13
  %call.i3.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i, i32 noundef 4) #13
  %10 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %old.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr nonnull %5, i32 1, i32 3, i32 1) #13
  br label %do.body.i.i.i.i.i.i

do.body.i.i.i.i.i.i:                              ; preds = %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i
  %12 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr nonnull elementtype(i32) %5, ptr nonnull %5, i32 %11, i32 %add.i.i.i20, ptr nonnull elementtype(i32) %5) #13, !srcloc !64
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %12, 0
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i, label %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i:       ; preds = %do.body.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i = extractvalue { i32, i32 } %12, 1
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i, %11
  br i1 %cmp.not.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, !prof !62

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4.i.i.i

if.end4.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, %do.body.i.i.i.if.end4.i.i.i_crit_edge
  %13 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %old.i.i.i, align 4
  %add5.i.i.i = add i32 %14, 1
  %15 = or i32 %add5.i.i.i, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %.not.i.i.i = icmp sgt i32 %15, -1
  br i1 %.not.i.i.i, label %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge, label %if.then10.i.i.i, !prof !62

if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge: ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %refcount_inc_not_zero.exit

if.then10.i.i.i:                                  ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @refcount_warn_saturate(ptr noundef nonnull %5, i32 noundef 0) #13
  br label %refcount_inc_not_zero.exit

refcount_inc_not_zero.exit:                       ; preds = %if.then10.i.i.i, %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge
  %16 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %old.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool12.i.i.i.not = icmp eq i32 %17, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i) #13
  %. = select i1 %tobool12.i.i.i.not, ptr null, ptr %5
  br label %if.end15

if.end15:                                         ; preds = %refcount_inc_not_zero.exit, %do.end8.if.end15_crit_edge
  %opt.0 = phi ptr [ null, %do.end8.if.end15_crit_edge ], [ %., %refcount_inc_not_zero.exit ]
  %call.i21 = call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i21, label %if.end15.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i24

if.end15.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true.i24:                                ; preds = %if.end15
  %call1.i22 = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i22)
  %tobool.not.i23 = icmp eq i32 %call1.i22, 0
  br i1 %tobool.not.i23, label %land.lhs.true.i24.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i26

land.lhs.true.i24.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i24
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true2.i26:                               ; preds = %land.lhs.true.i24
  %.b4.i25 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i25, label %land.lhs.true2.i26.rcu_read_unlock.exit_crit_edge, label %if.then.i27

land.lhs.true2.i26.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i26
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

if.then.i27:                                      ; preds = %land.lhs.true2.i26
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 724, ptr noundef nonnull @.str.4) #13
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i27, %land.lhs.true2.i26.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i24.rcu_read_unlock.exit_crit_edge, %if.end15.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !58
  %18 = call i32 @llvm.read_register.i32(metadata !47) #13
  %and.i.i.i.i.i28 = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i.i.i28 to ptr
  %preempt_count.i.i.i.i29 = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i.i.i29 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i.i.i29, align 4
  %sub.i.i.i = add i32 %21, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i29, align 4
  call void @rcu_read_unlock_strict() #13
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  ret ptr %opt.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @calipso_opt_insert(ptr noundef readonly %hop, ptr nocapture noundef readonly %doi_def, ptr nocapture noundef readonly %secattr) unnamed_addr #0 align 64 {
entry:
  %start = alloca i32, align 4
  %end = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %start) #13
  %0 = ptrtoint ptr %start to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %start, align 4, !annotation !65
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %end) #13
  %1 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %end, align 4, !annotation !65
  %tobool.not = icmp eq ptr %hop, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %hdrlen = getelementptr inbounds %struct.ipv6_opt_hdr, ptr %hop, i32 0, i32 1
  %2 = ptrtoint ptr %hdrlen to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %hdrlen, align 1
  %call = call fastcc i32 @calipso_opt_find(ptr noundef nonnull %hop, ptr noundef nonnull %start, ptr noundef nonnull %end)
  %4 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %call, label %if.then3 [
    i32 0, label %if.then.if.end5thread-pre-split_crit_edge
    i32 -2, label %if.then.if.end5thread-pre-split_crit_edge79
  ]

if.then.if.end5thread-pre-split_crit_edge79:      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end5thread-pre-split

if.then.if.end5thread-pre-split_crit_edge:        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end5thread-pre-split

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %5 = inttoptr i32 %call to ptr
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %6 = ptrtoint ptr %start to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2, ptr %start, align 4
  %7 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %end, align 4
  br label %if.end5

if.end5thread-pre-split:                          ; preds = %if.then.if.end5thread-pre-split_crit_edge, %if.then.if.end5thread-pre-split_crit_edge79
  %conv = zext i8 %3 to i32
  %add = shl nuw nsw i32 %conv, 3
  %shl = add nuw nsw i32 %add, 8
  %8 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pr = load i32, ptr %start, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.end5thread-pre-split, %if.else
  %9 = phi i32 [ %.pr, %if.end5thread-pre-split ], [ 2, %if.else ]
  %hop_len.0 = phi i32 [ %shl, %if.end5thread-pre-split ], [ 0, %if.else ]
  %add6 = add i32 %hop_len.0, %9
  %10 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %end, align 4
  %sub = sub i32 %add6, %11
  %add7 = add i32 %sub, 264
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add7, i32 noundef 2848) #19
  %tobool9.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool9.not, label %if.end5.cleanup_crit_edge, label %if.end12

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end12:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp13 = icmp ugt i32 %9, 2
  br i1 %cmp13, label %if.then15, label %if.end12.if.end16_crit_edge

if.end12.if.end16_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end16

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  %12 = call ptr @memcpy(ptr %call9.i.i, ptr %hop, i32 %9)
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %if.end12.if.end16_crit_edge
  %call17 = tail call fastcc i32 @calipso_genopt(ptr noundef nonnull %call9.i.i, i32 noundef %9, i32 noundef %add7, ptr noundef %doi_def, ptr noundef %secattr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %if.then20, label %if.end22

if.then20:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #13
  %13 = inttoptr i32 %call17 to ptr
  br label %cleanup

if.end22:                                         ; preds = %if.end16
  %add23 = add i32 %call17, %9
  %and = and i32 %add23, 4
  %add25 = add i32 %and, %11
  %and26 = and i32 %add25, 7
  %14 = zext i32 %and26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %and26, label %sw.default.i [
    i32 0, label %if.end22.calipso_pad_write.exit_crit_edge
    i32 1, label %sw.bb.i
  ]

if.end22.calipso_pad_write.exit_crit_edge:        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #15
  br label %calipso_pad_write.exit

sw.bb.i:                                          ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx.i = getelementptr i8, ptr %call9.i.i, i32 %add23
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %arrayidx.i, align 1
  br label %calipso_pad_write.exit

sw.default.i:                                     ; preds = %if.end22
  %arrayidx38.i = getelementptr i8, ptr %call9.i.i, i32 %add23
  %16 = ptrtoint ptr %arrayidx38.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %arrayidx38.i, align 1
  %sub.i = add nsw i32 %and26, -2
  %conv.i = trunc i32 %sub.i to i8
  %add.i = add i32 %add23, 1
  %arrayidx39.i = getelementptr i8, ptr %call9.i.i, i32 %add.i
  %17 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv.i, ptr %arrayidx39.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and26)
  %cmp40.i = icmp ugt i32 %and26, 2
  br i1 %cmp40.i, label %if.then42.i, label %sw.default.i.calipso_pad_write.exit_crit_edge

sw.default.i.calipso_pad_write.exit_crit_edge:    ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %calipso_pad_write.exit

if.then42.i:                                      ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr43.i = getelementptr i8, ptr %arrayidx38.i, i32 2
  %18 = call ptr @memset(ptr %add.ptr43.i, i32 0, i32 %sub.i)
  br label %calipso_pad_write.exit

calipso_pad_write.exit:                           ; preds = %if.then42.i, %sw.default.i.calipso_pad_write.exit_crit_edge, %sw.bb.i, %if.end22.calipso_pad_write.exit_crit_edge
  %add28 = add i32 %and26, %add23
  call void @__sanitizer_cov_trace_cmp4(i32 %hop_len.0, i32 %11)
  %cmp29.not = icmp eq i32 %hop_len.0, %11
  br i1 %cmp29.not, label %calipso_pad_write.exit.if.end36_crit_edge, label %if.then31

calipso_pad_write.exit.if.end36_crit_edge:        ; preds = %calipso_pad_write.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end36

if.then31:                                        ; preds = %calipso_pad_write.exit
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr = getelementptr i8, ptr %call9.i.i, i32 %add28
  %add.ptr32 = getelementptr i8, ptr %hop, i32 %11
  %sub33 = sub i32 %hop_len.0, %11
  %19 = call ptr @memcpy(ptr %add.ptr, ptr %add.ptr32, i32 %sub33)
  %add35 = add i32 %add28, %sub33
  br label %if.end36

if.end36:                                         ; preds = %if.then31, %calipso_pad_write.exit.if.end36_crit_edge
  %buf_len.0 = phi i32 [ %add35, %if.then31 ], [ %add28, %calipso_pad_write.exit.if.end36_crit_edge ]
  %20 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %call9.i.i, align 128
  %div75 = lshr i32 %buf_len.0, 3
  %21 = trunc i32 %div75 to i8
  %conv38 = add i8 %21, -1
  %hdrlen39 = getelementptr inbounds %struct.ipv6_opt_hdr, ptr %call9.i.i, i32 0, i32 1
  %22 = ptrtoint ptr %hdrlen39 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv38, ptr %hdrlen39, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %if.then20, %if.end5.cleanup_crit_edge, %if.then3
  %retval.0 = phi ptr [ %5, %if.then3 ], [ %13, %if.then20 ], [ %call9.i.i, %if.end36 ], [ inttoptr (i32 -12 to ptr), %if.end5.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %end) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %start) #13
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @calipso_opt_update(ptr noundef %sk, ptr noundef %hop) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %skc_state.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %0 = ptrtoint ptr %skc_state.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load volatile i8, ptr %skc_state.i.i, align 2
  %conv.i.i = zext i8 %1 to i32
  %shl.i.i = shl nuw i32 1, %conv.i.i
  %and.i.i = and i32 %shl.i.i, -4161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %entry.inet6_sk.exit_crit_edge, label %cond.true.i

entry.inet6_sk.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %inet6_sk.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %pinet6.i = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 1
  %2 = ptrtoint ptr %pinet6.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pinet6.i, align 8
  br label %inet6_sk.exit

inet6_sk.exit:                                    ; preds = %cond.true.i, %entry.inet6_sk.exit_crit_edge
  %cond.i = phi ptr [ %3, %cond.true.i ], [ null, %entry.inet6_sk.exit_crit_edge ]
  %call1 = tail call fastcc ptr @txopt_get(ptr noundef %cond.i)
  %call2 = tail call ptr @ipv6_renew_options(ptr noundef %sk, ptr noundef %call1, i32 noundef 54, ptr noundef %hop) #13
  %tobool.not.i = icmp eq ptr %call1, null
  br i1 %tobool.not.i, label %inet6_sk.exit.txopt_put.exit_crit_edge, label %land.lhs.true.i

inet6_sk.exit.txopt_put.exit_crit_edge:           ; preds = %inet6_sk.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %txopt_put.exit

land.lhs.true.i:                                  ; preds = %inet6_sk.exit
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call1, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !60
  tail call void @llvm.prefetch.p0(ptr nonnull %call1, i32 1, i32 3, i32 1) #13
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call1, ptr nonnull %call1, i32 1, ptr nonnull elementtype(i32) %call1) #13, !srcloc !61
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %do.end.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.txopt_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !62

if.end5.i.i.i.i.txopt_put.exit_crit_edge:         ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %txopt_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call1, i32 noundef 3) #13
  br label %txopt_put.exit

do.end.i:                                         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !63
  %rcu.i = getelementptr inbounds %struct.ipv6_txoptions, ptr %call1, i32 0, i32 8
  tail call void @kvfree_call_rcu(ptr noundef %rcu.i, ptr noundef nonnull inttoptr (i32 28 to ptr)) #13
  br label %txopt_put.exit

txopt_put.exit:                                   ; preds = %do.end.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.txopt_put.exit_crit_edge, %inet6_sk.exit.txopt_put.exit_crit_edge
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %txopt_put.exit
  call void @__sanitizer_cov_trace_pc() #15
  %5 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end:                                           ; preds = %txopt_put.exit
  %call5 = tail call ptr @ipv6_update_options(ptr noundef %sk, ptr noundef %call2) #13
  %tobool.not = icmp eq ptr %call5, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %land.lhs.true.i22

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true.i22:                                ; preds = %if.end
  %tot_len = getelementptr inbounds %struct.ipv6_txoptions, ptr %call5, i32 0, i32 1
  %6 = ptrtoint ptr %tot_len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tot_len, align 4
  %sk_omem_alloc = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 20
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sk_omem_alloc, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %sk_omem_alloc, i32 1, i32 3, i32 1) #13
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sk_omem_alloc, ptr %sk_omem_alloc, i32 %7, ptr elementtype(i32) %sk_omem_alloc) #13, !srcloc !69
  %call.i.i.i.i.i.i19 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call5, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !60
  tail call void @llvm.prefetch.p0(ptr nonnull %call5, i32 1, i32 3, i32 1) #13
  %9 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call5, ptr nonnull %call5, i32 1, ptr nonnull elementtype(i32) %call5) #13, !srcloc !61
  %asmresult.i.i.i.i.i.i.i20 = extractvalue { i32, i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i20)
  %cmp.i.i.i.i21 = icmp eq i32 %asmresult.i.i.i.i.i.i.i20, 1
  br i1 %cmp.i.i.i.i21, label %do.end.i27, label %if.end5.i.i.i.i24

if.end5.i.i.i.i24:                                ; preds = %land.lhs.true.i22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i20)
  %.not.i.i.i.i23 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i20, 0
  br i1 %.not.i.i.i.i23, label %if.end5.i.i.i.i24.cleanup_crit_edge, label %if.then10.i.i.i.i25, !prof !62

if.end5.i.i.i.i24.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i24
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then10.i.i.i.i25:                              ; preds = %if.end5.i.i.i.i24
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call5, i32 noundef 3) #13
  br label %cleanup

do.end.i27:                                       ; preds = %land.lhs.true.i22
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !63
  %rcu.i26 = getelementptr inbounds %struct.ipv6_txoptions, ptr %call5, i32 0, i32 8
  tail call void @kvfree_call_rcu(ptr noundef %rcu.i26, ptr noundef nonnull inttoptr (i32 28 to ptr)) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end.i27, %if.then10.i.i.i.i25, %if.end5.i.i.i.i24.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %5, %if.then ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end5.i.i.i.i24.cleanup_crit_edge ], [ 0, %if.then10.i.i.i.i25 ], [ 0, %do.end.i27 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @calipso_opt_find(ptr nocapture noundef readonly %hop, ptr nocapture noundef writeonly %start, ptr nocapture noundef writeonly %end) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %hdrlen = getelementptr inbounds %struct.ipv6_opt_hdr, ptr %hop, i32 0, i32 1
  %0 = ptrtoint ptr %hdrlen to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %hdrlen, align 1
  %conv = zext i8 %1 to i32
  %add = shl nuw nsw i32 %conv, 3
  %shl = add nuw nsw i32 %add, 8
  br label %while.body

while.body:                                       ; preds = %sw.epilog.while.body_crit_edge, %entry
  %offset_e.0109 = phi i32 [ 0, %entry ], [ %offset_e.1, %sw.epilog.while.body_crit_edge ]
  %offset_s.0108 = phi i32 [ 0, %entry ], [ %offset_s.1, %sw.epilog.while.body_crit_edge ]
  %offset.0105 = phi i32 [ 2, %entry ], [ %add12, %sw.epilog.while.body_crit_edge ]
  %ret_val.0104 = phi i32 [ -2, %entry ], [ %ret_val.1, %sw.epilog.while.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %offset.0105)
  %cmp.i = icmp ugt i32 %offset.0105, 1
  br i1 %cmp.i, label %if.end.i, label %while.body.cleanup_crit_edge

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i:                                         ; preds = %while.body
  %arrayidx.i = getelementptr i8, ptr %hop, i32 %offset.0105
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp5.i = icmp eq i8 %3, 0
  br i1 %cmp5.i, label %if.end.i.sw.bb_crit_edge, label %if.end8.i

if.end.i.sw.bb_crit_edge:                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb

if.end8.i:                                        ; preds = %if.end.i
  %add9.i = add nuw i32 %offset.0105, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add9.i, i32 %shl)
  %cmp10.not.i = icmp ult i32 %add9.i, %shl
  br i1 %cmp10.not.i, label %if.end13.i, label %if.end8.i.cleanup_crit_edge

if.end8.i.cleanup_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end13.i:                                       ; preds = %if.end8.i
  %arrayidx15.i = getelementptr i8, ptr %hop, i32 %add9.i
  %4 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx15.i, align 1
  %conv16.i = zext i8 %5 to i32
  %add17.i = add nuw nsw i32 %conv16.i, 2
  %add18.i = add i32 %add17.i, %offset.0105
  call void @__sanitizer_cov_trace_cmp4(i32 %add18.i, i32 %shl)
  %cmp19.i = icmp ugt i32 %add18.i, %shl
  br i1 %cmp19.i, label %if.end13.i.cleanup_crit_edge, label %if.end

if.end13.i.cleanup_crit_edge:                     ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %if.end13.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %.pr = load i8, ptr %arrayidx.i, align 1
  %7 = zext i8 %.pr to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.17)
  switch i8 %.pr, label %sw.default [
    i8 0, label %if.end.sw.bb_crit_edge
    i8 1, label %if.end.sw.bb_crit_edge113
    i8 7, label %if.end.sw.epilog_crit_edge
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.end.sw.bb_crit_edge113:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge113, %if.end.i.sw.bb_crit_edge
  %retval.0.i112 = phi i32 [ %add17.i, %if.end.sw.bb_crit_edge ], [ %add17.i, %if.end.sw.bb_crit_edge113 ], [ 1, %if.end.i.sw.bb_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %offset_e.0109)
  %tobool.not = icmp eq i32 %offset_e.0109, 0
  %spec.select = select i1 %tobool.not, i32 0, i32 %offset.0105
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %offset_e.0109)
  %cmp8 = icmp eq i32 %offset_e.0109, 0
  br i1 %cmp8, label %sw.default.sw.epilog_crit_edge, label %sw.default.out_crit_edge

sw.default.out_crit_edge:                         ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

sw.default.sw.epilog_crit_edge:                   ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default.sw.epilog_crit_edge, %sw.bb, %if.end.sw.epilog_crit_edge
  %retval.0.i111 = phi i32 [ %retval.0.i112, %sw.bb ], [ %add17.i, %if.end.sw.epilog_crit_edge ], [ %add17.i, %sw.default.sw.epilog_crit_edge ]
  %ret_val.1 = phi i32 [ %ret_val.0104, %sw.bb ], [ 0, %if.end.sw.epilog_crit_edge ], [ %ret_val.0104, %sw.default.sw.epilog_crit_edge ]
  %offset_s.1 = phi i32 [ %offset_s.0108, %sw.bb ], [ %offset_s.0108, %if.end.sw.epilog_crit_edge ], [ %offset.0105, %sw.default.sw.epilog_crit_edge ]
  %offset_e.1 = phi i32 [ %spec.select, %sw.bb ], [ %offset.0105, %if.end.sw.epilog_crit_edge ], [ 0, %sw.default.sw.epilog_crit_edge ]
  %add12 = add i32 %retval.0.i111, %offset.0105
  %cmp = icmp ult i32 %add12, %shl
  br i1 %cmp, label %sw.epilog.while.body_crit_edge, label %sw.epilog.out_crit_edge

sw.epilog.out_crit_edge:                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

sw.epilog.while.body_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

out:                                              ; preds = %sw.epilog.out_crit_edge, %sw.default.out_crit_edge
  %ret_val.0.lcssa = phi i32 [ %ret_val.1, %sw.epilog.out_crit_edge ], [ %ret_val.0104, %sw.default.out_crit_edge ]
  %offset_s.0.lcssa = phi i32 [ %offset_s.1, %sw.epilog.out_crit_edge ], [ %offset_s.0108, %sw.default.out_crit_edge ]
  %offset_e.0.lcssa = phi i32 [ %offset_e.1, %sw.epilog.out_crit_edge ], [ %offset_e.0109, %sw.default.out_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %offset_s.0.lcssa)
  %tobool13.not = icmp eq i32 %offset_s.0.lcssa, 0
  br i1 %tobool13.not, label %out.if.end18_crit_edge, label %if.then14

out.if.end18_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end18

if.then14:                                        ; preds = %out
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %offset_s.0.lcssa)
  %cmp.i57 = icmp ne i32 %offset_s.0.lcssa, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %shl, i32 %offset_s.0.lcssa)
  %cmp2.not.i58 = icmp ugt i32 %shl, %offset_s.0.lcssa
  %or.cond.i59 = select i1 %cmp.i57, i1 %cmp2.not.i58, i1 false
  br i1 %or.cond.i59, label %if.end.i62, label %if.then14.calipso_tlv_len.exit74_crit_edge

if.then14.calipso_tlv_len.exit74_crit_edge:       ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #15
  br label %calipso_tlv_len.exit74

if.end.i62:                                       ; preds = %if.then14
  %arrayidx.i60 = getelementptr i8, ptr %hop, i32 %offset_s.0.lcssa
  %8 = ptrtoint ptr %arrayidx.i60 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.i60, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp5.i61 = icmp eq i8 %9, 0
  br i1 %cmp5.i61, label %if.end.i62.calipso_tlv_len.exit74_crit_edge, label %if.end8.i65

if.end.i62.calipso_tlv_len.exit74_crit_edge:      ; preds = %if.end.i62
  call void @__sanitizer_cov_trace_pc() #15
  br label %calipso_tlv_len.exit74

if.end8.i65:                                      ; preds = %if.end.i62
  %add9.i63 = add nuw i32 %offset_s.0.lcssa, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add9.i63, i32 %shl)
  %cmp10.not.i64 = icmp ult i32 %add9.i63, %shl
  br i1 %cmp10.not.i64, label %if.end13.i72, label %if.end8.i65.calipso_tlv_len.exit74_crit_edge

if.end8.i65.calipso_tlv_len.exit74_crit_edge:     ; preds = %if.end8.i65
  call void @__sanitizer_cov_trace_pc() #15
  br label %calipso_tlv_len.exit74

if.end13.i72:                                     ; preds = %if.end8.i65
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx15.i66 = getelementptr i8, ptr %hop, i32 %add9.i63
  %10 = ptrtoint ptr %arrayidx15.i66 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx15.i66, align 1
  %conv16.i67 = zext i8 %11 to i32
  %add17.i68 = add nuw nsw i32 %conv16.i67, 2
  %add18.i69 = add i32 %add17.i68, %offset_s.0.lcssa
  call void @__sanitizer_cov_trace_cmp4(i32 %add18.i69, i32 %shl)
  %cmp19.i70 = icmp ugt i32 %add18.i69, %shl
  %.add17.i71 = select i1 %cmp19.i70, i32 -22, i32 %add17.i68
  br label %calipso_tlv_len.exit74

calipso_tlv_len.exit74:                           ; preds = %if.end13.i72, %if.end8.i65.calipso_tlv_len.exit74_crit_edge, %if.end.i62.calipso_tlv_len.exit74_crit_edge, %if.then14.calipso_tlv_len.exit74_crit_edge
  %retval.0.i73 = phi i32 [ -22, %if.then14.calipso_tlv_len.exit74_crit_edge ], [ 1, %if.end.i62.calipso_tlv_len.exit74_crit_edge ], [ -22, %if.end8.i65.calipso_tlv_len.exit74_crit_edge ], [ %.add17.i71, %if.end13.i72 ]
  %add16 = add i32 %retval.0.i73, %offset_s.0.lcssa
  br label %if.end18

if.end18:                                         ; preds = %calipso_tlv_len.exit74, %out.if.end18_crit_edge
  %storemerge = phi i32 [ %add16, %calipso_tlv_len.exit74 ], [ 2, %out.if.end18_crit_edge ]
  %12 = ptrtoint ptr %start to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %storemerge, ptr %start, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %offset_e.0.lcssa)
  %tobool19.not = icmp eq i32 %offset_e.0.lcssa, 0
  br i1 %tobool19.not, label %if.end18.if.end24_crit_edge, label %if.then20

if.end18.if.end24_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end24

if.then20:                                        ; preds = %if.end18
  %13 = ptrtoint ptr %hdrlen to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %hdrlen, align 1
  %conv.i76 = zext i8 %14 to i32
  %add.i77 = shl nuw nsw i32 %conv.i76, 3
  %shl.i78 = add nuw nsw i32 %add.i77, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i78, i32 %offset_e.0.lcssa)
  %cmp2.not.i80 = icmp ugt i32 %shl.i78, %offset_e.0.lcssa
  br i1 %cmp2.not.i80, label %if.end.i84, label %if.then20.calipso_tlv_len.exit96_crit_edge

if.then20.calipso_tlv_len.exit96_crit_edge:       ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #15
  br label %calipso_tlv_len.exit96

if.end.i84:                                       ; preds = %if.then20
  %arrayidx.i82 = getelementptr i8, ptr %hop, i32 %offset_e.0.lcssa
  %15 = ptrtoint ptr %arrayidx.i82 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx.i82, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %cmp5.i83 = icmp eq i8 %16, 0
  br i1 %cmp5.i83, label %if.end.i84.calipso_tlv_len.exit96_crit_edge, label %if.end8.i87

if.end.i84.calipso_tlv_len.exit96_crit_edge:      ; preds = %if.end.i84
  call void @__sanitizer_cov_trace_pc() #15
  br label %calipso_tlv_len.exit96

if.end8.i87:                                      ; preds = %if.end.i84
  %add9.i85 = add nuw i32 %offset_e.0.lcssa, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add9.i85, i32 %shl.i78)
  %cmp10.not.i86 = icmp ult i32 %add9.i85, %shl.i78
  br i1 %cmp10.not.i86, label %if.end13.i94, label %if.end8.i87.calipso_tlv_len.exit96_crit_edge

if.end8.i87.calipso_tlv_len.exit96_crit_edge:     ; preds = %if.end8.i87
  call void @__sanitizer_cov_trace_pc() #15
  br label %calipso_tlv_len.exit96

if.end13.i94:                                     ; preds = %if.end8.i87
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx15.i88 = getelementptr i8, ptr %hop, i32 %add9.i85
  %17 = ptrtoint ptr %arrayidx15.i88 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx15.i88, align 1
  %conv16.i89 = zext i8 %18 to i32
  %add17.i90 = add nuw nsw i32 %conv16.i89, 2
  %add18.i91 = add i32 %add17.i90, %offset_e.0.lcssa
  call void @__sanitizer_cov_trace_cmp4(i32 %add18.i91, i32 %shl.i78)
  %cmp19.i92 = icmp ugt i32 %add18.i91, %shl.i78
  %.add17.i93 = select i1 %cmp19.i92, i32 -22, i32 %add17.i90
  br label %calipso_tlv_len.exit96

calipso_tlv_len.exit96:                           ; preds = %if.end13.i94, %if.end8.i87.calipso_tlv_len.exit96_crit_edge, %if.end.i84.calipso_tlv_len.exit96_crit_edge, %if.then20.calipso_tlv_len.exit96_crit_edge
  %retval.0.i95 = phi i32 [ -22, %if.then20.calipso_tlv_len.exit96_crit_edge ], [ 1, %if.end.i84.calipso_tlv_len.exit96_crit_edge ], [ -22, %if.end8.i87.calipso_tlv_len.exit96_crit_edge ], [ %.add17.i93, %if.end13.i94 ]
  %add22 = add i32 %retval.0.i95, %offset_e.0.lcssa
  br label %if.end24

if.end24:                                         ; preds = %calipso_tlv_len.exit96, %if.end18.if.end24_crit_edge
  %storemerge52 = phi i32 [ %add22, %calipso_tlv_len.exit96 ], [ %shl, %if.end18.if.end24_crit_edge ]
  %19 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %storemerge52, ptr %end, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %if.end13.i.cleanup_crit_edge, %if.end8.i.cleanup_crit_edge, %while.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret_val.0.lcssa, %if.end24 ], [ -22, %while.body.cleanup_crit_edge ], [ -22, %if.end8.i.cleanup_crit_edge ], [ -22, %if.end13.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @calipso_genopt(ptr noundef %buf, i32 noundef %start, i32 noundef %buf_len, ptr nocapture noundef readonly %doi_def, ptr nocapture noundef readonly %secattr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %start, 3
  %arrayidx = getelementptr [4 x i8], ptr @calipso_genopt.padding, i32 0, i32 %and
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %add = add i32 %conv, %start
  %add1 = add i32 %add, 10
  call void @__sanitizer_cov_trace_cmp4(i32 %add1, i32 %buf_len)
  %cmp.not = icmp ult i32 %add1, %buf_len
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %secattr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %secattr, align 4
  %and3 = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %cmp4 = icmp eq i32 %and3, 0
  br i1 %cmp4, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %and9 = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool.not = icmp eq i32 %and9, 0
  br i1 %tobool.not, label %if.end7.if.end37.i_crit_edge, label %if.then10

if.end7.if.end37.i_crit_edge:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end37.i

if.then10:                                        ; preds = %if.end7
  %add.ptr = getelementptr i8, ptr %buf, i32 %start
  %add.ptr11 = getelementptr i8, ptr %add.ptr, i32 %conv
  %add.ptr12 = getelementptr i8, ptr %add.ptr11, i32 10
  %sub13 = sub i32 %buf_len, %add
  %sub14 = shl i32 %sub13, 3
  %mul.i = add i32 %sub14, -80
  %attr.i = getelementptr inbounds %struct.netlbl_lsm_secattr, ptr %secattr, i32 0, i32 4
  %4 = ptrtoint ptr %attr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %attr.i, align 4
  %call3.i = tail call i32 @netlbl_catmap_walk(ptr noundef %5, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp4.i = icmp slt i32 %call3.i, 0
  br i1 %cmp4.i, label %if.then10.if.end37.i_crit_edge, label %if.then10.if.end.i_crit_edge

if.then10.if.end.i_crit_edge:                     ; preds = %if.then10
  br label %if.end.i

if.then10.if.end37.i_crit_edge:                   ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end37.i

if.end.i:                                         ; preds = %if.end3.i.if.end.i_crit_edge, %if.then10.if.end.i_crit_edge
  %call6.i = phi i32 [ %call.i, %if.end3.i.if.end.i_crit_edge ], [ %call3.i, %if.then10.if.end.i_crit_edge ]
  %net_spot_max.05.i = phi i32 [ %6, %if.end3.i.if.end.i_crit_edge ], [ 0, %if.then10.if.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %call6.i, i32 %mul.i)
  %cmp1.not.i = icmp ult i32 %call6.i, %mul.i
  br i1 %cmp1.not.i, label %if.end3.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end3.i:                                        ; preds = %if.end.i
  tail call void @netlbl_bitmap_setbit(ptr noundef %add.ptr12, i32 noundef %call6.i, i8 noundef zeroext 1) #13
  %6 = tail call i32 @llvm.umax.i32(i32 %call6.i, i32 %net_spot_max.05.i) #13
  %7 = ptrtoint ptr %attr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %attr.i, align 4
  %add.i = add nuw i32 %call6.i, 1
  %call.i = tail call i32 @netlbl_catmap_walk(ptr noundef %8, i32 noundef %add.i) #13
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %for.end.loopexit.i, label %if.end3.i.if.end.i_crit_edge

if.end3.i.if.end.i_crit_edge:                     ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

for.end.loopexit.i:                               ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #15
  %phi.bo.i = lshr i32 %6, 3
  %phi.bo7.i = and i32 %phi.bo.i, 536870908
  %phi.bo = add nuw nsw i32 %phi.bo7.i, 14
  br label %if.end37.i

if.end37.i:                                       ; preds = %for.end.loopexit.i, %if.then10.if.end37.i_crit_edge, %if.end7.if.end37.i_crit_edge
  %len.0 = phi i32 [ 10, %if.end7.if.end37.i_crit_edge ], [ %phi.bo, %for.end.loopexit.i ], [ 14, %if.then10.if.end37.i_crit_edge ]
  %9 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.18)
  switch i8 %1, label %sw.default.i [
    i8 0, label %if.end37.i.calipso_pad_write.exit_crit_edge
    i8 1, label %sw.bb.i
  ]

if.end37.i.calipso_pad_write.exit_crit_edge:      ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %calipso_pad_write.exit

sw.bb.i:                                          ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx.i = getelementptr i8, ptr %buf, i32 %start
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %arrayidx.i, align 1
  br label %calipso_pad_write.exit

sw.default.i:                                     ; preds = %if.end37.i
  %arrayidx38.i = getelementptr i8, ptr %buf, i32 %start
  %11 = ptrtoint ptr %arrayidx38.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %arrayidx38.i, align 1
  %sub.i = add nsw i32 %conv, -2
  %conv.i = trunc i32 %sub.i to i8
  %add.i85 = add i32 %start, 1
  %arrayidx39.i = getelementptr i8, ptr %buf, i32 %add.i85
  %12 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv.i, ptr %arrayidx39.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and)
  %cmp40.i = icmp eq i32 %and, 3
  br i1 %cmp40.i, label %if.then42.i, label %sw.default.i.calipso_pad_write.exit_crit_edge

sw.default.i.calipso_pad_write.exit_crit_edge:    ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %calipso_pad_write.exit

if.then42.i:                                      ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr43.i = getelementptr i8, ptr %arrayidx38.i, i32 2
  %13 = call ptr @memset(ptr %add.ptr43.i, i32 0, i32 %sub.i)
  br label %calipso_pad_write.exit

calipso_pad_write.exit:                           ; preds = %if.then42.i, %sw.default.i.calipso_pad_write.exit_crit_edge, %sw.bb.i, %if.end37.i.calipso_pad_write.exit_crit_edge
  %add.ptr22 = getelementptr i8, ptr %buf, i32 %start
  %add.ptr23 = getelementptr i8, ptr %add.ptr22, i32 %conv
  %14 = ptrtoint ptr %add.ptr23 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 7, ptr %add.ptr23, align 1
  %15 = trunc i32 %len.0 to i8
  %conv26 = add i8 %15, -2
  %arrayidx27 = getelementptr i8, ptr %add.ptr23, i32 1
  %16 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv26, ptr %arrayidx27, align 1
  %17 = ptrtoint ptr %doi_def to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %doi_def, align 4
  %add.ptr28 = getelementptr i8, ptr %add.ptr23, i32 2
  %19 = ptrtoint ptr %add.ptr28 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %add.ptr28, align 4
  %sub29 = add nuw nsw i32 %len.0, 1014
  %div83 = lshr i32 %sub29, 2
  %conv30 = trunc i32 %div83 to i8
  %arrayidx31 = getelementptr i8, ptr %add.ptr23, i32 6
  %20 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv30, ptr %arrayidx31, align 1
  %lvl = getelementptr inbounds %struct.netlbl_lsm_secattr, ptr %secattr, i32 0, i32 4, i32 0, i32 1
  %21 = ptrtoint ptr %lvl to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %lvl, align 4
  %conv32 = trunc i32 %22 to i8
  %arrayidx33 = getelementptr i8, ptr %add.ptr23, i32 7
  %23 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv32, ptr %arrayidx33, align 1
  %call34 = tail call zeroext i16 @crc_ccitt(i16 noundef zeroext -1, ptr noundef %add.ptr23, i32 noundef %len.0) #13
  %neg = xor i16 %call34, -1
  %conv39 = trunc i16 %neg to i8
  %arrayidx40 = getelementptr i8, ptr %add.ptr23, i32 8
  %24 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv39, ptr %arrayidx40, align 1
  %25 = lshr i16 %neg, 8
  %conv43 = trunc i16 %25 to i8
  %arrayidx44 = getelementptr i8, ptr %add.ptr23, i32 9
  %26 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv43, ptr %arrayidx44, align 1
  %add45 = add nsw i32 %len.0, %conv
  br label %cleanup

cleanup:                                          ; preds = %calipso_pad_write.exit, %if.end.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %add45, %calipso_pad_write.exit ], [ -28, %entry.cleanup_crit_edge ], [ -1, %if.end.cleanup_crit_edge ], [ -28, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlbl_catmap_walk(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netlbl_bitmap_setbit(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ipv6_renew_options(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ipv6_update_options(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @calipso_opt_del(ptr nocapture noundef readonly %hop, ptr nocapture noundef %new) unnamed_addr #0 align 64 {
entry:
  %start = alloca i32, align 4
  %end = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %start) #13
  %0 = ptrtoint ptr %start to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %start, align 4, !annotation !65
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %end) #13
  %1 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %end, align 4, !annotation !65
  %call = call fastcc i32 @calipso_opt_find(ptr noundef %hop, ptr noundef nonnull %start, ptr noundef nonnull %end)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %hdrlen = getelementptr inbounds %struct.ipv6_opt_hdr, ptr %hop, i32 0, i32 1
  %2 = ptrtoint ptr %hdrlen to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %hdrlen, align 1
  %conv = zext i8 %3 to i32
  %add = shl nuw nsw i32 %conv, 3
  %shl = add nuw nsw i32 %add, 8
  %4 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %start, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp = icmp eq i32 %5, 2
  br i1 %cmp, label %land.lhs.true, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end5

land.lhs.true:                                    ; preds = %if.end
  %6 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %shl)
  %cmp2 = icmp eq i32 %7, %shl
  br i1 %cmp2, label %if.then4, label %land.lhs.true.if.end5_crit_edge

land.lhs.true.if.end5_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end5

if.then4:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %8 = ptrtoint ptr %new to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %new, align 4
  br label %cleanup

if.end5:                                          ; preds = %land.lhs.true.if.end5_crit_edge, %if.end.if.end5_crit_edge
  %9 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %end, align 4
  %sub = sub i32 %10, %5
  %and = and i32 %sub, -8
  %sub6 = sub i32 %shl, %and
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %sub6, i32 noundef 2848) #19
  %11 = ptrtoint ptr %new to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call9.i.i, ptr %new, align 4
  %tobool8.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool8.not, label %if.end5.cleanup_crit_edge, label %if.end10

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end10:                                         ; preds = %if.end5
  %12 = call ptr @memcpy(ptr %call9.i.i, ptr %hop, i32 %5)
  %div45 = lshr i32 %sub, 3
  %13 = ptrtoint ptr %new to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %new, align 4
  %hdrlen11 = getelementptr inbounds %struct.ipv6_opt_hdr, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %hdrlen11 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %hdrlen11, align 1
  %17 = trunc i32 %div45 to i8
  %conv14 = sub i8 %16, %17
  store i8 %conv14, ptr %hdrlen11, align 1
  %and16 = and i32 %sub, 7
  %18 = load ptr, ptr %new, align 4
  %19 = zext i32 %and16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %and16, label %sw.default.i [
    i32 0, label %if.end10.calipso_pad_write.exit_crit_edge
    i32 1, label %sw.bb.i
  ]

if.end10.calipso_pad_write.exit_crit_edge:        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %calipso_pad_write.exit

sw.bb.i:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx.i = getelementptr i8, ptr %18, i32 %5
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %arrayidx.i, align 1
  br label %calipso_pad_write.exit

sw.default.i:                                     ; preds = %if.end10
  %arrayidx38.i = getelementptr i8, ptr %18, i32 %5
  %21 = ptrtoint ptr %arrayidx38.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %arrayidx38.i, align 1
  %sub.i = add nsw i32 %and16, -2
  %conv.i = trunc i32 %sub.i to i8
  %add.i = add i32 %5, 1
  %arrayidx39.i = getelementptr i8, ptr %18, i32 %add.i
  %22 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv.i, ptr %arrayidx39.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and16)
  %cmp40.i = icmp ugt i32 %and16, 2
  br i1 %cmp40.i, label %if.then42.i, label %sw.default.i.calipso_pad_write.exit_crit_edge

sw.default.i.calipso_pad_write.exit_crit_edge:    ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %calipso_pad_write.exit

if.then42.i:                                      ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr43.i = getelementptr i8, ptr %arrayidx38.i, i32 2
  %23 = call ptr @memset(ptr %add.ptr43.i, i32 0, i32 %sub.i)
  br label %calipso_pad_write.exit

calipso_pad_write.exit:                           ; preds = %if.then42.i, %sw.default.i.calipso_pad_write.exit_crit_edge, %sw.bb.i, %if.end10.calipso_pad_write.exit_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %shl, i32 %10)
  %cmp18.not = icmp eq i32 %shl, %10
  br i1 %cmp18.not, label %calipso_pad_write.exit.cleanup_crit_edge, label %if.then20

calipso_pad_write.exit.cleanup_crit_edge:         ; preds = %calipso_pad_write.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then20:                                        ; preds = %calipso_pad_write.exit
  call void @__sanitizer_cov_trace_pc() #15
  %24 = ptrtoint ptr %new to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %new, align 4
  %add.ptr = getelementptr i8, ptr %25, i32 %5
  %add.ptr21 = getelementptr i8, ptr %add.ptr, i32 %and16
  %add.ptr22 = getelementptr i8, ptr %hop, i32 %10
  %sub23 = sub i32 %shl, %10
  %26 = call ptr @memcpy(ptr %add.ptr21, ptr %add.ptr22, i32 %sub23)
  br label %cleanup

cleanup:                                          ; preds = %if.then20, %calipso_pad_write.exit.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then4 ], [ %call, %entry.cleanup_crit_edge ], [ -12, %if.end5.cleanup_crit_edge ], [ 0, %if.then20 ], [ 0, %calipso_pad_write.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %end) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %start) #13
  ret i32 %retval.0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @calipso_map_cache_hash(ptr nocapture noundef readonly %key, i32 noundef %key_len) unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.i = add i32 %key_len, -559038737
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %key_len)
  %cmp13.i = icmp ugt i32 %key_len, 12
  br i1 %cmp13.i, label %entry.while.body.i_crit_edge, label %entry.while.end.i_crit_edge

entry.while.end.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.i

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %k.018.i = phi ptr [ %add.ptr31.i, %while.body.i.while.body.i_crit_edge ], [ %key, %entry.while.body.i_crit_edge ]
  %c.017.i = phi i32 [ %xor28.i, %while.body.i.while.body.i_crit_edge ], [ %add.i, %entry.while.body.i_crit_edge ]
  %b.016.i = phi i32 [ %add29.i, %while.body.i.while.body.i_crit_edge ], [ %add.i, %entry.while.body.i_crit_edge ]
  %a.015.i = phi i32 [ %add25.i, %while.body.i.while.body.i_crit_edge ], [ %add.i, %entry.while.body.i_crit_edge ]
  %length.addr.014.i = phi i32 [ %sub30.i, %while.body.i.while.body.i_crit_edge ], [ %key_len, %entry.while.body.i_crit_edge ]
  %0 = ptrtoint ptr %k.018.i to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %k.018.i, align 1
  %add2.i = add i32 %1, %a.015.i
  %add.ptr.i = getelementptr i8, ptr %k.018.i, i32 4
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %add.ptr.i, align 1
  %add4.i = add i32 %3, %b.016.i
  %add.ptr5.i = getelementptr i8, ptr %k.018.i, i32 8
  %4 = ptrtoint ptr %add.ptr5.i to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %add.ptr5.i, align 1
  %add7.i = add i32 %5, %c.017.i
  %sub.i = sub i32 %add2.i, %add7.i
  %or.i.i = tail call i32 @llvm.fshl.i32(i32 %add7.i, i32 %add7.i, i32 4) #13
  %xor.i = xor i32 %sub.i, %or.i.i
  %add9.i = add i32 %add7.i, %add4.i
  %sub10.i = sub i32 %add4.i, %xor.i
  %or.i1.i = tail call i32 @llvm.fshl.i32(i32 %xor.i, i32 %xor.i, i32 6) #13
  %xor12.i = xor i32 %sub10.i, %or.i1.i
  %add13.i = add i32 %xor.i, %add9.i
  %sub14.i = sub i32 %add9.i, %xor12.i
  %or.i2.i = tail call i32 @llvm.fshl.i32(i32 %xor12.i, i32 %xor12.i, i32 8) #13
  %xor16.i = xor i32 %sub14.i, %or.i2.i
  %add17.i = add i32 %xor12.i, %add13.i
  %sub18.i = sub i32 %add13.i, %xor16.i
  %or.i3.i = tail call i32 @llvm.fshl.i32(i32 %xor16.i, i32 %xor16.i, i32 16) #13
  %xor20.i = xor i32 %sub18.i, %or.i3.i
  %add21.i = add i32 %xor16.i, %add17.i
  %sub22.i = sub i32 %add17.i, %xor20.i
  %or.i4.i = tail call i32 @llvm.fshl.i32(i32 %xor20.i, i32 %xor20.i, i32 19) #13
  %xor24.i = xor i32 %sub22.i, %or.i4.i
  %add25.i = add i32 %xor20.i, %add21.i
  %sub26.i = sub i32 %add21.i, %xor24.i
  %or.i5.i = tail call i32 @llvm.fshl.i32(i32 %xor24.i, i32 %xor24.i, i32 4) #13
  %xor28.i = xor i32 %sub26.i, %or.i5.i
  %add29.i = add i32 %xor24.i, %add25.i
  %sub30.i = add i32 %length.addr.014.i, -12
  %add.ptr31.i = getelementptr i8, ptr %k.018.i, i32 12
  %cmp.i = icmp ugt i32 %sub30.i, 12
  br i1 %cmp.i, label %while.body.i.while.body.i_crit_edge, label %while.body.i.while.end.i_crit_edge

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.i

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i

while.end.i:                                      ; preds = %while.body.i.while.end.i_crit_edge, %entry.while.end.i_crit_edge
  %length.addr.0.lcssa.i = phi i32 [ %key_len, %entry.while.end.i_crit_edge ], [ %sub30.i, %while.body.i.while.end.i_crit_edge ]
  %a.0.lcssa.i = phi i32 [ %add.i, %entry.while.end.i_crit_edge ], [ %add25.i, %while.body.i.while.end.i_crit_edge ]
  %b.0.lcssa.i = phi i32 [ %add.i, %entry.while.end.i_crit_edge ], [ %add29.i, %while.body.i.while.end.i_crit_edge ]
  %c.0.lcssa.i = phi i32 [ %add.i, %entry.while.end.i_crit_edge ], [ %xor28.i, %while.body.i.while.end.i_crit_edge ]
  %k.0.lcssa.i = phi ptr [ %key, %entry.while.end.i_crit_edge ], [ %add.ptr31.i, %while.body.i.while.end.i_crit_edge ]
  %6 = zext i32 %length.addr.0.lcssa.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %length.addr.0.lcssa.i, label %while.end.i.jhash.exit_crit_edge [
    i32 12, label %sw.bb.i
    i32 11, label %while.end.i.sw.bb33.i_crit_edge
    i32 10, label %while.end.i.sw.bb38.i_crit_edge
    i32 9, label %while.end.i.sw.bb43.i_crit_edge
    i32 8, label %while.end.i.sw.bb47.i_crit_edge
    i32 7, label %while.end.i.sw.bb52.i_crit_edge
    i32 6, label %while.end.i.sw.bb57.i_crit_edge
    i32 5, label %while.end.i.sw.bb62.i_crit_edge
    i32 4, label %while.end.i.sw.bb66.i_crit_edge
    i32 3, label %while.end.i.sw.bb71.i_crit_edge
    i32 2, label %while.end.i.sw.bb76.i_crit_edge
    i32 1, label %while.end.i.sw.bb81.i_crit_edge
  ]

while.end.i.sw.bb81.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb81.i

while.end.i.sw.bb76.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb76.i

while.end.i.sw.bb71.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb71.i

while.end.i.sw.bb66.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb66.i

while.end.i.sw.bb62.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb62.i

while.end.i.sw.bb57.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb57.i

while.end.i.sw.bb52.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb52.i

while.end.i.sw.bb47.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb47.i

while.end.i.sw.bb43.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb43.i

while.end.i.sw.bb38.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb38.i

while.end.i.sw.bb33.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb33.i

while.end.i.jhash.exit_crit_edge:                 ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %jhash.exit

sw.bb.i:                                          ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx.i = getelementptr i8, ptr %k.0.lcssa.i, i32 11
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %8 to i32
  %shl.i = shl nuw i32 %conv.i, 24
  %add32.i = add i32 %shl.i, %c.0.lcssa.i
  br label %sw.bb33.i

sw.bb33.i:                                        ; preds = %sw.bb.i, %while.end.i.sw.bb33.i_crit_edge
  %c.1.i = phi i32 [ %c.0.lcssa.i, %while.end.i.sw.bb33.i_crit_edge ], [ %add32.i, %sw.bb.i ]
  %arrayidx34.i = getelementptr i8, ptr %k.0.lcssa.i, i32 10
  %9 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx34.i, align 1
  %conv35.i = zext i8 %10 to i32
  %shl36.i = shl nuw nsw i32 %conv35.i, 16
  %add37.i = add i32 %shl36.i, %c.1.i
  br label %sw.bb38.i

sw.bb38.i:                                        ; preds = %sw.bb33.i, %while.end.i.sw.bb38.i_crit_edge
  %c.2.i = phi i32 [ %c.0.lcssa.i, %while.end.i.sw.bb38.i_crit_edge ], [ %add37.i, %sw.bb33.i ]
  %arrayidx39.i = getelementptr i8, ptr %k.0.lcssa.i, i32 9
  %11 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx39.i, align 1
  %conv40.i = zext i8 %12 to i32
  %shl41.i = shl nuw nsw i32 %conv40.i, 8
  %add42.i = add i32 %shl41.i, %c.2.i
  br label %sw.bb43.i

sw.bb43.i:                                        ; preds = %sw.bb38.i, %while.end.i.sw.bb43.i_crit_edge
  %c.3.i = phi i32 [ %c.0.lcssa.i, %while.end.i.sw.bb43.i_crit_edge ], [ %add42.i, %sw.bb38.i ]
  %arrayidx44.i = getelementptr i8, ptr %k.0.lcssa.i, i32 8
  %13 = ptrtoint ptr %arrayidx44.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx44.i, align 1
  %conv45.i = zext i8 %14 to i32
  %add46.i = add i32 %c.3.i, %conv45.i
  br label %sw.bb47.i

sw.bb47.i:                                        ; preds = %sw.bb43.i, %while.end.i.sw.bb47.i_crit_edge
  %c.4.i = phi i32 [ %c.0.lcssa.i, %while.end.i.sw.bb47.i_crit_edge ], [ %add46.i, %sw.bb43.i ]
  %arrayidx48.i = getelementptr i8, ptr %k.0.lcssa.i, i32 7
  %15 = ptrtoint ptr %arrayidx48.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx48.i, align 1
  %conv49.i = zext i8 %16 to i32
  %shl50.i = shl nuw i32 %conv49.i, 24
  %add51.i = add i32 %shl50.i, %b.0.lcssa.i
  br label %sw.bb52.i

sw.bb52.i:                                        ; preds = %sw.bb47.i, %while.end.i.sw.bb52.i_crit_edge
  %b.1.i = phi i32 [ %b.0.lcssa.i, %while.end.i.sw.bb52.i_crit_edge ], [ %add51.i, %sw.bb47.i ]
  %c.5.i = phi i32 [ %c.0.lcssa.i, %while.end.i.sw.bb52.i_crit_edge ], [ %c.4.i, %sw.bb47.i ]
  %arrayidx53.i = getelementptr i8, ptr %k.0.lcssa.i, i32 6
  %17 = ptrtoint ptr %arrayidx53.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx53.i, align 1
  %conv54.i = zext i8 %18 to i32
  %shl55.i = shl nuw nsw i32 %conv54.i, 16
  %add56.i = add i32 %shl55.i, %b.1.i
  br label %sw.bb57.i

sw.bb57.i:                                        ; preds = %sw.bb52.i, %while.end.i.sw.bb57.i_crit_edge
  %b.2.i = phi i32 [ %b.0.lcssa.i, %while.end.i.sw.bb57.i_crit_edge ], [ %add56.i, %sw.bb52.i ]
  %c.6.i = phi i32 [ %c.0.lcssa.i, %while.end.i.sw.bb57.i_crit_edge ], [ %c.5.i, %sw.bb52.i ]
  %arrayidx58.i = getelementptr i8, ptr %k.0.lcssa.i, i32 5
  %19 = ptrtoint ptr %arrayidx58.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx58.i, align 1
  %conv59.i = zext i8 %20 to i32
  %shl60.i = shl nuw nsw i32 %conv59.i, 8
  %add61.i = add i32 %shl60.i, %b.2.i
  br label %sw.bb62.i

sw.bb62.i:                                        ; preds = %sw.bb57.i, %while.end.i.sw.bb62.i_crit_edge
  %b.3.i = phi i32 [ %b.0.lcssa.i, %while.end.i.sw.bb62.i_crit_edge ], [ %add61.i, %sw.bb57.i ]
  %c.7.i = phi i32 [ %c.0.lcssa.i, %while.end.i.sw.bb62.i_crit_edge ], [ %c.6.i, %sw.bb57.i ]
  %arrayidx63.i = getelementptr i8, ptr %k.0.lcssa.i, i32 4
  %21 = ptrtoint ptr %arrayidx63.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx63.i, align 1
  %conv64.i = zext i8 %22 to i32
  %add65.i = add i32 %b.3.i, %conv64.i
  br label %sw.bb66.i

sw.bb66.i:                                        ; preds = %sw.bb62.i, %while.end.i.sw.bb66.i_crit_edge
  %b.4.i = phi i32 [ %b.0.lcssa.i, %while.end.i.sw.bb66.i_crit_edge ], [ %add65.i, %sw.bb62.i ]
  %c.8.i = phi i32 [ %c.0.lcssa.i, %while.end.i.sw.bb66.i_crit_edge ], [ %c.7.i, %sw.bb62.i ]
  %arrayidx67.i = getelementptr i8, ptr %k.0.lcssa.i, i32 3
  %23 = ptrtoint ptr %arrayidx67.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx67.i, align 1
  %conv68.i = zext i8 %24 to i32
  %shl69.i = shl nuw i32 %conv68.i, 24
  %add70.i = add i32 %shl69.i, %a.0.lcssa.i
  br label %sw.bb71.i

sw.bb71.i:                                        ; preds = %sw.bb66.i, %while.end.i.sw.bb71.i_crit_edge
  %a.1.i = phi i32 [ %a.0.lcssa.i, %while.end.i.sw.bb71.i_crit_edge ], [ %add70.i, %sw.bb66.i ]
  %b.5.i = phi i32 [ %b.0.lcssa.i, %while.end.i.sw.bb71.i_crit_edge ], [ %b.4.i, %sw.bb66.i ]
  %c.9.i = phi i32 [ %c.0.lcssa.i, %while.end.i.sw.bb71.i_crit_edge ], [ %c.8.i, %sw.bb66.i ]
  %arrayidx72.i = getelementptr i8, ptr %k.0.lcssa.i, i32 2
  %25 = ptrtoint ptr %arrayidx72.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx72.i, align 1
  %conv73.i = zext i8 %26 to i32
  %shl74.i = shl nuw nsw i32 %conv73.i, 16
  %add75.i = add i32 %shl74.i, %a.1.i
  br label %sw.bb76.i

sw.bb76.i:                                        ; preds = %sw.bb71.i, %while.end.i.sw.bb76.i_crit_edge
  %a.2.i = phi i32 [ %a.0.lcssa.i, %while.end.i.sw.bb76.i_crit_edge ], [ %add75.i, %sw.bb71.i ]
  %b.6.i = phi i32 [ %b.0.lcssa.i, %while.end.i.sw.bb76.i_crit_edge ], [ %b.5.i, %sw.bb71.i ]
  %c.10.i = phi i32 [ %c.0.lcssa.i, %while.end.i.sw.bb76.i_crit_edge ], [ %c.9.i, %sw.bb71.i ]
  %arrayidx77.i = getelementptr i8, ptr %k.0.lcssa.i, i32 1
  %27 = ptrtoint ptr %arrayidx77.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx77.i, align 1
  %conv78.i = zext i8 %28 to i32
  %shl79.i = shl nuw nsw i32 %conv78.i, 8
  %add80.i = add i32 %shl79.i, %a.2.i
  br label %sw.bb81.i

sw.bb81.i:                                        ; preds = %sw.bb76.i, %while.end.i.sw.bb81.i_crit_edge
  %a.3.i = phi i32 [ %a.0.lcssa.i, %while.end.i.sw.bb81.i_crit_edge ], [ %add80.i, %sw.bb76.i ]
  %b.7.i = phi i32 [ %b.0.lcssa.i, %while.end.i.sw.bb81.i_crit_edge ], [ %b.6.i, %sw.bb76.i ]
  %c.11.i = phi i32 [ %c.0.lcssa.i, %while.end.i.sw.bb81.i_crit_edge ], [ %c.10.i, %sw.bb76.i ]
  %29 = ptrtoint ptr %k.0.lcssa.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %k.0.lcssa.i, align 1
  %conv83.i = zext i8 %30 to i32
  %add84.i = add i32 %a.3.i, %conv83.i
  %xor85.i = xor i32 %c.11.i, %b.7.i
  %or.i6.i = tail call i32 @llvm.fshl.i32(i32 %b.7.i, i32 %b.7.i, i32 14) #13
  %sub87.i = sub i32 %xor85.i, %or.i6.i
  %xor88.i = xor i32 %add84.i, %sub87.i
  %or.i7.i = tail call i32 @llvm.fshl.i32(i32 %sub87.i, i32 %sub87.i, i32 11) #13
  %sub90.i = sub i32 %xor88.i, %or.i7.i
  %xor91.i = xor i32 %sub90.i, %b.7.i
  %or.i8.i = tail call i32 @llvm.fshl.i32(i32 %sub90.i, i32 %sub90.i, i32 25) #13
  %sub93.i = sub i32 %xor91.i, %or.i8.i
  %xor94.i = xor i32 %sub93.i, %sub87.i
  %or.i9.i = tail call i32 @llvm.fshl.i32(i32 %sub93.i, i32 %sub93.i, i32 16) #13
  %sub96.i = sub i32 %xor94.i, %or.i9.i
  %xor97.i = xor i32 %sub96.i, %sub90.i
  %or.i10.i = tail call i32 @llvm.fshl.i32(i32 %sub96.i, i32 %sub96.i, i32 4) #13
  %sub99.i = sub i32 %xor97.i, %or.i10.i
  %xor100.i = xor i32 %sub99.i, %sub93.i
  %or.i11.i = tail call i32 @llvm.fshl.i32(i32 %sub99.i, i32 %sub99.i, i32 14) #13
  %sub102.i = sub i32 %xor100.i, %or.i11.i
  %xor103.i = xor i32 %sub102.i, %sub96.i
  %or.i12.i = tail call i32 @llvm.fshl.i32(i32 %sub102.i, i32 %sub102.i, i32 24) #13
  %sub105.i = sub i32 %xor103.i, %or.i12.i
  br label %jhash.exit

jhash.exit:                                       ; preds = %sw.bb81.i, %while.end.i.jhash.exit_crit_edge
  %c.12.i = phi i32 [ %c.0.lcssa.i, %while.end.i.jhash.exit_crit_edge ], [ %sub105.i, %sw.bb81.i ]
  ret i32 %c.12.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlbl_bitmap_walk(ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlbl_catmap_setbit(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_find_tlv(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_expand_head(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @calipso_cache_entry_free(ptr noundef %entry1) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %lsm_data = getelementptr inbounds %struct.calipso_map_cache_entry, ptr %entry1, i32 0, i32 3
  %0 = ptrtoint ptr %lsm_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lsm_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %1, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !60
  tail call void @llvm.prefetch.p0(ptr nonnull %1, i32 1, i32 3, i32 1) #13
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %1, ptr nonnull %1, i32 1, ptr nonnull elementtype(i32) %1) #13, !srcloc !61
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.end.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.if.end_crit_edge, label %if.then10.i.i.i.i, !prof !62

if.end5.i.i.i.i.if.end_crit_edge:                 ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @refcount_warn_saturate(ptr noundef nonnull %1, i32 noundef 3) #13
  br label %if.end

if.end.i:                                         ; preds = %if.then
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !63
  %free.i = getelementptr inbounds %struct.netlbl_lsm_cache, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %free.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %free.i, align 4
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %if.end.i.if.end3.i_crit_edge, label %if.then1.i

if.end.i.if.end3.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end3.i

if.then1.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %data.i = getelementptr inbounds %struct.netlbl_lsm_cache, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data.i, align 4
  tail call void %4(ptr noundef %6) #13
  br label %if.end3.i

if.end3.i:                                        ; preds = %if.then1.i, %if.end.i.if.end3.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %1) #13
  br label %if.end

if.end:                                           ; preds = %if.end3.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.end_crit_edge, %entry.if.end_crit_edge
  %key = getelementptr inbounds %struct.calipso_map_cache_entry, ptr %entry1, i32 0, i32 1
  %7 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %key, align 4
  tail call void @kfree(ptr noundef %8) #13
  tail call void @kfree(ptr noundef %entry1) #13
  ret void
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #12

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { argmemonly nofree nounwind readonly willreturn }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { cold }
attributes #17 = { nounwind allocsize(2) }
attributes #18 = { nobuiltin nounwind }
attributes #19 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !14, !15, !16, !18, !20, !21, !23, !24, !26, !28, !30, !32, !34, !35, !37, !39, !41, !42, !43, !45}
!llvm.named.register.sp = !{!47}
!llvm.module.flags = !{!48, !49, !50, !51, !52, !53, !54, !55}
!llvm.ident = !{!56}

!0 = !{ptr @calipso_cache_enabled, !1, !"calipso_cache_enabled", i1 false, i1 false}
!1 = !{!"../net/ipv6/calipso.c", i32 62, i32 5}
!2 = !{ptr @calipso_cache_bucketsize, !3, !"calipso_cache_bucketsize", i1 false, i1 false}
!3 = !{!"../net/ipv6/calipso.c", i32 63, i32 5}
!4 = !{ptr @calipso_validate.zero, !5, !"zero", i1 false, i1 false}
!5 = !{!"../net/ipv6/calipso.c", i32 575, i32 18}
!6 = !{ptr @calipso_cache, !7, !"calipso_cache", i1 false, i1 false}
!7 = !{!"../net/ipv6/calipso.c", i32 84, i32 38}
!8 = distinct !{null, !9, !"__warned", i1 false, i1 false}
!9 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!10 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!12 = distinct !{null, !13, !"__warned", i1 false, i1 false}
!13 = !{!"../net/ipv6/calipso.c", i32 329, i32 2}
!14 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @calipso_doi_list, !17, !"calipso_doi_list", i1 false, i1 false}
!17 = !{!"../net/ipv6/calipso.c", i32 59, i32 8}
!18 = distinct !{null, !19, !"__warned", i1 false, i1 false}
!19 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!20 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @calipso_cache_init.__key, !22, !"__key", i1 false, i1 false}
!22 = !{!"../net/ipv6/calipso.c", i32 143, i32 3}
!23 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @ops, !25, !"ops", i1 false, i1 false}
!25 = !{!"../net/ipv6/calipso.c", i32 1416, i32 40}
!26 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../net/ipv6/calipso.c", i32 381, i32 15}
!28 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../net/ipv6/calipso.c", i32 384, i32 15}
!30 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../net/ipv6/calipso.c", i32 387, i32 6}
!32 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../net/ipv6/calipso.c", i32 58, i32 8}
!34 = !{ptr @calipso_doi_list_lock, !33, !"calipso_doi_list_lock", i1 false, i1 false}
!35 = !{ptr @.str.10, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../net/ipv6/calipso.c", i32 460, i32 6}
!37 = distinct !{null, !38, !"__warned", i1 false, i1 false}
!38 = !{!"../net/ipv6/calipso.c", i32 537, i32 2}
!39 = distinct !{null, !40, !"__warned", i1 false, i1 false}
!40 = !{!"../include/net/ipv6.h", i32 379, i32 8}
!41 = !{ptr @.str.11, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.12, !40, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @calipso_genopt.padding, !44, !"padding", i1 false, i1 false}
!44 = !{!"../net/ipv6/calipso.c", i32 730, i32 29}
!45 = distinct !{null, !46, !"__already_done", i1 false, i1 false}
!46 = !{!"../net/ipv6/calipso.c", i32 690, i32 6}
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
!57 = !{i64 2149171282}
!58 = !{i64 2149171548}
!59 = !{i64 2149429490}
!60 = !{i64 2148294642}
!61 = !{i64 2148209106, i64 2148209138, i64 2148209167, i64 2148209201, i64 2148209232, i64 2148209255}
!62 = !{!"branch_weights", i32 2000, i32 1}
!63 = !{i64 2149621848}
!64 = !{i64 616106, i64 616130, i64 616151, i64 616168, i64 616185}
!65 = !{!"auto-init"}
!66 = !{i64 2158885928}
!67 = !{i64 711879, i64 711896, i64 711920, i64 711946, i64 711964}
!68 = !{i64 2158890337}
!69 = !{i64 2148207576, i64 2148207602, i64 2148207631, i64 2148207665, i64 2148207696, i64 2148207719}
!70 = !{i64 2158891198}
!71 = !{i64 2158891546}
!72 = !{i64 2148206641, i64 2148206673, i64 2148206702, i64 2148206736, i64 2148206767, i64 2148206790}
!73 = !{!"branch_weights", i32 1, i32 2000}
