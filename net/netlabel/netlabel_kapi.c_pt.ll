; ModuleID = '/llk/IR_all_yes/net/netlabel/netlabel_kapi.c_pt.bc'
source_filename = "../net/netlabel/netlabel_kapi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+netlbl_catmap_walk\22, \22a\22\09"
module asm "\09.weak\09__crc_netlbl_catmap_walk\09\09\09\09"
module asm "\09.long\09__crc_netlbl_catmap_walk\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_netlbl_catmap_walk:\09\09\09\09\09"
module asm "\09.asciz \09\22netlbl_catmap_walk\22\09\09\09\09\09"
module asm "__kstrtabns_netlbl_catmap_walk:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+netlbl_catmap_setbit\22, \22a\22\09"
module asm "\09.weak\09__crc_netlbl_catmap_setbit\09\09\09\09"
module asm "\09.long\09__crc_netlbl_catmap_setbit\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_netlbl_catmap_setbit:\09\09\09\09\09"
module asm "\09.asciz \09\22netlbl_catmap_setbit\22\09\09\09\09\09"
module asm "__kstrtabns_netlbl_catmap_setbit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+netlbl_bitmap_walk\22, \22a\22\09"
module asm "\09.weak\09__crc_netlbl_bitmap_walk\09\09\09\09"
module asm "\09.long\09__crc_netlbl_bitmap_walk\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_netlbl_bitmap_walk:\09\09\09\09\09"
module asm "\09.asciz \09\22netlbl_bitmap_walk\22\09\09\09\09\09"
module asm "__kstrtabns_netlbl_bitmap_walk:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+netlbl_bitmap_setbit\22, \22a\22\09"
module asm "\09.weak\09__crc_netlbl_bitmap_setbit\09\09\09\09"
module asm "\09.long\09__crc_netlbl_bitmap_setbit\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_netlbl_bitmap_setbit:\09\09\09\09\09"
module asm "\09.asciz \09\22netlbl_bitmap_setbit\22\09\09\09\09\09"
module asm "__kstrtabns_netlbl_bitmap_setbit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+netlbl_audit_start\22, \22a\22\09"
module asm "\09.weak\09__crc_netlbl_audit_start\09\09\09\09"
module asm "\09.long\09__crc_netlbl_audit_start\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_netlbl_audit_start:\09\09\09\09\09"
module asm "\09.asciz \09\22netlbl_audit_start\22\09\09\09\09\09"
module asm "__kstrtabns_netlbl_audit_start:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.netlbl_dom_map = type { ptr, i16, %struct.netlbl_dommap_def, i32, %struct.list_head, %struct.callback_head }
%struct.netlbl_dommap_def = type { i32, %union.anon.0 }
%union.anon.0 = type { ptr }
%struct.list_head = type { ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.netlbl_domaddr_map = type { %struct.list_head, %struct.list_head }
%struct.netlbl_domaddr4_map = type { %struct.netlbl_dommap_def, %struct.netlbl_af4list }
%struct.netlbl_af4list = type { i32, i32, i32, %struct.list_head }
%struct.netlbl_domaddr6_map = type { %struct.netlbl_dommap_def, %struct.netlbl_af6list }
%struct.netlbl_af6list = type { %struct.in6_addr, %struct.in6_addr, i32, %struct.list_head }
%struct.in6_addr = type { %union.anon }
%union.anon = type { [4 x i32] }
%struct.netlbl_lsm_catmap = type { i32, [4 x i64], ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.netlbl_lsm_secattr = type { i32, i32, ptr, ptr, %struct.anon.150 }
%struct.anon.150 = type { %struct.anon.151, i32 }
%struct.anon.151 = type { ptr, i32 }
%struct.sock_common = type { %union.anon.19, %union.anon.21, %union.anon.22, i16, i8, i8, i32, %union.anon.24, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.131, [0 x i32], %union.anon.132, i16, i16, %union.anon.133, %struct.refcount_struct, [0 x i32], %union.anon.134 }
%union.anon.19 = type { i64 }
%union.anon.21 = type { i32 }
%union.anon.22 = type { i32 }
%union.anon.24 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.possible_net_t = type { ptr }
%struct.atomic64_t = type { i64 }
%union.anon.131 = type { i32 }
%union.anon.132 = type { %struct.hlist_node }
%union.anon.133 = type { i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.134 = type { i32 }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.request_sock = type { %struct.sock_common, ptr, i16, i8, i8, i32, %struct.timer_list, ptr, ptr, ptr, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.sk_buff = type { %union.anon.87, %union.anon.113, %union.anon.114, [48 x i8], %union.anon.115, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.117, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.87 = type { %struct.anon.88 }
%struct.anon.88 = type { ptr, ptr, %union.anon.89 }
%union.anon.89 = type { ptr }
%union.anon.113 = type { ptr }
%union.anon.114 = type { i64 }
%union.anon.115 = type { %struct.anon.116 }
%struct.anon.116 = type { i32, ptr }
%union.anon.117 = type { %struct.anon.118 }
%struct.anon.118 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.119, i32, i32, i32, i16, i16, %union.anon.121, i32, %union.anon.122, %union.anon.123, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.119 = type { i32 }
%union.anon.121 = type { i32 }
%union.anon.122 = type { i32 }
%union.anon.123 = type { i16 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }

@__kstrtab_netlbl_catmap_walk = external dso_local constant [0 x i8], align 1
@__kstrtabns_netlbl_catmap_walk = external dso_local constant [0 x i8], align 1
@__ksymtab_netlbl_catmap_walk = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @netlbl_catmap_walk to i32), ptr @__kstrtab_netlbl_catmap_walk, ptr @__kstrtabns_netlbl_catmap_walk }, section "___ksymtab+netlbl_catmap_walk", align 4
@__kstrtab_netlbl_catmap_setbit = external dso_local constant [0 x i8], align 1
@__kstrtabns_netlbl_catmap_setbit = external dso_local constant [0 x i8], align 1
@__ksymtab_netlbl_catmap_setbit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @netlbl_catmap_setbit to i32), ptr @__kstrtab_netlbl_catmap_setbit, ptr @__kstrtabns_netlbl_catmap_setbit }, section "___ksymtab+netlbl_catmap_setbit", align 4
@__kstrtab_netlbl_bitmap_walk = external dso_local constant [0 x i8], align 1
@__kstrtabns_netlbl_bitmap_walk = external dso_local constant [0 x i8], align 1
@__ksymtab_netlbl_bitmap_walk = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @netlbl_bitmap_walk to i32), ptr @__kstrtab_netlbl_bitmap_walk, ptr @__kstrtabns_netlbl_bitmap_walk }, section "___ksymtab+netlbl_bitmap_walk", align 4
@__kstrtab_netlbl_bitmap_setbit = external dso_local constant [0 x i8], align 1
@__kstrtabns_netlbl_bitmap_setbit = external dso_local constant [0 x i8], align 1
@__ksymtab_netlbl_bitmap_setbit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @netlbl_bitmap_setbit to i32), ptr @__kstrtab_netlbl_bitmap_setbit, ptr @__kstrtabns_netlbl_bitmap_setbit }, section "___ksymtab+netlbl_bitmap_setbit", align 4
@netlabel_mgmt_protocount = external dso_local global %struct.atomic_t, align 4
@__kstrtab_netlbl_audit_start = external dso_local constant [0 x i8], align 1
@__kstrtabns_netlbl_audit_start = external dso_local constant [0 x i8], align 1
@__ksymtab_netlbl_audit_start = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @netlbl_audit_start to i32), ptr @__kstrtab_netlbl_audit_start, ptr @__kstrtabns_netlbl_audit_start }, section "___ksymtab+netlbl_audit_start", align 4
@__initcall__kmod_netlabel_kapi__500_1523_netlbl_init4 = internal global ptr @netlbl_init, section ".initcall4.init", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.2 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@netlbl_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 1495, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\016NetLabel: Initializing\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"netlbl_init\00", [20 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"net/netlabel/netlabel_kapi.c\00", [35 x i8] zeroinitializer }, align 32
@netlbl_init._entry_ptr = internal global ptr @netlbl_init._entry, section ".printk_index", align 4
@netlbl_init._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.4, ptr @.str.5, i32 1497, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016NetLabel:  domain hash size = %u\0A\00", [60 x i8] zeroinitializer }, align 32
@netlbl_init._entry_ptr.8 = internal global ptr @netlbl_init._entry.6, section ".printk_index", align 4
@netlbl_init._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.4, ptr @.str.5, i32 1498, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\016NetLabel:  protocols = UNLABELED CIPSOv4 CALIPSO\0A\00", [44 x i8] zeroinitializer }, align 32
@netlbl_init._entry_ptr.11 = internal global ptr @netlbl_init._entry.9, section ".printk_index", align 4
@netlbl_init._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.4, ptr @.str.5, i32 1515, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\016NetLabel:  unlabeled traffic allowed by default\0A\00", [45 x i8] zeroinitializer }, align 32
@netlbl_init._entry_ptr.14 = internal global ptr @netlbl_init._entry.12, section ".printk_index", align 4
@.str.15 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"NetLabel: failed to initialize properly (%d)\0A\00", [50 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.16 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.17 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.18 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.19 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.20 = internal global [5 x i64] [i64 3, i64 32, i64 3, i64 5, i64 6]
@__sancov_gen_cov_switch_values.21 = internal global [5 x i64] [i64 3, i64 32, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.22 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.23 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.24 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.25 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 5]
@__sancov_gen_cov_switch_values.26 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.27 = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 7]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.29 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 10]
@__sancov_gen_cov_switch_values.30 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 5]
@__sancov_gen_cov_switch_values.31 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 10]
@__sancov_gen_cov_switch_values.32 = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 7]
@__sancov_gen_cov_switch_values.33 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 10]
@__sancov_gen_cov_switch_values.34 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 10]
@__sancov_gen_cov_switch_values.35 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.36 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 5]
@__sancov_gen_cov_switch_values.37 = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 7]
@__sancov_gen_cov_switch_values.38 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.39 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 695, i32 2 }
@___asan_gen_.47 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 723, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 1495, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 1496, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 1498, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 1515, i32 2 }
@___asan_gen_.79 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.80 = private constant [32 x i8] c"../net/netlabel/netlabel_kapi.c\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 1520, i32 8 }
@llvm.compiler.used = appending global [24 x ptr] [ptr @__initcall__kmod_netlabel_kapi__500_1523_netlbl_init4, ptr @__ksymtab_netlbl_audit_start, ptr @__ksymtab_netlbl_bitmap_setbit, ptr @__ksymtab_netlbl_bitmap_walk, ptr @__ksymtab_netlbl_catmap_setbit, ptr @__ksymtab_netlbl_catmap_walk, ptr @netlbl_init._entry, ptr @netlbl_init._entry.12, ptr @netlbl_init._entry.6, ptr @netlbl_init._entry.9, ptr @netlbl_init._entry_ptr, ptr @netlbl_init._entry_ptr.11, ptr @netlbl_init._entry_ptr.14, ptr @netlbl_init._entry_ptr.8, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.15], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netlbl_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netlbl_init._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netlbl_init._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netlbl_init._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @netlbl_cfg_map_del(ptr noundef %domain, i16 noundef zeroext %family, ptr noundef %addr, ptr noundef %mask, ptr noundef %audit_info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %addr, null
  %cmp1 = icmp eq ptr %mask, null
  %or.cond = and i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 @netlbl_domhsh_remove(ptr noundef %domain, i16 noundef zeroext %family, ptr noundef %audit_info) #12
  br label %return

if.else:                                          ; preds = %entry
  %or.cond21 = or i1 %cmp, %cmp1
  br i1 %or.cond21, label %if.else.return_crit_edge, label %if.then5

if.else.return_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.then5:                                         ; preds = %if.else
  %0 = zext i16 %family to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i16 %family, label %if.then5.return_crit_edge [
    i16 2, label %sw.bb
    i16 10, label %sw.bb7
  ]

if.then5.return_crit_edge:                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

sw.bb:                                            ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  %call6 = tail call i32 @netlbl_domhsh_remove_af4(ptr noundef %domain, ptr noundef nonnull %addr, ptr noundef nonnull %mask, ptr noundef %audit_info) #12
  br label %return

sw.bb7:                                           ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  %call8 = tail call i32 @netlbl_domhsh_remove_af6(ptr noundef %domain, ptr noundef nonnull %addr, ptr noundef nonnull %mask, ptr noundef %audit_info) #12
  br label %return

return:                                           ; preds = %sw.bb7, %sw.bb, %if.then5.return_crit_edge, %if.else.return_crit_edge, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call8, %sw.bb7 ], [ %call6, %sw.bb ], [ -96, %if.then5.return_crit_edge ], [ -22, %if.else.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlbl_domhsh_remove(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlbl_domhsh_remove_af4(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlbl_domhsh_remove_af6(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @netlbl_cfg_unlbl_map_add(ptr noundef %domain, i16 noundef zeroext %family, ptr noundef readonly %addr, ptr noundef readonly %mask, ptr noundef %audit_info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 2848, i32 noundef 36) #15
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.cleanup106_crit_edge, label %if.end

entry.cleanup106_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup106

if.end:                                           ; preds = %entry
  %cmp2.not = icmp eq ptr %domain, null
  br i1 %cmp2.not, label %if.end.if.end10_crit_edge, label %if.then3

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

if.then3:                                         ; preds = %if.end
  %call4 = tail call noalias ptr @kstrdup(ptr noundef nonnull %domain, i32 noundef 2592) #12
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call4, ptr %call7.i.i, align 8
  %cmp7 = icmp eq ptr %call4, null
  br i1 %cmp7, label %if.then3.cfg_unlbl_map_add_failure_crit_edge, label %if.then3.if.end10_crit_edge

if.then3.if.end10_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

if.then3.cfg_unlbl_map_add_failure_crit_edge:     ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  br label %cfg_unlbl_map_add_failure

if.end10:                                         ; preds = %if.then3.if.end10_crit_edge, %if.end.if.end10_crit_edge
  %family11 = getelementptr inbounds %struct.netlbl_dom_map, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %family11 to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %family, ptr %family11, align 4
  %cmp12 = icmp eq ptr %addr, null
  %cmp13 = icmp eq ptr %mask, null
  %or.cond = and i1 %cmp12, %cmp13
  br i1 %or.cond, label %if.then14, label %if.else

if.then14:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  %def = getelementptr inbounds %struct.netlbl_dom_map, ptr %call7.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %def to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 5, ptr %def, align 8
  br label %if.end99

if.else:                                          ; preds = %if.end10
  %or.cond159 = or i1 %cmp12, %cmp13
  br i1 %or.cond159, label %if.else.cfg_unlbl_map_add_failure_crit_edge, label %if.then18

if.else.cfg_unlbl_map_add_failure_crit_edge:      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %cfg_unlbl_map_add_failure

if.then18:                                        ; preds = %if.else
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i164 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 2848, i32 noundef 16) #15
  %cmp20 = icmp eq ptr %call7.i.i164, null
  br i1 %cmp20, label %if.then18.cfg_unlbl_map_add_failure_crit_edge, label %if.end22

if.then18.cfg_unlbl_map_add_failure_crit_edge:    ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #14
  br label %cfg_unlbl_map_add_failure

if.end22:                                         ; preds = %if.then18
  %5 = ptrtoint ptr %call7.i.i164 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %call7.i.i164, ptr %call7.i.i164, align 8
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i164, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call7.i.i164, ptr %prev.i, align 4
  %list6 = getelementptr inbounds %struct.netlbl_domaddr_map, ptr %call7.i.i164, i32 0, i32 1
  %7 = ptrtoint ptr %list6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %list6, ptr %list6, align 8
  %prev.i165 = getelementptr inbounds %struct.netlbl_domaddr_map, ptr %call7.i.i164, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %prev.i165 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %list6, ptr %prev.i165, align 4
  %9 = zext i16 %family to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.16)
  switch i16 %family, label %if.end22.cfg_unlbl_map_add_failure_crit_edge [
    i16 2, label %sw.bb
    i16 10, label %sw.bb44
  ]

if.end22.cfg_unlbl_map_add_failure_crit_edge:     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  br label %cfg_unlbl_map_add_failure

sw.bb:                                            ; preds = %if.end22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i166 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 2848, i32 noundef 28) #15
  %cmp24 = icmp eq ptr %call7.i.i166, null
  br i1 %cmp24, label %sw.bb.cfg_unlbl_map_add_failure_crit_edge, label %cleanup

sw.bb.cfg_unlbl_map_add_failure_crit_edge:        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %cfg_unlbl_map_add_failure

cleanup:                                          ; preds = %sw.bb
  %11 = ptrtoint ptr %call7.i.i166 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 5, ptr %call7.i.i166, align 8
  %12 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %addr, align 4
  %14 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mask, align 4
  %and = and i32 %15, %13
  %list = getelementptr inbounds %struct.netlbl_domaddr4_map, ptr %call7.i.i166, i32 0, i32 1
  %16 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %and, ptr %list, align 8
  %mask34 = getelementptr inbounds %struct.netlbl_domaddr4_map, ptr %call7.i.i166, i32 0, i32 1, i32 1
  %17 = ptrtoint ptr %mask34 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %15, ptr %mask34, align 4
  %valid = getelementptr inbounds %struct.netlbl_domaddr4_map, ptr %call7.i.i166, i32 0, i32 1, i32 2
  %18 = ptrtoint ptr %valid to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %valid, align 8
  %call38 = tail call i32 @netlbl_af4list_add(ptr noundef %list, ptr noundef nonnull %call7.i.i164) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %cmp39.not.not = icmp eq i32 %call38, 0
  br i1 %cmp39.not.not, label %cleanup.sw.epilog_crit_edge, label %cleanup.cfg_unlbl_map_add_failure_crit_edge

cleanup.cfg_unlbl_map_add_failure_crit_edge:      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %cfg_unlbl_map_add_failure

cleanup.sw.epilog_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb44:                                          ; preds = %if.end22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %19 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i167 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %19, i32 noundef 2848, i32 noundef 52) #15
  %cmp46 = icmp eq ptr %call7.i.i167, null
  br i1 %cmp46, label %sw.bb44.cfg_unlbl_map_add_failure_crit_edge, label %cleanup91

sw.bb44.cfg_unlbl_map_add_failure_crit_edge:      ; preds = %sw.bb44
  call void @__sanitizer_cov_trace_pc() #14
  br label %cfg_unlbl_map_add_failure

cleanup91:                                        ; preds = %sw.bb44
  %20 = ptrtoint ptr %call7.i.i167 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 5, ptr %call7.i.i167, align 8
  %list52 = getelementptr inbounds %struct.netlbl_domaddr6_map, ptr %call7.i.i167, i32 0, i32 1
  %21 = call ptr @memcpy(ptr %list52, ptr %addr, i32 16)
  %22 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %mask, align 4
  %24 = ptrtoint ptr %list52 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %list52, align 8
  %and58 = and i32 %25, %23
  store i32 %and58, ptr %list52, align 8
  %arrayidx60 = getelementptr [4 x i32], ptr %mask, i32 0, i32 1
  %26 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx60, align 4
  %arrayidx64 = getelementptr %struct.netlbl_domaddr6_map, ptr %call7.i.i167, i32 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %28 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx64, align 4
  %and65 = and i32 %29, %27
  store i32 %and65, ptr %arrayidx64, align 4
  %arrayidx67 = getelementptr [4 x i32], ptr %mask, i32 0, i32 2
  %30 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx67, align 4
  %arrayidx71 = getelementptr %struct.netlbl_domaddr6_map, ptr %call7.i.i167, i32 0, i32 1, i32 0, i32 0, i32 0, i32 2
  %32 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx71, align 8
  %and72 = and i32 %33, %31
  store i32 %and72, ptr %arrayidx71, align 8
  %arrayidx74 = getelementptr [4 x i32], ptr %mask, i32 0, i32 3
  %34 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx74, align 4
  %arrayidx78 = getelementptr %struct.netlbl_domaddr6_map, ptr %call7.i.i167, i32 0, i32 1, i32 0, i32 0, i32 0, i32 3
  %36 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx78, align 4
  %and79 = and i32 %37, %35
  store i32 %and79, ptr %arrayidx78, align 4
  %mask81 = getelementptr inbounds %struct.netlbl_domaddr6_map, ptr %call7.i.i167, i32 0, i32 1, i32 1
  %38 = call ptr @memcpy(ptr %mask81, ptr %mask, i32 16)
  %valid83 = getelementptr inbounds %struct.netlbl_domaddr6_map, ptr %call7.i.i167, i32 0, i32 1, i32 2
  %39 = ptrtoint ptr %valid83 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 1, ptr %valid83, align 8
  %call86 = tail call i32 @netlbl_af6list_add(ptr noundef %list52, ptr noundef %list6) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %cmp87.not.not = icmp eq i32 %call86, 0
  br i1 %cmp87.not.not, label %cleanup91.sw.epilog_crit_edge, label %cleanup91.cfg_unlbl_map_add_failure_crit_edge

cleanup91.cfg_unlbl_map_add_failure_crit_edge:    ; preds = %cleanup91
  call void @__sanitizer_cov_trace_pc() #14
  br label %cfg_unlbl_map_add_failure

cleanup91.sw.epilog_crit_edge:                    ; preds = %cleanup91
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.epilog:                                        ; preds = %cleanup91.sw.epilog_crit_edge, %cleanup.sw.epilog_crit_edge
  %map4.0 = phi ptr [ null, %cleanup91.sw.epilog_crit_edge ], [ %call7.i.i166, %cleanup.sw.epilog_crit_edge ]
  %map6.0 = phi ptr [ %call7.i.i167, %cleanup91.sw.epilog_crit_edge ], [ null, %cleanup.sw.epilog_crit_edge ]
  %def94 = getelementptr inbounds %struct.netlbl_dom_map, ptr %call7.i.i, i32 0, i32 2
  %40 = getelementptr inbounds %struct.netlbl_dom_map, ptr %call7.i.i, i32 0, i32 2, i32 1
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call7.i.i164, ptr %40, align 4
  %42 = ptrtoint ptr %def94 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 6, ptr %def94, align 8
  br label %if.end99

if.end99:                                         ; preds = %sw.epilog, %if.then14
  %addrmap.0 = phi ptr [ null, %if.then14 ], [ %call7.i.i164, %sw.epilog ]
  %map4.1 = phi ptr [ null, %if.then14 ], [ %map4.0, %sw.epilog ]
  %map6.1 = phi ptr [ null, %if.then14 ], [ %map6.0, %sw.epilog ]
  %call100 = tail call i32 @netlbl_domhsh_add(ptr noundef nonnull %call7.i.i, ptr noundef %audit_info) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call100)
  %cmp101.not = icmp eq i32 %call100, 0
  br i1 %cmp101.not, label %if.end99.cleanup106_crit_edge, label %if.end99.cfg_unlbl_map_add_failure_crit_edge

if.end99.cfg_unlbl_map_add_failure_crit_edge:     ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #14
  br label %cfg_unlbl_map_add_failure

if.end99.cleanup106_crit_edge:                    ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup106

cfg_unlbl_map_add_failure:                        ; preds = %if.end99.cfg_unlbl_map_add_failure_crit_edge, %cleanup91.cfg_unlbl_map_add_failure_crit_edge, %sw.bb44.cfg_unlbl_map_add_failure_crit_edge, %cleanup.cfg_unlbl_map_add_failure_crit_edge, %sw.bb.cfg_unlbl_map_add_failure_crit_edge, %if.end22.cfg_unlbl_map_add_failure_crit_edge, %if.then18.cfg_unlbl_map_add_failure_crit_edge, %if.else.cfg_unlbl_map_add_failure_crit_edge, %if.then3.cfg_unlbl_map_add_failure_crit_edge
  %ret_val.2 = phi i32 [ -12, %if.then3.cfg_unlbl_map_add_failure_crit_edge ], [ %call100, %if.end99.cfg_unlbl_map_add_failure_crit_edge ], [ -12, %if.then18.cfg_unlbl_map_add_failure_crit_edge ], [ -12, %if.end22.cfg_unlbl_map_add_failure_crit_edge ], [ %call86, %cleanup91.cfg_unlbl_map_add_failure_crit_edge ], [ %call38, %cleanup.cfg_unlbl_map_add_failure_crit_edge ], [ -22, %if.else.cfg_unlbl_map_add_failure_crit_edge ], [ -12, %sw.bb.cfg_unlbl_map_add_failure_crit_edge ], [ -12, %sw.bb44.cfg_unlbl_map_add_failure_crit_edge ]
  %addrmap.1 = phi ptr [ null, %if.then3.cfg_unlbl_map_add_failure_crit_edge ], [ %addrmap.0, %if.end99.cfg_unlbl_map_add_failure_crit_edge ], [ null, %if.then18.cfg_unlbl_map_add_failure_crit_edge ], [ %call7.i.i164, %if.end22.cfg_unlbl_map_add_failure_crit_edge ], [ %call7.i.i164, %cleanup91.cfg_unlbl_map_add_failure_crit_edge ], [ %call7.i.i164, %cleanup.cfg_unlbl_map_add_failure_crit_edge ], [ null, %if.else.cfg_unlbl_map_add_failure_crit_edge ], [ %call7.i.i164, %sw.bb.cfg_unlbl_map_add_failure_crit_edge ], [ %call7.i.i164, %sw.bb44.cfg_unlbl_map_add_failure_crit_edge ]
  %map4.2 = phi ptr [ null, %if.then3.cfg_unlbl_map_add_failure_crit_edge ], [ %map4.1, %if.end99.cfg_unlbl_map_add_failure_crit_edge ], [ null, %if.then18.cfg_unlbl_map_add_failure_crit_edge ], [ null, %if.end22.cfg_unlbl_map_add_failure_crit_edge ], [ null, %cleanup91.cfg_unlbl_map_add_failure_crit_edge ], [ %call7.i.i166, %cleanup.cfg_unlbl_map_add_failure_crit_edge ], [ null, %if.else.cfg_unlbl_map_add_failure_crit_edge ], [ null, %sw.bb.cfg_unlbl_map_add_failure_crit_edge ], [ null, %sw.bb44.cfg_unlbl_map_add_failure_crit_edge ]
  %map6.2 = phi ptr [ null, %if.then3.cfg_unlbl_map_add_failure_crit_edge ], [ %map6.1, %if.end99.cfg_unlbl_map_add_failure_crit_edge ], [ null, %if.then18.cfg_unlbl_map_add_failure_crit_edge ], [ null, %if.end22.cfg_unlbl_map_add_failure_crit_edge ], [ %call7.i.i167, %cleanup91.cfg_unlbl_map_add_failure_crit_edge ], [ null, %cleanup.cfg_unlbl_map_add_failure_crit_edge ], [ null, %if.else.cfg_unlbl_map_add_failure_crit_edge ], [ null, %sw.bb.cfg_unlbl_map_add_failure_crit_edge ], [ null, %sw.bb44.cfg_unlbl_map_add_failure_crit_edge ]
  %43 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %call7.i.i, align 8
  tail call void @kfree(ptr noundef %44) #12
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  tail call void @kfree(ptr noundef %addrmap.1) #12
  tail call void @kfree(ptr noundef %map4.2) #12
  tail call void @kfree(ptr noundef %map6.2) #12
  br label %cleanup106

cleanup106:                                       ; preds = %cfg_unlbl_map_add_failure, %if.end99.cleanup106_crit_edge, %entry.cleanup106_crit_edge
  %retval.0 = phi i32 [ %ret_val.2, %cfg_unlbl_map_add_failure ], [ -12, %entry.cleanup106_crit_edge ], [ 0, %if.end99.cleanup106_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlbl_af4list_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlbl_af6list_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlbl_domhsh_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @netlbl_cfg_unlbl_static_add(ptr noundef %net, ptr noundef %dev_name, ptr noundef %addr, ptr noundef %mask, i16 noundef zeroext %family, i32 noundef %secid, ptr noundef %audit_info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i16 %family to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.17)
  switch i16 %family, label %entry.cleanup_crit_edge [
    i16 2, label %entry.sw.epilog_crit_edge
    i16 10, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %entry.sw.epilog_crit_edge
  %addr_len.0 = phi i32 [ 16, %sw.bb1 ], [ 4, %entry.sw.epilog_crit_edge ]
  %call = tail call i32 @netlbl_unlhsh_add(ptr noundef %net, ptr noundef %dev_name, ptr noundef %addr, ptr noundef %mask, i32 noundef %addr_len.0, i32 noundef %secid, ptr noundef %audit_info) #12
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %sw.epilog ], [ -96, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlbl_unlhsh_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @netlbl_cfg_unlbl_static_del(ptr noundef %net, ptr noundef %dev_name, ptr noundef %addr, ptr noundef %mask, i16 noundef zeroext %family, ptr noundef %audit_info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i16 %family to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.18)
  switch i16 %family, label %entry.cleanup_crit_edge [
    i16 2, label %entry.sw.epilog_crit_edge
    i16 10, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %entry.sw.epilog_crit_edge
  %addr_len.0 = phi i32 [ 16, %sw.bb1 ], [ 4, %entry.sw.epilog_crit_edge ]
  %call = tail call i32 @netlbl_unlhsh_remove(ptr noundef %net, ptr noundef %dev_name, ptr noundef %addr, ptr noundef %mask, i32 noundef %addr_len.0, ptr noundef %audit_info) #12
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %sw.epilog ], [ -96, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlbl_unlhsh_remove(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @netlbl_cfg_cipsov4_add(ptr noundef %doi_def, ptr noundef %audit_info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @cipso_v4_doi_add(ptr noundef %doi_def, ptr noundef %audit_info) #12
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cipso_v4_doi_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @netlbl_cfg_cipsov4_del(i32 noundef %doi, ptr noundef %audit_info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @cipso_v4_doi_remove(i32 noundef %doi, ptr noundef %audit_info) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cipso_v4_doi_remove(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @netlbl_cfg_cipsov4_map_add(i32 noundef %doi, ptr noundef %domain, ptr noundef readonly %addr, ptr noundef readonly %mask, ptr noundef %audit_info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @cipso_v4_doi_getdef(i32 noundef %doi) #12
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 2848, i32 noundef 36) #15
  %cmp3 = icmp eq ptr %call7.i.i, null
  br i1 %cmp3, label %if.end.out_entry_crit_edge, label %if.end5

if.end.out_entry_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_entry

if.end5:                                          ; preds = %if.end
  %family = getelementptr inbounds %struct.netlbl_dom_map, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %family to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 2, ptr %family, align 4
  %cmp6.not = icmp eq ptr %domain, null
  br i1 %cmp6.not, label %if.end5.if.end14_crit_edge, label %if.then7

if.end5.if.end14_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

if.then7:                                         ; preds = %if.end5
  %call8 = tail call noalias ptr @kstrdup(ptr noundef nonnull %domain, i32 noundef 2592) #12
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call8, ptr %call7.i.i, align 8
  %cmp11 = icmp eq ptr %call8, null
  br i1 %cmp11, label %if.then7.out_domain_crit_edge, label %if.then7.if.end14_crit_edge

if.then7.if.end14_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

if.then7.out_domain_crit_edge:                    ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_domain

if.end14:                                         ; preds = %if.then7.if.end14_crit_edge, %if.end5.if.end14_crit_edge
  %cmp15 = icmp eq ptr %addr, null
  %cmp16 = icmp eq ptr %mask, null
  %or.cond = and i1 %cmp15, %cmp16
  br i1 %or.cond, label %if.end14.if.end51_crit_edge, label %if.else

if.end14.if.end51_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end51

if.else:                                          ; preds = %if.end14
  %or.cond94 = or i1 %cmp15, %cmp16
  br i1 %or.cond94, label %if.else.out_addrmap_crit_edge, label %if.then22

if.else.out_addrmap_crit_edge:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_addrmap

if.then22:                                        ; preds = %if.else
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i95 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 2848, i32 noundef 16) #15
  %cmp24 = icmp eq ptr %call7.i.i95, null
  br i1 %cmp24, label %if.then22.out_addrmap_crit_edge, label %if.end26

if.then22.out_addrmap_crit_edge:                  ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_addrmap

if.end26:                                         ; preds = %if.then22
  %4 = ptrtoint ptr %call7.i.i95 to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %call7.i.i95, ptr %call7.i.i95, align 8
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i95, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i.i95, ptr %prev.i, align 4
  %list6 = getelementptr inbounds %struct.netlbl_domaddr_map, ptr %call7.i.i95, i32 0, i32 1
  %6 = ptrtoint ptr %list6 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %list6, ptr %list6, align 8
  %prev.i96 = getelementptr inbounds %struct.netlbl_domaddr_map, ptr %call7.i.i95, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %prev.i96 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %list6, ptr %prev.i96, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i97 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 2848, i32 noundef 28) #15
  %cmp28 = icmp eq ptr %call7.i.i97, null
  br i1 %cmp28, label %if.end26.out_addrinfo_crit_edge, label %if.end30

if.end26.out_addrinfo_crit_edge:                  ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_addrinfo

if.end30:                                         ; preds = %if.end26
  %9 = getelementptr inbounds %struct.netlbl_dommap_def, ptr %call7.i.i97, i32 0, i32 1
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call, ptr %9, align 4
  %11 = ptrtoint ptr %call7.i.i97 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 3, ptr %call7.i.i97, align 8
  %12 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %addr, align 4
  %14 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mask, align 4
  %and = and i32 %15, %13
  %list = getelementptr inbounds %struct.netlbl_domaddr4_map, ptr %call7.i.i97, i32 0, i32 1
  %16 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %and, ptr %list, align 8
  %mask38 = getelementptr inbounds %struct.netlbl_domaddr4_map, ptr %call7.i.i97, i32 0, i32 1, i32 1
  %17 = ptrtoint ptr %mask38 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %15, ptr %mask38, align 4
  %valid = getelementptr inbounds %struct.netlbl_domaddr4_map, ptr %call7.i.i97, i32 0, i32 1, i32 2
  %18 = ptrtoint ptr %valid to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %valid, align 8
  %call42 = tail call i32 @netlbl_af4list_add(ptr noundef %list, ptr noundef nonnull %call7.i.i95) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %cmp43.not = icmp eq i32 %call42, 0
  br i1 %cmp43.not, label %if.end30.if.end51_crit_edge, label %if.end30.cfg_cipsov4_map_add_failure_crit_edge

if.end30.cfg_cipsov4_map_add_failure_crit_edge:   ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  br label %cfg_cipsov4_map_add_failure

if.end30.if.end51_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end51

if.end51:                                         ; preds = %if.end30.if.end51_crit_edge, %if.end14.if.end51_crit_edge
  %call7.i.i95.sink = phi ptr [ %call, %if.end14.if.end51_crit_edge ], [ %call7.i.i95, %if.end30.if.end51_crit_edge ]
  %.sink = phi i32 [ 3, %if.end14.if.end51_crit_edge ], [ 6, %if.end30.if.end51_crit_edge ]
  %addrmap.0 = phi ptr [ null, %if.end14.if.end51_crit_edge ], [ %call7.i.i95, %if.end30.if.end51_crit_edge ]
  %addrinfo.0 = phi ptr [ null, %if.end14.if.end51_crit_edge ], [ %call7.i.i97, %if.end30.if.end51_crit_edge ]
  %def46 = getelementptr inbounds %struct.netlbl_dom_map, ptr %call7.i.i, i32 0, i32 2
  %19 = getelementptr inbounds %struct.netlbl_dom_map, ptr %call7.i.i, i32 0, i32 2, i32 1
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call7.i.i95.sink, ptr %19, align 4
  %21 = ptrtoint ptr %def46 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %.sink, ptr %def46, align 8
  %call52 = tail call i32 @netlbl_domhsh_add(ptr noundef nonnull %call7.i.i, ptr noundef %audit_info) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %cmp53.not = icmp eq i32 %call52, 0
  br i1 %cmp53.not, label %if.end51.cleanup_crit_edge, label %if.end51.cfg_cipsov4_map_add_failure_crit_edge

if.end51.cfg_cipsov4_map_add_failure_crit_edge:   ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #14
  br label %cfg_cipsov4_map_add_failure

if.end51.cleanup_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cfg_cipsov4_map_add_failure:                      ; preds = %if.end51.cfg_cipsov4_map_add_failure_crit_edge, %if.end30.cfg_cipsov4_map_add_failure_crit_edge
  %ret_val.0 = phi i32 [ %call52, %if.end51.cfg_cipsov4_map_add_failure_crit_edge ], [ %call42, %if.end30.cfg_cipsov4_map_add_failure_crit_edge ]
  %addrmap.1 = phi ptr [ %addrmap.0, %if.end51.cfg_cipsov4_map_add_failure_crit_edge ], [ %call7.i.i95, %if.end30.cfg_cipsov4_map_add_failure_crit_edge ]
  %addrinfo.1 = phi ptr [ %addrinfo.0, %if.end51.cfg_cipsov4_map_add_failure_crit_edge ], [ %call7.i.i97, %if.end30.cfg_cipsov4_map_add_failure_crit_edge ]
  tail call void @kfree(ptr noundef %addrinfo.1) #12
  br label %out_addrinfo

out_addrinfo:                                     ; preds = %cfg_cipsov4_map_add_failure, %if.end26.out_addrinfo_crit_edge
  %ret_val.1 = phi i32 [ %ret_val.0, %cfg_cipsov4_map_add_failure ], [ -12, %if.end26.out_addrinfo_crit_edge ]
  %addrmap.2 = phi ptr [ %addrmap.1, %cfg_cipsov4_map_add_failure ], [ %call7.i.i95, %if.end26.out_addrinfo_crit_edge ]
  tail call void @kfree(ptr noundef %addrmap.2) #12
  br label %out_addrmap

out_addrmap:                                      ; preds = %out_addrinfo, %if.then22.out_addrmap_crit_edge, %if.else.out_addrmap_crit_edge
  %ret_val.2 = phi i32 [ %ret_val.1, %out_addrinfo ], [ -12, %if.then22.out_addrmap_crit_edge ], [ -22, %if.else.out_addrmap_crit_edge ]
  %22 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %call7.i.i, align 8
  tail call void @kfree(ptr noundef %23) #12
  br label %out_domain

out_domain:                                       ; preds = %out_addrmap, %if.then7.out_domain_crit_edge
  %ret_val.3 = phi i32 [ -12, %if.then7.out_domain_crit_edge ], [ %ret_val.2, %out_addrmap ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %out_entry

out_entry:                                        ; preds = %out_domain, %if.end.out_entry_crit_edge
  %ret_val.4 = phi i32 [ -12, %if.end.out_entry_crit_edge ], [ %ret_val.3, %out_domain ]
  tail call void @cipso_v4_doi_putdef(ptr noundef nonnull %call) #12
  br label %cleanup

cleanup:                                          ; preds = %out_entry, %if.end51.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret_val.4, %out_entry ], [ -2, %entry.cleanup_crit_edge ], [ 0, %if.end51.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cipso_v4_doi_getdef(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cipso_v4_doi_putdef(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @netlbl_cfg_calipso_add(ptr noundef %doi_def, ptr noundef %audit_info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @calipso_doi_add(ptr noundef %doi_def, ptr noundef %audit_info) #12
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @calipso_doi_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @netlbl_cfg_calipso_del(i32 noundef %doi, ptr noundef %audit_info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @calipso_doi_remove(i32 noundef %doi, ptr noundef %audit_info) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @calipso_doi_remove(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @netlbl_cfg_calipso_map_add(i32 noundef %doi, ptr noundef %domain, ptr noundef readonly %addr, ptr noundef readonly %mask, ptr noundef %audit_info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @calipso_doi_getdef(i32 noundef %doi) #12
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 2848, i32 noundef 36) #15
  %cmp3 = icmp eq ptr %call7.i.i, null
  br i1 %cmp3, label %if.end.out_entry_crit_edge, label %if.end5

if.end.out_entry_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_entry

if.end5:                                          ; preds = %if.end
  %family = getelementptr inbounds %struct.netlbl_dom_map, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %family to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 10, ptr %family, align 4
  %cmp6.not = icmp eq ptr %domain, null
  br i1 %cmp6.not, label %if.end5.if.end14_crit_edge, label %if.then7

if.end5.if.end14_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

if.then7:                                         ; preds = %if.end5
  %call8 = tail call noalias ptr @kstrdup(ptr noundef nonnull %domain, i32 noundef 2592) #12
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call8, ptr %call7.i.i, align 8
  %cmp11 = icmp eq ptr %call8, null
  br i1 %cmp11, label %if.then7.out_domain_crit_edge, label %if.then7.if.end14_crit_edge

if.then7.if.end14_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

if.then7.out_domain_crit_edge:                    ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_domain

if.end14:                                         ; preds = %if.then7.if.end14_crit_edge, %if.end5.if.end14_crit_edge
  %cmp15 = icmp eq ptr %addr, null
  %cmp16 = icmp eq ptr %mask, null
  %or.cond = and i1 %cmp15, %cmp16
  br i1 %or.cond, label %if.end14.if.end74_crit_edge, label %if.else

if.end14.if.end74_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end74

if.else:                                          ; preds = %if.end14
  %or.cond124 = or i1 %cmp15, %cmp16
  br i1 %or.cond124, label %if.else.out_addrmap_crit_edge, label %if.then22

if.else.out_addrmap_crit_edge:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_addrmap

if.then22:                                        ; preds = %if.else
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i125 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 2848, i32 noundef 16) #15
  %cmp24 = icmp eq ptr %call7.i.i125, null
  br i1 %cmp24, label %if.then22.out_addrmap_crit_edge, label %if.end26

if.then22.out_addrmap_crit_edge:                  ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_addrmap

if.end26:                                         ; preds = %if.then22
  %4 = ptrtoint ptr %call7.i.i125 to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %call7.i.i125, ptr %call7.i.i125, align 8
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i125, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i.i125, ptr %prev.i, align 4
  %list6 = getelementptr inbounds %struct.netlbl_domaddr_map, ptr %call7.i.i125, i32 0, i32 1
  %6 = ptrtoint ptr %list6 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %list6, ptr %list6, align 8
  %prev.i126 = getelementptr inbounds %struct.netlbl_domaddr_map, ptr %call7.i.i125, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %prev.i126 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %list6, ptr %prev.i126, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i127 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 2848, i32 noundef 52) #15
  %cmp28 = icmp eq ptr %call7.i.i127, null
  br i1 %cmp28, label %if.end26.out_addrinfo_crit_edge, label %if.end30

if.end26.out_addrinfo_crit_edge:                  ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_addrinfo

if.end30:                                         ; preds = %if.end26
  %9 = getelementptr inbounds %struct.netlbl_dommap_def, ptr %call7.i.i127, i32 0, i32 1
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call, ptr %9, align 4
  %11 = ptrtoint ptr %call7.i.i127 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 7, ptr %call7.i.i127, align 8
  %list = getelementptr inbounds %struct.netlbl_domaddr6_map, ptr %call7.i.i127, i32 0, i32 1
  %12 = call ptr @memcpy(ptr %list, ptr %addr, i32 16)
  %13 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mask, align 4
  %15 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %list, align 8
  %and = and i32 %16, %14
  store i32 %and, ptr %list, align 8
  %arrayidx40 = getelementptr [4 x i32], ptr %mask, i32 0, i32 1
  %17 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx40, align 4
  %arrayidx44 = getelementptr %struct.netlbl_domaddr6_map, ptr %call7.i.i127, i32 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %19 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx44, align 4
  %and45 = and i32 %20, %18
  store i32 %and45, ptr %arrayidx44, align 4
  %arrayidx47 = getelementptr [4 x i32], ptr %mask, i32 0, i32 2
  %21 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx47, align 4
  %arrayidx51 = getelementptr %struct.netlbl_domaddr6_map, ptr %call7.i.i127, i32 0, i32 1, i32 0, i32 0, i32 0, i32 2
  %23 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx51, align 8
  %and52 = and i32 %24, %22
  store i32 %and52, ptr %arrayidx51, align 8
  %arrayidx54 = getelementptr [4 x i32], ptr %mask, i32 0, i32 3
  %25 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx54, align 4
  %arrayidx58 = getelementptr %struct.netlbl_domaddr6_map, ptr %call7.i.i127, i32 0, i32 1, i32 0, i32 0, i32 0, i32 3
  %27 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx58, align 4
  %and59 = and i32 %28, %26
  store i32 %and59, ptr %arrayidx58, align 4
  %mask61 = getelementptr inbounds %struct.netlbl_domaddr6_map, ptr %call7.i.i127, i32 0, i32 1, i32 1
  %29 = call ptr @memcpy(ptr %mask61, ptr %mask, i32 16)
  %valid = getelementptr inbounds %struct.netlbl_domaddr6_map, ptr %call7.i.i127, i32 0, i32 1, i32 2
  %30 = ptrtoint ptr %valid to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 1, ptr %valid, align 8
  %call65 = tail call i32 @netlbl_af6list_add(ptr noundef %list, ptr noundef %list6) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %cmp66.not = icmp eq i32 %call65, 0
  br i1 %cmp66.not, label %if.end30.if.end74_crit_edge, label %if.end30.cfg_calipso_map_add_failure_crit_edge

if.end30.cfg_calipso_map_add_failure_crit_edge:   ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  br label %cfg_calipso_map_add_failure

if.end30.if.end74_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end74

if.end74:                                         ; preds = %if.end30.if.end74_crit_edge, %if.end14.if.end74_crit_edge
  %call7.i.i125.sink = phi ptr [ %call, %if.end14.if.end74_crit_edge ], [ %call7.i.i125, %if.end30.if.end74_crit_edge ]
  %.sink = phi i32 [ 7, %if.end14.if.end74_crit_edge ], [ 6, %if.end30.if.end74_crit_edge ]
  %addrmap.0 = phi ptr [ null, %if.end14.if.end74_crit_edge ], [ %call7.i.i125, %if.end30.if.end74_crit_edge ]
  %addrinfo.0 = phi ptr [ null, %if.end14.if.end74_crit_edge ], [ %call7.i.i127, %if.end30.if.end74_crit_edge ]
  %def69 = getelementptr inbounds %struct.netlbl_dom_map, ptr %call7.i.i, i32 0, i32 2
  %31 = getelementptr inbounds %struct.netlbl_dom_map, ptr %call7.i.i, i32 0, i32 2, i32 1
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call7.i.i125.sink, ptr %31, align 4
  %33 = ptrtoint ptr %def69 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %.sink, ptr %def69, align 8
  %call75 = tail call i32 @netlbl_domhsh_add(ptr noundef nonnull %call7.i.i, ptr noundef %audit_info) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %cmp76.not = icmp eq i32 %call75, 0
  br i1 %cmp76.not, label %if.end74.cleanup_crit_edge, label %if.end74.cfg_calipso_map_add_failure_crit_edge

if.end74.cfg_calipso_map_add_failure_crit_edge:   ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #14
  br label %cfg_calipso_map_add_failure

if.end74.cleanup_crit_edge:                       ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cfg_calipso_map_add_failure:                      ; preds = %if.end74.cfg_calipso_map_add_failure_crit_edge, %if.end30.cfg_calipso_map_add_failure_crit_edge
  %ret_val.0 = phi i32 [ %call75, %if.end74.cfg_calipso_map_add_failure_crit_edge ], [ %call65, %if.end30.cfg_calipso_map_add_failure_crit_edge ]
  %addrmap.1 = phi ptr [ %addrmap.0, %if.end74.cfg_calipso_map_add_failure_crit_edge ], [ %call7.i.i125, %if.end30.cfg_calipso_map_add_failure_crit_edge ]
  %addrinfo.1 = phi ptr [ %addrinfo.0, %if.end74.cfg_calipso_map_add_failure_crit_edge ], [ %call7.i.i127, %if.end30.cfg_calipso_map_add_failure_crit_edge ]
  tail call void @kfree(ptr noundef %addrinfo.1) #12
  br label %out_addrinfo

out_addrinfo:                                     ; preds = %cfg_calipso_map_add_failure, %if.end26.out_addrinfo_crit_edge
  %ret_val.1 = phi i32 [ %ret_val.0, %cfg_calipso_map_add_failure ], [ -12, %if.end26.out_addrinfo_crit_edge ]
  %addrmap.2 = phi ptr [ %addrmap.1, %cfg_calipso_map_add_failure ], [ %call7.i.i125, %if.end26.out_addrinfo_crit_edge ]
  tail call void @kfree(ptr noundef %addrmap.2) #12
  br label %out_addrmap

out_addrmap:                                      ; preds = %out_addrinfo, %if.then22.out_addrmap_crit_edge, %if.else.out_addrmap_crit_edge
  %ret_val.2 = phi i32 [ %ret_val.1, %out_addrinfo ], [ -12, %if.then22.out_addrmap_crit_edge ], [ -22, %if.else.out_addrmap_crit_edge ]
  %34 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %call7.i.i, align 8
  tail call void @kfree(ptr noundef %35) #12
  br label %out_domain

out_domain:                                       ; preds = %out_addrmap, %if.then7.out_domain_crit_edge
  %ret_val.3 = phi i32 [ -12, %if.then7.out_domain_crit_edge ], [ %ret_val.2, %out_addrmap ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %out_entry

out_entry:                                        ; preds = %out_domain, %if.end.out_entry_crit_edge
  %ret_val.4 = phi i32 [ -12, %if.end.out_entry_crit_edge ], [ %ret_val.3, %out_domain ]
  tail call void @calipso_doi_putdef(ptr noundef nonnull %call) #12
  br label %cleanup

cleanup:                                          ; preds = %out_entry, %if.end74.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret_val.4, %out_entry ], [ -2, %entry.cleanup_crit_edge ], [ 0, %if.end74.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @calipso_doi_getdef(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @calipso_doi_putdef(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @netlbl_catmap_walk(ptr noundef %catmap, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp.i = icmp eq ptr %catmap, null
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %0 = ptrtoint ptr %catmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %catmap, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %offset)
  %cmp1.i = icmp ugt i32 %1, %offset
  br i1 %cmp1.i, label %if.end.i.if.end_crit_edge, label %if.end.i.land.rhs.i_crit_edge

if.end.i.land.rhs.i_crit_edge:                    ; preds = %if.end.i
  br label %land.rhs.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.rhs.i:                                       ; preds = %while.body.i.land.rhs.i_crit_edge, %if.end.i.land.rhs.i_crit_edge
  %iter.058.i = phi ptr [ %5, %while.body.i.land.rhs.i_crit_edge ], [ %catmap, %if.end.i.land.rhs.i_crit_edge ]
  %2 = ptrtoint ptr %iter.058.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %iter.058.i, align 8
  %add.i = add i32 %3, 256
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %offset)
  %cmp5.not.i = icmp ugt i32 %add.i, %offset
  br i1 %cmp5.not.i, label %land.rhs.i.if.end_crit_edge, label %while.body.i

land.rhs.i.if.end_crit_edge:                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

while.body.i:                                     ; preds = %land.rhs.i
  %next.i = getelementptr inbounds %struct.netlbl_lsm_catmap, ptr %iter.058.i, i32 0, i32 2
  %4 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %next.i, align 8
  %cond.i = icmp eq ptr %5, null
  br i1 %cond.i, label %while.body.i.cleanup_crit_edge, label %while.body.i.land.rhs.i_crit_edge

while.body.i.land.rhs.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs.i

while.body.i.cleanup_crit_edge:                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %land.rhs.i.if.end_crit_edge, %if.end.i.if.end_crit_edge
  %retval.0.i = phi ptr [ %catmap, %if.end.i.if.end_crit_edge ], [ %iter.058.i, %land.rhs.i.if.end_crit_edge ]
  %6 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %retval.0.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %offset)
  %cmp1 = icmp ult i32 %7, %offset
  %sub = sub i32 %offset, %7
  %div46 = lshr i32 %sub, 6
  %rem = and i32 %sub, 63
  %idx.0 = select i1 %cmp1, i32 %div46, i32 0
  %bit.0 = select i1 %cmp1, i32 %rem, i32 0
  %arrayidx = getelementptr %struct.netlbl_lsm_catmap, ptr %retval.0.i, i32 0, i32 1, i32 %idx.0
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %arrayidx, align 8
  %sh_prom = zext i32 %bit.0 to i64
  %shr = lshr i64 %9, %sh_prom
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shr)
  %cmp6.not55 = icmp eq i64 %shr, 0
  br i1 %cmp6.not55, label %if.end.if.end12_crit_edge, label %if.end.while.cond.preheader_crit_edge

if.end.while.cond.preheader_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.preheader

if.end.if.end12_crit_edge:                        ; preds = %if.end
  br label %if.end12

while.cond.preheader:                             ; preds = %if.end21.while.cond.preheader_crit_edge, %if.end.while.cond.preheader_crit_edge
  %iter.0.lcssa = phi ptr [ %retval.0.i, %if.end.while.cond.preheader_crit_edge ], [ %iter.1, %if.end21.while.cond.preheader_crit_edge ]
  %idx.1.lcssa = phi i32 [ %idx.0, %if.end.while.cond.preheader_crit_edge ], [ %idx.2, %if.end21.while.cond.preheader_crit_edge ]
  %bit.1.lcssa = phi i32 [ %bit.0, %if.end.while.cond.preheader_crit_edge ], [ 0, %if.end21.while.cond.preheader_crit_edge ]
  %bitmap.0.lcssa = phi i64 [ %shr, %if.end.while.cond.preheader_crit_edge ], [ %16, %if.end21.while.cond.preheader_crit_edge ]
  %and61 = and i64 %bitmap.0.lcssa, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and61)
  %cmp862 = icmp eq i64 %and61, 0
  br i1 %cmp862, label %while.cond.preheader.while.body_crit_edge, label %while.cond.preheader.while.end_crit_edge

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %bitmap.164 = phi i64 [ %shr9, %while.body.while.body_crit_edge ], [ %bitmap.0.lcssa, %while.cond.preheader.while.body_crit_edge ]
  %bit.263 = phi i32 [ %inc, %while.body.while.body_crit_edge ], [ %bit.1.lcssa, %while.cond.preheader.while.body_crit_edge ]
  %shr9 = lshr i64 %bitmap.164, 1
  %inc = add i32 %bit.263, 1
  %10 = and i64 %bitmap.164, 2
  %cmp8 = icmp eq i64 %10, 0
  br i1 %cmp8, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %bit.2.lcssa = phi i32 [ %bit.1.lcssa, %while.cond.preheader.while.end_crit_edge ], [ %inc, %while.body.while.end_crit_edge ]
  %11 = ptrtoint ptr %iter.0.lcssa to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %iter.0.lcssa, align 8
  %mul = shl i32 %idx.1.lcssa, 6
  %add = add i32 %bit.2.lcssa, %mul
  %add11 = add i32 %add, %12
  br label %cleanup

if.end12:                                         ; preds = %if.end21.if.end12_crit_edge, %if.end.if.end12_crit_edge
  %idx.157 = phi i32 [ %idx.2, %if.end21.if.end12_crit_edge ], [ %idx.0, %if.end.if.end12_crit_edge ]
  %iter.056 = phi ptr [ %iter.1, %if.end21.if.end12_crit_edge ], [ %retval.0.i, %if.end.if.end12_crit_edge ]
  %inc13 = add i32 %idx.157, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %inc13)
  %cmp14 = icmp ugt i32 %inc13, 3
  br i1 %cmp14, label %if.then15, label %if.end12.if.end21_crit_edge

if.end12.if.end21_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

if.then15:                                        ; preds = %if.end12
  %next = getelementptr inbounds %struct.netlbl_lsm_catmap, ptr %iter.056, i32 0, i32 2
  %13 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %next, align 8
  %cmp16.not = icmp eq ptr %14, null
  br i1 %cmp16.not, label %if.then15.cleanup_crit_edge, label %if.then15.if.end21_crit_edge

if.then15.if.end21_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

if.then15.cleanup_crit_edge:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end21:                                         ; preds = %if.then15.if.end21_crit_edge, %if.end12.if.end21_crit_edge
  %iter.1 = phi ptr [ %iter.056, %if.end12.if.end21_crit_edge ], [ %14, %if.then15.if.end21_crit_edge ]
  %idx.2 = phi i32 [ %inc13, %if.end12.if.end21_crit_edge ], [ 0, %if.then15.if.end21_crit_edge ]
  %arrayidx23 = getelementptr %struct.netlbl_lsm_catmap, ptr %iter.1, i32 0, i32 1, i32 %idx.2
  %15 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %arrayidx23, align 8
  %cmp6.not = icmp eq i64 %16, 0
  br i1 %cmp6.not, label %if.end21.if.end12_crit_edge, label %if.end21.while.cond.preheader_crit_edge

if.end21.while.cond.preheader_crit_edge:          ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.preheader

if.end21.if.end12_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

cleanup:                                          ; preds = %if.then15.cleanup_crit_edge, %while.end, %while.body.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %add11, %while.end ], [ -2, %entry.cleanup_crit_edge ], [ -2, %if.then15.cleanup_crit_edge ], [ -2, %while.body.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @netlbl_catmap_walkrng(ptr noundef %catmap, i32 noundef %offset) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp.i = icmp eq ptr %catmap, null
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %0 = ptrtoint ptr %catmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %catmap, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %offset)
  %cmp1.i = icmp ugt i32 %1, %offset
  br i1 %cmp1.i, label %if.end.i.if.end_crit_edge, label %if.end.i.land.rhs.i_crit_edge

if.end.i.land.rhs.i_crit_edge:                    ; preds = %if.end.i
  br label %land.rhs.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.rhs.i:                                       ; preds = %while.body.i.land.rhs.i_crit_edge, %if.end.i.land.rhs.i_crit_edge
  %iter.058.i = phi ptr [ %5, %while.body.i.land.rhs.i_crit_edge ], [ %catmap, %if.end.i.land.rhs.i_crit_edge ]
  %2 = ptrtoint ptr %iter.058.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %iter.058.i, align 8
  %add.i = add i32 %3, 256
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %offset)
  %cmp5.not.i = icmp ugt i32 %add.i, %offset
  br i1 %cmp5.not.i, label %land.rhs.i.if.end_crit_edge, label %while.body.i

land.rhs.i.if.end_crit_edge:                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

while.body.i:                                     ; preds = %land.rhs.i
  %next.i = getelementptr inbounds %struct.netlbl_lsm_catmap, ptr %iter.058.i, i32 0, i32 2
  %4 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %next.i, align 8
  %cond.i = icmp eq ptr %5, null
  br i1 %cond.i, label %while.body.i.cleanup_crit_edge, label %while.body.i.land.rhs.i_crit_edge

while.body.i.land.rhs.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs.i

while.body.i.cleanup_crit_edge:                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %land.rhs.i.if.end_crit_edge, %if.end.i.if.end_crit_edge
  %retval.0.i = phi ptr [ %catmap, %if.end.i.if.end_crit_edge ], [ %iter.058.i, %land.rhs.i.if.end_crit_edge ]
  %6 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %retval.0.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %offset)
  %cmp1 = icmp ult i32 %7, %offset
  %sub = sub i32 %offset, %7
  %div64 = lshr i32 %sub, 6
  %rem = and i32 %sub, 63
  %idx.0 = select i1 %cmp1, i32 %div64, i32 0
  %bit.0 = select i1 %cmp1, i32 %rem, i32 0
  %sh_prom = zext i32 %bit.0 to i64
  %shl = shl nuw i64 1, %sh_prom
  %arrayidx130 = getelementptr %struct.netlbl_lsm_catmap, ptr %retval.0.i, i32 0, i32 1, i32 %idx.0
  %8 = ptrtoint ptr %arrayidx130 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %arrayidx130, align 8
  %and78131 = and i64 %shl, %9
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and78131)
  %cmp7.not79132 = icmp eq i64 %and78131, 0
  br i1 %cmp7.not79132, label %if.end.while.end_crit_edge, label %if.end.while.body.preheader_crit_edge

if.end.while.body.preheader_crit_edge:            ; preds = %if.end
  br label %while.body.preheader

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body.preheader:                             ; preds = %if.end35.while.body.preheader_crit_edge, %if.end.while.body.preheader_crit_edge
  %10 = phi i64 [ %20, %if.end35.while.body.preheader_crit_edge ], [ %9, %if.end.while.body.preheader_crit_edge ]
  %bitmask.0137 = phi i64 [ 1, %if.end35.while.body.preheader_crit_edge ], [ %shl, %if.end.while.body.preheader_crit_edge ]
  %bit.1136 = phi i32 [ 0, %if.end35.while.body.preheader_crit_edge ], [ %bit.0, %if.end.while.body.preheader_crit_edge ]
  %idx.1135 = phi i32 [ %idx.2, %if.end35.while.body.preheader_crit_edge ], [ %idx.0, %if.end.while.body.preheader_crit_edge ]
  %prev.0134 = phi ptr [ %prev.1, %if.end35.while.body.preheader_crit_edge ], [ null, %if.end.while.body.preheader_crit_edge ]
  %iter.0133 = phi ptr [ %iter.1, %if.end35.while.body.preheader_crit_edge ], [ %retval.0.i, %if.end.while.body.preheader_crit_edge ]
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.preheader
  %bitmask.182 = phi i64 [ %shl8, %while.body.while.body_crit_edge ], [ %bitmask.0137, %while.body.preheader ]
  %bit.281 = phi i32 [ %inc, %while.body.while.body_crit_edge ], [ %bit.1136, %while.body.preheader ]
  %shl8 = shl i64 %bitmask.182, 1
  %inc = add nuw nsw i32 %bit.281, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl8)
  %cmp6.not = icmp eq i64 %shl8, 0
  %and = and i64 %shl8, %10
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %cmp7.not = icmp eq i64 %and, 0
  %or.cond = select i1 %cmp6.not, i1 true, i1 %cmp7.not
  br i1 %or.cond, label %if.else15, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

while.end:                                        ; preds = %if.end35.while.end_crit_edge, %if.end.while.end_crit_edge
  %iter.0.lcssa = phi ptr [ %retval.0.i, %if.end.while.end_crit_edge ], [ %iter.1, %if.end35.while.end_crit_edge ]
  %prev.0.lcssa = phi ptr [ null, %if.end.while.end_crit_edge ], [ %prev.1, %if.end35.while.end_crit_edge ]
  %idx.1.lcssa = phi i32 [ %idx.0, %if.end.while.end_crit_edge ], [ %idx.2, %if.end35.while.end_crit_edge ]
  %bit.1.lcssa = phi i32 [ %bit.0, %if.end.while.end_crit_edge ], [ 0, %if.end35.while.end_crit_edge ]
  %tobool.not = icmp ne ptr %prev.0.lcssa, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %idx.1.lcssa)
  %cmp9 = icmp eq i32 %idx.1.lcssa, 0
  %or.cond65 = select i1 %tobool.not, i1 %cmp9, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bit.1.lcssa)
  %cmp11 = icmp eq i32 %bit.1.lcssa, 0
  %or.cond66 = select i1 %or.cond65, i1 %cmp11, i1 false
  br i1 %or.cond66, label %if.then12, label %while.end.if.then17_crit_edge

while.end.if.then17_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then17

if.then12:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  %11 = ptrtoint ptr %prev.0.lcssa to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %prev.0.lcssa, align 8
  %sub14 = add i32 %12, 255
  br label %cleanup

if.else15:                                        ; preds = %while.body
  br i1 %cmp6.not, label %if.else22, label %if.else15.if.then17_crit_edge

if.else15.if.then17_crit_edge:                    ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then17

if.then17:                                        ; preds = %if.else15.if.then17_crit_edge, %while.end.if.then17_crit_edge
  %iter.0128 = phi ptr [ %iter.0.lcssa, %while.end.if.then17_crit_edge ], [ %iter.0133, %if.else15.if.then17_crit_edge ]
  %idx.1123 = phi i32 [ %idx.1.lcssa, %while.end.if.then17_crit_edge ], [ %idx.1135, %if.else15.if.then17_crit_edge ]
  %bit.2.lcssa101105 = phi i32 [ %bit.1.lcssa, %while.end.if.then17_crit_edge ], [ %inc, %if.else15.if.then17_crit_edge ]
  %13 = ptrtoint ptr %iter.0128 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %iter.0128, align 8
  %mul = shl i32 %idx.1123, 6
  %add19 = add i32 %mul, -1
  %add20 = add i32 %add19, %bit.2.lcssa101105
  %sub21 = add i32 %add20, %14
  br label %cleanup

if.else22:                                        ; preds = %if.else15
  %inc23 = add i32 %idx.1135, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %inc23)
  %cmp24 = icmp ugt i32 %inc23, 3
  br i1 %cmp24, label %if.then25, label %if.else22.if.end35_crit_edge

if.else22.if.end35_crit_edge:                     ; preds = %if.else22
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35

if.then25:                                        ; preds = %if.else22
  %next = getelementptr inbounds %struct.netlbl_lsm_catmap, ptr %iter.0133, i32 0, i32 2
  %15 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %next, align 8
  %cmp26 = icmp eq ptr %16, null
  br i1 %cmp26, label %if.then27, label %if.then25.if.end35_crit_edge

if.then25.if.end35_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35

if.then27:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #14
  %17 = ptrtoint ptr %iter.0133 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %iter.0133, align 8
  %sub30 = add i32 %18, 255
  br label %cleanup

if.end35:                                         ; preds = %if.then25.if.end35_crit_edge, %if.else22.if.end35_crit_edge
  %iter.1 = phi ptr [ %iter.0133, %if.else22.if.end35_crit_edge ], [ %16, %if.then25.if.end35_crit_edge ]
  %prev.1 = phi ptr [ %prev.0134, %if.else22.if.end35_crit_edge ], [ %iter.0133, %if.then25.if.end35_crit_edge ]
  %idx.2 = phi i32 [ %inc23, %if.else22.if.end35_crit_edge ], [ 0, %if.then25.if.end35_crit_edge ]
  %arrayidx = getelementptr %struct.netlbl_lsm_catmap, ptr %iter.1, i32 0, i32 1, i32 %idx.2
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %arrayidx, align 8
  %and78 = and i64 %20, 1
  %cmp7.not79 = icmp eq i64 %and78, 0
  br i1 %cmp7.not79, label %if.end35.while.end_crit_edge, label %if.end35.while.body.preheader_crit_edge

if.end35.while.body.preheader_crit_edge:          ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.preheader

if.end35.while.end_crit_edge:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

cleanup:                                          ; preds = %if.then27, %if.then17, %if.then12, %while.body.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %sub14, %if.then12 ], [ %sub21, %if.then17 ], [ %sub30, %if.then27 ], [ -2, %entry.cleanup_crit_edge ], [ -2, %while.body.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @netlbl_catmap_getlong(ptr noundef %catmap, ptr nocapture noundef %offset, ptr nocapture noundef writeonly %bitmap) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %offset, align 4
  %and = and i32 %1, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.not = icmp eq i32 %and, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq ptr %catmap, null
  br i1 %tobool.not, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %2 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %offset, align 4
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %3 = ptrtoint ptr %catmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %catmap, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %4)
  %cmp3 = icmp ult i32 %1, %4
  br i1 %cmp3, label %if.then4, label %if.end2.if.end.i_crit_edge

if.end2.if.end.i_crit_edge:                       ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then4:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #14
  %5 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %offset, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then4, %if.end2.if.end.i_crit_edge
  %off.0 = phi i32 [ %4, %if.then4 ], [ %1, %if.end2.if.end.i_crit_edge ]
  %6 = ptrtoint ptr %catmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %catmap, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %off.0)
  %cmp1.i = icmp ugt i32 %7, %off.0
  br i1 %cmp1.i, label %if.end.i.if.end9_crit_edge, label %if.end.i.land.rhs.i_crit_edge

if.end.i.land.rhs.i_crit_edge:                    ; preds = %if.end.i
  br label %land.rhs.i

if.end.i.if.end9_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

land.rhs.i:                                       ; preds = %while.body.i.land.rhs.i_crit_edge, %if.end.i.land.rhs.i_crit_edge
  %iter.058.i = phi ptr [ %11, %while.body.i.land.rhs.i_crit_edge ], [ %catmap, %if.end.i.land.rhs.i_crit_edge ]
  %8 = ptrtoint ptr %iter.058.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %iter.058.i, align 8
  %add.i = add i32 %9, 256
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %off.0)
  %cmp5.not.i = icmp ugt i32 %add.i, %off.0
  br i1 %cmp5.not.i, label %land.rhs.i.if.end9_crit_edge, label %while.body.i

land.rhs.i.if.end9_crit_edge:                     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

while.body.i:                                     ; preds = %land.rhs.i
  %next.i = getelementptr inbounds %struct.netlbl_lsm_catmap, ptr %iter.058.i, i32 0, i32 2
  %10 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %next.i, align 8
  %cond.i = icmp eq ptr %11, null
  br i1 %cond.i, label %if.then8, label %while.body.i.land.rhs.i_crit_edge

while.body.i.land.rhs.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs.i

if.then8:                                         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %offset, align 4
  br label %cleanup

if.end9:                                          ; preds = %land.rhs.i.if.end9_crit_edge, %if.end.i.if.end9_crit_edge
  %retval.0.i.ph = phi ptr [ %catmap, %if.end.i.if.end9_crit_edge ], [ %iter.058.i, %land.rhs.i.if.end9_crit_edge ]
  %13 = ptrtoint ptr %retval.0.i.ph to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %retval.0.i.ph, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %off.0, i32 %14)
  %cmp11 = icmp ult i32 %off.0, %14
  br i1 %cmp11, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  %15 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %offset, align 4
  br label %if.end15

if.else:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  %sub = sub i32 %off.0, %14
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.then12
  %off.1 = phi i32 [ 0, %if.then12 ], [ %sub, %if.else ]
  %div36 = lshr i32 %off.1, 6
  %arrayidx = getelementptr %struct.netlbl_lsm_catmap, ptr %retval.0.i.ph, i32 0, i32 1, i32 %div36
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %arrayidx, align 8
  %rem = and i32 %off.1, 63
  %sh_prom = zext i32 %rem to i64
  %shr = lshr i64 %17, %sh_prom
  %conv = trunc i64 %shr to i32
  %18 = ptrtoint ptr %bitmap to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %conv, ptr %bitmap, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.then8, %if.then1, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then8 ], [ 0, %if.end15 ], [ 0, %if.then1 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @netlbl_catmap_setbit(ptr nocapture noundef %catmap, i32 noundef %bit, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %catmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %catmap, align 4
  %cmp.i = icmp eq ptr %1, null
  br i1 %cmp.i, label %entry.catmap_getnode_alloc.i_crit_edge, label %if.end.i

entry.catmap_getnode_alloc.i_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %catmap_getnode_alloc.i

if.end.i:                                         ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %bit)
  %cmp1.i = icmp ugt i32 %3, %bit
  br i1 %cmp1.i, label %if.end.i.catmap_getnode_alloc.i_crit_edge, label %land.rhs.i.preheader

if.end.i.catmap_getnode_alloc.i_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %catmap_getnode_alloc.i

land.rhs.i.preheader:                             ; preds = %if.end.i
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 8
  %add.i14 = add i32 %5, 256
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i14, i32 %bit)
  %cmp5.not.i15 = icmp ugt i32 %add.i14, %bit
  br i1 %cmp5.not.i15, label %land.rhs.i.preheader.lor.lhs.false.i_crit_edge, label %land.rhs.i.preheader.while.body.i_crit_edge

land.rhs.i.preheader.while.body.i_crit_edge:      ; preds = %land.rhs.i.preheader
  br label %while.body.i

land.rhs.i.preheader.lor.lhs.false.i_crit_edge:   ; preds = %land.rhs.i.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false.i

land.rhs.i:                                       ; preds = %while.body.i
  %6 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %9, align 8
  %add.i = add i32 %7, 256
  %cmp5.not.i = icmp ugt i32 %add.i, %bit
  br i1 %cmp5.not.i, label %land.rhs.i.lor.lhs.false.i_crit_edge, label %land.rhs.i.while.body.i_crit_edge

land.rhs.i.while.body.i_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

land.rhs.i.lor.lhs.false.i_crit_edge:             ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false.i

while.body.i:                                     ; preds = %land.rhs.i.while.body.i_crit_edge, %land.rhs.i.preheader.while.body.i_crit_edge
  %iter.058.i16 = phi ptr [ %9, %land.rhs.i.while.body.i_crit_edge ], [ %1, %land.rhs.i.preheader.while.body.i_crit_edge ]
  %next.i = getelementptr inbounds %struct.netlbl_lsm_catmap, ptr %iter.058.i16, i32 0, i32 2
  %8 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %next.i, align 8
  %cond.i = icmp eq ptr %9, null
  br i1 %cond.i, label %while.body.i.catmap_getnode_alloc.i_crit_edge, label %land.rhs.i

while.body.i.catmap_getnode_alloc.i_crit_edge:    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %catmap_getnode_alloc.i

lor.lhs.false.i:                                  ; preds = %land.rhs.i.lor.lhs.false.i_crit_edge, %land.rhs.i.preheader.lor.lhs.false.i_crit_edge
  %prev.059.i.lcssa = phi ptr [ null, %land.rhs.i.preheader.lor.lhs.false.i_crit_edge ], [ %iter.058.i16, %land.rhs.i.lor.lhs.false.i_crit_edge ]
  %iter.058.i.lcssa = phi ptr [ %1, %land.rhs.i.preheader.lor.lhs.false.i_crit_edge ], [ %9, %land.rhs.i.lor.lhs.false.i_crit_edge ]
  %.lcssa = phi i32 [ %5, %land.rhs.i.preheader.lor.lhs.false.i_crit_edge ], [ %7, %land.rhs.i.lor.lhs.false.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %.lcssa, i32 %bit)
  %cmp8.i = icmp ugt i32 %.lcssa, %bit
  br i1 %cmp8.i, label %lor.lhs.false.i.catmap_getnode_alloc.i_crit_edge, label %lor.lhs.false.i.if.end_crit_edge

lor.lhs.false.i.if.end_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

lor.lhs.false.i.catmap_getnode_alloc.i_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %catmap_getnode_alloc.i

catmap_getnode_alloc.i:                           ; preds = %lor.lhs.false.i.catmap_getnode_alloc.i_crit_edge, %while.body.i.catmap_getnode_alloc.i_crit_edge, %if.end.i.catmap_getnode_alloc.i_crit_edge, %entry.catmap_getnode_alloc.i_crit_edge
  %prev.2.i = phi ptr [ null, %entry.catmap_getnode_alloc.i_crit_edge ], [ null, %if.end.i.catmap_getnode_alloc.i_crit_edge ], [ %prev.059.i.lcssa, %lor.lhs.false.i.catmap_getnode_alloc.i_crit_edge ], [ %iter.058.i16, %while.body.i.catmap_getnode_alloc.i_crit_edge ]
  %and.i.i.i.i.i = and i32 %flags, 4194321
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %cmp.i.i.i.i.i, label %catmap_getnode_alloc.i.netlbl_catmap_alloc.exit.i_crit_edge, label %if.end.i.i.i.i.i, !prof !49

catmap_getnode_alloc.i.netlbl_catmap_alloc.exit.i_crit_edge: ; preds = %catmap_getnode_alloc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %netlbl_catmap_alloc.exit.i

if.end.i.i.i.i.i:                                 ; preds = %catmap_getnode_alloc.i
  %and2.i.i.i.i.i = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i.i.i)
  %tobool3.not.i.i.i.i.i = icmp eq i32 %and2.i.i.i.i.i, 0
  br i1 %tobool3.not.i.i.i.i.i, label %if.end5.i.i.i.i.i, label %if.end.i.i.i.i.i.netlbl_catmap_alloc.exit.i_crit_edge

if.end.i.i.i.i.i.netlbl_catmap_alloc.exit.i_crit_edge: ; preds = %if.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %netlbl_catmap_alloc.exit.i

if.end5.i.i.i.i.i:                                ; preds = %if.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %and6.i.i.i.i.i = and i32 %flags, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i.i.i.i)
  %tobool7.not.i.i.i.i.i = icmp eq i32 %and6.i.i.i.i.i, 0
  %..i.i.i.i.i = select i1 %tobool7.not.i.i.i.i.i, i32 1, i32 2
  br label %netlbl_catmap_alloc.exit.i

netlbl_catmap_alloc.exit.i:                       ; preds = %if.end5.i.i.i.i.i, %if.end.i.i.i.i.i.netlbl_catmap_alloc.exit.i_crit_edge, %catmap_getnode_alloc.i.netlbl_catmap_alloc.exit.i_crit_edge
  %retval.0.i.i.i.i.i = phi i32 [ 0, %catmap_getnode_alloc.i.netlbl_catmap_alloc.exit.i_crit_edge ], [ 3, %if.end.i.i.i.i.i.netlbl_catmap_alloc.exit.i_crit_edge ], [ %..i.i.i.i.i, %if.end5.i.i.i.i.i ]
  %or.i.i.i = or i32 %flags, 256
  %arrayidx6.i.i.i.i = getelementptr [4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %retval.0.i.i.i.i.i, i32 7
  %10 = ptrtoint ptr %arrayidx6.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx6.i.i.i.i, align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef %or.i.i.i, i32 noundef 48) #15
  %cmp18.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %cmp18.i, label %netlbl_catmap_alloc.exit.i.cleanup_crit_edge, label %if.end20.i

netlbl_catmap_alloc.exit.i.cleanup_crit_edge:     ; preds = %netlbl_catmap_alloc.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end20.i:                                       ; preds = %netlbl_catmap_alloc.exit.i
  %and21.i = and i32 %bit, -256
  %12 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %and21.i, ptr %call7.i.i.i.i, align 8
  %cmp23.i = icmp eq ptr %prev.2.i, null
  br i1 %cmp23.i, label %if.then24.i, label %if.else.i

if.then24.i:                                      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #14
  %13 = ptrtoint ptr %catmap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %catmap, align 4
  %next25.i = getelementptr inbounds %struct.netlbl_lsm_catmap, ptr %call7.i.i.i.i, i32 0, i32 2
  %15 = ptrtoint ptr %next25.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %next25.i, align 8
  store ptr %call7.i.i.i.i, ptr %catmap, align 4
  br label %if.end

if.else.i:                                        ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #14
  %next26.i = getelementptr inbounds %struct.netlbl_lsm_catmap, ptr %prev.2.i, i32 0, i32 2
  %16 = ptrtoint ptr %next26.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %next26.i, align 8
  %next27.i = getelementptr inbounds %struct.netlbl_lsm_catmap, ptr %call7.i.i.i.i, i32 0, i32 2
  %18 = ptrtoint ptr %next27.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %next27.i, align 8
  store ptr %call7.i.i.i.i, ptr %next26.i, align 8
  br label %if.end

if.end:                                           ; preds = %if.else.i, %if.then24.i, %lor.lhs.false.i.if.end_crit_edge
  %retval.0.i.ph = phi ptr [ %call7.i.i.i.i, %if.then24.i ], [ %call7.i.i.i.i, %if.else.i ], [ %iter.058.i.lcssa, %lor.lhs.false.i.if.end_crit_edge ]
  %19 = ptrtoint ptr %retval.0.i.ph to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %retval.0.i.ph, align 8
  %sub = sub i32 %bit, %20
  %div7 = lshr i32 %sub, 6
  %rem = and i32 %sub, 63
  %sh_prom = zext i32 %rem to i64
  %shl = shl nuw i64 1, %sh_prom
  %arrayidx = getelementptr %struct.netlbl_lsm_catmap, ptr %retval.0.i.ph, i32 0, i32 1, i32 %div7
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %arrayidx, align 8
  %or = or i64 %shl, %22
  store i64 %or, ptr %arrayidx, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %netlbl_catmap_alloc.exit.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %netlbl_catmap_alloc.exit.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @netlbl_catmap_setrng(ptr nocapture noundef %catmap, i32 noundef %start, i32 noundef %end, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_cmp4(i32 %start, i32 %end)
  %cmp1.not15 = icmp ugt i32 %start, %end
  br i1 %cmp1.not15, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body:                                       ; preds = %if.end.while.body_crit_edge, %entry.while.body_crit_edge
  %spot.016 = phi i32 [ %spot.1, %if.end.while.body_crit_edge ], [ %start, %entry.while.body_crit_edge ]
  %and = and i32 %spot.016, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp2 = icmp eq i32 %and, 0
  %sub = sub i32 %end, %spot.016
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub)
  %cmp3 = icmp ugt i32 %sub, 32
  %or.cond14 = and i1 %cmp2, %cmp3
  br i1 %or.cond14, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 @netlbl_catmap_setlong(ptr noundef %catmap, i32 noundef %spot.016, i32 noundef -1, i32 noundef %flags)
  %add = add i32 %spot.016, 32
  br label %if.end

if.else:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  %inc = add i32 %spot.016, 1
  %call4 = tail call i32 @netlbl_catmap_setbit(ptr noundef %catmap, i32 noundef %spot.016, i32 noundef %flags)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %rc.1 = phi i32 [ %call, %if.then ], [ %call4, %if.else ]
  %spot.1 = phi i32 [ %add, %if.then ], [ %inc, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.1)
  %cmp = icmp ne i32 %rc.1, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %spot.1, i32 %end)
  %cmp1.not = icmp ugt i32 %spot.1, %end
  %or.cond = select i1 %cmp, i1 true, i1 %cmp1.not
  br i1 %or.cond, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %if.end.while.end_crit_edge, %entry.while.end_crit_edge
  %rc.0.lcssa = phi i32 [ 0, %entry.while.end_crit_edge ], [ %rc.1, %if.end.while.end_crit_edge ]
  ret i32 %rc.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @netlbl_catmap_setlong(ptr nocapture noundef %catmap, i32 noundef %offset, i32 noundef %bitmap, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %offset, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.not = icmp eq i32 %and, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %catmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %catmap, align 4
  %cmp.i = icmp eq ptr %1, null
  br i1 %cmp.i, label %if.end.catmap_getnode_alloc.i_crit_edge, label %if.end.i

if.end.catmap_getnode_alloc.i_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %catmap_getnode_alloc.i

if.end.i:                                         ; preds = %if.end
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %offset)
  %cmp1.i = icmp ugt i32 %3, %offset
  br i1 %cmp1.i, label %if.end.i.catmap_getnode_alloc.i_crit_edge, label %land.rhs.i.preheader

if.end.i.catmap_getnode_alloc.i_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %catmap_getnode_alloc.i

land.rhs.i.preheader:                             ; preds = %if.end.i
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 8
  %add.i19 = add i32 %5, 256
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i19, i32 %offset)
  %cmp5.not.i20 = icmp ugt i32 %add.i19, %offset
  br i1 %cmp5.not.i20, label %land.rhs.i.preheader.lor.lhs.false.i_crit_edge, label %land.rhs.i.preheader.while.body.i_crit_edge

land.rhs.i.preheader.while.body.i_crit_edge:      ; preds = %land.rhs.i.preheader
  br label %while.body.i

land.rhs.i.preheader.lor.lhs.false.i_crit_edge:   ; preds = %land.rhs.i.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false.i

land.rhs.i:                                       ; preds = %while.body.i
  %6 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %9, align 8
  %add.i = add i32 %7, 256
  %cmp5.not.i = icmp ugt i32 %add.i, %offset
  br i1 %cmp5.not.i, label %land.rhs.i.lor.lhs.false.i_crit_edge, label %land.rhs.i.while.body.i_crit_edge

land.rhs.i.while.body.i_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

land.rhs.i.lor.lhs.false.i_crit_edge:             ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false.i

while.body.i:                                     ; preds = %land.rhs.i.while.body.i_crit_edge, %land.rhs.i.preheader.while.body.i_crit_edge
  %iter.058.i21 = phi ptr [ %9, %land.rhs.i.while.body.i_crit_edge ], [ %1, %land.rhs.i.preheader.while.body.i_crit_edge ]
  %next.i = getelementptr inbounds %struct.netlbl_lsm_catmap, ptr %iter.058.i21, i32 0, i32 2
  %8 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %next.i, align 8
  %cond.i = icmp eq ptr %9, null
  br i1 %cond.i, label %while.body.i.catmap_getnode_alloc.i_crit_edge, label %land.rhs.i

while.body.i.catmap_getnode_alloc.i_crit_edge:    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %catmap_getnode_alloc.i

lor.lhs.false.i:                                  ; preds = %land.rhs.i.lor.lhs.false.i_crit_edge, %land.rhs.i.preheader.lor.lhs.false.i_crit_edge
  %prev.059.i.lcssa = phi ptr [ null, %land.rhs.i.preheader.lor.lhs.false.i_crit_edge ], [ %iter.058.i21, %land.rhs.i.lor.lhs.false.i_crit_edge ]
  %iter.058.i.lcssa = phi ptr [ %1, %land.rhs.i.preheader.lor.lhs.false.i_crit_edge ], [ %9, %land.rhs.i.lor.lhs.false.i_crit_edge ]
  %.lcssa = phi i32 [ %5, %land.rhs.i.preheader.lor.lhs.false.i_crit_edge ], [ %7, %land.rhs.i.lor.lhs.false.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %.lcssa, i32 %offset)
  %cmp8.i = icmp ugt i32 %.lcssa, %offset
  br i1 %cmp8.i, label %lor.lhs.false.i.catmap_getnode_alloc.i_crit_edge, label %lor.lhs.false.i.if.end3_crit_edge

lor.lhs.false.i.if.end3_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end3

lor.lhs.false.i.catmap_getnode_alloc.i_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %catmap_getnode_alloc.i

catmap_getnode_alloc.i:                           ; preds = %lor.lhs.false.i.catmap_getnode_alloc.i_crit_edge, %while.body.i.catmap_getnode_alloc.i_crit_edge, %if.end.i.catmap_getnode_alloc.i_crit_edge, %if.end.catmap_getnode_alloc.i_crit_edge
  %prev.2.i = phi ptr [ null, %if.end.catmap_getnode_alloc.i_crit_edge ], [ null, %if.end.i.catmap_getnode_alloc.i_crit_edge ], [ %prev.059.i.lcssa, %lor.lhs.false.i.catmap_getnode_alloc.i_crit_edge ], [ %iter.058.i21, %while.body.i.catmap_getnode_alloc.i_crit_edge ]
  %and.i.i.i.i.i = and i32 %flags, 4194321
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %cmp.i.i.i.i.i, label %catmap_getnode_alloc.i.netlbl_catmap_alloc.exit.i_crit_edge, label %if.end.i.i.i.i.i, !prof !49

catmap_getnode_alloc.i.netlbl_catmap_alloc.exit.i_crit_edge: ; preds = %catmap_getnode_alloc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %netlbl_catmap_alloc.exit.i

if.end.i.i.i.i.i:                                 ; preds = %catmap_getnode_alloc.i
  %and2.i.i.i.i.i = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i.i.i)
  %tobool3.not.i.i.i.i.i = icmp eq i32 %and2.i.i.i.i.i, 0
  br i1 %tobool3.not.i.i.i.i.i, label %if.end5.i.i.i.i.i, label %if.end.i.i.i.i.i.netlbl_catmap_alloc.exit.i_crit_edge

if.end.i.i.i.i.i.netlbl_catmap_alloc.exit.i_crit_edge: ; preds = %if.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %netlbl_catmap_alloc.exit.i

if.end5.i.i.i.i.i:                                ; preds = %if.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %and6.i.i.i.i.i = and i32 %flags, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i.i.i.i)
  %tobool7.not.i.i.i.i.i = icmp eq i32 %and6.i.i.i.i.i, 0
  %..i.i.i.i.i = select i1 %tobool7.not.i.i.i.i.i, i32 1, i32 2
  br label %netlbl_catmap_alloc.exit.i

netlbl_catmap_alloc.exit.i:                       ; preds = %if.end5.i.i.i.i.i, %if.end.i.i.i.i.i.netlbl_catmap_alloc.exit.i_crit_edge, %catmap_getnode_alloc.i.netlbl_catmap_alloc.exit.i_crit_edge
  %retval.0.i.i.i.i.i = phi i32 [ 0, %catmap_getnode_alloc.i.netlbl_catmap_alloc.exit.i_crit_edge ], [ 3, %if.end.i.i.i.i.i.netlbl_catmap_alloc.exit.i_crit_edge ], [ %..i.i.i.i.i, %if.end5.i.i.i.i.i ]
  %or.i.i.i = or i32 %flags, 256
  %arrayidx6.i.i.i.i = getelementptr [4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %retval.0.i.i.i.i.i, i32 7
  %10 = ptrtoint ptr %arrayidx6.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx6.i.i.i.i, align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef %or.i.i.i, i32 noundef 48) #15
  %cmp18.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %cmp18.i, label %netlbl_catmap_alloc.exit.i.cleanup_crit_edge, label %if.end20.i

netlbl_catmap_alloc.exit.i.cleanup_crit_edge:     ; preds = %netlbl_catmap_alloc.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end20.i:                                       ; preds = %netlbl_catmap_alloc.exit.i
  %and21.i = and i32 %offset, -256
  %12 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %and21.i, ptr %call7.i.i.i.i, align 8
  %cmp23.i = icmp eq ptr %prev.2.i, null
  br i1 %cmp23.i, label %if.then24.i, label %if.else.i

if.then24.i:                                      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #14
  %13 = ptrtoint ptr %catmap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %catmap, align 4
  %next25.i = getelementptr inbounds %struct.netlbl_lsm_catmap, ptr %call7.i.i.i.i, i32 0, i32 2
  %15 = ptrtoint ptr %next25.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %next25.i, align 8
  store ptr %call7.i.i.i.i, ptr %catmap, align 4
  br label %if.end3

if.else.i:                                        ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #14
  %next26.i = getelementptr inbounds %struct.netlbl_lsm_catmap, ptr %prev.2.i, i32 0, i32 2
  %16 = ptrtoint ptr %next26.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %next26.i, align 8
  %next27.i = getelementptr inbounds %struct.netlbl_lsm_catmap, ptr %call7.i.i.i.i, i32 0, i32 2
  %18 = ptrtoint ptr %next27.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %next27.i, align 8
  store ptr %call7.i.i.i.i, ptr %next26.i, align 8
  br label %if.end3

if.end3:                                          ; preds = %if.else.i, %if.then24.i, %lor.lhs.false.i.if.end3_crit_edge
  %retval.0.i.ph = phi ptr [ %call7.i.i.i.i, %if.then24.i ], [ %call7.i.i.i.i, %if.else.i ], [ %iter.058.i.lcssa, %lor.lhs.false.i.if.end3_crit_edge ]
  %19 = ptrtoint ptr %retval.0.i.ph to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %retval.0.i.ph, align 8
  %sub = sub i32 %offset, %20
  %div12 = lshr i32 %sub, 6
  %rem = and i32 %sub, 63
  %shl = shl i32 %bitmap, %rem
  %conv = zext i32 %shl to i64
  %arrayidx = getelementptr %struct.netlbl_lsm_catmap, ptr %retval.0.i.ph, i32 0, i32 1, i32 %div12
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %arrayidx, align 8
  %or = or i64 %22, %conv
  store i64 %or, ptr %arrayidx, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %netlbl_catmap_alloc.exit.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end3 ], [ -22, %entry.cleanup_crit_edge ], [ -12, %netlbl_catmap_alloc.exit.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @netlbl_bitmap_walk(ptr nocapture noundef readonly %bitmap, i32 noundef %bitmap_len, i32 noundef %offset, i8 noundef zeroext %state) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_cmp4(i32 %offset, i32 %bitmap_len)
  %cmp51 = icmp ult i32 %offset, %bitmap_len
  br i1 %cmp51, label %while.body.lr.ph, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

while.body.lr.ph:                                 ; preds = %entry
  %rem = and i32 %offset, 7
  %shr = lshr i32 128, %rem
  %conv = trunc i32 %shr to i8
  %div47 = lshr i32 %offset, 3
  %arrayidx = getelementptr i8, ptr %bitmap, i32 %div47
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %state)
  %tobool.not = icmp ne i8 %state, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %state)
  %cmp9 = icmp eq i8 %state, 0
  %2 = add i32 %bitmap_len, -1
  %and4960 = and i8 %1, %conv
  call void @__sanitizer_cov_trace_cmp1(i8 %and4960, i8 %conv)
  %cmp661 = icmp eq i8 %and4960, %conv
  %or.cond62 = select i1 %tobool.not, i1 %cmp661, i1 false
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and4960)
  %cmp1563 = icmp eq i8 %and4960, 0
  %or.cond5064 = select i1 %cmp9, i1 %cmp1563, i1 false
  %or.cond5965 = select i1 %or.cond62, i1 true, i1 %or.cond5064
  br i1 %or.cond5965, label %while.body.lr.ph.cleanup_crit_edge, label %while.body.lr.ph.if.end_crit_edge

while.body.lr.ph.if.end_crit_edge:                ; preds = %while.body.lr.ph
  br label %if.end

while.body.lr.ph.cleanup_crit_edge:               ; preds = %while.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %if.end30.if.end_crit_edge, %while.body.lr.ph.if.end_crit_edge
  %bit_spot.05269 = phi i32 [ %inc, %if.end30.if.end_crit_edge ], [ %offset, %while.body.lr.ph.if.end_crit_edge ]
  %byte_offset.05368 = phi i32 [ %byte_offset.1, %if.end30.if.end_crit_edge ], [ %div47, %while.body.lr.ph.if.end_crit_edge ]
  %bitmask.05467 = phi i8 [ %bitmask.1, %if.end30.if.end_crit_edge ], [ %conv, %while.body.lr.ph.if.end_crit_edge ]
  %byte.05566 = phi i8 [ %byte.1, %if.end30.if.end_crit_edge ], [ %1, %while.body.lr.ph.if.end_crit_edge ]
  %inc = add i32 %bit_spot.05269, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %bit_spot.05269, i32 %2)
  %exitcond.not = icmp eq i32 %bit_spot.05269, %2
  br i1 %exitcond.not, label %if.end.cleanup_crit_edge, label %if.end20

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end20:                                         ; preds = %if.end
  %3 = lshr i8 %bitmask.05467, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %bitmask.05467)
  %cmp25 = icmp ult i8 %bitmask.05467, 2
  br i1 %cmp25, label %if.then27, label %if.end20.if.end30_crit_edge

if.end20.if.end30_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30

if.then27:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  %inc28 = add i32 %byte_offset.05368, 1
  %arrayidx29 = getelementptr i8, ptr %bitmap, i32 %inc28
  %4 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx29, align 1
  br label %if.end30

if.end30:                                         ; preds = %if.then27, %if.end20.if.end30_crit_edge
  %byte_offset.1 = phi i32 [ %inc28, %if.then27 ], [ %byte_offset.05368, %if.end20.if.end30_crit_edge ]
  %bitmask.1 = phi i8 [ -128, %if.then27 ], [ %3, %if.end20.if.end30_crit_edge ]
  %byte.1 = phi i8 [ %5, %if.then27 ], [ %byte.05566, %if.end20.if.end30_crit_edge ]
  %and49 = and i8 %byte.1, %bitmask.1
  call void @__sanitizer_cov_trace_cmp1(i8 %and49, i8 %bitmask.1)
  %cmp6 = icmp eq i8 %and49, %bitmask.1
  %or.cond = select i1 %tobool.not, i1 %cmp6, i1 false
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and49)
  %cmp15 = icmp eq i8 %and49, 0
  %or.cond50 = select i1 %cmp9, i1 %cmp15, i1 false
  %or.cond59 = select i1 %or.cond, i1 true, i1 %or.cond50
  br i1 %or.cond59, label %if.end30.cleanup_crit_edge, label %if.end30.if.end_crit_edge

if.end30.if.end_crit_edge:                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %if.end30.cleanup_crit_edge, %if.end.cleanup_crit_edge, %while.body.lr.ph.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ %offset, %while.body.lr.ph.cleanup_crit_edge ], [ %inc, %if.end30.cleanup_crit_edge ], [ -1, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @netlbl_bitmap_setbit(ptr nocapture noundef %bitmap, i32 noundef %bit, i8 noundef zeroext %state) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %div12 = lshr i32 %bit, 3
  %rem = and i32 %bit, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %state)
  %tobool.not = icmp eq i8 %state, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %shr = lshr i32 128, %rem
  %arrayidx = getelementptr i8, ptr %bitmap, i32 %div12
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %2 = trunc i32 %shr to i8
  %conv3 = or i8 %1, %2
  store i8 %conv3, ptr %arrayidx, align 1
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %neg = ashr i32 -129, %rem
  %arrayidx5 = getelementptr i8, ptr %bitmap, i32 %div12
  %3 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx5, align 1
  %5 = trunc i32 %neg to i8
  %conv7 = and i8 %4, %5
  store i8 %conv7, ptr %arrayidx5, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @netlbl_enabled() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @netlabel_mgmt_protocount, i32 noundef 4) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @netlabel_mgmt_protocount to i32))
  %0 = load volatile i32, ptr @netlabel_mgmt_protocount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp = icmp sgt i32 %0, 0
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @netlbl_sock_setattr(ptr noundef %sk, i16 noundef zeroext %family, ptr noundef %secattr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !39) #12
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !50
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 696, ptr noundef nonnull @.str.1) #12
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %domain = getelementptr inbounds %struct.netlbl_lsm_secattr, ptr %secattr, i32 0, i32 2
  %4 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %domain, align 4
  %call = tail call ptr @netlbl_domhsh_getentry(ptr noundef %5, i16 noundef zeroext %family) #12
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %rcu_read_lock.exit.socket_setattr_return_crit_edge, label %if.end

rcu_read_lock.exit.socket_setattr_return_crit_edge: ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %socket_setattr_return

if.end:                                           ; preds = %rcu_read_lock.exit
  %6 = zext i16 %family to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.19)
  switch i16 %family, label %if.end.socket_setattr_return_crit_edge [
    i16 2, label %sw.bb
    i16 10, label %sw.bb6
  ]

if.end.socket_setattr_return_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %socket_setattr_return

sw.bb:                                            ; preds = %if.end
  %def = getelementptr inbounds %struct.netlbl_dom_map, ptr %call, i32 0, i32 2
  %7 = ptrtoint ptr %def to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %def, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %8, label %sw.default [
    i32 6, label %sw.bb.socket_setattr_return_crit_edge
    i32 3, label %sw.bb2
    i32 5, label %sw.bb5
  ]

sw.bb.socket_setattr_return_crit_edge:            ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %socket_setattr_return

sw.bb2:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  %10 = getelementptr inbounds %struct.netlbl_dom_map, ptr %call, i32 0, i32 2, i32 1
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %call4 = tail call i32 @cipso_v4_sock_setattr(ptr noundef %sk, ptr noundef %12, ptr noundef %secattr) #12
  br label %socket_setattr_return

sw.bb5:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %socket_setattr_return

sw.default:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %socket_setattr_return

sw.bb6:                                           ; preds = %if.end
  %def7 = getelementptr inbounds %struct.netlbl_dom_map, ptr %call, i32 0, i32 2
  %13 = ptrtoint ptr %def7 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %def7, align 4
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %14, label %sw.default14 [
    i32 6, label %sw.bb6.socket_setattr_return_crit_edge
    i32 7, label %sw.bb10
    i32 5, label %sw.bb13
  ]

sw.bb6.socket_setattr_return_crit_edge:           ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #14
  br label %socket_setattr_return

sw.bb10:                                          ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #14
  %16 = getelementptr inbounds %struct.netlbl_dom_map, ptr %call, i32 0, i32 2, i32 1
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %call12 = tail call i32 @calipso_sock_setattr(ptr noundef %sk, ptr noundef %18, ptr noundef %secattr) #12
  br label %socket_setattr_return

sw.bb13:                                          ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #14
  br label %socket_setattr_return

sw.default14:                                     ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #14
  br label %socket_setattr_return

socket_setattr_return:                            ; preds = %sw.default14, %sw.bb13, %sw.bb10, %sw.bb6.socket_setattr_return_crit_edge, %sw.default, %sw.bb5, %sw.bb2, %sw.bb.socket_setattr_return_crit_edge, %if.end.socket_setattr_return_crit_edge, %rcu_read_lock.exit.socket_setattr_return_crit_edge
  %ret_val.0 = phi i32 [ -2, %sw.default14 ], [ 0, %sw.bb13 ], [ %call12, %sw.bb10 ], [ -2, %sw.default ], [ 0, %sw.bb5 ], [ %call4, %sw.bb2 ], [ -2, %rcu_read_lock.exit.socket_setattr_return_crit_edge ], [ -89, %sw.bb.socket_setattr_return_crit_edge ], [ -89, %sw.bb6.socket_setattr_return_crit_edge ], [ -93, %if.end.socket_setattr_return_crit_edge ]
  %call.i26 = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i26, label %socket_setattr_return.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i29

socket_setattr_return.rcu_read_unlock.exit_crit_edge: ; preds = %socket_setattr_return
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true.i29:                                ; preds = %socket_setattr_return
  %call1.i27 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i27)
  %tobool.not.i28 = icmp eq i32 %call1.i27, 0
  br i1 %tobool.not.i28, label %land.lhs.true.i29.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i31

land.lhs.true.i29.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i29
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true2.i31:                               ; preds = %land.lhs.true.i29
  %.b4.i30 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i30, label %land.lhs.true2.i31.rcu_read_unlock.exit_crit_edge, label %if.then.i32

land.lhs.true2.i31.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i31
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

if.then.i32:                                      ; preds = %land.lhs.true2.i31
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 724, ptr noundef nonnull @.str.2) #12
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i32, %land.lhs.true2.i31.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i29.rcu_read_unlock.exit_crit_edge, %socket_setattr_return.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !51
  %19 = tail call i32 @llvm.read_register.i32(metadata !39) #12
  %and.i.i.i.i.i33 = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i.i.i.i33 to ptr
  %preempt_count.i.i.i.i34 = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %preempt_count.i.i.i.i34 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %preempt_count.i.i.i.i34, align 4
  %sub.i.i.i = add i32 %22, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i34, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  ret i32 %ret_val.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @netlbl_domhsh_getentry(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cipso_v4_sock_setattr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @calipso_sock_setattr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @netlbl_sock_delattr(ptr noundef %sk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %skc_family = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 3
  %0 = ptrtoint ptr %skc_family to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %skc_family, align 8
  %2 = zext i16 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.22)
  switch i16 %1, label %entry.sw.epilog_crit_edge [
    i16 2, label %sw.bb
    i16 10, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @cipso_v4_sock_delattr(ptr noundef %sk) #12
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @calipso_sock_delattr(ptr noundef %sk) #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %sw.bb, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cipso_v4_sock_delattr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @calipso_sock_delattr(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @netlbl_sock_getattr(ptr noundef %sk, ptr noundef %secattr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %skc_family = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 3
  %0 = ptrtoint ptr %skc_family to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %skc_family, align 8
  %2 = zext i16 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.23)
  switch i16 %1, label %entry.sw.epilog_crit_edge [
    i16 2, label %sw.bb
    i16 10, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 @cipso_v4_sock_getattr(ptr noundef %sk, ptr noundef %secattr) #12
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call2 = tail call i32 @calipso_sock_getattr(ptr noundef %sk, ptr noundef %secattr) #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %sw.bb, %entry.sw.epilog_crit_edge
  %ret_val.0 = phi i32 [ %call2, %sw.bb1 ], [ %call, %sw.bb ], [ -93, %entry.sw.epilog_crit_edge ]
  ret i32 %ret_val.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cipso_v4_sock_getattr(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @calipso_sock_getattr(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @netlbl_conn_setattr(ptr noundef %sk, ptr noundef %addr, ptr noundef %secattr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !39) #12
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !50
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 696, ptr noundef nonnull @.str.1) #12
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %4 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %addr, align 2
  %6 = zext i16 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.24)
  switch i16 %5, label %rcu_read_lock.exit.conn_setattr_return_crit_edge [
    i16 2, label %sw.bb
    i16 10, label %sw.bb6
  ]

rcu_read_lock.exit.conn_setattr_return_crit_edge: ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %conn_setattr_return

sw.bb:                                            ; preds = %rcu_read_lock.exit
  %domain = getelementptr inbounds %struct.netlbl_lsm_secattr, ptr %secattr, i32 0, i32 2
  %7 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %domain, align 4
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, ptr %addr, i32 0, i32 2
  %9 = ptrtoint ptr %sin_addr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sin_addr, align 4
  %call = tail call ptr @netlbl_domhsh_getentry_af4(ptr noundef %8, i32 noundef %10) #12
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %sw.bb.conn_setattr_return_crit_edge, label %if.end

sw.bb.conn_setattr_return_crit_edge:              ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %conn_setattr_return

if.end:                                           ; preds = %sw.bb
  %11 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %call, align 4
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %12, label %if.end.conn_setattr_return_crit_edge [
    i32 3, label %sw.bb3
    i32 5, label %sw.bb5
  ]

if.end.conn_setattr_return_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %conn_setattr_return

sw.bb3:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %14 = getelementptr inbounds %struct.netlbl_dommap_def, ptr %call, i32 0, i32 1
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %call4 = tail call i32 @cipso_v4_sock_setattr(ptr noundef %sk, ptr noundef %16, ptr noundef %secattr) #12
  br label %conn_setattr_return

sw.bb5:                                           ; preds = %if.end
  %skc_family.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 3
  %17 = ptrtoint ptr %skc_family.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %skc_family.i, align 8
  %19 = zext i16 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.26)
  switch i16 %18, label %sw.bb5.conn_setattr_return_crit_edge [
    i16 2, label %sw.bb.i
    i16 10, label %sw.bb1.i
  ]

sw.bb5.conn_setattr_return_crit_edge:             ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #14
  br label %conn_setattr_return

sw.bb.i:                                          ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @cipso_v4_sock_delattr(ptr noundef %sk) #12
  br label %conn_setattr_return

sw.bb1.i:                                         ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @calipso_sock_delattr(ptr noundef %sk) #12
  br label %conn_setattr_return

sw.bb6:                                           ; preds = %rcu_read_lock.exit
  %domain7 = getelementptr inbounds %struct.netlbl_lsm_secattr, ptr %secattr, i32 0, i32 2
  %20 = ptrtoint ptr %domain7 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %domain7, align 4
  %sin6_addr = getelementptr inbounds %struct.sockaddr_in6, ptr %addr, i32 0, i32 3
  %call8 = tail call ptr @netlbl_domhsh_getentry_af6(ptr noundef %21, ptr noundef %sin6_addr) #12
  %cmp9 = icmp eq ptr %call8, null
  br i1 %cmp9, label %sw.bb6.conn_setattr_return_crit_edge, label %if.end12

sw.bb6.conn_setattr_return_crit_edge:             ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #14
  br label %conn_setattr_return

if.end12:                                         ; preds = %sw.bb6
  %22 = ptrtoint ptr %call8 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %call8, align 4
  %24 = zext i32 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %23, label %if.end12.conn_setattr_return_crit_edge [
    i32 7, label %sw.bb14
    i32 5, label %sw.bb16
  ]

if.end12.conn_setattr_return_crit_edge:           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %conn_setattr_return

sw.bb14:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  %25 = getelementptr inbounds %struct.netlbl_dommap_def, ptr %call8, i32 0, i32 1
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  %call15 = tail call i32 @calipso_sock_setattr(ptr noundef %sk, ptr noundef %27, ptr noundef %secattr) #12
  br label %conn_setattr_return

sw.bb16:                                          ; preds = %if.end12
  %skc_family.i34 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 3
  %28 = ptrtoint ptr %skc_family.i34 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %skc_family.i34, align 8
  %30 = zext i16 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.28)
  switch i16 %29, label %sw.bb16.conn_setattr_return_crit_edge [
    i16 2, label %sw.bb.i35
    i16 10, label %sw.bb1.i36
  ]

sw.bb16.conn_setattr_return_crit_edge:            ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #14
  br label %conn_setattr_return

sw.bb.i35:                                        ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @cipso_v4_sock_delattr(ptr noundef %sk) #12
  br label %conn_setattr_return

sw.bb1.i36:                                       ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @calipso_sock_delattr(ptr noundef %sk) #12
  br label %conn_setattr_return

conn_setattr_return:                              ; preds = %sw.bb1.i36, %sw.bb.i35, %sw.bb16.conn_setattr_return_crit_edge, %sw.bb14, %if.end12.conn_setattr_return_crit_edge, %sw.bb6.conn_setattr_return_crit_edge, %sw.bb1.i, %sw.bb.i, %sw.bb5.conn_setattr_return_crit_edge, %sw.bb3, %if.end.conn_setattr_return_crit_edge, %sw.bb.conn_setattr_return_crit_edge, %rcu_read_lock.exit.conn_setattr_return_crit_edge
  %ret_val.0 = phi i32 [ %call15, %sw.bb14 ], [ %call4, %sw.bb3 ], [ -2, %sw.bb.conn_setattr_return_crit_edge ], [ -2, %if.end.conn_setattr_return_crit_edge ], [ -2, %sw.bb6.conn_setattr_return_crit_edge ], [ -2, %if.end12.conn_setattr_return_crit_edge ], [ -93, %rcu_read_lock.exit.conn_setattr_return_crit_edge ], [ 0, %sw.bb5.conn_setattr_return_crit_edge ], [ 0, %sw.bb.i ], [ 0, %sw.bb1.i ], [ 0, %sw.bb16.conn_setattr_return_crit_edge ], [ 0, %sw.bb.i35 ], [ 0, %sw.bb1.i36 ]
  %call.i38 = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i38, label %conn_setattr_return.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i41

conn_setattr_return.rcu_read_unlock.exit_crit_edge: ; preds = %conn_setattr_return
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true.i41:                                ; preds = %conn_setattr_return
  %call1.i39 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i39)
  %tobool.not.i40 = icmp eq i32 %call1.i39, 0
  br i1 %tobool.not.i40, label %land.lhs.true.i41.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i43

land.lhs.true.i41.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i41
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true2.i43:                               ; preds = %land.lhs.true.i41
  %.b4.i42 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i42, label %land.lhs.true2.i43.rcu_read_unlock.exit_crit_edge, label %if.then.i44

land.lhs.true2.i43.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i43
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

if.then.i44:                                      ; preds = %land.lhs.true2.i43
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 724, ptr noundef nonnull @.str.2) #12
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i44, %land.lhs.true2.i43.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i41.rcu_read_unlock.exit_crit_edge, %conn_setattr_return.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !51
  %31 = tail call i32 @llvm.read_register.i32(metadata !39) #12
  %and.i.i.i.i.i45 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i.i45 to ptr
  %preempt_count.i.i.i.i46 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i.i46 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i.i46, align 4
  %sub.i.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i46, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  ret i32 %ret_val.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @netlbl_domhsh_getentry_af4(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @netlbl_domhsh_getentry_af6(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @netlbl_req_setattr(ptr noundef %req, ptr noundef %secattr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !39) #12
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !50
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 696, ptr noundef nonnull @.str.1) #12
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %rsk_ops = getelementptr inbounds %struct.request_sock, ptr %req, i32 0, i32 7
  %4 = ptrtoint ptr %rsk_ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rsk_ops, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %7, label %rcu_read_lock.exit.req_setattr_return_crit_edge [
    i32 2, label %sw.bb
    i32 10, label %sw.bb7
  ]

rcu_read_lock.exit.req_setattr_return_crit_edge:  ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %req_setattr_return

sw.bb:                                            ; preds = %rcu_read_lock.exit
  %domain = getelementptr inbounds %struct.netlbl_lsm_secattr, ptr %secattr, i32 0, i32 2
  %9 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %domain, align 4
  %11 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %req, align 8
  %call3 = tail call ptr @netlbl_domhsh_getentry_af4(ptr noundef %10, i32 noundef %12) #12
  %cmp = icmp eq ptr %call3, null
  br i1 %cmp, label %sw.bb.req_setattr_return_crit_edge, label %if.end

sw.bb.req_setattr_return_crit_edge:               ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %req_setattr_return

if.end:                                           ; preds = %sw.bb
  %13 = ptrtoint ptr %call3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %call3, align 4
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %14, label %if.end.req_setattr_return_crit_edge [
    i32 3, label %sw.bb4
    i32 5, label %sw.bb6
  ]

if.end.req_setattr_return_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %req_setattr_return

sw.bb4:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %16 = getelementptr inbounds %struct.netlbl_dommap_def, ptr %call3, i32 0, i32 1
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %call5 = tail call i32 @cipso_v4_req_setattr(ptr noundef %req, ptr noundef %18, ptr noundef %secattr) #12
  br label %req_setattr_return

sw.bb6:                                           ; preds = %if.end
  %19 = ptrtoint ptr %rsk_ops to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rsk_ops, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 4
  %23 = zext i32 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %22, label %sw.bb6.req_setattr_return_crit_edge [
    i32 2, label %sw.bb.i
    i32 10, label %sw.bb1.i
  ]

sw.bb6.req_setattr_return_crit_edge:              ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #14
  br label %req_setattr_return

sw.bb.i:                                          ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @cipso_v4_req_delattr(ptr noundef %req) #12
  br label %req_setattr_return

sw.bb1.i:                                         ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @calipso_req_delattr(ptr noundef %req) #12
  br label %req_setattr_return

sw.bb7:                                           ; preds = %rcu_read_lock.exit
  %domain8 = getelementptr inbounds %struct.netlbl_lsm_secattr, ptr %secattr, i32 0, i32 2
  %24 = ptrtoint ptr %domain8 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %domain8, align 4
  %skc_v6_daddr = getelementptr inbounds %struct.sock_common, ptr %req, i32 0, i32 10
  %call11 = tail call ptr @netlbl_domhsh_getentry_af6(ptr noundef %25, ptr noundef %skc_v6_daddr) #12
  %cmp12 = icmp eq ptr %call11, null
  br i1 %cmp12, label %sw.bb7.req_setattr_return_crit_edge, label %if.end14

sw.bb7.req_setattr_return_crit_edge:              ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #14
  br label %req_setattr_return

if.end14:                                         ; preds = %sw.bb7
  %26 = ptrtoint ptr %call11 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %call11, align 4
  %28 = zext i32 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %27, label %if.end14.req_setattr_return_crit_edge [
    i32 7, label %sw.bb16
    i32 5, label %sw.bb18
  ]

if.end14.req_setattr_return_crit_edge:            ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %req_setattr_return

sw.bb16:                                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  %29 = getelementptr inbounds %struct.netlbl_dommap_def, ptr %call11, i32 0, i32 1
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 4
  %call17 = tail call i32 @calipso_req_setattr(ptr noundef %req, ptr noundef %31, ptr noundef %secattr) #12
  br label %req_setattr_return

sw.bb18:                                          ; preds = %if.end14
  %32 = ptrtoint ptr %rsk_ops to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %rsk_ops, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %33, align 4
  %36 = zext i32 %35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %35, label %sw.bb18.req_setattr_return_crit_edge [
    i32 2, label %sw.bb.i38
    i32 10, label %sw.bb1.i39
  ]

sw.bb18.req_setattr_return_crit_edge:             ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #14
  br label %req_setattr_return

sw.bb.i38:                                        ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @cipso_v4_req_delattr(ptr noundef %req) #12
  br label %req_setattr_return

sw.bb1.i39:                                       ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @calipso_req_delattr(ptr noundef %req) #12
  br label %req_setattr_return

req_setattr_return:                               ; preds = %sw.bb1.i39, %sw.bb.i38, %sw.bb18.req_setattr_return_crit_edge, %sw.bb16, %if.end14.req_setattr_return_crit_edge, %sw.bb7.req_setattr_return_crit_edge, %sw.bb1.i, %sw.bb.i, %sw.bb6.req_setattr_return_crit_edge, %sw.bb4, %if.end.req_setattr_return_crit_edge, %sw.bb.req_setattr_return_crit_edge, %rcu_read_lock.exit.req_setattr_return_crit_edge
  %ret_val.0 = phi i32 [ %call17, %sw.bb16 ], [ %call5, %sw.bb4 ], [ -2, %sw.bb.req_setattr_return_crit_edge ], [ -2, %if.end.req_setattr_return_crit_edge ], [ -2, %sw.bb7.req_setattr_return_crit_edge ], [ -2, %if.end14.req_setattr_return_crit_edge ], [ -93, %rcu_read_lock.exit.req_setattr_return_crit_edge ], [ 0, %sw.bb6.req_setattr_return_crit_edge ], [ 0, %sw.bb.i ], [ 0, %sw.bb1.i ], [ 0, %sw.bb18.req_setattr_return_crit_edge ], [ 0, %sw.bb.i38 ], [ 0, %sw.bb1.i39 ]
  %call.i41 = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i41, label %req_setattr_return.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i44

req_setattr_return.rcu_read_unlock.exit_crit_edge: ; preds = %req_setattr_return
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true.i44:                                ; preds = %req_setattr_return
  %call1.i42 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i42)
  %tobool.not.i43 = icmp eq i32 %call1.i42, 0
  br i1 %tobool.not.i43, label %land.lhs.true.i44.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i46

land.lhs.true.i44.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i44
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true2.i46:                               ; preds = %land.lhs.true.i44
  %.b4.i45 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i45, label %land.lhs.true2.i46.rcu_read_unlock.exit_crit_edge, label %if.then.i47

land.lhs.true2.i46.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i46
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

if.then.i47:                                      ; preds = %land.lhs.true2.i46
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 724, ptr noundef nonnull @.str.2) #12
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i47, %land.lhs.true2.i46.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i44.rcu_read_unlock.exit_crit_edge, %req_setattr_return.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !51
  %37 = tail call i32 @llvm.read_register.i32(metadata !39) #12
  %and.i.i.i.i.i48 = and i32 %37, -16384
  %38 = inttoptr i32 %and.i.i.i.i.i48 to ptr
  %preempt_count.i.i.i.i49 = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %preempt_count.i.i.i.i49 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %preempt_count.i.i.i.i49, align 4
  %sub.i.i.i = add i32 %40, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i49, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  ret i32 %ret_val.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cipso_v4_req_setattr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @netlbl_req_delattr(ptr noundef %req) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %rsk_ops = getelementptr inbounds %struct.request_sock, ptr %req, i32 0, i32 7
  %0 = ptrtoint ptr %rsk_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rsk_ops, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %3, label %entry.sw.epilog_crit_edge [
    i32 2, label %sw.bb
    i32 10, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @cipso_v4_req_delattr(ptr noundef %req) #12
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @calipso_req_delattr(ptr noundef %req) #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %sw.bb, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @calipso_req_setattr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cipso_v4_req_delattr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @calipso_req_delattr(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @netlbl_skbuff_setattr(ptr noundef %skb, i16 noundef zeroext %family, ptr noundef %secattr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !39) #12
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !50
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 696, ptr noundef nonnull @.str.1) #12
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %4 = zext i16 %family to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.35)
  switch i16 %family, label %rcu_read_lock.exit.skbuff_setattr_return_crit_edge [
    i16 2, label %sw.bb
    i16 10, label %sw.bb8
  ]

rcu_read_lock.exit.skbuff_setattr_return_crit_edge: ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %skbuff_setattr_return

sw.bb:                                            ; preds = %rcu_read_lock.exit
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %5 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %7 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %8 to i32
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 %conv.i.i
  %domain = getelementptr inbounds %struct.netlbl_lsm_secattr, ptr %secattr, i32 0, i32 2
  %9 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %domain, align 4
  %daddr = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 9
  %11 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %daddr, align 4
  %call2 = tail call ptr @netlbl_domhsh_getentry_af4(ptr noundef %10, i32 noundef %12) #12
  %cmp = icmp eq ptr %call2, null
  br i1 %cmp, label %sw.bb.skbuff_setattr_return_crit_edge, label %if.end

sw.bb.skbuff_setattr_return_crit_edge:            ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %skbuff_setattr_return

if.end:                                           ; preds = %sw.bb
  %13 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %call2, align 4
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %14, label %if.end.skbuff_setattr_return_crit_edge [
    i32 3, label %sw.bb4
    i32 5, label %sw.bb6
  ]

if.end.skbuff_setattr_return_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %skbuff_setattr_return

sw.bb4:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %16 = getelementptr inbounds %struct.netlbl_dommap_def, ptr %call2, i32 0, i32 1
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %call5 = tail call i32 @cipso_v4_skbuff_setattr(ptr noundef %skb, ptr noundef %18, ptr noundef %secattr) #12
  br label %skbuff_setattr_return

sw.bb6:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call7 = tail call i32 @cipso_v4_skbuff_delattr(ptr noundef %skb) #12
  br label %skbuff_setattr_return

sw.bb8:                                           ; preds = %rcu_read_lock.exit
  %head.i.i39 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %19 = ptrtoint ptr %head.i.i39 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %head.i.i39, align 8
  %network_header.i.i40 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %21 = ptrtoint ptr %network_header.i.i40 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %network_header.i.i40, align 4
  %conv.i.i41 = zext i16 %22 to i32
  %add.ptr.i.i42 = getelementptr i8, ptr %20, i32 %conv.i.i41
  %domain10 = getelementptr inbounds %struct.netlbl_lsm_secattr, ptr %secattr, i32 0, i32 2
  %23 = ptrtoint ptr %domain10 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %domain10, align 4
  %daddr11 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i42, i32 0, i32 6
  %call12 = tail call ptr @netlbl_domhsh_getentry_af6(ptr noundef %24, ptr noundef %daddr11) #12
  %cmp13 = icmp eq ptr %call12, null
  br i1 %cmp13, label %sw.bb8.skbuff_setattr_return_crit_edge, label %if.end16

sw.bb8.skbuff_setattr_return_crit_edge:           ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #14
  br label %skbuff_setattr_return

if.end16:                                         ; preds = %sw.bb8
  %25 = ptrtoint ptr %call12 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %call12, align 4
  %27 = zext i32 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %26, label %if.end16.skbuff_setattr_return_crit_edge [
    i32 7, label %sw.bb18
    i32 5, label %sw.bb20
  ]

if.end16.skbuff_setattr_return_crit_edge:         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %skbuff_setattr_return

sw.bb18:                                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  %28 = getelementptr inbounds %struct.netlbl_dommap_def, ptr %call12, i32 0, i32 1
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 4
  %call19 = tail call i32 @calipso_skbuff_setattr(ptr noundef %skb, ptr noundef %30, ptr noundef %secattr) #12
  br label %skbuff_setattr_return

sw.bb20:                                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  %call21 = tail call i32 @calipso_skbuff_delattr(ptr noundef %skb) #12
  br label %skbuff_setattr_return

skbuff_setattr_return:                            ; preds = %sw.bb20, %sw.bb18, %if.end16.skbuff_setattr_return_crit_edge, %sw.bb8.skbuff_setattr_return_crit_edge, %sw.bb6, %sw.bb4, %if.end.skbuff_setattr_return_crit_edge, %sw.bb.skbuff_setattr_return_crit_edge, %rcu_read_lock.exit.skbuff_setattr_return_crit_edge
  %ret_val.0 = phi i32 [ %call21, %sw.bb20 ], [ %call19, %sw.bb18 ], [ %call7, %sw.bb6 ], [ %call5, %sw.bb4 ], [ -2, %sw.bb.skbuff_setattr_return_crit_edge ], [ -2, %if.end.skbuff_setattr_return_crit_edge ], [ -2, %sw.bb8.skbuff_setattr_return_crit_edge ], [ -2, %if.end16.skbuff_setattr_return_crit_edge ], [ -93, %rcu_read_lock.exit.skbuff_setattr_return_crit_edge ]
  %call.i43 = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i43, label %skbuff_setattr_return.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i46

skbuff_setattr_return.rcu_read_unlock.exit_crit_edge: ; preds = %skbuff_setattr_return
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true.i46:                                ; preds = %skbuff_setattr_return
  %call1.i44 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i44)
  %tobool.not.i45 = icmp eq i32 %call1.i44, 0
  br i1 %tobool.not.i45, label %land.lhs.true.i46.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i48

land.lhs.true.i46.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i46
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true2.i48:                               ; preds = %land.lhs.true.i46
  %.b4.i47 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i47, label %land.lhs.true2.i48.rcu_read_unlock.exit_crit_edge, label %if.then.i49

land.lhs.true2.i48.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i48
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

if.then.i49:                                      ; preds = %land.lhs.true2.i48
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 724, ptr noundef nonnull @.str.2) #12
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i49, %land.lhs.true2.i48.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i46.rcu_read_unlock.exit_crit_edge, %skbuff_setattr_return.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !51
  %31 = tail call i32 @llvm.read_register.i32(metadata !39) #12
  %and.i.i.i.i.i50 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i.i50 to ptr
  %preempt_count.i.i.i.i51 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i.i51 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i.i51, align 4
  %sub.i.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i51, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  ret i32 %ret_val.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cipso_v4_skbuff_setattr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cipso_v4_skbuff_delattr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @calipso_skbuff_setattr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @calipso_skbuff_delattr(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @netlbl_skbuff_getattr(ptr noundef %skb, i16 noundef zeroext %family, ptr noundef %secattr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i16 %family to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.38)
  switch i16 %family, label %entry.sw.epilog_crit_edge [
    i16 2, label %sw.bb
    i16 10, label %sw.bb3
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %call = tail call ptr @cipso_v4_optptr(ptr noundef %skb) #12
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %sw.bb.sw.epilog_crit_edge, label %land.lhs.true

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

land.lhs.true:                                    ; preds = %sw.bb
  %call1 = tail call i32 @cipso_v4_getattr(ptr noundef nonnull %call, ptr noundef %secattr) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp eq i32 %call1, 0
  br i1 %cmp, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.sw.epilog_crit_edge

land.lhs.true.sw.epilog_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  %call4 = tail call ptr @calipso_optptr(ptr noundef %skb) #12
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %sw.bb3.sw.epilog_crit_edge, label %land.lhs.true6

sw.bb3.sw.epilog_crit_edge:                       ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

land.lhs.true6:                                   ; preds = %sw.bb3
  %call7 = tail call i32 @calipso_getattr(ptr noundef nonnull %call4, ptr noundef %secattr) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp eq i32 %call7, 0
  br i1 %cmp8, label %land.lhs.true6.cleanup_crit_edge, label %land.lhs.true6.sw.epilog_crit_edge

land.lhs.true6.sw.epilog_crit_edge:               ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

land.lhs.true6.cleanup_crit_edge:                 ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.epilog:                                        ; preds = %land.lhs.true6.sw.epilog_crit_edge, %sw.bb3.sw.epilog_crit_edge, %land.lhs.true.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %call12 = tail call i32 @netlbl_unlabel_getattr(ptr noundef %skb, i16 noundef zeroext %family, ptr noundef %secattr) #12
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %land.lhs.true6.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ %call12, %sw.epilog ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %land.lhs.true6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cipso_v4_optptr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cipso_v4_getattr(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @calipso_optptr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @calipso_getattr(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlbl_unlabel_getattr(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @netlbl_skbuff_err(ptr noundef %skb, i16 noundef zeroext %family, i32 noundef %error, i32 noundef %gateway) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %family)
  %cond = icmp eq i16 %family, 2
  br i1 %cond, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %call = tail call ptr @cipso_v4_optptr(ptr noundef %skb) #12
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %sw.bb.sw.epilog_crit_edge, label %if.then

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @cipso_v4_error(ptr noundef %skb, i32 noundef %error, i32 noundef %gateway) #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cipso_v4_error(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @netlbl_cache_invalidate() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @cipso_v4_cache_invalidate() #12
  tail call void @calipso_cache_invalidate() #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cipso_v4_cache_invalidate() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @calipso_cache_invalidate() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @netlbl_cache_add(ptr noundef %skb, i16 noundef zeroext %family, ptr noundef %secattr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %secattr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %secattr, align 4
  %and = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = zext i16 %family to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.39)
  switch i16 %family, label %if.end.cleanup_crit_edge [
    i16 2, label %sw.bb
    i16 10, label %sw.bb4
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %call = tail call ptr @cipso_v4_optptr(ptr noundef %skb) #12
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %sw.bb.cleanup_crit_edge, label %if.then1

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then1:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  %call2 = tail call i32 @cipso_v4_cache_add(ptr noundef nonnull %call, ptr noundef %secattr) #12
  br label %cleanup

sw.bb4:                                           ; preds = %if.end
  %call5 = tail call ptr @calipso_optptr(ptr noundef %skb) #12
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %sw.bb4.cleanup_crit_edge, label %if.then7

sw.bb4.cleanup_crit_edge:                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then7:                                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #14
  %call8 = tail call i32 @calipso_cache_add(ptr noundef nonnull %call5, ptr noundef %secattr) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %sw.bb4.cleanup_crit_edge, %if.then1, %sw.bb.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %if.then7 ], [ %call2, %if.then1 ], [ -42, %entry.cleanup_crit_edge ], [ -42, %sw.bb4.cleanup_crit_edge ], [ -42, %sw.bb.cleanup_crit_edge ], [ -42, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cipso_v4_cache_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @calipso_cache_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @netlbl_audit_start(i32 noundef %type, ptr noundef %audit_info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @netlbl_audit_start_common(i32 noundef %type, ptr noundef %audit_info) #12
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @netlbl_audit_start_common(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @netlbl_init() #6 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #16
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef 128) #16
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #16
  %call11 = tail call i32 @netlbl_domhsh_init(i32 noundef 7) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp.not = icmp eq i32 %call11, 0
  br i1 %cmp.not, label %if.end, label %entry.init_failure_crit_edge

entry.init_failure_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %init_failure

if.end:                                           ; preds = %entry
  %call12 = tail call i32 @netlbl_unlabel_init(i32 noundef 7) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13.not = icmp eq i32 %call12, 0
  br i1 %cmp13.not, label %if.end15, label %if.end.init_failure_crit_edge

if.end.init_failure_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %init_failure

if.end15:                                         ; preds = %if.end
  %call16 = tail call i32 @netlbl_netlink_init() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17.not = icmp eq i32 %call16, 0
  br i1 %cmp17.not, label %if.end19, label %if.end15.init_failure_crit_edge

if.end15.init_failure_crit_edge:                  ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %init_failure

if.end19:                                         ; preds = %if.end15
  %call20 = tail call i32 @netlbl_unlabel_defconf() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21.not = icmp eq i32 %call20, 0
  br i1 %cmp21.not, label %do.end26, label %if.end19.init_failure_crit_edge

if.end19.init_failure_crit_edge:                  ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %init_failure

do.end26:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #16
  ret i32 0

init_failure:                                     ; preds = %if.end19.init_failure_crit_edge, %if.end15.init_failure_crit_edge, %if.end.init_failure_crit_edge, %entry.init_failure_crit_edge
  %ret_val.0 = phi i32 [ %call11, %entry.init_failure_crit_edge ], [ %call12, %if.end.init_failure_crit_edge ], [ %call16, %if.end15.init_failure_crit_edge ], [ %call20, %if.end19.init_failure_crit_edge ]
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.15, i32 noundef %ret_val.0) #17
  unreachable
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlbl_domhsh_init(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlbl_unlabel_init(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlbl_netlink_init() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlbl_unlabel_defconf() local_unnamed_addr #1

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind readonly }
attributes #10 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { cold noreturn null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { cold nounwind }
attributes #17 = { cold noreturn nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !16, !18, !19, !21, !22, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !36, !37}
!llvm.named.register.sp = !{!39}
!llvm.module.flags = !{!40, !41, !42, !43, !44, !45, !46, !47}
!llvm.ident = !{!48}

!0 = !{ptr @__ksymtab_netlbl_catmap_walk, !1, !"__ksymtab_netlbl_catmap_walk", i1 false, i1 false}
!1 = !{!"../net/netlabel/netlabel_kapi.c", i32 650, i32 1}
!2 = !{ptr @__ksymtab_netlbl_catmap_setbit, !3, !"__ksymtab_netlbl_catmap_setbit", i1 false, i1 false}
!3 = !{!"../net/netlabel/netlabel_kapi.c", i32 792, i32 1}
!4 = !{ptr @__ksymtab_netlbl_bitmap_walk, !5, !"__ksymtab_netlbl_bitmap_walk", i1 false, i1 false}
!5 = !{!"../net/netlabel/netlabel_kapi.c", i32 909, i32 1}
!6 = !{ptr @__ksymtab_netlbl_bitmap_setbit, !7, !"__ksymtab_netlbl_bitmap_setbit", i1 false, i1 false}
!7 = !{!"../net/netlabel/netlabel_kapi.c", i32 934, i32 1}
!8 = !{ptr @__ksymtab_netlbl_audit_start, !9, !"__ksymtab_netlbl_audit_start", i1 false, i1 false}
!9 = !{!"../net/netlabel/netlabel_kapi.c", i32 1478, i32 1}
!10 = !{ptr @__initcall__kmod_netlabel_kapi__500_1523_netlbl_init4, !11, !"__initcall__kmod_netlabel_kapi__500_1523_netlbl_init4", i1 false, i1 false}
!11 = !{!"../net/netlabel/netlabel_kapi.c", i32 1523, i32 1}
!12 = distinct !{null, !13, !"__warned", i1 false, i1 false}
!13 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!14 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!16 = distinct !{null, !17, !"__warned", i1 false, i1 false}
!17 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../net/netlabel/netlabel_kapi.c", i32 1495, i32 2}
!21 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @netlbl_init._entry, !20, !"_entry", i1 false, i1 false}
!24 = !{ptr @netlbl_init._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../net/netlabel/netlabel_kapi.c", i32 1496, i32 2}
!27 = !{ptr @netlbl_init._entry.6, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @netlbl_init._entry_ptr.8, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../net/netlabel/netlabel_kapi.c", i32 1498, i32 2}
!31 = !{ptr @netlbl_init._entry.9, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @netlbl_init._entry_ptr.11, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../net/netlabel/netlabel_kapi.c", i32 1515, i32 2}
!35 = !{ptr @netlbl_init._entry.12, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @netlbl_init._entry_ptr.14, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../net/netlabel/netlabel_kapi.c", i32 1520, i32 8}
!39 = !{!"sp"}
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
!50 = !{i64 2149953752}
!51 = !{i64 2149954018}
