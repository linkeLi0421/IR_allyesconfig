; ModuleID = '/llk/IR_all_yes/net/ipv4/inet_fragment.c_pt.bc'
source_filename = "../net/ipv4/inet_fragment.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+ip_frag_ecn_table\22, \22a\22\09"
module asm "\09.weak\09__crc_ip_frag_ecn_table\09\09\09\09"
module asm "\09.long\09__crc_ip_frag_ecn_table\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ip_frag_ecn_table:\09\09\09\09\09"
module asm "\09.asciz \09\22ip_frag_ecn_table\22\09\09\09\09\09"
module asm "__kstrtabns_ip_frag_ecn_table:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+inet_frags_init\22, \22a\22\09"
module asm "\09.weak\09__crc_inet_frags_init\09\09\09\09"
module asm "\09.long\09__crc_inet_frags_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inet_frags_init:\09\09\09\09\09"
module asm "\09.asciz \09\22inet_frags_init\22\09\09\09\09\09"
module asm "__kstrtabns_inet_frags_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+inet_frags_fini\22, \22a\22\09"
module asm "\09.weak\09__crc_inet_frags_fini\09\09\09\09"
module asm "\09.long\09__crc_inet_frags_fini\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inet_frags_fini:\09\09\09\09\09"
module asm "\09.asciz \09\22inet_frags_fini\22\09\09\09\09\09"
module asm "__kstrtabns_inet_frags_fini:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+fqdir_init\22, \22a\22\09"
module asm "\09.weak\09__crc_fqdir_init\09\09\09\09"
module asm "\09.long\09__crc_fqdir_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fqdir_init:\09\09\09\09\09"
module asm "\09.asciz \09\22fqdir_init\22\09\09\09\09\09"
module asm "__kstrtabns_fqdir_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+fqdir_exit\22, \22a\22\09"
module asm "\09.weak\09__crc_fqdir_exit\09\09\09\09"
module asm "\09.long\09__crc_fqdir_exit\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fqdir_exit:\09\09\09\09\09"
module asm "\09.asciz \09\22fqdir_exit\22\09\09\09\09\09"
module asm "__kstrtabns_fqdir_exit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+inet_frag_kill\22, \22a\22\09"
module asm "\09.weak\09__crc_inet_frag_kill\09\09\09\09"
module asm "\09.long\09__crc_inet_frag_kill\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inet_frag_kill:\09\09\09\09\09"
module asm "\09.asciz \09\22inet_frag_kill\22\09\09\09\09\09"
module asm "__kstrtabns_inet_frag_kill:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+inet_frag_rbtree_purge\22, \22a\22\09"
module asm "\09.weak\09__crc_inet_frag_rbtree_purge\09\09\09\09"
module asm "\09.long\09__crc_inet_frag_rbtree_purge\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inet_frag_rbtree_purge:\09\09\09\09\09"
module asm "\09.asciz \09\22inet_frag_rbtree_purge\22\09\09\09\09\09"
module asm "__kstrtabns_inet_frag_rbtree_purge:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+inet_frag_destroy\22, \22a\22\09"
module asm "\09.weak\09__crc_inet_frag_destroy\09\09\09\09"
module asm "\09.long\09__crc_inet_frag_destroy\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inet_frag_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22inet_frag_destroy\22\09\09\09\09\09"
module asm "__kstrtabns_inet_frag_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+inet_frag_find\22, \22a\22\09"
module asm "\09.weak\09__crc_inet_frag_find\09\09\09\09"
module asm "\09.long\09__crc_inet_frag_find\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inet_frag_find:\09\09\09\09\09"
module asm "\09.asciz \09\22inet_frag_find\22\09\09\09\09\09"
module asm "__kstrtabns_inet_frag_find:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+inet_frag_queue_insert\22, \22a\22\09"
module asm "\09.weak\09__crc_inet_frag_queue_insert\09\09\09\09"
module asm "\09.long\09__crc_inet_frag_queue_insert\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inet_frag_queue_insert:\09\09\09\09\09"
module asm "\09.asciz \09\22inet_frag_queue_insert\22\09\09\09\09\09"
module asm "__kstrtabns_inet_frag_queue_insert:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+inet_frag_reasm_prepare\22, \22a\22\09"
module asm "\09.weak\09__crc_inet_frag_reasm_prepare\09\09\09\09"
module asm "\09.long\09__crc_inet_frag_reasm_prepare\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inet_frag_reasm_prepare:\09\09\09\09\09"
module asm "\09.asciz \09\22inet_frag_reasm_prepare\22\09\09\09\09\09"
module asm "__kstrtabns_inet_frag_reasm_prepare:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+inet_frag_reasm_finish\22, \22a\22\09"
module asm "\09.weak\09__crc_inet_frag_reasm_finish\09\09\09\09"
module asm "\09.long\09__crc_inet_frag_reasm_finish\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inet_frag_reasm_finish:\09\09\09\09\09"
module asm "\09.asciz \09\22inet_frag_reasm_finish\22\09\09\09\09\09"
module asm "__kstrtabns_inet_frag_reasm_finish:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+inet_frag_pull_head\22, \22a\22\09"
module asm "\09.weak\09__crc_inet_frag_pull_head\09\09\09\09"
module asm "\09.long\09__crc_inet_frag_pull_head\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inet_frag_pull_head:\09\09\09\09\09"
module asm "\09.asciz \09\22inet_frag_pull_head\22\09\09\09\09\09"
module asm "__kstrtabns_inet_frag_pull_head:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.inet_frags = type { i32, ptr, ptr, ptr, ptr, ptr, %struct.rhashtable_params, %struct.refcount_struct, %struct.completion }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.3 }
%union.anon.3 = type { i32 }
%struct.fqdir = type { i32, i32, i32, i32, ptr, ptr, i8, [103 x i8], %struct.rhashtable, [28 x i8], %struct.atomic_t, %struct.work_struct, %struct.llist_node, [76 x i8] }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.llist_node = type { ptr }
%struct.inet_frag_queue = type { %struct.rhash_head, %union.anon, %struct.timer_list, %struct.spinlock, %struct.refcount_struct, %struct.rb_root, ptr, ptr, i64, i32, i32, i8, i16, ptr, %struct.callback_head }
%struct.rhash_head = type { ptr }
%union.anon = type { %struct.frag_v6_compare_key }
%struct.frag_v6_compare_key = type { %struct.in6_addr, %struct.in6_addr, i32, i32, i32 }
%struct.in6_addr = type { %union.anon.0 }
%union.anon.0 = type { [4 x i32] }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.rb_root = type { ptr }
%struct.callback_head = type { ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.bucket_table = type { i32, i32, i32, %struct.list_head, %struct.callback_head, ptr, %struct.lockdep_map, [68 x i8], [0 x ptr] }
%struct.sk_buff = type { %union.anon.4, %union.anon.125, %union.anon.126, [48 x i8], %union.anon.127, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.129, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { ptr, ptr, %union.anon.6 }
%union.anon.6 = type { ptr }
%union.anon.125 = type { ptr }
%union.anon.126 = type { i64 }
%union.anon.127 = type { %struct.anon.128 }
%struct.anon.128 = type { i32, ptr }
%union.anon.129 = type { %struct.anon.130 }
%struct.anon.130 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.131, i32, i32, i32, i16, i16, %union.anon.133, i32, %union.anon.134, %union.anon.135, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.131 = type { i32 }
%union.anon.133 = type { i32 }
%union.anon.134 = type { i32 }
%union.anon.135 = type { i16 }
%struct.rhashtable_compare_arg = type { ptr, ptr }
%struct.rb_node = type { i32, ptr, ptr }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }

@ip_frag_ecn_table = dso_local constant { [16 x i8], [16 x i8] } { [16 x i8] c"\00\00\00\FF\00\FF\00\FF\00\FF\03\FF\03\FF\03\FF", [16 x i8] zeroinitializer }, align 32
@__kstrtab_ip_frag_ecn_table = external dso_local constant [0 x i8], align 1
@__kstrtabns_ip_frag_ecn_table = external dso_local constant [0 x i8], align 1
@__ksymtab_ip_frag_ecn_table = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ip_frag_ecn_table to i32), ptr @__kstrtab_ip_frag_ecn_table, ptr @__kstrtabns_ip_frag_ecn_table }, section "___ksymtab+ip_frag_ecn_table", align 4
@__kstrtab_inet_frags_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_inet_frags_init = external dso_local constant [0 x i8], align 1
@__ksymtab_inet_frags_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inet_frags_init to i32), ptr @__kstrtab_inet_frags_init, ptr @__kstrtabns_inet_frags_init }, section "___ksymtab+inet_frags_init", align 4
@__kstrtab_inet_frags_fini = external dso_local constant [0 x i8], align 1
@__kstrtabns_inet_frags_fini = external dso_local constant [0 x i8], align 1
@__ksymtab_inet_frags_fini = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inet_frags_fini to i32), ptr @__kstrtab_inet_frags_fini, ptr @__kstrtabns_inet_frags_fini }, section "___ksymtab+inet_frags_fini", align 4
@__kstrtab_fqdir_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_fqdir_init = external dso_local constant [0 x i8], align 1
@__ksymtab_fqdir_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fqdir_init to i32), ptr @__kstrtab_fqdir_init, ptr @__kstrtabns_fqdir_init }, section "___ksymtab+fqdir_init", align 4
@__initcall__kmod_inet_fragment__539_216_inet_frag_wq_init0 = internal global ptr @inet_frag_wq_init, section ".initcall0.init", align 4
@fqdir_exit.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"(work_completion)(&fqdir->destroy_work)\00", [56 x i8] zeroinitializer }, align 32
@inet_frag_wq = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__kstrtab_fqdir_exit = external dso_local constant [0 x i8], align 1
@__kstrtabns_fqdir_exit = external dso_local constant [0 x i8], align 1
@__ksymtab_fqdir_exit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fqdir_exit to i32), ptr @__kstrtab_fqdir_exit, ptr @__kstrtabns_fqdir_exit }, section "___ksymtab+fqdir_exit", align 4
@__kstrtab_inet_frag_kill = external dso_local constant [0 x i8], align 1
@__kstrtabns_inet_frag_kill = external dso_local constant [0 x i8], align 1
@__ksymtab_inet_frag_kill = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inet_frag_kill to i32), ptr @__kstrtab_inet_frag_kill, ptr @__kstrtabns_inet_frag_kill }, section "___ksymtab+inet_frag_kill", align 4
@__kstrtab_inet_frag_rbtree_purge = external dso_local constant [0 x i8], align 1
@__kstrtabns_inet_frag_rbtree_purge = external dso_local constant [0 x i8], align 1
@__ksymtab_inet_frag_rbtree_purge = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inet_frag_rbtree_purge to i32), ptr @__kstrtab_inet_frag_rbtree_purge, ptr @__kstrtabns_inet_frag_rbtree_purge }, section "___ksymtab+inet_frag_rbtree_purge", align 4
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"net/ipv4/inet_fragment.c\00", [39 x i8] zeroinitializer }, align 32
@__kstrtab_inet_frag_destroy = external dso_local constant [0 x i8], align 1
@__kstrtabns_inet_frag_destroy = external dso_local constant [0 x i8], align 1
@__ksymtab_inet_frag_destroy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inet_frag_destroy to i32), ptr @__kstrtab_inet_frag_destroy, ptr @__kstrtabns_inet_frag_destroy }, section "___ksymtab+inet_frag_destroy", align 4
@__kstrtab_inet_frag_find = external dso_local constant [0 x i8], align 1
@__kstrtabns_inet_frag_find = external dso_local constant [0 x i8], align 1
@__ksymtab_inet_frag_find = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inet_frag_find to i32), ptr @__kstrtab_inet_frag_find, ptr @__kstrtabns_inet_frag_find }, section "___ksymtab+inet_frag_find", align 4
@__kstrtab_inet_frag_queue_insert = external dso_local constant [0 x i8], align 1
@__kstrtabns_inet_frag_queue_insert = external dso_local constant [0 x i8], align 1
@__ksymtab_inet_frag_queue_insert = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inet_frag_queue_insert to i32), ptr @__kstrtab_inet_frag_queue_insert, ptr @__kstrtabns_inet_frag_queue_insert }, section "___ksymtab+inet_frag_queue_insert", align 4
@__kstrtab_inet_frag_reasm_prepare = external dso_local constant [0 x i8], align 1
@__kstrtabns_inet_frag_reasm_prepare = external dso_local constant [0 x i8], align 1
@__ksymtab_inet_frag_reasm_prepare = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inet_frag_reasm_prepare to i32), ptr @__kstrtab_inet_frag_reasm_prepare, ptr @__kstrtabns_inet_frag_reasm_prepare }, section "___ksymtab+inet_frag_reasm_prepare", align 4
@__kstrtab_inet_frag_reasm_finish = external dso_local constant [0 x i8], align 1
@__kstrtabns_inet_frag_reasm_finish = external dso_local constant [0 x i8], align 1
@__ksymtab_inet_frag_reasm_finish = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inet_frag_reasm_finish to i32), ptr @__kstrtab_inet_frag_reasm_finish, ptr @__kstrtabns_inet_frag_reasm_finish }, section "___ksymtab+inet_frag_reasm_finish", align 4
@__kstrtab_inet_frag_pull_head = external dso_local constant [0 x i8], align 1
@__kstrtabns_inet_frag_pull_head = external dso_local constant [0 x i8], align 1
@__ksymtab_inet_frag_pull_head = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inet_frag_pull_head to i32), ptr @__kstrtab_inet_frag_pull_head, ptr @__kstrtabns_inet_frag_pull_head }, section "___ksymtab+inet_frag_pull_head", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"inet_frag_wq\00", [19 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Could not create inet frag workq\00", [63 x i8] zeroinitializer }, align 32
@fqdir_free_list = internal global { %struct.llist_head, [28 x i8] } zeroinitializer, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@fqdir_free_work = internal global { %struct.work_struct, [52 x i8] } { %struct.work_struct { %struct.atomic_t { i32 -48 }, %struct.list_head { ptr getelementptr (i8, ptr @fqdir_free_work, i64 4), ptr getelementptr (i8, ptr @fqdir_free_work, i64 4) }, ptr @fqdir_free_fn, %struct.lockdep_map { ptr @fqdir_free_work, [2 x ptr] zeroinitializer, ptr @.str.6, i8 0, i8 0, i8 0, i32 0, i32 0 } }, [52 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fqdir_free_work\00", [16 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@__rhashtable_remove_fast.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.9 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/linux/rhashtable.h\00", [37 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__rhashtable_remove_fast.__warned.11 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.12 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@__rhashtable_remove_fast_one.__warned.14 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_remove_fast_one.__warned.16 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rht_ptr.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.17 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@__rhashtable_lookup.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_lookup.__warned.18 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rht_ptr_rcu.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@inet_frag_alloc.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"(&q->timer)\00", [20 x i8] zeroinitializer }, align 32
@inet_frag_alloc.__key.20 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&q->lock\00", [23 x i8] zeroinitializer }, align 32
@__rhashtable_insert_fast.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_insert_fast.__warned.23 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@___asan_gen_.25 = private unnamed_addr constant [18 x i8] c"ip_frag_ecn_table\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 85, i32 10 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 220, i32 2 }
@___asan_gen_.34 = private unnamed_addr constant [13 x i8] c"inet_frag_wq\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 206, i32 33 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 291, i32 2 }
@___asan_gen_.44 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 87, i32 2 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 210, i32 17 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 212, i32 9 }
@___asan_gen_.55 = private unnamed_addr constant [16 x i8] c"fqdir_free_list\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 148, i32 8 }
@___asan_gen_.58 = private unnamed_addr constant [16 x i8] c"fqdir_free_work\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 174, i32 8 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 695, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 1076, i32 8 }
@___asan_gen_.77 = private unnamed_addr constant [30 x i8] c"../include/linux/rhashtable.h\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 1019, i32 12 }
@___asan_gen_.80 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 723, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 320, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.91 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.92 = private constant [28 x i8] c"../net/ipv4/inet_fragment.c\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 321, i32 2 }
@llvm.compiler.used = appending global [37 x ptr] [ptr @__initcall__kmod_inet_fragment__539_216_inet_frag_wq_init0, ptr @__ksymtab_fqdir_exit, ptr @__ksymtab_fqdir_init, ptr @__ksymtab_inet_frag_destroy, ptr @__ksymtab_inet_frag_find, ptr @__ksymtab_inet_frag_kill, ptr @__ksymtab_inet_frag_pull_head, ptr @__ksymtab_inet_frag_queue_insert, ptr @__ksymtab_inet_frag_rbtree_purge, ptr @__ksymtab_inet_frag_reasm_finish, ptr @__ksymtab_inet_frag_reasm_prepare, ptr @__ksymtab_inet_frags_fini, ptr @__ksymtab_inet_frags_init, ptr @__ksymtab_ip_frag_ecn_table, ptr @ip_frag_ecn_table, ptr @fqdir_exit.__key, ptr @.str, ptr @inet_frag_wq, ptr @.str.1, ptr @init_completion.__key, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @fqdir_free_list, ptr @fqdir_free_work, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.17, ptr @inet_frag_alloc.__key, ptr @.str.19, ptr @inet_frag_alloc.__key.20, ptr @.str.21], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_frag_ecn_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fqdir_exit.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inet_frag_wq to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fqdir_free_list to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fqdir_free_work to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inet_frag_alloc.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inet_frag_alloc.__key.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @inet_frags_init(ptr noundef %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %frags_cache_name = getelementptr inbounds %struct.inet_frags, ptr %f, i32 0, i32 5
  %0 = ptrtoint ptr %frags_cache_name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %frags_cache_name, align 4
  %2 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %f, align 4
  %call = tail call ptr @kmem_cache_create(ptr noundef %1, i32 noundef %3, i32 noundef 0, i32 noundef 0, ptr noundef null) #10
  %frags_cachep = getelementptr inbounds %struct.inet_frags, ptr %f, i32 0, i32 4
  %4 = ptrtoint ptr %frags_cachep to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call, ptr %frags_cachep, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %refcnt = getelementptr inbounds %struct.inet_frags, ptr %f, i32 0, i32 7
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #10
  %5 = ptrtoint ptr %refcnt to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile i32 1, ptr %refcnt, align 4
  %completion = getelementptr inbounds %struct.inet_frags, ptr %f, i32 0, i32 8
  %6 = ptrtoint ptr %completion to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %completion, align 4
  %wait.i = getelementptr inbounds %struct.inet_frags, ptr %f, i32 0, i32 8, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.2, ptr noundef nonnull @init_completion.__key) #10
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @inet_frags_fini(ptr noundef %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %refcnt = getelementptr inbounds %struct.inet_frags, ptr %f, i32 0, i32 7
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !106
  tail call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #10
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 1, ptr elementtype(i32) %refcnt) #10, !srcloc !107
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.if.end_crit_edge, label %if.then10.i.i.i, !prof !108

if.end5.i.i.i.if.end_crit_edge:                   ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %refcnt, i32 noundef 3) #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !109
  %completion = getelementptr inbounds %struct.inet_frags, ptr %f, i32 0, i32 8
  tail call void @complete(ptr noundef %completion) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %if.then10.i.i.i, %if.end5.i.i.i.if.end_crit_edge
  %completion1 = getelementptr inbounds %struct.inet_frags, ptr %f, i32 0, i32 8
  tail call void @wait_for_completion(ptr noundef %completion1) #10
  %frags_cachep = getelementptr inbounds %struct.inet_frags, ptr %f, i32 0, i32 4
  %1 = ptrtoint ptr %frags_cachep to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %frags_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %2) #10
  %3 = ptrtoint ptr %frags_cachep to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %frags_cachep, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fqdir_init(ptr nocapture noundef writeonly %fqdirp, ptr noundef %f, ptr noundef %net) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 512) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %f1 = getelementptr inbounds %struct.fqdir, ptr %call7.i.i, i32 0, i32 4
  %1 = ptrtoint ptr %f1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %f, ptr %f1, align 16
  %net2 = getelementptr inbounds %struct.fqdir, ptr %call7.i.i, i32 0, i32 5
  %2 = ptrtoint ptr %net2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %net, ptr %net2, align 4
  %rhashtable = getelementptr inbounds %struct.fqdir, ptr %call7.i.i, i32 0, i32 8
  %rhash_params = getelementptr inbounds %struct.inet_frags, ptr %f, i32 0, i32 6
  %call4 = tail call i32 @rhashtable_init(ptr noundef %rhashtable, ptr noundef %rhash_params) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %refcnt = getelementptr inbounds %struct.inet_frags, ptr %f, i32 0, i32 7
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #10
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 1, ptr elementtype(i32) %refcnt) #10, !srcloc !110
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %if.end6.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !111

if.end6.if.end15.sink.split.i.i.i_crit_edge:      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %if.end6
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %4 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %.not.i.i.i = icmp sgt i32 %4, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.refcount_inc.exit_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !108

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.refcount_inc.exit_crit_edge:        ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %refcount_inc.exit

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %if.end6.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %if.end6.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcnt, i32 noundef %.sink.i.i.i) #10
  br label %refcount_inc.exit

refcount_inc.exit:                                ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.refcount_inc.exit_crit_edge
  %5 = ptrtoint ptr %fqdirp to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i.i, ptr %fqdirp, align 4
  br label %cleanup

cleanup:                                          ; preds = %refcount_inc.exit, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.then5 ], [ 0, %refcount_inc.exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rhashtable_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @inet_frag_wq_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.3, i32 noundef 262152, i32 noundef 1, ptr noundef nonnull @.str.4) #10
  store ptr %call, ptr @inet_frag_wq, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.5) #14
  unreachable

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fqdir_exit(ptr noundef %fqdir) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %destroy_work = getelementptr inbounds %struct.fqdir, ptr %fqdir, i32 0, i32 11
  tail call void @__init_work(ptr noundef %destroy_work, i32 noundef 0) #10
  %0 = ptrtoint ptr %destroy_work to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -64, ptr %destroy_work, align 4
  %lockdep_map = getelementptr inbounds %struct.fqdir, ptr %fqdir, i32 0, i32 11, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str, ptr noundef nonnull @fqdir_exit.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry4 = getelementptr inbounds %struct.fqdir, ptr %fqdir, i32 0, i32 11, i32 1
  %1 = ptrtoint ptr %entry4 to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %entry4, ptr %entry4, align 4
  %prev.i = getelementptr inbounds %struct.fqdir, ptr %fqdir, i32 0, i32 11, i32 1, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %entry4, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.fqdir, ptr %fqdir, i32 0, i32 11, i32 2
  %3 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @fqdir_work_fn, ptr %func, align 4
  %4 = load ptr, ptr @inet_frag_wq, align 4
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %4, ptr noundef %destroy_work) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fqdir_work_fn(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %rhashtable = getelementptr i8, ptr %work, i32 -260
  tail call void @rhashtable_free_and_destroy(ptr noundef %rhashtable, ptr noundef nonnull @inet_frags_free_cb, ptr noundef null) #10
  %free_list = getelementptr i8, ptr %work, i32 44
  %call.i = tail call zeroext i1 @llist_add_batch(ptr noundef %free_list, ptr noundef %free_list, ptr noundef nonnull @fqdir_free_list) #10
  br i1 %call.i, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %0 = load ptr, ptr @system_wq, align 4
  %call.i3 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %0, ptr noundef nonnull @fqdir_free_work) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @inet_frag_kill(ptr noundef %fq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %timer = getelementptr inbounds %struct.inet_frag_queue, ptr %fq, i32 0, i32 2
  %call = tail call i32 @del_timer(ptr noundef %timer) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  %refcnt = getelementptr inbounds %struct.inet_frag_queue, ptr %fq, i32 0, i32 4
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !106
  tail call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #10
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 1, ptr elementtype(i32) %refcnt) #10, !srcloc !107
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp slt i32 %asmresult.i.i.i.i.i, 2
  br i1 %cmp.i.i, label %if.then3.i.i, label %if.then.if.end_crit_edge, !prof !111

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then3.i.i:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %refcnt, i32 noundef 4) #10
  br label %if.end

if.end:                                           ; preds = %if.then3.i.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %flags = getelementptr inbounds %struct.inet_frag_queue, ptr %fq, i32 0, i32 11
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %flags, align 8
  %3 = and i8 %2, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not = icmp eq i8 %3, 0
  br i1 %tobool1.not, label %if.then2, label %if.end.if.end17_crit_edge

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.then2:                                         ; preds = %if.end
  %fqdir3 = getelementptr inbounds %struct.inet_frag_queue, ptr %fq, i32 0, i32 13
  %4 = ptrtoint ptr %fqdir3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fqdir3, align 4
  %or = or i8 %2, 4
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %or, ptr %flags, align 8
  %7 = tail call i32 @llvm.read_register.i32(metadata !96) #10
  %and.i.i.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %10, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !112
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i, label %if.then2.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.then2.rcu_read_lock.exit_crit_edge:            ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.then2
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 696, ptr noundef nonnull @.str.8) #10
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.then2.rcu_read_lock.exit_crit_edge
  %dead = getelementptr inbounds %struct.fqdir, ptr %5, i32 0, i32 6
  %11 = ptrtoint ptr %dead to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load volatile i8, ptr %dead, align 8, !range !113
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool7.not = icmp eq i8 %12, 0
  br i1 %tobool7.not, label %if.then9, label %if.else

if.then9:                                         ; preds = %rcu_read_lock.exit
  %rhashtable = getelementptr inbounds %struct.fqdir, ptr %5, i32 0, i32 8
  %f = getelementptr inbounds %struct.fqdir, ptr %5, i32 0, i32 4
  %13 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %f, align 16
  %rhash_params = getelementptr inbounds %struct.inet_frags, ptr %14, i32 0, i32 6
  %15 = ptrtoint ptr %rhash_params to i32
  call void @__asan_load4_noabort(i32 %15)
  %.unpack = load i32, ptr %rhash_params, align 4
  %.elt27 = getelementptr inbounds %struct.inet_frags, ptr %14, i32 0, i32 6, i32 2
  %16 = ptrtoint ptr %.elt27 to i32
  call void @__asan_load4_noabort(i32 %16)
  %.unpack28 = load i32, ptr %.elt27, align 4
  %.elt35 = getelementptr inbounds %struct.inet_frags, ptr %14, i32 0, i32 6, i32 8
  %17 = ptrtoint ptr %.elt35 to i32
  call void @__asan_load4_noabort(i32 %17)
  %.unpack36 = load i32, ptr %.elt35, align 4
  %18 = tail call i32 @llvm.read_register.i32(metadata !96) #10
  %and.i.i.i.i.i.i.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %21, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !112
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i.i.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i.i.i, label %if.then9.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

if.then9.rcu_read_lock.exit.i.i_crit_edge:        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %if.then9
  %call1.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true2.i.i.i

land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i.i

land.lhs.true2.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b4.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i, label %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 696, ptr noundef nonnull @.str.8) #10
  br label %rcu_read_lock.exit.i.i

rcu_read_lock.exit.i.i:                           ; preds = %if.then.i.i.i, %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %if.then9.rcu_read_lock.exit.i.i_crit_edge
  %22 = ptrtoint ptr %rhashtable to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %rhashtable, align 4
  %call.i.i = tail call i32 @lockdep_rht_mutex_is_held(ptr noundef %rhashtable) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.i, label %rcu_read_lock.exit.i.i.do.end10.i.i_crit_edge

rcu_read_lock.exit.i.i.do.end10.i.i_crit_edge:    ; preds = %rcu_read_lock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end10.i.i

lor.lhs.false.i.i:                                ; preds = %rcu_read_lock.exit.i.i
  %call3.i.i = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool4.not.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool4.not.i.i, label %land.lhs.true.i.i, label %lor.lhs.false.i.i.do.end10.i.i_crit_edge

lor.lhs.false.i.i.do.end10.i.i_crit_edge:         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end10.i.i

land.lhs.true.i.i:                                ; preds = %lor.lhs.false.i.i
  %call5.i.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool6.not.i.i = icmp eq i32 %call5.i.i, 0
  br i1 %tobool6.not.i.i, label %land.lhs.true.i.i.do.end10.i.i_crit_edge, label %land.lhs.true7.i.i

land.lhs.true.i.i.do.end10.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end10.i.i

land.lhs.true7.i.i:                               ; preds = %land.lhs.true.i.i
  %.b2.i.i = load i1, ptr @__rhashtable_remove_fast.__warned, align 1
  br i1 %.b2.i.i, label %land.lhs.true7.i.i.do.end10.i.i_crit_edge, label %if.then.i.i

land.lhs.true7.i.i.do.end10.i.i_crit_edge:        ; preds = %land.lhs.true7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end10.i.i

if.then.i.i:                                      ; preds = %land.lhs.true7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @__rhashtable_remove_fast.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 1076, ptr noundef nonnull @.str.10) #10
  br label %do.end10.i.i

do.end10.i.i:                                     ; preds = %if.then.i.i, %land.lhs.true7.i.i.do.end10.i.i_crit_edge, %land.lhs.true.i.i.do.end10.i.i_crit_edge, %lor.lhs.false.i.i.do.end10.i.i_crit_edge, %rcu_read_lock.exit.i.i.do.end10.i.i_crit_edge
  %24 = inttoptr i32 %.unpack36 to ptr
  %head_offset.i.i.i.i.i = getelementptr inbounds %struct.fqdir, ptr %5, i32 0, i32 8, i32 3, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.unpack36)
  %tobool.not.i.i.i.i = icmp eq i32 %.unpack36, 0
  %conv.i.i.i.i = and i32 %.unpack, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i.i.i.i)
  %tobool4.not.i.i.i.i = icmp eq i32 %conv.i.i.i.i, 0
  %key_len6.i.i.i.i = getelementptr inbounds %struct.fqdir, ptr %5, i32 0, i32 8, i32 3, i32 1
  %params.sroa.3.4.extract.shift.i.i.i.i = lshr i32 %.unpack28, 16
  %hashfn.i.i.i.i.i.i = getelementptr inbounds %struct.fqdir, ptr %5, i32 0, i32 8, i32 3, i32 7
  %key_len1.i.i.i.i.i.i = getelementptr inbounds %struct.fqdir, ptr %5, i32 0, i32 8, i32 1
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %do.end33.i.i.while.cond.i.i_crit_edge, %do.end10.i.i
  %tbl.0.i.i = phi ptr [ %23, %do.end10.i.i ], [ %63, %do.end33.i.i.while.cond.i.i_crit_edge ]
  %25 = ptrtoint ptr %head_offset.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %head_offset.i.i.i.i.i, align 2
  %conv.i.i.i.i.i = zext i16 %26 to i32
  %idx.neg.i.i.i.i.i = sub nsw i32 0, %conv.i.i.i.i.i
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %fq, i32 %idx.neg.i.i.i.i.i
  br i1 %tobool.not.i.i.i.i, label %if.then.i.i.i.i.i.i, label %cond.true.i.i.i.i, !prof !111

cond.true.i.i.i.i:                                ; preds = %while.cond.i.i
  br i1 %tobool4.not.i.i.i.i, label %cond.false.i.i.i.i, label %cond.true.i.i.i.i.cond.end.i.i.i.i_crit_edge

cond.true.i.i.i.i.cond.end.i.i.i.i_crit_edge:     ; preds = %cond.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end.i.i.i.i

cond.false.i.i.i.i:                               ; preds = %cond.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %27 = ptrtoint ptr %key_len6.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %key_len6.i.i.i.i, align 2
  %conv7.i.i.i.i = zext i16 %28 to i32
  br label %cond.end.i.i.i.i

cond.end.i.i.i.i:                                 ; preds = %cond.false.i.i.i.i, %cond.true.i.i.i.i.cond.end.i.i.i.i_crit_edge
  %cond.i.i.i.i = phi i32 [ %conv7.i.i.i.i, %cond.false.i.i.i.i ], [ %conv.i.i.i.i, %cond.true.i.i.i.i.cond.end.i.i.i.i_crit_edge ]
  %hash_rnd.i.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i.i, i32 0, i32 2
  %29 = ptrtoint ptr %hash_rnd.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %hash_rnd.i.i.i.i, align 8
  %call8.i.i.i.i = tail call i32 %24(ptr noundef %add.ptr.i.i.i.i.i, i32 noundef %cond.i.i.i.i, i32 noundef %30) #10
  br label %rht_head_hashfn.exit.i.i.i

if.then.i.i.i.i.i.i:                              ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %hash_rnd.i.i.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i.i, i32 0, i32 2
  %31 = ptrtoint ptr %hash_rnd.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %hash_rnd.i.i.i.i.i, align 8
  %add.ptr.i.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i.i, i32 %params.sroa.3.4.extract.shift.i.i.i.i
  %33 = ptrtoint ptr %hashfn.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %hashfn.i.i.i.i.i.i, align 4
  %35 = ptrtoint ptr %key_len1.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %key_len1.i.i.i.i.i.i, align 4
  %call.i.i.i.i.i.i = tail call i32 %34(ptr noundef %add.ptr.i.i.i.i, i32 noundef %36, i32 noundef %32) #10
  br label %rht_head_hashfn.exit.i.i.i

rht_head_hashfn.exit.i.i.i:                       ; preds = %if.then.i.i.i.i.i.i, %cond.end.i.i.i.i
  %hash.2.i.i.sink.i.i.i.i = phi i32 [ %call8.i.i.i.i, %cond.end.i.i.i.i ], [ %call.i.i.i.i.i.i, %if.then.i.i.i.i.i.i ]
  %37 = ptrtoint ptr %tbl.0.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %tbl.0.i.i, align 128
  %sub.i.i.i.i.i.i = add i32 %38, -1
  %and.i3.i.i.i.i.i = and i32 %sub.i.i.i.i.i.i, %hash.2.i.i.sink.i.i.i.i
  %nest.i.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i.i, i32 0, i32 1
  %39 = ptrtoint ptr %nest.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %nest.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool.not.i3.i.i.i = icmp eq i32 %40, 0
  br i1 %tobool.not.i3.i.i.i, label %cond.false.i5.i.i.i, label %cond.true.i4.i.i.i, !prof !108

cond.true.i4.i.i.i:                               ; preds = %rht_head_hashfn.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i.i39 = tail call ptr @__rht_bucket_nested(ptr noundef %tbl.0.i.i, i32 noundef %and.i3.i.i.i.i.i) #10
  br label %rht_bucket_var.exit.i.i.i

cond.false.i5.i.i.i:                              ; preds = %rht_head_hashfn.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i.i.i.i = getelementptr %struct.bucket_table, ptr %tbl.0.i.i, i32 0, i32 8, i32 %and.i3.i.i.i.i.i
  br label %rht_bucket_var.exit.i.i.i

rht_bucket_var.exit.i.i.i:                        ; preds = %cond.false.i5.i.i.i, %cond.true.i4.i.i.i
  %cond.i6.i.i.i = phi ptr [ %call.i.i.i.i39, %cond.true.i4.i.i.i ], [ %arrayidx.i.i.i.i, %cond.false.i5.i.i.i ]
  %tobool.not.i3.i.i = icmp eq ptr %cond.i6.i.i.i, null
  br i1 %tobool.not.i3.i.i, label %rht_bucket_var.exit.i.i.i.land.rhs.i.i_crit_edge, label %if.end.i.i.i

rht_bucket_var.exit.i.i.i.land.rhs.i.i_crit_edge: ; preds = %rht_bucket_var.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs.i.i

if.end.i.i.i:                                     ; preds = %rht_bucket_var.exit.i.i.i
  tail call fastcc void @rht_lock(ptr noundef %tbl.0.i.i, ptr noundef nonnull %cond.i6.i.i.i) #10
  %call.i8.i.i.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %tbl.0.i.i, i32 noundef %and.i3.i.i.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i8.i.i.i)
  %tobool.not.i9.i.i.i = icmp eq i32 %call.i8.i.i.i, 0
  br i1 %tobool.not.i9.i.i.i, label %land.lhs.true.i.i.i.i, label %if.end.i.i.i.rht_ptr.exit.i.i.i_crit_edge

if.end.i.i.i.rht_ptr.exit.i.i.i_crit_edge:        ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rht_ptr.exit.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.end.i.i.i
  %call1.i.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool2.not.i.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool2.not.i.i.i.i, label %land.lhs.true.i.i.i.i.rht_ptr.exit.i.i.i_crit_edge, label %land.lhs.true3.i.i.i.i

land.lhs.true.i.i.i.i.rht_ptr.exit.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rht_ptr.exit.i.i.i

land.lhs.true3.i.i.i.i:                           ; preds = %land.lhs.true.i.i.i.i
  %.b7.i.i.i.i = load i1, ptr @rht_ptr.__warned, align 1
  br i1 %.b7.i.i.i.i, label %land.lhs.true3.i.i.i.i.rht_ptr.exit.i.i.i_crit_edge, label %if.then.i.i.i.i

land.lhs.true3.i.i.i.i.rht_ptr.exit.i.i.i_crit_edge: ; preds = %land.lhs.true3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rht_ptr.exit.i.i.i

if.then.i.i.i.i:                                  ; preds = %land.lhs.true3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rht_ptr.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 377, ptr noundef nonnull @.str.12) #10
  br label %rht_ptr.exit.i.i.i

rht_ptr.exit.i.i.i:                               ; preds = %if.then.i.i.i.i, %land.lhs.true3.i.i.i.i.rht_ptr.exit.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.rht_ptr.exit.i.i.i_crit_edge, %if.end.i.i.i.rht_ptr.exit.i.i.i_crit_edge
  %41 = ptrtoint ptr %cond.i6.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %cond.i6.i.i.i, align 4
  %43 = ptrtoint ptr %42 to i32
  %and.i.i.i.i.i40 = and i32 %43, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i40)
  %tobool.not.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i40, 0
  %44 = ptrtoint ptr %cond.i6.i.i.i to i32
  %or.i.i.i.i.i = or i32 %44, 1
  %cond.i.i.i.i.i = select i1 %tobool.not.i.i.i.i.i, i32 %or.i.i.i.i.i, i32 %and.i.i.i.i.i40
  %and.i20.i.i.i = and i32 %cond.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i20.i.i.i)
  %tobool.i.not21.i.i.i = icmp eq i32 %and.i20.i.i.i, 0
  br i1 %tobool.i.not21.i.i.i, label %for.body.preheader.i.i.i, label %rht_ptr.exit.i.i.i.unlocked.i.i.i_crit_edge

rht_ptr.exit.i.i.i.unlocked.i.i.i_crit_edge:      ; preds = %rht_ptr.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlocked.i.i.i

for.body.preheader.i.i.i:                         ; preds = %rht_ptr.exit.i.i.i
  %45 = inttoptr i32 %cond.i.i.i.i.i to ptr
  %cmp.not.i20.i.i = icmp eq ptr %45, %fq
  br i1 %cmp.not.i20.i.i, label %for.body.preheader.i.i.i.do.body54.i.i.i_crit_edge, label %for.body.preheader.i.i.i.do.body145.i.i.i_crit_edge

for.body.preheader.i.i.i.do.body145.i.i.i_crit_edge: ; preds = %for.body.preheader.i.i.i
  br label %do.body145.i.i.i

for.body.preheader.i.i.i.do.body54.i.i.i_crit_edge: ; preds = %for.body.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body54.i.i.i

for.body.i.i.i:                                   ; preds = %do.end156.i.i.i
  %cmp.not.i.i.i = icmp eq ptr %50, %fq
  br i1 %cmp.not.i.i.i, label %for.body.i.i.i.do.body54.i.i.i_crit_edge, label %for.body.i.i.i.do.body145.i.i.i_crit_edge

for.body.i.i.i.do.body145.i.i.i_crit_edge:        ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body145.i.i.i

for.body.i.i.i.do.body54.i.i.i_crit_edge:         ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body54.i.i.i

do.body54.i.i.i:                                  ; preds = %for.body.i.i.i.do.body54.i.i.i_crit_edge, %for.body.preheader.i.i.i.do.body54.i.i.i_crit_edge
  %pprev.023.i.lcssa.i.i = phi ptr [ %he.022.i21.i.i, %for.body.i.i.i.do.body54.i.i.i_crit_edge ], [ null, %for.body.preheader.i.i.i.do.body54.i.i.i_crit_edge ]
  %call55.i.i.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %tbl.0.i.i, i32 noundef %and.i3.i.i.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55.i.i.i)
  %tobool56.not.i.i.i = icmp eq i32 %call55.i.i.i, 0
  br i1 %tobool56.not.i.i.i, label %land.lhs.true57.i.i.i, label %do.body54.i.i.i.do.end65.i.i.i_crit_edge

do.body54.i.i.i.do.end65.i.i.i_crit_edge:         ; preds = %do.body54.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end65.i.i.i

land.lhs.true57.i.i.i:                            ; preds = %do.body54.i.i.i
  %call58.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58.i.i.i)
  %tobool59.not.i.i.i = icmp eq i32 %call58.i.i.i, 0
  br i1 %tobool59.not.i.i.i, label %land.lhs.true57.i.i.i.do.end65.i.i.i_crit_edge, label %land.lhs.true60.i.i.i

land.lhs.true57.i.i.i.do.end65.i.i.i_crit_edge:   ; preds = %land.lhs.true57.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end65.i.i.i

land.lhs.true60.i.i.i:                            ; preds = %land.lhs.true57.i.i.i
  %.b2.i.i.i = load i1, ptr @__rhashtable_remove_fast_one.__warned.14, align 1
  br i1 %.b2.i.i.i, label %land.lhs.true60.i.i.i.do.end65.i.i.i_crit_edge, label %if.then62.i.i.i

land.lhs.true60.i.i.i.do.end65.i.i.i_crit_edge:   ; preds = %land.lhs.true60.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end65.i.i.i

if.then62.i.i.i:                                  ; preds = %land.lhs.true60.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @__rhashtable_remove_fast_one.__warned.14, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 1032, ptr noundef nonnull @.str.12) #10
  br label %do.end65.i.i.i

do.end65.i.i.i:                                   ; preds = %if.then62.i.i.i, %land.lhs.true60.i.i.i.do.end65.i.i.i_crit_edge, %land.lhs.true57.i.i.i.do.end65.i.i.i_crit_edge, %do.body54.i.i.i.do.end65.i.i.i_crit_edge
  %46 = ptrtoint ptr %fq to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %fq, align 4
  %tobool103.not.i.i.i = icmp eq ptr %pprev.023.i.lcssa.i.i, null
  br i1 %tobool103.not.i.i.i, label %if.else142.i.i.i, label %do.body105.i.i.i

do.body105.i.i.i:                                 ; preds = %do.end65.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !114
  %48 = ptrtoint ptr %pprev.023.i.lcssa.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %47, ptr %pprev.023.i.lcssa.i.i, align 4
  tail call fastcc void @rht_unlock(ptr noundef %tbl.0.i.i, ptr noundef nonnull %cond.i6.i.i.i) #10
  br label %if.then160.i.i.i

if.else142.i.i.i:                                 ; preds = %do.end65.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @rht_assign_unlock(ptr noundef %tbl.0.i.i, ptr noundef nonnull %cond.i6.i.i.i, ptr noundef %47) #10
  br label %if.then160.i.i.i

do.body145.i.i.i:                                 ; preds = %for.body.i.i.i.do.body145.i.i.i_crit_edge, %for.body.preheader.i.i.i.do.body145.i.i.i_crit_edge
  %he.022.i21.i.i = phi ptr [ %50, %for.body.i.i.i.do.body145.i.i.i_crit_edge ], [ %45, %for.body.preheader.i.i.i.do.body145.i.i.i_crit_edge ]
  %call146.i.i.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %tbl.0.i.i, i32 noundef %and.i3.i.i.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call146.i.i.i)
  %tobool147.not.i.i.i = icmp eq i32 %call146.i.i.i, 0
  br i1 %tobool147.not.i.i.i, label %land.lhs.true148.i.i.i, label %do.body145.i.i.i.do.end156.i.i.i_crit_edge

do.body145.i.i.i.do.end156.i.i.i_crit_edge:       ; preds = %do.body145.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end156.i.i.i

land.lhs.true148.i.i.i:                           ; preds = %do.body145.i.i.i
  %call149.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call149.i.i.i)
  %tobool150.not.i.i.i = icmp eq i32 %call149.i.i.i, 0
  br i1 %tobool150.not.i.i.i, label %land.lhs.true148.i.i.i.do.end156.i.i.i_crit_edge, label %land.lhs.true151.i.i.i

land.lhs.true148.i.i.i.do.end156.i.i.i_crit_edge: ; preds = %land.lhs.true148.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end156.i.i.i

land.lhs.true151.i.i.i:                           ; preds = %land.lhs.true148.i.i.i
  %.b2281.i.i.i = load i1, ptr @__rhashtable_remove_fast_one.__warned.16, align 1
  br i1 %.b2281.i.i.i, label %land.lhs.true151.i.i.i.do.end156.i.i.i_crit_edge, label %if.then153.i.i.i

land.lhs.true151.i.i.i.do.end156.i.i.i_crit_edge: ; preds = %land.lhs.true151.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end156.i.i.i

if.then153.i.i.i:                                 ; preds = %land.lhs.true151.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @__rhashtable_remove_fast_one.__warned.16, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 1004, ptr noundef nonnull @.str.12) #10
  br label %do.end156.i.i.i

do.end156.i.i.i:                                  ; preds = %if.then153.i.i.i, %land.lhs.true151.i.i.i.do.end156.i.i.i_crit_edge, %land.lhs.true148.i.i.i.do.end156.i.i.i_crit_edge, %do.body145.i.i.i.do.end156.i.i.i_crit_edge
  %49 = ptrtoint ptr %he.022.i21.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %he.022.i21.i.i, align 4
  %51 = ptrtoint ptr %50 to i32
  %and.i.i.i.i = and i32 %51, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.i.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %for.body.i.i.i, label %do.end156.i.i.i.unlocked.i.i.i_crit_edge

do.end156.i.i.i.unlocked.i.i.i_crit_edge:         ; preds = %do.end156.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlocked.i.i.i

unlocked.i.i.i:                                   ; preds = %do.end156.i.i.i.unlocked.i.i.i_crit_edge, %rht_ptr.exit.i.i.i.unlocked.i.i.i_crit_edge
  tail call fastcc void @rht_unlock(ptr noundef %tbl.0.i.i, ptr noundef nonnull %cond.i6.i.i.i) #10
  br label %land.rhs.i.i

if.then160.i.i.i:                                 ; preds = %if.else142.i.i.i, %do.body105.i.i.i
  %nelems.i.i.i = getelementptr inbounds %struct.fqdir, ptr %5, i32 0, i32 8, i32 8
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %nelems.i.i.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %nelems.i.i.i, i32 1, i32 3, i32 1) #10
  %52 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nelems.i.i.i, ptr %nelems.i.i.i, i32 1, ptr elementtype(i32) %nelems.i.i.i) #10, !srcloc !115
  %automatic_shrinking.i.i.i = getelementptr inbounds %struct.fqdir, ptr %5, i32 0, i32 8, i32 3, i32 6
  %53 = ptrtoint ptr %automatic_shrinking.i.i.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %automatic_shrinking.i.i.i, align 2, !range !113
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool161.not.i.i.i = icmp eq i8 %54, 0
  br i1 %tobool161.not.i.i.i, label %if.then160.i.i.i.while.end.i.i_crit_edge, label %land.rhs162.i.i.i

if.then160.i.i.i.while.end.i.i_crit_edge:         ; preds = %if.then160.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i.i

land.rhs162.i.i.i:                                ; preds = %if.then160.i.i.i
  %call.i.i.i10.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %nelems.i.i.i, i32 noundef 4) #10
  %55 = ptrtoint ptr %nelems.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %nelems.i.i.i, align 4
  %57 = ptrtoint ptr %tbl.0.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %tbl.0.i.i, align 128
  %mul.i.i.i.i = mul i32 %58, 3
  %div.i.i.i.i = udiv i32 %mul.i.i.i.i, 10
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %div.i.i.i.i)
  %cmp.i.i.i.i = icmp ult i32 %56, %div.i.i.i.i
  br i1 %cmp.i.i.i.i, label %rht_shrink_below_30.exit.i.i.i, label %land.rhs162.i.i.i.while.end.i.i_crit_edge

land.rhs162.i.i.i.while.end.i.i_crit_edge:        ; preds = %land.rhs162.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i.i

rht_shrink_below_30.exit.i.i.i:                   ; preds = %land.rhs162.i.i.i
  %min_size.i.i.i.i = getelementptr inbounds %struct.fqdir, ptr %5, i32 0, i32 8, i32 3, i32 5
  %59 = ptrtoint ptr %min_size.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %min_size.i.i.i.i, align 4
  %conv.i11.i.i.i = zext i16 %60 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %58, i32 %conv.i11.i.i.i)
  %cmp2.i.i.i.i = icmp ugt i32 %58, %conv.i11.i.i.i
  br i1 %cmp2.i.i.i.i, label %if.then168.i.i.i, label %rht_shrink_below_30.exit.i.i.i.while.end.i.i_crit_edge, !prof !111

rht_shrink_below_30.exit.i.i.i.while.end.i.i_crit_edge: ; preds = %rht_shrink_below_30.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i.i

if.then168.i.i.i:                                 ; preds = %rht_shrink_below_30.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %run_work.i.i.i = getelementptr inbounds %struct.fqdir, ptr %5, i32 0, i32 8, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %61 = load ptr, ptr @system_wq, align 4
  %call.i.i12.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %61, ptr noundef %run_work.i.i.i) #10
  br label %while.end.i.i

land.rhs.i.i:                                     ; preds = %unlocked.i.i.i, %rht_bucket_var.exit.i.i.i.land.rhs.i.i_crit_edge
  %future_tbl.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i.i, i32 0, i32 5
  %62 = ptrtoint ptr %future_tbl.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile ptr, ptr %future_tbl.i.i, align 4
  %call20.i.i = tail call i32 @lockdep_rht_mutex_is_held(ptr noundef %rhashtable) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i.i)
  %tobool21.not.i.i = icmp eq i32 %call20.i.i, 0
  br i1 %tobool21.not.i.i, label %lor.lhs.false22.i.i, label %land.rhs.i.i.do.end33.i.i_crit_edge

land.rhs.i.i.do.end33.i.i_crit_edge:              ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end33.i.i

lor.lhs.false22.i.i:                              ; preds = %land.rhs.i.i
  %call23.i.i = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i.i)
  %tobool24.not.i.i = icmp eq i32 %call23.i.i, 0
  br i1 %tobool24.not.i.i, label %land.lhs.true25.i.i, label %lor.lhs.false22.i.i.do.end33.i.i_crit_edge

lor.lhs.false22.i.i.do.end33.i.i_crit_edge:       ; preds = %lor.lhs.false22.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end33.i.i

land.lhs.true25.i.i:                              ; preds = %lor.lhs.false22.i.i
  %call26.i.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i.i)
  %tobool27.not.i.i = icmp eq i32 %call26.i.i, 0
  br i1 %tobool27.not.i.i, label %land.lhs.true25.i.i.do.end33.i.i_crit_edge, label %land.lhs.true28.i.i

land.lhs.true25.i.i.do.end33.i.i_crit_edge:       ; preds = %land.lhs.true25.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end33.i.i

land.lhs.true28.i.i:                              ; preds = %land.lhs.true25.i.i
  %.b401.i.i = load i1, ptr @__rhashtable_remove_fast.__warned.11, align 1
  br i1 %.b401.i.i, label %land.lhs.true28.i.i.do.end33.i.i_crit_edge, label %if.then30.i.i

land.lhs.true28.i.i.do.end33.i.i_crit_edge:       ; preds = %land.lhs.true28.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end33.i.i

if.then30.i.i:                                    ; preds = %land.lhs.true28.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @__rhashtable_remove_fast.__warned.11, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 1085, ptr noundef nonnull @.str.10) #10
  br label %do.end33.i.i

do.end33.i.i:                                     ; preds = %if.then30.i.i, %land.lhs.true28.i.i.do.end33.i.i_crit_edge, %land.lhs.true25.i.i.do.end33.i.i_crit_edge, %lor.lhs.false22.i.i.do.end33.i.i_crit_edge, %land.rhs.i.i.do.end33.i.i_crit_edge
  %tobool35.not.i.i = icmp eq ptr %63, null
  br i1 %tobool35.not.i.i, label %do.end33.i.i.while.end.i.i_crit_edge, label %do.end33.i.i.while.cond.i.i_crit_edge

do.end33.i.i.while.cond.i.i_crit_edge:            ; preds = %do.end33.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.i.i

do.end33.i.i.while.end.i.i_crit_edge:             ; preds = %do.end33.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i.i

while.end.i.i:                                    ; preds = %do.end33.i.i.while.end.i.i_crit_edge, %if.then168.i.i.i, %rht_shrink_below_30.exit.i.i.i.while.end.i.i_crit_edge, %land.rhs162.i.i.i.while.end.i.i_crit_edge, %if.then160.i.i.i.while.end.i.i_crit_edge
  %call.i4.i.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i4.i.i, label %while.end.i.i.rhashtable_remove_fast.exit_crit_edge, label %land.lhs.true.i7.i.i

while.end.i.i.rhashtable_remove_fast.exit_crit_edge: ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rhashtable_remove_fast.exit

land.lhs.true.i7.i.i:                             ; preds = %while.end.i.i
  %call1.i5.i.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i5.i.i)
  %tobool.not.i6.i.i = icmp eq i32 %call1.i5.i.i, 0
  br i1 %tobool.not.i6.i.i, label %land.lhs.true.i7.i.i.rhashtable_remove_fast.exit_crit_edge, label %land.lhs.true2.i9.i.i

land.lhs.true.i7.i.i.rhashtable_remove_fast.exit_crit_edge: ; preds = %land.lhs.true.i7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rhashtable_remove_fast.exit

land.lhs.true2.i9.i.i:                            ; preds = %land.lhs.true.i7.i.i
  %.b4.i8.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i8.i.i, label %land.lhs.true2.i9.i.i.rhashtable_remove_fast.exit_crit_edge, label %if.then.i10.i.i

land.lhs.true2.i9.i.i.rhashtable_remove_fast.exit_crit_edge: ; preds = %land.lhs.true2.i9.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rhashtable_remove_fast.exit

if.then.i10.i.i:                                  ; preds = %land.lhs.true2.i9.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 724, ptr noundef nonnull @.str.17) #10
  br label %rhashtable_remove_fast.exit

rhashtable_remove_fast.exit:                      ; preds = %if.then.i10.i.i, %land.lhs.true2.i9.i.i.rhashtable_remove_fast.exit_crit_edge, %land.lhs.true.i7.i.i.rhashtable_remove_fast.exit_crit_edge, %while.end.i.i.rhashtable_remove_fast.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !116
  %64 = tail call i32 @llvm.read_register.i32(metadata !96) #10
  %and.i.i.i.i.i11.i.i = and i32 %64, -16384
  %65 = inttoptr i32 %and.i.i.i.i.i11.i.i to ptr
  %preempt_count.i.i.i.i12.i.i = getelementptr inbounds %struct.thread_info, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %preempt_count.i.i.i.i12.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile i32, ptr %preempt_count.i.i.i.i12.i.i, align 4
  %sub.i.i.i.i.i = add i32 %67, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i.i.i12.i.i, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  %refcnt11 = getelementptr inbounds %struct.inet_frag_queue, ptr %fq, i32 0, i32 4
  %call.i.i.i.i41 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt11, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !106
  tail call void @llvm.prefetch.p0(ptr %refcnt11, i32 1, i32 3, i32 1) #10
  %68 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt11, ptr %refcnt11, i32 1, ptr elementtype(i32) %refcnt11) #10, !srcloc !107
  %asmresult.i.i.i.i.i42 = extractvalue { i32, i32, i32 } %68, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %asmresult.i.i.i.i.i42)
  %cmp.i.i43 = icmp slt i32 %asmresult.i.i.i.i.i42, 2
  br i1 %cmp.i.i43, label %if.then3.i.i44, label %rhashtable_remove_fast.exit.if.end16_crit_edge, !prof !111

rhashtable_remove_fast.exit.if.end16_crit_edge:   ; preds = %rhashtable_remove_fast.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

if.then3.i.i44:                                   ; preds = %rhashtable_remove_fast.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %refcnt11, i32 noundef 4) #10
  br label %if.end16

if.else:                                          ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  %69 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %flags, align 8
  %71 = or i8 %70, 8
  store i8 %71, ptr %flags, align 8
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.then3.i.i44, %rhashtable_remove_fast.exit.if.end16_crit_edge
  %call.i46 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i46, label %if.end16.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i49

if.end16.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i49:                                ; preds = %if.end16
  %call1.i47 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i47)
  %tobool.not.i48 = icmp eq i32 %call1.i47, 0
  br i1 %tobool.not.i48, label %land.lhs.true.i49.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i51

land.lhs.true.i49.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i49
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i51:                               ; preds = %land.lhs.true.i49
  %.b4.i50 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i50, label %land.lhs.true2.i51.rcu_read_unlock.exit_crit_edge, label %if.then.i52

land.lhs.true2.i51.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i51
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i52:                                      ; preds = %land.lhs.true2.i51
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 724, ptr noundef nonnull @.str.17) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i52, %land.lhs.true2.i51.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i49.rcu_read_unlock.exit_crit_edge, %if.end16.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !116
  %72 = tail call i32 @llvm.read_register.i32(metadata !96) #10
  %and.i.i.i.i.i53 = and i32 %72, -16384
  %73 = inttoptr i32 %and.i.i.i.i.i53 to ptr
  %preempt_count.i.i.i.i54 = getelementptr inbounds %struct.thread_info, ptr %73, i32 0, i32 1
  %74 = ptrtoint ptr %preempt_count.i.i.i.i54 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load volatile i32, ptr %preempt_count.i.i.i.i54, align 4
  %sub.i.i.i = add i32 %75, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i54, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  br label %if.end17

if.end17:                                         ; preds = %rcu_read_unlock.exit, %if.end.if.end17_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @inet_frag_rbtree_purge(ptr noundef %root) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rb_first(ptr noundef %root) #10
  %tobool.not17 = icmp eq ptr %call, null
  br i1 %tobool.not17, label %entry.while.end5_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end5_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end5

while.cond2.while.cond.loopexit_crit_edge:        ; preds = %while.body4
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %while.cond2.while.cond.loopexit_crit_edge.while.end5_crit_edge, label %while.cond2.while.cond.loopexit_crit_edge.while.body_crit_edge

while.cond2.while.cond.loopexit_crit_edge.while.body_crit_edge: ; preds = %while.cond2.while.cond.loopexit_crit_edge
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.cond2.while.cond.loopexit_crit_edge.while.end5_crit_edge: ; preds = %while.cond2.while.cond.loopexit_crit_edge
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end5

while.body:                                       ; preds = %while.cond2.while.cond.loopexit_crit_edge.while.body_crit_edge, %entry.while.body_crit_edge
  %p.019 = phi ptr [ %call1, %while.cond2.while.cond.loopexit_crit_edge.while.body_crit_edge ], [ %call, %entry.while.body_crit_edge ]
  %sum.018 = phi i32 [ %add, %while.cond2.while.cond.loopexit_crit_edge.while.body_crit_edge ], [ 0, %entry.while.body_crit_edge ]
  %call1 = tail call ptr @rb_next(ptr noundef nonnull %p.019) #10
  tail call void @rb_erase(ptr noundef nonnull %p.019, ptr noundef %root) #10
  br label %while.body4

while.body4:                                      ; preds = %while.body4.while.body4_crit_edge, %while.body
  %sum.116 = phi i32 [ %sum.018, %while.body ], [ %add, %while.body4.while.body4_crit_edge ]
  %skb.015 = phi ptr [ %p.019, %while.body ], [ %1, %while.body4.while.body4_crit_edge ]
  %next_frag = getelementptr inbounds %struct.sk_buff, ptr %skb.015, i32 0, i32 3, i32 24
  %0 = ptrtoint ptr %next_frag to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %next_frag, align 8
  %truesize = getelementptr inbounds %struct.sk_buff, ptr %skb.015, i32 0, i32 20
  %2 = ptrtoint ptr %truesize to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %truesize, align 8
  %add = add i32 %3, %sum.116
  tail call void @kfree_skb_reason(ptr noundef nonnull %skb.015, i32 noundef 0) #10
  %tobool3.not = icmp eq ptr %1, null
  br i1 %tobool3.not, label %while.cond2.while.cond.loopexit_crit_edge, label %while.body4.while.body4_crit_edge

while.body4.while.body4_crit_edge:                ; preds = %while.body4
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body4

while.end5:                                       ; preds = %while.cond2.while.cond.loopexit_crit_edge.while.end5_crit_edge, %entry.while.end5_crit_edge
  %sum.0.lcssa = phi i32 [ 0, %entry.while.end5_crit_edge ], [ %add, %while.cond2.while.cond.loopexit_crit_edge.while.end5_crit_edge ]
  ret i32 %sum.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_first(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_erase(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @inet_frag_destroy(ptr noundef %q) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.inet_frag_queue, ptr %q, i32 0, i32 11
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %flags, align 8
  %2 = and i8 %1, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge, !prof !111

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 291, i32 noundef 9, ptr noundef null) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %timer = getelementptr inbounds %struct.inet_frag_queue, ptr %q, i32 0, i32 2
  %call = tail call i32 @del_timer(ptr noundef %timer) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end.if.end44_crit_edge, label %do.end38, !prof !108

if.end.if.end44_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end44

do.end38:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 292, i32 noundef 9, ptr noundef null) #10
  br label %if.end44

if.end44:                                         ; preds = %do.end38, %if.end.if.end44_crit_edge
  %fqdir52 = getelementptr inbounds %struct.inet_frag_queue, ptr %q, i32 0, i32 13
  %3 = ptrtoint ptr %fqdir52 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fqdir52, align 4
  %f53 = getelementptr inbounds %struct.fqdir, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %f53 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %f53, align 16
  %rb_fragments = getelementptr inbounds %struct.inet_frag_queue, ptr %q, i32 0, i32 5
  %call.i = tail call ptr @rb_first(ptr noundef %rb_fragments) #10
  %tobool.not17.i = icmp eq ptr %call.i, null
  br i1 %tobool.not17.i, label %if.end44.inet_frag_rbtree_purge.exit_crit_edge, label %if.end44.while.body.i_crit_edge

if.end44.while.body.i_crit_edge:                  ; preds = %if.end44
  br label %while.body.i

if.end44.inet_frag_rbtree_purge.exit_crit_edge:   ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #12
  br label %inet_frag_rbtree_purge.exit

while.cond2.while.cond.loopexit_crit_edge.i:      ; preds = %while.body4.i
  %tobool.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i, label %while.cond2.while.cond.loopexit_crit_edge.i.inet_frag_rbtree_purge.exit_crit_edge, label %while.cond2.while.cond.loopexit_crit_edge.i.while.body.i_crit_edge

while.cond2.while.cond.loopexit_crit_edge.i.while.body.i_crit_edge: ; preds = %while.cond2.while.cond.loopexit_crit_edge.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

while.cond2.while.cond.loopexit_crit_edge.i.inet_frag_rbtree_purge.exit_crit_edge: ; preds = %while.cond2.while.cond.loopexit_crit_edge.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %inet_frag_rbtree_purge.exit

while.body.i:                                     ; preds = %while.cond2.while.cond.loopexit_crit_edge.i.while.body.i_crit_edge, %if.end44.while.body.i_crit_edge
  %p.019.i = phi ptr [ %call1.i, %while.cond2.while.cond.loopexit_crit_edge.i.while.body.i_crit_edge ], [ %call.i, %if.end44.while.body.i_crit_edge ]
  %sum.018.i = phi i32 [ %add.i, %while.cond2.while.cond.loopexit_crit_edge.i.while.body.i_crit_edge ], [ 0, %if.end44.while.body.i_crit_edge ]
  %call1.i = tail call ptr @rb_next(ptr noundef nonnull %p.019.i) #10
  tail call void @rb_erase(ptr noundef nonnull %p.019.i, ptr noundef %rb_fragments) #10
  br label %while.body4.i

while.body4.i:                                    ; preds = %while.body4.i.while.body4.i_crit_edge, %while.body.i
  %sum.116.i = phi i32 [ %sum.018.i, %while.body.i ], [ %add.i, %while.body4.i.while.body4.i_crit_edge ]
  %skb.015.i = phi ptr [ %p.019.i, %while.body.i ], [ %8, %while.body4.i.while.body4.i_crit_edge ]
  %next_frag.i = getelementptr inbounds %struct.sk_buff, ptr %skb.015.i, i32 0, i32 3, i32 24
  %7 = ptrtoint ptr %next_frag.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %next_frag.i, align 8
  %truesize.i = getelementptr inbounds %struct.sk_buff, ptr %skb.015.i, i32 0, i32 20
  %9 = ptrtoint ptr %truesize.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %truesize.i, align 8
  %add.i = add i32 %10, %sum.116.i
  tail call void @kfree_skb_reason(ptr noundef nonnull %skb.015.i, i32 noundef 0) #10
  %tobool3.not.i = icmp eq ptr %8, null
  br i1 %tobool3.not.i, label %while.cond2.while.cond.loopexit_crit_edge.i, label %while.body4.i.while.body4.i_crit_edge

while.body4.i.while.body4.i_crit_edge:            ; preds = %while.body4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body4.i

inet_frag_rbtree_purge.exit:                      ; preds = %while.cond2.while.cond.loopexit_crit_edge.i.inet_frag_rbtree_purge.exit_crit_edge, %if.end44.inet_frag_rbtree_purge.exit_crit_edge
  %sum.0.lcssa.i = phi i32 [ 0, %if.end44.inet_frag_rbtree_purge.exit_crit_edge ], [ %add.i, %while.cond2.while.cond.loopexit_crit_edge.i.inet_frag_rbtree_purge.exit_crit_edge ]
  %11 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %6, align 4
  %add = add i32 %12, %sum.0.lcssa.i
  %rcu = getelementptr inbounds %struct.inet_frag_queue, ptr %q, i32 0, i32 14
  tail call void @call_rcu(ptr noundef %rcu, ptr noundef nonnull @inet_frag_destroy_rcu) #10
  %mem.i = getelementptr inbounds %struct.fqdir, ptr %4, i32 0, i32 10
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %mem.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %mem.i, i32 1, i32 3, i32 1) #10
  %13 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %mem.i, ptr %mem.i, i32 %add, ptr elementtype(i32) %mem.i) #10, !srcloc !115
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @inet_frag_destroy_rcu(ptr noundef %head) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %head, i32 -184
  %fqdir = getelementptr i8, ptr %head, i32 -4
  %0 = ptrtoint ptr %fqdir to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fqdir, align 4
  %f1 = getelementptr inbounds %struct.fqdir, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %f1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f1, align 16
  %destructor = getelementptr inbounds %struct.inet_frags, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %destructor to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %destructor, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %5(ptr noundef %add.ptr) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %frags_cachep = getelementptr inbounds %struct.inet_frags, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %frags_cachep to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %frags_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %7, ptr noundef %add.ptr) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @inet_frag_find(ptr noundef %fqdir, ptr noundef %key) #0 align 64 {
entry:
  %old.i.i.i = alloca i32, align 4
  %arg.i.i.i = alloca %struct.rhashtable_compare_arg, align 4
  %arg.i.i = alloca %struct.rhashtable_compare_arg, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fqdir to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %fqdir, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %mem.i = getelementptr inbounds %struct.fqdir, ptr %fqdir, i32 0, i32 10
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %mem.i, i32 noundef 4) #10
  %2 = ptrtoint ptr %mem.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %mem.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %1)
  %cmp = icmp sgt i32 %3, %1
  br i1 %cmp, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %4 = tail call i32 @llvm.read_register.i32(metadata !96) #10
  %and.i.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %7, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !112
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 696, ptr noundef nonnull @.str.8) #10
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %rhashtable = getelementptr inbounds %struct.fqdir, ptr %fqdir, i32 0, i32 8
  %f = getelementptr inbounds %struct.fqdir, ptr %fqdir, i32 0, i32 4
  %8 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %f, align 16
  %.elt32 = getelementptr inbounds %struct.inet_frags, ptr %9, i32 0, i32 6, i32 9
  %10 = ptrtoint ptr %.elt32 to i32
  call void @__asan_load4_noabort(i32 %10)
  %.unpack33 = load i32, ptr %.elt32, align 4
  %11 = inttoptr i32 %.unpack33 to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %arg.i.i) #10
  %12 = getelementptr inbounds %struct.rhashtable_compare_arg, ptr %arg.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %arg.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %rhashtable, ptr %arg.i.i, align 4
  %14 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %key, ptr %12, align 4
  %15 = ptrtoint ptr %rhashtable to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %rhashtable, align 4
  %call.i.i = tail call i32 @lockdep_rht_mutex_is_held(ptr noundef %rhashtable) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.i, label %rcu_read_lock.exit.do.end12.i.i_crit_edge

rcu_read_lock.exit.do.end12.i.i_crit_edge:        ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end12.i.i

lor.lhs.false.i.i:                                ; preds = %rcu_read_lock.exit
  %call5.i.i = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool6.not.i.i = icmp eq i32 %call5.i.i, 0
  br i1 %tobool6.not.i.i, label %land.lhs.true.i.i, label %lor.lhs.false.i.i.do.end12.i.i_crit_edge

lor.lhs.false.i.i.do.end12.i.i_crit_edge:         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end12.i.i

land.lhs.true.i.i:                                ; preds = %lor.lhs.false.i.i
  %call7.i.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i)
  %tobool8.not.i.i = icmp eq i32 %call7.i.i, 0
  br i1 %tobool8.not.i.i, label %land.lhs.true.i.i.do.end12.i.i_crit_edge, label %land.lhs.true9.i.i

land.lhs.true.i.i.do.end12.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end12.i.i

land.lhs.true9.i.i:                               ; preds = %land.lhs.true.i.i
  %.b92.i.i = load i1, ptr @__rhashtable_lookup.__warned, align 1
  br i1 %.b92.i.i, label %land.lhs.true9.i.i.do.end12.i.i_crit_edge, label %if.then.i.i

land.lhs.true9.i.i.do.end12.i.i_crit_edge:        ; preds = %land.lhs.true9.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end12.i.i

if.then.i.i:                                      ; preds = %land.lhs.true9.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @__rhashtable_lookup.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 594, ptr noundef nonnull @.str.10) #10
  br label %do.end12.i.i

do.end12.i.i:                                     ; preds = %if.then.i.i, %land.lhs.true9.i.i.do.end12.i.i_crit_edge, %land.lhs.true.i.i.do.end12.i.i_crit_edge, %lor.lhs.false.i.i.do.end12.i.i_crit_edge, %rcu_read_lock.exit.do.end12.i.i_crit_edge
  %hashfn.i.i.i.i = getelementptr inbounds %struct.fqdir, ptr %fqdir, i32 0, i32 8, i32 3, i32 7
  %key_len1.i.i.i.i = getelementptr inbounds %struct.fqdir, ptr %fqdir, i32 0, i32 8, i32 1
  %key_len21.i.i.i.i = getelementptr inbounds %struct.fqdir, ptr %fqdir, i32 0, i32 8, i32 3, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.unpack33)
  %tobool19.not.i.i = icmp eq i32 %.unpack33, 0
  %head_offset.i.i.i = getelementptr inbounds %struct.fqdir, ptr %fqdir, i32 0, i32 8, i32 3, i32 3
  br label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %do.end60.i.i.if.then.i.i.i.i_crit_edge, %do.end12.i.i
  %tbl.0.i.i = phi ptr [ %16, %do.end12.i.i ], [ %47, %do.end60.i.i.if.then.i.i.i.i_crit_edge ]
  %hash_rnd.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i.i, i32 0, i32 2
  %17 = ptrtoint ptr %hash_rnd.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %hash_rnd.i.i.i, align 8
  %19 = ptrtoint ptr %hashfn.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hashfn.i.i.i.i, align 4
  %21 = ptrtoint ptr %key_len1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %key_len1.i.i.i.i, align 4
  %call.i.i.i.i = call i32 %20(ptr noundef %key, i32 noundef %22, i32 noundef %18) #10
  %23 = ptrtoint ptr %tbl.0.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %tbl.0.i.i, align 128
  %sub.i.i.i.i = add i32 %24, -1
  %and.i3.i.i.i = and i32 %sub.i.i.i.i, %call.i.i.i.i
  %nest.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i.i, i32 0, i32 1
  %25 = ptrtoint ptr %nest.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %nest.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.i.i.i = icmp eq i32 %26, 0
  br i1 %tobool.not.i.i.i, label %cond.false.i.i.i, label %cond.true.i.i.i, !prof !108

cond.true.i.i.i:                                  ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i34 = call ptr @rht_bucket_nested(ptr noundef %tbl.0.i.i, i32 noundef %and.i3.i.i.i) #10
  br label %rht_bucket.exit.i.i

cond.false.i.i.i:                                 ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i.i.i = getelementptr %struct.bucket_table, ptr %tbl.0.i.i, i32 0, i32 8, i32 %and.i3.i.i.i
  br label %rht_bucket.exit.i.i

rht_bucket.exit.i.i:                              ; preds = %cond.false.i.i.i, %cond.true.i.i.i
  %cond.i.i.i = phi ptr [ %call.i.i.i34, %cond.true.i.i.i ], [ %arrayidx.i.i.i, %cond.false.i.i.i ]
  %27 = ptrtoint ptr %cond.i.i.i to i32
  %or.i.i.i.i = or i32 %27, 1
  %28 = inttoptr i32 %or.i.i.i.i to ptr
  br label %do.body16.i.i

do.body16.i.i:                                    ; preds = %do.cond34.i.i.do.body16.i.i_crit_edge, %rht_bucket.exit.i.i
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !117
  %29 = ptrtoint ptr %cond.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile ptr, ptr %cond.i.i.i, align 4
  %call.i93.i.i = call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i93.i.i)
  %tobool.not.i94.i.i = icmp eq i32 %call.i93.i.i, 0
  br i1 %tobool.not.i94.i.i, label %land.lhs.true.i.i.i, label %do.body16.i.i.rht_ptr_rcu.exit.i.i_crit_edge

do.body16.i.i.rht_ptr_rcu.exit.i.i_crit_edge:     ; preds = %do.body16.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rht_ptr_rcu.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %do.body16.i.i
  %call2.i.i.i = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %call2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %land.lhs.true.i.i.i.rht_ptr_rcu.exit.i.i_crit_edge, label %land.lhs.true4.i.i.i

land.lhs.true.i.i.i.rht_ptr_rcu.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rht_ptr_rcu.exit.i.i

land.lhs.true4.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b11.i.i.i = load i1, ptr @rht_ptr_rcu.__warned, align 1
  br i1 %.b11.i.i.i, label %land.lhs.true4.i.i.i.rht_ptr_rcu.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true4.i.i.i.rht_ptr_rcu.exit.i.i_crit_edge: ; preds = %land.lhs.true4.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rht_ptr_rcu.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true4.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rht_ptr_rcu.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 369, ptr noundef nonnull @.str.10) #10
  br label %rht_ptr_rcu.exit.i.i

rht_ptr_rcu.exit.i.i:                             ; preds = %if.then.i.i.i, %land.lhs.true4.i.i.i.rht_ptr_rcu.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rht_ptr_rcu.exit.i.i_crit_edge, %do.body16.i.i.rht_ptr_rcu.exit.i.i_crit_edge
  %31 = ptrtoint ptr %30 to i32
  %and.i.i95.i.i = and i32 %31, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i95.i.i)
  %tobool.not.i.i96.i.i = icmp eq i32 %and.i.i95.i.i, 0
  %cond.i.i.i.i = select i1 %tobool.not.i.i96.i.i, i32 %or.i.i.i.i, i32 %and.i.i95.i.i
  %32 = inttoptr i32 %cond.i.i.i.i to ptr
  %and.i106.i.i = and i32 %cond.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i106.i.i)
  %tobool.i.not107.i.i = icmp eq i32 %and.i106.i.i, 0
  br i1 %tobool.i.not107.i.i, label %rht_ptr_rcu.exit.i.i.for.body.i.i_crit_edge, label %rht_ptr_rcu.exit.i.i.do.cond34.i.i_crit_edge

rht_ptr_rcu.exit.i.i.do.cond34.i.i_crit_edge:     ; preds = %rht_ptr_rcu.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.cond34.i.i

rht_ptr_rcu.exit.i.i.for.body.i.i_crit_edge:      ; preds = %rht_ptr_rcu.exit.i.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %rht_ptr_rcu.exit.i.i.for.body.i.i_crit_edge
  %he.0108.i.i = phi ptr [ %44, %for.inc.i.i.for.body.i.i_crit_edge ], [ %32, %rht_ptr_rcu.exit.i.i.for.body.i.i_crit_edge ]
  %33 = ptrtoint ptr %head_offset.i.i.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %head_offset.i.i.i, align 2
  %conv.i98.i.i = zext i16 %34 to i32
  %idx.neg.i99.i.i = sub nsw i32 0, %conv.i98.i.i
  %add.ptr.i100.i.i = getelementptr i8, ptr %he.0108.i.i, i32 %idx.neg.i99.i.i
  br i1 %tobool19.not.i.i, label %cond.false.i.i, label %cond.true.i.i

cond.true.i.i:                                    ; preds = %for.body.i.i
  %call22.i.i = call i32 %11(ptr noundef nonnull %arg.i.i, ptr noundef %add.ptr.i100.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i.i)
  %tobool23.not.i.i = icmp eq i32 %call22.i.i, 0
  br i1 %tobool23.not.i.i, label %cond.true.i.i.__rhashtable_lookup.exit.i_crit_edge, label %cond.true.i.i.for.inc.i.i_crit_edge

cond.true.i.i.for.inc.i.i_crit_edge:              ; preds = %cond.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

cond.true.i.i.__rhashtable_lookup.exit.i_crit_edge: ; preds = %cond.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__rhashtable_lookup.exit.i

cond.false.i.i:                                   ; preds = %for.body.i.i
  %35 = ptrtoint ptr %arg.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arg.i.i, align 4
  %key_offset.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %36, i32 0, i32 3, i32 2
  %37 = ptrtoint ptr %key_offset.i.i.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %key_offset.i.i.i, align 4
  %conv.i101.i.i = zext i16 %38 to i32
  %add.ptr.i102.i.i = getelementptr i8, ptr %add.ptr.i100.i.i, i32 %conv.i101.i.i
  %39 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %12, align 4
  %key_len.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %36, i32 0, i32 3, i32 1
  %41 = ptrtoint ptr %key_len.i.i.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %key_len.i.i.i, align 2
  %conv3.i.i.i = zext i16 %42 to i32
  %bcmp.i.i = call i32 @bcmp(ptr %add.ptr.i102.i.i, ptr %40, i32 %conv3.i.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %tobool26.not.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %tobool26.not.i.i, label %cond.false.i.i.__rhashtable_lookup.exit.i_crit_edge, label %cond.false.i.i.for.inc.i.i_crit_edge

cond.false.i.i.for.inc.i.i_crit_edge:             ; preds = %cond.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

cond.false.i.i.__rhashtable_lookup.exit.i_crit_edge: ; preds = %cond.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__rhashtable_lookup.exit.i

for.inc.i.i:                                      ; preds = %cond.false.i.i.for.inc.i.i_crit_edge, %cond.true.i.i.for.inc.i.i_crit_edge
  %43 = ptrtoint ptr %he.0108.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile ptr, ptr %he.0108.i.i, align 4
  %45 = ptrtoint ptr %44 to i32
  %and.i.i.i = and i32 %45, 1
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.do.cond34.i.i_crit_edge

for.inc.i.i.do.cond34.i.i_crit_edge:              ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.cond34.i.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

do.cond34.i.i:                                    ; preds = %for.inc.i.i.do.cond34.i.i_crit_edge, %rht_ptr_rcu.exit.i.i.do.cond34.i.i_crit_edge
  %he.0.lcssa.i.i = phi ptr [ %32, %rht_ptr_rcu.exit.i.i.do.cond34.i.i_crit_edge ], [ %44, %for.inc.i.i.do.cond34.i.i_crit_edge ]
  %cmp.not.i.i = icmp eq ptr %he.0.lcssa.i.i, %28
  br i1 %cmp.not.i.i, label %do.end39.i.i, label %do.cond34.i.i.do.body16.i.i_crit_edge

do.cond34.i.i.do.body16.i.i_crit_edge:            ; preds = %do.cond34.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body16.i.i

do.end39.i.i:                                     ; preds = %do.cond34.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !118
  %future_tbl.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i.i, i32 0, i32 5
  %46 = ptrtoint ptr %future_tbl.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile ptr, ptr %future_tbl.i.i, align 4
  %call47.i.i = call i32 @lockdep_rht_mutex_is_held(ptr noundef %rhashtable) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47.i.i)
  %tobool48.not.i.i = icmp eq i32 %call47.i.i, 0
  br i1 %tobool48.not.i.i, label %lor.lhs.false49.i.i, label %do.end39.i.i.do.end60.i.i_crit_edge

do.end39.i.i.do.end60.i.i_crit_edge:              ; preds = %do.end39.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end60.i.i

lor.lhs.false49.i.i:                              ; preds = %do.end39.i.i
  %call50.i.i = call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50.i.i)
  %tobool51.not.i.i = icmp eq i32 %call50.i.i, 0
  br i1 %tobool51.not.i.i, label %land.lhs.true52.i.i, label %lor.lhs.false49.i.i.do.end60.i.i_crit_edge

lor.lhs.false49.i.i.do.end60.i.i_crit_edge:       ; preds = %lor.lhs.false49.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end60.i.i

land.lhs.true52.i.i:                              ; preds = %lor.lhs.false49.i.i
  %call53.i.i = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53.i.i)
  %tobool54.not.i.i = icmp eq i32 %call53.i.i, 0
  br i1 %tobool54.not.i.i, label %land.lhs.true52.i.i.do.end60.i.i_crit_edge, label %land.lhs.true55.i.i

land.lhs.true52.i.i.do.end60.i.i_crit_edge:       ; preds = %land.lhs.true52.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end60.i.i

land.lhs.true55.i.i:                              ; preds = %land.lhs.true52.i.i
  %.b9091.i.i = load i1, ptr @__rhashtable_lookup.__warned.18, align 1
  br i1 %.b9091.i.i, label %land.lhs.true55.i.i.do.end60.i.i_crit_edge, label %if.then57.i.i

land.lhs.true55.i.i.do.end60.i.i_crit_edge:       ; preds = %land.lhs.true55.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end60.i.i

if.then57.i.i:                                    ; preds = %land.lhs.true55.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @__rhashtable_lookup.__warned.18, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 614, ptr noundef nonnull @.str.10) #10
  br label %do.end60.i.i

do.end60.i.i:                                     ; preds = %if.then57.i.i, %land.lhs.true55.i.i.do.end60.i.i_crit_edge, %land.lhs.true52.i.i.do.end60.i.i_crit_edge, %lor.lhs.false49.i.i.do.end60.i.i_crit_edge, %do.end39.i.i.do.end60.i.i_crit_edge
  %tobool62.not.i.i = icmp eq ptr %47, null
  br i1 %tobool62.not.i.i, label %__rhashtable_lookup.exit.thread.i, label %do.end60.i.i.if.then.i.i.i.i_crit_edge, !prof !108

do.end60.i.i.if.then.i.i.i.i_crit_edge:           ; preds = %do.end60.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i.i.i

__rhashtable_lookup.exit.thread.i:                ; preds = %do.end60.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %arg.i.i) #10
  br label %if.then4

__rhashtable_lookup.exit.i:                       ; preds = %cond.false.i.i.__rhashtable_lookup.exit.i_crit_edge, %cond.true.i.i.__rhashtable_lookup.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %arg.i.i) #10
  %tobool.not.i35 = icmp eq ptr %he.0108.i.i, null
  br i1 %tobool.not.i35, label %__rhashtable_lookup.exit.i.if.then4_crit_edge, label %rhashtable_lookup.exit

__rhashtable_lookup.exit.i.if.then4_crit_edge:    ; preds = %__rhashtable_lookup.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then4

rhashtable_lookup.exit:                           ; preds = %__rhashtable_lookup.exit.i
  %48 = ptrtoint ptr %head_offset.i.i.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %head_offset.i.i.i, align 2
  %conv.i.i = zext i16 %49 to i32
  %idx.neg.i.i = sub nsw i32 0, %conv.i.i
  %add.ptr.i.i = getelementptr i8, ptr %he.0108.i.i, i32 %idx.neg.i.i
  %tobool3.not = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool3.not, label %rhashtable_lookup.exit.if.then4_crit_edge, label %rhashtable_lookup.exit.if.end6_crit_edge

rhashtable_lookup.exit.if.end6_crit_edge:         ; preds = %rhashtable_lookup.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

rhashtable_lookup.exit.if.then4_crit_edge:        ; preds = %rhashtable_lookup.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then4

if.then4:                                         ; preds = %rhashtable_lookup.exit.if.then4_crit_edge, %__rhashtable_lookup.exit.i.if.then4_crit_edge, %__rhashtable_lookup.exit.thread.i
  %50 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %f, align 16
  %frags_cachep.i.i = getelementptr inbounds %struct.inet_frags, ptr %51, i32 0, i32 4
  %52 = ptrtoint ptr %frags_cachep.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %frags_cachep.i.i, align 4
  %call.i.i.i36 = call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %53, i32 noundef 2848) #10
  %tobool.not.i.i37 = icmp eq ptr %call.i.i.i36, null
  br i1 %tobool.not.i.i37, label %if.then4.if.end12_crit_edge, label %if.end.i

if.then4.if.end12_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.end.i:                                         ; preds = %if.then4
  %fqdir1.i.i = getelementptr inbounds %struct.inet_frag_queue, ptr %call.i.i.i36, i32 0, i32 13
  %54 = ptrtoint ptr %fqdir1.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %fqdir, ptr %fqdir1.i.i, align 4
  %constructor.i.i = getelementptr inbounds %struct.inet_frags, ptr %51, i32 0, i32 1
  %55 = ptrtoint ptr %constructor.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %constructor.i.i, align 4
  call void %56(ptr noundef nonnull %call.i.i.i36, ptr noundef %key) #10
  %57 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %51, align 4
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %mem.i, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr %mem.i, i32 1, i32 3, i32 1) #10
  %59 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %mem.i, ptr %mem.i, i32 %58, ptr elementtype(i32) %mem.i) #10, !srcloc !119
  %timer.i.i = getelementptr inbounds %struct.inet_frag_queue, ptr %call.i.i.i36, i32 0, i32 2
  %frag_expire.i.i = getelementptr inbounds %struct.inet_frags, ptr %51, i32 0, i32 3
  %60 = ptrtoint ptr %frag_expire.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %frag_expire.i.i, align 4
  call void @init_timer_key(ptr noundef %timer.i.i, ptr noundef %61, i32 noundef 0, ptr noundef nonnull @.str.19, ptr noundef nonnull @inet_frag_alloc.__key) #10
  %lock.i.i = getelementptr inbounds %struct.inet_frag_queue, ptr %call.i.i.i36, i32 0, i32 3
  call void @__raw_spin_lock_init(ptr noundef %lock.i.i, ptr noundef nonnull @.str.21, ptr noundef nonnull @inet_frag_alloc.__key.20, i16 noundef signext 3) #10
  %refcnt.i.i = getelementptr inbounds %struct.inet_frag_queue, ptr %call.i.i.i36, i32 0, i32 4
  %call.i.i.i16.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i.i, i32 noundef 4) #10
  %62 = ptrtoint ptr %refcnt.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store volatile i32 3, ptr %refcnt.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %63 = load volatile i32, ptr @jiffies, align 128
  %timeout.i = getelementptr inbounds %struct.fqdir, ptr %fqdir, i32 0, i32 2
  %64 = ptrtoint ptr %timeout.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %timeout.i, align 8
  %add.i = add i32 %65, %63
  %call3.i = call i32 @mod_timer(ptr noundef %timer.i.i, i32 noundef %add.i) #10
  %key.i = getelementptr inbounds %struct.inet_frag_queue, ptr %call.i.i.i36, i32 0, i32 1
  %rhash_params.i = getelementptr inbounds %struct.inet_frags, ptr %51, i32 0, i32 6
  %66 = ptrtoint ptr %rhash_params.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %.unpack.i = load i32, ptr %rhash_params.i, align 4
  %.elt23.i = getelementptr inbounds %struct.inet_frags, ptr %51, i32 0, i32 6, i32 2
  %67 = ptrtoint ptr %.elt23.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %.unpack24.i = load i32, ptr %.elt23.i, align 4
  %.elt31.i = getelementptr inbounds %struct.inet_frags, ptr %51, i32 0, i32 6, i32 8
  %68 = ptrtoint ptr %.elt31.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %.unpack32.i = load i32, ptr %.elt31.i, align 4
  %.elt33.i = getelementptr inbounds %struct.inet_frags, ptr %51, i32 0, i32 6, i32 9
  %69 = ptrtoint ptr %.elt33.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %.unpack34.i = load i32, ptr %.elt33.i, align 4
  %obj_hashfn.i.i = getelementptr inbounds %struct.fqdir, ptr %fqdir, i32 0, i32 8, i32 3, i32 8
  %70 = ptrtoint ptr %obj_hashfn.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %obj_hashfn.i.i, align 4
  %tobool.not.i35.i = icmp eq ptr %71, null
  br i1 %tobool.not.i35.i, label %do.body5.i.i, label %do.end8.i.i, !prof !111

do.body5.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/rhashtable.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 980, 0\0A.popsection", ""() #10, !srcloc !120
  unreachable

do.end8.i.i:                                      ; preds = %if.end.i
  %72 = inttoptr i32 %.unpack34.i to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %arg.i.i.i) #10
  %73 = getelementptr inbounds %struct.rhashtable_compare_arg, ptr %arg.i.i.i, i32 0, i32 1
  %74 = ptrtoint ptr %arg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %rhashtable, ptr %arg.i.i.i, align 4
  %75 = ptrtoint ptr %73 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %key.i, ptr %73, align 4
  %76 = call i32 @llvm.read_register.i32(metadata !96) #10
  %and.i.i.i.i.i.i.i.i = and i32 %76, -16384
  %77 = inttoptr i32 %and.i.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %77, i32 0, i32 1
  %78 = ptrtoint ptr %preempt_count.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i.i = add i32 %79, 1
  store volatile i32 %add.i.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !112
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i.i.i.i39 = call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i.i.i.i39, label %do.end8.i.i.rcu_read_lock.exit.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i

do.end8.i.i.rcu_read_lock.exit.i.i.i_crit_edge:   ; preds = %do.end8.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %do.end8.i.i
  %call1.i.i.i.i = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool.not.i.i.i.i40 = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i40, label %land.lhs.true.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge, label %land.lhs.true2.i.i.i.i

land.lhs.true.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i.i.i

land.lhs.true2.i.i.i.i:                           ; preds = %land.lhs.true.i.i.i.i
  %.b4.i.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i.i, label %land.lhs.true2.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge, label %if.then.i.i.i.i41

land.lhs.true2.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i.i.i

if.then.i.i.i.i41:                                ; preds = %land.lhs.true2.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 696, ptr noundef nonnull @.str.8) #10
  br label %rcu_read_lock.exit.i.i.i

rcu_read_lock.exit.i.i.i:                         ; preds = %if.then.i.i.i.i41, %land.lhs.true2.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge, %do.end8.i.i.rcu_read_lock.exit.i.i.i_crit_edge
  %80 = ptrtoint ptr %rhashtable to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load volatile ptr, ptr %rhashtable, align 4
  %call.i.i36.i = call i32 @lockdep_rht_mutex_is_held(ptr noundef %rhashtable) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i36.i)
  %tobool.not.i.i.i42 = icmp eq i32 %call.i.i36.i, 0
  br i1 %tobool.not.i.i.i42, label %lor.lhs.false.i.i.i, label %rcu_read_lock.exit.i.i.i.do.end12.i.i.i_crit_edge

rcu_read_lock.exit.i.i.i.do.end12.i.i.i_crit_edge: ; preds = %rcu_read_lock.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end12.i.i.i

lor.lhs.false.i.i.i:                              ; preds = %rcu_read_lock.exit.i.i.i
  %call5.i.i.i = call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i.i)
  %tobool6.not.i.i.i = icmp eq i32 %call5.i.i.i, 0
  br i1 %tobool6.not.i.i.i, label %land.lhs.true.i.i.i43, label %lor.lhs.false.i.i.i.do.end12.i.i.i_crit_edge

lor.lhs.false.i.i.i.do.end12.i.i.i_crit_edge:     ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end12.i.i.i

land.lhs.true.i.i.i43:                            ; preds = %lor.lhs.false.i.i.i
  %call7.i.i.i = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i.i)
  %tobool8.not.i.i.i = icmp eq i32 %call7.i.i.i, 0
  br i1 %tobool8.not.i.i.i, label %land.lhs.true.i.i.i43.do.end12.i.i.i_crit_edge, label %land.lhs.true9.i.i.i

land.lhs.true.i.i.i43.do.end12.i.i.i_crit_edge:   ; preds = %land.lhs.true.i.i.i43
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end12.i.i.i

land.lhs.true9.i.i.i:                             ; preds = %land.lhs.true.i.i.i43
  %.b2.i.i.i = load i1, ptr @__rhashtable_insert_fast.__warned, align 1
  br i1 %.b2.i.i.i, label %land.lhs.true9.i.i.i.do.end12.i.i.i_crit_edge, label %if.then.i.i.i44

land.lhs.true9.i.i.i.do.end12.i.i.i_crit_edge:    ; preds = %land.lhs.true9.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end12.i.i.i

if.then.i.i.i44:                                  ; preds = %land.lhs.true9.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @__rhashtable_insert_fast.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 715, ptr noundef nonnull @.str.10) #10
  br label %do.end12.i.i.i

do.end12.i.i.i:                                   ; preds = %if.then.i.i.i44, %land.lhs.true9.i.i.i.do.end12.i.i.i_crit_edge, %land.lhs.true.i.i.i43.do.end12.i.i.i_crit_edge, %lor.lhs.false.i.i.i.do.end12.i.i.i_crit_edge, %rcu_read_lock.exit.i.i.i.do.end12.i.i.i_crit_edge
  %82 = inttoptr i32 %.unpack32.i to ptr
  %83 = ptrtoint ptr %head_offset.i.i.i to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %head_offset.i.i.i, align 2
  %conv.i.i.i.i.i = zext i16 %84 to i32
  %idx.neg.i.i.i.i.i = sub nsw i32 0, %conv.i.i.i.i.i
  %add.ptr.i.i.i.i.i45 = getelementptr i8, ptr %call.i.i.i36, i32 %idx.neg.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.unpack32.i)
  %tobool.not.i4.i.i.i = icmp eq i32 %.unpack32.i, 0
  br i1 %tobool.not.i4.i.i.i, label %if.then.i.i.i.i.i.i, label %cond.true.i.i.i.i, !prof !111

cond.true.i.i.i.i:                                ; preds = %do.end12.i.i.i
  %conv.i.i.i.i46 = and i32 %.unpack.i, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i.i.i.i46)
  %tobool4.not.i.i.i.i = icmp eq i32 %conv.i.i.i.i46, 0
  br i1 %tobool4.not.i.i.i.i, label %cond.false.i.i.i.i, label %cond.true.i.i.i.i.cond.end.i.i.i.i_crit_edge

cond.true.i.i.i.i.cond.end.i.i.i.i_crit_edge:     ; preds = %cond.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end.i.i.i.i

cond.false.i.i.i.i:                               ; preds = %cond.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %85 = ptrtoint ptr %key_len21.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %key_len21.i.i.i.i, align 2
  %conv7.i.i.i.i = zext i16 %86 to i32
  br label %cond.end.i.i.i.i

cond.end.i.i.i.i:                                 ; preds = %cond.false.i.i.i.i, %cond.true.i.i.i.i.cond.end.i.i.i.i_crit_edge
  %cond.i.i.i.i47 = phi i32 [ %conv7.i.i.i.i, %cond.false.i.i.i.i ], [ %conv.i.i.i.i46, %cond.true.i.i.i.i.cond.end.i.i.i.i_crit_edge ]
  %hash_rnd.i.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %81, i32 0, i32 2
  %87 = ptrtoint ptr %hash_rnd.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %hash_rnd.i.i.i.i, align 8
  %call8.i.i.i.i = call i32 %82(ptr noundef %add.ptr.i.i.i.i.i45, i32 noundef %cond.i.i.i.i47, i32 noundef %88) #10
  br label %rht_head_hashfn.exit.i.i.i

if.then.i.i.i.i.i.i:                              ; preds = %do.end12.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %hash_rnd.i.i.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %81, i32 0, i32 2
  %89 = ptrtoint ptr %hash_rnd.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %hash_rnd.i.i.i.i.i, align 8
  %params.sroa.3.4.extract.shift.i.i.i.i = lshr i32 %.unpack24.i, 16
  %add.ptr.i.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i.i45, i32 %params.sroa.3.4.extract.shift.i.i.i.i
  %91 = ptrtoint ptr %hashfn.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %hashfn.i.i.i.i, align 4
  %93 = ptrtoint ptr %key_len1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %key_len1.i.i.i.i, align 4
  %call.i.i.i.i.i.i = call i32 %92(ptr noundef %add.ptr.i.i.i.i, i32 noundef %94, i32 noundef %90) #10
  br label %rht_head_hashfn.exit.i.i.i

rht_head_hashfn.exit.i.i.i:                       ; preds = %if.then.i.i.i.i.i.i, %cond.end.i.i.i.i
  %hash.2.i.i.sink.i.i.i.i = phi i32 [ %call8.i.i.i.i, %cond.end.i.i.i.i ], [ %call.i.i.i.i.i.i, %if.then.i.i.i.i.i.i ]
  %95 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %81, align 128
  %sub.i.i.i.i.i.i = add i32 %96, -1
  %and.i3.i.i.i.i.i = and i32 %sub.i.i.i.i.i.i, %hash.2.i.i.sink.i.i.i.i
  %nest.i.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %81, i32 0, i32 1
  %97 = ptrtoint ptr %nest.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %nest.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %tobool.not.i5.i.i.i = icmp eq i32 %98, 0
  br i1 %tobool.not.i5.i.i.i, label %cond.false.i8.i.i.i, label %cond.true.i7.i.i.i, !prof !108

cond.true.i7.i.i.i:                               ; preds = %rht_head_hashfn.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i6.i.i.i = call ptr @rht_bucket_nested_insert(ptr noundef %rhashtable, ptr noundef %81, i32 noundef %and.i3.i.i.i.i.i) #10
  br label %rht_bucket_insert.exit.i.i.i

cond.false.i8.i.i.i:                              ; preds = %rht_head_hashfn.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i.i.i.i = getelementptr %struct.bucket_table, ptr %81, i32 0, i32 8, i32 %and.i3.i.i.i.i.i
  br label %rht_bucket_insert.exit.i.i.i

rht_bucket_insert.exit.i.i.i:                     ; preds = %cond.false.i8.i.i.i, %cond.true.i7.i.i.i
  %cond.i9.i.i.i = phi ptr [ %call.i6.i.i.i, %cond.true.i7.i.i.i ], [ %arrayidx.i.i.i.i, %cond.false.i8.i.i.i ]
  %tobool17.not.i.i.i = icmp eq ptr %cond.i9.i.i.i, null
  br i1 %tobool17.not.i.i.i, label %rht_bucket_insert.exit.i.i.i.out.i.i.i_crit_edge, label %if.end19.i.i.i

rht_bucket_insert.exit.i.i.i.out.i.i.i_crit_edge: ; preds = %rht_bucket_insert.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i.i.i

if.end19.i.i.i:                                   ; preds = %rht_bucket_insert.exit.i.i.i
  call fastcc void @rht_lock(ptr noundef %81, ptr noundef nonnull %cond.i9.i.i.i) #10
  %future_tbl.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %81, i32 0, i32 5
  %99 = ptrtoint ptr %future_tbl.i.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load volatile ptr, ptr %future_tbl.i.i.i, align 4
  %tobool25.not.i.i.i = icmp eq ptr %100, null
  br i1 %tobool25.not.i.i.i, label %if.end30.i.i.i, label %if.end19.i.i.i.slow_path.i.i.i_crit_edge, !prof !108

if.end19.i.i.i.slow_path.i.i.i_crit_edge:         ; preds = %if.end19.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %slow_path.i.i.i

slow_path.i.i.i:                                  ; preds = %rht_grow_above_100.exit.i.i.i.slow_path.i.i.i_crit_edge, %for.end.i.i.i.slow_path.i.i.i_crit_edge, %if.end19.i.i.i.slow_path.i.i.i_crit_edge
  call fastcc void @rht_unlock(ptr noundef %81, ptr noundef nonnull %cond.i9.i.i.i) #10
  %call.i11.i.i.i = call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i11.i.i.i, label %slow_path.i.i.i.rcu_read_unlock.exit.i.i.i_crit_edge, label %land.lhs.true.i14.i.i.i

slow_path.i.i.i.rcu_read_unlock.exit.i.i.i_crit_edge: ; preds = %slow_path.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit.i.i.i

land.lhs.true.i14.i.i.i:                          ; preds = %slow_path.i.i.i
  %call1.i12.i.i.i = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i12.i.i.i)
  %tobool.not.i13.i.i.i = icmp eq i32 %call1.i12.i.i.i, 0
  br i1 %tobool.not.i13.i.i.i, label %land.lhs.true.i14.i.i.i.rcu_read_unlock.exit.i.i.i_crit_edge, label %land.lhs.true2.i16.i.i.i

land.lhs.true.i14.i.i.i.rcu_read_unlock.exit.i.i.i_crit_edge: ; preds = %land.lhs.true.i14.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit.i.i.i

land.lhs.true2.i16.i.i.i:                         ; preds = %land.lhs.true.i14.i.i.i
  %.b4.i15.i.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i15.i.i.i, label %land.lhs.true2.i16.i.i.i.rcu_read_unlock.exit.i.i.i_crit_edge, label %if.then.i17.i.i.i

land.lhs.true2.i16.i.i.i.rcu_read_unlock.exit.i.i.i_crit_edge: ; preds = %land.lhs.true2.i16.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit.i.i.i

if.then.i17.i.i.i:                                ; preds = %land.lhs.true2.i16.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 724, ptr noundef nonnull @.str.17) #10
  br label %rcu_read_unlock.exit.i.i.i

rcu_read_unlock.exit.i.i.i:                       ; preds = %if.then.i17.i.i.i, %land.lhs.true2.i16.i.i.i.rcu_read_unlock.exit.i.i.i_crit_edge, %land.lhs.true.i14.i.i.i.rcu_read_unlock.exit.i.i.i_crit_edge, %slow_path.i.i.i.rcu_read_unlock.exit.i.i.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !116
  %101 = call i32 @llvm.read_register.i32(metadata !96) #10
  %and.i.i.i.i.i18.i.i.i = and i32 %101, -16384
  %102 = inttoptr i32 %and.i.i.i.i.i18.i.i.i to ptr
  %preempt_count.i.i.i.i19.i.i.i = getelementptr inbounds %struct.thread_info, ptr %102, i32 0, i32 1
  %103 = ptrtoint ptr %preempt_count.i.i.i.i19.i.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load volatile i32, ptr %preempt_count.i.i.i.i19.i.i.i, align 4
  %sub.i.i.i20.i.i.i = add i32 %104, -1
  store volatile i32 %sub.i.i.i20.i.i.i, ptr %preempt_count.i.i.i.i19.i.i.i, align 4
  call void @rcu_read_unlock_strict() #10
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  %call29.i.i.i = call ptr @rhashtable_insert_slow(ptr noundef %rhashtable, ptr noundef %key.i, ptr noundef nonnull %call.i.i.i36) #10
  br label %rhashtable_lookup_get_insert_key.exit.i

if.end30.i.i.i:                                   ; preds = %if.end19.i.i.i
  %call.i21.i.i.i = call i32 @lockdep_rht_bucket_is_held(ptr noundef %81, i32 noundef %and.i3.i.i.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i21.i.i.i)
  %tobool.not.i22.i.i.i = icmp eq i32 %call.i21.i.i.i, 0
  br i1 %tobool.not.i22.i.i.i, label %land.lhs.true.i24.i.i.i, label %if.end30.i.i.i.rht_ptr.exit.i.i.i_crit_edge

if.end30.i.i.i.rht_ptr.exit.i.i.i_crit_edge:      ; preds = %if.end30.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rht_ptr.exit.i.i.i

land.lhs.true.i24.i.i.i:                          ; preds = %if.end30.i.i.i
  %call1.i23.i.i.i = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i23.i.i.i)
  %tobool2.not.i.i.i.i = icmp eq i32 %call1.i23.i.i.i, 0
  br i1 %tobool2.not.i.i.i.i, label %land.lhs.true.i24.i.i.i.rht_ptr.exit.i.i.i_crit_edge, label %land.lhs.true3.i.i.i.i

land.lhs.true.i24.i.i.i.rht_ptr.exit.i.i.i_crit_edge: ; preds = %land.lhs.true.i24.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rht_ptr.exit.i.i.i

land.lhs.true3.i.i.i.i:                           ; preds = %land.lhs.true.i24.i.i.i
  %.b7.i.i.i.i = load i1, ptr @rht_ptr.__warned, align 1
  br i1 %.b7.i.i.i.i, label %land.lhs.true3.i.i.i.i.rht_ptr.exit.i.i.i_crit_edge, label %if.then.i25.i.i.i

land.lhs.true3.i.i.i.i.rht_ptr.exit.i.i.i_crit_edge: ; preds = %land.lhs.true3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rht_ptr.exit.i.i.i

if.then.i25.i.i.i:                                ; preds = %land.lhs.true3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rht_ptr.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 377, ptr noundef nonnull @.str.12) #10
  br label %rht_ptr.exit.i.i.i

rht_ptr.exit.i.i.i:                               ; preds = %if.then.i25.i.i.i, %land.lhs.true3.i.i.i.i.rht_ptr.exit.i.i.i_crit_edge, %land.lhs.true.i24.i.i.i.rht_ptr.exit.i.i.i_crit_edge, %if.end30.i.i.i.rht_ptr.exit.i.i.i_crit_edge
  %105 = ptrtoint ptr %cond.i9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %cond.i9.i.i.i, align 4
  %107 = ptrtoint ptr %106 to i32
  %and.i.i.i.i.i48 = and i32 %107, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i48)
  %tobool.not.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i48, 0
  %108 = ptrtoint ptr %cond.i9.i.i.i to i32
  %or.i.i.i.i.i = or i32 %108, 1
  %cond.i.i.i.i.i = select i1 %tobool.not.i.i.i.i.i, i32 %or.i.i.i.i.i, i32 %and.i.i.i.i.i48
  %and.i84.i.i.i = and i32 %cond.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i84.i.i.i)
  %tobool.i.not85.i.i.i = icmp eq i32 %and.i84.i.i.i, 0
  br i1 %tobool.i.not85.i.i.i, label %for.body.lr.ph.i.i.i, label %rht_ptr.exit.i.i.i.if.end152.i.i.i_crit_edge

rht_ptr.exit.i.i.i.if.end152.i.i.i_crit_edge:     ; preds = %rht_ptr.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end152.i.i.i

for.body.lr.ph.i.i.i:                             ; preds = %rht_ptr.exit.i.i.i
  %109 = inttoptr i32 %cond.i.i.i.i.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.unpack34.i)
  %tobool37.not.i.i.i = icmp eq i32 %.unpack34.i, 0
  br label %lor.lhs.false36.i.i.i

lor.lhs.false36.i.i.i:                            ; preds = %do.end147.i.i.i.lor.lhs.false36.i.i.i_crit_edge, %for.body.lr.ph.i.i.i
  %head.087.i.i.i = phi ptr [ %109, %for.body.lr.ph.i.i.i ], [ %123, %do.end147.i.i.i.lor.lhs.false36.i.i.i_crit_edge ]
  %elasticity.086.i.i.i = phi i32 [ 16, %for.body.lr.ph.i.i.i ], [ %dec.i.i.i, %do.end147.i.i.i.lor.lhs.false36.i.i.i_crit_edge ]
  %dec.i.i.i = add i32 %elasticity.086.i.i.i, -1
  %110 = ptrtoint ptr %head_offset.i.i.i to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %head_offset.i.i.i, align 2
  %conv.i29.i.i.i = zext i16 %111 to i32
  %idx.neg.i30.i.i.i = sub nsw i32 0, %conv.i29.i.i.i
  %add.ptr.i31.i.i.i = getelementptr i8, ptr %head.087.i.i.i, i32 %idx.neg.i30.i.i.i
  br i1 %tobool37.not.i.i.i, label %cond.false.i.i.i50, label %cond.true.i.i.i49

cond.true.i.i.i49:                                ; preds = %lor.lhs.false36.i.i.i
  %call40.i.i.i = call i32 %72(ptr noundef nonnull %arg.i.i.i, ptr noundef %add.ptr.i31.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40.i.i.i)
  %tobool41.not.i.i.i = icmp eq i32 %call40.i.i.i, 0
  br i1 %tobool41.not.i.i.i, label %cond.true.i.i.i49.cleanup.i.i.i_crit_edge, label %cond.true.i.i.i49.do.body136.i.i.i_crit_edge

cond.true.i.i.i49.do.body136.i.i.i_crit_edge:     ; preds = %cond.true.i.i.i49
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body136.i.i.i

cond.true.i.i.i49.cleanup.i.i.i_crit_edge:        ; preds = %cond.true.i.i.i49
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i.i.i

cond.false.i.i.i50:                               ; preds = %lor.lhs.false36.i.i.i
  %112 = ptrtoint ptr %arg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %arg.i.i.i, align 4
  %key_offset.i.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %113, i32 0, i32 3, i32 2
  %114 = ptrtoint ptr %key_offset.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %key_offset.i.i.i.i, align 4
  %conv.i32.i.i.i = zext i16 %115 to i32
  %add.ptr.i33.i.i.i = getelementptr i8, ptr %add.ptr.i31.i.i.i, i32 %conv.i32.i.i.i
  %116 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %73, align 4
  %key_len.i.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %113, i32 0, i32 3, i32 1
  %118 = ptrtoint ptr %key_len.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %key_len.i.i.i.i, align 2
  %conv3.i.i.i.i = zext i16 %119 to i32
  %bcmp.i.i.i = call i32 @bcmp(ptr %add.ptr.i33.i.i.i, ptr %117, i32 %conv3.i.i.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i.i)
  %tobool44.not.i.i.i = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %tobool44.not.i.i.i, label %cond.false.i.i.i50.cleanup.i.i.i_crit_edge, label %cond.false.i.i.i50.do.body136.i.i.i_crit_edge

cond.false.i.i.i50.do.body136.i.i.i_crit_edge:    ; preds = %cond.false.i.i.i50
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body136.i.i.i

cond.false.i.i.i50.cleanup.i.i.i_crit_edge:       ; preds = %cond.false.i.i.i50
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i.i.i

cleanup.i.i.i:                                    ; preds = %cond.false.i.i.i50.cleanup.i.i.i_crit_edge, %cond.true.i.i.i49.cleanup.i.i.i_crit_edge
  %120 = ptrtoint ptr %head_offset.i.i.i to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %head_offset.i.i.i, align 2
  %conv.i36.i.i.i = zext i16 %121 to i32
  %idx.neg.i37.i.i.i = sub nsw i32 0, %conv.i36.i.i.i
  %add.ptr.i38.i.i.i = getelementptr i8, ptr %head.087.i.i.i, i32 %idx.neg.i37.i.i.i
  br label %out_unlock.i.i.i

do.body136.i.i.i:                                 ; preds = %cond.false.i.i.i50.do.body136.i.i.i_crit_edge, %cond.true.i.i.i49.do.body136.i.i.i_crit_edge
  %call137.i.i.i = call i32 @lockdep_rht_bucket_is_held(ptr noundef %81, i32 noundef %and.i3.i.i.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call137.i.i.i)
  %tobool138.not.i.i.i = icmp eq i32 %call137.i.i.i, 0
  br i1 %tobool138.not.i.i.i, label %land.lhs.true139.i.i.i, label %do.body136.i.i.i.do.end147.i.i.i_crit_edge

do.body136.i.i.i.do.end147.i.i.i_crit_edge:       ; preds = %do.body136.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end147.i.i.i

land.lhs.true139.i.i.i:                           ; preds = %do.body136.i.i.i
  %call140.i.i.i = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call140.i.i.i)
  %tobool141.not.i.i.i = icmp eq i32 %call140.i.i.i, 0
  br i1 %tobool141.not.i.i.i, label %land.lhs.true139.i.i.i.do.end147.i.i.i_crit_edge, label %land.lhs.true142.i.i.i

land.lhs.true139.i.i.i.do.end147.i.i.i_crit_edge: ; preds = %land.lhs.true139.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end147.i.i.i

land.lhs.true142.i.i.i:                           ; preds = %land.lhs.true139.i.i.i
  %.b2811.i.i.i = load i1, ptr @__rhashtable_insert_fast.__warned.23, align 1
  br i1 %.b2811.i.i.i, label %land.lhs.true142.i.i.i.do.end147.i.i.i_crit_edge, label %if.then144.i.i.i

land.lhs.true142.i.i.i.do.end147.i.i.i_crit_edge: ; preds = %land.lhs.true142.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end147.i.i.i

if.then144.i.i.i:                                 ; preds = %land.lhs.true142.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @__rhashtable_insert_fast.__warned.23, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 732, ptr noundef nonnull @.str.12) #10
  br label %do.end147.i.i.i

do.end147.i.i.i:                                  ; preds = %if.then144.i.i.i, %land.lhs.true142.i.i.i.do.end147.i.i.i_crit_edge, %land.lhs.true139.i.i.i.do.end147.i.i.i_crit_edge, %do.body136.i.i.i.do.end147.i.i.i_crit_edge
  %122 = ptrtoint ptr %head.087.i.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %head.087.i.i.i, align 4
  %124 = ptrtoint ptr %123 to i32
  %and.i.i.i.i51 = and i32 %124, 1
  %tobool.i.not.i.i.i = icmp eq i32 %and.i.i.i.i51, 0
  br i1 %tobool.i.not.i.i.i, label %do.end147.i.i.i.lor.lhs.false36.i.i.i_crit_edge, label %for.end.i.i.i

do.end147.i.i.i.lor.lhs.false36.i.i.i_crit_edge:  ; preds = %do.end147.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false36.i.i.i

for.end.i.i.i:                                    ; preds = %do.end147.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i.i.i)
  %phi.cmp.i.i.i = icmp slt i32 %dec.i.i.i, 1
  br i1 %phi.cmp.i.i.i, label %for.end.i.i.i.slow_path.i.i.i_crit_edge, label %for.end.i.i.i.if.end152.i.i.i_crit_edge

for.end.i.i.i.if.end152.i.i.i_crit_edge:          ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end152.i.i.i

for.end.i.i.i.slow_path.i.i.i_crit_edge:          ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %slow_path.i.i.i

if.end152.i.i.i:                                  ; preds = %for.end.i.i.i.if.end152.i.i.i_crit_edge, %rht_ptr.exit.i.i.i.if.end152.i.i.i_crit_edge
  %nelems.i.i.i.i = getelementptr inbounds %struct.fqdir, ptr %fqdir, i32 0, i32 8, i32 8
  %call.i.i.i39.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %nelems.i.i.i.i, i32 noundef 4) #10
  %125 = ptrtoint ptr %nelems.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load volatile i32, ptr %nelems.i.i.i.i, align 4
  %max_elems.i.i.i.i = getelementptr inbounds %struct.fqdir, ptr %fqdir, i32 0, i32 8, i32 2
  %127 = ptrtoint ptr %max_elems.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %max_elems.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %126, i32 %128)
  %cmp.i.not.i.i.i = icmp ult i32 %126, %128
  br i1 %cmp.i.not.i.i.i, label %if.end162.i.i.i, label %if.end152.i.i.i.out_unlock.i.i.i_crit_edge, !prof !108

if.end152.i.i.i.out_unlock.i.i.i_crit_edge:       ; preds = %if.end152.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock.i.i.i

if.end162.i.i.i:                                  ; preds = %if.end152.i.i.i
  %call.i.i.i41.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %nelems.i.i.i.i, i32 noundef 4) #10
  %129 = ptrtoint ptr %nelems.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load volatile i32, ptr %nelems.i.i.i.i, align 4
  %131 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %81, align 128
  call void @__sanitizer_cov_trace_cmp4(i32 %130, i32 %132)
  %cmp.i42.i.i.i = icmp ugt i32 %130, %132
  br i1 %cmp.i42.i.i.i, label %rht_grow_above_100.exit.i.i.i, label %if.end162.i.i.i.if.end171.i.i.i_crit_edge

if.end162.i.i.i.if.end171.i.i.i_crit_edge:        ; preds = %if.end162.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end171.i.i.i

rht_grow_above_100.exit.i.i.i:                    ; preds = %if.end162.i.i.i
  %max_size.i.i.i.i = getelementptr inbounds %struct.fqdir, ptr %fqdir, i32 0, i32 8, i32 3, i32 4
  %133 = ptrtoint ptr %max_size.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %max_size.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %134)
  %tobool.not.i43.i.i.i = icmp eq i32 %134, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %132, i32 %134)
  %cmp4.i.i.i.i = icmp ult i32 %132, %134
  %spec.select.i.i.i.i = select i1 %tobool.not.i43.i.i.i, i1 true, i1 %cmp4.i.i.i.i
  br i1 %spec.select.i.i.i.i, label %rht_grow_above_100.exit.i.i.i.slow_path.i.i.i_crit_edge, label %rht_grow_above_100.exit.i.i.i.if.end171.i.i.i_crit_edge, !prof !111

rht_grow_above_100.exit.i.i.i.if.end171.i.i.i_crit_edge: ; preds = %rht_grow_above_100.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end171.i.i.i

rht_grow_above_100.exit.i.i.i.slow_path.i.i.i_crit_edge: ; preds = %rht_grow_above_100.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %slow_path.i.i.i

if.end171.i.i.i:                                  ; preds = %rht_grow_above_100.exit.i.i.i.if.end171.i.i.i_crit_edge, %if.end162.i.i.i.if.end171.i.i.i_crit_edge
  %call.i44.i.i.i = call i32 @lockdep_rht_bucket_is_held(ptr noundef %81, i32 noundef %and.i3.i.i.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i44.i.i.i)
  %tobool.not.i45.i.i.i = icmp eq i32 %call.i44.i.i.i, 0
  br i1 %tobool.not.i45.i.i.i, label %land.lhs.true.i48.i.i.i, label %if.end171.i.i.i.rht_ptr.exit56.i.i.i_crit_edge

if.end171.i.i.i.rht_ptr.exit56.i.i.i_crit_edge:   ; preds = %if.end171.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rht_ptr.exit56.i.i.i

land.lhs.true.i48.i.i.i:                          ; preds = %if.end171.i.i.i
  %call1.i46.i.i.i = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i46.i.i.i)
  %tobool2.not.i47.i.i.i = icmp eq i32 %call1.i46.i.i.i, 0
  br i1 %tobool2.not.i47.i.i.i, label %land.lhs.true.i48.i.i.i.rht_ptr.exit56.i.i.i_crit_edge, label %land.lhs.true3.i50.i.i.i

land.lhs.true.i48.i.i.i.rht_ptr.exit56.i.i.i_crit_edge: ; preds = %land.lhs.true.i48.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rht_ptr.exit56.i.i.i

land.lhs.true3.i50.i.i.i:                         ; preds = %land.lhs.true.i48.i.i.i
  %.b7.i49.i.i.i = load i1, ptr @rht_ptr.__warned, align 1
  br i1 %.b7.i49.i.i.i, label %land.lhs.true3.i50.i.i.i.rht_ptr.exit56.i.i.i_crit_edge, label %if.then.i51.i.i.i

land.lhs.true3.i50.i.i.i.rht_ptr.exit56.i.i.i_crit_edge: ; preds = %land.lhs.true3.i50.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rht_ptr.exit56.i.i.i

if.then.i51.i.i.i:                                ; preds = %land.lhs.true3.i50.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rht_ptr.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 377, ptr noundef nonnull @.str.12) #10
  br label %rht_ptr.exit56.i.i.i

rht_ptr.exit56.i.i.i:                             ; preds = %if.then.i51.i.i.i, %land.lhs.true3.i50.i.i.i.rht_ptr.exit56.i.i.i_crit_edge, %land.lhs.true.i48.i.i.i.rht_ptr.exit56.i.i.i_crit_edge, %if.end171.i.i.i.rht_ptr.exit56.i.i.i_crit_edge
  %135 = ptrtoint ptr %cond.i9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %cond.i9.i.i.i, align 4
  %137 = ptrtoint ptr %136 to i32
  %and.i.i52.i.i.i = and i32 %137, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i52.i.i.i)
  %tobool.not.i.i53.i.i.i = icmp eq i32 %and.i.i52.i.i.i, 0
  %cond.i.i55.i.i.i = select i1 %tobool.not.i.i53.i.i.i, i32 %or.i.i.i.i.i, i32 %and.i.i52.i.i.i
  %138 = inttoptr i32 %cond.i.i55.i.i.i to ptr
  %139 = ptrtoint ptr %call.i.i.i36 to i32
  call void @__asan_store4_noabort(i32 %139)
  store volatile ptr %138, ptr %call.i.i.i36, align 8
  %call.i.i.i.i37.i = call zeroext i1 @__kasan_check_write(ptr noundef %nelems.i.i.i.i, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr %nelems.i.i.i.i, i32 1, i32 3, i32 1) #10
  %140 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nelems.i.i.i.i, ptr %nelems.i.i.i.i, i32 1, ptr elementtype(i32) %nelems.i.i.i.i) #10, !srcloc !119
  call fastcc void @rht_assign_unlock(ptr noundef %81, ptr noundef nonnull %cond.i9.i.i.i, ptr noundef nonnull %call.i.i.i36) #10
  %call.i.i.i58.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %nelems.i.i.i.i, i32 noundef 4) #10
  %141 = ptrtoint ptr %nelems.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load volatile i32, ptr %nelems.i.i.i.i, align 4
  %143 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %81, align 128
  %div8.i.i.i.i = lshr i32 %144, 2
  %mul.i.i.i.i = mul nuw i32 %div8.i.i.i.i, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %142, i32 %mul.i.i.i.i)
  %cmp.i59.i.i.i = icmp ugt i32 %142, %mul.i.i.i.i
  br i1 %cmp.i59.i.i.i, label %rht_grow_above_75.exit.i.i.i, label %rht_ptr.exit56.i.i.i.out.i.i.i_crit_edge

rht_ptr.exit56.i.i.i.out.i.i.i_crit_edge:         ; preds = %rht_ptr.exit56.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i.i.i

rht_grow_above_75.exit.i.i.i:                     ; preds = %rht_ptr.exit56.i.i.i
  %max_size.i60.i.i.i = getelementptr inbounds %struct.fqdir, ptr %fqdir, i32 0, i32 8, i32 3, i32 4
  %145 = ptrtoint ptr %max_size.i60.i.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %max_size.i60.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %146)
  %tobool.not.i61.i.i.i = icmp eq i32 %146, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %144, i32 %146)
  %cmp4.i62.i.i.i = icmp ult i32 %144, %146
  %spec.select.i63.i.i.i = select i1 %tobool.not.i61.i.i.i, i1 true, i1 %cmp4.i62.i.i.i
  br i1 %spec.select.i63.i.i.i, label %if.then207.i.i.i, label %rht_grow_above_75.exit.i.i.i.out.i.i.i_crit_edge

rht_grow_above_75.exit.i.i.i.out.i.i.i_crit_edge: ; preds = %rht_grow_above_75.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i.i.i

if.then207.i.i.i:                                 ; preds = %rht_grow_above_75.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %run_work.i.i.i = getelementptr inbounds %struct.fqdir, ptr %fqdir, i32 0, i32 8, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %147 = load ptr, ptr @system_wq, align 4
  %call.i.i65.i.i.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %147, ptr noundef %run_work.i.i.i) #10
  br label %out.i.i.i

out.i.i.i:                                        ; preds = %out_unlock.i.i.i, %if.then207.i.i.i, %rht_grow_above_75.exit.i.i.i.out.i.i.i_crit_edge, %rht_ptr.exit56.i.i.i.out.i.i.i_crit_edge, %rht_bucket_insert.exit.i.i.i.out.i.i.i_crit_edge
  %data.2.i.i.i = phi ptr [ %data.3.i.i.i, %out_unlock.i.i.i ], [ inttoptr (i32 -12 to ptr), %rht_bucket_insert.exit.i.i.i.out.i.i.i_crit_edge ], [ null, %if.then207.i.i.i ], [ null, %rht_grow_above_75.exit.i.i.i.out.i.i.i_crit_edge ], [ null, %rht_ptr.exit56.i.i.i.out.i.i.i_crit_edge ]
  %call.i66.i.i.i = call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i66.i.i.i, label %out.i.i.i.rcu_read_unlock.exit76.i.i.i_crit_edge, label %land.lhs.true.i69.i.i.i

out.i.i.i.rcu_read_unlock.exit76.i.i.i_crit_edge: ; preds = %out.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit76.i.i.i

land.lhs.true.i69.i.i.i:                          ; preds = %out.i.i.i
  %call1.i67.i.i.i = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i67.i.i.i)
  %tobool.not.i68.i.i.i = icmp eq i32 %call1.i67.i.i.i, 0
  br i1 %tobool.not.i68.i.i.i, label %land.lhs.true.i69.i.i.i.rcu_read_unlock.exit76.i.i.i_crit_edge, label %land.lhs.true2.i71.i.i.i

land.lhs.true.i69.i.i.i.rcu_read_unlock.exit76.i.i.i_crit_edge: ; preds = %land.lhs.true.i69.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit76.i.i.i

land.lhs.true2.i71.i.i.i:                         ; preds = %land.lhs.true.i69.i.i.i
  %.b4.i70.i.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i70.i.i.i, label %land.lhs.true2.i71.i.i.i.rcu_read_unlock.exit76.i.i.i_crit_edge, label %if.then.i72.i.i.i

land.lhs.true2.i71.i.i.i.rcu_read_unlock.exit76.i.i.i_crit_edge: ; preds = %land.lhs.true2.i71.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit76.i.i.i

if.then.i72.i.i.i:                                ; preds = %land.lhs.true2.i71.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 724, ptr noundef nonnull @.str.17) #10
  br label %rcu_read_unlock.exit76.i.i.i

rcu_read_unlock.exit76.i.i.i:                     ; preds = %if.then.i72.i.i.i, %land.lhs.true2.i71.i.i.i.rcu_read_unlock.exit76.i.i.i_crit_edge, %land.lhs.true.i69.i.i.i.rcu_read_unlock.exit76.i.i.i_crit_edge, %out.i.i.i.rcu_read_unlock.exit76.i.i.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !116
  %148 = call i32 @llvm.read_register.i32(metadata !96) #10
  %and.i.i.i.i.i73.i.i.i = and i32 %148, -16384
  %149 = inttoptr i32 %and.i.i.i.i.i73.i.i.i to ptr
  %preempt_count.i.i.i.i74.i.i.i = getelementptr inbounds %struct.thread_info, ptr %149, i32 0, i32 1
  %150 = ptrtoint ptr %preempt_count.i.i.i.i74.i.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load volatile i32, ptr %preempt_count.i.i.i.i74.i.i.i, align 4
  %sub.i.i.i75.i.i.i = add i32 %151, -1
  store volatile i32 %sub.i.i.i75.i.i.i, ptr %preempt_count.i.i.i.i74.i.i.i, align 4
  call void @rcu_read_unlock_strict() #10
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  br label %rhashtable_lookup_get_insert_key.exit.i

out_unlock.i.i.i:                                 ; preds = %if.end152.i.i.i.out_unlock.i.i.i_crit_edge, %cleanup.i.i.i
  %data.3.i.i.i = phi ptr [ %add.ptr.i38.i.i.i, %cleanup.i.i.i ], [ inttoptr (i32 -7 to ptr), %if.end152.i.i.i.out_unlock.i.i.i_crit_edge ]
  call fastcc void @rht_unlock(ptr noundef %81, ptr noundef nonnull %cond.i9.i.i.i) #10
  br label %out.i.i.i

rhashtable_lookup_get_insert_key.exit.i:          ; preds = %rcu_read_unlock.exit76.i.i.i, %rcu_read_unlock.exit.i.i.i
  %retval.0.i.i.i = phi ptr [ %call29.i.i.i, %rcu_read_unlock.exit.i.i.i ], [ %data.2.i.i.i, %rcu_read_unlock.exit76.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %arg.i.i.i) #10
  %tobool5.not.i = icmp eq ptr %retval.0.i.i.i, null
  br i1 %tobool5.not.i, label %rhashtable_lookup_get_insert_key.exit.i.if.end12_crit_edge, label %if.then6.i

rhashtable_lookup_get_insert_key.exit.i.if.end12_crit_edge: ; preds = %rhashtable_lookup_get_insert_key.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.then6.i:                                       ; preds = %rhashtable_lookup_get_insert_key.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %flags.i = getelementptr inbounds %struct.inet_frag_queue, ptr %call.i.i.i36, i32 0, i32 11
  %152 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %flags.i, align 8
  %154 = or i8 %153, 4
  store i8 %154, ptr %flags.i, align 8
  call void @inet_frag_kill(ptr noundef nonnull %call.i.i.i36) #10
  call void @inet_frag_destroy(ptr noundef nonnull %call.i.i.i36) #10
  br label %if.end6

if.end6:                                          ; preds = %if.then6.i, %rhashtable_lookup.exit.if.end6_crit_edge
  %prev.1 = phi ptr [ %add.ptr.i.i, %rhashtable_lookup.exit.if.end6_crit_edge ], [ %retval.0.i.i.i, %if.then6.i ]
  %cmp.i = icmp ugt ptr %prev.1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end6.if.end12_crit_edge, label %if.then8

if.end6.if.end12_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.then8:                                         ; preds = %if.end6
  %refcnt = getelementptr inbounds %struct.inet_frag_queue, ptr %prev.1, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i) #10
  %call.i.i.i.i.i.i53 = call zeroext i1 @__kasan_check_read(ptr noundef %refcnt, i32 noundef 4) #10
  %155 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load volatile i32, ptr %refcnt, align 4
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, %if.then8
  %157 = phi i32 [ %156, %if.then8 ], [ %asmresult3.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge ]
  %158 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 %157, ptr %old.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %157)
  %tobool.not.i.i.i54 = icmp eq i32 %157, 0
  br i1 %tobool.not.i.i.i54, label %do.body.i.i.i.if.end4.i.i.i_crit_edge, label %do.cond.i.i.i

do.body.i.i.i.if.end4.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4.i.i.i

do.cond.i.i.i:                                    ; preds = %do.body.i.i.i
  %add.i.i.i55 = add i32 %157, 1
  %call.i.i.i.i.i56 = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #10
  %call.i3.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i, i32 noundef 4) #10
  %159 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %old.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #10
  br label %do.body.i.i.i.i.i.i

do.body.i.i.i.i.i.i:                              ; preds = %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i
  %161 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 %160, i32 %add.i.i.i55, ptr elementtype(i32) %refcnt) #10, !srcloc !121
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %161, 0
  %tobool.not.i.i.i.i.i.i57 = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i57, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i, label %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i:       ; preds = %do.body.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i = extractvalue { i32, i32 } %161, 1
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i, %160
  br i1 %cmp.not.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, !prof !108

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4.i.i.i

if.end4.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, %do.body.i.i.i.if.end4.i.i.i_crit_edge
  %162 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %old.i.i.i, align 4
  %add5.i.i.i = add i32 %163, 1
  %164 = or i32 %add5.i.i.i, %163
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %164)
  %.not.i.i.i = icmp sgt i32 %164, -1
  br i1 %.not.i.i.i, label %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge, label %if.then10.i.i.i, !prof !108

if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge: ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %refcount_inc_not_zero.exit

if.then10.i.i.i:                                  ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef %refcnt, i32 noundef 0) #10
  br label %refcount_inc_not_zero.exit

refcount_inc_not_zero.exit:                       ; preds = %if.then10.i.i.i, %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge
  %165 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %old.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %166)
  %tobool12.i.i.i.not = icmp eq i32 %166, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i) #10
  %spec.select = select i1 %tobool12.i.i.i.not, ptr null, ptr %prev.1
  br label %if.end12

if.end12:                                         ; preds = %refcount_inc_not_zero.exit, %if.end6.if.end12_crit_edge, %rhashtable_lookup_get_insert_key.exit.i.if.end12_crit_edge, %if.then4.if.end12_crit_edge
  %fq.1 = phi ptr [ null, %if.end6.if.end12_crit_edge ], [ %spec.select, %refcount_inc_not_zero.exit ], [ null, %if.then4.if.end12_crit_edge ], [ %call.i.i.i36, %rhashtable_lookup_get_insert_key.exit.i.if.end12_crit_edge ]
  %call.i58 = call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i58, label %if.end12.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i61

if.end12.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i61:                                ; preds = %if.end12
  %call1.i59 = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i59)
  %tobool.not.i60 = icmp eq i32 %call1.i59, 0
  br i1 %tobool.not.i60, label %land.lhs.true.i61.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i63

land.lhs.true.i61.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i61
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i63:                               ; preds = %land.lhs.true.i61
  %.b4.i62 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i62, label %land.lhs.true2.i63.rcu_read_unlock.exit_crit_edge, label %if.then.i64

land.lhs.true2.i63.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i63
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i64:                                      ; preds = %land.lhs.true2.i63
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 724, ptr noundef nonnull @.str.17) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i64, %land.lhs.true2.i63.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i61.rcu_read_unlock.exit_crit_edge, %if.end12.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !116
  %167 = call i32 @llvm.read_register.i32(metadata !96) #10
  %and.i.i.i.i.i65 = and i32 %167, -16384
  %168 = inttoptr i32 %and.i.i.i.i.i65 to ptr
  %preempt_count.i.i.i.i66 = getelementptr inbounds %struct.thread_info, ptr %168, i32 0, i32 1
  %169 = ptrtoint ptr %preempt_count.i.i.i.i66 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load volatile i32, ptr %preempt_count.i.i.i.i66, align 4
  %sub.i.i.i = add i32 %170, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i66, align 4
  call void @rcu_read_unlock_strict() #10
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %fq.1, %rcu_read_unlock.exit ], [ null, %lor.lhs.false.cleanup_crit_edge ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @inet_frag_queue_insert(ptr noundef %q, ptr noundef %skb, i32 noundef %offset, i32 noundef %end) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %fragments_tail = getelementptr inbounds %struct.inet_frag_queue, ptr %q, i32 0, i32 6
  %0 = ptrtoint ptr %fragments_tail to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fragments_tail, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %skb to i32
  %3 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %skb, align 8
  %next_frag.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 24
  %4 = ptrtoint ptr %next_frag.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %next_frag.i.i, align 8
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %5 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %len.i.i, align 4
  %frag_run_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 28
  %7 = ptrtoint ptr %frag_run_len.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %frag_run_len.i.i, align 4
  %last_run_head.i = getelementptr inbounds %struct.inet_frag_queue, ptr %q, i32 0, i32 7
  %8 = ptrtoint ptr %last_run_head.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %last_run_head.i, align 8
  %tobool.not.i = icmp eq ptr %9, null
  %rb_fragments.i = getelementptr inbounds %struct.inet_frag_queue, ptr %q, i32 0, i32 5
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %9 to i32
  %rb_fragments.sink.i = select i1 %tobool.not.i, ptr %rb_fragments.i, ptr %rb_right.i
  store i32 %10, ptr %skb, align 4
  %rb_right.i16.i = getelementptr inbounds %struct.rb_node, ptr %skb, i32 0, i32 1
  %11 = ptrtoint ptr %rb_right.i16.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %rb_right.i16.i, align 4
  %rb_left.i17.i = getelementptr inbounds %struct.rb_node, ptr %skb, i32 0, i32 2
  %12 = ptrtoint ptr %rb_left.i17.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %rb_left.i17.i, align 4
  %13 = ptrtoint ptr %rb_fragments.sink.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %skb, ptr %rb_fragments.sink.i, align 4
  tail call void @rb_insert_color(ptr noundef %skb, ptr noundef %rb_fragments.i) #10
  %14 = ptrtoint ptr %fragments_tail to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %skb, ptr %fragments_tail, align 4
  %15 = ptrtoint ptr %last_run_head.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %skb, ptr %last_run_head.i, align 8
  br label %if.end36

if.else:                                          ; preds = %entry
  %16 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 1
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 6
  %19 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %len, align 4
  %add = add i32 %20, %18
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %end)
  %cmp = icmp ult i32 %add, %end
  br i1 %cmp, label %if.then1, label %if.else12

if.then1:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %offset)
  %cmp4 = icmp ugt i32 %add, %offset
  br i1 %cmp4, label %if.then1.cleanup37_crit_edge, label %if.end

if.then1.cleanup37_crit_edge:                     ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup37

if.end:                                           ; preds = %if.then1
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %offset)
  %cmp8 = icmp eq i32 %add, %offset
  %21 = ptrtoint ptr %skb to i32
  %22 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %skb, align 8
  %next_frag.i.i77 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 24
  %23 = ptrtoint ptr %next_frag.i.i77 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %next_frag.i.i77, align 8
  %len.i.i78 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %24 = ptrtoint ptr %len.i.i78 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %len.i.i78, align 4
  %frag_run_len.i.i79 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 28
  %26 = ptrtoint ptr %frag_run_len.i.i79 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %frag_run_len.i.i79, align 4
  %last_run_head.i80 = getelementptr inbounds %struct.inet_frag_queue, ptr %q, i32 0, i32 7
  %27 = ptrtoint ptr %last_run_head.i80 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %last_run_head.i80, align 8
  br i1 %cmp8, label %if.then9, label %if.else10

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %frag_run_len.i = getelementptr inbounds %struct.sk_buff, ptr %28, i32 0, i32 3, i32 28
  %29 = ptrtoint ptr %frag_run_len.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %frag_run_len.i, align 4
  %add.i = add i32 %30, %25
  store i32 %add.i, ptr %frag_run_len.i, align 4
  %31 = ptrtoint ptr %fragments_tail to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %fragments_tail, align 4
  %next_frag.i = getelementptr inbounds %struct.sk_buff, ptr %32, i32 0, i32 3, i32 24
  %33 = ptrtoint ptr %next_frag.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %skb, ptr %next_frag.i, align 8
  store ptr %skb, ptr %fragments_tail, align 4
  br label %if.end36

if.else10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %tobool.not.i86 = icmp eq ptr %28, null
  %rb_fragments.i87 = getelementptr inbounds %struct.inet_frag_queue, ptr %q, i32 0, i32 5
  %rb_right.i88 = getelementptr inbounds %struct.rb_node, ptr %28, i32 0, i32 1
  %34 = ptrtoint ptr %28 to i32
  %rb_fragments.sink.i89 = select i1 %tobool.not.i86, ptr %rb_fragments.i87, ptr %rb_right.i88
  %35 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %skb, align 4
  %rb_right.i16.i90 = getelementptr inbounds %struct.rb_node, ptr %skb, i32 0, i32 1
  %36 = ptrtoint ptr %rb_right.i16.i90 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %rb_right.i16.i90, align 4
  %rb_left.i17.i91 = getelementptr inbounds %struct.rb_node, ptr %skb, i32 0, i32 2
  %37 = ptrtoint ptr %rb_left.i17.i91 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %rb_left.i17.i91, align 4
  %38 = ptrtoint ptr %rb_fragments.sink.i89 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %skb, ptr %rb_fragments.sink.i89, align 4
  tail call void @rb_insert_color(ptr noundef %skb, ptr noundef %rb_fragments.i87) #10
  %39 = ptrtoint ptr %fragments_tail to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %skb, ptr %fragments_tail, align 4
  %40 = ptrtoint ptr %last_run_head.i80 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %skb, ptr %last_run_head.i80, align 8
  br label %if.end36

if.else12:                                        ; preds = %if.else
  %rb_fragments = getelementptr inbounds %struct.inet_frag_queue, ptr %q, i32 0, i32 5
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %if.else12
  %rbn.0 = phi ptr [ %rb_fragments, %if.else12 ], [ %rbn.2.ph, %do.cond.do.body_crit_edge ]
  %41 = ptrtoint ptr %rbn.0 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %rbn.0, align 4
  %43 = getelementptr inbounds %struct.sk_buff, ptr %42, i32 0, i32 1
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %43, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %end)
  %cmp16.not = icmp slt i32 %45, %end
  br i1 %cmp16.not, label %if.else18, label %if.then17

if.then17:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %42, i32 0, i32 2
  br label %do.cond

if.else18:                                        ; preds = %do.body
  %frag_run_len = getelementptr inbounds %struct.sk_buff, ptr %42, i32 0, i32 3, i32 28
  %46 = ptrtoint ptr %frag_run_len to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %frag_run_len, align 4
  %add15 = add i32 %47, %45
  call void @__sanitizer_cov_trace_cmp4(i32 %add15, i32 %offset)
  %cmp19.not = icmp sgt i32 %add15, %offset
  br i1 %cmp19.not, label %cleanup, label %if.then20

if.then20:                                        ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #12
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %42, i32 0, i32 1
  br label %do.cond

cleanup:                                          ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %offset)
  %cmp22.not = icmp sgt i32 %45, %offset
  call void @__sanitizer_cov_trace_cmp4(i32 %add15, i32 %end)
  %cmp23.not = icmp slt i32 %add15, %end
  %or.cond = select i1 %cmp22.not, i1 true, i1 %cmp23.not
  %spec.select76 = select i1 %or.cond, i32 2, i32 1
  br label %cleanup37

do.cond:                                          ; preds = %if.then20, %if.then17
  %rbn.2.ph = phi ptr [ %rb_right, %if.then20 ], [ %rb_left, %if.then17 ]
  %48 = ptrtoint ptr %rbn.2.ph to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %rbn.2.ph, align 4
  %tobool29.not = icmp eq ptr %49, null
  br i1 %tobool29.not, label %do.end, label %do.cond.do.body_crit_edge

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.end:                                           ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #12
  %next_frag.i94 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 24
  %50 = ptrtoint ptr %next_frag.i94 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr null, ptr %next_frag.i94, align 8
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %51 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %len.i, align 4
  %frag_run_len.i95 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 28
  %53 = ptrtoint ptr %frag_run_len.i95 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %frag_run_len.i95, align 4
  %54 = ptrtoint ptr %42 to i32
  %55 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %skb, align 4
  %rb_right.i96 = getelementptr inbounds %struct.rb_node, ptr %skb, i32 0, i32 1
  %56 = ptrtoint ptr %rb_right.i96 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr null, ptr %rb_right.i96, align 4
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %skb, i32 0, i32 2
  %57 = ptrtoint ptr %rb_left.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr null, ptr %rb_left.i, align 4
  %58 = ptrtoint ptr %rbn.2.ph to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %skb, ptr %rbn.2.ph, align 4
  tail call void @rb_insert_color(ptr noundef %skb, ptr noundef %rb_fragments) #10
  br label %if.end36

if.end36:                                         ; preds = %do.end, %if.else10, %if.then9, %if.then
  %59 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %offset, ptr %59, align 4
  br label %cleanup37

cleanup37:                                        ; preds = %if.end36, %cleanup, %if.then1.cleanup37_crit_edge
  %retval.2 = phi i32 [ 0, %if.end36 ], [ 2, %if.then1.cleanup37_crit_edge ], [ %spec.select76, %cleanup ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_insert_color(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @inet_frag_reasm_prepare(ptr noundef %q, ptr noundef %skb, ptr nocapture noundef writeonly %parent) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %rb_fragments = getelementptr inbounds %struct.inet_frag_queue, ptr %q, i32 0, i32 5
  %call = tail call ptr @rb_first(ptr noundef %rb_fragments) #10
  %cmp.not = icmp eq ptr %call, %skb
  br i1 %cmp.not, label %entry.if.end27_crit_edge, label %if.then

entry.if.end27_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.then:                                          ; preds = %entry
  %call2 = tail call ptr @skb_clone(ptr noundef %skb, i32 noundef 2592) #10
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.then.cleanup93_crit_edge, label %if.end

if.then.cleanup93_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup93

if.end:                                           ; preds = %if.then
  %next_frag = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 24
  %0 = ptrtoint ptr %next_frag to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %next_frag, align 8
  %next_frag7 = getelementptr inbounds %struct.sk_buff, ptr %call2, i32 0, i32 3, i32 24
  %2 = ptrtoint ptr %next_frag7 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %next_frag7, align 8
  %3 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %skb, align 8
  %5 = ptrtoint ptr %skb to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %5)
  %cmp8 = icmp eq i32 %4, %5
  br i1 %cmp8, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %next_frag12 = getelementptr inbounds %struct.sk_buff, ptr %parent, i32 0, i32 3, i32 24
  %6 = ptrtoint ptr %next_frag12 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call2, ptr %next_frag12, align 8
  br label %if.end14

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @rb_replace_node(ptr noundef %skb, ptr noundef nonnull %call2, ptr noundef %rb_fragments) #10
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then9
  %fragments_tail = getelementptr inbounds %struct.inet_frag_queue, ptr %q, i32 0, i32 6
  %7 = ptrtoint ptr %fragments_tail to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fragments_tail, align 4
  %cmp15 = icmp eq ptr %8, %skb
  br i1 %cmp15, label %if.then16, label %if.end14.if.end18_crit_edge

if.end14.if.end18_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

if.then16:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %fragments_tail to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call2, ptr %fragments_tail, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.end14.if.end18_crit_edge
  %call19 = tail call ptr @skb_morph(ptr noundef %skb, ptr noundef %call) #10
  %next_frag22 = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 3, i32 24
  %10 = ptrtoint ptr %next_frag22 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %next_frag22, align 8
  %12 = ptrtoint ptr %next_frag to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %next_frag, align 8
  tail call void @rb_replace_node(ptr noundef %call, ptr noundef %skb, ptr noundef %rb_fragments) #10
  tail call void @consume_skb(ptr noundef %call) #10
  br label %if.end27

if.end27:                                         ; preds = %if.end18, %entry.if.end27_crit_edge
  %13 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp28.not = icmp eq i32 %15, 0
  br i1 %cmp28.not, label %if.end27.if.end43_crit_edge, label %do.end, !prof !108

if.end27.if.end43_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end43

do.end:                                           ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 467, i32 noundef 9, ptr noundef null) #10
  br label %if.end43

if.end43:                                         ; preds = %do.end, %if.end27.if.end43_crit_edge
  %truesize = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 20
  %16 = ptrtoint ptr %truesize to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %truesize, align 8
  %cloned.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %18 = ptrtoint ptr %cloned.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load.i.i = load i8, ptr %cloned.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool.not.i.i = icmp sgt i8 %bf.load.i.i, -1
  br i1 %tobool.not.i.i, label %if.end43.if.end54_crit_edge, label %skb_cloned.exit.i

if.end43.if.end54_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end54

skb_cloned.exit.i:                                ; preds = %if.end43
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %19 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %end.i.i.i, align 4
  %dataref.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %20, i32 0, i32 10
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dataref.i.i, i32 noundef 4) #10
  %21 = ptrtoint ptr %dataref.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %dataref.i.i, align 4
  %and.i.i = and i32 %22, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i.i)
  %cmp.i.not.i = icmp eq i32 %and.i.i, 1
  br i1 %cmp.i.not.i, label %skb_cloned.exit.i.if.end54_crit_edge, label %skb_unclone.exit

skb_cloned.exit.i.if.end54_crit_edge:             ; preds = %skb_cloned.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end54

skb_unclone.exit:                                 ; preds = %skb_cloned.exit.i
  %call7.i = tail call i32 @pskb_expand_head(ptr noundef %skb, i32 noundef 0, i32 noundef 0, i32 noundef 2592) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool52.not = icmp eq i32 %call7.i, 0
  br i1 %tobool52.not, label %skb_unclone.exit.if.end54_crit_edge, label %skb_unclone.exit.cleanup93_crit_edge

skb_unclone.exit.cleanup93_crit_edge:             ; preds = %skb_unclone.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup93

skb_unclone.exit.if.end54_crit_edge:              ; preds = %skb_unclone.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end54

if.end54:                                         ; preds = %skb_unclone.exit.if.end54_crit_edge, %skb_cloned.exit.i.if.end54_crit_edge, %if.end43.if.end54_crit_edge
  %23 = ptrtoint ptr %truesize to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %truesize, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %17)
  %tobool56.not = icmp eq i32 %24, %17
  br i1 %tobool56.not, label %if.end54.if.end58_crit_edge, label %if.then57

if.end54.if.end58_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end58

if.then57:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #12
  %add = sub i32 %24, %17
  %fqdir = getelementptr inbounds %struct.inet_frag_queue, ptr %q, i32 0, i32 13
  %25 = ptrtoint ptr %fqdir to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %fqdir, align 4
  %mem.i = getelementptr inbounds %struct.fqdir, ptr %26, i32 0, i32 10
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %mem.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %mem.i, i32 1, i32 3, i32 1) #10
  %27 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %mem.i, ptr %mem.i, i32 %add, ptr elementtype(i32) %mem.i) #10, !srcloc !119
  br label %if.end58

if.end58:                                         ; preds = %if.then57, %if.end54.if.end58_crit_edge
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %28 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %end.i.i, align 4
  %frag_list.i = getelementptr inbounds %struct.skb_shared_info, ptr %29, i32 0, i32 6
  %30 = ptrtoint ptr %frag_list.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %frag_list.i, align 8
  %cmp.i.not = icmp eq ptr %31, null
  br i1 %cmp.i.not, label %if.end58.cleanup93_crit_edge, label %if.then60

if.end58.cleanup93_crit_edge:                     ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup93

if.then60:                                        ; preds = %if.end58
  %call.i = tail call ptr @__alloc_skb(i32 noundef 0, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #10
  %tobool62.not = icmp eq ptr %call.i, null
  br i1 %tobool62.not, label %if.then60.cleanup93_crit_edge, label %if.end64

if.then60.cleanup93_crit_edge:                    ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup93

if.end64:                                         ; preds = %if.then60
  %32 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %end.i.i, align 4
  %frag_list = getelementptr inbounds %struct.skb_shared_info, ptr %33, i32 0, i32 6
  %34 = ptrtoint ptr %frag_list to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %frag_list, align 8
  %end.i153 = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 17
  %36 = ptrtoint ptr %end.i153 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %end.i153, align 4
  %frag_list67 = getelementptr inbounds %struct.skb_shared_info, ptr %37, i32 0, i32 6
  %38 = ptrtoint ptr %frag_list67 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %35, ptr %frag_list67, align 8
  %39 = load ptr, ptr %end.i.i, align 4
  %frag_list.i155 = getelementptr inbounds %struct.skb_shared_info, ptr %39, i32 0, i32 6
  %40 = ptrtoint ptr %frag_list.i155 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %frag_list.i155, align 8
  %41 = load ptr, ptr %end.i.i, align 4
  %nr_frags = getelementptr inbounds %struct.skb_shared_info, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %nr_frags to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %nr_frags, align 2
  %conv = zext i8 %43 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %cmp69165.not = icmp eq i8 %43, 0
  br i1 %cmp69165.not, label %if.end64.cleanup_crit_edge, label %if.end64.for.body_crit_edge

if.end64.for.body_crit_edge:                      ; preds = %if.end64
  br label %for.body

if.end64.cleanup_crit_edge:                       ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end64.for.body_crit_edge
  %plen.0167 = phi i32 [ %add73, %for.body.for.body_crit_edge ], [ 0, %if.end64.for.body_crit_edge ]
  %i.0166 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end64.for.body_crit_edge ]
  %bv_len.i = getelementptr %struct.skb_shared_info, ptr %41, i32 0, i32 12, i32 %i.0166, i32 1
  %44 = ptrtoint ptr %bv_len.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %bv_len.i, align 4
  %add73 = add i32 %45, %plen.0167
  %inc = add nuw nsw i32 %i.0166, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %if.end64.cleanup_crit_edge
  %plen.0.lcssa = phi i32 [ 0, %if.end64.cleanup_crit_edge ], [ %add73, %for.body.cleanup_crit_edge ]
  %data_len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %46 = ptrtoint ptr %data_len to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %data_len, align 8
  %sub74 = sub i32 %47, %plen.0.lcssa
  %data_len75 = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 7
  %48 = ptrtoint ptr %data_len75 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %sub74, ptr %data_len75, align 8
  %len = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 6
  %49 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %sub74, ptr %len, align 4
  %truesize77 = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 20
  %50 = ptrtoint ptr %truesize77 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %truesize77, align 8
  %52 = ptrtoint ptr %truesize to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %truesize, align 8
  %add79 = add i32 %53, %51
  store i32 %add79, ptr %truesize, align 8
  %54 = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15, i32 0, i32 5
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %54, align 8
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %56 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %56)
  %bf.load = load i16, ptr %ip_summed, align 8
  %ip_summed80 = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15
  %57 = and i16 %bf.load, 1536
  %58 = ptrtoint ptr %ip_summed80 to i32
  call void @__asan_load2_noabort(i32 %58)
  %bf.load81 = load i16, ptr %ip_summed80, align 8
  %bf.clear82 = and i16 %bf.load81, -1537
  %bf.set = or i16 %bf.clear82, %57
  store i16 %bf.set, ptr %ip_summed80, align 8
  %fqdir83 = getelementptr inbounds %struct.inet_frag_queue, ptr %q, i32 0, i32 13
  %59 = ptrtoint ptr %fqdir83 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %fqdir83, align 4
  %61 = load i32, ptr %truesize77, align 8
  %mem.i158 = getelementptr inbounds %struct.fqdir, ptr %60, i32 0, i32 10
  %call.i.i.i159 = tail call zeroext i1 @__kasan_check_write(ptr noundef %mem.i158, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %mem.i158, i32 1, i32 3, i32 1) #10
  %62 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %mem.i158, ptr %mem.i158, i32 %61, ptr elementtype(i32) %mem.i158) #10, !srcloc !119
  %63 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %end.i.i, align 4
  %frag_list86 = getelementptr inbounds %struct.skb_shared_info, ptr %64, i32 0, i32 6
  %65 = ptrtoint ptr %frag_list86 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %call.i, ptr %frag_list86, align 8
  br label %cleanup93

cleanup93:                                        ; preds = %cleanup, %if.then60.cleanup93_crit_edge, %if.end58.cleanup93_crit_edge, %skb_unclone.exit.cleanup93_crit_edge, %if.then.cleanup93_crit_edge
  %retval.1 = phi ptr [ null, %if.then.cleanup93_crit_edge ], [ null, %skb_unclone.exit.cleanup93_crit_edge ], [ null, %if.then60.cleanup93_crit_edge ], [ %call.i, %cleanup ], [ %frag_list.i, %if.end58.cleanup93_crit_edge ]
  ret ptr %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_clone(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_replace_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_morph(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @inet_frag_reasm_finish(ptr noundef %q, ptr noundef %head, ptr nocapture noundef writeonly %reasm_data, i1 noundef zeroext %try_coalesce) #0 align 64 {
entry:
  %stolen = alloca i8, align 1
  %delta = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %head, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %head, i32 0, i32 18
  %2 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %head.i, align 8
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %head, i32 0, i32 15, i32 0, i32 20
  %4 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %network_header.i, align 4
  %conv.i100 = zext i16 %5 to i32
  %add.ptr.i = getelementptr i8, ptr %3, i32 %conv.i100
  %sub.ptr.lhs.cast = ptrtoint ptr %1 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %add.ptr.i to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call1 = tail call ptr @skb_push(ptr noundef %head, i32 noundef %sub.ptr.sub) #10
  %next_frag = getelementptr inbounds %struct.sk_buff, ptr %head, i32 0, i32 3, i32 24
  %6 = ptrtoint ptr %next_frag to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %next_frag, align 8
  %call2 = tail call ptr @rb_next(ptr noundef %head) #10
  %rb_fragments = getelementptr inbounds %struct.inet_frag_queue, ptr %q, i32 0, i32 5
  tail call void @rb_erase(ptr noundef %head, ptr noundef %rb_fragments) #10
  %truesize = getelementptr inbounds %struct.sk_buff, ptr %head, i32 0, i32 20
  %8 = ptrtoint ptr %truesize to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %truesize, align 8
  %tobool.not108 = icmp eq ptr %call2, null
  %tobool3.not109 = icmp eq ptr %7, null
  %or.cond110 = select i1 %tobool.not108, i1 %tobool3.not109, i1 false
  br i1 %or.cond110, label %entry.while.end55_crit_edge, label %while.cond4.preheader.lr.ph

entry.while.end55_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end55

while.cond4.preheader.lr.ph:                      ; preds = %entry
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %head, i32 0, i32 15
  %10 = getelementptr inbounds %struct.sk_buff, ptr %head, i32 0, i32 15, i32 0, i32 5
  %data_len = getelementptr inbounds %struct.sk_buff, ptr %head, i32 0, i32 7
  %len42 = getelementptr inbounds %struct.sk_buff, ptr %head, i32 0, i32 6
  br label %while.cond4.preheader

while.cond4.preheader:                            ; preds = %if.end54.while.cond4.preheader_crit_edge, %while.cond4.preheader.lr.ph
  %tobool.not115 = phi i1 [ %tobool.not108, %while.cond4.preheader.lr.ph ], [ %tobool.not, %if.end54.while.cond4.preheader_crit_edge ]
  %nextp.0114 = phi ptr [ %reasm_data, %while.cond4.preheader.lr.ph ], [ %nextp.1.lcssa, %if.end54.while.cond4.preheader_crit_edge ]
  %rbn.0113 = phi ptr [ %call2, %while.cond4.preheader.lr.ph ], [ %rbn.1, %if.end54.while.cond4.preheader_crit_edge ]
  %fp.0112 = phi ptr [ %7, %while.cond4.preheader.lr.ph ], [ %rbn.0113, %if.end54.while.cond4.preheader_crit_edge ]
  %sum_truesize.0111 = phi i32 [ %9, %while.cond4.preheader.lr.ph ], [ %sum_truesize.1.lcssa, %if.end54.while.cond4.preheader_crit_edge ]
  %tobool5.not101 = icmp eq ptr %fp.0112, null
  br i1 %tobool5.not101, label %while.cond4.preheader.while.end_crit_edge, label %while.cond4.preheader.while.body6_crit_edge

while.cond4.preheader.while.body6_crit_edge:      ; preds = %while.cond4.preheader
  br label %while.body6

while.cond4.preheader.while.end_crit_edge:        ; preds = %while.cond4.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body6:                                      ; preds = %if.end47.while.body6_crit_edge, %while.cond4.preheader.while.body6_crit_edge
  %nextp.1106 = phi ptr [ %nextp.2, %if.end47.while.body6_crit_edge ], [ %nextp.0114, %while.cond4.preheader.while.body6_crit_edge ]
  %fp.1103 = phi ptr [ %12, %if.end47.while.body6_crit_edge ], [ %fp.0112, %while.cond4.preheader.while.body6_crit_edge ]
  %sum_truesize.1102 = phi i32 [ %add, %if.end47.while.body6_crit_edge ], [ %sum_truesize.0111, %while.cond4.preheader.while.body6_crit_edge ]
  %next_frag10 = getelementptr inbounds %struct.sk_buff, ptr %fp.1103, i32 0, i32 3, i32 24
  %11 = ptrtoint ptr %next_frag10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %next_frag10, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stolen) #10
  %13 = ptrtoint ptr %stolen to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 -1, ptr %stolen, align 1, !annotation !122
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %delta) #10
  %14 = ptrtoint ptr %delta to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %delta, align 4, !annotation !122
  %truesize11 = getelementptr inbounds %struct.sk_buff, ptr %fp.1103, i32 0, i32 20
  %15 = ptrtoint ptr %truesize11 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %truesize11, align 8
  %add = add i32 %16, %sum_truesize.1102
  %17 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %17)
  %bf.load = load i16, ptr %ip_summed, align 8
  %bf.lshr = lshr i16 %bf.load, 9
  %18 = and i16 %bf.lshr, 3
  %ip_summed12 = getelementptr inbounds %struct.sk_buff, ptr %fp.1103, i32 0, i32 15
  %19 = ptrtoint ptr %ip_summed12 to i32
  call void @__asan_load2_noabort(i32 %19)
  %bf.load13 = load i16, ptr %ip_summed12, align 8
  %bf.lshr14 = lshr i16 %bf.load13, 9
  %20 = and i16 %bf.lshr14, 3
  call void @__sanitizer_cov_trace_cmp2(i16 %18, i16 %20)
  %cmp.not = icmp eq i16 %18, %20
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %while.body6
  call void @__sanitizer_cov_trace_pc() #12
  %bf.clear21 = and i16 %bf.load, -1537
  %21 = ptrtoint ptr %ip_summed to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %bf.clear21, ptr %ip_summed, align 8
  br label %if.end32

if.else:                                          ; preds = %while.body6
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %18)
  %cmp28 = icmp eq i16 %18, 2
  br i1 %cmp28, label %if.then30, label %if.else.if.end32_crit_edge

if.else.if.end32_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

if.then30:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %10, align 8
  %24 = getelementptr inbounds %struct.sk_buff, ptr %fp.1103, i32 0, i32 15, i32 0, i32 5
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %24, align 8
  %add.i = add i32 %26, %23
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %26)
  %cmp.i = icmp ult i32 %add.i, %26
  %conv.i = zext i1 %cmp.i to i32
  %add1.i = add i32 %add.i, %conv.i
  %27 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %add1.i, ptr %10, align 8
  br label %if.end32

if.end32:                                         ; preds = %if.then30, %if.else.if.end32_crit_edge, %if.then
  br i1 %try_coalesce, label %land.lhs.true, label %if.end32.if.else39_crit_edge

if.end32.if.else39_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else39

land.lhs.true:                                    ; preds = %if.end32
  %call35 = call zeroext i1 @skb_try_coalesce(ptr noundef %head, ptr noundef nonnull %fp.1103, ptr noundef nonnull %stolen, ptr noundef nonnull %delta) #10
  br i1 %call35, label %if.then37, label %land.lhs.true.if.else39_crit_edge

land.lhs.true.if.else39_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else39

if.then37:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %stolen to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %stolen, align 1, !range !113
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool38 = icmp ne i8 %29, 0
  call void @kfree_skb_partial(ptr noundef nonnull %fp.1103, i1 noundef zeroext %tobool38) #10
  br label %if.end47

if.else39:                                        ; preds = %land.lhs.true.if.else39_crit_edge, %if.end32.if.else39_crit_edge
  %len = getelementptr inbounds %struct.sk_buff, ptr %fp.1103, i32 0, i32 6
  %30 = call ptr @memset(ptr %fp.1103, i32 0, i32 16)
  %31 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %len, align 4
  %33 = ptrtoint ptr %data_len to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %data_len, align 8
  %add40 = add i32 %34, %32
  store i32 %add40, ptr %data_len, align 8
  %35 = load i32, ptr %len, align 4
  %36 = ptrtoint ptr %len42 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %len42, align 4
  %add43 = add i32 %37, %35
  store i32 %add43, ptr %len42, align 4
  %38 = ptrtoint ptr %truesize11 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %truesize11, align 8
  %40 = ptrtoint ptr %truesize to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %truesize, align 8
  %add46 = add i32 %41, %39
  store i32 %add46, ptr %truesize, align 8
  %42 = ptrtoint ptr %nextp.1106 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %fp.1103, ptr %nextp.1106, align 4
  br label %if.end47

if.end47:                                         ; preds = %if.else39, %if.then37
  %nextp.2 = phi ptr [ %nextp.1106, %if.then37 ], [ %fp.1103, %if.else39 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %delta) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stolen) #10
  %tobool5.not = icmp eq ptr %12, null
  br i1 %tobool5.not, label %if.end47.while.end_crit_edge, label %if.end47.while.body6_crit_edge

if.end47.while.body6_crit_edge:                   ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body6

if.end47.while.end_crit_edge:                     ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %if.end47.while.end_crit_edge, %while.cond4.preheader.while.end_crit_edge
  %sum_truesize.1.lcssa = phi i32 [ %sum_truesize.0111, %while.cond4.preheader.while.end_crit_edge ], [ %add, %if.end47.while.end_crit_edge ]
  %nextp.1.lcssa = phi ptr [ %nextp.0114, %while.cond4.preheader.while.end_crit_edge ], [ %nextp.2, %if.end47.while.end_crit_edge ]
  br i1 %tobool.not115, label %while.end.if.end54_crit_edge, label %if.then49

while.end.if.end54_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end54

if.then49:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  %call50 = call ptr @rb_next(ptr noundef nonnull %rbn.0113) #10
  call void @rb_erase(ptr noundef nonnull %rbn.0113, ptr noundef %rb_fragments) #10
  br label %if.end54

if.end54:                                         ; preds = %if.then49, %while.end.if.end54_crit_edge
  %rbn.1 = phi ptr [ %call50, %if.then49 ], [ null, %while.end.if.end54_crit_edge ]
  %tobool.not = icmp eq ptr %rbn.1, null
  %tobool3.not = icmp eq ptr %rbn.0113, null
  %or.cond = select i1 %tobool.not, i1 %tobool3.not, i1 false
  br i1 %or.cond, label %if.end54.while.end55_crit_edge, label %if.end54.while.cond4.preheader_crit_edge

if.end54.while.cond4.preheader_crit_edge:         ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond4.preheader

if.end54.while.end55_crit_edge:                   ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end55

while.end55:                                      ; preds = %if.end54.while.end55_crit_edge, %entry.while.end55_crit_edge
  %sum_truesize.0.lcssa = phi i32 [ %9, %entry.while.end55_crit_edge ], [ %sum_truesize.1.lcssa, %if.end54.while.end55_crit_edge ]
  %nextp.0.lcssa = phi ptr [ %reasm_data, %entry.while.end55_crit_edge ], [ %nextp.1.lcssa, %if.end54.while.end55_crit_edge ]
  %fqdir = getelementptr inbounds %struct.inet_frag_queue, ptr %q, i32 0, i32 13
  %43 = ptrtoint ptr %fqdir to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %fqdir, align 4
  %mem.i = getelementptr inbounds %struct.fqdir, ptr %44, i32 0, i32 10
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %mem.i, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr %mem.i, i32 1, i32 3, i32 1) #10
  %45 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %mem.i, ptr %mem.i, i32 %sum_truesize.0.lcssa, ptr elementtype(i32) %mem.i) #10, !srcloc !115
  %46 = ptrtoint ptr %nextp.0.lcssa to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %nextp.0.lcssa, align 4
  %47 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr null, ptr %head, align 8
  %prev56 = getelementptr inbounds %struct.anon.5, ptr %head, i32 0, i32 1
  %48 = ptrtoint ptr %prev56 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr null, ptr %prev56, align 4
  %stamp = getelementptr inbounds %struct.inet_frag_queue, ptr %q, i32 0, i32 8
  %49 = ptrtoint ptr %stamp to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %stamp, align 8
  %51 = getelementptr inbounds %struct.sk_buff, ptr %head, i32 0, i32 2
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 %50, ptr %51, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @skb_try_coalesce(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_partial(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @inet_frag_pull_head(ptr noundef %q) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %rb_fragments = getelementptr inbounds %struct.inet_frag_queue, ptr %q, i32 0, i32 5
  %call = tail call ptr @rb_first(ptr noundef %rb_fragments) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %next_frag = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 3, i32 24
  %0 = ptrtoint ptr %next_frag to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %next_frag, align 8
  %tobool3.not = icmp eq ptr %1, null
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @rb_replace_node(ptr noundef nonnull %call, ptr noundef nonnull %1, ptr noundef %rb_fragments) #10
  br label %if.end7

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @rb_erase(ptr noundef nonnull %call, ptr noundef %rb_fragments) #10
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then4
  %2 = call ptr @memset(ptr %call, i32 0, i32 12)
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !123
  %fragments_tail = getelementptr inbounds %struct.inet_frag_queue, ptr %q, i32 0, i32 6
  %3 = ptrtoint ptr %fragments_tail to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fragments_tail, align 4
  %cmp = icmp eq ptr %call, %4
  br i1 %cmp, label %if.then8, label %if.end7.if.end10_crit_edge

if.end7.if.end10_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.then8:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %fragments_tail to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %fragments_tail, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end7.if.end10_crit_edge
  %fqdir = getelementptr inbounds %struct.inet_frag_queue, ptr %q, i32 0, i32 13
  %6 = ptrtoint ptr %fqdir to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fqdir, align 4
  %truesize = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 20
  %8 = ptrtoint ptr %truesize to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %truesize, align 8
  %mem.i = getelementptr inbounds %struct.fqdir, ptr %7, i32 0, i32 10
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %mem.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %mem.i, i32 1, i32 3, i32 1) #10
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %mem.i, ptr %mem.i, i32 %9, ptr elementtype(i32) %mem.i) #10, !srcloc !115
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %entry.cleanup_crit_edge
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #1

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rhashtable_free_and_destroy(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @inet_frags_free_cb(ptr noundef %ptr, ptr nocapture noundef readnone %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %timer = getelementptr inbounds %struct.inet_frag_queue, ptr %ptr, i32 0, i32 2
  %call = tail call i32 @del_timer_sync(ptr noundef %timer) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp ne i32 %call, 0
  %lock = getelementptr inbounds %struct.inet_frag_queue, ptr %ptr, i32 0, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #10
  %flags = getelementptr inbounds %struct.inet_frag_queue, ptr %ptr, i32 0, i32 11
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %flags, align 8
  %conv = zext i8 %1 to i32
  %and = and i32 %conv, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %or = or i8 %1, 4
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %or, ptr %flags, align 8
  %inc = select i1 %tobool.not, i32 2, i32 1
  br label %if.end11

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %cond = zext i1 %tobool.not to i32
  %and7 = and i32 %conv, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  %inc10 = select i1 %tobool.not, i32 2, i32 1
  %spec.select = select i1 %tobool8.not, i32 %cond, i32 %inc10
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.then
  %count.0 = phi i32 [ %inc, %if.then ], [ %spec.select, %if.else ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #10
  %refcnt = getelementptr inbounds %struct.inet_frag_queue, ptr %ptr, i32 0, i32 4
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !106
  tail call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #10
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 %count.0, ptr elementtype(i32) %refcnt) #10, !srcloc !107
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %asmresult.i.i.i.i.i, i32 %count.0)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, %count.0
  br i1 %cmp.i.i, label %if.then14, label %if.end5.i.i

if.end5.i.i:                                      ; preds = %if.end11
  %sub.i.i = sub i32 %asmresult.i.i.i.i.i, %count.0
  %4 = or i32 %sub.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %.not.i.i = icmp sgt i32 %4, -1
  br i1 %.not.i.i, label %if.end5.i.i.if.end15_crit_edge, label %if.then10.i.i, !prof !108

if.end5.i.i.if.end15_crit_edge:                   ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.then10.i.i:                                    ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %refcnt, i32 noundef 3) #10
  br label %if.end15

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !109
  tail call void @inet_frag_destroy(ptr noundef %ptr)
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.then10.i.i, %if.end5.i.i.if.end15_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @llist_add_batch(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fqdir_free_fn(ptr nocapture noundef readnone %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @fqdir_free_list, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !124
  tail call void @llvm.prefetch.p0(ptr nonnull @fqdir_free_list, i32 1, i32 3, i32 1) #10
  %0 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr nonnull @fqdir_free_list) #10, !srcloc !125
  %asmresult.i.i = extractvalue { i32, i32 } %0, 0
  %1 = inttoptr i32 %asmresult.i.i to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !126
  tail call void @rcu_barrier() #10
  %fqdir.011 = getelementptr i8, ptr %1, i32 -432
  %cmp.not12 = icmp eq ptr %fqdir.011, inttoptr (i32 -432 to ptr)
  br i1 %cmp.not12, label %entry.for.end_crit_edge, label %entry.land.rhs_crit_edge

entry.land.rhs_crit_edge:                         ; preds = %entry
  br label %land.rhs

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

land.rhs:                                         ; preds = %if.end.land.rhs_crit_edge, %entry.land.rhs_crit_edge
  %fqdir.014 = phi ptr [ %fqdir.0, %if.end.land.rhs_crit_edge ], [ %fqdir.011, %entry.land.rhs_crit_edge ]
  %call.pn13 = phi ptr [ %3, %if.end.land.rhs_crit_edge ], [ %1, %entry.land.rhs_crit_edge ]
  %2 = ptrtoint ptr %call.pn13 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %call.pn13, align 16
  %f5 = getelementptr i8, ptr %call.pn13, i32 -416
  %4 = ptrtoint ptr %f5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %f5, align 16
  %refcnt = getelementptr inbounds %struct.inet_frags, ptr %5, i32 0, i32 7
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !106
  tail call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #10
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 1, ptr elementtype(i32) %refcnt) #10, !srcloc !107
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.if.end_crit_edge, label %if.then10.i.i.i, !prof !108

if.end5.i.i.i.if.end_crit_edge:                   ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %refcnt, i32 noundef 3) #10
  br label %if.end

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !109
  %completion = getelementptr inbounds %struct.inet_frags, ptr %5, i32 0, i32 8
  tail call void @complete(ptr noundef %completion) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %if.then10.i.i.i, %if.end5.i.i.i.if.end_crit_edge
  tail call void @kfree(ptr noundef %fqdir.014) #10
  %fqdir.0 = getelementptr i8, ptr %3, i32 -432
  %cmp.not = icmp eq ptr %fqdir.0, inttoptr (i32 -432 to ptr)
  br i1 %cmp.not, label %if.end.for.end_crit_edge, label %if.end.land.rhs_crit_edge

if.end.land.rhs_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_barrier() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lockdep_rht_mutex_is_held(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rht_lock(ptr noundef %tbl, ptr noundef %bkt) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @local_bh_disable()
  %0 = tail call i32 @llvm.read_register.i32(metadata !96) #10
  %and.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %3, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !127
  br label %while.cond.i

while.cond.i:                                     ; preds = %do.body14.i, %entry
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %bkt, i32 noundef 4) #10
  %4 = ptrtoint ptr %bkt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %bkt, align 4
  %and.i.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %test_and_set_bit_lock.exit.i, label %while.cond.i.do.body2.i_crit_edge, !prof !128

while.cond.i.do.body2.i_crit_edge:                ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body2.i

test_and_set_bit_lock.exit.i:                     ; preds = %while.cond.i
  tail call void @llvm.prefetch.p0(ptr %bkt, i32 1, i32 3, i32 1) #10
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %bkt, ptr %bkt, i32 1, ptr elementtype(i32) %bkt) #10, !srcloc !129
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !130
  %and1.i.i.i = and i32 %asmresult.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %phi.cmp.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %phi.cmp.i.not.i, label %__here, label %test_and_set_bit_lock.exit.i.do.body2.i_crit_edge, !prof !108

test_and_set_bit_lock.exit.i.do.body2.i_crit_edge: ; preds = %test_and_set_bit_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body2.i

do.body2.i:                                       ; preds = %test_and_set_bit_lock.exit.i.do.body2.i_crit_edge, %while.cond.i.do.body2.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !131
  %7 = tail call i32 @llvm.read_register.i32(metadata !96) #10
  %and.i.i.i1.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i1.i to ptr
  %preempt_count.i.i2.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i2.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i2.i, align 4
  %sub.i.i = add i32 %10, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i2.i, align 4
  br label %do.body4.i

do.body4.i:                                       ; preds = %do.body4.i.do.body4.i_crit_edge, %do.body2.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !132
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !133
  %11 = ptrtoint ptr %bkt to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %bkt, align 4
  %and1.i.i = and i32 %12, 1
  %tobool12.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool12.not.i, label %do.body14.i, label %do.body4.i.do.body4.i_crit_edge

do.body4.i.do.body4.i_crit_edge:                  ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body4.i

do.body14.i:                                      ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #12
  %13 = tail call i32 @llvm.read_register.i32(metadata !96) #10
  %and.i.i.i3.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i3.i to ptr
  %preempt_count.i.i4.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i4.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i4.i, align 4
  %add.i5.i = add i32 %16, 1
  store volatile i32 %add.i5.i, ptr %preempt_count.i.i4.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !134
  br label %while.cond.i

__here:                                           ; preds = %test_and_set_bit_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %dep_map = getelementptr inbounds %struct.bucket_table, ptr %tbl, i32 0, i32 6
  tail call void @lock_acquire(ptr noundef %dep_map, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rht_lock, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lockdep_rht_bucket_is_held(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rht_unlock(ptr noundef %tbl, ptr noundef %bkt) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  %dep_map = getelementptr inbounds %struct.bucket_table, ptr %tbl, i32 0, i32 6
  tail call void @lock_release(ptr noundef %dep_map, i32 noundef ptrtoint (ptr blockaddress(@rht_unlock, %__here) to i32)) #10
  %0 = ptrtoint ptr %bkt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %bkt, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %do.body4.i, label %bit_spin_unlock.exit, !prof !111

do.body4.i:                                       ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/bit_spinlock.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 60, 0\0A.popsection", ""() #10, !srcloc !135
  unreachable

bit_spin_unlock.exit:                             ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %bkt, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !136
  tail call void @llvm.prefetch.p0(ptr %bkt, i32 1, i32 3, i32 1) #10
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %bkt, ptr %bkt, i32 1, ptr elementtype(i32) %bkt) #10, !srcloc !137
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !138
  %3 = tail call i32 @llvm.read_register.i32(metadata !96) #10
  %and.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %6, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  tail call fastcc void @local_bh_enable()
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rht_assign_unlock(ptr noundef %tbl, ptr noundef %bkt, ptr noundef %obj) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %0 = ptrtoint ptr %obj to i32
  %and.i = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  %spec.select = select i1 %tobool.i.not, ptr %obj, ptr null
  %dep_map = getelementptr inbounds %struct.bucket_table, ptr %tbl, i32 0, i32 6
  tail call void @lock_release(ptr noundef %dep_map, i32 noundef ptrtoint (ptr blockaddress(@rht_assign_unlock, %__here) to i32)) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !139
  %1 = ptrtoint ptr %bkt to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %spec.select, ptr %bkt, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !140
  %2 = tail call i32 @llvm.read_register.i32(metadata !96) #10
  %and.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i, align 4
  %sub.i = add i32 %5, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i, align 4
  tail call fastcc void @local_bh_enable()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__rht_bucket_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rht_bucket_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rhashtable_insert_slow(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rht_bucket_nested_insert(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_expand_head(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold noreturn null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind readonly }
attributes #9 = { argmemonly nofree nounwind readonly willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { cold noreturn nounwind }
attributes #15 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !40, !42, !43, !45, !47, !49, !50, !52, !53, !54, !56, !57, !58, !60, !62, !63, !65, !67, !69, !71, !73, !75, !76, !78, !80, !82, !84, !85, !87, !88, !90, !92, !94}
!llvm.named.register.sp = !{!96}
!llvm.module.flags = !{!97, !98, !99, !100, !101, !102, !103, !104}
!llvm.ident = !{!105}

!0 = !{ptr @ip_frag_ecn_table, !1, !"ip_frag_ecn_table", i1 false, i1 false}
!1 = !{!"../net/ipv4/inet_fragment.c", i32 85, i32 10}
!2 = !{ptr @__ksymtab_ip_frag_ecn_table, !3, !"__ksymtab_ip_frag_ecn_table", i1 false, i1 false}
!3 = !{!"../net/ipv4/inet_fragment.c", i32 100, i32 1}
!4 = !{ptr @__ksymtab_inet_frags_init, !5, !"__ksymtab_inet_frags_init", i1 false, i1 false}
!5 = !{!"../net/ipv4/inet_fragment.c", i32 113, i32 1}
!6 = !{ptr @__ksymtab_inet_frags_fini, !7, !"__ksymtab_inet_frags_fini", i1 false, i1 false}
!7 = !{!"../net/ipv4/inet_fragment.c", i32 125, i32 1}
!8 = !{ptr @__ksymtab_fqdir_init, !9, !"__ksymtab_fqdir_init", i1 false, i1 false}
!9 = !{!"../net/ipv4/inet_fragment.c", i32 204, i32 1}
!10 = !{ptr @__initcall__kmod_inet_fragment__539_216_inet_frag_wq_init0, !11, !"__initcall__kmod_inet_fragment__539_216_inet_frag_wq_init0", i1 false, i1 false}
!11 = !{!"../net/ipv4/inet_fragment.c", i32 216, i32 1}
!12 = !{ptr @fqdir_exit.__key, !13, !"__key", i1 false, i1 false}
!13 = !{!"../net/ipv4/inet_fragment.c", i32 220, i32 2}
!14 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @__ksymtab_fqdir_exit, !16, !"__ksymtab_fqdir_exit", i1 false, i1 false}
!16 = !{!"../net/ipv4/inet_fragment.c", i32 223, i32 1}
!17 = !{ptr @__ksymtab_inet_frag_kill, !18, !"__ksymtab_inet_frag_kill", i1 false, i1 false}
!18 = !{!"../net/ipv4/inet_fragment.c", i32 250, i32 1}
!19 = !{ptr @__ksymtab_inet_frag_rbtree_purge, !20, !"__ksymtab_inet_frag_rbtree_purge", i1 false, i1 false}
!20 = !{!"../net/ipv4/inet_fragment.c", i32 283, i32 1}
!21 = !{ptr @.str.1, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../net/ipv4/inet_fragment.c", i32 291, i32 2}
!23 = !{ptr @__ksymtab_inet_frag_destroy, !24, !"__ksymtab_inet_frag_destroy", i1 false, i1 false}
!24 = !{!"../net/ipv4/inet_fragment.c", i32 304, i32 1}
!25 = !{ptr @__ksymtab_inet_frag_find, !26, !"__ksymtab_inet_frag_find", i1 false, i1 false}
!26 = !{!"../net/ipv4/inet_fragment.c", i32 375, i32 1}
!27 = !{ptr @__ksymtab_inet_frag_queue_insert, !28, !"__ksymtab_inet_frag_queue_insert", i1 false, i1 false}
!28 = !{!"../net/ipv4/inet_fragment.c", i32 439, i32 1}
!29 = !{ptr @__ksymtab_inet_frag_reasm_prepare, !30, !"__ksymtab_inet_frag_reasm_prepare", i1 false, i1 false}
!30 = !{!"../net/ipv4/inet_fragment.c", i32 508, i32 1}
!31 = !{ptr @__ksymtab_inet_frag_reasm_finish, !32, !"__ksymtab_inet_frag_reasm_finish", i1 false, i1 false}
!32 = !{!"../net/ipv4/inet_fragment.c", i32 576, i32 1}
!33 = !{ptr @__ksymtab_inet_frag_pull_head, !34, !"__ksymtab_inet_frag_pull_head", i1 false, i1 false}
!34 = !{!"../net/ipv4/inet_fragment.c", i32 601, i32 1}
!35 = !{ptr @inet_frag_wq, !36, !"inet_frag_wq", i1 false, i1 false}
!36 = !{!"../net/ipv4/inet_fragment.c", i32 206, i32 33}
!37 = !{ptr @init_completion.__key, !38, !"__key", i1 false, i1 false}
!38 = !{!"../include/linux/completion.h", i32 87, i32 2}
!39 = !{ptr @.str.2, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.3, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../net/ipv4/inet_fragment.c", i32 210, i32 17}
!42 = !{ptr @.str.4, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.5, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../net/ipv4/inet_fragment.c", i32 212, i32 9}
!45 = !{ptr @fqdir_free_list, !46, !"fqdir_free_list", i1 false, i1 false}
!46 = !{!"../net/ipv4/inet_fragment.c", i32 148, i32 8}
!47 = !{ptr @.str.6, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../net/ipv4/inet_fragment.c", i32 174, i32 8}
!49 = !{ptr @fqdir_free_work, !48, !"fqdir_free_work", i1 false, i1 false}
!50 = distinct !{null, !51, !"__warned", i1 false, i1 false}
!51 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!52 = !{ptr @.str.7, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.8, !51, !"<string literal>", i1 false, i1 false}
!54 = distinct !{null, !55, !"__warned", i1 false, i1 false}
!55 = !{!"../include/linux/rhashtable.h", i32 1076, i32 8}
!56 = !{ptr @.str.9, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.10, !55, !"<string literal>", i1 false, i1 false}
!58 = distinct !{null, !59, !"__warned", i1 false, i1 false}
!59 = !{!"../include/linux/rhashtable.h", i32 1085, i32 16}
!60 = distinct !{null, !61, !"__warned", i1 false, i1 false}
!61 = !{!"../include/linux/rhashtable.h", i32 1019, i32 12}
!62 = !{ptr @.str.12, !61, !"<string literal>", i1 false, i1 false}
!63 = distinct !{null, !64, !"__warned", i1 false, i1 false}
!64 = !{!"../include/linux/rhashtable.h", i32 1026, i32 11}
!65 = distinct !{null, !66, !"__warned", i1 false, i1 false}
!66 = !{!"../include/linux/rhashtable.h", i32 1032, i32 9}
!67 = distinct !{null, !68, !"__warned", i1 false, i1 false}
!68 = !{!"../include/linux/rhashtable.h", i32 1036, i32 11}
!69 = distinct !{null, !70, !"__warned", i1 false, i1 false}
!70 = !{!"../include/linux/rhashtable.h", i32 1004, i32 2}
!71 = distinct !{null, !72, !"__warned", i1 false, i1 false}
!72 = !{!"../include/linux/rhashtable.h", i32 377, i32 19}
!73 = distinct !{null, !74, !"__warned", i1 false, i1 false}
!74 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!75 = !{ptr @.str.17, !74, !"<string literal>", i1 false, i1 false}
!76 = distinct !{null, !77, !"__warned", i1 false, i1 false}
!77 = !{!"../include/linux/rhashtable.h", i32 594, i32 8}
!78 = distinct !{null, !79, !"__warned", i1 false, i1 false}
!79 = !{!"../include/linux/rhashtable.h", i32 614, i32 8}
!80 = distinct !{null, !81, !"__warned", i1 false, i1 false}
!81 = !{!"../include/linux/rhashtable.h", i32 369, i32 19}
!82 = !{ptr @inet_frag_alloc.__key, !83, !"__key", i1 false, i1 false}
!83 = !{!"../net/ipv4/inet_fragment.c", i32 320, i32 2}
!84 = !{ptr @.str.19, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @inet_frag_alloc.__key.20, !86, !"__key", i1 false, i1 false}
!86 = !{!"../net/ipv4/inet_fragment.c", i32 321, i32 2}
!87 = !{ptr @.str.21, !86, !"<string literal>", i1 false, i1 false}
!88 = distinct !{null, !89, !"__warned", i1 false, i1 false}
!89 = !{!"../include/linux/rhashtable.h", i32 715, i32 8}
!90 = distinct !{null, !91, !"__warned", i1 false, i1 false}
!91 = !{!"../include/linux/rhashtable.h", i32 755, i32 10}
!92 = distinct !{null, !93, !"__warned", i1 false, i1 false}
!93 = !{!"../include/linux/rhashtable.h", i32 732, i32 2}
!94 = distinct !{null, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../include/linux/skbuff.h", i32 1719, i32 2}
!96 = !{!"sp"}
!97 = !{i32 1, !"wchar_size", i32 2}
!98 = !{i32 1, !"min_enum_size", i32 4}
!99 = !{i32 8, !"branch-target-enforcement", i32 0}
!100 = !{i32 8, !"sign-return-address", i32 0}
!101 = !{i32 8, !"sign-return-address-all", i32 0}
!102 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!103 = !{i32 7, !"uwtable", i32 1}
!104 = !{i32 7, !"frame-pointer", i32 2}
!105 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!106 = !{i64 2148580601}
!107 = !{i64 2148495041, i64 2148495073, i64 2148495102, i64 2148495136, i64 2148495167, i64 2148495190}
!108 = !{!"branch_weights", i32 2000, i32 1}
!109 = !{i64 2149319390}
!110 = !{i64 2148492576, i64 2148492608, i64 2148492637, i64 2148492671, i64 2148492702, i64 2148492725}
!111 = !{!"branch_weights", i32 1, i32 2000}
!112 = !{i64 2149369880}
!113 = !{i8 0, i8 2}
!114 = !{i64 2156076089}
!115 = !{i64 2148493511, i64 2148493537, i64 2148493566, i64 2148493600, i64 2148493631, i64 2148493654}
!116 = !{i64 2149370146}
!117 = !{i64 2156008713}
!118 = !{i64 2156012147}
!119 = !{i64 2148491046, i64 2148491072, i64 2148491101, i64 2148491135, i64 2148491166, i64 2148491189}
!120 = !{i64 2156055569, i64 2156056060, i64 2156055606, i64 2156055662, i64 2156055696, i64 2156055720, i64 2156055761, i64 2156055782, i64 2156055810, i64 2156055844}
!121 = !{i64 976559, i64 976583, i64 976604, i64 976621, i64 976638}
!122 = !{!"auto-init"}
!123 = !{i64 2157574383}
!124 = !{i64 2149109056}
!125 = !{i64 997814, i64 997831, i64 997855, i64 997881, i64 997899}
!126 = !{i64 2149109409}
!127 = !{i64 2151700867}
!128 = !{!"branch_weights", i32 2146410443, i32 1073205}
!129 = !{i64 2148499904, i64 2148499936, i64 2148499965, i64 2148499999, i64 2148500030, i64 2148500053}
!130 = !{i64 2148589009}
!131 = !{i64 2151701027}
!132 = !{i64 2151701304}
!133 = !{i64 2151701146}
!134 = !{i64 2151701509}
!135 = !{i64 2151702572, i64 2151703064, i64 2151702609, i64 2151702665, i64 2151702699, i64 2151702723, i64 2151702764, i64 2151702785, i64 2151702813, i64 2151702847}
!136 = !{i64 2148587896}
!137 = !{i64 2148498291, i64 2148498323, i64 2148498352, i64 2148498386, i64 2148498417, i64 2148498440}
!138 = !{i64 2151703967}
!139 = !{i64 2156001786}
!140 = !{i64 2156004085}
