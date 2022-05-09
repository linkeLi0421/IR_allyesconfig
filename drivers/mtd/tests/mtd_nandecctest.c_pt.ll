; ModuleID = '/llk/IR_all_yes/drivers/mtd/tests/mtd_nandecctest.c_pt.bc'
source_filename = "../drivers/mtd/tests/mtd_nandecctest.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nand_ecc_test = type { ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.35, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon }
%struct.llist_node = type { ptr }
%union.anon = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [72 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.uclamp_se = type { i16, [2 x i8] }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [24 x i8] }
%struct.cpumask = type { [1 x i32] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.7 }
%union.anon.7 = type { %struct.anon.8 }
%struct.anon.8 = type { ptr, i32, i32, i32, i64, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [2 x i32] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.kuid_t = type { i32 }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.tlbflush_unmap_batch = type {}
%union.anon.35 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@__UNIQUE_ID_description209 = internal constant [42 x i8] c"description=NAND ECC function test module\00", section ".modinfo", align 1
@__UNIQUE_ID_author210 = internal constant [20 x i8] c"author=Akinobu Mita\00", section ".modinfo", align 1
@__UNIQUE_ID_license211 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@nand_ecc_test = internal constant { [6 x %struct.nand_ecc_test], [56 x i8] } { [6 x %struct.nand_ecc_test] [%struct.nand_ecc_test { ptr @.str.6, ptr @no_bit_error, ptr @no_bit_error_verify }, %struct.nand_ecc_test { ptr @.str.7, ptr @single_bit_error_in_data, ptr @single_bit_error_correct }, %struct.nand_ecc_test { ptr @.str.8, ptr @single_bit_error_in_ecc, ptr @single_bit_error_correct }, %struct.nand_ecc_test { ptr @.str.9, ptr @double_bit_error_in_data, ptr @double_bit_error_detect }, %struct.nand_ecc_test { ptr @.str.10, ptr @single_bit_error_in_data_and_ecc, ptr @double_bit_error_detect }, %struct.nand_ecc_test { ptr @.str.11, ptr @double_bit_error_in_ecc, ptr @double_bit_error_detect }], [56 x i8] zeroinitializer }, align 32
@nand_ecc_test_run._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 279, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013mtd_nandecctest: not ok - %s-%zd\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nand_ecc_test_run\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/mtd/tests/mtd_nandecctest.c\00", [60 x i8] zeroinitializer }, align 32
@nand_ecc_test_run._entry_ptr = internal global ptr @nand_ecc_test_run._entry, section ".printk_index", align 4
@nand_ecc_test_run._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 285, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016mtd_nandecctest: ok - %s-%zd\0A\00", [32 x i8] zeroinitializer }, align 32
@nand_ecc_test_run._entry_ptr.5 = internal global ptr @nand_ecc_test_run._entry.3, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"no-bit-error\00", [19 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"single-bit-error-in-data-correct\00", [63 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"single-bit-error-in-ecc-correct\00", [32 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"double-bit-error-in-data-detect\00", [32 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"single-bit-error-in-data-and-ecc-detect\00", [56 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"double-bit-error-in-ecc-detect\00", [33 x i8] zeroinitializer }, align 32
@dump_data_ecc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 236, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016mtd_nandecctest: hexdump of error data:\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dump_data_ecc\00", [18 x i8] zeroinitializer }, align 32
@dump_data_ecc._entry_ptr = internal global ptr @dump_data_ecc._entry, section ".printk_index", align 4
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"hexdump of error ecc: \00", [41 x i8] zeroinitializer }, align 32
@dump_data_ecc._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.13, ptr @.str.2, i32 242, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016mtd_nandecctest: hexdump of correct data:\0A\00", [51 x i8] zeroinitializer }, align 32
@dump_data_ecc._entry_ptr.19 = internal global ptr @dump_data_ecc._entry.17, section ".printk_index", align 4
@.str.20 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"hexdump of correct ecc: \00", [39 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/mtd/tests/mtd_test.h\00", [35 x i8] zeroinitializer }, align 32
@mtdtest_relax._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.21, i32 9, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\016mtd_nandecctest: aborting test due to pending signal!\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mtdtest_relax\00", [18 x i8] zeroinitializer }, align 32
@mtdtest_relax._entry_ptr = internal global ptr @mtdtest_relax._entry, section ".printk_index", align 4
@___asan_gen_.24 = private unnamed_addr constant [14 x i8] c"nand_ecc_test\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 200, i32 35 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 278, i32 4 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 284, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 202, i32 11 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 207, i32 11 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 212, i32 11 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 217, i32 11 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 222, i32 11 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 227, i32 11 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 236, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 237, i32 17 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 237, i32 28 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 239, i32 28 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 242, i32 2 }
@___asan_gen_.88 = private constant [39 x i8] c"../drivers/mtd/tests/mtd_nandecctest.c\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 245, i32 28 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 7, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.99 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.100 = private unnamed_addr constant [32 x i8] c"../drivers/mtd/tests/mtd_test.h\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 9, i32 3 }
@llvm.compiler.used = appending global [34 x ptr] [ptr @__UNIQUE_ID_author210, ptr @__UNIQUE_ID_description209, ptr @__UNIQUE_ID_license211, ptr @dump_data_ecc._entry, ptr @dump_data_ecc._entry.17, ptr @dump_data_ecc._entry_ptr, ptr @dump_data_ecc._entry_ptr.19, ptr @mtdtest_relax._entry, ptr @mtdtest_relax._entry_ptr, ptr @nand_ecc_test_run._entry, ptr @nand_ecc_test_run._entry.3, ptr @nand_ecc_test_run._entry_ptr, ptr @nand_ecc_test_run._entry_ptr.5, ptr @nand_ecc_test, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23], section "llvm.metadata"
@0 = internal global [26 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nand_ecc_test to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nand_ecc_test_run._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nand_ecc_test_run._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_data_ecc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_data_ecc._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtdtest_relax._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @nand_ecc_test_run(i32 noundef 256)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call1 = tail call fastcc i32 @nand_ecc_test_run(i32 noundef 512)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nand_ecc_test_run(i32 noundef %size) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %size, i32 noundef 3264) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i64 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 3) #15
  %call9.i74 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %size, i32 noundef 3264) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i78 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3264, i32 noundef 3) #15
  %tobool.not = icmp eq ptr %call9.i, null
  %tobool4.not = icmp eq ptr %call7.i64, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool4.not
  %tobool6.not = icmp eq ptr %call9.i74, null
  %or.cond62 = select i1 %or.cond, i1 true, i1 %tobool6.not
  %tobool8.not = icmp eq ptr %call7.i78, null
  %or.cond63 = select i1 %or.cond62, i1 true, i1 %tobool8.not
  br i1 %or.cond63, label %entry.error_crit_edge, label %if.end

entry.error_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

if.end:                                           ; preds = %entry
  tail call void @prandom_bytes(ptr noundef nonnull %call9.i74, i32 noundef %size) #11
  %call10 = tail call i32 @ecc_sw_hamming_calculate(ptr noundef nonnull %call9.i74, i32 noundef %size, ptr noundef nonnull %call7.i78, i1 noundef zeroext true) #11
  br label %for.body

for.cond:                                         ; preds = %signal_pending.exit.i
  %inc = add nuw nsw i32 %i.092, 1
  %exitcond.not = icmp eq i32 %inc, 6
  br i1 %exitcond.not, label %for.cond.error_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.cond.error_crit_edge:                         ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.end
  %i.092 = phi i32 [ 0, %if.end ], [ %inc, %for.cond.for.body_crit_edge ]
  %arrayidx = getelementptr [6 x %struct.nand_ecc_test], ptr @nand_ecc_test, i32 0, i32 %i.092
  %prepare = getelementptr [6 x %struct.nand_ecc_test], ptr @nand_ecc_test, i32 0, i32 %i.092, i32 1
  %2 = ptrtoint ptr %prepare to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prepare, align 4
  tail call void %3(ptr noundef nonnull %call9.i, ptr noundef nonnull %call7.i64, ptr noundef nonnull %call9.i74, ptr noundef nonnull %call7.i78, i32 noundef %size) #11
  %verify = getelementptr [6 x %struct.nand_ecc_test], ptr @nand_ecc_test, i32 0, i32 %i.092, i32 2
  %4 = ptrtoint ptr %verify to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %verify, align 4
  %call12 = tail call i32 %5(ptr noundef nonnull %call9.i, ptr noundef nonnull %call7.i64, ptr noundef nonnull %call9.i74, i32 noundef %size) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  br i1 %tobool13.not, label %do.end20, label %do.end

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %7, i32 noundef %size) #16
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #16
  tail call void @print_hex_dump(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, i32 noundef 2, i32 noundef 16, i32 noundef 4, ptr noundef %call9.i, i32 noundef %size, i1 noundef zeroext false) #11
  tail call void @print_hex_dump(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.16, i32 noundef 0, i32 noundef 16, i32 noundef 1, ptr noundef %call7.i64, i32 noundef 3, i1 noundef zeroext false) #11
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18) #16
  tail call void @print_hex_dump(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, i32 noundef 2, i32 noundef 16, i32 noundef 4, ptr noundef %call9.i74, i32 noundef %size, i1 noundef zeroext false) #11
  tail call void @print_hex_dump(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.20, i32 noundef 0, i32 noundef 16, i32 noundef 1, ptr noundef %call7.i78, i32 noundef 3, i1 noundef zeroext false) #11
  br label %error

do.end20:                                         ; preds = %for.body
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %7, i32 noundef %size) #16
  tail call void @__might_resched(ptr noundef nonnull @.str.21, i32 noundef 7, i32 noundef 0) #11
  %call.i.i = tail call i32 @__cond_resched() #11
  %8 = tail call i32 @llvm.read_register.i32(metadata !54) #11
  %and.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task.i, align 8
  %stack.i.i.i = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %stack.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %stack.i.i.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %13, align 4
  %16 = and i32 %15, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i.i = icmp eq i32 %16, 0
  br i1 %tobool.not.i.i, label %signal_pending.exit.i, label %do.end20.mtdtest_relax.exit_crit_edge, !prof !64

do.end20.mtdtest_relax.exit_crit_edge:            ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #13
  br label %mtdtest_relax.exit

signal_pending.exit.i:                            ; preds = %do.end20
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %13, align 4
  %and1.i.i.i.i.i.i = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i.i.i.i.i, 0
  br i1 %tobool.not.i, label %for.cond, label %signal_pending.exit.i.mtdtest_relax.exit_crit_edge

signal_pending.exit.i.mtdtest_relax.exit_crit_edge: ; preds = %signal_pending.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mtdtest_relax.exit

mtdtest_relax.exit:                               ; preds = %signal_pending.exit.i.mtdtest_relax.exit_crit_edge, %do.end20.mtdtest_relax.exit_crit_edge
  %call4.i81 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22) #16
  br label %error

error:                                            ; preds = %mtdtest_relax.exit, %do.end, %for.cond.error_crit_edge, %entry.error_crit_edge
  %err.1 = phi i32 [ %call12, %do.end ], [ -4, %mtdtest_relax.exit ], [ -12, %entry.error_crit_edge ], [ 0, %for.cond.error_crit_edge ]
  tail call void @kfree(ptr noundef %call9.i) #11
  tail call void @kfree(ptr noundef %call7.i64) #11
  tail call void @kfree(ptr noundef %call9.i74) #11
  tail call void @kfree(ptr noundef %call7.i78) #11
  ret i32 %err.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @prandom_bytes(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ecc_sw_hamming_calculate(ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @no_bit_error(ptr nocapture noundef writeonly %error_data, ptr nocapture noundef writeonly %error_ecc, ptr nocapture noundef readonly %correct_data, ptr nocapture noundef readonly %correct_ecc, i32 noundef %size) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memcpy(ptr %error_data, ptr %correct_data, i32 %size)
  %1 = call ptr @memcpy(ptr %error_ecc, ptr %correct_ecc, i32 3)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @no_bit_error_verify(ptr noundef %error_data, ptr noundef %error_ecc, ptr nocapture noundef readonly %correct_data, i32 noundef %size) #3 align 64 {
entry:
  %calc_ecc = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %calc_ecc) #11
  %0 = ptrtoint ptr %calc_ecc to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %calc_ecc, align 1, !annotation !65
  %1 = getelementptr inbounds [3 x i8], ptr %calc_ecc, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %1, align 1, !annotation !65
  %3 = getelementptr inbounds [3 x i8], ptr %calc_ecc, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %3, align 1, !annotation !65
  %call = call i32 @ecc_sw_hamming_calculate(ptr noundef %error_data, i32 noundef %size, ptr noundef nonnull %calc_ecc, i1 noundef zeroext true) #11
  %call3 = call i32 @ecc_sw_hamming_correct(ptr noundef %error_data, ptr noundef %error_ecc, ptr noundef nonnull %calc_ecc, i32 noundef %size, i1 noundef zeroext true) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp eq i32 %call3, 0
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %bcmp = call i32 @bcmp(ptr %correct_data, ptr %error_data, i32 %size) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool5.not = icmp eq i32 %bcmp, 0
  br i1 %tobool5.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.end ], [ 0, %land.lhs.true.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %calc_ecc) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @single_bit_error_in_data(ptr nocapture noundef %error_data, ptr nocapture noundef writeonly %error_ecc, ptr nocapture noundef readonly %correct_data, ptr nocapture noundef readonly %correct_ecc, i32 noundef %size) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @prandom_u32() #11
  %mul.i = shl i32 %size, 3
  %rem.i = urem i32 %call.i, %mul.i
  %0 = call ptr @memcpy(ptr %error_data, ptr %correct_data, i32 %size)
  %xor.i = and i32 %rem.i, 31
  %rem.i.i = xor i32 %xor.i, 24
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %div2.i.i = lshr i32 %rem.i, 5
  %add.ptr.i.i = getelementptr i32, ptr %error_data, i32 %div2.i.i
  %1 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %add.ptr.i.i, align 4
  %xor.i.i = xor i32 %shl.i.i, %2
  store i32 %xor.i.i, ptr %add.ptr.i.i, align 4
  %3 = call ptr @memcpy(ptr %error_ecc, ptr %correct_ecc, i32 3)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @single_bit_error_correct(ptr noundef %error_data, ptr noundef %error_ecc, ptr nocapture noundef readonly %correct_data, i32 noundef %size) #3 align 64 {
entry:
  %calc_ecc = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %calc_ecc) #11
  %0 = ptrtoint ptr %calc_ecc to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %calc_ecc, align 1, !annotation !65
  %1 = getelementptr inbounds [3 x i8], ptr %calc_ecc, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %1, align 1, !annotation !65
  %3 = getelementptr inbounds [3 x i8], ptr %calc_ecc, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %3, align 1, !annotation !65
  %call = call i32 @ecc_sw_hamming_calculate(ptr noundef %error_data, i32 noundef %size, ptr noundef nonnull %calc_ecc, i1 noundef zeroext true) #11
  %call3 = call i32 @ecc_sw_hamming_correct(ptr noundef %error_data, ptr noundef %error_ecc, ptr noundef nonnull %calc_ecc, i32 noundef %size, i1 noundef zeroext true) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call3)
  %cmp = icmp eq i32 %call3, 1
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %bcmp = call i32 @bcmp(ptr %correct_data, ptr %error_data, i32 %size) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool5.not = icmp eq i32 %bcmp, 0
  br i1 %tobool5.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.end ], [ 0, %land.lhs.true.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %calc_ecc) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @single_bit_error_in_ecc(ptr nocapture noundef writeonly %error_data, ptr nocapture noundef %error_ecc, ptr nocapture noundef readonly %correct_data, ptr nocapture noundef readonly %correct_ecc, i32 noundef %size) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memcpy(ptr %error_data, ptr %correct_data, i32 %size)
  %call.i.i = tail call i32 @prandom_u32() #11
  %rem.i2.i = urem i32 %call.i.i, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %size)
  %cmp.i.i = icmp eq i32 %size, 256
  %1 = and i32 %rem.i2.i, 30
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %1)
  %switch7.i.i = icmp eq i32 %1, 16
  %or.cond.i.i = select i1 %cmp.i.i, i1 %switch7.i.i, i1 false
  br i1 %or.cond.i.i, label %entry.while.body.i.i_crit_edge, label %entry.single_bit_error_ecc.exit_crit_edge

entry.single_bit_error_ecc.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %single_bit_error_ecc.exit

entry.while.body.i.i_crit_edge:                   ; preds = %entry
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %entry.while.body.i.i_crit_edge
  %call3.i.i = tail call i32 @prandom_u32() #11
  %rem4.i.i = urem i32 %call3.i.i, 24
  %2 = and i32 %rem4.i.i, 30
  %switch.i.i = icmp eq i32 %2, 16
  br i1 %switch.i.i, label %while.body.i.i.while.body.i.i_crit_edge, label %while.body.i.i.single_bit_error_ecc.exit_crit_edge

while.body.i.i.single_bit_error_ecc.exit_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %single_bit_error_ecc.exit

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i.i

single_bit_error_ecc.exit:                        ; preds = %while.body.i.i.single_bit_error_ecc.exit_crit_edge, %entry.single_bit_error_ecc.exit_crit_edge
  %offset.1.i.i = phi i32 [ %rem.i2.i, %entry.single_bit_error_ecc.exit_crit_edge ], [ %rem4.i.i, %while.body.i.i.single_bit_error_ecc.exit_crit_edge ]
  %3 = call ptr @memcpy(ptr %error_ecc, ptr %correct_ecc, i32 3)
  %xor.i = xor i32 %offset.1.i.i, 24
  %shl.i.i = shl nuw i32 1, %xor.i
  %4 = ptrtoint ptr %error_ecc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %error_ecc, align 4
  %xor.i.i = xor i32 %5, %shl.i.i
  store i32 %xor.i.i, ptr %error_ecc, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @double_bit_error_in_data(ptr nocapture noundef %error_data, ptr nocapture noundef writeonly %error_ecc, ptr nocapture noundef readonly %correct_data, ptr nocapture noundef readonly %correct_ecc, i32 noundef %size) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @prandom_u32() #11
  %mul.i = shl i32 %size, 3
  %rem.i = urem i32 %call.i, %mul.i
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %entry
  %call1.i = tail call i32 @prandom_u32() #11
  %rem3.i = urem i32 %call1.i, %mul.i
  %cmp.i = icmp eq i32 %rem.i, %rem3.i
  br i1 %cmp.i, label %do.body.i.do.body.i_crit_edge, label %double_bit_error_data.exit

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

double_bit_error_data.exit:                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %0 = call ptr @memcpy(ptr %error_data, ptr %correct_data, i32 %size)
  %xor.i = and i32 %rem.i, 31
  %rem.i.i = xor i32 %xor.i, 24
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %div2.i.i = lshr i32 %rem.i, 5
  %add.ptr.i.i = getelementptr i32, ptr %error_data, i32 %div2.i.i
  %1 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %add.ptr.i.i, align 4
  %xor.i.i = xor i32 %2, %shl.i.i
  store i32 %xor.i.i, ptr %add.ptr.i.i, align 4
  %xor9.i = and i32 %rem3.i, 31
  %rem.i16.i = xor i32 %xor9.i, 24
  %shl.i17.i = shl nuw i32 1, %rem.i16.i
  %div2.i18.i = lshr i32 %rem3.i, 5
  %add.ptr.i19.i = getelementptr i32, ptr %error_data, i32 %div2.i18.i
  %3 = ptrtoint ptr %add.ptr.i19.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %add.ptr.i19.i, align 4
  %xor.i20.i = xor i32 %4, %shl.i17.i
  store i32 %xor.i20.i, ptr %add.ptr.i19.i, align 4
  %5 = call ptr @memcpy(ptr %error_ecc, ptr %correct_ecc, i32 3)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @double_bit_error_detect(ptr noundef %error_data, ptr noundef %error_ecc, ptr nocapture noundef readnone %correct_data, i32 noundef %size) #3 align 64 {
entry:
  %calc_ecc = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %calc_ecc) #11
  %0 = ptrtoint ptr %calc_ecc to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %calc_ecc, align 1, !annotation !65
  %1 = getelementptr inbounds [3 x i8], ptr %calc_ecc, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %1, align 1, !annotation !65
  %3 = getelementptr inbounds [3 x i8], ptr %calc_ecc, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %3, align 1, !annotation !65
  %call = call i32 @ecc_sw_hamming_calculate(ptr noundef %error_data, i32 noundef %size, ptr noundef nonnull %calc_ecc, i1 noundef zeroext true) #11
  %call3 = call i32 @ecc_sw_hamming_correct(ptr noundef %error_data, ptr noundef %error_ecc, ptr noundef nonnull %calc_ecc, i32 noundef %size, i1 noundef zeroext true) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -74, i32 %call3)
  %cmp = icmp eq i32 %call3, -74
  %cond = select i1 %cmp, i32 0, i32 -22
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %calc_ecc) #11
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @single_bit_error_in_data_and_ecc(ptr nocapture noundef %error_data, ptr nocapture noundef %error_ecc, ptr nocapture noundef readonly %correct_data, ptr nocapture noundef readonly %correct_ecc, i32 noundef %size) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @prandom_u32() #11
  %mul.i = shl i32 %size, 3
  %rem.i = urem i32 %call.i, %mul.i
  %0 = call ptr @memcpy(ptr %error_data, ptr %correct_data, i32 %size)
  %xor.i = and i32 %rem.i, 31
  %rem.i.i = xor i32 %xor.i, 24
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %div2.i.i = lshr i32 %rem.i, 5
  %add.ptr.i.i = getelementptr i32, ptr %error_data, i32 %div2.i.i
  %1 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %add.ptr.i.i, align 4
  %xor.i.i = xor i32 %shl.i.i, %2
  store i32 %xor.i.i, ptr %add.ptr.i.i, align 4
  %call.i.i = tail call i32 @prandom_u32() #11
  %rem.i2.i = urem i32 %call.i.i, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %size)
  %cmp.i.i = icmp eq i32 %size, 256
  %3 = and i32 %rem.i2.i, 30
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %3)
  %switch7.i.i = icmp eq i32 %3, 16
  %or.cond.i.i = select i1 %cmp.i.i, i1 %switch7.i.i, i1 false
  br i1 %or.cond.i.i, label %entry.while.body.i.i_crit_edge, label %entry.single_bit_error_ecc.exit_crit_edge

entry.single_bit_error_ecc.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %single_bit_error_ecc.exit

entry.while.body.i.i_crit_edge:                   ; preds = %entry
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %entry.while.body.i.i_crit_edge
  %call3.i.i = tail call i32 @prandom_u32() #11
  %rem4.i.i = urem i32 %call3.i.i, 24
  %4 = and i32 %rem4.i.i, 30
  %switch.i.i = icmp eq i32 %4, 16
  br i1 %switch.i.i, label %while.body.i.i.while.body.i.i_crit_edge, label %while.body.i.i.single_bit_error_ecc.exit_crit_edge

while.body.i.i.single_bit_error_ecc.exit_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %single_bit_error_ecc.exit

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i.i

single_bit_error_ecc.exit:                        ; preds = %while.body.i.i.single_bit_error_ecc.exit_crit_edge, %entry.single_bit_error_ecc.exit_crit_edge
  %offset.1.i.i = phi i32 [ %rem.i2.i, %entry.single_bit_error_ecc.exit_crit_edge ], [ %rem4.i.i, %while.body.i.i.single_bit_error_ecc.exit_crit_edge ]
  %5 = call ptr @memcpy(ptr %error_ecc, ptr %correct_ecc, i32 3)
  %xor.i2 = xor i32 %offset.1.i.i, 24
  %shl.i.i3 = shl nuw i32 1, %xor.i2
  %6 = ptrtoint ptr %error_ecc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %error_ecc, align 4
  %xor.i.i4 = xor i32 %7, %shl.i.i3
  store i32 %xor.i.i4, ptr %error_ecc, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @double_bit_error_in_ecc(ptr nocapture noundef writeonly %error_data, ptr nocapture noundef %error_ecc, ptr nocapture noundef readonly %correct_data, ptr nocapture noundef readonly %correct_ecc, i32 noundef %size) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memcpy(ptr %error_data, ptr %correct_data, i32 %size)
  %call.i.i = tail call i32 @prandom_u32() #11
  %rem.i18.i = urem i32 %call.i.i, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %size)
  %cmp.i.i = icmp eq i32 %size, 256
  %1 = and i32 %rem.i18.i, 30
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %1)
  %switch7.i.i = icmp eq i32 %1, 16
  %or.cond.i.i = select i1 %cmp.i.i, i1 %switch7.i.i, i1 false
  br i1 %or.cond.i.i, label %entry.while.body.i.i_crit_edge, label %entry.random_ecc_bit.exit.i_crit_edge

entry.random_ecc_bit.exit.i_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %random_ecc_bit.exit.i

entry.while.body.i.i_crit_edge:                   ; preds = %entry
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %entry.while.body.i.i_crit_edge
  %call3.i.i = tail call i32 @prandom_u32() #11
  %rem4.i.i = urem i32 %call3.i.i, 24
  %2 = and i32 %rem4.i.i, 30
  %switch.i.i = icmp eq i32 %2, 16
  br i1 %switch.i.i, label %while.body.i.i.while.body.i.i_crit_edge, label %while.body.i.i.random_ecc_bit.exit.i_crit_edge

while.body.i.i.random_ecc_bit.exit.i_crit_edge:   ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %random_ecc_bit.exit.i

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i.i

random_ecc_bit.exit.i:                            ; preds = %while.body.i.i.random_ecc_bit.exit.i_crit_edge, %entry.random_ecc_bit.exit.i_crit_edge
  %offset.1.i.i = phi i32 [ %rem.i18.i, %entry.random_ecc_bit.exit.i_crit_edge ], [ %rem4.i.i, %while.body.i.i.random_ecc_bit.exit.i_crit_edge ]
  br label %do.body.i

do.body.i:                                        ; preds = %random_ecc_bit.exit29.i.do.body.i_crit_edge, %random_ecc_bit.exit.i
  %call.i19.i = tail call i32 @prandom_u32() #11
  %rem.i20.i = urem i32 %call.i19.i, 24
  %3 = and i32 %rem.i20.i, 30
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %3)
  %switch7.i22.i = icmp eq i32 %3, 16
  %or.cond.i23.i = select i1 %cmp.i.i, i1 %switch7.i22.i, i1 false
  br i1 %or.cond.i23.i, label %do.body.i.while.body.i27.i_crit_edge, label %do.body.i.random_ecc_bit.exit29.i_crit_edge

do.body.i.random_ecc_bit.exit29.i_crit_edge:      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %random_ecc_bit.exit29.i

do.body.i.while.body.i27.i_crit_edge:             ; preds = %do.body.i
  br label %while.body.i27.i

while.body.i27.i:                                 ; preds = %while.body.i27.i.while.body.i27.i_crit_edge, %do.body.i.while.body.i27.i_crit_edge
  %call3.i24.i = tail call i32 @prandom_u32() #11
  %rem4.i25.i = urem i32 %call3.i24.i, 24
  %4 = and i32 %rem4.i25.i, 30
  %switch.i26.i = icmp eq i32 %4, 16
  br i1 %switch.i26.i, label %while.body.i27.i.while.body.i27.i_crit_edge, label %while.body.i27.i.random_ecc_bit.exit29.i_crit_edge

while.body.i27.i.random_ecc_bit.exit29.i_crit_edge: ; preds = %while.body.i27.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %random_ecc_bit.exit29.i

while.body.i27.i.while.body.i27.i_crit_edge:      ; preds = %while.body.i27.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i27.i

random_ecc_bit.exit29.i:                          ; preds = %while.body.i27.i.random_ecc_bit.exit29.i_crit_edge, %do.body.i.random_ecc_bit.exit29.i_crit_edge
  %offset.1.i28.i = phi i32 [ %rem.i20.i, %do.body.i.random_ecc_bit.exit29.i_crit_edge ], [ %rem4.i25.i, %while.body.i27.i.random_ecc_bit.exit29.i_crit_edge ]
  %cmp.i = icmp eq i32 %offset.1.i.i, %offset.1.i28.i
  br i1 %cmp.i, label %random_ecc_bit.exit29.i.do.body.i_crit_edge, label %double_bit_error_ecc.exit

random_ecc_bit.exit29.i.do.body.i_crit_edge:      ; preds = %random_ecc_bit.exit29.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

double_bit_error_ecc.exit:                        ; preds = %random_ecc_bit.exit29.i
  call void @__sanitizer_cov_trace_pc() #13
  %5 = call ptr @memcpy(ptr %error_ecc, ptr %correct_ecc, i32 3)
  %xor.i = xor i32 %offset.1.i.i, 24
  %shl.i.i = shl nuw i32 1, %xor.i
  %6 = ptrtoint ptr %error_ecc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %error_ecc, align 4
  %xor7.i = xor i32 %offset.1.i28.i, 24
  %shl.i14.i = shl nuw i32 1, %xor7.i
  %xor.i.i = xor i32 %shl.i14.i, %shl.i.i
  %xor.i17.i = xor i32 %xor.i.i, %7
  store i32 %xor.i17.i, ptr %error_ecc, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ecc_sw_hamming_correct(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prandom_u32() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind readonly }
attributes #10 = { argmemonly nofree nounwind readonly willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { cold nounwind }
attributes #17 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !14, !15, !16, !18, !20, !22, !24, !26, !28, !30, !32, !33, !34, !35, !37, !39, !41, !43, !44, !45, !47, !49, !51, !52, !53}
!llvm.named.register.sp = !{!54}
!llvm.module.flags = !{!55, !56, !57, !58, !59, !60, !61, !62}
!llvm.ident = !{!63}

!0 = !{ptr @__UNIQUE_ID_description209, !1, !"__UNIQUE_ID_description209", i1 false, i1 false}
!1 = !{!"../drivers/mtd/tests/mtd_nandecctest.c", i32 327, i32 1}
!2 = !{ptr @__UNIQUE_ID_author210, !3, !"__UNIQUE_ID_author210", i1 false, i1 false}
!3 = !{!"../drivers/mtd/tests/mtd_nandecctest.c", i32 328, i32 1}
!4 = !{ptr @__UNIQUE_ID_license211, !5, !"__UNIQUE_ID_license211", i1 false, i1 false}
!5 = !{!"../drivers/mtd/tests/mtd_nandecctest.c", i32 329, i32 1}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/mtd/tests/mtd_nandecctest.c", i32 278, i32 4}
!8 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @nand_ecc_test_run._entry, !7, !"_entry", i1 false, i1 false}
!11 = !{ptr @nand_ecc_test_run._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/mtd/tests/mtd_nandecctest.c", i32 284, i32 3}
!14 = !{ptr @nand_ecc_test_run._entry.3, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @nand_ecc_test_run._entry_ptr.5, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/mtd/tests/mtd_nandecctest.c", i32 202, i32 11}
!18 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/mtd/tests/mtd_nandecctest.c", i32 207, i32 11}
!20 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/mtd/tests/mtd_nandecctest.c", i32 212, i32 11}
!22 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/mtd/tests/mtd_nandecctest.c", i32 217, i32 11}
!24 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/mtd/tests/mtd_nandecctest.c", i32 222, i32 11}
!26 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/mtd/tests/mtd_nandecctest.c", i32 227, i32 11}
!28 = !{ptr @nand_ecc_test, !29, !"nand_ecc_test", i1 false, i1 false}
!29 = !{!"../drivers/mtd/tests/mtd_nandecctest.c", i32 200, i32 35}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/mtd/tests/mtd_nandecctest.c", i32 236, i32 2}
!32 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @dump_data_ecc._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @dump_data_ecc._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/mtd/tests/mtd_nandecctest.c", i32 237, i32 17}
!37 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/mtd/tests/mtd_nandecctest.c", i32 237, i32 28}
!39 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/mtd/tests/mtd_nandecctest.c", i32 239, i32 28}
!41 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/mtd/tests/mtd_nandecctest.c", i32 242, i32 2}
!43 = !{ptr @dump_data_ecc._entry.17, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @dump_data_ecc._entry_ptr.19, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/mtd/tests/mtd_nandecctest.c", i32 245, i32 28}
!47 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/mtd/tests/mtd_test.h", i32 7, i32 2}
!49 = !{ptr @.str.22, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/mtd/tests/mtd_test.h", i32 9, i32 3}
!51 = !{ptr @.str.23, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @mtdtest_relax._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @mtdtest_relax._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{!"sp"}
!55 = !{i32 1, !"wchar_size", i32 2}
!56 = !{i32 1, !"min_enum_size", i32 4}
!57 = !{i32 8, !"branch-target-enforcement", i32 0}
!58 = !{i32 8, !"sign-return-address", i32 0}
!59 = !{i32 8, !"sign-return-address-all", i32 0}
!60 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!61 = !{i32 7, !"uwtable", i32 1}
!62 = !{i32 7, !"frame-pointer", i32 2}
!63 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!64 = !{!"branch_weights", i32 2000, i32 1}
!65 = !{!"auto-init"}
