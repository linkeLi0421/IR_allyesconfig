; ModuleID = '/llk/IR_all_yes/drivers/mtd/chips/cfi_cmdset_0020.c_pt.bc'
source_filename = "../drivers/mtd/chips/cfi_cmdset_0020.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+cfi_cmdset_0020\22, \22a\22\09"
module asm "\09.weak\09__crc_cfi_cmdset_0020\09\09\09\09"
module asm "\09.long\09__crc_cfi_cmdset_0020\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cfi_cmdset_0020:\09\09\09\09\09"
module asm "\09.asciz \09\22cfi_cmdset_0020\22\09\09\09\09\09"
module asm "__kstrtabns_cfi_cmdset_0020:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.mtd_chip_driver = type { ptr, ptr, ptr, ptr, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.map_info = type { ptr, i32, i32, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr }
%struct.cfi_private = type { i16, ptr, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, %union.map_word, i32, ptr, [0 x %struct.flchip] }
%union.map_word = type { [8 x i32] }
%struct.flchip = type { i32, i32, i32, i32, i8, i32, i32, %struct.mutex, %struct.wait_queue_head, i32, i32, i32, i32, i32, i32, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.cfi_ident = type <{ [3 x i8], i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i8, [0 x i32] }>
%struct.cfi_pri_intelext = type <{ [3 x i8], i8, i8, i32, i8, i16, i8, i8, i8, i16, i8, i8, [0 x i8] }>
%struct.mtd_info = type { i8, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.notifier_block, %struct.mtd_ecc_stats, i32, ptr, ptr, %struct.device, i32, %struct.mtd_debug_info, ptr, ptr, ptr, ptr, %struct.list_head, %union.anon.43 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mtd_ecc_stats = type { i32, i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.mtd_debug_info = type { ptr, ptr, ptr }
%union.anon.43 = type { %struct.mtd_part, [160 x i8] }
%struct.mtd_part = type { %struct.list_head, i64, i64, i32 }
%struct.mtd_erase_region_info = type { i64, i32, i32, ptr }
%struct.erase_info = type { i64, i64, i64 }
%struct.kvec = type { ptr, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.24, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.3 }
%struct.llist_node = type { ptr }
%union.anon.3 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [72 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.uclamp_se = type { i16, [2 x i8] }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [24 x i8] }
%struct.cpumask = type { [1 x i32] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.5 }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.24 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ST Microelectronics\00", [44 x i8] zeroinitializer }, align 32
@cfi_cmdset_0020._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 135, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\013  Unknown ST Microelectronics Extended Query version %c.%c.\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cfi_cmdset_0020\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/mtd/chips/cfi_cmdset_0020.c\00", [60 x i8] zeroinitializer }, align 32
@cfi_cmdset_0020._entry_ptr = internal global ptr @cfi_cmdset_0020._entry, section ".printk_index", align 4
@cfi_cmdset_0020.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&(cfi->chips[i].wq)\00", [44 x i8] zeroinitializer }, align 32
@__kstrtab_cfi_cmdset_0020 = external dso_local constant [0 x i8], align 1
@__kstrtabns_cfi_cmdset_0020 = external dso_local constant [0 x i8], align 1
@__ksymtab_cfi_cmdset_0020 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cfi_cmdset_0020 to i32), ptr @__kstrtab_cfi_cmdset_0020, ptr @__kstrtabns_cfi_cmdset_0020 }, section "___ksymtab_gpl+cfi_cmdset_0020", align 4
@__UNIQUE_ID_file197 = internal constant [55 x i8] c"cfi_cmdset_0020.file=drivers/mtd/chips/cfi_cmdset_0020\00", section ".modinfo", align 1
@__UNIQUE_ID_license198 = internal constant [28 x i8] c"cfi_cmdset_0020.license=GPL\00", section ".modinfo", align 1
@cfi_staa_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.3, i32 214, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"\014Sum of regions (%lx) != total size of set of interleaved chips (%lx)\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cfi_staa_setup\00", [17 x i8] zeroinitializer }, align 32
@cfi_staa_setup._entry_ptr = internal global ptr @cfi_staa_setup._entry, section ".printk_index", align 4
@cfi_staa_setup._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.6, ptr @.str.3, i32 225, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017%d: offset=0x%llx,size=0x%x,blocks=%d\0A\00", [55 x i8] zeroinitializer }, align 32
@cfi_staa_setup._entry_ptr.9 = internal global ptr @cfi_staa_setup._entry.7, section ".printk_index", align 4
@cfi_staa_chipdrv = internal global { %struct.mtd_chip_driver, [40 x i8] } { %struct.mtd_chip_driver { ptr null, ptr @cfi_staa_destroy, ptr null, ptr @.str.2, %struct.list_head zeroinitializer }, [40 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@do_erase_oneblock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.3, i32 766, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013waiting for chip to be ready timed out in erase\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"do_erase_oneblock\00", [46 x i8] zeroinitializer }, align 32
@do_erase_oneblock._entry_ptr = internal global ptr @do_erase_oneblock._entry, section ".printk_index", align 4
@do_erase_oneblock._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.11, ptr @.str.3, i32 825, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"\013waiting for erase to complete timed out. Xstatus = %lx, status = %lx.\0A\00", [55 x i8] zeroinitializer }, align 32
@do_erase_oneblock._entry_ptr.15 = internal global ptr @do_erase_oneblock._entry.13, section ".printk_index", align 4
@do_erase_oneblock._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.11, ptr @.str.3, i32 856, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"\014Status is not identical for all chips: 0x%lx. Merging to give 0x%02x\0A\00", [56 x i8] zeroinitializer }, align 32
@do_erase_oneblock._entry_ptr.18 = internal global ptr @do_erase_oneblock._entry.16, section ".printk_index", align 4
@do_erase_oneblock._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.11, ptr @.str.3, i32 863, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\015Chip reports improper command sequence: status 0x%x\0A\00", [41 x i8] zeroinitializer }, align 32
@do_erase_oneblock._entry_ptr.21 = internal global ptr @do_erase_oneblock._entry.19, section ".printk_index", align 4
@do_erase_oneblock._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.11, ptr @.str.3, i32 870, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\014Chip reports voltage low on erase: status 0x%x\0A\00", [46 x i8] zeroinitializer }, align 32
@do_erase_oneblock._entry_ptr.24 = internal global ptr @do_erase_oneblock._entry.22, section ".printk_index", align 4
@do_erase_oneblock._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.11, ptr @.str.3, i32 874, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\017Chip erase failed at 0x%08lx: status 0x%x. Retrying...\0A\00", [38 x i8] zeroinitializer }, align 32
@do_erase_oneblock._entry_ptr.27 = internal global ptr @do_erase_oneblock._entry.25, section ".printk_index", align 4
@do_erase_oneblock._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.11, ptr @.str.3, i32 880, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\017Chip erase failed at 0x%08lx: status 0x%x\0A\00", [51 x i8] zeroinitializer }, align 32
@do_erase_oneblock._entry_ptr.30 = internal global ptr @do_erase_oneblock._entry.28, section ".printk_index", align 4
@do_read_onechip._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.3, i32 301, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013Chip not ready after erase suspended: status = 0x%lx\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"do_read_onechip\00", [16 x i8] zeroinitializer }, align 32
@do_read_onechip._entry_ptr = internal global ptr @do_read_onechip._entry, section ".printk_index", align 4
@do_read_onechip._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.32, ptr @.str.3, i32 339, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\013waiting for chip to be ready timed out in read. WSM status = %lx\0A\00", [60 x i8] zeroinitializer }, align 32
@do_read_onechip._entry_ptr.35 = internal global ptr @do_read_onechip._entry.33, section ".printk_index", align 4
@do_write_buffer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.3, i32 473, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [86 x i8], [42 x i8] } { [86 x i8] c"\013waiting for chip to be ready timed out in buffer write Xstatus = %lx, status = %lx\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"do_write_buffer\00", [16 x i8] zeroinitializer }, align 32
@do_write_buffer._entry_ptr = internal global ptr @do_write_buffer._entry, section ".printk_index", align 4
@do_write_buffer._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.37, ptr @.str.3, i32 514, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013Chip not ready for buffer write. Xstatus = %lx\0A\00", [46 x i8] zeroinitializer }, align 32
@do_write_buffer._entry_ptr.40 = internal global ptr @do_write_buffer._entry.38, section ".printk_index", align 4
@do_write_buffer._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.37, ptr @.str.3, i32 565, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013waiting for chip to be ready timed out in bufwrite\0A\00", [42 x i8] zeroinitializer }, align 32
@do_write_buffer._entry_ptr.44 = internal global ptr @do_write_buffer._entry.42, section ".printk_index", align 4
@do_lock_oneblock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.3, i32 1063, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013waiting for chip to be ready timed out in lock\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"do_lock_oneblock\00", [47 x i8] zeroinitializer }, align 32
@do_lock_oneblock._entry_ptr = internal global ptr @do_lock_oneblock._entry, section ".printk_index", align 4
@do_lock_oneblock._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.46, ptr @.str.3, i32 1107, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"\013waiting for lock to complete timed out. Xstatus = %lx, status = %lx.\0A\00", [56 x i8] zeroinitializer }, align 32
@do_lock_oneblock._entry_ptr.49 = internal global ptr @do_lock_oneblock._entry.47, section ".printk_index", align 4
@do_unlock_oneblock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.3, i32 1209, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013waiting for chip to be ready timed out in unlock\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"do_unlock_oneblock\00", [45 x i8] zeroinitializer }, align 32
@do_unlock_oneblock._entry_ptr = internal global ptr @do_unlock_oneblock._entry, section ".printk_index", align 4
@do_unlock_oneblock._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.51, ptr @.str.3, i32 1253, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"\013waiting for unlock to complete timed out. Xstatus = %lx, status = %lx.\0A\00", [54 x i8] zeroinitializer }, align 32
@do_unlock_oneblock._entry_ptr.54 = internal global ptr @do_unlock_oneblock._entry.52, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 3]
@__sancov_gen_cov_switch_values.55 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 13]
@__sancov_gen_cov_switch_values.56 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 12]
@__sancov_gen_cov_switch_values.57 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.58 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.59 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.60 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.61 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.62 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 127, i32 74 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 133, i32 4 }
@___asan_gen_.78 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 159, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 214, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 222, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant [17 x i8] c"cfi_staa_chipdrv\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 54, i32 31 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 766, i32 4 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 825, i32 4 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 855, i32 4 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 863, i32 4 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 870, i32 4 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 874, i32 5 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 880, i32 4 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 300, i32 5 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 339, i32 4 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 472, i32 25 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 514, i32 4 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 565, i32 4 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 1063, i32 4 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 1107, i32 4 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 1209, i32 4 }
@___asan_gen_.207 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.210 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.211 = private constant [39 x i8] c"../drivers/mtd/chips/cfi_cmdset_0020.c\00", align 1
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 1253, i32 4 }
@llvm.compiler.used = appending global [72 x ptr] [ptr @__UNIQUE_ID_file197, ptr @__UNIQUE_ID_license198, ptr @__ksymtab_cfi_cmdset_0020, ptr @cfi_cmdset_0020._entry, ptr @cfi_cmdset_0020._entry_ptr, ptr @cfi_staa_setup._entry, ptr @cfi_staa_setup._entry.7, ptr @cfi_staa_setup._entry_ptr, ptr @cfi_staa_setup._entry_ptr.9, ptr @do_erase_oneblock._entry, ptr @do_erase_oneblock._entry.13, ptr @do_erase_oneblock._entry.16, ptr @do_erase_oneblock._entry.19, ptr @do_erase_oneblock._entry.22, ptr @do_erase_oneblock._entry.25, ptr @do_erase_oneblock._entry.28, ptr @do_erase_oneblock._entry_ptr, ptr @do_erase_oneblock._entry_ptr.15, ptr @do_erase_oneblock._entry_ptr.18, ptr @do_erase_oneblock._entry_ptr.21, ptr @do_erase_oneblock._entry_ptr.24, ptr @do_erase_oneblock._entry_ptr.27, ptr @do_erase_oneblock._entry_ptr.30, ptr @do_lock_oneblock._entry, ptr @do_lock_oneblock._entry.47, ptr @do_lock_oneblock._entry_ptr, ptr @do_lock_oneblock._entry_ptr.49, ptr @do_read_onechip._entry, ptr @do_read_onechip._entry.33, ptr @do_read_onechip._entry_ptr, ptr @do_read_onechip._entry_ptr.35, ptr @do_unlock_oneblock._entry, ptr @do_unlock_oneblock._entry.52, ptr @do_unlock_oneblock._entry_ptr, ptr @do_unlock_oneblock._entry_ptr.54, ptr @do_write_buffer._entry, ptr @do_write_buffer._entry.38, ptr @do_write_buffer._entry.42, ptr @do_write_buffer._entry_ptr, ptr @do_write_buffer._entry_ptr.40, ptr @do_write_buffer._entry_ptr.44, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @cfi_cmdset_0020.__key, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @cfi_staa_chipdrv, ptr @.str.10, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @.str.29, ptr @.str.31, ptr @.str.32, ptr @.str.34, ptr @.str.36, ptr @.str.37, ptr @.str.39, ptr @.str.43, ptr @.str.45, ptr @.str.46, ptr @.str.48, ptr @.str.50, ptr @.str.51, ptr @.str.53], section "llvm.metadata"
@0 = internal global [50 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfi_cmdset_0020._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfi_cmdset_0020.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfi_staa_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfi_staa_setup._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfi_staa_chipdrv to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_erase_oneblock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_erase_oneblock._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_erase_oneblock._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_erase_oneblock._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_erase_oneblock._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_erase_oneblock._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_erase_oneblock._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_read_onechip._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_read_onechip._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_write_buffer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 86, i32 128, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_write_buffer._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_write_buffer._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_lock_oneblock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_lock_oneblock._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_unlock_oneblock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_unlock_oneblock._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @cfi_cmdset_0020(ptr noundef %map, i32 noundef %primary) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %fldrv_priv = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 17
  %0 = ptrtoint ptr %fldrv_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fldrv_priv, align 4
  %cfi_mode = getelementptr inbounds %struct.cfi_private, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %cfi_mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cfi_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end82_crit_edge, label %if.then

entry.if.end82_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end82

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %primary)
  %tobool1.not = icmp eq i32 %primary, 0
  %cfiq2 = getelementptr inbounds %struct.cfi_private, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %cfiq2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cfiq2, align 4
  %P_ADR = getelementptr inbounds %struct.cfi_ident, ptr %5, i32 0, i32 2
  %A_ADR = getelementptr inbounds %struct.cfi_ident, ptr %5, i32 0, i32 4
  %cond.in.in = select i1 %tobool1.not, ptr %A_ADR, ptr %P_ADR
  %6 = ptrtoint ptr %cond.in.in to i32
  call void @__asan_loadN_noabort(i32 %6, i32 2)
  %cond.in139 = load i16, ptr %cond.in.in, align 1
  %call = tail call ptr @cfi_read_pri(ptr noundef %map, i16 noundef zeroext %cond.in139, i16 noundef zeroext 19, ptr noundef nonnull @.str) #10
  %tobool5.not = icmp eq ptr %call, null
  br i1 %tobool5.not, label %if.then.cleanup97_crit_edge, label %if.end

if.then.cleanup97_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup97

if.end:                                           ; preds = %if.then
  %MajorVersion = getelementptr inbounds %struct.cfi_pri_intelext, ptr %call, i32 0, i32 1
  %7 = ptrtoint ptr %MajorVersion to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %MajorVersion, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 49, i8 %8)
  %cmp.not = icmp eq i8 %8, 49
  br i1 %cmp.not, label %lor.lhs.false, label %if.end.do.end_crit_edge

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

lor.lhs.false:                                    ; preds = %if.end
  %MinorVersion = getelementptr inbounds %struct.cfi_pri_intelext, ptr %call, i32 0, i32 2
  %9 = ptrtoint ptr %MinorVersion to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %MinorVersion, align 1
  %11 = add i8 %10, -52
  call void @__sanitizer_cov_trace_const_cmp1(i8 -4, i8 %11)
  %12 = icmp ult i8 %11, -4
  br i1 %12, label %lor.lhs.false.do.end_crit_edge, label %if.end23

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %if.end.do.end_crit_edge
  %conv19 = zext i8 %8 to i32
  %MinorVersion20 = getelementptr inbounds %struct.cfi_pri_intelext, ptr %call, i32 0, i32 2
  %13 = ptrtoint ptr %MinorVersion20 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %MinorVersion20, align 1
  %conv21 = zext i8 %14 to i32
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %conv19, i32 noundef %conv21) #13
  tail call void @kfree(ptr noundef nonnull %call) #10
  br label %cleanup97

if.end23:                                         ; preds = %lor.lhs.false
  %swap = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 5
  %15 = ptrtoint ptr %swap to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %swap, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %16)
  %17 = icmp ult i32 %16, 2
  br i1 %17, label %cond.true31, label %cond.false32

cond.true31:                                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  %FeatureSupport = getelementptr inbounds %struct.cfi_pri_intelext, ptr %call, i32 0, i32 3
  %18 = ptrtoint ptr %FeatureSupport to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %19 = load i32, ptr %FeatureSupport, align 1
  br label %cond.end47

cond.false32:                                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %16)
  %cmp39 = icmp eq i32 %16, 3
  %FeatureSupport42 = getelementptr inbounds %struct.cfi_pri_intelext, ptr %call, i32 0, i32 3
  %20 = ptrtoint ptr %FeatureSupport42 to i32
  call void @__asan_loadN_noabort(i32 %20, i32 4)
  %21 = load i32, ptr %FeatureSupport42, align 1
  %22 = tail call i32 @llvm.bswap.i32(i32 %21)
  %spec.select = select i1 %cmp39, i32 %21, i32 %22
  br label %cond.end47

cond.end47:                                       ; preds = %cond.false32, %cond.true31
  %cond48 = phi i32 [ %19, %cond.true31 ], [ %spec.select, %cond.false32 ]
  %FeatureSupport49 = getelementptr inbounds %struct.cfi_pri_intelext, ptr %call, i32 0, i32 3
  %23 = ptrtoint ptr %FeatureSupport49 to i32
  call void @__asan_storeN_noabort(i32 %23, i32 4)
  store i32 %cond48, ptr %FeatureSupport49, align 1
  %24 = ptrtoint ptr %swap to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %swap, align 4
  %26 = zext i32 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values)
  switch i32 %25, label %cond.end47.cond.end77_crit_edge [
    i32 3, label %cond.end47.cond.end77.sink.split_crit_edge
    i32 1, label %cond.end47.cond.end77.sink.split_crit_edge144
    i32 0, label %cond.end47.cond.end77.sink.split_crit_edge145
  ]

cond.end47.cond.end77.sink.split_crit_edge145:    ; preds = %cond.end47
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end77.sink.split

cond.end47.cond.end77.sink.split_crit_edge144:    ; preds = %cond.end47
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end77.sink.split

cond.end47.cond.end77.sink.split_crit_edge:       ; preds = %cond.end47
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end77.sink.split

cond.end47.cond.end77_crit_edge:                  ; preds = %cond.end47
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end77

cond.end77.sink.split:                            ; preds = %cond.end47.cond.end77.sink.split_crit_edge, %cond.end47.cond.end77.sink.split_crit_edge144, %cond.end47.cond.end77.sink.split_crit_edge145
  %BlkStatusRegMask70 = getelementptr inbounds %struct.cfi_pri_intelext, ptr %call, i32 0, i32 5
  %27 = ptrtoint ptr %BlkStatusRegMask70 to i32
  call void @__asan_loadN_noabort(i32 %27, i32 2)
  %28 = load i16, ptr %BlkStatusRegMask70, align 1
  br label %cond.end77

cond.end77:                                       ; preds = %cond.end77.sink.split, %cond.end47.cond.end77_crit_edge
  %cond78.shrunk = phi i16 [ %28, %cond.end77.sink.split ], [ 0, %cond.end47.cond.end77_crit_edge ]
  %BlkStatusRegMask80 = getelementptr inbounds %struct.cfi_pri_intelext, ptr %call, i32 0, i32 5
  %29 = ptrtoint ptr %BlkStatusRegMask80 to i32
  call void @__asan_storeN_noabort(i32 %29, i32 2)
  store i16 %cond78.shrunk, ptr %BlkStatusRegMask80, align 1
  %cmdset_priv = getelementptr inbounds %struct.cfi_private, ptr %1, i32 0, i32 1
  %30 = ptrtoint ptr %cmdset_priv to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call, ptr %cmdset_priv, align 4
  br label %if.end82

if.end82:                                         ; preds = %cond.end77, %entry.if.end82_crit_edge
  %numchips = getelementptr inbounds %struct.cfi_private, ptr %1, i32 0, i32 11
  %31 = ptrtoint ptr %numchips to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %numchips, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp83142 = icmp sgt i32 %32, 0
  br i1 %cmp83142, label %if.end82.for.body_crit_edge, label %if.end82.for.end_crit_edge

if.end82.for.end_crit_edge:                       ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end82.for.body_crit_edge:                      ; preds = %if.end82
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end82.for.body_crit_edge
  %i.0143 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end82.for.body_crit_edge ]
  %word_write_time = getelementptr %struct.cfi_private, ptr %1, i32 0, i32 15, i32 %i.0143, i32 9
  %33 = ptrtoint ptr %word_write_time to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 128, ptr %word_write_time, align 4
  %buffer_write_time = getelementptr %struct.cfi_private, ptr %1, i32 0, i32 15, i32 %i.0143, i32 10
  %34 = ptrtoint ptr %buffer_write_time to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 128, ptr %buffer_write_time, align 4
  %erase_time = getelementptr %struct.cfi_private, ptr %1, i32 0, i32 15, i32 %i.0143, i32 11
  %35 = ptrtoint ptr %erase_time to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 1024, ptr %erase_time, align 4
  %ref_point_counter = getelementptr %struct.cfi_private, ptr %1, i32 0, i32 15, i32 %i.0143, i32 1
  %36 = ptrtoint ptr %ref_point_counter to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %ref_point_counter, align 4
  %wq = getelementptr %struct.cfi_private, ptr %1, i32 0, i32 15, i32 %i.0143, i32 8
  tail call void @__init_waitqueue_head(ptr noundef %wq, ptr noundef nonnull @.str.4, ptr noundef nonnull @cfi_cmdset_0020.__key) #10
  %inc = add nuw nsw i32 %i.0143, 1
  %37 = ptrtoint ptr %numchips to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %numchips, align 4
  %cmp83 = icmp slt i32 %inc, %38
  br i1 %cmp83, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end82.for.end_crit_edge
  %39 = ptrtoint ptr %fldrv_priv to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %fldrv_priv, align 4
  %cfiq.i = getelementptr inbounds %struct.cfi_private, ptr %40, i32 0, i32 8
  %41 = ptrtoint ptr %cfiq.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %cfiq.i, align 4
  %DevSize.i = getelementptr inbounds %struct.cfi_ident, ptr %42, i32 0, i32 17
  %43 = ptrtoint ptr %DevSize.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %DevSize.i, align 1
  %conv.i = zext i8 %44 to i32
  %interleave.i = getelementptr inbounds %struct.cfi_private, ptr %40, i32 0, i32 2
  %45 = ptrtoint ptr %interleave.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %interleave.i, align 4
  %mul.i = shl i32 %46, %conv.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %47 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %47, i32 noundef 3520, i32 noundef 1408) #14
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %cmdset_priv.i = getelementptr inbounds %struct.cfi_private, ptr %40, i32 0, i32 1
  %48 = ptrtoint ptr %cmdset_priv.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %cmdset_priv.i, align 4
  tail call void @kfree(ptr noundef %49) #10
  br label %cleanup97

if.end.i:                                         ; preds = %for.end
  %priv.i = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i.i, i32 0, i32 54
  %50 = ptrtoint ptr %priv.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %map, ptr %priv.i, align 8
  %51 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 3, ptr %call7.i.i.i, align 8
  %numchips.i = getelementptr inbounds %struct.cfi_private, ptr %40, i32 0, i32 11
  %52 = ptrtoint ptr %numchips.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %numchips.i, align 4
  %mul1.i = mul i32 %53, %mul.i
  %conv2.i = zext i32 %mul1.i to i64
  %size.i = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i.i, i32 0, i32 2
  %54 = ptrtoint ptr %size.i to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 %conv2.i, ptr %size.i, align 8
  %55 = ptrtoint ptr %cfiq.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %cfiq.i, align 4
  %NumEraseRegions.i = getelementptr inbounds %struct.cfi_ident, ptr %56, i32 0, i32 20
  %57 = ptrtoint ptr %NumEraseRegions.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %NumEraseRegions.i, align 1
  %conv4.i = zext i8 %58 to i32
  %59 = load i32, ptr %numchips.i, align 4
  %mul6.i = mul i32 %59, %conv4.i
  %numeraseregions.i = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i.i, i32 0, i32 19
  %60 = ptrtoint ptr %numeraseregions.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %mul6.i, ptr %numeraseregions.i, align 8
  %61 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %mul6.i, i32 24) #10
  %62 = extractvalue { i32, i1 } %61, 1
  br i1 %62, label %kmalloc_array.exit.thread.i, label %if.end7.i.i, !prof !122

kmalloc_array.exit.thread.i:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %eraseregions187.i = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i.i, i32 0, i32 20
  %63 = ptrtoint ptr %eraseregions187.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr null, ptr %eraseregions187.i, align 4
  br label %if.then11.i

if.end7.i.i:                                      ; preds = %if.end.i
  %64 = extractvalue { i32, i1 } %61, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %64, i32 noundef 3264) #15
  %eraseregions.i = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i.i, i32 0, i32 20
  %65 = ptrtoint ptr %eraseregions.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %call8.i.i, ptr %eraseregions.i, align 4
  %tobool10.not.i = icmp eq ptr %call8.i.i, null
  br i1 %tobool10.not.i, label %if.end7.i.i.if.then11.i_crit_edge, label %for.cond.preheader.i

if.end7.i.i.if.then11.i_crit_edge:                ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i

for.cond.preheader.i:                             ; preds = %if.end7.i.i
  %66 = ptrtoint ptr %cfiq.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %cfiq.i, align 4
  %NumEraseRegions15191.i = getelementptr inbounds %struct.cfi_ident, ptr %67, i32 0, i32 20
  %68 = ptrtoint ptr %NumEraseRegions15191.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %NumEraseRegions15191.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %cmp193.not.i = icmp eq i8 %69, 0
  br i1 %cmp193.not.i, label %for.cond.preheader.i.for.end65.i_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.for.end65.i_crit_edge:       ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end65.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %erasesize.i = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i.i, i32 0, i32 3
  br label %for.body.i

if.then11.i:                                      ; preds = %if.end7.i.i.if.then11.i_crit_edge, %kmalloc_array.exit.thread.i
  %cmdset_priv12.i = getelementptr inbounds %struct.cfi_private, ptr %40, i32 0, i32 1
  %70 = ptrtoint ptr %cmdset_priv12.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %cmdset_priv12.i, align 4
  tail call void @kfree(ptr noundef %71) #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #10
  br label %cleanup97

for.body.i:                                       ; preds = %for.end.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %72 = phi ptr [ %67, %for.body.lr.ph.i ], [ %102, %for.end.i.for.body.i_crit_edge ]
  %i.0195.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc64.i, %for.end.i.for.body.i_crit_edge ]
  %offset.0194.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add62.i, %for.end.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.cfi_ident, ptr %72, i32 0, i32 21, i32 %i.0195.i
  %73 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_loadN_noabort(i32 %73, i32 4)
  %74 = load i32, ptr %arrayidx.i, align 1
  %shr.i = lshr i32 %74, 8
  %and.i = and i32 %shr.i, 16776960
  %75 = ptrtoint ptr %interleave.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %interleave.i, align 4
  %mul20.i = mul i32 %and.i, %76
  %and24.i = and i32 %74, 65535
  %add.i = add nuw nsw i32 %and24.i, 1
  %77 = ptrtoint ptr %erasesize.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %erasesize.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %78, i32 %mul20.i)
  %cmp25.i = icmp ult i32 %78, %mul20.i
  br i1 %cmp25.i, label %if.then27.i, label %for.body.i.if.end29.i_crit_edge

for.body.i.if.end29.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29.i

if.then27.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %79 = ptrtoint ptr %erasesize.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %mul20.i, ptr %erasesize.i, align 8
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.then27.i, %for.body.i.if.end29.i_crit_edge
  %80 = ptrtoint ptr %numchips.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %numchips.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %cmp32189.i = icmp sgt i32 %81, 0
  br i1 %cmp32189.i, label %if.end29.i.for.body34.i_crit_edge, label %if.end29.i.for.end.i_crit_edge

if.end29.i.for.end.i_crit_edge:                   ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

if.end29.i.for.body34.i_crit_edge:                ; preds = %if.end29.i
  br label %for.body34.i

for.body34.i:                                     ; preds = %for.body34.i.for.body34.i_crit_edge, %if.end29.i.for.body34.i_crit_edge
  %j.0190.i = phi i32 [ %inc.i, %for.body34.i.for.body34.i_crit_edge ], [ 0, %if.end29.i.for.body34.i_crit_edge ]
  %mul35.i = mul i32 %j.0190.i, %mul.i
  %add36.i = add i32 %mul35.i, %offset.0194.i
  %conv37.i = zext i32 %add36.i to i64
  %82 = ptrtoint ptr %eraseregions.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %eraseregions.i, align 4
  %84 = ptrtoint ptr %cfiq.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %cfiq.i, align 4
  %NumEraseRegions40.i = getelementptr inbounds %struct.cfi_ident, ptr %85, i32 0, i32 20
  %86 = ptrtoint ptr %NumEraseRegions40.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %NumEraseRegions40.i, align 1
  %conv41.i = zext i8 %87 to i32
  %mul42.i = mul i32 %j.0190.i, %conv41.i
  %add43.i = add i32 %mul42.i, %i.0195.i
  %arrayidx44.i = getelementptr %struct.mtd_erase_region_info, ptr %83, i32 %add43.i
  %88 = ptrtoint ptr %arrayidx44.i to i32
  call void @__asan_store8_noabort(i32 %88)
  store i64 %conv37.i, ptr %arrayidx44.i, align 8
  %89 = load ptr, ptr %eraseregions.i, align 4
  %90 = load ptr, ptr %cfiq.i, align 4
  %NumEraseRegions48.i = getelementptr inbounds %struct.cfi_ident, ptr %90, i32 0, i32 20
  %91 = ptrtoint ptr %NumEraseRegions48.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %NumEraseRegions48.i, align 1
  %conv49.i = zext i8 %92 to i32
  %mul50.i = mul i32 %j.0190.i, %conv49.i
  %add51.i = add i32 %mul50.i, %i.0195.i
  %erasesize53.i = getelementptr %struct.mtd_erase_region_info, ptr %89, i32 %add51.i, i32 1
  %93 = ptrtoint ptr %erasesize53.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %mul20.i, ptr %erasesize53.i, align 8
  %94 = load ptr, ptr %eraseregions.i, align 4
  %95 = load ptr, ptr %cfiq.i, align 4
  %NumEraseRegions56.i = getelementptr inbounds %struct.cfi_ident, ptr %95, i32 0, i32 20
  %96 = ptrtoint ptr %NumEraseRegions56.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %NumEraseRegions56.i, align 1
  %conv57.i = zext i8 %97 to i32
  %mul58.i = mul i32 %j.0190.i, %conv57.i
  %add59.i = add i32 %mul58.i, %i.0195.i
  %numblocks.i = getelementptr %struct.mtd_erase_region_info, ptr %94, i32 %add59.i, i32 2
  %98 = ptrtoint ptr %numblocks.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %add.i, ptr %numblocks.i, align 4
  %inc.i = add nuw nsw i32 %j.0190.i, 1
  %99 = ptrtoint ptr %numchips.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %numchips.i, align 4
  %cmp32.i = icmp slt i32 %inc.i, %100
  br i1 %cmp32.i, label %for.body34.i.for.body34.i_crit_edge, label %for.body34.i.for.end.i_crit_edge

for.body34.i.for.end.i_crit_edge:                 ; preds = %for.body34.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.body34.i.for.body34.i_crit_edge:              ; preds = %for.body34.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body34.i

for.end.i:                                        ; preds = %for.body34.i.for.end.i_crit_edge, %if.end29.i.for.end.i_crit_edge
  %mul61.i = mul i32 %mul20.i, %add.i
  %add62.i = add i32 %mul61.i, %offset.0194.i
  %inc64.i = add nuw nsw i32 %i.0195.i, 1
  %101 = ptrtoint ptr %cfiq.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %cfiq.i, align 4
  %NumEraseRegions15.i = getelementptr inbounds %struct.cfi_ident, ptr %102, i32 0, i32 20
  %103 = ptrtoint ptr %NumEraseRegions15.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %NumEraseRegions15.i, align 1
  %conv16.i = zext i8 %104 to i32
  %cmp.i = icmp ult i32 %inc64.i, %conv16.i
  br i1 %cmp.i, label %for.end.i.for.body.i_crit_edge, label %for.end.i.for.end65.i_crit_edge

for.end.i.for.end65.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end65.i

for.end.i.for.body.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.end65.i:                                      ; preds = %for.end.i.for.end65.i_crit_edge, %for.cond.preheader.i.for.end65.i_crit_edge
  %offset.0.lcssa.i = phi i32 [ 0, %for.cond.preheader.i.for.end65.i_crit_edge ], [ %add62.i, %for.end.i.for.end65.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %offset.0.lcssa.i, i32 %mul.i)
  %cmp66.not.i = icmp eq i32 %offset.0.lcssa.i, %mul.i
  br i1 %cmp66.not.i, label %for.cond73.preheader.i, label %do.end.i

for.cond73.preheader.i:                           ; preds = %for.end65.i
  %105 = ptrtoint ptr %numeraseregions.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %numeraseregions.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %cmp75197.i = icmp sgt i32 %106, 0
  br i1 %cmp75197.i, label %for.cond73.preheader.i.do.end80.i_crit_edge, label %for.cond73.preheader.i.for.end94.i_crit_edge

for.cond73.preheader.i.for.end94.i_crit_edge:     ; preds = %for.cond73.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end94.i

for.cond73.preheader.i.do.end80.i_crit_edge:      ; preds = %for.cond73.preheader.i
  br label %do.end80.i

do.end.i:                                         ; preds = %for.end65.i
  call void @__sanitizer_cov_trace_pc() #12
  %call69.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %offset.0.lcssa.i, i32 noundef %mul.i) #13
  %107 = ptrtoint ptr %eraseregions.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %eraseregions.i, align 4
  tail call void @kfree(ptr noundef %108) #10
  %cmdset_priv71.i = getelementptr inbounds %struct.cfi_private, ptr %40, i32 0, i32 1
  %109 = ptrtoint ptr %cmdset_priv71.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %cmdset_priv71.i, align 4
  tail call void @kfree(ptr noundef %110) #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #10
  br label %cleanup97

do.end80.i:                                       ; preds = %do.end80.i.do.end80.i_crit_edge, %for.cond73.preheader.i.do.end80.i_crit_edge
  %i.1198.i = phi i32 [ %inc93.i, %do.end80.i.do.end80.i_crit_edge ], [ 0, %for.cond73.preheader.i.do.end80.i_crit_edge ]
  %111 = ptrtoint ptr %eraseregions.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %eraseregions.i, align 4
  %arrayidx83.i = getelementptr %struct.mtd_erase_region_info, ptr %112, i32 %i.1198.i
  %113 = ptrtoint ptr %arrayidx83.i to i32
  call void @__asan_load8_noabort(i32 %113)
  %114 = load i64, ptr %arrayidx83.i, align 8
  %erasesize87.i = getelementptr %struct.mtd_erase_region_info, ptr %112, i32 %i.1198.i, i32 1
  %115 = ptrtoint ptr %erasesize87.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %erasesize87.i, align 8
  %numblocks90.i = getelementptr %struct.mtd_erase_region_info, ptr %112, i32 %i.1198.i, i32 2
  %117 = ptrtoint ptr %numblocks90.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %numblocks90.i, align 4
  %call91.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %i.1198.i, i64 noundef %114, i32 noundef %116, i32 noundef %118) #13
  %inc93.i = add nuw nsw i32 %i.1198.i, 1
  %119 = ptrtoint ptr %numeraseregions.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %numeraseregions.i, align 8
  %cmp75.i = icmp slt i32 %inc93.i, %120
  br i1 %cmp75.i, label %do.end80.i.do.end80.i_crit_edge, label %do.end80.i.for.end94.i_crit_edge

do.end80.i.for.end94.i_crit_edge:                 ; preds = %do.end80.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end94.i

do.end80.i.do.end80.i_crit_edge:                  ; preds = %do.end80.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end80.i

for.end94.i:                                      ; preds = %do.end80.i.for.end94.i_crit_edge, %for.cond73.preheader.i.for.end94.i_crit_edge
  %_erase.i = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i.i, i32 0, i32 21
  %121 = ptrtoint ptr %_erase.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr @cfi_staa_erase_varsize, ptr %_erase.i, align 8
  %_read.i = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i.i, i32 0, i32 24
  %122 = ptrtoint ptr %_read.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr @cfi_staa_read, ptr %_read.i, align 4
  %_write.i = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i.i, i32 0, i32 25
  %123 = ptrtoint ptr %_write.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr @cfi_staa_write_buffers, ptr %_write.i, align 8
  %_writev.i = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i.i, i32 0, i32 36
  %124 = ptrtoint ptr %_writev.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr @cfi_staa_writev, ptr %_writev.i, align 4
  %_sync.i = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i.i, i32 0, i32 37
  %125 = ptrtoint ptr %_sync.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr @cfi_staa_sync, ptr %_sync.i, align 8
  %_lock.i = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i.i, i32 0, i32 38
  %126 = ptrtoint ptr %_lock.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr @cfi_staa_lock, ptr %_lock.i, align 4
  %_unlock.i = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i.i, i32 0, i32 39
  %127 = ptrtoint ptr %_unlock.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr @cfi_staa_unlock, ptr %_unlock.i, align 8
  %_suspend.i = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i.i, i32 0, i32 45
  %128 = ptrtoint ptr %_suspend.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr @cfi_staa_suspend, ptr %_suspend.i, align 8
  %_resume.i = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i.i, i32 0, i32 46
  %129 = ptrtoint ptr %_resume.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr @cfi_staa_resume, ptr %_resume.i, align 4
  %flags.i = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i.i, i32 0, i32 1
  %130 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 1024, ptr %flags.i, align 4
  %writesize.i = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i.i, i32 0, i32 4
  %131 = ptrtoint ptr %writesize.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 8, ptr %writesize.i, align 4
  %132 = ptrtoint ptr %interleave.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %interleave.i, align 4
  %134 = ptrtoint ptr %cfiq.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %cfiq.i, align 4
  %MaxBufWriteSize.i = getelementptr inbounds %struct.cfi_ident, ptr %135, i32 0, i32 19
  %136 = ptrtoint ptr %MaxBufWriteSize.i to i32
  call void @__asan_loadN_noabort(i32 %136, i32 2)
  %137 = load i16, ptr %MaxBufWriteSize.i, align 1
  %conv97.i = zext i16 %137 to i32
  %shl98.i = shl i32 %133, %conv97.i
  %writebufsize.i = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i.i, i32 0, i32 5
  %138 = ptrtoint ptr %writebufsize.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %shl98.i, ptr %writebufsize.i, align 8
  %fldrv.i = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 18
  %139 = ptrtoint ptr %fldrv.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr @cfi_staa_chipdrv, ptr %fldrv.i, align 4
  tail call void @__module_get(ptr noundef null) #10
  %140 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %map, align 4
  %name99.i = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i.i, i32 0, i32 13
  %142 = ptrtoint ptr %name99.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr %141, ptr %name99.i, align 8
  br label %cleanup97

cleanup97:                                        ; preds = %for.end94.i, %do.end.i, %if.then11.i, %if.then.i, %do.end, %if.then.cleanup97_crit_edge
  %retval.1 = phi ptr [ null, %if.then.cleanup97_crit_edge ], [ null, %do.end ], [ null, %do.end.i ], [ %call7.i.i.i, %for.end94.i ], [ null, %if.then11.i ], [ null, %if.then.i ]
  ret ptr %retval.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cfi_read_pri(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cfi_staa_erase_varsize(ptr nocapture noundef readonly %mtd, ptr nocapture noundef readonly %instr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 54
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %fldrv_priv = getelementptr inbounds %struct.map_info, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %fldrv_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fldrv_priv, align 4
  %eraseregions = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 20
  %4 = ptrtoint ptr %eraseregions to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %eraseregions, align 4
  %numeraseregions = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 19
  %6 = ptrtoint ptr %numeraseregions to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %numeraseregions, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp140 = icmp sgt i32 %7, 0
  br i1 %cmp140, label %land.rhs.lr.ph, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

land.rhs.lr.ph:                                   ; preds = %entry
  %8 = ptrtoint ptr %instr to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %instr, align 8
  br label %land.rhs

land.rhs:                                         ; preds = %while.body.land.rhs_crit_edge, %land.rhs.lr.ph
  %i.0141 = phi i32 [ 0, %land.rhs.lr.ph ], [ %inc, %while.body.land.rhs_crit_edge ]
  %arrayidx = getelementptr %struct.mtd_erase_region_info, ptr %5, i32 %i.0141
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %arrayidx, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %9, i64 %11)
  %cmp1.not = icmp ult i64 %9, %11
  br i1 %cmp1.not, label %land.rhs.while.end_crit_edge, label %while.body

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body:                                       ; preds = %land.rhs
  %inc = add nuw nsw i32 %i.0141, 1
  %exitcond.not = icmp eq i32 %inc, %7
  br i1 %exitcond.not, label %while.body.while.end_crit_edge, label %while.body.land.rhs_crit_edge

while.body.land.rhs_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %land.rhs.while.end_crit_edge, %entry.while.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %entry.while.end_crit_edge ], [ %7, %while.body.while.end_crit_edge ], [ %i.0141, %land.rhs.while.end_crit_edge ]
  %dec = add nsw i32 %i.0.lcssa, -1
  %12 = ptrtoint ptr %instr to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %instr, align 8
  %erasesize = getelementptr %struct.mtd_erase_region_info, ptr %5, i32 %dec, i32 1
  %14 = ptrtoint ptr %erasesize to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %erasesize, align 8
  %sub = add i32 %15, -1
  %conv = zext i32 %sub to i64
  %and = and i64 %13, %conv
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %while.cond4.preheader, label %while.end.cleanup_crit_edge

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.cond4.preheader:                            ; preds = %while.end
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa, i32 %7)
  %cmp6145.not = icmp sgt i32 %i.0.lcssa, %7
  br i1 %cmp6145.not, label %while.cond4.preheader.while.end18_crit_edge, label %land.rhs8.lr.ph

while.cond4.preheader.while.end18_crit_edge:      ; preds = %while.cond4.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end18

land.rhs8.lr.ph:                                  ; preds = %while.cond4.preheader
  %len10 = getelementptr inbounds %struct.erase_info, ptr %instr, i32 0, i32 1
  %16 = ptrtoint ptr %len10 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %len10, align 8
  %add = add i64 %17, %13
  br label %land.rhs8

land.rhs8:                                        ; preds = %while.body16.land.rhs8_crit_edge, %land.rhs8.lr.ph
  %i.1146 = phi i32 [ %dec, %land.rhs8.lr.ph ], [ %inc17, %while.body16.land.rhs8_crit_edge ]
  %arrayidx11 = getelementptr %struct.mtd_erase_region_info, ptr %5, i32 %i.1146
  %18 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %arrayidx11, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %19)
  %cmp13.not = icmp ult i64 %add, %19
  br i1 %cmp13.not, label %land.rhs8.while.end18_crit_edge, label %while.body16

land.rhs8.while.end18_crit_edge:                  ; preds = %land.rhs8
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end18

while.body16:                                     ; preds = %land.rhs8
  %inc17 = add nsw i32 %i.1146, 1
  %exitcond157.not = icmp eq i32 %inc17, %7
  br i1 %exitcond157.not, label %while.body16.while.end18_crit_edge, label %while.body16.land.rhs8_crit_edge

while.body16.land.rhs8_crit_edge:                 ; preds = %while.body16
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs8

while.body16.while.end18_crit_edge:               ; preds = %while.body16
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end18

while.end18:                                      ; preds = %while.body16.while.end18_crit_edge, %land.rhs8.while.end18_crit_edge, %while.cond4.preheader.while.end18_crit_edge
  %i.1.lcssa = phi i32 [ %dec, %while.cond4.preheader.while.end18_crit_edge ], [ %7, %while.body16.while.end18_crit_edge ], [ %i.1146, %land.rhs8.while.end18_crit_edge ]
  %dec19 = add i32 %i.1.lcssa, -1
  %len21 = getelementptr inbounds %struct.erase_info, ptr %instr, i32 0, i32 1
  %20 = ptrtoint ptr %len21 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %len21, align 8
  %add22 = add i64 %21, %13
  %erasesize24 = getelementptr %struct.mtd_erase_region_info, ptr %5, i32 %dec19, i32 1
  %22 = ptrtoint ptr %erasesize24 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %erasesize24, align 8
  %sub25 = add i32 %23, -1
  %conv26 = zext i32 %sub25 to i64
  %and27 = and i64 %add22, %conv26
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and27)
  %tobool28.not = icmp eq i64 %and27, 0
  br i1 %tobool28.not, label %if.end30, label %while.end18.cleanup_crit_edge

while.end18.cleanup_crit_edge:                    ; preds = %while.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end30:                                         ; preds = %while.end18
  %chipshift = getelementptr inbounds %struct.cfi_private, ptr %3, i32 0, i32 13
  %conv39 = trunc i64 %21 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv39)
  %tobool41.not149 = icmp eq i32 %conv39, 0
  br i1 %tobool41.not149, label %if.end30.cleanup_crit_edge, label %while.body42.lr.ph

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.body42.lr.ph:                               ; preds = %if.end30
  %24 = trunc i64 %13 to i32
  %25 = ptrtoint ptr %chipshift to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %chipshift, align 4
  %sh_prom = zext i32 %26 to i64
  %shr = lshr i64 %13, %sh_prom
  %conv32 = trunc i64 %shr to i32
  %shl = shl i32 %conv32, %26
  %conv37 = sub i32 %24, %shl
  %numchips = getelementptr inbounds %struct.cfi_private, ptr %3, i32 0, i32 11
  br label %while.body42

while.body42:                                     ; preds = %if.end79.while.body42_crit_edge, %while.body42.lr.ph
  %i.2153 = phi i32 [ %dec, %while.body42.lr.ph ], [ %spec.select, %if.end79.while.body42_crit_edge ]
  %chipnum.0152 = phi i32 [ %conv32, %while.body42.lr.ph ], [ %chipnum.1, %if.end79.while.body42_crit_edge ]
  %len.0151 = phi i32 [ %conv39, %while.body42.lr.ph ], [ %sub52, %if.end79.while.body42_crit_edge ]
  %adr.0150 = phi i32 [ %conv37, %while.body42.lr.ph ], [ %adr.1, %if.end79.while.body42_crit_edge ]
  %arrayidx43 = getelementptr %struct.cfi_private, ptr %3, i32 0, i32 15, i32 %chipnum.0152
  %call = tail call fastcc i32 @do_erase_oneblock(ptr noundef %1, ptr noundef %arrayidx43, i32 noundef %adr.0150)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool44.not = icmp eq i32 %call, 0
  br i1 %tobool44.not, label %if.end46, label %while.body42.cleanup_crit_edge

while.body42.cleanup_crit_edge:                   ; preds = %while.body42
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end46:                                         ; preds = %while.body42
  %arrayidx47 = getelementptr %struct.mtd_erase_region_info, ptr %5, i32 %i.2153
  %erasesize48 = getelementptr %struct.mtd_erase_region_info, ptr %5, i32 %i.2153, i32 1
  %27 = ptrtoint ptr %erasesize48 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %erasesize48, align 8
  %add49 = add i32 %28, %adr.0150
  %sub52 = sub i32 %len.0151, %28
  %29 = ptrtoint ptr %chipshift to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %chipshift, align 4
  %notmask = shl nsw i32 -1, %30
  %31 = xor i32 %notmask, -1
  %32 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %arrayidx47, align 8
  %conv57 = trunc i64 %33 to i32
  %numblocks = getelementptr %struct.mtd_erase_region_info, ptr %5, i32 %i.2153, i32 2
  %34 = ptrtoint ptr %numblocks to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %numblocks, align 4
  %mul = mul i32 %35, %28
  %add61 = add i32 %mul, %conv57
  %36 = xor i32 %add61, %add49
  %37 = and i32 %36, %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp65 = icmp eq i32 %37, 0
  %inc68 = zext i1 %cmp65 to i32
  %spec.select = add i32 %i.2153, %inc68
  %shr71 = lshr i32 %add49, %30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr71)
  %tobool72.not = icmp eq i32 %shr71, 0
  br i1 %tobool72.not, label %if.end46.if.end79_crit_edge, label %if.then73

if.end46.if.end79_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end79

if.then73:                                        ; preds = %if.end46
  %inc74 = add i32 %chipnum.0152, 1
  %38 = ptrtoint ptr %numchips to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %numchips, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc74, i32 %39)
  %cmp75.not = icmp slt i32 %inc74, %39
  br i1 %cmp75.not, label %if.then73.if.end79_crit_edge, label %if.then73.cleanup_crit_edge

if.then73.cleanup_crit_edge:                      ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then73.if.end79_crit_edge:                     ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end79

if.end79:                                         ; preds = %if.then73.if.end79_crit_edge, %if.end46.if.end79_crit_edge
  %adr.1 = phi i32 [ 0, %if.then73.if.end79_crit_edge ], [ %add49, %if.end46.if.end79_crit_edge ]
  %chipnum.1 = phi i32 [ %inc74, %if.then73.if.end79_crit_edge ], [ %chipnum.0152, %if.end46.if.end79_crit_edge ]
  %tobool41.not = icmp eq i32 %sub52, 0
  br i1 %tobool41.not, label %if.end79.cleanup_crit_edge, label %if.end79.while.body42_crit_edge

if.end79.while.body42_crit_edge:                  ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body42

if.end79.cleanup_crit_edge:                       ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %if.end79.cleanup_crit_edge, %if.then73.cleanup_crit_edge, %while.body42.cleanup_crit_edge, %if.end30.cleanup_crit_edge, %while.end18.cleanup_crit_edge, %while.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %while.end.cleanup_crit_edge ], [ -22, %while.end18.cleanup_crit_edge ], [ 0, %if.end30.cleanup_crit_edge ], [ %call, %while.body42.cleanup_crit_edge ], [ 0, %if.then73.cleanup_crit_edge ], [ 0, %if.end79.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cfi_staa_read(ptr nocapture noundef readonly %mtd, i64 noundef %from, i32 noundef %len, ptr nocapture noundef %retlen, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 54
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %fldrv_priv = getelementptr inbounds %struct.map_info, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %fldrv_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fldrv_priv, align 4
  %chipshift = getelementptr inbounds %struct.cfi_private, ptr %3, i32 0, i32 13
  %numchips = getelementptr inbounds %struct.cfi_private, ptr %3, i32 0, i32 11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool.not53 = icmp eq i32 %len, 0
  br i1 %tobool.not53, label %entry.while.end_crit_edge, label %while.body.preheader

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.preheader:                             ; preds = %entry
  %4 = trunc i64 %from to i32
  %5 = ptrtoint ptr %chipshift to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %chipshift, align 4
  %sh_prom = zext i32 %6 to i64
  %shr = ashr i64 %from, %sh_prom
  %conv = trunc i64 %shr to i32
  %shl = shl i32 %conv, %6
  %conv3 = sub i32 %4, %shl
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.preheader
  %chipnum.057 = phi i32 [ %inc, %cleanup.while.body_crit_edge ], [ %conv, %while.body.preheader ]
  %ofs.056 = phi i32 [ 0, %cleanup.while.body_crit_edge ], [ %conv3, %while.body.preheader ]
  %buf.addr.055 = phi ptr [ %add.ptr, %cleanup.while.body_crit_edge ], [ %buf, %while.body.preheader ]
  %len.addr.054 = phi i32 [ %sub19, %cleanup.while.body_crit_edge ], [ %len, %while.body.preheader ]
  %7 = ptrtoint ptr %numchips to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %numchips, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %chipnum.057, i32 %8)
  %cmp.not = icmp slt i32 %chipnum.057, %8
  br i1 %cmp.not, label %if.end, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

if.end:                                           ; preds = %while.body
  %add = add i32 %len.addr.054, -1
  %sub5 = add i32 %add, %ofs.056
  %9 = ptrtoint ptr %chipshift to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %chipshift, align 4
  %shr7 = lshr i32 %sub5, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr7)
  %tobool8.not = icmp eq i32 %shr7, 0
  %shl11 = shl nuw i32 1, %10
  %sub12 = sub i32 %shl11, %ofs.056
  %thislen.0 = select i1 %tobool8.not, i32 %len.addr.054, i32 %sub12
  %arrayidx = getelementptr %struct.cfi_private, ptr %3, i32 0, i32 15, i32 %chipnum.057
  %conv14 = zext i32 %ofs.056 to i64
  %call = tail call fastcc i32 @do_read_onechip(ptr noundef %1, ptr noundef %arrayidx, i64 noundef %conv14, i32 noundef %thislen.0, ptr noundef %buf.addr.055)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool15.not = icmp eq i32 %call, 0
  br i1 %tobool15.not, label %cleanup, label %if.end.while.end_crit_edge

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

cleanup:                                          ; preds = %if.end
  %11 = ptrtoint ptr %retlen to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %retlen, align 4
  %add18 = add i32 %12, %thislen.0
  store i32 %add18, ptr %retlen, align 4
  %sub19 = sub i32 %len.addr.054, %thislen.0
  %add.ptr = getelementptr i8, ptr %buf.addr.055, i32 %thislen.0
  %inc = add nsw i32 %chipnum.057, 1
  %tobool.not = icmp eq i32 %sub19, 0
  br i1 %tobool.not, label %cleanup.while.end_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %if.end.while.end_crit_edge, %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %ret.2 = phi i32 [ 0, %entry.while.end_crit_edge ], [ %call, %if.end.while.end_crit_edge ], [ 0, %while.body.while.end_crit_edge ], [ 0, %cleanup.while.end_crit_edge ]
  ret i32 %ret.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cfi_staa_write_buffers(ptr nocapture noundef readonly %mtd, i64 noundef %to, i32 noundef %len, ptr nocapture noundef %retlen, ptr nocapture noundef readonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 54
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %fldrv_priv = getelementptr inbounds %struct.map_info, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %fldrv_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fldrv_priv, align 4
  %interleave = getelementptr inbounds %struct.cfi_private, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %interleave to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %interleave, align 4
  %cfiq = getelementptr inbounds %struct.cfi_private, ptr %3, i32 0, i32 8
  %6 = ptrtoint ptr %cfiq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cfiq, align 4
  %MaxBufWriteSize = getelementptr inbounds %struct.cfi_ident, ptr %7, i32 0, i32 19
  %8 = ptrtoint ptr %MaxBufWriteSize to i32
  call void @__asan_loadN_noabort(i32 %8, i32 2)
  %9 = load i16, ptr %MaxBufWriteSize, align 1
  %conv = zext i16 %9 to i32
  %shl = shl i32 %5, %conv
  %chipshift = getelementptr inbounds %struct.cfi_private, ptr %3, i32 0, i32 13
  %sub7 = add i32 %shl, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp.not62 = icmp eq i32 %len, 0
  br i1 %cmp.not62, label %entry.cleanup24_crit_edge, label %while.body.lr.ph

entry.cleanup24_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup24

while.body.lr.ph:                                 ; preds = %entry
  %10 = trunc i64 %to to i32
  %11 = ptrtoint ptr %chipshift to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %chipshift, align 4
  %sh_prom = zext i32 %12 to i64
  %shr = ashr i64 %to, %sh_prom
  %conv1 = trunc i64 %shr to i32
  %shl3 = shl i32 %conv1, %12
  %conv5 = sub i32 %10, %shl3
  %numchips = getelementptr inbounds %struct.cfi_private, ptr %3, i32 0, i32 11
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %ofs.066 = phi i32 [ %conv5, %while.body.lr.ph ], [ %ofs.1, %cleanup.while.body_crit_edge ]
  %chipnum.065 = phi i32 [ %conv1, %while.body.lr.ph ], [ %chipnum.1, %cleanup.while.body_crit_edge ]
  %buf.addr.064 = phi ptr [ %buf, %while.body.lr.ph ], [ %add.ptr, %cleanup.while.body_crit_edge ]
  %len.addr.063 = phi i32 [ %len, %while.body.lr.ph ], [ %sub14, %cleanup.while.body_crit_edge ]
  %and = and i32 %ofs.066, %sub7
  %sub8 = sub i32 %shl, %and
  %13 = tail call i32 @llvm.umin.i32(i32 %sub8, i32 %len.addr.063)
  %arrayidx = getelementptr %struct.cfi_private, ptr %3, i32 0, i32 15, i32 %chipnum.065
  %call = tail call fastcc i32 @do_write_buffer(ptr noundef %1, ptr noundef %arrayidx, i32 noundef %ofs.066, ptr noundef %buf.addr.064, i32 noundef %13)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end12, label %while.body.cleanup24_crit_edge

while.body.cleanup24_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup24

if.end12:                                         ; preds = %while.body
  %add = add i32 %13, %ofs.066
  %add.ptr = getelementptr i8, ptr %buf.addr.064, i32 %13
  %14 = ptrtoint ptr %retlen to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %retlen, align 4
  %add13 = add i32 %15, %13
  store i32 %add13, ptr %retlen, align 4
  %sub14 = sub i32 %len.addr.063, %13
  %16 = ptrtoint ptr %chipshift to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %chipshift, align 4
  %shr16 = lshr i32 %add, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr16)
  %tobool17.not = icmp eq i32 %shr16, 0
  br i1 %tobool17.not, label %if.end12.cleanup_crit_edge, label %if.then18

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then18:                                        ; preds = %if.end12
  %inc = add i32 %chipnum.065, 1
  %18 = ptrtoint ptr %numchips to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %numchips, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %19)
  %cmp19 = icmp eq i32 %inc, %19
  br i1 %cmp19, label %if.then18.cleanup24_crit_edge, label %if.then18.cleanup_crit_edge

if.then18.cleanup_crit_edge:                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then18.cleanup24_crit_edge:                    ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup24

cleanup:                                          ; preds = %if.then18.cleanup_crit_edge, %if.end12.cleanup_crit_edge
  %chipnum.1 = phi i32 [ %inc, %if.then18.cleanup_crit_edge ], [ %chipnum.065, %if.end12.cleanup_crit_edge ]
  %ofs.1 = phi i32 [ 0, %if.then18.cleanup_crit_edge ], [ %add, %if.end12.cleanup_crit_edge ]
  %cmp.not = icmp eq i32 %sub14, 0
  br i1 %cmp.not, label %cleanup.cleanup24_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

cleanup.cleanup24_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup24

cleanup24:                                        ; preds = %cleanup.cleanup24_crit_edge, %if.then18.cleanup24_crit_edge, %while.body.cleanup24_crit_edge, %entry.cleanup24_crit_edge
  %retval.2 = phi i32 [ 0, %entry.cleanup24_crit_edge ], [ 0, %if.then18.cleanup24_crit_edge ], [ %call, %while.body.cleanup24_crit_edge ], [ 0, %cleanup.cleanup24_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cfi_staa_writev(ptr noundef %mtd, ptr nocapture noundef readonly %vecs, i32 noundef %count, i64 noundef %to, ptr noundef writeonly %retlen) #0 align 64 {
entry:
  %thislen = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %thislen) #10
  %0 = ptrtoint ptr %thislen to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %thislen, align 4, !annotation !123
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 4
  %1 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %writesize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.cleanup80_crit_edge, label %if.end8.i

entry.cleanup80_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup80

if.end8.i:                                        ; preds = %entry
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %2, i32 noundef 3264) #15
  %tobool2.not = icmp eq ptr %call9.i, null
  br i1 %tobool2.not, label %if.end8.i.cleanup80_crit_edge, label %for.cond.preheader

if.end8.i.cleanup80_crit_edge:                    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup80

for.cond.preheader:                               ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp161.not = icmp eq i32 %count, 0
  br i1 %cmp161.not, label %for.cond.preheader.write_error_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.write_error_crit_edge:         ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %write_error

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %buflen.0165 = phi i32 [ %buflen.1.ph, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %totlen.0164 = phi i32 [ %totlen.3.ph, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %i.0163 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %to.addr.0162 = phi i64 [ %to.addr.3.ph, %for.inc.for.body_crit_edge ], [ %to, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.kvec, ptr %vecs, i32 %i.0163
  %iov_len = getelementptr %struct.kvec, ptr %vecs, i32 %i.0163, i32 1
  %3 = ptrtoint ptr %iov_len to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %iov_len, align 4
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool6.not = icmp eq i32 %4, 0
  br i1 %tobool6.not, label %for.body.for.inc_crit_edge, label %if.end8

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end8:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %buflen.0165)
  %tobool9.not = icmp eq i32 %buflen.0165, 0
  br i1 %tobool9.not, label %if.end8.if.end32_crit_edge, label %if.then10

if.end8.if.end32_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

if.then10:                                        ; preds = %if.end8
  %add = add i32 %4, %buflen.0165
  %7 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %writesize, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %8)
  %cmp12 = icmp ult i32 %add, %8
  %add.ptr = getelementptr i8, ptr %call9.i, i32 %buflen.0165
  br i1 %cmp12, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  %9 = call ptr @memcpy(ptr %add.ptr, ptr %6, i32 %4)
  br label %for.inc

if.end15:                                         ; preds = %if.then10
  %sub = sub i32 %8, %buflen.0165
  %10 = call ptr @memcpy(ptr %add.ptr, ptr %6, i32 %sub)
  %11 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %writesize, align 4
  %call19 = call i32 @mtd_write(ptr noundef %mtd, i64 noundef %to.addr.0162, i32 noundef %12, ptr noundef nonnull %thislen, ptr noundef nonnull %call9.i) #10
  %13 = ptrtoint ptr %thislen to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %thislen, align 4
  %add20 = add i32 %14, %totlen.0164
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool21.not = icmp eq i32 %call19, 0
  br i1 %tobool21.not, label %lor.lhs.false, label %if.end15.write_error_crit_edge

if.end15.write_error_crit_edge:                   ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %write_error

lor.lhs.false:                                    ; preds = %if.end15
  %15 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %writesize, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %16)
  %cmp23.not = icmp eq i32 %14, %16
  br i1 %cmp23.not, label %if.end25, label %lor.lhs.false.write_error_crit_edge

lor.lhs.false.write_error_crit_edge:              ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %write_error

if.end25:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  %sub26 = sub i32 %14, %buflen.0165
  %sub27 = sub i32 %4, %sub26
  %add.ptr29 = getelementptr i8, ptr %6, i32 %sub26
  %conv = zext i32 %14 to i64
  %add31 = add i64 %to.addr.0162, %conv
  br label %if.end32

if.end32:                                         ; preds = %if.end25, %if.end8.if.end32_crit_edge
  %to.addr.1 = phi i64 [ %add31, %if.end25 ], [ %to.addr.0162, %if.end8.if.end32_crit_edge ]
  %totlen.1 = phi i32 [ %add20, %if.end25 ], [ %totlen.0164, %if.end8.if.end32_crit_edge ]
  %elem_len.0 = phi i32 [ %sub27, %if.end25 ], [ %4, %if.end8.if.end32_crit_edge ]
  %elem_base.0 = phi ptr [ %add.ptr29, %if.end25 ], [ %6, %if.end8.if.end32_crit_edge ]
  %17 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %writesize, align 4
  %neg = sub i32 0, %18
  %and = and i32 %elem_len.0, %neg
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool35.not = icmp eq i32 %and, 0
  br i1 %tobool35.not, label %if.end32.if.end55_crit_edge, label %if.then36

if.end32.if.end55_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end55

if.then36:                                        ; preds = %if.end32
  %call41 = call i32 @mtd_write(ptr noundef %mtd, i64 noundef %to.addr.1, i32 noundef %and, ptr noundef nonnull %thislen, ptr noundef %elem_base.0) #10
  %19 = ptrtoint ptr %thislen to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %thislen, align 4
  %add42 = add i32 %20, %totlen.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool43.not = icmp eq i32 %call41, 0
  br i1 %tobool43.not, label %lor.lhs.false44, label %if.then36.write_error_crit_edge

if.then36.write_error_crit_edge:                  ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #12
  br label %write_error

lor.lhs.false44:                                  ; preds = %if.then36
  %21 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %writesize, align 4
  %neg47 = sub i32 0, %22
  %and48 = and i32 %elem_len.0, %neg47
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %and48)
  %cmp49.not = icmp eq i32 %20, %and48
  br i1 %cmp49.not, label %if.end52, label %lor.lhs.false44.write_error_crit_edge

lor.lhs.false44.write_error_crit_edge:            ; preds = %lor.lhs.false44
  call void @__sanitizer_cov_trace_pc() #12
  br label %write_error

if.end52:                                         ; preds = %lor.lhs.false44
  call void @__sanitizer_cov_trace_pc() #12
  %conv53 = zext i32 %20 to i64
  %add54 = add i64 %to.addr.1, %conv53
  br label %if.end55

if.end55:                                         ; preds = %if.end52, %if.end32.if.end55_crit_edge
  %to.addr.2 = phi i64 [ %add54, %if.end52 ], [ %to.addr.1, %if.end32.if.end55_crit_edge ]
  %totlen.2 = phi i32 [ %add42, %if.end52 ], [ %totlen.1, %if.end32.if.end55_crit_edge ]
  %23 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %writesize, align 4
  %sub57 = add i32 %24, -1
  %and58 = and i32 %sub57, %elem_len.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58)
  %tobool59.not = icmp eq i32 %and58, 0
  br i1 %tobool59.not, label %if.end55.for.inc_crit_edge, label %if.then60

if.end55.for.inc_crit_edge:                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then60:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #12
  %25 = call ptr @memset(ptr %call9.i, i32 255, i32 %24)
  %26 = ptrtoint ptr %thislen to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %thislen, align 4
  %add.ptr62 = getelementptr i8, ptr %elem_base.0, i32 %27
  %28 = call ptr @memcpy(ptr %call9.i, ptr %add.ptr62, i32 %and58)
  br label %for.inc

for.inc:                                          ; preds = %if.then60, %if.end55.for.inc_crit_edge, %if.then13, %for.body.for.inc_crit_edge
  %to.addr.3.ph = phi i64 [ %to.addr.2, %if.end55.for.inc_crit_edge ], [ %to.addr.2, %if.then60 ], [ %to.addr.0162, %for.body.for.inc_crit_edge ], [ %to.addr.0162, %if.then13 ]
  %totlen.3.ph = phi i32 [ %totlen.2, %if.end55.for.inc_crit_edge ], [ %totlen.2, %if.then60 ], [ %totlen.0164, %for.body.for.inc_crit_edge ], [ %totlen.0164, %if.then13 ]
  %buflen.1.ph = phi i32 [ 0, %if.end55.for.inc_crit_edge ], [ %and58, %if.then60 ], [ %buflen.0165, %for.body.for.inc_crit_edge ], [ %add, %if.then13 ]
  %inc = add nuw i32 %i.0163, 1
  %exitcond.not = icmp eq i32 %inc, %count
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %buflen.1.ph)
  %tobool65.not = icmp eq i32 %buflen.1.ph, 0
  br i1 %tobool65.not, label %for.end.write_error_crit_edge, label %if.then66

for.end.write_error_crit_edge:                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %write_error

if.then66:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %call67 = call i32 @mtd_write(ptr noundef %mtd, i64 noundef %to.addr.3.ph, i32 noundef %buflen.1.ph, ptr noundef nonnull %thislen, ptr noundef nonnull %call9.i) #10
  %29 = ptrtoint ptr %thislen to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %thislen, align 4
  %add68 = add i32 %30, %totlen.3.ph
  br label %write_error

write_error:                                      ; preds = %if.then66, %for.end.write_error_crit_edge, %lor.lhs.false44.write_error_crit_edge, %if.then36.write_error_crit_edge, %lor.lhs.false.write_error_crit_edge, %if.end15.write_error_crit_edge, %for.cond.preheader.write_error_crit_edge
  %totlen.4 = phi i32 [ %add68, %if.then66 ], [ %totlen.3.ph, %for.end.write_error_crit_edge ], [ 0, %for.cond.preheader.write_error_crit_edge ], [ %add42, %if.then36.write_error_crit_edge ], [ %add42, %lor.lhs.false44.write_error_crit_edge ], [ %add20, %if.end15.write_error_crit_edge ], [ %add20, %lor.lhs.false.write_error_crit_edge ]
  %ret.4 = phi i32 [ %call67, %if.then66 ], [ 0, %for.end.write_error_crit_edge ], [ 0, %for.cond.preheader.write_error_crit_edge ], [ %call41, %if.then36.write_error_crit_edge ], [ 0, %lor.lhs.false44.write_error_crit_edge ], [ %call19, %if.end15.write_error_crit_edge ], [ 0, %lor.lhs.false.write_error_crit_edge ]
  %tobool77.not = icmp eq ptr %retlen, null
  br i1 %tobool77.not, label %write_error.if.end79_crit_edge, label %if.then78

write_error.if.end79_crit_edge:                   ; preds = %write_error
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end79

if.then78:                                        ; preds = %write_error
  call void @__sanitizer_cov_trace_pc() #12
  %31 = ptrtoint ptr %retlen to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %totlen.4, ptr %retlen, align 4
  br label %if.end79

if.end79:                                         ; preds = %if.then78, %write_error.if.end79_crit_edge
  call void @kfree(ptr noundef nonnull %call9.i) #10
  br label %cleanup80

cleanup80:                                        ; preds = %if.end79, %if.end8.i.cleanup80_crit_edge, %entry.cleanup80_crit_edge
  %retval.0 = phi i32 [ %ret.4, %if.end79 ], [ -5, %entry.cleanup80_crit_edge ], [ -12, %if.end8.i.cleanup80_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %thislen) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cfi_staa_sync(ptr nocapture noundef readonly %mtd) #0 align 64 {
entry:
  %wait = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 54
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %fldrv_priv = getelementptr inbounds %struct.map_info, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %fldrv_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fldrv_priv, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #10
  %4 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %5 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %6 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %7 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %8 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %wait, align 4
  %9 = tail call i32 @llvm.read_register.i32(metadata !112) #10
  %and.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %task, align 8
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %4, align 4
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @default_wake_function, ptr %5, align 4
  %15 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %6, align 4
  %16 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %7, align 4
  %numchips = getelementptr inbounds %struct.cfi_private, ptr %3, i32 0, i32 11
  %17 = ptrtoint ptr %numchips to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %numchips, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp117 = icmp sgt i32 %18, 0
  br i1 %cmp117, label %entry.retry.preheader_crit_edge, label %entry.for.end88_crit_edge

entry.for.end88_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end88

entry.retry.preheader_crit_edge:                  ; preds = %entry
  br label %retry.preheader

retry.preheader:                                  ; preds = %sw.bb4.retry.preheader_crit_edge, %entry.retry.preheader_crit_edge
  %i.0118 = phi i32 [ %inc, %sw.bb4.retry.preheader_crit_edge ], [ 0, %entry.retry.preheader_crit_edge ]
  %mutex = getelementptr %struct.cfi_private, ptr %3, i32 0, i32 15, i32 %i.0118, i32 7
  %state = getelementptr %struct.cfi_private, ptr %3, i32 0, i32 15, i32 %i.0118, i32 2
  %wq = getelementptr %struct.cfi_private, ptr %3, i32 0, i32 15, i32 %i.0118, i32 8
  br label %retry

retry:                                            ; preds = %__here, %retry.preheader
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %19 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %state, align 4
  %21 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.55)
  switch i32 %20, label %__here [
    i32 0, label %retry.sw.bb_crit_edge
    i32 1, label %retry.sw.bb_crit_edge130
    i32 2, label %retry.sw.bb_crit_edge131
    i32 3, label %retry.sw.bb_crit_edge132
    i32 13, label %retry.sw.bb4_crit_edge
  ]

retry.sw.bb4_crit_edge:                           ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb4

retry.sw.bb_crit_edge132:                         ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

retry.sw.bb_crit_edge131:                         ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

retry.sw.bb_crit_edge130:                         ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

retry.sw.bb_crit_edge:                            ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

sw.bb:                                            ; preds = %retry.sw.bb_crit_edge, %retry.sw.bb_crit_edge130, %retry.sw.bb_crit_edge131, %retry.sw.bb_crit_edge132
  %oldstate = getelementptr %struct.cfi_private, ptr %3, i32 0, i32 15, i32 %i.0118, i32 3
  %22 = ptrtoint ptr %oldstate to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %20, ptr %oldstate, align 4
  %23 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 13, ptr %state, align 4
  br label %sw.bb4

sw.bb4:                                           ; preds = %sw.bb, %retry.sw.bb4_crit_edge
  call void @mutex_unlock(ptr noundef %mutex) #10
  %inc = add nuw nsw i32 %i.0118, 1
  %24 = ptrtoint ptr %numchips to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %numchips, align 4
  %cmp = icmp slt i32 %inc, %25
  br i1 %cmp, label %sw.bb4.retry.preheader_crit_edge, label %sw.bb4.for.body74_crit_edge

sw.bb4.for.body74_crit_edge:                      ; preds = %sw.bb4
  br label %for.body74

sw.bb4.retry.preheader_crit_edge:                 ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #12
  br label %retry.preheader

__here:                                           ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #12
  %26 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %27, i32 0, i32 212
  %28 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 ptrtoint (ptr blockaddress(@cfi_staa_sync, %__here) to i32), ptr %task_state_change, align 4
  %29 = load ptr, ptr %task, align 8
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile i32 2, ptr %29, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !124
  call void @add_wait_queue(ptr noundef %wq, ptr noundef nonnull %wait) #10
  call void @mutex_unlock(ptr noundef %mutex) #10
  call void @schedule() #10
  call void @remove_wait_queue(ptr noundef %wq, ptr noundef nonnull %wait) #10
  br label %retry

for.body74:                                       ; preds = %if.end84.for.body74_crit_edge, %sw.bb4.for.body74_crit_edge
  %i.1122 = phi i32 [ %i.1, %if.end84.for.body74_crit_edge ], [ %i.0118, %sw.bb4.for.body74_crit_edge ]
  %mutex77 = getelementptr %struct.cfi_private, ptr %3, i32 0, i32 15, i32 %i.1122, i32 7
  call void @mutex_lock_nested(ptr noundef %mutex77, i32 noundef 0) #10
  %state78 = getelementptr %struct.cfi_private, ptr %3, i32 0, i32 15, i32 %i.1122, i32 2
  %31 = ptrtoint ptr %state78 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %state78, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %32)
  %cmp79 = icmp eq i32 %32, 13
  br i1 %cmp79, label %if.then80, label %for.body74.if.end84_crit_edge

for.body74.if.end84_crit_edge:                    ; preds = %for.body74
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end84

if.then80:                                        ; preds = %for.body74
  call void @__sanitizer_cov_trace_pc() #12
  %oldstate81 = getelementptr %struct.cfi_private, ptr %3, i32 0, i32 15, i32 %i.1122, i32 3
  %33 = ptrtoint ptr %oldstate81 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %oldstate81, align 4
  %35 = ptrtoint ptr %state78 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %state78, align 4
  %wq83 = getelementptr %struct.cfi_private, ptr %3, i32 0, i32 15, i32 %i.1122, i32 8
  call void @__wake_up(ptr noundef %wq83, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  br label %if.end84

if.end84:                                         ; preds = %if.then80, %for.body74.if.end84_crit_edge
  call void @mutex_unlock(ptr noundef %mutex77) #10
  %i.1 = add nsw i32 %i.1122, -1
  %cmp73 = icmp sgt i32 %i.1122, 0
  br i1 %cmp73, label %if.end84.for.body74_crit_edge, label %if.end84.for.end88_crit_edge

if.end84.for.end88_crit_edge:                     ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end88

if.end84.for.body74_crit_edge:                    ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body74

for.end88:                                        ; preds = %if.end84.for.end88_crit_edge, %entry.for.end88_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cfi_staa_lock(ptr nocapture noundef readonly %mtd, i64 noundef %ofs, i64 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 54
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %fldrv_priv = getelementptr inbounds %struct.map_info, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %fldrv_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fldrv_priv, align 4
  %erasesize = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 3
  %4 = ptrtoint ptr %erasesize to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %erasesize, align 8
  %sub = add i32 %5, -1
  %conv = zext i32 %sub to i64
  %6 = or i64 %len, %ofs
  %7 = and i64 %6, %conv
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %7)
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %if.end7, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7:                                          ; preds = %entry
  %chipshift = getelementptr inbounds %struct.cfi_private, ptr %3, i32 0, i32 13
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %len)
  %tobool13.not53 = icmp eq i64 %len, 0
  br i1 %tobool13.not53, label %if.end7.cleanup_crit_edge, label %while.body.lr.ph

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.body.lr.ph:                                 ; preds = %if.end7
  %9 = trunc i64 %ofs to i32
  %10 = ptrtoint ptr %chipshift to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %chipshift, align 4
  %sh_prom = zext i32 %11 to i64
  %shr = ashr i64 %ofs, %sh_prom
  %conv8 = trunc i64 %shr to i32
  %shl = shl i32 %conv8, %11
  %conv12 = sub i32 %9, %shl
  %numchips = getelementptr inbounds %struct.cfi_private, ptr %3, i32 0, i32 11
  br label %while.body

while.body:                                       ; preds = %if.end28.while.body_crit_edge, %while.body.lr.ph
  %chipnum.056 = phi i32 [ %conv8, %while.body.lr.ph ], [ %chipnum.1, %if.end28.while.body_crit_edge ]
  %adr.055 = phi i32 [ %conv12, %while.body.lr.ph ], [ %adr.1, %if.end28.while.body_crit_edge ]
  %len.addr.054 = phi i64 [ %len, %while.body.lr.ph ], [ %sub20, %if.end28.while.body_crit_edge ]
  %arrayidx = getelementptr %struct.cfi_private, ptr %3, i32 0, i32 15, i32 %chipnum.056
  %call = tail call fastcc i32 @do_lock_oneblock(ptr noundef %1, ptr noundef %arrayidx, i32 noundef %adr.055)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool14.not = icmp eq i32 %call, 0
  br i1 %tobool14.not, label %if.end16, label %while.body.cleanup_crit_edge

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end16:                                         ; preds = %while.body
  %12 = ptrtoint ptr %erasesize to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %erasesize, align 8
  %add = add i32 %13, %adr.055
  %conv19 = zext i32 %13 to i64
  %sub20 = sub i64 %len.addr.054, %conv19
  %14 = ptrtoint ptr %chipshift to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %chipshift, align 4
  %shr22 = lshr i32 %add, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr22)
  %tobool23.not = icmp eq i32 %shr22, 0
  br i1 %tobool23.not, label %if.end16.if.end28_crit_edge, label %if.then24

if.end16.if.end28_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

if.then24:                                        ; preds = %if.end16
  %inc = add i32 %chipnum.056, 1
  %16 = ptrtoint ptr %numchips to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %numchips, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %17)
  %cmp.not = icmp slt i32 %inc, %17
  br i1 %cmp.not, label %if.then24.if.end28_crit_edge, label %if.then24.cleanup_crit_edge

if.then24.cleanup_crit_edge:                      ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then24.if.end28_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

if.end28:                                         ; preds = %if.then24.if.end28_crit_edge, %if.end16.if.end28_crit_edge
  %adr.1 = phi i32 [ 0, %if.then24.if.end28_crit_edge ], [ %add, %if.end16.if.end28_crit_edge ]
  %chipnum.1 = phi i32 [ %inc, %if.then24.if.end28_crit_edge ], [ %chipnum.056, %if.end16.if.end28_crit_edge ]
  %tobool13.not = icmp eq i64 %sub20, 0
  br i1 %tobool13.not, label %if.end28.cleanup_crit_edge, label %if.end28.while.body_crit_edge

if.end28.while.body_crit_edge:                    ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %if.end28.cleanup_crit_edge, %if.then24.cleanup_crit_edge, %while.body.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end7.cleanup_crit_edge ], [ %call, %while.body.cleanup_crit_edge ], [ 0, %if.then24.cleanup_crit_edge ], [ 0, %if.end28.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cfi_staa_unlock(ptr nocapture noundef readonly %mtd, i64 noundef %ofs, i64 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 54
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %fldrv_priv = getelementptr inbounds %struct.map_info, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %fldrv_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fldrv_priv, align 4
  %chipshift = getelementptr inbounds %struct.cfi_private, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %chipshift to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %chipshift, align 4
  %sh_prom = zext i32 %5 to i64
  %shr = ashr i64 %ofs, %sh_prom
  %conv = trunc i64 %shr to i32
  %shl = shl i32 %conv, %5
  %6 = trunc i64 %ofs to i32
  %conv3 = sub i32 %6, %shl
  %arrayidx = getelementptr %struct.cfi_private, ptr %3, i32 0, i32 15, i32 %conv
  %call = tail call fastcc i32 @do_unlock_oneblock(ptr noundef %1, ptr noundef %arrayidx, i32 noundef %conv3)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cfi_staa_suspend(ptr nocapture noundef readonly %mtd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 54
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %fldrv_priv = getelementptr inbounds %struct.map_info, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %fldrv_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fldrv_priv, align 4
  %numchips = getelementptr inbounds %struct.cfi_private, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %numchips to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %numchips, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp63 = icmp sgt i32 %5, 0
  br i1 %cmp63, label %entry.for.body_crit_edge, label %entry.if.end20_crit_edge

entry.if.end20_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body7.preheader:                              ; preds = %for.body
  tail call void @mutex_unlock(ptr noundef %mutex) #10
  br label %for.body7

for.body:                                         ; preds = %sw.epilog.for.body_crit_edge, %entry.for.body_crit_edge
  %i.04664 = phi i32 [ %inc, %sw.epilog.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %mutex = getelementptr %struct.cfi_private, ptr %3, i32 0, i32 15, i32 %i.04664, i32 7
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %state = getelementptr %struct.cfi_private, ptr %3, i32 0, i32 15, i32 %i.04664, i32 2
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.56)
  switch i32 %7, label %for.body7.preheader [
    i32 0, label %for.body.sw.bb_crit_edge
    i32 1, label %for.body.sw.bb_crit_edge70
    i32 2, label %for.body.sw.bb_crit_edge71
    i32 3, label %for.body.sw.bb_crit_edge72
    i32 12, label %for.body.sw.epilog_crit_edge
  ]

for.body.sw.epilog_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

for.body.sw.bb_crit_edge72:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

for.body.sw.bb_crit_edge71:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

for.body.sw.bb_crit_edge70:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

for.body.sw.bb_crit_edge:                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

sw.bb:                                            ; preds = %for.body.sw.bb_crit_edge, %for.body.sw.bb_crit_edge70, %for.body.sw.bb_crit_edge71, %for.body.sw.bb_crit_edge72
  %oldstate = getelementptr %struct.cfi_private, ptr %3, i32 0, i32 15, i32 %i.04664, i32 3
  %9 = ptrtoint ptr %oldstate to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %7, ptr %oldstate, align 4
  %10 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 12, ptr %state, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %for.body.sw.epilog_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #10
  %inc = add nuw nsw i32 %i.04664, 1
  %11 = ptrtoint ptr %numchips to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %numchips, align 4
  %cmp = icmp slt i32 %inc, %12
  br i1 %cmp, label %sw.epilog.for.body_crit_edge, label %sw.epilog.if.end20_crit_edge

sw.epilog.if.end20_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

sw.epilog.for.body_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body7:                                        ; preds = %if.end.for.body7_crit_edge, %for.body7.preheader
  %i.151 = phi i32 [ %i.1, %if.end.for.body7_crit_edge ], [ %i.04664, %for.body7.preheader ]
  %mutex10 = getelementptr %struct.cfi_private, ptr %3, i32 0, i32 15, i32 %i.151, i32 7
  tail call void @mutex_lock_nested(ptr noundef %mutex10, i32 noundef 0) #10
  %state11 = getelementptr %struct.cfi_private, ptr %3, i32 0, i32 15, i32 %i.151, i32 2
  %13 = ptrtoint ptr %state11 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %state11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %14)
  %cmp12 = icmp eq i32 %14, 12
  br i1 %cmp12, label %if.then13, label %for.body7.if.end_crit_edge

for.body7.if.end_crit_edge:                       ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then13:                                        ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #12
  %oldstate14 = getelementptr %struct.cfi_private, ptr %3, i32 0, i32 15, i32 %i.151, i32 3
  %15 = ptrtoint ptr %oldstate14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %oldstate14, align 4
  %17 = ptrtoint ptr %state11 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %state11, align 4
  %wq = getelementptr %struct.cfi_private, ptr %3, i32 0, i32 15, i32 %i.151, i32 8
  tail call void @__wake_up(ptr noundef %wq, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  br label %if.end

if.end:                                           ; preds = %if.then13, %for.body7.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex10) #10
  %i.1 = add nsw i32 %i.151, -1
  %cmp6 = icmp sgt i32 %i.151, 0
  br i1 %cmp6, label %if.end.for.body7_crit_edge, label %if.end.if.end20_crit_edge

if.end.if.end20_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.end.for.body7_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body7

if.end20:                                         ; preds = %if.end.if.end20_crit_edge, %sw.epilog.if.end20_crit_edge, %entry.if.end20_crit_edge
  %ret.044 = phi i32 [ 0, %entry.if.end20_crit_edge ], [ -11, %if.end.if.end20_crit_edge ], [ 0, %sw.epilog.if.end20_crit_edge ]
  ret i32 %ret.044
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cfi_staa_resume(ptr nocapture noundef readonly %mtd) #0 align 64 {
entry:
  %agg.tmp = alloca %union.map_word, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 54
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %fldrv_priv = getelementptr inbounds %struct.map_info, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %fldrv_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fldrv_priv, align 4
  %numchips = getelementptr inbounds %struct.cfi_private, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %numchips to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %numchips, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp15 = icmp sgt i32 %5, 0
  br i1 %cmp15, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %write = getelementptr inbounds %struct.map_info, ptr %1, i32 0, i32 9
  %.fca.1.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 1
  %.fca.2.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 2
  %.fca.3.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 3
  %.fca.4.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 4
  %.fca.5.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 5
  %.fca.6.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 6
  %.fca.7.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.lr.ph
  %i.016 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end.for.body_crit_edge ]
  %mutex = getelementptr %struct.cfi_private, ptr %3, i32 0, i32 15, i32 %i.016, i32 7
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %state = getelementptr %struct.cfi_private, ptr %3, i32 0, i32 15, i32 %i.016, i32 2
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %7)
  %cmp1 = icmp eq i32 %7, 12
  br i1 %cmp1, label %if.then, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %write, align 4
  call void @cfi_build_cmd(ptr nonnull sret(%union.map_word) align 4 %agg.tmp, i32 noundef 255, ptr noundef %1, ptr noundef %3) #10
  %10 = ptrtoint ptr %agg.tmp to i32
  call void @__asan_load4_noabort(i32 %10)
  %.fca.0.load = load i32, ptr %agg.tmp, align 4
  %.fca.0.insert = insertvalue [8 x i32] poison, i32 %.fca.0.load, 0
  %11 = ptrtoint ptr %.fca.1.gep to i32
  call void @__asan_load4_noabort(i32 %11)
  %.fca.1.load = load i32, ptr %.fca.1.gep, align 4
  %.fca.1.insert = insertvalue [8 x i32] %.fca.0.insert, i32 %.fca.1.load, 1
  %12 = ptrtoint ptr %.fca.2.gep to i32
  call void @__asan_load4_noabort(i32 %12)
  %.fca.2.load = load i32, ptr %.fca.2.gep, align 4
  %.fca.2.insert = insertvalue [8 x i32] %.fca.1.insert, i32 %.fca.2.load, 2
  %13 = ptrtoint ptr %.fca.3.gep to i32
  call void @__asan_load4_noabort(i32 %13)
  %.fca.3.load = load i32, ptr %.fca.3.gep, align 4
  %.fca.3.insert = insertvalue [8 x i32] %.fca.2.insert, i32 %.fca.3.load, 3
  %14 = ptrtoint ptr %.fca.4.gep to i32
  call void @__asan_load4_noabort(i32 %14)
  %.fca.4.load = load i32, ptr %.fca.4.gep, align 4
  %.fca.4.insert = insertvalue [8 x i32] %.fca.3.insert, i32 %.fca.4.load, 4
  %15 = ptrtoint ptr %.fca.5.gep to i32
  call void @__asan_load4_noabort(i32 %15)
  %.fca.5.load = load i32, ptr %.fca.5.gep, align 4
  %.fca.5.insert = insertvalue [8 x i32] %.fca.4.insert, i32 %.fca.5.load, 5
  %16 = ptrtoint ptr %.fca.6.gep to i32
  call void @__asan_load4_noabort(i32 %16)
  %.fca.6.load = load i32, ptr %.fca.6.gep, align 4
  %.fca.6.insert = insertvalue [8 x i32] %.fca.5.insert, i32 %.fca.6.load, 6
  %17 = ptrtoint ptr %.fca.7.gep to i32
  call void @__asan_load4_noabort(i32 %17)
  %.fca.7.load = load i32, ptr %.fca.7.gep, align 4
  %.fca.7.insert = insertvalue [8 x i32] %.fca.6.insert, i32 %.fca.7.load, 7
  call void %9(ptr noundef %1, [8 x i32] %.fca.7.insert, i32 noundef 0) #10
  %18 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %state, align 4
  %wq = getelementptr %struct.cfi_private, ptr %3, i32 0, i32 15, i32 %i.016, i32 8
  call void @__wake_up(ptr noundef %wq, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  call void @mutex_unlock(ptr noundef %mutex) #10
  %inc = add nuw nsw i32 %i.016, 1
  %19 = ptrtoint ptr %numchips to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %numchips, align 4
  %cmp = icmp slt i32 %inc, %20
  br i1 %cmp, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__module_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @do_erase_oneblock(ptr noundef %map, ptr noundef %chip, i32 noundef %adr) #7 align 64 {
entry:
  %status = alloca %union.map_word, align 4
  %status_OK = alloca %union.map_word, align 4
  %wait = alloca %struct.wait_queue_entry, align 4
  %agg.tmp = alloca %union.map_word, align 4
  %tmp5 = alloca %union.map_word, align 4
  %agg.tmp100 = alloca %union.map_word, align 4
  %agg.tmp103 = alloca %union.map_word, align 4
  %agg.tmp106 = alloca %union.map_word, align 4
  %tmp202 = alloca %union.map_word, align 4
  %agg.tmp230 = alloca %union.map_word, align 4
  %tmp239 = alloca %union.map_word, align 4
  %agg.tmp264 = alloca %union.map_word, align 4
  %tmp267 = alloca %union.map_word, align 4
  %tmp278 = alloca %union.map_word, align 4
  %tmp302 = alloca %union.map_word, align 4
  %agg.tmp344 = alloca %union.map_word, align 4
  %agg.tmp347 = alloca %union.map_word, align 4
  call void @__sanitizer_cov_trace_pc() #12
  %fldrv_priv = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 17
  %0 = ptrtoint ptr %fldrv_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fldrv_priv, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %status) #10
  %2 = call ptr @memset(ptr %status, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %status_OK) #10
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #10
  %3 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %4 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %5 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %6 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %7 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %wait, align 4
  %8 = tail call i32 @llvm.read_register.i32(metadata !112) #10
  %and.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task, align 8
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %3, align 4
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @default_wake_function, ptr %4, align 4
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %5, align 4
  %15 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %6, align 4
  %16 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %chip, align 4
  %add = add i32 %17, %adr
  call void @cfi_build_cmd(ptr nonnull sret(%union.map_word) align 4 %status_OK, i32 noundef 128, ptr noundef %map, ptr noundef %1) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %18 = load volatile i32, ptr @jiffies, align 128
  %mutex = getelementptr inbounds %struct.flchip, ptr %chip, i32 0, i32 7
  %state = getelementptr inbounds %struct.flchip, ptr %chip, i32 0, i32 2
  %write = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 9
  %.fca.1.gep590 = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 1
  %.fca.2.gep593 = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 2
  %.fca.3.gep596 = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 3
  %.fca.4.gep599 = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 4
  %.fca.5.gep602 = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 5
  %.fca.6.gep605 = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 6
  %.fca.7.gep608 = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 7
  %read = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 7
  %bankwidth = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 6
  %wq = getelementptr inbounds %struct.flchip, ptr %chip, i32 0, i32 8
  %set_vpp = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 12
  %.fca.1.gep560 = getelementptr inbounds [8 x i32], ptr %agg.tmp100, i32 0, i32 1
  %.fca.2.gep563 = getelementptr inbounds [8 x i32], ptr %agg.tmp100, i32 0, i32 2
  %.fca.3.gep566 = getelementptr inbounds [8 x i32], ptr %agg.tmp100, i32 0, i32 3
  %.fca.4.gep569 = getelementptr inbounds [8 x i32], ptr %agg.tmp100, i32 0, i32 4
  %.fca.5.gep572 = getelementptr inbounds [8 x i32], ptr %agg.tmp100, i32 0, i32 5
  %.fca.6.gep575 = getelementptr inbounds [8 x i32], ptr %agg.tmp100, i32 0, i32 6
  %.fca.7.gep578 = getelementptr inbounds [8 x i32], ptr %agg.tmp100, i32 0, i32 7
  %.fca.1.gep536 = getelementptr inbounds [8 x i32], ptr %agg.tmp103, i32 0, i32 1
  %.fca.2.gep539 = getelementptr inbounds [8 x i32], ptr %agg.tmp103, i32 0, i32 2
  %.fca.3.gep542 = getelementptr inbounds [8 x i32], ptr %agg.tmp103, i32 0, i32 3
  %.fca.4.gep545 = getelementptr inbounds [8 x i32], ptr %agg.tmp103, i32 0, i32 4
  %.fca.5.gep548 = getelementptr inbounds [8 x i32], ptr %agg.tmp103, i32 0, i32 5
  %.fca.6.gep551 = getelementptr inbounds [8 x i32], ptr %agg.tmp103, i32 0, i32 6
  %.fca.7.gep554 = getelementptr inbounds [8 x i32], ptr %agg.tmp103, i32 0, i32 7
  %.fca.1.gep512 = getelementptr inbounds [8 x i32], ptr %agg.tmp106, i32 0, i32 1
  %.fca.2.gep515 = getelementptr inbounds [8 x i32], ptr %agg.tmp106, i32 0, i32 2
  %.fca.3.gep518 = getelementptr inbounds [8 x i32], ptr %agg.tmp106, i32 0, i32 3
  %.fca.4.gep521 = getelementptr inbounds [8 x i32], ptr %agg.tmp106, i32 0, i32 4
  %.fca.5.gep524 = getelementptr inbounds [8 x i32], ptr %agg.tmp106, i32 0, i32 5
  %.fca.6.gep527 = getelementptr inbounds [8 x i32], ptr %agg.tmp106, i32 0, i32 6
  %.fca.7.gep530 = getelementptr inbounds [8 x i32], ptr %agg.tmp106, i32 0, i32 7
  %.fca.1.gep458 = getelementptr inbounds [8 x i32], ptr %agg.tmp264, i32 0, i32 1
  %.fca.2.gep461 = getelementptr inbounds [8 x i32], ptr %agg.tmp264, i32 0, i32 2
  %.fca.3.gep464 = getelementptr inbounds [8 x i32], ptr %agg.tmp264, i32 0, i32 3
  %.fca.4.gep467 = getelementptr inbounds [8 x i32], ptr %agg.tmp264, i32 0, i32 4
  %.fca.5.gep470 = getelementptr inbounds [8 x i32], ptr %agg.tmp264, i32 0, i32 5
  %.fca.6.gep473 = getelementptr inbounds [8 x i32], ptr %agg.tmp264, i32 0, i32 6
  %.fca.7.gep476 = getelementptr inbounds [8 x i32], ptr %agg.tmp264, i32 0, i32 7
  %interleave = getelementptr inbounds %struct.cfi_private, ptr %1, i32 0, i32 2
  %device_type = getelementptr inbounds %struct.cfi_private, ptr %1, i32 0, i32 3
  %.fca.1.gep415 = getelementptr inbounds [8 x i32], ptr %agg.tmp344, i32 0, i32 1
  %.fca.2.gep418 = getelementptr inbounds [8 x i32], ptr %agg.tmp344, i32 0, i32 2
  %.fca.3.gep421 = getelementptr inbounds [8 x i32], ptr %agg.tmp344, i32 0, i32 3
  %.fca.4.gep424 = getelementptr inbounds [8 x i32], ptr %agg.tmp344, i32 0, i32 4
  %.fca.5.gep427 = getelementptr inbounds [8 x i32], ptr %agg.tmp344, i32 0, i32 5
  %.fca.6.gep430 = getelementptr inbounds [8 x i32], ptr %agg.tmp344, i32 0, i32 6
  %.fca.7.gep433 = getelementptr inbounds [8 x i32], ptr %agg.tmp344, i32 0, i32 7
  %.fca.1.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp347, i32 0, i32 1
  %.fca.2.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp347, i32 0, i32 2
  %.fca.3.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp347, i32 0, i32 3
  %.fca.4.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp347, i32 0, i32 4
  %.fca.5.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp347, i32 0, i32 5
  %.fca.6.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp347, i32 0, i32 6
  %.fca.7.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp347, i32 0, i32 7
  br label %retry.outer

retry.outer:                                      ; preds = %cleanup, %entry
  %retries.0.ph = phi i32 [ %dec, %cleanup ], [ 3, %entry ]
  %timeo.0.ph.in = phi i32 [ %188, %cleanup ], [ %18, %entry ]
  br label %retry.outer725

retry.outer725:                                   ; preds = %__here, %retry.outer
  %timeo.0.ph726.in = phi i32 [ %timeo.0.ph.in, %retry.outer ], [ %48, %__here ]
  %timeo.0.ph726 = add i32 %timeo.0.ph726.in, 100
  br label %retry

retry:                                            ; preds = %if.end19, %retry.outer725
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %19 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %state, align 4
  %21 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.57)
  switch i32 %20, label %__here [
    i32 2, label %retry.sw.bb_crit_edge
    i32 3, label %retry.sw.bb_crit_edge823
    i32 0, label %retry.sw.bb_crit_edge824
    i32 1, label %retry.sw.bb4_crit_edge
  ]

retry.sw.bb4_crit_edge:                           ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb4

retry.sw.bb_crit_edge824:                         ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

retry.sw.bb_crit_edge823:                         ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

retry.sw.bb_crit_edge:                            ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

sw.bb:                                            ; preds = %retry.sw.bb_crit_edge, %retry.sw.bb_crit_edge823, %retry.sw.bb_crit_edge824
  %22 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %write, align 4
  call void @cfi_build_cmd(ptr nonnull sret(%union.map_word) align 4 %agg.tmp, i32 noundef 112, ptr noundef %map, ptr noundef %1) #10
  %24 = ptrtoint ptr %agg.tmp to i32
  call void @__asan_load4_noabort(i32 %24)
  %.fca.0.load588 = load i32, ptr %agg.tmp, align 4
  %.fca.0.insert589 = insertvalue [8 x i32] poison, i32 %.fca.0.load588, 0
  %25 = ptrtoint ptr %.fca.1.gep590 to i32
  call void @__asan_load4_noabort(i32 %25)
  %.fca.1.load591 = load i32, ptr %.fca.1.gep590, align 4
  %.fca.1.insert592 = insertvalue [8 x i32] %.fca.0.insert589, i32 %.fca.1.load591, 1
  %26 = ptrtoint ptr %.fca.2.gep593 to i32
  call void @__asan_load4_noabort(i32 %26)
  %.fca.2.load594 = load i32, ptr %.fca.2.gep593, align 4
  %.fca.2.insert595 = insertvalue [8 x i32] %.fca.1.insert592, i32 %.fca.2.load594, 2
  %27 = ptrtoint ptr %.fca.3.gep596 to i32
  call void @__asan_load4_noabort(i32 %27)
  %.fca.3.load597 = load i32, ptr %.fca.3.gep596, align 4
  %.fca.3.insert598 = insertvalue [8 x i32] %.fca.2.insert595, i32 %.fca.3.load597, 3
  %28 = ptrtoint ptr %.fca.4.gep599 to i32
  call void @__asan_load4_noabort(i32 %28)
  %.fca.4.load600 = load i32, ptr %.fca.4.gep599, align 4
  %.fca.4.insert601 = insertvalue [8 x i32] %.fca.3.insert598, i32 %.fca.4.load600, 4
  %29 = ptrtoint ptr %.fca.5.gep602 to i32
  call void @__asan_load4_noabort(i32 %29)
  %.fca.5.load603 = load i32, ptr %.fca.5.gep602, align 4
  %.fca.5.insert604 = insertvalue [8 x i32] %.fca.4.insert601, i32 %.fca.5.load603, 5
  %30 = ptrtoint ptr %.fca.6.gep605 to i32
  call void @__asan_load4_noabort(i32 %30)
  %.fca.6.load606 = load i32, ptr %.fca.6.gep605, align 4
  %.fca.6.insert607 = insertvalue [8 x i32] %.fca.5.insert604, i32 %.fca.6.load606, 6
  %31 = ptrtoint ptr %.fca.7.gep608 to i32
  call void @__asan_load4_noabort(i32 %31)
  %.fca.7.load609 = load i32, ptr %.fca.7.gep608, align 4
  %.fca.7.insert610 = insertvalue [8 x i32] %.fca.6.insert607, i32 %.fca.7.load609, 7
  call void %23(ptr noundef %map, [8 x i32] %.fca.7.insert610, i32 noundef %add) #10
  %32 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1, ptr %state, align 4
  br label %sw.bb4

sw.bb4:                                           ; preds = %sw.bb, %retry.sw.bb4_crit_edge
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tmp5) #10
  %33 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %read, align 4
  call void %34(ptr nonnull sret(%union.map_word) align 4 %tmp5, ptr noundef %map, i32 noundef %add) #10
  %35 = call ptr @memcpy(ptr %status, ptr %tmp5, i32 32)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tmp5) #10
  %36 = ptrtoint ptr %bankwidth to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %bankwidth, align 4
  %add7 = add i32 %37, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %add7)
  %cmp762.not = icmp ult i32 %add7, 4
  br i1 %cmp762.not, label %sw.bb4.do.body92_crit_edge, label %for.body.preheader

sw.bb4.do.body92_crit_edge:                       ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body92

for.body.preheader:                               ; preds = %sw.bb4
  %div714 = lshr i32 %add7, 2
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.0763, 1
  %exitcond.not = icmp eq i32 %inc, %div714
  br i1 %exitcond.not, label %for.cond.do.body92_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.cond.do.body92_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body92

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.preheader
  %i.0763 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr [8 x i32], ptr %status, i32 0, i32 %i.0763
  %38 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx, align 4
  %arrayidx8 = getelementptr [8 x i32], ptr %status_OK, i32 0, i32 %i.0763
  %40 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx8, align 4
  %and = and i32 %41, %39
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %41)
  %cmp10.not = icmp eq i32 %and, %41
  br i1 %cmp10.not, label %for.cond, label %if.end13.critedge

if.end13.critedge:                                ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %42 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %timeo.0.ph726, %42
  %cmp14 = icmp slt i32 %sub, 0
  call void @mutex_unlock(ptr noundef %mutex) #10
  br i1 %cmp14, label %if.then15, label %if.end19

if.then15:                                        ; preds = %if.end13.critedge
  call void @__sanitizer_cov_trace_pc() #12
  %call18 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #13
  br label %cleanup405

if.end19:                                         ; preds = %if.end13.critedge
  call void @__sanitizer_cov_trace_pc() #12
  call void @cfi_udelay(i32 noundef 1) #10
  br label %retry

__here:                                           ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #12
  %43 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %44, i32 0, i32 212
  %45 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 ptrtoint (ptr blockaddress(@do_erase_oneblock, %__here) to i32), ptr %task_state_change, align 4
  %46 = load ptr, ptr %task, align 8
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile i32 2, ptr %46, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !125
  call void @add_wait_queue(ptr noundef %wq, ptr noundef nonnull %wait) #10
  call void @mutex_unlock(ptr noundef %mutex) #10
  call void @schedule() #10
  call void @remove_wait_queue(ptr noundef %wq, ptr noundef nonnull %wait) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %48 = load volatile i32, ptr @jiffies, align 128
  br label %retry.outer725

do.body92:                                        ; preds = %for.cond.do.body92_crit_edge, %sw.bb4.do.body92_crit_edge
  %49 = ptrtoint ptr %set_vpp to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %set_vpp, align 4
  %tobool93.not = icmp eq ptr %50, null
  br i1 %tobool93.not, label %do.body92.do.end98_crit_edge, label %if.then94

do.body92.do.end98_crit_edge:                     ; preds = %do.body92
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end98

if.then94:                                        ; preds = %do.body92
  call void @__sanitizer_cov_trace_pc() #12
  call void %50(ptr noundef %map, i32 noundef 1) #10
  br label %do.end98

do.end98:                                         ; preds = %if.then94, %do.body92.do.end98_crit_edge
  %51 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %write, align 4
  call void @cfi_build_cmd(ptr nonnull sret(%union.map_word) align 4 %agg.tmp100, i32 noundef 80, ptr noundef %map, ptr noundef %1) #10
  %53 = ptrtoint ptr %agg.tmp100 to i32
  call void @__asan_load4_noabort(i32 %53)
  %.fca.0.load558 = load i32, ptr %agg.tmp100, align 4
  %.fca.0.insert559 = insertvalue [8 x i32] poison, i32 %.fca.0.load558, 0
  %54 = ptrtoint ptr %.fca.1.gep560 to i32
  call void @__asan_load4_noabort(i32 %54)
  %.fca.1.load561 = load i32, ptr %.fca.1.gep560, align 4
  %.fca.1.insert562 = insertvalue [8 x i32] %.fca.0.insert559, i32 %.fca.1.load561, 1
  %55 = ptrtoint ptr %.fca.2.gep563 to i32
  call void @__asan_load4_noabort(i32 %55)
  %.fca.2.load564 = load i32, ptr %.fca.2.gep563, align 4
  %.fca.2.insert565 = insertvalue [8 x i32] %.fca.1.insert562, i32 %.fca.2.load564, 2
  %56 = ptrtoint ptr %.fca.3.gep566 to i32
  call void @__asan_load4_noabort(i32 %56)
  %.fca.3.load567 = load i32, ptr %.fca.3.gep566, align 4
  %.fca.3.insert568 = insertvalue [8 x i32] %.fca.2.insert565, i32 %.fca.3.load567, 3
  %57 = ptrtoint ptr %.fca.4.gep569 to i32
  call void @__asan_load4_noabort(i32 %57)
  %.fca.4.load570 = load i32, ptr %.fca.4.gep569, align 4
  %.fca.4.insert571 = insertvalue [8 x i32] %.fca.3.insert568, i32 %.fca.4.load570, 4
  %58 = ptrtoint ptr %.fca.5.gep572 to i32
  call void @__asan_load4_noabort(i32 %58)
  %.fca.5.load573 = load i32, ptr %.fca.5.gep572, align 4
  %.fca.5.insert574 = insertvalue [8 x i32] %.fca.4.insert571, i32 %.fca.5.load573, 5
  %59 = ptrtoint ptr %.fca.6.gep575 to i32
  call void @__asan_load4_noabort(i32 %59)
  %.fca.6.load576 = load i32, ptr %.fca.6.gep575, align 4
  %.fca.6.insert577 = insertvalue [8 x i32] %.fca.5.insert574, i32 %.fca.6.load576, 6
  %60 = ptrtoint ptr %.fca.7.gep578 to i32
  call void @__asan_load4_noabort(i32 %60)
  %.fca.7.load579 = load i32, ptr %.fca.7.gep578, align 4
  %.fca.7.insert580 = insertvalue [8 x i32] %.fca.6.insert577, i32 %.fca.7.load579, 7
  call void %52(ptr noundef %map, [8 x i32] %.fca.7.insert580, i32 noundef %add) #10
  %61 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %write, align 4
  call void @cfi_build_cmd(ptr nonnull sret(%union.map_word) align 4 %agg.tmp103, i32 noundef 32, ptr noundef %map, ptr noundef %1) #10
  %63 = ptrtoint ptr %agg.tmp103 to i32
  call void @__asan_load4_noabort(i32 %63)
  %.fca.0.load534 = load i32, ptr %agg.tmp103, align 4
  %.fca.0.insert535 = insertvalue [8 x i32] poison, i32 %.fca.0.load534, 0
  %64 = ptrtoint ptr %.fca.1.gep536 to i32
  call void @__asan_load4_noabort(i32 %64)
  %.fca.1.load537 = load i32, ptr %.fca.1.gep536, align 4
  %.fca.1.insert538 = insertvalue [8 x i32] %.fca.0.insert535, i32 %.fca.1.load537, 1
  %65 = ptrtoint ptr %.fca.2.gep539 to i32
  call void @__asan_load4_noabort(i32 %65)
  %.fca.2.load540 = load i32, ptr %.fca.2.gep539, align 4
  %.fca.2.insert541 = insertvalue [8 x i32] %.fca.1.insert538, i32 %.fca.2.load540, 2
  %66 = ptrtoint ptr %.fca.3.gep542 to i32
  call void @__asan_load4_noabort(i32 %66)
  %.fca.3.load543 = load i32, ptr %.fca.3.gep542, align 4
  %.fca.3.insert544 = insertvalue [8 x i32] %.fca.2.insert541, i32 %.fca.3.load543, 3
  %67 = ptrtoint ptr %.fca.4.gep545 to i32
  call void @__asan_load4_noabort(i32 %67)
  %.fca.4.load546 = load i32, ptr %.fca.4.gep545, align 4
  %.fca.4.insert547 = insertvalue [8 x i32] %.fca.3.insert544, i32 %.fca.4.load546, 4
  %68 = ptrtoint ptr %.fca.5.gep548 to i32
  call void @__asan_load4_noabort(i32 %68)
  %.fca.5.load549 = load i32, ptr %.fca.5.gep548, align 4
  %.fca.5.insert550 = insertvalue [8 x i32] %.fca.4.insert547, i32 %.fca.5.load549, 5
  %69 = ptrtoint ptr %.fca.6.gep551 to i32
  call void @__asan_load4_noabort(i32 %69)
  %.fca.6.load552 = load i32, ptr %.fca.6.gep551, align 4
  %.fca.6.insert553 = insertvalue [8 x i32] %.fca.5.insert550, i32 %.fca.6.load552, 6
  %70 = ptrtoint ptr %.fca.7.gep554 to i32
  call void @__asan_load4_noabort(i32 %70)
  %.fca.7.load555 = load i32, ptr %.fca.7.gep554, align 4
  %.fca.7.insert556 = insertvalue [8 x i32] %.fca.6.insert553, i32 %.fca.7.load555, 7
  call void %62(ptr noundef %map, [8 x i32] %.fca.7.insert556, i32 noundef %add) #10
  %71 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %write, align 4
  call void @cfi_build_cmd(ptr nonnull sret(%union.map_word) align 4 %agg.tmp106, i32 noundef 208, ptr noundef %map, ptr noundef %1) #10
  %73 = ptrtoint ptr %agg.tmp106 to i32
  call void @__asan_load4_noabort(i32 %73)
  %.fca.0.load510 = load i32, ptr %agg.tmp106, align 4
  %.fca.0.insert511 = insertvalue [8 x i32] poison, i32 %.fca.0.load510, 0
  %74 = ptrtoint ptr %.fca.1.gep512 to i32
  call void @__asan_load4_noabort(i32 %74)
  %.fca.1.load513 = load i32, ptr %.fca.1.gep512, align 4
  %.fca.1.insert514 = insertvalue [8 x i32] %.fca.0.insert511, i32 %.fca.1.load513, 1
  %75 = ptrtoint ptr %.fca.2.gep515 to i32
  call void @__asan_load4_noabort(i32 %75)
  %.fca.2.load516 = load i32, ptr %.fca.2.gep515, align 4
  %.fca.2.insert517 = insertvalue [8 x i32] %.fca.1.insert514, i32 %.fca.2.load516, 2
  %76 = ptrtoint ptr %.fca.3.gep518 to i32
  call void @__asan_load4_noabort(i32 %76)
  %.fca.3.load519 = load i32, ptr %.fca.3.gep518, align 4
  %.fca.3.insert520 = insertvalue [8 x i32] %.fca.2.insert517, i32 %.fca.3.load519, 3
  %77 = ptrtoint ptr %.fca.4.gep521 to i32
  call void @__asan_load4_noabort(i32 %77)
  %.fca.4.load522 = load i32, ptr %.fca.4.gep521, align 4
  %.fca.4.insert523 = insertvalue [8 x i32] %.fca.3.insert520, i32 %.fca.4.load522, 4
  %78 = ptrtoint ptr %.fca.5.gep524 to i32
  call void @__asan_load4_noabort(i32 %78)
  %.fca.5.load525 = load i32, ptr %.fca.5.gep524, align 4
  %.fca.5.insert526 = insertvalue [8 x i32] %.fca.4.insert523, i32 %.fca.5.load525, 5
  %79 = ptrtoint ptr %.fca.6.gep527 to i32
  call void @__asan_load4_noabort(i32 %79)
  %.fca.6.load528 = load i32, ptr %.fca.6.gep527, align 4
  %.fca.6.insert529 = insertvalue [8 x i32] %.fca.5.insert526, i32 %.fca.6.load528, 6
  %80 = ptrtoint ptr %.fca.7.gep530 to i32
  call void @__asan_load4_noabort(i32 %80)
  %.fca.7.load531 = load i32, ptr %.fca.7.gep530, align 4
  %.fca.7.insert532 = insertvalue [8 x i32] %.fca.6.insert529, i32 %.fca.7.load531, 7
  call void %72(ptr noundef %map, [8 x i32] %.fca.7.insert532, i32 noundef %add) #10
  %81 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 4, ptr %state, align 4
  call void @mutex_unlock(ptr noundef %mutex) #10
  call void @msleep(i32 noundef 1000) #10
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %82 = load volatile i32, ptr @jiffies, align 128
  br label %for.cond112.outer

for.cond112.outer:                                ; preds = %__here166, %do.end98
  %timeo.1.ph.in = phi i32 [ %90, %__here166 ], [ %82, %do.end98 ]
  %timeo.1.ph = add i32 %timeo.1.ph.in, 2000
  %83 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %84)
  %cmp114.not772 = icmp eq i32 %84, 4
  br i1 %cmp114.not772, label %for.cond112.outer.if.end201_crit_edge, label %for.cond112.outer.__here166_crit_edge

for.cond112.outer.__here166_crit_edge:            ; preds = %for.cond112.outer
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here166

for.cond112.outer.if.end201_crit_edge:            ; preds = %for.cond112.outer
  br label %if.end201

__here166:                                        ; preds = %if.end251.__here166_crit_edge, %for.cond112.outer.__here166_crit_edge
  %85 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %task, align 8
  %task_state_change170 = getelementptr inbounds %struct.task_struct, ptr %86, i32 0, i32 212
  %87 = ptrtoint ptr %task_state_change170 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 ptrtoint (ptr blockaddress(@do_erase_oneblock, %__here166) to i32), ptr %task_state_change170, align 4
  %88 = load ptr, ptr %task, align 8
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_store4_noabort(i32 %89)
  store volatile i32 2, ptr %88, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !126
  call void @add_wait_queue(ptr noundef %wq, ptr noundef nonnull %wait) #10
  call void @mutex_unlock(ptr noundef %mutex) #10
  call void @schedule() #10
  call void @remove_wait_queue(ptr noundef %wq, ptr noundef nonnull %wait) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %90 = load volatile i32, ptr @jiffies, align 128
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  br label %for.cond112.outer

if.end201:                                        ; preds = %if.end251.if.end201_crit_edge, %for.cond112.outer.if.end201_crit_edge
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tmp202) #10
  %91 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %read, align 4
  call void %92(ptr nonnull sret(%union.map_word) align 4 %tmp202, ptr noundef %map, i32 noundef %add) #10
  %93 = call ptr @memcpy(ptr %status, ptr %tmp202, i32 32)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tmp202) #10
  %94 = ptrtoint ptr %bankwidth to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %bankwidth, align 4
  %add208 = add i32 %95, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %add208)
  %cmp210770.not = icmp ult i32 %add208, 4
  br i1 %cmp210770.not, label %if.end201.do.body255_crit_edge, label %for.body211.preheader

if.end201.do.body255_crit_edge:                   ; preds = %if.end201
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body255

for.body211.preheader:                            ; preds = %if.end201
  %div209715 = lshr i32 %add208, 2
  br label %for.body211

for.cond206:                                      ; preds = %for.body211
  %inc220 = add nuw nsw i32 %i204.0771, 1
  %exitcond802.not = icmp eq i32 %inc220, %div209715
  br i1 %exitcond802.not, label %for.cond206.do.body255_crit_edge, label %for.cond206.for.body211_crit_edge

for.cond206.for.body211_crit_edge:                ; preds = %for.cond206
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body211

for.cond206.do.body255_crit_edge:                 ; preds = %for.cond206
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body255

for.body211:                                      ; preds = %for.cond206.for.body211_crit_edge, %for.body211.preheader
  %i204.0771 = phi i32 [ %inc220, %for.cond206.for.body211_crit_edge ], [ 0, %for.body211.preheader ]
  %arrayidx212 = getelementptr [8 x i32], ptr %status, i32 0, i32 %i204.0771
  %96 = ptrtoint ptr %arrayidx212 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %arrayidx212, align 4
  %arrayidx213 = getelementptr [8 x i32], ptr %status_OK, i32 0, i32 %i204.0771
  %98 = ptrtoint ptr %arrayidx213 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %arrayidx213, align 4
  %and214 = and i32 %99, %97
  call void @__sanitizer_cov_trace_cmp4(i32 %and214, i32 %99)
  %cmp216.not = icmp eq i32 %and214, %99
  br i1 %cmp216.not, label %for.cond206, label %if.end225.critedge

if.end225.critedge:                               ; preds = %for.body211
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %100 = load volatile i32, ptr @jiffies, align 128
  %sub226 = sub i32 %timeo.1.ph, %100
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub226)
  %cmp227 = icmp slt i32 %sub226, 0
  br i1 %cmp227, label %if.then228, label %if.end251

if.then228:                                       ; preds = %if.end225.critedge
  %101 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %write, align 4
  call void @cfi_build_cmd(ptr nonnull sret(%union.map_word) align 4 %agg.tmp230, i32 noundef 112, ptr noundef %map, ptr noundef %1) #10
  %103 = ptrtoint ptr %agg.tmp230 to i32
  call void @__asan_load4_noabort(i32 %103)
  %.fca.0.load480 = load i32, ptr %agg.tmp230, align 4
  %.fca.0.insert481 = insertvalue [8 x i32] poison, i32 %.fca.0.load480, 0
  %.fca.1.gep482 = getelementptr inbounds [8 x i32], ptr %agg.tmp230, i32 0, i32 1
  %104 = ptrtoint ptr %.fca.1.gep482 to i32
  call void @__asan_load4_noabort(i32 %104)
  %.fca.1.load483 = load i32, ptr %.fca.1.gep482, align 4
  %.fca.1.insert484 = insertvalue [8 x i32] %.fca.0.insert481, i32 %.fca.1.load483, 1
  %.fca.2.gep485 = getelementptr inbounds [8 x i32], ptr %agg.tmp230, i32 0, i32 2
  %105 = ptrtoint ptr %.fca.2.gep485 to i32
  call void @__asan_load4_noabort(i32 %105)
  %.fca.2.load486 = load i32, ptr %.fca.2.gep485, align 4
  %.fca.2.insert487 = insertvalue [8 x i32] %.fca.1.insert484, i32 %.fca.2.load486, 2
  %.fca.3.gep488 = getelementptr inbounds [8 x i32], ptr %agg.tmp230, i32 0, i32 3
  %106 = ptrtoint ptr %.fca.3.gep488 to i32
  call void @__asan_load4_noabort(i32 %106)
  %.fca.3.load489 = load i32, ptr %.fca.3.gep488, align 4
  %.fca.3.insert490 = insertvalue [8 x i32] %.fca.2.insert487, i32 %.fca.3.load489, 3
  %.fca.4.gep491 = getelementptr inbounds [8 x i32], ptr %agg.tmp230, i32 0, i32 4
  %107 = ptrtoint ptr %.fca.4.gep491 to i32
  call void @__asan_load4_noabort(i32 %107)
  %.fca.4.load492 = load i32, ptr %.fca.4.gep491, align 4
  %.fca.4.insert493 = insertvalue [8 x i32] %.fca.3.insert490, i32 %.fca.4.load492, 4
  %.fca.5.gep494 = getelementptr inbounds [8 x i32], ptr %agg.tmp230, i32 0, i32 5
  %108 = ptrtoint ptr %.fca.5.gep494 to i32
  call void @__asan_load4_noabort(i32 %108)
  %.fca.5.load495 = load i32, ptr %.fca.5.gep494, align 4
  %.fca.5.insert496 = insertvalue [8 x i32] %.fca.4.insert493, i32 %.fca.5.load495, 5
  %.fca.6.gep497 = getelementptr inbounds [8 x i32], ptr %agg.tmp230, i32 0, i32 6
  %109 = ptrtoint ptr %.fca.6.gep497 to i32
  call void @__asan_load4_noabort(i32 %109)
  %.fca.6.load498 = load i32, ptr %.fca.6.gep497, align 4
  %.fca.6.insert499 = insertvalue [8 x i32] %.fca.5.insert496, i32 %.fca.6.load498, 6
  %.fca.7.gep500 = getelementptr inbounds [8 x i32], ptr %agg.tmp230, i32 0, i32 7
  %110 = ptrtoint ptr %.fca.7.gep500 to i32
  call void @__asan_load4_noabort(i32 %110)
  %.fca.7.load501 = load i32, ptr %.fca.7.gep500, align 4
  %.fca.7.insert502 = insertvalue [8 x i32] %.fca.6.insert499, i32 %.fca.7.load501, 7
  call void %102(ptr noundef %map, [8 x i32] %.fca.7.insert502, i32 noundef %add) #10
  %111 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 1, ptr %state, align 4
  %112 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %status, align 4
  %114 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %read, align 4
  call void %115(ptr nonnull sret(%union.map_word) align 4 %tmp239, ptr noundef %map, i32 noundef %add) #10
  %116 = ptrtoint ptr %tmp239 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %tmp239, align 4
  %call241 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %113, i32 noundef %117) #13
  %118 = ptrtoint ptr %set_vpp to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %set_vpp, align 4
  %tobool244.not = icmp eq ptr %119, null
  br i1 %tobool244.not, label %if.then228.do.end249_crit_edge, label %if.then245

if.then228.do.end249_crit_edge:                   ; preds = %if.then228
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end249

if.then245:                                       ; preds = %if.then228
  call void @__sanitizer_cov_trace_pc() #12
  call void %119(ptr noundef %map, i32 noundef 0) #10
  br label %do.end249

do.end249:                                        ; preds = %if.then245, %if.then228.do.end249_crit_edge
  call void @mutex_unlock(ptr noundef %mutex) #10
  br label %cleanup405

if.end251:                                        ; preds = %if.end225.critedge
  call void @mutex_unlock(ptr noundef %mutex) #10
  call void @cfi_udelay(i32 noundef 1) #10
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %120 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %state, align 4
  %cmp114.not = icmp eq i32 %121, 4
  br i1 %cmp114.not, label %if.end251.if.end201_crit_edge, label %if.end251.__here166_crit_edge

if.end251.__here166_crit_edge:                    ; preds = %if.end251
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here166

if.end251.if.end201_crit_edge:                    ; preds = %if.end251
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end201

do.body255:                                       ; preds = %for.cond206.do.body255_crit_edge, %if.end201.do.body255_crit_edge
  %122 = ptrtoint ptr %set_vpp to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %set_vpp, align 4
  %tobool257.not = icmp eq ptr %123, null
  br i1 %tobool257.not, label %do.body255.do.end262_crit_edge, label %if.then258

do.body255.do.end262_crit_edge:                   ; preds = %do.body255
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end262

if.then258:                                       ; preds = %do.body255
  call void @__sanitizer_cov_trace_pc() #12
  call void %123(ptr noundef %map, i32 noundef 0) #10
  br label %do.end262

do.end262:                                        ; preds = %if.then258, %do.body255.do.end262_crit_edge
  %124 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %write, align 4
  call void @cfi_build_cmd(ptr nonnull sret(%union.map_word) align 4 %agg.tmp264, i32 noundef 112, ptr noundef %map, ptr noundef %1) #10
  %126 = ptrtoint ptr %agg.tmp264 to i32
  call void @__asan_load4_noabort(i32 %126)
  %.fca.0.load456 = load i32, ptr %agg.tmp264, align 4
  %.fca.0.insert457 = insertvalue [8 x i32] poison, i32 %.fca.0.load456, 0
  %127 = ptrtoint ptr %.fca.1.gep458 to i32
  call void @__asan_load4_noabort(i32 %127)
  %.fca.1.load459 = load i32, ptr %.fca.1.gep458, align 4
  %.fca.1.insert460 = insertvalue [8 x i32] %.fca.0.insert457, i32 %.fca.1.load459, 1
  %128 = ptrtoint ptr %.fca.2.gep461 to i32
  call void @__asan_load4_noabort(i32 %128)
  %.fca.2.load462 = load i32, ptr %.fca.2.gep461, align 4
  %.fca.2.insert463 = insertvalue [8 x i32] %.fca.1.insert460, i32 %.fca.2.load462, 2
  %129 = ptrtoint ptr %.fca.3.gep464 to i32
  call void @__asan_load4_noabort(i32 %129)
  %.fca.3.load465 = load i32, ptr %.fca.3.gep464, align 4
  %.fca.3.insert466 = insertvalue [8 x i32] %.fca.2.insert463, i32 %.fca.3.load465, 3
  %130 = ptrtoint ptr %.fca.4.gep467 to i32
  call void @__asan_load4_noabort(i32 %130)
  %.fca.4.load468 = load i32, ptr %.fca.4.gep467, align 4
  %.fca.4.insert469 = insertvalue [8 x i32] %.fca.3.insert466, i32 %.fca.4.load468, 4
  %131 = ptrtoint ptr %.fca.5.gep470 to i32
  call void @__asan_load4_noabort(i32 %131)
  %.fca.5.load471 = load i32, ptr %.fca.5.gep470, align 4
  %.fca.5.insert472 = insertvalue [8 x i32] %.fca.4.insert469, i32 %.fca.5.load471, 5
  %132 = ptrtoint ptr %.fca.6.gep473 to i32
  call void @__asan_load4_noabort(i32 %132)
  %.fca.6.load474 = load i32, ptr %.fca.6.gep473, align 4
  %.fca.6.insert475 = insertvalue [8 x i32] %.fca.5.insert472, i32 %.fca.6.load474, 6
  %133 = ptrtoint ptr %.fca.7.gep476 to i32
  call void @__asan_load4_noabort(i32 %133)
  %.fca.7.load477 = load i32, ptr %.fca.7.gep476, align 4
  %.fca.7.insert478 = insertvalue [8 x i32] %.fca.6.insert475, i32 %.fca.7.load477, 7
  call void %125(ptr noundef %map, [8 x i32] %.fca.7.insert478, i32 noundef %add) #10
  %134 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 1, ptr %state, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tmp267) #10
  %135 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %read, align 4
  call void %136(ptr nonnull sret(%union.map_word) align 4 %tmp267, ptr noundef %map, i32 noundef %add) #10
  %137 = call ptr @memcpy(ptr %status, ptr %tmp267, i32 32)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tmp267) #10
  %138 = ptrtoint ptr %bankwidth to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %bankwidth, align 4
  %add273773 = add i32 %139, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %add273773)
  %cmp275775.not = icmp ult i32 %add273773, 4
  br i1 %cmp275775.not, label %do.end262.if.end402_crit_edge, label %do.end262.for.body276_crit_edge

do.end262.for.body276_crit_edge:                  ; preds = %do.end262
  br label %for.body276

do.end262.if.end402_crit_edge:                    ; preds = %do.end262
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end402

for.cond271:                                      ; preds = %for.body276
  %inc285 = add nuw nsw i32 %i269.0776, 1
  %140 = ptrtoint ptr %bankwidth to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %bankwidth, align 4
  %add273 = add i32 %141, 3
  %div274716 = lshr i32 %add273, 2
  %cmp275 = icmp ult i32 %inc285, %div274716
  br i1 %cmp275, label %for.cond271.for.body276_crit_edge, label %for.cond271.if.end402_crit_edge

for.cond271.if.end402_crit_edge:                  ; preds = %for.cond271
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end402

for.cond271.for.body276_crit_edge:                ; preds = %for.cond271
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body276

for.body276:                                      ; preds = %for.cond271.for.body276_crit_edge, %do.end262.for.body276_crit_edge
  %i269.0776 = phi i32 [ %inc285, %for.cond271.for.body276_crit_edge ], [ 0, %do.end262.for.body276_crit_edge ]
  %arrayidx277 = getelementptr [8 x i32], ptr %status, i32 0, i32 %i269.0776
  %142 = ptrtoint ptr %arrayidx277 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %arrayidx277, align 4
  call void @cfi_build_cmd(ptr nonnull sret(%union.map_word) align 4 %tmp278, i32 noundef 58, ptr noundef %map, ptr noundef %1) #10
  %arrayidx279 = getelementptr [8 x i32], ptr %tmp278, i32 0, i32 %i269.0776
  %144 = ptrtoint ptr %arrayidx279 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %arrayidx279, align 4
  %and280 = and i32 %145, %143
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and280)
  %tobool281.not = icmp eq i32 %and280, 0
  br i1 %tobool281.not, label %for.cond271, label %if.then289.critedge

if.then289.critedge:                              ; preds = %for.body276
  %146 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %status, align 4
  %conv = trunc i32 %147 to i8
  %148 = ptrtoint ptr %bankwidth to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %bankwidth, align 4
  %add295778 = add i32 %149, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %add295778)
  %cmp297780.not = icmp ult i32 %add295778, 4
  br i1 %cmp297780.not, label %if.then289.critedge.if.end342_crit_edge, label %for.body299.lr.ph

if.then289.critedge.if.end342_crit_edge:          ; preds = %if.then289.critedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end342

for.body299.lr.ph:                                ; preds = %if.then289.critedge
  %conv301 = and i32 %147, 255
  br label %for.body299

for.cond293:                                      ; preds = %for.body299
  %inc309 = add nuw nsw i32 %i291.0781, 1
  %150 = ptrtoint ptr %bankwidth to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %bankwidth, align 4
  %add295 = add i32 %151, 3
  %div296717 = lshr i32 %add295, 2
  %cmp297 = icmp ult i32 %inc309, %div296717
  br i1 %cmp297, label %for.cond293.for.body299_crit_edge, label %for.cond293.if.end342_crit_edge

for.cond293.if.end342_crit_edge:                  ; preds = %for.cond293
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end342

for.cond293.for.body299_crit_edge:                ; preds = %for.cond293
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body299

for.body299:                                      ; preds = %for.cond293.for.body299_crit_edge, %for.body299.lr.ph
  %i291.0781 = phi i32 [ 0, %for.body299.lr.ph ], [ %inc309, %for.cond293.for.body299_crit_edge ]
  %arrayidx300 = getelementptr [8 x i32], ptr %status, i32 0, i32 %i291.0781
  %152 = ptrtoint ptr %arrayidx300 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %arrayidx300, align 4
  call void @cfi_build_cmd(ptr nonnull sret(%union.map_word) align 4 %tmp302, i32 noundef %conv301, ptr noundef %map, ptr noundef %1) #10
  %arrayidx303 = getelementptr [8 x i32], ptr %tmp302, i32 0, i32 %i291.0781
  %154 = ptrtoint ptr %arrayidx303 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %arrayidx303, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %153, i32 %155)
  %cmp304.not = icmp eq i32 %153, %155
  br i1 %cmp304.not, label %for.cond293, label %for.cond315.preheader

for.cond315.preheader:                            ; preds = %for.body299
  %156 = ptrtoint ptr %bankwidth to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %bankwidth, align 4
  %add317 = add i32 %157, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %add317)
  %cmp319786.not = icmp ult i32 %add317, 4
  br i1 %cmp319786.not, label %for.cond315.preheader.do.end337_crit_edge, label %for.cond322.preheader.lr.ph

for.cond315.preheader.do.end337_crit_edge:        ; preds = %for.cond315.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end337

for.cond322.preheader.lr.ph:                      ; preds = %for.cond315.preheader
  %div318718 = lshr i32 %add317, 2
  %158 = ptrtoint ptr %interleave to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %interleave, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %159)
  %cmp323782 = icmp sgt i32 %159, 0
  br label %for.cond322.preheader

for.cond322.preheader:                            ; preds = %for.inc332.for.cond322.preheader_crit_edge, %for.cond322.preheader.lr.ph
  %w.0788 = phi i32 [ 0, %for.cond322.preheader.lr.ph ], [ %inc333, %for.inc332.for.cond322.preheader_crit_edge ]
  %chipstatus.0787 = phi i8 [ %conv, %for.cond322.preheader.lr.ph ], [ %chipstatus.1.lcssa, %for.inc332.for.cond322.preheader_crit_edge ]
  br i1 %cmp323782, label %for.body325.lr.ph, label %for.cond322.preheader.for.inc332_crit_edge

for.cond322.preheader.for.inc332_crit_edge:       ; preds = %for.cond322.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc332

for.body325.lr.ph:                                ; preds = %for.cond322.preheader
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx326 = getelementptr [8 x i32], ptr %status, i32 0, i32 %w.0788
  %160 = ptrtoint ptr %arrayidx326 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %arrayidx326, align 4
  %162 = ptrtoint ptr %device_type to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %device_type, align 4
  %mul = shl i32 %163, 3
  %shr = lshr i32 %161, %mul
  %164 = trunc i32 %shr to i8
  %165 = or i8 %chipstatus.0787, %164
  br label %for.inc332

for.inc332:                                       ; preds = %for.body325.lr.ph, %for.cond322.preheader.for.inc332_crit_edge
  %chipstatus.1.lcssa = phi i8 [ %chipstatus.0787, %for.cond322.preheader.for.inc332_crit_edge ], [ %165, %for.body325.lr.ph ]
  %inc333 = add nuw nsw i32 %w.0788, 1
  %exitcond805.not = icmp eq i32 %inc333, %div318718
  br i1 %exitcond805.not, label %for.inc332.do.end337_crit_edge, label %for.inc332.for.cond322.preheader_crit_edge

for.inc332.for.cond322.preheader_crit_edge:       ; preds = %for.inc332
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond322.preheader

for.inc332.do.end337_crit_edge:                   ; preds = %for.inc332
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end337

do.end337:                                        ; preds = %for.inc332.do.end337_crit_edge, %for.cond315.preheader.do.end337_crit_edge
  %chipstatus.0.lcssa = phi i8 [ %conv, %for.cond315.preheader.do.end337_crit_edge ], [ %chipstatus.1.lcssa, %for.inc332.do.end337_crit_edge ]
  %166 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %status, align 4
  %conv340 = zext i8 %chipstatus.0.lcssa to i32
  %call341 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %167, i32 noundef %conv340) #13
  br label %if.end342

if.end342:                                        ; preds = %do.end337, %for.cond293.if.end342_crit_edge, %if.then289.critedge.if.end342_crit_edge
  %chipstatus.2 = phi i8 [ %chipstatus.0.lcssa, %do.end337 ], [ %conv, %if.then289.critedge.if.end342_crit_edge ], [ %conv, %for.cond293.if.end342_crit_edge ]
  %168 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %write, align 4
  call void @cfi_build_cmd(ptr nonnull sret(%union.map_word) align 4 %agg.tmp344, i32 noundef 80, ptr noundef %map, ptr noundef %1) #10
  %170 = ptrtoint ptr %agg.tmp344 to i32
  call void @__asan_load4_noabort(i32 %170)
  %.fca.0.load413 = load i32, ptr %agg.tmp344, align 4
  %.fca.0.insert414 = insertvalue [8 x i32] poison, i32 %.fca.0.load413, 0
  %171 = ptrtoint ptr %.fca.1.gep415 to i32
  call void @__asan_load4_noabort(i32 %171)
  %.fca.1.load416 = load i32, ptr %.fca.1.gep415, align 4
  %.fca.1.insert417 = insertvalue [8 x i32] %.fca.0.insert414, i32 %.fca.1.load416, 1
  %172 = ptrtoint ptr %.fca.2.gep418 to i32
  call void @__asan_load4_noabort(i32 %172)
  %.fca.2.load419 = load i32, ptr %.fca.2.gep418, align 4
  %.fca.2.insert420 = insertvalue [8 x i32] %.fca.1.insert417, i32 %.fca.2.load419, 2
  %173 = ptrtoint ptr %.fca.3.gep421 to i32
  call void @__asan_load4_noabort(i32 %173)
  %.fca.3.load422 = load i32, ptr %.fca.3.gep421, align 4
  %.fca.3.insert423 = insertvalue [8 x i32] %.fca.2.insert420, i32 %.fca.3.load422, 3
  %174 = ptrtoint ptr %.fca.4.gep424 to i32
  call void @__asan_load4_noabort(i32 %174)
  %.fca.4.load425 = load i32, ptr %.fca.4.gep424, align 4
  %.fca.4.insert426 = insertvalue [8 x i32] %.fca.3.insert423, i32 %.fca.4.load425, 4
  %175 = ptrtoint ptr %.fca.5.gep427 to i32
  call void @__asan_load4_noabort(i32 %175)
  %.fca.5.load428 = load i32, ptr %.fca.5.gep427, align 4
  %.fca.5.insert429 = insertvalue [8 x i32] %.fca.4.insert426, i32 %.fca.5.load428, 5
  %176 = ptrtoint ptr %.fca.6.gep430 to i32
  call void @__asan_load4_noabort(i32 %176)
  %.fca.6.load431 = load i32, ptr %.fca.6.gep430, align 4
  %.fca.6.insert432 = insertvalue [8 x i32] %.fca.5.insert429, i32 %.fca.6.load431, 6
  %177 = ptrtoint ptr %.fca.7.gep433 to i32
  call void @__asan_load4_noabort(i32 %177)
  %.fca.7.load434 = load i32, ptr %.fca.7.gep433, align 4
  %.fca.7.insert435 = insertvalue [8 x i32] %.fca.6.insert432, i32 %.fca.7.load434, 7
  call void %169(ptr noundef %map, [8 x i32] %.fca.7.insert435, i32 noundef %add) #10
  %178 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %write, align 4
  call void @cfi_build_cmd(ptr nonnull sret(%union.map_word) align 4 %agg.tmp347, i32 noundef 112, ptr noundef %map, ptr noundef %1) #10
  %180 = ptrtoint ptr %agg.tmp347 to i32
  call void @__asan_load4_noabort(i32 %180)
  %.fca.0.load = load i32, ptr %agg.tmp347, align 4
  %.fca.0.insert = insertvalue [8 x i32] poison, i32 %.fca.0.load, 0
  %181 = ptrtoint ptr %.fca.1.gep to i32
  call void @__asan_load4_noabort(i32 %181)
  %.fca.1.load = load i32, ptr %.fca.1.gep, align 4
  %.fca.1.insert = insertvalue [8 x i32] %.fca.0.insert, i32 %.fca.1.load, 1
  %182 = ptrtoint ptr %.fca.2.gep to i32
  call void @__asan_load4_noabort(i32 %182)
  %.fca.2.load = load i32, ptr %.fca.2.gep, align 4
  %.fca.2.insert = insertvalue [8 x i32] %.fca.1.insert, i32 %.fca.2.load, 2
  %183 = ptrtoint ptr %.fca.3.gep to i32
  call void @__asan_load4_noabort(i32 %183)
  %.fca.3.load = load i32, ptr %.fca.3.gep, align 4
  %.fca.3.insert = insertvalue [8 x i32] %.fca.2.insert, i32 %.fca.3.load, 3
  %184 = ptrtoint ptr %.fca.4.gep to i32
  call void @__asan_load4_noabort(i32 %184)
  %.fca.4.load = load i32, ptr %.fca.4.gep, align 4
  %.fca.4.insert = insertvalue [8 x i32] %.fca.3.insert, i32 %.fca.4.load, 4
  %185 = ptrtoint ptr %.fca.5.gep to i32
  call void @__asan_load4_noabort(i32 %185)
  %.fca.5.load = load i32, ptr %.fca.5.gep, align 4
  %.fca.5.insert = insertvalue [8 x i32] %.fca.4.insert, i32 %.fca.5.load, 5
  %186 = ptrtoint ptr %.fca.6.gep to i32
  call void @__asan_load4_noabort(i32 %186)
  %.fca.6.load = load i32, ptr %.fca.6.gep, align 4
  %.fca.6.insert = insertvalue [8 x i32] %.fca.5.insert, i32 %.fca.6.load, 6
  %187 = ptrtoint ptr %.fca.7.gep to i32
  call void @__asan_load4_noabort(i32 %187)
  %.fca.7.load = load i32, ptr %.fca.7.gep, align 4
  %.fca.7.insert = insertvalue [8 x i32] %.fca.6.insert, i32 %.fca.7.load, 7
  call void %179(ptr noundef %map, [8 x i32] %.fca.7.insert, i32 noundef %add) #10
  %conv349 = zext i8 %chipstatus.2 to i32
  %and350 = and i32 %conv349, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %and350)
  %cmp351 = icmp eq i32 %and350, 48
  br i1 %cmp351, label %do.end356, label %if.else

do.end356:                                        ; preds = %if.end342
  call void @__sanitizer_cov_trace_pc() #12
  %call359 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %conv349) #13
  br label %if.end402

if.else:                                          ; preds = %if.end342
  %and361 = and i32 %conv349, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and361)
  %tobool362.not = icmp eq i32 %and361, 0
  br i1 %tobool362.not, label %if.else364, label %if.else.if.end402_crit_edge

if.else.if.end402_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end402

if.else364:                                       ; preds = %if.else
  %and366 = and i32 %conv349, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and366)
  %tobool367.not = icmp eq i32 %and366, 0
  br i1 %tobool367.not, label %if.else375, label %do.end371

do.end371:                                        ; preds = %if.else364
  call void @__sanitizer_cov_trace_pc() #12
  %call374 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef %conv349) #13
  br label %if.end402

if.else375:                                       ; preds = %if.else364
  %and377 = and i32 %conv349, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and377)
  %tobool378.not = icmp eq i32 %and377, 0
  br i1 %tobool378.not, label %if.else375.if.end402_crit_edge, label %if.then379

if.else375.if.end402_crit_edge:                   ; preds = %if.else375
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end402

if.then379:                                       ; preds = %if.else375
  %tobool380.not = icmp eq i32 %retries.0.ph, 0
  br i1 %tobool380.not, label %do.end394, label %cleanup

do.end394:                                        ; preds = %if.then379
  call void @__sanitizer_cov_trace_pc() #12
  %call397 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, i32 noundef %add, i32 noundef %conv349) #13
  br label %if.end402

cleanup:                                          ; preds = %if.then379
  call void @__sanitizer_cov_trace_pc() #12
  %dec = add nsw i32 %retries.0.ph, -1
  %call387 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, i32 noundef %add, i32 noundef %conv349) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %188 = load volatile i32, ptr @jiffies, align 128
  %189 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %189)
  store i32 1, ptr %state, align 4
  call void @mutex_unlock(ptr noundef %mutex) #10
  br label %retry.outer

if.end402:                                        ; preds = %do.end394, %if.else375.if.end402_crit_edge, %do.end371, %if.else.if.end402_crit_edge, %do.end356, %for.cond271.if.end402_crit_edge, %do.end262.if.end402_crit_edge
  %ret.2 = phi i32 [ -5, %do.end394 ], [ -5, %do.end371 ], [ -5, %do.end356 ], [ 0, %for.cond271.if.end402_crit_edge ], [ 0, %do.end262.if.end402_crit_edge ], [ 0, %if.else375.if.end402_crit_edge ], [ -30, %if.else.if.end402_crit_edge ]
  call void @__wake_up(ptr noundef %wq, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  call void @mutex_unlock(ptr noundef %mutex) #10
  br label %cleanup405

cleanup405:                                       ; preds = %if.end402, %do.end249, %if.then15
  %retval.0 = phi i32 [ %ret.2, %if.end402 ], [ -5, %do.end249 ], [ -5, %if.then15 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %status_OK) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %status) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @default_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfi_build_cmd(ptr sret(%union.map_word) align 4, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfi_udelay(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @do_read_onechip(ptr noundef %map, ptr noundef %chip, i64 noundef %adr, i32 noundef %len, ptr noundef %buf) #7 align 64 {
entry:
  %status = alloca %union.map_word, align 4
  %status_OK = alloca %union.map_word, align 4
  %wait = alloca %struct.wait_queue_entry, align 4
  %agg.tmp = alloca %union.map_word, align 4
  %agg.tmp7 = alloca %union.map_word, align 4
  %tmp10 = alloca %union.map_word, align 4
  %agg.tmp31 = alloca %union.map_word, align 4
  %agg.tmp34 = alloca %union.map_word, align 4
  %agg.tmp46 = alloca %union.map_word, align 4
  %agg.tmp51 = alloca %union.map_word, align 4
  %agg.tmp81 = alloca %union.map_word, align 4
  %agg.tmp177 = alloca %union.map_word, align 4
  %agg.tmp180 = alloca %union.map_word, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %status) #10
  %0 = call ptr @memset(ptr %status, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %status_OK) #10
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #10
  %1 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %2 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %3 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %4 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %5 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %wait, align 4
  %6 = tail call i32 @llvm.read_register.i32(metadata !112) #10
  %and.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task, align 8
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %1, align 4
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @default_wake_function, ptr %2, align 4
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %3, align 4
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %4, align 4
  %fldrv_priv = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 17
  %14 = ptrtoint ptr %fldrv_priv to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fldrv_priv, align 4
  %16 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %chip, align 4
  %bankwidth = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 6
  %18 = ptrtoint ptr %bankwidth to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %bankwidth, align 4
  %neg = sub i32 0, %19
  %20 = trunc i64 %adr to i32
  %21 = add i32 %17, %20
  %conv3 = and i32 %21, %neg
  call void @cfi_build_cmd(ptr nonnull sret(%union.map_word) align 4 %status_OK, i32 noundef 128, ptr noundef %map, ptr noundef %15) #10
  %mutex = getelementptr inbounds %struct.flchip, ptr %chip, i32 0, i32 7
  %state = getelementptr inbounds %struct.flchip, ptr %chip, i32 0, i32 2
  %write50 = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 9
  %.fca.1.gep248 = getelementptr inbounds [8 x i32], ptr %agg.tmp51, i32 0, i32 1
  %.fca.2.gep251 = getelementptr inbounds [8 x i32], ptr %agg.tmp51, i32 0, i32 2
  %.fca.3.gep254 = getelementptr inbounds [8 x i32], ptr %agg.tmp51, i32 0, i32 3
  %.fca.4.gep257 = getelementptr inbounds [8 x i32], ptr %agg.tmp51, i32 0, i32 4
  %.fca.5.gep260 = getelementptr inbounds [8 x i32], ptr %agg.tmp51, i32 0, i32 5
  %.fca.6.gep263 = getelementptr inbounds [8 x i32], ptr %agg.tmp51, i32 0, i32 6
  %.fca.7.gep266 = getelementptr inbounds [8 x i32], ptr %agg.tmp51, i32 0, i32 7
  %read56 = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 7
  %cmdset_priv = getelementptr inbounds %struct.cfi_private, ptr %15, i32 0, i32 1
  %wq167 = getelementptr inbounds %struct.flchip, ptr %chip, i32 0, i32 8
  br label %retry.outer

retry.outer:                                      ; preds = %__here, %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %timeo.0.ph.in = load volatile i32, ptr @jiffies, align 128
  %timeo.0.ph = add i32 %timeo.0.ph.in, 100
  br label %retry

retry:                                            ; preds = %if.end96, %retry.outer
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %22 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %state, align 4
  %24 = zext i32 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.58)
  switch i32 %23, label %retry.__here_crit_edge [
    i32 4, label %sw.bb
    i32 0, label %if.end182.critedge477
    i32 2, label %retry.sw.bb49_crit_edge
    i32 3, label %retry.sw.bb49_crit_edge534
    i32 1, label %retry.sw.bb54_crit_edge
  ]

retry.sw.bb54_crit_edge:                          ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb54

retry.sw.bb49_crit_edge534:                       ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb49

retry.sw.bb49_crit_edge:                          ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb49

retry.__here_crit_edge:                           ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

sw.bb:                                            ; preds = %retry
  %25 = ptrtoint ptr %cmdset_priv to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cmdset_priv, align 4
  %FeatureSupport = getelementptr inbounds %struct.cfi_pri_intelext, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %FeatureSupport to i32
  call void @__asan_loadN_noabort(i32 %27, i32 4)
  %28 = load i32, ptr %FeatureSupport, align 1
  %and5 = and i32 %28, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool.not = icmp eq i32 %and5, 0
  br i1 %tobool.not, label %sw.bb.__here_crit_edge, label %if.end

sw.bb.__here_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

if.end:                                           ; preds = %sw.bb
  %29 = ptrtoint ptr %write50 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %write50, align 4
  call void @cfi_build_cmd(ptr nonnull sret(%union.map_word) align 4 %agg.tmp, i32 noundef 176, ptr noundef %map, ptr noundef %15) #10
  %31 = ptrtoint ptr %agg.tmp to i32
  call void @__asan_load4_noabort(i32 %31)
  %.fca.0.load370 = load i32, ptr %agg.tmp, align 4
  %.fca.0.insert371 = insertvalue [8 x i32] poison, i32 %.fca.0.load370, 0
  %.fca.1.gep372 = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 1
  %32 = ptrtoint ptr %.fca.1.gep372 to i32
  call void @__asan_load4_noabort(i32 %32)
  %.fca.1.load373 = load i32, ptr %.fca.1.gep372, align 4
  %.fca.1.insert374 = insertvalue [8 x i32] %.fca.0.insert371, i32 %.fca.1.load373, 1
  %.fca.2.gep375 = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 2
  %33 = ptrtoint ptr %.fca.2.gep375 to i32
  call void @__asan_load4_noabort(i32 %33)
  %.fca.2.load376 = load i32, ptr %.fca.2.gep375, align 4
  %.fca.2.insert377 = insertvalue [8 x i32] %.fca.1.insert374, i32 %.fca.2.load376, 2
  %.fca.3.gep378 = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 3
  %34 = ptrtoint ptr %.fca.3.gep378 to i32
  call void @__asan_load4_noabort(i32 %34)
  %.fca.3.load379 = load i32, ptr %.fca.3.gep378, align 4
  %.fca.3.insert380 = insertvalue [8 x i32] %.fca.2.insert377, i32 %.fca.3.load379, 3
  %.fca.4.gep381 = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 4
  %35 = ptrtoint ptr %.fca.4.gep381 to i32
  call void @__asan_load4_noabort(i32 %35)
  %.fca.4.load382 = load i32, ptr %.fca.4.gep381, align 4
  %.fca.4.insert383 = insertvalue [8 x i32] %.fca.3.insert380, i32 %.fca.4.load382, 4
  %.fca.5.gep384 = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 5
  %36 = ptrtoint ptr %.fca.5.gep384 to i32
  call void @__asan_load4_noabort(i32 %36)
  %.fca.5.load385 = load i32, ptr %.fca.5.gep384, align 4
  %.fca.5.insert386 = insertvalue [8 x i32] %.fca.4.insert383, i32 %.fca.5.load385, 5
  %.fca.6.gep387 = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 6
  %37 = ptrtoint ptr %.fca.6.gep387 to i32
  call void @__asan_load4_noabort(i32 %37)
  %.fca.6.load388 = load i32, ptr %.fca.6.gep387, align 4
  %.fca.6.insert389 = insertvalue [8 x i32] %.fca.5.insert386, i32 %.fca.6.load388, 6
  %.fca.7.gep390 = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 7
  %38 = ptrtoint ptr %.fca.7.gep390 to i32
  call void @__asan_load4_noabort(i32 %38)
  %.fca.7.load391 = load i32, ptr %.fca.7.gep390, align 4
  %.fca.7.insert392 = insertvalue [8 x i32] %.fca.6.insert389, i32 %.fca.7.load391, 7
  call void %30(ptr noundef %map, [8 x i32] %.fca.7.insert392, i32 noundef %conv3) #10
  %39 = ptrtoint ptr %write50 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %write50, align 4
  call void @cfi_build_cmd(ptr nonnull sret(%union.map_word) align 4 %agg.tmp7, i32 noundef 112, ptr noundef %map, ptr noundef %15) #10
  %41 = ptrtoint ptr %agg.tmp7 to i32
  call void @__asan_load4_noabort(i32 %41)
  %.fca.0.load346 = load i32, ptr %agg.tmp7, align 4
  %.fca.0.insert347 = insertvalue [8 x i32] poison, i32 %.fca.0.load346, 0
  %.fca.1.gep348 = getelementptr inbounds [8 x i32], ptr %agg.tmp7, i32 0, i32 1
  %42 = ptrtoint ptr %.fca.1.gep348 to i32
  call void @__asan_load4_noabort(i32 %42)
  %.fca.1.load349 = load i32, ptr %.fca.1.gep348, align 4
  %.fca.1.insert350 = insertvalue [8 x i32] %.fca.0.insert347, i32 %.fca.1.load349, 1
  %.fca.2.gep351 = getelementptr inbounds [8 x i32], ptr %agg.tmp7, i32 0, i32 2
  %43 = ptrtoint ptr %.fca.2.gep351 to i32
  call void @__asan_load4_noabort(i32 %43)
  %.fca.2.load352 = load i32, ptr %.fca.2.gep351, align 4
  %.fca.2.insert353 = insertvalue [8 x i32] %.fca.1.insert350, i32 %.fca.2.load352, 2
  %.fca.3.gep354 = getelementptr inbounds [8 x i32], ptr %agg.tmp7, i32 0, i32 3
  %44 = ptrtoint ptr %.fca.3.gep354 to i32
  call void @__asan_load4_noabort(i32 %44)
  %.fca.3.load355 = load i32, ptr %.fca.3.gep354, align 4
  %.fca.3.insert356 = insertvalue [8 x i32] %.fca.2.insert353, i32 %.fca.3.load355, 3
  %.fca.4.gep357 = getelementptr inbounds [8 x i32], ptr %agg.tmp7, i32 0, i32 4
  %45 = ptrtoint ptr %.fca.4.gep357 to i32
  call void @__asan_load4_noabort(i32 %45)
  %.fca.4.load358 = load i32, ptr %.fca.4.gep357, align 4
  %.fca.4.insert359 = insertvalue [8 x i32] %.fca.3.insert356, i32 %.fca.4.load358, 4
  %.fca.5.gep360 = getelementptr inbounds [8 x i32], ptr %agg.tmp7, i32 0, i32 5
  %46 = ptrtoint ptr %.fca.5.gep360 to i32
  call void @__asan_load4_noabort(i32 %46)
  %.fca.5.load361 = load i32, ptr %.fca.5.gep360, align 4
  %.fca.5.insert362 = insertvalue [8 x i32] %.fca.4.insert359, i32 %.fca.5.load361, 5
  %.fca.6.gep363 = getelementptr inbounds [8 x i32], ptr %agg.tmp7, i32 0, i32 6
  %47 = ptrtoint ptr %.fca.6.gep363 to i32
  call void @__asan_load4_noabort(i32 %47)
  %.fca.6.load364 = load i32, ptr %.fca.6.gep363, align 4
  %.fca.6.insert365 = insertvalue [8 x i32] %.fca.5.insert362, i32 %.fca.6.load364, 6
  %.fca.7.gep366 = getelementptr inbounds [8 x i32], ptr %agg.tmp7, i32 0, i32 7
  %48 = ptrtoint ptr %.fca.7.gep366 to i32
  call void @__asan_load4_noabort(i32 %48)
  %.fca.7.load367 = load i32, ptr %.fca.7.gep366, align 4
  %.fca.7.insert368 = insertvalue [8 x i32] %.fca.6.insert365, i32 %.fca.7.load367, 7
  call void %40(ptr noundef %map, [8 x i32] %.fca.7.insert368, i32 noundef %conv3) #10
  %oldstate = getelementptr inbounds %struct.flchip, ptr %chip, i32 0, i32 3
  %49 = ptrtoint ptr %oldstate to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 4, ptr %oldstate, align 4
  %50 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 5, ptr %state, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tmp10) #10
  %51 = ptrtoint ptr %read56 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %read56, align 4
  call void %52(ptr nonnull sret(%union.map_word) align 4 %tmp10, ptr noundef %map, i32 noundef %conv3) #10
  %53 = call ptr @memcpy(ptr %status, ptr %tmp10, i32 32)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tmp10) #10
  %54 = ptrtoint ptr %bankwidth to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %bankwidth, align 4
  %add13500 = add i32 %55, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %add13500)
  %cmp498502.not = icmp ult i32 %add13500, 4
  br i1 %cmp498502.not, label %if.end.for.end44_crit_edge, label %if.end.for.body.lr.ph_crit_edge

if.end.for.body.lr.ph_crit_edge:                  ; preds = %if.end
  br label %for.body.lr.ph

if.end.for.end44_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end44

for.body.lr.ph:                                   ; preds = %if.end41.for.body.lr.ph_crit_edge, %if.end.for.body.lr.ph_crit_edge
  %div476503.in = phi i32 [ %add13, %if.end41.for.body.lr.ph_crit_edge ], [ %add13500, %if.end.for.body.lr.ph_crit_edge ]
  %div476503 = lshr i32 %div476503.in, 2
  br label %for.body

for.cond11:                                       ; preds = %for.body
  %inc = add nuw nsw i32 %i.0499, 1
  %exitcond511.not = icmp eq i32 %inc, %div476503
  br i1 %exitcond511.not, label %for.cond11.for.end44_crit_edge, label %for.cond11.for.body_crit_edge

for.cond11.for.body_crit_edge:                    ; preds = %for.cond11
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.cond11.for.end44_crit_edge:                   ; preds = %for.cond11
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end44

for.body:                                         ; preds = %for.cond11.for.body_crit_edge, %for.body.lr.ph
  %i.0499 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond11.for.body_crit_edge ]
  %arrayidx = getelementptr [8 x i32], ptr %status, i32 0, i32 %i.0499
  %56 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx, align 4
  %arrayidx15 = getelementptr [8 x i32], ptr %status_OK, i32 0, i32 %i.0499
  %58 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx15, align 4
  %and16 = and i32 %59, %57
  call void @__sanitizer_cov_trace_cmp4(i32 %and16, i32 %59)
  %cmp18.not = icmp eq i32 %and16, %59
  br i1 %cmp18.not, label %for.cond11, label %if.end25.critedge

if.end25.critedge:                                ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %60 = load volatile i32, ptr @jiffies, align 128
  %sub26 = sub i32 %timeo.0.ph, %60
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub26)
  %cmp27 = icmp slt i32 %sub26, 0
  br i1 %cmp27, label %if.then29, label %if.end41

if.then29:                                        ; preds = %if.end25.critedge
  call void @__sanitizer_cov_trace_pc() #12
  %61 = ptrtoint ptr %write50 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %write50, align 4
  call void @cfi_build_cmd(ptr nonnull sret(%union.map_word) align 4 %agg.tmp31, i32 noundef 208, ptr noundef %map, ptr noundef %15) #10
  %63 = ptrtoint ptr %agg.tmp31 to i32
  call void @__asan_load4_noabort(i32 %63)
  %.fca.0.load318 = load i32, ptr %agg.tmp31, align 4
  %.fca.0.insert319 = insertvalue [8 x i32] poison, i32 %.fca.0.load318, 0
  %.fca.1.gep320 = getelementptr inbounds [8 x i32], ptr %agg.tmp31, i32 0, i32 1
  %64 = ptrtoint ptr %.fca.1.gep320 to i32
  call void @__asan_load4_noabort(i32 %64)
  %.fca.1.load321 = load i32, ptr %.fca.1.gep320, align 4
  %.fca.1.insert322 = insertvalue [8 x i32] %.fca.0.insert319, i32 %.fca.1.load321, 1
  %.fca.2.gep323 = getelementptr inbounds [8 x i32], ptr %agg.tmp31, i32 0, i32 2
  %65 = ptrtoint ptr %.fca.2.gep323 to i32
  call void @__asan_load4_noabort(i32 %65)
  %.fca.2.load324 = load i32, ptr %.fca.2.gep323, align 4
  %.fca.2.insert325 = insertvalue [8 x i32] %.fca.1.insert322, i32 %.fca.2.load324, 2
  %.fca.3.gep326 = getelementptr inbounds [8 x i32], ptr %agg.tmp31, i32 0, i32 3
  %66 = ptrtoint ptr %.fca.3.gep326 to i32
  call void @__asan_load4_noabort(i32 %66)
  %.fca.3.load327 = load i32, ptr %.fca.3.gep326, align 4
  %.fca.3.insert328 = insertvalue [8 x i32] %.fca.2.insert325, i32 %.fca.3.load327, 3
  %.fca.4.gep329 = getelementptr inbounds [8 x i32], ptr %agg.tmp31, i32 0, i32 4
  %67 = ptrtoint ptr %.fca.4.gep329 to i32
  call void @__asan_load4_noabort(i32 %67)
  %.fca.4.load330 = load i32, ptr %.fca.4.gep329, align 4
  %.fca.4.insert331 = insertvalue [8 x i32] %.fca.3.insert328, i32 %.fca.4.load330, 4
  %.fca.5.gep332 = getelementptr inbounds [8 x i32], ptr %agg.tmp31, i32 0, i32 5
  %68 = ptrtoint ptr %.fca.5.gep332 to i32
  call void @__asan_load4_noabort(i32 %68)
  %.fca.5.load333 = load i32, ptr %.fca.5.gep332, align 4
  %.fca.5.insert334 = insertvalue [8 x i32] %.fca.4.insert331, i32 %.fca.5.load333, 5
  %.fca.6.gep335 = getelementptr inbounds [8 x i32], ptr %agg.tmp31, i32 0, i32 6
  %69 = ptrtoint ptr %.fca.6.gep335 to i32
  call void @__asan_load4_noabort(i32 %69)
  %.fca.6.load336 = load i32, ptr %.fca.6.gep335, align 4
  %.fca.6.insert337 = insertvalue [8 x i32] %.fca.5.insert334, i32 %.fca.6.load336, 6
  %.fca.7.gep338 = getelementptr inbounds [8 x i32], ptr %agg.tmp31, i32 0, i32 7
  %70 = ptrtoint ptr %.fca.7.gep338 to i32
  call void @__asan_load4_noabort(i32 %70)
  %.fca.7.load339 = load i32, ptr %.fca.7.gep338, align 4
  %.fca.7.insert340 = insertvalue [8 x i32] %.fca.6.insert337, i32 %.fca.7.load339, 7
  call void %62(ptr noundef %map, [8 x i32] %.fca.7.insert340, i32 noundef %conv3) #10
  %71 = ptrtoint ptr %write50 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %write50, align 4
  call void @cfi_build_cmd(ptr nonnull sret(%union.map_word) align 4 %agg.tmp34, i32 noundef 112, ptr noundef %map, ptr noundef %15) #10
  %73 = ptrtoint ptr %agg.tmp34 to i32
  call void @__asan_load4_noabort(i32 %73)
  %.fca.0.load294 = load i32, ptr %agg.tmp34, align 4
  %.fca.0.insert295 = insertvalue [8 x i32] poison, i32 %.fca.0.load294, 0
  %.fca.1.gep296 = getelementptr inbounds [8 x i32], ptr %agg.tmp34, i32 0, i32 1
  %74 = ptrtoint ptr %.fca.1.gep296 to i32
  call void @__asan_load4_noabort(i32 %74)
  %.fca.1.load297 = load i32, ptr %.fca.1.gep296, align 4
  %.fca.1.insert298 = insertvalue [8 x i32] %.fca.0.insert295, i32 %.fca.1.load297, 1
  %.fca.2.gep299 = getelementptr inbounds [8 x i32], ptr %agg.tmp34, i32 0, i32 2
  %75 = ptrtoint ptr %.fca.2.gep299 to i32
  call void @__asan_load4_noabort(i32 %75)
  %.fca.2.load300 = load i32, ptr %.fca.2.gep299, align 4
  %.fca.2.insert301 = insertvalue [8 x i32] %.fca.1.insert298, i32 %.fca.2.load300, 2
  %.fca.3.gep302 = getelementptr inbounds [8 x i32], ptr %agg.tmp34, i32 0, i32 3
  %76 = ptrtoint ptr %.fca.3.gep302 to i32
  call void @__asan_load4_noabort(i32 %76)
  %.fca.3.load303 = load i32, ptr %.fca.3.gep302, align 4
  %.fca.3.insert304 = insertvalue [8 x i32] %.fca.2.insert301, i32 %.fca.3.load303, 3
  %.fca.4.gep305 = getelementptr inbounds [8 x i32], ptr %agg.tmp34, i32 0, i32 4
  %77 = ptrtoint ptr %.fca.4.gep305 to i32
  call void @__asan_load4_noabort(i32 %77)
  %.fca.4.load306 = load i32, ptr %.fca.4.gep305, align 4
  %.fca.4.insert307 = insertvalue [8 x i32] %.fca.3.insert304, i32 %.fca.4.load306, 4
  %.fca.5.gep308 = getelementptr inbounds [8 x i32], ptr %agg.tmp34, i32 0, i32 5
  %78 = ptrtoint ptr %.fca.5.gep308 to i32
  call void @__asan_load4_noabort(i32 %78)
  %.fca.5.load309 = load i32, ptr %.fca.5.gep308, align 4
  %.fca.5.insert310 = insertvalue [8 x i32] %.fca.4.insert307, i32 %.fca.5.load309, 5
  %.fca.6.gep311 = getelementptr inbounds [8 x i32], ptr %agg.tmp34, i32 0, i32 6
  %79 = ptrtoint ptr %.fca.6.gep311 to i32
  call void @__asan_load4_noabort(i32 %79)
  %.fca.6.load312 = load i32, ptr %.fca.6.gep311, align 4
  %.fca.6.insert313 = insertvalue [8 x i32] %.fca.5.insert310, i32 %.fca.6.load312, 6
  %.fca.7.gep314 = getelementptr inbounds [8 x i32], ptr %agg.tmp34, i32 0, i32 7
  %80 = ptrtoint ptr %.fca.7.gep314 to i32
  call void @__asan_load4_noabort(i32 %80)
  %.fca.7.load315 = load i32, ptr %.fca.7.gep314, align 4
  %.fca.7.insert316 = insertvalue [8 x i32] %.fca.6.insert313, i32 %.fca.7.load315, 7
  call void %72(ptr noundef %map, [8 x i32] %.fca.7.insert316, i32 noundef %conv3) #10
  %81 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 4, ptr %state, align 4
  call void @__wake_up(ptr noundef %wq167, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  call void @mutex_unlock(ptr noundef %mutex) #10
  %82 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %status, align 4
  %call40 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, i32 noundef %83) #13
  br label %cleanup

if.end41:                                         ; preds = %if.end25.critedge
  call void @mutex_unlock(ptr noundef %mutex) #10
  call void @cfi_udelay(i32 noundef 1) #10
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tmp10) #10
  %84 = ptrtoint ptr %read56 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %read56, align 4
  call void %85(ptr nonnull sret(%union.map_word) align 4 %tmp10, ptr noundef %map, i32 noundef %conv3) #10
  %86 = call ptr @memcpy(ptr %status, ptr %tmp10, i32 32)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tmp10) #10
  %87 = ptrtoint ptr %bankwidth to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %bankwidth, align 4
  %add13 = add i32 %88, 3
  %cmp498.not = icmp ult i32 %add13, 4
  br i1 %cmp498.not, label %if.end41.for.end44_crit_edge, label %if.end41.for.body.lr.ph_crit_edge

if.end41.for.body.lr.ph_crit_edge:                ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.lr.ph

if.end41.for.end44_crit_edge:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end44

for.end44:                                        ; preds = %if.end41.for.end44_crit_edge, %for.cond11.for.end44_crit_edge, %if.end.for.end44_crit_edge
  %89 = ptrtoint ptr %write50 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %write50, align 4
  call void @cfi_build_cmd(ptr nonnull sret(%union.map_word) align 4 %agg.tmp46, i32 noundef 255, ptr noundef %map, ptr noundef %15) #10
  %91 = ptrtoint ptr %agg.tmp46 to i32
  call void @__asan_load4_noabort(i32 %91)
  %.fca.0.load270 = load i32, ptr %agg.tmp46, align 4
  %.fca.0.insert271 = insertvalue [8 x i32] poison, i32 %.fca.0.load270, 0
  %.fca.1.gep272 = getelementptr inbounds [8 x i32], ptr %agg.tmp46, i32 0, i32 1
  %92 = ptrtoint ptr %.fca.1.gep272 to i32
  call void @__asan_load4_noabort(i32 %92)
  %.fca.1.load273 = load i32, ptr %.fca.1.gep272, align 4
  %.fca.1.insert274 = insertvalue [8 x i32] %.fca.0.insert271, i32 %.fca.1.load273, 1
  %.fca.2.gep275 = getelementptr inbounds [8 x i32], ptr %agg.tmp46, i32 0, i32 2
  %93 = ptrtoint ptr %.fca.2.gep275 to i32
  call void @__asan_load4_noabort(i32 %93)
  %.fca.2.load276 = load i32, ptr %.fca.2.gep275, align 4
  %.fca.2.insert277 = insertvalue [8 x i32] %.fca.1.insert274, i32 %.fca.2.load276, 2
  %.fca.3.gep278 = getelementptr inbounds [8 x i32], ptr %agg.tmp46, i32 0, i32 3
  %94 = ptrtoint ptr %.fca.3.gep278 to i32
  call void @__asan_load4_noabort(i32 %94)
  %.fca.3.load279 = load i32, ptr %.fca.3.gep278, align 4
  %.fca.3.insert280 = insertvalue [8 x i32] %.fca.2.insert277, i32 %.fca.3.load279, 3
  %.fca.4.gep281 = getelementptr inbounds [8 x i32], ptr %agg.tmp46, i32 0, i32 4
  %95 = ptrtoint ptr %.fca.4.gep281 to i32
  call void @__asan_load4_noabort(i32 %95)
  %.fca.4.load282 = load i32, ptr %.fca.4.gep281, align 4
  %.fca.4.insert283 = insertvalue [8 x i32] %.fca.3.insert280, i32 %.fca.4.load282, 4
  %.fca.5.gep284 = getelementptr inbounds [8 x i32], ptr %agg.tmp46, i32 0, i32 5
  %96 = ptrtoint ptr %.fca.5.gep284 to i32
  call void @__asan_load4_noabort(i32 %96)
  %.fca.5.load285 = load i32, ptr %.fca.5.gep284, align 4
  %.fca.5.insert286 = insertvalue [8 x i32] %.fca.4.insert283, i32 %.fca.5.load285, 5
  %.fca.6.gep287 = getelementptr inbounds [8 x i32], ptr %agg.tmp46, i32 0, i32 6
  %97 = ptrtoint ptr %.fca.6.gep287 to i32
  call void @__asan_load4_noabort(i32 %97)
  %.fca.6.load288 = load i32, ptr %.fca.6.gep287, align 4
  %.fca.6.insert289 = insertvalue [8 x i32] %.fca.5.insert286, i32 %.fca.6.load288, 6
  %.fca.7.gep290 = getelementptr inbounds [8 x i32], ptr %agg.tmp46, i32 0, i32 7
  %98 = ptrtoint ptr %.fca.7.gep290 to i32
  call void @__asan_load4_noabort(i32 %98)
  %.fca.7.load291 = load i32, ptr %.fca.7.gep290, align 4
  %.fca.7.insert292 = insertvalue [8 x i32] %.fca.6.insert289, i32 %.fca.7.load291, 7
  call void %90(ptr noundef %map, [8 x i32] %.fca.7.insert292, i32 noundef %conv3) #10
  %99 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 0, ptr %state, align 4
  %copy_from = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 8
  %100 = ptrtoint ptr %copy_from to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %copy_from, align 4
  call void %101(ptr noundef %map, ptr noundef %buf, i32 noundef %21, i32 noundef %len) #10
  %102 = ptrtoint ptr %oldstate to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %oldstate, align 4
  %104 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %103, ptr %state, align 4
  %105 = ptrtoint ptr %write50 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %write50, align 4
  call void @cfi_build_cmd(ptr nonnull sret(%union.map_word) align 4 %agg.tmp177, i32 noundef 208, ptr noundef %map, ptr noundef %15) #10
  %107 = ptrtoint ptr %agg.tmp177 to i32
  call void @__asan_load4_noabort(i32 %107)
  %.fca.0.load192 = load i32, ptr %agg.tmp177, align 4
  %.fca.0.insert193 = insertvalue [8 x i32] poison, i32 %.fca.0.load192, 0
  %.fca.1.gep194 = getelementptr inbounds [8 x i32], ptr %agg.tmp177, i32 0, i32 1
  %108 = ptrtoint ptr %.fca.1.gep194 to i32
  call void @__asan_load4_noabort(i32 %108)
  %.fca.1.load195 = load i32, ptr %.fca.1.gep194, align 4
  %.fca.1.insert196 = insertvalue [8 x i32] %.fca.0.insert193, i32 %.fca.1.load195, 1
  %.fca.2.gep197 = getelementptr inbounds [8 x i32], ptr %agg.tmp177, i32 0, i32 2
  %109 = ptrtoint ptr %.fca.2.gep197 to i32
  call void @__asan_load4_noabort(i32 %109)
  %.fca.2.load198 = load i32, ptr %.fca.2.gep197, align 4
  %.fca.2.insert199 = insertvalue [8 x i32] %.fca.1.insert196, i32 %.fca.2.load198, 2
  %.fca.3.gep200 = getelementptr inbounds [8 x i32], ptr %agg.tmp177, i32 0, i32 3
  %110 = ptrtoint ptr %.fca.3.gep200 to i32
  call void @__asan_load4_noabort(i32 %110)
  %.fca.3.load201 = load i32, ptr %.fca.3.gep200, align 4
  %.fca.3.insert202 = insertvalue [8 x i32] %.fca.2.insert199, i32 %.fca.3.load201, 3
  %.fca.4.gep203 = getelementptr inbounds [8 x i32], ptr %agg.tmp177, i32 0, i32 4
  %111 = ptrtoint ptr %.fca.4.gep203 to i32
  call void @__asan_load4_noabort(i32 %111)
  %.fca.4.load204 = load i32, ptr %.fca.4.gep203, align 4
  %.fca.4.insert205 = insertvalue [8 x i32] %.fca.3.insert202, i32 %.fca.4.load204, 4
  %.fca.5.gep206 = getelementptr inbounds [8 x i32], ptr %agg.tmp177, i32 0, i32 5
  %112 = ptrtoint ptr %.fca.5.gep206 to i32
  call void @__asan_load4_noabort(i32 %112)
  %.fca.5.load207 = load i32, ptr %.fca.5.gep206, align 4
  %.fca.5.insert208 = insertvalue [8 x i32] %.fca.4.insert205, i32 %.fca.5.load207, 5
  %.fca.6.gep209 = getelementptr inbounds [8 x i32], ptr %agg.tmp177, i32 0, i32 6
  %113 = ptrtoint ptr %.fca.6.gep209 to i32
  call void @__asan_load4_noabort(i32 %113)
  %.fca.6.load210 = load i32, ptr %.fca.6.gep209, align 4
  %.fca.6.insert211 = insertvalue [8 x i32] %.fca.5.insert208, i32 %.fca.6.load210, 6
  %.fca.7.gep212 = getelementptr inbounds [8 x i32], ptr %agg.tmp177, i32 0, i32 7
  %114 = ptrtoint ptr %.fca.7.gep212 to i32
  call void @__asan_load4_noabort(i32 %114)
  %.fca.7.load213 = load i32, ptr %.fca.7.gep212, align 4
  %.fca.7.insert214 = insertvalue [8 x i32] %.fca.6.insert211, i32 %.fca.7.load213, 7
  call void %106(ptr noundef %map, [8 x i32] %.fca.7.insert214, i32 noundef %conv3) #10
  %115 = ptrtoint ptr %write50 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %write50, align 4
  call void @cfi_build_cmd(ptr nonnull sret(%union.map_word) align 4 %agg.tmp180, i32 noundef 112, ptr noundef %map, ptr noundef %15) #10
  %117 = ptrtoint ptr %agg.tmp180 to i32
  call void @__asan_load4_noabort(i32 %117)
  %.fca.0.load = load i32, ptr %agg.tmp180, align 4
  %.fca.0.insert = insertvalue [8 x i32] poison, i32 %.fca.0.load, 0
  %.fca.1.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp180, i32 0, i32 1
  %118 = ptrtoint ptr %.fca.1.gep to i32
  call void @__asan_load4_noabort(i32 %118)
  %.fca.1.load = load i32, ptr %.fca.1.gep, align 4
  %.fca.1.insert = insertvalue [8 x i32] %.fca.0.insert, i32 %.fca.1.load, 1
  %.fca.2.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp180, i32 0, i32 2
  %119 = ptrtoint ptr %.fca.2.gep to i32
  call void @__asan_load4_noabort(i32 %119)
  %.fca.2.load = load i32, ptr %.fca.2.gep, align 4
  %.fca.2.insert = insertvalue [8 x i32] %.fca.1.insert, i32 %.fca.2.load, 2
  %.fca.3.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp180, i32 0, i32 3
  %120 = ptrtoint ptr %.fca.3.gep to i32
  call void @__asan_load4_noabort(i32 %120)
  %.fca.3.load = load i32, ptr %.fca.3.gep, align 4
  %.fca.3.insert = insertvalue [8 x i32] %.fca.2.insert, i32 %.fca.3.load, 3
  %.fca.4.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp180, i32 0, i32 4
  %121 = ptrtoint ptr %.fca.4.gep to i32
  call void @__asan_load4_noabort(i32 %121)
  %.fca.4.load = load i32, ptr %.fca.4.gep, align 4
  %.fca.4.insert = insertvalue [8 x i32] %.fca.3.insert, i32 %.fca.4.load, 4
  %.fca.5.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp180, i32 0, i32 5
  %122 = ptrtoint ptr %.fca.5.gep to i32
  call void @__asan_load4_noabort(i32 %122)
  %.fca.5.load = load i32, ptr %.fca.5.gep, align 4
  %.fca.5.insert = insertvalue [8 x i32] %.fca.4.insert, i32 %.fca.5.load, 5
  %.fca.6.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp180, i32 0, i32 6
  %123 = ptrtoint ptr %.fca.6.gep to i32
  call void @__asan_load4_noabort(i32 %123)
  %.fca.6.load = load i32, ptr %.fca.6.gep, align 4
  %.fca.6.insert = insertvalue [8 x i32] %.fca.5.insert, i32 %.fca.6.load, 6
  %.fca.7.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp180, i32 0, i32 7
  %124 = ptrtoint ptr %.fca.7.gep to i32
  call void @__asan_load4_noabort(i32 %124)
  %.fca.7.load = load i32, ptr %.fca.7.gep, align 4
  %.fca.7.insert = insertvalue [8 x i32] %.fca.6.insert, i32 %.fca.7.load, 7
  call void %116(ptr noundef %map, [8 x i32] %.fca.7.insert, i32 noundef %conv3) #10
  br label %if.end182

sw.bb49:                                          ; preds = %retry.sw.bb49_crit_edge, %retry.sw.bb49_crit_edge534
  %125 = ptrtoint ptr %write50 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %write50, align 4
  call void @cfi_build_cmd(ptr nonnull sret(%union.map_word) align 4 %agg.tmp51, i32 noundef 112, ptr noundef %map, ptr noundef %15) #10
  %127 = ptrtoint ptr %agg.tmp51 to i32
  call void @__asan_load4_noabort(i32 %127)
  %.fca.0.load246 = load i32, ptr %agg.tmp51, align 4
  %.fca.0.insert247 = insertvalue [8 x i32] poison, i32 %.fca.0.load246, 0
  %128 = ptrtoint ptr %.fca.1.gep248 to i32
  call void @__asan_load4_noabort(i32 %128)
  %.fca.1.load249 = load i32, ptr %.fca.1.gep248, align 4
  %.fca.1.insert250 = insertvalue [8 x i32] %.fca.0.insert247, i32 %.fca.1.load249, 1
  %129 = ptrtoint ptr %.fca.2.gep251 to i32
  call void @__asan_load4_noabort(i32 %129)
  %.fca.2.load252 = load i32, ptr %.fca.2.gep251, align 4
  %.fca.2.insert253 = insertvalue [8 x i32] %.fca.1.insert250, i32 %.fca.2.load252, 2
  %130 = ptrtoint ptr %.fca.3.gep254 to i32
  call void @__asan_load4_noabort(i32 %130)
  %.fca.3.load255 = load i32, ptr %.fca.3.gep254, align 4
  %.fca.3.insert256 = insertvalue [8 x i32] %.fca.2.insert253, i32 %.fca.3.load255, 3
  %131 = ptrtoint ptr %.fca.4.gep257 to i32
  call void @__asan_load4_noabort(i32 %131)
  %.fca.4.load258 = load i32, ptr %.fca.4.gep257, align 4
  %.fca.4.insert259 = insertvalue [8 x i32] %.fca.3.insert256, i32 %.fca.4.load258, 4
  %132 = ptrtoint ptr %.fca.5.gep260 to i32
  call void @__asan_load4_noabort(i32 %132)
  %.fca.5.load261 = load i32, ptr %.fca.5.gep260, align 4
  %.fca.5.insert262 = insertvalue [8 x i32] %.fca.4.insert259, i32 %.fca.5.load261, 5
  %133 = ptrtoint ptr %.fca.6.gep263 to i32
  call void @__asan_load4_noabort(i32 %133)
  %.fca.6.load264 = load i32, ptr %.fca.6.gep263, align 4
  %.fca.6.insert265 = insertvalue [8 x i32] %.fca.5.insert262, i32 %.fca.6.load264, 6
  %134 = ptrtoint ptr %.fca.7.gep266 to i32
  call void @__asan_load4_noabort(i32 %134)
  %.fca.7.load267 = load i32, ptr %.fca.7.gep266, align 4
  %.fca.7.insert268 = insertvalue [8 x i32] %.fca.6.insert265, i32 %.fca.7.load267, 7
  call void %126(ptr noundef %map, [8 x i32] %.fca.7.insert268, i32 noundef %conv3) #10
  %135 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 1, ptr %state, align 4
  br label %sw.bb54

sw.bb54:                                          ; preds = %sw.bb49, %retry.sw.bb54_crit_edge
  %136 = ptrtoint ptr %read56 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %read56, align 4
  call void %137(ptr nonnull sret(%union.map_word) align 4 %status, ptr noundef %map, i32 noundef %conv3) #10
  %138 = ptrtoint ptr %bankwidth to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %bankwidth, align 4
  %add61 = add i32 %139, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %add61)
  %cmp63493.not = icmp ult i32 %add61, 4
  br i1 %cmp63493.not, label %sw.bb54.if.then79.critedge_crit_edge, label %for.body65.preheader

sw.bb54.if.then79.critedge_crit_edge:             ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then79.critedge

for.body65.preheader:                             ; preds = %sw.bb54
  %div62475 = lshr i32 %add61, 2
  br label %for.body65

for.cond59:                                       ; preds = %for.body65
  %inc75 = add nuw nsw i32 %i57.0494, 1
  %exitcond.not = icmp eq i32 %inc75, %div62475
  br i1 %exitcond.not, label %for.cond59.if.then79.critedge_crit_edge, label %for.cond59.for.body65_crit_edge

for.cond59.for.body65_crit_edge:                  ; preds = %for.cond59
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body65

for.cond59.if.then79.critedge_crit_edge:          ; preds = %for.cond59
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then79.critedge

for.body65:                                       ; preds = %for.cond59.for.body65_crit_edge, %for.body65.preheader
  %i57.0494 = phi i32 [ %inc75, %for.cond59.for.body65_crit_edge ], [ 0, %for.body65.preheader ]
  %arrayidx66 = getelementptr [8 x i32], ptr %status, i32 0, i32 %i57.0494
  %140 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %arrayidx66, align 4
  %arrayidx67 = getelementptr [8 x i32], ptr %status_OK, i32 0, i32 %i57.0494
  %142 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %arrayidx67, align 4
  %and68 = and i32 %143, %141
  call void @__sanitizer_cov_trace_cmp4(i32 %and68, i32 %143)
  %cmp70.not = icmp eq i32 %and68, %143
  br i1 %cmp70.not, label %for.cond59, label %if.end84

if.then79.critedge:                               ; preds = %for.cond59.if.then79.critedge_crit_edge, %sw.bb54.if.then79.critedge_crit_edge
  %144 = ptrtoint ptr %write50 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %write50, align 4
  call void @cfi_build_cmd(ptr nonnull sret(%union.map_word) align 4 %agg.tmp81, i32 noundef 255, ptr noundef %map, ptr noundef %15) #10
  %146 = ptrtoint ptr %agg.tmp81 to i32
  call void @__asan_load4_noabort(i32 %146)
  %.fca.0.load218 = load i32, ptr %agg.tmp81, align 4
  %.fca.0.insert219 = insertvalue [8 x i32] poison, i32 %.fca.0.load218, 0
  %.fca.1.gep220 = getelementptr inbounds [8 x i32], ptr %agg.tmp81, i32 0, i32 1
  %147 = ptrtoint ptr %.fca.1.gep220 to i32
  call void @__asan_load4_noabort(i32 %147)
  %.fca.1.load221 = load i32, ptr %.fca.1.gep220, align 4
  %.fca.1.insert222 = insertvalue [8 x i32] %.fca.0.insert219, i32 %.fca.1.load221, 1
  %.fca.2.gep223 = getelementptr inbounds [8 x i32], ptr %agg.tmp81, i32 0, i32 2
  %148 = ptrtoint ptr %.fca.2.gep223 to i32
  call void @__asan_load4_noabort(i32 %148)
  %.fca.2.load224 = load i32, ptr %.fca.2.gep223, align 4
  %.fca.2.insert225 = insertvalue [8 x i32] %.fca.1.insert222, i32 %.fca.2.load224, 2
  %.fca.3.gep226 = getelementptr inbounds [8 x i32], ptr %agg.tmp81, i32 0, i32 3
  %149 = ptrtoint ptr %.fca.3.gep226 to i32
  call void @__asan_load4_noabort(i32 %149)
  %.fca.3.load227 = load i32, ptr %.fca.3.gep226, align 4
  %.fca.3.insert228 = insertvalue [8 x i32] %.fca.2.insert225, i32 %.fca.3.load227, 3
  %.fca.4.gep229 = getelementptr inbounds [8 x i32], ptr %agg.tmp81, i32 0, i32 4
  %150 = ptrtoint ptr %.fca.4.gep229 to i32
  call void @__asan_load4_noabort(i32 %150)
  %.fca.4.load230 = load i32, ptr %.fca.4.gep229, align 4
  %.fca.4.insert231 = insertvalue [8 x i32] %.fca.3.insert228, i32 %.fca.4.load230, 4
  %.fca.5.gep232 = getelementptr inbounds [8 x i32], ptr %agg.tmp81, i32 0, i32 5
  %151 = ptrtoint ptr %.fca.5.gep232 to i32
  call void @__asan_load4_noabort(i32 %151)
  %.fca.5.load233 = load i32, ptr %.fca.5.gep232, align 4
  %.fca.5.insert234 = insertvalue [8 x i32] %.fca.4.insert231, i32 %.fca.5.load233, 5
  %.fca.6.gep235 = getelementptr inbounds [8 x i32], ptr %agg.tmp81, i32 0, i32 6
  %152 = ptrtoint ptr %.fca.6.gep235 to i32
  call void @__asan_load4_noabort(i32 %152)
  %.fca.6.load236 = load i32, ptr %.fca.6.gep235, align 4
  %.fca.6.insert237 = insertvalue [8 x i32] %.fca.5.insert234, i32 %.fca.6.load236, 6
  %.fca.7.gep238 = getelementptr inbounds [8 x i32], ptr %agg.tmp81, i32 0, i32 7
  %153 = ptrtoint ptr %.fca.7.gep238 to i32
  call void @__asan_load4_noabort(i32 %153)
  %.fca.7.load239 = load i32, ptr %.fca.7.gep238, align 4
  %.fca.7.insert240 = insertvalue [8 x i32] %.fca.6.insert237, i32 %.fca.7.load239, 7
  call void %145(ptr noundef %map, [8 x i32] %.fca.7.insert240, i32 noundef %conv3) #10
  %154 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 0, ptr %state, align 4
  %copy_from.c = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 8
  %155 = ptrtoint ptr %copy_from.c to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %copy_from.c, align 4
  call void %156(ptr noundef %map, ptr noundef %buf, i32 noundef %21, i32 noundef %len) #10
  br label %if.end182

if.end84:                                         ; preds = %for.body65
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %157 = load volatile i32, ptr @jiffies, align 128
  %sub85 = sub i32 %timeo.0.ph, %157
  %cmp86 = icmp slt i32 %sub85, 0
  call void @mutex_unlock(ptr noundef %mutex) #10
  br i1 %cmp86, label %if.then88, label %if.end96

if.then88:                                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #12
  %158 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %status, align 4
  %call95 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, i32 noundef %159) #13
  br label %cleanup

if.end96:                                         ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #12
  call void @cfi_udelay(i32 noundef 1) #10
  br label %retry

__here:                                           ; preds = %sw.bb.__here_crit_edge, %retry.__here_crit_edge
  %160 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %161, i32 0, i32 212
  %162 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 ptrtoint (ptr blockaddress(@do_read_onechip, %__here) to i32), ptr %task_state_change, align 4
  %163 = load ptr, ptr %task, align 8
  %164 = ptrtoint ptr %163 to i32
  call void @__asan_store4_noabort(i32 %164)
  store volatile i32 2, ptr %163, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !127
  call void @add_wait_queue(ptr noundef %wq167, ptr noundef nonnull %wait) #10
  call void @mutex_unlock(ptr noundef %mutex) #10
  call void @schedule() #10
  call void @remove_wait_queue(ptr noundef %wq167, ptr noundef nonnull %wait) #10
  br label %retry.outer

if.end182.critedge477:                            ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #12
  %copy_from.c478 = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 8
  %165 = ptrtoint ptr %copy_from.c478 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %copy_from.c478, align 4
  call void %166(ptr noundef %map, ptr noundef %buf, i32 noundef %21, i32 noundef %len) #10
  br label %if.end182

if.end182:                                        ; preds = %if.end182.critedge477, %if.then79.critedge, %for.end44
  call void @__wake_up(ptr noundef %wq167, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  call void @mutex_unlock(ptr noundef %mutex) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end182, %if.then88, %if.then29
  %retval.0 = phi i32 [ 0, %if.end182 ], [ -5, %if.then88 ], [ -5, %if.then29 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %status_OK) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %status) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @do_write_buffer(ptr noundef %map, ptr noundef %chip, i32 noundef %adr, ptr nocapture noundef readonly %buf, i32 noundef %len) #0 align 64 {
entry:
  %status = alloca %union.map_word, align 4
  %status_OK = alloca %union.map_word, align 4
  %wait = alloca %struct.wait_queue_entry, align 4
  %agg.tmp = alloca %union.map_word, align 4
  %tmp30 = alloca %union.map_word, align 4
  %agg.tmp115 = alloca %union.map_word, align 4
  %tmp119 = alloca %union.map_word, align 4
  %agg.tmp160 = alloca %union.map_word, align 4
  %agg.tmp173 = alloca %union.map_word, align 4
  %tmp182.sroa.0 = alloca [8 x i32], align 4
  %agg.tmp192 = alloca %union.map_word, align 4
  %tmp290 = alloca %union.map_word, align 4
  %agg.tmp321 = alloca %union.map_word, align 4
  %agg.tmp324 = alloca %union.map_word, align 4
  %tmp381 = alloca %union.map_word, align 4
  %agg.tmp394 = alloca %union.map_word, align 4
  %agg.tmp397 = alloca %union.map_word, align 4
  %tmp411 = alloca %union.map_word, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %fldrv_priv = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 17
  %0 = ptrtoint ptr %fldrv_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fldrv_priv, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %status) #10
  %2 = call ptr @memset(ptr %status, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %status_OK) #10
  %3 = call ptr @memset(ptr %status_OK, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #10
  %4 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %5 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %6 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %7 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %8 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %wait, align 4
  %9 = tail call i32 @llvm.read_register.i32(metadata !112) #10
  %and.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %task, align 8
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %4, align 4
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @default_wake_function, ptr %5, align 4
  %15 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %6, align 4
  %16 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %7, align 4
  %bankwidth = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 6
  %17 = ptrtoint ptr %bankwidth to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %bankwidth, align 4
  %sub = add i32 %18, -1
  %and = and i32 %sub, %adr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %interleave = getelementptr inbounds %struct.cfi_private, ptr %1, i32 0, i32 2
  %19 = ptrtoint ptr %interleave to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %interleave, align 4
  %cfiq = getelementptr inbounds %struct.cfi_private, ptr %1, i32 0, i32 8
  %21 = ptrtoint ptr %cfiq to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cfiq, align 4
  %MaxBufWriteSize = getelementptr inbounds %struct.cfi_ident, ptr %22, i32 0, i32 19
  %23 = ptrtoint ptr %MaxBufWriteSize to i32
  call void @__asan_loadN_noabort(i32 %23, i32 2)
  %24 = load i16, ptr %MaxBufWriteSize, align 1
  %conv = zext i16 %24 to i32
  %shl = shl i32 %20, %conv
  %25 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %chip, align 4
  %add = add i32 %26, %adr
  %neg = sub i32 0, %shl
  %and3 = and i32 %add, %neg
  call void @cfi_build_cmd(ptr nonnull sret(%union.map_word) align 4 %status_OK, i32 noundef 128, ptr noundef %map, ptr noundef %1) #10
  %mutex = getelementptr inbounds %struct.flchip, ptr %chip, i32 0, i32 7
  %state = getelementptr inbounds %struct.flchip, ptr %chip, i32 0, i32 2
  %write = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 9
  %.fca.1.gep649 = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 1
  %.fca.2.gep652 = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 2
  %.fca.3.gep655 = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 3
  %.fca.4.gep658 = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 4
  %.fca.5.gep661 = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 5
  %.fca.6.gep664 = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 6
  %.fca.7.gep667 = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 7
  %read = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 7
  %wq = getelementptr inbounds %struct.flchip, ptr %chip, i32 0, i32 8
  br label %retry.outer

retry.outer:                                      ; preds = %__here, %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %timeo.0.ph.in = load volatile i32, ptr @jiffies, align 128
  %timeo.0.ph = add i32 %timeo.0.ph.in, 100
  br label %retry

retry:                                            ; preds = %if.end33, %retry.outer
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %27 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %state, align 4
  %29 = zext i32 %28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.59)
  switch i32 %28, label %__here [
    i32 0, label %retry.do.body107_crit_edge
    i32 2, label %retry.sw.bb_crit_edge
    i32 3, label %retry.sw.bb_crit_edge912
    i32 1, label %retry.sw.bb6_crit_edge
  ]

retry.sw.bb6_crit_edge:                           ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb6

retry.sw.bb_crit_edge912:                         ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

retry.sw.bb_crit_edge:                            ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

retry.do.body107_crit_edge:                       ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body107

sw.bb:                                            ; preds = %retry.sw.bb_crit_edge, %retry.sw.bb_crit_edge912
  %30 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %write, align 4
  call void @cfi_build_cmd(ptr nonnull sret(%union.map_word) align 4 %agg.tmp, i32 noundef 112, ptr noundef %map, ptr noundef %1) #10
  %32 = ptrtoint ptr %agg.tmp to i32
  call void @__asan_load4_noabort(i32 %32)
  %.fca.0.load647 = load i32, ptr %agg.tmp, align 4
  %.fca.0.insert648 = insertvalue [8 x i32] poison, i32 %.fca.0.load647, 0
  %33 = ptrtoint ptr %.fca.1.gep649 to i32
  call void @__asan_load4_noabort(i32 %33)
  %.fca.1.load650 = load i32, ptr %.fca.1.gep649, align 4
  %.fca.1.insert651 = insertvalue [8 x i32] %.fca.0.insert648, i32 %.fca.1.load650, 1
  %34 = ptrtoint ptr %.fca.2.gep652 to i32
  call void @__asan_load4_noabort(i32 %34)
  %.fca.2.load653 = load i32, ptr %.fca.2.gep652, align 4
  %.fca.2.insert654 = insertvalue [8 x i32] %.fca.1.insert651, i32 %.fca.2.load653, 2
  %35 = ptrtoint ptr %.fca.3.gep655 to i32
  call void @__asan_load4_noabort(i32 %35)
  %.fca.3.load656 = load i32, ptr %.fca.3.gep655, align 4
  %.fca.3.insert657 = insertvalue [8 x i32] %.fca.2.insert654, i32 %.fca.3.load656, 3
  %36 = ptrtoint ptr %.fca.4.gep658 to i32
  call void @__asan_load4_noabort(i32 %36)
  %.fca.4.load659 = load i32, ptr %.fca.4.gep658, align 4
  %.fca.4.insert660 = insertvalue [8 x i32] %.fca.3.insert657, i32 %.fca.4.load659, 4
  %37 = ptrtoint ptr %.fca.5.gep661 to i32
  call void @__asan_load4_noabort(i32 %37)
  %.fca.5.load662 = load i32, ptr %.fca.5.gep661, align 4
  %.fca.5.insert663 = insertvalue [8 x i32] %.fca.4.insert660, i32 %.fca.5.load662, 5
  %38 = ptrtoint ptr %.fca.6.gep664 to i32
  call void @__asan_load4_noabort(i32 %38)
  %.fca.6.load665 = load i32, ptr %.fca.6.gep664, align 4
  %.fca.6.insert666 = insertvalue [8 x i32] %.fca.5.insert663, i32 %.fca.6.load665, 6
  %39 = ptrtoint ptr %.fca.7.gep667 to i32
  call void @__asan_load4_noabort(i32 %39)
  %.fca.7.load668 = load i32, ptr %.fca.7.gep667, align 4
  %.fca.7.insert669 = insertvalue [8 x i32] %.fca.6.insert666, i32 %.fca.7.load668, 7
  call void %31(ptr noundef %map, [8 x i32] %.fca.7.insert669, i32 noundef %and3) #10
  %40 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 1, ptr %state, align 4
  br label %sw.bb6

sw.bb6:                                           ; preds = %sw.bb, %retry.sw.bb6_crit_edge
  %41 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %read, align 4
  call void %42(ptr nonnull sret(%union.map_word) align 4 %status, ptr noundef %map, i32 noundef %and3) #10
  %43 = ptrtoint ptr %bankwidth to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %bankwidth, align 4
  %add9 = add i32 %44, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %add9)
  %cmp833.not = icmp ult i32 %add9, 4
  br i1 %cmp833.not, label %sw.bb6.do.body107_crit_edge, label %for.body.preheader

sw.bb6.do.body107_crit_edge:                      ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body107

for.body.preheader:                               ; preds = %sw.bb6
  %div807 = lshr i32 %add9, 2
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.0834, 1
  %exitcond.not = icmp eq i32 %inc, %div807
  br i1 %exitcond.not, label %for.cond.do.body107_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.cond.do.body107_crit_edge:                    ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body107

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.preheader
  %i.0834 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr [8 x i32], ptr %status, i32 0, i32 %i.0834
  %45 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx, align 4
  %arrayidx11 = getelementptr [8 x i32], ptr %status_OK, i32 0, i32 %i.0834
  %47 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx11, align 4
  %and12 = and i32 %48, %46
  call void @__sanitizer_cov_trace_cmp4(i32 %and12, i32 %48)
  %cmp14.not = icmp eq i32 %and12, %48
  br i1 %cmp14.not, label %for.cond, label %if.end21.critedge

if.end21.critedge:                                ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %49 = load volatile i32, ptr @jiffies, align 128
  %sub22 = sub i32 %timeo.0.ph, %49
  %cmp23 = icmp slt i32 %sub22, 0
  call void @mutex_unlock(ptr noundef %mutex) #10
  br i1 %cmp23, label %if.then25, label %if.end33

if.then25:                                        ; preds = %if.end21.critedge
  call void @__sanitizer_cov_trace_pc() #12
  %50 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %status, align 4
  %52 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %read, align 4
  call void %53(ptr nonnull sret(%union.map_word) align 4 %tmp30, ptr noundef %map, i32 noundef %and3) #10
  %54 = ptrtoint ptr %tmp30 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %tmp30, align 4
  %call32 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, i32 noundef %51, i32 noundef %55) #13
  br label %cleanup

if.end33:                                         ; preds = %if.end21.critedge
  call void @__sanitizer_cov_trace_pc() #12
  call void @cfi_udelay(i32 noundef 1) #10
  br label %retry

__here:                                           ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #12
  %56 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %57, i32 0, i32 212
  %58 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 ptrtoint (ptr blockaddress(@do_write_buffer, %__here) to i32), ptr %task_state_change, align 4
  %59 = load ptr, ptr %task, align 8
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_store4_noabort(i32 %60)
  store volatile i32 2, ptr %59, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !128
  call void @add_wait_queue(ptr noundef %wq, ptr noundef nonnull %wait) #10
  call void @mutex_unlock(ptr noundef %mutex) #10
  call void @schedule() #10
  call void @remove_wait_queue(ptr noundef %wq, ptr noundef nonnull %wait) #10
  br label %retry.outer

do.body107:                                       ; preds = %for.cond.do.body107_crit_edge, %sw.bb6.do.body107_crit_edge, %retry.do.body107_crit_edge
  %set_vpp = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 12
  %61 = ptrtoint ptr %set_vpp to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %set_vpp, align 4
  %tobool108.not = icmp eq ptr %62, null
  br i1 %tobool108.not, label %do.body107.do.end113_crit_edge, label %if.then109

do.body107.do.end113_crit_edge:                   ; preds = %do.body107
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end113

if.then109:                                       ; preds = %do.body107
  call void @__sanitizer_cov_trace_pc() #12
  call void %62(ptr noundef %map, i32 noundef 1) #10
  br label %do.end113

do.end113:                                        ; preds = %if.then109, %do.body107.do.end113_crit_edge
  %63 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %write, align 4
  call void @cfi_build_cmd(ptr nonnull sret(%union.map_word) align 4 %agg.tmp115, i32 noundef 232, ptr noundef %map, ptr noundef %1) #10
  %65 = ptrtoint ptr %agg.tmp115 to i32
  call void @__asan_load4_noabort(i32 %65)
  %.fca.0.load617 = load i32, ptr %agg.tmp115, align 4
  %.fca.0.insert618 = insertvalue [8 x i32] poison, i32 %.fca.0.load617, 0
  %.fca.1.gep619 = getelementptr inbounds [8 x i32], ptr %agg.tmp115, i32 0, i32 1
  %66 = ptrtoint ptr %.fca.1.gep619 to i32
  call void @__asan_load4_noabort(i32 %66)
  %.fca.1.load620 = load i32, ptr %.fca.1.gep619, align 4
  %.fca.1.insert621 = insertvalue [8 x i32] %.fca.0.insert618, i32 %.fca.1.load620, 1
  %.fca.2.gep622 = getelementptr inbounds [8 x i32], ptr %agg.tmp115, i32 0, i32 2
  %67 = ptrtoint ptr %.fca.2.gep622 to i32
  call void @__asan_load4_noabort(i32 %67)
  %.fca.2.load623 = load i32, ptr %.fca.2.gep622, align 4
  %.fca.2.insert624 = insertvalue [8 x i32] %.fca.1.insert621, i32 %.fca.2.load623, 2
  %.fca.3.gep625 = getelementptr inbounds [8 x i32], ptr %agg.tmp115, i32 0, i32 3
  %68 = ptrtoint ptr %.fca.3.gep625 to i32
  call void @__asan_load4_noabort(i32 %68)
  %.fca.3.load626 = load i32, ptr %.fca.3.gep625, align 4
  %.fca.3.insert627 = insertvalue [8 x i32] %.fca.2.insert624, i32 %.fca.3.load626, 3
  %.fca.4.gep628 = getelementptr inbounds [8 x i32], ptr %agg.tmp115, i32 0, i32 4
  %69 = ptrtoint ptr %.fca.4.gep628 to i32
  call void @__asan_load4_noabort(i32 %69)
  %.fca.4.load629 = load i32, ptr %.fca.4.gep628, align 4
  %.fca.4.insert630 = insertvalue [8 x i32] %.fca.3.insert627, i32 %.fca.4.load629, 4
  %.fca.5.gep631 = getelementptr inbounds [8 x i32], ptr %agg.tmp115, i32 0, i32 5
  %70 = ptrtoint ptr %.fca.5.gep631 to i32
  call void @__asan_load4_noabort(i32 %70)
  %.fca.5.load632 = load i32, ptr %.fca.5.gep631, align 4
  %.fca.5.insert633 = insertvalue [8 x i32] %.fca.4.insert630, i32 %.fca.5.load632, 5
  %.fca.6.gep634 = getelementptr inbounds [8 x i32], ptr %agg.tmp115, i32 0, i32 6
  %71 = ptrtoint ptr %.fca.6.gep634 to i32
  call void @__asan_load4_noabort(i32 %71)
  %.fca.6.load635 = load i32, ptr %.fca.6.gep634, align 4
  %.fca.6.insert636 = insertvalue [8 x i32] %.fca.5.insert633, i32 %.fca.6.load635, 6
  %.fca.7.gep637 = getelementptr inbounds [8 x i32], ptr %agg.tmp115, i32 0, i32 7
  %72 = ptrtoint ptr %.fca.7.gep637 to i32
  call void @__asan_load4_noabort(i32 %72)
  %.fca.7.load638 = load i32, ptr %.fca.7.gep637, align 4
  %.fca.7.insert639 = insertvalue [8 x i32] %.fca.6.insert636, i32 %.fca.7.load638, 7
  call void %64(ptr noundef %map, [8 x i32] %.fca.7.insert639, i32 noundef %and3) #10
  %73 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 8, ptr %state, align 4
  br label %for.cond118

for.cond118:                                      ; preds = %if.end144.critedge.for.cond118_crit_edge, %do.end113
  %z.0 = phi i32 [ 0, %do.end113 ], [ %inc147, %if.end144.critedge.for.cond118_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tmp119) #10
  %74 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %read, align 4
  call void %75(ptr nonnull sret(%union.map_word) align 4 %tmp119, ptr noundef %map, i32 noundef %and3) #10
  %76 = call ptr @memcpy(ptr %status, ptr %tmp119, i32 32)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tmp119) #10
  %77 = ptrtoint ptr %bankwidth to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %bankwidth, align 4
  %add125 = add i32 %78, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %add125)
  %cmp127838.not = icmp ult i32 %add125, 4
  br i1 %cmp127838.not, label %for.cond118.for.end171_crit_edge, label %for.body129.preheader

for.cond118.for.end171_crit_edge:                 ; preds = %for.cond118
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end171

for.body129.preheader:                            ; preds = %for.cond118
  %div126808 = lshr i32 %add125, 2
  br label %for.body129

for.cond123:                                      ; preds = %for.body129
  %inc139 = add nuw nsw i32 %i121.0839, 1
  %exitcond875.not = icmp eq i32 %inc139, %div126808
  br i1 %exitcond875.not, label %for.cond123.for.end171_crit_edge, label %for.cond123.for.body129_crit_edge

for.cond123.for.body129_crit_edge:                ; preds = %for.cond123
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body129

for.cond123.for.end171_crit_edge:                 ; preds = %for.cond123
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end171

for.body129:                                      ; preds = %for.cond123.for.body129_crit_edge, %for.body129.preheader
  %i121.0839 = phi i32 [ %inc139, %for.cond123.for.body129_crit_edge ], [ 0, %for.body129.preheader ]
  %arrayidx130 = getelementptr [8 x i32], ptr %status, i32 0, i32 %i121.0839
  %79 = ptrtoint ptr %arrayidx130 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %arrayidx130, align 4
  %arrayidx131 = getelementptr [8 x i32], ptr %status_OK, i32 0, i32 %i121.0839
  %81 = ptrtoint ptr %arrayidx131 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %arrayidx131, align 4
  %and132 = and i32 %82, %80
  call void @__sanitizer_cov_trace_cmp4(i32 %and132, i32 %82)
  %cmp134.not = icmp eq i32 %and132, %82
  br i1 %cmp134.not, label %for.cond123, label %if.end144.critedge

if.end144.critedge:                               ; preds = %for.body129
  call void @mutex_unlock(ptr noundef %mutex) #10
  call void @cfi_udelay(i32 noundef 1) #10
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %inc147 = add nuw nsw i32 %z.0, 1
  %exitcond876 = icmp eq i32 %inc147, 101
  br i1 %exitcond876, label %do.body151, label %if.end144.critedge.for.cond118_crit_edge

if.end144.critedge.for.cond118_crit_edge:         ; preds = %if.end144.critedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond118

do.body151:                                       ; preds = %if.end144.critedge
  %83 = ptrtoint ptr %set_vpp to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %set_vpp, align 4
  %tobool153.not = icmp eq ptr %84, null
  br i1 %tobool153.not, label %do.body151.do.end158_crit_edge, label %if.then154

do.body151.do.end158_crit_edge:                   ; preds = %do.body151
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end158

if.then154:                                       ; preds = %do.body151
  call void @__sanitizer_cov_trace_pc() #12
  call void %84(ptr noundef %map, i32 noundef 0) #10
  br label %do.end158

do.end158:                                        ; preds = %if.then154, %do.body151.do.end158_crit_edge
  %85 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %write, align 4
  call void @cfi_build_cmd(ptr nonnull sret(%union.map_word) align 4 %agg.tmp160, i32 noundef 112, ptr noundef %map, ptr noundef %1) #10
  %87 = ptrtoint ptr %agg.tmp160 to i32
  call void @__asan_load4_noabort(i32 %87)
  %.fca.0.load589 = load i32, ptr %agg.tmp160, align 4
  %.fca.0.insert590 = insertvalue [8 x i32] poison, i32 %.fca.0.load589, 0
  %.fca.1.gep591 = getelementptr inbounds [8 x i32], ptr %agg.tmp160, i32 0, i32 1
  %88 = ptrtoint ptr %.fca.1.gep591 to i32
  call void @__asan_load4_noabort(i32 %88)
  %.fca.1.load592 = load i32, ptr %.fca.1.gep591, align 4
  %.fca.1.insert593 = insertvalue [8 x i32] %.fca.0.insert590, i32 %.fca.1.load592, 1
  %.fca.2.gep594 = getelementptr inbounds [8 x i32], ptr %agg.tmp160, i32 0, i32 2
  %89 = ptrtoint ptr %.fca.2.gep594 to i32
  call void @__asan_load4_noabort(i32 %89)
  %.fca.2.load595 = load i32, ptr %.fca.2.gep594, align 4
  %.fca.2.insert596 = insertvalue [8 x i32] %.fca.1.insert593, i32 %.fca.2.load595, 2
  %.fca.3.gep597 = getelementptr inbounds [8 x i32], ptr %agg.tmp160, i32 0, i32 3
  %90 = ptrtoint ptr %.fca.3.gep597 to i32
  call void @__asan_load4_noabort(i32 %90)
  %.fca.3.load598 = load i32, ptr %.fca.3.gep597, align 4
  %.fca.3.insert599 = insertvalue [8 x i32] %.fca.2.insert596, i32 %.fca.3.load598, 3
  %.fca.4.gep600 = getelementptr inbounds [8 x i32], ptr %agg.tmp160, i32 0, i32 4
  %91 = ptrtoint ptr %.fca.4.gep600 to i32
  call void @__asan_load4_noabort(i32 %91)
  %.fca.4.load601 = load i32, ptr %.fca.4.gep600, align 4
  %.fca.4.insert602 = insertvalue [8 x i32] %.fca.3.insert599, i32 %.fca.4.load601, 4
  %.fca.5.gep603 = getelementptr inbounds [8 x i32], ptr %agg.tmp160, i32 0, i32 5
  %92 = ptrtoint ptr %.fca.5.gep603 to i32
  call void @__asan_load4_noabort(i32 %92)
  %.fca.5.load604 = load i32, ptr %.fca.5.gep603, align 4
  %.fca.5.insert605 = insertvalue [8 x i32] %.fca.4.insert602, i32 %.fca.5.load604, 5
  %.fca.6.gep606 = getelementptr inbounds [8 x i32], ptr %agg.tmp160, i32 0, i32 6
  %93 = ptrtoint ptr %.fca.6.gep606 to i32
  call void @__asan_load4_noabort(i32 %93)
  %.fca.6.load607 = load i32, ptr %.fca.6.gep606, align 4
  %.fca.6.insert608 = insertvalue [8 x i32] %.fca.5.insert605, i32 %.fca.6.load607, 6
  %.fca.7.gep609 = getelementptr inbounds [8 x i32], ptr %agg.tmp160, i32 0, i32 7
  %94 = ptrtoint ptr %.fca.7.gep609 to i32
  call void @__asan_load4_noabort(i32 %94)
  %.fca.7.load610 = load i32, ptr %.fca.7.gep609, align 4
  %.fca.7.insert611 = insertvalue [8 x i32] %.fca.6.insert608, i32 %.fca.7.load610, 7
  call void %86(ptr noundef %map, [8 x i32] %.fca.7.insert611, i32 noundef %and3) #10
  %95 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 1, ptr %state, align 4
  call void @mutex_unlock(ptr noundef %mutex) #10
  %96 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %status, align 4
  %call169 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, i32 noundef %97) #13
  br label %cleanup

for.end171:                                       ; preds = %for.cond123.for.end171_crit_edge, %for.cond118.for.end171_crit_edge
  %98 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %write, align 4
  %div175 = sdiv i32 %len, %78
  %sub176 = add i32 %div175, -1
  call void @cfi_build_cmd(ptr nonnull sret(%union.map_word) align 4 %agg.tmp173, i32 noundef %sub176, ptr noundef %map, ptr noundef %1) #10
  %100 = ptrtoint ptr %agg.tmp173 to i32
  call void @__asan_load4_noabort(i32 %100)
  %.fca.0.load565 = load i32, ptr %agg.tmp173, align 4
  %.fca.0.insert566 = insertvalue [8 x i32] poison, i32 %.fca.0.load565, 0
  %.fca.1.gep567 = getelementptr inbounds [8 x i32], ptr %agg.tmp173, i32 0, i32 1
  %101 = ptrtoint ptr %.fca.1.gep567 to i32
  call void @__asan_load4_noabort(i32 %101)
  %.fca.1.load568 = load i32, ptr %.fca.1.gep567, align 4
  %.fca.1.insert569 = insertvalue [8 x i32] %.fca.0.insert566, i32 %.fca.1.load568, 1
  %.fca.2.gep570 = getelementptr inbounds [8 x i32], ptr %agg.tmp173, i32 0, i32 2
  %102 = ptrtoint ptr %.fca.2.gep570 to i32
  call void @__asan_load4_noabort(i32 %102)
  %.fca.2.load571 = load i32, ptr %.fca.2.gep570, align 4
  %.fca.2.insert572 = insertvalue [8 x i32] %.fca.1.insert569, i32 %.fca.2.load571, 2
  %.fca.3.gep573 = getelementptr inbounds [8 x i32], ptr %agg.tmp173, i32 0, i32 3
  %103 = ptrtoint ptr %.fca.3.gep573 to i32
  call void @__asan_load4_noabort(i32 %103)
  %.fca.3.load574 = load i32, ptr %.fca.3.gep573, align 4
  %.fca.3.insert575 = insertvalue [8 x i32] %.fca.2.insert572, i32 %.fca.3.load574, 3
  %.fca.4.gep576 = getelementptr inbounds [8 x i32], ptr %agg.tmp173, i32 0, i32 4
  %104 = ptrtoint ptr %.fca.4.gep576 to i32
  call void @__asan_load4_noabort(i32 %104)
  %.fca.4.load577 = load i32, ptr %.fca.4.gep576, align 4
  %.fca.4.insert578 = insertvalue [8 x i32] %.fca.3.insert575, i32 %.fca.4.load577, 4
  %.fca.5.gep579 = getelementptr inbounds [8 x i32], ptr %agg.tmp173, i32 0, i32 5
  %105 = ptrtoint ptr %.fca.5.gep579 to i32
  call void @__asan_load4_noabort(i32 %105)
  %.fca.5.load580 = load i32, ptr %.fca.5.gep579, align 4
  %.fca.5.insert581 = insertvalue [8 x i32] %.fca.4.insert578, i32 %.fca.5.load580, 5
  %.fca.6.gep582 = getelementptr inbounds [8 x i32], ptr %agg.tmp173, i32 0, i32 6
  %106 = ptrtoint ptr %.fca.6.gep582 to i32
  call void @__asan_load4_noabort(i32 %106)
  %.fca.6.load583 = load i32, ptr %.fca.6.gep582, align 4
  %.fca.6.insert584 = insertvalue [8 x i32] %.fca.5.insert581, i32 %.fca.6.load583, 6
  %.fca.7.gep585 = getelementptr inbounds [8 x i32], ptr %agg.tmp173, i32 0, i32 7
  %107 = ptrtoint ptr %.fca.7.gep585 to i32
  call void @__asan_load4_noabort(i32 %107)
  %.fca.7.load586 = load i32, ptr %.fca.7.gep585, align 4
  %.fca.7.insert587 = insertvalue [8 x i32] %.fca.6.insert584, i32 %.fca.7.load586, 7
  call void %99(ptr noundef %map, [8 x i32] %.fca.7.insert587, i32 noundef %and3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp179845 = icmp sgt i32 %len, 0
  br i1 %cmp179845, label %for.body181.lr.ph, label %for.end171.for.end190_crit_edge

for.end171.for.end190_crit_edge:                  ; preds = %for.end171
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end190

for.body181.lr.ph:                                ; preds = %for.end171
  %108 = ptrtoint ptr %bankwidth to i32
  call void @__asan_load4_noabort(i32 %108)
  %.pr = load i32, ptr %bankwidth, align 4, !noalias !129
  %tmp182.sroa.0.4.tmp182.sroa_idx = getelementptr inbounds i8, ptr %tmp182.sroa.0, i32 4
  %tmp182.sroa.0.8.tmp182.sroa_idx = getelementptr inbounds i8, ptr %tmp182.sroa.0, i32 8
  %tmp182.sroa.0.12.tmp182.sroa_idx = getelementptr inbounds i8, ptr %tmp182.sroa.0, i32 12
  %tmp182.sroa.0.16.tmp182.sroa_idx = getelementptr inbounds i8, ptr %tmp182.sroa.0, i32 16
  %tmp182.sroa.0.20.tmp182.sroa_idx = getelementptr inbounds i8, ptr %tmp182.sroa.0, i32 20
  %tmp182.sroa.0.24.tmp182.sroa_idx = getelementptr inbounds i8, ptr %tmp182.sroa.0, i32 24
  %tmp182.sroa.0.28.tmp182.sroa_idx = getelementptr inbounds i8, ptr %tmp182.sroa.0, i32 28
  br label %for.body181

for.body181:                                      ; preds = %map_word_load.exit.for.body181_crit_edge, %for.body181.lr.ph
  %109 = phi i32 [ %.pr, %for.body181.lr.ph ], [ %133, %map_word_load.exit.for.body181_crit_edge ]
  %buf.addr.0847 = phi ptr [ %buf, %for.body181.lr.ph ], [ %add.ptr, %map_word_load.exit.for.body181_crit_edge ]
  %z.1846 = phi i32 [ 0, %for.body181.lr.ph ], [ %add188, %map_word_load.exit.for.body181_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tmp182.sroa.0)
  call void @llvm.experimental.noalias.scope.decl(metadata !129)
  %110 = call ptr @memset(ptr %tmp182.sroa.0, i32 255, i32 32)
  %111 = zext i32 %109 to i64
  call void @__sanitizer_cov_trace_switch(i64 %111, ptr @__sancov_gen_cov_switch_values.60)
  switch i32 %109, label %if.else16.i [
    i32 1, label %if.then.i
    i32 2, label %if.then4.i
    i32 4, label %if.then11.i
  ]

if.then.i:                                        ; preds = %for.body181
  call void @__sanitizer_cov_trace_pc() #12
  %112 = ptrtoint ptr %buf.addr.0847 to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %buf.addr.0847, align 1, !noalias !129
  %conv.i = zext i8 %113 to i32
  %114 = ptrtoint ptr %tmp182.sroa.0 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %conv.i, ptr %tmp182.sroa.0, align 4, !alias.scope !129
  br label %map_word_load.exit

if.then4.i:                                       ; preds = %for.body181
  call void @__sanitizer_cov_trace_pc() #12
  %115 = ptrtoint ptr %buf.addr.0847 to i32
  call void @__asan_loadN_noabort(i32 %115, i32 2)
  %116 = load i16, ptr %buf.addr.0847, align 1, !noalias !129
  %conv5.i = zext i16 %116 to i32
  %117 = ptrtoint ptr %tmp182.sroa.0 to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %conv5.i, ptr %tmp182.sroa.0, align 4, !alias.scope !129
  br label %map_word_load.exit

if.then11.i:                                      ; preds = %for.body181
  call void @__sanitizer_cov_trace_pc() #12
  %118 = ptrtoint ptr %buf.addr.0847 to i32
  call void @__asan_loadN_noabort(i32 %118, i32 4)
  %119 = load i32, ptr %buf.addr.0847, align 1, !noalias !129
  %120 = ptrtoint ptr %tmp182.sroa.0 to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %119, ptr %tmp182.sroa.0, align 4, !alias.scope !129
  br label %map_word_load.exit

if.else16.i:                                      ; preds = %for.body181
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %109)
  %cmp18.i = icmp sgt i32 %109, 4
  br i1 %cmp18.i, label %if.then20.i, label %do.body.i

if.then20.i:                                      ; preds = %if.else16.i
  call void @__sanitizer_cov_trace_pc() #12
  %121 = call ptr @memcpy(ptr %tmp182.sroa.0, ptr %buf.addr.0847, i32 %109)
  br label %map_word_load.exit

do.body.i:                                        ; preds = %if.else16.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mtd/map.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 338, 0\0A.popsection", ""() #10, !noalias !129, !srcloc !132
  unreachable

map_word_load.exit:                               ; preds = %if.then20.i, %if.then11.i, %if.then4.i, %if.then.i
  %122 = ptrtoint ptr %tmp182.sroa.0 to i32
  call void @__asan_load4_noabort(i32 %122)
  %tmp182.sroa.0.0.tmp182.sroa.0.0.tmp182.sroa.0.0.d.sroa.0.0.copyload = load i32, ptr %tmp182.sroa.0, align 4
  %123 = ptrtoint ptr %tmp182.sroa.0.4.tmp182.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %123)
  %tmp182.sroa.0.4.tmp182.sroa.0.4.tmp182.sroa.0.4.d.sroa.5.0.copyload = load i32, ptr %tmp182.sroa.0.4.tmp182.sroa_idx, align 4
  %124 = ptrtoint ptr %tmp182.sroa.0.8.tmp182.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %124)
  %tmp182.sroa.0.8.tmp182.sroa.0.8.tmp182.sroa.0.8.d.sroa.7.0.copyload = load i32, ptr %tmp182.sroa.0.8.tmp182.sroa_idx, align 4
  %125 = ptrtoint ptr %tmp182.sroa.0.12.tmp182.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %125)
  %tmp182.sroa.0.12.tmp182.sroa.0.12.tmp182.sroa.0.12.d.sroa.9.0.copyload = load i32, ptr %tmp182.sroa.0.12.tmp182.sroa_idx, align 4
  %126 = ptrtoint ptr %tmp182.sroa.0.16.tmp182.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %126)
  %tmp182.sroa.0.16.tmp182.sroa.0.16.tmp182.sroa.0.16.d.sroa.11.0.copyload = load i32, ptr %tmp182.sroa.0.16.tmp182.sroa_idx, align 4
  %127 = ptrtoint ptr %tmp182.sroa.0.20.tmp182.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %127)
  %tmp182.sroa.0.20.tmp182.sroa.0.20.tmp182.sroa.0.20.d.sroa.13.0.copyload = load i32, ptr %tmp182.sroa.0.20.tmp182.sroa_idx, align 4
  %128 = ptrtoint ptr %tmp182.sroa.0.24.tmp182.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %128)
  %tmp182.sroa.0.24.tmp182.sroa.0.24.tmp182.sroa.0.24.d.sroa.15.0.copyload = load i32, ptr %tmp182.sroa.0.24.tmp182.sroa_idx, align 4
  %129 = ptrtoint ptr %tmp182.sroa.0.28.tmp182.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %129)
  %tmp182.sroa.0.28.tmp182.sroa.0.28.tmp182.sroa.0.28.d.sroa.17.0.copyload = load i32, ptr %tmp182.sroa.0.28.tmp182.sroa_idx, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tmp182.sroa.0)
  %130 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %write, align 4
  %add184 = add i32 %z.1846, %add
  %.fca.0.insert542 = insertvalue [8 x i32] poison, i32 %tmp182.sroa.0.0.tmp182.sroa.0.0.tmp182.sroa.0.0.d.sroa.0.0.copyload, 0
  %.fca.1.insert545 = insertvalue [8 x i32] %.fca.0.insert542, i32 %tmp182.sroa.0.4.tmp182.sroa.0.4.tmp182.sroa.0.4.d.sroa.5.0.copyload, 1
  %.fca.2.insert548 = insertvalue [8 x i32] %.fca.1.insert545, i32 %tmp182.sroa.0.8.tmp182.sroa.0.8.tmp182.sroa.0.8.d.sroa.7.0.copyload, 2
  %.fca.3.insert551 = insertvalue [8 x i32] %.fca.2.insert548, i32 %tmp182.sroa.0.12.tmp182.sroa.0.12.tmp182.sroa.0.12.d.sroa.9.0.copyload, 3
  %.fca.4.insert554 = insertvalue [8 x i32] %.fca.3.insert551, i32 %tmp182.sroa.0.16.tmp182.sroa.0.16.tmp182.sroa.0.16.d.sroa.11.0.copyload, 4
  %.fca.5.insert557 = insertvalue [8 x i32] %.fca.4.insert554, i32 %tmp182.sroa.0.20.tmp182.sroa.0.20.tmp182.sroa.0.20.d.sroa.13.0.copyload, 5
  %.fca.6.insert560 = insertvalue [8 x i32] %.fca.5.insert557, i32 %tmp182.sroa.0.24.tmp182.sroa.0.24.tmp182.sroa.0.24.d.sroa.15.0.copyload, 6
  %.fca.7.insert563 = insertvalue [8 x i32] %.fca.6.insert560, i32 %tmp182.sroa.0.28.tmp182.sroa.0.28.tmp182.sroa.0.28.d.sroa.17.0.copyload, 7
  call void %131(ptr noundef %map, [8 x i32] %.fca.7.insert563, i32 noundef %add184) #10
  %132 = ptrtoint ptr %bankwidth to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %bankwidth, align 4
  %add188 = add i32 %133, %z.1846
  %add.ptr = getelementptr i8, ptr %buf.addr.0847, i32 %133
  %cmp179 = icmp slt i32 %add188, %len
  br i1 %cmp179, label %map_word_load.exit.for.body181_crit_edge, label %map_word_load.exit.for.end190_crit_edge

map_word_load.exit.for.end190_crit_edge:          ; preds = %map_word_load.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end190

map_word_load.exit.for.body181_crit_edge:         ; preds = %map_word_load.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body181

for.end190:                                       ; preds = %map_word_load.exit.for.end190_crit_edge, %for.end171.for.end190_crit_edge
  %134 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %write, align 4
  call void @cfi_build_cmd(ptr nonnull sret(%union.map_word) align 4 %agg.tmp192, i32 noundef 208, ptr noundef %map, ptr noundef %1) #10
  %136 = ptrtoint ptr %agg.tmp192 to i32
  call void @__asan_load4_noabort(i32 %136)
  %.fca.0.load517 = load i32, ptr %agg.tmp192, align 4
  %.fca.0.insert518 = insertvalue [8 x i32] poison, i32 %.fca.0.load517, 0
  %.fca.1.gep519 = getelementptr inbounds [8 x i32], ptr %agg.tmp192, i32 0, i32 1
  %137 = ptrtoint ptr %.fca.1.gep519 to i32
  call void @__asan_load4_noabort(i32 %137)
  %.fca.1.load520 = load i32, ptr %.fca.1.gep519, align 4
  %.fca.1.insert521 = insertvalue [8 x i32] %.fca.0.insert518, i32 %.fca.1.load520, 1
  %.fca.2.gep522 = getelementptr inbounds [8 x i32], ptr %agg.tmp192, i32 0, i32 2
  %138 = ptrtoint ptr %.fca.2.gep522 to i32
  call void @__asan_load4_noabort(i32 %138)
  %.fca.2.load523 = load i32, ptr %.fca.2.gep522, align 4
  %.fca.2.insert524 = insertvalue [8 x i32] %.fca.1.insert521, i32 %.fca.2.load523, 2
  %.fca.3.gep525 = getelementptr inbounds [8 x i32], ptr %agg.tmp192, i32 0, i32 3
  %139 = ptrtoint ptr %.fca.3.gep525 to i32
  call void @__asan_load4_noabort(i32 %139)
  %.fca.3.load526 = load i32, ptr %.fca.3.gep525, align 4
  %.fca.3.insert527 = insertvalue [8 x i32] %.fca.2.insert524, i32 %.fca.3.load526, 3
  %.fca.4.gep528 = getelementptr inbounds [8 x i32], ptr %agg.tmp192, i32 0, i32 4
  %140 = ptrtoint ptr %.fca.4.gep528 to i32
  call void @__asan_load4_noabort(i32 %140)
  %.fca.4.load529 = load i32, ptr %.fca.4.gep528, align 4
  %.fca.4.insert530 = insertvalue [8 x i32] %.fca.3.insert527, i32 %.fca.4.load529, 4
  %.fca.5.gep531 = getelementptr inbounds [8 x i32], ptr %agg.tmp192, i32 0, i32 5
  %141 = ptrtoint ptr %.fca.5.gep531 to i32
  call void @__asan_load4_noabort(i32 %141)
  %.fca.5.load532 = load i32, ptr %.fca.5.gep531, align 4
  %.fca.5.insert533 = insertvalue [8 x i32] %.fca.4.insert530, i32 %.fca.5.load532, 5
  %.fca.6.gep534 = getelementptr inbounds [8 x i32], ptr %agg.tmp192, i32 0, i32 6
  %142 = ptrtoint ptr %.fca.6.gep534 to i32
  call void @__asan_load4_noabort(i32 %142)
  %.fca.6.load535 = load i32, ptr %.fca.6.gep534, align 4
  %.fca.6.insert536 = insertvalue [8 x i32] %.fca.5.insert533, i32 %.fca.6.load535, 6
  %.fca.7.gep537 = getelementptr inbounds [8 x i32], ptr %agg.tmp192, i32 0, i32 7
  %143 = ptrtoint ptr %.fca.7.gep537 to i32
  call void @__asan_load4_noabort(i32 %143)
  %.fca.7.load538 = load i32, ptr %.fca.7.gep537, align 4
  %.fca.7.insert539 = insertvalue [8 x i32] %.fca.6.insert536, i32 %.fca.7.load538, 7
  call void %135(ptr noundef %map, [8 x i32] %.fca.7.insert539, i32 noundef %and3) #10
  %144 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 7, ptr %state, align 4
  call void @mutex_unlock(ptr noundef %mutex) #10
  %buffer_write_time = getelementptr inbounds %struct.flchip, ptr %chip, i32 0, i32 10
  %145 = ptrtoint ptr %buffer_write_time to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %buffer_write_time, align 4
  call void @cfi_udelay(i32 noundef %146) #10
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %147 = load volatile i32, ptr @jiffies, align 128
  %add197 = add i32 %147, 50
  br label %for.cond198.outer

for.cond198.outer:                                ; preds = %if.end341, %for.end190
  %z.2.ph = phi i32 [ %inc343, %if.end341 ], [ 0, %for.end190 ]
  %timeo.1.ph = phi i32 [ %timeo.1.lcssa, %if.end341 ], [ %add197, %for.end190 ]
  %148 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %149)
  %cmp200.not849 = icmp eq i32 %149, 7
  br i1 %cmp200.not849, label %for.cond198.outer.if.end289_crit_edge, label %for.cond198.outer.__here254_crit_edge

for.cond198.outer.__here254_crit_edge:            ; preds = %for.cond198.outer
  br label %__here254

for.cond198.outer.if.end289_crit_edge:            ; preds = %for.cond198.outer
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end289

__here254:                                        ; preds = %__here254.__here254_crit_edge, %for.cond198.outer.__here254_crit_edge
  %150 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %task, align 8
  %task_state_change258 = getelementptr inbounds %struct.task_struct, ptr %151, i32 0, i32 212
  %152 = ptrtoint ptr %task_state_change258 to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 ptrtoint (ptr blockaddress(@do_write_buffer, %__here254) to i32), ptr %task_state_change258, align 4
  %153 = load ptr, ptr %task, align 8
  %154 = ptrtoint ptr %153 to i32
  call void @__asan_store4_noabort(i32 %154)
  store volatile i32 2, ptr %153, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !133
  call void @add_wait_queue(ptr noundef %wq, ptr noundef nonnull %wait) #10
  call void @mutex_unlock(ptr noundef %mutex) #10
  call void @schedule() #10
  call void @remove_wait_queue(ptr noundef %wq, ptr noundef nonnull %wait) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %155 = load volatile i32, ptr @jiffies, align 128
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %156 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %state, align 4
  %cmp200.not = icmp eq i32 %157, 7
  br i1 %cmp200.not, label %for.cond198.if.end289_crit_edge, label %__here254.__here254_crit_edge

__here254.__here254_crit_edge:                    ; preds = %__here254
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here254

for.cond198.if.end289_crit_edge:                  ; preds = %__here254
  call void @__sanitizer_cov_trace_pc() #12
  %add287.le = add i32 %155, 50
  br label %if.end289

if.end289:                                        ; preds = %for.cond198.if.end289_crit_edge, %for.cond198.outer.if.end289_crit_edge
  %timeo.1.lcssa = phi i32 [ %add287.le, %for.cond198.if.end289_crit_edge ], [ %timeo.1.ph, %for.cond198.outer.if.end289_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tmp290) #10
  %158 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %read, align 4
  call void %159(ptr nonnull sret(%union.map_word) align 4 %tmp290, ptr noundef %map, i32 noundef %and3) #10
  %160 = call ptr @memcpy(ptr %status, ptr %tmp290, i32 32)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tmp290) #10
  %161 = ptrtoint ptr %bankwidth to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %bankwidth, align 4
  %add296 = add i32 %162, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %add296)
  %cmp298852.not = icmp ult i32 %add296, 4
  br i1 %cmp298852.not, label %if.end289.for.end345_crit_edge, label %for.body300.preheader

if.end289.for.end345_crit_edge:                   ; preds = %if.end289
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end345

for.body300.preheader:                            ; preds = %if.end289
  %div297809 = lshr i32 %add296, 2
  br label %for.body300

for.cond294:                                      ; preds = %for.body300
  %inc310 = add nuw nsw i32 %i292.0853, 1
  %exitcond878.not = icmp eq i32 %inc310, %div297809
  br i1 %exitcond878.not, label %for.cond294.for.end345_crit_edge, label %for.cond294.for.body300_crit_edge

for.cond294.for.body300_crit_edge:                ; preds = %for.cond294
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body300

for.cond294.for.end345_crit_edge:                 ; preds = %for.cond294
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end345

for.body300:                                      ; preds = %for.cond294.for.body300_crit_edge, %for.body300.preheader
  %i292.0853 = phi i32 [ %inc310, %for.cond294.for.body300_crit_edge ], [ 0, %for.body300.preheader ]
  %arrayidx301 = getelementptr [8 x i32], ptr %status, i32 0, i32 %i292.0853
  %163 = ptrtoint ptr %arrayidx301 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %arrayidx301, align 4
  %arrayidx302 = getelementptr [8 x i32], ptr %status_OK, i32 0, i32 %i292.0853
  %165 = ptrtoint ptr %arrayidx302 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %arrayidx302, align 4
  %and303 = and i32 %166, %164
  call void @__sanitizer_cov_trace_cmp4(i32 %and303, i32 %166)
  %cmp305.not = icmp eq i32 %and303, %166
  br i1 %cmp305.not, label %for.cond294, label %if.end315.critedge

if.end315.critedge:                               ; preds = %for.body300
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %167 = load volatile i32, ptr @jiffies, align 128
  %sub316 = sub i32 %timeo.1.lcssa, %167
  %cmp317 = icmp slt i32 %sub316, 0
  br i1 %cmp317, label %if.then319, label %if.end341

if.then319:                                       ; preds = %if.end315.critedge
  %168 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %write, align 4
  call void @cfi_build_cmd(ptr nonnull sret(%union.map_word) align 4 %agg.tmp321, i32 noundef 80, ptr noundef %map, ptr noundef %1) #10
  %170 = ptrtoint ptr %agg.tmp321 to i32
  call void @__asan_load4_noabort(i32 %170)
  %.fca.0.load487 = load i32, ptr %agg.tmp321, align 4
  %.fca.0.insert488 = insertvalue [8 x i32] poison, i32 %.fca.0.load487, 0
  %.fca.1.gep489 = getelementptr inbounds [8 x i32], ptr %agg.tmp321, i32 0, i32 1
  %171 = ptrtoint ptr %.fca.1.gep489 to i32
  call void @__asan_load4_noabort(i32 %171)
  %.fca.1.load490 = load i32, ptr %.fca.1.gep489, align 4
  %.fca.1.insert491 = insertvalue [8 x i32] %.fca.0.insert488, i32 %.fca.1.load490, 1
  %.fca.2.gep492 = getelementptr inbounds [8 x i32], ptr %agg.tmp321, i32 0, i32 2
  %172 = ptrtoint ptr %.fca.2.gep492 to i32
  call void @__asan_load4_noabort(i32 %172)
  %.fca.2.load493 = load i32, ptr %.fca.2.gep492, align 4
  %.fca.2.insert494 = insertvalue [8 x i32] %.fca.1.insert491, i32 %.fca.2.load493, 2
  %.fca.3.gep495 = getelementptr inbounds [8 x i32], ptr %agg.tmp321, i32 0, i32 3
  %173 = ptrtoint ptr %.fca.3.gep495 to i32
  call void @__asan_load4_noabort(i32 %173)
  %.fca.3.load496 = load i32, ptr %.fca.3.gep495, align 4
  %.fca.3.insert497 = insertvalue [8 x i32] %.fca.2.insert494, i32 %.fca.3.load496, 3
  %.fca.4.gep498 = getelementptr inbounds [8 x i32], ptr %agg.tmp321, i32 0, i32 4
  %174 = ptrtoint ptr %.fca.4.gep498 to i32
  call void @__asan_load4_noabort(i32 %174)
  %.fca.4.load499 = load i32, ptr %.fca.4.gep498, align 4
  %.fca.4.insert500 = insertvalue [8 x i32] %.fca.3.insert497, i32 %.fca.4.load499, 4
  %.fca.5.gep501 = getelementptr inbounds [8 x i32], ptr %agg.tmp321, i32 0, i32 5
  %175 = ptrtoint ptr %.fca.5.gep501 to i32
  call void @__asan_load4_noabort(i32 %175)
  %.fca.5.load502 = load i32, ptr %.fca.5.gep501, align 4
  %.fca.5.insert503 = insertvalue [8 x i32] %.fca.4.insert500, i32 %.fca.5.load502, 5
  %.fca.6.gep504 = getelementptr inbounds [8 x i32], ptr %agg.tmp321, i32 0, i32 6
  %176 = ptrtoint ptr %.fca.6.gep504 to i32
  call void @__asan_load4_noabort(i32 %176)
  %.fca.6.load505 = load i32, ptr %.fca.6.gep504, align 4
  %.fca.6.insert506 = insertvalue [8 x i32] %.fca.5.insert503, i32 %.fca.6.load505, 6
  %.fca.7.gep507 = getelementptr inbounds [8 x i32], ptr %agg.tmp321, i32 0, i32 7
  %177 = ptrtoint ptr %.fca.7.gep507 to i32
  call void @__asan_load4_noabort(i32 %177)
  %.fca.7.load508 = load i32, ptr %.fca.7.gep507, align 4
  %.fca.7.insert509 = insertvalue [8 x i32] %.fca.6.insert506, i32 %.fca.7.load508, 7
  call void %169(ptr noundef %map, [8 x i32] %.fca.7.insert509, i32 noundef %and3) #10
  %178 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %write, align 4
  call void @cfi_build_cmd(ptr nonnull sret(%union.map_word) align 4 %agg.tmp324, i32 noundef 112, ptr noundef %map, ptr noundef %1) #10
  %180 = ptrtoint ptr %agg.tmp324 to i32
  call void @__asan_load4_noabort(i32 %180)
  %.fca.0.load463 = load i32, ptr %agg.tmp324, align 4
  %.fca.0.insert464 = insertvalue [8 x i32] poison, i32 %.fca.0.load463, 0
  %.fca.1.gep465 = getelementptr inbounds [8 x i32], ptr %agg.tmp324, i32 0, i32 1
  %181 = ptrtoint ptr %.fca.1.gep465 to i32
  call void @__asan_load4_noabort(i32 %181)
  %.fca.1.load466 = load i32, ptr %.fca.1.gep465, align 4
  %.fca.1.insert467 = insertvalue [8 x i32] %.fca.0.insert464, i32 %.fca.1.load466, 1
  %.fca.2.gep468 = getelementptr inbounds [8 x i32], ptr %agg.tmp324, i32 0, i32 2
  %182 = ptrtoint ptr %.fca.2.gep468 to i32
  call void @__asan_load4_noabort(i32 %182)
  %.fca.2.load469 = load i32, ptr %.fca.2.gep468, align 4
  %.fca.2.insert470 = insertvalue [8 x i32] %.fca.1.insert467, i32 %.fca.2.load469, 2
  %.fca.3.gep471 = getelementptr inbounds [8 x i32], ptr %agg.tmp324, i32 0, i32 3
  %183 = ptrtoint ptr %.fca.3.gep471 to i32
  call void @__asan_load4_noabort(i32 %183)
  %.fca.3.load472 = load i32, ptr %.fca.3.gep471, align 4
  %.fca.3.insert473 = insertvalue [8 x i32] %.fca.2.insert470, i32 %.fca.3.load472, 3
  %.fca.4.gep474 = getelementptr inbounds [8 x i32], ptr %agg.tmp324, i32 0, i32 4
  %184 = ptrtoint ptr %.fca.4.gep474 to i32
  call void @__asan_load4_noabort(i32 %184)
  %.fca.4.load475 = load i32, ptr %.fca.4.gep474, align 4
  %.fca.4.insert476 = insertvalue [8 x i32] %.fca.3.insert473, i32 %.fca.4.load475, 4
  %.fca.5.gep477 = getelementptr inbounds [8 x i32], ptr %agg.tmp324, i32 0, i32 5
  %185 = ptrtoint ptr %.fca.5.gep477 to i32
  call void @__asan_load4_noabort(i32 %185)
  %.fca.5.load478 = load i32, ptr %.fca.5.gep477, align 4
  %.fca.5.insert479 = insertvalue [8 x i32] %.fca.4.insert476, i32 %.fca.5.load478, 5
  %.fca.6.gep480 = getelementptr inbounds [8 x i32], ptr %agg.tmp324, i32 0, i32 6
  %186 = ptrtoint ptr %.fca.6.gep480 to i32
  call void @__asan_load4_noabort(i32 %186)
  %.fca.6.load481 = load i32, ptr %.fca.6.gep480, align 4
  %.fca.6.insert482 = insertvalue [8 x i32] %.fca.5.insert479, i32 %.fca.6.load481, 6
  %.fca.7.gep483 = getelementptr inbounds [8 x i32], ptr %agg.tmp324, i32 0, i32 7
  %187 = ptrtoint ptr %.fca.7.gep483 to i32
  call void @__asan_load4_noabort(i32 %187)
  %.fca.7.load484 = load i32, ptr %.fca.7.gep483, align 4
  %.fca.7.insert485 = insertvalue [8 x i32] %.fca.6.insert482, i32 %.fca.7.load484, 7
  call void %179(ptr noundef %map, [8 x i32] %.fca.7.insert485, i32 noundef %add) #10
  %188 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %188)
  store i32 1, ptr %state, align 4
  %189 = ptrtoint ptr %set_vpp to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %set_vpp, align 4
  %tobool329.not = icmp eq ptr %190, null
  br i1 %tobool329.not, label %if.then319.do.end334_crit_edge, label %if.then330

if.then319.do.end334_crit_edge:                   ; preds = %if.then319
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end334

if.then330:                                       ; preds = %if.then319
  call void @__sanitizer_cov_trace_pc() #12
  call void %190(ptr noundef %map, i32 noundef 0) #10
  br label %do.end334

do.end334:                                        ; preds = %if.then330, %if.then319.do.end334_crit_edge
  call void @mutex_unlock(ptr noundef %mutex) #10
  %call340 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43) #13
  br label %cleanup

if.end341:                                        ; preds = %if.end315.critedge
  call void @__sanitizer_cov_trace_pc() #12
  call void @mutex_unlock(ptr noundef %mutex) #10
  call void @cfi_udelay(i32 noundef 1) #10
  %inc343 = add i32 %z.2.ph, 1
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  br label %for.cond198.outer

for.end345:                                       ; preds = %for.cond294.for.end345_crit_edge, %if.end289.for.end345_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %z.2.ph)
  %tobool346.not = icmp eq i32 %z.2.ph, 0
  br i1 %tobool346.not, label %if.end355.thread, label %if.end355

if.end355.thread:                                 ; preds = %for.end345
  call void @__sanitizer_cov_trace_pc() #12
  %191 = ptrtoint ptr %buffer_write_time to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %buffer_write_time, align 4
  %dec = add i32 %192, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool350.not = icmp eq i32 %dec, 0
  %spec.store.select = select i1 %tobool350.not, i32 %192, i32 %dec
  br label %do.body362.sink.split

if.end355:                                        ; preds = %for.end345
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %z.2.ph)
  %cmp356 = icmp sgt i32 %z.2.ph, 1
  br i1 %cmp356, label %if.then358, label %if.end355.do.body362_crit_edge

if.end355.do.body362_crit_edge:                   ; preds = %if.end355
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body362

if.then358:                                       ; preds = %if.end355
  call void @__sanitizer_cov_trace_pc() #12
  %193 = ptrtoint ptr %buffer_write_time to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %buffer_write_time, align 4
  %inc360 = add i32 %194, 1
  br label %do.body362.sink.split

do.body362.sink.split:                            ; preds = %if.then358, %if.end355.thread
  %spec.store.select.sink = phi i32 [ %spec.store.select, %if.end355.thread ], [ %inc360, %if.then358 ]
  %195 = ptrtoint ptr %buffer_write_time to i32
  call void @__asan_store4_noabort(i32 %195)
  store i32 %spec.store.select.sink, ptr %buffer_write_time, align 4
  br label %do.body362

do.body362:                                       ; preds = %do.body362.sink.split, %if.end355.do.body362_crit_edge
  %196 = ptrtoint ptr %set_vpp to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %set_vpp, align 4
  %tobool364.not = icmp eq ptr %197, null
  br i1 %tobool364.not, label %do.body362.do.end369_crit_edge, label %if.then365

do.body362.do.end369_crit_edge:                   ; preds = %do.body362
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end369

if.then365:                                       ; preds = %do.body362
  call void @__sanitizer_cov_trace_pc() #12
  call void %197(ptr noundef %map, i32 noundef 0) #10
  br label %do.end369

do.end369:                                        ; preds = %if.then365, %do.body362.do.end369_crit_edge
  %198 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %198)
  store i32 1, ptr %state, align 4
  %199 = ptrtoint ptr %bankwidth to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %bankwidth, align 4
  %add375856 = add i32 %200, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %add375856)
  %cmp377858.not = icmp ult i32 %add375856, 4
  br i1 %cmp377858.not, label %do.end369.if.end422_crit_edge, label %do.end369.for.body379_crit_edge

do.end369.for.body379_crit_edge:                  ; preds = %do.end369
  br label %for.body379

do.end369.if.end422_crit_edge:                    ; preds = %do.end369
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end422

for.cond373:                                      ; preds = %for.body379
  %inc388 = add nuw nsw i32 %i371.0859, 1
  %201 = ptrtoint ptr %bankwidth to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %bankwidth, align 4
  %add375 = add i32 %202, 3
  %div376810 = lshr i32 %add375, 2
  %cmp377 = icmp ult i32 %inc388, %div376810
  br i1 %cmp377, label %for.cond373.for.body379_crit_edge, label %for.cond373.if.end422_crit_edge

for.cond373.if.end422_crit_edge:                  ; preds = %for.cond373
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end422

for.cond373.for.body379_crit_edge:                ; preds = %for.cond373
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body379

for.body379:                                      ; preds = %for.cond373.for.body379_crit_edge, %do.end369.for.body379_crit_edge
  %i371.0859 = phi i32 [ %inc388, %for.cond373.for.body379_crit_edge ], [ 0, %do.end369.for.body379_crit_edge ]
  %arrayidx380 = getelementptr [8 x i32], ptr %status, i32 0, i32 %i371.0859
  %203 = ptrtoint ptr %arrayidx380 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %arrayidx380, align 4
  call void @cfi_build_cmd(ptr nonnull sret(%union.map_word) align 4 %tmp381, i32 noundef 58, ptr noundef %map, ptr noundef %1) #10
  %arrayidx382 = getelementptr [8 x i32], ptr %tmp381, i32 0, i32 %i371.0859
  %205 = ptrtoint ptr %arrayidx382 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %arrayidx382, align 4
  %and383 = and i32 %206, %204
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and383)
  %tobool384.not = icmp eq i32 %and383, 0
  br i1 %tobool384.not, label %for.cond373, label %if.then392.critedge

if.then392.critedge:                              ; preds = %for.body379
  %207 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %write, align 4
  call void @cfi_build_cmd(ptr nonnull sret(%union.map_word) align 4 %agg.tmp394, i32 noundef 80, ptr noundef %map, ptr noundef %1) #10
  %209 = ptrtoint ptr %agg.tmp394 to i32
  call void @__asan_load4_noabort(i32 %209)
  %.fca.0.load436 = load i32, ptr %agg.tmp394, align 4
  %.fca.0.insert437 = insertvalue [8 x i32] poison, i32 %.fca.0.load436, 0
  %.fca.1.gep438 = getelementptr inbounds [8 x i32], ptr %agg.tmp394, i32 0, i32 1
  %210 = ptrtoint ptr %.fca.1.gep438 to i32
  call void @__asan_load4_noabort(i32 %210)
  %.fca.1.load439 = load i32, ptr %.fca.1.gep438, align 4
  %.fca.1.insert440 = insertvalue [8 x i32] %.fca.0.insert437, i32 %.fca.1.load439, 1
  %.fca.2.gep441 = getelementptr inbounds [8 x i32], ptr %agg.tmp394, i32 0, i32 2
  %211 = ptrtoint ptr %.fca.2.gep441 to i32
  call void @__asan_load4_noabort(i32 %211)
  %.fca.2.load442 = load i32, ptr %.fca.2.gep441, align 4
  %.fca.2.insert443 = insertvalue [8 x i32] %.fca.1.insert440, i32 %.fca.2.load442, 2
  %.fca.3.gep444 = getelementptr inbounds [8 x i32], ptr %agg.tmp394, i32 0, i32 3
  %212 = ptrtoint ptr %.fca.3.gep444 to i32
  call void @__asan_load4_noabort(i32 %212)
  %.fca.3.load445 = load i32, ptr %.fca.3.gep444, align 4
  %.fca.3.insert446 = insertvalue [8 x i32] %.fca.2.insert443, i32 %.fca.3.load445, 3
  %.fca.4.gep447 = getelementptr inbounds [8 x i32], ptr %agg.tmp394, i32 0, i32 4
  %213 = ptrtoint ptr %.fca.4.gep447 to i32
  call void @__asan_load4_noabort(i32 %213)
  %.fca.4.load448 = load i32, ptr %.fca.4.gep447, align 4
  %.fca.4.insert449 = insertvalue [8 x i32] %.fca.3.insert446, i32 %.fca.4.load448, 4
  %.fca.5.gep450 = getelementptr inbounds [8 x i32], ptr %agg.tmp394, i32 0, i32 5
  %214 = ptrtoint ptr %.fca.5.gep450 to i32
  call void @__asan_load4_noabort(i32 %214)
  %.fca.5.load451 = load i32, ptr %.fca.5.gep450, align 4
  %.fca.5.insert452 = insertvalue [8 x i32] %.fca.4.insert449, i32 %.fca.5.load451, 5
  %.fca.6.gep453 = getelementptr inbounds [8 x i32], ptr %agg.tmp394, i32 0, i32 6
  %215 = ptrtoint ptr %.fca.6.gep453 to i32
  call void @__asan_load4_noabort(i32 %215)
  %.fca.6.load454 = load i32, ptr %.fca.6.gep453, align 4
  %.fca.6.insert455 = insertvalue [8 x i32] %.fca.5.insert452, i32 %.fca.6.load454, 6
  %.fca.7.gep456 = getelementptr inbounds [8 x i32], ptr %agg.tmp394, i32 0, i32 7
  %216 = ptrtoint ptr %.fca.7.gep456 to i32
  call void @__asan_load4_noabort(i32 %216)
  %.fca.7.load457 = load i32, ptr %.fca.7.gep456, align 4
  %.fca.7.insert458 = insertvalue [8 x i32] %.fca.6.insert455, i32 %.fca.7.load457, 7
  call void %208(ptr noundef %map, [8 x i32] %.fca.7.insert458, i32 noundef %and3) #10
  %217 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %write, align 4
  call void @cfi_build_cmd(ptr nonnull sret(%union.map_word) align 4 %agg.tmp397, i32 noundef 112, ptr noundef %map, ptr noundef %1) #10
  %219 = ptrtoint ptr %agg.tmp397 to i32
  call void @__asan_load4_noabort(i32 %219)
  %.fca.0.load = load i32, ptr %agg.tmp397, align 4
  %.fca.0.insert = insertvalue [8 x i32] poison, i32 %.fca.0.load, 0
  %.fca.1.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp397, i32 0, i32 1
  %220 = ptrtoint ptr %.fca.1.gep to i32
  call void @__asan_load4_noabort(i32 %220)
  %.fca.1.load = load i32, ptr %.fca.1.gep, align 4
  %.fca.1.insert = insertvalue [8 x i32] %.fca.0.insert, i32 %.fca.1.load, 1
  %.fca.2.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp397, i32 0, i32 2
  %221 = ptrtoint ptr %.fca.2.gep to i32
  call void @__asan_load4_noabort(i32 %221)
  %.fca.2.load = load i32, ptr %.fca.2.gep, align 4
  %.fca.2.insert = insertvalue [8 x i32] %.fca.1.insert, i32 %.fca.2.load, 2
  %.fca.3.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp397, i32 0, i32 3
  %222 = ptrtoint ptr %.fca.3.gep to i32
  call void @__asan_load4_noabort(i32 %222)
  %.fca.3.load = load i32, ptr %.fca.3.gep, align 4
  %.fca.3.insert = insertvalue [8 x i32] %.fca.2.insert, i32 %.fca.3.load, 3
  %.fca.4.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp397, i32 0, i32 4
  %223 = ptrtoint ptr %.fca.4.gep to i32
  call void @__asan_load4_noabort(i32 %223)
  %.fca.4.load = load i32, ptr %.fca.4.gep, align 4
  %.fca.4.insert = insertvalue [8 x i32] %.fca.3.insert, i32 %.fca.4.load, 4
  %.fca.5.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp397, i32 0, i32 5
  %224 = ptrtoint ptr %.fca.5.gep to i32
  call void @__asan_load4_noabort(i32 %224)
  %.fca.5.load = load i32, ptr %.fca.5.gep, align 4
  %.fca.5.insert = insertvalue [8 x i32] %.fca.4.insert, i32 %.fca.5.load, 5
  %.fca.6.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp397, i32 0, i32 6
  %225 = ptrtoint ptr %.fca.6.gep to i32
  call void @__asan_load4_noabort(i32 %225)
  %.fca.6.load = load i32, ptr %.fca.6.gep, align 4
  %.fca.6.insert = insertvalue [8 x i32] %.fca.5.insert, i32 %.fca.6.load, 6
  %.fca.7.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp397, i32 0, i32 7
  %226 = ptrtoint ptr %.fca.7.gep to i32
  call void @__asan_load4_noabort(i32 %226)
  %.fca.7.load = load i32, ptr %.fca.7.gep, align 4
  %.fca.7.insert = insertvalue [8 x i32] %.fca.6.insert, i32 %.fca.7.load, 7
  call void %218(ptr noundef %map, [8 x i32] %.fca.7.insert, i32 noundef %add) #10
  call void @__wake_up(ptr noundef %wq, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  call void @mutex_unlock(ptr noundef %mutex) #10
  %227 = ptrtoint ptr %bankwidth to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %bankwidth, align 4
  %add405860 = add i32 %228, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %add405860)
  %cmp407862.not = icmp ult i32 %add405860, 4
  br i1 %cmp407862.not, label %if.then392.critedge.cleanup_crit_edge, label %if.then392.critedge.for.body409_crit_edge

if.then392.critedge.for.body409_crit_edge:        ; preds = %if.then392.critedge
  br label %for.body409

if.then392.critedge.cleanup_crit_edge:            ; preds = %if.then392.critedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond403:                                      ; preds = %for.body409
  %inc418 = add nuw nsw i32 %i401.0863, 1
  %229 = ptrtoint ptr %bankwidth to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %bankwidth, align 4
  %add405 = add i32 %230, 3
  %div406811 = lshr i32 %add405, 2
  %cmp407 = icmp ult i32 %inc418, %div406811
  br i1 %cmp407, label %for.cond403.for.body409_crit_edge, label %for.cond403.cleanup_crit_edge

for.cond403.cleanup_crit_edge:                    ; preds = %for.cond403
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond403.for.body409_crit_edge:                ; preds = %for.cond403
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body409

for.body409:                                      ; preds = %for.cond403.for.body409_crit_edge, %if.then392.critedge.for.body409_crit_edge
  %i401.0863 = phi i32 [ %inc418, %for.cond403.for.body409_crit_edge ], [ 0, %if.then392.critedge.for.body409_crit_edge ]
  %arrayidx410 = getelementptr [8 x i32], ptr %status, i32 0, i32 %i401.0863
  %231 = ptrtoint ptr %arrayidx410 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %arrayidx410, align 4
  call void @cfi_build_cmd(ptr nonnull sret(%union.map_word) align 4 %tmp411, i32 noundef 2, ptr noundef %map, ptr noundef %1) #10
  %arrayidx412 = getelementptr [8 x i32], ptr %tmp411, i32 0, i32 %i401.0863
  %233 = ptrtoint ptr %arrayidx412 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %arrayidx412, align 4
  %and413 = and i32 %234, %232
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and413)
  %tobool414.not = icmp eq i32 %and413, 0
  br i1 %tobool414.not, label %for.cond403, label %for.body409.cleanup_crit_edge

for.body409.cleanup_crit_edge:                    ; preds = %for.body409
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end422:                                        ; preds = %for.cond373.if.end422_crit_edge, %do.end369.if.end422_crit_edge
  call void @__wake_up(ptr noundef %wq, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  call void @mutex_unlock(ptr noundef %mutex) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end422, %for.body409.cleanup_crit_edge, %for.cond403.cleanup_crit_edge, %if.then392.critedge.cleanup_crit_edge, %do.end334, %do.end158, %if.then25, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end422 ], [ -5, %do.end334 ], [ -5, %do.end158 ], [ -5, %if.then25 ], [ -22, %entry.cleanup_crit_edge ], [ -5, %if.then392.critedge.cleanup_crit_edge ], [ -30, %for.body409.cleanup_crit_edge ], [ -5, %for.cond403.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %status_OK) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %status) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_write(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @do_lock_oneblock(ptr noundef %map, ptr noundef %chip, i32 noundef %adr) #7 align 64 {
entry:
  %status = alloca %union.map_word, align 4
  %status_OK = alloca %union.map_word, align 4
  %wait = alloca %struct.wait_queue_entry, align 4
  %agg.tmp = alloca %union.map_word, align 4
  %agg.tmp100 = alloca %union.map_word, align 4
  %agg.tmp103 = alloca %union.map_word, align 4
  %tmp110 = alloca %union.map_word, align 4
  %agg.tmp138 = alloca %union.map_word, align 4
  %tmp147 = alloca %union.map_word, align 4
  call void @__sanitizer_cov_trace_pc() #12
  %fldrv_priv = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 17
  %0 = ptrtoint ptr %fldrv_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fldrv_priv, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %status) #10
  %2 = call ptr @memset(ptr %status, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %status_OK) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %3 = load volatile i32, ptr @jiffies, align 128
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #10
  %4 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %5 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %6 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %7 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %8 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %wait, align 4
  %9 = tail call i32 @llvm.read_register.i32(metadata !112) #10
  %and.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %task, align 8
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %4, align 4
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @default_wake_function, ptr %5, align 4
  %15 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %6, align 4
  %16 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %7, align 4
  %17 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %chip, align 4
  %add2 = add i32 %18, %adr
  call void @cfi_build_cmd(ptr nonnull sret(%union.map_word) align 4 %status_OK, i32 noundef 128, ptr noundef %map, ptr noundef %1) #10
  %mutex = getelementptr inbounds %struct.flchip, ptr %chip, i32 0, i32 7
  %state = getelementptr inbounds %struct.flchip, ptr %chip, i32 0, i32 2
  %write = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 9
  %.fca.1.gep239 = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 1
  %.fca.2.gep242 = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 2
  %.fca.3.gep245 = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 3
  %.fca.4.gep248 = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 4
  %.fca.5.gep251 = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 5
  %.fca.6.gep254 = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 6
  %.fca.7.gep257 = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 7
  %read = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 7
  %bankwidth = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 6
  %wq = getelementptr inbounds %struct.flchip, ptr %chip, i32 0, i32 8
  br label %retry.outer

retry.outer:                                      ; preds = %__here, %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %timeo.0.ph.in = load volatile i32, ptr @jiffies, align 128
  %timeo.0.ph = add i32 %timeo.0.ph.in, 100
  br label %retry

retry:                                            ; preds = %if.end19, %retry.outer
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %19 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %state, align 4
  %21 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.61)
  switch i32 %20, label %__here [
    i32 2, label %retry.sw.bb_crit_edge
    i32 3, label %retry.sw.bb_crit_edge353
    i32 0, label %retry.sw.bb_crit_edge354
    i32 1, label %retry.sw.bb5_crit_edge
  ]

retry.sw.bb5_crit_edge:                           ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb5

retry.sw.bb_crit_edge354:                         ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

retry.sw.bb_crit_edge353:                         ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

retry.sw.bb_crit_edge:                            ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

sw.bb:                                            ; preds = %retry.sw.bb_crit_edge, %retry.sw.bb_crit_edge353, %retry.sw.bb_crit_edge354
  %22 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %write, align 4
  call void @cfi_build_cmd(ptr nonnull sret(%union.map_word) align 4 %agg.tmp, i32 noundef 112, ptr noundef %map, ptr noundef %1) #10
  %24 = ptrtoint ptr %agg.tmp to i32
  call void @__asan_load4_noabort(i32 %24)
  %.fca.0.load237 = load i32, ptr %agg.tmp, align 4
  %.fca.0.insert238 = insertvalue [8 x i32] poison, i32 %.fca.0.load237, 0
  %25 = ptrtoint ptr %.fca.1.gep239 to i32
  call void @__asan_load4_noabort(i32 %25)
  %.fca.1.load240 = load i32, ptr %.fca.1.gep239, align 4
  %.fca.1.insert241 = insertvalue [8 x i32] %.fca.0.insert238, i32 %.fca.1.load240, 1
  %26 = ptrtoint ptr %.fca.2.gep242 to i32
  call void @__asan_load4_noabort(i32 %26)
  %.fca.2.load243 = load i32, ptr %.fca.2.gep242, align 4
  %.fca.2.insert244 = insertvalue [8 x i32] %.fca.1.insert241, i32 %.fca.2.load243, 2
  %27 = ptrtoint ptr %.fca.3.gep245 to i32
  call void @__asan_load4_noabort(i32 %27)
  %.fca.3.load246 = load i32, ptr %.fca.3.gep245, align 4
  %.fca.3.insert247 = insertvalue [8 x i32] %.fca.2.insert244, i32 %.fca.3.load246, 3
  %28 = ptrtoint ptr %.fca.4.gep248 to i32
  call void @__asan_load4_noabort(i32 %28)
  %.fca.4.load249 = load i32, ptr %.fca.4.gep248, align 4
  %.fca.4.insert250 = insertvalue [8 x i32] %.fca.3.insert247, i32 %.fca.4.load249, 4
  %29 = ptrtoint ptr %.fca.5.gep251 to i32
  call void @__asan_load4_noabort(i32 %29)
  %.fca.5.load252 = load i32, ptr %.fca.5.gep251, align 4
  %.fca.5.insert253 = insertvalue [8 x i32] %.fca.4.insert250, i32 %.fca.5.load252, 5
  %30 = ptrtoint ptr %.fca.6.gep254 to i32
  call void @__asan_load4_noabort(i32 %30)
  %.fca.6.load255 = load i32, ptr %.fca.6.gep254, align 4
  %.fca.6.insert256 = insertvalue [8 x i32] %.fca.5.insert253, i32 %.fca.6.load255, 6
  %31 = ptrtoint ptr %.fca.7.gep257 to i32
  call void @__asan_load4_noabort(i32 %31)
  %.fca.7.load258 = load i32, ptr %.fca.7.gep257, align 4
  %.fca.7.insert259 = insertvalue [8 x i32] %.fca.6.insert256, i32 %.fca.7.load258, 7
  call void %23(ptr noundef %map, [8 x i32] %.fca.7.insert259, i32 noundef %add2) #10
  %32 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1, ptr %state, align 4
  br label %sw.bb5

sw.bb5:                                           ; preds = %sw.bb, %retry.sw.bb5_crit_edge
  %33 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %read, align 4
  call void %34(ptr nonnull sret(%union.map_word) align 4 %status, ptr noundef %map, i32 noundef %add2) #10
  %35 = ptrtoint ptr %bankwidth to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %bankwidth, align 4
  %add7 = add i32 %36, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %add7)
  %cmp330.not = icmp ult i32 %add7, 4
  br i1 %cmp330.not, label %sw.bb5.do.body92_crit_edge, label %for.body.preheader

sw.bb5.do.body92_crit_edge:                       ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body92

for.body.preheader:                               ; preds = %sw.bb5
  %div322 = lshr i32 %add7, 2
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.0331, 1
  %exitcond.not = icmp eq i32 %inc, %div322
  br i1 %exitcond.not, label %for.cond.do.body92_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.cond.do.body92_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body92

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.preheader
  %i.0331 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr [8 x i32], ptr %status, i32 0, i32 %i.0331
  %37 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx, align 4
  %arrayidx8 = getelementptr [8 x i32], ptr %status_OK, i32 0, i32 %i.0331
  %39 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx8, align 4
  %and = and i32 %40, %38
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %40)
  %cmp10.not = icmp eq i32 %and, %40
  br i1 %cmp10.not, label %for.cond, label %if.end13.critedge

if.end13.critedge:                                ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %41 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %timeo.0.ph, %41
  %cmp14 = icmp slt i32 %sub, 0
  call void @mutex_unlock(ptr noundef %mutex) #10
  br i1 %cmp14, label %if.then15, label %if.end19

if.then15:                                        ; preds = %if.end13.critedge
  call void @__sanitizer_cov_trace_pc() #12
  %call18 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45) #13
  br label %cleanup

if.end19:                                         ; preds = %if.end13.critedge
  call void @__sanitizer_cov_trace_pc() #12
  call void @cfi_udelay(i32 noundef 1) #10
  br label %retry

__here:                                           ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #12
  %42 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %43, i32 0, i32 212
  %44 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 ptrtoint (ptr blockaddress(@do_lock_oneblock, %__here) to i32), ptr %task_state_change, align 4
  %45 = load ptr, ptr %task, align 8
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile i32 2, ptr %45, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !134
  call void @add_wait_queue(ptr noundef %wq, ptr noundef nonnull %wait) #10
  call void @mutex_unlock(ptr noundef %mutex) #10
  call void @schedule() #10
  call void @remove_wait_queue(ptr noundef %wq, ptr noundef nonnull %wait) #10
  br label %retry.outer

do.body92:                                        ; preds = %for.cond.do.body92_crit_edge, %sw.bb5.do.body92_crit_edge
  %set_vpp = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 12
  %47 = ptrtoint ptr %set_vpp to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %set_vpp, align 4
  %tobool93.not = icmp eq ptr %48, null
  br i1 %tobool93.not, label %do.body92.do.end98_crit_edge, label %if.then94

do.body92.do.end98_crit_edge:                     ; preds = %do.body92
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end98

if.then94:                                        ; preds = %do.body92
  call void @__sanitizer_cov_trace_pc() #12
  call void %48(ptr noundef %map, i32 noundef 1) #10
  br label %do.end98

do.end98:                                         ; preds = %if.then94, %do.body92.do.end98_crit_edge
  %49 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %write, align 4
  call void @cfi_build_cmd(ptr nonnull sret(%union.map_word) align 4 %agg.tmp100, i32 noundef 96, ptr noundef %map, ptr noundef %1) #10
  %51 = ptrtoint ptr %agg.tmp100 to i32
  call void @__asan_load4_noabort(i32 %51)
  %.fca.0.load207 = load i32, ptr %agg.tmp100, align 4
  %.fca.0.insert208 = insertvalue [8 x i32] poison, i32 %.fca.0.load207, 0
  %.fca.1.gep209 = getelementptr inbounds [8 x i32], ptr %agg.tmp100, i32 0, i32 1
  %52 = ptrtoint ptr %.fca.1.gep209 to i32
  call void @__asan_load4_noabort(i32 %52)
  %.fca.1.load210 = load i32, ptr %.fca.1.gep209, align 4
  %.fca.1.insert211 = insertvalue [8 x i32] %.fca.0.insert208, i32 %.fca.1.load210, 1
  %.fca.2.gep212 = getelementptr inbounds [8 x i32], ptr %agg.tmp100, i32 0, i32 2
  %53 = ptrtoint ptr %.fca.2.gep212 to i32
  call void @__asan_load4_noabort(i32 %53)
  %.fca.2.load213 = load i32, ptr %.fca.2.gep212, align 4
  %.fca.2.insert214 = insertvalue [8 x i32] %.fca.1.insert211, i32 %.fca.2.load213, 2
  %.fca.3.gep215 = getelementptr inbounds [8 x i32], ptr %agg.tmp100, i32 0, i32 3
  %54 = ptrtoint ptr %.fca.3.gep215 to i32
  call void @__asan_load4_noabort(i32 %54)
  %.fca.3.load216 = load i32, ptr %.fca.3.gep215, align 4
  %.fca.3.insert217 = insertvalue [8 x i32] %.fca.2.insert214, i32 %.fca.3.load216, 3
  %.fca.4.gep218 = getelementptr inbounds [8 x i32], ptr %agg.tmp100, i32 0, i32 4
  %55 = ptrtoint ptr %.fca.4.gep218 to i32
  call void @__asan_load4_noabort(i32 %55)
  %.fca.4.load219 = load i32, ptr %.fca.4.gep218, align 4
  %.fca.4.insert220 = insertvalue [8 x i32] %.fca.3.insert217, i32 %.fca.4.load219, 4
  %.fca.5.gep221 = getelementptr inbounds [8 x i32], ptr %agg.tmp100, i32 0, i32 5
  %56 = ptrtoint ptr %.fca.5.gep221 to i32
  call void @__asan_load4_noabort(i32 %56)
  %.fca.5.load222 = load i32, ptr %.fca.5.gep221, align 4
  %.fca.5.insert223 = insertvalue [8 x i32] %.fca.4.insert220, i32 %.fca.5.load222, 5
  %.fca.6.gep224 = getelementptr inbounds [8 x i32], ptr %agg.tmp100, i32 0, i32 6
  %57 = ptrtoint ptr %.fca.6.gep224 to i32
  call void @__asan_load4_noabort(i32 %57)
  %.fca.6.load225 = load i32, ptr %.fca.6.gep224, align 4
  %.fca.6.insert226 = insertvalue [8 x i32] %.fca.5.insert223, i32 %.fca.6.load225, 6
  %.fca.7.gep227 = getelementptr inbounds [8 x i32], ptr %agg.tmp100, i32 0, i32 7
  %58 = ptrtoint ptr %.fca.7.gep227 to i32
  call void @__asan_load4_noabort(i32 %58)
  %.fca.7.load228 = load i32, ptr %.fca.7.gep227, align 4
  %.fca.7.insert229 = insertvalue [8 x i32] %.fca.6.insert226, i32 %.fca.7.load228, 7
  call void %50(ptr noundef %map, [8 x i32] %.fca.7.insert229, i32 noundef %add2) #10
  %59 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %write, align 4
  call void @cfi_build_cmd(ptr nonnull sret(%union.map_word) align 4 %agg.tmp103, i32 noundef 1, ptr noundef %map, ptr noundef %1) #10
  %61 = ptrtoint ptr %agg.tmp103 to i32
  call void @__asan_load4_noabort(i32 %61)
  %.fca.0.load183 = load i32, ptr %agg.tmp103, align 4
  %.fca.0.insert184 = insertvalue [8 x i32] poison, i32 %.fca.0.load183, 0
  %.fca.1.gep185 = getelementptr inbounds [8 x i32], ptr %agg.tmp103, i32 0, i32 1
  %62 = ptrtoint ptr %.fca.1.gep185 to i32
  call void @__asan_load4_noabort(i32 %62)
  %.fca.1.load186 = load i32, ptr %.fca.1.gep185, align 4
  %.fca.1.insert187 = insertvalue [8 x i32] %.fca.0.insert184, i32 %.fca.1.load186, 1
  %.fca.2.gep188 = getelementptr inbounds [8 x i32], ptr %agg.tmp103, i32 0, i32 2
  %63 = ptrtoint ptr %.fca.2.gep188 to i32
  call void @__asan_load4_noabort(i32 %63)
  %.fca.2.load189 = load i32, ptr %.fca.2.gep188, align 4
  %.fca.2.insert190 = insertvalue [8 x i32] %.fca.1.insert187, i32 %.fca.2.load189, 2
  %.fca.3.gep191 = getelementptr inbounds [8 x i32], ptr %agg.tmp103, i32 0, i32 3
  %64 = ptrtoint ptr %.fca.3.gep191 to i32
  call void @__asan_load4_noabort(i32 %64)
  %.fca.3.load192 = load i32, ptr %.fca.3.gep191, align 4
  %.fca.3.insert193 = insertvalue [8 x i32] %.fca.2.insert190, i32 %.fca.3.load192, 3
  %.fca.4.gep194 = getelementptr inbounds [8 x i32], ptr %agg.tmp103, i32 0, i32 4
  %65 = ptrtoint ptr %.fca.4.gep194 to i32
  call void @__asan_load4_noabort(i32 %65)
  %.fca.4.load195 = load i32, ptr %.fca.4.gep194, align 4
  %.fca.4.insert196 = insertvalue [8 x i32] %.fca.3.insert193, i32 %.fca.4.load195, 4
  %.fca.5.gep197 = getelementptr inbounds [8 x i32], ptr %agg.tmp103, i32 0, i32 5
  %66 = ptrtoint ptr %.fca.5.gep197 to i32
  call void @__asan_load4_noabort(i32 %66)
  %.fca.5.load198 = load i32, ptr %.fca.5.gep197, align 4
  %.fca.5.insert199 = insertvalue [8 x i32] %.fca.4.insert196, i32 %.fca.5.load198, 5
  %.fca.6.gep200 = getelementptr inbounds [8 x i32], ptr %agg.tmp103, i32 0, i32 6
  %67 = ptrtoint ptr %.fca.6.gep200 to i32
  call void @__asan_load4_noabort(i32 %67)
  %.fca.6.load201 = load i32, ptr %.fca.6.gep200, align 4
  %.fca.6.insert202 = insertvalue [8 x i32] %.fca.5.insert199, i32 %.fca.6.load201, 6
  %.fca.7.gep203 = getelementptr inbounds [8 x i32], ptr %agg.tmp103, i32 0, i32 7
  %68 = ptrtoint ptr %.fca.7.gep203 to i32
  call void @__asan_load4_noabort(i32 %68)
  %.fca.7.load204 = load i32, ptr %.fca.7.gep203, align 4
  %.fca.7.insert205 = insertvalue [8 x i32] %.fca.6.insert202, i32 %.fca.7.load204, 7
  call void %60(ptr noundef %map, [8 x i32] %.fca.7.insert205, i32 noundef %add2) #10
  %69 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 15, ptr %state, align 4
  call void @mutex_unlock(ptr noundef %mutex) #10
  call void @msleep(i32 noundef 1000) #10
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %70 = load volatile i32, ptr @jiffies, align 128
  %add108 = add i32 %70, 200
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tmp110) #10
  %71 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %read, align 4
  call void %72(ptr nonnull sret(%union.map_word) align 4 %tmp110, ptr noundef %map, i32 noundef %add2) #10
  %73 = call ptr @memcpy(ptr %status, ptr %tmp110, i32 32)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tmp110) #10
  %74 = ptrtoint ptr %bankwidth to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %bankwidth, align 4
  %add116340 = add i32 %75, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %add116340)
  %cmp118338342.not = icmp ult i32 %add116340, 4
  br i1 %cmp118338342.not, label %do.end98.for.end162_crit_edge, label %do.end98.for.body119.lr.ph_crit_edge

do.end98.for.body119.lr.ph_crit_edge:             ; preds = %do.end98
  br label %for.body119.lr.ph

do.end98.for.end162_crit_edge:                    ; preds = %do.end98
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end162

for.body119.lr.ph:                                ; preds = %if.end159.for.body119.lr.ph_crit_edge, %do.end98.for.body119.lr.ph_crit_edge
  %div117323343.in = phi i32 [ %add116, %if.end159.for.body119.lr.ph_crit_edge ], [ %add116340, %do.end98.for.body119.lr.ph_crit_edge ]
  %div117323343 = lshr i32 %div117323343.in, 2
  br label %for.body119

for.cond114:                                      ; preds = %for.body119
  %inc128 = add nuw nsw i32 %i112.0339, 1
  %exitcond346.not = icmp eq i32 %inc128, %div117323343
  br i1 %exitcond346.not, label %for.cond114.for.end162_crit_edge, label %for.cond114.for.body119_crit_edge

for.cond114.for.body119_crit_edge:                ; preds = %for.cond114
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body119

for.cond114.for.end162_crit_edge:                 ; preds = %for.cond114
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end162

for.body119:                                      ; preds = %for.cond114.for.body119_crit_edge, %for.body119.lr.ph
  %i112.0339 = phi i32 [ 0, %for.body119.lr.ph ], [ %inc128, %for.cond114.for.body119_crit_edge ]
  %arrayidx120 = getelementptr [8 x i32], ptr %status, i32 0, i32 %i112.0339
  %76 = ptrtoint ptr %arrayidx120 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx120, align 4
  %arrayidx121 = getelementptr [8 x i32], ptr %status_OK, i32 0, i32 %i112.0339
  %78 = ptrtoint ptr %arrayidx121 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %arrayidx121, align 4
  %and122 = and i32 %79, %77
  call void @__sanitizer_cov_trace_cmp4(i32 %and122, i32 %79)
  %cmp124.not = icmp eq i32 %and122, %79
  br i1 %cmp124.not, label %for.cond114, label %if.end133.critedge

if.end133.critedge:                               ; preds = %for.body119
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %80 = load volatile i32, ptr @jiffies, align 128
  %sub134 = sub i32 %add108, %80
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub134)
  %cmp135 = icmp slt i32 %sub134, 0
  br i1 %cmp135, label %if.then136, label %if.end159

if.then136:                                       ; preds = %if.end133.critedge
  %81 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %write, align 4
  call void @cfi_build_cmd(ptr nonnull sret(%union.map_word) align 4 %agg.tmp138, i32 noundef 112, ptr noundef %map, ptr noundef %1) #10
  %83 = ptrtoint ptr %agg.tmp138 to i32
  call void @__asan_load4_noabort(i32 %83)
  %.fca.0.load = load i32, ptr %agg.tmp138, align 4
  %.fca.0.insert = insertvalue [8 x i32] poison, i32 %.fca.0.load, 0
  %.fca.1.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp138, i32 0, i32 1
  %84 = ptrtoint ptr %.fca.1.gep to i32
  call void @__asan_load4_noabort(i32 %84)
  %.fca.1.load = load i32, ptr %.fca.1.gep, align 4
  %.fca.1.insert = insertvalue [8 x i32] %.fca.0.insert, i32 %.fca.1.load, 1
  %.fca.2.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp138, i32 0, i32 2
  %85 = ptrtoint ptr %.fca.2.gep to i32
  call void @__asan_load4_noabort(i32 %85)
  %.fca.2.load = load i32, ptr %.fca.2.gep, align 4
  %.fca.2.insert = insertvalue [8 x i32] %.fca.1.insert, i32 %.fca.2.load, 2
  %.fca.3.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp138, i32 0, i32 3
  %86 = ptrtoint ptr %.fca.3.gep to i32
  call void @__asan_load4_noabort(i32 %86)
  %.fca.3.load = load i32, ptr %.fca.3.gep, align 4
  %.fca.3.insert = insertvalue [8 x i32] %.fca.2.insert, i32 %.fca.3.load, 3
  %.fca.4.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp138, i32 0, i32 4
  %87 = ptrtoint ptr %.fca.4.gep to i32
  call void @__asan_load4_noabort(i32 %87)
  %.fca.4.load = load i32, ptr %.fca.4.gep, align 4
  %.fca.4.insert = insertvalue [8 x i32] %.fca.3.insert, i32 %.fca.4.load, 4
  %.fca.5.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp138, i32 0, i32 5
  %88 = ptrtoint ptr %.fca.5.gep to i32
  call void @__asan_load4_noabort(i32 %88)
  %.fca.5.load = load i32, ptr %.fca.5.gep, align 4
  %.fca.5.insert = insertvalue [8 x i32] %.fca.4.insert, i32 %.fca.5.load, 5
  %.fca.6.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp138, i32 0, i32 6
  %89 = ptrtoint ptr %.fca.6.gep to i32
  call void @__asan_load4_noabort(i32 %89)
  %.fca.6.load = load i32, ptr %.fca.6.gep, align 4
  %.fca.6.insert = insertvalue [8 x i32] %.fca.5.insert, i32 %.fca.6.load, 6
  %.fca.7.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp138, i32 0, i32 7
  %90 = ptrtoint ptr %.fca.7.gep to i32
  call void @__asan_load4_noabort(i32 %90)
  %.fca.7.load = load i32, ptr %.fca.7.gep, align 4
  %.fca.7.insert = insertvalue [8 x i32] %.fca.6.insert, i32 %.fca.7.load, 7
  call void %82(ptr noundef %map, [8 x i32] %.fca.7.insert, i32 noundef %add2) #10
  %91 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 1, ptr %state, align 4
  %92 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %status, align 4
  %94 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %read, align 4
  call void %95(ptr nonnull sret(%union.map_word) align 4 %tmp147, ptr noundef %map, i32 noundef %add2) #10
  %96 = ptrtoint ptr %tmp147 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %tmp147, align 4
  %call149 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, i32 noundef %93, i32 noundef %97) #13
  %98 = ptrtoint ptr %set_vpp to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %set_vpp, align 4
  %tobool152.not = icmp eq ptr %99, null
  br i1 %tobool152.not, label %if.then136.do.end157_crit_edge, label %if.then153

if.then136.do.end157_crit_edge:                   ; preds = %if.then136
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end157

if.then153:                                       ; preds = %if.then136
  call void @__sanitizer_cov_trace_pc() #12
  call void %99(ptr noundef %map, i32 noundef 0) #10
  br label %do.end157

do.end157:                                        ; preds = %if.then153, %if.then136.do.end157_crit_edge
  call void @mutex_unlock(ptr noundef %mutex) #10
  br label %cleanup

if.end159:                                        ; preds = %if.end133.critedge
  call void @mutex_unlock(ptr noundef %mutex) #10
  call void @cfi_udelay(i32 noundef 1) #10
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tmp110) #10
  %100 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %read, align 4
  call void %101(ptr nonnull sret(%union.map_word) align 4 %tmp110, ptr noundef %map, i32 noundef %add2) #10
  %102 = call ptr @memcpy(ptr %status, ptr %tmp110, i32 32)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tmp110) #10
  %103 = ptrtoint ptr %bankwidth to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %bankwidth, align 4
  %add116 = add i32 %104, 3
  %cmp118338.not = icmp ult i32 %add116, 4
  br i1 %cmp118338.not, label %if.end159.for.end162_crit_edge, label %if.end159.for.body119.lr.ph_crit_edge

if.end159.for.body119.lr.ph_crit_edge:            ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body119.lr.ph

if.end159.for.end162_crit_edge:                   ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end162

for.end162:                                       ; preds = %if.end159.for.end162_crit_edge, %for.cond114.for.end162_crit_edge, %do.end98.for.end162_crit_edge
  %105 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 1, ptr %state, align 4
  %106 = ptrtoint ptr %set_vpp to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %set_vpp, align 4
  %tobool166.not = icmp eq ptr %107, null
  br i1 %tobool166.not, label %for.end162.do.end171_crit_edge, label %if.then167

for.end162.do.end171_crit_edge:                   ; preds = %for.end162
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end171

if.then167:                                       ; preds = %for.end162
  call void @__sanitizer_cov_trace_pc() #12
  call void %107(ptr noundef %map, i32 noundef 0) #10
  br label %do.end171

do.end171:                                        ; preds = %if.then167, %for.end162.do.end171_crit_edge
  call void @__wake_up(ptr noundef %wq, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  call void @mutex_unlock(ptr noundef %mutex) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end171, %do.end157, %if.then15
  %retval.0 = phi i32 [ 0, %do.end171 ], [ -5, %do.end157 ], [ -5, %if.then15 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %status_OK) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %status) #10
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @do_unlock_oneblock(ptr noundef %map, ptr noundef %chip, i32 noundef %adr) #7 align 64 {
entry:
  %status = alloca %union.map_word, align 4
  %status_OK = alloca %union.map_word, align 4
  %wait = alloca %struct.wait_queue_entry, align 4
  %agg.tmp = alloca %union.map_word, align 4
  %agg.tmp100 = alloca %union.map_word, align 4
  %agg.tmp103 = alloca %union.map_word, align 4
  %tmp110 = alloca %union.map_word, align 4
  %agg.tmp138 = alloca %union.map_word, align 4
  %tmp147 = alloca %union.map_word, align 4
  call void @__sanitizer_cov_trace_pc() #12
  %fldrv_priv = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 17
  %0 = ptrtoint ptr %fldrv_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fldrv_priv, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %status) #10
  %2 = call ptr @memset(ptr %status, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %status_OK) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %3 = load volatile i32, ptr @jiffies, align 128
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #10
  %4 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %5 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %6 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %7 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %8 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %wait, align 4
  %9 = tail call i32 @llvm.read_register.i32(metadata !112) #10
  %and.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %task, align 8
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %4, align 4
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @default_wake_function, ptr %5, align 4
  %15 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %6, align 4
  %16 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %7, align 4
  %17 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %chip, align 4
  %add2 = add i32 %18, %adr
  call void @cfi_build_cmd(ptr nonnull sret(%union.map_word) align 4 %status_OK, i32 noundef 128, ptr noundef %map, ptr noundef %1) #10
  %mutex = getelementptr inbounds %struct.flchip, ptr %chip, i32 0, i32 7
  %state = getelementptr inbounds %struct.flchip, ptr %chip, i32 0, i32 2
  %write = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 9
  %.fca.1.gep239 = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 1
  %.fca.2.gep242 = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 2
  %.fca.3.gep245 = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 3
  %.fca.4.gep248 = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 4
  %.fca.5.gep251 = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 5
  %.fca.6.gep254 = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 6
  %.fca.7.gep257 = getelementptr inbounds [8 x i32], ptr %agg.tmp, i32 0, i32 7
  %read = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 7
  %bankwidth = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 6
  %wq = getelementptr inbounds %struct.flchip, ptr %chip, i32 0, i32 8
  br label %retry.outer

retry.outer:                                      ; preds = %__here, %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %timeo.0.ph.in = load volatile i32, ptr @jiffies, align 128
  %timeo.0.ph = add i32 %timeo.0.ph.in, 100
  br label %retry

retry:                                            ; preds = %if.end19, %retry.outer
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %19 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %state, align 4
  %21 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.62)
  switch i32 %20, label %__here [
    i32 2, label %retry.sw.bb_crit_edge
    i32 3, label %retry.sw.bb_crit_edge353
    i32 0, label %retry.sw.bb_crit_edge354
    i32 1, label %retry.sw.bb5_crit_edge
  ]

retry.sw.bb5_crit_edge:                           ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb5

retry.sw.bb_crit_edge354:                         ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

retry.sw.bb_crit_edge353:                         ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

retry.sw.bb_crit_edge:                            ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

sw.bb:                                            ; preds = %retry.sw.bb_crit_edge, %retry.sw.bb_crit_edge353, %retry.sw.bb_crit_edge354
  %22 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %write, align 4
  call void @cfi_build_cmd(ptr nonnull sret(%union.map_word) align 4 %agg.tmp, i32 noundef 112, ptr noundef %map, ptr noundef %1) #10
  %24 = ptrtoint ptr %agg.tmp to i32
  call void @__asan_load4_noabort(i32 %24)
  %.fca.0.load237 = load i32, ptr %agg.tmp, align 4
  %.fca.0.insert238 = insertvalue [8 x i32] poison, i32 %.fca.0.load237, 0
  %25 = ptrtoint ptr %.fca.1.gep239 to i32
  call void @__asan_load4_noabort(i32 %25)
  %.fca.1.load240 = load i32, ptr %.fca.1.gep239, align 4
  %.fca.1.insert241 = insertvalue [8 x i32] %.fca.0.insert238, i32 %.fca.1.load240, 1
  %26 = ptrtoint ptr %.fca.2.gep242 to i32
  call void @__asan_load4_noabort(i32 %26)
  %.fca.2.load243 = load i32, ptr %.fca.2.gep242, align 4
  %.fca.2.insert244 = insertvalue [8 x i32] %.fca.1.insert241, i32 %.fca.2.load243, 2
  %27 = ptrtoint ptr %.fca.3.gep245 to i32
  call void @__asan_load4_noabort(i32 %27)
  %.fca.3.load246 = load i32, ptr %.fca.3.gep245, align 4
  %.fca.3.insert247 = insertvalue [8 x i32] %.fca.2.insert244, i32 %.fca.3.load246, 3
  %28 = ptrtoint ptr %.fca.4.gep248 to i32
  call void @__asan_load4_noabort(i32 %28)
  %.fca.4.load249 = load i32, ptr %.fca.4.gep248, align 4
  %.fca.4.insert250 = insertvalue [8 x i32] %.fca.3.insert247, i32 %.fca.4.load249, 4
  %29 = ptrtoint ptr %.fca.5.gep251 to i32
  call void @__asan_load4_noabort(i32 %29)
  %.fca.5.load252 = load i32, ptr %.fca.5.gep251, align 4
  %.fca.5.insert253 = insertvalue [8 x i32] %.fca.4.insert250, i32 %.fca.5.load252, 5
  %30 = ptrtoint ptr %.fca.6.gep254 to i32
  call void @__asan_load4_noabort(i32 %30)
  %.fca.6.load255 = load i32, ptr %.fca.6.gep254, align 4
  %.fca.6.insert256 = insertvalue [8 x i32] %.fca.5.insert253, i32 %.fca.6.load255, 6
  %31 = ptrtoint ptr %.fca.7.gep257 to i32
  call void @__asan_load4_noabort(i32 %31)
  %.fca.7.load258 = load i32, ptr %.fca.7.gep257, align 4
  %.fca.7.insert259 = insertvalue [8 x i32] %.fca.6.insert256, i32 %.fca.7.load258, 7
  call void %23(ptr noundef %map, [8 x i32] %.fca.7.insert259, i32 noundef %add2) #10
  %32 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1, ptr %state, align 4
  br label %sw.bb5

sw.bb5:                                           ; preds = %sw.bb, %retry.sw.bb5_crit_edge
  %33 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %read, align 4
  call void %34(ptr nonnull sret(%union.map_word) align 4 %status, ptr noundef %map, i32 noundef %add2) #10
  %35 = ptrtoint ptr %bankwidth to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %bankwidth, align 4
  %add7 = add i32 %36, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %add7)
  %cmp330.not = icmp ult i32 %add7, 4
  br i1 %cmp330.not, label %sw.bb5.do.body92_crit_edge, label %for.body.preheader

sw.bb5.do.body92_crit_edge:                       ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body92

for.body.preheader:                               ; preds = %sw.bb5
  %div322 = lshr i32 %add7, 2
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.0331, 1
  %exitcond.not = icmp eq i32 %inc, %div322
  br i1 %exitcond.not, label %for.cond.do.body92_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.cond.do.body92_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body92

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.preheader
  %i.0331 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr [8 x i32], ptr %status, i32 0, i32 %i.0331
  %37 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx, align 4
  %arrayidx8 = getelementptr [8 x i32], ptr %status_OK, i32 0, i32 %i.0331
  %39 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx8, align 4
  %and = and i32 %40, %38
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %40)
  %cmp10.not = icmp eq i32 %and, %40
  br i1 %cmp10.not, label %for.cond, label %if.end13.critedge

if.end13.critedge:                                ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %41 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %timeo.0.ph, %41
  %cmp14 = icmp slt i32 %sub, 0
  call void @mutex_unlock(ptr noundef %mutex) #10
  br i1 %cmp14, label %if.then15, label %if.end19

if.then15:                                        ; preds = %if.end13.critedge
  call void @__sanitizer_cov_trace_pc() #12
  %call18 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50) #13
  br label %cleanup

if.end19:                                         ; preds = %if.end13.critedge
  call void @__sanitizer_cov_trace_pc() #12
  call void @cfi_udelay(i32 noundef 1) #10
  br label %retry

__here:                                           ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #12
  %42 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %43, i32 0, i32 212
  %44 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 ptrtoint (ptr blockaddress(@do_unlock_oneblock, %__here) to i32), ptr %task_state_change, align 4
  %45 = load ptr, ptr %task, align 8
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile i32 2, ptr %45, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !135
  call void @add_wait_queue(ptr noundef %wq, ptr noundef nonnull %wait) #10
  call void @mutex_unlock(ptr noundef %mutex) #10
  call void @schedule() #10
  call void @remove_wait_queue(ptr noundef %wq, ptr noundef nonnull %wait) #10
  br label %retry.outer

do.body92:                                        ; preds = %for.cond.do.body92_crit_edge, %sw.bb5.do.body92_crit_edge
  %set_vpp = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 12
  %47 = ptrtoint ptr %set_vpp to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %set_vpp, align 4
  %tobool93.not = icmp eq ptr %48, null
  br i1 %tobool93.not, label %do.body92.do.end98_crit_edge, label %if.then94

do.body92.do.end98_crit_edge:                     ; preds = %do.body92
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end98

if.then94:                                        ; preds = %do.body92
  call void @__sanitizer_cov_trace_pc() #12
  call void %48(ptr noundef %map, i32 noundef 1) #10
  br label %do.end98

do.end98:                                         ; preds = %if.then94, %do.body92.do.end98_crit_edge
  %49 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %write, align 4
  call void @cfi_build_cmd(ptr nonnull sret(%union.map_word) align 4 %agg.tmp100, i32 noundef 96, ptr noundef %map, ptr noundef %1) #10
  %51 = ptrtoint ptr %agg.tmp100 to i32
  call void @__asan_load4_noabort(i32 %51)
  %.fca.0.load207 = load i32, ptr %agg.tmp100, align 4
  %.fca.0.insert208 = insertvalue [8 x i32] poison, i32 %.fca.0.load207, 0
  %.fca.1.gep209 = getelementptr inbounds [8 x i32], ptr %agg.tmp100, i32 0, i32 1
  %52 = ptrtoint ptr %.fca.1.gep209 to i32
  call void @__asan_load4_noabort(i32 %52)
  %.fca.1.load210 = load i32, ptr %.fca.1.gep209, align 4
  %.fca.1.insert211 = insertvalue [8 x i32] %.fca.0.insert208, i32 %.fca.1.load210, 1
  %.fca.2.gep212 = getelementptr inbounds [8 x i32], ptr %agg.tmp100, i32 0, i32 2
  %53 = ptrtoint ptr %.fca.2.gep212 to i32
  call void @__asan_load4_noabort(i32 %53)
  %.fca.2.load213 = load i32, ptr %.fca.2.gep212, align 4
  %.fca.2.insert214 = insertvalue [8 x i32] %.fca.1.insert211, i32 %.fca.2.load213, 2
  %.fca.3.gep215 = getelementptr inbounds [8 x i32], ptr %agg.tmp100, i32 0, i32 3
  %54 = ptrtoint ptr %.fca.3.gep215 to i32
  call void @__asan_load4_noabort(i32 %54)
  %.fca.3.load216 = load i32, ptr %.fca.3.gep215, align 4
  %.fca.3.insert217 = insertvalue [8 x i32] %.fca.2.insert214, i32 %.fca.3.load216, 3
  %.fca.4.gep218 = getelementptr inbounds [8 x i32], ptr %agg.tmp100, i32 0, i32 4
  %55 = ptrtoint ptr %.fca.4.gep218 to i32
  call void @__asan_load4_noabort(i32 %55)
  %.fca.4.load219 = load i32, ptr %.fca.4.gep218, align 4
  %.fca.4.insert220 = insertvalue [8 x i32] %.fca.3.insert217, i32 %.fca.4.load219, 4
  %.fca.5.gep221 = getelementptr inbounds [8 x i32], ptr %agg.tmp100, i32 0, i32 5
  %56 = ptrtoint ptr %.fca.5.gep221 to i32
  call void @__asan_load4_noabort(i32 %56)
  %.fca.5.load222 = load i32, ptr %.fca.5.gep221, align 4
  %.fca.5.insert223 = insertvalue [8 x i32] %.fca.4.insert220, i32 %.fca.5.load222, 5
  %.fca.6.gep224 = getelementptr inbounds [8 x i32], ptr %agg.tmp100, i32 0, i32 6
  %57 = ptrtoint ptr %.fca.6.gep224 to i32
  call void @__asan_load4_noabort(i32 %57)
  %.fca.6.load225 = load i32, ptr %.fca.6.gep224, align 4
  %.fca.6.insert226 = insertvalue [8 x i32] %.fca.5.insert223, i32 %.fca.6.load225, 6
  %.fca.7.gep227 = getelementptr inbounds [8 x i32], ptr %agg.tmp100, i32 0, i32 7
  %58 = ptrtoint ptr %.fca.7.gep227 to i32
  call void @__asan_load4_noabort(i32 %58)
  %.fca.7.load228 = load i32, ptr %.fca.7.gep227, align 4
  %.fca.7.insert229 = insertvalue [8 x i32] %.fca.6.insert226, i32 %.fca.7.load228, 7
  call void %50(ptr noundef %map, [8 x i32] %.fca.7.insert229, i32 noundef %add2) #10
  %59 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %write, align 4
  call void @cfi_build_cmd(ptr nonnull sret(%union.map_word) align 4 %agg.tmp103, i32 noundef 208, ptr noundef %map, ptr noundef %1) #10
  %61 = ptrtoint ptr %agg.tmp103 to i32
  call void @__asan_load4_noabort(i32 %61)
  %.fca.0.load183 = load i32, ptr %agg.tmp103, align 4
  %.fca.0.insert184 = insertvalue [8 x i32] poison, i32 %.fca.0.load183, 0
  %.fca.1.gep185 = getelementptr inbounds [8 x i32], ptr %agg.tmp103, i32 0, i32 1
  %62 = ptrtoint ptr %.fca.1.gep185 to i32
  call void @__asan_load4_noabort(i32 %62)
  %.fca.1.load186 = load i32, ptr %.fca.1.gep185, align 4
  %.fca.1.insert187 = insertvalue [8 x i32] %.fca.0.insert184, i32 %.fca.1.load186, 1
  %.fca.2.gep188 = getelementptr inbounds [8 x i32], ptr %agg.tmp103, i32 0, i32 2
  %63 = ptrtoint ptr %.fca.2.gep188 to i32
  call void @__asan_load4_noabort(i32 %63)
  %.fca.2.load189 = load i32, ptr %.fca.2.gep188, align 4
  %.fca.2.insert190 = insertvalue [8 x i32] %.fca.1.insert187, i32 %.fca.2.load189, 2
  %.fca.3.gep191 = getelementptr inbounds [8 x i32], ptr %agg.tmp103, i32 0, i32 3
  %64 = ptrtoint ptr %.fca.3.gep191 to i32
  call void @__asan_load4_noabort(i32 %64)
  %.fca.3.load192 = load i32, ptr %.fca.3.gep191, align 4
  %.fca.3.insert193 = insertvalue [8 x i32] %.fca.2.insert190, i32 %.fca.3.load192, 3
  %.fca.4.gep194 = getelementptr inbounds [8 x i32], ptr %agg.tmp103, i32 0, i32 4
  %65 = ptrtoint ptr %.fca.4.gep194 to i32
  call void @__asan_load4_noabort(i32 %65)
  %.fca.4.load195 = load i32, ptr %.fca.4.gep194, align 4
  %.fca.4.insert196 = insertvalue [8 x i32] %.fca.3.insert193, i32 %.fca.4.load195, 4
  %.fca.5.gep197 = getelementptr inbounds [8 x i32], ptr %agg.tmp103, i32 0, i32 5
  %66 = ptrtoint ptr %.fca.5.gep197 to i32
  call void @__asan_load4_noabort(i32 %66)
  %.fca.5.load198 = load i32, ptr %.fca.5.gep197, align 4
  %.fca.5.insert199 = insertvalue [8 x i32] %.fca.4.insert196, i32 %.fca.5.load198, 5
  %.fca.6.gep200 = getelementptr inbounds [8 x i32], ptr %agg.tmp103, i32 0, i32 6
  %67 = ptrtoint ptr %.fca.6.gep200 to i32
  call void @__asan_load4_noabort(i32 %67)
  %.fca.6.load201 = load i32, ptr %.fca.6.gep200, align 4
  %.fca.6.insert202 = insertvalue [8 x i32] %.fca.5.insert199, i32 %.fca.6.load201, 6
  %.fca.7.gep203 = getelementptr inbounds [8 x i32], ptr %agg.tmp103, i32 0, i32 7
  %68 = ptrtoint ptr %.fca.7.gep203 to i32
  call void @__asan_load4_noabort(i32 %68)
  %.fca.7.load204 = load i32, ptr %.fca.7.gep203, align 4
  %.fca.7.insert205 = insertvalue [8 x i32] %.fca.6.insert202, i32 %.fca.7.load204, 7
  call void %60(ptr noundef %map, [8 x i32] %.fca.7.insert205, i32 noundef %add2) #10
  %69 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 16, ptr %state, align 4
  call void @mutex_unlock(ptr noundef %mutex) #10
  call void @msleep(i32 noundef 1000) #10
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %70 = load volatile i32, ptr @jiffies, align 128
  %add108 = add i32 %70, 200
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tmp110) #10
  %71 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %read, align 4
  call void %72(ptr nonnull sret(%union.map_word) align 4 %tmp110, ptr noundef %map, i32 noundef %add2) #10
  %73 = call ptr @memcpy(ptr %status, ptr %tmp110, i32 32)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tmp110) #10
  %74 = ptrtoint ptr %bankwidth to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %bankwidth, align 4
  %add116340 = add i32 %75, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %add116340)
  %cmp118338342.not = icmp ult i32 %add116340, 4
  br i1 %cmp118338342.not, label %do.end98.for.end162_crit_edge, label %do.end98.for.body119.lr.ph_crit_edge

do.end98.for.body119.lr.ph_crit_edge:             ; preds = %do.end98
  br label %for.body119.lr.ph

do.end98.for.end162_crit_edge:                    ; preds = %do.end98
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end162

for.body119.lr.ph:                                ; preds = %if.end159.for.body119.lr.ph_crit_edge, %do.end98.for.body119.lr.ph_crit_edge
  %div117323343.in = phi i32 [ %add116, %if.end159.for.body119.lr.ph_crit_edge ], [ %add116340, %do.end98.for.body119.lr.ph_crit_edge ]
  %div117323343 = lshr i32 %div117323343.in, 2
  br label %for.body119

for.cond114:                                      ; preds = %for.body119
  %inc128 = add nuw nsw i32 %i112.0339, 1
  %exitcond346.not = icmp eq i32 %inc128, %div117323343
  br i1 %exitcond346.not, label %for.cond114.for.end162_crit_edge, label %for.cond114.for.body119_crit_edge

for.cond114.for.body119_crit_edge:                ; preds = %for.cond114
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body119

for.cond114.for.end162_crit_edge:                 ; preds = %for.cond114
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end162

for.body119:                                      ; preds = %for.cond114.for.body119_crit_edge, %for.body119.lr.ph
  %i112.0339 = phi i32 [ 0, %for.body119.lr.ph ], [ %inc128, %for.cond114.for.body119_crit_edge ]
  %arrayidx120 = getelementptr [8 x i32], ptr %status, i32 0, i32 %i112.0339
  %76 = ptrtoint ptr %arrayidx120 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx120, align 4
  %arrayidx121 = getelementptr [8 x i32], ptr %status_OK, i32 0, i32 %i112.0339
  %78 = ptrtoint ptr %arrayidx121 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %arrayidx121, align 4
  %and122 = and i32 %79, %77
  call void @__sanitizer_cov_trace_cmp4(i32 %and122, i32 %79)
  %cmp124.not = icmp eq i32 %and122, %79
  br i1 %cmp124.not, label %for.cond114, label %if.end133.critedge

if.end133.critedge:                               ; preds = %for.body119
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %80 = load volatile i32, ptr @jiffies, align 128
  %sub134 = sub i32 %add108, %80
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub134)
  %cmp135 = icmp slt i32 %sub134, 0
  br i1 %cmp135, label %if.then136, label %if.end159

if.then136:                                       ; preds = %if.end133.critedge
  %81 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %write, align 4
  call void @cfi_build_cmd(ptr nonnull sret(%union.map_word) align 4 %agg.tmp138, i32 noundef 112, ptr noundef %map, ptr noundef %1) #10
  %83 = ptrtoint ptr %agg.tmp138 to i32
  call void @__asan_load4_noabort(i32 %83)
  %.fca.0.load = load i32, ptr %agg.tmp138, align 4
  %.fca.0.insert = insertvalue [8 x i32] poison, i32 %.fca.0.load, 0
  %.fca.1.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp138, i32 0, i32 1
  %84 = ptrtoint ptr %.fca.1.gep to i32
  call void @__asan_load4_noabort(i32 %84)
  %.fca.1.load = load i32, ptr %.fca.1.gep, align 4
  %.fca.1.insert = insertvalue [8 x i32] %.fca.0.insert, i32 %.fca.1.load, 1
  %.fca.2.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp138, i32 0, i32 2
  %85 = ptrtoint ptr %.fca.2.gep to i32
  call void @__asan_load4_noabort(i32 %85)
  %.fca.2.load = load i32, ptr %.fca.2.gep, align 4
  %.fca.2.insert = insertvalue [8 x i32] %.fca.1.insert, i32 %.fca.2.load, 2
  %.fca.3.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp138, i32 0, i32 3
  %86 = ptrtoint ptr %.fca.3.gep to i32
  call void @__asan_load4_noabort(i32 %86)
  %.fca.3.load = load i32, ptr %.fca.3.gep, align 4
  %.fca.3.insert = insertvalue [8 x i32] %.fca.2.insert, i32 %.fca.3.load, 3
  %.fca.4.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp138, i32 0, i32 4
  %87 = ptrtoint ptr %.fca.4.gep to i32
  call void @__asan_load4_noabort(i32 %87)
  %.fca.4.load = load i32, ptr %.fca.4.gep, align 4
  %.fca.4.insert = insertvalue [8 x i32] %.fca.3.insert, i32 %.fca.4.load, 4
  %.fca.5.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp138, i32 0, i32 5
  %88 = ptrtoint ptr %.fca.5.gep to i32
  call void @__asan_load4_noabort(i32 %88)
  %.fca.5.load = load i32, ptr %.fca.5.gep, align 4
  %.fca.5.insert = insertvalue [8 x i32] %.fca.4.insert, i32 %.fca.5.load, 5
  %.fca.6.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp138, i32 0, i32 6
  %89 = ptrtoint ptr %.fca.6.gep to i32
  call void @__asan_load4_noabort(i32 %89)
  %.fca.6.load = load i32, ptr %.fca.6.gep, align 4
  %.fca.6.insert = insertvalue [8 x i32] %.fca.5.insert, i32 %.fca.6.load, 6
  %.fca.7.gep = getelementptr inbounds [8 x i32], ptr %agg.tmp138, i32 0, i32 7
  %90 = ptrtoint ptr %.fca.7.gep to i32
  call void @__asan_load4_noabort(i32 %90)
  %.fca.7.load = load i32, ptr %.fca.7.gep, align 4
  %.fca.7.insert = insertvalue [8 x i32] %.fca.6.insert, i32 %.fca.7.load, 7
  call void %82(ptr noundef %map, [8 x i32] %.fca.7.insert, i32 noundef %add2) #10
  %91 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 1, ptr %state, align 4
  %92 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %status, align 4
  %94 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %read, align 4
  call void %95(ptr nonnull sret(%union.map_word) align 4 %tmp147, ptr noundef %map, i32 noundef %add2) #10
  %96 = ptrtoint ptr %tmp147 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %tmp147, align 4
  %call149 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, i32 noundef %93, i32 noundef %97) #13
  %98 = ptrtoint ptr %set_vpp to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %set_vpp, align 4
  %tobool152.not = icmp eq ptr %99, null
  br i1 %tobool152.not, label %if.then136.do.end157_crit_edge, label %if.then153

if.then136.do.end157_crit_edge:                   ; preds = %if.then136
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end157

if.then153:                                       ; preds = %if.then136
  call void @__sanitizer_cov_trace_pc() #12
  call void %99(ptr noundef %map, i32 noundef 0) #10
  br label %do.end157

do.end157:                                        ; preds = %if.then153, %if.then136.do.end157_crit_edge
  call void @mutex_unlock(ptr noundef %mutex) #10
  br label %cleanup

if.end159:                                        ; preds = %if.end133.critedge
  call void @mutex_unlock(ptr noundef %mutex) #10
  call void @cfi_udelay(i32 noundef 1) #10
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tmp110) #10
  %100 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %read, align 4
  call void %101(ptr nonnull sret(%union.map_word) align 4 %tmp110, ptr noundef %map, i32 noundef %add2) #10
  %102 = call ptr @memcpy(ptr %status, ptr %tmp110, i32 32)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tmp110) #10
  %103 = ptrtoint ptr %bankwidth to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %bankwidth, align 4
  %add116 = add i32 %104, 3
  %cmp118338.not = icmp ult i32 %add116, 4
  br i1 %cmp118338.not, label %if.end159.for.end162_crit_edge, label %if.end159.for.body119.lr.ph_crit_edge

if.end159.for.body119.lr.ph_crit_edge:            ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body119.lr.ph

if.end159.for.end162_crit_edge:                   ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end162

for.end162:                                       ; preds = %if.end159.for.end162_crit_edge, %for.cond114.for.end162_crit_edge, %do.end98.for.end162_crit_edge
  %105 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 1, ptr %state, align 4
  %106 = ptrtoint ptr %set_vpp to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %set_vpp, align 4
  %tobool166.not = icmp eq ptr %107, null
  br i1 %tobool166.not, label %for.end162.do.end171_crit_edge, label %if.then167

for.end162.do.end171_crit_edge:                   ; preds = %for.end162
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end171

if.then167:                                       ; preds = %for.end162
  call void @__sanitizer_cov_trace_pc() #12
  call void %107(ptr noundef %map, i32 noundef 0) #10
  br label %do.end171

do.end171:                                        ; preds = %if.then167, %for.end162.do.end171_crit_edge
  call void @__wake_up(ptr noundef %wq, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  call void @mutex_unlock(ptr noundef %mutex) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end171, %do.end157, %if.then15
  %retval.0 = phi i32 [ 0, %do.end171 ], [ -5, %do.end157 ], [ -5, %if.then15 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %status_OK) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %status) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cfi_staa_destroy(ptr nocapture noundef readonly %mtd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 54
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %fldrv_priv = getelementptr inbounds %struct.map_info, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %fldrv_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fldrv_priv, align 4
  %cmdset_priv = getelementptr inbounds %struct.cfi_private, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %cmdset_priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cmdset_priv, align 4
  tail call void @kfree(ptr noundef %5) #10
  tail call void @kfree(ptr noundef %3) #10
  ret void
}

; Function Attrs: inaccessiblememonly nocallback nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 50)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 50)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind readonly }
attributes #9 = { inaccessiblememonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !13, !15, !16, !18, !19, !20, !21, !23, !24, !25, !27, !28, !29, !30, !32, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !61, !62, !63, !65, !66, !67, !69, !71, !72, !73, !74, !76, !78, !79, !80, !82, !84, !85, !86, !88, !90, !91, !92, !93, !95, !97, !98, !99, !101, !102, !103, !104, !106, !108, !109, !110}
!llvm.named.register.sp = !{!112}
!llvm.module.flags = !{!113, !114, !115, !116, !117, !118, !119, !120}
!llvm.ident = !{!121}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/mtd/chips/cfi_cmdset_0020.c", i32 127, i32 74}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/mtd/chips/cfi_cmdset_0020.c", i32 133, i32 4}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @cfi_cmdset_0020._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @cfi_cmdset_0020._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @cfi_cmdset_0020.__key, !9, !"__key", i1 false, i1 false}
!9 = !{!"../drivers/mtd/chips/cfi_cmdset_0020.c", i32 159, i32 3}
!10 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @__ksymtab_cfi_cmdset_0020, !12, !"__ksymtab_cfi_cmdset_0020", i1 false, i1 false}
!12 = !{!"../drivers/mtd/chips/cfi_cmdset_0020.c", i32 164, i32 1}
!13 = !{ptr @__UNIQUE_ID_file197, !14, !"__UNIQUE_ID_file197", i1 false, i1 false}
!14 = !{!"../drivers/mtd/chips/cfi_cmdset_0020.c", i32 1401, i32 1}
!15 = !{ptr @__UNIQUE_ID_license198, !14, !"__UNIQUE_ID_license198", i1 false, i1 false}
!16 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/mtd/chips/cfi_cmdset_0020.c", i32 214, i32 3}
!18 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @cfi_staa_setup._entry, !17, !"_entry", i1 false, i1 false}
!20 = !{ptr @cfi_staa_setup._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/mtd/chips/cfi_cmdset_0020.c", i32 222, i32 3}
!23 = !{ptr @cfi_staa_setup._entry.7, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @cfi_staa_setup._entry_ptr.9, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/mtd/chips/cfi_cmdset_0020.c", i32 766, i32 4}
!27 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @do_erase_oneblock._entry, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @do_erase_oneblock._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!30 = distinct !{null, !31, !"__already_done", i1 false, i1 false}
!31 = !{!"../drivers/mtd/chips/cfi_cmdset_0020.c", i32 778, i32 3}
!32 = distinct !{null, !33, !"__already_done", i1 false, i1 false}
!33 = !{!"../drivers/mtd/chips/cfi_cmdset_0020.c", i32 807, i32 4}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/mtd/chips/cfi_cmdset_0020.c", i32 825, i32 4}
!36 = !{ptr @do_erase_oneblock._entry.13, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @do_erase_oneblock._entry_ptr.15, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/mtd/chips/cfi_cmdset_0020.c", i32 855, i32 4}
!40 = !{ptr @do_erase_oneblock._entry.16, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @do_erase_oneblock._entry_ptr.18, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/mtd/chips/cfi_cmdset_0020.c", i32 863, i32 4}
!44 = !{ptr @do_erase_oneblock._entry.19, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @do_erase_oneblock._entry_ptr.21, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/mtd/chips/cfi_cmdset_0020.c", i32 870, i32 4}
!48 = !{ptr @do_erase_oneblock._entry.22, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @do_erase_oneblock._entry_ptr.24, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.26, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/mtd/chips/cfi_cmdset_0020.c", i32 874, i32 5}
!52 = !{ptr @do_erase_oneblock._entry.25, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @do_erase_oneblock._entry_ptr.27, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.29, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/mtd/chips/cfi_cmdset_0020.c", i32 880, i32 4}
!56 = !{ptr @do_erase_oneblock._entry.28, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @do_erase_oneblock._entry_ptr.30, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.31, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/mtd/chips/cfi_cmdset_0020.c", i32 300, i32 5}
!60 = !{ptr @.str.32, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @do_read_onechip._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @do_read_onechip._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.34, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/mtd/chips/cfi_cmdset_0020.c", i32 339, i32 4}
!65 = !{ptr @do_read_onechip._entry.33, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @do_read_onechip._entry_ptr.35, !64, !"_entry_ptr", i1 false, i1 false}
!67 = distinct !{null, !68, !"__already_done", i1 false, i1 false}
!68 = !{!"../drivers/mtd/chips/cfi_cmdset_0020.c", i32 352, i32 3}
!69 = !{ptr @.str.36, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/mtd/chips/cfi_cmdset_0020.c", i32 472, i32 25}
!71 = !{ptr @.str.37, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @do_write_buffer._entry, !70, !"_entry", i1 false, i1 false}
!73 = !{ptr @do_write_buffer._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!74 = distinct !{null, !75, !"__already_done", i1 false, i1 false}
!75 = !{!"../drivers/mtd/chips/cfi_cmdset_0020.c", i32 485, i32 3}
!76 = !{ptr @.str.39, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/mtd/chips/cfi_cmdset_0020.c", i32 514, i32 4}
!78 = !{ptr @do_write_buffer._entry.38, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @do_write_buffer._entry_ptr.40, !77, !"_entry_ptr", i1 false, i1 false}
!80 = distinct !{null, !81, !"__already_done", i1 false, i1 false}
!81 = !{!"../drivers/mtd/chips/cfi_cmdset_0020.c", i32 542, i32 4}
!82 = !{ptr @.str.43, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/mtd/chips/cfi_cmdset_0020.c", i32 565, i32 4}
!84 = !{ptr @do_write_buffer._entry.42, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @do_write_buffer._entry_ptr.44, !83, !"_entry_ptr", i1 false, i1 false}
!86 = distinct !{null, !87, !"__already_done", i1 false, i1 false}
!87 = !{!"../drivers/mtd/chips/cfi_cmdset_0020.c", i32 1005, i32 4}
!88 = !{ptr @.str.45, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/mtd/chips/cfi_cmdset_0020.c", i32 1063, i32 4}
!90 = !{ptr @.str.46, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @do_lock_oneblock._entry, !89, !"_entry", i1 false, i1 false}
!92 = !{ptr @do_lock_oneblock._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!93 = distinct !{null, !94, !"__already_done", i1 false, i1 false}
!94 = !{!"../drivers/mtd/chips/cfi_cmdset_0020.c", i32 1075, i32 3}
!95 = !{ptr @.str.48, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/mtd/chips/cfi_cmdset_0020.c", i32 1107, i32 4}
!97 = !{ptr @do_lock_oneblock._entry.47, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @do_lock_oneblock._entry_ptr.49, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.50, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/mtd/chips/cfi_cmdset_0020.c", i32 1209, i32 4}
!101 = !{ptr @.str.51, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @do_unlock_oneblock._entry, !100, !"_entry", i1 false, i1 false}
!103 = !{ptr @do_unlock_oneblock._entry_ptr, !100, !"_entry_ptr", i1 false, i1 false}
!104 = distinct !{null, !105, !"__already_done", i1 false, i1 false}
!105 = !{!"../drivers/mtd/chips/cfi_cmdset_0020.c", i32 1221, i32 3}
!106 = !{ptr @.str.53, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/mtd/chips/cfi_cmdset_0020.c", i32 1253, i32 4}
!108 = !{ptr @do_unlock_oneblock._entry.52, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @do_unlock_oneblock._entry_ptr.54, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @cfi_staa_chipdrv, !111, !"cfi_staa_chipdrv", i1 false, i1 false}
!111 = !{!"../drivers/mtd/chips/cfi_cmdset_0020.c", i32 54, i32 31}
!112 = !{!"sp"}
!113 = !{i32 1, !"wchar_size", i32 2}
!114 = !{i32 1, !"min_enum_size", i32 4}
!115 = !{i32 8, !"branch-target-enforcement", i32 0}
!116 = !{i32 8, !"sign-return-address", i32 0}
!117 = !{i32 8, !"sign-return-address-all", i32 0}
!118 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!119 = !{i32 7, !"uwtable", i32 1}
!120 = !{i32 7, !"frame-pointer", i32 2}
!121 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!122 = !{!"branch_weights", i32 1, i32 2000}
!123 = !{!"auto-init"}
!124 = !{i64 2153338298}
!125 = !{i64 2153315448}
!126 = !{i64 2153320655}
!127 = !{i64 2153287040}
!128 = !{i64 2153295437}
!129 = !{!130}
!130 = distinct !{!130, !131, !"map_word_load: %agg.result"}
!131 = distinct !{!131, !"map_word_load"}
!132 = !{i64 2152793056, i64 2152793544, i64 2152793093, i64 2152793149, i64 2152793183, i64 2152793207, i64 2152793248, i64 2152793269, i64 2152793297, i64 2152793331}
!133 = !{i64 2153303043}
!134 = !{i64 2153346225}
!135 = !{i64 2153357329}
