; ModuleID = '/llk/IR_all_yes/net/netfilter/nf_conntrack_timeout.c_pt.bc'
source_filename = "../net/netfilter/nf_conntrack_timeout.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+nf_ct_timeout_find_get_hook\22, \22a\22\09"
module asm "\09.weak\09__crc_nf_ct_timeout_find_get_hook\09\09\09\09"
module asm "\09.long\09__crc_nf_ct_timeout_find_get_hook\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nf_ct_timeout_find_get_hook:\09\09\09\09\09"
module asm "\09.asciz \09\22nf_ct_timeout_find_get_hook\22\09\09\09\09\09"
module asm "__kstrtabns_nf_ct_timeout_find_get_hook:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+nf_ct_timeout_put_hook\22, \22a\22\09"
module asm "\09.weak\09__crc_nf_ct_timeout_put_hook\09\09\09\09"
module asm "\09.long\09__crc_nf_ct_timeout_put_hook\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nf_ct_timeout_put_hook:\09\09\09\09\09"
module asm "\09.asciz \09\22nf_ct_timeout_put_hook\22\09\09\09\09\09"
module asm "__kstrtabns_nf_ct_timeout_put_hook:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+nf_ct_untimeout\22, \22a\22\09"
module asm "\09.weak\09__crc_nf_ct_untimeout\09\09\09\09"
module asm "\09.long\09__crc_nf_ct_untimeout\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nf_ct_untimeout:\09\09\09\09\09"
module asm "\09.asciz \09\22nf_ct_untimeout\22\09\09\09\09\09"
module asm "__kstrtabns_nf_ct_untimeout:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+nf_ct_set_timeout\22, \22a\22\09"
module asm "\09.weak\09__crc_nf_ct_set_timeout\09\09\09\09"
module asm "\09.long\09__crc_nf_ct_set_timeout\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nf_ct_set_timeout:\09\09\09\09\09"
module asm "\09.asciz \09\22nf_ct_set_timeout\22\09\09\09\09\09"
module asm "__kstrtabns_nf_ct_set_timeout:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+nf_ct_destroy_timeout\22, \22a\22\09"
module asm "\09.weak\09__crc_nf_ct_destroy_timeout\09\09\09\09"
module asm "\09.long\09__crc_nf_ct_destroy_timeout\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nf_ct_destroy_timeout:\09\09\09\09\09"
module asm "\09.asciz \09\22nf_ct_destroy_timeout\22\09\09\09\09\09"
module asm "__kstrtabns_nf_ct_destroy_timeout:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nf_ct_ext_type = type { ptr, i32, i8, i8 }
%struct.nf_conn = type { %struct.nf_conntrack, %struct.spinlock, i32, %struct.nf_conntrack_zone, [2 x %struct.nf_conntrack_tuple_hash], i32, i16, %struct.possible_net_t, %struct.hlist_node, %struct.anon.135, ptr, i32, i32, ptr, %union.nf_conntrack_proto }
%struct.nf_conntrack = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.nf_conntrack_zone = type { i16, i8, i8 }
%struct.nf_conntrack_tuple_hash = type { %struct.hlist_nulls_node, %struct.nf_conntrack_tuple }
%struct.hlist_nulls_node = type { ptr, ptr }
%struct.nf_conntrack_tuple = type { %struct.nf_conntrack_man, %struct.anon.9 }
%struct.nf_conntrack_man = type { %union.nf_inet_addr, %union.nf_conntrack_man_proto, i16 }
%union.nf_inet_addr = type { [4 x i32] }
%union.nf_conntrack_man_proto = type { i16 }
%struct.anon.9 = type { %union.nf_inet_addr, %union.anon.10, i8, i8 }
%union.anon.10 = type { i16 }
%struct.possible_net_t = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.anon.135 = type {}
%union.nf_conntrack_proto = type { %struct.nf_ct_dccp, [48 x i8] }
%struct.nf_ct_dccp = type { [2 x i8], i8, i8, i8, i64 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.nf_ct_timeout = type { i16, ptr, [0 x i8] }

@nf_ct_timeout_find_get_hook = dso_local global ptr null, section ".data..read_mostly", align 4
@__kstrtab_nf_ct_timeout_find_get_hook = external dso_local constant [0 x i8], align 1
@__kstrtabns_nf_ct_timeout_find_get_hook = external dso_local constant [0 x i8], align 1
@__ksymtab_nf_ct_timeout_find_get_hook = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nf_ct_timeout_find_get_hook to i32), ptr @__kstrtab_nf_ct_timeout_find_get_hook, ptr @__kstrtabns_nf_ct_timeout_find_get_hook }, section "___ksymtab_gpl+nf_ct_timeout_find_get_hook", align 4
@nf_ct_timeout_put_hook = dso_local global ptr null, section ".data..read_mostly", align 4
@__kstrtab_nf_ct_timeout_put_hook = external dso_local constant [0 x i8], align 1
@__kstrtabns_nf_ct_timeout_put_hook = external dso_local constant [0 x i8], align 1
@__ksymtab_nf_ct_timeout_put_hook = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nf_ct_timeout_put_hook to i32), ptr @__kstrtab_nf_ct_timeout_put_hook, ptr @__kstrtabns_nf_ct_timeout_put_hook }, section "___ksymtab_gpl+nf_ct_timeout_put_hook", align 4
@__kstrtab_nf_ct_untimeout = external dso_local constant [0 x i8], align 1
@__kstrtabns_nf_ct_untimeout = external dso_local constant [0 x i8], align 1
@__ksymtab_nf_ct_untimeout = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nf_ct_untimeout to i32), ptr @__kstrtab_nf_ct_untimeout, ptr @__kstrtabns_nf_ct_untimeout }, section "___ksymtab_gpl+nf_ct_untimeout", align 4
@nf_ct_set_timeout.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"net/netfilter/nf_conntrack_timeout.c\00", [59 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Timeout policy base is empty\00", [35 x i8] zeroinitializer }, align 32
@nf_ct_set_timeout._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.nf_ct_set_timeout = private unnamed_addr constant [18 x i8] c"nf_ct_set_timeout\00", align 1
@nf_ct_set_timeout._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @__func__.nf_ct_set_timeout, ptr @.str, i32 79, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016No such timeout policy \22%s\22\0A\00", [33 x i8] zeroinitializer }, align 32
@nf_ct_set_timeout._entry_ptr = internal global ptr @nf_ct_set_timeout._entry, section ".printk_index", align 4
@nf_ct_set_timeout._rs.5 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@nf_ct_set_timeout._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @__func__.nf_ct_set_timeout, ptr @.str, i32 87, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\016Timeout policy `%s' can only be used by L%d protocol number %d\0A\00", [62 x i8] zeroinitializer }, align 32
@nf_ct_set_timeout._entry_ptr.8 = internal global ptr @nf_ct_set_timeout._entry.6, section ".printk_index", align 4
@nf_ct_set_timeout._rs.9 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@nf_ct_set_timeout._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @__func__.nf_ct_set_timeout, ptr @.str, i32 97, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@nf_ct_set_timeout._entry_ptr.11 = internal global ptr @nf_ct_set_timeout._entry.10, section ".printk_index", align 4
@nf_ct_set_timeout._rs.12 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@nf_ct_set_timeout._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @__func__.nf_ct_set_timeout, ptr @.str, i32 114, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\016%s\0A\00", [26 x i8] zeroinitializer }, align 32
@nf_ct_set_timeout._entry_ptr.15 = internal global ptr @nf_ct_set_timeout._entry.13, section ".printk_index", align 4
@__kstrtab_nf_ct_set_timeout = external dso_local constant [0 x i8], align 1
@__kstrtabns_nf_ct_set_timeout = external dso_local constant [0 x i8], align 1
@__ksymtab_nf_ct_set_timeout = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nf_ct_set_timeout to i32), ptr @__kstrtab_nf_ct_set_timeout, ptr @__kstrtabns_nf_ct_set_timeout }, section "___ksymtab_gpl+nf_ct_set_timeout", align 4
@nf_ct_destroy_timeout.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__kstrtab_nf_ct_destroy_timeout = external dso_local constant [0 x i8], align 1
@__kstrtabns_nf_ct_destroy_timeout = external dso_local constant [0 x i8], align 1
@__ksymtab_nf_ct_destroy_timeout = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nf_ct_destroy_timeout to i32), ptr @__kstrtab_nf_ct_destroy_timeout, ptr @__kstrtabns_nf_ct_destroy_timeout }, section "___ksymtab_gpl+nf_ct_destroy_timeout", align 4
@timeout_extend = internal constant { %struct.nf_ct_ext_type, [20 x i8] } { %struct.nf_ct_ext_type { ptr null, i32 6, i8 4, i8 4 }, [20 x i8] zeroinitializer }, align 32
@nf_conntrack_timeout_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str, i32 148, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013nf_ct_timeout: Unable to register timeout extension.\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"nf_conntrack_timeout_init\00", [38 x i8] zeroinitializer }, align 32
@nf_conntrack_timeout_init._entry_ptr = internal global ptr @nf_conntrack_timeout_init._entry, section ".printk_index", align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.18 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.20 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@__nf_ct_timeout_put.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 68, i32 21 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 71, i32 12 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 78, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 85, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 95, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 114, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant [15 x i8] c"timeout_extend\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 138, i32 36 }
@___asan_gen_.69 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.76 = private constant [40 x i8] c"../net/netfilter/nf_conntrack_timeout.c\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 148, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 695, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.85 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 723, i32 2 }
@llvm.compiler.used = appending global [32 x ptr] [ptr @__ksymtab_nf_ct_destroy_timeout, ptr @__ksymtab_nf_ct_set_timeout, ptr @__ksymtab_nf_ct_timeout_find_get_hook, ptr @__ksymtab_nf_ct_timeout_put_hook, ptr @__ksymtab_nf_ct_untimeout, ptr @nf_conntrack_timeout_init._entry, ptr @nf_conntrack_timeout_init._entry_ptr, ptr @nf_ct_set_timeout._entry, ptr @nf_ct_set_timeout._entry.10, ptr @nf_ct_set_timeout._entry.13, ptr @nf_ct_set_timeout._entry.6, ptr @nf_ct_set_timeout._entry_ptr, ptr @nf_ct_set_timeout._entry_ptr.11, ptr @nf_ct_set_timeout._entry_ptr.15, ptr @nf_ct_set_timeout._entry_ptr.8, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @nf_ct_set_timeout._rs, ptr @.str.3, ptr @.str.4, ptr @nf_ct_set_timeout._rs.5, ptr @.str.7, ptr @nf_ct_set_timeout._rs.9, ptr @nf_ct_set_timeout._rs.12, ptr @.str.14, ptr @timeout_extend, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nf_ct_set_timeout._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nf_ct_set_timeout._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nf_ct_set_timeout._rs.5 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nf_ct_set_timeout._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nf_ct_set_timeout._rs.9 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nf_ct_set_timeout._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nf_ct_set_timeout._rs.12 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nf_ct_set_timeout._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timeout_extend to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nf_conntrack_timeout_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nf_ct_untimeout(ptr noundef %net, ptr noundef %timeout) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @nf_ct_iterate_cleanup_net(ptr noundef %net, ptr noundef nonnull @untimeout, ptr noundef %timeout, i32 noundef 0, i32 noundef 0) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_ct_iterate_cleanup_net(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @untimeout(ptr nocapture noundef readonly %ct, ptr noundef readnone %timeout) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ext.i.i.i = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 13
  %0 = ptrtoint ptr %ext.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ext.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i.i, label %entry.if.end_crit_edge, label %nf_ct_ext_exist.exit.i.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

nf_ct_ext_exist.exit.i.i:                         ; preds = %entry
  %arrayidx.i.i.i.i = getelementptr [10 x i8], ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.i.i.not.i.i = icmp eq i8 %3, 0
  br i1 %tobool.i.i.not.i.i, label %nf_ct_ext_exist.exit.i.i.if.end_crit_edge, label %nf_ct_timeout_find.exit

nf_ct_ext_exist.exit.i.i.if.end_crit_edge:        ; preds = %nf_ct_ext_exist.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

nf_ct_timeout_find.exit:                          ; preds = %nf_ct_ext_exist.exit.i.i
  %conv.i.i = zext i8 %3 to i32
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %conv.i.i
  %tobool.not = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool.not, label %nf_ct_timeout_find.exit.if.end_crit_edge, label %land.lhs.true

nf_ct_timeout_find.exit.if.end_crit_edge:         ; preds = %nf_ct_timeout_find.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %nf_ct_timeout_find.exit
  %tobool1.not = icmp eq ptr %timeout, null
  br i1 %tobool1.not, label %land.lhs.true.do.body5_crit_edge, label %lor.lhs.false

land.lhs.true.do.body5_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body5

lor.lhs.false:                                    ; preds = %land.lhs.true
  %4 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i.i, align 4
  %cmp = icmp eq ptr %5, %timeout
  br i1 %cmp, label %lor.lhs.false.do.body5_crit_edge, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

lor.lhs.false.do.body5_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body5

do.body5:                                         ; preds = %lor.lhs.false.do.body5_crit_edge, %land.lhs.true.do.body5_crit_edge
  %6 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr null, ptr %add.ptr.i.i, align 4
  br label %if.end

if.end:                                           ; preds = %do.body5, %lor.lhs.false.if.end_crit_edge, %nf_ct_timeout_find.exit.if.end_crit_edge, %nf_ct_ext_exist.exit.i.i.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nf_ct_set_timeout(ptr noundef %net, ptr noundef %ct, i8 noundef zeroext %l3num, i8 noundef zeroext %l4num, ptr noundef %timeout_name) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !59) #6
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !69
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 696, ptr noundef nonnull @.str.19) #6
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %4 = load volatile ptr, ptr @nf_ct_timeout_find_get_hook, align 4
  %call = tail call i32 @rcu_read_lock_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end7_crit_edge

rcu_read_lock.exit.do.end7_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end7

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b92 = load i1, ptr @nf_ct_set_timeout.__warned, align 1
  br i1 %.b92, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @nf_ct_set_timeout.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 68, ptr noundef nonnull @.str.1) #6
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %rcu_read_lock.exit.do.end7_crit_edge
  %tobool9.not = icmp eq ptr %4, null
  br i1 %tobool9.not, label %do.end7.out_crit_edge, label %if.end11

do.end7.out_crit_edge:                            ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end11:                                         ; preds = %do.end7
  %call12 = tail call ptr %4(ptr noundef %net, ptr noundef %timeout_name) #6
  %tobool13.not = icmp eq ptr %call12, null
  br i1 %tobool13.not, label %if.then14, label %if.end24

if.then14:                                        ; preds = %if.end11
  %call15 = tail call i32 @___ratelimit(ptr noundef nonnull @nf_ct_set_timeout._rs, ptr noundef nonnull @__func__.nf_ct_set_timeout) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.then14.out_crit_edge, label %do.end20

if.then14.out_crit_edge:                          ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

do.end20:                                         ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #8
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %timeout_name) #9
  br label %out

if.end24:                                         ; preds = %if.end11
  %5 = ptrtoint ptr %call12 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %call12, align 4
  %7 = zext i8 %l3num to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %6, i16 %7)
  %cmp.not = icmp eq i16 %6, %7
  br i1 %cmp.not, label %if.end40, label %if.then28

if.then28:                                        ; preds = %if.end24
  %call29 = tail call i32 @___ratelimit(ptr noundef nonnull @nf_ct_set_timeout._rs.5, ptr noundef nonnull @__func__.nf_ct_set_timeout) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.then28.err_put_timeout_crit_edge, label %do.end34

if.then28.err_put_timeout_crit_edge:              ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_put_timeout

do.end34:                                         ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %call12 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %call12, align 4
  %conv37 = zext i16 %9 to i32
  %call38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %timeout_name, i32 noundef 3, i32 noundef %conv37) #9
  br label %err_put_timeout

if.end40:                                         ; preds = %if.end24
  %l4proto = getelementptr inbounds %struct.nf_ct_timeout, ptr %call12, i32 0, i32 1
  %10 = ptrtoint ptr %l4proto to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %l4proto, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %11, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %13, i8 %l4num)
  %cmp44.not = icmp eq i8 %13, %l4num
  br i1 %cmp44.not, label %if.end59, label %if.then46

if.then46:                                        ; preds = %if.end40
  %call47 = tail call i32 @___ratelimit(ptr noundef nonnull @nf_ct_set_timeout._rs.9, ptr noundef nonnull @__func__.nf_ct_set_timeout) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.then46.err_put_timeout_crit_edge, label %do.end52

if.then46.err_put_timeout_crit_edge:              ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_put_timeout

do.end52:                                         ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %l4proto to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %l4proto, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %15, align 4
  %conv56 = zext i8 %17 to i32
  %call57 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %timeout_name, i32 noundef 4, i32 noundef %conv56) #9
  br label %err_put_timeout

if.end59:                                         ; preds = %if.end40
  %call.i93 = tail call ptr @nf_ct_ext_add(ptr noundef %ct, i32 noundef 6, i32 noundef 2592) #6
  %cmp.i = icmp eq ptr %call.i93, null
  br i1 %cmp.i, label %if.end59.err_put_timeout_crit_edge, label %if.end63

if.end59.err_put_timeout_crit_edge:               ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_put_timeout

if.end63:                                         ; preds = %if.end59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !70
  %18 = ptrtoint ptr %call.i93 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %call12, ptr %call.i93, align 4
  %call.i94 = tail call zeroext i1 @rcu_is_watching() #6
  br i1 %call.i94, label %if.end63.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i97

if.end63.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit

land.lhs.true.i97:                                ; preds = %if.end63
  %call1.i95 = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i95)
  %tobool.not.i96 = icmp eq i32 %call1.i95, 0
  br i1 %tobool.not.i96, label %land.lhs.true.i97.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i99

land.lhs.true.i97.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i97
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit

land.lhs.true2.i99:                               ; preds = %land.lhs.true.i97
  %.b4.i98 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i98, label %land.lhs.true2.i99.rcu_read_unlock.exit_crit_edge, label %if.then.i100

land.lhs.true2.i99.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i99
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit

if.then.i100:                                     ; preds = %land.lhs.true2.i99
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 724, ptr noundef nonnull @.str.20) #6
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i100, %land.lhs.true2.i99.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i97.rcu_read_unlock.exit_crit_edge, %if.end63.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !71
  %19 = tail call i32 @llvm.read_register.i32(metadata !59) #6
  %and.i.i.i.i.i101 = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i.i.i.i101 to ptr
  %preempt_count.i.i.i.i102 = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %preempt_count.i.i.i.i102 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %preempt_count.i.i.i.i102, align 4
  %sub.i.i.i = add i32 %22, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i102, align 4
  tail call void @rcu_read_unlock_strict() #6
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #6
  br label %cleanup

err_put_timeout:                                  ; preds = %if.end59.err_put_timeout_crit_edge, %do.end52, %if.then46.err_put_timeout_crit_edge, %do.end34, %if.then28.err_put_timeout_crit_edge
  %ret.0 = phi i32 [ -22, %do.end34 ], [ -22, %if.then28.err_put_timeout_crit_edge ], [ -22, %do.end52 ], [ -22, %if.then46.err_put_timeout_crit_edge ], [ -12, %if.end59.err_put_timeout_crit_edge ]
  %23 = load volatile ptr, ptr @nf_ct_timeout_put_hook, align 4
  %call.i103 = tail call i32 @rcu_read_lock_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i103)
  %tobool.not.i104 = icmp eq i32 %call.i103, 0
  br i1 %tobool.not.i104, label %land.lhs.true.i105, label %err_put_timeout.do.end7.i_crit_edge

err_put_timeout.do.end7.i_crit_edge:              ; preds = %err_put_timeout
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end7.i

land.lhs.true.i105:                               ; preds = %err_put_timeout
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i105.do.end7.i_crit_edge, label %land.lhs.true4.i

land.lhs.true.i105.do.end7.i_crit_edge:           ; preds = %land.lhs.true.i105
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end7.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i105
  %.b13.i = load i1, ptr @__nf_ct_timeout_put.__warned, align 1
  br i1 %.b13.i, label %land.lhs.true4.i.do.end7.i_crit_edge, label %if.then.i106

land.lhs.true4.i.do.end7.i_crit_edge:             ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end7.i

if.then.i106:                                     ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @__nf_ct_timeout_put.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 53, ptr noundef nonnull @.str.1) #6
  br label %do.end7.i

do.end7.i:                                        ; preds = %if.then.i106, %land.lhs.true4.i.do.end7.i_crit_edge, %land.lhs.true.i105.do.end7.i_crit_edge, %err_put_timeout.do.end7.i_crit_edge
  %tobool9.not.i = icmp eq ptr %23, null
  br i1 %tobool9.not.i, label %do.end7.i.out_crit_edge, label %if.then10.i

do.end7.i.out_crit_edge:                          ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.then10.i:                                      ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %23(ptr noundef nonnull %call12) #6
  br label %out

out:                                              ; preds = %if.then10.i, %do.end7.i.out_crit_edge, %do.end20, %if.then14.out_crit_edge, %do.end7.out_crit_edge
  %ret.1 = phi i32 [ -2, %do.end20 ], [ -2, %if.then14.out_crit_edge ], [ -2, %do.end7.out_crit_edge ], [ %ret.0, %do.end7.i.out_crit_edge ], [ %ret.0, %if.then10.i ]
  %errmsg.0 = phi ptr [ null, %do.end20 ], [ null, %if.then14.out_crit_edge ], [ @.str.2, %do.end7.out_crit_edge ], [ null, %do.end7.i.out_crit_edge ], [ null, %if.then10.i ]
  %call.i107 = tail call zeroext i1 @rcu_is_watching() #6
  br i1 %call.i107, label %out.rcu_read_unlock.exit117_crit_edge, label %land.lhs.true.i110

out.rcu_read_unlock.exit117_crit_edge:            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit117

land.lhs.true.i110:                               ; preds = %out
  %call1.i108 = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i108)
  %tobool.not.i109 = icmp eq i32 %call1.i108, 0
  br i1 %tobool.not.i109, label %land.lhs.true.i110.rcu_read_unlock.exit117_crit_edge, label %land.lhs.true2.i112

land.lhs.true.i110.rcu_read_unlock.exit117_crit_edge: ; preds = %land.lhs.true.i110
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit117

land.lhs.true2.i112:                              ; preds = %land.lhs.true.i110
  %.b4.i111 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i111, label %land.lhs.true2.i112.rcu_read_unlock.exit117_crit_edge, label %if.then.i113

land.lhs.true2.i112.rcu_read_unlock.exit117_crit_edge: ; preds = %land.lhs.true2.i112
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit117

if.then.i113:                                     ; preds = %land.lhs.true2.i112
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 724, ptr noundef nonnull @.str.20) #6
  br label %rcu_read_unlock.exit117

rcu_read_unlock.exit117:                          ; preds = %if.then.i113, %land.lhs.true2.i112.rcu_read_unlock.exit117_crit_edge, %land.lhs.true.i110.rcu_read_unlock.exit117_crit_edge, %out.rcu_read_unlock.exit117_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !71
  %24 = tail call i32 @llvm.read_register.i32(metadata !59) #6
  %and.i.i.i.i.i114 = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i.i.i.i114 to ptr
  %preempt_count.i.i.i.i115 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %preempt_count.i.i.i.i115 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %preempt_count.i.i.i.i115, align 4
  %sub.i.i.i116 = add i32 %27, -1
  store volatile i32 %sub.i.i.i116, ptr %preempt_count.i.i.i.i115, align 4
  tail call void @rcu_read_unlock_strict() #6
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #6
  br i1 %tobool9.not, label %if.then65, label %rcu_read_unlock.exit117.cleanup_crit_edge

rcu_read_unlock.exit117.cleanup_crit_edge:        ; preds = %rcu_read_unlock.exit117
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then65:                                        ; preds = %rcu_read_unlock.exit117
  %call66 = tail call i32 @___ratelimit(ptr noundef nonnull @nf_ct_set_timeout._rs.12, ptr noundef nonnull @__func__.nf_ct_set_timeout) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %if.then65.cleanup_crit_edge, label %do.end71

if.then65.cleanup_crit_edge:                      ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end71:                                         ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #8
  %call73 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %errmsg.0) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end71, %if.then65.cleanup_crit_edge, %rcu_read_unlock.exit117.cleanup_crit_edge, %rcu_read_unlock.exit
  %retval.0 = phi i32 [ 0, %rcu_read_unlock.exit ], [ %ret.1, %if.then65.cleanup_crit_edge ], [ %ret.1, %do.end71 ], [ %ret.1, %rcu_read_unlock.exit117.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nf_ct_destroy_timeout(ptr nocapture noundef readonly %ct) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !59) #6
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !69
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 696, ptr noundef nonnull @.str.19) #6
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %4 = load volatile ptr, ptr @nf_ct_timeout_put_hook, align 4
  %call = tail call i32 @rcu_read_lock_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end7_crit_edge

rcu_read_lock.exit.do.end7_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end7

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b32 = load i1, ptr @nf_ct_destroy_timeout.__warned, align 1
  br i1 %.b32, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @nf_ct_destroy_timeout.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 125, ptr noundef nonnull @.str.1) #6
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %rcu_read_lock.exit.do.end7_crit_edge
  %tobool9.not = icmp eq ptr %4, null
  br i1 %tobool9.not, label %do.end7.if.end28_crit_edge, label %if.then10

do.end7.if.end28_crit_edge:                       ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

if.then10:                                        ; preds = %do.end7
  %ext.i.i.i = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 13
  %5 = ptrtoint ptr %ext.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ext.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %6, null
  br i1 %tobool.not.i.i.i, label %if.then10.if.end28_crit_edge, label %nf_ct_ext_exist.exit.i.i

if.then10.if.end28_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

nf_ct_ext_exist.exit.i.i:                         ; preds = %if.then10
  %arrayidx.i.i.i.i = getelementptr [10 x i8], ptr %6, i32 0, i32 6
  %7 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.i.i.not.i.i = icmp eq i8 %8, 0
  br i1 %tobool.i.i.not.i.i, label %nf_ct_ext_exist.exit.i.i.if.end28_crit_edge, label %nf_ct_timeout_find.exit

nf_ct_ext_exist.exit.i.i.if.end28_crit_edge:      ; preds = %nf_ct_ext_exist.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

nf_ct_timeout_find.exit:                          ; preds = %nf_ct_ext_exist.exit.i.i
  %conv.i.i = zext i8 %8 to i32
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 %conv.i.i
  %tobool12.not = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool12.not, label %nf_ct_timeout_find.exit.if.end28_crit_edge, label %if.then13

nf_ct_timeout_find.exit.if.end28_crit_edge:       ; preds = %nf_ct_timeout_find.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

if.then13:                                        ; preds = %nf_ct_timeout_find.exit
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr.i.i, align 4
  tail call void %4(ptr noundef %10) #6
  %11 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr null, ptr %add.ptr.i.i, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then13, %nf_ct_timeout_find.exit.if.end28_crit_edge, %nf_ct_ext_exist.exit.i.i.if.end28_crit_edge, %if.then10.if.end28_crit_edge, %do.end7.if.end28_crit_edge
  %call.i33 = tail call zeroext i1 @rcu_is_watching() #6
  br i1 %call.i33, label %if.end28.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i36

if.end28.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit

land.lhs.true.i36:                                ; preds = %if.end28
  %call1.i34 = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i34)
  %tobool.not.i35 = icmp eq i32 %call1.i34, 0
  br i1 %tobool.not.i35, label %land.lhs.true.i36.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i38

land.lhs.true.i36.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i36
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit

land.lhs.true2.i38:                               ; preds = %land.lhs.true.i36
  %.b4.i37 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i37, label %land.lhs.true2.i38.rcu_read_unlock.exit_crit_edge, label %if.then.i39

land.lhs.true2.i38.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i38
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit

if.then.i39:                                      ; preds = %land.lhs.true2.i38
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 724, ptr noundef nonnull @.str.20) #6
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i39, %land.lhs.true2.i38.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i36.rcu_read_unlock.exit_crit_edge, %if.end28.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !71
  %12 = tail call i32 @llvm.read_register.i32(metadata !59) #6
  %and.i.i.i.i.i40 = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i.i40 to ptr
  %preempt_count.i.i.i.i41 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %preempt_count.i.i.i.i41 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %preempt_count.i.i.i.i41, align 4
  %sub.i.i.i = add i32 %15, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i41, align 4
  tail call void @rcu_read_unlock_strict() #6
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nf_conntrack_timeout_init() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @nf_ct_extend_register(ptr noundef nonnull @timeout_extend) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_ct_extend_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nf_conntrack_timeout_fini() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @nf_ct_extend_unregister(ptr noundef nonnull @timeout_extend) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_ct_extend_unregister(ptr noundef) local_unnamed_addr #1

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

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nf_ct_ext_add(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

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

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !12, !14, !15, !16, !17, !18, !19, !21, !22, !23, !24, !26, !27, !28, !30, !31, !32, !33, !35, !37, !39, !41, !42, !43, !44, !46, !48, !50, !51, !52, !54, !55, !57}
!llvm.named.register.sp = !{!59}
!llvm.module.flags = !{!60, !61, !62, !63, !64, !65, !66, !67}
!llvm.ident = !{!68}

!0 = !{ptr @__ksymtab_nf_ct_timeout_find_get_hook, !1, !"__ksymtab_nf_ct_timeout_find_get_hook", i1 false, i1 false}
!1 = !{!"../net/netfilter/nf_conntrack_timeout.c", i32 27, i32 1}
!2 = !{ptr @__ksymtab_nf_ct_timeout_put_hook, !3, !"__ksymtab_nf_ct_timeout_put_hook", i1 false, i1 false}
!3 = !{!"../net/netfilter/nf_conntrack_timeout.c", i32 30, i32 1}
!4 = !{ptr @__ksymtab_nf_ct_untimeout, !5, !"__ksymtab_nf_ct_untimeout", i1 false, i1 false}
!5 = !{!"../net/netfilter/nf_conntrack_timeout.c", i32 47, i32 1}
!6 = distinct !{null, !7, !"__warned", i1 false, i1 false}
!7 = !{!"../net/netfilter/nf_conntrack_timeout.c", i32 68, i32 21}
!8 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../net/netfilter/nf_conntrack_timeout.c", i32 71, i32 12}
!12 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../net/netfilter/nf_conntrack_timeout.c", i32 78, i32 3}
!14 = !{ptr @nf_ct_set_timeout._rs, !13, !"_rs", i1 false, i1 false}
!15 = !{ptr @__func__.nf_ct_set_timeout, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @nf_ct_set_timeout._entry, !13, !"_entry", i1 false, i1 false}
!18 = !{ptr @nf_ct_set_timeout._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @nf_ct_set_timeout._rs.5, !20, !"_rs", i1 false, i1 false}
!20 = !{!"../net/netfilter/nf_conntrack_timeout.c", i32 85, i32 3}
!21 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @nf_ct_set_timeout._entry.6, !20, !"_entry", i1 false, i1 false}
!23 = !{ptr @nf_ct_set_timeout._entry_ptr.8, !20, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @nf_ct_set_timeout._rs.9, !25, !"_rs", i1 false, i1 false}
!25 = !{!"../net/netfilter/nf_conntrack_timeout.c", i32 95, i32 3}
!26 = !{ptr @nf_ct_set_timeout._entry.10, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @nf_ct_set_timeout._entry_ptr.11, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @nf_ct_set_timeout._rs.12, !29, !"_rs", i1 false, i1 false}
!29 = !{!"../net/netfilter/nf_conntrack_timeout.c", i32 114, i32 3}
!30 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @nf_ct_set_timeout._entry.13, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @nf_ct_set_timeout._entry_ptr.15, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @__ksymtab_nf_ct_set_timeout, !34, !"__ksymtab_nf_ct_set_timeout", i1 false, i1 false}
!34 = !{!"../net/netfilter/nf_conntrack_timeout.c", i32 117, i32 1}
!35 = distinct !{null, !36, !"__warned", i1 false, i1 false}
!36 = !{!"../net/netfilter/nf_conntrack_timeout.c", i32 125, i32 16}
!37 = !{ptr @__ksymtab_nf_ct_destroy_timeout, !38, !"__ksymtab_nf_ct_destroy_timeout", i1 false, i1 false}
!38 = !{!"../net/netfilter/nf_conntrack_timeout.c", i32 136, i32 1}
!39 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../net/netfilter/nf_conntrack_timeout.c", i32 148, i32 3}
!41 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @nf_conntrack_timeout_init._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @nf_conntrack_timeout_init._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @nf_ct_timeout_find_get_hook, !45, !"nf_ct_timeout_find_get_hook", i1 false, i1 false}
!45 = !{!"../net/netfilter/nf_conntrack_timeout.c", i32 26, i32 3}
!46 = !{ptr @nf_ct_timeout_put_hook, !47, !"nf_ct_timeout_put_hook", i1 false, i1 false}
!47 = !{!"../net/netfilter/nf_conntrack_timeout.c", i32 29, i32 8}
!48 = distinct !{null, !49, !"__warned", i1 false, i1 false}
!49 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!50 = !{ptr @.str.18, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!52 = distinct !{null, !53, !"__warned", i1 false, i1 false}
!53 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!54 = !{ptr @.str.20, !53, !"<string literal>", i1 false, i1 false}
!55 = distinct !{null, !56, !"__warned", i1 false, i1 false}
!56 = !{!"../net/netfilter/nf_conntrack_timeout.c", i32 53, i32 16}
!57 = !{ptr @timeout_extend, !58, !"timeout_extend", i1 false, i1 false}
!58 = !{!"../net/netfilter/nf_conntrack_timeout.c", i32 138, i32 36}
!59 = !{!"sp"}
!60 = !{i32 1, !"wchar_size", i32 2}
!61 = !{i32 1, !"min_enum_size", i32 4}
!62 = !{i32 8, !"branch-target-enforcement", i32 0}
!63 = !{i32 8, !"sign-return-address", i32 0}
!64 = !{i32 8, !"sign-return-address-all", i32 0}
!65 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!66 = !{i32 7, !"uwtable", i32 1}
!67 = !{i32 7, !"frame-pointer", i32 2}
!68 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!69 = !{i64 2149661305}
!70 = !{i64 2158026643}
!71 = !{i64 2149661571}
