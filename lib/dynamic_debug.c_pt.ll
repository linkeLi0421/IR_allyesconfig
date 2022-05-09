; ModuleID = '/llk/IR_all_yes/lib/dynamic_debug.c_pt.bc'
source_filename = "../lib/dynamic_debug.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+dynamic_debug_exec_queries\22, \22a\22\09"
module asm "\09.weak\09__crc_dynamic_debug_exec_queries\09\09\09\09"
module asm "\09.long\09__crc_dynamic_debug_exec_queries\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dynamic_debug_exec_queries:\09\09\09\09\09"
module asm "\09.asciz \09\22dynamic_debug_exec_queries\22\09\09\09\09\09"
module asm "__kstrtabns_dynamic_debug_exec_queries:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__dynamic_pr_debug\22, \22a\22\09"
module asm "\09.weak\09__crc___dynamic_pr_debug\09\09\09\09"
module asm "\09.long\09__crc___dynamic_pr_debug\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___dynamic_pr_debug:\09\09\09\09\09"
module asm "\09.asciz \09\22__dynamic_pr_debug\22\09\09\09\09\09"
module asm "__kstrtabns___dynamic_pr_debug:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__dynamic_dev_dbg\22, \22a\22\09"
module asm "\09.weak\09__crc___dynamic_dev_dbg\09\09\09\09"
module asm "\09.long\09__crc___dynamic_dev_dbg\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___dynamic_dev_dbg:\09\09\09\09\09"
module asm "\09.asciz \09\22__dynamic_dev_dbg\22\09\09\09\09\09"
module asm "__kstrtabns___dynamic_dev_dbg:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__dynamic_netdev_dbg\22, \22a\22\09"
module asm "\09.weak\09__crc___dynamic_netdev_dbg\09\09\09\09"
module asm "\09.long\09__crc___dynamic_netdev_dbg\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___dynamic_netdev_dbg:\09\09\09\09\09"
module asm "\09.asciz \09\22__dynamic_netdev_dbg\22\09\09\09\09\09"
module asm "__kstrtabns___dynamic_netdev_dbg:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__dynamic_ibdev_dbg\22, \22a\22\09"
module asm "\09.weak\09__crc___dynamic_ibdev_dbg\09\09\09\09"
module asm "\09.long\09__crc___dynamic_ibdev_dbg\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___dynamic_ibdev_dbg:\09\09\09\09\09"
module asm "\09.asciz \09\22__dynamic_ibdev_dbg\22\09\09\09\09\09"
module asm "__kstrtabns___dynamic_ibdev_dbg:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.125 }
%union.anon.125 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.anon.173 = type { i8, i8, [2 x i8] }
%struct._ddebug = type { ptr, ptr, ptr, ptr, i32, %union.anon.149, [4 x i8] }
%union.anon.149 = type { %struct.static_key_true }
%struct.static_key_true = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t, %union.anon.126 }
%union.anon.126 = type { i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.proc_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.flagsbuf = type { [7 x i8] }
%struct.ddebug_query = type { ptr, ptr, ptr, ptr, i32, i32 }
%struct.ddebug_table = type { %struct.list_head, ptr, i32, ptr }
%struct.__va_list = type { ptr }
%struct.va_format = type { ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.131, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.148, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.131 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.148 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.ib_device = type { ptr, %struct.ib_device_ops, [64 x i8], %struct.callback_head, %struct.list_head, %struct.rw_semaphore, %struct.spinlock, %struct.rw_semaphore, %struct.xarray, %struct.mutex, %struct.rwlock_t, ptr, i32, %union.anon.172, [4 x ptr], i64, [64 x i8], i64, i32, i8, i8, i32, %struct.ib_device_attr, ptr, %struct.rdmacg_device, i32, %struct.spinlock, [3 x %struct.list_head], ptr, ptr, %struct.refcount_struct, %struct.completion, %struct.work_struct, ptr, %struct.mutex, %struct.xarray, [16 x i8], i32, i32 }
%struct.ib_device_ops = type { ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%union.anon.172 = type { %struct.ib_core_device }
%struct.ib_core_device = type { %struct.device, %struct.possible_net_t, ptr, %struct.list_head, ptr }
%struct.ib_device_attr = type { i64, i64, i64, i64, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, i32, i32, %struct.ib_odp_caps, i64, i64, %struct.ib_rss_caps, i32, i32, %struct.ib_tm_caps, %struct.ib_cq_caps, i64, i32 }
%struct.ib_odp_caps = type { i64, %struct.anon.163 }
%struct.anon.163 = type { i32, i32, i32, i32 }
%struct.ib_rss_caps = type { i32, i32, i32 }
%struct.ib_tm_caps = type { i32, i32, i32, i32, i32 }
%struct.ib_cq_caps = type { i16, i16 }
%struct.rdmacg_device = type { %struct.list_head, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.ddebug_iter = type { ptr, i32 }

@__param_str_verbose = internal constant [22 x i8] c"dynamic_debug.verbose\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@verbose = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_verbose = internal constant %struct.kernel_param { ptr @__param_str_verbose, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.125 { ptr @verbose } }, section "__param", align 4
@__UNIQUE_ID_verbosetype494 = internal constant [35 x i8] c"dynamic_debug.parmtype=verbose:int\00", section ".modinfo", align 1
@__UNIQUE_ID_verbose495 = internal constant [158 x i8] c"dynamic_debug.parm=verbose: dynamic_debug/control processing ( 0 = off (default), 1 = module add/rm, 2 = >control summary, 3 = parsing, 4 = per-site changes)\00", section ".modinfo", align 1
@dynamic_debug_exec_queries._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 572, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013dyndbg: non-null query/command string expected\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"dynamic_debug_exec_queries\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"lib/dynamic_debug.c\00", [44 x i8] zeroinitializer }, align 32
@dynamic_debug_exec_queries._entry_ptr = internal global ptr @dynamic_debug_exec_queries._entry, section ".printk_index", align 4
@__kstrtab_dynamic_debug_exec_queries = external dso_local constant [0 x i8], align 1
@__kstrtabns_dynamic_debug_exec_queries = external dso_local constant [0 x i8], align 1
@__ksymtab_dynamic_debug_exec_queries = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dynamic_debug_exec_queries to i32), ptr @__kstrtab_dynamic_debug_exec_queries, ptr @__kstrtabns_dynamic_debug_exec_queries }, section "___ksymtab_gpl+dynamic_debug_exec_queries", align 4
@__dynamic_pr_debug._entry = internal constant %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 645, ptr null, ptr null }, align 1
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\017%s%pV\00", [24 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"__dynamic_pr_debug\00", [45 x i8] zeroinitializer }, align 32
@__dynamic_pr_debug._entry_ptr = internal global ptr @__dynamic_pr_debug._entry, section ".printk_index", align 4
@__kstrtab___dynamic_pr_debug = external dso_local constant [0 x i8], align 1
@__kstrtabns___dynamic_pr_debug = external dso_local constant [0 x i8], align 1
@__ksymtab___dynamic_pr_debug = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__dynamic_pr_debug to i32), ptr @__kstrtab___dynamic_pr_debug, ptr @__kstrtabns___dynamic_pr_debug }, section "___ksymtab+__dynamic_pr_debug", align 4
@__dynamic_dev_dbg._entry = internal constant %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 666, ptr null, ptr null }, align 1
@.str.5 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\017(NULL device *): %pV\00", [41 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"__dynamic_dev_dbg\00", [46 x i8] zeroinitializer }, align 32
@__dynamic_dev_dbg._entry_ptr = internal global ptr @__dynamic_dev_dbg._entry, section ".printk_index", align 4
@.str.7 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s%s %s: %pV\00", [19 x i8] zeroinitializer }, align 32
@__kstrtab___dynamic_dev_dbg = external dso_local constant [0 x i8], align 1
@__kstrtabns___dynamic_dev_dbg = external dso_local constant [0 x i8], align 1
@__ksymtab___dynamic_dev_dbg = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__dynamic_dev_dbg to i32), ptr @__kstrtab___dynamic_dev_dbg, ptr @__kstrtabns___dynamic_dev_dbg }, section "___ksymtab+__dynamic_dev_dbg", align 4
@.str.8 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s%s %s %s%s: %pV\00", [46 x i8] zeroinitializer }, align 32
@__dynamic_netdev_dbg._entry = internal constant %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 708, ptr null, ptr null }, align 1
@.str.9 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\017%s%s: %pV\00", [20 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"__dynamic_netdev_dbg\00", [43 x i8] zeroinitializer }, align 32
@__dynamic_netdev_dbg._entry_ptr = internal global ptr @__dynamic_netdev_dbg._entry, section ".printk_index", align 4
@__dynamic_netdev_dbg._entry.11 = internal constant %struct.pi_entry { ptr @.str.12, ptr @.str.10, ptr @.str.2, i32 710, ptr null, ptr null }, align 1
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\017(NULL net_device): %pV\00", [39 x i8] zeroinitializer }, align 32
@__dynamic_netdev_dbg._entry_ptr.13 = internal global ptr @__dynamic_netdev_dbg._entry.11, section ".printk_index", align 4
@__kstrtab___dynamic_netdev_dbg = external dso_local constant [0 x i8], align 1
@__kstrtabns___dynamic_netdev_dbg = external dso_local constant [0 x i8], align 1
@__ksymtab___dynamic_netdev_dbg = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__dynamic_netdev_dbg to i32), ptr @__kstrtab___dynamic_netdev_dbg, ptr @__kstrtabns___dynamic_netdev_dbg }, section "___ksymtab+__dynamic_netdev_dbg", align 4
@.str.14 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s%s %s %s: %pV\00", [16 x i8] zeroinitializer }, align 32
@__dynamic_ibdev_dbg._entry = internal constant %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 743, ptr null, ptr null }, align 1
@.str.15 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"\017%s: %pV\00", [22 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"__dynamic_ibdev_dbg\00", [44 x i8] zeroinitializer }, align 32
@__dynamic_ibdev_dbg._entry_ptr = internal global ptr @__dynamic_ibdev_dbg._entry, section ".printk_index", align 4
@__dynamic_ibdev_dbg._entry.17 = internal constant %struct.pi_entry { ptr @.str.18, ptr @.str.16, ptr @.str.2, i32 745, ptr null, ptr null }, align 1
@.str.18 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\017(NULL ib_device): %pV\00", [40 x i8] zeroinitializer }, align 32
@__dynamic_ibdev_dbg._entry_ptr.19 = internal global ptr @__dynamic_ibdev_dbg._entry.17, section ".printk_index", align 4
@__kstrtab___dynamic_ibdev_dbg = external dso_local constant [0 x i8], align 1
@__kstrtabns___dynamic_ibdev_dbg = external dso_local constant [0 x i8], align 1
@__ksymtab___dynamic_ibdev_dbg = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__dynamic_ibdev_dbg to i32), ptr @__kstrtab___dynamic_ibdev_dbg, ptr @__kstrtabns___dynamic_ibdev_dbg }, section "___ksymtab+__dynamic_ibdev_dbg", align 4
@__setup_str_dyndbg_setup = internal constant [8 x i8] c"dyndbg=\00", section ".init.rodata", align 1
@__setup_dyndbg_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_dyndbg_setup, ptr @dyndbg_setup, i32 0 }, section ".init.setup", align 4
@ddebug_add_module._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.2, i32 957, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013dyndbg: error adding module: %s\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ddebug_add_module\00", [46 x i8] zeroinitializer }, align 32
@ddebug_add_module._entry_ptr = internal global ptr @ddebug_add_module._entry, section ".printk_index", align 4
@ddebug_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.119, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @ddebug_lock, i64 52), ptr getelementptr (i8, ptr @ddebug_lock, i64 52) }, ptr @ddebug_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.120, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@ddebug_tables = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @ddebug_tables, ptr @ddebug_tables }, [24 x i8] zeroinitializer }, align 32
@ddebug_add_module._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.21, ptr @.str.2, i32 974, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016dyndbg: %3u debug prints in module %s\0A\00", [55 x i8] zeroinitializer }, align 32
@ddebug_add_module._entry_ptr.24 = internal global ptr @ddebug_add_module._entry.22, section ".printk_index", align 4
@ddebug_dyndbg_module_param_cb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.2, i32 1014, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016dyndbg: module: %s %s=\22%s\22\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ddebug_dyndbg_module_param_cb\00", [34 x i8] zeroinitializer }, align 32
@ddebug_dyndbg_module_param_cb._entry_ptr = internal global ptr @ddebug_dyndbg_module_param_cb._entry, section ".printk_index", align 4
@ddebug_remove_module._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.2, i32 1043, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016dyndbg: removed module \22%s\22\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ddebug_remove_module\00", [43 x i8] zeroinitializer }, align 32
@ddebug_remove_module._entry_ptr = internal global ptr @ddebug_remove_module._entry, section ".printk_index", align 4
@__initcall__kmod_dynamic_debug__496_1145_dynamic_debug_initearly = internal global ptr @dynamic_debug_init, section ".initcallearly.init", align 4
@__initcall__kmod_dynamic_debug__497_1148_dynamic_debug_init_control5 = internal global ptr @dynamic_debug_init_control, section ".initcall5.init", align 4
@.str.29 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c";\0A\00", [29 x i8] zeroinitializer }, align 32
@ddebug_exec_queries._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.2, i32 536, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016dyndbg: query %d: \22%s\22 mod:%s\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ddebug_exec_queries\00", [44 x i8] zeroinitializer }, align 32
@ddebug_exec_queries._entry_ptr = internal global ptr @ddebug_exec_queries._entry, section ".printk_index", align 4
@.str.32 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"*\00", [30 x i8] zeroinitializer }, align 32
@ddebug_exec_queries._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.31, ptr @.str.2, i32 549, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\016dyndbg: processed %d queries, with %d matches, %d errs\0A\00", [38 x i8] zeroinitializer }, align 32
@ddebug_exec_queries._entry_ptr.35 = internal global ptr @ddebug_exec_queries._entry.33, section ".printk_index", align 4
@ddebug_exec_query._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.2, i32 499, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013dyndbg: tokenize failed\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ddebug_exec_query\00", [46 x i8] zeroinitializer }, align 32
@ddebug_exec_query._entry_ptr = internal global ptr @ddebug_exec_query._entry, section ".printk_index", align 4
@ddebug_exec_query._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.37, ptr @.str.2, i32 504, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013dyndbg: flags parse failed\0A\00", [34 x i8] zeroinitializer }, align 32
@ddebug_exec_query._entry_ptr.40 = internal global ptr @ddebug_exec_query._entry.38, section ".printk_index", align 4
@ddebug_exec_query._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.37, ptr @.str.2, i32 508, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013dyndbg: query parse failed\0A\00", [34 x i8] zeroinitializer }, align 32
@ddebug_exec_query._entry_ptr.43 = internal global ptr @ddebug_exec_query._entry.41, section ".printk_index", align 4
@.str.44 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"applied\00", [24 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"no-match\00", [23 x i8] zeroinitializer }, align 32
@ddebug_tokenize._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.2, i32 260, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013dyndbg: unclosed quote: %s\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ddebug_tokenize\00", [16 x i8] zeroinitializer }, align 32
@ddebug_tokenize._entry_ptr = internal global ptr @ddebug_tokenize._entry, section ".printk_index", align 4
@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1
@ddebug_tokenize._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.47, ptr @.str.2, i32 271, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013dyndbg: too many words, legal max <=%d\0A\00", [54 x i8] zeroinitializer }, align 32
@ddebug_tokenize._entry_ptr.50 = internal global ptr @ddebug_tokenize._entry.48, section ".printk_index", align 4
@ddebug_tokenize._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.47, ptr @.str.2, i32 282, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\016dyndbg: split into words:\00", [36 x i8] zeroinitializer }, align 32
@ddebug_tokenize._entry_ptr.53 = internal global ptr @ddebug_tokenize._entry.51, section ".printk_index", align 4
@ddebug_tokenize._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.47, ptr @.str.2, i32 284, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\01c \22%s\22\00", [24 x i8] zeroinitializer }, align 32
@ddebug_tokenize._entry_ptr.56 = internal global ptr @ddebug_tokenize._entry.54, section ".printk_index", align 4
@ddebug_tokenize._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.47, ptr @.str.2, i32 285, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\01c\0A\00", [28 x i8] zeroinitializer }, align 32
@ddebug_tokenize._entry_ptr.59 = internal global ptr @ddebug_tokenize._entry.57, section ".printk_index", align 4
@ddebug_parse_flags._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.61, ptr @.str.2, i32 451, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013dyndbg: bad flag-op %c, at start of %s\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ddebug_parse_flags\00", [45 x i8] zeroinitializer }, align 32
@ddebug_parse_flags._entry_ptr = internal global ptr @ddebug_parse_flags._entry, section ".printk_index", align 4
@ddebug_parse_flags._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.61, ptr @.str.2, i32 454, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\016dyndbg: op='%c'\0A\00", [45 x i8] zeroinitializer }, align 32
@ddebug_parse_flags._entry_ptr.64 = internal global ptr @ddebug_parse_flags._entry.62, section ".printk_index", align 4
@opt_array = internal constant { [6 x %struct.anon.173], [40 x i8] } { [6 x %struct.anon.173] [%struct.anon.173 { i8 1, i8 112, [2 x i8] undef }, %struct.anon.173 { i8 2, i8 109, [2 x i8] undef }, %struct.anon.173 { i8 4, i8 102, [2 x i8] undef }, %struct.anon.173 { i8 8, i8 108, [2 x i8] undef }, %struct.anon.173 { i8 16, i8 116, [2 x i8] undef }, %struct.anon.173 { i8 0, i8 95, [2 x i8] undef }], [40 x i8] zeroinitializer }, align 32
@ddebug_parse_flags._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.61, ptr @.str.2, i32 464, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013dyndbg: unknown flag '%c'\0A\00", [35 x i8] zeroinitializer }, align 32
@ddebug_parse_flags._entry_ptr.67 = internal global ptr @ddebug_parse_flags._entry.65, section ".printk_index", align 4
@ddebug_parse_flags._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.61, ptr @.str.2, i32 468, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\016dyndbg: flags=0x%x\0A\00", [42 x i8] zeroinitializer }, align 32
@ddebug_parse_flags._entry_ptr.70 = internal global ptr @ddebug_parse_flags._entry.68, section ".printk_index", align 4
@ddebug_parse_flags._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.61, ptr @.str.2, i32 484, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016dyndbg: *flagsp=0x%x *maskp=0x%x\0A\00", [60 x i8] zeroinitializer }, align 32
@ddebug_parse_flags._entry_ptr.73 = internal global ptr @ddebug_parse_flags._entry.71, section ".printk_index", align 4
@ddebug_parse_query._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.75, ptr @.str.2, i32 382, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013dyndbg: expecting pairs of match-spec <value>\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ddebug_parse_query\00", [45 x i8] zeroinitializer }, align 32
@ddebug_parse_query._entry_ptr = internal global ptr @ddebug_parse_query._entry, section ".printk_index", align 4
@.str.76 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"func\00", [27 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"file\00", [27 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"module\00", [25 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"format\00", [25 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"line\00", [27 x i8] zeroinitializer }, align 32
@ddebug_parse_query._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.75, ptr @.str.2, i32 424, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013dyndbg: unknown keyword \22%s\22\0A\00", [32 x i8] zeroinitializer }, align 32
@ddebug_parse_query._entry_ptr.83 = internal global ptr @ddebug_parse_query._entry.81, section ".printk_index", align 4
@.str.84 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"parsed\00", [25 x i8] zeroinitializer }, align 32
@check_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.86, ptr @.str.2, i32 352, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013dyndbg: match-spec:%s val:%s overridden by %s\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"check_set\00", [22 x i8] zeroinitializer }, align 32
@check_set._entry_ptr = internal global ptr @check_set._entry, section ".printk_index", align 4
@parse_linerange._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.88, ptr @.str.2, i32 315, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013dyndbg: match-spec: line used 2x\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"parse_linerange\00", [16 x i8] zeroinitializer }, align 32
@parse_linerange._entry_ptr = internal global ptr @parse_linerange._entry, section ".printk_index", align 4
@parse_linerange._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.88, ptr @.str.2, i32 334, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013dyndbg: last-line:%d < 1st-line:%d\0A\00", [58 x i8] zeroinitializer }, align 32
@parse_linerange._entry_ptr.91 = internal global ptr @parse_linerange._entry.89, section ".printk_index", align 4
@parse_linerange._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.88, ptr @.str.2, i32 341, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016dyndbg: parsed line %d-%d\0A\00", [35 x i8] zeroinitializer }, align 32
@parse_linerange._entry_ptr.94 = internal global ptr @parse_linerange._entry.92, section ".printk_index", align 4
@parse_lineno._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.96, ptr @.str.2, i32 304, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013dyndbg: bad line-number: %s\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"parse_lineno\00", [19 x i8] zeroinitializer }, align 32
@parse_lineno._entry_ptr = internal global ptr @parse_lineno._entry, section ".printk_index", align 4
@ddebug_change._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.98, ptr @.str.2, i32 223, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016dyndbg: changed %s:%d [%s]%s =%s\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ddebug_change\00", [18 x i8] zeroinitializer }, align 32
@ddebug_change._entry_ptr = internal global ptr @ddebug_change._entry, section ".printk_index", align 4
@ddebug_change._entry.99 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.98, ptr @.str.2, i32 229, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016dyndbg: no matches for query\0A\00", [32 x i8] zeroinitializer }, align 32
@ddebug_change._entry_ptr.101 = internal global ptr @ddebug_change._entry.99, section ".printk_index", align 4
@vpr_info_dq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.103, ptr @.str.2, i32 143, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"\016dyndbg: %s: func=\22%s\22 file=\22%s\22 module=\22%s\22 format=\22%.*s\22 lineno=%u-%u\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"vpr_info_dq\00", [20 x i8] zeroinitializer }, align 32
@vpr_info_dq._entry_ptr = internal global ptr @vpr_info_dq._entry, section ".printk_index", align 4
@.str.104 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.106 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"[%d] \00", [26 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s:\00", [28 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d:\00", [28 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c" \00", [30 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"(unnamed net_device)\00", [43 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c" (uninitialized)\00", [47 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c" (unregistering)\00", [47 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c" (unregistered)\00", [16 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c" (released)\00", [20 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c" (dummy)\00", [23 x i8] zeroinitializer }, align 32
@netdev_reg_state.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.116 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"include/linux/netdevice.h\00", [38 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: unknown reg_state %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c" (unknown)\00", [21 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.119 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ddebug_lock.wait_lock\00", [42 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ddebug_lock\00", [20 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"dyndbg\00", [25 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"+p\00", [29 x i8] zeroinitializer }, align 32
@__start___dyndbg = external dso_local global [0 x %struct._ddebug], align 8
@__stop___dyndbg = external dso_local global [0 x %struct._ddebug], align 8
@dynamic_debug_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.124, ptr @.str.2, i32 1094, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\014dyndbg: _ddebug table is empty in a CONFIG_DYNAMIC_DEBUG build\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dynamic_debug_init\00", [45 x i8] zeroinitializer }, align 32
@dynamic_debug_init._entry_ptr = internal global ptr @dynamic_debug_init._entry, section ".printk_index", align 4
@ddebug_init_success = internal unnamed_addr global i1 false, section ".init.data", align 4
@dynamic_debug_init._entry.125 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.126, ptr @.str.124, ptr @.str.2, i32 1124, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [90 x i8], [38 x i8] } { [90 x i8] c"\016dyndbg: %d prdebugs in %d modules, %d KiB in ddebug tables, %d kiB in __dyndbg section\0A\00", [38 x i8] zeroinitializer }, align 32
@dynamic_debug_init._entry_ptr.127 = internal global ptr @dynamic_debug_init._entry.125, section ".printk_index", align 4
@saved_command_line = external dso_local local_unnamed_addr global ptr, align 4
@.str.128 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dyndbg params\00", [18 x i8] zeroinitializer }, align 32
@ddebug_dyndbg_boot_param_cb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.129, ptr @.str.130, ptr @.str.2, i32 1003, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\016dyndbg: %s=\22%s\22\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ddebug_dyndbg_boot_param_cb\00", [36 x i8] zeroinitializer }, align 32
@ddebug_dyndbg_boot_param_cb._entry_ptr = internal global ptr @ddebug_dyndbg_boot_param_cb._entry, section ".printk_index", align 4
@.str.131 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dynamic_debug\00", [18 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"control\00", [24 x i8] zeroinitializer }, align 32
@ddebug_proc_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr @ddebug_proc_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @ddebug_proc_open, ptr null, ptr @seq_release_private, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@proc_fops = internal constant { %struct.proc_ops, [52 x i8] } { %struct.proc_ops { i32 0, ptr @ddebug_proc_open, ptr @seq_read, ptr null, ptr @ddebug_proc_write, ptr @seq_lseek, ptr @seq_release_private, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@ddebug_proc_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @.str.134, ptr @.str.2, i32 780, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\014dyndbg: expected <%d bytes into control\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ddebug_proc_write\00", [46 x i8] zeroinitializer }, align 32
@ddebug_proc_write._entry_ptr = internal global ptr @ddebug_proc_write._entry, section ".printk_index", align 4
@ddebug_proc_write._entry.135 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.136, ptr @.str.134, ptr @.str.2, i32 786, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016dyndbg: read %zu bytes from userspace\0A\00", [55 x i8] zeroinitializer }, align 32
@ddebug_proc_write._entry_ptr.137 = internal global ptr @ddebug_proc_write._entry.135, section ".printk_index", align 4
@ddebug_proc_seqops = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @ddebug_proc_start, ptr @ddebug_proc_stop, ptr @ddebug_proc_next, ptr @ddebug_proc_show }, [16 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"# filename:lineno [module]function flags format\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s:%u [%s]%s =%s \22\00", [45 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\09\0D\0A\22\00", [27 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\22\0A\00", [29 x i8] zeroinitializer }, align 32
@switch.table.__dynamic_netdev_dbg = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.111, ptr @.str.104, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115], [40 x i8] zeroinitializer }, align 32
@switch.table.__dynamic_netdev_dbg.142 = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.111, ptr @.str.104, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115], [40 x i8] zeroinitializer }, align 32
@___asan_gen_.143 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.570, i32 72, i32 12 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.570, i32 572, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.570, i32 645, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.570, i32 666, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.570, i32 670, i32 40 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.570, i32 700, i32 5 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.570, i32 707, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.570, i32 710, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.570, i32 736, i32 5 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.570, i32 743, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.570, i32 745, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.570, i32 957, i32 3 }
@___asan_gen_.206 = private unnamed_addr constant [12 x i8] c"ddebug_lock\00", align 1
@___asan_gen_.209 = private unnamed_addr constant [14 x i8] c"ddebug_tables\00", align 1
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.570, i32 71, i32 8 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.570, i32 974, i32 2 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.570, i32 1014, i32 2 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.570, i32 1043, i32 3 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.570, i32 528, i32 26 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.570, i32 536, i32 3 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.570, i32 548, i32 3 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.570, i32 499, i32 3 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.570, i32 504, i32 3 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.570, i32 508, i32 3 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.570, i32 513, i32 31 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.570, i32 513, i32 43 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.570, i32 260, i32 5 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.570, i32 271, i32 4 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.570, i32 282, i32 3 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.570, i32 284, i32 4 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.570, i32 285, i32 3 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.570, i32 451, i32 3 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.570, i32 454, i32 2 }
@___asan_gen_.332 = private unnamed_addr constant [10 x i8] c"opt_array\00", align 1
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.570, i32 88, i32 51 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.570, i32 464, i32 4 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.570, i32 468, i32 2 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.570, i32 484, i32 2 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.570, i32 382, i32 3 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.570, i32 394, i32 24 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.570, i32 396, i32 31 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.570, i32 413, i32 31 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.570, i32 415, i32 31 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.570, i32 420, i32 31 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.570, i32 424, i32 4 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.570, i32 430, i32 21 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.570, i32 351, i32 3 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.570, i32 315, i32 3 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.570, i32 332, i32 4 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.570, i32 340, i32 2 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.570, i32 304, i32 3 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.570, i32 220, i32 4 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.570, i32 229, i32 3 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.570, i32 137, i32 2 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.570, i32 603, i32 47 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.570, i32 608, i32 46 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.570, i32 614, i32 46 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.570, i32 617, i32 46 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 4963, i32 10 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 4975, i32 36 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 4977, i32 36 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 4978, i32 35 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 4979, i32 31 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 4980, i32 28 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 4983, i32 2 }
@___asan_gen_.489 = private unnamed_addr constant [29 x i8] c"../include/linux/netdevice.h\00", align 1
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 4984, i32 9 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.570, i32 70, i32 8 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.570, i32 991, i32 20 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.570, i32 994, i32 35 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.570, i32 1094, i32 4 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.570, i32 1122, i32 2 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.570, i32 1135, i32 13 }
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.570, i32 1003, i32 2 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.570, i32 1071, i32 36 }
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.570, i32 1072, i32 23 }
@___asan_gen_.536 = private unnamed_addr constant [17 x i8] c"ddebug_proc_fops\00", align 1
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.570, i32 929, i32 37 }
@___asan_gen_.539 = private unnamed_addr constant [10 x i8] c"proc_fops\00", align 1
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.570, i32 938, i32 30 }
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.570, i32 780, i32 3 }
@___asan_gen_.551 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.570, i32 786, i32 2 }
@___asan_gen_.557 = private unnamed_addr constant [19 x i8] c"ddebug_proc_seqops\00", align 1
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.570, i32 916, i32 36 }
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.570, i32 893, i32 5 }
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.570, i32 897, i32 16 }
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.570, i32 901, i32 28 }
@___asan_gen_.569 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.570 = private constant [23 x i8] c"../lib/dynamic_debug.c\00", align 1
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.570, i32 902, i32 14 }
@___asan_gen_.572 = private unnamed_addr constant [34 x i8] c"switch.table.__dynamic_netdev_dbg\00", align 1
@___asan_gen_.573 = private unnamed_addr constant [38 x i8] c"switch.table.__dynamic_netdev_dbg.142\00", align 1
@llvm.compiler.used = appending global [203 x ptr] [ptr @__UNIQUE_ID_verbose495, ptr @__UNIQUE_ID_verbosetype494, ptr @__dynamic_dev_dbg._entry, ptr @__dynamic_dev_dbg._entry_ptr, ptr @__dynamic_ibdev_dbg._entry, ptr @__dynamic_ibdev_dbg._entry.17, ptr @__dynamic_ibdev_dbg._entry_ptr, ptr @__dynamic_ibdev_dbg._entry_ptr.19, ptr @__dynamic_netdev_dbg._entry, ptr @__dynamic_netdev_dbg._entry.11, ptr @__dynamic_netdev_dbg._entry_ptr, ptr @__dynamic_netdev_dbg._entry_ptr.13, ptr @__dynamic_pr_debug._entry, ptr @__dynamic_pr_debug._entry_ptr, ptr @__initcall__kmod_dynamic_debug__496_1145_dynamic_debug_initearly, ptr @__initcall__kmod_dynamic_debug__497_1148_dynamic_debug_init_control5, ptr @__ksymtab___dynamic_dev_dbg, ptr @__ksymtab___dynamic_ibdev_dbg, ptr @__ksymtab___dynamic_netdev_dbg, ptr @__ksymtab___dynamic_pr_debug, ptr @__ksymtab_dynamic_debug_exec_queries, ptr @__param_verbose, ptr @__setup_dyndbg_setup, ptr @check_set._entry, ptr @check_set._entry_ptr, ptr @ddebug_add_module._entry, ptr @ddebug_add_module._entry.22, ptr @ddebug_add_module._entry_ptr, ptr @ddebug_add_module._entry_ptr.24, ptr @ddebug_change._entry, ptr @ddebug_change._entry.99, ptr @ddebug_change._entry_ptr, ptr @ddebug_change._entry_ptr.101, ptr @ddebug_dyndbg_boot_param_cb._entry, ptr @ddebug_dyndbg_boot_param_cb._entry_ptr, ptr @ddebug_dyndbg_module_param_cb._entry, ptr @ddebug_dyndbg_module_param_cb._entry_ptr, ptr @ddebug_exec_queries._entry, ptr @ddebug_exec_queries._entry.33, ptr @ddebug_exec_queries._entry_ptr, ptr @ddebug_exec_queries._entry_ptr.35, ptr @ddebug_exec_query._entry, ptr @ddebug_exec_query._entry.38, ptr @ddebug_exec_query._entry.41, ptr @ddebug_exec_query._entry_ptr, ptr @ddebug_exec_query._entry_ptr.40, ptr @ddebug_exec_query._entry_ptr.43, ptr @ddebug_parse_flags._entry, ptr @ddebug_parse_flags._entry.62, ptr @ddebug_parse_flags._entry.65, ptr @ddebug_parse_flags._entry.68, ptr @ddebug_parse_flags._entry.71, ptr @ddebug_parse_flags._entry_ptr, ptr @ddebug_parse_flags._entry_ptr.64, ptr @ddebug_parse_flags._entry_ptr.67, ptr @ddebug_parse_flags._entry_ptr.70, ptr @ddebug_parse_flags._entry_ptr.73, ptr @ddebug_parse_query._entry, ptr @ddebug_parse_query._entry.81, ptr @ddebug_parse_query._entry_ptr, ptr @ddebug_parse_query._entry_ptr.83, ptr @ddebug_proc_write._entry, ptr @ddebug_proc_write._entry.135, ptr @ddebug_proc_write._entry_ptr, ptr @ddebug_proc_write._entry_ptr.137, ptr @ddebug_remove_module._entry, ptr @ddebug_remove_module._entry_ptr, ptr @ddebug_tokenize._entry, ptr @ddebug_tokenize._entry.48, ptr @ddebug_tokenize._entry.51, ptr @ddebug_tokenize._entry.54, ptr @ddebug_tokenize._entry.57, ptr @ddebug_tokenize._entry_ptr, ptr @ddebug_tokenize._entry_ptr.50, ptr @ddebug_tokenize._entry_ptr.53, ptr @ddebug_tokenize._entry_ptr.56, ptr @ddebug_tokenize._entry_ptr.59, ptr @dynamic_debug_exec_queries._entry, ptr @dynamic_debug_exec_queries._entry_ptr, ptr @dynamic_debug_init._entry, ptr @dynamic_debug_init._entry.125, ptr @dynamic_debug_init._entry_ptr, ptr @dynamic_debug_init._entry_ptr.127, ptr @parse_lineno._entry, ptr @parse_lineno._entry_ptr, ptr @parse_linerange._entry, ptr @parse_linerange._entry.89, ptr @parse_linerange._entry.92, ptr @parse_linerange._entry_ptr, ptr @parse_linerange._entry_ptr.91, ptr @parse_linerange._entry_ptr.94, ptr @vpr_info_dq._entry, ptr @vpr_info_dq._entry_ptr, ptr @verbose, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @ddebug_lock, ptr @ddebug_tables, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.34, ptr @.str.36, ptr @.str.37, ptr @.str.39, ptr @.str.42, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.49, ptr @.str.52, ptr @.str.55, ptr @.str.58, ptr @.str.60, ptr @.str.61, ptr @.str.63, ptr @opt_array, ptr @.str.66, ptr @.str.69, ptr @.str.72, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.82, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.90, ptr @.str.93, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.100, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.126, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @ddebug_proc_fops, ptr @proc_fops, ptr @.str.133, ptr @.str.134, ptr @.str.136, ptr @ddebug_proc_seqops, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @switch.table.__dynamic_netdev_dbg, ptr @switch.table.__dynamic_netdev_dbg.142], section "llvm.metadata"
@0 = internal global [145 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @verbose to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dynamic_debug_exec_queries._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ddebug_add_module._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ddebug_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ddebug_tables to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ddebug_add_module._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ddebug_dyndbg_module_param_cb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ddebug_remove_module._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ddebug_exec_queries._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ddebug_exec_queries._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ddebug_exec_query._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ddebug_exec_query._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ddebug_exec_query._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ddebug_tokenize._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ddebug_tokenize._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ddebug_tokenize._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ddebug_tokenize._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ddebug_tokenize._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ddebug_parse_flags._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ddebug_parse_flags._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @opt_array to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ddebug_parse_flags._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ddebug_parse_flags._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ddebug_parse_flags._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ddebug_parse_query._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ddebug_parse_query._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_linerange._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_linerange._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_linerange._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_lineno._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ddebug_change._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ddebug_change._entry.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpr_info_dq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dynamic_debug_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dynamic_debug_init._entry.125 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 90, i32 128, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ddebug_dyndbg_boot_param_cb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ddebug_proc_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proc_fops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ddebug_proc_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ddebug_proc_write._entry.135 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ddebug_proc_seqops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.__dynamic_netdev_dbg to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.__dynamic_netdev_dbg.142 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dynamic_debug_exec_queries(ptr noundef %query, ptr noundef %modname) #0 align 64 {
entry:
  %tobool.not = icmp eq ptr %query, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @kstrndup(ptr noundef nonnull %query, i32 noundef 4096, i32 noundef 3264) #15
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %cleanup, label %if.end4

if.end4:                                          ; preds = %if.end
  %call5 = tail call fastcc i32 @ddebug_exec_queries(ptr noundef nonnull %call1, ptr noundef %modname)
  tail call void @kfree(ptr noundef nonnull %call1) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end, %do.end
  %retval.0 = phi i32 [ %call5, %if.end4 ], [ -22, %do.end ], [ -12, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kstrndup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ddebug_exec_queries(ptr noundef %query, ptr noundef %modname) unnamed_addr #0 align 64 {
entry:
  %fbuf.i.i = alloca %struct.flagsbuf, align 1
  %query.i = alloca %struct.ddebug_query, align 4
  %words.i = alloca [9 x ptr], align 4
  %tobool.not92 = icmp eq ptr %query, null
  br i1 %tobool.not92, label %if.end38.thread, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %tobool13.not = icmp eq ptr %modname, null
  %..str.32 = select i1 %tobool13.not, ptr @.str.32, ptr %modname
  %module.i.i = getelementptr inbounds %struct.ddebug_query, ptr %query.i, i32 0, i32 1
  %format.i.i = getelementptr inbounds %struct.ddebug_query, ptr %query.i, i32 0, i32 3
  %function33.i.i = getelementptr inbounds %struct.ddebug_query, ptr %query.i, i32 0, i32 2
  %first_lineno.i.i.i = getelementptr inbounds %struct.ddebug_query, ptr %query.i, i32 0, i32 4
  %last_lineno.i.i.i = getelementptr inbounds %struct.ddebug_query, ptr %query.i, i32 0, i32 5
  %0 = getelementptr inbounds [7 x i8], ptr %fbuf.i.i, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc, %for.body.lr.ph
  %query.addr.097 = phi ptr [ %query, %for.body.lr.ph ], [ %split.0, %for.inc ]
  %nfound.096 = phi i32 [ 0, %for.body.lr.ph ], [ %nfound.2, %for.inc ]
  %exitcode.095 = phi i32 [ 0, %for.body.lr.ph ], [ %exitcode.2, %for.inc ]
  %errs.094 = phi i32 [ 0, %for.body.lr.ph ], [ %errs.2, %for.inc ]
  %i.093 = phi i32 [ 0, %for.body.lr.ph ], [ %i.1, %for.inc ]
  %call = call ptr @strpbrk(ptr noundef nonnull %query.addr.097, ptr noundef nonnull @.str.29)
  %tobool1.not = icmp eq ptr %call, null
  br i1 %tobool1.not, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  %incdec.ptr = getelementptr i8, ptr %call, i32 1
  %1 = ptrtoint ptr %call to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %call, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %split.0 = phi ptr [ %incdec.ptr, %if.then ], [ null, %for.body ]
  %call2 = call ptr @skip_spaces(ptr noundef nonnull %query.addr.097) #15
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %for.inc, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %2 = ptrtoint ptr %call2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %call2, align 1
  switch i8 %3, label %do.body [
    i8 0, label %for.inc
    i8 35, label %for.inc
  ]

do.body:                                          ; preds = %lor.lhs.false
  %4 = load i32, ptr @verbose, align 4
  %cmp9 = icmp sgt i32 %4, 0
  br i1 %cmp9, label %do.end, label %do.end17

do.end:                                           ; preds = %do.body
  %call14 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, i32 noundef %i.093, ptr noundef nonnull %call2, ptr noundef %..str.32) #14
  br label %do.end17

do.end17:                                         ; preds = %do.end, %do.body
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %query.i) #15
  %5 = call ptr @memset(ptr %query.i, i32 0, i32 24)
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %words.i) #15
  %6 = call ptr @memset(ptr %words.i, i32 255, i32 36)
  %7 = ptrtoint ptr %call2 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %call2, align 1
  %tobool.not15.i.i = icmp eq i8 %8, 0
  br i1 %tobool.not15.i.i, label %while.end.i.i, label %while.body.i.i

while.body.i.i:                                   ; preds = %cleanup67.i.i, %do.end17
  %buf.addr.017.i.i = phi ptr [ %end.3.i.i, %cleanup67.i.i ], [ %call2, %do.end17 ]
  %nwords.016.i.i = phi i32 [ %inc.i.i, %cleanup67.i.i ], [ 0, %do.end17 ]
  %call.i.i = call ptr @skip_spaces(ptr noundef %buf.addr.017.i.i) #15
  %9 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %call.i.i, align 1
  switch i8 %10, label %land.rhs26.i.i [
    i8 0, label %while.end.i.i
    i8 35, label %while.end.i.i
    i8 34, label %if.then11.i.i
    i8 39, label %if.then11.i.i
  ]

if.then11.i.i:                                    ; preds = %while.body.i.i, %while.body.i.i
  %incdec.ptr.i.i = getelementptr i8, ptr %call.i.i, i32 1
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.cond.i.i, %if.then11.i.i
  %end.0.i.i = phi ptr [ %incdec.ptr.i.i, %if.then11.i.i ], [ %incdec.ptr18.i.i, %for.cond.i.i ]
  %11 = ptrtoint ptr %end.0.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %end.0.i.i, align 1
  %tobool14.not.i.i = icmp eq i8 %12, 0
  %cmp16.not.i.i = icmp eq i8 %12, %10
  %or.cond.i.i = select i1 %tobool14.not.i.i, i1 true, i1 %cmp16.not.i.i
  %incdec.ptr18.i.i = getelementptr i8, ptr %end.0.i.i, i32 1
  br i1 %or.cond.i.i, label %for.end.i.i, label %for.cond.i.i

for.end.i.i:                                      ; preds = %for.cond.i.i
  br i1 %tobool14.not.i.i, label %do.end.i.i, label %if.end52.i.i

do.end.i.i:                                       ; preds = %for.end.i.i
  %call21.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef %incdec.ptr.i.i) #14
  br label %ddebug_exec_query.exit.thread

land.rhs26.i.i:                                   ; preds = %for.inc33.i.i, %while.body.i.i
  %end.113.i.i = phi ptr [ %incdec.ptr34.i.i, %for.inc33.i.i ], [ %call.i.i, %while.body.i.i ]
  %13 = phi i8 [ %.pr.i.i, %for.inc33.i.i ], [ %10, %while.body.i.i ]
  %conv24.i.i = zext i8 %13 to i32
  %arrayidx.i.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv24.i.i
  %14 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx.i.i, align 1
  %16 = and i8 %15, 32
  %cmp29.not.i.i = icmp eq i8 %16, 0
  br i1 %cmp29.not.i.i, label %for.inc33.i.i, label %do.body36.i.i

for.inc33.i.i:                                    ; preds = %land.rhs26.i.i
  %incdec.ptr34.i.i = getelementptr i8, ptr %end.113.i.i, i32 1
  %17 = ptrtoint ptr %incdec.ptr34.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %.pr.i.i = load i8, ptr %incdec.ptr34.i.i, align 1
  %tobool25.not.i.i = icmp eq i8 %.pr.i.i, 0
  br i1 %tobool25.not.i.i, label %do.body36.i.i, label %land.rhs26.i.i

do.body36.i.i:                                    ; preds = %for.inc33.i.i, %land.rhs26.i.i
  %end.1.lcssa.i.i = phi ptr [ %end.113.i.i, %land.rhs26.i.i ], [ %incdec.ptr34.i.i, %for.inc33.i.i ]
  %cmp37.i.i = icmp eq ptr %end.1.lcssa.i.i, %call.i.i
  br i1 %cmp37.i.i, label %do.body43.i.i, label %if.end52.i.i, !prof !308

do.body43.i.i:                                    ; preds = %do.body36.i.i
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/dynamic_debug.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 266, 0\0A.popsection", ""() #15, !srcloc !309
  unreachable

if.end52.i.i:                                     ; preds = %do.body36.i.i, %for.end.i.i
  %end.2.i.i = phi ptr [ %end.1.lcssa.i.i, %do.body36.i.i ], [ %end.0.i.i, %for.end.i.i ]
  %buf.addr.1.i.i = phi ptr [ %call.i.i, %do.body36.i.i ], [ %incdec.ptr.i.i, %for.end.i.i ]
  %cmp53.i.i = icmp eq i32 %nwords.016.i.i, 9
  br i1 %cmp53.i.i, label %do.end58.i.i, label %if.end61.i.i

do.end58.i.i:                                     ; preds = %if.end52.i.i
  %call60.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, i32 noundef 9) #14
  br label %ddebug_exec_query.exit.thread

if.end61.i.i:                                     ; preds = %if.end52.i.i
  %18 = ptrtoint ptr %end.2.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %end.2.i.i, align 1
  %tobool62.not.i.i = icmp eq i8 %19, 0
  br i1 %tobool62.not.i.i, label %cleanup67.i.i, label %if.then63.i.i

if.then63.i.i:                                    ; preds = %if.end61.i.i
  %incdec.ptr64.i.i = getelementptr i8, ptr %end.2.i.i, i32 1
  %20 = ptrtoint ptr %end.2.i.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %end.2.i.i, align 1
  br label %cleanup67.i.i

cleanup67.i.i:                                    ; preds = %if.then63.i.i, %if.end61.i.i
  %end.3.i.i = phi ptr [ %incdec.ptr64.i.i, %if.then63.i.i ], [ %end.2.i.i, %if.end61.i.i ]
  %inc.i.i = add nuw nsw i32 %nwords.016.i.i, 1
  %arrayidx66.i.i = getelementptr ptr, ptr %words.i, i32 %nwords.016.i.i
  %21 = ptrtoint ptr %arrayidx66.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %buf.addr.1.i.i, ptr %arrayidx66.i.i, align 4
  %22 = ptrtoint ptr %end.3.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %end.3.i.i, align 1
  %tobool.not.i.i = icmp eq i8 %23, 0
  br i1 %tobool.not.i.i, label %while.end.i.i, label %while.body.i.i

while.end.i.i:                                    ; preds = %cleanup67.i.i, %while.body.i.i, %while.body.i.i, %do.end17
  %nwords.0.lcssa.i.i = phi i32 [ 0, %do.end17 ], [ %nwords.016.i.i, %while.body.i.i ], [ %nwords.016.i.i, %while.body.i.i ], [ %inc.i.i, %cleanup67.i.i ]
  %24 = load i32, ptr @verbose, align 4
  %cmp70.i.i = icmp sgt i32 %24, 2
  br i1 %cmp70.i.i, label %if.then72.i.i, label %ddebug_tokenize.exit.i

if.then72.i.i:                                    ; preds = %while.end.i.i
  %call77.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52) #14
  %cmp7922.i.i = icmp sgt i32 %nwords.0.lcssa.i.i, 0
  br i1 %cmp7922.i.i, label %do.end84.i.i, label %do.end93.i.i

do.end84.i.i:                                     ; preds = %do.end84.i.i, %if.then72.i.i
  %i.023.i.i = phi i32 [ %inc89.i.i, %do.end84.i.i ], [ 0, %if.then72.i.i ]
  %arrayidx86.i.i = getelementptr ptr, ptr %words.i, i32 %i.023.i.i
  %25 = ptrtoint ptr %arrayidx86.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx86.i.i, align 4
  %call87.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, ptr noundef %26) #14
  %inc89.i.i = add nuw nsw i32 %i.023.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc89.i.i, %nwords.0.lcssa.i.i
  br i1 %exitcond.not.i.i, label %do.end93.i.i, label %do.end84.i.i

do.end93.i.i:                                     ; preds = %do.end84.i.i, %if.then72.i.i
  %call95.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58) #14
  br label %ddebug_tokenize.exit.i

ddebug_tokenize.exit.i:                           ; preds = %do.end93.i.i, %while.end.i.i
  %cmp.i = icmp slt i32 %nwords.0.lcssa.i.i, 1
  br i1 %cmp.i, label %ddebug_exec_query.exit.thread, label %if.end.i

if.end.i:                                         ; preds = %ddebug_tokenize.exit.i
  %sub.i = add nsw i32 %nwords.0.lcssa.i.i, -1
  %arrayidx.i = getelementptr [9 x ptr], ptr %words.i, i32 0, i32 %sub.i
  %27 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx.i, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %28, align 1
  switch i8 %30, label %do.end.i31.i [
    i8 43, label %sw.bb.i.i
    i8 45, label %sw.bb.i.i
    i8 61, label %sw.bb.i.i
  ]

sw.bb.i.i:                                        ; preds = %if.end.i, %if.end.i, %if.end.i
  %31 = load i32, ptr @verbose, align 4
  %cmp.i.i = icmp sgt i32 %31, 2
  br i1 %cmp.i.i, label %do.end7.i.i, label %do.end11.i.i

do.end.i31.i:                                     ; preds = %if.end.i
  %conv.i.i = zext i8 %30 to i32
  %call.i30.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, i32 noundef %conv.i.i, ptr noundef %28) #14
  br label %ddebug_exec_query.exit.thread

do.end7.i.i:                                      ; preds = %sw.bb.i.i
  %conv1.i.i = zext i8 %30 to i32
  %call9.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, i32 noundef %conv1.i.i) #14
  br label %do.end11.i.i

do.end11.i.i:                                     ; preds = %do.end7.i.i, %sw.bb.i.i
  %str.addr.096.i.i = getelementptr i8, ptr %28, i32 1
  %32 = ptrtoint ptr %str.addr.096.i.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %str.addr.096.i.i, align 1
  %tobool.not97.i.i = icmp eq i8 %33, 0
  br i1 %tobool.not97.i.i, label %do.body36.i36.i, label %for.cond12.preheader.i.i

for.cond12.preheader.i.i:                         ; preds = %for.end.i34.i, %do.end11.i.i
  %modifiers.sroa.0.0.i = phi i32 [ %or.i.i, %for.end.i34.i ], [ 0, %do.end11.i.i ]
  %34 = phi i8 [ %39, %for.end.i34.i ], [ %33, %do.end11.i.i ]
  %str.addr.098.i.i = phi ptr [ %str.addr.0.i.i, %for.end.i34.i ], [ %str.addr.096.i.i, %do.end11.i.i ]
  switch i8 %34, label %for.inc.5.i.i [
    i8 95, label %for.end.i34.i
    i8 116, label %for.end.fold.split.i.i
    i8 108, label %for.end.fold.split103.i.i
    i8 102, label %for.end.fold.split104.i.i
    i8 109, label %for.end.fold.split105.i.i
    i8 112, label %for.end.fold.split106.i.i
  ]

for.inc.5.i.i:                                    ; preds = %for.cond12.preheader.i.i
  %35 = ptrtoint ptr %str.addr.098.i.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %str.addr.098.i.i, align 1
  %conv30.i.i = zext i8 %36 to i32
  %call31.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, i32 noundef %conv30.i.i) #14
  br label %ddebug_exec_query.exit.thread

for.end.fold.split.i.i:                           ; preds = %for.cond12.preheader.i.i
  br label %for.end.i34.i

for.end.fold.split103.i.i:                        ; preds = %for.cond12.preheader.i.i
  br label %for.end.i34.i

for.end.fold.split104.i.i:                        ; preds = %for.cond12.preheader.i.i
  br label %for.end.i34.i

for.end.fold.split105.i.i:                        ; preds = %for.cond12.preheader.i.i
  br label %for.end.i34.i

for.end.fold.split106.i.i:                        ; preds = %for.cond12.preheader.i.i
  br label %for.end.i34.i

for.end.i34.i:                                    ; preds = %for.end.fold.split106.i.i, %for.end.fold.split105.i.i, %for.end.fold.split104.i.i, %for.end.fold.split103.i.i, %for.end.fold.split.i.i, %for.cond12.preheader.i.i
  %i.095.lcssa.i.i = phi i32 [ 5, %for.cond12.preheader.i.i ], [ 4, %for.end.fold.split.i.i ], [ 3, %for.end.fold.split103.i.i ], [ 2, %for.end.fold.split104.i.i ], [ 1, %for.end.fold.split105.i.i ], [ 0, %for.end.fold.split106.i.i ]
  %arrayidx.i32.i = getelementptr [6 x %struct.anon.173], ptr @opt_array, i32 0, i32 %i.095.lcssa.i.i
  %37 = ptrtoint ptr %arrayidx.i32.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %bf.load.i.i = load i8, ptr %arrayidx.i32.i, align 4
  %bf.cast.i.i = zext i8 %bf.load.i.i to i32
  %or.i.i = or i32 %modifiers.sroa.0.0.i, %bf.cast.i.i
  %str.addr.0.i.i = getelementptr i8, ptr %str.addr.098.i.i, i32 1
  %38 = ptrtoint ptr %str.addr.0.i.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %str.addr.0.i.i, align 1
  %tobool.not.i33.i = icmp eq i8 %39, 0
  br i1 %tobool.not.i33.i, label %do.body36.i36.i, label %for.cond12.preheader.i.i

do.body36.i36.i:                                  ; preds = %for.end.i34.i, %do.end11.i.i
  %modifiers.sroa.0.1.i = phi i32 [ 0, %do.end11.i.i ], [ %or.i.i, %for.end.i34.i ]
  %40 = load i32, ptr @verbose, align 4
  %cmp37.i35.i = icmp sgt i32 %40, 2
  br i1 %cmp37.i35.i, label %do.end42.i.i, label %do.end48.i.i

do.end42.i.i:                                     ; preds = %do.body36.i36.i
  %call45.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, i32 noundef %modifiers.sroa.0.1.i) #14
  br label %do.end48.i.i

do.end48.i.i:                                     ; preds = %do.end42.i.i, %do.body36.i36.i
  switch i8 %30, label %do.body57.i.i [
    i8 45, label %sw.bb52.i.i
    i8 43, label %sw.bb50.i.i
  ]

sw.bb50.i.i:                                      ; preds = %do.end48.i.i
  br label %do.body57.i.i

sw.bb52.i.i:                                      ; preds = %do.end48.i.i
  %neg.i.i = xor i32 %modifiers.sroa.0.1.i, -1
  br label %do.body57.i.i

do.body57.i.i:                                    ; preds = %sw.bb52.i.i, %sw.bb50.i.i, %do.end48.i.i
  %modifiers.sroa.10.0.i = phi i32 [ %neg.i.i, %sw.bb52.i.i ], [ -1, %sw.bb50.i.i ], [ 0, %do.end48.i.i ]
  %modifiers.sroa.0.2.i = phi i32 [ 0, %sw.bb52.i.i ], [ %modifiers.sroa.0.1.i, %sw.bb50.i.i ], [ %modifiers.sroa.0.1.i, %do.end48.i.i ]
  %41 = load i32, ptr @verbose, align 4
  %cmp58.i.i = icmp sgt i32 %41, 2
  br i1 %cmp58.i.i, label %do.end63.i.i, label %if.end9.i

do.end63.i.i:                                     ; preds = %do.body57.i.i
  %call67.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, i32 noundef %modifiers.sroa.0.2.i, i32 noundef %modifiers.sroa.10.0.i) #14
  br label %if.end9.i

if.end9.i:                                        ; preds = %do.end63.i.i, %do.body57.i.i
  %42 = and i32 %sub.i, 1
  %cmp.not.i.i = icmp eq i32 %42, 0
  br i1 %cmp.not.i.i, label %if.end.i.i, label %do.end.i38.i

do.end.i38.i:                                     ; preds = %if.end9.i
  %call.i37.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74) #14
  br label %ddebug_exec_query.exit.thread

if.end.i.i:                                       ; preds = %if.end9.i
  br i1 %tobool13.not, label %if.end2.i.i, label %if.then1.i.i

if.then1.i.i:                                     ; preds = %if.end.i.i
  %43 = ptrtoint ptr %module.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %modname, ptr %module.i.i, align 4
  br label %if.end2.i.i

if.end2.i.i:                                      ; preds = %if.then1.i.i, %if.end.i.i
  %cmp3158.not.i.i = icmp eq i32 %sub.i, 0
  br i1 %cmp3158.not.i.i, label %for.end.i47.i, label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i, %if.end2.i.i
  %i.0159.i.i = phi i32 [ %add79.i.i, %for.inc.i.i ], [ 0, %if.end2.i.i ]
  %arrayidx.i40.i = getelementptr ptr, ptr %words.i, i32 %i.0159.i.i
  %44 = ptrtoint ptr %arrayidx.i40.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx.i40.i, align 4
  %add.i.i = or i32 %i.0159.i.i, 1
  %arrayidx4.i.i = getelementptr ptr, ptr %words.i, i32 %add.i.i
  %46 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx4.i.i, align 4
  %call5.i.i = call i32 @strcmp(ptr noundef %45, ptr noundef nonnull dereferenceable(5) @.str.76) #16
  %tobool6.not.i.i = icmp eq i32 %call5.i.i, 0
  br i1 %tobool6.not.i.i, label %if.then7.i.i, label %if.else.i.i

if.then7.i.i:                                     ; preds = %for.body.i.i
  %48 = ptrtoint ptr %function33.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %function33.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %49, null
  br i1 %tobool.not.i.i.i, label %if.end74.i.thread.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.then7.i.i
  %call.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.76, ptr noundef nonnull %49, ptr noundef %47) #14
  br label %if.end74.i.i

if.else.i.i:                                      ; preds = %for.body.i.i
  %call9.i41.i = call i32 @strcmp(ptr noundef %45, ptr noundef nonnull dereferenceable(5) @.str.77) #16
  %tobool10.not.i.i = icmp eq i32 %call9.i41.i, 0
  br i1 %tobool10.not.i.i, label %if.then11.i42.i, label %if.else44.i.i

if.then11.i42.i:                                  ; preds = %if.else.i.i
  %50 = ptrtoint ptr %query.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %query.i, align 4
  %tobool.not.i116.i.i = icmp eq ptr %51, null
  br i1 %tobool.not.i116.i.i, label %if.end15.i.i, label %check_set.exit120.i.i

check_set.exit120.i.i:                            ; preds = %if.then11.i42.i
  %call.i117.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.77, ptr noundef nonnull %51, ptr noundef %47) #14
  %52 = ptrtoint ptr %query.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %47, ptr %query.i, align 4
  br label %ddebug_exec_query.exit.thread

if.end15.i.i:                                     ; preds = %if.then11.i42.i
  %53 = ptrtoint ptr %query.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %47, ptr %query.i, align 4
  %call17.i.i = call ptr @strchr(ptr noundef %47, i32 noundef 58) #15
  %tobool18.not.i.i = icmp eq ptr %call17.i.i, null
  br i1 %tobool18.not.i.i, label %for.inc.i.i, label %if.end20.i.i

if.end20.i.i:                                     ; preds = %if.end15.i.i
  %incdec.ptr.i43.i = getelementptr i8, ptr %call17.i.i, i32 1
  %54 = ptrtoint ptr %call17.i.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 0, ptr %call17.i.i, align 1
  %55 = ptrtoint ptr %incdec.ptr.i43.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %incdec.ptr.i43.i, align 1
  %conv.i44.i = zext i8 %56 to i32
  %arrayidx21.i.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv.i44.i
  %57 = ptrtoint ptr %arrayidx21.i.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx21.i.i, align 1
  %.fr147.i.i = freeze i8 %58
  %59 = and i8 %.fr147.i.i, 3
  %cmp23.not.not.i.i = icmp eq i8 %59, 0
  br i1 %cmp23.not.not.i.i, label %switch.early.test.i.i, label %if.then32.i.i

switch.early.test.i.i:                            ; preds = %if.end20.i.i
  switch i8 %56, label %if.else38.i.i [
    i8 63, label %if.then32.i.i
    i8 42, label %if.then32.i.i
  ]

if.then32.i.i:                                    ; preds = %switch.early.test.i.i, %switch.early.test.i.i, %if.end20.i.i
  %60 = ptrtoint ptr %function33.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %function33.i.i, align 4
  %tobool.not.i121.i.i = icmp eq ptr %61, null
  br i1 %tobool.not.i121.i.i, label %check_set.exit125.thread.i.i, label %check_set.exit125.i.i

check_set.exit125.thread.i.i:                     ; preds = %if.then32.i.i
  %62 = ptrtoint ptr %function33.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %incdec.ptr.i43.i, ptr %function33.i.i, align 4
  br label %for.inc.i.i

check_set.exit125.i.i:                            ; preds = %if.then32.i.i
  %call.i122.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.76, ptr noundef nonnull %61, ptr noundef %incdec.ptr.i43.i) #14
  %63 = ptrtoint ptr %function33.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %incdec.ptr.i43.i, ptr %function33.i.i, align 4
  br label %ddebug_exec_query.exit.thread

if.else38.i.i:                                    ; preds = %switch.early.test.i.i
  %call39.i.i = call fastcc i32 @parse_linerange(ptr noundef nonnull %query.i, ptr noundef %incdec.ptr.i43.i) #15
  %tobool40.not.i.i = icmp eq i32 %call39.i.i, 0
  br i1 %tobool40.not.i.i, label %for.inc.i.i, label %ddebug_exec_query.exit.thread

if.else44.i.i:                                    ; preds = %if.else.i.i
  %call45.i45.i = call i32 @strcmp(ptr noundef %45, ptr noundef nonnull dereferenceable(7) @.str.78) #16
  %tobool46.not.i.i = icmp eq i32 %call45.i45.i, 0
  br i1 %tobool46.not.i.i, label %if.then47.i.i, label %if.else50.i.i

if.then47.i.i:                                    ; preds = %if.else44.i.i
  %64 = ptrtoint ptr %module.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %module.i.i, align 4
  %tobool.not.i126.i.i = icmp eq ptr %65, null
  br i1 %tobool.not.i126.i.i, label %if.end74.i.thread.i, label %if.then.i128.i.i

if.then.i128.i.i:                                 ; preds = %if.then47.i.i
  %call.i127.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.78, ptr noundef nonnull %65, ptr noundef %47) #14
  br label %if.end74.i.i

if.else50.i.i:                                    ; preds = %if.else44.i.i
  %call51.i.i = call i32 @strcmp(ptr noundef %45, ptr noundef nonnull dereferenceable(7) @.str.79) #16
  %tobool52.not.i.i = icmp eq i32 %call51.i.i, 0
  br i1 %tobool52.not.i.i, label %if.then53.i.i, label %if.else56.i.i

if.then53.i.i:                                    ; preds = %if.else50.i.i
  %call.i131.i.i = call i32 @string_unescape(ptr noundef %47, ptr noundef %47, i32 noundef 0, i32 noundef 11) #15
  %66 = ptrtoint ptr %format.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %format.i.i, align 4
  %tobool.not.i132.i.i = icmp eq ptr %67, null
  br i1 %tobool.not.i132.i.i, label %if.end74.i.thread.i, label %if.then.i134.i.i

if.then.i134.i.i:                                 ; preds = %if.then53.i.i
  %call.i133.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.79, ptr noundef nonnull %67, ptr noundef %47) #14
  br label %if.end74.i.i

if.else56.i.i:                                    ; preds = %if.else50.i.i
  %call57.i.i = call i32 @strcmp(ptr noundef %45, ptr noundef nonnull dereferenceable(5) @.str.80) #16
  %tobool58.not.i.i = icmp eq i32 %call57.i.i, 0
  br i1 %tobool58.not.i.i, label %if.then59.i.i, label %do.end67.i.i

if.then59.i.i:                                    ; preds = %if.else56.i.i
  %call60.i46.i = call fastcc i32 @parse_linerange(ptr noundef nonnull %query.i, ptr noundef %47) #15
  %tobool61.not.i.i = icmp eq i32 %call60.i46.i, 0
  br i1 %tobool61.not.i.i, label %for.inc.i.i, label %ddebug_exec_query.exit.thread

do.end67.i.i:                                     ; preds = %if.else56.i.i
  %call69.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82, ptr noundef %45) #14
  br label %ddebug_exec_query.exit.thread

if.end74.i.thread.i:                              ; preds = %if.then53.i.i, %if.then47.i.i, %if.then7.i.i
  %format.sink.i.ph.i = phi ptr [ %format.i.i, %if.then53.i.i ], [ %module.i.i, %if.then47.i.i ], [ %function33.i.i, %if.then7.i.i ]
  %68 = ptrtoint ptr %format.sink.i.ph.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %47, ptr %format.sink.i.ph.i, align 4
  br label %for.inc.i.i

if.end74.i.i:                                     ; preds = %if.then.i134.i.i, %if.then.i128.i.i, %if.then.i.i.i
  %format.sink.i.i = phi ptr [ %function33.i.i, %if.then.i.i.i ], [ %module.i.i, %if.then.i128.i.i ], [ %format.i.i, %if.then.i134.i.i ]
  %69 = ptrtoint ptr %format.sink.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %47, ptr %format.sink.i.i, align 4
  br label %ddebug_exec_query.exit.thread

for.inc.i.i:                                      ; preds = %if.end74.i.thread.i, %if.then59.i.i, %if.else38.i.i, %check_set.exit125.thread.i.i, %if.end15.i.i
  %add79.i.i = add i32 %i.0159.i.i, 2
  %cmp3.i.i = icmp ult i32 %add79.i.i, %sub.i
  br i1 %cmp3.i.i, label %for.body.i.i, label %for.end.i47.i

for.end.i47.i:                                    ; preds = %for.inc.i.i, %if.end2.i.i
  %70 = ptrtoint ptr %format.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %format.i.i, align 4
  %tobool.not.i137.i.i = icmp eq ptr %71, null
  br i1 %tobool.not.i137.i.i, label %do.body.i.i.i, label %if.then.i139.i.i

if.then.i139.i.i:                                 ; preds = %for.end.i47.i
  %call.i138.i.i = call i32 @strlen(ptr noundef nonnull %71) #16
  br label %while.cond.i.i.i

while.cond.i.i.i:                                 ; preds = %land.rhs.i.i.i, %if.then.i139.i.i
  %fmtlen.0.i.i.i = phi i32 [ %call.i138.i.i, %if.then.i139.i.i ], [ %sub.i.i.i, %land.rhs.i.i.i ]
  %tobool2.not.i.i.i = icmp eq i32 %fmtlen.0.i.i.i, 0
  br i1 %tobool2.not.i.i.i, label %do.body.i.i.i, label %land.rhs.i.i.i

land.rhs.i.i.i:                                   ; preds = %while.cond.i.i.i
  %sub.i.i.i = add i32 %fmtlen.0.i.i.i, -1
  %arrayidx.i.i.i = getelementptr i8, ptr %71, i32 %sub.i.i.i
  %72 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx.i.i.i, align 1
  %cmp.i.i.i = icmp eq i8 %73, 10
  br i1 %cmp.i.i.i, label %while.cond.i.i.i, label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %land.rhs.i.i.i, %while.cond.i.i.i, %for.end.i47.i
  %fmtlen.1.i.i.i = phi i32 [ 0, %for.end.i47.i ], [ %fmtlen.0.i.i.i, %land.rhs.i.i.i ], [ 0, %while.cond.i.i.i ]
  %74 = load i32, ptr @verbose, align 4
  %cmp5.i.i.i = icmp sgt i32 %74, 2
  br i1 %cmp5.i.i.i, label %do.end.i.i.i, label %if.end20.i

do.end.i.i.i:                                     ; preds = %do.body.i.i.i
  %75 = ptrtoint ptr %function33.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %function33.i.i, align 4
  %tobool9.not.i.i.i = icmp eq ptr %76, null
  %..str.104.i.i.i = select i1 %tobool9.not.i.i.i, ptr @.str.104, ptr %76
  %77 = ptrtoint ptr %query.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %query.i, align 4
  %tobool10.not.i.i.i = icmp eq ptr %78, null
  %cond14.i.i.i = select i1 %tobool10.not.i.i.i, ptr @.str.104, ptr %78
  %79 = ptrtoint ptr %module.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %module.i.i, align 4
  %tobool15.not.i.i.i = icmp eq ptr %80, null
  %cond19.i.i.i = select i1 %tobool15.not.i.i.i, ptr @.str.104, ptr %80
  %cond25.i.i.i = select i1 %tobool.not.i137.i.i, ptr @.str.104, ptr %71
  %81 = ptrtoint ptr %first_lineno.i.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %first_lineno.i.i.i, align 4
  %83 = ptrtoint ptr %last_lineno.i.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %last_lineno.i.i.i, align 4
  %call26.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.84, ptr noundef %..str.104.i.i.i, ptr noundef %cond14.i.i.i, ptr noundef %cond19.i.i.i, i32 noundef %fmtlen.1.i.i.i, ptr noundef %cond25.i.i.i, i32 noundef %82, i32 noundef %84) #14
  br label %if.end20.i

if.end20.i:                                       ; preds = %do.end.i.i.i, %do.body.i.i.i
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %fbuf.i.i) #15
  %85 = call ptr @memset(ptr %fbuf.i.i, i32 255, i32 7)
  call void @mutex_lock_nested(ptr noundef nonnull @ddebug_lock, i32 noundef 0) #15
  %dt.0215.i.i = load ptr, ptr @ddebug_tables, align 4
  %cmp.not216.i.i = icmp eq ptr %dt.0215.i.i, @ddebug_tables
  br i1 %cmp.not216.i.i, label %for.end135.thread.i.i, label %for.body.lr.ph.i51.i

for.end135.thread.i.i:                            ; preds = %if.end20.i
  call void @mutex_unlock(ptr noundef nonnull @ddebug_lock) #15
  br label %land.lhs.true137.i.i

for.body.lr.ph.i51.i:                             ; preds = %if.end20.i
  %and95.i.i = and i32 %modifiers.sroa.0.2.i, 1
  %tobool96.not.i.i = icmp eq i32 %and95.i.i, 0
  br label %for.body.i53.i

for.body.i53.i:                                   ; preds = %for.inc130.i.i, %for.body.lr.ph.i51.i
  %dt.0218.i.i = phi ptr [ %dt.0215.i.i, %for.body.lr.ph.i51.i ], [ %dt.0.i.i, %for.inc130.i.i ]
  %nfound.0217.i.i = phi i32 [ 0, %for.body.lr.ph.i51.i ], [ %nfound.3.i.i, %for.inc130.i.i ]
  %86 = ptrtoint ptr %module.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %module.i.i, align 4
  %tobool.not.i52.i = icmp eq ptr %87, null
  br i1 %tobool.not.i52.i, label %if.end.i55.i, label %land.lhs.true.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i53.i
  %mod_name.i.i = getelementptr inbounds %struct.ddebug_table, ptr %dt.0218.i.i, i32 0, i32 1
  %88 = ptrtoint ptr %mod_name.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %mod_name.i.i, align 4
  %call.i54.i = call zeroext i1 @match_wildcard(ptr noundef nonnull %87, ptr noundef %89) #15
  br i1 %call.i54.i, label %if.end.i55.i, label %for.inc130.i.i

if.end.i55.i:                                     ; preds = %land.lhs.true.i.i, %for.body.i53.i
  %num_ddebugs.i.i = getelementptr inbounds %struct.ddebug_table, ptr %dt.0218.i.i, i32 0, i32 2
  %90 = ptrtoint ptr %num_ddebugs.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %num_ddebugs.i.i, align 4
  %cmp3204.not.i.i = icmp eq i32 %91, 0
  br i1 %cmp3204.not.i.i, label %for.inc130.i.i, label %for.body4.lr.ph.i.i

for.body4.lr.ph.i.i:                              ; preds = %if.end.i55.i
  %ddebugs.i.i = getelementptr inbounds %struct.ddebug_table, ptr %dt.0218.i.i, i32 0, i32 3
  %mod_name115.i.i = getelementptr inbounds %struct.ddebug_table, ptr %dt.0218.i.i, i32 0, i32 1
  br label %for.body4.i.i

for.body4.i.i:                                    ; preds = %cleanup126.i.i, %for.body4.lr.ph.i.i
  %i.0207.i.i = phi i32 [ 0, %for.body4.lr.ph.i.i ], [ %inc129.i.i, %cleanup126.i.i ]
  %nfound.1205.i.i = phi i32 [ %nfound.0217.i.i, %for.body4.lr.ph.i.i ], [ %nfound.2.i.i, %cleanup126.i.i ]
  %92 = ptrtoint ptr %ddebugs.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %ddebugs.i.i, align 4
  %94 = ptrtoint ptr %query.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %query.i, align 4
  %tobool5.not.i.i = icmp eq ptr %95, null
  br i1 %tobool5.not.i.i, label %if.end21.i.i, label %land.lhs.true6.i.i

land.lhs.true6.i.i:                               ; preds = %for.body4.i.i
  %filename8.i.i = getelementptr %struct._ddebug, ptr %93, i32 %i.0207.i.i, i32 2
  %96 = ptrtoint ptr %filename8.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %filename8.i.i, align 8
  %call9.i56.i = call zeroext i1 @match_wildcard(ptr noundef nonnull %95, ptr noundef %97) #15
  br i1 %call9.i56.i, label %if.end21.i.i, label %land.lhs.true10.i.i

land.lhs.true10.i.i:                              ; preds = %land.lhs.true6.i.i
  %98 = ptrtoint ptr %query.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %query.i, align 4
  %100 = ptrtoint ptr %filename8.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %filename8.i.i, align 8
  %call.i.i57.i = call ptr @strrchr(ptr noundef %101, i32 noundef 47) #15
  %tobool.not.i.i58.i = icmp eq ptr %call.i.i57.i, null
  %add.ptr.i.i.i = getelementptr i8, ptr %call.i.i57.i, i32 1
  %cond.i.i.i = select i1 %tobool.not.i.i58.i, ptr %101, ptr %add.ptr.i.i.i
  %call14.i.i = call zeroext i1 @match_wildcard(ptr noundef %99, ptr noundef %cond.i.i.i) #15
  br i1 %call14.i.i, label %if.end21.i.i, label %land.lhs.true15.i.i

land.lhs.true15.i.i:                              ; preds = %land.lhs.true10.i.i
  %102 = ptrtoint ptr %query.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %query.i, align 4
  %104 = ptrtoint ptr %filename8.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %filename8.i.i, align 8
  %call19.i.i = call zeroext i1 @match_wildcard(ptr noundef %103, ptr noundef %105) #15
  br i1 %call19.i.i, label %if.end21.i.i, label %cleanup126.i.i

if.end21.i.i:                                     ; preds = %land.lhs.true15.i.i, %land.lhs.true10.i.i, %land.lhs.true6.i.i, %for.body4.i.i
  %106 = ptrtoint ptr %function33.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %function33.i.i, align 4
  %tobool22.not.i.i = icmp eq ptr %107, null
  br i1 %tobool22.not.i.i, label %if.end28.i.i, label %land.lhs.true23.i.i

land.lhs.true23.i.i:                              ; preds = %if.end21.i.i
  %function25.i.i = getelementptr %struct._ddebug, ptr %93, i32 %i.0207.i.i, i32 1
  %108 = ptrtoint ptr %function25.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %function25.i.i, align 4
  %call26.i.i = call zeroext i1 @match_wildcard(ptr noundef nonnull %107, ptr noundef %109) #15
  br i1 %call26.i.i, label %if.end28.i.i, label %cleanup126.i.i

if.end28.i.i:                                     ; preds = %land.lhs.true23.i.i, %if.end21.i.i
  %110 = ptrtoint ptr %format.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %format.i.i, align 4
  %tobool29.not.i.i = icmp eq ptr %111, null
  br i1 %tobool29.not.i.i, label %if.end51.i.i, label %if.then30.i.i

if.then30.i.i:                                    ; preds = %if.end28.i.i
  %112 = ptrtoint ptr %111 to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %111, align 1
  %cmp32.i.i = icmp eq i8 %113, 94
  %format35.i.i = getelementptr %struct._ddebug, ptr %93, i32 %i.0207.i.i, i32 3
  %114 = ptrtoint ptr %format35.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %format35.i.i, align 4
  br i1 %cmp32.i.i, label %if.then34.i.i, label %if.else.i59.i

if.then34.i.i:                                    ; preds = %if.then30.i.i
  %add.ptr37.i.i = getelementptr i8, ptr %111, i32 1
  %strlen.i.i = call i32 @strlen(ptr %add.ptr37.i.i) #16
  %strncmp.i.i = call i32 @strncmp(ptr %115, ptr %add.ptr37.i.i, i32 %strlen.i.i) #15
  %cmp.not202.i.i = icmp eq i32 %strncmp.i.i, 0
  br i1 %cmp.not202.i.i, label %if.end51.i.i, label %cleanup126.i.i

if.else.i59.i:                                    ; preds = %if.then30.i.i
  %call46.i.i = call ptr @strstr(ptr noundef %115, ptr noundef nonnull %111) #15
  %tobool47.not.i.i = icmp eq ptr %call46.i.i, null
  br i1 %tobool47.not.i.i, label %cleanup126.i.i, label %if.end51.i.i

if.end51.i.i:                                     ; preds = %if.else.i59.i, %if.then34.i.i, %if.end28.i.i
  %116 = ptrtoint ptr %first_lineno.i.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %first_lineno.i.i.i, align 4
  %tobool52.not.i60.i = icmp eq i32 %117, 0
  br i1 %tobool52.not.i60.i, label %if.end58.i.i, label %land.lhs.true53.i.i

land.lhs.true53.i.i:                              ; preds = %if.end51.i.i
  %lineno.i.i = getelementptr %struct._ddebug, ptr %93, i32 %i.0207.i.i, i32 4
  %118 = ptrtoint ptr %lineno.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %bf.load.i61.i = load i32, ptr %lineno.i.i, align 8
  %bf.lshr.i.i = lshr i32 %bf.load.i61.i, 14
  %cmp55.i.i = icmp ult i32 %bf.lshr.i.i, %117
  br i1 %cmp55.i.i, label %cleanup126.i.i, label %if.end58.i.i

if.end58.i.i:                                     ; preds = %land.lhs.true53.i.i, %if.end51.i.i
  %119 = ptrtoint ptr %last_lineno.i.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %last_lineno.i.i.i, align 4
  %tobool59.not.i.i = icmp eq i32 %120, 0
  br i1 %tobool59.not.i.i, label %if.end68.i.i, label %land.lhs.true60.i.i

land.lhs.true60.i.i:                              ; preds = %if.end58.i.i
  %lineno61.i.i = getelementptr %struct._ddebug, ptr %93, i32 %i.0207.i.i, i32 4
  %121 = ptrtoint ptr %lineno61.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %bf.load62.i.i = load i32, ptr %lineno61.i.i, align 8
  %bf.lshr63.i.i = lshr i32 %bf.load62.i.i, 14
  %cmp65.i.i = icmp ugt i32 %bf.lshr63.i.i, %120
  br i1 %cmp65.i.i, label %cleanup126.i.i, label %if.end68.i.i

if.end68.i.i:                                     ; preds = %land.lhs.true60.i.i, %if.end58.i.i
  %inc.i62.i = add i32 %nfound.1205.i.i, 1
  %flags.i.i = getelementptr %struct._ddebug, ptr %93, i32 %i.0207.i.i, i32 4
  %122 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %bf.load69.i.i = load i32, ptr %flags.i.i, align 8
  %bf.lshr70.i.i = lshr i32 %bf.load69.i.i, 6
  %bf.clear.i.i = and i32 %bf.lshr70.i.i, 255
  %and.i.i = and i32 %bf.clear.i.i, %modifiers.sroa.10.0.i
  %or.i63.i = or i32 %and.i.i, %modifiers.sroa.0.2.i
  %cmp76.i.i = icmp eq i32 %or.i63.i, %bf.clear.i.i
  br i1 %cmp76.i.i, label %cleanup126.i.i, label %if.end79.i.i

if.end79.i.i:                                     ; preds = %if.end68.i.i
  %123 = and i32 %bf.load69.i.i, 64
  %tobool85.not.i.i = icmp eq i32 %123, 0
  br i1 %tobool85.not.i.i, label %if.else93.i.i, label %if.then86.i.i

if.then86.i.i:                                    ; preds = %if.end79.i.i
  br i1 %tobool96.not.i.i, label %if.then90.i.i, label %if.end101.i.i

if.then90.i.i:                                    ; preds = %if.then86.i.i
  %key.i.i = getelementptr %struct._ddebug, ptr %93, i32 %i.0207.i.i, i32 5
  call void @static_key_disable(ptr noundef %key.i.i) #15
  br label %if.end101.i.i

if.else93.i.i:                                    ; preds = %if.end79.i.i
  br i1 %tobool96.not.i.i, label %if.end101.i.i, label %if.then97.i.i

if.then97.i.i:                                    ; preds = %if.else93.i.i
  %key98.i.i = getelementptr %struct._ddebug, ptr %93, i32 %i.0207.i.i, i32 5
  call void @static_key_enable(ptr noundef %key98.i.i) #15
  br label %if.end101.i.i

if.end101.i.i:                                    ; preds = %if.then97.i.i, %if.else93.i.i, %if.then90.i.i, %if.then86.i.i
  %124 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %bf.load103.i.i = load i32, ptr %flags.i.i, align 8
  %bf.value.i.i = shl i32 %or.i63.i, 6
  %bf.shl.i.i = and i32 %bf.value.i.i, 16320
  %bf.clear104.i.i = and i32 %bf.load103.i.i, -16321
  %bf.set.i.i = or i32 %bf.clear104.i.i, %bf.shl.i.i
  store i32 %bf.set.i.i, ptr %flags.i.i, align 8
  %125 = load i32, ptr @verbose, align 4
  %cmp105.i.i = icmp sgt i32 %125, 3
  br i1 %cmp105.i.i, label %do.end.i64.i, label %cleanup126.i.i

do.end.i64.i:                                     ; preds = %if.end101.i.i
  %filename110.i.i = getelementptr %struct._ddebug, ptr %93, i32 %i.0207.i.i, i32 2
  %126 = ptrtoint ptr %filename110.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %filename110.i.i, align 8
  %bf.lshr114.i.i = lshr i32 %bf.load103.i.i, 14
  %128 = ptrtoint ptr %mod_name115.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %mod_name115.i.i, align 4
  %function116.i.i = getelementptr %struct._ddebug, ptr %93, i32 %i.0207.i.i, i32 1
  %130 = ptrtoint ptr %function116.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %function116.i.i, align 4
  %and.i.i.i = and i32 %or.i63.i, 1
  %tobool.not.i203.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i203.i.i, label %for.inc.i.i.i, label %if.then.i.i65.i

if.then.i.i65.i:                                  ; preds = %do.end.i64.i
  %132 = ptrtoint ptr %fbuf.i.i to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 112, ptr %fbuf.i.i, align 1
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %if.then.i.i65.i, %do.end.i64.i
  %p.1.i.i.i = phi ptr [ %0, %if.then.i.i65.i ], [ %fbuf.i.i, %do.end.i64.i ]
  %and.1.i.i.i = and i32 %or.i63.i, 2
  %tobool.not.1.i.i.i = icmp eq i32 %and.1.i.i.i, 0
  br i1 %tobool.not.1.i.i.i, label %for.inc.1.i.i.i, label %if.then.1.i.i.i

if.then.1.i.i.i:                                  ; preds = %for.inc.i.i.i
  %incdec.ptr.1.i.i.i = getelementptr i8, ptr %p.1.i.i.i, i32 1
  %133 = ptrtoint ptr %p.1.i.i.i to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 109, ptr %p.1.i.i.i, align 1
  br label %for.inc.1.i.i.i

for.inc.1.i.i.i:                                  ; preds = %if.then.1.i.i.i, %for.inc.i.i.i
  %p.1.1.i.i.i = phi ptr [ %incdec.ptr.1.i.i.i, %if.then.1.i.i.i ], [ %p.1.i.i.i, %for.inc.i.i.i ]
  %and.2.i.i.i = and i32 %or.i63.i, 4
  %tobool.not.2.i.i.i = icmp eq i32 %and.2.i.i.i, 0
  br i1 %tobool.not.2.i.i.i, label %for.inc.2.i.i.i, label %if.then.2.i.i.i

if.then.2.i.i.i:                                  ; preds = %for.inc.1.i.i.i
  %incdec.ptr.2.i.i.i = getelementptr i8, ptr %p.1.1.i.i.i, i32 1
  %134 = ptrtoint ptr %p.1.1.i.i.i to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 102, ptr %p.1.1.i.i.i, align 1
  br label %for.inc.2.i.i.i

for.inc.2.i.i.i:                                  ; preds = %if.then.2.i.i.i, %for.inc.1.i.i.i
  %p.1.2.i.i.i = phi ptr [ %incdec.ptr.2.i.i.i, %if.then.2.i.i.i ], [ %p.1.1.i.i.i, %for.inc.1.i.i.i ]
  %and.3.i.i.i = and i32 %or.i63.i, 8
  %tobool.not.3.i.i.i = icmp eq i32 %and.3.i.i.i, 0
  br i1 %tobool.not.3.i.i.i, label %for.inc.3.i.i.i, label %if.then.3.i.i.i

if.then.3.i.i.i:                                  ; preds = %for.inc.2.i.i.i
  %incdec.ptr.3.i.i.i = getelementptr i8, ptr %p.1.2.i.i.i, i32 1
  %135 = ptrtoint ptr %p.1.2.i.i.i to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 108, ptr %p.1.2.i.i.i, align 1
  br label %for.inc.3.i.i.i

for.inc.3.i.i.i:                                  ; preds = %if.then.3.i.i.i, %for.inc.2.i.i.i
  %p.1.3.i.i.i = phi ptr [ %incdec.ptr.3.i.i.i, %if.then.3.i.i.i ], [ %p.1.2.i.i.i, %for.inc.2.i.i.i ]
  %and.4.i.i.i = and i32 %or.i63.i, 16
  %tobool.not.4.i.i.i = icmp eq i32 %and.4.i.i.i, 0
  br i1 %tobool.not.4.i.i.i, label %for.inc.5.i.i.i, label %if.then.4.i.i.i

if.then.4.i.i.i:                                  ; preds = %for.inc.3.i.i.i
  %incdec.ptr.4.i.i.i = getelementptr i8, ptr %p.1.3.i.i.i, i32 1
  %136 = ptrtoint ptr %p.1.3.i.i.i to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 116, ptr %p.1.3.i.i.i, align 1
  br label %for.inc.5.i.i.i

for.inc.5.i.i.i:                                  ; preds = %if.then.4.i.i.i, %for.inc.3.i.i.i
  %p.1.4.i.i.i = phi ptr [ %incdec.ptr.4.i.i.i, %if.then.4.i.i.i ], [ %p.1.3.i.i.i, %for.inc.3.i.i.i ]
  %cmp4.i.i.i = icmp eq ptr %p.1.4.i.i.i, %fbuf.i.i
  br i1 %cmp4.i.i.i, label %if.then5.i.i.i, label %ddebug_describe_flags.exit.i.i

if.then5.i.i.i:                                   ; preds = %for.inc.5.i.i.i
  %137 = ptrtoint ptr %fbuf.i.i to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 95, ptr %fbuf.i.i, align 1
  br label %ddebug_describe_flags.exit.i.i

ddebug_describe_flags.exit.i.i:                   ; preds = %if.then5.i.i.i, %for.inc.5.i.i.i
  %p.2.i.i.i = phi ptr [ %0, %if.then5.i.i.i ], [ %p.1.4.i.i.i, %for.inc.5.i.i.i ]
  %138 = ptrtoint ptr %p.2.i.i.i to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 0, ptr %p.2.i.i.i, align 1
  %call122.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.97, ptr noundef %127, i32 noundef %bf.lshr114.i.i, ptr noundef %129, ptr noundef %131, ptr noundef nonnull %fbuf.i.i) #14
  br label %cleanup126.i.i

cleanup126.i.i:                                   ; preds = %ddebug_describe_flags.exit.i.i, %if.end101.i.i, %if.end68.i.i, %land.lhs.true60.i.i, %land.lhs.true53.i.i, %if.else.i59.i, %if.then34.i.i, %land.lhs.true23.i.i, %land.lhs.true15.i.i
  %nfound.2.i.i = phi i32 [ %nfound.1205.i.i, %if.then34.i.i ], [ %nfound.1205.i.i, %land.lhs.true15.i.i ], [ %nfound.1205.i.i, %land.lhs.true23.i.i ], [ %nfound.1205.i.i, %if.else.i59.i ], [ %nfound.1205.i.i, %land.lhs.true53.i.i ], [ %nfound.1205.i.i, %land.lhs.true60.i.i ], [ %inc.i62.i, %if.end68.i.i ], [ %inc.i62.i, %ddebug_describe_flags.exit.i.i ], [ %inc.i62.i, %if.end101.i.i ]
  %inc129.i.i = add nuw i32 %i.0207.i.i, 1
  %139 = ptrtoint ptr %num_ddebugs.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %num_ddebugs.i.i, align 4
  %cmp3.i66.i = icmp ult i32 %inc129.i.i, %140
  br i1 %cmp3.i66.i, label %for.body4.i.i, label %for.inc130.i.i

for.inc130.i.i:                                   ; preds = %cleanup126.i.i, %if.end.i55.i, %land.lhs.true.i.i
  %nfound.3.i.i = phi i32 [ %nfound.0217.i.i, %land.lhs.true.i.i ], [ %nfound.0217.i.i, %if.end.i55.i ], [ %nfound.2.i.i, %cleanup126.i.i ]
  %141 = ptrtoint ptr %dt.0218.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %dt.0.i.i = load ptr, ptr %dt.0218.i.i, align 4
  %cmp.not.i67.i = icmp eq ptr %dt.0.i.i, @ddebug_tables
  br i1 %cmp.not.i67.i, label %for.end135.i.i, label %for.body.i53.i

for.end135.i.i:                                   ; preds = %for.inc130.i.i
  call void @mutex_unlock(ptr noundef nonnull @ddebug_lock) #15
  %tobool136.not.i.i = icmp eq i32 %nfound.3.i.i, 0
  br i1 %tobool136.not.i.i, label %land.lhs.true137.i.i, label %ddebug_change.exit.i

land.lhs.true137.i.i:                             ; preds = %for.end135.i.i, %for.end135.thread.i.i
  %142 = load i32, ptr @verbose, align 4
  %tobool138.not.i.i = icmp eq i32 %142, 0
  br i1 %tobool138.not.i.i, label %143, label %do.end142.i.i

do.end142.i.i:                                    ; preds = %land.lhs.true137.i.i
  %call144.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.100) #14
  br label %143

ddebug_change.exit.i:                             ; preds = %for.end135.i.i
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %fbuf.i.i) #15
  br label %144

143:                                              ; preds = %do.end142.i.i, %land.lhs.true137.i.i
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %fbuf.i.i) #15
  br label %144

144:                                              ; preds = %143, %ddebug_change.exit.i
  %nfound.0.lcssa222.i100.i = phi i32 [ 0, %143 ], [ %nfound.3.i.i, %ddebug_change.exit.i ]
  %145 = phi ptr [ @.str.45, %143 ], [ @.str.44, %ddebug_change.exit.i ]
  %146 = ptrtoint ptr %format.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %format.i.i, align 4
  %tobool.not.i69.i = icmp eq ptr %147, null
  br i1 %tobool.not.i69.i, label %do.body.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %144
  %call.i70.i = call i32 @strlen(ptr noundef nonnull %147) #16
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %land.rhs.i.i, %if.then.i.i
  %fmtlen.0.i.i = phi i32 [ %call.i70.i, %if.then.i.i ], [ %sub.i.i, %land.rhs.i.i ]
  %tobool2.not.i.i = icmp eq i32 %fmtlen.0.i.i, 0
  br i1 %tobool2.not.i.i, label %do.body.i.i, label %land.rhs.i.i

land.rhs.i.i:                                     ; preds = %while.cond.i.i
  %sub.i.i = add i32 %fmtlen.0.i.i, -1
  %arrayidx.i71.i = getelementptr i8, ptr %147, i32 %sub.i.i
  %148 = ptrtoint ptr %arrayidx.i71.i to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %arrayidx.i71.i, align 1
  %cmp.i72.i = icmp eq i8 %149, 10
  br i1 %cmp.i72.i, label %while.cond.i.i, label %do.body.i.i

do.body.i.i:                                      ; preds = %land.rhs.i.i, %while.cond.i.i, %144
  %fmtlen.1.i.i = phi i32 [ 0, %144 ], [ 0, %while.cond.i.i ], [ %fmtlen.0.i.i, %land.rhs.i.i ]
  %150 = load i32, ptr @verbose, align 4
  %cmp5.i.i = icmp sgt i32 %150, 2
  br i1 %cmp5.i.i, label %do.end.i79.i, label %ddebug_exec_query.exit

do.end.i79.i:                                     ; preds = %do.body.i.i
  %151 = ptrtoint ptr %function33.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %function33.i.i, align 4
  %tobool9.not.i.i = icmp eq ptr %152, null
  %..str.104.i.i = select i1 %tobool9.not.i.i, ptr @.str.104, ptr %152
  %153 = ptrtoint ptr %query.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %query.i, align 4
  %tobool10.not.i74.i = icmp eq ptr %154, null
  %cond14.i.i = select i1 %tobool10.not.i74.i, ptr @.str.104, ptr %154
  %155 = ptrtoint ptr %module.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %module.i.i, align 4
  %tobool15.not.i.i = icmp eq ptr %156, null
  %cond19.i.i = select i1 %tobool15.not.i.i, ptr @.str.104, ptr %156
  %cond25.i.i = select i1 %tobool.not.i69.i, ptr @.str.104, ptr %147
  %157 = ptrtoint ptr %first_lineno.i.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %first_lineno.i.i.i, align 4
  %159 = ptrtoint ptr %last_lineno.i.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %last_lineno.i.i.i, align 4
  %call26.i78.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.102, ptr noundef nonnull %145, ptr noundef %..str.104.i.i, ptr noundef %cond14.i.i, ptr noundef %cond19.i.i, i32 noundef %fmtlen.1.i.i, ptr noundef %cond25.i.i, i32 noundef %158, i32 noundef %160) #14
  br label %ddebug_exec_query.exit

ddebug_exec_query.exit.thread:                    ; preds = %if.end74.i.i, %do.end67.i.i, %if.then59.i.i, %if.else38.i.i, %check_set.exit125.i.i, %check_set.exit120.i.i, %do.end.i38.i, %for.inc.5.i.i, %do.end.i31.i, %ddebug_tokenize.exit.i, %do.end58.i.i, %do.end.i.i
  %.str.36.sink = phi ptr [ @.str.36, %ddebug_tokenize.exit.i ], [ @.str.36, %do.end58.i.i ], [ @.str.36, %do.end.i.i ], [ @.str.39, %for.inc.5.i.i ], [ @.str.39, %do.end.i31.i ], [ @.str.42, %if.end74.i.i ], [ @.str.42, %do.end67.i.i ], [ @.str.42, %check_set.exit125.i.i ], [ @.str.42, %check_set.exit120.i.i ], [ @.str.42, %do.end.i38.i ], [ @.str.42, %if.then59.i.i ], [ @.str.42, %if.else38.i.i ]
  %call1.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.36.sink) #14
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %words.i) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %query.i) #15
  %errs.1126 = add i32 %errs.094, 1
  br label %161

ddebug_exec_query.exit:                           ; preds = %do.end.i79.i, %do.body.i.i
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %words.i) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %query.i) #15
  %cmp19 = icmp slt i32 %nfound.0.lcssa222.i100.i, 0
  %retval.0.i.lobit = lshr i32 %nfound.0.lcssa222.i100.i, 31
  %errs.1 = add i32 %retval.0.i.lobit, %errs.094
  br i1 %cmp19, label %161, label %162

161:                                              ; preds = %ddebug_exec_query.exit, %ddebug_exec_query.exit.thread
  %errs.1130 = phi i32 [ %errs.1126, %ddebug_exec_query.exit.thread ], [ %errs.1, %ddebug_exec_query.exit ]
  %retval.0.i128 = phi i32 [ -22, %ddebug_exec_query.exit.thread ], [ %nfound.0.lcssa222.i100.i, %ddebug_exec_query.exit ]
  br label %162

162:                                              ; preds = %161, %ddebug_exec_query.exit
  %errs.1129 = phi i32 [ %errs.1130, %161 ], [ %errs.1, %ddebug_exec_query.exit ]
  %retval.0.i127 = phi i32 [ %retval.0.i128, %161 ], [ %nfound.0.lcssa222.i100.i, %ddebug_exec_query.exit ]
  %163 = phi i32 [ %retval.0.i128, %161 ], [ %exitcode.095, %ddebug_exec_query.exit ]
  %164 = call i32 @llvm.smax.i32(i32 %retval.0.i127, i32 0)
  %nfound.1 = add i32 %164, %nfound.096
  %inc23 = add i32 %i.093, 1
  br label %for.inc

for.inc:                                          ; preds = %162, %lor.lhs.false, %lor.lhs.false, %if.end
  %i.1 = phi i32 [ %inc23, %162 ], [ %i.093, %lor.lhs.false ], [ %i.093, %if.end ], [ %i.093, %lor.lhs.false ]
  %errs.2 = phi i32 [ %errs.1129, %162 ], [ %errs.094, %lor.lhs.false ], [ %errs.094, %if.end ], [ %errs.094, %lor.lhs.false ]
  %exitcode.2 = phi i32 [ %163, %162 ], [ %exitcode.095, %lor.lhs.false ], [ %exitcode.095, %if.end ], [ %exitcode.095, %lor.lhs.false ]
  %nfound.2 = phi i32 [ %nfound.1, %162 ], [ %nfound.096, %lor.lhs.false ], [ %nfound.096, %if.end ], [ %nfound.096, %lor.lhs.false ]
  %tobool.not = icmp eq ptr %split.0, null
  br i1 %tobool.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc
  %tobool24.not = icmp eq i32 %i.1, 0
  br i1 %tobool24.not, label %if.end38, label %do.body26

do.body26:                                        ; preds = %for.end
  %165 = load i32, ptr @verbose, align 4
  %cmp27 = icmp sgt i32 %165, 1
  br i1 %cmp27, label %do.end32, label %if.end38

do.end32:                                         ; preds = %do.body26
  %call34 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, i32 noundef %i.1, i32 noundef %nfound.2, i32 noundef %errs.2) #14
  br label %if.end38

if.end38:                                         ; preds = %do.end32, %do.body26, %for.end
  %tobool39.not = icmp eq i32 %exitcode.2, 0
  br i1 %tobool39.not, label %if.end38.thread, label %166

if.end38.thread:                                  ; preds = %if.end38, %entry
  %nfound.0.lcssa137141 = phi i32 [ %nfound.2, %if.end38 ], [ 0, %entry ]
  br label %166

166:                                              ; preds = %if.end38.thread, %if.end38
  %167 = phi i32 [ %nfound.0.lcssa137141, %if.end38.thread ], [ %exitcode.2, %if.end38 ]
  ret i32 %167
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__dynamic_pr_debug(ptr noundef readonly %descriptor, ptr noundef %fmt, ...) #0 align 64 {
entry:
  %args = alloca %struct.__va_list, align 4
  %vaf = alloca %struct.va_format, align 4
  %buf = alloca [64 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args) #15
  %0 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %args, align 4, !annotation !310
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vaf) #15
  %1 = getelementptr inbounds %struct.va_format, ptr %vaf, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %buf) #15
  %2 = call ptr @memset(ptr %buf, i32 0, i32 64)
  %tobool.not = icmp eq ptr %descriptor, null
  br i1 %tobool.not, label %do.body4, label %do.body10, !prof !308

do.body4:                                         ; preds = %entry
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/dynamic_debug.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 637, 0\0A.popsection", ""() #15, !srcloc !311
  unreachable

do.body10:                                        ; preds = %entry
  %tobool11.not = icmp eq ptr %fmt, null
  br i1 %tobool11.not, label %do.body21, label %do.end29, !prof !308

do.body21:                                        ; preds = %do.body10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/dynamic_debug.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 638, 0\0A.popsection", ""() #15, !srcloc !312
  unreachable

do.end29:                                         ; preds = %do.body10
  call void @llvm.va_start(ptr nonnull %args)
  %3 = ptrtoint ptr %vaf to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %fmt, ptr %vaf, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %args, ptr %1, align 4
  %flags.i = getelementptr inbounds %struct._ddebug, ptr %descriptor, i32 0, i32 4
  %5 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %bf.load.i = load i32, ptr %flags.i, align 8
  %6 = and i32 %bf.load.i, 1920
  %tobool.not.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i, label %dynamic_emit_prefix.exit, label %if.then.i, !prof !313

if.then.i:                                        ; preds = %do.end29
  %call.i = call fastcc ptr @__dynamic_emit_prefix(ptr noundef nonnull %descriptor, ptr noundef nonnull %buf) #15
  br label %dynamic_emit_prefix.exit

dynamic_emit_prefix.exit:                         ; preds = %if.then.i, %do.end29
  %call34 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull %buf, ptr noundef nonnull %vaf) #14
  call void @llvm.va_end(ptr nonnull %args)
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buf) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vaf) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args) #15
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__dynamic_dev_dbg(ptr noundef readonly %descriptor, ptr noundef %dev, ptr noundef %fmt, ...) #0 align 64 {
entry:
  %vaf = alloca %struct.va_format, align 4
  %args = alloca %struct.__va_list, align 4
  %buf = alloca [64 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vaf) #15
  %0 = getelementptr inbounds %struct.va_format, ptr %vaf, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args) #15
  %1 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %args, align 4, !annotation !310
  %tobool.not = icmp eq ptr %descriptor, null
  br i1 %tobool.not, label %do.body4, label %do.body10, !prof !308

do.body4:                                         ; preds = %entry
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/dynamic_debug.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 657, 0\0A.popsection", ""() #15, !srcloc !314
  unreachable

do.body10:                                        ; preds = %entry
  %tobool11.not = icmp eq ptr %fmt, null
  br i1 %tobool11.not, label %do.body21, label %do.end29, !prof !308

do.body21:                                        ; preds = %do.body10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/dynamic_debug.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 658, 0\0A.popsection", ""() #15, !srcloc !315
  unreachable

do.end29:                                         ; preds = %do.body10
  call void @llvm.va_start(ptr nonnull %args)
  %2 = ptrtoint ptr %vaf to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %fmt, ptr %vaf, align 4
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %args, ptr %0, align 4
  %tobool31.not = icmp eq ptr %dev, null
  br i1 %tobool31.not, label %do.end35, label %if.else

do.end35:                                         ; preds = %do.end29
  %call = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull %vaf) #14
  br label %if.end40

if.else:                                          ; preds = %do.end29
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %buf) #15
  %4 = call ptr @memset(ptr %buf, i32 0, i32 64)
  %flags.i = getelementptr inbounds %struct._ddebug, ptr %descriptor, i32 0, i32 4
  %5 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %bf.load.i = load i32, ptr %flags.i, align 8
  %6 = and i32 %bf.load.i, 1920
  %tobool.not.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i, label %dynamic_emit_prefix.exit, label %if.then.i, !prof !313

if.then.i:                                        ; preds = %if.else
  %call.i = call fastcc ptr @__dynamic_emit_prefix(ptr noundef nonnull %descriptor, ptr noundef nonnull %buf) #15
  br label %dynamic_emit_prefix.exit

dynamic_emit_prefix.exit:                         ; preds = %if.then.i, %if.else
  %call37 = call ptr @dev_driver_string(ptr noundef nonnull %dev) #15
  %init_name.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 3
  %7 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i46 = icmp eq ptr %8, null
  br i1 %tobool.not.i46, label %if.end.i, label %dev_name.exit

if.end.i:                                         ; preds = %dynamic_emit_prefix.exit
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %dynamic_emit_prefix.exit
  %retval.0.i = phi ptr [ %10, %if.end.i ], [ %8, %dynamic_emit_prefix.exit ]
  %call39 = call i32 (i32, ptr, ptr, ...) @dev_printk_emit(i32 noundef 7, ptr noundef nonnull %dev, ptr noundef nonnull @.str.7, ptr noundef nonnull %buf, ptr noundef %call37, ptr noundef %retval.0.i, ptr noundef nonnull %vaf) #14
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buf) #15
  br label %if.end40

if.end40:                                         ; preds = %dev_name.exit, %do.end35
  call void @llvm.va_end(ptr nonnull %args)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vaf) #15
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @dev_printk_emit(i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__dynamic_netdev_dbg(ptr noundef readonly %descriptor, ptr noundef %dev, ptr noundef %fmt, ...) #0 align 64 {
entry:
  %vaf = alloca %struct.va_format, align 4
  %args = alloca %struct.__va_list, align 4
  %buf = alloca [64 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vaf) #15
  %0 = getelementptr inbounds %struct.va_format, ptr %vaf, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args) #15
  %1 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %args, align 4, !annotation !310
  %tobool.not = icmp eq ptr %descriptor, null
  br i1 %tobool.not, label %do.body4, label %do.body10, !prof !308

do.body4:                                         ; preds = %entry
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/dynamic_debug.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 688, 0\0A.popsection", ""() #15, !srcloc !316
  unreachable

do.body10:                                        ; preds = %entry
  %tobool11.not = icmp eq ptr %fmt, null
  br i1 %tobool11.not, label %do.body21, label %do.end29, !prof !308

do.body21:                                        ; preds = %do.body10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/dynamic_debug.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 689, 0\0A.popsection", ""() #15, !srcloc !317
  unreachable

do.end29:                                         ; preds = %do.body10
  call void @llvm.va_start(ptr nonnull %args)
  %2 = ptrtoint ptr %vaf to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %fmt, ptr %vaf, align 4
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %args, ptr %0, align 4
  %tobool31.not = icmp eq ptr %dev, null
  br i1 %tobool31.not, label %do.end57, label %land.lhs.true

land.lhs.true:                                    ; preds = %do.end29
  %parent = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 133, i32 1
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent, align 8
  %tobool33.not = icmp eq ptr %5, null
  br i1 %tobool33.not, label %do.end50.critedge, label %if.then34

if.then34:                                        ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %buf) #15
  %6 = call ptr @memset(ptr %buf, i32 0, i32 64)
  %flags.i = getelementptr inbounds %struct._ddebug, ptr %descriptor, i32 0, i32 4
  %7 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %bf.load.i = load i32, ptr %flags.i, align 8
  %8 = and i32 %bf.load.i, 1920
  %tobool.not.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i, label %dynamic_emit_prefix.exit, label %if.then.i, !prof !313

if.then.i:                                        ; preds = %if.then34
  %call.i = call fastcc ptr @__dynamic_emit_prefix(ptr noundef nonnull %descriptor, ptr noundef nonnull %buf) #15
  br label %dynamic_emit_prefix.exit

dynamic_emit_prefix.exit:                         ; preds = %if.then.i, %if.then34
  %9 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %parent, align 8
  %call39 = call ptr @dev_driver_string(ptr noundef %10) #15
  %11 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %parent, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i73 = icmp eq ptr %14, null
  br i1 %tobool.not.i73, label %if.end.i, label %dev_name.exit

if.end.i:                                         ; preds = %dynamic_emit_prefix.exit
  %15 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %12, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %dynamic_emit_prefix.exit
  %retval.0.i = phi ptr [ %16, %if.end.i ], [ %14, %dynamic_emit_prefix.exit ]
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %dev, align 128
  %tobool.not.i74 = icmp eq i8 %18, 0
  br i1 %tobool.not.i74, label %netdev_name.exit, label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %dev_name.exit
  %call.i75 = call ptr @strchr(ptr noundef nonnull %dev, i32 noundef 37) #15
  %tobool2.not.i = icmp eq ptr %call.i75, null
  %spec.select.i = select i1 %tobool2.not.i, ptr %dev, ptr @.str.110
  br label %netdev_name.exit

netdev_name.exit:                                 ; preds = %lor.lhs.false.i, %dev_name.exit
  %retval.0.i76 = phi ptr [ @.str.110, %dev_name.exit ], [ %spec.select.i, %lor.lhs.false.i ]
  %reg_state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 121
  %19 = ptrtoint ptr %reg_state.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %bf.load45.i = load i8, ptr %reg_state.i, align 4
  %20 = icmp ult i8 %bf.load45.i, 6
  br i1 %20, label %switch.lookup, label %land.end.i

land.end.i:                                       ; preds = %netdev_name.exit
  %.b46.i = load i1, ptr @netdev_reg_state.__already_done, align 1
  br i1 %.b46.i, label %netdev_reg_state.exit, label %if.then.i77, !prof !313

if.then.i77:                                      ; preds = %land.end.i
  store i1 true, ptr @netdev_reg_state.__already_done, align 1
  %bf.cast21.i = zext i8 %bf.load45.i to i32
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.116, i32 noundef 4983, i32 noundef 9, ptr noundef nonnull @.str.117, ptr noundef nonnull %dev, i32 noundef %bf.cast21.i) #15
  br label %netdev_reg_state.exit

switch.lookup:                                    ; preds = %netdev_name.exit
  %21 = sext i8 %bf.load45.i to i32
  %switch.gep = getelementptr inbounds [6 x ptr], ptr @switch.table.__dynamic_netdev_dbg, i32 0, i32 %21
  %22 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %22)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %netdev_reg_state.exit

netdev_reg_state.exit:                            ; preds = %switch.lookup, %if.then.i77, %land.end.i
  %retval.0.i78 = phi ptr [ @.str.118, %if.then.i77 ], [ @.str.118, %land.end.i ], [ %switch.load, %switch.lookup ]
  %call45 = call i32 (i32, ptr, ptr, ...) @dev_printk_emit(i32 noundef 7, ptr noundef nonnull %5, ptr noundef nonnull @.str.8, ptr noundef nonnull %buf, ptr noundef %call39, ptr noundef %retval.0.i, ptr noundef %retval.0.i76, ptr noundef nonnull %retval.0.i78, ptr noundef nonnull %vaf) #14
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buf) #15
  br label %if.end61

do.end50.critedge:                                ; preds = %land.lhs.true
  %23 = ptrtoint ptr %dev to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %dev, align 128
  %tobool.not.i79 = icmp eq i8 %24, 0
  br i1 %tobool.not.i79, label %netdev_name.exit85, label %lor.lhs.false.i83

lor.lhs.false.i83:                                ; preds = %do.end50.critedge
  %call.i80 = call ptr @strchr(ptr noundef nonnull %dev, i32 noundef 37) #15
  %tobool2.not.i81 = icmp eq ptr %call.i80, null
  %spec.select.i82 = select i1 %tobool2.not.i81, ptr %dev, ptr @.str.110
  br label %netdev_name.exit85

netdev_name.exit85:                               ; preds = %lor.lhs.false.i83, %do.end50.critedge
  %retval.0.i84 = phi ptr [ @.str.110, %do.end50.critedge ], [ %spec.select.i82, %lor.lhs.false.i83 ]
  %reg_state.i86 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 121
  %25 = ptrtoint ptr %reg_state.i86 to i32
  call void @__asan_load1_noabort(i32 %25)
  %bf.load45.i87 = load i8, ptr %reg_state.i86, align 4
  %26 = icmp ult i8 %bf.load45.i87, 6
  br i1 %26, label %switch.lookup99, label %land.end.i94

land.end.i94:                                     ; preds = %netdev_name.exit85
  %.b46.i93 = load i1, ptr @netdev_reg_state.__already_done, align 1
  br i1 %.b46.i93, label %netdev_reg_state.exit98, label %if.then.i96, !prof !313

if.then.i96:                                      ; preds = %land.end.i94
  store i1 true, ptr @netdev_reg_state.__already_done, align 1
  %bf.cast21.i95 = zext i8 %bf.load45.i87 to i32
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.116, i32 noundef 4983, i32 noundef 9, ptr noundef nonnull @.str.117, ptr noundef nonnull %dev, i32 noundef %bf.cast21.i95) #15
  br label %netdev_reg_state.exit98

switch.lookup99:                                  ; preds = %netdev_name.exit85
  %27 = sext i8 %bf.load45.i87 to i32
  %switch.gep100 = getelementptr inbounds [6 x ptr], ptr @switch.table.__dynamic_netdev_dbg.142, i32 0, i32 %27
  %28 = ptrtoint ptr %switch.gep100 to i32
  call void @__asan_load4_noabort(i32 %28)
  %switch.load101 = load ptr, ptr %switch.gep100, align 4
  br label %netdev_reg_state.exit98

netdev_reg_state.exit98:                          ; preds = %switch.lookup99, %if.then.i96, %land.end.i94
  %retval.0.i97 = phi ptr [ @.str.118, %if.then.i96 ], [ @.str.118, %land.end.i94 ], [ %switch.load101, %switch.lookup99 ]
  %call53 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %retval.0.i84, ptr noundef nonnull %retval.0.i97, ptr noundef nonnull %vaf) #14
  br label %if.end61

do.end57:                                         ; preds = %do.end29
  %call59 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull %vaf) #14
  br label %if.end61

if.end61:                                         ; preds = %do.end57, %netdev_reg_state.exit98, %netdev_reg_state.exit
  call void @llvm.va_end(ptr nonnull %args)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vaf) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__dynamic_ibdev_dbg(ptr nocapture noundef readonly %descriptor, ptr noundef readonly %ibdev, ptr noundef %fmt, ...) #0 align 64 {
entry:
  %vaf = alloca %struct.va_format, align 4
  %args = alloca %struct.__va_list, align 4
  %buf = alloca [64 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vaf) #15
  %0 = getelementptr inbounds %struct.va_format, ptr %vaf, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args) #15
  %1 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %args, align 4, !annotation !310
  call void @llvm.va_start(ptr nonnull %args)
  %2 = ptrtoint ptr %vaf to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %fmt, ptr %vaf, align 4
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %args, ptr %0, align 4
  %tobool.not = icmp eq ptr %ibdev, null
  br i1 %tobool.not, label %do.end17, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %parent = getelementptr inbounds %struct.ib_device, ptr %ibdev, i32 0, i32 13, i32 0, i32 0, i32 1
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent, align 8
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %do.end.critedge, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %6 = getelementptr inbounds %struct.ib_device, ptr %ibdev, i32 0, i32 13
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %buf) #15
  %7 = call ptr @memset(ptr %buf, i32 0, i32 64)
  %flags.i = getelementptr inbounds %struct._ddebug, ptr %descriptor, i32 0, i32 4
  %8 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %bf.load.i = load i32, ptr %flags.i, align 8
  %9 = and i32 %bf.load.i, 1920
  %tobool.not.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i, label %dynamic_emit_prefix.exit, label %if.then.i, !prof !313

if.then.i:                                        ; preds = %if.then
  %call.i = call fastcc ptr @__dynamic_emit_prefix(ptr noundef %descriptor, ptr noundef nonnull %buf) #15
  br label %dynamic_emit_prefix.exit

dynamic_emit_prefix.exit:                         ; preds = %if.then.i, %if.then
  %10 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %parent, align 8
  %call5 = call ptr @dev_driver_string(ptr noundef %11) #15
  %12 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %parent, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i28 = icmp eq ptr %15, null
  br i1 %tobool.not.i28, label %if.end.i, label %dev_name.exit

if.end.i:                                         ; preds = %dynamic_emit_prefix.exit
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %13, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %dynamic_emit_prefix.exit
  %retval.0.i = phi ptr [ %17, %if.end.i ], [ %15, %dynamic_emit_prefix.exit ]
  %init_name.i29 = getelementptr inbounds %struct.ib_device, ptr %ibdev, i32 0, i32 13, i32 0, i32 0, i32 3
  %18 = ptrtoint ptr %init_name.i29 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %init_name.i29, align 8
  %tobool.not.i30 = icmp eq ptr %19, null
  br i1 %tobool.not.i30, label %if.end.i31, label %dev_name.exit33

if.end.i31:                                       ; preds = %dev_name.exit
  %20 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %6, align 4
  br label %dev_name.exit33

dev_name.exit33:                                  ; preds = %if.end.i31, %dev_name.exit
  %retval.0.i32 = phi ptr [ %21, %if.end.i31 ], [ %19, %dev_name.exit ]
  %call9 = call i32 (i32, ptr, ptr, ...) @dev_printk_emit(i32 noundef 7, ptr noundef nonnull %5, ptr noundef nonnull @.str.14, ptr noundef nonnull %buf, ptr noundef %call5, ptr noundef %retval.0.i, ptr noundef %retval.0.i32, ptr noundef nonnull %vaf) #14
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buf) #15
  br label %if.end20

do.end.critedge:                                  ; preds = %land.lhs.true
  %init_name.i34 = getelementptr inbounds %struct.ib_device, ptr %ibdev, i32 0, i32 13, i32 0, i32 0, i32 3
  %22 = ptrtoint ptr %init_name.i34 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %init_name.i34, align 8
  %tobool.not.i35 = icmp eq ptr %23, null
  br i1 %tobool.not.i35, label %if.end.i36, label %dev_name.exit38

if.end.i36:                                       ; preds = %do.end.critedge
  %24 = getelementptr inbounds %struct.ib_device, ptr %ibdev, i32 0, i32 13
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 4
  br label %dev_name.exit38

dev_name.exit38:                                  ; preds = %if.end.i36, %do.end.critedge
  %retval.0.i37 = phi ptr [ %26, %if.end.i36 ], [ %23, %do.end.critedge ]
  %call13 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %retval.0.i37, ptr noundef nonnull %vaf) #14
  br label %if.end20

do.end17:                                         ; preds = %entry
  %call19 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull %vaf) #14
  br label %if.end20

if.end20:                                         ; preds = %do.end17, %dev_name.exit38, %dev_name.exit33
  call void @llvm.va_end(ptr nonnull %args)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vaf) #15
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dyndbg_setup(ptr nocapture noundef readnone %str) #5 section ".init.text" align 64 {
entry:
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ddebug_add_module(ptr noundef %tab, i32 noundef %n, ptr noundef %name) local_unnamed_addr #0 align 64 {
entry:
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 20) #17
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef %name) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %mod_name = getelementptr inbounds %struct.ddebug_table, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %mod_name to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %name, ptr %mod_name, align 8
  %num_ddebugs = getelementptr inbounds %struct.ddebug_table, ptr %call7.i.i, i32 0, i32 2
  %2 = ptrtoint ptr %num_ddebugs to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %n, ptr %num_ddebugs, align 4
  %ddebugs = getelementptr inbounds %struct.ddebug_table, ptr %call7.i.i, i32 0, i32 3
  %3 = ptrtoint ptr %ddebugs to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %tab, ptr %ddebugs, align 8
  tail call void @mutex_lock_nested(ptr noundef nonnull @ddebug_lock, i32 noundef 0) #15
  %4 = load ptr, ptr @ddebug_tables, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @ddebug_tables, ptr noundef %4) #15
  br i1 %call.i.i, label %if.end.i.i, label %list_add.exit

if.end.i.i:                                       ; preds = %if.end
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i.i, ptr %prev1.i.i, align 4
  %6 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %4, ptr %call7.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @ddebug_tables, ptr %prev3.i.i, align 4
  store volatile ptr %call7.i.i, ptr @ddebug_tables, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end
  tail call void @mutex_unlock(ptr noundef nonnull @ddebug_lock) #15
  %8 = load i32, ptr @verbose, align 4
  %cmp3 = icmp sgt i32 %8, 0
  br i1 %cmp3, label %do.end7, label %cleanup

do.end7:                                          ; preds = %list_add.exit
  %9 = ptrtoint ptr %mod_name to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mod_name, align 8
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef %n, ptr noundef %10) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end7, %list_add.exit, %do.end
  %retval.0 = phi i32 [ -12, %do.end ], [ 0, %do.end7 ], [ 0, %list_add.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ddebug_dyndbg_module_param_cb(ptr noundef %param, ptr noundef %val, ptr noundef %module) local_unnamed_addr #0 align 64 {
entry:
  %0 = load i32, ptr @verbose, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %do.end, label %do.end2

do.end:                                           ; preds = %entry
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %module, ptr noundef %param, ptr noundef %val) #14
  br label %do.end2

do.end2:                                          ; preds = %do.end, %entry
  %call.i = tail call ptr @strchr(ptr noundef %param, i32 noundef 46) #15
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %do.end2
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %call.i, align 1
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 1
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %do.end2
  %param.addr.0.i = phi ptr [ %add.ptr.i, %if.then.i ], [ %param, %do.end2 ]
  %modname.addr.0.i = phi ptr [ %param, %if.then.i ], [ %module, %do.end2 ]
  %call1.i = tail call i32 @strcmp(ptr noundef %param.addr.0.i, ptr noundef nonnull dereferenceable(7) @.str.121) #16
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %ddebug_dyndbg_param_cb.exit

if.end4.i:                                        ; preds = %if.end.i
  %tobool5.not.i = icmp eq ptr %val, null
  %spec.select.i = select i1 %tobool5.not.i, ptr @.str.122, ptr %val
  %call6.i = tail call fastcc i32 @ddebug_exec_queries(ptr noundef nonnull %spec.select.i, ptr noundef %modname.addr.0.i) #15
  br label %ddebug_dyndbg_param_cb.exit

ddebug_dyndbg_param_cb.exit:                      ; preds = %if.end4.i, %if.end.i
  %retval.0.i = phi i32 [ 0, %if.end4.i ], [ -2, %if.end.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ddebug_remove_module(ptr noundef %mod_name) local_unnamed_addr #0 align 64 {
entry:
  tail call void @mutex_lock_nested(ptr noundef nonnull @ddebug_lock, i32 noundef 0) #15
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %dt.0.in = phi ptr [ @ddebug_tables, %entry ], [ %dt.0, %for.body ]
  %0 = ptrtoint ptr %dt.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %dt.0 = load ptr, ptr %dt.0.in, align 4
  %cmp.not = icmp eq ptr %dt.0, @ddebug_tables
  br i1 %cmp.not, label %for.end.thread, label %for.body

for.end.thread:                                   ; preds = %for.cond
  tail call void @mutex_unlock(ptr noundef nonnull @ddebug_lock) #15
  br label %if.end20

for.body:                                         ; preds = %for.cond
  %mod_name5 = getelementptr inbounds %struct.ddebug_table, ptr %dt.0, i32 0, i32 1
  %1 = ptrtoint ptr %mod_name5 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mod_name5, align 4
  %cmp6 = icmp eq ptr %2, %mod_name
  br i1 %cmp6, label %if.then, label %for.cond

if.then:                                          ; preds = %for.body
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %dt.0) #15
  br i1 %call.i.i.i, label %if.end.i.i.i, label %do.body

if.end.i.i.i:                                     ; preds = %if.then
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %dt.0, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i.i, align 4
  %5 = ptrtoint ptr %dt.0 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dt.0, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %do.body

do.body:                                          ; preds = %if.end.i.i.i, %if.then
  %9 = ptrtoint ptr %dt.0 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %dt.0, ptr %dt.0, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %dt.0, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %dt.0, ptr %prev.i3.i.i, align 4
  tail call void @kfree(ptr noundef %dt.0) #15
  tail call void @mutex_unlock(ptr noundef nonnull @ddebug_lock) #15
  %11 = load i32, ptr @verbose, align 4
  %cmp13 = icmp sgt i32 %11, 1
  br i1 %cmp13, label %do.end, label %if.end20

do.end:                                           ; preds = %do.body
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef %mod_name) #14
  br label %if.end20

if.end20:                                         ; preds = %do.end, %do.body, %for.end.thread
  %ret.028 = phi i32 [ -2, %for.end.thread ], [ 0, %do.body ], [ 0, %do.end ]
  ret i32 %ret.028
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @dynamic_debug_init() #6 section ".init.text" align 64 {
entry:
  br i1 icmp eq (ptr @__start___dyndbg, ptr @__stop___dyndbg), label %do.end, label %if.end

do.end:                                           ; preds = %entry
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.123) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__start___dyndbg to i32))
  %0 = load ptr, ptr @__start___dyndbg, align 8
  br i1 icmp ult (ptr @__start___dyndbg, ptr @__stop___dyndbg), label %for.body, label %for.end

for.body:                                         ; preds = %if.end11, %if.end
  %iter.066 = phi ptr [ %incdec.ptr, %if.end11 ], [ @__start___dyndbg, %if.end ]
  %modct.065 = phi i32 [ %modct.1, %if.end11 ], [ 0, %if.end ]
  %entries.064 = phi i32 [ %inc, %if.end11 ], [ 0, %if.end ]
  %n.063 = phi i32 [ %inc12, %if.end11 ], [ 0, %if.end ]
  %modname.062 = phi ptr [ %modname.1, %if.end11 ], [ %0, %if.end ]
  %iter_start.061 = phi ptr [ %iter_start.1, %if.end11 ], [ @__start___dyndbg, %if.end ]
  %inc = add i32 %entries.064, 1
  %1 = ptrtoint ptr %iter.066 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %iter.066, align 8
  %call3 = tail call i32 @strcmp(ptr noundef %modname.062, ptr noundef %2) #18
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end11, label %if.then4

if.then4:                                         ; preds = %for.body
  %call6 = tail call i32 @ddebug_add_module(ptr noundef %iter_start.061, i32 noundef %n.063, ptr noundef %modname.062)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %out_err

if.end9:                                          ; preds = %if.then4
  %inc5 = add i32 %modct.065, 1
  %3 = ptrtoint ptr %iter.066 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %iter.066, align 8
  br label %if.end11

if.end11:                                         ; preds = %if.end9, %for.body
  %iter_start.1 = phi ptr [ %iter.066, %if.end9 ], [ %iter_start.061, %for.body ]
  %modname.1 = phi ptr [ %4, %if.end9 ], [ %modname.062, %for.body ]
  %n.1 = phi i32 [ 0, %if.end9 ], [ %n.063, %for.body ]
  %modct.1 = phi i32 [ %inc5, %if.end9 ], [ %modct.065, %for.body ]
  %inc12 = add i32 %n.1, 1
  %incdec.ptr = getelementptr %struct._ddebug, ptr %iter.066, i32 1
  %cmp = icmp ult ptr %incdec.ptr, @__stop___dyndbg
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %if.end11, %if.end
  %iter_start.0.lcssa = phi ptr [ @__start___dyndbg, %if.end ], [ %iter_start.1, %if.end11 ]
  %modname.0.lcssa = phi ptr [ %0, %if.end ], [ %modname.1, %if.end11 ]
  %n.0.lcssa = phi i32 [ 0, %if.end ], [ %inc12, %if.end11 ]
  %entries.0.lcssa = phi i32 [ 0, %if.end ], [ %inc, %if.end11 ]
  %modct.0.lcssa = phi i32 [ 0, %if.end ], [ %modct.1, %if.end11 ]
  %call13 = tail call i32 @ddebug_add_module(ptr noundef %iter_start.0.lcssa, i32 noundef %n.0.lcssa, ptr noundef %modname.0.lcssa)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %out_err

if.end16:                                         ; preds = %for.end
  store i1 true, ptr @ddebug_init_success, align 4
  %5 = load i32, ptr @verbose, align 4
  %cmp18 = icmp sgt i32 %5, 0
  br i1 %cmp18, label %do.end22, label %do.end29

do.end22:                                         ; preds = %if.end16
  %mul = mul i32 %modct.0.lcssa, 20
  %shr = lshr i32 %mul, 10
  %6 = lshr i32 %entries.0.lcssa, 5
  %shr25 = and i32 %6, 4194303
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.126, i32 noundef %entries.0.lcssa, i32 noundef %modct.0.lcssa, i32 noundef %shr, i32 noundef %shr25) #14
  br label %do.end29

do.end29:                                         ; preds = %do.end22, %if.end16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saved_command_line to i32))
  %7 = load ptr, ptr @saved_command_line, align 4
  %call30 = tail call noalias ptr @kstrdup(ptr noundef %7, i32 noundef 3264) #15
  %call31 = tail call ptr @parse_args(ptr noundef nonnull @.str.128, ptr noundef %call30, ptr noundef null, i32 noundef 0, i16 noundef signext 0, i16 noundef signext 0, ptr noundef null, ptr noundef nonnull @ddebug_dyndbg_boot_param_cb) #15
  tail call void @kfree(ptr noundef %call30) #15
  br label %cleanup

out_err:                                          ; preds = %for.end, %if.then4
  tail call void @mutex_lock_nested(ptr noundef nonnull @ddebug_lock, i32 noundef 0) #15
  %8 = load volatile ptr, ptr @ddebug_tables, align 4
  %cmp.i.not1.i = icmp eq ptr %8, @ddebug_tables
  br i1 %cmp.i.not1.i, label %ddebug_remove_all_tables.exit, label %while.body.i

while.body.i:                                     ; preds = %ddebug_table_free.exit.i, %out_err
  %9 = phi ptr [ %18, %ddebug_table_free.exit.i ], [ %8, %out_err ]
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %9) #15
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %ddebug_table_free.exit.i

if.end.i.i.i.i:                                   ; preds = %while.body.i
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i.i.i.i, align 4
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %9, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev1.i.i.i.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %13, ptr %11, align 4
  br label %ddebug_table_free.exit.i

ddebug_table_free.exit.i:                         ; preds = %if.end.i.i.i.i, %while.body.i
  %16 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %9, ptr %9, align 4
  %prev.i3.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %9, ptr %prev.i3.i.i.i, align 4
  tail call void @kfree(ptr noundef %9) #15
  %18 = load volatile ptr, ptr @ddebug_tables, align 4
  %cmp.i.not.i = icmp eq ptr %18, @ddebug_tables
  br i1 %cmp.i.not.i, label %ddebug_remove_all_tables.exit, label %while.body.i

ddebug_remove_all_tables.exit:                    ; preds = %ddebug_table_free.exit.i, %out_err
  tail call void @mutex_unlock(ptr noundef nonnull @ddebug_lock) #15
  br label %cleanup

cleanup:                                          ; preds = %ddebug_remove_all_tables.exit, %do.end29, %do.end
  %retval.0 = phi i32 [ 1, %do.end ], [ 0, %ddebug_remove_all_tables.exit ], [ 0, %do.end29 ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @dynamic_debug_init_control() #6 section ".init.text" align 64 {
entry:
  %.b = load i1, ptr @ddebug_init_success, align 4
  br i1 %.b, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call zeroext i1 @debugfs_initialized() #15
  br i1 %call, label %if.then1, label %if.end4

if.then1:                                         ; preds = %if.end
  %call2 = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.131, ptr noundef null) #15
  %call3 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.132, i16 noundef zeroext 420, ptr noundef %call2, ptr noundef null, ptr noundef nonnull @ddebug_proc_fops) #15
  br label %if.end4

if.end4:                                          ; preds = %if.then1, %if.end
  %call5 = tail call ptr @proc_mkdir(ptr noundef nonnull @.str.131, ptr noundef null) #15
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %cleanup, label %if.then7

if.then7:                                         ; preds = %if.end4
  %call8 = tail call ptr @proc_create(ptr noundef nonnull @.str.132, i16 noundef zeroext 420, ptr noundef nonnull %call5, ptr noundef nonnull @proc_fops) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %if.end4, %entry
  %retval.0 = phi i32 [ -19, %entry ], [ 0, %if.then7 ], [ 0, %if.end4 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strpbrk(ptr noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skip_spaces(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @parse_linerange(ptr noundef %query, ptr noundef %first) unnamed_addr #0 align 64 {
entry:
  %call = tail call ptr @strchr(ptr noundef %first, i32 noundef 45)
  %first_lineno = getelementptr inbounds %struct.ddebug_query, ptr %query, i32 0, i32 4
  %0 = ptrtoint ptr %first_lineno to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %first_lineno, align 4
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %lor.lhs.false, label %do.end

lor.lhs.false:                                    ; preds = %entry
  %last_lineno = getelementptr inbounds %struct.ddebug_query, ptr %query, i32 0, i32 5
  %2 = ptrtoint ptr %last_lineno to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %last_lineno, align 4
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %if.end, label %do.end

do.end:                                           ; preds = %lor.lhs.false, %entry
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.87) #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %tobool3.not = icmp eq ptr %call, null
  br i1 %tobool3.not, label %if.end5, label %if.then4

if.then4:                                         ; preds = %if.end
  %incdec.ptr = getelementptr i8, ptr %call, i32 1
  %4 = ptrtoint ptr %call to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %call, align 1
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end
  %last.0 = phi ptr [ %incdec.ptr, %if.then4 ], [ null, %if.end ]
  %cmp.i = icmp eq ptr %first, null
  br i1 %cmp.i, label %do.body2.i, label %do.end5.i, !prof !308

do.body2.i:                                       ; preds = %if.end5
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/dynamic_debug.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 298, 0\0A.popsection", ""() #15, !srcloc !318
  unreachable

do.end5.i:                                        ; preds = %if.end5
  %5 = ptrtoint ptr %first to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %first, align 1
  %cmp6.i = icmp eq i8 %6, 0
  br i1 %cmp6.i, label %if.then8.i, label %if.end9.i

if.then8.i:                                       ; preds = %do.end5.i
  %7 = ptrtoint ptr %first_lineno to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %first_lineno, align 4
  br label %if.end9

if.end9.i:                                        ; preds = %do.end5.i
  %call.i = tail call i32 @kstrtouint(ptr noundef nonnull %first, i32 noundef 10, ptr noundef %first_lineno) #15
  %cmp10.i = icmp slt i32 %call.i, 0
  br i1 %cmp10.i, label %parse_lineno.exit, label %if.end9

parse_lineno.exit:                                ; preds = %if.end9.i
  %call15.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.95, ptr noundef nonnull %first) #14
  br label %cleanup

if.end9:                                          ; preds = %if.end9.i, %if.then8.i
  %tobool10.not = icmp eq ptr %last.0, null
  br i1 %tobool10.not, label %if.else, label %do.end5.i71

do.end5.i71:                                      ; preds = %if.end9
  %8 = ptrtoint ptr %last.0 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %last.0, align 1
  %cmp6.i70 = icmp eq i8 %9, 0
  br i1 %cmp6.i70, label %if.then19, label %if.end9.i75

if.end9.i75:                                      ; preds = %do.end5.i71
  %call.i73 = tail call i32 @kstrtouint(ptr noundef nonnull %last.0, i32 noundef 10, ptr noundef %last_lineno) #15
  %cmp10.i74 = icmp slt i32 %call.i73, 0
  br i1 %cmp10.i74, label %parse_lineno.exit79, label %if.end16

parse_lineno.exit79:                              ; preds = %if.end9.i75
  %call15.i76 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.95, ptr noundef nonnull %last.0) #14
  br label %cleanup

if.end16:                                         ; preds = %if.end9.i75
  %10 = ptrtoint ptr %last_lineno to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pr = load i32, ptr %last_lineno, align 4
  %cmp18 = icmp eq i32 %.pr, 0
  br i1 %cmp18, label %if.then19, label %if.end21

if.then19:                                        ; preds = %if.end16, %do.end5.i71
  %11 = ptrtoint ptr %last_lineno to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %last_lineno, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %if.end16
  %12 = ptrtoint ptr %last_lineno to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %last_lineno, align 4
  %14 = ptrtoint ptr %first_lineno to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %first_lineno, align 4
  %cmp24 = icmp ult i32 %13, %15
  br i1 %cmp24, label %do.end28, label %do.body37

do.end28:                                         ; preds = %if.end21
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90, i32 noundef %13, i32 noundef %15) #14
  br label %cleanup

if.else:                                          ; preds = %if.end9
  %16 = ptrtoint ptr %first_lineno to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %first_lineno, align 4
  %18 = ptrtoint ptr %last_lineno to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %last_lineno, align 4
  br label %do.body37

do.body37:                                        ; preds = %if.else, %if.end21
  %19 = load i32, ptr @verbose, align 4
  %cmp38 = icmp sgt i32 %19, 2
  br i1 %cmp38, label %do.end42, label %cleanup

do.end42:                                         ; preds = %do.body37
  %20 = ptrtoint ptr %first_lineno to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %first_lineno, align 4
  %22 = ptrtoint ptr %last_lineno to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %last_lineno, align 4
  %call46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.93, i32 noundef %21, i32 noundef %23) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end42, %do.body37, %do.end28, %parse_lineno.exit79, %parse_lineno.exit, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end28 ], [ -22, %parse_lineno.exit ], [ -22, %parse_lineno.exit79 ], [ 0, %do.end42 ], [ 0, %do.body37 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @string_unescape(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @match_wildcard(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @static_key_disable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @static_key_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @__dynamic_emit_prefix(ptr nocapture noundef readonly %desc, ptr noundef returned writeonly %buf) unnamed_addr #0 align 64 {
entry:
  %flags = getelementptr inbounds %struct._ddebug, ptr %desc, i32 0, i32 4
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %bf.load = load i32, ptr %flags, align 8
  %1 = and i32 %bf.load, 1024
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end17, label %if.then

if.then:                                          ; preds = %entry
  %2 = tail call i32 @llvm.read_register.i32(metadata !299) #15
  %and.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i to ptr
  %preempt_count.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i, align 4
  %and1 = and i32 %5, 15728640
  %6 = tail call i32 @llvm.read_register.i32(metadata !299) #15
  %and.i.i98 = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i98 to ptr
  %preempt_count.i99 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %preempt_count.i99 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %preempt_count.i99, align 4
  %and3 = and i32 %9, 983040
  %or = or i32 %and3, %and1
  %10 = tail call i32 @llvm.read_register.i32(metadata !299) #15
  %and.i.i100 = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i100 to ptr
  %preempt_count.i101 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %preempt_count.i101 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %preempt_count.i101, align 4
  %and5 = and i32 %13, 65280
  %or6 = or i32 %or, %and5
  %tobool7.not = icmp eq i32 %or6, 0
  br i1 %tobool7.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %if.then
  %14 = ptrtoint ptr %buf to i32
  call void @__asan_storeN_noabort(i32 %14, i32 8)
  store i64 4353131961242230784, ptr %buf, align 1
  br label %if.end17

if.else:                                          ; preds = %if.then
  %15 = tail call i32 @llvm.read_register.i32(metadata !299) #15
  %and.i = and i32 %15, -16384
  %16 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %task, align 8
  %call.i = tail call i32 @__task_pid_nr_ns(ptr noundef %18, i32 noundef 0, ptr noundef null) #15
  %call15 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 64, ptr noundef nonnull @.str.106, i32 noundef %call.i)
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.then8, %entry
  %pos.0 = phi i32 [ 7, %if.then8 ], [ %call15, %if.else ], [ 0, %entry ]
  %19 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %19)
  %bf.load19 = load i32, ptr %flags, align 8
  %20 = and i32 %bf.load19, 128
  %tobool23.not = icmp eq i32 %20, 0
  br i1 %tobool23.not, label %if.end29, label %if.then24

if.then24:                                        ; preds = %if.end17
  %add.ptr25 = getelementptr i8, ptr %buf, i32 %pos.0
  %sub.i = sub i32 64, %pos.0
  %21 = tail call i32 @llvm.smax.i32(i32 %sub.i, i32 0) #15
  %22 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %desc, align 8
  %call27 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr25, i32 noundef %21, ptr noundef nonnull @.str.107, ptr noundef %23)
  %add28 = add i32 %call27, %pos.0
  br label %if.end29

if.end29:                                         ; preds = %if.then24, %if.end17
  %pos.1 = phi i32 [ %add28, %if.then24 ], [ %pos.0, %if.end17 ]
  %24 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %24)
  %bf.load31 = load i32, ptr %flags, align 8
  %25 = and i32 %bf.load31, 256
  %tobool35.not = icmp eq i32 %25, 0
  br i1 %tobool35.not, label %if.end41, label %if.then36

if.then36:                                        ; preds = %if.end29
  %add.ptr37 = getelementptr i8, ptr %buf, i32 %pos.1
  %sub.i102 = sub i32 64, %pos.1
  %26 = tail call i32 @llvm.smax.i32(i32 %sub.i102, i32 0) #15
  %function = getelementptr inbounds %struct._ddebug, ptr %desc, i32 0, i32 1
  %27 = ptrtoint ptr %function to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %function, align 4
  %call39 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr37, i32 noundef %26, ptr noundef nonnull @.str.107, ptr noundef %28)
  %add40 = add i32 %call39, %pos.1
  br label %if.end41

if.end41:                                         ; preds = %if.then36, %if.end29
  %pos.2 = phi i32 [ %add40, %if.then36 ], [ %pos.1, %if.end29 ]
  %29 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %29)
  %bf.load43 = load i32, ptr %flags, align 8
  %30 = and i32 %bf.load43, 512
  %tobool47.not = icmp eq i32 %30, 0
  br i1 %tobool47.not, label %if.end55, label %if.then48

if.then48:                                        ; preds = %if.end41
  %add.ptr49 = getelementptr i8, ptr %buf, i32 %pos.2
  %sub.i103 = sub i32 64, %pos.2
  %31 = tail call i32 @llvm.smax.i32(i32 %sub.i103, i32 0) #15
  %bf.lshr52 = lshr i32 %bf.load43, 14
  %call53 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr49, i32 noundef %31, ptr noundef nonnull @.str.108, i32 noundef %bf.lshr52)
  %add54 = add i32 %call53, %pos.2
  br label %if.end55

if.end55:                                         ; preds = %if.then48, %if.end41
  %pos.3 = phi i32 [ %add54, %if.then48 ], [ %pos.2, %if.end41 ]
  %tobool56.not = icmp eq i32 %pos.3, %pos.0
  br i1 %tobool56.not, label %if.end62, label %if.then57

if.then57:                                        ; preds = %if.end55
  %add.ptr58 = getelementptr i8, ptr %buf, i32 %pos.3
  %sub.i104 = sub i32 64, %pos.3
  %32 = tail call i32 @llvm.smax.i32(i32 %sub.i104, i32 0) #15
  %call60 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr58, i32 noundef %32, ptr noundef nonnull @.str.109)
  %add61 = add i32 %call60, %pos.3
  br label %if.end62

if.end62:                                         ; preds = %if.then57, %if.end55
  %pos.4 = phi i32 [ %add61, %if.then57 ], [ %pos.0, %if.end55 ]
  %cmp = icmp sgt i32 %pos.4, 63
  br i1 %cmp, label %if.then63, label %if.end64

if.then63:                                        ; preds = %if.end62
  %arrayidx = getelementptr i8, ptr %buf, i32 63
  %33 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %arrayidx, align 1
  br label %if.end64

if.end64:                                         ; preds = %if.then63, %if.end62
  ret ptr %buf
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__task_pid_nr_ns(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @parse_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ddebug_dyndbg_boot_param_cb(ptr noundef %param, ptr noundef %val, ptr nocapture noundef readnone %unused, ptr nocapture noundef readnone %arg) #0 align 64 {
entry:
  %0 = load i32, ptr @verbose, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %do.end, label %do.end2

do.end:                                           ; preds = %entry
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.129, ptr noundef %param, ptr noundef %val) #14
  br label %do.end2

do.end2:                                          ; preds = %do.end, %entry
  %call.i = tail call ptr @strchr(ptr noundef %param, i32 noundef 46) #15
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %do.end2
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %call.i, align 1
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 1
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %do.end2
  %param.addr.0.i = phi ptr [ %add.ptr.i, %if.then.i ], [ %param, %do.end2 ]
  %modname.addr.0.i = phi ptr [ %param, %if.then.i ], [ null, %do.end2 ]
  %call1.i = tail call i32 @strcmp(ptr noundef %param.addr.0.i, ptr noundef nonnull dereferenceable(7) @.str.121) #16
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %ddebug_dyndbg_param_cb.exit

if.end4.i:                                        ; preds = %if.end.i
  %tobool5.not.i = icmp eq ptr %val, null
  %spec.select.i = select i1 %tobool5.not.i, ptr @.str.122, ptr %val
  %call6.i = tail call fastcc i32 @ddebug_exec_queries(ptr noundef nonnull %spec.select.i, ptr noundef %modname.addr.0.i) #15
  br label %ddebug_dyndbg_param_cb.exit

ddebug_dyndbg_param_cb.exit:                      ; preds = %if.end4.i, %if.end.i
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @debugfs_initialized() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_mkdir(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ddebug_proc_write(ptr nocapture noundef readnone %file, ptr noundef %ubuf, i32 noundef %len, ptr nocapture noundef %offp) #0 align 64 {
entry:
  %cmp = icmp eq i32 %len, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %cmp1 = icmp ugt i32 %len, 4095
  br i1 %cmp1, label %do.end, label %if.end3

do.end:                                           ; preds = %if.end
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.133, i32 noundef 4096) #14
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call4 = tail call ptr @memdup_user_nul(ptr noundef %ubuf, i32 noundef %len) #15
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %do.body9

if.then6:                                         ; preds = %if.end3
  %0 = ptrtoint ptr %call4 to i32
  br label %cleanup

do.body9:                                         ; preds = %if.end3
  %1 = load i32, ptr @verbose, align 4
  %cmp10 = icmp sgt i32 %1, 1
  br i1 %cmp10, label %do.end14, label %do.end19

do.end14:                                         ; preds = %do.body9
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.136, i32 noundef %len) #14
  br label %do.end19

do.end19:                                         ; preds = %do.end14, %do.body9
  %call20 = tail call fastcc i32 @ddebug_exec_queries(ptr noundef %call4, ptr noundef null)
  tail call void @kfree(ptr noundef %call4) #15
  %cmp21 = icmp slt i32 %call20, 0
  br i1 %cmp21, label %cleanup, label %if.end23

if.end23:                                         ; preds = %do.end19
  %conv = zext i32 %len to i64
  %2 = ptrtoint ptr %offp to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %offp, align 8
  %add = add i64 %3, %conv
  store i64 %add, ptr %offp, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %do.end19, %if.then6, %do.end, %entry
  %retval.0 = phi i32 [ -7, %do.end ], [ %0, %if.then6 ], [ %len, %if.end23 ], [ 0, %entry ], [ %call20, %do.end19 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ddebug_proc_open(ptr nocapture noundef readnone %inode, ptr noundef %file) #0 align 64 {
entry:
  %call = tail call i32 @seq_open_private(ptr noundef %file, ptr noundef nonnull @ddebug_proc_seqops, i32 noundef 8) #15
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_release_private(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memdup_user_nul(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_open_private(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ddebug_proc_start(ptr nocapture noundef readonly %m, ptr nocapture noundef readonly %pos) #0 align 64 {
entry:
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %2 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %pos, align 8
  %conv = trunc i64 %3 to i32
  tail call void @mutex_lock_nested(ptr noundef nonnull @ddebug_lock, i32 noundef 0) #15
  %tobool.not = icmp eq i32 %conv, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %cmp = icmp slt i32 %conv, 0
  br i1 %cmp, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.end
  %4 = load volatile ptr, ptr @ddebug_tables, align 4
  %cmp.i.not.i = icmp eq ptr %4, @ddebug_tables
  br i1 %cmp.i.not.i, label %ddebug_iter_first.exit.thread, label %ddebug_iter_first.exit

ddebug_iter_first.exit.thread:                    ; preds = %if.end3
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %1, align 4
  %idx.i = getelementptr inbounds %struct.ddebug_iter, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %idx.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %idx.i, align 4
  br label %cleanup

ddebug_iter_first.exit:                           ; preds = %if.end3
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %1, align 4
  %idx2.i = getelementptr inbounds %struct.ddebug_iter, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %idx2.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %idx2.i, align 4
  %ddebugs.i = getelementptr inbounds %struct.ddebug_table, ptr %4, i32 0, i32 3
  %9 = ptrtoint ptr %ddebugs.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ddebugs.i, align 4
  %cmp4.not20 = icmp eq ptr %10, null
  br i1 %cmp4.not20, label %cleanup, label %land.rhs.lr.ph

land.rhs.lr.ph:                                   ; preds = %ddebug_iter_first.exit
  %idx.i15 = getelementptr inbounds %struct.ddebug_iter, ptr %1, i32 0, i32 1
  %dec28 = add i32 %conv, -1
  %cmp629 = icmp sgt i32 %dec28, 0
  br i1 %cmp629, label %while.body, label %cleanup

land.rhs:                                         ; preds = %ddebug_iter_next.exit
  %dec = add i32 %dec30, -1
  %cmp6 = icmp sgt i32 %dec, 0
  br i1 %cmp6, label %while.body, label %cleanup

while.body:                                       ; preds = %land.rhs, %land.rhs.lr.ph
  %dec30 = phi i32 [ %dec, %land.rhs ], [ %dec28, %land.rhs.lr.ph ]
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %cmp.i = icmp eq ptr %12, null
  br i1 %cmp.i, label %cleanup, label %if.end.i16

if.end.i16:                                       ; preds = %while.body
  %13 = ptrtoint ptr %idx.i15 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %idx.i15, align 4
  %inc.i = add i32 %14, 1
  store i32 %inc.i, ptr %idx.i15, align 4
  %num_ddebugs.i = getelementptr inbounds %struct.ddebug_table, ptr %12, i32 0, i32 2
  %15 = ptrtoint ptr %num_ddebugs.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_ddebugs.i, align 4
  %cmp2.i = icmp eq i32 %inc.i, %16
  br i1 %cmp2.i, label %if.then3.i, label %ddebug_iter_next.exit

if.then3.i:                                       ; preds = %if.end.i16
  %17 = ptrtoint ptr %idx.i15 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %idx.i15, align 4
  %18 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %12, align 4
  %cmp.i.not.i17 = icmp eq ptr %19, @ddebug_tables
  br i1 %cmp.i.not.i17, label %if.then6.i, label %if.end8.i

if.then6.i:                                       ; preds = %if.then3.i
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %1, align 4
  br label %cleanup

if.end8.i:                                        ; preds = %if.then3.i
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %19, ptr %1, align 4
  br label %ddebug_iter_next.exit

ddebug_iter_next.exit:                            ; preds = %if.end8.i, %if.end.i16
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 4
  %ddebugs.i18 = getelementptr inbounds %struct.ddebug_table, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %ddebugs.i18 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ddebugs.i18, align 4
  %26 = ptrtoint ptr %idx.i15 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %idx.i15, align 4
  %arrayidx.i = getelementptr %struct._ddebug, ptr %25, i32 %27
  %cmp4.not = icmp eq ptr %arrayidx.i, null
  br i1 %cmp4.not, label %cleanup, label %land.rhs

cleanup:                                          ; preds = %ddebug_iter_next.exit, %if.then6.i, %while.body, %land.rhs, %land.rhs.lr.ph, %ddebug_iter_first.exit, %ddebug_iter_first.exit.thread, %if.end, %entry
  %retval.0 = phi ptr [ inttoptr (i32 1 to ptr), %entry ], [ null, %if.end ], [ null, %ddebug_iter_first.exit ], [ null, %ddebug_iter_first.exit.thread ], [ null, %if.then6.i ], [ %10, %land.rhs.lr.ph ], [ null, %while.body ], [ null, %ddebug_iter_next.exit ], [ %arrayidx.i, %land.rhs ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ddebug_proc_stop(ptr nocapture noundef readnone %m, ptr nocapture noundef readnone %p) #0 align 64 {
entry:
  tail call void @mutex_unlock(ptr noundef nonnull @ddebug_lock) #15
  ret void
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @ddebug_proc_next(ptr nocapture noundef readonly %m, ptr noundef readnone %p, ptr nocapture noundef %pos) #11 align 64 {
entry:
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %cmp = icmp eq ptr %p, inttoptr (i32 1 to ptr)
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load volatile ptr, ptr @ddebug_tables, align 4
  %cmp.i.not.i = icmp eq ptr %2, @ddebug_tables
  br i1 %cmp.i.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.then
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %1, align 4
  %idx.i = getelementptr inbounds %struct.ddebug_iter, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %idx.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %idx.i, align 4
  br label %if.end

if.end.i:                                         ; preds = %if.then
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %2, ptr %1, align 4
  %idx2.i = getelementptr inbounds %struct.ddebug_iter, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %idx2.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %idx2.i, align 4
  %ddebugs.i = getelementptr inbounds %struct.ddebug_table, ptr %2, i32 0, i32 3
  %7 = ptrtoint ptr %ddebugs.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ddebugs.i, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %cmp.i = icmp eq ptr %10, null
  br i1 %cmp.i, label %if.end, label %if.end.i4

if.end.i4:                                        ; preds = %if.else
  %idx.i3 = getelementptr inbounds %struct.ddebug_iter, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %idx.i3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %idx.i3, align 4
  %inc.i = add i32 %12, 1
  store i32 %inc.i, ptr %idx.i3, align 4
  %num_ddebugs.i = getelementptr inbounds %struct.ddebug_table, ptr %10, i32 0, i32 2
  %13 = ptrtoint ptr %num_ddebugs.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_ddebugs.i, align 4
  %cmp2.i = icmp eq i32 %inc.i, %14
  br i1 %cmp2.i, label %if.then3.i, label %if.end12.i

if.then3.i:                                       ; preds = %if.end.i4
  %15 = ptrtoint ptr %idx.i3 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %idx.i3, align 4
  %16 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %10, align 4
  %cmp.i.not.i5 = icmp eq ptr %17, @ddebug_tables
  br i1 %cmp.i.not.i5, label %if.then6.i, label %if.end8.i

if.then6.i:                                       ; preds = %if.then3.i
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %1, align 4
  br label %if.end

if.end8.i:                                        ; preds = %if.then3.i
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %17, ptr %1, align 4
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.end8.i, %if.end.i4
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  %ddebugs.i6 = getelementptr inbounds %struct.ddebug_table, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %ddebugs.i6 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ddebugs.i6, align 4
  %24 = ptrtoint ptr %idx.i3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %idx.i3, align 4
  %arrayidx.i = getelementptr %struct._ddebug, ptr %23, i32 %25
  br label %if.end

if.end:                                           ; preds = %if.end12.i, %if.then6.i, %if.else, %if.end.i, %if.then.i
  %dp.0 = phi ptr [ null, %if.then.i ], [ %8, %if.end.i ], [ null, %if.then6.i ], [ %arrayidx.i, %if.end12.i ], [ null, %if.else ]
  %26 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %pos, align 8
  %inc = add i64 %27, 1
  store i64 %inc, ptr %pos, align 8
  ret ptr %dp.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ddebug_proc_show(ptr noundef %m, ptr noundef readonly %p) #0 align 64 {
entry:
  %flags = alloca %struct.flagsbuf, align 1
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %flags) #15
  %2 = getelementptr inbounds [7 x i8], ptr %flags, i32 0, i32 1
  %cmp = icmp eq ptr %p, inttoptr (i32 1 to ptr)
  %3 = call ptr @memset(ptr %flags, i32 255, i32 7)
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.138) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %filename = getelementptr inbounds %struct._ddebug, ptr %p, i32 0, i32 2
  %4 = ptrtoint ptr %filename to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %filename, align 8
  %lineno = getelementptr inbounds %struct._ddebug, ptr %p, i32 0, i32 4
  %6 = ptrtoint ptr %lineno to i32
  call void @__asan_load4_noabort(i32 %6)
  %bf.load = load i32, ptr %lineno, align 8
  %bf.lshr = lshr i32 %bf.load, 14
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %mod_name = getelementptr inbounds %struct.ddebug_table, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %mod_name to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mod_name, align 4
  %function = getelementptr inbounds %struct._ddebug, ptr %p, i32 0, i32 1
  %11 = ptrtoint ptr %function to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %function, align 4
  %13 = and i32 %bf.load, 64
  %tobool.not.i = icmp eq i32 %13, 0
  br i1 %tobool.not.i, label %for.inc.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 112, ptr %flags, align 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %if.end
  %p.1.i = phi ptr [ %2, %if.then.i ], [ %flags, %if.end ]
  %15 = and i32 %bf.load, 128
  %tobool.not.1.i = icmp eq i32 %15, 0
  br i1 %tobool.not.1.i, label %for.inc.1.i, label %if.then.1.i

if.then.1.i:                                      ; preds = %for.inc.i
  %incdec.ptr.1.i = getelementptr i8, ptr %p.1.i, i32 1
  %16 = ptrtoint ptr %p.1.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 109, ptr %p.1.i, align 1
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %if.then.1.i, %for.inc.i
  %p.1.1.i = phi ptr [ %incdec.ptr.1.i, %if.then.1.i ], [ %p.1.i, %for.inc.i ]
  %17 = and i32 %bf.load, 256
  %tobool.not.2.i = icmp eq i32 %17, 0
  br i1 %tobool.not.2.i, label %for.inc.2.i, label %if.then.2.i

if.then.2.i:                                      ; preds = %for.inc.1.i
  %incdec.ptr.2.i = getelementptr i8, ptr %p.1.1.i, i32 1
  %18 = ptrtoint ptr %p.1.1.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 102, ptr %p.1.1.i, align 1
  br label %for.inc.2.i

for.inc.2.i:                                      ; preds = %if.then.2.i, %for.inc.1.i
  %p.1.2.i = phi ptr [ %incdec.ptr.2.i, %if.then.2.i ], [ %p.1.1.i, %for.inc.1.i ]
  %19 = and i32 %bf.load, 512
  %tobool.not.3.i = icmp eq i32 %19, 0
  br i1 %tobool.not.3.i, label %for.inc.3.i, label %if.then.3.i

if.then.3.i:                                      ; preds = %for.inc.2.i
  %incdec.ptr.3.i = getelementptr i8, ptr %p.1.2.i, i32 1
  %20 = ptrtoint ptr %p.1.2.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 108, ptr %p.1.2.i, align 1
  br label %for.inc.3.i

for.inc.3.i:                                      ; preds = %if.then.3.i, %for.inc.2.i
  %p.1.3.i = phi ptr [ %incdec.ptr.3.i, %if.then.3.i ], [ %p.1.2.i, %for.inc.2.i ]
  %21 = and i32 %bf.load, 1024
  %tobool.not.4.i = icmp eq i32 %21, 0
  br i1 %tobool.not.4.i, label %for.inc.5.i, label %if.then.4.i

if.then.4.i:                                      ; preds = %for.inc.3.i
  %incdec.ptr.4.i = getelementptr i8, ptr %p.1.3.i, i32 1
  %22 = ptrtoint ptr %p.1.3.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 116, ptr %p.1.3.i, align 1
  br label %for.inc.5.i

for.inc.5.i:                                      ; preds = %if.then.4.i, %for.inc.3.i
  %p.1.4.i = phi ptr [ %incdec.ptr.4.i, %if.then.4.i ], [ %p.1.3.i, %for.inc.3.i ]
  %cmp4.i = icmp eq ptr %p.1.4.i, %flags
  br i1 %cmp4.i, label %if.then5.i, label %ddebug_describe_flags.exit

if.then5.i:                                       ; preds = %for.inc.5.i
  %23 = ptrtoint ptr %flags to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 95, ptr %flags, align 1
  br label %ddebug_describe_flags.exit

ddebug_describe_flags.exit:                       ; preds = %if.then5.i, %for.inc.5.i
  %p.2.i = phi ptr [ %2, %if.then5.i ], [ %p.1.4.i, %for.inc.5.i ]
  %24 = ptrtoint ptr %p.2.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %p.2.i, align 1
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.139, ptr noundef %5, i32 noundef %bf.lshr, ptr noundef %10, ptr noundef %12, ptr noundef nonnull %flags) #15
  %format = getelementptr inbounds %struct._ddebug, ptr %p, i32 0, i32 3
  %25 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %format, align 4
  %call.i.i = call i32 @strlen(ptr noundef %26) #16
  call void @seq_escape_mem(ptr noundef %m, ptr noundef %26, i32 noundef %call.i.i, i32 noundef 8, ptr noundef nonnull @.str.140) #15
  call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.141) #15
  br label %cleanup

cleanup:                                          ; preds = %ddebug_describe_flags.exit, %if.then
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %flags) #15
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_escape_mem(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #12

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 145)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 145)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind willreturn }
attributes #5 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind readonly }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { nounwind uwtable(sync) }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind }
attributes #16 = { nobuiltin nounwind }
attributes #17 = { nounwind allocsize(2) }
attributes #18 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !10, !11, !13, !15, !16, !17, !18, !20, !22, !23, !24, !25, !27, !29, !31, !33, !34, !35, !36, !38, !39, !40, !42, !44, !46, !47, !48, !49, !51, !52, !53, !55, !57, !59, !60, !61, !62, !64, !65, !66, !68, !69, !70, !71, !73, !74, !75, !76, !78, !80, !82, !83, !85, !87, !88, !89, !90, !91, !93, !94, !95, !97, !98, !99, !100, !102, !103, !104, !106, !107, !108, !110, !112, !114, !115, !116, !117, !119, !120, !121, !123, !124, !125, !127, !128, !129, !131, !132, !133, !135, !136, !137, !138, !140, !141, !142, !144, !145, !146, !148, !149, !150, !152, !153, !154, !156, !158, !159, !160, !161, !163, !165, !167, !169, !171, !173, !174, !175, !177, !179, !180, !181, !182, !184, !185, !186, !187, !189, !190, !191, !193, !194, !195, !197, !198, !199, !200, !202, !203, !204, !205, !207, !208, !209, !211, !212, !213, !214, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !240, !241, !243, !244, !246, !247, !248, !250, !252, !254, !256, !257, !258, !259, !261, !262, !263, !265, !267, !269, !270, !271, !272, !274, !276, !278, !280, !281, !282, !283, !285, !286, !287, !289, !291, !293, !295, !297}
!llvm.named.register.sp = !{!299}
!llvm.module.flags = !{!300, !301, !302, !303, !304, !305, !306}
!llvm.ident = !{!307}

!0 = !{ptr @__param_verbose, !1, !"__param_verbose", i1 false, i1 false}
!1 = !{!"../lib/dynamic_debug.c", i32 73, i32 1}
!2 = !{ptr @__UNIQUE_ID_verbosetype494, !1, !"__UNIQUE_ID_verbosetype494", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_verbose495, !4, !"__UNIQUE_ID_verbose495", i1 false, i1 false}
!4 = !{!"../lib/dynamic_debug.c", i32 74, i32 1}
!5 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../lib/dynamic_debug.c", i32 572, i32 3}
!7 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @dynamic_debug_exec_queries._entry, !6, !"_entry", i1 false, i1 false}
!10 = !{ptr @dynamic_debug_exec_queries._entry_ptr, !6, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @__ksymtab_dynamic_debug_exec_queries, !12, !"__ksymtab_dynamic_debug_exec_queries", i1 false, i1 false}
!12 = !{!"../lib/dynamic_debug.c", i32 583, i32 1}
!13 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../lib/dynamic_debug.c", i32 645, i32 2}
!15 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @__dynamic_pr_debug._entry, !14, !"_entry", i1 false, i1 false}
!17 = !{ptr @__dynamic_pr_debug._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @__ksymtab___dynamic_pr_debug, !19, !"__ksymtab___dynamic_pr_debug", i1 false, i1 false}
!19 = !{!"../lib/dynamic_debug.c", i32 649, i32 1}
!20 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../lib/dynamic_debug.c", i32 666, i32 3}
!22 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @__dynamic_dev_dbg._entry, !21, !"_entry", i1 false, i1 false}
!24 = !{ptr @__dynamic_dev_dbg._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../lib/dynamic_debug.c", i32 670, i32 40}
!27 = !{ptr @__ksymtab___dynamic_dev_dbg, !28, !"__ksymtab___dynamic_dev_dbg", i1 false, i1 false}
!28 = !{!"../lib/dynamic_debug.c", i32 678, i32 1}
!29 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../lib/dynamic_debug.c", i32 700, i32 5}
!31 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../lib/dynamic_debug.c", i32 707, i32 3}
!33 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @__dynamic_netdev_dbg._entry, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @__dynamic_netdev_dbg._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../lib/dynamic_debug.c", i32 710, i32 3}
!38 = !{ptr @__dynamic_netdev_dbg._entry.11, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @__dynamic_netdev_dbg._entry_ptr.13, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @__ksymtab___dynamic_netdev_dbg, !41, !"__ksymtab___dynamic_netdev_dbg", i1 false, i1 false}
!41 = !{!"../lib/dynamic_debug.c", i32 715, i32 1}
!42 = !{ptr @.str.14, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../lib/dynamic_debug.c", i32 736, i32 5}
!44 = !{ptr @.str.15, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../lib/dynamic_debug.c", i32 743, i32 3}
!46 = !{ptr @.str.16, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @__dynamic_ibdev_dbg._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @__dynamic_ibdev_dbg._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.18, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../lib/dynamic_debug.c", i32 745, i32 3}
!51 = !{ptr @__dynamic_ibdev_dbg._entry.17, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @__dynamic_ibdev_dbg._entry_ptr.19, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @__ksymtab___dynamic_ibdev_dbg, !54, !"__ksymtab___dynamic_ibdev_dbg", i1 false, i1 false}
!54 = !{!"../lib/dynamic_debug.c", i32 750, i32 1}
!55 = !{ptr @__setup_dyndbg_setup, !56, !"__setup_dyndbg_setup", i1 false, i1 false}
!56 = !{!"../lib/dynamic_debug.c", i32 764, i32 1}
!57 = !{ptr @.str.20, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../lib/dynamic_debug.c", i32 957, i32 3}
!59 = !{ptr @.str.21, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @ddebug_add_module._entry, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @ddebug_add_module._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.23, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../lib/dynamic_debug.c", i32 974, i32 2}
!64 = !{ptr @ddebug_add_module._entry.22, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @ddebug_add_module._entry_ptr.24, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.25, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../lib/dynamic_debug.c", i32 1014, i32 2}
!68 = !{ptr @.str.26, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @ddebug_dyndbg_module_param_cb._entry, !67, !"_entry", i1 false, i1 false}
!70 = !{ptr @ddebug_dyndbg_module_param_cb._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.27, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../lib/dynamic_debug.c", i32 1043, i32 3}
!73 = !{ptr @.str.28, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @ddebug_remove_module._entry, !72, !"_entry", i1 false, i1 false}
!75 = !{ptr @ddebug_remove_module._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @__initcall__kmod_dynamic_debug__496_1145_dynamic_debug_initearly, !77, !"__initcall__kmod_dynamic_debug__496_1145_dynamic_debug_initearly", i1 false, i1 false}
!77 = !{!"../lib/dynamic_debug.c", i32 1145, i32 1}
!78 = !{ptr @__initcall__kmod_dynamic_debug__497_1148_dynamic_debug_init_control5, !79, !"__initcall__kmod_dynamic_debug__497_1148_dynamic_debug_init_control5", i1 false, i1 false}
!79 = !{!"../lib/dynamic_debug.c", i32 1148, i32 1}
!80 = !{ptr @verbose, !81, !"verbose", i1 false, i1 false}
!81 = !{!"../lib/dynamic_debug.c", i32 72, i32 12}
!82 = !{ptr @__param_str_verbose, !1, !"__param_str_verbose", i1 false, i1 false}
!83 = !{ptr @.str.29, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../lib/dynamic_debug.c", i32 528, i32 26}
!85 = !{ptr @.str.30, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../lib/dynamic_debug.c", i32 536, i32 3}
!87 = !{ptr @.str.31, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @ddebug_exec_queries._entry, !86, !"_entry", i1 false, i1 false}
!89 = !{ptr @ddebug_exec_queries._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.32, !86, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @.str.34, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../lib/dynamic_debug.c", i32 548, i32 3}
!93 = !{ptr @ddebug_exec_queries._entry.33, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @ddebug_exec_queries._entry_ptr.35, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.36, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../lib/dynamic_debug.c", i32 499, i32 3}
!97 = !{ptr @.str.37, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @ddebug_exec_query._entry, !96, !"_entry", i1 false, i1 false}
!99 = !{ptr @ddebug_exec_query._entry_ptr, !96, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.39, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../lib/dynamic_debug.c", i32 504, i32 3}
!102 = !{ptr @ddebug_exec_query._entry.38, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @ddebug_exec_query._entry_ptr.40, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.42, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../lib/dynamic_debug.c", i32 508, i32 3}
!106 = !{ptr @ddebug_exec_query._entry.41, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @ddebug_exec_query._entry_ptr.43, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.44, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../lib/dynamic_debug.c", i32 513, i32 31}
!110 = !{ptr @.str.45, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../lib/dynamic_debug.c", i32 513, i32 43}
!112 = !{ptr @.str.46, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../lib/dynamic_debug.c", i32 260, i32 5}
!114 = !{ptr @.str.47, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @ddebug_tokenize._entry, !113, !"_entry", i1 false, i1 false}
!116 = !{ptr @ddebug_tokenize._entry_ptr, !113, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.49, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../lib/dynamic_debug.c", i32 271, i32 4}
!119 = !{ptr @ddebug_tokenize._entry.48, !118, !"_entry", i1 false, i1 false}
!120 = !{ptr @ddebug_tokenize._entry_ptr.50, !118, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.52, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../lib/dynamic_debug.c", i32 282, i32 3}
!123 = !{ptr @ddebug_tokenize._entry.51, !122, !"_entry", i1 false, i1 false}
!124 = !{ptr @ddebug_tokenize._entry_ptr.53, !122, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.55, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../lib/dynamic_debug.c", i32 284, i32 4}
!127 = !{ptr @ddebug_tokenize._entry.54, !126, !"_entry", i1 false, i1 false}
!128 = !{ptr @ddebug_tokenize._entry_ptr.56, !126, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.58, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../lib/dynamic_debug.c", i32 285, i32 3}
!131 = !{ptr @ddebug_tokenize._entry.57, !130, !"_entry", i1 false, i1 false}
!132 = !{ptr @ddebug_tokenize._entry_ptr.59, !130, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.60, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../lib/dynamic_debug.c", i32 451, i32 3}
!135 = !{ptr @.str.61, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @ddebug_parse_flags._entry, !134, !"_entry", i1 false, i1 false}
!137 = !{ptr @ddebug_parse_flags._entry_ptr, !134, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.63, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../lib/dynamic_debug.c", i32 454, i32 2}
!140 = !{ptr @ddebug_parse_flags._entry.62, !139, !"_entry", i1 false, i1 false}
!141 = !{ptr @ddebug_parse_flags._entry_ptr.64, !139, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.66, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../lib/dynamic_debug.c", i32 464, i32 4}
!144 = !{ptr @ddebug_parse_flags._entry.65, !143, !"_entry", i1 false, i1 false}
!145 = !{ptr @ddebug_parse_flags._entry_ptr.67, !143, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.69, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../lib/dynamic_debug.c", i32 468, i32 2}
!148 = !{ptr @ddebug_parse_flags._entry.68, !147, !"_entry", i1 false, i1 false}
!149 = !{ptr @ddebug_parse_flags._entry_ptr.70, !147, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.72, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../lib/dynamic_debug.c", i32 484, i32 2}
!152 = !{ptr @ddebug_parse_flags._entry.71, !151, !"_entry", i1 false, i1 false}
!153 = !{ptr @ddebug_parse_flags._entry_ptr.73, !151, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @opt_array, !155, !"opt_array", i1 false, i1 false}
!155 = !{!"../lib/dynamic_debug.c", i32 88, i32 51}
!156 = !{ptr @.str.74, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../lib/dynamic_debug.c", i32 382, i32 3}
!158 = !{ptr @.str.75, !157, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @ddebug_parse_query._entry, !157, !"_entry", i1 false, i1 false}
!160 = !{ptr @ddebug_parse_query._entry_ptr, !157, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @.str.76, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../lib/dynamic_debug.c", i32 394, i32 24}
!163 = !{ptr @.str.77, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../lib/dynamic_debug.c", i32 396, i32 31}
!165 = !{ptr @.str.78, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../lib/dynamic_debug.c", i32 413, i32 31}
!167 = !{ptr @.str.79, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../lib/dynamic_debug.c", i32 415, i32 31}
!169 = !{ptr @.str.80, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../lib/dynamic_debug.c", i32 420, i32 31}
!171 = !{ptr @.str.82, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../lib/dynamic_debug.c", i32 424, i32 4}
!173 = !{ptr @ddebug_parse_query._entry.81, !172, !"_entry", i1 false, i1 false}
!174 = !{ptr @ddebug_parse_query._entry_ptr.83, !172, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @.str.84, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../lib/dynamic_debug.c", i32 430, i32 21}
!177 = !{ptr @.str.85, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../lib/dynamic_debug.c", i32 351, i32 3}
!179 = !{ptr @.str.86, !178, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @check_set._entry, !178, !"_entry", i1 false, i1 false}
!181 = !{ptr @check_set._entry_ptr, !178, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @.str.87, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../lib/dynamic_debug.c", i32 315, i32 3}
!184 = !{ptr @.str.88, !183, !"<string literal>", i1 false, i1 false}
!185 = !{ptr @parse_linerange._entry, !183, !"_entry", i1 false, i1 false}
!186 = !{ptr @parse_linerange._entry_ptr, !183, !"_entry_ptr", i1 false, i1 false}
!187 = !{ptr @.str.90, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../lib/dynamic_debug.c", i32 332, i32 4}
!189 = !{ptr @parse_linerange._entry.89, !188, !"_entry", i1 false, i1 false}
!190 = !{ptr @parse_linerange._entry_ptr.91, !188, !"_entry_ptr", i1 false, i1 false}
!191 = !{ptr @.str.93, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../lib/dynamic_debug.c", i32 340, i32 2}
!193 = !{ptr @parse_linerange._entry.92, !192, !"_entry", i1 false, i1 false}
!194 = !{ptr @parse_linerange._entry_ptr.94, !192, !"_entry_ptr", i1 false, i1 false}
!195 = !{ptr @.str.95, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../lib/dynamic_debug.c", i32 304, i32 3}
!197 = !{ptr @.str.96, !196, !"<string literal>", i1 false, i1 false}
!198 = !{ptr @parse_lineno._entry, !196, !"_entry", i1 false, i1 false}
!199 = !{ptr @parse_lineno._entry_ptr, !196, !"_entry_ptr", i1 false, i1 false}
!200 = !{ptr @.str.97, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../lib/dynamic_debug.c", i32 220, i32 4}
!202 = !{ptr @.str.98, !201, !"<string literal>", i1 false, i1 false}
!203 = !{ptr @ddebug_change._entry, !201, !"_entry", i1 false, i1 false}
!204 = !{ptr @ddebug_change._entry_ptr, !201, !"_entry_ptr", i1 false, i1 false}
!205 = !{ptr @.str.100, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../lib/dynamic_debug.c", i32 229, i32 3}
!207 = !{ptr @ddebug_change._entry.99, !206, !"_entry", i1 false, i1 false}
!208 = !{ptr @ddebug_change._entry_ptr.101, !206, !"_entry_ptr", i1 false, i1 false}
!209 = !{ptr @.str.102, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../lib/dynamic_debug.c", i32 137, i32 2}
!211 = !{ptr @.str.103, !210, !"<string literal>", i1 false, i1 false}
!212 = !{ptr @vpr_info_dq._entry, !210, !"_entry", i1 false, i1 false}
!213 = !{ptr @vpr_info_dq._entry_ptr, !210, !"_entry_ptr", i1 false, i1 false}
!214 = !{ptr @.str.104, !210, !"<string literal>", i1 false, i1 false}
!215 = distinct !{null, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../lib/dynamic_debug.c", i32 601, i32 47}
!217 = !{ptr @.str.106, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../lib/dynamic_debug.c", i32 603, i32 47}
!219 = !{ptr @.str.107, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../lib/dynamic_debug.c", i32 608, i32 46}
!221 = !{ptr @.str.108, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../lib/dynamic_debug.c", i32 614, i32 46}
!223 = !{ptr @.str.109, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../lib/dynamic_debug.c", i32 617, i32 46}
!225 = !{ptr @.str.110, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../include/linux/netdevice.h", i32 4963, i32 10}
!227 = !{ptr @.str.111, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../include/linux/netdevice.h", i32 4975, i32 36}
!229 = !{ptr @.str.112, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../include/linux/netdevice.h", i32 4977, i32 36}
!231 = !{ptr @.str.113, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../include/linux/netdevice.h", i32 4978, i32 35}
!233 = !{ptr @.str.114, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../include/linux/netdevice.h", i32 4979, i32 31}
!235 = !{ptr @.str.115, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../include/linux/netdevice.h", i32 4980, i32 28}
!237 = distinct !{null, !238, !"__already_done", i1 false, i1 false}
!238 = !{!"../include/linux/netdevice.h", i32 4983, i32 2}
!239 = !{ptr @.str.116, !238, !"<string literal>", i1 false, i1 false}
!240 = !{ptr @.str.117, !238, !"<string literal>", i1 false, i1 false}
!241 = !{ptr @.str.118, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../include/linux/netdevice.h", i32 4984, i32 9}
!243 = !{ptr @__setup_str_dyndbg_setup, !56, !"__setup_str_dyndbg_setup", i1 false, i1 false}
!244 = !{ptr @.str.119, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../lib/dynamic_debug.c", i32 70, i32 8}
!246 = !{ptr @.str.120, !245, !"<string literal>", i1 false, i1 false}
!247 = !{ptr @ddebug_lock, !245, !"ddebug_lock", i1 false, i1 false}
!248 = !{ptr @ddebug_tables, !249, !"ddebug_tables", i1 false, i1 false}
!249 = !{!"../lib/dynamic_debug.c", i32 71, i32 8}
!250 = !{ptr @.str.121, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../lib/dynamic_debug.c", i32 991, i32 20}
!252 = !{ptr @.str.122, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../lib/dynamic_debug.c", i32 994, i32 35}
!254 = !{ptr @.str.123, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../lib/dynamic_debug.c", i32 1094, i32 4}
!256 = !{ptr @.str.124, !255, !"<string literal>", i1 false, i1 false}
!257 = !{ptr @dynamic_debug_init._entry, !255, !"_entry", i1 false, i1 false}
!258 = !{ptr @dynamic_debug_init._entry_ptr, !255, !"_entry_ptr", i1 false, i1 false}
!259 = !{ptr @.str.126, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../lib/dynamic_debug.c", i32 1122, i32 2}
!261 = !{ptr @dynamic_debug_init._entry.125, !260, !"_entry", i1 false, i1 false}
!262 = !{ptr @dynamic_debug_init._entry_ptr.127, !260, !"_entry_ptr", i1 false, i1 false}
!263 = !{ptr @.str.128, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../lib/dynamic_debug.c", i32 1135, i32 13}
!265 = distinct !{null, !266, !"ddebug_init_success", i1 false, i1 false}
!266 = !{!"../lib/dynamic_debug.c", i32 1059, i32 23}
!267 = !{ptr @.str.129, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../lib/dynamic_debug.c", i32 1003, i32 2}
!269 = !{ptr @.str.130, !268, !"<string literal>", i1 false, i1 false}
!270 = !{ptr @ddebug_dyndbg_boot_param_cb._entry, !268, !"_entry", i1 false, i1 false}
!271 = !{ptr @ddebug_dyndbg_boot_param_cb._entry_ptr, !268, !"_entry_ptr", i1 false, i1 false}
!272 = !{ptr @.str.131, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../lib/dynamic_debug.c", i32 1071, i32 36}
!274 = !{ptr @.str.132, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../lib/dynamic_debug.c", i32 1072, i32 23}
!276 = !{ptr @ddebug_proc_fops, !277, !"ddebug_proc_fops", i1 false, i1 false}
!277 = !{!"../lib/dynamic_debug.c", i32 929, i32 37}
!278 = !{ptr @.str.133, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../lib/dynamic_debug.c", i32 780, i32 3}
!280 = !{ptr @.str.134, !279, !"<string literal>", i1 false, i1 false}
!281 = !{ptr @ddebug_proc_write._entry, !279, !"_entry", i1 false, i1 false}
!282 = !{ptr @ddebug_proc_write._entry_ptr, !279, !"_entry_ptr", i1 false, i1 false}
!283 = !{ptr @.str.136, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../lib/dynamic_debug.c", i32 786, i32 2}
!285 = !{ptr @ddebug_proc_write._entry.135, !284, !"_entry", i1 false, i1 false}
!286 = !{ptr @ddebug_proc_write._entry_ptr.137, !284, !"_entry_ptr", i1 false, i1 false}
!287 = !{ptr @ddebug_proc_seqops, !288, !"ddebug_proc_seqops", i1 false, i1 false}
!288 = !{!"../lib/dynamic_debug.c", i32 916, i32 36}
!289 = !{ptr @.str.138, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../lib/dynamic_debug.c", i32 893, i32 5}
!291 = !{ptr @.str.139, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../lib/dynamic_debug.c", i32 897, i32 16}
!293 = !{ptr @.str.140, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../lib/dynamic_debug.c", i32 901, i32 28}
!295 = !{ptr @.str.141, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../lib/dynamic_debug.c", i32 902, i32 14}
!297 = !{ptr @proc_fops, !298, !"proc_fops", i1 false, i1 false}
!298 = !{!"../lib/dynamic_debug.c", i32 938, i32 30}
!299 = !{!"sp"}
!300 = !{i32 1, !"wchar_size", i32 2}
!301 = !{i32 1, !"min_enum_size", i32 4}
!302 = !{i32 8, !"branch-target-enforcement", i32 0}
!303 = !{i32 8, !"sign-return-address", i32 0}
!304 = !{i32 8, !"sign-return-address-all", i32 0}
!305 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!306 = !{i32 7, !"uwtable", i32 1}
!307 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!308 = !{!"branch_weights", i32 1, i32 2000}
!309 = !{i64 2157777753, i64 2157778237, i64 2157777790, i64 2157777846, i64 2157777880, i64 2157777904, i64 2157777945, i64 2157777966, i64 2157777994, i64 2157778028}
!310 = !{!"auto-init"}
!311 = !{i64 2157825609, i64 2157826093, i64 2157825646, i64 2157825702, i64 2157825736, i64 2157825760, i64 2157825801, i64 2157825822, i64 2157825850, i64 2157825884}
!312 = !{i64 2157827173, i64 2157827657, i64 2157827210, i64 2157827266, i64 2157827300, i64 2157827324, i64 2157827365, i64 2157827386, i64 2157827414, i64 2157827448}
!313 = !{!"branch_weights", i32 2000, i32 1}
!314 = !{i64 2157831678, i64 2157832162, i64 2157831715, i64 2157831771, i64 2157831805, i64 2157831829, i64 2157831870, i64 2157831891, i64 2157831919, i64 2157831953}
!315 = !{i64 2157833242, i64 2157833726, i64 2157833279, i64 2157833335, i64 2157833369, i64 2157833393, i64 2157833434, i64 2157833455, i64 2157833483, i64 2157833517}
!316 = !{i64 2157837741, i64 2157838225, i64 2157837778, i64 2157837834, i64 2157837868, i64 2157837892, i64 2157837933, i64 2157837954, i64 2157837982, i64 2157838016}
!317 = !{i64 2157839305, i64 2157839789, i64 2157839342, i64 2157839398, i64 2157839432, i64 2157839456, i64 2157839497, i64 2157839518, i64 2157839546, i64 2157839580}
!318 = !{i64 2157789482, i64 2157789966, i64 2157789519, i64 2157789575, i64 2157789609, i64 2157789633, i64 2157789674, i64 2157789695, i64 2157789723, i64 2157789757}
