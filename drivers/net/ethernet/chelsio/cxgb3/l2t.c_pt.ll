; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/chelsio/cxgb3/l2t.c_pt.bc'
source_filename = "../drivers/net/ethernet/chelsio/cxgb3/l2t.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+t3_l2t_send_slow\22, \22a\22\09"
module asm "\09.weak\09__crc_t3_l2t_send_slow\09\09\09\09"
module asm "\09.long\09__crc_t3_l2t_send_slow\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_t3_l2t_send_slow:\09\09\09\09\09"
module asm "\09.asciz \09\22t3_l2t_send_slow\22\09\09\09\09\09"
module asm "__kstrtabns_t3_l2t_send_slow:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+t3_l2t_send_event\22, \22a\22\09"
module asm "\09.weak\09__crc_t3_l2t_send_event\09\09\09\09"
module asm "\09.long\09__crc_t3_l2t_send_event\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_t3_l2t_send_event:\09\09\09\09\09"
module asm "\09.asciz \09\22t3_l2t_send_event\22\09\09\09\09\09"
module asm "__kstrtabns_t3_l2t_send_event:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+t3_l2e_free\22, \22a\22\09"
module asm "\09.weak\09__crc_t3_l2e_free\09\09\09\09"
module asm "\09.long\09__crc_t3_l2e_free\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_t3_l2e_free:\09\09\09\09\09"
module asm "\09.asciz \09\22t3_l2e_free\22\09\09\09\09\09"
module asm "__kstrtabns_t3_l2e_free:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+t3_l2t_get\22, \22a\22\09"
module asm "\09.weak\09__crc_t3_l2t_get\09\09\09\09"
module asm "\09.long\09__crc_t3_l2t_get\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_t3_l2t_get:\09\09\09\09\09"
module asm "\09.asciz \09\22t3_l2t_get\22\09\09\09\09\09"
module asm "__kstrtabns_t3_l2t_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.14 }
%union.anon.14 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.l2t_entry = type { i16, i16, i32, i32, i16, i16, ptr, ptr, ptr, %struct.sk_buff_head, %struct.spinlock, %struct.atomic_t, [6 x i8] }
%struct.sk_buff_head = type { %union.anon.53, i32, %struct.spinlock }
%union.anon.53 = type { %struct.anon.54 }
%struct.anon.54 = type { ptr, ptr }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.atomic_t = type { i32 }
%struct.neighbour = type { ptr, ptr, ptr, i32, i32, %struct.rwlock_t, %struct.refcount_struct, i32, %struct.sk_buff_head, %struct.timer_list, i32, %struct.atomic_t, i8, i8, i8, i8, i32, %struct.seqlock_t, [32 x i8], %struct.hh_cache, ptr, ptr, %struct.list_head, %struct.list_head, %struct.callback_head, ptr, ptr, [0 x i8], [4 x i8] }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hh_cache = type { i32, %struct.seqlock_t, [32 x i32] }
%struct.list_head = type { ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.anon.0 = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%struct.sk_buff = type { %union.anon, %union.anon.2, %union.anon.150, [48 x i8], %union.anon.151, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.153, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon.0 }
%union.anon.2 = type { ptr }
%union.anon.150 = type { i64 }
%union.anon.151 = type { %struct.anon.152 }
%struct.anon.152 = type { i32, ptr }
%union.anon.153 = type { %struct.anon.154 }
%struct.anon.154 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.155, i32, i32, i32, i16, i16, %union.anon.157, i32, %union.anon.158, %union.anon.159, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.155 = type { i32 }
%union.anon.157 = type { i32 }
%union.anon.158 = type { i32 }
%union.anon.159 = type { i16 }
%struct.cpl_l2t_write_req = type { %struct.work_request_hdr, %union.opcode_tid, i32, [2 x i8], [6 x i8] }
%struct.work_request_hdr = type { i32, i32 }
%union.opcode_tid = type { i32 }
%struct.l2t_data = type { i32, ptr, %struct.atomic_t, %struct.rwlock_t, %struct.callback_head, [0 x %struct.l2t_entry] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, ptr }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.186, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.186 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.t3cdev = type { [16 x i8], i32, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__kstrtab_t3_l2t_send_slow = external dso_local constant [0 x i8], align 1
@__kstrtabns_t3_l2t_send_slow = external dso_local constant [0 x i8], align 1
@__ksymtab_t3_l2t_send_slow = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @t3_l2t_send_slow to i32), ptr @__kstrtab_t3_l2t_send_slow, ptr @__kstrtabns_t3_l2t_send_slow }, section "___ksymtab+t3_l2t_send_slow", align 4
@__kstrtab_t3_l2t_send_event = external dso_local constant [0 x i8], align 1
@__kstrtabns_t3_l2t_send_event = external dso_local constant [0 x i8], align 1
@__ksymtab_t3_l2t_send_event = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @t3_l2t_send_event to i32), ptr @__kstrtab_t3_l2t_send_event, ptr @__kstrtabns_t3_l2t_send_event }, section "___ksymtab+t3_l2t_send_event", align 4
@__kstrtab_t3_l2e_free = external dso_local constant [0 x i8], align 1
@__kstrtabns_t3_l2e_free = external dso_local constant [0 x i8], align 1
@__ksymtab_t3_l2e_free = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @t3_l2e_free to i32), ptr @__kstrtab_t3_l2e_free, ptr @__kstrtabns_t3_l2e_free }, section "___ksymtab+t3_l2e_free", align 4
@t3_l2t_get.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/net/ethernet/chelsio/cxgb3/l2t.c\00", [55 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__kstrtab_t3_l2t_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_t3_l2t_get = external dso_local constant [0 x i8], align 1
@__ksymtab_t3_l2t_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @t3_l2t_get to i32), ptr @__kstrtab_t3_l2t_get, ptr @__kstrtabns_t3_l2t_get }, section "___ksymtab+t3_l2t_get", align 4
@t3_l2t_update.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@t3_init_l2t.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&d->lock\00", [23 x i8] zeroinitializer }, align 32
@t3_init_l2t.__key.3 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&d->l2tab[i].lock\00", [46 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.7 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 16, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.8 = internal global [4 x i64] [i64 2, i64 16, i64 1, i64 2]
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 327, i32 6 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 455, i32 2 }
@___asan_gen_.21 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.25 = private constant [44 x i8] c"../drivers/net/ethernet/chelsio/cxgb3/l2t.c\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 461, i32 3 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 695, i32 2 }
@___asan_gen_.33 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.34 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 723, i32 2 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @__ksymtab_t3_l2e_free, ptr @__ksymtab_t3_l2t_get, ptr @__ksymtab_t3_l2t_send_event, ptr @__ksymtab_t3_l2t_send_slow, ptr @.str, ptr @.str.1, ptr @t3_init_l2t.__key, ptr @.str.2, ptr @t3_init_l2t.__key.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t3_init_l2t.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t3_init_l2t.__key.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @t3_l2t_send_slow(ptr noundef %dev, ptr noundef %skb, ptr noundef %e) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %lock9 = getelementptr inbounds %struct.l2t_entry, ptr %e, i32 0, i32 10
  br label %again

again:                                            ; preds = %if.then14, %entry
  %0 = ptrtoint ptr %e to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %e, align 4
  %2 = zext i16 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i16 %1, label %again.return_crit_edge [
    i16 1, label %sw.bb
    i16 0, label %again.sw.bb6_crit_edge
    i16 2, label %sw.bb8
  ]

again.sw.bb6_crit_edge:                           ; preds = %again
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb6

again.return_crit_edge:                           ; preds = %again
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.bb:                                            ; preds = %again
  %neigh = getelementptr inbounds %struct.l2t_entry, ptr %e, i32 0, i32 6
  %3 = ptrtoint ptr %neigh to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %neigh, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %5 = load volatile i32, ptr @jiffies, align 128
  %used.i.i = getelementptr inbounds %struct.neighbour, ptr %4, i32 0, i32 10
  %6 = ptrtoint ptr %used.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %used.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %5)
  %cmp.not.i.i = icmp eq i32 %7, %5
  br i1 %cmp.not.i.i, label %sw.bb.if.end.i.i_crit_edge, label %do.body5.i.i

sw.bb.if.end.i.i_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

do.body5.i.i:                                     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %used.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile i32 %5, ptr %used.i.i, align 8
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.body5.i.i, %sw.bb.if.end.i.i_crit_edge
  %nud_state.i.i = getelementptr inbounds %struct.neighbour, ptr %4, i32 0, i32 12
  %9 = ptrtoint ptr %nud_state.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %nud_state.i.i, align 8
  %11 = and i8 %10, -38
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i.i = icmp eq i8 %11, 0
  br i1 %tobool.not.i.i, label %if.then11.i.i, label %if.end.i.i.neigh_event_send.exit_crit_edge

if.end.i.i.neigh_event_send.exit_crit_edge:       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %neigh_event_send.exit

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i = tail call i32 @__neigh_event_send(ptr noundef %4, ptr noundef null, i1 noundef zeroext true) #9
  br label %neigh_event_send.exit

neigh_event_send.exit:                            ; preds = %if.then11.i.i, %if.end.i.i.neigh_event_send.exit_crit_edge
  tail call void @_raw_spin_lock_bh(ptr noundef %lock9) #9
  %12 = ptrtoint ptr %e to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %e, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %13)
  %cmp = icmp eq i16 %13, 1
  br i1 %cmp, label %if.then, label %neigh_event_send.exit.if.end_crit_edge

neigh_event_send.exit.if.end_crit_edge:           ; preds = %neigh_event_send.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %neigh_event_send.exit
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %e to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 0, ptr %e, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %neigh_event_send.exit.if.end_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock9) #9
  br label %sw.bb6

sw.bb6:                                           ; preds = %if.end, %again.sw.bb6_crit_edge
  %call7 = tail call i32 @cxgb3_ofld_send(ptr noundef %dev, ptr noundef %skb) #9
  br label %return

sw.bb8:                                           ; preds = %again
  tail call void @_raw_spin_lock_bh(ptr noundef %lock9) #9
  %15 = ptrtoint ptr %e to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %e, align 4
  %cmp12.not = icmp eq i16 %16, 2
  br i1 %cmp12.not, label %if.end16, label %if.then14

if.then14:                                        ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock9) #9
  br label %again

if.end16:                                         ; preds = %sw.bb8
  %arpq.i = getelementptr inbounds %struct.l2t_entry, ptr %e, i32 0, i32 9
  %prev.i.i.i = getelementptr inbounds %struct.l2t_entry, ptr %e, i32 0, i32 9, i32 0, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i.i.i, align 4
  %19 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %arpq.i, ptr %skb, align 8
  %prev10.i.i.i.i = getelementptr inbounds %struct.anon.0, ptr %skb, i32 0, i32 1
  %20 = ptrtoint ptr %prev10.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %18, ptr %prev10.i.i.i.i, align 4
  store volatile ptr %skb, ptr %prev.i.i.i, align 4
  %21 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %skb, ptr %18, align 4
  %qlen.i.i.i.i = getelementptr inbounds %struct.l2t_entry, ptr %e, i32 0, i32 9, i32 1
  %22 = ptrtoint ptr %qlen.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %qlen.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %23, 1
  store volatile i32 %add.i.i.i.i, ptr %qlen.i.i.i.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock9) #9
  %neigh18 = getelementptr inbounds %struct.l2t_entry, ptr %e, i32 0, i32 6
  %24 = ptrtoint ptr %neigh18 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %neigh18, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %26 = load volatile i32, ptr @jiffies, align 128
  %used.i.i53 = getelementptr inbounds %struct.neighbour, ptr %25, i32 0, i32 10
  %27 = ptrtoint ptr %used.i.i53 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %used.i.i53, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %26)
  %cmp.not.i.i54 = icmp eq i32 %28, %26
  br i1 %cmp.not.i.i54, label %if.end16.if.end.i.i58_crit_edge, label %do.body5.i.i55

if.end16.if.end.i.i58_crit_edge:                  ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i58

do.body5.i.i55:                                   ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %29 = ptrtoint ptr %used.i.i53 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile i32 %26, ptr %used.i.i53, align 8
  br label %if.end.i.i58

if.end.i.i58:                                     ; preds = %do.body5.i.i55, %if.end16.if.end.i.i58_crit_edge
  %nud_state.i.i56 = getelementptr inbounds %struct.neighbour, ptr %25, i32 0, i32 12
  %30 = ptrtoint ptr %nud_state.i.i56 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %nud_state.i.i56, align 8
  %32 = and i8 %31, -38
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool.not.i.i57 = icmp eq i8 %32, 0
  br i1 %tobool.not.i.i57, label %neigh_event_send.exit62, label %if.end.i.i58.if.then20_crit_edge

if.end.i.i58.if.then20_crit_edge:                 ; preds = %if.end.i.i58
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then20

neigh_event_send.exit62:                          ; preds = %if.end.i.i58
  %call.i.i59 = tail call i32 @__neigh_event_send(ptr noundef %25, ptr noundef null, i1 noundef zeroext true) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i59)
  %tobool.not = icmp eq i32 %call.i.i59, 0
  br i1 %tobool.not, label %neigh_event_send.exit62.if.then20_crit_edge, label %neigh_event_send.exit62.return_crit_edge

neigh_event_send.exit62.return_crit_edge:         ; preds = %neigh_event_send.exit62
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

neigh_event_send.exit62.if.then20_crit_edge:      ; preds = %neigh_event_send.exit62
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then20

if.then20:                                        ; preds = %neigh_event_send.exit62.if.then20_crit_edge, %if.end.i.i58.if.then20_crit_edge
  %call.i = tail call ptr @__alloc_skb(i32 noundef 24, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #9
  %tobool22.not = icmp eq ptr %call.i, null
  br i1 %tobool22.not, label %if.then20.return_crit_edge, label %if.end24

if.then20.return_crit_edge:                       ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end24:                                         ; preds = %if.then20
  tail call void @_raw_spin_lock_bh(ptr noundef %lock9) #9
  %33 = ptrtoint ptr %arpq.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arpq.i, align 4
  %cmp.i.not = icmp eq ptr %34, %arpq.i
  br i1 %cmp.i.not, label %if.else, label %if.then28

if.then28:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @setup_l2e_send_pending(ptr noundef %dev, ptr noundef nonnull %call.i, ptr noundef %e)
  br label %if.end30

if.else:                                          ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__kfree_skb(ptr noundef nonnull %call.i) #9
  br label %if.end30

if.end30:                                         ; preds = %if.else, %if.then28
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock9) #9
  br label %return

return:                                           ; preds = %if.end30, %if.then20.return_crit_edge, %neigh_event_send.exit62.return_crit_edge, %sw.bb6, %again.return_crit_edge
  %retval.0 = phi i32 [ %call7, %sw.bb6 ], [ 0, %neigh_event_send.exit62.return_crit_edge ], [ 0, %if.end30 ], [ 0, %if.then20.return_crit_edge ], [ 0, %again.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxgb3_ofld_send(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @setup_l2e_send_pending(ptr noundef %dev, ptr noundef %skb, ptr noundef %e) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %skb, null
  br i1 %tobool.not, label %if.then, label %entry.if.end3_crit_edge

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end3

if.then:                                          ; preds = %entry
  %call.i = tail call ptr @__alloc_skb(i32 noundef 24, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #9
  %tobool1.not = icmp eq ptr %call.i, null
  br i1 %tobool1.not, label %if.then.cleanup_crit_edge, label %if.then.if.end3_crit_edge

if.then.if.end3_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end3

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %if.then.if.end3_crit_edge, %entry.if.end3_crit_edge
  %skb.addr.0 = phi ptr [ %skb, %entry.if.end3_crit_edge ], [ %call.i, %if.then.if.end3_crit_edge ]
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 7
  %0 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.i.not.i = icmp eq i32 %1, 0
  br i1 %tobool.i.not.i, label %__skb_put.exit, label %do.body3.i, !prof !37

do.body3.i:                                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #9, !srcloc !38
  unreachable

__skb_put.exit:                                   ; preds = %if.end3
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 16
  %2 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tail.i.i, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 24
  store ptr %add.ptr.i, ptr %tail.i.i, align 8
  %len9.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 6
  %4 = ptrtoint ptr %len9.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len9.i, align 4
  %add.i = add i32 %5, 24
  store i32 %add.i, ptr %len9.i, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 16777216, ptr %3, align 4
  %idx = getelementptr inbounds %struct.l2t_entry, ptr %e, i32 0, i32 1
  %7 = ptrtoint ptr %idx to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %idx, align 2
  %conv = zext i16 %8 to i32
  %or = or i32 %conv, 301989888
  %ot = getelementptr inbounds %struct.cpl_l2t_write_req, ptr %3, i32 0, i32 1
  %9 = ptrtoint ptr %ot to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %or, ptr %ot, align 4
  %10 = load i16, ptr %idx, align 2
  %conv6 = zext i16 %10 to i32
  %smt_idx = getelementptr inbounds %struct.l2t_entry, ptr %e, i32 0, i32 4
  %11 = ptrtoint ptr %smt_idx to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %smt_idx, align 4
  %conv7 = zext i16 %12 to i32
  %shl8 = shl i32 %conv7, 23
  %or9 = or i32 %shl8, %conv6
  %vlan = getelementptr inbounds %struct.l2t_entry, ptr %e, i32 0, i32 5
  %13 = ptrtoint ptr %vlan to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %vlan, align 2
  %15 = and i16 %14, 4095
  %and = zext i16 %15 to i32
  %shl11 = shl nuw nsw i32 %and, 11
  %or12 = or i32 %or9, %shl11
  %16 = lshr i16 %14, 13
  %17 = zext i16 %16 to i32
  %shl14 = shl nuw nsw i32 %17, 27
  %or15 = or i32 %or12, %shl14
  %params = getelementptr inbounds %struct.cpl_l2t_write_req, ptr %3, i32 0, i32 2
  %18 = ptrtoint ptr %params to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %or15, ptr %params, align 4
  %dmac = getelementptr inbounds %struct.l2t_entry, ptr %e, i32 0, i32 12
  %neigh = getelementptr inbounds %struct.l2t_entry, ptr %e, i32 0, i32 6
  %19 = ptrtoint ptr %neigh to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %neigh, align 4
  %ha = getelementptr inbounds %struct.neighbour, ptr %20, i32 0, i32 18
  %21 = call ptr @memcpy(ptr %dmac, ptr %ha, i32 6)
  %dst_mac = getelementptr inbounds %struct.cpl_l2t_write_req, ptr %3, i32 0, i32 4
  %22 = call ptr @memmove(ptr %dst_mac, ptr %ha, i32 6)
  %priority = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 15, i32 0, i32 6
  %23 = ptrtoint ptr %priority to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %priority, align 4
  %call20 = tail call i32 @cxgb3_ofld_send(ptr noundef %dev, ptr noundef nonnull %skb.addr.0) #9
  %arpq = getelementptr inbounds %struct.l2t_entry, ptr %e, i32 0, i32 9
  %24 = ptrtoint ptr %arpq to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arpq, align 4
  %cmp.not1 = icmp eq ptr %25, %arpq
  br i1 %cmp.not1, label %__skb_put.exit.for.end_crit_edge, label %for.body.lr.ph

__skb_put.exit.for.end_crit_edge:                 ; preds = %__skb_put.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %__skb_put.exit
  %qlen.i = getelementptr inbounds %struct.l2t_entry, ptr %e, i32 0, i32 9, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %skb.addr.12 = phi ptr [ %25, %for.body.lr.ph ], [ %tmp.0, %for.body.for.body_crit_edge ]
  %26 = ptrtoint ptr %skb.addr.12 to i32
  call void @__asan_load4_noabort(i32 %26)
  %tmp.0 = load ptr, ptr %skb.addr.12, align 8
  %27 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %qlen.i, align 4
  %sub.i = add i32 %28, -1
  store volatile i32 %sub.i, ptr %qlen.i, align 4
  %29 = load ptr, ptr %skb.addr.12, align 8
  %prev9.i = getelementptr inbounds %struct.anon.0, ptr %skb.addr.12, i32 0, i32 1
  %30 = ptrtoint ptr %prev9.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %prev9.i, align 4
  store ptr null, ptr %prev9.i, align 4
  store ptr null, ptr %skb.addr.12, align 8
  %prev17.i = getelementptr inbounds %struct.anon.0, ptr %29, i32 0, i32 1
  %32 = ptrtoint ptr %prev17.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %31, ptr %prev17.i, align 4
  %33 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %29, ptr %31, align 8
  %call25 = tail call i32 @cxgb3_ofld_send(ptr noundef %dev, ptr noundef %skb.addr.12) #9
  %cmp.not = icmp eq ptr %tmp.0, %arpq
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %__skb_put.exit.for.end_crit_edge
  %34 = ptrtoint ptr %e to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 0, ptr %e, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__kfree_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @t3_l2t_send_event(ptr nocapture readnone %dev, ptr noundef %e) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %lock8 = getelementptr inbounds %struct.l2t_entry, ptr %e, i32 0, i32 10
  br label %again

again:                                            ; preds = %sw.bb7.again_crit_edge, %entry
  %0 = ptrtoint ptr %e to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %e, align 4
  %2 = zext i16 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.8)
  switch i16 %1, label %again.sw.epilog_crit_edge [
    i16 1, label %sw.bb
    i16 2, label %sw.bb7
  ]

again.sw.epilog_crit_edge:                        ; preds = %again
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %again
  %neigh = getelementptr inbounds %struct.l2t_entry, ptr %e, i32 0, i32 6
  %3 = ptrtoint ptr %neigh to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %neigh, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %5 = load volatile i32, ptr @jiffies, align 128
  %used.i.i = getelementptr inbounds %struct.neighbour, ptr %4, i32 0, i32 10
  %6 = ptrtoint ptr %used.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %used.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %5)
  %cmp.not.i.i = icmp eq i32 %7, %5
  br i1 %cmp.not.i.i, label %sw.bb.if.end.i.i_crit_edge, label %do.body5.i.i

sw.bb.if.end.i.i_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

do.body5.i.i:                                     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %used.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile i32 %5, ptr %used.i.i, align 8
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.body5.i.i, %sw.bb.if.end.i.i_crit_edge
  %nud_state.i.i = getelementptr inbounds %struct.neighbour, ptr %4, i32 0, i32 12
  %9 = ptrtoint ptr %nud_state.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %nud_state.i.i, align 8
  %11 = and i8 %10, -38
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i.i = icmp eq i8 %11, 0
  br i1 %tobool.not.i.i, label %if.then11.i.i, label %if.end.i.i.neigh_event_send.exit_crit_edge

if.end.i.i.neigh_event_send.exit_crit_edge:       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %neigh_event_send.exit

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i = tail call i32 @__neigh_event_send(ptr noundef %4, ptr noundef null, i1 noundef zeroext true) #9
  br label %neigh_event_send.exit

neigh_event_send.exit:                            ; preds = %if.then11.i.i, %if.end.i.i.neigh_event_send.exit_crit_edge
  tail call void @_raw_spin_lock_bh(ptr noundef %lock8) #9
  %12 = ptrtoint ptr %e to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %e, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %13)
  %cmp = icmp eq i16 %13, 1
  br i1 %cmp, label %if.then, label %neigh_event_send.exit.if.end_crit_edge

neigh_event_send.exit.if.end_crit_edge:           ; preds = %neigh_event_send.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %neigh_event_send.exit
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %e to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 0, ptr %e, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %neigh_event_send.exit.if.end_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock8) #9
  br label %sw.epilog

sw.bb7:                                           ; preds = %again
  tail call void @_raw_spin_lock_bh(ptr noundef %lock8) #9
  %15 = ptrtoint ptr %e to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %e, align 4
  %cmp11.not = icmp eq i16 %16, 2
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock8) #9
  br i1 %cmp11.not, label %if.end15, label %sw.bb7.again_crit_edge

sw.bb7.again_crit_edge:                           ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #11
  br label %again

if.end15:                                         ; preds = %sw.bb7
  %neigh17 = getelementptr inbounds %struct.l2t_entry, ptr %e, i32 0, i32 6
  %17 = ptrtoint ptr %neigh17 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %neigh17, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %19 = load volatile i32, ptr @jiffies, align 128
  %used.i.i29 = getelementptr inbounds %struct.neighbour, ptr %18, i32 0, i32 10
  %20 = ptrtoint ptr %used.i.i29 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %used.i.i29, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %19)
  %cmp.not.i.i30 = icmp eq i32 %21, %19
  br i1 %cmp.not.i.i30, label %if.end15.if.end.i.i34_crit_edge, label %do.body5.i.i31

if.end15.if.end.i.i34_crit_edge:                  ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i34

do.body5.i.i31:                                   ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %used.i.i29 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile i32 %19, ptr %used.i.i29, align 8
  br label %if.end.i.i34

if.end.i.i34:                                     ; preds = %do.body5.i.i31, %if.end15.if.end.i.i34_crit_edge
  %nud_state.i.i32 = getelementptr inbounds %struct.neighbour, ptr %18, i32 0, i32 12
  %23 = ptrtoint ptr %nud_state.i.i32 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %nud_state.i.i32, align 8
  %25 = and i8 %24, -38
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not.i.i33 = icmp eq i8 %25, 0
  br i1 %tobool.not.i.i33, label %if.then11.i.i36, label %if.end.i.i34.sw.epilog_crit_edge

if.end.i.i34.sw.epilog_crit_edge:                 ; preds = %if.end.i.i34
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then11.i.i36:                                  ; preds = %if.end.i.i34
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i35 = tail call i32 @__neigh_event_send(ptr noundef %18, ptr noundef null, i1 noundef zeroext true) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then11.i.i36, %if.end.i.i34.sw.epilog_crit_edge, %if.end, %again.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @t3_l2e_free(ptr noundef %d, ptr noundef %e) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.l2t_entry, ptr %e, i32 0, i32 10
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #9
  %refcnt = getelementptr inbounds %struct.l2t_entry, ptr %e, i32 0, i32 11
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcnt, i32 noundef 4) #9
  %0 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %entry.if.end4_crit_edge

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

if.then:                                          ; preds = %entry
  %neigh = getelementptr inbounds %struct.l2t_entry, ptr %e, i32 0, i32 6
  %2 = ptrtoint ptr %neigh to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %neigh, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.then.if.end4_crit_edge, label %if.then1

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

if.then1:                                         ; preds = %if.then
  %refcnt.i = getelementptr inbounds %struct.neighbour, ptr %3, i32 0, i32 6
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !39
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #9
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #9, !srcloc !40
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.neigh_release.exit_crit_edge, label %if.then10.i.i.i.i, !prof !37

if.end5.i.i.i.i.neigh_release.exit_crit_edge:     ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %neigh_release.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 3) #9
  br label %neigh_release.exit

if.then.i:                                        ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !41
  tail call void @neigh_destroy(ptr noundef nonnull %3) #9
  br label %neigh_release.exit

neigh_release.exit:                               ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.neigh_release.exit_crit_edge
  %5 = ptrtoint ptr %neigh to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %neigh, align 4
  br label %if.end4

if.end4:                                          ; preds = %neigh_release.exit, %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #9
  %nfree = getelementptr inbounds %struct.l2t_data, ptr %d, i32 0, i32 2
  %call.i.i11 = tail call zeroext i1 @__kasan_check_write(ptr noundef %nfree, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %nfree, i32 1, i32 3, i32 1) #9
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nfree, ptr %nfree, i32 1, ptr elementtype(i32) %nfree) #9, !srcloc !42
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @t3_l2t_get(ptr noundef %cdev, ptr noundef %dst, ptr noundef readonly %dev, ptr noundef %daddr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !27) #9
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !43
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 696, ptr noundef nonnull @.str.6) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %ops.i = getelementptr inbounds %struct.dst_entry, ptr %dst, i32 0, i32 1
  %4 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops.i, align 4
  %neigh_lookup.i = getelementptr inbounds %struct.dst_ops, ptr %5, i32 0, i32 14
  %6 = ptrtoint ptr %neigh_lookup.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %neigh_lookup.i, align 8
  %call.i119 = tail call ptr %7(ptr noundef %dst, ptr noundef null, ptr noundef %daddr) #9
  %cmp.i.i = icmp ugt ptr %call.i119, inttoptr (i32 -4096 to ptr)
  %tobool.not167 = icmp eq ptr %call.i119, null
  %tobool.not = or i1 %cmp.i.i, %tobool.not167
  br i1 %tobool.not, label %rcu_read_lock.exit.if.end70_crit_edge, label %if.end

rcu_read_lock.exit.if.end70_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end70

if.end:                                           ; preds = %rcu_read_lock.exit
  %primary_key = getelementptr inbounds %struct.neighbour, ptr %call.i119, i32 0, i32 27
  %8 = ptrtoint ptr %primary_key to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %primary_key, align 4
  %dev1 = getelementptr inbounds %struct.neighbour, ptr %call.i119, i32 0, i32 25
  %10 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev1, align 4
  %ifindex = getelementptr inbounds %struct.net_device, ptr %11, i32 0, i32 17
  %12 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ifindex, align 4
  %tobool2.not = icmp eq ptr %dev, null
  %spec.select = select i1 %tobool2.not, ptr %11, ptr %dev
  %port_id = getelementptr i8, ptr %spec.select, i32 2312
  %14 = ptrtoint ptr %port_id to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %port_id, align 8
  %l2opt = getelementptr inbounds %struct.t3cdev, ptr %cdev, i32 0, i32 10
  %16 = ptrtoint ptr %l2opt to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %l2opt, align 4
  %call8 = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %land.lhs.true, label %if.end.do.end17_crit_edge

if.end.do.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end17

land.lhs.true:                                    ; preds = %if.end
  %call10 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %land.lhs.true.do.end17_crit_edge, label %land.lhs.true12

land.lhs.true.do.end17_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end17

land.lhs.true12:                                  ; preds = %land.lhs.true
  %.b117 = load i1, ptr @t3_l2t_get.__warned, align 1
  br i1 %.b117, label %land.lhs.true12.do.end17_crit_edge, label %if.then14

land.lhs.true12.do.end17_crit_edge:               ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end17

if.then14:                                        ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @t3_l2t_get.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 327, ptr noundef nonnull @.str.1) #9
  br label %do.end17

do.end17:                                         ; preds = %if.then14, %land.lhs.true12.do.end17_crit_edge, %land.lhs.true.do.end17_crit_edge, %if.end.do.end17_crit_edge
  %tobool19.not = icmp eq ptr %17, null
  br i1 %tobool19.not, label %do.end17.if.then69_crit_edge, label %if.end21

do.end17.if.then69_crit_edge:                     ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then69

if.end21:                                         ; preds = %do.end17
  %add.i.i.i120 = add i32 %9, -559038729
  %add1.i.i.i = add i32 %13, -559038729
  %xor.i.i.i = xor i32 %add1.i.i.i, -559038729
  %or.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %add1.i.i.i, i32 %add1.i.i.i, i32 14) #9
  %sub.i.i.i = sub i32 %xor.i.i.i, %or.i.i.i.i
  %xor3.i.i.i = xor i32 %sub.i.i.i, %add.i.i.i120
  %or.i1.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub.i.i.i, i32 %sub.i.i.i, i32 11) #9
  %sub5.i.i.i = sub i32 %xor3.i.i.i, %or.i1.i.i.i
  %xor6.i.i.i = xor i32 %sub5.i.i.i, %add1.i.i.i
  %or.i2.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub5.i.i.i, i32 %sub5.i.i.i, i32 25) #9
  %sub8.i.i.i = sub i32 %xor6.i.i.i, %or.i2.i.i.i
  %xor9.i.i.i = xor i32 %sub8.i.i.i, %sub.i.i.i
  %or.i3.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub8.i.i.i, i32 %sub8.i.i.i, i32 16) #9
  %sub11.i.i.i = sub i32 %xor9.i.i.i, %or.i3.i.i.i
  %xor12.i.i.i = xor i32 %sub11.i.i.i, %sub5.i.i.i
  %or.i4.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub11.i.i.i, i32 %sub11.i.i.i, i32 4) #9
  %sub14.i.i.i = sub i32 %xor12.i.i.i, %or.i4.i.i.i
  %xor15.i.i.i = xor i32 %sub14.i.i.i, %sub8.i.i.i
  %or.i5.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub14.i.i.i, i32 %sub14.i.i.i, i32 14) #9
  %sub17.i.i.i = sub i32 %xor15.i.i.i, %or.i5.i.i.i
  %xor18.i.i.i = xor i32 %sub17.i.i.i, %sub11.i.i.i
  %or.i6.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub17.i.i.i, i32 %sub17.i.i.i, i32 24) #9
  %sub20.i.i.i = sub i32 %xor18.i.i.i, %or.i6.i.i.i
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  %sub.i = add i32 %19, -1
  %and.i = and i32 %sub.i, %sub20.i.i.i
  %lock = getelementptr inbounds %struct.l2t_data, ptr %17, i32 0, i32 3
  tail call void @_raw_write_lock_bh(ptr noundef %lock) #9
  %first = getelementptr %struct.l2t_data, ptr %17, i32 0, i32 5, i32 %and.i, i32 7
  %20 = ptrtoint ptr %first to i32
  call void @__asan_load4_noabort(i32 %20)
  %e.0172 = load ptr, ptr %first, align 4
  %tobool23.not173 = icmp eq ptr %e.0172, null
  br i1 %tobool23.not173, label %if.end21.for.end_crit_edge, label %for.body.lr.ph

if.end21.for.end_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end21
  %21 = zext i8 %15 to i16
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %e.0174 = phi ptr [ %e.0172, %for.body.lr.ph ], [ %e.0, %for.inc.for.body_crit_edge ]
  %addr24 = getelementptr inbounds %struct.l2t_entry, ptr %e.0174, i32 0, i32 2
  %22 = ptrtoint ptr %addr24 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %addr24, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %9)
  %cmp = icmp eq i32 %23, %9
  br i1 %cmp, label %land.lhs.true26, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true26:                                  ; preds = %for.body
  %ifindex27 = getelementptr inbounds %struct.l2t_entry, ptr %e.0174, i32 0, i32 3
  %24 = ptrtoint ptr %ifindex27 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ifindex27, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %13)
  %cmp28 = icmp eq i32 %25, %13
  br i1 %cmp28, label %land.lhs.true30, label %land.lhs.true26.for.inc_crit_edge

land.lhs.true26.for.inc_crit_edge:                ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true30:                                  ; preds = %land.lhs.true26
  %smt_idx31 = getelementptr inbounds %struct.l2t_entry, ptr %e.0174, i32 0, i32 4
  %26 = ptrtoint ptr %smt_idx31 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %smt_idx31, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %27, i16 %21)
  %cmp33 = icmp eq i16 %27, %21
  br i1 %cmp33, label %land.lhs.true.i122, label %land.lhs.true30.for.inc_crit_edge

land.lhs.true30.for.inc_crit_edge:                ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true.i122:                               ; preds = %land.lhs.true30
  %refcnt.i = getelementptr inbounds %struct.l2t_entry, ptr %e.0174, i32 0, i32 11
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !44
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #9
  %28 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #9, !srcloc !45
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %28, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !46
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i)
  %cmp.i = icmp eq i32 %asmresult.i.i.i.i, 1
  br i1 %cmp.i, label %if.then.i123, label %land.lhs.true.i122.l2t_hold.exit_crit_edge

land.lhs.true.i122.l2t_hold.exit_crit_edge:       ; preds = %land.lhs.true.i122
  call void @__sanitizer_cov_trace_pc() #11
  br label %l2t_hold.exit

if.then.i123:                                     ; preds = %land.lhs.true.i122
  call void @__sanitizer_cov_trace_pc() #11
  %nfree.i = getelementptr inbounds %struct.l2t_data, ptr %17, i32 0, i32 2
  %call.i.i2.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %nfree.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %nfree.i, i32 1, i32 3, i32 1) #9
  %29 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nfree.i, ptr %nfree.i, i32 1, ptr elementtype(i32) %nfree.i) #9, !srcloc !47
  br label %l2t_hold.exit

l2t_hold.exit:                                    ; preds = %if.then.i123, %land.lhs.true.i122.l2t_hold.exit_crit_edge
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcnt.i, i32 noundef 4) #9
  %30 = ptrtoint ptr %refcnt.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %refcnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %31)
  %cmp37 = icmp eq i32 %31, 1
  br i1 %cmp37, label %if.then39, label %l2t_hold.exit.done_rcu_crit_edge

l2t_hold.exit.done_rcu_crit_edge:                 ; preds = %l2t_hold.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %done_rcu

if.then39:                                        ; preds = %l2t_hold.exit
  %lock.i = getelementptr inbounds %struct.l2t_entry, ptr %e.0174, i32 0, i32 10
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #9
  %neigh1.i = getelementptr inbounds %struct.l2t_entry, ptr %e.0174, i32 0, i32 6
  %32 = ptrtoint ptr %neigh1.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %neigh1.i, align 4
  %cmp.not.i = icmp eq ptr %33, %call.i119
  br i1 %cmp.not.i, label %if.then39.reuse_entry.exit_crit_edge, label %if.then.i124

if.then39.reuse_entry.exit_crit_edge:             ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #11
  br label %reuse_entry.exit

if.then.i124:                                     ; preds = %if.then39
  %refcnt.i.i = getelementptr inbounds %struct.neighbour, ptr %call.i119, i32 0, i32 6
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %refcnt.i.i, i32 1, i32 3, i32 1) #9
  %34 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i.i, ptr %refcnt.i.i, i32 1, ptr elementtype(i32) %refcnt.i.i) #9, !srcloc !48
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %34, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.i124.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !49

if.then.i124.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then.i124
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i124
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %35 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %35)
  %.not.i.i.i.i.i = icmp sgt i32 %35, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.refcount_inc.exit.i.i_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !37

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.refcount_inc.exit.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %refcount_inc.exit.i.i

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then.i124.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then.i124.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i.i, i32 noundef %.sink.i.i.i.i.i) #9
  br label %refcount_inc.exit.i.i

refcount_inc.exit.i.i:                            ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.refcount_inc.exit.i.i_crit_edge
  %36 = ptrtoint ptr %neigh1.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %neigh1.i, align 4
  %tobool.not.i.i = icmp eq ptr %37, null
  br i1 %tobool.not.i.i, label %refcount_inc.exit.i.i.neigh_replace.exit.i_crit_edge, label %if.then.i.i

refcount_inc.exit.i.i.neigh_replace.exit.i_crit_edge: ; preds = %refcount_inc.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %neigh_replace.exit.i

if.then.i.i:                                      ; preds = %refcount_inc.exit.i.i
  %refcnt.i.i.i = getelementptr inbounds %struct.neighbour, ptr %37, i32 0, i32 6
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i.i.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !39
  tail call void @llvm.prefetch.p0(ptr %refcnt.i.i.i, i32 1, i32 3, i32 1) #9
  %38 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i.i.i, ptr %refcnt.i.i.i, i32 1, ptr elementtype(i32) %refcnt.i.i.i) #9, !srcloc !40
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %38, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.neigh_replace.exit.i_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !37

if.end5.i.i.i.i.i.i.neigh_replace.exit.i_crit_edge: ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %neigh_replace.exit.i

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i.i.i, i32 noundef 3) #9
  br label %neigh_replace.exit.i

if.then.i.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !41
  tail call void @neigh_destroy(ptr noundef nonnull %37) #9
  br label %neigh_replace.exit.i

neigh_replace.exit.i:                             ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.neigh_replace.exit.i_crit_edge, %refcount_inc.exit.i.i.neigh_replace.exit.i_crit_edge
  %39 = ptrtoint ptr %neigh1.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call.i119, ptr %neigh1.i, align 4
  br label %reuse_entry.exit

reuse_entry.exit:                                 ; preds = %neigh_replace.exit.i, %if.then39.reuse_entry.exit_crit_edge
  %nud_state2.i = getelementptr inbounds %struct.neighbour, ptr %call.i119, i32 0, i32 12
  %40 = ptrtoint ptr %nud_state2.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %nud_state2.i, align 8
  %conv.i = zext i8 %41 to i32
  %dmac.i = getelementptr inbounds %struct.l2t_entry, ptr %e.0174, i32 0, i32 12
  %ha.i = getelementptr inbounds %struct.neighbour, ptr %call.i119, i32 0, i32 18
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(6) %dmac.i, ptr noundef dereferenceable(6) %ha.i, i32 6) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool.not.i125 = icmp ne i32 %bcmp.i, 0
  %and.i126 = and i32 %conv.i, 222
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i126)
  %tobool4.not.i = icmp eq i32 %and.i126, 0
  %or.cond.i = select i1 %tobool.not.i125, i1 true, i1 %tobool4.not.i
  %and6.i = and i32 %conv.i, 194
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp eq i32 %and6.i, 0
  %..i = zext i1 %tobool7.not.i to i16
  %.sink.i = select i1 %or.cond.i, i16 2, i16 %..i
  %42 = ptrtoint ptr %e.0174 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %.sink.i, ptr %e.0174, align 4
  br label %done_rcu.sink.split

for.inc:                                          ; preds = %land.lhs.true30.for.inc_crit_edge, %land.lhs.true26.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %next = getelementptr inbounds %struct.l2t_entry, ptr %e.0174, i32 0, i32 8
  %43 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %43)
  %e.0 = load ptr, ptr %next, align 4
  %tobool23.not = icmp eq ptr %e.0, null
  br i1 %tobool23.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end21.for.end_crit_edge
  %nfree.i127 = getelementptr inbounds %struct.l2t_data, ptr %17, i32 0, i32 2
  %call.i.i.i128 = tail call zeroext i1 @__kasan_check_read(ptr noundef %nfree.i127, i32 noundef 4) #9
  %44 = ptrtoint ptr %nfree.i127 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %nfree.i127, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool.not.i129 = icmp eq i32 %45, 0
  br i1 %tobool.not.i129, label %for.end.done_rcu_crit_edge, label %if.end.i

for.end.done_rcu_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %done_rcu

if.end.i:                                         ; preds = %for.end
  %rover.i = getelementptr inbounds %struct.l2t_data, ptr %17, i32 0, i32 1
  %46 = ptrtoint ptr %rover.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %rover.i, align 4
  %48 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %17, align 4
  %arrayidx.i = getelementptr %struct.l2t_data, ptr %17, i32 0, i32 5, i32 %49
  %cmp.not66.i = icmp eq ptr %47, %arrayidx.i
  br i1 %cmp.not66.i, label %if.end.i.for.end.i_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %e.067.i = phi ptr [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ], [ %47, %if.end.i.for.body.i_crit_edge ]
  %refcnt.i130 = getelementptr inbounds %struct.l2t_entry, ptr %e.067.i, i32 0, i32 11
  %call.i.i60.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcnt.i130, i32 noundef 4) #9
  %50 = ptrtoint ptr %refcnt.i130 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %refcnt.i130, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp2.i = icmp eq i32 %51, 0
  br i1 %cmp2.i, label %for.body.i.found.i_crit_edge, label %for.inc.i

for.body.i.found.i_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %found.i

for.inc.i:                                        ; preds = %for.body.i
  %incdec.ptr.i = getelementptr %struct.l2t_entry, ptr %e.067.i, i32 1
  %cmp.not.i131 = icmp eq ptr %incdec.ptr.i, %arrayidx.i
  br i1 %cmp.not.i131, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end.i.for.end.i_crit_edge
  %arrayidx6.i = getelementptr %struct.l2t_data, ptr %17, i32 3, i32 3
  br label %for.cond7.i

for.cond7.i:                                      ; preds = %for.cond7.i.for.cond7.i_crit_edge, %for.end.i
  %e.1.i = phi ptr [ %arrayidx6.i, %for.end.i ], [ %incdec.ptr13.i, %for.cond7.i.for.cond7.i_crit_edge ]
  %refcnt8.i = getelementptr inbounds %struct.l2t_entry, ptr %e.1.i, i32 0, i32 11
  %call.i.i61.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcnt8.i, i32 noundef 4) #9
  %52 = ptrtoint ptr %refcnt8.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %refcnt8.i, align 4
  %tobool10.not.i = icmp eq i32 %53, 0
  %incdec.ptr13.i = getelementptr %struct.l2t_entry, ptr %e.1.i, i32 1
  br i1 %tobool10.not.i, label %for.cond7.i.found.i_crit_edge, label %for.cond7.i.for.cond7.i_crit_edge

for.cond7.i.for.cond7.i_crit_edge:                ; preds = %for.cond7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond7.i

for.cond7.i.found.i_crit_edge:                    ; preds = %for.cond7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %found.i

found.i:                                          ; preds = %for.cond7.i.found.i_crit_edge, %for.body.i.found.i_crit_edge
  %e.2.i = phi ptr [ %e.1.i, %for.cond7.i.found.i_crit_edge ], [ %e.067.i, %for.body.i.found.i_crit_edge ]
  %add.ptr.i132 = getelementptr %struct.l2t_entry, ptr %e.2.i, i32 1
  %54 = ptrtoint ptr %rover.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %add.ptr.i132, ptr %rover.i, align 4
  %call.i.i62.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %nfree.i127, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %nfree.i127, i32 1, i32 3, i32 1) #9
  %55 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nfree.i127, ptr %nfree.i127, i32 1, ptr elementtype(i32) %nfree.i127) #9, !srcloc !47
  %56 = ptrtoint ptr %e.2.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %e.2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %57)
  %cmp17.not.i = icmp eq i16 %57, 3
  br i1 %cmp17.not.i, label %found.i.alloc_l2e.exit_crit_edge, label %if.then19.i

found.i.alloc_l2e.exit_crit_edge:                 ; preds = %found.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %alloc_l2e.exit

if.then19.i:                                      ; preds = %found.i
  %addr.i = getelementptr inbounds %struct.l2t_entry, ptr %e.2.i, i32 0, i32 2
  %58 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %addr.i, align 4
  %ifindex.i = getelementptr inbounds %struct.l2t_entry, ptr %e.2.i, i32 0, i32 3
  %60 = ptrtoint ptr %ifindex.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %ifindex.i, align 4
  %add.i.i.i.i = add i32 %59, -559038729
  %add1.i.i.i.i = add i32 %61, -559038729
  %xor.i.i.i.i = xor i32 %add1.i.i.i.i, -559038729
  %or.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %add1.i.i.i.i, i32 %add1.i.i.i.i, i32 14) #9
  %sub.i.i.i.i = sub i32 %xor.i.i.i.i, %or.i.i.i.i.i
  %xor3.i.i.i.i = xor i32 %sub.i.i.i.i, %add.i.i.i.i
  %or.i1.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub.i.i.i.i, i32 %sub.i.i.i.i, i32 11) #9
  %sub5.i.i.i.i = sub i32 %xor3.i.i.i.i, %or.i1.i.i.i.i
  %xor6.i.i.i.i = xor i32 %sub5.i.i.i.i, %add1.i.i.i.i
  %or.i2.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub5.i.i.i.i, i32 %sub5.i.i.i.i, i32 25) #9
  %sub8.i.i.i.i = sub i32 %xor6.i.i.i.i, %or.i2.i.i.i.i
  %xor9.i.i.i.i = xor i32 %sub8.i.i.i.i, %sub.i.i.i.i
  %or.i3.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub8.i.i.i.i, i32 %sub8.i.i.i.i, i32 16) #9
  %sub11.i.i.i.i = sub i32 %xor9.i.i.i.i, %or.i3.i.i.i.i
  %xor12.i.i.i.i = xor i32 %sub11.i.i.i.i, %sub5.i.i.i.i
  %or.i4.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub11.i.i.i.i, i32 %sub11.i.i.i.i, i32 4) #9
  %sub14.i.i.i.i = sub i32 %xor12.i.i.i.i, %or.i4.i.i.i.i
  %xor15.i.i.i.i = xor i32 %sub14.i.i.i.i, %sub8.i.i.i.i
  %or.i5.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub14.i.i.i.i, i32 %sub14.i.i.i.i, i32 14) #9
  %sub17.i.i.i.i = sub i32 %xor15.i.i.i.i, %or.i5.i.i.i.i
  %xor18.i.i.i.i = xor i32 %sub17.i.i.i.i, %sub11.i.i.i.i
  %or.i6.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub17.i.i.i.i, i32 %sub17.i.i.i.i, i32 24) #9
  %sub20.i.i.i.i = sub i32 %xor18.i.i.i.i, %or.i6.i.i.i.i
  %62 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %17, align 4
  %sub.i.i = add i32 %63, -1
  %and.i.i = and i32 %sub20.i.i.i.i, %sub.i.i
  %first.i = getelementptr %struct.l2t_data, ptr %17, i32 0, i32 5, i32 %and.i.i, i32 7
  %64 = ptrtoint ptr %first.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %first.i, align 4
  %tobool24.not68.i = icmp eq ptr %65, null
  br i1 %tobool24.not68.i, label %if.then19.i.for.end32.i_crit_edge, label %for.body25.i.preheader

if.then19.i.for.end32.i_crit_edge:                ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end32.i

for.body25.i.preheader:                           ; preds = %if.then19.i
  %cmp26.i176 = icmp eq ptr %65, %e.2.i
  br i1 %cmp26.i176, label %for.body25.i.preheader.if.then28.i_crit_edge, label %for.body25.i.preheader.for.cond23.i_crit_edge

for.body25.i.preheader.for.cond23.i_crit_edge:    ; preds = %for.body25.i.preheader
  br label %for.cond23.i

for.body25.i.preheader.if.then28.i_crit_edge:     ; preds = %for.body25.i.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then28.i

for.cond23.i:                                     ; preds = %for.body25.i.for.cond23.i_crit_edge, %for.body25.i.preheader.for.cond23.i_crit_edge
  %66 = phi ptr [ %68, %for.body25.i.for.cond23.i_crit_edge ], [ %65, %for.body25.i.preheader.for.cond23.i_crit_edge ]
  %next31.i = getelementptr inbounds %struct.l2t_entry, ptr %66, i32 0, i32 8
  %67 = ptrtoint ptr %next31.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %next31.i, align 4
  %tobool24.not.i = icmp eq ptr %68, null
  br i1 %tobool24.not.i, label %for.cond23.i.for.end32.i_crit_edge, label %for.body25.i

for.cond23.i.for.end32.i_crit_edge:               ; preds = %for.cond23.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end32.i

for.body25.i:                                     ; preds = %for.cond23.i
  %cmp26.i = icmp eq ptr %68, %e.2.i
  br i1 %cmp26.i, label %if.then28.i.loopexit, label %for.body25.i.for.cond23.i_crit_edge

for.body25.i.for.cond23.i_crit_edge:              ; preds = %for.body25.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond23.i

if.then28.i.loopexit:                             ; preds = %for.body25.i
  call void @__sanitizer_cov_trace_pc() #11
  %next31.i.le = getelementptr inbounds %struct.l2t_entry, ptr %66, i32 0, i32 8
  br label %if.then28.i

if.then28.i:                                      ; preds = %if.then28.i.loopexit, %for.body25.i.preheader.if.then28.i_crit_edge
  %p.069.i.lcssa = phi ptr [ %first.i, %for.body25.i.preheader.if.then28.i_crit_edge ], [ %next31.i.le, %if.then28.i.loopexit ]
  %next.i = getelementptr inbounds %struct.l2t_entry, ptr %e.2.i, i32 0, i32 8
  %69 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %next.i, align 4
  %71 = ptrtoint ptr %p.069.i.lcssa to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %70, ptr %p.069.i.lcssa, align 4
  br label %for.end32.i

for.end32.i:                                      ; preds = %if.then28.i, %for.cond23.i.for.end32.i_crit_edge, %if.then19.i.for.end32.i_crit_edge
  %72 = ptrtoint ptr %e.2.i to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 3, ptr %e.2.i, align 4
  br label %alloc_l2e.exit

alloc_l2e.exit:                                   ; preds = %for.end32.i, %found.i.alloc_l2e.exit_crit_edge
  %tobool43.not = icmp eq ptr %e.2.i, null
  br i1 %tobool43.not, label %alloc_l2e.exit.done_rcu_crit_edge, label %if.then44

alloc_l2e.exit.done_rcu_crit_edge:                ; preds = %alloc_l2e.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %done_rcu

if.then44:                                        ; preds = %alloc_l2e.exit
  %lock45 = getelementptr inbounds %struct.l2t_entry, ptr %e.2.i, i32 0, i32 10
  tail call void @_raw_spin_lock(ptr noundef %lock45) #9
  %73 = ptrtoint ptr %first to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %first, align 4
  %next49 = getelementptr inbounds %struct.l2t_entry, ptr %e.2.i, i32 0, i32 8
  %75 = ptrtoint ptr %next49 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %74, ptr %next49, align 4
  store ptr %e.2.i, ptr %first, align 4
  %76 = ptrtoint ptr %e.2.i to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 2, ptr %e.2.i, align 4
  %addr53 = getelementptr inbounds %struct.l2t_entry, ptr %e.2.i, i32 0, i32 2
  %77 = ptrtoint ptr %addr53 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %9, ptr %addr53, align 4
  %ifindex54 = getelementptr inbounds %struct.l2t_entry, ptr %e.2.i, i32 0, i32 3
  %78 = ptrtoint ptr %ifindex54 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %13, ptr %ifindex54, align 4
  %conv55 = zext i8 %15 to i16
  %smt_idx56 = getelementptr inbounds %struct.l2t_entry, ptr %e.2.i, i32 0, i32 4
  %79 = ptrtoint ptr %smt_idx56 to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 %conv55, ptr %smt_idx56, align 4
  %refcnt57 = getelementptr inbounds %struct.l2t_entry, ptr %e.2.i, i32 0, i32 11
  %call.i.i118 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt57, i32 noundef 4) #9
  %80 = ptrtoint ptr %refcnt57 to i32
  call void @__asan_store4_noabort(i32 %80)
  store volatile i32 1, ptr %refcnt57, align 4
  %refcnt.i133 = getelementptr inbounds %struct.neighbour, ptr %call.i119, i32 0, i32 6
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i133, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %refcnt.i133, i32 1, i32 3, i32 1) #9
  %81 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i133, ptr %refcnt.i133, i32 1, ptr elementtype(i32) %refcnt.i133) #9, !srcloc !48
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %81, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then44.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !49

if.then44.if.end15.sink.split.i.i.i.i_crit_edge:  ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then44
  %add.i.i.i.i134 = add i32 %asmresult.i.i.i.i.i.i, 1
  %82 = or i32 %add.i.i.i.i134, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %82)
  %.not.i.i.i.i = icmp sgt i32 %82, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.refcount_inc.exit.i_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !37

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.refcount_inc.exit.i_crit_edge:    ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %refcount_inc.exit.i

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then44.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then44.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i133, i32 noundef %.sink.i.i.i.i) #9
  br label %refcount_inc.exit.i

refcount_inc.exit.i:                              ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.refcount_inc.exit.i_crit_edge
  %neigh.i = getelementptr inbounds %struct.l2t_entry, ptr %e.2.i, i32 0, i32 6
  %83 = ptrtoint ptr %neigh.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %neigh.i, align 4
  %tobool.not.i135 = icmp eq ptr %84, null
  br i1 %tobool.not.i135, label %refcount_inc.exit.i.neigh_replace.exit_crit_edge, label %if.then.i138

refcount_inc.exit.i.neigh_replace.exit_crit_edge: ; preds = %refcount_inc.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %neigh_replace.exit

if.then.i138:                                     ; preds = %refcount_inc.exit.i
  %refcnt.i.i136 = getelementptr inbounds %struct.neighbour, ptr %84, i32 0, i32 6
  %call.i.i.i.i.i.i.i137 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i.i136, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !39
  tail call void @llvm.prefetch.p0(ptr %refcnt.i.i136, i32 1, i32 3, i32 1) #9
  %85 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i.i136, ptr %refcnt.i.i136, i32 1, ptr elementtype(i32) %refcnt.i.i136) #9, !srcloc !40
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %85, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i140, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i138
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i139 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i139, label %if.end5.i.i.i.i.i.neigh_replace.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !37

if.end5.i.i.i.i.i.neigh_replace.exit_crit_edge:   ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %neigh_replace.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i.i136, i32 noundef 3) #9
  br label %neigh_replace.exit

if.then.i.i140:                                   ; preds = %if.then.i138
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !41
  tail call void @neigh_destroy(ptr noundef nonnull %84) #9
  br label %neigh_replace.exit

neigh_replace.exit:                               ; preds = %if.then.i.i140, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.neigh_replace.exit_crit_edge, %refcount_inc.exit.i.neigh_replace.exit_crit_edge
  %86 = ptrtoint ptr %neigh.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %call.i119, ptr %neigh.i, align 4
  %87 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %dev1, align 4
  %priv_flags.i = getelementptr inbounds %struct.net_device, ptr %88, i32 0, i32 15
  %89 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_load8_noabort(i32 %89)
  %90 = load i64, ptr %priv_flags.i, align 16
  %and.i142 = and i64 %90, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i142)
  %tobool.i.not = icmp eq i64 %and.i142, 0
  br i1 %tobool.i.not, label %neigh_replace.exit.if.end64_crit_edge, label %if.then60

neigh_replace.exit.if.end64_crit_edge:            ; preds = %neigh_replace.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end64

if.then60:                                        ; preds = %neigh_replace.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call62 = tail call zeroext i16 @vlan_dev_vlan_id(ptr noundef %88) #9
  br label %if.end64

if.end64:                                         ; preds = %if.then60, %neigh_replace.exit.if.end64_crit_edge
  %call62.sink = phi i16 [ %call62, %if.then60 ], [ 4095, %neigh_replace.exit.if.end64_crit_edge ]
  %91 = getelementptr inbounds %struct.l2t_entry, ptr %e.2.i, i32 0, i32 5
  %92 = ptrtoint ptr %91 to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 %call62.sink, ptr %91, align 2
  br label %done_rcu.sink.split

done_rcu.sink.split:                              ; preds = %if.end64, %reuse_entry.exit
  %lock.i.sink = phi ptr [ %lock.i, %reuse_entry.exit ], [ %lock45, %if.end64 ]
  %e.1.ph = phi ptr [ %e.0174, %reuse_entry.exit ], [ %e.2.i, %if.end64 ]
  tail call void @_raw_spin_unlock(ptr noundef %lock.i.sink) #9
  br label %done_rcu

done_rcu:                                         ; preds = %done_rcu.sink.split, %alloc_l2e.exit.done_rcu_crit_edge, %for.end.done_rcu_crit_edge, %l2t_hold.exit.done_rcu_crit_edge
  %e.1 = phi ptr [ %e.0174, %l2t_hold.exit.done_rcu_crit_edge ], [ null, %alloc_l2e.exit.done_rcu_crit_edge ], [ null, %for.end.done_rcu_crit_edge ], [ %e.1.ph, %done_rcu.sink.split ]
  tail call void @_raw_write_unlock_bh(ptr noundef %lock) #9
  br label %if.then69

if.then69:                                        ; preds = %done_rcu, %do.end17.if.then69_crit_edge
  %e.2166 = phi ptr [ %e.1, %done_rcu ], [ null, %do.end17.if.then69_crit_edge ]
  %refcnt.i143 = getelementptr inbounds %struct.neighbour, ptr %call.i119, i32 0, i32 6
  %call.i.i.i.i.i.i144 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i143, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !39
  tail call void @llvm.prefetch.p0(ptr %refcnt.i143, i32 1, i32 3, i32 1) #9
  %93 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i143, ptr %refcnt.i143, i32 1, ptr elementtype(i32) %refcnt.i143) #9, !srcloc !40
  %asmresult.i.i.i.i.i.i.i145 = extractvalue { i32, i32, i32 } %93, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i145)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i145, 1
  br i1 %cmp.i.i.i.i, label %if.then.i147, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then69
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i145)
  %.not.i.i.i.i146 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i145, 0
  br i1 %.not.i.i.i.i146, label %if.end5.i.i.i.i.if.end70_crit_edge, label %if.then10.i.i.i.i, !prof !37

if.end5.i.i.i.i.if.end70_crit_edge:               ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end70

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i143, i32 noundef 3) #9
  br label %if.end70

if.then.i147:                                     ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !41
  tail call void @neigh_destroy(ptr noundef nonnull %call.i119) #9
  br label %if.end70

if.end70:                                         ; preds = %if.then.i147, %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.end70_crit_edge, %rcu_read_lock.exit.if.end70_crit_edge
  %e.2163 = phi ptr [ %e.2166, %if.end5.i.i.i.i.if.end70_crit_edge ], [ %e.2166, %if.then10.i.i.i.i ], [ %e.2166, %if.then.i147 ], [ null, %rcu_read_lock.exit.if.end70_crit_edge ]
  %call.i149 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i149, label %if.end70.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i152

if.end70.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true.i152:                               ; preds = %if.end70
  %call1.i150 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i150)
  %tobool.not.i151 = icmp eq i32 %call1.i150, 0
  br i1 %tobool.not.i151, label %land.lhs.true.i152.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i154

land.lhs.true.i152.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i152
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true2.i154:                              ; preds = %land.lhs.true.i152
  %.b4.i153 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i153, label %land.lhs.true2.i154.rcu_read_unlock.exit_crit_edge, label %if.then.i155

land.lhs.true2.i154.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i154
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

if.then.i155:                                     ; preds = %land.lhs.true2.i154
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 724, ptr noundef nonnull @.str.7) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i155, %land.lhs.true2.i154.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i152.rcu_read_unlock.exit_crit_edge, %if.end70.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !50
  %94 = tail call i32 @llvm.read_register.i32(metadata !27) #9
  %and.i.i.i.i.i156 = and i32 %94, -16384
  %95 = inttoptr i32 %and.i.i.i.i.i156 to ptr
  %preempt_count.i.i.i.i157 = getelementptr inbounds %struct.thread_info, ptr %95, i32 0, i32 1
  %96 = ptrtoint ptr %preempt_count.i.i.i.i157 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load volatile i32, ptr %preempt_count.i.i.i.i157, align 4
  %sub.i.i.i158 = add i32 %97, -1
  store volatile i32 %sub.i.i.i158, ptr %preempt_count.i.i.i.i157, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  ret ptr %e.2163
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @vlan_dev_vlan_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @t3_l2t_update(ptr noundef %dev, ptr noundef %neigh) local_unnamed_addr #0 align 64 {
entry:
  %arpq = alloca %struct.sk_buff_head, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %arpq) #9
  %0 = getelementptr inbounds i8, ptr %arpq, i32 12
  %1 = call ptr @memset(ptr %0, i32 255, i32 44)
  %l2opt = getelementptr inbounds %struct.t3cdev, ptr %dev, i32 0, i32 10
  %2 = ptrtoint ptr %l2opt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %l2opt, align 4
  %call = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end7_crit_edge

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end7

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b98 = load i1, ptr @t3_l2t_update.__warned, align 1
  br i1 %.b98, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @t3_l2t_update.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 403, ptr noundef nonnull @.str.1) #9
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %entry.do.end7_crit_edge
  %primary_key = getelementptr inbounds %struct.neighbour, ptr %neigh, i32 0, i32 27
  %4 = ptrtoint ptr %primary_key to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %primary_key, align 4
  %dev9 = getelementptr inbounds %struct.neighbour, ptr %neigh, i32 0, i32 25
  %6 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev9, align 4
  %ifindex = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 17
  %8 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ifindex, align 4
  %add.i.i.i = add i32 %5, -559038729
  %add1.i.i.i = add i32 %9, -559038729
  %xor.i.i.i = xor i32 %add1.i.i.i, -559038729
  %or.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %add1.i.i.i, i32 %add1.i.i.i, i32 14) #9
  %sub.i.i.i = sub i32 %xor.i.i.i, %or.i.i.i.i
  %xor3.i.i.i = xor i32 %sub.i.i.i, %add.i.i.i
  %or.i1.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub.i.i.i, i32 %sub.i.i.i, i32 11) #9
  %sub5.i.i.i = sub i32 %xor3.i.i.i, %or.i1.i.i.i
  %xor6.i.i.i = xor i32 %sub5.i.i.i, %add1.i.i.i
  %or.i2.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub5.i.i.i, i32 %sub5.i.i.i, i32 25) #9
  %sub8.i.i.i = sub i32 %xor6.i.i.i, %or.i2.i.i.i
  %xor9.i.i.i = xor i32 %sub8.i.i.i, %sub.i.i.i
  %or.i3.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub8.i.i.i, i32 %sub8.i.i.i, i32 16) #9
  %sub11.i.i.i = sub i32 %xor9.i.i.i, %or.i3.i.i.i
  %xor12.i.i.i = xor i32 %sub11.i.i.i, %sub5.i.i.i
  %or.i4.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub11.i.i.i, i32 %sub11.i.i.i, i32 4) #9
  %sub14.i.i.i = sub i32 %xor12.i.i.i, %or.i4.i.i.i
  %xor15.i.i.i = xor i32 %sub14.i.i.i, %sub8.i.i.i
  %or.i5.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub14.i.i.i, i32 %sub14.i.i.i, i32 14) #9
  %sub17.i.i.i = sub i32 %xor15.i.i.i, %or.i5.i.i.i
  %xor18.i.i.i = xor i32 %sub17.i.i.i, %sub11.i.i.i
  %or.i6.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub17.i.i.i, i32 %sub17.i.i.i, i32 24) #9
  %sub20.i.i.i = sub i32 %xor18.i.i.i, %or.i6.i.i.i
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %3, align 4
  %sub.i = add i32 %11, -1
  %and.i = and i32 %sub20.i.i.i, %sub.i
  %lock = getelementptr inbounds %struct.l2t_data, ptr %3, i32 0, i32 3
  tail call void @_raw_read_lock_bh(ptr noundef %lock) #9
  %first = getelementptr %struct.l2t_data, ptr %3, i32 0, i32 5, i32 %and.i, i32 7
  %12 = ptrtoint ptr %first to i32
  call void @__asan_load4_noabort(i32 %12)
  %e.0105 = load ptr, ptr %first, align 4
  %tobool11.not106 = icmp eq ptr %e.0105, null
  br i1 %tobool11.not106, label %do.end7.for.end_crit_edge, label %do.end7.for.body_crit_edge

do.end7.for.body_crit_edge:                       ; preds = %do.end7
  br label %for.body

do.end7.for.end_crit_edge:                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end7.for.body_crit_edge
  %e.0107 = phi ptr [ %e.0, %for.inc.for.body_crit_edge ], [ %e.0105, %do.end7.for.body_crit_edge ]
  %addr12 = getelementptr inbounds %struct.l2t_entry, ptr %e.0107, i32 0, i32 2
  %13 = ptrtoint ptr %addr12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %addr12, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %5)
  %cmp = icmp eq i32 %14, %5
  br i1 %cmp, label %land.lhs.true13, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true13:                                  ; preds = %for.body
  %ifindex14 = getelementptr inbounds %struct.l2t_entry, ptr %e.0107, i32 0, i32 3
  %15 = ptrtoint ptr %ifindex14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ifindex14, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %9)
  %cmp15 = icmp eq i32 %16, %9
  br i1 %cmp15, label %if.then16, label %land.lhs.true13.for.inc_crit_edge

land.lhs.true13.for.inc_crit_edge:                ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then16:                                        ; preds = %land.lhs.true13
  %lock17 = getelementptr inbounds %struct.l2t_entry, ptr %e.0107, i32 0, i32 10
  tail call void @_raw_spin_lock(ptr noundef %lock17) #9
  %17 = ptrtoint ptr %arpq to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %arpq, ptr %arpq, align 4
  %prev.i = getelementptr inbounds %struct.anon.54, ptr %arpq, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %arpq, ptr %prev.i, align 4
  %qlen.i = getelementptr inbounds %struct.sk_buff_head, ptr %arpq, i32 0, i32 1
  %19 = ptrtoint ptr %qlen.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %qlen.i, align 4
  call void @_raw_read_unlock(ptr noundef %lock) #9
  %refcnt = getelementptr inbounds %struct.l2t_entry, ptr %e.0107, i32 0, i32 11
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %refcnt, i32 noundef 4) #9
  %20 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool22.not = icmp eq i32 %21, 0
  br i1 %tobool22.not, label %if.then16.if.end57_crit_edge, label %if.then23

if.then16.if.end57_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end57

for.inc:                                          ; preds = %land.lhs.true13.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %next = getelementptr inbounds %struct.l2t_entry, ptr %e.0107, i32 0, i32 8
  %22 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %22)
  %e.0 = load ptr, ptr %next, align 4
  %tobool11.not = icmp eq ptr %e.0, null
  br i1 %tobool11.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end7.for.end_crit_edge
  tail call void @_raw_read_unlock_bh(ptr noundef %lock) #9
  br label %cleanup

if.then23:                                        ; preds = %if.then16
  %neigh24 = getelementptr inbounds %struct.l2t_entry, ptr %e.0107, i32 0, i32 6
  %23 = ptrtoint ptr %neigh24 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %neigh24, align 4
  %cmp25.not = icmp eq ptr %24, %neigh
  br i1 %cmp25.not, label %if.then23.if.end27_crit_edge, label %if.then26

if.then23.if.end27_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

if.then26:                                        ; preds = %if.then23
  %refcnt.i = getelementptr inbounds %struct.neighbour, ptr %neigh, i32 0, i32 6
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #9
  call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #9
  %25 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #9, !srcloc !48
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %25, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then26.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !49

if.then26.if.end15.sink.split.i.i.i.i_crit_edge:  ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then26
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %26 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %26)
  %.not.i.i.i.i = icmp sgt i32 %26, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.refcount_inc.exit.i_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !37

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.refcount_inc.exit.i_crit_edge:    ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %refcount_inc.exit.i

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then26.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then26.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef %.sink.i.i.i.i) #9
  br label %refcount_inc.exit.i

refcount_inc.exit.i:                              ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.refcount_inc.exit.i_crit_edge
  %27 = ptrtoint ptr %neigh24 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %neigh24, align 4
  %tobool.not.i = icmp eq ptr %28, null
  br i1 %tobool.not.i, label %refcount_inc.exit.i.neigh_replace.exit_crit_edge, label %if.then.i

refcount_inc.exit.i.neigh_replace.exit_crit_edge: ; preds = %refcount_inc.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %neigh_replace.exit

if.then.i:                                        ; preds = %refcount_inc.exit.i
  %refcnt.i.i = getelementptr inbounds %struct.neighbour, ptr %28, i32 0, i32 6
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i.i, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !39
  call void @llvm.prefetch.p0(ptr %refcnt.i.i, i32 1, i32 3, i32 1) #9
  %29 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i.i, ptr %refcnt.i.i, i32 1, ptr elementtype(i32) %refcnt.i.i) #9, !srcloc !40
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %29, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.neigh_replace.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !37

if.end5.i.i.i.i.i.neigh_replace.exit_crit_edge:   ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %neigh_replace.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @refcount_warn_saturate(ptr noundef %refcnt.i.i, i32 noundef 3) #9
  br label %neigh_replace.exit

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !41
  call void @neigh_destroy(ptr noundef nonnull %28) #9
  br label %neigh_replace.exit

neigh_replace.exit:                               ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.neigh_replace.exit_crit_edge, %refcount_inc.exit.i.neigh_replace.exit_crit_edge
  %30 = ptrtoint ptr %neigh24 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %neigh, ptr %neigh24, align 4
  br label %if.end27

if.end27:                                         ; preds = %neigh_replace.exit, %if.then23.if.end27_crit_edge
  %31 = ptrtoint ptr %e.0107 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %e.0107, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %32)
  %cmp28 = icmp eq i16 %32, 2
  %nud_state = getelementptr inbounds %struct.neighbour, ptr %neigh, i32 0, i32 12
  %33 = ptrtoint ptr %nud_state to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %nud_state, align 8
  br i1 %cmp28, label %if.then30, label %if.else43

if.then30:                                        ; preds = %if.end27
  %conv31 = zext i8 %34 to i32
  %and = and i32 %conv31, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool32.not = icmp eq i32 %and, 0
  br i1 %tobool32.not, label %if.else, label %if.then33

if.then33:                                        ; preds = %if.then30
  %arpq34 = getelementptr inbounds %struct.l2t_entry, ptr %e.0107, i32 0, i32 9
  %35 = ptrtoint ptr %arpq34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arpq34, align 4
  %cmp.i.not.i = icmp eq ptr %36, %arpq34
  br i1 %cmp.i.not.i, label %if.then33.if.end57_crit_edge, label %if.then.i100

if.then33.if.end57_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end57

if.then.i100:                                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #11
  %37 = ptrtoint ptr %arpq to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arpq, align 4
  %prev2.i.i = getelementptr inbounds %struct.l2t_entry, ptr %e.0107, i32 0, i32 9, i32 0, i32 0, i32 1
  %39 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %prev2.i.i, align 4
  %prev5.i.i = getelementptr inbounds %struct.anon.0, ptr %36, i32 0, i32 1
  %41 = ptrtoint ptr %prev5.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %arpq, ptr %prev5.i.i, align 4
  store volatile ptr %36, ptr %arpq, align 8
  %42 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %38, ptr %40, align 8
  %prev35.i.i = getelementptr inbounds %struct.anon.0, ptr %38, i32 0, i32 1
  %43 = ptrtoint ptr %prev35.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %40, ptr %prev35.i.i, align 4
  %qlen.i99 = getelementptr inbounds %struct.l2t_entry, ptr %e.0107, i32 0, i32 9, i32 1
  %44 = ptrtoint ptr %qlen.i99 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %qlen.i99, align 4
  %46 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %qlen.i, align 4
  %add.i = add i32 %47, %45
  store i32 %add.i, ptr %qlen.i, align 4
  %48 = ptrtoint ptr %arpq34 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %arpq34, ptr %arpq34, align 4
  store ptr %arpq34, ptr %prev2.i.i, align 4
  store i32 0, ptr %qlen.i99, align 4
  br label %if.end57

if.else:                                          ; preds = %if.then30
  %and37 = and i32 %conv31, 198
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %if.else.if.end57_crit_edge, label %if.then39

if.else.if.end57_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end57

if.then39:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @setup_l2e_send_pending(ptr noundef %dev, ptr noundef null, ptr noundef nonnull %e.0107)
  br label %if.end57

if.else43:                                        ; preds = %if.end27
  %49 = and i8 %34, -62
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool47.not = icmp eq i8 %49, 0
  %conv48 = zext i1 %tobool47.not to i16
  %50 = ptrtoint ptr %e.0107 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %conv48, ptr %e.0107, align 4
  %dmac = getelementptr inbounds %struct.l2t_entry, ptr %e.0107, i32 0, i32 12
  %ha = getelementptr inbounds %struct.neighbour, ptr %neigh, i32 0, i32 18
  %51 = ptrtoint ptr %dmac to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %dmac, align 4
  %53 = ptrtoint ptr %ha to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %ha, align 4
  %xor.i = xor i32 %54, %52
  %add.ptr.i = getelementptr %struct.l2t_entry, ptr %e.0107, i32 0, i32 12, i32 4
  %55 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr %struct.neighbour, ptr %neigh, i32 0, i32 18, i32 4
  %57 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %add.ptr1.i, align 2
  %xor37.i = xor i16 %58, %56
  %xor3.i = zext i16 %xor37.i to i32
  %or.i = or i32 %xor.i, %xor3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i = icmp eq i32 %or.i, 0
  br i1 %cmp.i, label %if.else43.if.end57_crit_edge, label %if.then53

if.else43.if.end57_crit_edge:                     ; preds = %if.else43
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end57

if.then53:                                        ; preds = %if.else43
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @setup_l2e_send_pending(ptr noundef %dev, ptr noundef null, ptr noundef nonnull %e.0107)
  br label %if.end57

if.end57:                                         ; preds = %if.then53, %if.else43.if.end57_crit_edge, %if.then39, %if.else.if.end57_crit_edge, %if.then.i100, %if.then33.if.end57_crit_edge, %if.then16.if.end57_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %lock17) #9
  %59 = ptrtoint ptr %arpq to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arpq, align 4
  %cmp.i101 = icmp eq ptr %60, %arpq
  br i1 %cmp.i101, label %if.end57.cleanup_crit_edge, label %if.end57.for.body.i_crit_edge

if.end57.for.body.i_crit_edge:                    ; preds = %if.end57
  br label %for.body.i

if.end57.cleanup_crit_edge:                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %if.end57.for.body.i_crit_edge
  %skb.017.i = phi ptr [ %tmp.018.i, %if.end.i.for.body.i_crit_edge ], [ %60, %if.end57.for.body.i_crit_edge ]
  %61 = ptrtoint ptr %skb.017.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %tmp.018.i = load ptr, ptr %skb.017.i, align 8
  %cb2.i = getelementptr inbounds %struct.sk_buff, ptr %skb.017.i, i32 0, i32 3
  %62 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %qlen.i, align 4
  %sub.i.i = add i32 %63, -1
  store volatile i32 %sub.i.i, ptr %qlen.i, align 4
  %64 = load ptr, ptr %skb.017.i, align 8
  %prev9.i.i = getelementptr inbounds %struct.anon.0, ptr %skb.017.i, i32 0, i32 1
  %65 = ptrtoint ptr %prev9.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %prev9.i.i, align 4
  store ptr null, ptr %prev9.i.i, align 4
  store ptr null, ptr %skb.017.i, align 8
  %prev17.i.i = getelementptr inbounds %struct.anon.0, ptr %64, i32 0, i32 1
  %67 = ptrtoint ptr %prev17.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store volatile ptr %66, ptr %prev17.i.i, align 4
  %68 = ptrtoint ptr %66 to i32
  call void @__asan_store4_noabort(i32 %68)
  store volatile ptr %64, ptr %66, align 8
  %69 = ptrtoint ptr %cb2.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %cb2.i, align 4
  %tobool.not.i102 = icmp eq ptr %70, null
  br i1 %tobool.not.i102, label %if.else.i, label %if.then.i103

if.then.i103:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  call void %70(ptr noundef %dev, ptr noundef %skb.017.i) #9
  br label %if.end.i

if.else.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = call i32 @cxgb3_ofld_send(ptr noundef %dev, ptr noundef %skb.017.i) #9
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i103
  %cmp.not.i = icmp eq ptr %tmp.018.i, %arpq
  br i1 %cmp.not.i, label %if.end.i.cleanup_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.cleanup_crit_edge, %if.end57.cleanup_crit_edge, %for.end
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %arpq) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @t3_init_l2t(i32 noundef %l2t_capacity) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %l2t_capacity, i32 140) #9
  %1 = extractvalue { i32, i1 } %0, 1
  %2 = extractvalue { i32, i1 } %0, 0
  %3 = add nuw i32 %2, 64
  %retval.0.i = select i1 %1, i32 -1, i32 %3
  %call.i.i40 = tail call noalias ptr @kvmalloc_node(i32 noundef %retval.0.i, i32 noundef 3520, i32 noundef -1) #13
  %tobool.not = icmp eq ptr %call.i.i40, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %call.i.i40 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %l2t_capacity, ptr %call.i.i40, align 4
  %arrayidx = getelementptr %struct.l2t_data, ptr %call.i.i40, i32 3, i32 3
  %rover = getelementptr inbounds %struct.l2t_data, ptr %call.i.i40, i32 0, i32 1
  %5 = ptrtoint ptr %rover to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %arrayidx, ptr %rover, align 4
  %nfree = getelementptr inbounds %struct.l2t_data, ptr %call.i.i40, i32 0, i32 2
  %sub = add i32 %l2t_capacity, -1
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %nfree, i32 noundef 4) #9
  %6 = ptrtoint ptr %nfree to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile i32 %sub, ptr %nfree, align 4
  %lock = getelementptr inbounds %struct.l2t_data, ptr %call.i.i40, i32 0, i32 3
  tail call void @__rwlock_init(ptr noundef %lock, ptr noundef nonnull @.str.2, ptr noundef nonnull @t3_init_l2t.__key) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %l2t_capacity)
  %cmp41.not = icmp eq i32 %l2t_capacity, 0
  br i1 %cmp41.not, label %if.end.cleanup_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.042 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %conv = trunc i32 %i.042 to i16
  %arrayidx3 = getelementptr %struct.l2t_data, ptr %call.i.i40, i32 0, i32 5, i32 %i.042
  %idx = getelementptr %struct.l2t_data, ptr %call.i.i40, i32 0, i32 5, i32 %i.042, i32 1
  %7 = ptrtoint ptr %idx to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv, ptr %idx, align 2
  %8 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 3, ptr %arrayidx3, align 4
  %arpq = getelementptr %struct.l2t_data, ptr %call.i.i40, i32 0, i32 5, i32 %i.042, i32 9
  %9 = ptrtoint ptr %arpq to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %arpq, ptr %arpq, align 4
  %prev.i = getelementptr inbounds %struct.anon.54, ptr %arpq, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %arpq, ptr %prev.i, align 4
  %qlen.i = getelementptr %struct.l2t_data, ptr %call.i.i40, i32 0, i32 5, i32 %i.042, i32 9, i32 1
  %11 = ptrtoint ptr %qlen.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %qlen.i, align 4
  %lock11 = getelementptr %struct.l2t_data, ptr %call.i.i40, i32 0, i32 5, i32 %i.042, i32 10
  tail call void @__raw_spin_lock_init(ptr noundef %lock11, ptr noundef nonnull @.str.4, ptr noundef nonnull @t3_init_l2t.__key.3, i16 noundef signext 3) #9
  %refcnt = getelementptr %struct.l2t_data, ptr %call.i.i40, i32 0, i32 5, i32 %i.042, i32 11
  %call.i.i39 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #9
  %12 = ptrtoint ptr %refcnt to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile i32 0, ptr %refcnt, align 4
  %inc = add nuw i32 %i.042, 1
  %exitcond.not = icmp eq i32 %inc, %l2t_capacity
  br i1 %exitcond.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret ptr %call.i.i40
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__rwlock_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__neigh_event_send(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @neigh_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { argmemonly nofree nounwind readonly willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nobuiltin nounwind }
attributes #13 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !12, !14, !16, !17, !19, !20, !22, !23, !24, !26}
!llvm.named.register.sp = !{!27}
!llvm.module.flags = !{!28, !29, !30, !31, !32, !33, !34, !35}
!llvm.ident = !{!36}

!0 = !{ptr @__ksymtab_t3_l2t_send_slow, !1, !"__ksymtab_t3_l2t_send_slow", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/chelsio/cxgb3/l2t.c", i32 177, i32 1}
!2 = !{ptr @__ksymtab_t3_l2t_send_event, !3, !"__ksymtab_t3_l2t_send_event", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/chelsio/cxgb3/l2t.c", i32 214, i32 1}
!4 = !{ptr @__ksymtab_t3_l2e_free, !5, !"__ksymtab_t3_l2e_free", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/chelsio/cxgb3/l2t.c", i32 277, i32 1}
!6 = distinct !{null, !7, !"__warned", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/chelsio/cxgb3/l2t.c", i32 327, i32 6}
!8 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @__ksymtab_t3_l2t_get, !11, !"__ksymtab_t3_l2t_get", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/chelsio/cxgb3/l2t.c", i32 370, i32 1}
!12 = distinct !{null, !13, !"__warned", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/chelsio/cxgb3/l2t.c", i32 403, i32 23}
!14 = !{ptr @t3_init_l2t.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/chelsio/cxgb3/l2t.c", i32 455, i32 2}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @t3_init_l2t.__key.3, !18, !"__key", i1 false, i1 false}
!18 = !{!"../drivers/net/ethernet/chelsio/cxgb3/l2t.c", i32 461, i32 3}
!19 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!20 = distinct !{null, !21, !"__warned", i1 false, i1 false}
!21 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!22 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!24 = distinct !{null, !25, !"__warned", i1 false, i1 false}
!25 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!26 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!27 = !{!"sp"}
!28 = !{i32 1, !"wchar_size", i32 2}
!29 = !{i32 1, !"min_enum_size", i32 4}
!30 = !{i32 8, !"branch-target-enforcement", i32 0}
!31 = !{i32 8, !"sign-return-address", i32 0}
!32 = !{i32 8, !"sign-return-address-all", i32 0}
!33 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!34 = !{i32 7, !"uwtable", i32 1}
!35 = !{i32 7, !"frame-pointer", i32 2}
!36 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!37 = !{!"branch_weights", i32 2000, i32 1}
!38 = !{i64 2154572540, i64 2154573028, i64 2154572577, i64 2154572633, i64 2154572667, i64 2154572691, i64 2154572732, i64 2154572753, i64 2154572781, i64 2154572815}
!39 = !{i64 2148449240}
!40 = !{i64 2148363704, i64 2148363736, i64 2148363765, i64 2148363799, i64 2148363830, i64 2148363853}
!41 = !{i64 2150530893}
!42 = !{i64 2148359709, i64 2148359735, i64 2148359764, i64 2148359798, i64 2148359829, i64 2148359852}
!43 = !{i64 2149656346}
!44 = !{i64 2148445120}
!45 = !{i64 2148360429, i64 2148360461, i64 2148360490, i64 2148360524, i64 2148360555, i64 2148360578}
!46 = !{i64 2148445349}
!47 = !{i64 2148362174, i64 2148362200, i64 2148362229, i64 2148362263, i64 2148362294, i64 2148362317}
!48 = !{i64 2148361239, i64 2148361271, i64 2148361300, i64 2148361334, i64 2148361365, i64 2148361388}
!49 = !{!"branch_weights", i32 1, i32 2000}
!50 = !{i64 2149656612}
