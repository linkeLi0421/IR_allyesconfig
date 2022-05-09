; ModuleID = '/llk/IR_all_yes/drivers/mtd/spi-nor/core.c_pt.bc'
source_filename = "../drivers/mtd/spi-nor/core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+spi_nor_restore\22, \22a\22\09"
module asm "\09.weak\09__crc_spi_nor_restore\09\09\09\09"
module asm "\09.long\09__crc_spi_nor_restore\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_spi_nor_restore:\09\09\09\09\09"
module asm "\09.asciz \09\22spi_nor_restore\22\09\09\09\09\09"
module asm "__kstrtabns_spi_nor_restore:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+spi_nor_scan\22, \22a\22\09"
module asm "\09.weak\09__crc_spi_nor_scan\09\09\09\09"
module asm "\09.long\09__crc_spi_nor_scan\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_spi_nor_scan:\09\09\09\09\09"
module asm "\09.asciz \09\22spi_nor_scan\22\09\09\09\09\09"
module asm "__kstrtabns_spi_nor_scan:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.atomic_t = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.spi_mem_driver = type { %struct.spi_driver, ptr, ptr, ptr }
%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spi_nor_manufacturer = type { ptr, ptr, i32, ptr }
%struct.spi_device_id = type { [32 x i8], i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.anon.71 = type { i8, i8, i8, i16 }
%struct.spi_mem_op = type { %struct.anon.71, %struct.anon.72, %struct.anon.73, %struct.anon.74 }
%struct.anon.72 = type { i8, i8, i8, i64 }
%struct.anon.73 = type { i8, i8, i8 }
%struct.anon.74 = type { i8, i8, i32, i32, %union.anon.75 }
%union.anon.75 = type { ptr }
%struct.spi_nor = type { %struct.mtd_info, %struct.mutex, ptr, ptr, ptr, i32, ptr, ptr, i8, i8, i8, i8, i8, i32, i32, i32, i8, i32, i32, ptr, ptr, ptr, %struct.anon.76, ptr }
%struct.mtd_info = type { i8, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.notifier_block, %struct.mtd_ecc_stats, i32, ptr, ptr, %struct.device, i32, %struct.mtd_debug_info, ptr, ptr, ptr, ptr, %struct.list_head, %union.anon.70 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mtd_ecc_stats = type { i32, i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.mtd_debug_info = type { ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.70 = type { %struct.mtd_part, [160 x i8] }
%struct.mtd_part = type { %struct.list_head, i64, i64, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.anon.76 = type { ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.53, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.29 }
%struct.llist_node = type { ptr }
%union.anon.29 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.31 }
%union.anon.31 = type { %struct.anon.32 }
%struct.anon.32 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.53 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.spi_nor_controller_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spi_nor_flash_parameter = type { i64, i32, i32, i8, i8, %struct.spi_nor_hwcaps, [16 x %struct.spi_nor_read_command], [8 x %struct.spi_nor_pp_command], %struct.spi_nor_erase_map, %struct.spi_nor_otp, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spi_nor_hwcaps = type { i32 }
%struct.spi_nor_read_command = type { i8, i8, i8, i32 }
%struct.spi_nor_pp_command = type { i8, i32 }
%struct.spi_nor_erase_map = type { ptr, %struct.spi_nor_erase_region, [4 x %struct.spi_nor_erase_type], i8 }
%struct.spi_nor_erase_region = type { i64, i64 }
%struct.spi_nor_erase_type = type { i32, i32, i32, i8, i8 }
%struct.spi_nor_otp = type { ptr, ptr }
%struct.spi_nor_fixups = type { ptr, ptr, ptr, ptr }
%struct.flash_info = type { ptr, [6 x i8], i8, i32, i16, i16, i16, i8, i16, i8, i8, i8, %struct.spi_nor_otp_organization, ptr }
%struct.spi_nor_otp_organization = type { i32, i64, i64, i32 }
%struct.mtd_erase_region_info = type { i64, i32, i32, ptr }
%struct.erase_info = type { i64, i64, i64 }
%struct.spi_nor_erase_command = type { %struct.list_head, i32, i32, i8 }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_delay = type { i16, i8 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.spi_mem_dirmap_info = type { %struct.spi_mem_op, i64, i64 }
%struct.spi_mem = type { ptr, ptr, ptr }
%struct.flash_platform_data = type { ptr, ptr, i32, ptr }

@spi_nor_write_enable.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 84, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"spi_nor\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"spi_nor_write_enable\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/mtd/spi-nor/core.c\00", [37 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"error %d on Write Enable\0A\00", [38 x i8] zeroinitializer }, align 32
@spi_nor_write_disable.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.5, i8 0, i8 91, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"spi_nor_write_disable\00", [42 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"error %d on Write Disable\0A\00", [37 x i8] zeroinitializer }, align 32
@spi_nor_read_sr.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.6, ptr @.str.2, ptr @.str.7, i8 0, i8 102, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"spi_nor_read_sr\00", [16 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"error %d reading SR\0A\00", [43 x i8] zeroinitializer }, align 32
@spi_nor_read_cr.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.9, i8 0, i8 122, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"spi_nor_read_cr\00", [16 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"error %d reading CR\0A\00", [43 x i8] zeroinitializer }, align 32
@spi_nor_set_4byte_addr_mode.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.2, ptr @.str.11, i8 0, i8 -125, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"spi_nor_set_4byte_addr_mode\00", [36 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"error %d setting 4-byte mode\0A\00", [34 x i8] zeroinitializer }, align 32
@spi_nor_write_ear.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.2, ptr @.str.13, i8 0, i8 -107, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"spi_nor_write_ear\00", [46 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"error %d writing EAR\0A\00", [42 x i8] zeroinitializer }, align 32
@spi_nor_xread_sr.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.2, ptr @.str.15, i8 0, i8 -99, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"spi_nor_xread_sr\00", [47 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"error %d reading XRDSR\0A\00", [40 x i8] zeroinitializer }, align 32
@spi_nor_global_block_unlock.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.2, ptr @.str.17, i8 0, i8 -35, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"spi_nor_global_block_unlock\00", [36 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"error %d on Global Block Unlock\0A\00", [63 x i8] zeroinitializer }, align 32
@spi_nor_write_sr.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.2, ptr @.str.19, i8 0, i8 -25, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"spi_nor_write_sr\00", [47 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"error %d writing SR\0A\00", [43 x i8] zeroinitializer }, align 32
@spi_nor_write_16bit_cr_and_check.__UNIQUE_ID_ddebug252 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.2, ptr @.str.21, i8 1, i8 9, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"spi_nor_write_16bit_cr_and_check\00", [63 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"SR: Read back test failed\0A\00", [37 x i8] zeroinitializer }, align 32
@spi_nor_write_16bit_cr_and_check.__UNIQUE_ID_ddebug253 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.2, ptr @.str.22, i8 1, i8 12, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"CR: read back test failed\0A\00", [37 x i8] zeroinitializer }, align 32
@spi_nor_convert_3to4_read.spi_nor_3to4_read = internal constant { [11 x [2 x i8]], [42 x i8] } { [11 x [2 x i8]] [[2 x i8] c"\03\13", [2 x i8] c"\0B\0C", [2 x i8] c";<", [2 x i8] c"\BB\BC", [2 x i8] c"kl", [2 x i8] c"\EB\EC", [2 x i8] c"\8B|", [2 x i8] c"\CB\CC", [2 x i8] c"\0D\0E", [2 x i8] c"\BD\BE", [2 x i8] c"\ED\EE"], [42 x i8] zeroinitializer }, align 32
@spi_nor_sr2_bit7_quad_enable.__UNIQUE_ID_ddebug261 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.23, ptr @.str.2, ptr @.str.24, i8 1, i8 -56, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"spi_nor_sr2_bit7_quad_enable\00", [35 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"SR2: Read back test failed\0A\00", [36 x i8] zeroinitializer }, align 32
@spi_nor_hwcaps_read2cmd.hwcaps_read2cmd = internal constant { [16 x [2 x i32]], [32 x i8] } { [16 x [2 x i32]] [[2 x i32] [i32 1, i32 0], [2 x i32] [i32 2, i32 1], [2 x i32] [i32 4, i32 2], [2 x i32] [i32 8, i32 3], [2 x i32] [i32 16, i32 4], [2 x i32] [i32 32, i32 5], [2 x i32] [i32 64, i32 6], [2 x i32] [i32 128, i32 7], [2 x i32] [i32 256, i32 8], [2 x i32] [i32 512, i32 9], [2 x i32] [i32 1024, i32 10], [2 x i32] [i32 2048, i32 11], [2 x i32] [i32 4096, i32 12], [2 x i32] [i32 8192, i32 13], [2 x i32] [i32 16384, i32 14], [2 x i32] [i32 32768, i32 15]], [32 x i8] zeroinitializer }, align 32
@__kstrtab_spi_nor_restore = external dso_local constant [0 x i8], align 1
@__kstrtabns_spi_nor_restore = external dso_local constant [0 x i8], align 1
@__ksymtab_spi_nor_restore = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @spi_nor_restore to i32), ptr @__kstrtab_spi_nor_restore, ptr @__kstrtabns_spi_nor_restore }, section "___ksymtab_gpl+spi_nor_restore", align 4
@spi_nor_scan.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.25 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&nor->lock\00", [21 x i8] zeroinitializer }, align 32
@spi_nor_scan._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.2, i32 3263, ptr @.str.28, ptr @.str.29 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s (%lld Kbytes)\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"spi_nor_scan\00", [19 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@spi_nor_scan._entry_ptr = internal global ptr @spi_nor_scan._entry, section ".printk_index", align 4
@spi_nor_scan.__UNIQUE_ID_ddebug274 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.2, ptr @.str.30, i8 3, i8 49, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [93 x i8], [35 x i8] } { [93 x i8] c"mtd .name = %s, .size = 0x%llx (%lldMiB), .erasesize = 0x%.8x (%uKiB) .numeraseregions = %d\0A\00", [35 x i8] zeroinitializer }, align 32
@spi_nor_scan.__UNIQUE_ID_ddebug275 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.2, ptr @.str.31, i8 3, i8 52, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [91 x i8], [37 x i8] } { [91 x i8] c"mtd.eraseregions[%d] = { .offset = 0x%llx, .erasesize = 0x%.8x (%uKiB), .numblocks = %d }\0A\00", [37 x i8] zeroinitializer }, align 32
@__kstrtab_spi_nor_scan = external dso_local constant [0 x i8], align 1
@__kstrtabns_spi_nor_scan = external dso_local constant [0 x i8], align 1
@__ksymtab_spi_nor_scan = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @spi_nor_scan to i32), ptr @__kstrtab_spi_nor_scan, ptr @__kstrtabns_spi_nor_scan }, section "___ksymtab_gpl+spi_nor_scan", align 4
@__initcall__kmod_spi_nor__276_3520_spi_nor_driver_init6 = internal global ptr @spi_nor_driver_init, section ".initcall6.init", align 4
@spi_nor_driver = internal global { %struct.spi_mem_driver, [56 x i8] } { %struct.spi_mem_driver { %struct.spi_driver { ptr @spi_nor_dev_ids, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.107, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @spi_nor_of_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @spi_nor_sysfs_groups, ptr null, ptr null, ptr null } }, ptr @spi_nor_probe, ptr @spi_nor_remove, ptr @spi_nor_shutdown }, [56 x i8] zeroinitializer }, align 32
@__exitcall_spi_nor_driver_exit = internal global ptr @spi_nor_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file277 = internal constant [41 x i8] c"spi_nor.file=drivers/mtd/spi-nor/spi-nor\00", section ".modinfo", align 1
@__UNIQUE_ID_license278 = internal constant [23 x i8] c"spi_nor.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author279 = internal constant [48 x i8] c"spi_nor.author=Huang Shijie <shijie8@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author280 = internal constant [29 x i8] c"spi_nor.author=Mike Lavender\00", section ".modinfo", align 1
@__UNIQUE_ID_description281 = internal constant [42 x i8] c"spi_nor.description=framework for SPI NOR\00", section ".modinfo", align 1
@spi_nor_get_cmd_ext._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.2, i32 68, ptr @.str.34, ptr @.str.29 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Unknown command extension type\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"spi_nor_get_cmd_ext\00", [44 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@spi_nor_get_cmd_ext._entry_ptr = internal global ptr @spi_nor_get_cmd_ext._entry, section ".printk_index", align 4
@high_memory = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@spi_nor_wait_till_ready_with_timeout.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.35, ptr @.str.2, ptr @.str.36, i8 0, i8 -47, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"spi_nor_wait_till_ready_with_timeout\00", [59 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"flash operation timed out\0A\00", [37 x i8] zeroinitializer }, align 32
@spi_nor_sr_ready._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.2, i32 696, ptr @.str.34, ptr @.str.29 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Erase Error occurred\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"spi_nor_sr_ready\00", [47 x i8] zeroinitializer }, align 32
@spi_nor_sr_ready._entry_ptr = internal global ptr @spi_nor_sr_ready._entry, section ".printk_index", align 4
@spi_nor_sr_ready._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.38, ptr @.str.2, i32 698, ptr @.str.34, ptr @.str.29 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Programming Error occurred\0A\00", [36 x i8] zeroinitializer }, align 32
@spi_nor_sr_ready._entry_ptr.41 = internal global ptr @spi_nor_sr_ready._entry.39, section ".printk_index", align 4
@spi_nor_clear_sr.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.42, ptr @.str.2, ptr @.str.43, i8 0, i8 -87, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"spi_nor_clear_sr\00", [47 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"error %d clearing SR\0A\00", [42 x i8] zeroinitializer }, align 32
@spi_nor_fsr_ready._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.2, i32 761, ptr @.str.34, ptr @.str.29 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Erase operation failed.\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"spi_nor_fsr_ready\00", [46 x i8] zeroinitializer }, align 32
@spi_nor_fsr_ready._entry_ptr = internal global ptr @spi_nor_fsr_ready._entry, section ".printk_index", align 4
@spi_nor_fsr_ready._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.45, ptr @.str.2, i32 763, ptr @.str.34, ptr @.str.29 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Program operation failed.\0A\00", [37 x i8] zeroinitializer }, align 32
@spi_nor_fsr_ready._entry_ptr.48 = internal global ptr @spi_nor_fsr_ready._entry.46, section ".printk_index", align 4
@spi_nor_fsr_ready._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.45, ptr @.str.2, i32 767, ptr @.str.34, ptr @.str.29 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Attempted to modify a protected sector.\0A\00", [55 x i8] zeroinitializer }, align 32
@spi_nor_fsr_ready._entry_ptr.51 = internal global ptr @spi_nor_fsr_ready._entry.49, section ".printk_index", align 4
@spi_nor_read_fsr.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.52, ptr @.str.2, ptr @.str.53, i8 0, i8 113, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"spi_nor_read_fsr\00", [47 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"error %d reading FSR\0A\00", [42 x i8] zeroinitializer }, align 32
@spi_nor_clear_fsr.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.54, ptr @.str.2, ptr @.str.55, i8 0, i8 -71, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"spi_nor_clear_fsr\00", [46 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"error %d clearing FSR\0A\00", [41 x i8] zeroinitializer }, align 32
@spi_nor_write_16bit_sr_and_check.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.56, ptr @.str.2, ptr @.str.22, i8 0, i8 -1, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"spi_nor_write_16bit_sr_and_check\00", [63 x i8] zeroinitializer }, align 32
@spi_nor_write_sr1_and_check.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.57, ptr @.str.2, ptr @.str.58, i8 0, i8 -18, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"spi_nor_write_sr1_and_check\00", [36 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"SR1: read back test failed\0A\00", [36 x i8] zeroinitializer }, align 32
@spi_nor_read_sr2.__UNIQUE_ID_ddebug255 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.59, ptr @.str.2, ptr @.str.60, i8 1, i8 35, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"spi_nor_read_sr2\00", [47 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"error %d reading SR2\0A\00", [42 x i8] zeroinitializer }, align 32
@spi_nor_write_sr2.__UNIQUE_ID_ddebug254 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.61, ptr @.str.2, ptr @.str.62, i8 1, i8 26, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"spi_nor_write_sr2\00", [46 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"error %d writing SR2\0A\00", [42 x i8] zeroinitializer }, align 32
@spi_nor_soft_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.64, ptr @.str.2, i32 3017, ptr @.str.65, ptr @.str.29 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Software reset failed: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"spi_nor_soft_reset\00", [45 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@spi_nor_soft_reset._entry_ptr = internal global ptr @spi_nor_soft_reset._entry, section ".printk_index", align 4
@spi_nor_soft_reset._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.64, ptr @.str.2, i32 3030, ptr @.str.65, ptr @.str.29 }, [40 x i8] zeroinitializer }, align 32
@spi_nor_soft_reset._entry_ptr.67 = internal global ptr @spi_nor_soft_reset._entry.66, section ".printk_index", align 4
@spi_nor_check._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.69, ptr @.str.2, i32 2014, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013spi-nor: please fill all the necessary fields!\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"spi_nor_check\00", [18 x i8] zeroinitializer }, align 32
@spi_nor_check._entry_ptr = internal global ptr @spi_nor_check._entry, section ".printk_index", align 4
@spi_nor_check._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.69, ptr @.str.2, i32 2019, ptr @.str.34, ptr @.str.29 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [90 x i8], [38 x i8] } { [90 x i8] c"nor->spimem and nor->controller_ops are mutually exclusive, please set just one of them.\0A\00", [38 x i8] zeroinitializer }, align 32
@spi_nor_check._entry_ptr.72 = internal global ptr @spi_nor_check._entry.70, section ".printk_index", align 4
@spi_nor_get_flash_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.74, ptr @.str.2, i32 3161, ptr @.str.65, ptr @.str.29 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"found %s, expected %s\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"spi_nor_get_flash_info\00", [41 x i8] zeroinitializer }, align 32
@spi_nor_get_flash_info._entry_ptr = internal global ptr @spi_nor_get_flash_info._entry, section ".printk_index", align 4
@manufacturers = internal constant { [17 x ptr], [60 x i8] } { [17 x ptr] [ptr @spi_nor_atmel, ptr @spi_nor_catalyst, ptr @spi_nor_eon, ptr @spi_nor_esmt, ptr @spi_nor_everspin, ptr @spi_nor_fujitsu, ptr @spi_nor_gigadevice, ptr @spi_nor_intel, ptr @spi_nor_issi, ptr @spi_nor_macronix, ptr @spi_nor_micron, ptr @spi_nor_st, ptr @spi_nor_spansion, ptr @spi_nor_sst, ptr @spi_nor_winbond, ptr @spi_nor_xilinx, ptr @spi_nor_xmc], [60 x i8] zeroinitializer }, align 32
@spi_nor_atmel = external dso_local constant %struct.spi_nor_manufacturer, align 4
@spi_nor_catalyst = external dso_local constant %struct.spi_nor_manufacturer, align 4
@spi_nor_eon = external dso_local constant %struct.spi_nor_manufacturer, align 4
@spi_nor_esmt = external dso_local constant %struct.spi_nor_manufacturer, align 4
@spi_nor_everspin = external dso_local constant %struct.spi_nor_manufacturer, align 4
@spi_nor_fujitsu = external dso_local constant %struct.spi_nor_manufacturer, align 4
@spi_nor_gigadevice = external dso_local constant %struct.spi_nor_manufacturer, align 4
@spi_nor_intel = external dso_local constant %struct.spi_nor_manufacturer, align 4
@spi_nor_issi = external dso_local constant %struct.spi_nor_manufacturer, align 4
@spi_nor_macronix = external dso_local constant %struct.spi_nor_manufacturer, align 4
@spi_nor_micron = external dso_local constant %struct.spi_nor_manufacturer, align 4
@spi_nor_st = external dso_local constant %struct.spi_nor_manufacturer, align 4
@spi_nor_spansion = external dso_local constant %struct.spi_nor_manufacturer, align 4
@spi_nor_sst = external dso_local constant %struct.spi_nor_manufacturer, align 4
@spi_nor_winbond = external dso_local constant %struct.spi_nor_manufacturer, align 4
@spi_nor_xilinx = external dso_local constant %struct.spi_nor_manufacturer, align 4
@spi_nor_xmc = external dso_local constant %struct.spi_nor_manufacturer, align 4
@spi_nor_read_id.__UNIQUE_ID_ddebug262 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.75, ptr @.str.2, ptr @.str.76, i8 1, i8 -41, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.75 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"spi_nor_read_id\00", [16 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"error %d reading JEDEC ID\0A\00", [37 x i8] zeroinitializer }, align 32
@spi_nor_read_id._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.75, ptr @.str.2, i32 1901, ptr @.str.34, ptr @.str.29 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"unrecognized JEDEC id bytes: %*ph\0A\00", [61 x i8] zeroinitializer }, align 32
@spi_nor_read_id._entry_ptr = internal global ptr @spi_nor_read_id._entry, section ".printk_index", align 4
@spi_nor_init_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.79, ptr @.str.2, i32 2875, ptr @.str.34, ptr @.str.29 }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [87 x i8], [41 x i8] } { [87 x i8] c"BFPT parsing failed. Please consider using SPI_NOR_SKIP_SFDP when declaring the flash\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"spi_nor_init_params\00", [44 x i8] zeroinitializer }, align 32
@spi_nor_init_params._entry_ptr = internal global ptr @spi_nor_init_params._entry, section ".printk_index", align 4
@.str.80 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"m25p,fast-read\00", [17 x i8] zeroinitializer }, align 32
@spansion_set_4byte_addr_mode.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.81, ptr @.str.2, ptr @.str.11, i8 0, i8 -116, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.81 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"spansion_set_4byte_addr_mode\00", [35 x i8] zeroinitializer }, align 32
@spi_nor_default_setup.__UNIQUE_ID_ddebug267 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.82, ptr @.str.2, ptr @.str.83, i8 2, i8 101, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.82 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"spi_nor_default_setup\00", [42 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"SPI n-n-n protocols are not supported.\0A\00", [56 x i8] zeroinitializer }, align 32
@spi_nor_default_setup.__UNIQUE_ID_ddebug268 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.82, ptr @.str.2, ptr @.str.84, i8 2, i8 104, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.84 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"can't select read settings supported by both the SPI controller and memory.\0A\00", [51 x i8] zeroinitializer }, align 32
@spi_nor_default_setup.__UNIQUE_ID_ddebug269 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.82, ptr @.str.2, ptr @.str.85, i8 2, i8 106, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.85 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"can't select write settings supported by both the SPI controller and memory.\0A\00", [50 x i8] zeroinitializer }, align 32
@spi_nor_default_setup.__UNIQUE_ID_ddebug270 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.82, ptr @.str.2, ptr @.str.86, i8 2, i8 108, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.86 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"can't select erase settings supported by both the SPI controller and memory.\0A\00", [50 x i8] zeroinitializer }, align 32
@spi_nor_hwcaps_pp2cmd.hwcaps_pp2cmd = internal constant { [8 x [2 x i32]], [32 x i8] } { [8 x [2 x i32]] [[2 x i32] [i32 65536, i32 0], [2 x i32] [i32 131072, i32 1], [2 x i32] [i32 262144, i32 2], [2 x i32] [i32 524288, i32 3], [2 x i32] [i32 1048576, i32 4], [2 x i32] [i32 2097152, i32 5], [2 x i32] [i32 4194304, i32 6], [2 x i32] [i32 8388608, i32 7]], [32 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"broken-flash-reset\00", [45 x i8] zeroinitializer }, align 32
@spi_nor_set_addr_width.__UNIQUE_ID_ddebug271 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.88, ptr @.str.2, ptr @.str.89, i8 2, i8 117, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.88 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"spi_nor_set_addr_width\00", [41 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"address width is too large: %u\0A\00", [32 x i8] zeroinitializer }, align 32
@spi_nor_convert_3to4_program.spi_nor_3to4_program = internal constant { [5 x [2 x i8]], [22 x i8] } { [5 x [2 x i8]] [[2 x i8] c"\02\12", [2 x i8] c"24", [2 x i8] c"8>", [2 x i8] c"\82\84", [2 x i8] c"\C2\8E"], [22 x i8] zeroinitializer }, align 32
@spi_nor_convert_3to4_erase.spi_nor_3to4_erase = internal constant { [3 x [2 x i8]], [26 x i8] } { [3 x [2 x i8]] [[2 x i8] c" !", [2 x i8] c"R\\", [2 x i8] c"\D8\DC"], [26 x i8] zeroinitializer }, align 32
@spi_nor_init.__UNIQUE_ID_ddebug272 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.90, ptr @.str.2, ptr @.str.91, i8 2, i8 -32, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.90 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"spi_nor_init\00", [19 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"octal mode not supported\0A\00", [38 x i8] zeroinitializer }, align 32
@spi_nor_init.__UNIQUE_ID_ddebug273 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.90, ptr @.str.2, ptr @.str.92, i8 2, i8 -31, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.92 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"quad mode not supported\0A\00", [39 x i8] zeroinitializer }, align 32
@spi_nor_init.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.93 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"enabling reset hack; may not recover from unexpected reboots\0A\00", [34 x i8] zeroinitializer }, align 32
@spi_nor_erase.__UNIQUE_ID_ddebug258 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.94, ptr @.str.2, ptr @.str.95, i8 1, i8 -99, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.94 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"spi_nor_erase\00", [18 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"at 0x%llx, len %lld\0A\00", [43 x i8] zeroinitializer }, align 32
@spi_nor_erase_chip.__UNIQUE_ID_ddebug256 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.96, ptr @.str.2, ptr @.str.97, i8 1, i8 39, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.96 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"spi_nor_erase_chip\00", [45 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c" %lldKiB\0A\00", [22 x i8] zeroinitializer }, align 32
@spi_nor_erase_chip.__UNIQUE_ID_ddebug257 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.96, ptr @.str.2, ptr @.str.98, i8 1, i8 43, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.98 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"error %d erasing chip\0A\00", [41 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@spi_nor_read.__UNIQUE_ID_ddebug263 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.99, ptr @.str.2, ptr @.str.100, i8 1, i8 -35, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.99 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"spi_nor_read\00", [19 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"from 0x%08x, len %zd\0A\00", [42 x i8] zeroinitializer }, align 32
@spi_nor_write.__UNIQUE_ID_ddebug264 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.101, ptr @.str.2, ptr @.str.102, i8 1, i8 -23, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.101 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"spi_nor_write\00", [18 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"to 0x%08x, len %zd\0A\00", [44 x i8] zeroinitializer }, align 32
@spi_nor_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.104, ptr @.str.2, i32 3051, ptr @.str.34, ptr @.str.29 }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"suspend() failed\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"spi_nor_suspend\00", [16 x i8] zeroinitializer }, align 32
@spi_nor_suspend._entry_ptr = internal global ptr @spi_nor_suspend._entry, section ".printk_index", align 4
@spi_nor_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.106, ptr @.str.2, i32 3066, ptr @.str.34, ptr @.str.29 }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"resume() failed\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"spi_nor_resume\00", [17 x i8] zeroinitializer }, align 32
@spi_nor_resume._entry_ptr = internal global ptr @spi_nor_resume._entry, section ".printk_index", align 4
@spi_nor_dev_ids = internal constant { [54 x %struct.spi_device_id], [488 x i8] } { [54 x %struct.spi_device_id] [%struct.spi_device_id { [32 x i8] c"spi-nor\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"s25sl064a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"w25x16\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"m25p10\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"m25px64\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"at25df321a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"at25df641\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"at26df081a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"mx25l4005a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"mx25l1606e\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"mx25l6405d\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"mx25l12805d\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"mx25l25635e\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"mx66l51235l\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"n25q064\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"n25q128a11\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"n25q128a13\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"n25q512a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"s25fl256s1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"s25fl512s\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"s25sl12801\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"s25fl008k\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"s25fl064k\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"sst25vf040b\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"sst25vf016b\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"sst25vf032b\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"sst25wf040\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"m25p40\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"m25p80\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"m25p16\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"m25p32\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"m25p64\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"m25p128\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"w25x80\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"w25x32\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"w25q32\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"w25q32dw\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"w25q80bl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"w25q128\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"w25q256\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"m25p05-nonjedec\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"m25p10-nonjedec\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"m25p20-nonjedec\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"m25p40-nonjedec\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"m25p80-nonjedec\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"m25p16-nonjedec\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"m25p32-nonjedec\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"m25p64-nonjedec\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"m25p128-nonjedec\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"mr25h128\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"mr25h256\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"mr25h10\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"mr25h40\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id zeroinitializer], [488 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"spi-nor\00", [24 x i8] zeroinitializer }, align 32
@spi_nor_of_table = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"jedec,spi-nor\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@spi_nor_sysfs_groups = external dso_local global [0 x ptr], align 4
@.str.108 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"label\00", [26 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.109 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.110 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.111 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.112 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.113 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.114 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.115 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.116 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.117 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.118 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.119 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.120 = internal global [13 x i64] [i64 11, i64 8, i64 3, i64 11, i64 13, i64 59, i64 107, i64 139, i64 187, i64 189, i64 203, i64 235, i64 237]
@__sancov_gen_cov_switch_values.121 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.122 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.123 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.124 = internal global [18 x i64] [i64 16, i64 32, i64 1, i64 2, i64 4, i64 8, i64 16, i64 32, i64 64, i64 128, i64 256, i64 512, i64 1024, i64 2048, i64 4096, i64 8192, i64 16384, i64 32768]
@__sancov_gen_cov_switch_values.125 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.126 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.127 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.128 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.129 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.130 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.131 = internal global [26 x i64] [i64 24, i64 32, i64 1, i64 2, i64 4, i64 8, i64 16, i64 32, i64 64, i64 128, i64 256, i64 512, i64 1024, i64 2048, i64 4096, i64 8192, i64 16384, i64 32768, i64 65536, i64 131072, i64 262144, i64 524288, i64 1048576, i64 2097152, i64 4194304, i64 8388608]
@__sancov_gen_cov_switch_values.132 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.133 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.134 = internal global [18 x i64] [i64 16, i64 32, i64 1, i64 2, i64 4, i64 8, i64 16, i64 32, i64 64, i64 128, i64 256, i64 512, i64 1024, i64 2048, i64 4096, i64 8192, i64 16384, i64 32768]
@__sancov_gen_cov_switch_values.135 = internal global [10 x i64] [i64 8, i64 32, i64 65536, i64 131072, i64 262144, i64 524288, i64 1048576, i64 2097152, i64 4194304, i64 8388608]
@__sancov_gen_cov_switch_values.136 = internal global [13 x i64] [i64 11, i64 8, i64 3, i64 11, i64 13, i64 59, i64 107, i64 139, i64 187, i64 189, i64 203, i64 235, i64 237]
@__sancov_gen_cov_switch_values.137 = internal global [7 x i64] [i64 5, i64 8, i64 2, i64 50, i64 56, i64 130, i64 194]
@__sancov_gen_cov_switch_values.138 = internal global [5 x i64] [i64 3, i64 8, i64 32, i64 82, i64 216]
@__sancov_gen_cov_switch_values.139 = internal global [5 x i64] [i64 3, i64 8, i64 32, i64 82, i64 216]
@__sancov_gen_cov_switch_values.140 = internal global [5 x i64] [i64 3, i64 8, i64 32, i64 82, i64 216]
@__sancov_gen_cov_switch_values.141 = internal global [5 x i64] [i64 3, i64 8, i64 32, i64 82, i64 216]
@__sancov_gen_cov_switch_values.142 = internal global [5 x i64] [i64 3, i64 8, i64 32, i64 82, i64 216]
@__sancov_gen_cov_switch_values.143 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.144 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.145 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 336, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 367, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 410, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 488, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 526, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 596, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 629, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 886, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 925, i32 3 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 1061, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 1073, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant [18 x i8] c"spi_nor_3to4_read\00", align 1
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 1218, i32 18 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 1824, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant [16 x i8] c"hwcaps_read2cmd\00", align 1
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 2059, i32 19 }
@___asan_gen_.227 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 3236, i32 2 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 3262, i32 2 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 3265, i32 2 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 3273, i32 4 }
@___asan_gen_.254 = private unnamed_addr constant [15 x i8] c"spi_nor_driver\00", align 1
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 3507, i32 30 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 68, i32 3 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 838, i32 2 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 696, i32 4 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 698, i32 4 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 676, i32 3 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 761, i32 4 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 763, i32 4 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 766, i32 4 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 454, i32 3 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 742, i32 3 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 1020, i32 3 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 955, i32 3 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 1165, i32 3 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 1129, i32 3 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 3017, i32 3 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 3030, i32 3 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 2014, i32 3 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 2019, i32 3 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 3160, i32 4 }
@___asan_gen_.389 = private unnamed_addr constant [14 x i8] c"manufacturers\00", align 1
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 1831, i32 43 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 1886, i32 3 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 1900, i32 2 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 2875, i32 4 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 2805, i32 40 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 562, i32 3 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 2454, i32 4 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 2463, i32 3 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 2471, i32 3 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 2479, i32 3 }
@___asan_gen_.434 = private unnamed_addr constant [14 x i8] c"hwcaps_pp2cmd\00", align 1
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 2084, i32 19 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 2646, i32 32 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 2517, i32 3 }
@___asan_gen_.446 = private unnamed_addr constant [21 x i8] c"spi_nor_3to4_program\00", align 1
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 1239, i32 18 }
@___asan_gen_.449 = private unnamed_addr constant [19 x i8] c"spi_nor_3to4_erase\00", align 1
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 1253, i32 18 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 2945, i32 3 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 2951, i32 3 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 2980, i32 3 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 1651, i32 2 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 1180, i32 2 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 1199, i32 3 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 1911, i32 2 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 1957, i32 2 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 3051, i32 3 }
@___asan_gen_.500 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 3066, i32 3 }
@___asan_gen_.509 = private unnamed_addr constant [16 x i8] c"spi_nor_dev_ids\00", align 1
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 3447, i32 35 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 3510, i32 12 }
@___asan_gen_.515 = private unnamed_addr constant [17 x i8] c"spi_nor_of_table\00", align 1
@___asan_gen_.516 = private constant [30 x i8] c"../drivers/mtd/spi-nor/core.c\00", align 1
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 3492, i32 34 }
@___asan_gen_.518 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.519 = private unnamed_addr constant [27 x i8] c"../include/linux/mtd/mtd.h\00", align 1
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 464, i32 31 }
@llvm.compiler.used = appending global [151 x ptr] [ptr @__UNIQUE_ID_author279, ptr @__UNIQUE_ID_author280, ptr @__UNIQUE_ID_description281, ptr @__UNIQUE_ID_file277, ptr @__UNIQUE_ID_license278, ptr @__exitcall_spi_nor_driver_exit, ptr @__initcall__kmod_spi_nor__276_3520_spi_nor_driver_init6, ptr @__ksymtab_spi_nor_restore, ptr @__ksymtab_spi_nor_scan, ptr @spi_nor_check._entry, ptr @spi_nor_check._entry.70, ptr @spi_nor_check._entry_ptr, ptr @spi_nor_check._entry_ptr.72, ptr @spi_nor_driver_exit, ptr @spi_nor_fsr_ready._entry, ptr @spi_nor_fsr_ready._entry.46, ptr @spi_nor_fsr_ready._entry.49, ptr @spi_nor_fsr_ready._entry_ptr, ptr @spi_nor_fsr_ready._entry_ptr.48, ptr @spi_nor_fsr_ready._entry_ptr.51, ptr @spi_nor_get_cmd_ext._entry, ptr @spi_nor_get_cmd_ext._entry_ptr, ptr @spi_nor_get_flash_info._entry, ptr @spi_nor_get_flash_info._entry_ptr, ptr @spi_nor_init_params._entry, ptr @spi_nor_init_params._entry_ptr, ptr @spi_nor_read_id._entry, ptr @spi_nor_read_id._entry_ptr, ptr @spi_nor_resume._entry, ptr @spi_nor_resume._entry_ptr, ptr @spi_nor_scan._entry, ptr @spi_nor_scan._entry_ptr, ptr @spi_nor_soft_reset._entry, ptr @spi_nor_soft_reset._entry.66, ptr @spi_nor_soft_reset._entry_ptr, ptr @spi_nor_soft_reset._entry_ptr.67, ptr @spi_nor_sr_ready._entry, ptr @spi_nor_sr_ready._entry.39, ptr @spi_nor_sr_ready._entry_ptr, ptr @spi_nor_sr_ready._entry_ptr.41, ptr @spi_nor_suspend._entry, ptr @spi_nor_suspend._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @spi_nor_convert_3to4_read.spi_nor_3to4_read, ptr @.str.23, ptr @.str.24, ptr @spi_nor_hwcaps_read2cmd.hwcaps_read2cmd, ptr @spi_nor_scan.__key, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @spi_nor_driver, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.40, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.47, ptr @.str.50, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.68, ptr @.str.69, ptr @.str.71, ptr @.str.73, ptr @.str.74, ptr @manufacturers, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @spi_nor_hwcaps_pp2cmd.hwcaps_pp2cmd, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @spi_nor_convert_3to4_program.spi_nor_3to4_program, ptr @spi_nor_convert_3to4_erase.spi_nor_3to4_erase, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @spi_nor_dev_ids, ptr @.str.107, ptr @spi_nor_of_table, ptr @.str.108], section "llvm.metadata"
@0 = internal global [125 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_nor_convert_3to4_read.spi_nor_3to4_read to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_nor_hwcaps_read2cmd.hwcaps_read2cmd to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_nor_scan.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_nor_scan._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 93, i32 128, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 91, i32 128, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_nor_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_nor_get_cmd_ext._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_nor_sr_ready._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_nor_sr_ready._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_nor_fsr_ready._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_nor_fsr_ready._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_nor_fsr_ready._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_nor_soft_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_nor_soft_reset._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_nor_check._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_nor_check._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 90, i32 128, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_nor_get_flash_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @manufacturers to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_nor_read_id._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_nor_init_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 87, i32 128, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_nor_hwcaps_pp2cmd.hwcaps_pp2cmd to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_nor_convert_3to4_program.spi_nor_3to4_program to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_nor_convert_3to4_erase.spi_nor_3to4_erase to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_nor_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_nor_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_nor_dev_ids to i32), i32 1944, i32 2432, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_nor_of_table to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @spi_nor_spimem_setup_op(ptr nocapture noundef readonly %nor, ptr nocapture noundef %op, i32 noundef %proto) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %and.i = lshr i32 %proto, 16
  %conv.i = trunc i32 %and.i to i8
  %buswidth = getelementptr inbounds %struct.anon.71, ptr %op, i32 0, i32 1
  %0 = ptrtoint ptr %buswidth to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %conv.i, ptr %buswidth, align 1
  %addr = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1
  %1 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %addr, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %and.i68 = lshr i32 %proto, 8
  %conv.i69 = trunc i32 %and.i68 to i8
  %buswidth3 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %buswidth3 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv.i69, ptr %buswidth3, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %dummy = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 2
  %4 = ptrtoint ptr %dummy to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dummy, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool5.not = icmp eq i8 %5, 0
  br i1 %tobool5.not, label %if.end.if.end10_crit_edge, label %if.then6

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end10

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %and.i70 = lshr i32 %proto, 8
  %conv.i71 = trunc i32 %and.i70 to i8
  %buswidth9 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %buswidth9 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv.i71, ptr %buswidth9, align 1
  br label %if.end10

if.end10:                                         ; preds = %if.then6, %if.end.if.end10_crit_edge
  %nbytes11 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 3
  %7 = ptrtoint ptr %nbytes11 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %nbytes11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool12.not = icmp eq i32 %8, 0
  br i1 %tobool12.not, label %if.end10.if.end17_crit_edge, label %if.then13

if.end10.if.end17_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end17

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #17
  %data = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3
  %conv.i72 = trunc i32 %proto to i8
  %9 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv.i72, ptr %data, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then13, %if.end10.if.end17_crit_edge
  %and.i73 = and i32 %proto, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i73)
  %tobool.i.not = icmp eq i32 %and.i73, 0
  br i1 %tobool.i.not, label %if.end17.if.end48_crit_edge, label %if.then19

if.end17.if.end48_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end48

if.then19:                                        ; preds = %if.end17
  %dtr = getelementptr inbounds %struct.anon.71, ptr %op, i32 0, i32 2
  %10 = ptrtoint ptr %dtr to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load = load i8, ptr %dtr, align 2
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %dtr, align 2
  %dtr22 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1, i32 2
  %11 = ptrtoint ptr %dtr22 to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load23 = load i8, ptr %dtr22, align 2
  %bf.set25 = or i8 %bf.load23, -128
  store i8 %bf.set25, ptr %dtr22, align 2
  %dtr27 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 2, i32 2
  %12 = ptrtoint ptr %dtr27 to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load28 = load i8, ptr %dtr27, align 2
  %bf.set30 = or i8 %bf.load28, -128
  store i8 %bf.set30, ptr %dtr27, align 2
  %dtr32 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 1
  %13 = ptrtoint ptr %dtr32 to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load33 = load i8, ptr %dtr32, align 1
  %bf.set35 = or i8 %bf.load33, -128
  store i8 %bf.set35, ptr %dtr32, align 1
  %mul = shl i8 %5, 1
  %14 = ptrtoint ptr %dummy to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %mul, ptr %dummy, align 8
  %cmd_ext_type.i = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 18
  %15 = ptrtoint ptr %cmd_ext_type.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cmd_ext_type.i, align 8
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values)
  switch i32 %16, label %do.end.i [
    i32 2, label %sw.bb.i
    i32 1, label %sw.bb2.i
  ]

sw.bb.i:                                          ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #17
  %opcode.i = getelementptr inbounds %struct.anon.71, ptr %op, i32 0, i32 3
  %18 = ptrtoint ptr %opcode.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %opcode.i, align 4
  %conv.i74 = trunc i16 %19 to i8
  %neg.i = xor i8 %conv.i74, -1
  br label %spi_nor_get_cmd_ext.exit

sw.bb2.i:                                         ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #17
  %opcode4.i = getelementptr inbounds %struct.anon.71, ptr %op, i32 0, i32 3
  %20 = ptrtoint ptr %opcode4.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %opcode4.i, align 4
  %conv5.i = trunc i16 %21 to i8
  br label %spi_nor_get_cmd_ext.exit

do.end.i:                                         ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #17
  %dev.i = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 2
  %22 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.32) #18
  br label %spi_nor_get_cmd_ext.exit

spi_nor_get_cmd_ext.exit:                         ; preds = %do.end.i, %sw.bb2.i, %sw.bb.i
  %retval.0.i = phi i8 [ 0, %do.end.i ], [ %conv5.i, %sw.bb2.i ], [ %neg.i, %sw.bb.i ]
  %opcode = getelementptr inbounds %struct.anon.71, ptr %op, i32 0, i32 3
  %24 = ptrtoint ptr %opcode to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %opcode, align 4
  %shl = shl i16 %25, 8
  %conv42 = zext i8 %retval.0.i to i16
  %or = or i16 %shl, %conv42
  store i16 %or, ptr %opcode, align 4
  %26 = ptrtoint ptr %op to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 2, ptr %op, align 8
  br label %if.end48

if.end48:                                         ; preds = %spi_nor_get_cmd_ext.exit, %if.end17.if.end48_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @spi_nor_read_data(ptr noundef %nor, i64 noundef %from, i32 noundef %len, ptr noundef %buf) local_unnamed_addr #0 align 64 {
entry:
  %op.i = alloca %struct.spi_mem_op, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %spimem = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 3
  %0 = ptrtoint ptr %spimem to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spimem, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %op.i) #15
  %2 = call ptr @memset(ptr %op.i, i32 255, i32 48)
  %3 = ptrtoint ptr %op.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %op.i, align 8
  %buswidth.i = getelementptr inbounds %struct.anon.71, ptr %op.i, i32 0, i32 1
  %dtr.i = getelementptr inbounds %struct.anon.71, ptr %op.i, i32 0, i32 2
  %4 = ptrtoint ptr %dtr.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 127, ptr %dtr.i, align 2
  %opcode.i = getelementptr inbounds %struct.anon.71, ptr %op.i, i32 0, i32 3
  %read_opcode.i = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 10
  %5 = ptrtoint ptr %read_opcode.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %read_opcode.i, align 2
  %conv.i = zext i8 %6 to i16
  %7 = ptrtoint ptr %opcode.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv.i, ptr %opcode.i, align 4
  %addr.i = getelementptr inbounds %struct.spi_mem_op, ptr %op.i, i32 0, i32 1
  %addr_width.i = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 8
  %8 = ptrtoint ptr %addr_width.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %addr_width.i, align 4
  %10 = ptrtoint ptr %addr.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %addr.i, align 8
  %buswidth2.i = getelementptr inbounds %struct.spi_mem_op, ptr %op.i, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %buswidth2.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %buswidth2.i, align 1
  %dtr3.i = getelementptr inbounds %struct.spi_mem_op, ptr %op.i, i32 0, i32 1, i32 2
  %12 = ptrtoint ptr %dtr3.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 127, ptr %dtr3.i, align 2
  %val.i = getelementptr inbounds %struct.spi_mem_op, ptr %op.i, i32 0, i32 1, i32 3
  %13 = ptrtoint ptr %val.i to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %from, ptr %val.i, align 8
  %dummy.i = getelementptr inbounds %struct.spi_mem_op, ptr %op.i, i32 0, i32 2
  %read_dummy.i = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 11
  %14 = ptrtoint ptr %read_dummy.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %read_dummy.i, align 1
  %16 = ptrtoint ptr %dummy.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %dummy.i, align 8
  %buswidth8.i = getelementptr inbounds %struct.spi_mem_op, ptr %op.i, i32 0, i32 2, i32 1
  %17 = ptrtoint ptr %buswidth8.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %buswidth8.i, align 1
  %dtr9.i = getelementptr inbounds %struct.spi_mem_op, ptr %op.i, i32 0, i32 2, i32 2
  %18 = ptrtoint ptr %dtr9.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 127, ptr %dtr9.i, align 2
  %data.i = getelementptr inbounds %struct.spi_mem_op, ptr %op.i, i32 0, i32 3
  %19 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %data.i, align 4
  %dtr14.i = getelementptr inbounds %struct.spi_mem_op, ptr %op.i, i32 0, i32 3, i32 1
  %20 = ptrtoint ptr %dtr14.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 127, ptr %dtr14.i, align 1
  %dir.i = getelementptr inbounds %struct.spi_mem_op, ptr %op.i, i32 0, i32 3, i32 2
  %21 = ptrtoint ptr %dir.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %dir.i, align 8
  %nbytes18.i = getelementptr inbounds %struct.spi_mem_op, ptr %op.i, i32 0, i32 3, i32 3
  %22 = ptrtoint ptr %nbytes18.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %len, ptr %nbytes18.i, align 4
  %buf19.i = getelementptr inbounds %struct.spi_mem_op, ptr %op.i, i32 0, i32 3, i32 4
  %23 = ptrtoint ptr %buf19.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %buf, ptr %buf19.i, align 8
  %read_proto.i = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 13
  %24 = ptrtoint ptr %read_proto.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %read_proto.i, align 4
  %and.i.i.i = lshr i32 %25, 16
  %conv.i.i.i = trunc i32 %and.i.i.i to i8
  %26 = ptrtoint ptr %buswidth.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv.i.i.i, ptr %buswidth.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i.i = icmp eq i8 %9, 0
  br i1 %tobool.not.i.i, label %if.then.if.end.i.i_crit_edge, label %if.then.i.i

if.then.if.end.i.i_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %and.i68.i.i = lshr i32 %25, 8
  %conv.i69.i.i = trunc i32 %and.i68.i.i to i8
  %27 = ptrtoint ptr %buswidth2.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv.i69.i.i, ptr %buswidth2.i, align 1
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.then.if.end.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool5.not.i.i = icmp eq i8 %15, 0
  br i1 %tobool5.not.i.i, label %if.end.i.i.if.end10.i.i_crit_edge, label %if.then6.i.i

if.end.i.i.if.end10.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end10.i.i

if.then6.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %and.i70.i.i = lshr i32 %25, 8
  %conv.i71.i.i = trunc i32 %and.i70.i.i to i8
  %28 = ptrtoint ptr %buswidth8.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv.i71.i.i, ptr %buswidth8.i, align 1
  br label %if.end10.i.i

if.end10.i.i:                                     ; preds = %if.then6.i.i, %if.end.i.i.if.end10.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool12.not.i.i = icmp eq i32 %len, 0
  br i1 %tobool12.not.i.i, label %if.end10.i.i.if.end17.i.i_crit_edge, label %if.then13.i.i

if.end10.i.i.if.end17.i.i_crit_edge:              ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end17.i.i

if.then13.i.i:                                    ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %conv.i72.i.i = trunc i32 %25 to i8
  %29 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv.i72.i.i, ptr %data.i, align 4
  br label %if.end17.i.i

if.end17.i.i:                                     ; preds = %if.then13.i.i, %if.end10.i.i.if.end17.i.i_crit_edge
  %and.i73.i.i = and i32 %25, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i73.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i73.i.i, 0
  br i1 %tobool.i.not.i.i, label %if.end17.i.i.spi_nor_spimem_setup_op.exit.i_crit_edge, label %if.then19.i.i

if.end17.i.i.spi_nor_spimem_setup_op.exit.i_crit_edge: ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %spi_nor_spimem_setup_op.exit.i

if.then19.i.i:                                    ; preds = %if.end17.i.i
  %30 = ptrtoint ptr %dtr.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 -1, ptr %dtr.i, align 2
  %31 = ptrtoint ptr %dtr3.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 -1, ptr %dtr3.i, align 2
  %32 = ptrtoint ptr %dtr9.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 -1, ptr %dtr9.i, align 2
  %33 = ptrtoint ptr %dtr14.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 -1, ptr %dtr14.i, align 1
  %cmd_ext_type.i.i.i = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 18
  %34 = ptrtoint ptr %cmd_ext_type.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %cmd_ext_type.i.i.i, align 8
  %36 = zext i32 %35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.109)
  switch i32 %35, label %do.end.i.i.i [
    i32 2, label %sw.bb.i.i.i
    i32 1, label %if.then19.i.i.spi_nor_get_cmd_ext.exit.i.i_crit_edge
  ]

if.then19.i.i.spi_nor_get_cmd_ext.exit.i.i_crit_edge: ; preds = %if.then19.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %spi_nor_get_cmd_ext.exit.i.i

sw.bb.i.i.i:                                      ; preds = %if.then19.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %neg.i.i.i = xor i8 %6, -1
  br label %spi_nor_get_cmd_ext.exit.i.i

do.end.i.i.i:                                     ; preds = %if.then19.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %dev.i.i.i = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 2
  %37 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev.i.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.32) #18
  br label %spi_nor_get_cmd_ext.exit.i.i

spi_nor_get_cmd_ext.exit.i.i:                     ; preds = %do.end.i.i.i, %sw.bb.i.i.i, %if.then19.i.i.spi_nor_get_cmd_ext.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i8 [ 0, %do.end.i.i.i ], [ %neg.i.i.i, %sw.bb.i.i.i ], [ %6, %if.then19.i.i.spi_nor_get_cmd_ext.exit.i.i_crit_edge ]
  %39 = ptrtoint ptr %opcode.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %opcode.i, align 4
  %shl.i.i = shl i16 %40, 8
  %conv42.i.i = zext i8 %retval.0.i.i.i to i16
  %or.i.i = or i16 %shl.i.i, %conv42.i.i
  store i16 %or.i.i, ptr %opcode.i, align 4
  %41 = ptrtoint ptr %op.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 2, ptr %op.i, align 8
  br label %spi_nor_spimem_setup_op.exit.i

spi_nor_spimem_setup_op.exit.i:                   ; preds = %spi_nor_get_cmd_ext.exit.i.i, %if.end17.i.i.spi_nor_spimem_setup_op.exit.i_crit_edge
  %42 = ptrtoint ptr %read_dummy.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %read_dummy.i, align 1
  %conv22.i = zext i8 %43 to i16
  %44 = ptrtoint ptr %buswidth8.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %buswidth8.i, align 1
  %conv25.i = zext i8 %45 to i16
  %mul.i = mul nuw i16 %conv25.i, %conv22.i
  %div77.i = lshr i16 %mul.i, 3
  %conv26.i = trunc i16 %div77.i to i8
  %46 = ptrtoint ptr %dummy.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %conv26.i, ptr %dummy.i, align 8
  %47 = ptrtoint ptr %read_proto.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %read_proto.i, align 4
  %and.i.i = and i32 %48, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %spi_nor_spimem_setup_op.exit.i.if.end.i_crit_edge, label %if.then.i

spi_nor_spimem_setup_op.exit.i.if.end.i_crit_edge: ; preds = %spi_nor_spimem_setup_op.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

if.then.i:                                        ; preds = %spi_nor_spimem_setup_op.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  %mul33.i = shl i8 %conv26.i, 1
  %49 = ptrtoint ptr %dummy.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %mul33.i, ptr %dummy.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %spi_nor_spimem_setup_op.exit.i.if.end.i_crit_edge
  %50 = ptrtoint ptr %buf19.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %buf19.i, align 8
  %52 = tail call i32 @llvm.read_register.i32(metadata !261) #15
  %and.i.i.i.i = and i32 %52, -16384
  %53 = inttoptr i32 %and.i.i.i.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %53, i32 0, i32 2
  %54 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %task.i.i.i, align 8
  %stack1.i.i.i = getelementptr inbounds %struct.task_struct, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %stack1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %stack1.i.i.i, align 4
  %cmp.not.i.i.i = icmp ugt ptr %57, %51
  %add.ptr.i.i.i = getelementptr i8, ptr %57, i32 16384
  %cmp2.i.i.i = icmp ule ptr %add.ptr.i.i.i, %51
  %tobool.not.i78.i = or i1 %cmp.not.i.i.i, %cmp2.i.i.i
  br i1 %tobool.not.i78.i, label %lor.lhs.false.i.i, label %if.end.i.if.then.i79.i_crit_edge

if.end.i.if.then.i79.i_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i79.i

lor.lhs.false.i.i:                                ; preds = %if.end.i
  %58 = ptrtoint ptr %51 to i32
  %cmp.i.i = icmp ugt ptr %51, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %lor.lhs.false.i.i.if.then.i79.i_crit_edge

lor.lhs.false.i.i.if.then.i79.i_crit_edge:        ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i79.i

land.lhs.true.i.i:                                ; preds = %lor.lhs.false.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %59 = load ptr, ptr @high_memory, align 4
  %cmp5.i.i = icmp ult ptr %51, %59
  br i1 %cmp5.i.i, label %land.lhs.true6.i.i, label %land.lhs.true.i.i.if.then.i79.i_crit_edge

land.lhs.true.i.i.if.then.i79.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i79.i

land.lhs.true6.i.i:                               ; preds = %land.lhs.true.i.i
  %sub.i.i = add i32 %58, 1073741824
  %shr.i.i = lshr i32 %sub.i.i, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %60 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i.i = add i32 %60, %shr.i.i
  %call9.i.i = tail call i32 @pfn_valid(i32 noundef %add.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i)
  %tobool10.not.i.i = icmp eq i32 %call9.i.i, 0
  br i1 %tobool10.not.i.i, label %land.lhs.true6.i.i.if.then.i79.i_crit_edge, label %land.lhs.true6.i.i.spi_nor_spimem_bounce.exit.i_crit_edge

land.lhs.true6.i.i.spi_nor_spimem_bounce.exit.i_crit_edge: ; preds = %land.lhs.true6.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %spi_nor_spimem_bounce.exit.i

land.lhs.true6.i.i.if.then.i79.i_crit_edge:       ; preds = %land.lhs.true6.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i79.i

if.then.i79.i:                                    ; preds = %land.lhs.true6.i.i.if.then.i79.i_crit_edge, %land.lhs.true.i.i.if.then.i79.i_crit_edge, %lor.lhs.false.i.i.if.then.i79.i_crit_edge, %if.end.i.if.then.i79.i_crit_edge
  %61 = ptrtoint ptr %nbytes18.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %nbytes18.i, align 4
  %bouncebuf_size.i.i = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 5
  %63 = ptrtoint ptr %bouncebuf_size.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %bouncebuf_size.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %62, i32 %64)
  %cmp12.i.i = icmp ugt i32 %62, %64
  br i1 %cmp12.i.i, label %if.then13.i80.i, label %if.then.i79.i.if.end.i81.i_crit_edge

if.then.i79.i.if.end.i81.i_crit_edge:             ; preds = %if.then.i79.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i81.i

if.then13.i80.i:                                  ; preds = %if.then.i79.i
  call void @__sanitizer_cov_trace_pc() #17
  %65 = ptrtoint ptr %nbytes18.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %nbytes18.i, align 4
  br label %if.end.i81.i

if.end.i81.i:                                     ; preds = %if.then13.i80.i, %if.then.i79.i.if.end.i81.i_crit_edge
  %bouncebuf.i.i = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 4
  %66 = ptrtoint ptr %bouncebuf.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %bouncebuf.i.i, align 4
  %68 = ptrtoint ptr %buf19.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %67, ptr %buf19.i, align 8
  br label %spi_nor_spimem_bounce.exit.i

spi_nor_spimem_bounce.exit.i:                     ; preds = %if.end.i81.i, %land.lhs.true6.i.i.spi_nor_spimem_bounce.exit.i_crit_edge
  %retval.0.i.i = phi i1 [ true, %if.end.i81.i ], [ false, %land.lhs.true6.i.i.spi_nor_spimem_bounce.exit.i_crit_edge ]
  %dirmap.i = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 22
  %69 = ptrtoint ptr %dirmap.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %dirmap.i, align 8
  %tobool.not.i = icmp eq ptr %70, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then36.i

if.then36.i:                                      ; preds = %spi_nor_spimem_bounce.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  %71 = ptrtoint ptr %val.i to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %val.i, align 8
  %73 = ptrtoint ptr %nbytes18.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %nbytes18.i, align 4
  %75 = ptrtoint ptr %buf19.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %buf19.i, align 8
  %call45.i = tail call i32 @spi_mem_dirmap_read(ptr noundef nonnull %70, i64 noundef %72, i32 noundef %74, ptr noundef %76) #15
  br label %if.end52.i

if.else.i:                                        ; preds = %spi_nor_spimem_bounce.exit.i
  %77 = ptrtoint ptr %spimem to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %spimem, align 8
  %call.i.i = call i32 @spi_mem_adjust_op_size(ptr noundef %78, ptr noundef nonnull %op.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i82.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i82.i, label %spi_nor_spimem_exec_op.exit.i, label %if.else.i.spi_nor_spimem_read_data.exit_crit_edge

if.else.i.spi_nor_spimem_read_data.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %spi_nor_spimem_read_data.exit

spi_nor_spimem_exec_op.exit.i:                    ; preds = %if.else.i
  %79 = ptrtoint ptr %spimem to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %spimem, align 8
  %call2.i.i = call i32 @spi_mem_exec_op(ptr noundef %80, ptr noundef nonnull %op.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool47.not.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool47.not.i, label %if.end49.i, label %spi_nor_spimem_exec_op.exit.i.spi_nor_spimem_read_data.exit_crit_edge

spi_nor_spimem_exec_op.exit.i.spi_nor_spimem_read_data.exit_crit_edge: ; preds = %spi_nor_spimem_exec_op.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %spi_nor_spimem_read_data.exit

if.end49.i:                                       ; preds = %spi_nor_spimem_exec_op.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  %81 = ptrtoint ptr %nbytes18.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %nbytes18.i, align 4
  br label %if.end52.i

if.end52.i:                                       ; preds = %if.end49.i, %if.then36.i
  %nbytes20.0.i = phi i32 [ %call45.i, %if.then36.i ], [ %82, %if.end49.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nbytes20.0.i)
  %cmp.i = icmp sgt i32 %nbytes20.0.i, 0
  %or.cond.i = select i1 %retval.0.i.i, i1 %cmp.i, i1 false
  br i1 %or.cond.i, label %if.then56.i, label %if.end52.i.spi_nor_spimem_read_data.exit_crit_edge

if.end52.i.spi_nor_spimem_read_data.exit_crit_edge: ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %spi_nor_spimem_read_data.exit

if.then56.i:                                      ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #17
  %83 = ptrtoint ptr %buf19.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %buf19.i, align 8
  %85 = call ptr @memcpy(ptr %buf, ptr %84, i32 %nbytes20.0.i)
  br label %spi_nor_spimem_read_data.exit

spi_nor_spimem_read_data.exit:                    ; preds = %if.then56.i, %if.end52.i.spi_nor_spimem_read_data.exit_crit_edge, %spi_nor_spimem_exec_op.exit.i.spi_nor_spimem_read_data.exit_crit_edge, %if.else.i.spi_nor_spimem_read_data.exit_crit_edge
  %retval.0.i = phi i32 [ %call2.i.i, %spi_nor_spimem_exec_op.exit.i.spi_nor_spimem_read_data.exit_crit_edge ], [ %nbytes20.0.i, %if.then56.i ], [ %nbytes20.0.i, %if.end52.i.spi_nor_spimem_read_data.exit_crit_edge ], [ %call.i.i, %if.else.i.spi_nor_spimem_read_data.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %op.i) #15
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %controller_ops = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 20
  %86 = ptrtoint ptr %controller_ops to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %controller_ops, align 8
  %read = getelementptr inbounds %struct.spi_nor_controller_ops, ptr %87, i32 0, i32 4
  %88 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %read, align 4
  %call1 = tail call i32 %89(ptr noundef %nor, i64 noundef %from, i32 noundef %len, ptr noundef %buf) #15
  br label %return

return:                                           ; preds = %if.end, %spi_nor_spimem_read_data.exit
  %retval.0 = phi i32 [ %retval.0.i, %spi_nor_spimem_read_data.exit ], [ %call1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @spi_nor_write_data(ptr noundef %nor, i64 noundef %to, i32 noundef %len, ptr noundef %buf) local_unnamed_addr #0 align 64 {
entry:
  %op.i = alloca %struct.spi_mem_op, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %spimem = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 3
  %0 = ptrtoint ptr %spimem to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spimem, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %op.i) #15
  %2 = call ptr @memset(ptr %op.i, i32 255, i32 48)
  %3 = ptrtoint ptr %op.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %op.i, align 8
  %buswidth.i = getelementptr inbounds %struct.anon.71, ptr %op.i, i32 0, i32 1
  %dtr.i = getelementptr inbounds %struct.anon.71, ptr %op.i, i32 0, i32 2
  %4 = ptrtoint ptr %dtr.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 127, ptr %dtr.i, align 2
  %opcode.i = getelementptr inbounds %struct.anon.71, ptr %op.i, i32 0, i32 3
  %program_opcode.i = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 12
  %5 = ptrtoint ptr %program_opcode.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %program_opcode.i, align 8
  %conv.i = zext i8 %6 to i16
  %7 = ptrtoint ptr %opcode.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv.i, ptr %opcode.i, align 4
  %addr.i = getelementptr inbounds %struct.spi_mem_op, ptr %op.i, i32 0, i32 1
  %addr_width.i = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 8
  %8 = ptrtoint ptr %addr_width.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %addr_width.i, align 4
  %10 = ptrtoint ptr %addr.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %addr.i, align 8
  %buswidth2.i = getelementptr inbounds %struct.spi_mem_op, ptr %op.i, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %buswidth2.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %buswidth2.i, align 1
  %dtr3.i = getelementptr inbounds %struct.spi_mem_op, ptr %op.i, i32 0, i32 1, i32 2
  %12 = ptrtoint ptr %dtr3.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 127, ptr %dtr3.i, align 2
  %val.i = getelementptr inbounds %struct.spi_mem_op, ptr %op.i, i32 0, i32 1, i32 3
  %13 = ptrtoint ptr %val.i to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %to, ptr %val.i, align 8
  %dummy.i = getelementptr inbounds %struct.spi_mem_op, ptr %op.i, i32 0, i32 2
  %14 = ptrtoint ptr %dummy.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %dummy.i, align 8
  %buswidth8.i = getelementptr inbounds %struct.spi_mem_op, ptr %op.i, i32 0, i32 2, i32 1
  %15 = ptrtoint ptr %buswidth8.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %buswidth8.i, align 1
  %dtr9.i = getelementptr inbounds %struct.spi_mem_op, ptr %op.i, i32 0, i32 2, i32 2
  %16 = ptrtoint ptr %dtr9.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 127, ptr %dtr9.i, align 2
  %data.i = getelementptr inbounds %struct.spi_mem_op, ptr %op.i, i32 0, i32 3
  %17 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %data.i, align 4
  %dtr14.i = getelementptr inbounds %struct.spi_mem_op, ptr %op.i, i32 0, i32 3, i32 1
  %18 = ptrtoint ptr %dtr14.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 127, ptr %dtr14.i, align 1
  %dir.i = getelementptr inbounds %struct.spi_mem_op, ptr %op.i, i32 0, i32 3, i32 2
  %19 = ptrtoint ptr %dir.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 2, ptr %dir.i, align 8
  %nbytes18.i = getelementptr inbounds %struct.spi_mem_op, ptr %op.i, i32 0, i32 3, i32 3
  %20 = ptrtoint ptr %nbytes18.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %len, ptr %nbytes18.i, align 4
  %buf19.i = getelementptr inbounds %struct.spi_mem_op, ptr %op.i, i32 0, i32 3, i32 4
  %21 = ptrtoint ptr %buf19.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %buf, ptr %buf19.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -83, i8 %6)
  %cmp.i = icmp eq i8 %6, -83
  br i1 %cmp.i, label %land.lhs.true.i, label %if.then.if.end.i_crit_edge

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.then
  %sst_write_second.i = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 16
  %22 = ptrtoint ptr %sst_write_second.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %sst_write_second.i, align 8, !range !271
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not.i = icmp eq i8 %23, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %if.end.thread.i

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

if.end.thread.i:                                  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  %24 = ptrtoint ptr %addr.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %addr.i, align 8
  %write_proto70.i = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 14
  %25 = ptrtoint ptr %write_proto70.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %write_proto70.i, align 8
  %and.i.i71.i = lshr i32 %26, 16
  br label %if.end10.i.sink.split.i

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %if.then.if.end.i_crit_edge
  %write_proto.i = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 14
  %27 = ptrtoint ptr %write_proto.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %write_proto.i, align 8
  %and.i.i.i = lshr i32 %28, 16
  %conv.i.i.i = trunc i32 %and.i.i.i to i8
  %29 = ptrtoint ptr %buswidth.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv.i.i.i, ptr %buswidth.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i.i = icmp eq i8 %9, 0
  br i1 %tobool.not.i.i, label %if.end.i.if.end10.i.i_crit_edge, label %if.then.i.i

if.end.i.if.end10.i.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end10.i.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %and.i68.i.i = lshr i32 %28, 8
  br label %if.end10.i.sink.split.i

if.end10.i.sink.split.i:                          ; preds = %if.then.i.i, %if.end.thread.i
  %and.i68.i.sink.i = phi i32 [ %and.i68.i.i, %if.then.i.i ], [ %and.i.i71.i, %if.end.thread.i ]
  %buswidth2.sink.i = phi ptr [ %buswidth2.i, %if.then.i.i ], [ %buswidth.i, %if.end.thread.i ]
  %.ph.i = phi i32 [ %28, %if.then.i.i ], [ %26, %if.end.thread.i ]
  %conv.i69.i.i = trunc i32 %and.i68.i.sink.i to i8
  %30 = ptrtoint ptr %buswidth2.sink.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv.i69.i.i, ptr %buswidth2.sink.i, align 1
  br label %if.end10.i.i

if.end10.i.i:                                     ; preds = %if.end10.i.sink.split.i, %if.end.i.if.end10.i.i_crit_edge
  %31 = phi i32 [ %28, %if.end.i.if.end10.i.i_crit_edge ], [ %.ph.i, %if.end10.i.sink.split.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool12.not.i.i = icmp eq i32 %len, 0
  br i1 %tobool12.not.i.i, label %if.end10.i.i.if.end17.i.i_crit_edge, label %if.then13.i.i

if.end10.i.i.if.end17.i.i_crit_edge:              ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end17.i.i

if.then13.i.i:                                    ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %conv.i72.i.i = trunc i32 %31 to i8
  %32 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv.i72.i.i, ptr %data.i, align 4
  br label %if.end17.i.i

if.end17.i.i:                                     ; preds = %if.then13.i.i, %if.end10.i.i.if.end17.i.i_crit_edge
  %and.i73.i.i = and i32 %31, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i73.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i73.i.i, 0
  br i1 %tobool.i.not.i.i, label %if.end17.i.i.spi_nor_spimem_setup_op.exit.i_crit_edge, label %if.then19.i.i

if.end17.i.i.spi_nor_spimem_setup_op.exit.i_crit_edge: ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %spi_nor_spimem_setup_op.exit.i

if.then19.i.i:                                    ; preds = %if.end17.i.i
  %33 = ptrtoint ptr %dtr.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 -1, ptr %dtr.i, align 2
  %34 = ptrtoint ptr %dtr3.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 -1, ptr %dtr3.i, align 2
  %35 = ptrtoint ptr %dtr9.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 -1, ptr %dtr9.i, align 2
  %36 = ptrtoint ptr %dtr14.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 -1, ptr %dtr14.i, align 1
  %37 = ptrtoint ptr %dummy.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %dummy.i, align 8
  %cmd_ext_type.i.i.i = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 18
  %38 = ptrtoint ptr %cmd_ext_type.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %cmd_ext_type.i.i.i, align 8
  %40 = zext i32 %39 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.110)
  switch i32 %39, label %do.end.i.i.i [
    i32 2, label %sw.bb.i.i.i
    i32 1, label %if.then19.i.i.spi_nor_get_cmd_ext.exit.i.i_crit_edge
  ]

if.then19.i.i.spi_nor_get_cmd_ext.exit.i.i_crit_edge: ; preds = %if.then19.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %spi_nor_get_cmd_ext.exit.i.i

sw.bb.i.i.i:                                      ; preds = %if.then19.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %neg.i.i.i = xor i8 %6, -1
  br label %spi_nor_get_cmd_ext.exit.i.i

do.end.i.i.i:                                     ; preds = %if.then19.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %dev.i.i.i = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 2
  %41 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev.i.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.32) #18
  br label %spi_nor_get_cmd_ext.exit.i.i

spi_nor_get_cmd_ext.exit.i.i:                     ; preds = %do.end.i.i.i, %sw.bb.i.i.i, %if.then19.i.i.spi_nor_get_cmd_ext.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i8 [ 0, %do.end.i.i.i ], [ %neg.i.i.i, %sw.bb.i.i.i ], [ %6, %if.then19.i.i.spi_nor_get_cmd_ext.exit.i.i_crit_edge ]
  %43 = ptrtoint ptr %opcode.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %opcode.i, align 4
  %shl.i.i = shl i16 %44, 8
  %conv42.i.i = zext i8 %retval.0.i.i.i to i16
  %or.i.i = or i16 %shl.i.i, %conv42.i.i
  store i16 %or.i.i, ptr %opcode.i, align 4
  %45 = ptrtoint ptr %op.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 2, ptr %op.i, align 8
  br label %spi_nor_spimem_setup_op.exit.i

spi_nor_spimem_setup_op.exit.i:                   ; preds = %spi_nor_get_cmd_ext.exit.i.i, %if.end17.i.i.spi_nor_spimem_setup_op.exit.i_crit_edge
  %46 = ptrtoint ptr %buf19.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %buf19.i, align 8
  %48 = tail call i32 @llvm.read_register.i32(metadata !261) #15
  %and.i.i.i.i = and i32 %48, -16384
  %49 = inttoptr i32 %and.i.i.i.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %49, i32 0, i32 2
  %50 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %task.i.i.i, align 8
  %stack1.i.i.i = getelementptr inbounds %struct.task_struct, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %stack1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %stack1.i.i.i, align 4
  %cmp.not.i.i.i = icmp ugt ptr %53, %47
  %add.ptr.i.i.i = getelementptr i8, ptr %53, i32 16384
  %cmp2.i.i.i = icmp ule ptr %add.ptr.i.i.i, %47
  %tobool.not.i63.i = or i1 %cmp.not.i.i.i, %cmp2.i.i.i
  br i1 %tobool.not.i63.i, label %lor.lhs.false.i.i, label %spi_nor_spimem_setup_op.exit.i.if.then.i64.i_crit_edge

spi_nor_spimem_setup_op.exit.i.if.then.i64.i_crit_edge: ; preds = %spi_nor_spimem_setup_op.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i64.i

lor.lhs.false.i.i:                                ; preds = %spi_nor_spimem_setup_op.exit.i
  %54 = ptrtoint ptr %47 to i32
  %cmp.i.i = icmp ugt ptr %47, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %lor.lhs.false.i.i.if.then.i64.i_crit_edge

lor.lhs.false.i.i.if.then.i64.i_crit_edge:        ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i64.i

land.lhs.true.i.i:                                ; preds = %lor.lhs.false.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %55 = load ptr, ptr @high_memory, align 4
  %cmp5.i.i = icmp ult ptr %47, %55
  br i1 %cmp5.i.i, label %land.lhs.true6.i.i, label %land.lhs.true.i.i.if.then.i64.i_crit_edge

land.lhs.true.i.i.if.then.i64.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i64.i

land.lhs.true6.i.i:                               ; preds = %land.lhs.true.i.i
  %sub.i.i = add i32 %54, 1073741824
  %shr.i.i = lshr i32 %sub.i.i, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %56 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i.i = add i32 %56, %shr.i.i
  %call9.i.i = tail call i32 @pfn_valid(i32 noundef %add.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i)
  %tobool10.not.i.i = icmp eq i32 %call9.i.i, 0
  br i1 %tobool10.not.i.i, label %land.lhs.true6.i.i.if.then.i64.i_crit_edge, label %land.lhs.true6.i.i.if.end30.i_crit_edge

land.lhs.true6.i.i.if.end30.i_crit_edge:          ; preds = %land.lhs.true6.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end30.i

land.lhs.true6.i.i.if.then.i64.i_crit_edge:       ; preds = %land.lhs.true6.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i64.i

if.then.i64.i:                                    ; preds = %land.lhs.true6.i.i.if.then.i64.i_crit_edge, %land.lhs.true.i.i.if.then.i64.i_crit_edge, %lor.lhs.false.i.i.if.then.i64.i_crit_edge, %spi_nor_spimem_setup_op.exit.i.if.then.i64.i_crit_edge
  %57 = ptrtoint ptr %nbytes18.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %nbytes18.i, align 4
  %bouncebuf_size.i.i = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 5
  %59 = ptrtoint ptr %bouncebuf_size.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %bouncebuf_size.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %58, i32 %60)
  %cmp12.i.i = icmp ugt i32 %58, %60
  br i1 %cmp12.i.i, label %if.then13.i65.i, label %if.then.i64.i.if.then27.i_crit_edge

if.then.i64.i.if.then27.i_crit_edge:              ; preds = %if.then.i64.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then27.i

if.then13.i65.i:                                  ; preds = %if.then.i64.i
  call void @__sanitizer_cov_trace_pc() #17
  %61 = ptrtoint ptr %nbytes18.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %nbytes18.i, align 4
  br label %if.then27.i

if.then27.i:                                      ; preds = %if.then13.i65.i, %if.then.i64.i.if.then27.i_crit_edge
  %bouncebuf.i.i = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 4
  %62 = ptrtoint ptr %bouncebuf.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %bouncebuf.i.i, align 4
  %64 = ptrtoint ptr %buf19.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %63, ptr %buf19.i, align 8
  %65 = ptrtoint ptr %nbytes18.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %nbytes18.i, align 4
  %67 = call ptr @memcpy(ptr %63, ptr %buf, i32 %66)
  br label %if.end30.i

if.end30.i:                                       ; preds = %if.then27.i, %land.lhs.true6.i.i.if.end30.i_crit_edge
  %wdesc.i = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 22, i32 1
  %68 = ptrtoint ptr %wdesc.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %wdesc.i, align 4
  %tobool31.not.i = icmp eq ptr %69, null
  br i1 %tobool31.not.i, label %if.else.i, label %if.then32.i

if.then32.i:                                      ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #17
  %70 = ptrtoint ptr %val.i to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %val.i, align 8
  %72 = ptrtoint ptr %nbytes18.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %nbytes18.i, align 4
  %74 = ptrtoint ptr %buf19.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %buf19.i, align 8
  %call41.i = tail call i32 @spi_mem_dirmap_write(ptr noundef nonnull %69, i64 noundef %71, i32 noundef %73, ptr noundef %75) #15
  br label %spi_nor_spimem_write_data.exit

if.else.i:                                        ; preds = %if.end30.i
  %76 = ptrtoint ptr %spimem to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %spimem, align 8
  %call.i.i = call i32 @spi_mem_adjust_op_size(ptr noundef %77, ptr noundef nonnull %op.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i67.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i67.i, label %spi_nor_spimem_exec_op.exit.i, label %if.else.i.spi_nor_spimem_write_data.exit_crit_edge

if.else.i.spi_nor_spimem_write_data.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %spi_nor_spimem_write_data.exit

spi_nor_spimem_exec_op.exit.i:                    ; preds = %if.else.i
  %78 = ptrtoint ptr %spimem to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %spimem, align 8
  %call2.i.i = call i32 @spi_mem_exec_op(ptr noundef %79, ptr noundef nonnull %op.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool43.not.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool43.not.i, label %if.end45.i, label %spi_nor_spimem_exec_op.exit.i.spi_nor_spimem_write_data.exit_crit_edge

spi_nor_spimem_exec_op.exit.i.spi_nor_spimem_write_data.exit_crit_edge: ; preds = %spi_nor_spimem_exec_op.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %spi_nor_spimem_write_data.exit

if.end45.i:                                       ; preds = %spi_nor_spimem_exec_op.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  %80 = ptrtoint ptr %nbytes18.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %nbytes18.i, align 4
  br label %spi_nor_spimem_write_data.exit

spi_nor_spimem_write_data.exit:                   ; preds = %if.end45.i, %spi_nor_spimem_exec_op.exit.i.spi_nor_spimem_write_data.exit_crit_edge, %if.else.i.spi_nor_spimem_write_data.exit_crit_edge, %if.then32.i
  %retval.0.i = phi i32 [ %call2.i.i, %spi_nor_spimem_exec_op.exit.i.spi_nor_spimem_write_data.exit_crit_edge ], [ %call41.i, %if.then32.i ], [ %81, %if.end45.i ], [ %call.i.i, %if.else.i.spi_nor_spimem_write_data.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %op.i) #15
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %controller_ops = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 20
  %82 = ptrtoint ptr %controller_ops to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %controller_ops, align 8
  %write = getelementptr inbounds %struct.spi_nor_controller_ops, ptr %83, i32 0, i32 5
  %84 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %write, align 4
  %call1 = tail call i32 %85(ptr noundef %nor, i64 noundef %to, i32 noundef %len, ptr noundef %buf) #15
  br label %return

return:                                           ; preds = %if.end, %spi_nor_spimem_write_data.exit
  %retval.0 = phi i32 [ %retval.0.i, %spi_nor_spimem_write_data.exit ], [ %call1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @spi_nor_write_enable(ptr noundef %nor) local_unnamed_addr #0 align 64 {
entry:
  %op = alloca %struct.spi_mem_op, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %spimem = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 3
  %0 = ptrtoint ptr %spimem to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spimem, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.else, label %if.end.i

if.end.i:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %op) #15
  %2 = call ptr @memset(ptr %op, i32 0, i32 48)
  %3 = ptrtoint ptr %op to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %op, align 8
  %4 = getelementptr inbounds { i8, i8, i8, [1 x i8], i16 }, ptr %op, i32 0, i32 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 6, ptr %4, align 4
  %reg_proto = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 15
  %6 = ptrtoint ptr %reg_proto to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %reg_proto, align 4
  %and.i.i = lshr i32 %7, 16
  %conv.i.i = trunc i32 %and.i.i to i8
  %buswidth.i = getelementptr inbounds %struct.anon.71, ptr %op, i32 0, i32 1
  %8 = ptrtoint ptr %buswidth.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv.i.i, ptr %buswidth.i, align 1
  %dummy.i = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 2
  %9 = ptrtoint ptr %dummy.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %dummy.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool5.not.i = icmp eq i8 %10, 0
  br i1 %tobool5.not.i, label %if.end.i.if.end10.i_crit_edge, label %if.then6.i

if.end.i.if.end10.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end10.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %and.i70.i = lshr i32 %7, 8
  %conv.i71.i = trunc i32 %and.i70.i to i8
  %buswidth9.i = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 2, i32 1
  %11 = ptrtoint ptr %buswidth9.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv.i71.i, ptr %buswidth9.i, align 1
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then6.i, %if.end.i.if.end10.i_crit_edge
  %nbytes11.i = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 3
  %12 = ptrtoint ptr %nbytes11.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nbytes11.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool12.not.i = icmp eq i32 %13, 0
  br i1 %tobool12.not.i, label %if.end10.i.if.end17.i_crit_edge, label %if.then13.i

if.end10.i.if.end17.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end17.i

if.then13.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #17
  %data.i = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3
  %conv.i72.i = trunc i32 %7 to i8
  %14 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv.i72.i, ptr %data.i, align 4
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.then13.i, %if.end10.i.if.end17.i_crit_edge
  %and.i73.i = and i32 %7, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i73.i)
  %tobool.i.not.i = icmp eq i32 %and.i73.i, 0
  br i1 %tobool.i.not.i, label %if.end17.i.spi_nor_spimem_setup_op.exit_crit_edge, label %if.then19.i

if.end17.i.spi_nor_spimem_setup_op.exit_crit_edge: ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %spi_nor_spimem_setup_op.exit

if.then19.i:                                      ; preds = %if.end17.i
  %dtr.i = getelementptr inbounds %struct.anon.71, ptr %op, i32 0, i32 2
  %15 = ptrtoint ptr %dtr.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load.i = load i8, ptr %dtr.i, align 2
  %bf.set.i = or i8 %bf.load.i, -128
  store i8 %bf.set.i, ptr %dtr.i, align 2
  %dtr22.i = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1, i32 2
  %16 = ptrtoint ptr %dtr22.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load23.i = load i8, ptr %dtr22.i, align 2
  %bf.set25.i = or i8 %bf.load23.i, -128
  store i8 %bf.set25.i, ptr %dtr22.i, align 2
  %dtr27.i = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 2, i32 2
  %17 = ptrtoint ptr %dtr27.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load28.i = load i8, ptr %dtr27.i, align 2
  %bf.set30.i = or i8 %bf.load28.i, -128
  store i8 %bf.set30.i, ptr %dtr27.i, align 2
  %dtr32.i = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 1
  %18 = ptrtoint ptr %dtr32.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load33.i = load i8, ptr %dtr32.i, align 1
  %bf.set35.i = or i8 %bf.load33.i, -128
  store i8 %bf.set35.i, ptr %dtr32.i, align 1
  %mul.i = shl i8 %10, 1
  %19 = ptrtoint ptr %dummy.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %mul.i, ptr %dummy.i, align 8
  %cmd_ext_type.i.i = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 18
  %20 = ptrtoint ptr %cmd_ext_type.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cmd_ext_type.i.i, align 8
  %22 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.111)
  switch i32 %21, label %do.end.i.i [
    i32 2, label %sw.bb.i.i
    i32 1, label %sw.bb2.i.i
  ]

sw.bb.i.i:                                        ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #17
  %23 = ptrtoint ptr %4 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %4, align 4
  %conv.i74.i = trunc i16 %24 to i8
  %neg.i.i = xor i8 %conv.i74.i, -1
  br label %spi_nor_get_cmd_ext.exit.i

sw.bb2.i.i:                                       ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #17
  %25 = ptrtoint ptr %4 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %4, align 4
  %conv5.i.i = trunc i16 %26 to i8
  br label %spi_nor_get_cmd_ext.exit.i

do.end.i.i:                                       ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #17
  %dev.i.i = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 2
  %27 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.32) #18
  br label %spi_nor_get_cmd_ext.exit.i

spi_nor_get_cmd_ext.exit.i:                       ; preds = %do.end.i.i, %sw.bb2.i.i, %sw.bb.i.i
  %retval.0.i.i = phi i8 [ 0, %do.end.i.i ], [ %conv5.i.i, %sw.bb2.i.i ], [ %neg.i.i, %sw.bb.i.i ]
  %29 = ptrtoint ptr %4 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %4, align 4
  %shl.i = shl i16 %30, 8
  %conv42.i = zext i8 %retval.0.i.i to i16
  %or.i = or i16 %shl.i, %conv42.i
  store i16 %or.i, ptr %4, align 4
  %31 = ptrtoint ptr %op to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 2, ptr %op, align 8
  br label %spi_nor_spimem_setup_op.exit

spi_nor_spimem_setup_op.exit:                     ; preds = %spi_nor_get_cmd_ext.exit.i, %if.end17.i.spi_nor_spimem_setup_op.exit_crit_edge
  %32 = ptrtoint ptr %spimem to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %spimem, align 8
  %call = call i32 @spi_mem_exec_op(ptr noundef %33, ptr noundef nonnull %op) #15
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %op) #15
  br label %if.end

if.else:                                          ; preds = %entry
  %reg_proto.i = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 15
  %34 = ptrtoint ptr %reg_proto.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %reg_proto.i, align 4
  %and.i.i19 = and i32 %35, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i19)
  %tobool.i.not.i20 = icmp eq i32 %and.i.i19, 0
  br i1 %tobool.i.not.i20, label %if.end.i21, label %if.else.do.body_crit_edge

if.else.do.body_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body

if.end.i21:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  %controller_ops.i = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 20
  %36 = ptrtoint ptr %controller_ops.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %controller_ops.i, align 8
  %write_reg.i = getelementptr inbounds %struct.spi_nor_controller_ops, ptr %37, i32 0, i32 3
  %38 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %write_reg.i, align 4
  %call1.i = tail call i32 %39(ptr noundef %nor, i8 noundef zeroext 6, ptr noundef null, i32 noundef 0) #15
  br label %if.end

if.end:                                           ; preds = %if.end.i21, %spi_nor_spimem_setup_op.exit
  %ret.0 = phi i32 [ %call, %spi_nor_spimem_setup_op.exit ], [ %call1.i, %if.end.i21 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool3.not = icmp eq i32 %ret.0, 0
  br i1 %tobool3.not, label %if.end.if.end11_crit_edge, label %if.end.do.body_crit_edge

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end11

do.body:                                          ; preds = %if.end.do.body_crit_edge, %if.else.do.body_crit_edge
  %ret.025 = phi i32 [ %ret.0, %if.end.do.body_crit_edge ], [ -95, %if.else.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @spi_nor_write_enable.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@spi_nor_write_enable, %if.then9)) #15
          to label %if.end11 [label %if.then9], !srcloc !272

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  %dev = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 2
  %40 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @spi_nor_write_enable.__UNIQUE_ID_ddebug236, ptr noundef %41, ptr noundef nonnull @.str.3, i32 noundef %ret.025) #15
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %do.body, %if.end.if.end11_crit_edge
  %ret.026 = phi i32 [ %ret.025, %if.then9 ], [ 0, %if.end.if.end11_crit_edge ], [ %ret.025, %do.body ]
  ret i32 %ret.026
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_mem_exec_op(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @spi_nor_write_disable(ptr noundef %nor) local_unnamed_addr #0 align 64 {
entry:
  %op = alloca %struct.spi_mem_op, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %spimem = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 3
  %0 = ptrtoint ptr %spimem to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spimem, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.else, label %if.end.i

if.end.i:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %op) #15
  %2 = call ptr @memset(ptr %op, i32 0, i32 48)
  %3 = ptrtoint ptr %op to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %op, align 8
  %4 = getelementptr inbounds { i8, i8, i8, [1 x i8], i16 }, ptr %op, i32 0, i32 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 4, ptr %4, align 4
  %reg_proto = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 15
  %6 = ptrtoint ptr %reg_proto to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %reg_proto, align 4
  %and.i.i = lshr i32 %7, 16
  %conv.i.i = trunc i32 %and.i.i to i8
  %buswidth.i = getelementptr inbounds %struct.anon.71, ptr %op, i32 0, i32 1
  %8 = ptrtoint ptr %buswidth.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv.i.i, ptr %buswidth.i, align 1
  %dummy.i = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 2
  %9 = ptrtoint ptr %dummy.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %dummy.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool5.not.i = icmp eq i8 %10, 0
  br i1 %tobool5.not.i, label %if.end.i.if.end10.i_crit_edge, label %if.then6.i

if.end.i.if.end10.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end10.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %and.i70.i = lshr i32 %7, 8
  %conv.i71.i = trunc i32 %and.i70.i to i8
  %buswidth9.i = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 2, i32 1
  %11 = ptrtoint ptr %buswidth9.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv.i71.i, ptr %buswidth9.i, align 1
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then6.i, %if.end.i.if.end10.i_crit_edge
  %nbytes11.i = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 3
  %12 = ptrtoint ptr %nbytes11.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nbytes11.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool12.not.i = icmp eq i32 %13, 0
  br i1 %tobool12.not.i, label %if.end10.i.if.end17.i_crit_edge, label %if.then13.i

if.end10.i.if.end17.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end17.i

if.then13.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #17
  %data.i = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3
  %conv.i72.i = trunc i32 %7 to i8
  %14 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv.i72.i, ptr %data.i, align 4
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.then13.i, %if.end10.i.if.end17.i_crit_edge
  %and.i73.i = and i32 %7, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i73.i)
  %tobool.i.not.i = icmp eq i32 %and.i73.i, 0
  br i1 %tobool.i.not.i, label %if.end17.i.spi_nor_spimem_setup_op.exit_crit_edge, label %if.then19.i

if.end17.i.spi_nor_spimem_setup_op.exit_crit_edge: ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %spi_nor_spimem_setup_op.exit

if.then19.i:                                      ; preds = %if.end17.i
  %dtr.i = getelementptr inbounds %struct.anon.71, ptr %op, i32 0, i32 2
  %15 = ptrtoint ptr %dtr.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load.i = load i8, ptr %dtr.i, align 2
  %bf.set.i = or i8 %bf.load.i, -128
  store i8 %bf.set.i, ptr %dtr.i, align 2
  %dtr22.i = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1, i32 2
  %16 = ptrtoint ptr %dtr22.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load23.i = load i8, ptr %dtr22.i, align 2
  %bf.set25.i = or i8 %bf.load23.i, -128
  store i8 %bf.set25.i, ptr %dtr22.i, align 2
  %dtr27.i = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 2, i32 2
  %17 = ptrtoint ptr %dtr27.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load28.i = load i8, ptr %dtr27.i, align 2
  %bf.set30.i = or i8 %bf.load28.i, -128
  store i8 %bf.set30.i, ptr %dtr27.i, align 2
  %dtr32.i = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 1
  %18 = ptrtoint ptr %dtr32.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load33.i = load i8, ptr %dtr32.i, align 1
  %bf.set35.i = or i8 %bf.load33.i, -128
  store i8 %bf.set35.i, ptr %dtr32.i, align 1
  %mul.i = shl i8 %10, 1
  %19 = ptrtoint ptr %dummy.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %mul.i, ptr %dummy.i, align 8
  %cmd_ext_type.i.i = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 18
  %20 = ptrtoint ptr %cmd_ext_type.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cmd_ext_type.i.i, align 8
  %22 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.112)
  switch i32 %21, label %do.end.i.i [
    i32 2, label %sw.bb.i.i
    i32 1, label %sw.bb2.i.i
  ]

sw.bb.i.i:                                        ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #17
  %23 = ptrtoint ptr %4 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %4, align 4
  %conv.i74.i = trunc i16 %24 to i8
  %neg.i.i = xor i8 %conv.i74.i, -1
  br label %spi_nor_get_cmd_ext.exit.i

sw.bb2.i.i:                                       ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #17
  %25 = ptrtoint ptr %4 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %4, align 4
  %conv5.i.i = trunc i16 %26 to i8
  br label %spi_nor_get_cmd_ext.exit.i

do.end.i.i:                                       ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #17
  %dev.i.i = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 2
  %27 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.32) #18
  br label %spi_nor_get_cmd_ext.exit.i

spi_nor_get_cmd_ext.exit.i:                       ; preds = %do.end.i.i, %sw.bb2.i.i, %sw.bb.i.i
  %retval.0.i.i = phi i8 [ 0, %do.end.i.i ], [ %conv5.i.i, %sw.bb2.i.i ], [ %neg.i.i, %sw.bb.i.i ]
  %29 = ptrtoint ptr %4 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %4, align 4
  %shl.i = shl i16 %30, 8
  %conv42.i = zext i8 %retval.0.i.i to i16
  %or.i = or i16 %shl.i, %conv42.i
  store i16 %or.i, ptr %4, align 4
  %31 = ptrtoint ptr %op to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 2, ptr %op, align 8
  br label %spi_nor_spimem_setup_op.exit

spi_nor_spimem_setup_op.exit:                     ; preds = %spi_nor_get_cmd_ext.exit.i, %if.end17.i.spi_nor_spimem_setup_op.exit_crit_edge
  %32 = ptrtoint ptr %spimem to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %spimem, align 8
  %call = call i32 @spi_mem_exec_op(ptr noundef %33, ptr noundef nonnull %op) #15
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %op) #15
  br label %if.end

if.else:                                          ; preds = %entry
  %reg_proto.i = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 15
  %34 = ptrtoint ptr %reg_proto.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %reg_proto.i, align 4
  %and.i.i19 = and i32 %35, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i19)
  %tobool.i.not.i20 = icmp eq i32 %and.i.i19, 0
  br i1 %tobool.i.not.i20, label %if.end.i21, label %if.else.do.body_crit_edge

if.else.do.body_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body

if.end.i21:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  %controller_ops.i = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 20
  %36 = ptrtoint ptr %controller_ops.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %controller_ops.i, align 8
  %write_reg.i = getelementptr inbounds %struct.spi_nor_controller_ops, ptr %37, i32 0, i32 3
  %38 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %write_reg.i, align 4
  %call1.i = tail call i32 %39(ptr noundef %nor, i8 noundef zeroext 4, ptr noundef null, i32 noundef 0) #15
  br label %if.end

if.end:                                           ; preds = %if.end.i21, %spi_nor_spimem_setup_op.exit
  %ret.0 = phi i32 [ %call, %spi_nor_spimem_setup_op.exit ], [ %call1.i, %if.end.i21 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool3.not = icmp eq i32 %ret.0, 0
  br i1 %tobool3.not, label %if.end.if.end11_crit_edge, label %if.end.do.body_crit_edge

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end11

do.body:                                          ; preds = %if.end.do.body_crit_edge, %if.else.do.body_crit_edge
  %ret.025 = phi i32 [ %ret.0, %if.end.do.body_crit_edge ], [ -95, %if.else.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @spi_nor_write_disable.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@spi_nor_write_disable, %if.then9)) #15
          to label %if.end11 [label %if.then9], !srcloc !272

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  %dev = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 2
  %40 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @spi_nor_write_disable.__UNIQUE_ID_ddebug237, ptr noundef %41, ptr noundef nonnull @.str.5, i32 noundef %ret.025) #15
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %do.body, %if.end.if.end11_crit_edge
  %ret.026 = phi i32 [ %ret.025, %if.then9 ], [ 0, %if.end.if.end11_crit_edge ], [ %ret.025, %do.body ]
  ret i32 %ret.026
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @spi_nor_read_sr(ptr noundef %nor, ptr noundef %sr) local_unnamed_addr #0 align 64 {
entry:
  %op = alloca %struct.spi_mem_op, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %spimem = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 3
  %0 = ptrtoint ptr %spimem to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spimem, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %op) #15
  %2 = call ptr @memset(ptr %op, i32 255, i32 48)
  %3 = ptrtoint ptr %op to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %op, align 8
  %buswidth = getelementptr inbounds %struct.anon.71, ptr %op, i32 0, i32 1
  %4 = ptrtoint ptr %buswidth to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %buswidth, align 1
  %dtr = getelementptr inbounds %struct.anon.71, ptr %op, i32 0, i32 2
  %5 = ptrtoint ptr %dtr to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 127, ptr %dtr, align 2
  %opcode = getelementptr inbounds %struct.anon.71, ptr %op, i32 0, i32 3
  %6 = ptrtoint ptr %opcode to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 5, ptr %opcode, align 4
  %addr = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1
  %7 = ptrtoint ptr %addr to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %addr, align 8
  %buswidth2 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %buswidth2 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %buswidth2, align 1
  %dtr3 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1, i32 2
  %9 = ptrtoint ptr %dtr3 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 127, ptr %dtr3, align 2
  %val = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1, i32 3
  %10 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 0, ptr %val, align 8
  %dummy = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 2
  %11 = ptrtoint ptr %dummy to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %dummy, align 8
  %buswidth8 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 2, i32 1
  %12 = ptrtoint ptr %buswidth8 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %buswidth8, align 1
  %dtr9 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 2, i32 2
  %13 = ptrtoint ptr %dtr9 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 127, ptr %dtr9, align 2
  %data = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3
  %14 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %data, align 4
  %dtr14 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 1
  %15 = ptrtoint ptr %dtr14 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 127, ptr %dtr14, align 1
  %dir = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 2
  %16 = ptrtoint ptr %dir to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %dir, align 8
  %nbytes18 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 3
  %17 = ptrtoint ptr %nbytes18 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %nbytes18, align 4
  %buf = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 4
  %18 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %sr, ptr %buf, align 8
  %reg_proto = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 15
  %19 = ptrtoint ptr %reg_proto to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %reg_proto, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17303560, i32 %20)
  %cmp = icmp eq i32 %20, 17303560
  br i1 %cmp, label %if.then19, label %if.endthread-pre-split

if.then19:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %params = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 21
  %21 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %params, align 4
  %rdsr_addr_nbytes = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %22, i32 0, i32 4
  %23 = ptrtoint ptr %rdsr_addr_nbytes to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %rdsr_addr_nbytes, align 1
  %25 = ptrtoint ptr %addr to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %addr, align 8
  %rdsr_dummy = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %22, i32 0, i32 3
  %26 = ptrtoint ptr %rdsr_dummy to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %rdsr_dummy, align 8
  %28 = ptrtoint ptr %dummy to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %dummy, align 8
  %29 = ptrtoint ptr %nbytes18 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 2, ptr %nbytes18, align 4
  br label %if.end

if.endthread-pre-split:                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %30 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %30)
  %.pr = load i8, ptr %addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.endthread-pre-split, %if.then19
  %31 = phi i8 [ %.pr, %if.endthread-pre-split ], [ %24, %if.then19 ]
  %and.i.i = lshr i32 %20, 16
  %conv.i.i = trunc i32 %and.i.i to i8
  %32 = ptrtoint ptr %buswidth to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv.i.i, ptr %buswidth, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool.not.i = icmp eq i8 %31, 0
  br i1 %tobool.not.i, label %if.end.if.end.i_crit_edge, label %if.then.i

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %and.i68.i = lshr i32 %20, 8
  %conv.i69.i = trunc i32 %and.i68.i to i8
  %33 = ptrtoint ptr %buswidth2 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv.i69.i, ptr %buswidth2, align 1
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end.if.end.i_crit_edge
  %34 = ptrtoint ptr %dummy to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %dummy, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool5.not.i = icmp eq i8 %35, 0
  br i1 %tobool5.not.i, label %if.end.i.if.end10.i_crit_edge, label %if.then6.i

if.end.i.if.end10.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end10.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %and.i70.i = lshr i32 %20, 8
  %conv.i71.i = trunc i32 %and.i70.i to i8
  %36 = ptrtoint ptr %buswidth8 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv.i71.i, ptr %buswidth8, align 1
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then6.i, %if.end.i.if.end10.i_crit_edge
  %37 = ptrtoint ptr %nbytes18 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %nbytes18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool12.not.i = icmp eq i32 %38, 0
  br i1 %tobool12.not.i, label %if.end10.i.if.end17.i_crit_edge, label %if.then13.i

if.end10.i.if.end17.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end17.i

if.then13.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #17
  %conv.i72.i = trunc i32 %20 to i8
  %39 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv.i72.i, ptr %data, align 4
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.then13.i, %if.end10.i.if.end17.i_crit_edge
  %and.i73.i = and i32 %20, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i73.i)
  %tobool.i.not.i = icmp eq i32 %and.i73.i, 0
  br i1 %tobool.i.not.i, label %if.end17.i.spi_nor_spimem_setup_op.exit_crit_edge, label %if.then19.i

if.end17.i.spi_nor_spimem_setup_op.exit_crit_edge: ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %spi_nor_spimem_setup_op.exit

if.then19.i:                                      ; preds = %if.end17.i
  %40 = ptrtoint ptr %dtr to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 -1, ptr %dtr, align 2
  %41 = ptrtoint ptr %dtr3 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 -1, ptr %dtr3, align 2
  %42 = ptrtoint ptr %dtr9 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 -1, ptr %dtr9, align 2
  %43 = ptrtoint ptr %dtr14 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 -1, ptr %dtr14, align 1
  %mul.i = shl i8 %35, 1
  %44 = ptrtoint ptr %dummy to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %mul.i, ptr %dummy, align 8
  %cmd_ext_type.i.i = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 18
  %45 = ptrtoint ptr %cmd_ext_type.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %cmd_ext_type.i.i, align 8
  %47 = zext i32 %46 to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values.113)
  switch i32 %46, label %do.end.i.i [
    i32 2, label %if.then19.i.spi_nor_get_cmd_ext.exit.i_crit_edge
    i32 1, label %sw.bb2.i.i
  ]

if.then19.i.spi_nor_get_cmd_ext.exit.i_crit_edge: ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %spi_nor_get_cmd_ext.exit.i

sw.bb2.i.i:                                       ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %spi_nor_get_cmd_ext.exit.i

do.end.i.i:                                       ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #17
  %dev.i.i = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 2
  %48 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %49, ptr noundef nonnull @.str.32) #18
  br label %spi_nor_get_cmd_ext.exit.i

spi_nor_get_cmd_ext.exit.i:                       ; preds = %do.end.i.i, %sw.bb2.i.i, %if.then19.i.spi_nor_get_cmd_ext.exit.i_crit_edge
  %retval.0.i.i = phi i8 [ 0, %do.end.i.i ], [ 5, %sw.bb2.i.i ], [ -6, %if.then19.i.spi_nor_get_cmd_ext.exit.i_crit_edge ]
  %50 = ptrtoint ptr %opcode to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %opcode, align 4
  %shl.i = shl i16 %51, 8
  %conv42.i = zext i8 %retval.0.i.i to i16
  %or.i = or i16 %shl.i, %conv42.i
  store i16 %or.i, ptr %opcode, align 4
  %52 = ptrtoint ptr %op to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 2, ptr %op, align 8
  br label %spi_nor_spimem_setup_op.exit

spi_nor_spimem_setup_op.exit:                     ; preds = %spi_nor_get_cmd_ext.exit.i, %if.end17.i.spi_nor_spimem_setup_op.exit_crit_edge
  %53 = ptrtoint ptr %spimem to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %spimem, align 8
  %call = call i32 @spi_mem_exec_op(ptr noundef %54, ptr noundef nonnull %op) #15
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %op) #15
  br label %if.end30

if.else:                                          ; preds = %entry
  %reg_proto.i = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 15
  %55 = ptrtoint ptr %reg_proto.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %reg_proto.i, align 4
  %and.i.i51 = and i32 %56, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i51)
  %tobool.i.not.i52 = icmp eq i32 %and.i.i51, 0
  br i1 %tobool.i.not.i52, label %if.end.i53, label %if.else.do.body_crit_edge

if.else.do.body_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body

if.end.i53:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  %controller_ops.i = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 20
  %57 = ptrtoint ptr %controller_ops.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %controller_ops.i, align 8
  %read_reg.i = getelementptr inbounds %struct.spi_nor_controller_ops, ptr %58, i32 0, i32 2
  %59 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %read_reg.i, align 4
  %call1.i = tail call i32 %60(ptr noundef %nor, i8 noundef zeroext 5, ptr noundef %sr, i32 noundef 1) #15
  br label %if.end30

if.end30:                                         ; preds = %if.end.i53, %spi_nor_spimem_setup_op.exit
  %ret.0 = phi i32 [ %call, %spi_nor_spimem_setup_op.exit ], [ %call1.i, %if.end.i53 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool31.not = icmp eq i32 %ret.0, 0
  br i1 %tobool31.not, label %if.end30.if.end39_crit_edge, label %if.end30.do.body_crit_edge

if.end30.do.body_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body

if.end30.if.end39_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end39

do.body:                                          ; preds = %if.end30.do.body_crit_edge, %if.else.do.body_crit_edge
  %ret.057 = phi i32 [ %ret.0, %if.end30.do.body_crit_edge ], [ -95, %if.else.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @spi_nor_read_sr.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@spi_nor_read_sr, %if.then37)) #15
          to label %if.end39 [label %if.then37], !srcloc !272

if.then37:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  %dev = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 2
  %61 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @spi_nor_read_sr.__UNIQUE_ID_ddebug238, ptr noundef %62, ptr noundef nonnull @.str.7, i32 noundef %ret.057) #15
  br label %if.end39

if.end39:                                         ; preds = %if.then37, %do.body, %if.end30.if.end39_crit_edge
  %ret.058 = phi i32 [ %ret.057, %if.then37 ], [ 0, %if.end30.if.end39_crit_edge ], [ %ret.057, %do.body ]
  ret i32 %ret.058
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @spi_nor_read_cr(ptr noundef %nor, ptr noundef %cr) local_unnamed_addr #0 align 64 {
entry:
  %op = alloca %struct.spi_mem_op, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %spimem = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 3
  %0 = ptrtoint ptr %spimem to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spimem, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.else, label %if.end17.i

if.end17.i:                                       ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %op) #15
  %2 = call ptr @memset(ptr %op, i32 255, i32 48)
  %3 = ptrtoint ptr %op to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %op, align 8
  %buswidth = getelementptr inbounds %struct.anon.71, ptr %op, i32 0, i32 1
  %dtr = getelementptr inbounds %struct.anon.71, ptr %op, i32 0, i32 2
  %4 = ptrtoint ptr %dtr to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 127, ptr %dtr, align 2
  %opcode = getelementptr inbounds %struct.anon.71, ptr %op, i32 0, i32 3
  %5 = ptrtoint ptr %opcode to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 53, ptr %opcode, align 4
  %addr = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1
  %6 = ptrtoint ptr %addr to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %addr, align 8
  %buswidth2 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %buswidth2 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %buswidth2, align 1
  %dtr3 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1, i32 2
  %8 = ptrtoint ptr %dtr3 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 127, ptr %dtr3, align 2
  %val = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1, i32 3
  %9 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 0, ptr %val, align 8
  %dummy = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 2
  %10 = ptrtoint ptr %dummy to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %dummy, align 8
  %buswidth8 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 2, i32 1
  %11 = ptrtoint ptr %buswidth8 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %buswidth8, align 1
  %dtr9 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 2, i32 2
  %12 = ptrtoint ptr %dtr9 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 127, ptr %dtr9, align 2
  %data = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3
  %dtr14 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 1
  %13 = ptrtoint ptr %dtr14 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 127, ptr %dtr14, align 1
  %dir = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 2
  %14 = ptrtoint ptr %dir to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %dir, align 8
  %nbytes18 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 3
  %15 = ptrtoint ptr %nbytes18 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %nbytes18, align 4
  %buf = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 4
  %16 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %cr, ptr %buf, align 8
  %reg_proto = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 15
  %17 = ptrtoint ptr %reg_proto to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %reg_proto, align 4
  %and.i.i = lshr i32 %18, 16
  %conv.i.i = trunc i32 %and.i.i to i8
  %19 = ptrtoint ptr %buswidth to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv.i.i, ptr %buswidth, align 1
  %conv.i72.i = trunc i32 %18 to i8
  %20 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv.i72.i, ptr %data, align 4
  %and.i73.i = and i32 %18, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i73.i)
  %tobool.i.not.i = icmp eq i32 %and.i73.i, 0
  br i1 %tobool.i.not.i, label %if.end17.i.spi_nor_spimem_setup_op.exit_crit_edge, label %if.then19.i

if.end17.i.spi_nor_spimem_setup_op.exit_crit_edge: ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %spi_nor_spimem_setup_op.exit

if.then19.i:                                      ; preds = %if.end17.i
  %21 = ptrtoint ptr %dtr to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 -1, ptr %dtr, align 2
  %22 = ptrtoint ptr %dtr3 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 -1, ptr %dtr3, align 2
  %23 = ptrtoint ptr %dtr9 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 -1, ptr %dtr9, align 2
  %24 = ptrtoint ptr %dtr14 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 -1, ptr %dtr14, align 1
  %cmd_ext_type.i.i = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 18
  %25 = ptrtoint ptr %cmd_ext_type.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cmd_ext_type.i.i, align 8
  %27 = zext i32 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.114)
  switch i32 %26, label %do.end.i.i [
    i32 2, label %if.then19.i.spi_nor_get_cmd_ext.exit.i_crit_edge
    i32 1, label %sw.bb2.i.i
  ]

if.then19.i.spi_nor_get_cmd_ext.exit.i_crit_edge: ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %spi_nor_get_cmd_ext.exit.i

sw.bb2.i.i:                                       ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %spi_nor_get_cmd_ext.exit.i

do.end.i.i:                                       ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #17
  %dev.i.i = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 2
  %28 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.32) #18
  br label %spi_nor_get_cmd_ext.exit.i

spi_nor_get_cmd_ext.exit.i:                       ; preds = %do.end.i.i, %sw.bb2.i.i, %if.then19.i.spi_nor_get_cmd_ext.exit.i_crit_edge
  %retval.0.i.i = phi i8 [ 0, %do.end.i.i ], [ 53, %sw.bb2.i.i ], [ -54, %if.then19.i.spi_nor_get_cmd_ext.exit.i_crit_edge ]
  %30 = ptrtoint ptr %opcode to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %opcode, align 4
  %shl.i = shl i16 %31, 8
  %conv42.i = zext i8 %retval.0.i.i to i16
  %or.i = or i16 %shl.i, %conv42.i
  store i16 %or.i, ptr %opcode, align 4
  %32 = ptrtoint ptr %op to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 2, ptr %op, align 8
  br label %spi_nor_spimem_setup_op.exit

spi_nor_spimem_setup_op.exit:                     ; preds = %spi_nor_get_cmd_ext.exit.i, %if.end17.i.spi_nor_spimem_setup_op.exit_crit_edge
  %33 = ptrtoint ptr %spimem to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %spimem, align 8
  %call = call i32 @spi_mem_exec_op(ptr noundef %34, ptr noundef nonnull %op) #15
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %op) #15
  br label %if.end

if.else:                                          ; preds = %entry
  %reg_proto.i = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 15
  %35 = ptrtoint ptr %reg_proto.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %reg_proto.i, align 4
  %and.i.i38 = and i32 %36, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i38)
  %tobool.i.not.i39 = icmp eq i32 %and.i.i38, 0
  br i1 %tobool.i.not.i39, label %if.end.i40, label %if.else.do.body_crit_edge

if.else.do.body_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body

if.end.i40:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  %controller_ops.i = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 20
  %37 = ptrtoint ptr %controller_ops.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %controller_ops.i, align 8
  %read_reg.i = getelementptr inbounds %struct.spi_nor_controller_ops, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %read_reg.i, align 4
  %call1.i = tail call i32 %40(ptr noundef %nor, i8 noundef zeroext 53, ptr noundef %cr, i32 noundef 1) #15
  br label %if.end

if.end:                                           ; preds = %if.end.i40, %spi_nor_spimem_setup_op.exit
  %ret.0 = phi i32 [ %call, %spi_nor_spimem_setup_op.exit ], [ %call1.i, %if.end.i40 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool21.not = icmp eq i32 %ret.0, 0
  br i1 %tobool21.not, label %if.end.if.end29_crit_edge, label %if.end.do.body_crit_edge

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body

if.end.if.end29_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end29

do.body:                                          ; preds = %if.end.do.body_crit_edge, %if.else.do.body_crit_edge
  %ret.044 = phi i32 [ %ret.0, %if.end.do.body_crit_edge ], [ -95, %if.else.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @spi_nor_read_cr.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@spi_nor_read_cr, %if.then27)) #15
          to label %if.end29 [label %if.then27], !srcloc !272

if.then27:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  %dev = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 2
  %41 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @spi_nor_read_cr.__UNIQUE_ID_ddebug240, ptr noundef %42, ptr noundef nonnull @.str.9, i32 noundef %ret.044) #15
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %do.body, %if.end.if.end29_crit_edge
  %ret.045 = phi i32 [ %ret.044, %if.then27 ], [ 0, %if.end.if.end29_crit_edge ], [ %ret.044, %do.body ]
  ret i32 %ret.045
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @spi_nor_set_4byte_addr_mode(ptr noundef %nor, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  %op = alloca %struct.spi_mem_op, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %spimem = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 3
  %0 = ptrtoint ptr %spimem to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spimem, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.else, label %if.end.i

if.end.i:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %op) #15
  %2 = call ptr @memset(ptr %op, i32 0, i32 48)
  %3 = ptrtoint ptr %op to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %op, align 8
  %opcode = getelementptr inbounds %struct.anon.71, ptr %op, i32 0, i32 3
  %conv = select i1 %enable, i16 183, i16 233
  %4 = ptrtoint ptr %opcode to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %conv, ptr %opcode, align 4
  %reg_proto = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 15
  %5 = ptrtoint ptr %reg_proto to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %reg_proto, align 4
  %and.i.i = lshr i32 %6, 16
  %conv.i.i = trunc i32 %and.i.i to i8
  %buswidth.i = getelementptr inbounds %struct.anon.71, ptr %op, i32 0, i32 1
  %7 = ptrtoint ptr %buswidth.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv.i.i, ptr %buswidth.i, align 1
  %dummy.i = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 2
  %8 = ptrtoint ptr %dummy.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %dummy.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool5.not.i = icmp eq i8 %9, 0
  br i1 %tobool5.not.i, label %if.end.i.if.end10.i_crit_edge, label %if.then6.i

if.end.i.if.end10.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end10.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %and.i70.i = lshr i32 %6, 8
  %conv.i71.i = trunc i32 %and.i70.i to i8
  %buswidth9.i = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 2, i32 1
  %10 = ptrtoint ptr %buswidth9.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv.i71.i, ptr %buswidth9.i, align 1
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then6.i, %if.end.i.if.end10.i_crit_edge
  %nbytes11.i = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 3
  %11 = ptrtoint ptr %nbytes11.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nbytes11.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool12.not.i = icmp eq i32 %12, 0
  br i1 %tobool12.not.i, label %if.end10.i.if.end17.i_crit_edge, label %if.then13.i

if.end10.i.if.end17.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end17.i

if.then13.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #17
  %data.i = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3
  %conv.i72.i = trunc i32 %6 to i8
  %13 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv.i72.i, ptr %data.i, align 4
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.then13.i, %if.end10.i.if.end17.i_crit_edge
  %and.i73.i = and i32 %6, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i73.i)
  %tobool.i.not.i = icmp eq i32 %and.i73.i, 0
  br i1 %tobool.i.not.i, label %if.end17.i.spi_nor_spimem_setup_op.exit_crit_edge, label %if.then19.i

if.end17.i.spi_nor_spimem_setup_op.exit_crit_edge: ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %spi_nor_spimem_setup_op.exit

if.then19.i:                                      ; preds = %if.end17.i
  %dtr.i = getelementptr inbounds %struct.anon.71, ptr %op, i32 0, i32 2
  %14 = ptrtoint ptr %dtr.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load.i = load i8, ptr %dtr.i, align 2
  %bf.set.i = or i8 %bf.load.i, -128
  store i8 %bf.set.i, ptr %dtr.i, align 2
  %dtr22.i = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1, i32 2
  %15 = ptrtoint ptr %dtr22.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load23.i = load i8, ptr %dtr22.i, align 2
  %bf.set25.i = or i8 %bf.load23.i, -128
  store i8 %bf.set25.i, ptr %dtr22.i, align 2
  %dtr27.i = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 2, i32 2
  %16 = ptrtoint ptr %dtr27.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load28.i = load i8, ptr %dtr27.i, align 2
  %bf.set30.i = or i8 %bf.load28.i, -128
  store i8 %bf.set30.i, ptr %dtr27.i, align 2
  %dtr32.i = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 1
  %17 = ptrtoint ptr %dtr32.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load33.i = load i8, ptr %dtr32.i, align 1
  %bf.set35.i = or i8 %bf.load33.i, -128
  store i8 %bf.set35.i, ptr %dtr32.i, align 1
  %mul.i = shl i8 %9, 1
  %18 = ptrtoint ptr %dummy.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %mul.i, ptr %dummy.i, align 8
  %cmd_ext_type.i.i = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 18
  %19 = ptrtoint ptr %cmd_ext_type.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cmd_ext_type.i.i, align 8
  %21 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.115)
  switch i32 %20, label %do.end.i.i [
    i32 2, label %sw.bb.i.i
    i32 1, label %sw.bb2.i.i
  ]

sw.bb.i.i:                                        ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #17
  %conv.i74.i = trunc i16 %conv to i8
  %neg.i.i = xor i8 %conv.i74.i, -1
  br label %spi_nor_get_cmd_ext.exit.i

sw.bb2.i.i:                                       ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #17
  %conv5.i.i = trunc i16 %conv to i8
  br label %spi_nor_get_cmd_ext.exit.i

do.end.i.i:                                       ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #17
  %dev.i.i = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 2
  %22 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.32) #18
  br label %spi_nor_get_cmd_ext.exit.i

spi_nor_get_cmd_ext.exit.i:                       ; preds = %do.end.i.i, %sw.bb2.i.i, %sw.bb.i.i
  %retval.0.i.i = phi i8 [ 0, %do.end.i.i ], [ %conv5.i.i, %sw.bb2.i.i ], [ %neg.i.i, %sw.bb.i.i ]
  %24 = ptrtoint ptr %opcode to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %opcode, align 4
  %shl.i = shl i16 %25, 8
  %conv42.i = zext i8 %retval.0.i.i to i16
  %or.i = or i16 %shl.i, %conv42.i
  store i16 %or.i, ptr %opcode, align 4
  %26 = ptrtoint ptr %op to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 2, ptr %op, align 8
  br label %spi_nor_spimem_setup_op.exit

spi_nor_spimem_setup_op.exit:                     ; preds = %spi_nor_get_cmd_ext.exit.i, %if.end17.i.spi_nor_spimem_setup_op.exit_crit_edge
  %27 = ptrtoint ptr %spimem to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %spimem, align 8
  %call = call i32 @spi_mem_exec_op(ptr noundef %28, ptr noundef nonnull %op) #15
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %op) #15
  br label %if.end

if.else:                                          ; preds = %entry
  %reg_proto.i = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 15
  %29 = ptrtoint ptr %reg_proto.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %reg_proto.i, align 4
  %and.i.i32 = and i32 %30, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i32)
  %tobool.i.not.i33 = icmp eq i32 %and.i.i32, 0
  br i1 %tobool.i.not.i33, label %if.end.i34, label %if.else.do.body_crit_edge

if.else.do.body_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body

if.end.i34:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  %conv12 = select i1 %enable, i8 -73, i8 -23
  %controller_ops.i = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 20
  %31 = ptrtoint ptr %controller_ops.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %controller_ops.i, align 8
  %write_reg.i = getelementptr inbounds %struct.spi_nor_controller_ops, ptr %32, i32 0, i32 3
  %33 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %write_reg.i, align 4
  %call1.i = tail call i32 %34(ptr noundef %nor, i8 noundef zeroext %conv12, ptr noundef null, i32 noundef 0) #15
  br label %if.end

if.end:                                           ; preds = %if.end.i34, %spi_nor_spimem_setup_op.exit
  %ret.0 = phi i32 [ %call, %spi_nor_spimem_setup_op.exit ], [ %call1.i, %if.end.i34 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool14.not = icmp eq i32 %ret.0, 0
  br i1 %tobool14.not, label %if.end.if.end23_crit_edge, label %if.end.do.body_crit_edge

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body

if.end.if.end23_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end23

do.body:                                          ; preds = %if.end.do.body_crit_edge, %if.else.do.body_crit_edge
  %ret.038 = phi i32 [ %ret.0, %if.end.do.body_crit_edge ], [ -95, %if.else.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @spi_nor_set_4byte_addr_mode.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@spi_nor_set_4byte_addr_mode, %if.then21)) #15
          to label %if.end23 [label %if.then21], !srcloc !272

if.then21:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  %dev = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 2
  %35 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @spi_nor_set_4byte_addr_mode.__UNIQUE_ID_ddebug241, ptr noundef %36, ptr noundef nonnull @.str.11, i32 noundef %ret.038) #15
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %do.body, %if.end.if.end23_crit_edge
  %ret.039 = phi i32 [ %ret.038, %if.then21 ], [ 0, %if.end.if.end23_crit_edge ], [ %ret.038, %do.body ]
  ret i32 %ret.039
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @spi_nor_write_ear(ptr noundef %nor, i8 noundef zeroext %ear) local_unnamed_addr #0 align 64 {
entry:
  %op = alloca %struct.spi_mem_op, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %bouncebuf = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 4
  %0 = ptrtoint ptr %bouncebuf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bouncebuf, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %ear, ptr %1, align 1
  %spimem = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 3
  %3 = ptrtoint ptr %spimem to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %spimem, align 8
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %if.else, label %if.end17.i

if.end17.i:                                       ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %op) #15
  %5 = call ptr @memset(ptr %op, i32 255, i32 48)
  %6 = ptrtoint ptr %op to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %op, align 8
  %buswidth = getelementptr inbounds %struct.anon.71, ptr %op, i32 0, i32 1
  %dtr = getelementptr inbounds %struct.anon.71, ptr %op, i32 0, i32 2
  %7 = ptrtoint ptr %dtr to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 127, ptr %dtr, align 2
  %opcode = getelementptr inbounds %struct.anon.71, ptr %op, i32 0, i32 3
  %8 = ptrtoint ptr %opcode to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 197, ptr %opcode, align 4
  %addr = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1
  %9 = ptrtoint ptr %addr to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %addr, align 8
  %buswidth2 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %buswidth2 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %buswidth2, align 1
  %dtr3 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1, i32 2
  %11 = ptrtoint ptr %dtr3 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 127, ptr %dtr3, align 2
  %val = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1, i32 3
  %12 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 0, ptr %val, align 8
  %dummy = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 2
  %13 = ptrtoint ptr %dummy to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %dummy, align 8
  %buswidth8 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 2, i32 1
  %14 = ptrtoint ptr %buswidth8 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %buswidth8, align 1
  %dtr9 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 2, i32 2
  %15 = ptrtoint ptr %dtr9 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 127, ptr %dtr9, align 2
  %data = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3
  %dtr14 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 1
  %16 = ptrtoint ptr %dtr14 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 127, ptr %dtr14, align 1
  %dir = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 2
  %17 = ptrtoint ptr %dir to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 2, ptr %dir, align 8
  %nbytes18 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 3
  %18 = ptrtoint ptr %nbytes18 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %nbytes18, align 4
  %buf = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 4
  %19 = ptrtoint ptr %bouncebuf to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bouncebuf, align 4
  %21 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %20, ptr %buf, align 8
  %reg_proto = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 15
  %22 = ptrtoint ptr %reg_proto to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %reg_proto, align 4
  %and.i.i = lshr i32 %23, 16
  %conv.i.i = trunc i32 %and.i.i to i8
  %24 = ptrtoint ptr %buswidth to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv.i.i, ptr %buswidth, align 1
  %conv.i72.i = trunc i32 %23 to i8
  %25 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv.i72.i, ptr %data, align 4
  %and.i73.i = and i32 %23, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i73.i)
  %tobool.i.not.i = icmp eq i32 %and.i73.i, 0
  br i1 %tobool.i.not.i, label %if.end17.i.spi_nor_spimem_setup_op.exit_crit_edge, label %if.then19.i

if.end17.i.spi_nor_spimem_setup_op.exit_crit_edge: ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %spi_nor_spimem_setup_op.exit

if.then19.i:                                      ; preds = %if.end17.i
  %26 = ptrtoint ptr %dtr to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 -1, ptr %dtr, align 2
  %27 = ptrtoint ptr %dtr3 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 -1, ptr %dtr3, align 2
  %28 = ptrtoint ptr %dtr9 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 -1, ptr %dtr9, align 2
  %29 = ptrtoint ptr %dtr14 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 -1, ptr %dtr14, align 1
  %cmd_ext_type.i.i = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 18
  %30 = ptrtoint ptr %cmd_ext_type.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cmd_ext_type.i.i, align 8
  %32 = zext i32 %31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.116)
  switch i32 %31, label %do.end.i.i [
    i32 2, label %if.then19.i.spi_nor_get_cmd_ext.exit.i_crit_edge
    i32 1, label %sw.bb2.i.i
  ]

if.then19.i.spi_nor_get_cmd_ext.exit.i_crit_edge: ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %spi_nor_get_cmd_ext.exit.i

sw.bb2.i.i:                                       ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %spi_nor_get_cmd_ext.exit.i

do.end.i.i:                                       ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #17
  %dev.i.i = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 2
  %33 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.32) #18
  br label %spi_nor_get_cmd_ext.exit.i

spi_nor_get_cmd_ext.exit.i:                       ; preds = %do.end.i.i, %sw.bb2.i.i, %if.then19.i.spi_nor_get_cmd_ext.exit.i_crit_edge
  %retval.0.i.i = phi i8 [ 0, %do.end.i.i ], [ -59, %sw.bb2.i.i ], [ 58, %if.then19.i.spi_nor_get_cmd_ext.exit.i_crit_edge ]
  %35 = ptrtoint ptr %opcode to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %opcode, align 4
  %shl.i = shl i16 %36, 8
  %conv42.i = zext i8 %retval.0.i.i to i16
  %or.i = or i16 %shl.i, %conv42.i
  store i16 %or.i, ptr %opcode, align 4
  %37 = ptrtoint ptr %op to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 2, ptr %op, align 8
  br label %spi_nor_spimem_setup_op.exit

spi_nor_spimem_setup_op.exit:                     ; preds = %spi_nor_get_cmd_ext.exit.i, %if.end17.i.spi_nor_spimem_setup_op.exit_crit_edge
  %38 = ptrtoint ptr %spimem to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %spimem, align 8
  %call = call i32 @spi_mem_exec_op(ptr noundef %39, ptr noundef nonnull %op) #15
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %op) #15
  br label %if.end

if.else:                                          ; preds = %entry
  %reg_proto.i = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 15
  %40 = ptrtoint ptr %reg_proto.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %reg_proto.i, align 4
  %and.i.i42 = and i32 %41, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i42)
  %tobool.i.not.i43 = icmp eq i32 %and.i.i42, 0
  br i1 %tobool.i.not.i43, label %if.end.i44, label %if.else.do.body_crit_edge

if.else.do.body_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body

if.end.i44:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  %42 = ptrtoint ptr %bouncebuf to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %bouncebuf, align 4
  %controller_ops.i = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 20
  %44 = ptrtoint ptr %controller_ops.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %controller_ops.i, align 8
  %write_reg.i = getelementptr inbounds %struct.spi_nor_controller_ops, ptr %45, i32 0, i32 3
  %46 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %write_reg.i, align 4
  %call1.i = tail call i32 %47(ptr noundef %nor, i8 noundef zeroext -59, ptr noundef %43, i32 noundef 1) #15
  br label %if.end

if.end:                                           ; preds = %if.end.i44, %spi_nor_spimem_setup_op.exit
  %ret.0 = phi i32 [ %call, %spi_nor_spimem_setup_op.exit ], [ %call1.i, %if.end.i44 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool23.not = icmp eq i32 %ret.0, 0
  br i1 %tobool23.not, label %if.end.if.end31_crit_edge, label %if.end.do.body_crit_edge

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body

if.end.if.end31_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end31

do.body:                                          ; preds = %if.end.do.body_crit_edge, %if.else.do.body_crit_edge
  %ret.048 = phi i32 [ %ret.0, %if.end.do.body_crit_edge ], [ -95, %if.else.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @spi_nor_write_ear.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@spi_nor_write_ear, %if.then29)) #15
          to label %if.end31 [label %if.then29], !srcloc !272

if.then29:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  %dev = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 2
  %48 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @spi_nor_write_ear.__UNIQUE_ID_ddebug243, ptr noundef %49, ptr noundef nonnull @.str.13, i32 noundef %ret.048) #15
  br label %if.end31

if.end31:                                         ; preds = %if.then29, %do.body, %if.end.if.end31_crit_edge
  %ret.049 = phi i32 [ %ret.048, %if.then29 ], [ 0, %if.end.if.end31_crit_edge ], [ %ret.048, %do.body ]
  ret i32 %ret.049
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @spi_nor_xread_sr(ptr noundef %nor, ptr noundef %sr) local_unnamed_addr #0 align 64 {
entry:
  %op = alloca %struct.spi_mem_op, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %spimem = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 3
  %0 = ptrtoint ptr %spimem to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spimem, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.else, label %if.end17.i

if.end17.i:                                       ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %op) #15
  %2 = call ptr @memset(ptr %op, i32 255, i32 48)
  %3 = ptrtoint ptr %op to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %op, align 8
  %buswidth = getelementptr inbounds %struct.anon.71, ptr %op, i32 0, i32 1
  %dtr = getelementptr inbounds %struct.anon.71, ptr %op, i32 0, i32 2
  %4 = ptrtoint ptr %dtr to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 127, ptr %dtr, align 2
  %opcode = getelementptr inbounds %struct.anon.71, ptr %op, i32 0, i32 3
  %5 = ptrtoint ptr %opcode to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 215, ptr %opcode, align 4
  %addr = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1
  %6 = ptrtoint ptr %addr to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %addr, align 8
  %buswidth2 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %buswidth2 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %buswidth2, align 1
  %dtr3 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1, i32 2
  %8 = ptrtoint ptr %dtr3 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 127, ptr %dtr3, align 2
  %val = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1, i32 3
  %9 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 0, ptr %val, align 8
  %dummy = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 2
  %10 = ptrtoint ptr %dummy to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %dummy, align 8
  %buswidth8 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 2, i32 1
  %11 = ptrtoint ptr %buswidth8 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %buswidth8, align 1
  %dtr9 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 2, i32 2
  %12 = ptrtoint ptr %dtr9 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 127, ptr %dtr9, align 2
  %data = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3
  %dtr14 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 1
  %13 = ptrtoint ptr %dtr14 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 127, ptr %dtr14, align 1
  %dir = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 2
  %14 = ptrtoint ptr %dir to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %dir, align 8
  %nbytes18 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 3
  %15 = ptrtoint ptr %nbytes18 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %nbytes18, align 4
  %buf = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 4
  %16 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %sr, ptr %buf, align 8
  %reg_proto = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 15
  %17 = ptrtoint ptr %reg_proto to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %reg_proto, align 4
  %and.i.i = lshr i32 %18, 16
  %conv.i.i = trunc i32 %and.i.i to i8
  %19 = ptrtoint ptr %buswidth to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv.i.i, ptr %buswidth, align 1
  %conv.i72.i = trunc i32 %18 to i8
  %20 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv.i72.i, ptr %data, align 4
  %and.i73.i = and i32 %18, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i73.i)
  %tobool.i.not.i = icmp eq i32 %and.i73.i, 0
  br i1 %tobool.i.not.i, label %if.end17.i.spi_nor_spimem_setup_op.exit_crit_edge, label %if.then19.i

if.end17.i.spi_nor_spimem_setup_op.exit_crit_edge: ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %spi_nor_spimem_setup_op.exit

if.then19.i:                                      ; preds = %if.end17.i
  %21 = ptrtoint ptr %dtr to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 -1, ptr %dtr, align 2
  %22 = ptrtoint ptr %dtr3 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 -1, ptr %dtr3, align 2
  %23 = ptrtoint ptr %dtr9 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 -1, ptr %dtr9, align 2
  %24 = ptrtoint ptr %dtr14 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 -1, ptr %dtr14, align 1
  %cmd_ext_type.i.i = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 18
  %25 = ptrtoint ptr %cmd_ext_type.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cmd_ext_type.i.i, align 8
  %27 = zext i32 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.117)
  switch i32 %26, label %do.end.i.i [
    i32 2, label %if.then19.i.spi_nor_get_cmd_ext.exit.i_crit_edge
    i32 1, label %sw.bb2.i.i
  ]

if.then19.i.spi_nor_get_cmd_ext.exit.i_crit_edge: ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %spi_nor_get_cmd_ext.exit.i

sw.bb2.i.i:                                       ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %spi_nor_get_cmd_ext.exit.i

do.end.i.i:                                       ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #17
  %dev.i.i = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 2
  %28 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.32) #18
  br label %spi_nor_get_cmd_ext.exit.i

spi_nor_get_cmd_ext.exit.i:                       ; preds = %do.end.i.i, %sw.bb2.i.i, %if.then19.i.spi_nor_get_cmd_ext.exit.i_crit_edge
  %retval.0.i.i = phi i8 [ 0, %do.end.i.i ], [ -41, %sw.bb2.i.i ], [ 40, %if.then19.i.spi_nor_get_cmd_ext.exit.i_crit_edge ]
  %30 = ptrtoint ptr %opcode to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %opcode, align 4
  %shl.i = shl i16 %31, 8
  %conv42.i = zext i8 %retval.0.i.i to i16
  %or.i = or i16 %shl.i, %conv42.i
  store i16 %or.i, ptr %opcode, align 4
  %32 = ptrtoint ptr %op to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 2, ptr %op, align 8
  br label %spi_nor_spimem_setup_op.exit

spi_nor_spimem_setup_op.exit:                     ; preds = %spi_nor_get_cmd_ext.exit.i, %if.end17.i.spi_nor_spimem_setup_op.exit_crit_edge
  %33 = ptrtoint ptr %spimem to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %spimem, align 8
  %call = call i32 @spi_mem_exec_op(ptr noundef %34, ptr noundef nonnull %op) #15
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %op) #15
  br label %if.end

if.else:                                          ; preds = %entry
  %reg_proto.i = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 15
  %35 = ptrtoint ptr %reg_proto.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %reg_proto.i, align 4
  %and.i.i38 = and i32 %36, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i38)
  %tobool.i.not.i39 = icmp eq i32 %and.i.i38, 0
  br i1 %tobool.i.not.i39, label %if.end.i40, label %if.else.do.body_crit_edge

if.else.do.body_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body

if.end.i40:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  %controller_ops.i = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 20
  %37 = ptrtoint ptr %controller_ops.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %controller_ops.i, align 8
  %read_reg.i = getelementptr inbounds %struct.spi_nor_controller_ops, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %read_reg.i, align 4
  %call1.i = tail call i32 %40(ptr noundef %nor, i8 noundef zeroext -41, ptr noundef %sr, i32 noundef 1) #15
  br label %if.end

if.end:                                           ; preds = %if.end.i40, %spi_nor_spimem_setup_op.exit
  %ret.0 = phi i32 [ %call, %spi_nor_spimem_setup_op.exit ], [ %call1.i, %if.end.i40 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool21.not = icmp eq i32 %ret.0, 0
  br i1 %tobool21.not, label %if.end.if.end29_crit_edge, label %if.end.do.body_crit_edge

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body

if.end.if.end29_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end29

do.body:                                          ; preds = %if.end.do.body_crit_edge, %if.else.do.body_crit_edge
  %ret.044 = phi i32 [ %ret.0, %if.end.do.body_crit_edge ], [ -95, %if.else.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @spi_nor_xread_sr.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@spi_nor_xread_sr, %if.then27)) #15
          to label %if.end29 [label %if.then27], !srcloc !272

if.then27:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  %dev = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 2
  %41 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @spi_nor_xread_sr.__UNIQUE_ID_ddebug244, ptr noundef %42, ptr noundef nonnull @.str.15, i32 noundef %ret.044) #15
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %do.body, %if.end.if.end29_crit_edge
  %ret.045 = phi i32 [ %ret.044, %if.then27 ], [ 0, %if.end.if.end29_crit_edge ], [ %ret.044, %do.body ]
  ret i32 %ret.045
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @spi_nor_wait_till_ready(ptr noundef %nor) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @spi_nor_wait_till_ready_with_timeout(ptr noundef %nor, i32 noundef 4000)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @spi_nor_wait_till_ready_with_timeout(ptr noundef %nor, i32 noundef %timeout_jiffies) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %1 = add i32 %0, %timeout_jiffies
  %flags.i = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 17
  %bouncebuf.i22.i = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 4
  %dev15.i.i = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 2
  br label %while.body

while.body:                                       ; preds = %if.end6.while.body_crit_edge, %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %3 = xor i32 %2, -1
  %4 = add i32 %1, %3
  %5 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %6, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %7 = ptrtoint ptr %bouncebuf.i22.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bouncebuf.i22.i, align 4
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %while.body
  %call.i.i = tail call i32 @spi_nor_xread_sr(ptr noundef %nor, ptr noundef %8) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.if.end.i_crit_edge

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  %9 = ptrtoint ptr %bouncebuf.i22.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bouncebuf.i22.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %10, align 1
  %.lobit.i.i = lshr i8 %12, 7
  %13 = zext i8 %.lobit.i.i to i32
  br label %if.end3.i

if.else.i:                                        ; preds = %while.body
  %call.i23.i = tail call i32 @spi_nor_read_sr(ptr noundef %nor, ptr noundef %8) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i23.i)
  %tobool.not.i24.i = icmp eq i32 %call.i23.i, 0
  br i1 %tobool.not.i24.i, label %if.end.i25.i, label %if.else.i.if.end.i_crit_edge

if.else.i.if.end.i_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

if.end.i25.i:                                     ; preds = %if.else.i
  %14 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags.i, align 4
  %and.i.i = and i32 %15, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool1.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool1.not.i.i, label %if.end.i25.i.if.end21.i.i_crit_edge, label %land.lhs.true.i.i

if.end.i25.i.if.end21.i.i_crit_edge:              ; preds = %if.end.i25.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end21.i.i

land.lhs.true.i.i:                                ; preds = %if.end.i25.i
  %16 = ptrtoint ptr %bouncebuf.i22.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bouncebuf.i22.i, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %17, align 1
  %conv.i.i = zext i8 %19 to i32
  %and3.i.i = and i32 %conv.i.i, 96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i)
  %tobool4.not.i.i = icmp eq i32 %and3.i.i, 0
  br i1 %tobool4.not.i.i, label %land.lhs.true.i.i.if.end21.i.i_crit_edge, label %if.then5.i.i

land.lhs.true.i.i.if.end21.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end21.i.i

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  %and9.i.i = and i32 %conv.i.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i.i)
  %tobool10.not.i.i = icmp eq i32 %and9.i.i, 0
  %20 = ptrtoint ptr %dev15.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev15.i.i, align 4
  %.str.40..str.37.i.i = select i1 %tobool10.not.i.i, ptr @.str.40, ptr @.str.37
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull %.str.40..str.37.i.i) #18
  tail call fastcc void @spi_nor_clear_sr(ptr noundef %nor) #15
  %call17.i.i = tail call i32 @spi_nor_write_disable(ptr noundef %nor) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i.i)
  %tobool18.not.i.i = icmp eq i32 %call17.i.i, 0
  br i1 %tobool18.not.i.i, label %if.then5.i.i.cleanup_crit_edge, label %if.then5.i.i.if.end.i_crit_edge

if.then5.i.i.if.end.i_crit_edge:                  ; preds = %if.then5.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

if.then5.i.i.cleanup_crit_edge:                   ; preds = %if.then5.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end21.i.i:                                     ; preds = %land.lhs.true.i.i.if.end21.i.i_crit_edge, %if.end.i25.i.if.end21.i.i_crit_edge
  %22 = ptrtoint ptr %bouncebuf.i22.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bouncebuf.i22.i, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %23, align 1
  %26 = and i8 %25, 1
  %27 = xor i8 %26, 1
  %28 = zext i8 %27 to i32
  br label %if.end3.i

if.end.i:                                         ; preds = %if.then5.i.i.if.end.i_crit_edge, %if.else.i.if.end.i_crit_edge, %if.then.i.if.end.i_crit_edge
  %sr.0.i = phi i32 [ %call.i.i, %if.then.i.if.end.i_crit_edge ], [ %call.i23.i, %if.else.i.if.end.i_crit_edge ], [ %call17.i.i, %if.then5.i.i.if.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sr.0.i)
  %cmp.i = icmp slt i32 %sr.0.i, 0
  br i1 %cmp.i, label %if.end.i.cleanup_crit_edge, label %if.end.i.if.end3.i_crit_edge

if.end.i.if.end3.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end3.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end3.i:                                        ; preds = %if.end.i.if.end3.i_crit_edge, %if.end21.i.i, %if.end.i.i
  %sr.036.i = phi i32 [ %sr.0.i, %if.end.i.if.end3.i_crit_edge ], [ %28, %if.end21.i.i ], [ %13, %if.end.i.i ]
  %29 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %flags.i, align 4
  %and5.i = and i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool6.not.i = icmp eq i32 %and5.i, 0
  br i1 %tobool6.not.i, label %if.end3.i.spi_nor_ready.exit_crit_edge, label %cond.true.i

if.end3.i.spi_nor_ready.exit_crit_edge:           ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %spi_nor_ready.exit

cond.true.i:                                      ; preds = %if.end3.i
  %31 = ptrtoint ptr %bouncebuf.i22.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %bouncebuf.i22.i, align 4
  %call.i28.i = tail call fastcc i32 @spi_nor_read_fsr(ptr noundef %nor, ptr noundef %32) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i28.i)
  %tobool.not.i29.i = icmp eq i32 %call.i28.i, 0
  br i1 %tobool.not.i29.i, label %if.end.i32.i, label %cond.true.i.cond.end.i_crit_edge

cond.true.i.cond.end.i_crit_edge:                 ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end.i

if.end.i32.i:                                     ; preds = %cond.true.i
  %33 = ptrtoint ptr %bouncebuf.i22.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %bouncebuf.i22.i, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %34, align 1
  %conv.i30.i = zext i8 %36 to i32
  %and.i31.i = and i32 %conv.i30.i, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i31.i)
  %tobool2.not.i.i = icmp eq i32 %and.i31.i, 0
  br i1 %tobool2.not.i.i, label %if.end30.i.i, label %if.then3.i.i

if.then3.i.i:                                     ; preds = %if.end.i32.i
  %and7.i.i = and i32 %conv.i30.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i.i)
  %tobool8.not.i.i = icmp eq i32 %and7.i.i, 0
  %37 = ptrtoint ptr %dev15.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev15.i.i, align 4
  %.str.47..str.44.i.i = select i1 %tobool8.not.i.i, ptr @.str.47, ptr @.str.44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull %.str.47..str.44.i.i) #18
  %39 = ptrtoint ptr %bouncebuf.i22.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %bouncebuf.i22.i, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %40, align 1
  %43 = and i8 %42, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool19.not.i.i = icmp eq i8 %43, 0
  br i1 %tobool19.not.i.i, label %if.then3.i.i.if.end25.i.i_crit_edge, label %do.end23.i.i

if.then3.i.i.if.end25.i.i_crit_edge:              ; preds = %if.then3.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end25.i.i

do.end23.i.i:                                     ; preds = %if.then3.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %44 = ptrtoint ptr %dev15.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev15.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.50) #18
  br label %if.end25.i.i

if.end25.i.i:                                     ; preds = %do.end23.i.i, %if.then3.i.i.if.end25.i.i_crit_edge
  tail call fastcc void @spi_nor_clear_fsr(ptr noundef %nor) #15
  %call26.i.i = tail call i32 @spi_nor_write_disable(ptr noundef %nor) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i.i)
  %tobool27.not.i.i = icmp eq i32 %call26.i.i, 0
  br i1 %tobool27.not.i.i, label %if.end25.i.i.cleanup_crit_edge, label %if.end25.i.i.cond.end.i_crit_edge

if.end25.i.i.cond.end.i_crit_edge:                ; preds = %if.end25.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end.i

if.end25.i.i.cleanup_crit_edge:                   ; preds = %if.end25.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end30.i.i:                                     ; preds = %if.end.i32.i
  call void @__sanitizer_cov_trace_pc() #17
  %and34.lobit.i.i = lshr i32 %conv.i30.i, 7
  br label %spi_nor_ready.exit

cond.end.i:                                       ; preds = %if.end25.i.i.cond.end.i_crit_edge, %cond.true.i.cond.end.i_crit_edge
  %cond.i = phi i32 [ %call.i28.i, %cond.true.i.cond.end.i_crit_edge ], [ %call26.i.i, %if.end25.i.i.cond.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i)
  %cmp8.i = icmp slt i32 %cond.i, 0
  br i1 %cmp8.i, label %cond.end.i.cleanup_crit_edge, label %cond.end.i.spi_nor_ready.exit_crit_edge

cond.end.i.spi_nor_ready.exit_crit_edge:          ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %spi_nor_ready.exit

cond.end.i.cleanup_crit_edge:                     ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

spi_nor_ready.exit:                               ; preds = %cond.end.i.spi_nor_ready.exit_crit_edge, %if.end30.i.i, %if.end3.i.spi_nor_ready.exit_crit_edge
  %cond43.i = phi i32 [ %cond.i, %cond.end.i.spi_nor_ready.exit_crit_edge ], [ %and34.lobit.i.i, %if.end30.i.i ], [ 1, %if.end3.i.spi_nor_ready.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sr.036.i)
  %tobool11.not.i = icmp eq i32 %sr.036.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond43.i)
  %tobool12.i = icmp eq i32 %cond43.i, 0
  %narrow.i = select i1 %tobool11.not.i, i1 true, i1 %tobool12.i
  br i1 %narrow.i, label %if.end6, label %spi_nor_ready.exit.cleanup_crit_edge

spi_nor_ready.exit.cleanup_crit_edge:             ; preds = %spi_nor_ready.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end6:                                          ; preds = %spi_nor_ready.exit
  tail call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 835, i32 noundef 0) #15
  %call.i = tail call i32 @__cond_resched() #15
  %tobool.not = icmp sgt i32 %4, -1
  br i1 %tobool.not, label %if.end6.while.body_crit_edge, label %do.body

if.end6.while.body_crit_edge:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body

do.body:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @spi_nor_wait_till_ready_with_timeout.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@spi_nor_wait_till_ready_with_timeout, %if.then14)) #15
          to label %cleanup [label %if.then14], !srcloc !272

if.then14:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  %46 = ptrtoint ptr %dev15.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev15.i.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @spi_nor_wait_till_ready_with_timeout.__UNIQUE_ID_ddebug247, ptr noundef %47, ptr noundef nonnull @.str.36) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then14, %do.body, %spi_nor_ready.exit.cleanup_crit_edge, %cond.end.i.cleanup_crit_edge, %if.end25.i.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.then5.i.i.cleanup_crit_edge
  %retval.0 = phi i32 [ -110, %if.then14 ], [ -110, %do.body ], [ %sr.0.i, %if.end.i.cleanup_crit_edge ], [ %cond.i, %cond.end.i.cleanup_crit_edge ], [ -5, %if.then5.i.i.cleanup_crit_edge ], [ -5, %if.end25.i.i.cleanup_crit_edge ], [ 0, %spi_nor_ready.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @spi_nor_global_block_unlock(ptr noundef %nor) local_unnamed_addr #0 align 64 {
entry:
  %op = alloca %struct.spi_mem_op, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @spi_nor_write_enable(ptr noundef %nor)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %spimem = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 3
  %0 = ptrtoint ptr %spimem to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spimem, align 8
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %if.else, label %if.end.i

if.end.i:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %op) #15
  %2 = call ptr @memset(ptr %op, i32 0, i32 48)
  %3 = ptrtoint ptr %op to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %op, align 8
  %4 = getelementptr inbounds { i8, i8, i8, [1 x i8], i16 }, ptr %op, i32 0, i32 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 152, ptr %4, align 4
  %reg_proto = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 15
  %6 = ptrtoint ptr %reg_proto to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %reg_proto, align 4
  %and.i.i = lshr i32 %7, 16
  %conv.i.i = trunc i32 %and.i.i to i8
  %buswidth.i = getelementptr inbounds %struct.anon.71, ptr %op, i32 0, i32 1
  %8 = ptrtoint ptr %buswidth.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv.i.i, ptr %buswidth.i, align 1
  %dummy.i = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 2
  %9 = ptrtoint ptr %dummy.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %dummy.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool5.not.i = icmp eq i8 %10, 0
  br i1 %tobool5.not.i, label %if.end.i.if.end10.i_crit_edge, label %if.then6.i

if.end.i.if.end10.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end10.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %and.i70.i = lshr i32 %7, 8
  %conv.i71.i = trunc i32 %and.i70.i to i8
  %buswidth9.i = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 2, i32 1
  %11 = ptrtoint ptr %buswidth9.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv.i71.i, ptr %buswidth9.i, align 1
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then6.i, %if.end.i.if.end10.i_crit_edge
  %nbytes11.i = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 3
  %12 = ptrtoint ptr %nbytes11.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nbytes11.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool12.not.i = icmp eq i32 %13, 0
  br i1 %tobool12.not.i, label %if.end10.i.if.end17.i_crit_edge, label %if.then13.i

if.end10.i.if.end17.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end17.i

if.then13.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #17
  %data.i = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3
  %conv.i72.i = trunc i32 %7 to i8
  %14 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv.i72.i, ptr %data.i, align 4
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.then13.i, %if.end10.i.if.end17.i_crit_edge
  %and.i73.i = and i32 %7, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i73.i)
  %tobool.i.not.i = icmp eq i32 %and.i73.i, 0
  br i1 %tobool.i.not.i, label %if.end17.i.spi_nor_spimem_setup_op.exit_crit_edge, label %if.then19.i

if.end17.i.spi_nor_spimem_setup_op.exit_crit_edge: ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %spi_nor_spimem_setup_op.exit

if.then19.i:                                      ; preds = %if.end17.i
  %dtr.i = getelementptr inbounds %struct.anon.71, ptr %op, i32 0, i32 2
  %15 = ptrtoint ptr %dtr.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load.i = load i8, ptr %dtr.i, align 2
  %bf.set.i = or i8 %bf.load.i, -128
  store i8 %bf.set.i, ptr %dtr.i, align 2
  %dtr22.i = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1, i32 2
  %16 = ptrtoint ptr %dtr22.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load23.i = load i8, ptr %dtr22.i, align 2
  %bf.set25.i = or i8 %bf.load23.i, -128
  store i8 %bf.set25.i, ptr %dtr22.i, align 2
  %dtr27.i = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 2, i32 2
  %17 = ptrtoint ptr %dtr27.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load28.i = load i8, ptr %dtr27.i, align 2
  %bf.set30.i = or i8 %bf.load28.i, -128
  store i8 %bf.set30.i, ptr %dtr27.i, align 2
  %dtr32.i = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 1
  %18 = ptrtoint ptr %dtr32.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load33.i = load i8, ptr %dtr32.i, align 1
  %bf.set35.i = or i8 %bf.load33.i, -128
  store i8 %bf.set35.i, ptr %dtr32.i, align 1
  %mul.i = shl i8 %10, 1
  %19 = ptrtoint ptr %dummy.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %mul.i, ptr %dummy.i, align 8
  %cmd_ext_type.i.i = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 18
  %20 = ptrtoint ptr %cmd_ext_type.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cmd_ext_type.i.i, align 8
  %22 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.118)
  switch i32 %21, label %do.end.i.i [
    i32 2, label %sw.bb.i.i
    i32 1, label %sw.bb2.i.i
  ]

sw.bb.i.i:                                        ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #17
  %23 = ptrtoint ptr %4 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %4, align 4
  %conv.i74.i = trunc i16 %24 to i8
  %neg.i.i = xor i8 %conv.i74.i, -1
  br label %spi_nor_get_cmd_ext.exit.i

sw.bb2.i.i:                                       ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #17
  %25 = ptrtoint ptr %4 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %4, align 4
  %conv5.i.i = trunc i16 %26 to i8
  br label %spi_nor_get_cmd_ext.exit.i

do.end.i.i:                                       ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #17
  %dev.i.i = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 2
  %27 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.32) #18
  br label %spi_nor_get_cmd_ext.exit.i

spi_nor_get_cmd_ext.exit.i:                       ; preds = %do.end.i.i, %sw.bb2.i.i, %sw.bb.i.i
  %retval.0.i.i = phi i8 [ 0, %do.end.i.i ], [ %conv5.i.i, %sw.bb2.i.i ], [ %neg.i.i, %sw.bb.i.i ]
  %29 = ptrtoint ptr %4 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %4, align 4
  %shl.i = shl i16 %30, 8
  %conv42.i = zext i8 %retval.0.i.i to i16
  %or.i = or i16 %shl.i, %conv42.i
  store i16 %or.i, ptr %4, align 4
  %31 = ptrtoint ptr %op to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 2, ptr %op, align 8
  br label %spi_nor_spimem_setup_op.exit

spi_nor_spimem_setup_op.exit:                     ; preds = %spi_nor_get_cmd_ext.exit.i, %if.end17.i.spi_nor_spimem_setup_op.exit_crit_edge
  %32 = ptrtoint ptr %spimem to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %spimem, align 8
  %call4 = call i32 @spi_mem_exec_op(ptr noundef %33, ptr noundef nonnull %op) #15
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %op) #15
  br label %if.end6

if.else:                                          ; preds = %if.end
  %reg_proto.i = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 15
  %34 = ptrtoint ptr %reg_proto.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %reg_proto.i, align 4
  %and.i.i28 = and i32 %35, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i28)
  %tobool.i.not.i29 = icmp eq i32 %and.i.i28, 0
  br i1 %tobool.i.not.i29, label %if.end.i30, label %if.else.do.body_crit_edge

if.else.do.body_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body

if.end.i30:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  %controller_ops.i = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 20
  %36 = ptrtoint ptr %controller_ops.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %controller_ops.i, align 8
  %write_reg.i = getelementptr inbounds %struct.spi_nor_controller_ops, ptr %37, i32 0, i32 3
  %38 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %write_reg.i, align 4
  %call1.i = tail call i32 %39(ptr noundef %nor, i8 noundef zeroext -104, ptr noundef null, i32 noundef 0) #15
  br label %if.end6

if.end6:                                          ; preds = %if.end.i30, %spi_nor_spimem_setup_op.exit
  %ret.0 = phi i32 [ %call4, %spi_nor_spimem_setup_op.exit ], [ %call1.i, %if.end.i30 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool7.not = icmp eq i32 %ret.0, 0
  br i1 %tobool7.not, label %if.end15, label %if.end6.do.body_crit_edge

if.end6.do.body_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body

do.body:                                          ; preds = %if.end6.do.body_crit_edge, %if.else.do.body_crit_edge
  %ret.034 = phi i32 [ %ret.0, %if.end6.do.body_crit_edge ], [ -95, %if.else.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @spi_nor_global_block_unlock.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@spi_nor_global_block_unlock, %if.then13)) #15
          to label %cleanup [label %if.then13], !srcloc !272

if.then13:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  %dev = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 2
  %40 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @spi_nor_global_block_unlock.__UNIQUE_ID_ddebug248, ptr noundef %41, ptr noundef nonnull @.str.17, i32 noundef %ret.034) #15
  br label %cleanup

if.end15:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  %call.i = call fastcc i32 @spi_nor_wait_till_ready_with_timeout(ptr noundef %nor, i32 noundef 4000) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.then13, %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end15 ], [ %call, %entry.cleanup_crit_edge ], [ %ret.034, %if.then13 ], [ %ret.034, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @spi_nor_write_sr(ptr noundef %nor, ptr noundef %sr, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  %op = alloca %struct.spi_mem_op, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @spi_nor_write_enable(ptr noundef %nor)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %spimem = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 3
  %0 = ptrtoint ptr %spimem to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spimem, align 8
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %if.else, label %if.end10.i

if.end10.i:                                       ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %op) #15
  %2 = call ptr @memset(ptr %op, i32 255, i32 48)
  %3 = ptrtoint ptr %op to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %op, align 8
  %buswidth = getelementptr inbounds %struct.anon.71, ptr %op, i32 0, i32 1
  %dtr = getelementptr inbounds %struct.anon.71, ptr %op, i32 0, i32 2
  %4 = ptrtoint ptr %dtr to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 127, ptr %dtr, align 2
  %opcode = getelementptr inbounds %struct.anon.71, ptr %op, i32 0, i32 3
  %5 = ptrtoint ptr %opcode to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 1, ptr %opcode, align 4
  %addr = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1
  %6 = ptrtoint ptr %addr to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %addr, align 8
  %buswidth4 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %buswidth4 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %buswidth4, align 1
  %dtr5 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1, i32 2
  %8 = ptrtoint ptr %dtr5 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 127, ptr %dtr5, align 2
  %val = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1, i32 3
  %9 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 0, ptr %val, align 8
  %dummy = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 2
  %10 = ptrtoint ptr %dummy to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %dummy, align 8
  %buswidth10 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 2, i32 1
  %11 = ptrtoint ptr %buswidth10 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %buswidth10, align 1
  %dtr11 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 2, i32 2
  %12 = ptrtoint ptr %dtr11 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 127, ptr %dtr11, align 2
  %data = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3
  %13 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %data, align 4
  %dtr16 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 1
  %14 = ptrtoint ptr %dtr16 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 127, ptr %dtr16, align 1
  %dir = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 2
  %15 = ptrtoint ptr %dir to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 2, ptr %dir, align 8
  %nbytes20 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 3
  %16 = ptrtoint ptr %nbytes20 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %len, ptr %nbytes20, align 4
  %buf = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 4
  %17 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %sr, ptr %buf, align 8
  %reg_proto = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 15
  %18 = ptrtoint ptr %reg_proto to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %reg_proto, align 4
  %and.i.i = lshr i32 %19, 16
  %conv.i.i = trunc i32 %and.i.i to i8
  %20 = ptrtoint ptr %buswidth to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv.i.i, ptr %buswidth, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool12.not.i = icmp eq i32 %len, 0
  br i1 %tobool12.not.i, label %if.end10.i.if.end17.i_crit_edge, label %if.then13.i

if.end10.i.if.end17.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end17.i

if.then13.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #17
  %conv.i72.i = trunc i32 %19 to i8
  %21 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv.i72.i, ptr %data, align 4
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.then13.i, %if.end10.i.if.end17.i_crit_edge
  %and.i73.i = and i32 %19, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i73.i)
  %tobool.i.not.i = icmp eq i32 %and.i73.i, 0
  br i1 %tobool.i.not.i, label %if.end17.i.spi_nor_spimem_setup_op.exit_crit_edge, label %if.then19.i

if.end17.i.spi_nor_spimem_setup_op.exit_crit_edge: ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %spi_nor_spimem_setup_op.exit

if.then19.i:                                      ; preds = %if.end17.i
  %22 = ptrtoint ptr %dtr to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 -1, ptr %dtr, align 2
  %23 = ptrtoint ptr %dtr5 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 -1, ptr %dtr5, align 2
  %24 = ptrtoint ptr %dtr11 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 -1, ptr %dtr11, align 2
  %25 = ptrtoint ptr %dtr16 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 -1, ptr %dtr16, align 1
  %26 = ptrtoint ptr %dummy to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %dummy, align 8
  %cmd_ext_type.i.i = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 18
  %27 = ptrtoint ptr %cmd_ext_type.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %cmd_ext_type.i.i, align 8
  %29 = zext i32 %28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.119)
  switch i32 %28, label %do.end.i.i [
    i32 2, label %if.then19.i.spi_nor_get_cmd_ext.exit.i_crit_edge
    i32 1, label %sw.bb2.i.i
  ]

if.then19.i.spi_nor_get_cmd_ext.exit.i_crit_edge: ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %spi_nor_get_cmd_ext.exit.i

sw.bb2.i.i:                                       ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %spi_nor_get_cmd_ext.exit.i

do.end.i.i:                                       ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #17
  %dev.i.i = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 2
  %30 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.32) #18
  br label %spi_nor_get_cmd_ext.exit.i

spi_nor_get_cmd_ext.exit.i:                       ; preds = %do.end.i.i, %sw.bb2.i.i, %if.then19.i.spi_nor_get_cmd_ext.exit.i_crit_edge
  %retval.0.i.i = phi i8 [ 0, %do.end.i.i ], [ 1, %sw.bb2.i.i ], [ -2, %if.then19.i.spi_nor_get_cmd_ext.exit.i_crit_edge ]
  %32 = ptrtoint ptr %opcode to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %opcode, align 4
  %shl.i = shl i16 %33, 8
  %conv42.i = zext i8 %retval.0.i.i to i16
  %or.i = or i16 %shl.i, %conv42.i
  store i16 %or.i, ptr %opcode, align 4
  %34 = ptrtoint ptr %op to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 2, ptr %op, align 8
  br label %spi_nor_spimem_setup_op.exit

spi_nor_spimem_setup_op.exit:                     ; preds = %spi_nor_get_cmd_ext.exit.i, %if.end17.i.spi_nor_spimem_setup_op.exit_crit_edge
  %35 = ptrtoint ptr %spimem to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %spimem, align 8
  %call22 = call i32 @spi_mem_exec_op(ptr noundef %36, ptr noundef nonnull %op) #15
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %op) #15
  br label %if.end24

if.else:                                          ; preds = %if.end
  %reg_proto.i = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 15
  %37 = ptrtoint ptr %reg_proto.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %reg_proto.i, align 4
  %and.i.i48 = and i32 %38, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i48)
  %tobool.i.not.i49 = icmp eq i32 %and.i.i48, 0
  br i1 %tobool.i.not.i49, label %if.end.i50, label %if.else.do.body_crit_edge

if.else.do.body_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body

if.end.i50:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  %controller_ops.i = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 20
  %39 = ptrtoint ptr %controller_ops.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %controller_ops.i, align 8
  %write_reg.i = getelementptr inbounds %struct.spi_nor_controller_ops, ptr %40, i32 0, i32 3
  %41 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %write_reg.i, align 4
  %call1.i = tail call i32 %42(ptr noundef %nor, i8 noundef zeroext 1, ptr noundef %sr, i32 noundef %len) #15
  br label %if.end24

if.end24:                                         ; preds = %if.end.i50, %spi_nor_spimem_setup_op.exit
  %ret.0 = phi i32 [ %call22, %spi_nor_spimem_setup_op.exit ], [ %call1.i, %if.end.i50 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool25.not = icmp eq i32 %ret.0, 0
  br i1 %tobool25.not, label %if.end33, label %if.end24.do.body_crit_edge

if.end24.do.body_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body

do.body:                                          ; preds = %if.end24.do.body_crit_edge, %if.else.do.body_crit_edge
  %ret.054 = phi i32 [ %ret.0, %if.end24.do.body_crit_edge ], [ -95, %if.else.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @spi_nor_write_sr.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@spi_nor_write_sr, %if.then31)) #15
          to label %cleanup [label %if.then31], !srcloc !272

if.then31:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  %dev = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 2
  %43 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @spi_nor_write_sr.__UNIQUE_ID_ddebug249, ptr noundef %44, ptr noundef nonnull @.str.19, i32 noundef %ret.054) #15
  br label %cleanup

if.end33:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #17
  %call.i = call fastcc i32 @spi_nor_wait_till_ready_with_timeout(ptr noundef %nor, i32 noundef 4000) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %if.then31, %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end33 ], [ %call, %entry.cleanup_crit_edge ], [ %ret.054, %if.then31 ], [ %ret.054, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @spi_nor_write_16bit_cr_and_check(ptr noundef %nor, i8 noundef zeroext %cr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %bouncebuf = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 4
  %0 = ptrtoint ptr %bouncebuf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bouncebuf, align 4
  %call = tail call i32 @spi_nor_read_sr(ptr noundef %nor, ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr i8, ptr %1, i32 1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %cr, ptr %arrayidx, align 1
  %call1 = tail call i32 @spi_nor_write_sr(ptr noundef %nor, ptr noundef %1, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %1, align 1
  %call6 = tail call i32 @spi_nor_read_sr(ptr noundef %nor, ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end9:                                          ; preds = %if.end4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %1, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %4, i8 %6)
  %cmp.not = icmp eq i8 %4, %6
  br i1 %cmp.not, label %if.end20, label %do.body

do.body:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @spi_nor_write_16bit_cr_and_check.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@spi_nor_write_16bit_cr_and_check, %if.then18)) #15
          to label %cleanup [label %if.then18], !srcloc !272

if.then18:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  %dev = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 2
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @spi_nor_write_16bit_cr_and_check.__UNIQUE_ID_ddebug252, ptr noundef %8, ptr noundef nonnull @.str.21) #15
  br label %cleanup

if.end20:                                         ; preds = %if.end9
  %flags = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 17
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags, align 4
  %and = and i32 %10, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool21.not = icmp eq i32 %and, 0
  br i1 %tobool21.not, label %if.end23, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end23:                                         ; preds = %if.end20
  %call25 = tail call i32 @spi_nor_read_cr(ptr noundef %nor, ptr noundef %arrayidx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end28, label %if.end23.cleanup_crit_edge

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end28:                                         ; preds = %if.end23
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %12, i8 %cr)
  %cmp32.not = icmp eq i8 %12, %cr
  br i1 %cmp32.not, label %if.end28.cleanup_crit_edge, label %do.body35

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.body35:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @spi_nor_write_16bit_cr_and_check.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@spi_nor_write_16bit_cr_and_check, %if.then47)) #15
          to label %cleanup [label %if.then47], !srcloc !272

if.then47:                                        ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #17
  %dev48 = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 2
  %13 = ptrtoint ptr %dev48 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev48, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @spi_nor_write_16bit_cr_and_check.__UNIQUE_ID_ddebug253, ptr noundef %14, ptr noundef nonnull @.str.22) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then47, %do.body35, %if.end28.cleanup_crit_edge, %if.end23.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %if.then18, %do.body, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ %call6, %if.end4.cleanup_crit_edge ], [ -5, %if.then18 ], [ 0, %if.end20.cleanup_crit_edge ], [ %call25, %if.end23.cleanup_crit_edge ], [ -5, %if.then47 ], [ 0, %if.end28.cleanup_crit_edge ], [ -5, %do.body ], [ -5, %do.body35 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @spi_nor_write_sr_and_check(ptr noundef %nor, i8 noundef zeroext %sr1) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 17
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call = tail call fastcc i32 @spi_nor_write_16bit_sr_and_check(ptr noundef %nor, i8 noundef zeroext %sr1)
  br label %return

if.end:                                           ; preds = %entry
  %bouncebuf.i = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 4
  %2 = ptrtoint ptr %bouncebuf.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bouncebuf.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %sr1, ptr %3, align 1
  %5 = load ptr, ptr %bouncebuf.i, align 4
  %call.i = tail call i32 @spi_nor_write_sr(ptr noundef %nor, ptr noundef %5, i32 noundef 1) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.end.i:                                         ; preds = %if.end
  %6 = ptrtoint ptr %bouncebuf.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bouncebuf.i, align 4
  %call3.i = tail call i32 @spi_nor_read_sr(ptr noundef %nor, ptr noundef %7) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %if.end.i.return_crit_edge

if.end.i.return_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.end6.i:                                        ; preds = %if.end.i
  %8 = ptrtoint ptr %bouncebuf.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bouncebuf.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %9, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %11, i8 %sr1)
  %cmp.not.i = icmp eq i8 %11, %sr1
  br i1 %cmp.not.i, label %if.end6.i.return_crit_edge, label %do.body.i

if.end6.i.return_crit_edge:                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

do.body.i:                                        ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @spi_nor_write_sr1_and_check.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@spi_nor_write_sr_and_check, %if.then16.i)) #15
          to label %return [label %if.then16.i], !srcloc !272

if.then16.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #17
  %dev.i = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 2
  %12 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @spi_nor_write_sr1_and_check.__UNIQUE_ID_ddebug250, ptr noundef %13, ptr noundef nonnull @.str.58) #15
  br label %return

return:                                           ; preds = %if.then16.i, %do.body.i, %if.end6.i.return_crit_edge, %if.end.i.return_crit_edge, %if.end.return_crit_edge, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call.i, %if.end.return_crit_edge ], [ %call3.i, %if.end.i.return_crit_edge ], [ -5, %if.then16.i ], [ 0, %if.end6.i.return_crit_edge ], [ -5, %do.body.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @spi_nor_write_16bit_sr_and_check(ptr noundef %nor, i8 noundef zeroext %sr1) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %bouncebuf = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 4
  %0 = ptrtoint ptr %bouncebuf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bouncebuf, align 4
  %flags = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 17
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %and = and i32 %3, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %arrayidx = getelementptr i8, ptr %1, i32 1
  %call = tail call i32 @spi_nor_read_cr(ptr noundef %nor, ptr noundef %arrayidx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.then.if.end9_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then.if.end9_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end9

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %params = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 21
  %4 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %params, align 4
  %quad_enable = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %5, i32 0, i32 11
  %6 = ptrtoint ptr %quad_enable to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %quad_enable, align 4
  %tobool3.not = icmp eq ptr %7, null
  %arrayidx7 = getelementptr i8, ptr %1, i32 1
  %. = select i1 %tobool3.not, i8 0, i8 2
  %8 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %., ptr %arrayidx7, align 1
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then.if.end9_crit_edge
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %sr1, ptr %1, align 1
  %call11 = tail call i32 @spi_nor_write_sr(ptr noundef %nor, ptr noundef %1, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end14:                                         ; preds = %if.end9
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags, align 4
  %and16 = and i32 %11, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end19:                                         ; preds = %if.end14
  %arrayidx20 = getelementptr i8, ptr %1, i32 1
  %12 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx20, align 1
  %call22 = tail call i32 @spi_nor_read_cr(ptr noundef %nor, ptr noundef %arrayidx20)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end25:                                         ; preds = %if.end19
  %14 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx20, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %13, i8 %15)
  %cmp.not = icmp eq i8 %13, %15
  br i1 %cmp.not, label %if.end25.cleanup_crit_edge, label %do.body

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.body:                                          ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @spi_nor_write_16bit_sr_and_check.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@spi_nor_write_16bit_sr_and_check, %if.then34)) #15
          to label %cleanup [label %if.then34], !srcloc !272

if.then34:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  %dev = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 2
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @spi_nor_write_16bit_sr_and_check.__UNIQUE_ID_ddebug251, ptr noundef %17, ptr noundef nonnull @.str.22) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then34, %do.body, %if.end25.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then.cleanup_crit_edge ], [ %call11, %if.end9.cleanup_crit_edge ], [ 0, %if.end14.cleanup_crit_edge ], [ %call22, %if.end19.cleanup_crit_edge ], [ -5, %if.then34 ], [ 0, %if.end25.cleanup_crit_edge ], [ -5, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @spi_nor_convert_3to4_read(i8 noundef zeroext %opcode) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i8 %opcode to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.120)
  switch i8 %opcode, label %entry.spi_nor_convert_opcode.exit_crit_edge [
    i8 3, label %entry.if.then.i_crit_edge
    i8 11, label %if.then.i.fold.split
    i8 59, label %if.then.i.fold.split3
    i8 -69, label %if.then.i.fold.split4
    i8 107, label %if.then.i.fold.split5
    i8 -21, label %if.then.i.fold.split6
    i8 -117, label %if.then.i.fold.split7
    i8 -53, label %if.then.i.fold.split8
    i8 13, label %if.then.i.fold.split9
    i8 -67, label %if.then.i.fold.split10
    i8 -19, label %if.then.i.fold.split11
  ]

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

entry.spi_nor_convert_opcode.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %spi_nor_convert_opcode.exit

if.then.i.fold.split:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

if.then.i.fold.split3:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

if.then.i.fold.split4:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

if.then.i.fold.split5:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

if.then.i.fold.split6:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

if.then.i.fold.split7:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

if.then.i.fold.split8:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

if.then.i.fold.split9:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

if.then.i.fold.split10:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

if.then.i.fold.split11:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

if.then.i:                                        ; preds = %if.then.i.fold.split11, %if.then.i.fold.split10, %if.then.i.fold.split9, %if.then.i.fold.split8, %if.then.i.fold.split7, %if.then.i.fold.split6, %if.then.i.fold.split5, %if.then.i.fold.split4, %if.then.i.fold.split3, %if.then.i.fold.split, %entry.if.then.i_crit_edge
  %i.014.i.lcssa = phi i32 [ 0, %entry.if.then.i_crit_edge ], [ 1, %if.then.i.fold.split ], [ 2, %if.then.i.fold.split3 ], [ 3, %if.then.i.fold.split4 ], [ 4, %if.then.i.fold.split5 ], [ 5, %if.then.i.fold.split6 ], [ 6, %if.then.i.fold.split7 ], [ 7, %if.then.i.fold.split8 ], [ 8, %if.then.i.fold.split9 ], [ 9, %if.then.i.fold.split10 ], [ 10, %if.then.i.fold.split11 ]
  %arrayidx6.i = getelementptr [2 x i8], ptr @spi_nor_convert_3to4_read.spi_nor_3to4_read, i32 %i.014.i.lcssa, i32 1
  %1 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx6.i, align 1
  br label %spi_nor_convert_opcode.exit

spi_nor_convert_opcode.exit:                      ; preds = %if.then.i, %entry.spi_nor_convert_opcode.exit_crit_edge
  %retval.0.i = phi i8 [ %2, %if.then.i ], [ %opcode, %entry.spi_nor_convert_opcode.exit_crit_edge ]
  ret i8 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @spi_nor_lock_and_prep(ptr noundef %nor) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #15
  %controller_ops = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 20
  %0 = ptrtoint ptr %controller_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller_ops, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %land.lhs.true

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %land.lhs.true.cleanup_crit_edge, label %if.then

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then:                                          ; preds = %land.lhs.true
  %call = tail call i32 %3(ptr noundef %nor) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool5.not = icmp eq i32 %call, 0
  br i1 %tobool5.not, label %if.then.cleanup_crit_edge, label %if.then6

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @mutex_unlock(ptr noundef %lock) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %if.then.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then6 ], [ 0, %if.then.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @spi_nor_unlock_and_unprep(ptr noundef %nor) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %controller_ops = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 20
  %0 = ptrtoint ptr %controller_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller_ops, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %unprepare = getelementptr inbounds %struct.spi_nor_controller_ops, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %unprepare to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %unprepare, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  tail call void %3(ptr noundef %nor) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %lock = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 1
  tail call void @mutex_unlock(ptr noundef %lock) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @spi_nor_erase_sector(ptr noundef %nor, i32 noundef %addr) local_unnamed_addr #0 align 64 {
entry:
  %op = alloca %struct.spi_mem_op, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %params.i = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 21
  %0 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %params.i, align 4
  %convert_addr.i = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %convert_addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %convert_addr.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.spi_nor_convert_addr.exit_crit_edge, label %if.end.i

entry.spi_nor_convert_addr.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %spi_nor_convert_addr.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call.i = tail call i32 %3(ptr noundef %nor, i32 noundef %addr) #15
  br label %spi_nor_convert_addr.exit

spi_nor_convert_addr.exit:                        ; preds = %if.end.i, %entry.spi_nor_convert_addr.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %if.end.i ], [ %addr, %entry.spi_nor_convert_addr.exit_crit_edge ]
  %spimem = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 3
  %4 = ptrtoint ptr %spimem to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %spimem, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %spi_nor_convert_addr.exit
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %op) #15
  %6 = call ptr @memset(ptr %op, i32 0, i32 48)
  %7 = ptrtoint ptr %op to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %op, align 8
  %opcode = getelementptr inbounds %struct.anon.71, ptr %op, i32 0, i32 3
  %erase_opcode = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 9
  %8 = ptrtoint ptr %erase_opcode to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %erase_opcode, align 1
  %conv1 = zext i8 %9 to i16
  %10 = ptrtoint ptr %opcode to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv1, ptr %opcode, align 4
  %addr2 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1
  %addr_width = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 8
  %11 = ptrtoint ptr %addr_width to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %addr_width, align 4
  %13 = ptrtoint ptr %addr2 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %addr2, align 8
  %val = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1, i32 3
  %conv5 = zext i32 %retval.0.i to i64
  %14 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %conv5, ptr %val, align 8
  %write_proto = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 14
  %15 = ptrtoint ptr %write_proto to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %write_proto, align 8
  %and.i.i = lshr i32 %16, 16
  %conv.i.i = trunc i32 %and.i.i to i8
  %buswidth.i = getelementptr inbounds %struct.anon.71, ptr %op, i32 0, i32 1
  %17 = ptrtoint ptr %buswidth.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv.i.i, ptr %buswidth.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.i46 = icmp eq i8 %12, 0
  br i1 %tobool.not.i46, label %if.then.if.end.i47_crit_edge, label %if.then.i

if.then.if.end.i47_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i47

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %and.i68.i = lshr i32 %16, 8
  %conv.i69.i = trunc i32 %and.i68.i to i8
  %buswidth3.i = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1, i32 1
  %18 = ptrtoint ptr %buswidth3.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv.i69.i, ptr %buswidth3.i, align 1
  br label %if.end.i47

if.end.i47:                                       ; preds = %if.then.i, %if.then.if.end.i47_crit_edge
  %dummy.i = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 2
  %19 = ptrtoint ptr %dummy.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %dummy.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool5.not.i = icmp eq i8 %20, 0
  br i1 %tobool5.not.i, label %if.end.i47.if.end10.i_crit_edge, label %if.then6.i

if.end.i47.if.end10.i_crit_edge:                  ; preds = %if.end.i47
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end10.i

if.then6.i:                                       ; preds = %if.end.i47
  call void @__sanitizer_cov_trace_pc() #17
  %and.i70.i = lshr i32 %16, 8
  %conv.i71.i = trunc i32 %and.i70.i to i8
  %buswidth9.i = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 2, i32 1
  %21 = ptrtoint ptr %buswidth9.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv.i71.i, ptr %buswidth9.i, align 1
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then6.i, %if.end.i47.if.end10.i_crit_edge
  %nbytes11.i = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 3
  %22 = ptrtoint ptr %nbytes11.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %nbytes11.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool12.not.i = icmp eq i32 %23, 0
  br i1 %tobool12.not.i, label %if.end10.i.if.end17.i_crit_edge, label %if.then13.i

if.end10.i.if.end17.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end17.i

if.then13.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #17
  %data.i = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3
  %conv.i72.i = trunc i32 %16 to i8
  %24 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv.i72.i, ptr %data.i, align 4
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.then13.i, %if.end10.i.if.end17.i_crit_edge
  %and.i73.i = and i32 %16, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i73.i)
  %tobool.i.not.i = icmp eq i32 %and.i73.i, 0
  br i1 %tobool.i.not.i, label %if.end17.i.spi_nor_spimem_setup_op.exit_crit_edge, label %if.then19.i

if.end17.i.spi_nor_spimem_setup_op.exit_crit_edge: ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %spi_nor_spimem_setup_op.exit

if.then19.i:                                      ; preds = %if.end17.i
  %dtr.i = getelementptr inbounds %struct.anon.71, ptr %op, i32 0, i32 2
  %25 = ptrtoint ptr %dtr.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %bf.load.i = load i8, ptr %dtr.i, align 2
  %bf.set.i = or i8 %bf.load.i, -128
  store i8 %bf.set.i, ptr %dtr.i, align 2
  %dtr22.i = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1, i32 2
  %26 = ptrtoint ptr %dtr22.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %bf.load23.i = load i8, ptr %dtr22.i, align 2
  %bf.set25.i = or i8 %bf.load23.i, -128
  store i8 %bf.set25.i, ptr %dtr22.i, align 2
  %dtr27.i = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 2, i32 2
  %27 = ptrtoint ptr %dtr27.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %bf.load28.i = load i8, ptr %dtr27.i, align 2
  %bf.set30.i = or i8 %bf.load28.i, -128
  store i8 %bf.set30.i, ptr %dtr27.i, align 2
  %dtr32.i = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 1
  %28 = ptrtoint ptr %dtr32.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %bf.load33.i = load i8, ptr %dtr32.i, align 1
  %bf.set35.i = or i8 %bf.load33.i, -128
  store i8 %bf.set35.i, ptr %dtr32.i, align 1
  %mul.i = shl i8 %20, 1
  %29 = ptrtoint ptr %dummy.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %mul.i, ptr %dummy.i, align 8
  %cmd_ext_type.i.i = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 18
  %30 = ptrtoint ptr %cmd_ext_type.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cmd_ext_type.i.i, align 8
  %32 = zext i32 %31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.121)
  switch i32 %31, label %do.end.i.i [
    i32 2, label %sw.bb.i.i
    i32 1, label %if.then19.i.spi_nor_get_cmd_ext.exit.i_crit_edge
  ]

if.then19.i.spi_nor_get_cmd_ext.exit.i_crit_edge: ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %spi_nor_get_cmd_ext.exit.i

sw.bb.i.i:                                        ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #17
  %neg.i.i = xor i8 %9, -1
  br label %spi_nor_get_cmd_ext.exit.i

do.end.i.i:                                       ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #17
  %dev.i.i = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 2
  %33 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.32) #18
  br label %spi_nor_get_cmd_ext.exit.i

spi_nor_get_cmd_ext.exit.i:                       ; preds = %do.end.i.i, %sw.bb.i.i, %if.then19.i.spi_nor_get_cmd_ext.exit.i_crit_edge
  %retval.0.i.i = phi i8 [ 0, %do.end.i.i ], [ %neg.i.i, %sw.bb.i.i ], [ %9, %if.then19.i.spi_nor_get_cmd_ext.exit.i_crit_edge ]
  %35 = ptrtoint ptr %opcode to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %opcode, align 4
  %shl.i = shl i16 %36, 8
  %conv42.i = zext i8 %retval.0.i.i to i16
  %or.i = or i16 %shl.i, %conv42.i
  store i16 %or.i, ptr %opcode, align 4
  %37 = ptrtoint ptr %op to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 2, ptr %op, align 8
  br label %spi_nor_spimem_setup_op.exit

spi_nor_spimem_setup_op.exit:                     ; preds = %spi_nor_get_cmd_ext.exit.i, %if.end17.i.spi_nor_spimem_setup_op.exit_crit_edge
  %38 = ptrtoint ptr %spimem to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %spimem, align 8
  %call11 = call i32 @spi_mem_exec_op(ptr noundef %39, ptr noundef nonnull %op) #15
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %op) #15
  br label %cleanup

if.else:                                          ; preds = %spi_nor_convert_addr.exit
  %controller_ops = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 20
  %40 = ptrtoint ptr %controller_ops to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %controller_ops, align 8
  %erase = getelementptr inbounds %struct.spi_nor_controller_ops, ptr %41, i32 0, i32 6
  %42 = ptrtoint ptr %erase to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %erase, align 4
  %tobool12.not = icmp eq ptr %43, null
  br i1 %tobool12.not, label %if.end16, label %if.then13

if.then13:                                        ; preds = %if.else
  %write_proto.i = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 14
  %44 = ptrtoint ptr %write_proto.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %write_proto.i, align 8
  %and.i.i48 = and i32 %45, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i48)
  %tobool.i.not.i49 = icmp eq i32 %and.i.i48, 0
  br i1 %tobool.i.not.i49, label %if.end.i50, label %if.then13.cleanup_crit_edge

if.then13.cleanup_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end.i50:                                       ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #17
  %conv14 = zext i32 %retval.0.i to i64
  %call1.i = tail call i32 %43(ptr noundef %nor, i64 noundef %conv14) #15
  br label %cleanup

if.end16:                                         ; preds = %if.else
  %addr_width17 = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 8
  %46 = ptrtoint ptr %addr_width17 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %addr_width17, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %cmp59.not = icmp eq i8 %47, 0
  br i1 %cmp59.not, label %if.end16.for.end_crit_edge, label %for.body.lr.ph

if.end16.for.end_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end16
  %conv18 = zext i8 %47 to i32
  %bouncebuf = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.061.in = phi i32 [ %conv18, %for.body.lr.ph ], [ %i.061, %for.body.for.body_crit_edge ]
  %addr.addr.060 = phi i32 [ %retval.0.i, %for.body.lr.ph ], [ %shr, %for.body.for.body_crit_edge ]
  %i.061 = add nsw i32 %i.061.in, -1
  %conv20 = trunc i32 %addr.addr.060 to i8
  %48 = ptrtoint ptr %bouncebuf to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %bouncebuf, align 4
  %arrayidx = getelementptr i8, ptr %49, i32 %i.061
  %50 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %conv20, ptr %arrayidx, align 1
  %shr = lshr i32 %addr.addr.060, 8
  %cmp = icmp ugt i32 %i.061.in, 1
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end16.for.end_crit_edge
  %reg_proto.i = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 15
  %51 = ptrtoint ptr %reg_proto.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %reg_proto.i, align 4
  %and.i.i52 = and i32 %52, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i52)
  %tobool.i.not.i53 = icmp eq i32 %and.i.i52, 0
  br i1 %tobool.i.not.i53, label %if.end.i56, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end.i56:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  %53 = ptrtoint ptr %addr_width17 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %addr_width17, align 4
  %conv24 = zext i8 %54 to i32
  %bouncebuf22 = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 4
  %55 = ptrtoint ptr %bouncebuf22 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %bouncebuf22, align 4
  %erase_opcode21 = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 9
  %57 = ptrtoint ptr %erase_opcode21 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %erase_opcode21, align 1
  %59 = ptrtoint ptr %controller_ops to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %controller_ops, align 8
  %write_reg.i = getelementptr inbounds %struct.spi_nor_controller_ops, ptr %60, i32 0, i32 3
  %61 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %write_reg.i, align 4
  %call1.i55 = tail call i32 %62(ptr noundef %nor, i8 noundef zeroext %58, ptr noundef %56, i32 noundef %conv24) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end.i56, %for.end.cleanup_crit_edge, %if.end.i50, %if.then13.cleanup_crit_edge, %spi_nor_spimem_setup_op.exit
  %retval.0 = phi i32 [ %call11, %spi_nor_spimem_setup_op.exit ], [ %call1.i, %if.end.i50 ], [ -95, %if.then13.cleanup_crit_edge ], [ %call1.i55, %if.end.i56 ], [ -95, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @spi_nor_region_next(ptr noundef readonly %region) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %region to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %region, align 8
  %and.i = and i64 %1, 16
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not = icmp eq i64 %and.i, 0
  %incdec.ptr = getelementptr %struct.spi_nor_erase_region, ptr %region, i32 1
  %retval.0 = select i1 %tobool.not, ptr %incdec.ptr, ptr null
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @spi_nor_sr1_bit6_quad_enable(ptr noundef %nor) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %bouncebuf = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 4
  %0 = ptrtoint ptr %bouncebuf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bouncebuf, align 4
  %call = tail call i32 @spi_nor_read_sr(ptr noundef %nor, ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %bouncebuf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bouncebuf, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 1
  %6 = and i8 %5, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool2.not = icmp eq i8 %6, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %or = or i8 %5, 64
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %or, ptr %3, align 1
  %8 = ptrtoint ptr %bouncebuf to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bouncebuf, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %9, align 1
  %call.i = tail call i32 @spi_nor_write_sr(ptr noundef %nor, ptr noundef %9, i32 noundef 1) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end.i:                                         ; preds = %if.end4
  %12 = ptrtoint ptr %bouncebuf to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bouncebuf, align 4
  %call3.i = tail call i32 @spi_nor_read_sr(ptr noundef %nor, ptr noundef %13) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end6.i:                                        ; preds = %if.end.i
  %14 = ptrtoint ptr %bouncebuf to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bouncebuf, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %15, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %17, i8 %11)
  %cmp.not.i = icmp eq i8 %17, %11
  br i1 %cmp.not.i, label %if.end6.i.cleanup_crit_edge, label %do.body.i

if.end6.i.cleanup_crit_edge:                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.body.i:                                        ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @spi_nor_write_sr1_and_check.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@spi_nor_sr1_bit6_quad_enable, %if.then16.i)) #15
          to label %cleanup [label %if.then16.i], !srcloc !272

if.then16.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #17
  %dev.i = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 2
  %18 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @spi_nor_write_sr1_and_check.__UNIQUE_ID_ddebug250, ptr noundef %19, ptr noundef nonnull @.str.58) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then16.i, %do.body.i, %if.end6.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %call.i, %if.end4.cleanup_crit_edge ], [ %call3.i, %if.end.i.cleanup_crit_edge ], [ -5, %if.then16.i ], [ 0, %if.end6.i.cleanup_crit_edge ], [ -5, %do.body.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @spi_nor_sr2_bit1_quad_enable(ptr noundef %nor) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 17
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup.sink.split_crit_edge

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %bouncebuf = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 4
  %2 = ptrtoint ptr %bouncebuf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bouncebuf, align 4
  %call1 = tail call i32 @spi_nor_read_cr(ptr noundef %nor, ptr noundef %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %4 = ptrtoint ptr %bouncebuf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bouncebuf, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %5, align 1
  %8 = and i8 %7, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool7.not = icmp eq i8 %8, 0
  br i1 %tobool7.not, label %if.end9, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end9:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  %or = or i8 %7, 2
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %or, ptr %5, align 1
  %10 = ptrtoint ptr %bouncebuf to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bouncebuf, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %11, align 1
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end9, %entry.cleanup.sink.split_crit_edge
  %.sink = phi i8 [ %13, %if.end9 ], [ 2, %entry.cleanup.sink.split_crit_edge ]
  %call16 = tail call i32 @spi_nor_write_16bit_cr_and_check(ptr noundef %nor, i8 noundef zeroext %.sink)
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end.cleanup_crit_edge ], [ 0, %if.end4.cleanup_crit_edge ], [ %call16, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @spi_nor_sr2_bit7_quad_enable(ptr noundef %nor) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %bouncebuf = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 4
  %0 = ptrtoint ptr %bouncebuf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bouncebuf, align 4
  %call = tail call fastcc i32 @spi_nor_read_sr2(ptr noundef %nor, ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %3)
  %tobool1.not = icmp sgt i8 %3, -1
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %or = or i8 %3, -128
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %or, ptr %1, align 1
  %call6 = tail call fastcc i32 @spi_nor_write_sr2(ptr noundef %nor, ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end9:                                          ; preds = %if.end3
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %1, align 1
  %call10 = tail call fastcc i32 @spi_nor_read_sr2(ptr noundef %nor, ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %1, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %8, i8 %6)
  %cmp.not = icmp eq i8 %8, %6
  br i1 %cmp.not, label %if.end13.cleanup_crit_edge, label %do.body

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.body:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @spi_nor_sr2_bit7_quad_enable.__UNIQUE_ID_ddebug261, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@spi_nor_sr2_bit7_quad_enable, %if.then22)) #15
          to label %cleanup [label %if.then22], !srcloc !272

if.then22:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  %dev = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 2
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @spi_nor_sr2_bit7_quad_enable.__UNIQUE_ID_ddebug261, ptr noundef %10, ptr noundef nonnull @.str.24) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then22, %do.body, %if.end13.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %call6, %if.end3.cleanup_crit_edge ], [ %call10, %if.end9.cleanup_crit_edge ], [ -5, %if.then22 ], [ 0, %if.end13.cleanup_crit_edge ], [ -5, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @spi_nor_read_sr2(ptr noundef %nor, ptr noundef %sr2) unnamed_addr #0 align 64 {
entry:
  %op = alloca %struct.spi_mem_op, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %spimem = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 3
  %0 = ptrtoint ptr %spimem to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spimem, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.else, label %if.end17.i

if.end17.i:                                       ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %op) #15
  %2 = call ptr @memset(ptr %op, i32 255, i32 48)
  %3 = ptrtoint ptr %op to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %op, align 8
  %buswidth = getelementptr inbounds %struct.anon.71, ptr %op, i32 0, i32 1
  %dtr = getelementptr inbounds %struct.anon.71, ptr %op, i32 0, i32 2
  %4 = ptrtoint ptr %dtr to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 127, ptr %dtr, align 2
  %opcode = getelementptr inbounds %struct.anon.71, ptr %op, i32 0, i32 3
  %5 = ptrtoint ptr %opcode to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 63, ptr %opcode, align 4
  %addr = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1
  %6 = ptrtoint ptr %addr to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %addr, align 8
  %buswidth2 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %buswidth2 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %buswidth2, align 1
  %dtr3 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1, i32 2
  %8 = ptrtoint ptr %dtr3 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 127, ptr %dtr3, align 2
  %val = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1, i32 3
  %9 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 0, ptr %val, align 8
  %dummy = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 2
  %10 = ptrtoint ptr %dummy to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %dummy, align 8
  %buswidth8 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 2, i32 1
  %11 = ptrtoint ptr %buswidth8 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %buswidth8, align 1
  %dtr9 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 2, i32 2
  %12 = ptrtoint ptr %dtr9 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 127, ptr %dtr9, align 2
  %data = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3
  %dtr14 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 1
  %13 = ptrtoint ptr %dtr14 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 127, ptr %dtr14, align 1
  %dir = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 2
  %14 = ptrtoint ptr %dir to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %dir, align 8
  %nbytes18 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 3
  %15 = ptrtoint ptr %nbytes18 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %nbytes18, align 4
  %buf = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 4
  %16 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %sr2, ptr %buf, align 8
  %reg_proto = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 15
  %17 = ptrtoint ptr %reg_proto to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %reg_proto, align 4
  %and.i.i = lshr i32 %18, 16
  %conv.i.i = trunc i32 %and.i.i to i8
  %19 = ptrtoint ptr %buswidth to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv.i.i, ptr %buswidth, align 1
  %conv.i72.i = trunc i32 %18 to i8
  %20 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv.i72.i, ptr %data, align 4
  %and.i73.i = and i32 %18, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i73.i)
  %tobool.i.not.i = icmp eq i32 %and.i73.i, 0
  br i1 %tobool.i.not.i, label %if.end17.i.spi_nor_spimem_setup_op.exit_crit_edge, label %if.then19.i

if.end17.i.spi_nor_spimem_setup_op.exit_crit_edge: ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %spi_nor_spimem_setup_op.exit

if.then19.i:                                      ; preds = %if.end17.i
  %21 = ptrtoint ptr %dtr to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 -1, ptr %dtr, align 2
  %22 = ptrtoint ptr %dtr3 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 -1, ptr %dtr3, align 2
  %23 = ptrtoint ptr %dtr9 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 -1, ptr %dtr9, align 2
  %24 = ptrtoint ptr %dtr14 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 -1, ptr %dtr14, align 1
  %cmd_ext_type.i.i = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 18
  %25 = ptrtoint ptr %cmd_ext_type.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cmd_ext_type.i.i, align 8
  %27 = zext i32 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.122)
  switch i32 %26, label %do.end.i.i [
    i32 2, label %if.then19.i.spi_nor_get_cmd_ext.exit.i_crit_edge
    i32 1, label %sw.bb2.i.i
  ]

if.then19.i.spi_nor_get_cmd_ext.exit.i_crit_edge: ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %spi_nor_get_cmd_ext.exit.i

sw.bb2.i.i:                                       ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %spi_nor_get_cmd_ext.exit.i

do.end.i.i:                                       ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #17
  %dev.i.i = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 2
  %28 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.32) #18
  br label %spi_nor_get_cmd_ext.exit.i

spi_nor_get_cmd_ext.exit.i:                       ; preds = %do.end.i.i, %sw.bb2.i.i, %if.then19.i.spi_nor_get_cmd_ext.exit.i_crit_edge
  %retval.0.i.i = phi i8 [ 0, %do.end.i.i ], [ 63, %sw.bb2.i.i ], [ -64, %if.then19.i.spi_nor_get_cmd_ext.exit.i_crit_edge ]
  %30 = ptrtoint ptr %opcode to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %opcode, align 4
  %shl.i = shl i16 %31, 8
  %conv42.i = zext i8 %retval.0.i.i to i16
  %or.i = or i16 %shl.i, %conv42.i
  store i16 %or.i, ptr %opcode, align 4
  %32 = ptrtoint ptr %op to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 2, ptr %op, align 8
  br label %spi_nor_spimem_setup_op.exit

spi_nor_spimem_setup_op.exit:                     ; preds = %spi_nor_get_cmd_ext.exit.i, %if.end17.i.spi_nor_spimem_setup_op.exit_crit_edge
  %33 = ptrtoint ptr %spimem to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %spimem, align 8
  %call = call i32 @spi_mem_exec_op(ptr noundef %34, ptr noundef nonnull %op) #15
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %op) #15
  br label %if.end

if.else:                                          ; preds = %entry
  %reg_proto.i = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 15
  %35 = ptrtoint ptr %reg_proto.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %reg_proto.i, align 4
  %and.i.i38 = and i32 %36, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i38)
  %tobool.i.not.i39 = icmp eq i32 %and.i.i38, 0
  br i1 %tobool.i.not.i39, label %if.end.i40, label %if.else.do.body_crit_edge

if.else.do.body_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body

if.end.i40:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  %controller_ops.i = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 20
  %37 = ptrtoint ptr %controller_ops.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %controller_ops.i, align 8
  %read_reg.i = getelementptr inbounds %struct.spi_nor_controller_ops, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %read_reg.i, align 4
  %call1.i = tail call i32 %40(ptr noundef %nor, i8 noundef zeroext 63, ptr noundef %sr2, i32 noundef 1) #15
  br label %if.end

if.end:                                           ; preds = %if.end.i40, %spi_nor_spimem_setup_op.exit
  %ret.0 = phi i32 [ %call, %spi_nor_spimem_setup_op.exit ], [ %call1.i, %if.end.i40 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool21.not = icmp eq i32 %ret.0, 0
  br i1 %tobool21.not, label %if.end.if.end29_crit_edge, label %if.end.do.body_crit_edge

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body

if.end.if.end29_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end29

do.body:                                          ; preds = %if.end.do.body_crit_edge, %if.else.do.body_crit_edge
  %ret.044 = phi i32 [ %ret.0, %if.end.do.body_crit_edge ], [ -95, %if.else.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @spi_nor_read_sr2.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@spi_nor_read_sr2, %if.then27)) #15
          to label %if.end29 [label %if.then27], !srcloc !272

if.then27:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  %dev = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 2
  %41 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @spi_nor_read_sr2.__UNIQUE_ID_ddebug255, ptr noundef %42, ptr noundef nonnull @.str.60, i32 noundef %ret.044) #15
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %do.body, %if.end.if.end29_crit_edge
  %ret.045 = phi i32 [ %ret.044, %if.then27 ], [ 0, %if.end.if.end29_crit_edge ], [ %ret.044, %do.body ]
  ret i32 %ret.045
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @spi_nor_write_sr2(ptr noundef %nor, ptr noundef %sr2) unnamed_addr #0 align 64 {
entry:
  %op = alloca %struct.spi_mem_op, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @spi_nor_write_enable(ptr noundef %nor)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %spimem = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 3
  %0 = ptrtoint ptr %spimem to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spimem, align 8
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %if.else, label %if.end17.i

if.end17.i:                                       ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %op) #15
  %2 = call ptr @memset(ptr %op, i32 255, i32 48)
  %3 = ptrtoint ptr %op to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %op, align 8
  %buswidth = getelementptr inbounds %struct.anon.71, ptr %op, i32 0, i32 1
  %dtr = getelementptr inbounds %struct.anon.71, ptr %op, i32 0, i32 2
  %4 = ptrtoint ptr %dtr to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 127, ptr %dtr, align 2
  %opcode = getelementptr inbounds %struct.anon.71, ptr %op, i32 0, i32 3
  %5 = ptrtoint ptr %opcode to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 62, ptr %opcode, align 4
  %addr = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1
  %6 = ptrtoint ptr %addr to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %addr, align 8
  %buswidth4 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %buswidth4 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %buswidth4, align 1
  %dtr5 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1, i32 2
  %8 = ptrtoint ptr %dtr5 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 127, ptr %dtr5, align 2
  %val = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1, i32 3
  %9 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 0, ptr %val, align 8
  %dummy = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 2
  %10 = ptrtoint ptr %dummy to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %dummy, align 8
  %buswidth10 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 2, i32 1
  %11 = ptrtoint ptr %buswidth10 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %buswidth10, align 1
  %dtr11 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 2, i32 2
  %12 = ptrtoint ptr %dtr11 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 127, ptr %dtr11, align 2
  %data = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3
  %dtr16 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 1
  %13 = ptrtoint ptr %dtr16 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 127, ptr %dtr16, align 1
  %dir = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 2
  %14 = ptrtoint ptr %dir to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 2, ptr %dir, align 8
  %nbytes20 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 3
  %15 = ptrtoint ptr %nbytes20 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %nbytes20, align 4
  %buf = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 4
  %16 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %sr2, ptr %buf, align 8
  %reg_proto = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 15
  %17 = ptrtoint ptr %reg_proto to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %reg_proto, align 4
  %and.i.i = lshr i32 %18, 16
  %conv.i.i = trunc i32 %and.i.i to i8
  %19 = ptrtoint ptr %buswidth to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv.i.i, ptr %buswidth, align 1
  %conv.i72.i = trunc i32 %18 to i8
  %20 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv.i72.i, ptr %data, align 4
  %and.i73.i = and i32 %18, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i73.i)
  %tobool.i.not.i = icmp eq i32 %and.i73.i, 0
  br i1 %tobool.i.not.i, label %if.end17.i.spi_nor_spimem_setup_op.exit_crit_edge, label %if.then19.i

if.end17.i.spi_nor_spimem_setup_op.exit_crit_edge: ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %spi_nor_spimem_setup_op.exit

if.then19.i:                                      ; preds = %if.end17.i
  %21 = ptrtoint ptr %dtr to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 -1, ptr %dtr, align 2
  %22 = ptrtoint ptr %dtr5 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 -1, ptr %dtr5, align 2
  %23 = ptrtoint ptr %dtr11 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 -1, ptr %dtr11, align 2
  %24 = ptrtoint ptr %dtr16 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 -1, ptr %dtr16, align 1
  %cmd_ext_type.i.i = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 18
  %25 = ptrtoint ptr %cmd_ext_type.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cmd_ext_type.i.i, align 8
  %27 = zext i32 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.123)
  switch i32 %26, label %do.end.i.i [
    i32 2, label %if.then19.i.spi_nor_get_cmd_ext.exit.i_crit_edge
    i32 1, label %sw.bb2.i.i
  ]

if.then19.i.spi_nor_get_cmd_ext.exit.i_crit_edge: ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %spi_nor_get_cmd_ext.exit.i

sw.bb2.i.i:                                       ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %spi_nor_get_cmd_ext.exit.i

do.end.i.i:                                       ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #17
  %dev.i.i = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 2
  %28 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.32) #18
  br label %spi_nor_get_cmd_ext.exit.i

spi_nor_get_cmd_ext.exit.i:                       ; preds = %do.end.i.i, %sw.bb2.i.i, %if.then19.i.spi_nor_get_cmd_ext.exit.i_crit_edge
  %retval.0.i.i = phi i8 [ 0, %do.end.i.i ], [ 62, %sw.bb2.i.i ], [ -63, %if.then19.i.spi_nor_get_cmd_ext.exit.i_crit_edge ]
  %30 = ptrtoint ptr %opcode to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %opcode, align 4
  %shl.i = shl i16 %31, 8
  %conv42.i = zext i8 %retval.0.i.i to i16
  %or.i = or i16 %shl.i, %conv42.i
  store i16 %or.i, ptr %opcode, align 4
  %32 = ptrtoint ptr %op to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 2, ptr %op, align 8
  br label %spi_nor_spimem_setup_op.exit

spi_nor_spimem_setup_op.exit:                     ; preds = %spi_nor_get_cmd_ext.exit.i, %if.end17.i.spi_nor_spimem_setup_op.exit_crit_edge
  %33 = ptrtoint ptr %spimem to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %spimem, align 8
  %call22 = call i32 @spi_mem_exec_op(ptr noundef %34, ptr noundef nonnull %op) #15
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %op) #15
  br label %if.end24

if.else:                                          ; preds = %if.end
  %reg_proto.i = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 15
  %35 = ptrtoint ptr %reg_proto.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %reg_proto.i, align 4
  %and.i.i47 = and i32 %36, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i47)
  %tobool.i.not.i48 = icmp eq i32 %and.i.i47, 0
  br i1 %tobool.i.not.i48, label %if.end.i49, label %if.else.do.body_crit_edge

if.else.do.body_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body

if.end.i49:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  %controller_ops.i = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 20
  %37 = ptrtoint ptr %controller_ops.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %controller_ops.i, align 8
  %write_reg.i = getelementptr inbounds %struct.spi_nor_controller_ops, ptr %38, i32 0, i32 3
  %39 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %write_reg.i, align 4
  %call1.i = tail call i32 %40(ptr noundef %nor, i8 noundef zeroext 62, ptr noundef %sr2, i32 noundef 1) #15
  br label %if.end24

if.end24:                                         ; preds = %if.end.i49, %spi_nor_spimem_setup_op.exit
  %ret.0 = phi i32 [ %call22, %spi_nor_spimem_setup_op.exit ], [ %call1.i, %if.end.i49 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool25.not = icmp eq i32 %ret.0, 0
  br i1 %tobool25.not, label %if.end33, label %if.end24.do.body_crit_edge

if.end24.do.body_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body

do.body:                                          ; preds = %if.end24.do.body_crit_edge, %if.else.do.body_crit_edge
  %ret.053 = phi i32 [ %ret.0, %if.end24.do.body_crit_edge ], [ -95, %if.else.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @spi_nor_write_sr2.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@spi_nor_write_sr2, %if.then31)) #15
          to label %cleanup [label %if.then31], !srcloc !272

if.then31:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  %dev = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 2
  %41 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @spi_nor_write_sr2.__UNIQUE_ID_ddebug254, ptr noundef %42, ptr noundef nonnull @.str.62, i32 noundef %ret.053) #15
  br label %cleanup

if.end33:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #17
  %call.i = call fastcc i32 @spi_nor_wait_till_ready_with_timeout(ptr noundef %nor, i32 noundef 4000) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %if.then31, %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end33 ], [ %call, %entry.cleanup_crit_edge ], [ %ret.053, %if.then31 ], [ %ret.053, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @spi_nor_set_read_settings(ptr nocapture noundef writeonly %read, i8 noundef zeroext %num_mode_clocks, i8 noundef zeroext %num_wait_states, i8 noundef zeroext %opcode, i32 noundef %proto) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %read to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %num_mode_clocks, ptr %read, align 4
  %num_wait_states2 = getelementptr inbounds %struct.spi_nor_read_command, ptr %read, i32 0, i32 1
  %1 = ptrtoint ptr %num_wait_states2 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %num_wait_states, ptr %num_wait_states2, align 1
  %opcode3 = getelementptr inbounds %struct.spi_nor_read_command, ptr %read, i32 0, i32 2
  %2 = ptrtoint ptr %opcode3 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %opcode, ptr %opcode3, align 2
  %proto4 = getelementptr inbounds %struct.spi_nor_read_command, ptr %read, i32 0, i32 3
  %3 = ptrtoint ptr %proto4 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %proto, ptr %proto4, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @spi_nor_set_pp_settings(ptr nocapture noundef writeonly %pp, i8 noundef zeroext %opcode, i32 noundef %proto) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pp to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %opcode, ptr %pp, align 4
  %proto2 = getelementptr inbounds %struct.spi_nor_pp_command, ptr %pp, i32 0, i32 1
  %1 = ptrtoint ptr %proto2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %proto, ptr %proto2, align 4
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync)
define dso_local i32 @spi_nor_hwcaps_read2cmd(i32 noundef %hwcaps) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %hwcaps to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.124)
  switch i32 %hwcaps, label %entry.spi_nor_hwcaps2cmd.exit_crit_edge [
    i32 1, label %entry.if.then.i_crit_edge
    i32 2, label %if.then.i.fold.split
    i32 4, label %if.then.i.fold.split3
    i32 8, label %if.then.i.fold.split4
    i32 16, label %if.then.i.fold.split5
    i32 32, label %if.then.i.fold.split6
    i32 64, label %if.then.i.fold.split7
    i32 128, label %if.then.i.fold.split8
    i32 256, label %if.then.i.fold.split9
    i32 512, label %if.then.i.fold.split10
    i32 1024, label %if.then.i.fold.split11
    i32 2048, label %if.then.i.fold.split12
    i32 4096, label %if.then.i.fold.split13
    i32 8192, label %if.then.i.fold.split14
    i32 16384, label %if.then.i.fold.split15
    i32 32768, label %if.then.i.fold.split16
  ]

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

entry.spi_nor_hwcaps2cmd.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %spi_nor_hwcaps2cmd.exit

if.then.i.fold.split:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

if.then.i.fold.split3:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

if.then.i.fold.split4:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

if.then.i.fold.split5:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

if.then.i.fold.split6:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

if.then.i.fold.split7:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

if.then.i.fold.split8:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

if.then.i.fold.split9:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

if.then.i.fold.split10:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

if.then.i.fold.split11:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

if.then.i.fold.split12:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

if.then.i.fold.split13:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

if.then.i.fold.split14:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

if.then.i.fold.split15:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

if.then.i.fold.split16:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

if.then.i:                                        ; preds = %if.then.i.fold.split16, %if.then.i.fold.split15, %if.then.i.fold.split14, %if.then.i.fold.split13, %if.then.i.fold.split12, %if.then.i.fold.split11, %if.then.i.fold.split10, %if.then.i.fold.split9, %if.then.i.fold.split8, %if.then.i.fold.split7, %if.then.i.fold.split6, %if.then.i.fold.split5, %if.then.i.fold.split4, %if.then.i.fold.split3, %if.then.i.fold.split, %entry.if.then.i_crit_edge
  %i.011.i.lcssa = phi i32 [ 0, %entry.if.then.i_crit_edge ], [ 1, %if.then.i.fold.split ], [ 2, %if.then.i.fold.split3 ], [ 3, %if.then.i.fold.split4 ], [ 4, %if.then.i.fold.split5 ], [ 5, %if.then.i.fold.split6 ], [ 6, %if.then.i.fold.split7 ], [ 7, %if.then.i.fold.split8 ], [ 8, %if.then.i.fold.split9 ], [ 9, %if.then.i.fold.split10 ], [ 10, %if.then.i.fold.split11 ], [ 11, %if.then.i.fold.split12 ], [ 12, %if.then.i.fold.split13 ], [ 13, %if.then.i.fold.split14 ], [ 14, %if.then.i.fold.split15 ], [ 15, %if.then.i.fold.split16 ]
  %arrayidx4.i = getelementptr [2 x i32], ptr @spi_nor_hwcaps_read2cmd.hwcaps_read2cmd, i32 %i.011.i.lcssa, i32 1
  %1 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx4.i, align 4
  br label %spi_nor_hwcaps2cmd.exit

spi_nor_hwcaps2cmd.exit:                          ; preds = %if.then.i, %entry.spi_nor_hwcaps2cmd.exit_crit_edge
  %retval.0.i = phi i32 [ %2, %if.then.i ], [ -22, %entry.spi_nor_hwcaps2cmd.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @spi_nor_set_erase_type(ptr nocapture noundef writeonly %erase, i32 noundef %size, i8 noundef zeroext %opcode) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %erase to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %size, ptr %erase, align 4
  %opcode2 = getelementptr inbounds %struct.spi_nor_erase_type, ptr %erase, i32 0, i32 3
  %1 = ptrtoint ptr %opcode2 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %opcode, ptr %opcode2, align 4
  %2 = tail call i32 @llvm.cttz.i32(i32 %size, i1 true), !range !273
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %iszero = icmp eq i32 %size, 0
  %sub = select i1 %iszero, i32 -1, i32 %2
  %size_shift = getelementptr inbounds %struct.spi_nor_erase_type, ptr %erase, i32 0, i32 1
  %3 = ptrtoint ptr %size_shift to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %sub, ptr %size_shift, align 4
  %notmask = shl nsw i32 -1, %sub
  %sub5 = xor i32 %notmask, -1
  %size_mask = getelementptr inbounds %struct.spi_nor_erase_type, ptr %erase, i32 0, i32 2
  %4 = ptrtoint ptr %size_mask to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %sub5, ptr %size_mask, align 4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #7

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @spi_nor_init_uniform_erase_map(ptr noundef %map, i8 noundef zeroext %erase_mask, i64 noundef %flash_size) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i8 %erase_mask, 15
  %1 = or i8 %0, 16
  %or = zext i8 %1 to i64
  %uniform_region = getelementptr inbounds %struct.spi_nor_erase_map, ptr %map, i32 0, i32 1
  %2 = ptrtoint ptr %uniform_region to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %or, ptr %uniform_region, align 8
  %size = getelementptr inbounds %struct.spi_nor_erase_map, ptr %map, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %size to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %flash_size, ptr %size, align 8
  %4 = ptrtoint ptr %map to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %uniform_region, ptr %map, align 8
  %uniform_erase_type = getelementptr inbounds %struct.spi_nor_erase_map, ptr %map, i32 0, i32 3
  %5 = ptrtoint ptr %uniform_erase_type to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %erase_mask, ptr %uniform_erase_type, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @spi_nor_post_bfpt_fixups(ptr noundef %nor, ptr noundef %bfpt_header, ptr noundef %bfpt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %manufacturer = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 7
  %0 = ptrtoint ptr %manufacturer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %manufacturer, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end12_crit_edge, label %land.lhs.true

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end12

land.lhs.true:                                    ; preds = %entry
  %fixups = getelementptr inbounds %struct.spi_nor_manufacturer, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %fixups to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fixups, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %land.lhs.true.if.end12_crit_edge, label %land.lhs.true3

land.lhs.true.if.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end12

land.lhs.true3:                                   ; preds = %land.lhs.true
  %post_bfpt = getelementptr inbounds %struct.spi_nor_fixups, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %post_bfpt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %post_bfpt, align 4
  %tobool6.not = icmp eq ptr %5, null
  br i1 %tobool6.not, label %land.lhs.true3.if.end12_crit_edge, label %if.then

land.lhs.true3.if.end12_crit_edge:                ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end12

if.then:                                          ; preds = %land.lhs.true3
  %call = tail call i32 %5(ptr noundef %nor, ptr noundef %bfpt_header, ptr noundef %bfpt) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool10.not = icmp eq i32 %call, 0
  br i1 %tobool10.not, label %if.then.if.end12_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then.if.end12_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end12

if.end12:                                         ; preds = %if.then.if.end12_crit_edge, %land.lhs.true3.if.end12_crit_edge, %land.lhs.true.if.end12_crit_edge, %entry.if.end12_crit_edge
  %info = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 6
  %6 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %info, align 4
  %fixups13 = getelementptr inbounds %struct.flash_info, ptr %7, i32 0, i32 13
  %8 = ptrtoint ptr %fixups13 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fixups13, align 8
  %tobool14.not = icmp eq ptr %9, null
  br i1 %tobool14.not, label %if.end12.cleanup_crit_edge, label %land.lhs.true15

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

land.lhs.true15:                                  ; preds = %if.end12
  %post_bfpt18 = getelementptr inbounds %struct.spi_nor_fixups, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %post_bfpt18 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %post_bfpt18, align 4
  %tobool19.not = icmp eq ptr %11, null
  br i1 %tobool19.not, label %land.lhs.true15.cleanup_crit_edge, label %if.then20

land.lhs.true15.cleanup_crit_edge:                ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then20:                                        ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #17
  %call24 = tail call i32 %11(ptr noundef %nor, ptr noundef %bfpt_header, ptr noundef %bfpt) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then20, %land.lhs.true15.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call24, %if.then20 ], [ %call, %if.then.cleanup_crit_edge ], [ 0, %land.lhs.true15.cleanup_crit_edge ], [ 0, %if.end12.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @spi_nor_restore(ptr noundef %nor) #0 align 64 {
entry:
  %op.i = alloca %struct.spi_mem_op, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %addr_width = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 8
  %0 = ptrtoint ptr %addr_width to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %addr_width, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %1)
  %cmp = icmp eq i8 %1, 4
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %flags = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 17
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %4 = and i32 %3, 96
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %4)
  %.not = icmp eq i32 %4, 32
  br i1 %.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  %params = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 21
  %5 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %params, align 4
  %set_4byte_addr_mode = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %6, i32 0, i32 12
  %7 = ptrtoint ptr %set_4byte_addr_mode to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %set_4byte_addr_mode, align 8
  %call = tail call i32 %8(ptr noundef %nor, i1 noundef zeroext false) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %flags6 = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 17
  %9 = ptrtoint ptr %flags6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags6, align 4
  %and7 = and i32 %10, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.end.if.end10_crit_edge, label %if.end.i.i

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end10

if.end.i.i:                                       ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %op.i) #15
  %.compoundliteral.sroa.3.0.op.sroa_idx.i = getelementptr inbounds i8, ptr %op.i, i32 1
  %11 = getelementptr inbounds i8, ptr %op.i, i32 2
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 0, ptr %11, align 2
  %.compoundliteral.sroa.4.0.op.sroa_idx.i = getelementptr inbounds i8, ptr %op.i, i32 6
  %13 = call ptr @memset(ptr %.compoundliteral.sroa.4.0.op.sroa_idx.i, i32 0, i32 42)
  %14 = ptrtoint ptr %op.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %op.i, align 8
  %.compoundliteral.sroa.333.0.op.sroa_idx.i = getelementptr inbounds i8, ptr %op.i, i32 4
  %15 = ptrtoint ptr %.compoundliteral.sroa.333.0.op.sroa_idx.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 102, ptr %.compoundliteral.sroa.333.0.op.sroa_idx.i, align 4
  %reg_proto.i = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 15
  %16 = ptrtoint ptr %reg_proto.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %reg_proto.i, align 4
  %and.i.i.i = lshr i32 %17, 16
  %conv.i.i.i = trunc i32 %and.i.i.i to i8
  %18 = ptrtoint ptr %.compoundliteral.sroa.3.0.op.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv.i.i.i, ptr %.compoundliteral.sroa.3.0.op.sroa_idx.i, align 1
  %dummy.i.i = getelementptr inbounds %struct.spi_mem_op, ptr %op.i, i32 0, i32 2
  %19 = ptrtoint ptr %dummy.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %dummy.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool5.not.i.i = icmp eq i8 %20, 0
  br i1 %tobool5.not.i.i, label %if.end.i.i.if.end10.i.i_crit_edge, label %if.then6.i.i

if.end.i.i.if.end10.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end10.i.i

if.then6.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %and.i70.i.i = lshr i32 %17, 8
  %conv.i71.i.i = trunc i32 %and.i70.i.i to i8
  %buswidth9.i.i = getelementptr inbounds %struct.spi_mem_op, ptr %op.i, i32 0, i32 2, i32 1
  %21 = ptrtoint ptr %buswidth9.i.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv.i71.i.i, ptr %buswidth9.i.i, align 1
  br label %if.end10.i.i

if.end10.i.i:                                     ; preds = %if.then6.i.i, %if.end.i.i.if.end10.i.i_crit_edge
  %nbytes11.i.i = getelementptr inbounds %struct.spi_mem_op, ptr %op.i, i32 0, i32 3, i32 3
  %22 = ptrtoint ptr %nbytes11.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %nbytes11.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool12.not.i.i = icmp eq i32 %23, 0
  br i1 %tobool12.not.i.i, label %if.end10.i.i.if.end17.i.i_crit_edge, label %if.then13.i.i

if.end10.i.i.if.end17.i.i_crit_edge:              ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end17.i.i

if.then13.i.i:                                    ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %data.i.i = getelementptr inbounds %struct.spi_mem_op, ptr %op.i, i32 0, i32 3
  %conv.i72.i.i = trunc i32 %17 to i8
  %24 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv.i72.i.i, ptr %data.i.i, align 4
  br label %if.end17.i.i

if.end17.i.i:                                     ; preds = %if.then13.i.i, %if.end10.i.i.if.end17.i.i_crit_edge
  %and.i73.i.i = and i32 %17, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i73.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i73.i.i, 0
  br i1 %tobool.i.not.i.i, label %if.end17.i.i.spi_nor_spimem_setup_op.exit.i_crit_edge, label %if.then19.i.i

if.end17.i.i.spi_nor_spimem_setup_op.exit.i_crit_edge: ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %spi_nor_spimem_setup_op.exit.i

if.then19.i.i:                                    ; preds = %if.end17.i.i
  %25 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %25)
  %bf.load.i.i = load i8, ptr %11, align 2
  %bf.set.i.i = or i8 %bf.load.i.i, -128
  store i8 %bf.set.i.i, ptr %11, align 2
  %dtr22.i.i = getelementptr inbounds %struct.spi_mem_op, ptr %op.i, i32 0, i32 1, i32 2
  %26 = ptrtoint ptr %dtr22.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %bf.load23.i.i = load i8, ptr %dtr22.i.i, align 2
  %bf.set25.i.i = or i8 %bf.load23.i.i, -128
  store i8 %bf.set25.i.i, ptr %dtr22.i.i, align 2
  %dtr27.i.i = getelementptr inbounds %struct.spi_mem_op, ptr %op.i, i32 0, i32 2, i32 2
  %27 = ptrtoint ptr %dtr27.i.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %bf.load28.i.i = load i8, ptr %dtr27.i.i, align 2
  %bf.set30.i.i = or i8 %bf.load28.i.i, -128
  store i8 %bf.set30.i.i, ptr %dtr27.i.i, align 2
  %dtr32.i.i = getelementptr inbounds %struct.spi_mem_op, ptr %op.i, i32 0, i32 3, i32 1
  %28 = ptrtoint ptr %dtr32.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %bf.load33.i.i = load i8, ptr %dtr32.i.i, align 1
  %bf.set35.i.i = or i8 %bf.load33.i.i, -128
  store i8 %bf.set35.i.i, ptr %dtr32.i.i, align 1
  %mul.i.i = shl i8 %20, 1
  %29 = ptrtoint ptr %dummy.i.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %mul.i.i, ptr %dummy.i.i, align 8
  %cmd_ext_type.i.i.i = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 18
  %30 = ptrtoint ptr %cmd_ext_type.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cmd_ext_type.i.i.i, align 8
  %32 = zext i32 %31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.125)
  switch i32 %31, label %do.end.i.i.i [
    i32 2, label %if.then19.i.i.spi_nor_get_cmd_ext.exit.i.i_crit_edge
    i32 1, label %sw.bb2.i.i.i
  ]

if.then19.i.i.spi_nor_get_cmd_ext.exit.i.i_crit_edge: ; preds = %if.then19.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %spi_nor_get_cmd_ext.exit.i.i

sw.bb2.i.i.i:                                     ; preds = %if.then19.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %spi_nor_get_cmd_ext.exit.i.i

do.end.i.i.i:                                     ; preds = %if.then19.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %dev.i.i.i = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 2
  %33 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev.i.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.32) #18
  br label %spi_nor_get_cmd_ext.exit.i.i

spi_nor_get_cmd_ext.exit.i.i:                     ; preds = %do.end.i.i.i, %sw.bb2.i.i.i, %if.then19.i.i.spi_nor_get_cmd_ext.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i8 [ 0, %do.end.i.i.i ], [ 102, %sw.bb2.i.i.i ], [ -103, %if.then19.i.i.spi_nor_get_cmd_ext.exit.i.i_crit_edge ]
  %35 = ptrtoint ptr %.compoundliteral.sroa.333.0.op.sroa_idx.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %.compoundliteral.sroa.333.0.op.sroa_idx.i, align 4
  %shl.i.i = shl i16 %36, 8
  %conv42.i.i = zext i8 %retval.0.i.i.i to i16
  %or.i.i = or i16 %shl.i.i, %conv42.i.i
  store i16 %or.i.i, ptr %.compoundliteral.sroa.333.0.op.sroa_idx.i, align 4
  %37 = ptrtoint ptr %op.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 2, ptr %op.i, align 8
  br label %spi_nor_spimem_setup_op.exit.i

spi_nor_spimem_setup_op.exit.i:                   ; preds = %spi_nor_get_cmd_ext.exit.i.i, %if.end17.i.i.spi_nor_spimem_setup_op.exit.i_crit_edge
  %spimem.i = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 3
  %38 = ptrtoint ptr %spimem.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %spimem.i, align 8
  %call.i = call i32 @spi_mem_exec_op(ptr noundef %39, ptr noundef nonnull %op.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i55.i, label %do.end.i

do.end.i:                                         ; preds = %spi_nor_spimem_setup_op.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  %dev.i = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 2
  %40 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %41, ptr noundef nonnull @.str.63, i32 noundef %call.i) #18
  br label %spi_nor_soft_reset.exit

if.end.i55.i:                                     ; preds = %spi_nor_spimem_setup_op.exit.i
  %42 = ptrtoint ptr %11 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 0, ptr %11, align 2
  %43 = call ptr @memset(ptr %.compoundliteral.sroa.4.0.op.sroa_idx.i, i32 0, i32 42)
  %44 = ptrtoint ptr %op.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 1, ptr %op.i, align 8
  %45 = ptrtoint ptr %.compoundliteral.sroa.333.0.op.sroa_idx.i to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 153, ptr %.compoundliteral.sroa.333.0.op.sroa_idx.i, align 4
  %46 = ptrtoint ptr %reg_proto.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %reg_proto.i, align 4
  %and.i.i44.i = lshr i32 %47, 16
  %conv.i.i45.i = trunc i32 %and.i.i44.i to i8
  %48 = ptrtoint ptr %.compoundliteral.sroa.3.0.op.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %conv.i.i45.i, ptr %.compoundliteral.sroa.3.0.op.sroa_idx.i, align 1
  %49 = ptrtoint ptr %dummy.i.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %dummy.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool5.not.i54.i = icmp eq i8 %50, 0
  br i1 %tobool5.not.i54.i, label %if.end.i55.i.if.end10.i62.i_crit_edge, label %if.then6.i59.i

if.end.i55.i.if.end10.i62.i_crit_edge:            ; preds = %if.end.i55.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end10.i62.i

if.then6.i59.i:                                   ; preds = %if.end.i55.i
  call void @__sanitizer_cov_trace_pc() #17
  %and.i70.i56.i = lshr i32 %47, 8
  %conv.i71.i57.i = trunc i32 %and.i70.i56.i to i8
  %buswidth9.i58.i = getelementptr inbounds %struct.spi_mem_op, ptr %op.i, i32 0, i32 2, i32 1
  %51 = ptrtoint ptr %buswidth9.i58.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %conv.i71.i57.i, ptr %buswidth9.i58.i, align 1
  br label %if.end10.i62.i

if.end10.i62.i:                                   ; preds = %if.then6.i59.i, %if.end.i55.i.if.end10.i62.i_crit_edge
  %52 = ptrtoint ptr %nbytes11.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %nbytes11.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool12.not.i61.i = icmp eq i32 %53, 0
  br i1 %tobool12.not.i61.i, label %if.end10.i62.i.if.end17.i68.i_crit_edge, label %if.then13.i65.i

if.end10.i62.i.if.end17.i68.i_crit_edge:          ; preds = %if.end10.i62.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end17.i68.i

if.then13.i65.i:                                  ; preds = %if.end10.i62.i
  call void @__sanitizer_cov_trace_pc() #17
  %data.i63.i = getelementptr inbounds %struct.spi_mem_op, ptr %op.i, i32 0, i32 3
  %conv.i72.i64.i = trunc i32 %47 to i8
  %54 = ptrtoint ptr %data.i63.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %conv.i72.i64.i, ptr %data.i63.i, align 4
  br label %if.end17.i68.i

if.end17.i68.i:                                   ; preds = %if.then13.i65.i, %if.end10.i62.i.if.end17.i68.i_crit_edge
  %and.i73.i66.i = and i32 %47, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i73.i66.i)
  %tobool.i.not.i67.i = icmp eq i32 %and.i73.i66.i, 0
  br i1 %tobool.i.not.i67.i, label %if.end17.i68.i.spi_nor_spimem_setup_op.exit99.i_crit_edge, label %if.then19.i83.i

if.end17.i68.i.spi_nor_spimem_setup_op.exit99.i_crit_edge: ; preds = %if.end17.i68.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %spi_nor_spimem_setup_op.exit99.i

if.then19.i83.i:                                  ; preds = %if.end17.i68.i
  %55 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %55)
  %bf.load.i70.i = load i8, ptr %11, align 2
  %bf.set.i71.i = or i8 %bf.load.i70.i, -128
  store i8 %bf.set.i71.i, ptr %11, align 2
  %dtr22.i72.i = getelementptr inbounds %struct.spi_mem_op, ptr %op.i, i32 0, i32 1, i32 2
  %56 = ptrtoint ptr %dtr22.i72.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %bf.load23.i73.i = load i8, ptr %dtr22.i72.i, align 2
  %bf.set25.i74.i = or i8 %bf.load23.i73.i, -128
  store i8 %bf.set25.i74.i, ptr %dtr22.i72.i, align 2
  %dtr27.i75.i = getelementptr inbounds %struct.spi_mem_op, ptr %op.i, i32 0, i32 2, i32 2
  %57 = ptrtoint ptr %dtr27.i75.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %bf.load28.i76.i = load i8, ptr %dtr27.i75.i, align 2
  %bf.set30.i77.i = or i8 %bf.load28.i76.i, -128
  store i8 %bf.set30.i77.i, ptr %dtr27.i75.i, align 2
  %dtr32.i78.i = getelementptr inbounds %struct.spi_mem_op, ptr %op.i, i32 0, i32 3, i32 1
  %58 = ptrtoint ptr %dtr32.i78.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %bf.load33.i79.i = load i8, ptr %dtr32.i78.i, align 1
  %bf.set35.i80.i = or i8 %bf.load33.i79.i, -128
  store i8 %bf.set35.i80.i, ptr %dtr32.i78.i, align 1
  %mul.i81.i = shl i8 %50, 1
  %59 = ptrtoint ptr %dummy.i.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %mul.i81.i, ptr %dummy.i.i, align 8
  %cmd_ext_type.i.i82.i = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 18
  %60 = ptrtoint ptr %cmd_ext_type.i.i82.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %cmd_ext_type.i.i82.i, align 8
  %62 = zext i32 %61 to i64
  call void @__sanitizer_cov_trace_switch(i64 %62, ptr @__sancov_gen_cov_switch_values.126)
  switch i32 %61, label %do.end.i.i92.i [
    i32 2, label %if.then19.i83.i.spi_nor_get_cmd_ext.exit.i98.i_crit_edge
    i32 1, label %sw.bb2.i.i90.i
  ]

if.then19.i83.i.spi_nor_get_cmd_ext.exit.i98.i_crit_edge: ; preds = %if.then19.i83.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %spi_nor_get_cmd_ext.exit.i98.i

sw.bb2.i.i90.i:                                   ; preds = %if.then19.i83.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %spi_nor_get_cmd_ext.exit.i98.i

do.end.i.i92.i:                                   ; preds = %if.then19.i83.i
  call void @__sanitizer_cov_trace_pc() #17
  %dev.i.i91.i = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 2
  %63 = ptrtoint ptr %dev.i.i91.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev.i.i91.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %64, ptr noundef nonnull @.str.32) #18
  br label %spi_nor_get_cmd_ext.exit.i98.i

spi_nor_get_cmd_ext.exit.i98.i:                   ; preds = %do.end.i.i92.i, %sw.bb2.i.i90.i, %if.then19.i83.i.spi_nor_get_cmd_ext.exit.i98.i_crit_edge
  %retval.0.i.i93.i = phi i8 [ 0, %do.end.i.i92.i ], [ -103, %sw.bb2.i.i90.i ], [ 102, %if.then19.i83.i.spi_nor_get_cmd_ext.exit.i98.i_crit_edge ]
  %65 = ptrtoint ptr %.compoundliteral.sroa.333.0.op.sroa_idx.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %.compoundliteral.sroa.333.0.op.sroa_idx.i, align 4
  %shl.i95.i = shl i16 %66, 8
  %conv42.i96.i = zext i8 %retval.0.i.i93.i to i16
  %or.i97.i = or i16 %shl.i95.i, %conv42.i96.i
  store i16 %or.i97.i, ptr %.compoundliteral.sroa.333.0.op.sroa_idx.i, align 4
  %67 = ptrtoint ptr %op.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 2, ptr %op.i, align 8
  br label %spi_nor_spimem_setup_op.exit99.i

spi_nor_spimem_setup_op.exit99.i:                 ; preds = %spi_nor_get_cmd_ext.exit.i98.i, %if.end17.i68.i.spi_nor_spimem_setup_op.exit99.i_crit_edge
  %68 = ptrtoint ptr %spimem.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %spimem.i, align 8
  %call23.i = call i32 @spi_mem_exec_op(ptr noundef %69, ptr noundef nonnull %op.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %tobool24.not.i = icmp eq i32 %call23.i, 0
  br i1 %tobool24.not.i, label %if.end30.i, label %do.end28.i

do.end28.i:                                       ; preds = %spi_nor_spimem_setup_op.exit99.i
  call void @__sanitizer_cov_trace_pc() #17
  %dev29.i = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 2
  %70 = ptrtoint ptr %dev29.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dev29.i, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %71, ptr noundef nonnull @.str.63, i32 noundef %call23.i) #18
  br label %spi_nor_soft_reset.exit

if.end30.i:                                       ; preds = %spi_nor_spimem_setup_op.exit99.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @usleep_range_state(i32 noundef 200, i32 noundef 400, i32 noundef 2) #15
  br label %spi_nor_soft_reset.exit

spi_nor_soft_reset.exit:                          ; preds = %if.end30.i, %do.end28.i, %do.end.i
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %op.i) #15
  br label %if.end10

if.end10:                                         ; preds = %spi_nor_soft_reset.exit, %if.end.if.end10_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @spi_nor_scan(ptr noundef %nor, ptr noundef readonly %name, ptr noundef %hwcaps) #0 align 64 {
entry:
  %sfdp_params.i.i.i = alloca %struct.spi_nor_flash_parameter, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 2
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.do.end.i_crit_edge, label %lor.lhs.false.i

entry.do.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end.i

lor.lhs.false.i:                                  ; preds = %entry
  %spimem.i = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 3
  %2 = ptrtoint ptr %spimem.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %spimem.i, align 8
  %tobool1.not.i = icmp eq ptr %3, null
  %controller_ops.i = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 20
  %4 = ptrtoint ptr %controller_ops.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %controller_ops.i, align 8
  %tobool2.not.i = icmp eq ptr %5, null
  br i1 %tobool1.not.i, label %land.lhs.true.i, label %land.lhs.true23.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  br i1 %tobool2.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true9.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end.i

land.lhs.true9.i:                                 ; preds = %land.lhs.true.i
  %read.i = getelementptr inbounds %struct.spi_nor_controller_ops, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read.i, align 4
  %tobool11.not.i = icmp eq ptr %7, null
  br i1 %tobool11.not.i, label %land.lhs.true9.i.do.end.i_crit_edge, label %lor.lhs.false12.i

land.lhs.true9.i.do.end.i_crit_edge:              ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end.i

lor.lhs.false12.i:                                ; preds = %land.lhs.true9.i
  %write.i = getelementptr inbounds %struct.spi_nor_controller_ops, ptr %5, i32 0, i32 5
  %8 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %write.i, align 4
  %tobool14.not.i = icmp eq ptr %9, null
  br i1 %tobool14.not.i, label %lor.lhs.false12.i.do.end.i_crit_edge, label %lor.lhs.false15.i

lor.lhs.false12.i.do.end.i_crit_edge:             ; preds = %lor.lhs.false12.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end.i

lor.lhs.false15.i:                                ; preds = %lor.lhs.false12.i
  %read_reg.i = getelementptr inbounds %struct.spi_nor_controller_ops, ptr %5, i32 0, i32 2
  %10 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %read_reg.i, align 4
  %tobool17.not.i = icmp eq ptr %11, null
  br i1 %tobool17.not.i, label %lor.lhs.false15.i.do.end.i_crit_edge, label %lor.lhs.false18.i

lor.lhs.false15.i.do.end.i_crit_edge:             ; preds = %lor.lhs.false15.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end.i

lor.lhs.false18.i:                                ; preds = %lor.lhs.false15.i
  %write_reg.i = getelementptr inbounds %struct.spi_nor_controller_ops, ptr %5, i32 0, i32 3
  %12 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write_reg.i, align 4
  %tobool20.not.i = icmp eq ptr %13, null
  br i1 %tobool20.not.i, label %lor.lhs.false18.i.do.end.i_crit_edge, label %lor.lhs.false18.i.if.end_crit_edge

lor.lhs.false18.i.if.end_crit_edge:               ; preds = %lor.lhs.false18.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

lor.lhs.false18.i.do.end.i_crit_edge:             ; preds = %lor.lhs.false18.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end.i

do.end.i:                                         ; preds = %lor.lhs.false18.i.do.end.i_crit_edge, %lor.lhs.false15.i.do.end.i_crit_edge, %lor.lhs.false12.i.do.end.i_crit_edge, %land.lhs.true9.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68) #18
  br label %cleanup

land.lhs.true23.i:                                ; preds = %lor.lhs.false.i
  br i1 %tobool2.not.i, label %land.lhs.true23.i.if.end_crit_edge, label %do.end28.i

land.lhs.true23.i.if.end_crit_edge:               ; preds = %land.lhs.true23.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

do.end28.i:                                       ; preds = %land.lhs.true23.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %1, ptr noundef nonnull @.str.71) #18
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true23.i.if.end_crit_edge, %lor.lhs.false18.i.if.end_crit_edge
  %reg_proto = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 15
  %14 = ptrtoint ptr %reg_proto to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 65793, ptr %reg_proto, align 4
  %read_proto = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 13
  %15 = ptrtoint ptr %read_proto to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 65793, ptr %read_proto, align 4
  %write_proto = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 14
  %16 = ptrtoint ptr %write_proto to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 65793, ptr %write_proto, align 8
  %bouncebuf_size = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 5
  %17 = ptrtoint ptr %bouncebuf_size to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 4096, ptr %bouncebuf_size, align 8
  %call4 = tail call noalias ptr @devm_kmalloc(ptr noundef nonnull %1, i32 noundef 4096, i32 noundef 3264) #15
  %bouncebuf = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 4
  %18 = ptrtoint ptr %bouncebuf to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call4, ptr %bouncebuf, align 4
  %tobool6.not = icmp eq ptr %call4, null
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %tobool.not.i132 = icmp eq ptr %name, null
  br i1 %tobool.not.i132, label %if.end8.if.then2.i_crit_edge, label %if.end8.for.cond1.preheader.i.i_crit_edge

if.end8.for.cond1.preheader.i.i_crit_edge:        ; preds = %if.end8
  br label %for.cond1.preheader.i.i

if.end8.if.then2.i_crit_edge:                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then2.i

for.cond1.preheader.i.i:                          ; preds = %for.inc11.i.i.for.cond1.preheader.i.i_crit_edge, %if.end8.for.cond1.preheader.i.i_crit_edge
  %i.027.i.i = phi i32 [ %inc12.i.i, %for.inc11.i.i.for.cond1.preheader.i.i_crit_edge ], [ 0, %if.end8.for.cond1.preheader.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr [17 x ptr], ptr @manufacturers, i32 0, i32 %i.027.i.i
  %19 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.i.i, align 4
  %nparts.i.i = getelementptr inbounds %struct.spi_nor_manufacturer, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %nparts.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %nparts.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp225.not.i.i = icmp eq i32 %22, 0
  br i1 %cmp225.not.i.i, label %for.cond1.preheader.i.i.for.inc11.i.i_crit_edge, label %for.body3.lr.ph.i.i

for.cond1.preheader.i.i.for.inc11.i.i_crit_edge:  ; preds = %for.cond1.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc11.i.i

for.body3.lr.ph.i.i:                              ; preds = %for.cond1.preheader.i.i
  %parts.i.i = getelementptr inbounds %struct.spi_nor_manufacturer, ptr %20, i32 0, i32 1
  %23 = ptrtoint ptr %parts.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %parts.i.i, align 4
  br label %for.body3.i.i

for.body3.i.i:                                    ; preds = %for.inc.i.i.for.body3.i.i_crit_edge, %for.body3.lr.ph.i.i
  %j.026.i.i = phi i32 [ 0, %for.body3.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body3.i.i_crit_edge ]
  %arrayidx5.i.i = getelementptr %struct.flash_info, ptr %24, i32 %j.026.i.i
  %25 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx5.i.i, align 8
  %call.i.i = tail call i32 @strcmp(ptr noundef nonnull %name, ptr noundef %26) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body3.i.i
  %inc.i.i = add nuw i32 %j.026.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %22
  br i1 %exitcond.not.i.i, label %for.inc.i.i.for.inc11.i.i_crit_edge, label %for.inc.i.i.for.body3.i.i_crit_edge

for.inc.i.i.for.body3.i.i_crit_edge:              ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body3.i.i

for.inc.i.i.for.inc11.i.i_crit_edge:              ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc11.i.i

for.inc11.i.i:                                    ; preds = %for.inc.i.i.for.inc11.i.i_crit_edge, %for.cond1.preheader.i.i.for.inc11.i.i_crit_edge
  %inc12.i.i = add nuw nsw i32 %i.027.i.i, 1
  %exitcond30.not.i.i = icmp eq i32 %inc12.i.i, 17
  br i1 %exitcond30.not.i.i, label %for.inc11.i.i.if.then2.i_crit_edge, label %for.inc11.i.i.for.cond1.preheader.i.i_crit_edge

for.inc11.i.i.for.cond1.preheader.i.i_crit_edge:  ; preds = %for.inc11.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond1.preheader.i.i

for.inc11.i.i.if.then2.i_crit_edge:               ; preds = %for.inc11.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then2.i

if.end.i:                                         ; preds = %for.body3.i.i
  %parts.i.i.le = getelementptr inbounds %struct.spi_nor_manufacturer, ptr %20, i32 0, i32 1
  %manufacturer.i.i = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 7
  %27 = ptrtoint ptr %manufacturer.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %20, ptr %manufacturer.i.i, align 8
  %28 = ptrtoint ptr %parts.i.i.le to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %parts.i.i.le, align 4
  %arrayidx10.i.i = getelementptr %struct.flash_info, ptr %29, i32 %j.026.i.i
  %tobool1.not.i133 = icmp eq ptr %arrayidx10.i.i, null
  br i1 %tobool1.not.i133, label %if.end.i.if.then2.i_crit_edge, label %if.end.i.if.end4.i_crit_edge

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end4.i

if.end.i.if.then2.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i.if.then2.i_crit_edge, %for.inc11.i.i.if.then2.i_crit_edge, %if.end8.if.then2.i_crit_edge
  %call3.i = tail call fastcc ptr @spi_nor_read_id(ptr noundef %nor) #15
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then2.i, %if.end.i.if.end4.i_crit_edge
  %info.1.i = phi ptr [ %arrayidx10.i.i, %if.end.i.if.end4.i_crit_edge ], [ %call3.i, %if.then2.i ]
  %tobool.not.i37.i = icmp eq ptr %info.1.i, null
  %cmp.i.i = icmp ugt ptr %info.1.i, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i37.i, %cmp.i.i
  br i1 %spec.select.i.i, label %if.end4.i.if.then11_crit_edge, label %if.end8.i

if.end4.i.if.then11_crit_edge:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then11

if.end8.i:                                        ; preds = %if.end4.i
  br i1 %tobool.not.i132, label %if.end8.i.if.end21.i_crit_edge, label %land.lhs.true.i134

if.end8.i.if.end21.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end21.i

land.lhs.true.i134:                               ; preds = %if.end8.i
  %id_len.i = getelementptr inbounds %struct.flash_info, ptr %info.1.i, i32 0, i32 2
  %30 = ptrtoint ptr %id_len.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %id_len.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool10.not.i = icmp eq i8 %31, 0
  br i1 %tobool10.not.i, label %land.lhs.true.i134.if.end21.i_crit_edge, label %if.then11.i

land.lhs.true.i134.if.end21.i_crit_edge:          ; preds = %land.lhs.true.i134
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end21.i

if.then11.i:                                      ; preds = %land.lhs.true.i134
  %call12.i = tail call fastcc ptr @spi_nor_read_id(ptr noundef %nor) #15
  %cmp.i38.i = icmp ugt ptr %call12.i, inttoptr (i32 -4096 to ptr)
  %cmp.not.i = icmp eq ptr %call12.i, %info.1.i
  %or.cond.i = or i1 %cmp.i38.i, %cmp.not.i
  br i1 %or.cond.i, label %if.then11.i.cleanup.i_crit_edge, label %do.end.i136

if.then11.i.cleanup.i_crit_edge:                  ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.i

do.end.i136:                                      ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #17
  %32 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev1, align 4
  %34 = ptrtoint ptr %call12.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %call12.i, align 8
  %36 = ptrtoint ptr %info.1.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %info.1.i, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %33, ptr noundef nonnull @.str.73, ptr noundef %35, ptr noundef %37) #18
  br label %cleanup.i

cleanup.i:                                        ; preds = %do.end.i136, %if.then11.i.cleanup.i_crit_edge
  %info.3.i = phi ptr [ %info.1.i, %if.then11.i.cleanup.i_crit_edge ], [ %call12.i, %do.end.i136 ]
  br i1 %cmp.i38.i, label %cleanup.i.spi_nor_get_flash_info.exit_crit_edge, label %cleanup.i.if.end21.i_crit_edge

cleanup.i.if.end21.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end21.i

cleanup.i.spi_nor_get_flash_info.exit_crit_edge:  ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %spi_nor_get_flash_info.exit

if.end21.i:                                       ; preds = %cleanup.i.if.end21.i_crit_edge, %land.lhs.true.i134.if.end21.i_crit_edge, %if.end8.i.if.end21.i_crit_edge
  %info.4.i = phi ptr [ %info.3.i, %cleanup.i.if.end21.i_crit_edge ], [ %info.1.i, %land.lhs.true.i134.if.end21.i_crit_edge ], [ %info.1.i, %if.end8.i.if.end21.i_crit_edge ]
  br label %spi_nor_get_flash_info.exit

spi_nor_get_flash_info.exit:                      ; preds = %if.end21.i, %cleanup.i.spi_nor_get_flash_info.exit_crit_edge
  %retval.1.i = phi ptr [ %info.4.i, %if.end21.i ], [ %call12.i, %cleanup.i.spi_nor_get_flash_info.exit_crit_edge ]
  %cmp.i = icmp ugt ptr %retval.1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %spi_nor_get_flash_info.exit.if.then11_crit_edge, label %if.end13

spi_nor_get_flash_info.exit.if.then11_crit_edge:  ; preds = %spi_nor_get_flash_info.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then11

if.then11:                                        ; preds = %spi_nor_get_flash_info.exit.if.then11_crit_edge, %if.end4.i.if.then11_crit_edge
  %retval.1.i158 = phi ptr [ %retval.1.i, %spi_nor_get_flash_info.exit.if.then11_crit_edge ], [ inttoptr (i32 -2 to ptr), %if.end4.i.if.then11_crit_edge ]
  %38 = ptrtoint ptr %retval.1.i158 to i32
  br label %cleanup

if.end13:                                         ; preds = %spi_nor_get_flash_info.exit
  %info14 = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 6
  %39 = ptrtoint ptr %info14 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %retval.1.i, ptr %info14, align 4
  %lock = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.25, ptr noundef nonnull @spi_nor_scan.__key) #15
  %40 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev1, align 4
  %call.i.i138 = tail call noalias ptr @devm_kmalloc(ptr noundef %41, i32 noundef 344, i32 noundef 3520) #15
  %params.i = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 21
  %42 = ptrtoint ptr %params.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call.i.i138, ptr %params.i, align 4
  %tobool.not.i139 = icmp eq ptr %call.i.i138, null
  br i1 %tobool.not.i139, label %if.end13.cleanup_crit_edge, label %if.end.i141

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end.i141:                                      ; preds = %if.end13
  %43 = ptrtoint ptr %info14 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %info14, align 4
  %of_node.i.i.i.i.i = getelementptr inbounds %struct.mtd_info, ptr %nor, i32 0, i32 56, i32 27
  %45 = ptrtoint ptr %of_node.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %of_node.i.i.i.i.i, align 8
  %quad_enable.i.i = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %call.i.i138, i32 0, i32 11
  %47 = ptrtoint ptr %quad_enable.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @spi_nor_sr2_bit1_quad_enable, ptr %quad_enable.i.i, align 4
  %set_4byte_addr_mode.i.i = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %call.i.i138, i32 0, i32 12
  %48 = ptrtoint ptr %set_4byte_addr_mode.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @spansion_set_4byte_addr_mode, ptr %set_4byte_addr_mode.i.i, align 8
  %setup.i.i = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %call.i.i138, i32 0, i32 14
  %49 = ptrtoint ptr %setup.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @spi_nor_default_setup, ptr %setup.i.i, align 8
  %otp_org.i.i = getelementptr inbounds %struct.flash_info, ptr %44, i32 0, i32 12
  %otp.i.i = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %call.i.i138, i32 0, i32 9
  %50 = ptrtoint ptr %otp.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %otp_org.i.i, ptr %otp.i.i, align 8
  %flags.i.i = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 17
  %51 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %flags.i.i, align 4
  %or.i.i = or i32 %52, 512
  store i32 %or.i.i, ptr %flags.i.i, align 4
  %writesize.i.i = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %call.i.i138, i32 0, i32 1
  %53 = ptrtoint ptr %writesize.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 1, ptr %writesize.i.i, align 8
  %sector_size.i.i = getelementptr inbounds %struct.flash_info, ptr %44, i32 0, i32 3
  %54 = ptrtoint ptr %sector_size.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %sector_size.i.i, align 4
  %conv.i.i = zext i32 %55 to i64
  %n_sectors.i.i = getelementptr inbounds %struct.flash_info, ptr %44, i32 0, i32 4
  %56 = ptrtoint ptr %n_sectors.i.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %n_sectors.i.i, align 8
  %conv3.i.i = zext i16 %57 to i64
  %mul.i.i = mul nuw nsw i64 %conv3.i.i, %conv.i.i
  %58 = ptrtoint ptr %call.i.i138 to i32
  call void @__asan_store8_noabort(i32 %58)
  store i64 %mul.i.i, ptr %call.i.i138, align 8
  %page_size.i.i = getelementptr inbounds %struct.flash_info, ptr %44, i32 0, i32 5
  %59 = ptrtoint ptr %page_size.i.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %page_size.i.i, align 2
  %conv4.i.i = zext i16 %60 to i32
  %page_size5.i.i = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %call.i.i138, i32 0, i32 2
  %61 = ptrtoint ptr %page_size5.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %conv4.i.i, ptr %page_size5.i.i, align 4
  %flags6.i.i = getelementptr inbounds %struct.flash_info, ptr %44, i32 0, i32 8
  %62 = ptrtoint ptr %flags6.i.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %flags6.i.i, align 8
  %64 = and i16 %63, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %64)
  %tobool.not.i.i140 = icmp eq i16 %64, 0
  br i1 %tobool.not.i.i140, label %if.then.i.i, label %if.end.i141.if.end15.i.i_crit_edge

if.end.i141.if.end15.i.i_crit_edge:               ; preds = %if.end.i141
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.i.i

if.then.i.i:                                      ; preds = %if.end.i141
  %hwcaps.i.i = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %call.i.i138, i32 0, i32 5
  %65 = ptrtoint ptr %hwcaps.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %hwcaps.i.i, align 4
  %or8.i.i = or i32 %66, 2
  store i32 %or8.i.i, ptr %hwcaps.i.i, align 4
  %tobool9.not.i.i = icmp eq ptr %46, null
  br i1 %tobool9.not.i.i, label %if.then.i.i.if.end15.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.i.if.end15.i.i_crit_edge:               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i.i
  %call.i.i.i = tail call ptr @of_find_property(ptr noundef nonnull %46, ptr noundef nonnull @.str.80, ptr noundef null) #15
  %tobool.i.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.i.not.i.i, label %if.then11.i.i, label %land.lhs.true.i.i.if.end15.i.i_crit_edge

land.lhs.true.i.i.if.end15.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.i.i

if.then11.i.i:                                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %67 = ptrtoint ptr %hwcaps.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %hwcaps.i.i, align 4
  %and14.i.i = and i32 %68, -3
  store i32 %and14.i.i, ptr %hwcaps.i.i, align 4
  br label %if.end15.i.i

if.end15.i.i:                                     ; preds = %if.then11.i.i, %land.lhs.true.i.i.if.end15.i.i_crit_edge, %if.then.i.i.if.end15.i.i_crit_edge, %if.end.i141.if.end15.i.i_crit_edge
  %hwcaps16.i.i = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %call.i.i138, i32 0, i32 5
  %69 = ptrtoint ptr %hwcaps16.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %hwcaps16.i.i, align 4
  %or18.i.i = or i32 %70, 1
  store i32 %or18.i.i, ptr %hwcaps16.i.i, align 4
  %reads.i.i = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %call.i.i138, i32 0, i32 6
  %71 = ptrtoint ptr %reads.i.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 0, ptr %reads.i.i, align 4
  %num_wait_states2.i.i.i = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %call.i.i138, i32 0, i32 6, i32 0, i32 1
  %72 = ptrtoint ptr %num_wait_states2.i.i.i to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 0, ptr %num_wait_states2.i.i.i, align 1
  %opcode3.i.i.i = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %call.i.i138, i32 0, i32 6, i32 0, i32 2
  %73 = ptrtoint ptr %opcode3.i.i.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 3, ptr %opcode3.i.i.i, align 2
  %proto4.i.i.i = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %call.i.i138, i32 0, i32 6, i32 0, i32 3
  %74 = ptrtoint ptr %proto4.i.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 65793, ptr %proto4.i.i.i, align 4
  %and21.i.i = and i32 %70, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i.i)
  %tobool22.not.i.i = icmp eq i32 %and21.i.i, 0
  br i1 %tobool22.not.i.i, label %if.end15.i.i.spi_nor_init_default_params.exit.i_crit_edge, label %if.then23.i.i

if.end15.i.i.spi_nor_init_default_params.exit.i_crit_edge: ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %spi_nor_init_default_params.exit.i

if.then23.i.i:                                    ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx25.i.i = getelementptr %struct.spi_nor_flash_parameter, ptr %call.i.i138, i32 0, i32 6, i32 1
  %75 = ptrtoint ptr %arrayidx25.i.i to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 0, ptr %arrayidx25.i.i, align 4
  %num_wait_states2.i53.i.i = getelementptr %struct.spi_nor_flash_parameter, ptr %call.i.i138, i32 0, i32 6, i32 1, i32 1
  %76 = ptrtoint ptr %num_wait_states2.i53.i.i to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 8, ptr %num_wait_states2.i53.i.i, align 1
  %opcode3.i54.i.i = getelementptr %struct.spi_nor_flash_parameter, ptr %call.i.i138, i32 0, i32 6, i32 1, i32 2
  %77 = ptrtoint ptr %opcode3.i54.i.i to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 11, ptr %opcode3.i54.i.i, align 2
  %proto4.i55.i.i = getelementptr %struct.spi_nor_flash_parameter, ptr %call.i.i138, i32 0, i32 6, i32 1, i32 3
  %78 = ptrtoint ptr %proto4.i55.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 65793, ptr %proto4.i55.i.i, align 4
  br label %spi_nor_init_default_params.exit.i

spi_nor_init_default_params.exit.i:               ; preds = %if.then23.i.i, %if.end15.i.i.spi_nor_init_default_params.exit.i_crit_edge
  %79 = ptrtoint ptr %hwcaps16.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %hwcaps16.i.i, align 4
  %or29.i.i = or i32 %80, 65536
  store i32 %or29.i.i, ptr %hwcaps16.i.i, align 4
  %page_programs.i.i = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %call.i.i138, i32 0, i32 7
  %81 = ptrtoint ptr %page_programs.i.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 2, ptr %page_programs.i.i, align 4
  %proto2.i.i.i = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %call.i.i138, i32 0, i32 7, i32 0, i32 1
  %82 = ptrtoint ptr %proto2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 65793, ptr %proto2.i.i.i, align 4
  %83 = ptrtoint ptr %info14 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %info14, align 4
  %parse_sfdp.i = getelementptr inbounds %struct.flash_info, ptr %84, i32 0, i32 7
  %85 = ptrtoint ptr %parse_sfdp.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %parse_sfdp.i, align 2, !range !271
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %86)
  %tobool2.not.i142 = icmp eq i8 %86, 0
  br i1 %tobool2.not.i142, label %if.else.i, label %if.then3.i

if.then3.i:                                       ; preds = %spi_nor_init_default_params.exit.i
  %call4.i = tail call i32 @spi_nor_parse_sfdp(ptr noundef %nor) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.then3.i.if.end14.i_crit_edge, label %do.end.i143

if.then3.i.if.end14.i_crit_edge:                  ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end14.i

do.end.i143:                                      ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #17
  %87 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %dev1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %88, ptr noundef nonnull @.str.78) #18
  br label %cleanup

if.else.i:                                        ; preds = %spi_nor_init_default_params.exit.i
  %no_sfdp_flags.i = getelementptr inbounds %struct.flash_info, ptr %84, i32 0, i32 9
  %89 = ptrtoint ptr %no_sfdp_flags.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %no_sfdp_flags.i, align 2
  %91 = and i8 %90, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %91)
  %tobool10.not.i144 = icmp eq i8 %91, 0
  tail call fastcc void @spi_nor_no_sfdp_init_params(ptr noundef %nor) #15
  br i1 %tobool10.not.i144, label %if.else12.i, label %if.else.i.if.end14.i_crit_edge

if.else.i.if.end14.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end14.i

if.else12.i:                                      ; preds = %if.else.i
  %manufacturer.i.i.i = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 7
  %92 = ptrtoint ptr %manufacturer.i.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %manufacturer.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %93, null
  br i1 %tobool.not.i.i.i, label %if.else12.i.if.end.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.else12.i.if.end.i.i.i_crit_edge:               ; preds = %if.else12.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.else12.i
  %fixups.i.i.i = getelementptr inbounds %struct.spi_nor_manufacturer, ptr %93, i32 0, i32 3
  %94 = ptrtoint ptr %fixups.i.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %fixups.i.i.i, align 4
  %tobool2.not.i.i.i = icmp eq ptr %95, null
  br i1 %tobool2.not.i.i.i, label %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge, label %land.lhs.true3.i.i.i

land.lhs.true.i.i.i.if.end.i.i.i_crit_edge:       ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i.i

land.lhs.true3.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %96 = ptrtoint ptr %95 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %95, align 4
  %tobool6.not.i.i.i = icmp eq ptr %97, null
  br i1 %tobool6.not.i.i.i, label %land.lhs.true3.i.i.i.if.end.i.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true3.i.i.i.if.end.i.i.i_crit_edge:      ; preds = %land.lhs.true3.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true3.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void %97(ptr noundef %nor) #15
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i.i, %land.lhs.true3.i.i.i.if.end.i.i.i_crit_edge, %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge, %if.else12.i.if.end.i.i.i_crit_edge
  %98 = ptrtoint ptr %info14 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %info14, align 4
  %fixups10.i.i.i = getelementptr inbounds %struct.flash_info, ptr %99, i32 0, i32 13
  %100 = ptrtoint ptr %fixups10.i.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %fixups10.i.i.i, align 8
  %tobool11.not.i.i.i = icmp eq ptr %101, null
  br i1 %tobool11.not.i.i.i, label %if.end.i.i.i.spi_nor_manufacturer_init_params.exit.i.i_crit_edge, label %land.lhs.true12.i.i.i

if.end.i.i.i.spi_nor_manufacturer_init_params.exit.i.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %spi_nor_manufacturer_init_params.exit.i.i

land.lhs.true12.i.i.i:                            ; preds = %if.end.i.i.i
  %102 = ptrtoint ptr %101 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %101, align 4
  %tobool16.not.i.i.i = icmp eq ptr %103, null
  br i1 %tobool16.not.i.i.i, label %land.lhs.true12.i.i.i.spi_nor_manufacturer_init_params.exit.i.i_crit_edge, label %if.then17.i.i.i

land.lhs.true12.i.i.i.spi_nor_manufacturer_init_params.exit.i.i_crit_edge: ; preds = %land.lhs.true12.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %spi_nor_manufacturer_init_params.exit.i.i

if.then17.i.i.i:                                  ; preds = %land.lhs.true12.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void %103(ptr noundef %nor) #15
  br label %spi_nor_manufacturer_init_params.exit.i.i

spi_nor_manufacturer_init_params.exit.i.i:        ; preds = %if.then17.i.i.i, %land.lhs.true12.i.i.i.spi_nor_manufacturer_init_params.exit.i.i_crit_edge, %if.end.i.i.i.spi_nor_manufacturer_init_params.exit.i.i_crit_edge
  %104 = ptrtoint ptr %info14 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %info14, align 4
  %no_sfdp_flags.i.i = getelementptr inbounds %struct.flash_info, ptr %105, i32 0, i32 9
  %106 = ptrtoint ptr %no_sfdp_flags.i.i to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %no_sfdp_flags.i.i, align 2
  %108 = and i8 %107, 120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %108)
  %tobool.not.i26.i = icmp eq i8 %108, 0
  br i1 %tobool.not.i26.i, label %spi_nor_manufacturer_init_params.exit.i.i.if.end14.i_crit_edge, label %if.then.i28.i

spi_nor_manufacturer_init_params.exit.i.i.if.end14.i_crit_edge: ; preds = %spi_nor_manufacturer_init_params.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end14.i

if.then.i28.i:                                    ; preds = %spi_nor_manufacturer_init_params.exit.i.i
  call void @llvm.lifetime.start.p0(i64 344, ptr nonnull %sfdp_params.i.i.i)
  %109 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %params.i, align 4
  %111 = call ptr @memcpy(ptr %sfdp_params.i.i.i, ptr %110, i32 344)
  %call.i.i27.i = tail call i32 @spi_nor_parse_sfdp(ptr noundef %nor) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i27.i)
  %tobool.not.i4.i.i = icmp eq i32 %call.i.i27.i, 0
  br i1 %tobool.not.i4.i.i, label %if.then.i28.i.spi_nor_sfdp_init_params_deprecated.exit.i.i_crit_edge, label %if.then.i5.i.i

if.then.i28.i.spi_nor_sfdp_init_params_deprecated.exit.i.i_crit_edge: ; preds = %if.then.i28.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %spi_nor_sfdp_init_params_deprecated.exit.i.i

if.then.i5.i.i:                                   ; preds = %if.then.i28.i
  call void @__sanitizer_cov_trace_pc() #17
  %112 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %params.i, align 4
  %114 = call ptr @memcpy(ptr %113, ptr %sfdp_params.i.i.i, i32 344)
  %addr_width.i.i.i = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 8
  %115 = ptrtoint ptr %addr_width.i.i.i to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 0, ptr %addr_width.i.i.i, align 4
  %116 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %flags.i.i, align 4
  %and.i.i.i = and i32 %117, -65
  store i32 %and.i.i.i, ptr %flags.i.i, align 4
  br label %spi_nor_sfdp_init_params_deprecated.exit.i.i

spi_nor_sfdp_init_params_deprecated.exit.i.i:     ; preds = %if.then.i5.i.i, %if.then.i28.i.spi_nor_sfdp_init_params_deprecated.exit.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 344, ptr nonnull %sfdp_params.i.i.i)
  br label %if.end14.i

if.end14.i:                                       ; preds = %spi_nor_sfdp_init_params_deprecated.exit.i.i, %spi_nor_manufacturer_init_params.exit.i.i.if.end14.i_crit_edge, %if.else.i.if.end14.i_crit_edge, %if.then3.i.if.end14.i_crit_edge
  %manufacturer.i.i146 = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 7
  %118 = ptrtoint ptr %manufacturer.i.i146 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %manufacturer.i.i146, align 8
  %tobool.not.i29.i = icmp eq ptr %119, null
  br i1 %tobool.not.i29.i, label %if.end14.i.if.end.i.i_crit_edge, label %land.lhs.true.i30.i

if.end14.i.if.end.i.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i

land.lhs.true.i30.i:                              ; preds = %if.end14.i
  %fixups.i.i = getelementptr inbounds %struct.spi_nor_manufacturer, ptr %119, i32 0, i32 3
  %120 = ptrtoint ptr %fixups.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %fixups.i.i, align 4
  %tobool2.not.i.i = icmp eq ptr %121, null
  br i1 %tobool2.not.i.i, label %land.lhs.true.i30.i.if.end.i.i_crit_edge, label %land.lhs.true3.i.i

land.lhs.true.i30.i.if.end.i.i_crit_edge:         ; preds = %land.lhs.true.i30.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i

land.lhs.true3.i.i:                               ; preds = %land.lhs.true.i30.i
  %late_init.i.i = getelementptr inbounds %struct.spi_nor_fixups, ptr %121, i32 0, i32 3
  %122 = ptrtoint ptr %late_init.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %late_init.i.i, align 4
  %tobool6.not.i.i = icmp eq ptr %123, null
  br i1 %tobool6.not.i.i, label %land.lhs.true3.i.i.if.end.i.i_crit_edge, label %if.then.i31.i

land.lhs.true3.i.i.if.end.i.i_crit_edge:          ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i

if.then.i31.i:                                    ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void %123(ptr noundef %nor) #15
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i31.i, %land.lhs.true3.i.i.if.end.i.i_crit_edge, %land.lhs.true.i30.i.if.end.i.i_crit_edge, %if.end14.i.if.end.i.i_crit_edge
  %124 = ptrtoint ptr %info14 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %info14, align 4
  %fixups10.i.i = getelementptr inbounds %struct.flash_info, ptr %125, i32 0, i32 13
  %126 = ptrtoint ptr %fixups10.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %fixups10.i.i, align 8
  %tobool11.not.i.i = icmp eq ptr %127, null
  br i1 %tobool11.not.i.i, label %if.end.i.i.if.end21.i.i_crit_edge, label %land.lhs.true12.i.i

if.end.i.i.if.end21.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end21.i.i

land.lhs.true12.i.i:                              ; preds = %if.end.i.i
  %late_init15.i.i = getelementptr inbounds %struct.spi_nor_fixups, ptr %127, i32 0, i32 3
  %128 = ptrtoint ptr %late_init15.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %late_init15.i.i, align 4
  %tobool16.not.i.i = icmp eq ptr %129, null
  br i1 %tobool16.not.i.i, label %land.lhs.true12.i.i.if.end21.i.i_crit_edge, label %if.then17.i.i

land.lhs.true12.i.i.if.end21.i.i_crit_edge:       ; preds = %land.lhs.true12.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end21.i.i

if.then17.i.i:                                    ; preds = %land.lhs.true12.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void %129(ptr noundef %nor) #15
  br label %if.end21.i.i

if.end21.i.i:                                     ; preds = %if.then17.i.i, %land.lhs.true12.i.i.if.end21.i.i_crit_edge, %if.end.i.i.if.end21.i.i_crit_edge
  %130 = ptrtoint ptr %of_node.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %of_node.i.i.i.i.i, align 8
  %132 = ptrtoint ptr %info14 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %info14, align 4
  %flags1.i.i.i = getelementptr inbounds %struct.flash_info, ptr %133, i32 0, i32 8
  %134 = ptrtoint ptr %flags1.i.i.i to i32
  call void @__asan_load2_noabort(i32 %134)
  %135 = load i16, ptr %flags1.i.i.i, align 8
  %call.i.i.i.i = tail call ptr @of_find_property(ptr noundef %131, ptr noundef nonnull @.str.87, ptr noundef null) #15
  %tobool.i.not.i.i.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool.i.not.i.i.i, label %if.end21.i.i.if.end.i.i35.i_crit_edge, label %if.then.i.i32.i

if.end21.i.i.if.end.i.i35.i_crit_edge:            ; preds = %if.end21.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i35.i

if.then.i.i32.i:                                  ; preds = %if.end21.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %136 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %flags.i.i, align 4
  %or.i.i.i = or i32 %137, 32
  store i32 %or.i.i.i, ptr %flags.i.i, align 4
  br label %if.end.i.i35.i

if.end.i.i35.i:                                   ; preds = %if.then.i.i32.i, %if.end21.i.i.if.end.i.i35.i_crit_edge
  %conv.i.i.i = zext i16 %135 to i32
  %and.i.i33.i = and i32 %conv.i.i.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i33.i)
  %tobool.not.i.i34.i = icmp eq i32 %and.i.i33.i, 0
  br i1 %tobool.not.i.i34.i, label %if.end.i.i35.i.if.end7.i.i.i_crit_edge, label %if.then4.i.i.i

if.end.i.i35.i.if.end7.i.i.i_crit_edge:           ; preds = %if.end.i.i35.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end7.i.i.i

if.then4.i.i.i:                                   ; preds = %if.end.i.i35.i
  call void @__sanitizer_cov_trace_pc() #17
  %138 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %flags.i.i, align 4
  %or6.i.i.i = or i32 %139, 65536
  store i32 %or6.i.i.i, ptr %flags.i.i, align 4
  br label %if.end7.i.i.i

if.end7.i.i.i:                                    ; preds = %if.then4.i.i.i, %if.end.i.i35.i.if.end7.i.i.i_crit_edge
  %and9.i.i.i = and i32 %conv.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i.i.i)
  %tobool10.not.i.i.i = icmp eq i32 %and9.i.i.i, 0
  br i1 %tobool10.not.i.i.i, label %if.end7.i.i.i.if.end14.i.i.i_crit_edge, label %if.then11.i.i.i

if.end7.i.i.i.if.end14.i.i.i_crit_edge:           ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end14.i.i.i

if.then11.i.i.i:                                  ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %140 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %flags.i.i, align 4
  %or13.i.i.i = or i32 %141, 256
  store i32 %or13.i.i.i, ptr %flags.i.i, align 4
  br label %if.end14.i.i.i

if.end14.i.i.i:                                   ; preds = %if.then11.i.i.i, %if.end7.i.i.i.if.end14.i.i.i_crit_edge
  %and16.i.i.i = and i32 %conv.i.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i.i.i)
  %tobool17.not.i.i.i = icmp eq i32 %and16.i.i.i, 0
  br i1 %tobool17.not.i.i.i, label %if.end14.i.i.i.if.end28.i.i.i_crit_edge, label %if.then18.i.i.i

if.end14.i.i.i.if.end28.i.i.i_crit_edge:          ; preds = %if.end14.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end28.i.i.i

if.then18.i.i.i:                                  ; preds = %if.end14.i.i.i
  %142 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %flags.i.i, align 4
  %or20.i.i.i = or i32 %143, 2
  store i32 %or20.i.i.i, ptr %flags.i.i, align 4
  %and22.i.i.i = and i32 %conv.i.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.i.i.i)
  %tobool23.not.i.i.i = icmp eq i32 %and22.i.i.i, 0
  br i1 %tobool23.not.i.i.i, label %if.then18.i.i.i.if.end28.i.i.i_crit_edge, label %if.then24.i.i.i

if.then18.i.i.i.if.end28.i.i.i_crit_edge:         ; preds = %if.then18.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end28.i.i.i

if.then24.i.i.i:                                  ; preds = %if.then18.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %or26.i.i.i = or i32 %143, 2050
  %144 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %or26.i.i.i, ptr %flags.i.i, align 4
  br label %if.end28.i.i.i

if.end28.i.i.i:                                   ; preds = %if.then24.i.i.i, %if.then18.i.i.i.if.end28.i.i.i_crit_edge, %if.end14.i.i.i.if.end28.i.i.i_crit_edge
  %and30.i.i.i = and i32 %conv.i.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30.i.i.i)
  %tobool31.not.i.i.i = icmp eq i32 %and30.i.i.i, 0
  br i1 %tobool31.not.i.i.i, label %if.end28.i.i.i.if.end42.i.i.i_crit_edge, label %if.then32.i.i.i

if.end28.i.i.i.if.end42.i.i.i_crit_edge:          ; preds = %if.end28.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end42.i.i.i

if.then32.i.i.i:                                  ; preds = %if.end28.i.i.i
  %145 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %flags.i.i, align 4
  %or34.i.i.i = or i32 %146, 4096
  store i32 %or34.i.i.i, ptr %flags.i.i, align 4
  %and36.i.i.i = and i32 %conv.i.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36.i.i.i)
  %tobool37.not.i.i.i = icmp eq i32 %and36.i.i.i, 0
  br i1 %tobool37.not.i.i.i, label %if.then32.i.i.i.if.end42.i.i.i_crit_edge, label %if.then38.i.i.i

if.then32.i.i.i.if.end42.i.i.i_crit_edge:         ; preds = %if.then32.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end42.i.i.i

if.then38.i.i.i:                                  ; preds = %if.then32.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %or40.i.i.i = or i32 %146, 12288
  %147 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 %or40.i.i.i, ptr %flags.i.i, align 4
  br label %if.end42.i.i.i

if.end42.i.i.i:                                   ; preds = %if.then38.i.i.i, %if.then32.i.i.i.if.end42.i.i.i_crit_edge, %if.end28.i.i.i.if.end42.i.i.i_crit_edge
  %and44.i.i.i = and i32 %conv.i.i.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44.i.i.i)
  %tobool45.not.i.i.i = icmp eq i32 %and44.i.i.i, 0
  br i1 %tobool45.not.i.i.i, label %if.end42.i.i.i.if.end49.i.i.i_crit_edge, label %if.then46.i.i.i

if.end42.i.i.i.if.end49.i.i.i_crit_edge:          ; preds = %if.end42.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end49.i.i.i

if.then46.i.i.i:                                  ; preds = %if.end42.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %148 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %flags.i.i, align 4
  %or48.i.i.i = or i32 %149, 4
  store i32 %or48.i.i.i, ptr %flags.i.i, align 4
  br label %if.end49.i.i.i

if.end49.i.i.i:                                   ; preds = %if.then46.i.i.i, %if.end42.i.i.i.if.end49.i.i.i_crit_edge
  %and51.i.i.i = and i32 %conv.i.i.i, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51.i.i.i)
  %tobool52.not.i.i.i = icmp eq i32 %and51.i.i.i, 0
  br i1 %tobool52.not.i.i.i, label %if.end49.i.i.i.if.end56.i.i.i_crit_edge, label %if.then53.i.i.i

if.end49.i.i.i.if.end56.i.i.i_crit_edge:          ; preds = %if.end49.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end56.i.i.i

if.then53.i.i.i:                                  ; preds = %if.end49.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %150 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %flags.i.i, align 4
  %or55.i.i.i = or i32 %151, 16
  store i32 %or55.i.i.i, ptr %flags.i.i, align 4
  br label %if.end56.i.i.i

if.end56.i.i.i:                                   ; preds = %if.then53.i.i.i, %if.end49.i.i.i.if.end56.i.i.i_crit_edge
  %and58.i.i.i = and i32 %conv.i.i.i, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58.i.i.i)
  %tobool59.not.i.i.i = icmp eq i32 %and58.i.i.i, 0
  br i1 %tobool59.not.i.i.i, label %if.end56.i.i.i.if.end63.i.i.i_crit_edge, label %if.then60.i.i.i

if.end56.i.i.i.if.end63.i.i.i_crit_edge:          ; preds = %if.end56.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end63.i.i.i

if.then60.i.i.i:                                  ; preds = %if.end56.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %152 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %flags.i.i, align 4
  %or62.i.i.i = or i32 %153, 1
  store i32 %or62.i.i.i, ptr %flags.i.i, align 4
  br label %if.end63.i.i.i

if.end63.i.i.i:                                   ; preds = %if.then60.i.i.i, %if.end56.i.i.i.if.end63.i.i.i_crit_edge
  %and65.i.i.i = and i32 %conv.i.i.i, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65.i.i.i)
  %tobool66.not.i.i.i = icmp eq i32 %and65.i.i.i, 0
  br i1 %tobool66.not.i.i.i, label %if.end63.i.i.i.spi_nor_init_flags.exit.i.i_crit_edge, label %if.then67.i.i.i

if.end63.i.i.i.spi_nor_init_flags.exit.i.i_crit_edge: ; preds = %if.end63.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %spi_nor_init_flags.exit.i.i

if.then67.i.i.i:                                  ; preds = %if.end63.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %154 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %flags.i.i, align 4
  %or69.i.i.i = or i32 %155, 8
  store i32 %or69.i.i.i, ptr %flags.i.i, align 4
  br label %spi_nor_init_flags.exit.i.i

spi_nor_init_flags.exit.i.i:                      ; preds = %if.then67.i.i.i, %if.end63.i.i.i.spi_nor_init_flags.exit.i.i_crit_edge
  %156 = ptrtoint ptr %info14 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %info14, align 4
  %fixup_flags1.i.i.i = getelementptr inbounds %struct.flash_info, ptr %157, i32 0, i32 10
  %158 = ptrtoint ptr %fixup_flags1.i.i.i to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %fixup_flags1.i.i.i, align 1
  %conv.i45.i.i = zext i8 %159 to i32
  %and.i46.i.i = and i32 %conv.i45.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i46.i.i)
  %tobool.not.i47.i.i = icmp eq i32 %and.i46.i.i, 0
  br i1 %tobool.not.i47.i.i, label %spi_nor_init_flags.exit.i.i.if.end.i50.i.i_crit_edge, label %if.then.i49.i.i

spi_nor_init_flags.exit.i.i.if.end.i50.i.i_crit_edge: ; preds = %spi_nor_init_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i50.i.i

if.then.i49.i.i:                                  ; preds = %spi_nor_init_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %160 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %flags.i.i, align 4
  %or.i48.i.i = or i32 %161, 64
  store i32 %or.i48.i.i, ptr %flags.i.i, align 4
  br label %if.end.i50.i.i

if.end.i50.i.i:                                   ; preds = %if.then.i49.i.i, %spi_nor_init_flags.exit.i.i.if.end.i50.i.i_crit_edge
  %and3.i.i.i = and i32 %conv.i45.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %and3.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end.i50.i.i.spi_nor_init_fixup_flags.exit.i.i_crit_edge, label %if.then5.i.i.i

if.end.i50.i.i.spi_nor_init_fixup_flags.exit.i.i_crit_edge: ; preds = %if.end.i50.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %spi_nor_init_fixup_flags.exit.i.i

if.then5.i.i.i:                                   ; preds = %if.end.i50.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %162 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %flags.i.i, align 4
  %or7.i.i.i = or i32 %163, 16384
  store i32 %or7.i.i.i, ptr %flags.i.i, align 4
  br label %spi_nor_init_fixup_flags.exit.i.i

spi_nor_init_fixup_flags.exit.i.i:                ; preds = %if.then5.i.i.i, %if.end.i50.i.i.spi_nor_init_fixup_flags.exit.i.i_crit_edge
  %164 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %165, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool22.not.i38.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool22.not.i38.i, label %spi_nor_init_fixup_flags.exit.i.i.if.end18_crit_edge, label %land.lhs.true23.i.i

spi_nor_init_fixup_flags.exit.i.i.if.end18_crit_edge: ; preds = %spi_nor_init_fixup_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end18

land.lhs.true23.i.i:                              ; preds = %spi_nor_init_fixup_flags.exit.i.i
  %166 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %params.i, align 4
  %locking_ops.i.i = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %167, i32 0, i32 15
  %168 = ptrtoint ptr %locking_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %locking_ops.i.i, align 4
  %tobool24.not.i.i = icmp eq ptr %169, null
  br i1 %tobool24.not.i.i, label %if.then25.i.i, label %land.lhs.true23.i.i.if.end18_crit_edge

land.lhs.true23.i.i.if.end18_crit_edge:           ; preds = %land.lhs.true23.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end18

if.then25.i.i:                                    ; preds = %land.lhs.true23.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @spi_nor_init_default_locking_ops(ptr noundef %nor) #15
  br label %if.end18

if.end18:                                         ; preds = %if.then25.i.i, %land.lhs.true23.i.i.if.end18_crit_edge, %spi_nor_init_fixup_flags.exit.i.i.if.end18_crit_edge
  %170 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %params.i, align 4
  %setup.i = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %171, i32 0, i32 14
  %172 = ptrtoint ptr %setup.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %setup.i, align 8
  %tobool.not.i150 = icmp eq ptr %173, null
  br i1 %tobool.not.i150, label %if.end18.spi_nor_setup.exit_crit_edge, label %if.then.i

if.end18.spi_nor_setup.exit_crit_edge:            ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #17
  br label %spi_nor_setup.exit

if.then.i:                                        ; preds = %if.end18
  %call.i151 = tail call i32 %173(ptr noundef %nor, ptr noundef %hwcaps) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i151)
  %tobool3.not.i = icmp eq i32 %call.i151, 0
  br i1 %tobool3.not.i, label %if.then.i.spi_nor_setup.exit_crit_edge, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then.i.spi_nor_setup.exit_crit_edge:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %spi_nor_setup.exit

spi_nor_setup.exit:                               ; preds = %if.then.i.spi_nor_setup.exit_crit_edge, %if.end18.spi_nor_setup.exit_crit_edge
  %call6.i = tail call fastcc i32 @spi_nor_set_addr_width(ptr noundef %nor) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool20.not = icmp eq i32 %call6.i, 0
  br i1 %tobool20.not, label %if.end22, label %spi_nor_setup.exit.cleanup_crit_edge

spi_nor_setup.exit.cleanup_crit_edge:             ; preds = %spi_nor_setup.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end22:                                         ; preds = %spi_nor_setup.exit
  %call23 = tail call fastcc i32 @spi_nor_init(ptr noundef %nor)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end26, label %if.end22.cleanup_crit_edge

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end26:                                         ; preds = %if.end22
  tail call fastcc void @spi_nor_set_mtd_info(ptr noundef %nor)
  %174 = ptrtoint ptr %retval.1.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %retval.1.i, align 8
  %size = getelementptr inbounds %struct.mtd_info, ptr %nor, i32 0, i32 2
  %176 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %176)
  %177 = load i64, ptr %size, align 8
  %shr = ashr i64 %177, 10
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef nonnull %1, ptr noundef nonnull @.str.26, ptr noundef %175, i64 noundef %shr) #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @spi_nor_scan.__UNIQUE_ID_ddebug274, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@spi_nor_scan, %if.then36)) #15
          to label %do.end44 [label %if.then36], !srcloc !272

if.then36:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #17
  %name37 = getelementptr inbounds %struct.mtd_info, ptr %nor, i32 0, i32 13
  %178 = ptrtoint ptr %name37 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %name37, align 8
  %180 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %180)
  %181 = load i64, ptr %size, align 8
  %shr40 = lshr i64 %181, 20
  %erasesize = getelementptr inbounds %struct.mtd_info, ptr %nor, i32 0, i32 3
  %182 = ptrtoint ptr %erasesize to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %erasesize, align 8
  %div127 = lshr i32 %183, 10
  %numeraseregions = getelementptr inbounds %struct.mtd_info, ptr %nor, i32 0, i32 19
  %184 = ptrtoint ptr %numeraseregions to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %numeraseregions, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @spi_nor_scan.__UNIQUE_ID_ddebug274, ptr noundef nonnull %1, ptr noundef nonnull @.str.30, ptr noundef %179, i64 noundef %181, i64 noundef %shr40, i32 noundef %183, i32 noundef %div127, i32 noundef %185) #15
  br label %do.end44

do.end44:                                         ; preds = %if.then36, %if.end26
  %numeraseregions45 = getelementptr inbounds %struct.mtd_info, ptr %nor, i32 0, i32 19
  %186 = ptrtoint ptr %numeraseregions45 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %numeraseregions45, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %187)
  %tobool46.not = icmp eq i32 %187, 0
  br i1 %tobool46.not, label %do.end44.cleanup_crit_edge, label %for.cond.preheader

do.end44.cleanup_crit_edge:                       ; preds = %do.end44
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.cond.preheader:                               ; preds = %do.end44
  %188 = ptrtoint ptr %numeraseregions45 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %numeraseregions45, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %189)
  %cmp168 = icmp sgt i32 %189, 0
  br i1 %cmp168, label %do.body49.lr.ph, label %for.cond.preheader.cleanup_crit_edge

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.body49.lr.ph:                                  ; preds = %for.cond.preheader
  %eraseregions = getelementptr inbounds %struct.mtd_info, ptr %nor, i32 0, i32 20
  br label %do.body49

do.body49:                                        ; preds = %for.inc.do.body49_crit_edge, %do.body49.lr.ph
  %i.0169 = phi i32 [ 0, %do.body49.lr.ph ], [ %inc, %for.inc.do.body49_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @spi_nor_scan.__UNIQUE_ID_ddebug275, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@spi_nor_scan, %if.then61)) #15
          to label %for.inc [label %if.then61], !srcloc !272

if.then61:                                        ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #17
  %190 = ptrtoint ptr %eraseregions to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %eraseregions, align 4
  %arrayidx = getelementptr %struct.mtd_erase_region_info, ptr %191, i32 %i.0169
  %192 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %192)
  %193 = load i64, ptr %arrayidx, align 8
  %erasesize64 = getelementptr %struct.mtd_erase_region_info, ptr %191, i32 %i.0169, i32 1
  %194 = ptrtoint ptr %erasesize64 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %erasesize64, align 8
  %div68126 = lshr i32 %195, 10
  %numblocks = getelementptr %struct.mtd_erase_region_info, ptr %191, i32 %i.0169, i32 2
  %196 = ptrtoint ptr %numblocks to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %numblocks, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @spi_nor_scan.__UNIQUE_ID_ddebug275, ptr noundef nonnull %1, ptr noundef nonnull @.str.31, i32 noundef %i.0169, i64 noundef %193, i32 noundef %195, i32 noundef %div68126, i32 noundef %197) #15
  br label %for.inc

for.inc:                                          ; preds = %if.then61, %do.body49
  %inc = add nuw nsw i32 %i.0169, 1
  %198 = ptrtoint ptr %numeraseregions45 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %numeraseregions45, align 8
  %cmp = icmp slt i32 %inc, %199
  br i1 %cmp, label %for.inc.do.body49_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.inc.do.body49_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body49

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %do.end44.cleanup_crit_edge, %if.end22.cleanup_crit_edge, %spi_nor_setup.exit.cleanup_crit_edge, %if.then.i.cleanup_crit_edge, %do.end.i143, %if.end13.cleanup_crit_edge, %if.then11, %if.end.cleanup_crit_edge, %do.end28.i, %do.end.i
  %retval.0 = phi i32 [ %38, %if.then11 ], [ -12, %if.end.cleanup_crit_edge ], [ %call6.i, %spi_nor_setup.exit.cleanup_crit_edge ], [ %call23, %if.end22.cleanup_crit_edge ], [ 0, %do.end44.cleanup_crit_edge ], [ -22, %do.end28.i ], [ -22, %do.end.i ], [ %call4.i, %do.end.i143 ], [ -12, %if.end13.cleanup_crit_edge ], [ %call.i151, %if.then.i.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @spi_nor_init(ptr noundef %nor) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %params.i = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 21
  %0 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %params.i, align 4
  %octal_dtr_enable.i = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %octal_dtr_enable.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %octal_dtr_enable.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.if.end6_crit_edge, label %if.end.i

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end6

if.end.i:                                         ; preds = %entry
  %read_proto.i = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 13
  %4 = ptrtoint ptr %read_proto.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %read_proto.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17303560, i32 %5)
  %cmp.i = icmp eq i32 %5, 17303560
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end.i.if.end6_crit_edge

if.end.i.if.end6_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end6

land.lhs.true.i:                                  ; preds = %if.end.i
  %write_proto.i = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 14
  %6 = ptrtoint ptr %write_proto.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %write_proto.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 17303560, i32 %7)
  %cmp1.i = icmp eq i32 %7, 17303560
  br i1 %cmp1.i, label %if.end3.i, label %land.lhs.true.i.if.end6_crit_edge

land.lhs.true.i.if.end6_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end6

if.end3.i:                                        ; preds = %land.lhs.true.i
  %flags.i = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 17
  %8 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %9, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool4.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool4.not.i, label %if.end3.i.if.end6_crit_edge, label %if.end6.i

if.end3.i.if.end6_crit_edge:                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end6

if.end6.i:                                        ; preds = %if.end3.i
  %call.i = tail call i32 %3(ptr noundef %nor, i1 noundef zeroext true) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool10.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool10.not.i, label %if.end12.i, label %do.body

if.end12.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #17
  %reg_proto.i = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 15
  %10 = ptrtoint ptr %reg_proto.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 17303560, ptr %reg_proto.i, align 4
  br label %if.end6

do.body:                                          ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @spi_nor_init.__UNIQUE_ID_ddebug272, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@spi_nor_init, %if.then5)) #15
          to label %cleanup [label %if.then5], !srcloc !272

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  %dev = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 2
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @spi_nor_init.__UNIQUE_ID_ddebug272, ptr noundef %12, ptr noundef nonnull @.str.91) #15
  br label %cleanup

if.end6:                                          ; preds = %if.end12.i, %if.end3.i.if.end6_crit_edge, %land.lhs.true.i.if.end6_crit_edge, %if.end.i.if.end6_crit_edge, %entry.if.end6_crit_edge
  %13 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %params.i, align 4
  %quad_enable.i = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %14, i32 0, i32 11
  %15 = ptrtoint ptr %quad_enable.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %quad_enable.i, align 4
  %tobool.not.i116 = icmp eq ptr %16, null
  br i1 %tobool.not.i116, label %if.end6.if.end27_crit_edge, label %if.end.i119

if.end6.if.end27_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end27

if.end.i119:                                      ; preds = %if.end6
  %read_proto.i117 = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 13
  %17 = ptrtoint ptr %read_proto.i117 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %read_proto.i117, align 4
  %conv.i.i.i = trunc i32 %18 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %conv.i.i.i)
  %cmp.i118 = icmp eq i8 %conv.i.i.i, 4
  br i1 %cmp.i118, label %if.end.i119.spi_nor_quad_enable.exit_crit_edge, label %lor.lhs.false.i

if.end.i119.spi_nor_quad_enable.exit_crit_edge:   ; preds = %if.end.i119
  call void @__sanitizer_cov_trace_pc() #17
  br label %spi_nor_quad_enable.exit

lor.lhs.false.i:                                  ; preds = %if.end.i119
  %write_proto.i120 = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 14
  %19 = ptrtoint ptr %write_proto.i120 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %write_proto.i120, align 8
  %conv.i.i15.i = trunc i32 %20 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %conv.i.i15.i)
  %cmp4.i = icmp eq i8 %conv.i.i15.i, 4
  br i1 %cmp4.i, label %lor.lhs.false.i.spi_nor_quad_enable.exit_crit_edge, label %lor.lhs.false.i.if.end27_crit_edge

lor.lhs.false.i.if.end27_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end27

lor.lhs.false.i.spi_nor_quad_enable.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %spi_nor_quad_enable.exit

spi_nor_quad_enable.exit:                         ; preds = %lor.lhs.false.i.spi_nor_quad_enable.exit_crit_edge, %if.end.i119.spi_nor_quad_enable.exit_crit_edge
  %call10.i = tail call i32 %16(ptr noundef %nor) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool8.not = icmp eq i32 %call10.i, 0
  br i1 %tobool8.not, label %spi_nor_quad_enable.exit.if.end27_crit_edge, label %do.body10

spi_nor_quad_enable.exit.if.end27_crit_edge:      ; preds = %spi_nor_quad_enable.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end27

do.body10:                                        ; preds = %spi_nor_quad_enable.exit
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @spi_nor_init.__UNIQUE_ID_ddebug273, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@spi_nor_init, %if.then22)) #15
          to label %cleanup [label %if.then22], !srcloc !272

if.then22:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #17
  %dev23 = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 2
  %21 = ptrtoint ptr %dev23 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev23, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @spi_nor_init.__UNIQUE_ID_ddebug273, ptr noundef %22, ptr noundef nonnull @.str.92) #15
  br label %cleanup

if.end27:                                         ; preds = %spi_nor_quad_enable.exit.if.end27_crit_edge, %lor.lhs.false.i.if.end27_crit_edge, %if.end6.if.end27_crit_edge
  %flags = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 17
  %23 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %flags, align 4
  %and = and i32 %24, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool28.not = icmp eq i32 %and, 0
  br i1 %tobool28.not, label %if.end27.if.end30_crit_edge, label %if.then29

if.end27.if.end30_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end30

if.then29:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @spi_nor_try_unlock_all(ptr noundef %nor) #15
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %if.end27.if.end30_crit_edge
  %addr_width = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 8
  %25 = ptrtoint ptr %addr_width to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %addr_width, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %26)
  %cmp = icmp eq i8 %26, 4
  br i1 %cmp, label %land.lhs.true, label %if.end30.cleanup_crit_edge

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end30
  %read_proto = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 13
  %27 = ptrtoint ptr %read_proto to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %read_proto, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17303560, i32 %28)
  %cmp32.not = icmp eq i32 %28, 17303560
  br i1 %cmp32.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true34

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

land.lhs.true34:                                  ; preds = %land.lhs.true
  %29 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %flags, align 4
  %and36 = and i32 %30, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %if.then38, label %land.lhs.true34.cleanup_crit_edge

land.lhs.true34.cleanup_crit_edge:                ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then38:                                        ; preds = %land.lhs.true34
  %and40 = and i32 %30, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %if.then38.if.end84_crit_edge, label %land.rhs

if.then38.if.end84_crit_edge:                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end84

land.rhs:                                         ; preds = %if.then38
  %.b110 = load i1, ptr @spi_nor_init.__already_done, align 1
  br i1 %.b110, label %land.rhs.if.end84_crit_edge, label %if.then58, !prof !274

land.rhs.if.end84_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end84

if.then58:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @spi_nor_init.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 2981, i32 noundef 9, ptr noundef nonnull @.str.93) #15
  br label %if.end84

if.end84:                                         ; preds = %if.then58, %land.rhs.if.end84_crit_edge, %if.then38.if.end84_crit_edge
  %31 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %params.i, align 4
  %set_4byte_addr_mode = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %32, i32 0, i32 12
  %33 = ptrtoint ptr %set_4byte_addr_mode to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %set_4byte_addr_mode, align 8
  %call92 = tail call i32 %34(ptr noundef %nor, i1 noundef zeroext true) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end84, %land.lhs.true34.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end30.cleanup_crit_edge, %if.then22, %do.body10, %if.then5, %do.body
  %retval.0 = phi i32 [ %call.i, %if.then5 ], [ %call10.i, %if.then22 ], [ 0, %if.end84 ], [ 0, %land.lhs.true34.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end30.cleanup_crit_edge ], [ %call.i, %do.body ], [ %call10.i, %do.body10 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @spi_nor_set_mtd_info(ptr noundef %nor) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %dev2 = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 2
  %0 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev2, align 4
  tail call void @spi_nor_set_mtd_locking_ops(ptr noundef %nor) #15
  tail call void @spi_nor_set_mtd_otp_ops(ptr noundef %nor) #15
  %parent = getelementptr inbounds %struct.mtd_info, ptr %nor, i32 0, i32 56, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %parent, align 8
  %name = getelementptr inbounds %struct.mtd_info, ptr %nor, i32 0, i32 13
  %3 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %name, align 8
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  %init_name.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then.dev_name.exit_crit_edge

if.then.dev_name.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.then.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %8, %if.end.i ], [ %6, %if.then.dev_name.exit_crit_edge ]
  %9 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %retval.0.i, ptr %name, align 8
  br label %if.end

if.end:                                           ; preds = %dev_name.exit, %entry.if.end_crit_edge
  %10 = ptrtoint ptr %nor to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 3, ptr %nor, align 8
  %flags = getelementptr inbounds %struct.mtd_info, ptr %nor, i32 0, i32 1
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 3072, ptr %flags, align 4
  %info = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 6
  %12 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %info, align 4
  %flags5 = getelementptr inbounds %struct.flash_info, ptr %13, i32 0, i32 8
  %14 = ptrtoint ptr %flags5 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %flags5, align 8
  %16 = and i16 %15, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %tobool6.not = icmp eq i16 %16, 0
  %spec.store.select = select i1 %tobool6.not, i32 3072, i32 7168
  %17 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %spec.store.select, ptr %flags, align 4
  %params = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 21
  %18 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %params, align 4
  %writesize = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %writesize, align 8
  %writesize10 = getelementptr inbounds %struct.mtd_info, ptr %nor, i32 0, i32 4
  %22 = ptrtoint ptr %writesize10 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %writesize10, align 4
  %page_size = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %19, i32 0, i32 2
  %23 = ptrtoint ptr %page_size to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %page_size, align 4
  %writebufsize = getelementptr inbounds %struct.mtd_info, ptr %nor, i32 0, i32 5
  %25 = ptrtoint ptr %writebufsize to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %writebufsize, align 8
  %26 = ptrtoint ptr %19 to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %19, align 8
  %size13 = getelementptr inbounds %struct.mtd_info, ptr %nor, i32 0, i32 2
  %28 = ptrtoint ptr %size13 to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %27, ptr %size13, align 8
  %_erase = getelementptr inbounds %struct.mtd_info, ptr %nor, i32 0, i32 21
  %29 = ptrtoint ptr %_erase to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @spi_nor_erase, ptr %_erase, align 8
  %_read = getelementptr inbounds %struct.mtd_info, ptr %nor, i32 0, i32 24
  %30 = ptrtoint ptr %_read to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @spi_nor_read, ptr %_read, align 4
  %_write = getelementptr inbounds %struct.mtd_info, ptr %nor, i32 0, i32 25
  %31 = ptrtoint ptr %_write to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %_write, align 8
  %tobool14.not = icmp eq ptr %32, null
  br i1 %tobool14.not, label %if.then15, label %if.end.if.end17_crit_edge

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end17

if.then15:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %33 = ptrtoint ptr %_write to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @spi_nor_write, ptr %_write, align 8
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %if.end.if.end17_crit_edge
  %_suspend = getelementptr inbounds %struct.mtd_info, ptr %nor, i32 0, i32 45
  %34 = ptrtoint ptr %_suspend to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @spi_nor_suspend, ptr %_suspend, align 8
  %_resume = getelementptr inbounds %struct.mtd_info, ptr %nor, i32 0, i32 46
  %35 = ptrtoint ptr %_resume to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @spi_nor_resume, ptr %_resume, align 4
  %_get_device = getelementptr inbounds %struct.mtd_info, ptr %nor, i32 0, i32 48
  %36 = ptrtoint ptr %_get_device to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @spi_nor_get_device, ptr %_get_device, align 4
  %_put_device = getelementptr inbounds %struct.mtd_info, ptr %nor, i32 0, i32 49
  %37 = ptrtoint ptr %_put_device to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @spi_nor_put_device, ptr %_put_device, align 8
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @spi_nor_driver_init() #9 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @spi_mem_driver_register_with_owner(ptr noundef nonnull @spi_nor_driver, ptr noundef null) #15
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @spi_nor_driver_exit() #9 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @spi_mem_driver_unregister(ptr noundef nonnull @spi_nor_driver) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @spi_mem_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_mem_dirmap_read(ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pfn_valid(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_mem_adjust_op_size(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_mem_dirmap_write(ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @spi_nor_clear_sr(ptr noundef %nor) unnamed_addr #0 align 64 {
entry:
  %op = alloca %struct.spi_mem_op, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %spimem = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 3
  %0 = ptrtoint ptr %spimem to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spimem, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.else, label %if.end.i

if.end.i:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %op) #15
  %2 = call ptr @memset(ptr %op, i32 0, i32 48)
  %3 = ptrtoint ptr %op to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %op, align 8
  %4 = getelementptr inbounds { i8, i8, i8, [1 x i8], i16 }, ptr %op, i32 0, i32 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 48, ptr %4, align 4
  %reg_proto = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 15
  %6 = ptrtoint ptr %reg_proto to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %reg_proto, align 4
  %and.i.i = lshr i32 %7, 16
  %conv.i.i = trunc i32 %and.i.i to i8
  %buswidth.i = getelementptr inbounds %struct.anon.71, ptr %op, i32 0, i32 1
  %8 = ptrtoint ptr %buswidth.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv.i.i, ptr %buswidth.i, align 1
  %dummy.i = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 2
  %9 = ptrtoint ptr %dummy.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %dummy.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool5.not.i = icmp eq i8 %10, 0
  br i1 %tobool5.not.i, label %if.end.i.if.end10.i_crit_edge, label %if.then6.i

if.end.i.if.end10.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end10.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %and.i70.i = lshr i32 %7, 8
  %conv.i71.i = trunc i32 %and.i70.i to i8
  %buswidth9.i = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 2, i32 1
  %11 = ptrtoint ptr %buswidth9.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv.i71.i, ptr %buswidth9.i, align 1
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then6.i, %if.end.i.if.end10.i_crit_edge
  %nbytes11.i = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 3
  %12 = ptrtoint ptr %nbytes11.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nbytes11.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool12.not.i = icmp eq i32 %13, 0
  br i1 %tobool12.not.i, label %if.end10.i.if.end17.i_crit_edge, label %if.then13.i

if.end10.i.if.end17.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end17.i

if.then13.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #17
  %data.i = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3
  %conv.i72.i = trunc i32 %7 to i8
  %14 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv.i72.i, ptr %data.i, align 4
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.then13.i, %if.end10.i.if.end17.i_crit_edge
  %and.i73.i = and i32 %7, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i73.i)
  %tobool.i.not.i = icmp eq i32 %and.i73.i, 0
  br i1 %tobool.i.not.i, label %if.end17.i.spi_nor_spimem_setup_op.exit_crit_edge, label %if.then19.i

if.end17.i.spi_nor_spimem_setup_op.exit_crit_edge: ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %spi_nor_spimem_setup_op.exit

if.then19.i:                                      ; preds = %if.end17.i
  %dtr.i = getelementptr inbounds %struct.anon.71, ptr %op, i32 0, i32 2
  %15 = ptrtoint ptr %dtr.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load.i = load i8, ptr %dtr.i, align 2
  %bf.set.i = or i8 %bf.load.i, -128
  store i8 %bf.set.i, ptr %dtr.i, align 2
  %dtr22.i = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1, i32 2
  %16 = ptrtoint ptr %dtr22.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load23.i = load i8, ptr %dtr22.i, align 2
  %bf.set25.i = or i8 %bf.load23.i, -128
  store i8 %bf.set25.i, ptr %dtr22.i, align 2
  %dtr27.i = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 2, i32 2
  %17 = ptrtoint ptr %dtr27.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load28.i = load i8, ptr %dtr27.i, align 2
  %bf.set30.i = or i8 %bf.load28.i, -128
  store i8 %bf.set30.i, ptr %dtr27.i, align 2
  %dtr32.i = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 1
  %18 = ptrtoint ptr %dtr32.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load33.i = load i8, ptr %dtr32.i, align 1
  %bf.set35.i = or i8 %bf.load33.i, -128
  store i8 %bf.set35.i, ptr %dtr32.i, align 1
  %mul.i = shl i8 %10, 1
  %19 = ptrtoint ptr %dummy.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %mul.i, ptr %dummy.i, align 8
  %cmd_ext_type.i.i = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 18
  %20 = ptrtoint ptr %cmd_ext_type.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cmd_ext_type.i.i, align 8
  %22 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.127)
  switch i32 %21, label %do.end.i.i [
    i32 2, label %sw.bb.i.i
    i32 1, label %sw.bb2.i.i
  ]

sw.bb.i.i:                                        ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #17
  %23 = ptrtoint ptr %4 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %4, align 4
  %conv.i74.i = trunc i16 %24 to i8
  %neg.i.i = xor i8 %conv.i74.i, -1
  br label %spi_nor_get_cmd_ext.exit.i

sw.bb2.i.i:                                       ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #17
  %25 = ptrtoint ptr %4 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %4, align 4
  %conv5.i.i = trunc i16 %26 to i8
  br label %spi_nor_get_cmd_ext.exit.i

do.end.i.i:                                       ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #17
  %dev.i.i = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 2
  %27 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.32) #18
  br label %spi_nor_get_cmd_ext.exit.i

spi_nor_get_cmd_ext.exit.i:                       ; preds = %do.end.i.i, %sw.bb2.i.i, %sw.bb.i.i
  %retval.0.i.i = phi i8 [ 0, %do.end.i.i ], [ %conv5.i.i, %sw.bb2.i.i ], [ %neg.i.i, %sw.bb.i.i ]
  %29 = ptrtoint ptr %4 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %4, align 4
  %shl.i = shl i16 %30, 8
  %conv42.i = zext i8 %retval.0.i.i to i16
  %or.i = or i16 %shl.i, %conv42.i
  store i16 %or.i, ptr %4, align 4
  %31 = ptrtoint ptr %op to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 2, ptr %op, align 8
  br label %spi_nor_spimem_setup_op.exit

spi_nor_spimem_setup_op.exit:                     ; preds = %spi_nor_get_cmd_ext.exit.i, %if.end17.i.spi_nor_spimem_setup_op.exit_crit_edge
  %32 = ptrtoint ptr %spimem to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %spimem, align 8
  %call = call i32 @spi_mem_exec_op(ptr noundef %33, ptr noundef nonnull %op) #15
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %op) #15
  br label %if.end

if.else:                                          ; preds = %entry
  %reg_proto.i = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 15
  %34 = ptrtoint ptr %reg_proto.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %reg_proto.i, align 4
  %and.i.i18 = and i32 %35, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i18)
  %tobool.i.not.i19 = icmp eq i32 %and.i.i18, 0
  br i1 %tobool.i.not.i19, label %if.end.i20, label %if.else.do.body_crit_edge

if.else.do.body_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body

if.end.i20:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  %controller_ops.i = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 20
  %36 = ptrtoint ptr %controller_ops.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %controller_ops.i, align 8
  %write_reg.i = getelementptr inbounds %struct.spi_nor_controller_ops, ptr %37, i32 0, i32 3
  %38 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %write_reg.i, align 4
  %call1.i = tail call i32 %39(ptr noundef %nor, i8 noundef zeroext 48, ptr noundef null, i32 noundef 0) #15
  br label %if.end

if.end:                                           ; preds = %if.end.i20, %spi_nor_spimem_setup_op.exit
  %ret.0 = phi i32 [ %call, %spi_nor_spimem_setup_op.exit ], [ %call1.i, %if.end.i20 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool3.not = icmp eq i32 %ret.0, 0
  br i1 %tobool3.not, label %if.end.if.end11_crit_edge, label %if.end.do.body_crit_edge

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end11

do.body:                                          ; preds = %if.end.do.body_crit_edge, %if.else.do.body_crit_edge
  %ret.024 = phi i32 [ %ret.0, %if.end.do.body_crit_edge ], [ -95, %if.else.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @spi_nor_clear_sr.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@spi_nor_clear_sr, %if.then9)) #15
          to label %if.end11 [label %if.then9], !srcloc !272

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  %dev = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 2
  %40 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @spi_nor_clear_sr.__UNIQUE_ID_ddebug245, ptr noundef %41, ptr noundef nonnull @.str.43, i32 noundef %ret.024) #15
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %do.body, %if.end.if.end11_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @spi_nor_read_fsr(ptr noundef %nor, ptr noundef %fsr) unnamed_addr #0 align 64 {
entry:
  %op = alloca %struct.spi_mem_op, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %spimem = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 3
  %0 = ptrtoint ptr %spimem to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spimem, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %op) #15
  %2 = call ptr @memset(ptr %op, i32 255, i32 48)
  %3 = ptrtoint ptr %op to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %op, align 8
  %buswidth = getelementptr inbounds %struct.anon.71, ptr %op, i32 0, i32 1
  %4 = ptrtoint ptr %buswidth to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %buswidth, align 1
  %dtr = getelementptr inbounds %struct.anon.71, ptr %op, i32 0, i32 2
  %5 = ptrtoint ptr %dtr to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 127, ptr %dtr, align 2
  %opcode = getelementptr inbounds %struct.anon.71, ptr %op, i32 0, i32 3
  %6 = ptrtoint ptr %opcode to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 112, ptr %opcode, align 4
  %addr = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1
  %7 = ptrtoint ptr %addr to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %addr, align 8
  %buswidth2 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %buswidth2 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %buswidth2, align 1
  %dtr3 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1, i32 2
  %9 = ptrtoint ptr %dtr3 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 127, ptr %dtr3, align 2
  %val = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1, i32 3
  %10 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 0, ptr %val, align 8
  %dummy = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 2
  %11 = ptrtoint ptr %dummy to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %dummy, align 8
  %buswidth8 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 2, i32 1
  %12 = ptrtoint ptr %buswidth8 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %buswidth8, align 1
  %dtr9 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 2, i32 2
  %13 = ptrtoint ptr %dtr9 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 127, ptr %dtr9, align 2
  %data = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3
  %14 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %data, align 4
  %dtr14 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 1
  %15 = ptrtoint ptr %dtr14 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 127, ptr %dtr14, align 1
  %dir = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 2
  %16 = ptrtoint ptr %dir to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %dir, align 8
  %nbytes18 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 3
  %17 = ptrtoint ptr %nbytes18 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %nbytes18, align 4
  %buf = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 4
  %18 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %fsr, ptr %buf, align 8
  %reg_proto = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 15
  %19 = ptrtoint ptr %reg_proto to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %reg_proto, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17303560, i32 %20)
  %cmp = icmp eq i32 %20, 17303560
  br i1 %cmp, label %if.then19, label %if.endthread-pre-split

if.then19:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %params = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 21
  %21 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %params, align 4
  %rdsr_addr_nbytes = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %22, i32 0, i32 4
  %23 = ptrtoint ptr %rdsr_addr_nbytes to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %rdsr_addr_nbytes, align 1
  %25 = ptrtoint ptr %addr to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %addr, align 8
  %rdsr_dummy = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %22, i32 0, i32 3
  %26 = ptrtoint ptr %rdsr_dummy to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %rdsr_dummy, align 8
  %28 = ptrtoint ptr %dummy to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %dummy, align 8
  %29 = ptrtoint ptr %nbytes18 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 2, ptr %nbytes18, align 4
  br label %if.end

if.endthread-pre-split:                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %30 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %30)
  %.pr = load i8, ptr %addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.endthread-pre-split, %if.then19
  %31 = phi i8 [ %.pr, %if.endthread-pre-split ], [ %24, %if.then19 ]
  %and.i.i = lshr i32 %20, 16
  %conv.i.i = trunc i32 %and.i.i to i8
  %32 = ptrtoint ptr %buswidth to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv.i.i, ptr %buswidth, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool.not.i = icmp eq i8 %31, 0
  br i1 %tobool.not.i, label %if.end.if.end.i_crit_edge, label %if.then.i

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %and.i68.i = lshr i32 %20, 8
  %conv.i69.i = trunc i32 %and.i68.i to i8
  %33 = ptrtoint ptr %buswidth2 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv.i69.i, ptr %buswidth2, align 1
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end.if.end.i_crit_edge
  %34 = ptrtoint ptr %dummy to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %dummy, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool5.not.i = icmp eq i8 %35, 0
  br i1 %tobool5.not.i, label %if.end.i.if.end10.i_crit_edge, label %if.then6.i

if.end.i.if.end10.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end10.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %and.i70.i = lshr i32 %20, 8
  %conv.i71.i = trunc i32 %and.i70.i to i8
  %36 = ptrtoint ptr %buswidth8 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv.i71.i, ptr %buswidth8, align 1
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then6.i, %if.end.i.if.end10.i_crit_edge
  %37 = ptrtoint ptr %nbytes18 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %nbytes18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool12.not.i = icmp eq i32 %38, 0
  br i1 %tobool12.not.i, label %if.end10.i.if.end17.i_crit_edge, label %if.then13.i

if.end10.i.if.end17.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end17.i

if.then13.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #17
  %conv.i72.i = trunc i32 %20 to i8
  %39 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv.i72.i, ptr %data, align 4
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.then13.i, %if.end10.i.if.end17.i_crit_edge
  %and.i73.i = and i32 %20, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i73.i)
  %tobool.i.not.i = icmp eq i32 %and.i73.i, 0
  br i1 %tobool.i.not.i, label %if.end17.i.spi_nor_spimem_setup_op.exit_crit_edge, label %if.then19.i

if.end17.i.spi_nor_spimem_setup_op.exit_crit_edge: ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %spi_nor_spimem_setup_op.exit

if.then19.i:                                      ; preds = %if.end17.i
  %40 = ptrtoint ptr %dtr to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 -1, ptr %dtr, align 2
  %41 = ptrtoint ptr %dtr3 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 -1, ptr %dtr3, align 2
  %42 = ptrtoint ptr %dtr9 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 -1, ptr %dtr9, align 2
  %43 = ptrtoint ptr %dtr14 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 -1, ptr %dtr14, align 1
  %mul.i = shl i8 %35, 1
  %44 = ptrtoint ptr %dummy to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %mul.i, ptr %dummy, align 8
  %cmd_ext_type.i.i = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 18
  %45 = ptrtoint ptr %cmd_ext_type.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %cmd_ext_type.i.i, align 8
  %47 = zext i32 %46 to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values.128)
  switch i32 %46, label %do.end.i.i [
    i32 2, label %if.then19.i.spi_nor_get_cmd_ext.exit.i_crit_edge
    i32 1, label %sw.bb2.i.i
  ]

if.then19.i.spi_nor_get_cmd_ext.exit.i_crit_edge: ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %spi_nor_get_cmd_ext.exit.i

sw.bb2.i.i:                                       ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %spi_nor_get_cmd_ext.exit.i

do.end.i.i:                                       ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #17
  %dev.i.i = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 2
  %48 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %49, ptr noundef nonnull @.str.32) #18
  br label %spi_nor_get_cmd_ext.exit.i

spi_nor_get_cmd_ext.exit.i:                       ; preds = %do.end.i.i, %sw.bb2.i.i, %if.then19.i.spi_nor_get_cmd_ext.exit.i_crit_edge
  %retval.0.i.i = phi i8 [ 0, %do.end.i.i ], [ 112, %sw.bb2.i.i ], [ -113, %if.then19.i.spi_nor_get_cmd_ext.exit.i_crit_edge ]
  %50 = ptrtoint ptr %opcode to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %opcode, align 4
  %shl.i = shl i16 %51, 8
  %conv42.i = zext i8 %retval.0.i.i to i16
  %or.i = or i16 %shl.i, %conv42.i
  store i16 %or.i, ptr %opcode, align 4
  %52 = ptrtoint ptr %op to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 2, ptr %op, align 8
  br label %spi_nor_spimem_setup_op.exit

spi_nor_spimem_setup_op.exit:                     ; preds = %spi_nor_get_cmd_ext.exit.i, %if.end17.i.spi_nor_spimem_setup_op.exit_crit_edge
  %53 = ptrtoint ptr %spimem to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %spimem, align 8
  %call = call i32 @spi_mem_exec_op(ptr noundef %54, ptr noundef nonnull %op) #15
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %op) #15
  br label %if.end30

if.else:                                          ; preds = %entry
  %reg_proto.i = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 15
  %55 = ptrtoint ptr %reg_proto.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %reg_proto.i, align 4
  %and.i.i51 = and i32 %56, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i51)
  %tobool.i.not.i52 = icmp eq i32 %and.i.i51, 0
  br i1 %tobool.i.not.i52, label %if.end.i53, label %if.else.do.body_crit_edge

if.else.do.body_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body

if.end.i53:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  %controller_ops.i = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 20
  %57 = ptrtoint ptr %controller_ops.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %controller_ops.i, align 8
  %read_reg.i = getelementptr inbounds %struct.spi_nor_controller_ops, ptr %58, i32 0, i32 2
  %59 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %read_reg.i, align 4
  %call1.i = tail call i32 %60(ptr noundef %nor, i8 noundef zeroext 112, ptr noundef %fsr, i32 noundef 1) #15
  br label %if.end30

if.end30:                                         ; preds = %if.end.i53, %spi_nor_spimem_setup_op.exit
  %ret.0 = phi i32 [ %call, %spi_nor_spimem_setup_op.exit ], [ %call1.i, %if.end.i53 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool31.not = icmp eq i32 %ret.0, 0
  br i1 %tobool31.not, label %if.end30.if.end39_crit_edge, label %if.end30.do.body_crit_edge

if.end30.do.body_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body

if.end30.if.end39_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end39

do.body:                                          ; preds = %if.end30.do.body_crit_edge, %if.else.do.body_crit_edge
  %ret.057 = phi i32 [ %ret.0, %if.end30.do.body_crit_edge ], [ -95, %if.else.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @spi_nor_read_fsr.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@spi_nor_read_fsr, %if.then37)) #15
          to label %if.end39 [label %if.then37], !srcloc !272

if.then37:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  %dev = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 2
  %61 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @spi_nor_read_fsr.__UNIQUE_ID_ddebug239, ptr noundef %62, ptr noundef nonnull @.str.53, i32 noundef %ret.057) #15
  br label %if.end39

if.end39:                                         ; preds = %if.then37, %do.body, %if.end30.if.end39_crit_edge
  %ret.058 = phi i32 [ %ret.057, %if.then37 ], [ 0, %if.end30.if.end39_crit_edge ], [ %ret.057, %do.body ]
  ret i32 %ret.058
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @spi_nor_clear_fsr(ptr noundef %nor) unnamed_addr #0 align 64 {
entry:
  %op = alloca %struct.spi_mem_op, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %spimem = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 3
  %0 = ptrtoint ptr %spimem to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spimem, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.else, label %if.end.i

if.end.i:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %op) #15
  %2 = call ptr @memset(ptr %op, i32 0, i32 48)
  %3 = ptrtoint ptr %op to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %op, align 8
  %4 = getelementptr inbounds { i8, i8, i8, [1 x i8], i16 }, ptr %op, i32 0, i32 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 80, ptr %4, align 4
  %reg_proto = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 15
  %6 = ptrtoint ptr %reg_proto to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %reg_proto, align 4
  %and.i.i = lshr i32 %7, 16
  %conv.i.i = trunc i32 %and.i.i to i8
  %buswidth.i = getelementptr inbounds %struct.anon.71, ptr %op, i32 0, i32 1
  %8 = ptrtoint ptr %buswidth.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv.i.i, ptr %buswidth.i, align 1
  %dummy.i = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 2
  %9 = ptrtoint ptr %dummy.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %dummy.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool5.not.i = icmp eq i8 %10, 0
  br i1 %tobool5.not.i, label %if.end.i.if.end10.i_crit_edge, label %if.then6.i

if.end.i.if.end10.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end10.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %and.i70.i = lshr i32 %7, 8
  %conv.i71.i = trunc i32 %and.i70.i to i8
  %buswidth9.i = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 2, i32 1
  %11 = ptrtoint ptr %buswidth9.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv.i71.i, ptr %buswidth9.i, align 1
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then6.i, %if.end.i.if.end10.i_crit_edge
  %nbytes11.i = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 3
  %12 = ptrtoint ptr %nbytes11.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nbytes11.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool12.not.i = icmp eq i32 %13, 0
  br i1 %tobool12.not.i, label %if.end10.i.if.end17.i_crit_edge, label %if.then13.i

if.end10.i.if.end17.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end17.i

if.then13.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #17
  %data.i = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3
  %conv.i72.i = trunc i32 %7 to i8
  %14 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv.i72.i, ptr %data.i, align 4
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.then13.i, %if.end10.i.if.end17.i_crit_edge
  %and.i73.i = and i32 %7, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i73.i)
  %tobool.i.not.i = icmp eq i32 %and.i73.i, 0
  br i1 %tobool.i.not.i, label %if.end17.i.spi_nor_spimem_setup_op.exit_crit_edge, label %if.then19.i

if.end17.i.spi_nor_spimem_setup_op.exit_crit_edge: ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %spi_nor_spimem_setup_op.exit

if.then19.i:                                      ; preds = %if.end17.i
  %dtr.i = getelementptr inbounds %struct.anon.71, ptr %op, i32 0, i32 2
  %15 = ptrtoint ptr %dtr.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load.i = load i8, ptr %dtr.i, align 2
  %bf.set.i = or i8 %bf.load.i, -128
  store i8 %bf.set.i, ptr %dtr.i, align 2
  %dtr22.i = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1, i32 2
  %16 = ptrtoint ptr %dtr22.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load23.i = load i8, ptr %dtr22.i, align 2
  %bf.set25.i = or i8 %bf.load23.i, -128
  store i8 %bf.set25.i, ptr %dtr22.i, align 2
  %dtr27.i = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 2, i32 2
  %17 = ptrtoint ptr %dtr27.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load28.i = load i8, ptr %dtr27.i, align 2
  %bf.set30.i = or i8 %bf.load28.i, -128
  store i8 %bf.set30.i, ptr %dtr27.i, align 2
  %dtr32.i = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 1
  %18 = ptrtoint ptr %dtr32.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load33.i = load i8, ptr %dtr32.i, align 1
  %bf.set35.i = or i8 %bf.load33.i, -128
  store i8 %bf.set35.i, ptr %dtr32.i, align 1
  %mul.i = shl i8 %10, 1
  %19 = ptrtoint ptr %dummy.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %mul.i, ptr %dummy.i, align 8
  %cmd_ext_type.i.i = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 18
  %20 = ptrtoint ptr %cmd_ext_type.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cmd_ext_type.i.i, align 8
  %22 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.129)
  switch i32 %21, label %do.end.i.i [
    i32 2, label %sw.bb.i.i
    i32 1, label %sw.bb2.i.i
  ]

sw.bb.i.i:                                        ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #17
  %23 = ptrtoint ptr %4 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %4, align 4
  %conv.i74.i = trunc i16 %24 to i8
  %neg.i.i = xor i8 %conv.i74.i, -1
  br label %spi_nor_get_cmd_ext.exit.i

sw.bb2.i.i:                                       ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #17
  %25 = ptrtoint ptr %4 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %4, align 4
  %conv5.i.i = trunc i16 %26 to i8
  br label %spi_nor_get_cmd_ext.exit.i

do.end.i.i:                                       ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #17
  %dev.i.i = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 2
  %27 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.32) #18
  br label %spi_nor_get_cmd_ext.exit.i

spi_nor_get_cmd_ext.exit.i:                       ; preds = %do.end.i.i, %sw.bb2.i.i, %sw.bb.i.i
  %retval.0.i.i = phi i8 [ 0, %do.end.i.i ], [ %conv5.i.i, %sw.bb2.i.i ], [ %neg.i.i, %sw.bb.i.i ]
  %29 = ptrtoint ptr %4 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %4, align 4
  %shl.i = shl i16 %30, 8
  %conv42.i = zext i8 %retval.0.i.i to i16
  %or.i = or i16 %shl.i, %conv42.i
  store i16 %or.i, ptr %4, align 4
  %31 = ptrtoint ptr %op to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 2, ptr %op, align 8
  br label %spi_nor_spimem_setup_op.exit

spi_nor_spimem_setup_op.exit:                     ; preds = %spi_nor_get_cmd_ext.exit.i, %if.end17.i.spi_nor_spimem_setup_op.exit_crit_edge
  %32 = ptrtoint ptr %spimem to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %spimem, align 8
  %call = call i32 @spi_mem_exec_op(ptr noundef %33, ptr noundef nonnull %op) #15
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %op) #15
  br label %if.end

if.else:                                          ; preds = %entry
  %reg_proto.i = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 15
  %34 = ptrtoint ptr %reg_proto.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %reg_proto.i, align 4
  %and.i.i18 = and i32 %35, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i18)
  %tobool.i.not.i19 = icmp eq i32 %and.i.i18, 0
  br i1 %tobool.i.not.i19, label %if.end.i20, label %if.else.do.body_crit_edge

if.else.do.body_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body

if.end.i20:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  %controller_ops.i = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 20
  %36 = ptrtoint ptr %controller_ops.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %controller_ops.i, align 8
  %write_reg.i = getelementptr inbounds %struct.spi_nor_controller_ops, ptr %37, i32 0, i32 3
  %38 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %write_reg.i, align 4
  %call1.i = tail call i32 %39(ptr noundef %nor, i8 noundef zeroext 80, ptr noundef null, i32 noundef 0) #15
  br label %if.end

if.end:                                           ; preds = %if.end.i20, %spi_nor_spimem_setup_op.exit
  %ret.0 = phi i32 [ %call, %spi_nor_spimem_setup_op.exit ], [ %call1.i, %if.end.i20 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool3.not = icmp eq i32 %ret.0, 0
  br i1 %tobool3.not, label %if.end.if.end11_crit_edge, label %if.end.do.body_crit_edge

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end11

do.body:                                          ; preds = %if.end.do.body_crit_edge, %if.else.do.body_crit_edge
  %ret.024 = phi i32 [ %ret.0, %if.end.do.body_crit_edge ], [ -95, %if.else.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @spi_nor_clear_fsr.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@spi_nor_clear_fsr, %if.then9)) #15
          to label %if.end11 [label %if.then9], !srcloc !272

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  %dev = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 2
  %40 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @spi_nor_clear_fsr.__UNIQUE_ID_ddebug246, ptr noundef %41, ptr noundef nonnull @.str.55, i32 noundef %ret.024) #15
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %do.body, %if.end.if.end11_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @spi_nor_read_id(ptr noundef %nor) unnamed_addr #0 align 64 {
entry:
  %op = alloca %struct.spi_mem_op, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %bouncebuf = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 4
  %0 = ptrtoint ptr %bouncebuf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bouncebuf, align 4
  %spimem = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 3
  %2 = ptrtoint ptr %spimem to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %spimem, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %op) #15
  %4 = call ptr @memset(ptr %op, i32 255, i32 48)
  %5 = ptrtoint ptr %op to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %op, align 8
  %buswidth = getelementptr inbounds %struct.anon.71, ptr %op, i32 0, i32 1
  %6 = ptrtoint ptr %buswidth to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %buswidth, align 1
  %dtr = getelementptr inbounds %struct.anon.71, ptr %op, i32 0, i32 2
  %7 = ptrtoint ptr %dtr to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 127, ptr %dtr, align 2
  %opcode = getelementptr inbounds %struct.anon.71, ptr %op, i32 0, i32 3
  %8 = ptrtoint ptr %opcode to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 159, ptr %opcode, align 4
  %addr = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1
  %9 = ptrtoint ptr %addr to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %addr, align 8
  %buswidth2 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %buswidth2 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %buswidth2, align 1
  %dtr3 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1, i32 2
  %11 = ptrtoint ptr %dtr3 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 127, ptr %dtr3, align 2
  %val = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1, i32 3
  %12 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 0, ptr %val, align 8
  %dummy = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 2
  %13 = ptrtoint ptr %dummy to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %dummy, align 8
  %buswidth8 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 2, i32 1
  %14 = ptrtoint ptr %buswidth8 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %buswidth8, align 1
  %dtr9 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 2, i32 2
  %15 = ptrtoint ptr %dtr9 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 127, ptr %dtr9, align 2
  %data = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3
  %16 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %data, align 4
  %dtr14 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 1
  %17 = ptrtoint ptr %dtr14 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 127, ptr %dtr14, align 1
  %dir = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 2
  %18 = ptrtoint ptr %dir to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %dir, align 8
  %nbytes18 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 3
  %19 = ptrtoint ptr %nbytes18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 6, ptr %nbytes18, align 4
  %buf = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 4
  %20 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %1, ptr %buf, align 8
  %call = call i32 @spi_mem_exec_op(ptr noundef nonnull %3, ptr noundef nonnull %op) #15
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %op) #15
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %controller_ops = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 20
  %21 = ptrtoint ptr %controller_ops to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %controller_ops, align 8
  %read_reg = getelementptr inbounds %struct.spi_nor_controller_ops, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %read_reg, align 4
  %call20 = tail call i32 %24(ptr noundef %nor, i8 noundef zeroext -97, ptr noundef %1, i32 noundef 6) #15
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %ret.0 = phi i32 [ %call, %if.then ], [ %call20, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool21.not = icmp eq i32 %ret.0, 0
  br i1 %tobool21.not, label %if.end.for.body_crit_edge, label %do.body

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @spi_nor_read_id.__UNIQUE_ID_ddebug262, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@spi_nor_read_id, %if.then27)) #15
          to label %do.end [label %if.then27], !srcloc !272

if.then27:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  %dev = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 2
  %25 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @spi_nor_read_id.__UNIQUE_ID_ddebug262, ptr noundef %26, ptr noundef nonnull @.str.76, i32 noundef %ret.0) #15
  br label %do.end

do.end:                                           ; preds = %if.then27, %do.body
  %27 = inttoptr i32 %ret.0 to ptr
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.067 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr [17 x ptr], ptr @manufacturers, i32 0, i32 %i.067
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx, align 4
  %parts = getelementptr inbounds %struct.spi_nor_manufacturer, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %parts to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %parts, align 4
  %nparts = getelementptr inbounds %struct.spi_nor_manufacturer, ptr %29, i32 0, i32 2
  %32 = ptrtoint ptr %nparts to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %nparts, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp18.not.i = icmp eq i32 %33, 0
  br i1 %cmp18.not.i, label %for.body.for.inc_crit_edge, label %for.body.for.body.i_crit_edge

for.body.for.body.i_crit_edge:                    ; preds = %for.body
  br label %for.body.i

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.for.body.i_crit_edge
  %i.019.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.body.for.body.i_crit_edge ]
  %id_len.i = getelementptr %struct.flash_info, ptr %31, i32 %i.019.i, i32 2
  %34 = ptrtoint ptr %id_len.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %id_len.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool.not.i = icmp eq i8 %35, 0
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %land.lhs.true.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %conv.i = zext i8 %35 to i32
  %id2.i = getelementptr %struct.flash_info, ptr %31, i32 %i.019.i, i32 1
  %bcmp.i = call i32 @bcmp(ptr %id2.i, ptr %1, i32 %conv.i) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool6.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool6.not.i, label %spi_nor_search_part_by_id.exit, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.019.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %33
  br i1 %exitcond.not.i, label %for.inc.i.for.inc_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

for.inc.i.for.inc_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

spi_nor_search_part_by_id.exit:                   ; preds = %land.lhs.true.i
  %arrayidx.le.i = getelementptr %struct.flash_info, ptr %31, i32 %i.019.i
  %tobool33.not = icmp eq ptr %arrayidx.le.i, null
  br i1 %tobool33.not, label %spi_nor_search_part_by_id.exit.for.inc_crit_edge, label %if.then34

spi_nor_search_part_by_id.exit.for.inc_crit_edge: ; preds = %spi_nor_search_part_by_id.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.then34:                                        ; preds = %spi_nor_search_part_by_id.exit
  call void @__sanitizer_cov_trace_pc() #17
  %manufacturer = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 7
  %36 = ptrtoint ptr %manufacturer to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %29, ptr %manufacturer, align 8
  br label %cleanup

for.inc:                                          ; preds = %spi_nor_search_part_by_id.exit.for.inc_crit_edge, %for.inc.i.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.067, 1
  %exitcond.not = icmp eq i32 %inc, 17
  br i1 %exitcond.not, label %do.end39, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

do.end39:                                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  %dev40 = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 2
  %37 = ptrtoint ptr %dev40 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev40, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.77, i32 noundef 6, ptr noundef %1) #18
  br label %cleanup

cleanup:                                          ; preds = %do.end39, %if.then34, %do.end
  %retval.0 = phi ptr [ %27, %do.end ], [ %arrayidx.le.i, %if.then34 ], [ inttoptr (i32 -19 to ptr), %do.end39 ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_nor_parse_sfdp(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @spi_nor_no_sfdp_init_params(ptr nocapture noundef readonly %nor) unnamed_addr #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %params1 = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 21
  %0 = ptrtoint ptr %params1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %params1, align 4
  %info = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 6
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info, align 4
  %no_sfdp_flags2 = getelementptr inbounds %struct.flash_info, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %no_sfdp_flags2 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %no_sfdp_flags2, align 2
  %conv = zext i8 %5 to i32
  %and = and i32 %conv, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %hwcaps = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %hwcaps to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hwcaps, align 4
  %or = or i32 %7, 8
  store i32 %or, ptr %hwcaps, align 4
  %arrayidx = getelementptr %struct.spi_nor_flash_parameter, ptr %1, i32 0, i32 6, i32 3
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %arrayidx, align 4
  %num_wait_states2.i = getelementptr %struct.spi_nor_flash_parameter, ptr %1, i32 0, i32 6, i32 3, i32 1
  %9 = ptrtoint ptr %num_wait_states2.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 8, ptr %num_wait_states2.i, align 1
  %opcode3.i = getelementptr %struct.spi_nor_flash_parameter, ptr %1, i32 0, i32 6, i32 3, i32 2
  %10 = ptrtoint ptr %opcode3.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 59, ptr %opcode3.i, align 2
  %proto4.i = getelementptr %struct.spi_nor_flash_parameter, ptr %1, i32 0, i32 6, i32 3, i32 3
  %11 = ptrtoint ptr %proto4.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 65794, ptr %proto4.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %and4 = and i32 %conv, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.end.if.end12_crit_edge, label %if.then6

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end12

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %hwcaps7 = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %1, i32 0, i32 5
  %12 = ptrtoint ptr %hwcaps7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %hwcaps7, align 4
  %or9 = or i32 %13, 128
  store i32 %or9, ptr %hwcaps7, align 4
  %arrayidx11 = getelementptr %struct.spi_nor_flash_parameter, ptr %1, i32 0, i32 6, i32 7
  %14 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %arrayidx11, align 4
  %num_wait_states2.i107 = getelementptr %struct.spi_nor_flash_parameter, ptr %1, i32 0, i32 6, i32 7, i32 1
  %15 = ptrtoint ptr %num_wait_states2.i107 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 8, ptr %num_wait_states2.i107, align 1
  %opcode3.i108 = getelementptr %struct.spi_nor_flash_parameter, ptr %1, i32 0, i32 6, i32 7, i32 2
  %16 = ptrtoint ptr %opcode3.i108 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 107, ptr %opcode3.i108, align 2
  %proto4.i109 = getelementptr %struct.spi_nor_flash_parameter, ptr %1, i32 0, i32 6, i32 7, i32 3
  %17 = ptrtoint ptr %proto4.i109 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 65796, ptr %proto4.i109, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then6, %if.end.if.end12_crit_edge
  %and14 = and i32 %conv, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.end12.if.end22_crit_edge, label %if.then16

if.end12.if.end22_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end22

if.then16:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #17
  %hwcaps17 = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %1, i32 0, i32 5
  %18 = ptrtoint ptr %hwcaps17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %hwcaps17, align 4
  %or19 = or i32 %19, 2048
  store i32 %or19, ptr %hwcaps17, align 4
  %arrayidx21 = getelementptr %struct.spi_nor_flash_parameter, ptr %1, i32 0, i32 6, i32 11
  %20 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %arrayidx21, align 4
  %num_wait_states2.i110 = getelementptr %struct.spi_nor_flash_parameter, ptr %1, i32 0, i32 6, i32 11, i32 1
  %21 = ptrtoint ptr %num_wait_states2.i110 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 8, ptr %num_wait_states2.i110, align 1
  %opcode3.i111 = getelementptr %struct.spi_nor_flash_parameter, ptr %1, i32 0, i32 6, i32 11, i32 2
  %22 = ptrtoint ptr %opcode3.i111 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 -117, ptr %opcode3.i111, align 2
  %proto4.i112 = getelementptr %struct.spi_nor_flash_parameter, ptr %1, i32 0, i32 6, i32 11, i32 3
  %23 = ptrtoint ptr %proto4.i112 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 65800, ptr %proto4.i112, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then16, %if.end12.if.end22_crit_edge
  %and24 = and i32 %conv, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %if.end22.if.end32_crit_edge, label %if.then26

if.end22.if.end32_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end32

if.then26:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #17
  %hwcaps27 = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %1, i32 0, i32 5
  %24 = ptrtoint ptr %hwcaps27 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %hwcaps27, align 4
  %or29 = or i32 %25, 32768
  store i32 %or29, ptr %hwcaps27, align 4
  %arrayidx31 = getelementptr %struct.spi_nor_flash_parameter, ptr %1, i32 0, i32 6, i32 15
  %26 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %arrayidx31, align 4
  %num_wait_states2.i113 = getelementptr %struct.spi_nor_flash_parameter, ptr %1, i32 0, i32 6, i32 15, i32 1
  %27 = ptrtoint ptr %num_wait_states2.i113 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 20, ptr %num_wait_states2.i113, align 1
  %opcode3.i114 = getelementptr %struct.spi_nor_flash_parameter, ptr %1, i32 0, i32 6, i32 15, i32 2
  %28 = ptrtoint ptr %opcode3.i114 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 11, ptr %opcode3.i114, align 2
  %proto4.i115 = getelementptr %struct.spi_nor_flash_parameter, ptr %1, i32 0, i32 6, i32 15, i32 3
  %29 = ptrtoint ptr %proto4.i115 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 17303560, ptr %proto4.i115, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.then26, %if.end22.if.end32_crit_edge
  %and34 = and i32 %conv, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %if.end32.if.end41_crit_edge, label %if.then36

if.end32.if.end41_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end41

if.then36:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #17
  %hwcaps37 = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %1, i32 0, i32 5
  %30 = ptrtoint ptr %hwcaps37 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %hwcaps37, align 4
  %or39 = or i32 %31, 8388608
  store i32 %or39, ptr %hwcaps37, align 4
  %arrayidx40 = getelementptr %struct.spi_nor_flash_parameter, ptr %1, i32 0, i32 7, i32 7
  %32 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 2, ptr %arrayidx40, align 4
  %proto2.i = getelementptr %struct.spi_nor_flash_parameter, ptr %1, i32 0, i32 7, i32 7, i32 1
  %33 = ptrtoint ptr %proto2.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 17303560, ptr %proto2.i, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.then36, %if.end32.if.end41_crit_edge
  %and43 = and i32 %conv, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  br i1 %tobool44.not, label %if.else, label %if.end41.if.end65.sink.split_crit_edge

if.end41.if.end65.sink.split_crit_edge:           ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end65.sink.split

if.else:                                          ; preds = %if.end41
  %and52 = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  br i1 %tobool53.not, label %if.else.if.end65_crit_edge, label %if.else.if.end65.sink.split_crit_edge

if.else.if.end65.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end65.sink.split

if.else.if.end65_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end65

if.end65.sink.split:                              ; preds = %if.else.if.end65.sink.split_crit_edge, %if.end41.if.end65.sink.split_crit_edge
  %.sink = phi i8 [ -41, %if.end41.if.end65.sink.split_crit_edge ], [ 32, %if.else.if.end65.sink.split_crit_edge ]
  %erase_type60 = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %1, i32 0, i32 8, i32 2
  %34 = ptrtoint ptr %erase_type60 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 4096, ptr %erase_type60, align 4
  %opcode2.i116 = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %1, i32 0, i32 8, i32 2, i32 0, i32 3
  %35 = ptrtoint ptr %opcode2.i116 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %.sink, ptr %opcode2.i116, align 4
  %size_shift.i117 = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %1, i32 0, i32 8, i32 2, i32 0, i32 1
  %36 = ptrtoint ptr %size_shift.i117 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 12, ptr %size_shift.i117, align 4
  %size_mask.i118 = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %1, i32 0, i32 8, i32 2, i32 0, i32 2
  %37 = ptrtoint ptr %size_mask.i118 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 4095, ptr %size_mask.i118, align 4
  br label %if.end65

if.end65:                                         ; preds = %if.end65.sink.split, %if.else.if.end65_crit_edge
  %erase_mask.0 = phi i32 [ 0, %if.else.if.end65_crit_edge ], [ 1, %if.end65.sink.split ]
  %erase_map = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %1, i32 0, i32 8
  %shl67 = shl nuw nsw i32 1, %erase_mask.0
  %or69 = or i32 %shl67, %erase_mask.0
  %conv70 = trunc i32 %or69 to i8
  %arrayidx73 = getelementptr %struct.spi_nor_flash_parameter, ptr %1, i32 0, i32 8, i32 2, i32 %erase_mask.0
  %38 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %info, align 4
  %sector_size = getelementptr inbounds %struct.flash_info, ptr %39, i32 0, i32 3
  %40 = ptrtoint ptr %sector_size to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %sector_size, align 4
  %42 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %arrayidx73, align 4
  %opcode2.i119 = getelementptr %struct.spi_nor_flash_parameter, ptr %1, i32 0, i32 8, i32 2, i32 %erase_mask.0, i32 3
  %43 = ptrtoint ptr %opcode2.i119 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 -40, ptr %opcode2.i119, align 4
  %44 = tail call i32 @llvm.cttz.i32(i32 %41, i1 true) #15, !range !273
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %iszero.i = icmp eq i32 %41, 0
  %sub.i = select i1 %iszero.i, i32 -1, i32 %44
  %size_shift.i120 = getelementptr %struct.spi_nor_flash_parameter, ptr %1, i32 0, i32 8, i32 2, i32 %erase_mask.0, i32 1
  %45 = ptrtoint ptr %size_shift.i120 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %sub.i, ptr %size_shift.i120, align 4
  %notmask.i = shl nsw i32 -1, %sub.i
  %sub5.i = xor i32 %notmask.i, -1
  %size_mask.i121 = getelementptr %struct.spi_nor_flash_parameter, ptr %1, i32 0, i32 8, i32 2, i32 %erase_mask.0, i32 2
  %46 = ptrtoint ptr %size_mask.i121 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %sub5.i, ptr %size_mask.i121, align 4
  %47 = ptrtoint ptr %1 to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %1, align 8
  %49 = or i8 %conv70, 16
  %or.i = zext i8 %49 to i64
  %uniform_region.i = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %1, i32 0, i32 8, i32 1
  %50 = ptrtoint ptr %uniform_region.i to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 %or.i, ptr %uniform_region.i, align 8
  %size.i = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %1, i32 0, i32 8, i32 1, i32 1
  %51 = ptrtoint ptr %size.i to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 %48, ptr %size.i, align 8
  %52 = ptrtoint ptr %erase_map to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %uniform_region.i, ptr %erase_map, align 8
  %uniform_erase_type.i = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %1, i32 0, i32 8, i32 3
  %53 = ptrtoint ptr %uniform_erase_type.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %conv70, ptr %uniform_erase_type.i, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spansion_set_4byte_addr_mode(ptr noundef %nor, i1 noundef zeroext %enable) #0 align 64 {
entry:
  %op = alloca %struct.spi_mem_op, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %conv1 = select i1 %enable, i8 -128, i8 0
  %bouncebuf = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 4
  %0 = ptrtoint ptr %bouncebuf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bouncebuf, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv1, ptr %1, align 1
  %spimem = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 3
  %3 = ptrtoint ptr %spimem to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %spimem, align 8
  %tobool2.not = icmp eq ptr %4, null
  br i1 %tobool2.not, label %if.else, label %if.end17.i

if.end17.i:                                       ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %op) #15
  %5 = call ptr @memset(ptr %op, i32 255, i32 48)
  %6 = ptrtoint ptr %op to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %op, align 8
  %buswidth = getelementptr inbounds %struct.anon.71, ptr %op, i32 0, i32 1
  %dtr = getelementptr inbounds %struct.anon.71, ptr %op, i32 0, i32 2
  %7 = ptrtoint ptr %dtr to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 127, ptr %dtr, align 2
  %opcode = getelementptr inbounds %struct.anon.71, ptr %op, i32 0, i32 3
  %8 = ptrtoint ptr %opcode to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 23, ptr %opcode, align 4
  %addr = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1
  %9 = ptrtoint ptr %addr to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %addr, align 8
  %buswidth4 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %buswidth4 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %buswidth4, align 1
  %dtr5 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1, i32 2
  %11 = ptrtoint ptr %dtr5 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 127, ptr %dtr5, align 2
  %val = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1, i32 3
  %12 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 0, ptr %val, align 8
  %dummy = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 2
  %13 = ptrtoint ptr %dummy to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %dummy, align 8
  %buswidth10 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 2, i32 1
  %14 = ptrtoint ptr %buswidth10 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %buswidth10, align 1
  %dtr11 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 2, i32 2
  %15 = ptrtoint ptr %dtr11 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 127, ptr %dtr11, align 2
  %data = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3
  %dtr16 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 1
  %16 = ptrtoint ptr %dtr16 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 127, ptr %dtr16, align 1
  %dir = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 2
  %17 = ptrtoint ptr %dir to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 2, ptr %dir, align 8
  %nbytes20 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 3
  %18 = ptrtoint ptr %nbytes20 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %nbytes20, align 4
  %buf = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 4
  %19 = ptrtoint ptr %bouncebuf to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bouncebuf, align 4
  %21 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %20, ptr %buf, align 8
  %reg_proto = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 15
  %22 = ptrtoint ptr %reg_proto to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %reg_proto, align 4
  %and.i.i = lshr i32 %23, 16
  %conv.i.i = trunc i32 %and.i.i to i8
  %24 = ptrtoint ptr %buswidth to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv.i.i, ptr %buswidth, align 1
  %conv.i72.i = trunc i32 %23 to i8
  %25 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv.i72.i, ptr %data, align 4
  %and.i73.i = and i32 %23, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i73.i)
  %tobool.i.not.i = icmp eq i32 %and.i73.i, 0
  br i1 %tobool.i.not.i, label %if.end17.i.spi_nor_spimem_setup_op.exit_crit_edge, label %if.then19.i

if.end17.i.spi_nor_spimem_setup_op.exit_crit_edge: ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %spi_nor_spimem_setup_op.exit

if.then19.i:                                      ; preds = %if.end17.i
  %26 = ptrtoint ptr %dtr to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 -1, ptr %dtr, align 2
  %27 = ptrtoint ptr %dtr5 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 -1, ptr %dtr5, align 2
  %28 = ptrtoint ptr %dtr11 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 -1, ptr %dtr11, align 2
  %29 = ptrtoint ptr %dtr16 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 -1, ptr %dtr16, align 1
  %cmd_ext_type.i.i = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 18
  %30 = ptrtoint ptr %cmd_ext_type.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cmd_ext_type.i.i, align 8
  %32 = zext i32 %31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.130)
  switch i32 %31, label %do.end.i.i [
    i32 2, label %if.then19.i.spi_nor_get_cmd_ext.exit.i_crit_edge
    i32 1, label %sw.bb2.i.i
  ]

if.then19.i.spi_nor_get_cmd_ext.exit.i_crit_edge: ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %spi_nor_get_cmd_ext.exit.i

sw.bb2.i.i:                                       ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %spi_nor_get_cmd_ext.exit.i

do.end.i.i:                                       ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #17
  %dev.i.i = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 2
  %33 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.32) #18
  br label %spi_nor_get_cmd_ext.exit.i

spi_nor_get_cmd_ext.exit.i:                       ; preds = %do.end.i.i, %sw.bb2.i.i, %if.then19.i.spi_nor_get_cmd_ext.exit.i_crit_edge
  %retval.0.i.i = phi i8 [ 0, %do.end.i.i ], [ 23, %sw.bb2.i.i ], [ -24, %if.then19.i.spi_nor_get_cmd_ext.exit.i_crit_edge ]
  %35 = ptrtoint ptr %opcode to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %opcode, align 4
  %shl.i = shl i16 %36, 8
  %conv42.i = zext i8 %retval.0.i.i to i16
  %or.i = or i16 %shl.i, %conv42.i
  store i16 %or.i, ptr %opcode, align 4
  %37 = ptrtoint ptr %op to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 2, ptr %op, align 8
  br label %spi_nor_spimem_setup_op.exit

spi_nor_spimem_setup_op.exit:                     ; preds = %spi_nor_get_cmd_ext.exit.i, %if.end17.i.spi_nor_spimem_setup_op.exit_crit_edge
  %38 = ptrtoint ptr %spimem to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %spimem, align 8
  %call = call i32 @spi_mem_exec_op(ptr noundef %39, ptr noundef nonnull %op) #15
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %op) #15
  br label %if.end

if.else:                                          ; preds = %entry
  %reg_proto.i = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 15
  %40 = ptrtoint ptr %reg_proto.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %reg_proto.i, align 4
  %and.i.i45 = and i32 %41, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i45)
  %tobool.i.not.i46 = icmp eq i32 %and.i.i45, 0
  br i1 %tobool.i.not.i46, label %if.end.i47, label %if.else.do.body_crit_edge

if.else.do.body_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body

if.end.i47:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  %42 = ptrtoint ptr %bouncebuf to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %bouncebuf, align 4
  %controller_ops.i = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 20
  %44 = ptrtoint ptr %controller_ops.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %controller_ops.i, align 8
  %write_reg.i = getelementptr inbounds %struct.spi_nor_controller_ops, ptr %45, i32 0, i32 3
  %46 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %write_reg.i, align 4
  %call1.i = tail call i32 %47(ptr noundef %nor, i8 noundef zeroext 23, ptr noundef %43, i32 noundef 1) #15
  br label %if.end

if.end:                                           ; preds = %if.end.i47, %spi_nor_spimem_setup_op.exit
  %ret.0 = phi i32 [ %call, %spi_nor_spimem_setup_op.exit ], [ %call1.i, %if.end.i47 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool25.not = icmp eq i32 %ret.0, 0
  br i1 %tobool25.not, label %if.end.if.end34_crit_edge, label %if.end.do.body_crit_edge

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body

if.end.if.end34_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end34

do.body:                                          ; preds = %if.end.do.body_crit_edge, %if.else.do.body_crit_edge
  %ret.051 = phi i32 [ %ret.0, %if.end.do.body_crit_edge ], [ -95, %if.else.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @spansion_set_4byte_addr_mode.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@spansion_set_4byte_addr_mode, %if.then32)) #15
          to label %if.end34 [label %if.then32], !srcloc !272

if.then32:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  %dev = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 2
  %48 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @spansion_set_4byte_addr_mode.__UNIQUE_ID_ddebug242, ptr noundef %49, ptr noundef nonnull @.str.11, i32 noundef %ret.051) #15
  br label %if.end34

if.end34:                                         ; preds = %if.then32, %do.body, %if.end.if.end34_crit_edge
  %ret.052 = phi i32 [ %ret.051, %if.then32 ], [ 0, %if.end.if.end34_crit_edge ], [ %ret.051, %do.body ]
  ret i32 %ret.052
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spi_nor_default_setup(ptr noundef %nor, ptr nocapture noundef readonly %hwcaps) #0 align 64 {
entry:
  %op.i58.i = alloca %struct.spi_mem_op, align 8
  %op.i.i = alloca %struct.spi_mem_op, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %params1 = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 21
  %0 = ptrtoint ptr %params1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %params1, align 4
  %2 = ptrtoint ptr %hwcaps to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwcaps, align 4
  %hwcaps2 = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %hwcaps2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hwcaps2, align 4
  %and = and i32 %5, %3
  %spimem = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 3
  %6 = ptrtoint ptr %spimem to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %spimem, align 8
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %flags.i = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 17
  %8 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags.i, align 4
  %and2.i = and i32 %9, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool.not.i = icmp eq i32 %and2.i, 0
  %spec.select.v = select i1 %tobool.not.i, i32 -4727329, i32 -13148705
  %spec.select = and i32 %spec.select.v, %and
  %buswidth.i.i = getelementptr inbounds %struct.anon.71, ptr %op.i.i, i32 0, i32 1
  %dtr.i.i = getelementptr inbounds %struct.anon.71, ptr %op.i.i, i32 0, i32 2
  %opcode.i.i = getelementptr inbounds %struct.anon.71, ptr %op.i.i, i32 0, i32 3
  %addr.i.i = getelementptr inbounds %struct.spi_mem_op, ptr %op.i.i, i32 0, i32 1
  %buswidth3.i.i = getelementptr inbounds %struct.spi_mem_op, ptr %op.i.i, i32 0, i32 1, i32 1
  %dtr4.i.i = getelementptr inbounds %struct.spi_mem_op, ptr %op.i.i, i32 0, i32 1, i32 2
  %val.i.i = getelementptr inbounds %struct.spi_mem_op, ptr %op.i.i, i32 0, i32 1, i32 3
  %dummy.i.i = getelementptr inbounds %struct.spi_mem_op, ptr %op.i.i, i32 0, i32 2
  %buswidth9.i.i = getelementptr inbounds %struct.spi_mem_op, ptr %op.i.i, i32 0, i32 2, i32 1
  %dtr10.i.i = getelementptr inbounds %struct.spi_mem_op, ptr %op.i.i, i32 0, i32 2, i32 2
  %data.i.i = getelementptr inbounds %struct.spi_mem_op, ptr %op.i.i, i32 0, i32 3
  %dtr15.i.i = getelementptr inbounds %struct.spi_mem_op, ptr %op.i.i, i32 0, i32 3, i32 1
  %dir.i.i = getelementptr inbounds %struct.spi_mem_op, ptr %op.i.i, i32 0, i32 3, i32 2
  %nbytes19.i.i = getelementptr inbounds %struct.spi_mem_op, ptr %op.i.i, i32 0, i32 3, i32 3
  %buf.i.i = getelementptr inbounds %struct.spi_mem_op, ptr %op.i.i, i32 0, i32 3, i32 4
  %cmd_ext_type.i.i.i.i = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 18
  %dev.i.i.i.i = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 2
  %read_dummy.i.i = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 11
  %read_proto.i.i = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 13
  %opcode.i59.i = getelementptr inbounds %struct.anon.71, ptr %op.i58.i, i32 0, i32 3
  %addr.i61.i = getelementptr inbounds %struct.spi_mem_op, ptr %op.i58.i, i32 0, i32 1
  %dir.i62.i = getelementptr inbounds %struct.spi_mem_op, ptr %op.i58.i, i32 0, i32 3, i32 2
  %nbytes7.i.i = getelementptr inbounds %struct.spi_mem_op, ptr %op.i58.i, i32 0, i32 3, i32 3
  %buswidth.i.i.i = getelementptr inbounds %struct.anon.71, ptr %op.i58.i, i32 0, i32 1
  %buswidth3.i.i.i = getelementptr inbounds %struct.spi_mem_op, ptr %op.i58.i, i32 0, i32 1, i32 1
  %data.i.i.i = getelementptr inbounds %struct.spi_mem_op, ptr %op.i58.i, i32 0, i32 3
  %dtr.i.i.i = getelementptr inbounds %struct.anon.71, ptr %op.i58.i, i32 0, i32 2
  %dtr22.i.i.i = getelementptr inbounds %struct.spi_mem_op, ptr %op.i58.i, i32 0, i32 1, i32 2
  %dtr27.i.i.i = getelementptr inbounds %struct.spi_mem_op, ptr %op.i58.i, i32 0, i32 2, i32 2
  %dtr32.i.i.i = getelementptr inbounds %struct.spi_mem_op, ptr %op.i58.i, i32 0, i32 3, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %if.then
  %shared_mask.1 = phi i32 [ %spec.select, %if.then ], [ %shared_mask.2, %cleanup.i.for.body.i_crit_edge ]
  %cap.098.i = phi i32 [ 0, %if.then ], [ %inc.i, %cleanup.i.for.body.i_crit_edge ]
  %shl.i = shl nuw i32 1, %cap.098.i
  %and4.i = and i32 %shl.i, %shared_mask.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %for.body.i.cleanup.i_crit_edge, label %if.end7.i

for.body.i.cleanup.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.i

if.end7.i:                                        ; preds = %for.body.i
  %10 = zext i32 %shl.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.131)
  switch i32 %shl.i, label %if.end7.i.cleanup.i_crit_edge [
    i32 1, label %if.end7.i.spi_nor_hwcaps_read2cmd.exit.i_crit_edge
    i32 2, label %if.then.i.fold.split.i.i
    i32 4, label %if.then.i.fold.split3.i.i
    i32 8, label %if.then.i.fold.split4.i.i
    i32 16, label %if.then.i.fold.split5.i.i
    i32 32, label %if.then.i.fold.split6.i.i
    i32 64, label %if.then.i.fold.split7.i.i
    i32 128, label %if.then.i.fold.split8.i.i
    i32 256, label %if.then.i.fold.split9.i.i
    i32 512, label %if.then.i.fold.split10.i.i
    i32 1024, label %if.then.i.fold.split11.i.i
    i32 2048, label %if.then.i.fold.split12.i.i
    i32 4096, label %if.then.i.fold.split13.i.i
    i32 8192, label %if.then.i.fold.split14.i.i
    i32 16384, label %if.then.i.fold.split15.i.i
    i32 32768, label %if.then.i.fold.split16.i.i
    i32 65536, label %if.end7.i.spi_nor_hwcaps_pp2cmd.exit.i_crit_edge
    i32 131072, label %if.then.i.fold.split.i47.i
    i32 262144, label %if.then.i.fold.split3.i48.i
    i32 524288, label %if.then.i.fold.split4.i49.i
    i32 1048576, label %if.then.i.fold.split5.i50.i
    i32 2097152, label %if.then.i.fold.split6.i51.i
    i32 4194304, label %if.then.i.fold.split7.i52.i
    i32 8388608, label %if.then.i.fold.split8.i53.i
  ]

if.end7.i.spi_nor_hwcaps_pp2cmd.exit.i_crit_edge: ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %spi_nor_hwcaps_pp2cmd.exit.i

if.end7.i.spi_nor_hwcaps_read2cmd.exit.i_crit_edge: ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %spi_nor_hwcaps_read2cmd.exit.i

if.end7.i.cleanup.i_crit_edge:                    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.i

if.then.i.fold.split.i.i:                         ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %spi_nor_hwcaps_read2cmd.exit.i

if.then.i.fold.split3.i.i:                        ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %spi_nor_hwcaps_read2cmd.exit.i

if.then.i.fold.split4.i.i:                        ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %spi_nor_hwcaps_read2cmd.exit.i

if.then.i.fold.split5.i.i:                        ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %spi_nor_hwcaps_read2cmd.exit.i

if.then.i.fold.split6.i.i:                        ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %spi_nor_hwcaps_read2cmd.exit.i

if.then.i.fold.split7.i.i:                        ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %spi_nor_hwcaps_read2cmd.exit.i

if.then.i.fold.split8.i.i:                        ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %spi_nor_hwcaps_read2cmd.exit.i

if.then.i.fold.split9.i.i:                        ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %spi_nor_hwcaps_read2cmd.exit.i

if.then.i.fold.split10.i.i:                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %spi_nor_hwcaps_read2cmd.exit.i

if.then.i.fold.split11.i.i:                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %spi_nor_hwcaps_read2cmd.exit.i

if.then.i.fold.split12.i.i:                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %spi_nor_hwcaps_read2cmd.exit.i

if.then.i.fold.split13.i.i:                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %spi_nor_hwcaps_read2cmd.exit.i

if.then.i.fold.split14.i.i:                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %spi_nor_hwcaps_read2cmd.exit.i

if.then.i.fold.split15.i.i:                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %spi_nor_hwcaps_read2cmd.exit.i

if.then.i.fold.split16.i.i:                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %spi_nor_hwcaps_read2cmd.exit.i

spi_nor_hwcaps_read2cmd.exit.i:                   ; preds = %if.then.i.fold.split16.i.i, %if.then.i.fold.split15.i.i, %if.then.i.fold.split14.i.i, %if.then.i.fold.split13.i.i, %if.then.i.fold.split12.i.i, %if.then.i.fold.split11.i.i, %if.then.i.fold.split10.i.i, %if.then.i.fold.split9.i.i, %if.then.i.fold.split8.i.i, %if.then.i.fold.split7.i.i, %if.then.i.fold.split6.i.i, %if.then.i.fold.split5.i.i, %if.then.i.fold.split4.i.i, %if.then.i.fold.split3.i.i, %if.then.i.fold.split.i.i, %if.end7.i.spi_nor_hwcaps_read2cmd.exit.i_crit_edge
  %i.011.i.lcssa.i.i = phi i32 [ 0, %if.end7.i.spi_nor_hwcaps_read2cmd.exit.i_crit_edge ], [ 1, %if.then.i.fold.split.i.i ], [ 2, %if.then.i.fold.split3.i.i ], [ 3, %if.then.i.fold.split4.i.i ], [ 4, %if.then.i.fold.split5.i.i ], [ 5, %if.then.i.fold.split6.i.i ], [ 6, %if.then.i.fold.split7.i.i ], [ 7, %if.then.i.fold.split8.i.i ], [ 8, %if.then.i.fold.split9.i.i ], [ 9, %if.then.i.fold.split10.i.i ], [ 10, %if.then.i.fold.split11.i.i ], [ 11, %if.then.i.fold.split12.i.i ], [ 12, %if.then.i.fold.split13.i.i ], [ 13, %if.then.i.fold.split14.i.i ], [ 14, %if.then.i.fold.split15.i.i ], [ 15, %if.then.i.fold.split16.i.i ]
  %arrayidx4.i.i.i = getelementptr [2 x i32], ptr @spi_nor_hwcaps_read2cmd.hwcaps_read2cmd, i32 %i.011.i.lcssa.i.i, i32 1
  %11 = ptrtoint ptr %arrayidx4.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx4.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %12)
  %cmp9.i = icmp sgt i32 %12, -1
  br i1 %cmp9.i, label %land.lhs.true.i, label %spi_nor_hwcaps_read2cmd.exit.i.cleanup.i_crit_edge

spi_nor_hwcaps_read2cmd.exit.i.cleanup.i_crit_edge: ; preds = %spi_nor_hwcaps_read2cmd.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.i

land.lhs.true.i:                                  ; preds = %spi_nor_hwcaps_read2cmd.exit.i
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %op.i.i) #15
  %13 = call ptr @memset(ptr %op.i.i, i32 255, i32 48)
  %14 = ptrtoint ptr %op.i.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %op.i.i, align 8
  %15 = ptrtoint ptr %dtr.i.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 127, ptr %dtr.i.i, align 2
  %opcode1.i.i = getelementptr %struct.spi_nor_flash_parameter, ptr %1, i32 0, i32 6, i32 %12, i32 2
  %16 = ptrtoint ptr %opcode1.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %opcode1.i.i, align 2
  %conv.i.i = zext i8 %17 to i16
  %18 = ptrtoint ptr %opcode.i.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv.i.i, ptr %opcode.i.i, align 4
  %19 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 3, ptr %addr.i.i, align 8
  %20 = ptrtoint ptr %dtr4.i.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 127, ptr %dtr4.i.i, align 2
  %21 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 0, ptr %val.i.i, align 8
  %22 = ptrtoint ptr %dtr10.i.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 127, ptr %dtr10.i.i, align 2
  %23 = ptrtoint ptr %dtr15.i.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 127, ptr %dtr15.i.i, align 1
  %24 = ptrtoint ptr %dir.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %dir.i.i, align 8
  %25 = ptrtoint ptr %nbytes19.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 2, ptr %nbytes19.i.i, align 4
  %26 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %buf.i.i, align 8
  %proto.i.i = getelementptr %struct.spi_nor_flash_parameter, ptr %1, i32 0, i32 6, i32 %12, i32 3
  %27 = ptrtoint ptr %proto.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %proto.i.i, align 4
  %and.i.i.i.i = lshr i32 %28, 16
  %conv.i.i.i.i = trunc i32 %and.i.i.i.i to i8
  %29 = ptrtoint ptr %buswidth.i.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv.i.i.i.i, ptr %buswidth.i.i, align 1
  %and.i68.i.i.i = lshr i32 %28, 8
  %conv.i69.i.i.i = trunc i32 %and.i68.i.i.i to i8
  %30 = ptrtoint ptr %buswidth3.i.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv.i69.i.i.i, ptr %buswidth3.i.i, align 1
  %31 = ptrtoint ptr %buswidth9.i.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv.i69.i.i.i, ptr %buswidth9.i.i, align 1
  %conv.i72.i.i.i = trunc i32 %28 to i8
  %32 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv.i72.i.i.i, ptr %data.i.i, align 4
  %and.i73.i.i.i = and i32 %28, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i73.i.i.i)
  %tobool.i.not.i.i.i = icmp eq i32 %and.i73.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %land.lhs.true.i.spi_nor_spimem_setup_op.exit.i.i_crit_edge, label %if.then19.i.i.i

land.lhs.true.i.spi_nor_spimem_setup_op.exit.i.i_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %spi_nor_spimem_setup_op.exit.i.i

if.then19.i.i.i:                                  ; preds = %land.lhs.true.i
  %33 = ptrtoint ptr %dtr.i.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 -1, ptr %dtr.i.i, align 2
  %34 = ptrtoint ptr %dtr4.i.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 -1, ptr %dtr4.i.i, align 2
  %35 = ptrtoint ptr %dtr10.i.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 -1, ptr %dtr10.i.i, align 2
  %36 = ptrtoint ptr %dtr15.i.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 -1, ptr %dtr15.i.i, align 1
  %37 = ptrtoint ptr %dummy.i.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 2, ptr %dummy.i.i, align 8
  %38 = ptrtoint ptr %cmd_ext_type.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %cmd_ext_type.i.i.i.i, align 8
  %40 = zext i32 %39 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.132)
  switch i32 %39, label %do.end.i.i.i.i [
    i32 2, label %sw.bb.i.i.i.i
    i32 1, label %if.then19.i.i.i.spi_nor_get_cmd_ext.exit.i.i.i_crit_edge
  ]

if.then19.i.i.i.spi_nor_get_cmd_ext.exit.i.i.i_crit_edge: ; preds = %if.then19.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %spi_nor_get_cmd_ext.exit.i.i.i

sw.bb.i.i.i.i:                                    ; preds = %if.then19.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %neg.i.i.i.i = xor i8 %17, -1
  br label %spi_nor_get_cmd_ext.exit.i.i.i

do.end.i.i.i.i:                                   ; preds = %if.then19.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %41 = ptrtoint ptr %dev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev.i.i.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.32) #18
  br label %spi_nor_get_cmd_ext.exit.i.i.i

spi_nor_get_cmd_ext.exit.i.i.i:                   ; preds = %do.end.i.i.i.i, %sw.bb.i.i.i.i, %if.then19.i.i.i.spi_nor_get_cmd_ext.exit.i.i.i_crit_edge
  %retval.0.i.i.i.i = phi i8 [ 0, %do.end.i.i.i.i ], [ %neg.i.i.i.i, %sw.bb.i.i.i.i ], [ %17, %if.then19.i.i.i.spi_nor_get_cmd_ext.exit.i.i.i_crit_edge ]
  %43 = ptrtoint ptr %opcode.i.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %opcode.i.i, align 4
  %shl.i.i.i = shl i16 %44, 8
  %conv42.i.i.i = zext i8 %retval.0.i.i.i.i to i16
  %or.i.i.i = or i16 %shl.i.i.i, %conv42.i.i.i
  store i16 %or.i.i.i, ptr %opcode.i.i, align 4
  %45 = ptrtoint ptr %op.i.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 2, ptr %op.i.i, align 8
  br label %spi_nor_spimem_setup_op.exit.i.i

spi_nor_spimem_setup_op.exit.i.i:                 ; preds = %spi_nor_get_cmd_ext.exit.i.i.i, %land.lhs.true.i.spi_nor_spimem_setup_op.exit.i.i_crit_edge
  %46 = ptrtoint ptr %read_dummy.i.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %read_dummy.i.i, align 1
  %conv20.i.i = zext i8 %47 to i16
  %48 = ptrtoint ptr %buswidth9.i.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %buswidth9.i.i, align 1
  %conv23.i.i = zext i8 %49 to i16
  %mul.i.i = mul nuw i16 %conv23.i.i, %conv20.i.i
  %div37.i.i = lshr i16 %mul.i.i, 3
  %conv24.i.i = trunc i16 %div37.i.i to i8
  %50 = ptrtoint ptr %dummy.i.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %conv24.i.i, ptr %dummy.i.i, align 8
  %51 = ptrtoint ptr %read_proto.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %read_proto.i.i, align 4
  %and.i.i.i = and i32 %52, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %spi_nor_spimem_setup_op.exit.i.i.if.end.i.i_crit_edge, label %if.then.i.i

spi_nor_spimem_setup_op.exit.i.i.if.end.i.i_crit_edge: ; preds = %spi_nor_spimem_setup_op.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %spi_nor_spimem_setup_op.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %mul30.i.i = shl i8 %conv24.i.i, 1
  %53 = ptrtoint ptr %dummy.i.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %mul30.i.i, ptr %dummy.i.i, align 8
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %spi_nor_spimem_setup_op.exit.i.i.if.end.i.i_crit_edge
  %54 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 4, ptr %addr.i.i, align 8
  %55 = ptrtoint ptr %spimem to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %spimem, align 8
  %call.i.i.i = call zeroext i1 @spi_mem_supports_op(ptr noundef %56, ptr noundef nonnull %op.i.i) #15
  br i1 %call.i.i.i, label %if.end.i.i.spi_nor_spimem_check_readop.exit.i_crit_edge, label %if.then.i39.i.i

if.end.i.i.spi_nor_spimem_check_readop.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %spi_nor_spimem_check_readop.exit.i

if.then.i39.i.i:                                  ; preds = %if.end.i.i
  %57 = ptrtoint ptr %params1 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %params1, align 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %58, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 16777216, i64 %60)
  %cmp.i.i.i = icmp ugt i64 %60, 16777216
  br i1 %cmp.i.i.i, label %if.then.i39.i.i.if.then12.i_crit_edge, label %if.end.i40.i.i

if.then.i39.i.i.if.then12.i_crit_edge:            ; preds = %if.then.i39.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then12.i

if.end.i40.i.i:                                   ; preds = %if.then.i39.i.i
  %61 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 3, ptr %addr.i.i, align 8
  %62 = ptrtoint ptr %spimem to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %spimem, align 8
  %call5.i.i.i = call zeroext i1 @spi_mem_supports_op(ptr noundef %63, ptr noundef nonnull %op.i.i) #15
  br i1 %call5.i.i.i, label %if.end.i40.i.i.spi_nor_spimem_check_readop.exit.i_crit_edge, label %if.end.i40.i.i.if.then12.i_crit_edge

if.end.i40.i.i.if.then12.i_crit_edge:             ; preds = %if.end.i40.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then12.i

if.end.i40.i.i.spi_nor_spimem_check_readop.exit.i_crit_edge: ; preds = %if.end.i40.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %spi_nor_spimem_check_readop.exit.i

spi_nor_spimem_check_readop.exit.i:               ; preds = %if.end.i40.i.i.spi_nor_spimem_check_readop.exit.i_crit_edge, %if.end.i.i.spi_nor_spimem_check_readop.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %op.i.i) #15
  br label %cleanup.i

if.then12.i:                                      ; preds = %if.end.i40.i.i.if.then12.i_crit_edge, %if.then.i39.i.i.if.then12.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %op.i.i) #15
  %neg.i = xor i32 %shl.i, -1
  %and14.i = and i32 %shared_mask.1, %neg.i
  br label %cleanup.i

if.then.i.fold.split.i47.i:                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %spi_nor_hwcaps_pp2cmd.exit.i

if.then.i.fold.split3.i48.i:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %spi_nor_hwcaps_pp2cmd.exit.i

if.then.i.fold.split4.i49.i:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %spi_nor_hwcaps_pp2cmd.exit.i

if.then.i.fold.split5.i50.i:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %spi_nor_hwcaps_pp2cmd.exit.i

if.then.i.fold.split6.i51.i:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %spi_nor_hwcaps_pp2cmd.exit.i

if.then.i.fold.split7.i52.i:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %spi_nor_hwcaps_pp2cmd.exit.i

if.then.i.fold.split8.i53.i:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %spi_nor_hwcaps_pp2cmd.exit.i

spi_nor_hwcaps_pp2cmd.exit.i:                     ; preds = %if.then.i.fold.split8.i53.i, %if.then.i.fold.split7.i52.i, %if.then.i.fold.split6.i51.i, %if.then.i.fold.split5.i50.i, %if.then.i.fold.split4.i49.i, %if.then.i.fold.split3.i48.i, %if.then.i.fold.split.i47.i, %if.end7.i.spi_nor_hwcaps_pp2cmd.exit.i_crit_edge
  %i.011.i.lcssa.i54.i = phi i32 [ 1, %if.then.i.fold.split.i47.i ], [ 2, %if.then.i.fold.split3.i48.i ], [ 3, %if.then.i.fold.split4.i49.i ], [ 4, %if.then.i.fold.split5.i50.i ], [ 5, %if.then.i.fold.split6.i51.i ], [ 6, %if.then.i.fold.split7.i52.i ], [ 7, %if.then.i.fold.split8.i53.i ], [ 0, %if.end7.i.spi_nor_hwcaps_pp2cmd.exit.i_crit_edge ]
  %arrayidx4.i.i55.i = getelementptr [2 x i32], ptr @spi_nor_hwcaps_pp2cmd.hwcaps_pp2cmd, i32 %i.011.i.lcssa.i54.i, i32 1
  %64 = ptrtoint ptr %arrayidx4.i.i55.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx4.i.i55.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %cmp18.i = icmp slt i32 %65, 0
  br i1 %cmp18.i, label %spi_nor_hwcaps_pp2cmd.exit.i.cleanup.i_crit_edge, label %if.end20.i

spi_nor_hwcaps_pp2cmd.exit.i.cleanup.i_crit_edge: ; preds = %spi_nor_hwcaps_pp2cmd.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.i

if.end20.i:                                       ; preds = %spi_nor_hwcaps_pp2cmd.exit.i
  %arrayidx21.i = getelementptr %struct.spi_nor_flash_parameter, ptr %1, i32 0, i32 7, i32 %65
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %op.i58.i) #15
  %66 = call ptr @memset(ptr %op.i58.i, i32 0, i32 48)
  %67 = ptrtoint ptr %op.i58.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 1, ptr %op.i58.i, align 8
  %68 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx21.i, align 4
  %conv.i60.i = zext i8 %69 to i16
  %70 = ptrtoint ptr %opcode.i59.i to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 %conv.i60.i, ptr %opcode.i59.i, align 4
  %71 = ptrtoint ptr %dir.i62.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 2, ptr %dir.i62.i, align 8
  %72 = ptrtoint ptr %nbytes7.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 2, ptr %nbytes7.i.i, align 4
  %proto.i63.i = getelementptr %struct.spi_nor_flash_parameter, ptr %1, i32 0, i32 7, i32 %65, i32 1
  %73 = ptrtoint ptr %proto.i63.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %proto.i63.i, align 4
  %and.i.i.i64.i = lshr i32 %74, 16
  %conv.i.i.i65.i = trunc i32 %and.i.i.i64.i to i8
  %75 = ptrtoint ptr %buswidth.i.i.i to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %conv.i.i.i65.i, ptr %buswidth.i.i.i, align 1
  %and.i68.i.i66.i = lshr i32 %74, 8
  %conv.i69.i.i67.i = trunc i32 %and.i68.i.i66.i to i8
  %76 = ptrtoint ptr %buswidth3.i.i.i to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %conv.i69.i.i67.i, ptr %buswidth3.i.i.i, align 1
  %conv.i72.i.i68.i = trunc i32 %74 to i8
  %77 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %conv.i72.i.i68.i, ptr %data.i.i.i, align 4
  %and.i73.i.i69.i = and i32 %74, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i73.i.i69.i)
  %tobool.i.not.i.i70.i = icmp eq i32 %and.i73.i.i69.i, 0
  br i1 %tobool.i.not.i.i70.i, label %if.end20.i.spi_nor_spimem_setup_op.exit.i84.i_crit_edge, label %if.then19.i.i72.i

if.end20.i.spi_nor_spimem_setup_op.exit.i84.i_crit_edge: ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %spi_nor_spimem_setup_op.exit.i84.i

if.then19.i.i72.i:                                ; preds = %if.end20.i
  %78 = ptrtoint ptr %dtr.i.i.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %bf.load.i.i.i = load i8, ptr %dtr.i.i.i, align 2
  %bf.set.i.i.i = or i8 %bf.load.i.i.i, -128
  store i8 %bf.set.i.i.i, ptr %dtr.i.i.i, align 2
  %79 = ptrtoint ptr %dtr22.i.i.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %bf.load23.i.i.i = load i8, ptr %dtr22.i.i.i, align 2
  %bf.set25.i.i.i = or i8 %bf.load23.i.i.i, -128
  store i8 %bf.set25.i.i.i, ptr %dtr22.i.i.i, align 2
  %80 = ptrtoint ptr %dtr27.i.i.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %bf.load28.i.i.i = load i8, ptr %dtr27.i.i.i, align 2
  %bf.set30.i.i.i = or i8 %bf.load28.i.i.i, -128
  store i8 %bf.set30.i.i.i, ptr %dtr27.i.i.i, align 2
  %81 = ptrtoint ptr %dtr32.i.i.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %bf.load33.i.i.i = load i8, ptr %dtr32.i.i.i, align 1
  %bf.set35.i.i.i = or i8 %bf.load33.i.i.i, -128
  store i8 %bf.set35.i.i.i, ptr %dtr32.i.i.i, align 1
  %82 = ptrtoint ptr %cmd_ext_type.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %cmd_ext_type.i.i.i.i, align 8
  %84 = zext i32 %83 to i64
  call void @__sanitizer_cov_trace_switch(i64 %84, ptr @__sancov_gen_cov_switch_values.133)
  switch i32 %83, label %do.end.i.i.i76.i [
    i32 2, label %sw.bb.i.i.i74.i
    i32 1, label %if.then19.i.i72.i.spi_nor_get_cmd_ext.exit.i.i81.i_crit_edge
  ]

if.then19.i.i72.i.spi_nor_get_cmd_ext.exit.i.i81.i_crit_edge: ; preds = %if.then19.i.i72.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %spi_nor_get_cmd_ext.exit.i.i81.i

sw.bb.i.i.i74.i:                                  ; preds = %if.then19.i.i72.i
  call void @__sanitizer_cov_trace_pc() #17
  %neg.i.i.i73.i = xor i8 %69, -1
  br label %spi_nor_get_cmd_ext.exit.i.i81.i

do.end.i.i.i76.i:                                 ; preds = %if.then19.i.i72.i
  call void @__sanitizer_cov_trace_pc() #17
  %85 = ptrtoint ptr %dev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %dev.i.i.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %86, ptr noundef nonnull @.str.32) #18
  br label %spi_nor_get_cmd_ext.exit.i.i81.i

spi_nor_get_cmd_ext.exit.i.i81.i:                 ; preds = %do.end.i.i.i76.i, %sw.bb.i.i.i74.i, %if.then19.i.i72.i.spi_nor_get_cmd_ext.exit.i.i81.i_crit_edge
  %retval.0.i.i.i77.i = phi i8 [ 0, %do.end.i.i.i76.i ], [ %neg.i.i.i73.i, %sw.bb.i.i.i74.i ], [ %69, %if.then19.i.i72.i.spi_nor_get_cmd_ext.exit.i.i81.i_crit_edge ]
  %87 = ptrtoint ptr %opcode.i59.i to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %opcode.i59.i, align 4
  %shl.i.i78.i = shl i16 %88, 8
  %conv42.i.i79.i = zext i8 %retval.0.i.i.i77.i to i16
  %or.i.i80.i = or i16 %shl.i.i78.i, %conv42.i.i79.i
  store i16 %or.i.i80.i, ptr %opcode.i59.i, align 4
  %89 = ptrtoint ptr %op.i58.i to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 2, ptr %op.i58.i, align 8
  br label %spi_nor_spimem_setup_op.exit.i84.i

spi_nor_spimem_setup_op.exit.i84.i:               ; preds = %spi_nor_get_cmd_ext.exit.i.i81.i, %if.end20.i.spi_nor_spimem_setup_op.exit.i84.i_crit_edge
  %90 = ptrtoint ptr %addr.i61.i to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 4, ptr %addr.i61.i, align 8
  %91 = ptrtoint ptr %spimem to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %spimem, align 8
  %call.i.i83.i = call zeroext i1 @spi_mem_supports_op(ptr noundef %92, ptr noundef nonnull %op.i58.i) #15
  br i1 %call.i.i83.i, label %spi_nor_spimem_setup_op.exit.i84.i.spi_nor_spimem_check_pp.exit.i_crit_edge, label %if.then.i11.i.i

spi_nor_spimem_setup_op.exit.i84.i.spi_nor_spimem_check_pp.exit.i_crit_edge: ; preds = %spi_nor_spimem_setup_op.exit.i84.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %spi_nor_spimem_check_pp.exit.i

if.then.i11.i.i:                                  ; preds = %spi_nor_spimem_setup_op.exit.i84.i
  %93 = ptrtoint ptr %params1 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %params1, align 4
  %95 = ptrtoint ptr %94 to i32
  call void @__asan_load8_noabort(i32 %95)
  %96 = load i64, ptr %94, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 16777216, i64 %96)
  %cmp.i.i86.i = icmp ugt i64 %96, 16777216
  br i1 %cmp.i.i86.i, label %if.then.i11.i.i.if.then24.i_crit_edge, label %if.end.i12.i.i

if.then.i11.i.i.if.then24.i_crit_edge:            ; preds = %if.then.i11.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then24.i

if.end.i12.i.i:                                   ; preds = %if.then.i11.i.i
  %97 = ptrtoint ptr %addr.i61.i to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 3, ptr %addr.i61.i, align 8
  %98 = ptrtoint ptr %spimem to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %spimem, align 8
  %call5.i.i87.i = call zeroext i1 @spi_mem_supports_op(ptr noundef %99, ptr noundef nonnull %op.i58.i) #15
  br i1 %call5.i.i87.i, label %if.end.i12.i.i.spi_nor_spimem_check_pp.exit.i_crit_edge, label %if.end.i12.i.i.if.then24.i_crit_edge

if.end.i12.i.i.if.then24.i_crit_edge:             ; preds = %if.end.i12.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then24.i

if.end.i12.i.i.spi_nor_spimem_check_pp.exit.i_crit_edge: ; preds = %if.end.i12.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %spi_nor_spimem_check_pp.exit.i

spi_nor_spimem_check_pp.exit.i:                   ; preds = %if.end.i12.i.i.spi_nor_spimem_check_pp.exit.i_crit_edge, %spi_nor_spimem_setup_op.exit.i84.i.spi_nor_spimem_check_pp.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %op.i58.i) #15
  br label %cleanup.i

if.then24.i:                                      ; preds = %if.end.i12.i.i.if.then24.i_crit_edge, %if.then.i11.i.i.if.then24.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %op.i58.i) #15
  %neg26.i = xor i32 %shl.i, -1
  %and27.i = and i32 %shared_mask.1, %neg26.i
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.then24.i, %spi_nor_spimem_check_pp.exit.i, %spi_nor_hwcaps_pp2cmd.exit.i.cleanup.i_crit_edge, %if.then12.i, %spi_nor_spimem_check_readop.exit.i, %spi_nor_hwcaps_read2cmd.exit.i.cleanup.i_crit_edge, %if.end7.i.cleanup.i_crit_edge, %for.body.i.cleanup.i_crit_edge
  %shared_mask.2 = phi i32 [ %shared_mask.1, %for.body.i.cleanup.i_crit_edge ], [ %shared_mask.1, %if.end7.i.cleanup.i_crit_edge ], [ %shared_mask.1, %spi_nor_hwcaps_pp2cmd.exit.i.cleanup.i_crit_edge ], [ %shared_mask.1, %spi_nor_spimem_check_pp.exit.i ], [ %and27.i, %if.then24.i ], [ %shared_mask.1, %spi_nor_spimem_check_readop.exit.i ], [ %and14.i, %if.then12.i ], [ %shared_mask.1, %spi_nor_hwcaps_read2cmd.exit.i.cleanup.i_crit_edge ]
  %inc.i = add nuw nsw i32 %cap.098.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %cleanup.i.if.end13_crit_edge, label %cleanup.i.for.body.i_crit_edge

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

cleanup.i.if.end13_crit_edge:                     ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end13

if.else:                                          ; preds = %entry
  %and4 = and i32 %and, 13148704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.else.if.end13_crit_edge, label %do.body

if.else.if.end13_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end13

do.body:                                          ; preds = %if.else
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @spi_nor_default_setup.__UNIQUE_ID_ddebug267, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@spi_nor_default_setup, %if.then10)) #15
          to label %do.end [label %if.then10], !srcloc !272

if.then10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  %dev = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 2
  %100 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @spi_nor_default_setup.__UNIQUE_ID_ddebug267, ptr noundef %101, ptr noundef nonnull @.str.83) #15
  br label %do.end

do.end:                                           ; preds = %if.then10, %do.body
  %and11 = and i32 %and, -13148705
  br label %if.end13

if.end13:                                         ; preds = %do.end, %if.else.if.end13_crit_edge, %cleanup.i.if.end13_crit_edge
  %shared_mask.3 = phi i32 [ %and, %if.else.if.end13_crit_edge ], [ %and11, %do.end ], [ %shared_mask.2, %cleanup.i.if.end13_crit_edge ]
  %and.i104 = and i32 %shared_mask.3, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i104)
  %tobool.not.i.i = icmp eq i32 %and.i104, 0
  br i1 %tobool.not.i.i, label %if.end13.do.body17_crit_edge, label %if.end.i106

if.end13.do.body17_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body17

if.end.i106:                                      ; preds = %if.end13
  %102 = call i32 @llvm.ctlz.i32(i32 %and.i104, i1 true) #15, !range !273
  %sub.i.op.i = xor i32 %102, 31
  %shl.i105 = shl nuw i32 1, %sub.i.op.i
  %103 = zext i32 %shl.i105 to i64
  call void @__sanitizer_cov_trace_switch(i64 %103, ptr @__sancov_gen_cov_switch_values.134)
  switch i32 %shl.i105, label %if.end.i106.do.body17_crit_edge [
    i32 1, label %if.end.i106.spi_nor_hwcaps_read2cmd.exit.i124_crit_edge
    i32 2, label %if.then.i.fold.split.i.i107
    i32 4, label %if.then.i.fold.split3.i.i108
    i32 8, label %if.then.i.fold.split4.i.i109
    i32 16, label %if.then.i.fold.split5.i.i110
    i32 32, label %if.then.i.fold.split6.i.i111
    i32 64, label %if.then.i.fold.split7.i.i112
    i32 128, label %if.then.i.fold.split8.i.i113
    i32 256, label %if.then.i.fold.split9.i.i114
    i32 512, label %if.then.i.fold.split10.i.i115
    i32 1024, label %if.then.i.fold.split11.i.i116
    i32 2048, label %if.then.i.fold.split12.i.i117
    i32 4096, label %if.then.i.fold.split13.i.i118
    i32 8192, label %if.then.i.fold.split14.i.i119
    i32 16384, label %if.then.i.fold.split15.i.i120
    i32 32768, label %if.then.i.fold.split16.i.i121
  ]

if.end.i106.spi_nor_hwcaps_read2cmd.exit.i124_crit_edge: ; preds = %if.end.i106
  call void @__sanitizer_cov_trace_pc() #17
  br label %spi_nor_hwcaps_read2cmd.exit.i124

if.end.i106.do.body17_crit_edge:                  ; preds = %if.end.i106
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body17

if.then.i.fold.split.i.i107:                      ; preds = %if.end.i106
  call void @__sanitizer_cov_trace_pc() #17
  br label %spi_nor_hwcaps_read2cmd.exit.i124

if.then.i.fold.split3.i.i108:                     ; preds = %if.end.i106
  call void @__sanitizer_cov_trace_pc() #17
  br label %spi_nor_hwcaps_read2cmd.exit.i124

if.then.i.fold.split4.i.i109:                     ; preds = %if.end.i106
  call void @__sanitizer_cov_trace_pc() #17
  br label %spi_nor_hwcaps_read2cmd.exit.i124

if.then.i.fold.split5.i.i110:                     ; preds = %if.end.i106
  call void @__sanitizer_cov_trace_pc() #17
  br label %spi_nor_hwcaps_read2cmd.exit.i124

if.then.i.fold.split6.i.i111:                     ; preds = %if.end.i106
  call void @__sanitizer_cov_trace_pc() #17
  br label %spi_nor_hwcaps_read2cmd.exit.i124

if.then.i.fold.split7.i.i112:                     ; preds = %if.end.i106
  call void @__sanitizer_cov_trace_pc() #17
  br label %spi_nor_hwcaps_read2cmd.exit.i124

if.then.i.fold.split8.i.i113:                     ; preds = %if.end.i106
  call void @__sanitizer_cov_trace_pc() #17
  br label %spi_nor_hwcaps_read2cmd.exit.i124

if.then.i.fold.split9.i.i114:                     ; preds = %if.end.i106
  call void @__sanitizer_cov_trace_pc() #17
  br label %spi_nor_hwcaps_read2cmd.exit.i124

if.then.i.fold.split10.i.i115:                    ; preds = %if.end.i106
  call void @__sanitizer_cov_trace_pc() #17
  br label %spi_nor_hwcaps_read2cmd.exit.i124

if.then.i.fold.split11.i.i116:                    ; preds = %if.end.i106
  call void @__sanitizer_cov_trace_pc() #17
  br label %spi_nor_hwcaps_read2cmd.exit.i124

if.then.i.fold.split12.i.i117:                    ; preds = %if.end.i106
  call void @__sanitizer_cov_trace_pc() #17
  br label %spi_nor_hwcaps_read2cmd.exit.i124

if.then.i.fold.split13.i.i118:                    ; preds = %if.end.i106
  call void @__sanitizer_cov_trace_pc() #17
  br label %spi_nor_hwcaps_read2cmd.exit.i124

if.then.i.fold.split14.i.i119:                    ; preds = %if.end.i106
  call void @__sanitizer_cov_trace_pc() #17
  br label %spi_nor_hwcaps_read2cmd.exit.i124

if.then.i.fold.split15.i.i120:                    ; preds = %if.end.i106
  call void @__sanitizer_cov_trace_pc() #17
  br label %spi_nor_hwcaps_read2cmd.exit.i124

if.then.i.fold.split16.i.i121:                    ; preds = %if.end.i106
  call void @__sanitizer_cov_trace_pc() #17
  br label %spi_nor_hwcaps_read2cmd.exit.i124

spi_nor_hwcaps_read2cmd.exit.i124:                ; preds = %if.then.i.fold.split16.i.i121, %if.then.i.fold.split15.i.i120, %if.then.i.fold.split14.i.i119, %if.then.i.fold.split13.i.i118, %if.then.i.fold.split12.i.i117, %if.then.i.fold.split11.i.i116, %if.then.i.fold.split10.i.i115, %if.then.i.fold.split9.i.i114, %if.then.i.fold.split8.i.i113, %if.then.i.fold.split7.i.i112, %if.then.i.fold.split6.i.i111, %if.then.i.fold.split5.i.i110, %if.then.i.fold.split4.i.i109, %if.then.i.fold.split3.i.i108, %if.then.i.fold.split.i.i107, %if.end.i106.spi_nor_hwcaps_read2cmd.exit.i124_crit_edge
  %i.011.i.lcssa.i.i122 = phi i32 [ 0, %if.end.i106.spi_nor_hwcaps_read2cmd.exit.i124_crit_edge ], [ 1, %if.then.i.fold.split.i.i107 ], [ 2, %if.then.i.fold.split3.i.i108 ], [ 3, %if.then.i.fold.split4.i.i109 ], [ 4, %if.then.i.fold.split5.i.i110 ], [ 5, %if.then.i.fold.split6.i.i111 ], [ 6, %if.then.i.fold.split7.i.i112 ], [ 7, %if.then.i.fold.split8.i.i113 ], [ 8, %if.then.i.fold.split9.i.i114 ], [ 9, %if.then.i.fold.split10.i.i115 ], [ 10, %if.then.i.fold.split11.i.i116 ], [ 11, %if.then.i.fold.split12.i.i117 ], [ 12, %if.then.i.fold.split13.i.i118 ], [ 13, %if.then.i.fold.split14.i.i119 ], [ 14, %if.then.i.fold.split15.i.i120 ], [ 15, %if.then.i.fold.split16.i.i121 ]
  %arrayidx4.i.i.i123 = getelementptr [2 x i32], ptr @spi_nor_hwcaps_read2cmd.hwcaps_read2cmd, i32 %i.011.i.lcssa.i.i122, i32 1
  %104 = ptrtoint ptr %arrayidx4.i.i.i123 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %arrayidx4.i.i.i123, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %105)
  %cmp2.i = icmp slt i32 %105, 0
  br i1 %cmp2.i, label %spi_nor_hwcaps_read2cmd.exit.i124.do.body17_crit_edge, label %if.end34

spi_nor_hwcaps_read2cmd.exit.i124.do.body17_crit_edge: ; preds = %spi_nor_hwcaps_read2cmd.exit.i124
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body17

do.body17:                                        ; preds = %spi_nor_hwcaps_read2cmd.exit.i124.do.body17_crit_edge, %if.end.i106.do.body17_crit_edge, %if.end13.do.body17_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @spi_nor_default_setup.__UNIQUE_ID_ddebug268, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@spi_nor_default_setup, %if.then29)) #15
          to label %cleanup [label %if.then29], !srcloc !272

if.then29:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #17
  %dev30 = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 2
  %106 = ptrtoint ptr %dev30 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %dev30, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @spi_nor_default_setup.__UNIQUE_ID_ddebug268, ptr noundef %107, ptr noundef nonnull @.str.84) #15
  br label %cleanup

if.end34:                                         ; preds = %spi_nor_hwcaps_read2cmd.exit.i124
  %108 = ptrtoint ptr %params1 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %params1, align 4
  %arrayidx.i = getelementptr %struct.spi_nor_flash_parameter, ptr %109, i32 0, i32 6, i32 %105
  %opcode.i = getelementptr %struct.spi_nor_flash_parameter, ptr %109, i32 0, i32 6, i32 %105, i32 2
  %110 = ptrtoint ptr %opcode.i to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %opcode.i, align 2
  %read_opcode.i = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 10
  %112 = ptrtoint ptr %read_opcode.i to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 %111, ptr %read_opcode.i, align 2
  %proto.i = getelementptr %struct.spi_nor_flash_parameter, ptr %109, i32 0, i32 6, i32 %105, i32 3
  %113 = ptrtoint ptr %proto.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %proto.i, align 4
  %read_proto.i = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 13
  %115 = ptrtoint ptr %read_proto.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %114, ptr %read_proto.i, align 4
  %116 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %arrayidx.i, align 4
  %num_wait_states.i = getelementptr %struct.spi_nor_flash_parameter, ptr %109, i32 0, i32 6, i32 %105, i32 1
  %118 = ptrtoint ptr %num_wait_states.i to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %num_wait_states.i, align 1
  %add.i = add i8 %119, %117
  %read_dummy.i = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 11
  %120 = ptrtoint ptr %read_dummy.i to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 %add.i, ptr %read_dummy.i, align 1
  %and.i127 = and i32 %shared_mask.3, 16711680
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i127)
  %tobool.not.i.i128 = icmp eq i32 %and.i127, 0
  br i1 %tobool.not.i.i128, label %if.end34.do.body38_crit_edge, label %if.end.i131

if.end34.do.body38_crit_edge:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body38

if.end.i131:                                      ; preds = %if.end34
  %121 = call i32 @llvm.ctlz.i32(i32 %and.i127, i1 true) #15, !range !273
  %sub.i.op.i129 = xor i32 %121, 31
  %shl.i130 = shl nuw i32 1, %sub.i.op.i129
  %122 = zext i32 %shl.i130 to i64
  call void @__sanitizer_cov_trace_switch(i64 %122, ptr @__sancov_gen_cov_switch_values.135)
  switch i32 %shl.i130, label %if.end.i131.do.body38_crit_edge [
    i32 65536, label %if.end.i131.spi_nor_hwcaps_pp2cmd.exit.i142_crit_edge
    i32 131072, label %if.then.i.fold.split.i.i132
    i32 262144, label %if.then.i.fold.split3.i.i133
    i32 524288, label %if.then.i.fold.split4.i.i134
    i32 1048576, label %if.then.i.fold.split5.i.i135
    i32 2097152, label %if.then.i.fold.split6.i.i136
    i32 4194304, label %if.then.i.fold.split7.i.i137
    i32 8388608, label %if.then.i.fold.split8.i.i138
  ]

if.end.i131.spi_nor_hwcaps_pp2cmd.exit.i142_crit_edge: ; preds = %if.end.i131
  call void @__sanitizer_cov_trace_pc() #17
  br label %spi_nor_hwcaps_pp2cmd.exit.i142

if.end.i131.do.body38_crit_edge:                  ; preds = %if.end.i131
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body38

if.then.i.fold.split.i.i132:                      ; preds = %if.end.i131
  call void @__sanitizer_cov_trace_pc() #17
  br label %spi_nor_hwcaps_pp2cmd.exit.i142

if.then.i.fold.split3.i.i133:                     ; preds = %if.end.i131
  call void @__sanitizer_cov_trace_pc() #17
  br label %spi_nor_hwcaps_pp2cmd.exit.i142

if.then.i.fold.split4.i.i134:                     ; preds = %if.end.i131
  call void @__sanitizer_cov_trace_pc() #17
  br label %spi_nor_hwcaps_pp2cmd.exit.i142

if.then.i.fold.split5.i.i135:                     ; preds = %if.end.i131
  call void @__sanitizer_cov_trace_pc() #17
  br label %spi_nor_hwcaps_pp2cmd.exit.i142

if.then.i.fold.split6.i.i136:                     ; preds = %if.end.i131
  call void @__sanitizer_cov_trace_pc() #17
  br label %spi_nor_hwcaps_pp2cmd.exit.i142

if.then.i.fold.split7.i.i137:                     ; preds = %if.end.i131
  call void @__sanitizer_cov_trace_pc() #17
  br label %spi_nor_hwcaps_pp2cmd.exit.i142

if.then.i.fold.split8.i.i138:                     ; preds = %if.end.i131
  call void @__sanitizer_cov_trace_pc() #17
  br label %spi_nor_hwcaps_pp2cmd.exit.i142

spi_nor_hwcaps_pp2cmd.exit.i142:                  ; preds = %if.then.i.fold.split8.i.i138, %if.then.i.fold.split7.i.i137, %if.then.i.fold.split6.i.i136, %if.then.i.fold.split5.i.i135, %if.then.i.fold.split4.i.i134, %if.then.i.fold.split3.i.i133, %if.then.i.fold.split.i.i132, %if.end.i131.spi_nor_hwcaps_pp2cmd.exit.i142_crit_edge
  %i.011.i.lcssa.i.i139 = phi i32 [ 0, %if.end.i131.spi_nor_hwcaps_pp2cmd.exit.i142_crit_edge ], [ 1, %if.then.i.fold.split.i.i132 ], [ 2, %if.then.i.fold.split3.i.i133 ], [ 3, %if.then.i.fold.split4.i.i134 ], [ 4, %if.then.i.fold.split5.i.i135 ], [ 5, %if.then.i.fold.split6.i.i136 ], [ 6, %if.then.i.fold.split7.i.i137 ], [ 7, %if.then.i.fold.split8.i.i138 ]
  %arrayidx4.i.i.i140 = getelementptr [2 x i32], ptr @spi_nor_hwcaps_pp2cmd.hwcaps_pp2cmd, i32 %i.011.i.lcssa.i.i139, i32 1
  %123 = ptrtoint ptr %arrayidx4.i.i.i140 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %arrayidx4.i.i.i140, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %124)
  %cmp2.i141 = icmp slt i32 %124, 0
  br i1 %cmp2.i141, label %spi_nor_hwcaps_pp2cmd.exit.i142.do.body38_crit_edge, label %if.end55

spi_nor_hwcaps_pp2cmd.exit.i142.do.body38_crit_edge: ; preds = %spi_nor_hwcaps_pp2cmd.exit.i142
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body38

do.body38:                                        ; preds = %spi_nor_hwcaps_pp2cmd.exit.i142.do.body38_crit_edge, %if.end.i131.do.body38_crit_edge, %if.end34.do.body38_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @spi_nor_default_setup.__UNIQUE_ID_ddebug269, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@spi_nor_default_setup, %if.then50)) #15
          to label %cleanup [label %if.then50], !srcloc !272

if.then50:                                        ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #17
  %dev51 = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 2
  %125 = ptrtoint ptr %dev51 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %dev51, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @spi_nor_default_setup.__UNIQUE_ID_ddebug269, ptr noundef %126, ptr noundef nonnull @.str.85) #15
  br label %cleanup

if.end55:                                         ; preds = %spi_nor_hwcaps_pp2cmd.exit.i142
  %127 = ptrtoint ptr %params1 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %params1, align 4
  %arrayidx.i144 = getelementptr %struct.spi_nor_flash_parameter, ptr %128, i32 0, i32 7, i32 %124
  %129 = ptrtoint ptr %arrayidx.i144 to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %arrayidx.i144, align 4
  %program_opcode.i = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 12
  %131 = ptrtoint ptr %program_opcode.i to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 %130, ptr %program_opcode.i, align 8
  %proto.i145 = getelementptr %struct.spi_nor_flash_parameter, ptr %128, i32 0, i32 7, i32 %124, i32 1
  %132 = ptrtoint ptr %proto.i145 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %proto.i145, align 4
  %write_proto.i = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 14
  %134 = ptrtoint ptr %write_proto.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %133, ptr %write_proto.i, align 8
  %uniform_erase_type.i.i = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %128, i32 0, i32 8, i32 3
  %135 = ptrtoint ptr %uniform_erase_type.i.i to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %uniform_erase_type.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %136)
  %tobool.i.not.i = icmp eq i8 %136, 0
  br i1 %tobool.i.not.i, label %for.body.preheader.i, label %if.then.i153

for.body.preheader.i:                             ; preds = %if.end55
  %arrayidx.i150 = getelementptr %struct.spi_nor_flash_parameter, ptr %128, i32 0, i32 8, i32 2, i32 3
  %137 = ptrtoint ptr %arrayidx.i150 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %arrayidx.i150, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %138)
  %tobool6.not.i = icmp eq i32 %138, 0
  br i1 %tobool6.not.i, label %for.cond.i, label %for.body.preheader.i.for.end.i_crit_edge

for.body.preheader.i.for.end.i_crit_edge:         ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i

if.then.i153:                                     ; preds = %if.end55
  %conv.i.i151 = zext i8 %136 to i32
  %and.i.i = and i32 %conv.i.i151, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i152 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i152, label %if.then.i153.for.inc.i.i_crit_edge, label %if.end.i.i154

if.then.i153.for.inc.i.i_crit_edge:               ; preds = %if.then.i153
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i.i

if.end.i.i154:                                    ; preds = %if.then.i153
  %arrayidx.i.i = getelementptr %struct.spi_nor_flash_parameter, ptr %128, i32 0, i32 8, i32 2, i32 3
  %139 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %140)
  %cmp2.i.i = icmp eq i32 %140, 4096
  br i1 %cmp2.i.i, label %if.end.i.i154.for.end.i.i_crit_edge, label %land.lhs.true.i.i

if.end.i.i154.for.end.i.i_crit_edge:              ; preds = %if.end.i.i154
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i.i

land.lhs.true.i.i:                                ; preds = %if.end.i.i154
  call void @__sanitizer_cov_trace_pc() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %140)
  %tobool8.not.i.i = icmp eq i32 %140, 0
  %spec.select.i.i = select i1 %tobool8.not.i.i, ptr null, ptr %arrayidx.i.i
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i, %if.then.i153.for.inc.i.i_crit_edge
  %erase.1.i.i = phi ptr [ null, %if.then.i153.for.inc.i.i_crit_edge ], [ %spec.select.i.i, %land.lhs.true.i.i ]
  %and.1.i.i = and i32 %conv.i.i151, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1.i.i)
  %tobool.not.1.i.i = icmp eq i32 %and.1.i.i, 0
  br i1 %tobool.not.1.i.i, label %for.inc.i.i.for.inc.1.i.i_crit_edge, label %if.end.1.i.i

for.inc.i.i.for.inc.1.i.i_crit_edge:              ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.1.i.i

if.end.1.i.i:                                     ; preds = %for.inc.i.i
  %arrayidx.1.i.i = getelementptr %struct.spi_nor_flash_parameter, ptr %128, i32 0, i32 8, i32 2, i32 2
  %141 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %arrayidx.1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %142)
  %cmp2.1.i.i = icmp eq i32 %142, 4096
  br i1 %cmp2.1.i.i, label %if.end.1.i.i.for.end.i.i_crit_edge, label %if.end5.1.i.i

if.end.1.i.i.for.end.i.i_crit_edge:               ; preds = %if.end.1.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i.i

if.end5.1.i.i:                                    ; preds = %if.end.1.i.i
  %tobool6.not.1.i.i = icmp eq ptr %erase.1.i.i, null
  br i1 %tobool6.not.1.i.i, label %land.lhs.true.1.i.i, label %if.end5.1.i.i.for.inc.1.i.i_crit_edge

if.end5.1.i.i.for.inc.1.i.i_crit_edge:            ; preds = %if.end5.1.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.1.i.i

land.lhs.true.1.i.i:                              ; preds = %if.end5.1.i.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %142)
  %tobool8.not.1.i.i = icmp eq i32 %142, 0
  %spec.select.1.i.i = select i1 %tobool8.not.1.i.i, ptr null, ptr %arrayidx.1.i.i
  br label %for.inc.1.i.i

for.inc.1.i.i:                                    ; preds = %land.lhs.true.1.i.i, %if.end5.1.i.i.for.inc.1.i.i_crit_edge, %for.inc.i.i.for.inc.1.i.i_crit_edge
  %erase.1.1.i.i = phi ptr [ %erase.1.i.i, %if.end5.1.i.i.for.inc.1.i.i_crit_edge ], [ %erase.1.i.i, %for.inc.i.i.for.inc.1.i.i_crit_edge ], [ %spec.select.1.i.i, %land.lhs.true.1.i.i ]
  %and.2.i.i = and i32 %conv.i.i151, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2.i.i)
  %tobool.not.2.i.i = icmp eq i32 %and.2.i.i, 0
  br i1 %tobool.not.2.i.i, label %for.inc.1.i.i.for.inc.2.i.i_crit_edge, label %if.end.2.i.i

for.inc.1.i.i.for.inc.2.i.i_crit_edge:            ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.2.i.i

if.end.2.i.i:                                     ; preds = %for.inc.1.i.i
  %arrayidx.2.i.i = getelementptr %struct.spi_nor_flash_parameter, ptr %128, i32 0, i32 8, i32 2, i32 1
  %143 = ptrtoint ptr %arrayidx.2.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %arrayidx.2.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %144)
  %cmp2.2.i.i = icmp eq i32 %144, 4096
  br i1 %cmp2.2.i.i, label %if.end.2.i.i.for.end.i.i_crit_edge, label %if.end5.2.i.i

if.end.2.i.i.for.end.i.i_crit_edge:               ; preds = %if.end.2.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i.i

if.end5.2.i.i:                                    ; preds = %if.end.2.i.i
  %tobool6.not.2.i.i = icmp eq ptr %erase.1.1.i.i, null
  br i1 %tobool6.not.2.i.i, label %land.lhs.true.2.i.i, label %if.end5.2.i.i.for.inc.2.i.i_crit_edge

if.end5.2.i.i.for.inc.2.i.i_crit_edge:            ; preds = %if.end5.2.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.2.i.i

land.lhs.true.2.i.i:                              ; preds = %if.end5.2.i.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %144)
  %tobool8.not.2.i.i = icmp eq i32 %144, 0
  %spec.select.2.i.i = select i1 %tobool8.not.2.i.i, ptr null, ptr %arrayidx.2.i.i
  br label %for.inc.2.i.i

for.inc.2.i.i:                                    ; preds = %land.lhs.true.2.i.i, %if.end5.2.i.i.for.inc.2.i.i_crit_edge, %for.inc.1.i.i.for.inc.2.i.i_crit_edge
  %erase.1.2.i.i = phi ptr [ %erase.1.1.i.i, %if.end5.2.i.i.for.inc.2.i.i_crit_edge ], [ %erase.1.1.i.i, %for.inc.1.i.i.for.inc.2.i.i_crit_edge ], [ %spec.select.2.i.i, %land.lhs.true.2.i.i ]
  %and.3.i.i = and i32 %conv.i.i151, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3.i.i)
  %tobool.not.3.i.i = icmp eq i32 %and.3.i.i, 0
  br i1 %tobool.not.3.i.i, label %for.inc.2.i.i.for.end.i.i_crit_edge, label %if.end.3.i.i

for.inc.2.i.i.for.end.i.i_crit_edge:              ; preds = %for.inc.2.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i.i

if.end.3.i.i:                                     ; preds = %for.inc.2.i.i
  %arrayidx.3.i.i = getelementptr %struct.spi_nor_flash_parameter, ptr %128, i32 0, i32 8, i32 2
  %145 = ptrtoint ptr %arrayidx.3.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %arrayidx.3.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %146)
  %cmp2.3.i.i = icmp eq i32 %146, 4096
  br i1 %cmp2.3.i.i, label %if.end.3.i.i.for.end.i.i_crit_edge, label %if.end5.3.i.i

if.end.3.i.i.for.end.i.i_crit_edge:               ; preds = %if.end.3.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i.i

if.end5.3.i.i:                                    ; preds = %if.end.3.i.i
  %tobool6.not.3.i.i = icmp eq ptr %erase.1.2.i.i, null
  br i1 %tobool6.not.3.i.i, label %land.lhs.true.3.i.i, label %if.end5.3.i.i.if.end.i156_crit_edge

if.end5.3.i.i.if.end.i156_crit_edge:              ; preds = %if.end5.3.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i156

land.lhs.true.3.i.i:                              ; preds = %if.end5.3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %146)
  %tobool8.not.3.i.i = icmp eq i32 %146, 0
  br i1 %tobool8.not.3.i.i, label %land.lhs.true.3.i.i.do.body59_crit_edge, label %land.lhs.true.3.i.i.for.end.i.i_crit_edge

land.lhs.true.3.i.i.for.end.i.i_crit_edge:        ; preds = %land.lhs.true.3.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i.i

land.lhs.true.3.i.i.do.body59_crit_edge:          ; preds = %land.lhs.true.3.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body59

for.end.i.i:                                      ; preds = %land.lhs.true.3.i.i.for.end.i.i_crit_edge, %if.end.3.i.i.for.end.i.i_crit_edge, %for.inc.2.i.i.for.end.i.i_crit_edge, %if.end.2.i.i.for.end.i.i_crit_edge, %if.end.1.i.i.for.end.i.i_crit_edge, %if.end.i.i154.for.end.i.i_crit_edge
  %erase.2.i.i = phi ptr [ %arrayidx.i.i, %if.end.i.i154.for.end.i.i_crit_edge ], [ %arrayidx.1.i.i, %if.end.1.i.i.for.end.i.i_crit_edge ], [ %arrayidx.2.i.i, %if.end.2.i.i.for.end.i.i_crit_edge ], [ %arrayidx.3.i.i, %if.end.3.i.i.for.end.i.i_crit_edge ], [ %erase.1.2.i.i, %for.inc.2.i.i.for.end.i.i_crit_edge ], [ %arrayidx.3.i.i, %land.lhs.true.3.i.i.for.end.i.i_crit_edge ]
  %tobool11.not.i.i = icmp eq ptr %erase.2.i.i, null
  br i1 %tobool11.not.i.i, label %for.end.i.i.do.body59_crit_edge, label %for.end.i.i.if.end.i156_crit_edge

for.end.i.i.if.end.i156_crit_edge:                ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i156

for.end.i.i.do.body59_crit_edge:                  ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body59

if.end.i156:                                      ; preds = %for.end.i.i.if.end.i156_crit_edge, %if.end5.3.i.i.if.end.i156_crit_edge
  %erase.210.i.i = phi ptr [ %erase.2.i.i, %for.end.i.i.if.end.i156_crit_edge ], [ %erase.1.2.i.i, %if.end5.3.i.i.if.end.i156_crit_edge ]
  %147 = and i8 %136, -16
  %erase_type18.i.i = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %128, i32 0, i32 8, i32 2
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %erase.210.i.i to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %erase_type18.i.i to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %sub.ptr.div.i.i = ashr exact i32 %sub.ptr.sub.i.i, 4
  %shl19.i.i = shl nuw i32 1, %sub.ptr.div.i.i
  %148 = trunc i32 %shl19.i.i to i8
  %conv22.i.i = or i8 %147, %148
  %149 = ptrtoint ptr %uniform_erase_type.i.i to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 %conv22.i.i, ptr %uniform_erase_type.i.i, align 8
  %opcode.i155 = getelementptr inbounds %struct.spi_nor_erase_type, ptr %erase.210.i.i, i32 0, i32 3
  %150 = ptrtoint ptr %opcode.i155 to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %opcode.i155, align 4
  %erase_opcode.i = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 9
  %152 = ptrtoint ptr %erase_opcode.i to i32
  call void @__asan_store1_noabort(i32 %152)
  store i8 %151, ptr %erase_opcode.i, align 1
  br label %spi_nor_select_erase.exit

for.cond.i:                                       ; preds = %for.body.preheader.i
  %arrayidx.1.i = getelementptr %struct.spi_nor_flash_parameter, ptr %128, i32 0, i32 8, i32 2, i32 2
  %153 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %arrayidx.1.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %154)
  %tobool6.not.1.i = icmp eq i32 %154, 0
  br i1 %tobool6.not.1.i, label %for.cond.1.i, label %for.cond.i.for.end.i_crit_edge

for.cond.i.for.end.i_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i

for.cond.1.i:                                     ; preds = %for.cond.i
  %arrayidx.2.i = getelementptr %struct.spi_nor_flash_parameter, ptr %128, i32 0, i32 8, i32 2, i32 1
  %155 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %arrayidx.2.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %156)
  %tobool6.not.2.i = icmp eq i32 %156, 0
  br i1 %tobool6.not.2.i, label %for.cond.2.i, label %for.cond.1.i.for.end.i_crit_edge

for.cond.1.i.for.end.i_crit_edge:                 ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i

for.cond.2.i:                                     ; preds = %for.cond.1.i
  %arrayidx.3.i = getelementptr %struct.spi_nor_flash_parameter, ptr %128, i32 0, i32 8, i32 2, i32 0
  %157 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %arrayidx.3.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %158)
  %tobool6.not.3.i = icmp eq i32 %158, 0
  br i1 %tobool6.not.3.i, label %for.cond.2.i.do.body59_crit_edge, label %for.cond.2.i.for.end.i_crit_edge

for.cond.2.i.for.end.i_crit_edge:                 ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i

for.cond.2.i.do.body59_crit_edge:                 ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body59

for.end.i:                                        ; preds = %for.cond.2.i.for.end.i_crit_edge, %for.cond.1.i.for.end.i_crit_edge, %for.cond.i.for.end.i_crit_edge, %for.body.preheader.i.for.end.i_crit_edge
  %arrayidx.lcssa.i = phi ptr [ %arrayidx.i150, %for.body.preheader.i.for.end.i_crit_edge ], [ %arrayidx.1.i, %for.cond.i.for.end.i_crit_edge ], [ %arrayidx.2.i, %for.cond.1.i.for.end.i_crit_edge ], [ %arrayidx.3.i, %for.cond.2.i.for.end.i_crit_edge ]
  %tobool11.not.i = icmp eq ptr %arrayidx.lcssa.i, null
  br i1 %tobool11.not.i, label %for.end.i.do.body59_crit_edge, label %for.end.i.spi_nor_select_erase.exit_crit_edge

for.end.i.spi_nor_select_erase.exit_crit_edge:    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %spi_nor_select_erase.exit

for.end.i.do.body59_crit_edge:                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body59

spi_nor_select_erase.exit:                        ; preds = %for.end.i.spi_nor_select_erase.exit_crit_edge, %if.end.i156
  %arrayidx.lcssa.sink.i = phi ptr [ %erase.210.i.i, %if.end.i156 ], [ %arrayidx.lcssa.i, %for.end.i.spi_nor_select_erase.exit_crit_edge ]
  %159 = ptrtoint ptr %arrayidx.lcssa.sink.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %arrayidx.lcssa.sink.i, align 4
  %erasesize15.i = getelementptr inbounds %struct.mtd_info, ptr %nor, i32 0, i32 3
  %161 = ptrtoint ptr %erasesize15.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 %160, ptr %erasesize15.i, align 8
  br label %cleanup

do.body59:                                        ; preds = %for.end.i.do.body59_crit_edge, %for.cond.2.i.do.body59_crit_edge, %for.end.i.i.do.body59_crit_edge, %land.lhs.true.3.i.i.do.body59_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @spi_nor_default_setup.__UNIQUE_ID_ddebug270, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@spi_nor_default_setup, %if.then71)) #15
          to label %cleanup [label %if.then71], !srcloc !272

if.then71:                                        ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #17
  %dev72 = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 2
  %162 = ptrtoint ptr %dev72 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %dev72, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @spi_nor_default_setup.__UNIQUE_ID_ddebug270, ptr noundef %163, ptr noundef nonnull @.str.86) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then71, %do.body59, %spi_nor_select_erase.exit, %if.then50, %do.body38, %if.then29, %do.body17
  %retval.0 = phi i32 [ -22, %if.then29 ], [ -22, %if.then50 ], [ -22, %if.then71 ], [ 0, %spi_nor_select_erase.exit ], [ -22, %do.body17 ], [ -22, %do.body38 ], [ -22, %do.body59 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @spi_mem_supports_op(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @spi_nor_init_default_locking_ops(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @spi_nor_set_addr_width(ptr nocapture noundef %nor) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %addr_width = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 8
  %0 = ptrtoint ptr %addr_width to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %addr_width, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.else, label %entry.if.end13_crit_edge

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end13

if.else:                                          ; preds = %entry
  %read_proto = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 13
  %2 = ptrtoint ptr %read_proto to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %read_proto, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17303560, i32 %3)
  %cmp = icmp eq i32 %3, 17303560
  br i1 %cmp, label %if.else.land.lhs.true40.sink.split_crit_edge, label %if.else3

if.else.land.lhs.true40.sink.split_crit_edge:     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true40.sink.split

if.else3:                                         ; preds = %if.else
  %info = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 6
  %4 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %info, align 4
  %addr_width4 = getelementptr inbounds %struct.flash_info, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %addr_width4 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %addr_width4, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool5.not = icmp eq i16 %7, 0
  br i1 %tobool5.not, label %if.end13.thread, label %if.then6

if.then6:                                         ; preds = %if.else3
  call void @__sanitizer_cov_trace_pc() #17
  %conv = trunc i16 %7 to i8
  %8 = ptrtoint ptr %addr_width to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv, ptr %addr_width, align 4
  br label %if.end13

if.end13.thread:                                  ; preds = %if.else3
  call void @__sanitizer_cov_trace_pc() #17
  %9 = ptrtoint ptr %addr_width to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 3, ptr %addr_width, align 4
  br label %land.lhs.true

if.end13:                                         ; preds = %if.then6, %entry.if.end13_crit_edge
  %10 = phi i8 [ %conv, %if.then6 ], [ %1, %entry.if.end13_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %10)
  %cmp16 = icmp eq i8 %10, 3
  br i1 %cmp16, label %if.end13.land.lhs.true_crit_edge, label %if.end13.if.end22_crit_edge

if.end13.if.end22_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end22

if.end13.land.lhs.true_crit_edge:                 ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end13.land.lhs.true_crit_edge, %if.end13.thread
  %params = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 21
  %11 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %params, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %12, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 16777216, i64 %14)
  %cmp18 = icmp ugt i64 %14, 16777216
  br i1 %cmp18, label %land.lhs.true.land.lhs.true40.sink.split_crit_edge, label %land.lhs.true.if.end22_crit_edge

land.lhs.true.if.end22_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end22

land.lhs.true.land.lhs.true40.sink.split_crit_edge: ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true40.sink.split

if.end22:                                         ; preds = %land.lhs.true.if.end22_crit_edge, %if.end13.if.end22_crit_edge
  %15 = ptrtoint ptr %addr_width to i32
  call void @__asan_load1_noabort(i32 %15)
  %.pr = load i8, ptr %addr_width, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %.pr)
  %cmp25 = icmp ugt i8 %.pr, 4
  br i1 %cmp25, label %do.body, label %if.end35

do.body:                                          ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @spi_nor_set_addr_width.__UNIQUE_ID_ddebug271, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@spi_nor_set_addr_width, %if.then31)) #15
          to label %return [label %if.then31], !srcloc !272

if.then31:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  %dev = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 2
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  %18 = ptrtoint ptr %addr_width to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %addr_width, align 4
  %conv33 = zext i8 %19 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @spi_nor_set_addr_width.__UNIQUE_ID_ddebug271, ptr noundef %17, ptr noundef nonnull @.str.89, i32 noundef %conv33) #15
  br label %return

if.end35:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %.pr)
  %cmp38 = icmp eq i8 %.pr, 4
  br i1 %cmp38, label %if.end35.land.lhs.true40_crit_edge, label %if.end35.return_crit_edge

if.end35.return_crit_edge:                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.end35.land.lhs.true40_crit_edge:               ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true40

land.lhs.true40.sink.split:                       ; preds = %land.lhs.true.land.lhs.true40.sink.split_crit_edge, %if.else.land.lhs.true40.sink.split_crit_edge
  %20 = ptrtoint ptr %addr_width to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 4, ptr %addr_width, align 4
  br label %land.lhs.true40

land.lhs.true40:                                  ; preds = %land.lhs.true40.sink.split, %if.end35.land.lhs.true40_crit_edge
  %flags = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 17
  %21 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flags, align 4
  %23 = and i32 %22, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %23)
  %24 = icmp eq i32 %23, 64
  br i1 %24, label %if.then46, label %land.lhs.true40.return_crit_edge

land.lhs.true40.return_crit_edge:                 ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.then46:                                        ; preds = %land.lhs.true40
  %read_opcode.i = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 10
  %25 = ptrtoint ptr %read_opcode.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %read_opcode.i, align 2
  %27 = zext i8 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.136)
  switch i8 %26, label %if.then46.spi_nor_convert_3to4_read.exit.i_crit_edge [
    i8 3, label %if.then46.if.then.i.i.i_crit_edge
    i8 11, label %if.then.i.fold.split.i.i
    i8 59, label %if.then.i.fold.split3.i.i
    i8 -69, label %if.then.i.fold.split4.i.i
    i8 107, label %if.then.i.fold.split5.i.i
    i8 -21, label %if.then.i.fold.split6.i.i
    i8 -117, label %if.then.i.fold.split7.i.i
    i8 -53, label %if.then.i.fold.split8.i.i
    i8 13, label %if.then.i.fold.split9.i.i
    i8 -67, label %if.then.i.fold.split10.i.i
    i8 -19, label %if.then.i.fold.split11.i.i
  ]

if.then46.if.then.i.i.i_crit_edge:                ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i.i.i

if.then46.spi_nor_convert_3to4_read.exit.i_crit_edge: ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #17
  br label %spi_nor_convert_3to4_read.exit.i

if.then.i.fold.split.i.i:                         ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i.i.i

if.then.i.fold.split3.i.i:                        ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i.i.i

if.then.i.fold.split4.i.i:                        ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i.i.i

if.then.i.fold.split5.i.i:                        ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i.i.i

if.then.i.fold.split6.i.i:                        ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i.i.i

if.then.i.fold.split7.i.i:                        ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i.i.i

if.then.i.fold.split8.i.i:                        ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i.i.i

if.then.i.fold.split9.i.i:                        ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i.i.i

if.then.i.fold.split10.i.i:                       ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i.i.i

if.then.i.fold.split11.i.i:                       ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.then.i.fold.split11.i.i, %if.then.i.fold.split10.i.i, %if.then.i.fold.split9.i.i, %if.then.i.fold.split8.i.i, %if.then.i.fold.split7.i.i, %if.then.i.fold.split6.i.i, %if.then.i.fold.split5.i.i, %if.then.i.fold.split4.i.i, %if.then.i.fold.split3.i.i, %if.then.i.fold.split.i.i, %if.then46.if.then.i.i.i_crit_edge
  %i.014.i.lcssa.i.i = phi i32 [ 0, %if.then46.if.then.i.i.i_crit_edge ], [ 1, %if.then.i.fold.split.i.i ], [ 2, %if.then.i.fold.split3.i.i ], [ 3, %if.then.i.fold.split4.i.i ], [ 4, %if.then.i.fold.split5.i.i ], [ 5, %if.then.i.fold.split6.i.i ], [ 6, %if.then.i.fold.split7.i.i ], [ 7, %if.then.i.fold.split8.i.i ], [ 8, %if.then.i.fold.split9.i.i ], [ 9, %if.then.i.fold.split10.i.i ], [ 10, %if.then.i.fold.split11.i.i ]
  %arrayidx6.i.i.i = getelementptr [2 x i8], ptr @spi_nor_convert_3to4_read.spi_nor_3to4_read, i32 %i.014.i.lcssa.i.i, i32 1
  %28 = ptrtoint ptr %arrayidx6.i.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx6.i.i.i, align 1
  br label %spi_nor_convert_3to4_read.exit.i

spi_nor_convert_3to4_read.exit.i:                 ; preds = %if.then.i.i.i, %if.then46.spi_nor_convert_3to4_read.exit.i_crit_edge
  %retval.0.i.i.i = phi i8 [ %29, %if.then.i.i.i ], [ %26, %if.then46.spi_nor_convert_3to4_read.exit.i_crit_edge ]
  %30 = ptrtoint ptr %read_opcode.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %retval.0.i.i.i, ptr %read_opcode.i, align 2
  %program_opcode.i = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 12
  %31 = ptrtoint ptr %program_opcode.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %program_opcode.i, align 8
  %33 = zext i8 %32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.137)
  switch i8 %32, label %spi_nor_convert_3to4_read.exit.i.spi_nor_convert_3to4_program.exit.i_crit_edge [
    i8 2, label %spi_nor_convert_3to4_read.exit.i.if.then.i.i25.i_crit_edge
    i8 50, label %if.then.i.fold.split.i19.i
    i8 56, label %if.then.i.fold.split3.i20.i
    i8 -126, label %if.then.i.fold.split4.i21.i
    i8 -62, label %if.then.i.fold.split5.i22.i
  ]

spi_nor_convert_3to4_read.exit.i.if.then.i.i25.i_crit_edge: ; preds = %spi_nor_convert_3to4_read.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i.i25.i

spi_nor_convert_3to4_read.exit.i.spi_nor_convert_3to4_program.exit.i_crit_edge: ; preds = %spi_nor_convert_3to4_read.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %spi_nor_convert_3to4_program.exit.i

if.then.i.fold.split.i19.i:                       ; preds = %spi_nor_convert_3to4_read.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i.i25.i

if.then.i.fold.split3.i20.i:                      ; preds = %spi_nor_convert_3to4_read.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i.i25.i

if.then.i.fold.split4.i21.i:                      ; preds = %spi_nor_convert_3to4_read.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i.i25.i

if.then.i.fold.split5.i22.i:                      ; preds = %spi_nor_convert_3to4_read.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i.i25.i

if.then.i.i25.i:                                  ; preds = %if.then.i.fold.split5.i22.i, %if.then.i.fold.split4.i21.i, %if.then.i.fold.split3.i20.i, %if.then.i.fold.split.i19.i, %spi_nor_convert_3to4_read.exit.i.if.then.i.i25.i_crit_edge
  %i.014.i.lcssa.i23.i = phi i32 [ 0, %spi_nor_convert_3to4_read.exit.i.if.then.i.i25.i_crit_edge ], [ 1, %if.then.i.fold.split.i19.i ], [ 2, %if.then.i.fold.split3.i20.i ], [ 3, %if.then.i.fold.split4.i21.i ], [ 4, %if.then.i.fold.split5.i22.i ]
  %arrayidx6.i.i24.i = getelementptr [2 x i8], ptr @spi_nor_convert_3to4_program.spi_nor_3to4_program, i32 %i.014.i.lcssa.i23.i, i32 1
  %34 = ptrtoint ptr %arrayidx6.i.i24.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx6.i.i24.i, align 1
  br label %spi_nor_convert_3to4_program.exit.i

spi_nor_convert_3to4_program.exit.i:              ; preds = %if.then.i.i25.i, %spi_nor_convert_3to4_read.exit.i.spi_nor_convert_3to4_program.exit.i_crit_edge
  %retval.0.i.i26.i = phi i8 [ %35, %if.then.i.i25.i ], [ %32, %spi_nor_convert_3to4_read.exit.i.spi_nor_convert_3to4_program.exit.i_crit_edge ]
  %36 = ptrtoint ptr %program_opcode.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %retval.0.i.i26.i, ptr %program_opcode.i, align 8
  %erase_opcode.i = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 9
  %37 = ptrtoint ptr %erase_opcode.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %erase_opcode.i, align 1
  %39 = zext i8 %38 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.138)
  switch i8 %38, label %spi_nor_convert_3to4_program.exit.i.spi_nor_convert_3to4_erase.exit.i_crit_edge [
    i8 32, label %spi_nor_convert_3to4_program.exit.i.if.then.i.i31.i_crit_edge
    i8 82, label %if.then.i.fold.split.i27.i
    i8 -40, label %if.then.i.fold.split3.i28.i
  ]

spi_nor_convert_3to4_program.exit.i.if.then.i.i31.i_crit_edge: ; preds = %spi_nor_convert_3to4_program.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i.i31.i

spi_nor_convert_3to4_program.exit.i.spi_nor_convert_3to4_erase.exit.i_crit_edge: ; preds = %spi_nor_convert_3to4_program.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %spi_nor_convert_3to4_erase.exit.i

if.then.i.fold.split.i27.i:                       ; preds = %spi_nor_convert_3to4_program.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i.i31.i

if.then.i.fold.split3.i28.i:                      ; preds = %spi_nor_convert_3to4_program.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i.i31.i

if.then.i.i31.i:                                  ; preds = %if.then.i.fold.split3.i28.i, %if.then.i.fold.split.i27.i, %spi_nor_convert_3to4_program.exit.i.if.then.i.i31.i_crit_edge
  %i.014.i.lcssa.i29.i = phi i32 [ 0, %spi_nor_convert_3to4_program.exit.i.if.then.i.i31.i_crit_edge ], [ 1, %if.then.i.fold.split.i27.i ], [ 2, %if.then.i.fold.split3.i28.i ]
  %arrayidx6.i.i30.i = getelementptr [2 x i8], ptr @spi_nor_convert_3to4_erase.spi_nor_3to4_erase, i32 %i.014.i.lcssa.i29.i, i32 1
  %40 = ptrtoint ptr %arrayidx6.i.i30.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx6.i.i30.i, align 1
  br label %spi_nor_convert_3to4_erase.exit.i

spi_nor_convert_3to4_erase.exit.i:                ; preds = %if.then.i.i31.i, %spi_nor_convert_3to4_program.exit.i.spi_nor_convert_3to4_erase.exit.i_crit_edge
  %retval.0.i.i32.i = phi i8 [ %41, %if.then.i.i31.i ], [ %38, %spi_nor_convert_3to4_program.exit.i.spi_nor_convert_3to4_erase.exit.i_crit_edge ]
  %42 = ptrtoint ptr %erase_opcode.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %retval.0.i.i32.i, ptr %erase_opcode.i, align 1
  %params.i.i = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 21
  %43 = ptrtoint ptr %params.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %params.i.i, align 4
  %uniform_erase_type.i.i = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %44, i32 0, i32 8, i32 3
  %45 = ptrtoint ptr %uniform_erase_type.i.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %uniform_erase_type.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool.i.not.i = icmp eq i8 %46, 0
  br i1 %tobool.i.not.i, label %for.body.preheader.i, label %spi_nor_convert_3to4_erase.exit.i.return_crit_edge

spi_nor_convert_3to4_erase.exit.i.return_crit_edge: ; preds = %spi_nor_convert_3to4_erase.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

for.body.preheader.i:                             ; preds = %spi_nor_convert_3to4_erase.exit.i
  %opcode.i = getelementptr %struct.spi_nor_flash_parameter, ptr %44, i32 0, i32 8, i32 2, i32 0, i32 3
  %47 = ptrtoint ptr %opcode.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %opcode.i, align 4
  %49 = zext i8 %48 to i64
  call void @__sanitizer_cov_trace_switch(i64 %49, ptr @__sancov_gen_cov_switch_values.139)
  switch i8 %48, label %for.body.preheader.i.spi_nor_convert_3to4_erase.exit39.i_crit_edge [
    i8 32, label %for.body.preheader.i.if.then.i.i37.i_crit_edge
    i8 82, label %if.then.i.fold.split.i33.i
    i8 -40, label %if.then.i.fold.split3.i34.i
  ]

for.body.preheader.i.if.then.i.i37.i_crit_edge:   ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i.i37.i

for.body.preheader.i.spi_nor_convert_3to4_erase.exit39.i_crit_edge: ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %spi_nor_convert_3to4_erase.exit39.i

if.then.i.fold.split.i33.i:                       ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i.i37.i

if.then.i.fold.split3.i34.i:                      ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i.i37.i

if.then.i.i37.i:                                  ; preds = %if.then.i.fold.split3.i34.i, %if.then.i.fold.split.i33.i, %for.body.preheader.i.if.then.i.i37.i_crit_edge
  %i.014.i.lcssa.i35.i = phi i32 [ 0, %for.body.preheader.i.if.then.i.i37.i_crit_edge ], [ 1, %if.then.i.fold.split.i33.i ], [ 2, %if.then.i.fold.split3.i34.i ]
  %arrayidx6.i.i36.i = getelementptr [2 x i8], ptr @spi_nor_convert_3to4_erase.spi_nor_3to4_erase, i32 %i.014.i.lcssa.i35.i, i32 1
  %50 = ptrtoint ptr %arrayidx6.i.i36.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx6.i.i36.i, align 1
  br label %spi_nor_convert_3to4_erase.exit39.i

spi_nor_convert_3to4_erase.exit39.i:              ; preds = %if.then.i.i37.i, %for.body.preheader.i.spi_nor_convert_3to4_erase.exit39.i_crit_edge
  %retval.0.i.i38.i = phi i8 [ %51, %if.then.i.i37.i ], [ %48, %for.body.preheader.i.spi_nor_convert_3to4_erase.exit39.i_crit_edge ]
  %52 = ptrtoint ptr %opcode.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %retval.0.i.i38.i, ptr %opcode.i, align 4
  %opcode.1.i = getelementptr %struct.spi_nor_flash_parameter, ptr %44, i32 0, i32 8, i32 2, i32 1, i32 3
  %53 = ptrtoint ptr %opcode.1.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %opcode.1.i, align 4
  %55 = zext i8 %54 to i64
  call void @__sanitizer_cov_trace_switch(i64 %55, ptr @__sancov_gen_cov_switch_values.140)
  switch i8 %54, label %spi_nor_convert_3to4_erase.exit39.i.spi_nor_convert_3to4_erase.exit39.1.i_crit_edge [
    i8 32, label %spi_nor_convert_3to4_erase.exit39.i.if.then.i.i37.1.i_crit_edge
    i8 82, label %if.then.i.fold.split.i33.1.i
    i8 -40, label %if.then.i.fold.split3.i34.1.i
  ]

spi_nor_convert_3to4_erase.exit39.i.if.then.i.i37.1.i_crit_edge: ; preds = %spi_nor_convert_3to4_erase.exit39.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i.i37.1.i

spi_nor_convert_3to4_erase.exit39.i.spi_nor_convert_3to4_erase.exit39.1.i_crit_edge: ; preds = %spi_nor_convert_3to4_erase.exit39.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %spi_nor_convert_3to4_erase.exit39.1.i

if.then.i.fold.split3.i34.1.i:                    ; preds = %spi_nor_convert_3to4_erase.exit39.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i.i37.1.i

if.then.i.fold.split.i33.1.i:                     ; preds = %spi_nor_convert_3to4_erase.exit39.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i.i37.1.i

if.then.i.i37.1.i:                                ; preds = %if.then.i.fold.split.i33.1.i, %if.then.i.fold.split3.i34.1.i, %spi_nor_convert_3to4_erase.exit39.i.if.then.i.i37.1.i_crit_edge
  %i.014.i.lcssa.i35.1.i = phi i32 [ 0, %spi_nor_convert_3to4_erase.exit39.i.if.then.i.i37.1.i_crit_edge ], [ 1, %if.then.i.fold.split.i33.1.i ], [ 2, %if.then.i.fold.split3.i34.1.i ]
  %arrayidx6.i.i36.1.i = getelementptr [2 x i8], ptr @spi_nor_convert_3to4_erase.spi_nor_3to4_erase, i32 %i.014.i.lcssa.i35.1.i, i32 1
  %56 = ptrtoint ptr %arrayidx6.i.i36.1.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx6.i.i36.1.i, align 1
  br label %spi_nor_convert_3to4_erase.exit39.1.i

spi_nor_convert_3to4_erase.exit39.1.i:            ; preds = %if.then.i.i37.1.i, %spi_nor_convert_3to4_erase.exit39.i.spi_nor_convert_3to4_erase.exit39.1.i_crit_edge
  %retval.0.i.i38.1.i = phi i8 [ %57, %if.then.i.i37.1.i ], [ %54, %spi_nor_convert_3to4_erase.exit39.i.spi_nor_convert_3to4_erase.exit39.1.i_crit_edge ]
  %58 = ptrtoint ptr %opcode.1.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %retval.0.i.i38.1.i, ptr %opcode.1.i, align 4
  %opcode.2.i = getelementptr %struct.spi_nor_flash_parameter, ptr %44, i32 0, i32 8, i32 2, i32 2, i32 3
  %59 = ptrtoint ptr %opcode.2.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %opcode.2.i, align 4
  %61 = zext i8 %60 to i64
  call void @__sanitizer_cov_trace_switch(i64 %61, ptr @__sancov_gen_cov_switch_values.141)
  switch i8 %60, label %spi_nor_convert_3to4_erase.exit39.1.i.spi_nor_convert_3to4_erase.exit39.2.i_crit_edge [
    i8 32, label %spi_nor_convert_3to4_erase.exit39.1.i.if.then.i.i37.2.i_crit_edge
    i8 82, label %if.then.i.fold.split.i33.2.i
    i8 -40, label %if.then.i.fold.split3.i34.2.i
  ]

spi_nor_convert_3to4_erase.exit39.1.i.if.then.i.i37.2.i_crit_edge: ; preds = %spi_nor_convert_3to4_erase.exit39.1.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i.i37.2.i

spi_nor_convert_3to4_erase.exit39.1.i.spi_nor_convert_3to4_erase.exit39.2.i_crit_edge: ; preds = %spi_nor_convert_3to4_erase.exit39.1.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %spi_nor_convert_3to4_erase.exit39.2.i

if.then.i.fold.split3.i34.2.i:                    ; preds = %spi_nor_convert_3to4_erase.exit39.1.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i.i37.2.i

if.then.i.fold.split.i33.2.i:                     ; preds = %spi_nor_convert_3to4_erase.exit39.1.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i.i37.2.i

if.then.i.i37.2.i:                                ; preds = %if.then.i.fold.split.i33.2.i, %if.then.i.fold.split3.i34.2.i, %spi_nor_convert_3to4_erase.exit39.1.i.if.then.i.i37.2.i_crit_edge
  %i.014.i.lcssa.i35.2.i = phi i32 [ 0, %spi_nor_convert_3to4_erase.exit39.1.i.if.then.i.i37.2.i_crit_edge ], [ 1, %if.then.i.fold.split.i33.2.i ], [ 2, %if.then.i.fold.split3.i34.2.i ]
  %arrayidx6.i.i36.2.i = getelementptr [2 x i8], ptr @spi_nor_convert_3to4_erase.spi_nor_3to4_erase, i32 %i.014.i.lcssa.i35.2.i, i32 1
  %62 = ptrtoint ptr %arrayidx6.i.i36.2.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx6.i.i36.2.i, align 1
  br label %spi_nor_convert_3to4_erase.exit39.2.i

spi_nor_convert_3to4_erase.exit39.2.i:            ; preds = %if.then.i.i37.2.i, %spi_nor_convert_3to4_erase.exit39.1.i.spi_nor_convert_3to4_erase.exit39.2.i_crit_edge
  %retval.0.i.i38.2.i = phi i8 [ %63, %if.then.i.i37.2.i ], [ %60, %spi_nor_convert_3to4_erase.exit39.1.i.spi_nor_convert_3to4_erase.exit39.2.i_crit_edge ]
  %64 = ptrtoint ptr %opcode.2.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %retval.0.i.i38.2.i, ptr %opcode.2.i, align 4
  %opcode.3.i = getelementptr %struct.spi_nor_flash_parameter, ptr %44, i32 0, i32 8, i32 2, i32 3, i32 3
  %65 = ptrtoint ptr %opcode.3.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %opcode.3.i, align 4
  %67 = zext i8 %66 to i64
  call void @__sanitizer_cov_trace_switch(i64 %67, ptr @__sancov_gen_cov_switch_values.142)
  switch i8 %66, label %spi_nor_convert_3to4_erase.exit39.2.i.spi_nor_convert_3to4_erase.exit39.3.i_crit_edge [
    i8 32, label %spi_nor_convert_3to4_erase.exit39.2.i.if.then.i.i37.3.i_crit_edge
    i8 82, label %if.then.i.fold.split.i33.3.i
    i8 -40, label %if.then.i.fold.split3.i34.3.i
  ]

spi_nor_convert_3to4_erase.exit39.2.i.if.then.i.i37.3.i_crit_edge: ; preds = %spi_nor_convert_3to4_erase.exit39.2.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i.i37.3.i

spi_nor_convert_3to4_erase.exit39.2.i.spi_nor_convert_3to4_erase.exit39.3.i_crit_edge: ; preds = %spi_nor_convert_3to4_erase.exit39.2.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %spi_nor_convert_3to4_erase.exit39.3.i

if.then.i.fold.split3.i34.3.i:                    ; preds = %spi_nor_convert_3to4_erase.exit39.2.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i.i37.3.i

if.then.i.fold.split.i33.3.i:                     ; preds = %spi_nor_convert_3to4_erase.exit39.2.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i.i37.3.i

if.then.i.i37.3.i:                                ; preds = %if.then.i.fold.split.i33.3.i, %if.then.i.fold.split3.i34.3.i, %spi_nor_convert_3to4_erase.exit39.2.i.if.then.i.i37.3.i_crit_edge
  %i.014.i.lcssa.i35.3.i = phi i32 [ 0, %spi_nor_convert_3to4_erase.exit39.2.i.if.then.i.i37.3.i_crit_edge ], [ 1, %if.then.i.fold.split.i33.3.i ], [ 2, %if.then.i.fold.split3.i34.3.i ]
  %arrayidx6.i.i36.3.i = getelementptr [2 x i8], ptr @spi_nor_convert_3to4_erase.spi_nor_3to4_erase, i32 %i.014.i.lcssa.i35.3.i, i32 1
  %68 = ptrtoint ptr %arrayidx6.i.i36.3.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx6.i.i36.3.i, align 1
  br label %spi_nor_convert_3to4_erase.exit39.3.i

spi_nor_convert_3to4_erase.exit39.3.i:            ; preds = %if.then.i.i37.3.i, %spi_nor_convert_3to4_erase.exit39.2.i.spi_nor_convert_3to4_erase.exit39.3.i_crit_edge
  %retval.0.i.i38.3.i = phi i8 [ %69, %if.then.i.i37.3.i ], [ %66, %spi_nor_convert_3to4_erase.exit39.2.i.spi_nor_convert_3to4_erase.exit39.3.i_crit_edge ]
  %70 = ptrtoint ptr %opcode.3.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %retval.0.i.i38.3.i, ptr %opcode.3.i, align 4
  br label %return

return:                                           ; preds = %spi_nor_convert_3to4_erase.exit39.3.i, %spi_nor_convert_3to4_erase.exit.i.return_crit_edge, %land.lhs.true40.return_crit_edge, %if.end35.return_crit_edge, %if.then31, %do.body
  %retval.0 = phi i32 [ -22, %if.then31 ], [ 0, %land.lhs.true40.return_crit_edge ], [ 0, %if.end35.return_crit_edge ], [ -22, %do.body ], [ 0, %spi_nor_convert_3to4_erase.exit.i.return_crit_edge ], [ 0, %spi_nor_convert_3to4_erase.exit39.3.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @spi_nor_try_unlock_all(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @spi_nor_set_mtd_locking_ops(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @spi_nor_set_mtd_otp_ops(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spi_nor_erase(ptr noundef %mtd, ptr nocapture noundef readonly %instr) #0 align 64 {
entry:
  %erase_list.i = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @spi_nor_erase.__UNIQUE_ID_ddebug258, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@spi_nor_erase, %if.then)) #15
          to label %do.end [label %if.then], !srcloc !272

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %dev = getelementptr inbounds %struct.spi_nor, ptr %mtd, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %2 = ptrtoint ptr %instr to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %instr, align 8
  %len5 = getelementptr inbounds %struct.erase_info, ptr %instr, i32 0, i32 1
  %4 = ptrtoint ptr %len5 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %len5, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @spi_nor_erase.__UNIQUE_ID_ddebug258, ptr noundef %1, ptr noundef nonnull @.str.95, i64 noundef %3, i64 noundef %5) #15
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %params.i = getelementptr inbounds %struct.spi_nor, ptr %mtd, i32 0, i32 21
  %6 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %params.i, align 4
  %uniform_erase_type.i = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %7, i32 0, i32 8, i32 3
  %8 = ptrtoint ptr %uniform_erase_type.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %uniform_erase_type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.i.not = icmp eq i8 %9, 0
  br i1 %tobool.i.not, label %do.end.if.end13_crit_edge, label %if.then7

do.end.if.end13_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end13

if.then7:                                         ; preds = %do.end
  %len8 = getelementptr inbounds %struct.erase_info, ptr %instr, i32 0, i32 1
  %10 = ptrtoint ptr %len8 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %len8, align 8
  %erasesize = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 3
  %12 = ptrtoint ptr %erasesize to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %erasesize, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %11)
  %cmp164.i = icmp ult i64 %11, 4294967296
  br i1 %cmp164.i, label %if.then168.i, label %if.else174.i, !prof !274

if.then168.i:                                     ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #17
  %conv169.i = trunc i64 %11 to i32
  %rem170.i = urem i32 %conv169.i, %13
  br label %div_u64_rem.exit

if.else174.i:                                     ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #17
  %14 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %13, i64 %11) #20, !srcloc !275
  %asmresult.i5.i = extractvalue { i64, i64 } %14, 0
  %shr.i.i = lshr i64 %asmresult.i5.i, 32
  %conv.i.i = trunc i64 %shr.i.i to i32
  br label %div_u64_rem.exit

div_u64_rem.exit:                                 ; preds = %if.else174.i, %if.then168.i
  %__rem.0.i = phi i32 [ %rem170.i, %if.then168.i ], [ %conv.i.i, %if.else174.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__rem.0.i)
  %tobool10.not = icmp eq i32 %__rem.0.i, 0
  br i1 %tobool10.not, label %div_u64_rem.exit.if.end13_crit_edge, label %div_u64_rem.exit.cleanup68_crit_edge

div_u64_rem.exit.cleanup68_crit_edge:             ; preds = %div_u64_rem.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup68

div_u64_rem.exit.if.end13_crit_edge:              ; preds = %div_u64_rem.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end13

if.end13:                                         ; preds = %div_u64_rem.exit.if.end13_crit_edge, %do.end.if.end13_crit_edge
  %15 = ptrtoint ptr %instr to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %instr, align 8
  %conv = trunc i64 %16 to i32
  %len15 = getelementptr inbounds %struct.erase_info, ptr %instr, i32 0, i32 1
  %17 = ptrtoint ptr %len15 to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %len15, align 8
  %conv16 = trunc i64 %18 to i32
  %lock.i = getelementptr inbounds %struct.spi_nor, ptr %mtd, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #15
  %controller_ops.i = getelementptr inbounds %struct.spi_nor, ptr %mtd, i32 0, i32 20
  %19 = ptrtoint ptr %controller_ops.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %controller_ops.i, align 8
  %tobool.not.i114 = icmp eq ptr %20, null
  br i1 %tobool.not.i114, label %if.end13.if.end20_crit_edge, label %land.lhs.true.i

if.end13.if.end20_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end20

land.lhs.true.i:                                  ; preds = %if.end13
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %tobool2.not.i = icmp eq ptr %22, null
  br i1 %tobool2.not.i, label %land.lhs.true.i.if.end20_crit_edge, label %if.then.i115

land.lhs.true.i.if.end20_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end20

if.then.i115:                                     ; preds = %land.lhs.true.i
  %call.i = tail call i32 %22(ptr noundef %mtd) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool5.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool5.not.i, label %if.then.i115.if.end20_crit_edge, label %spi_nor_lock_and_prep.exit

if.then.i115.if.end20_crit_edge:                  ; preds = %if.then.i115
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end20

spi_nor_lock_and_prep.exit:                       ; preds = %if.then.i115
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @mutex_unlock(ptr noundef %lock.i) #15
  br label %cleanup68

if.end20:                                         ; preds = %if.then.i115.if.end20_crit_edge, %land.lhs.true.i.if.end20_crit_edge, %if.end13.if.end20_crit_edge
  %conv21 = and i64 %18, 4294967295
  %size = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 2
  %23 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %conv21, i64 %24)
  %cmp = icmp eq i64 %conv21, %24
  br i1 %cmp, label %land.lhs.true, label %if.end20.if.else_crit_edge

if.end20.if.else_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else

land.lhs.true:                                    ; preds = %if.end20
  %flags = getelementptr inbounds %struct.spi_nor, ptr %mtd, i32 0, i32 17
  %25 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %flags, align 4
  %and = and i32 %26, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool23.not = icmp eq i32 %and, 0
  br i1 %tobool23.not, label %if.then24, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else

if.then24:                                        ; preds = %land.lhs.true
  %call25 = tail call i32 @spi_nor_write_enable(ptr noundef %mtd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end28, label %if.then24.erase_err_crit_edge

if.then24.erase_err_crit_edge:                    ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #17
  br label %erase_err

if.end28:                                         ; preds = %if.then24
  %call29 = tail call fastcc i32 @spi_nor_erase_chip(ptr noundef %mtd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end32, label %if.end28.erase_err_crit_edge

if.end28.erase_err_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #17
  br label %erase_err

if.end32:                                         ; preds = %if.end28
  %27 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %size, align 8
  %div111 = lshr i64 %28, 21
  %conv34 = trunc i64 %div111 to i32
  %mul = mul i32 %conv34, 4000
  %29 = tail call i32 @llvm.umax.i32(i32 %mul, i32 4000)
  %call38 = tail call fastcc i32 @spi_nor_wait_till_ready_with_timeout(ptr noundef %mtd, i32 noundef %29)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end32.if.end66_crit_edge, label %if.end32.erase_err_crit_edge

if.end32.erase_err_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #17
  br label %erase_err

if.end32.if.end66_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end66

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end20.if.else_crit_edge
  %30 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %params.i, align 4
  %uniform_erase_type.i118 = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %31, i32 0, i32 8, i32 3
  %32 = ptrtoint ptr %uniform_erase_type.i118 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %uniform_erase_type.i118, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool.i119.not = icmp eq i8 %33, 0
  br i1 %tobool.i119.not, label %if.else59, label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv16)
  %tobool44.not147 = icmp eq i32 %conv16, 0
  br i1 %tobool44.not147, label %while.cond.preheader.if.end66_crit_edge, label %while.body.lr.ph

while.cond.preheader.if.end66_crit_edge:          ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end66

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %erasesize57 = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 3
  br label %while.body

while.body:                                       ; preds = %if.end56.while.body_crit_edge, %while.body.lr.ph
  %addr.0149 = phi i32 [ %conv, %while.body.lr.ph ], [ %add, %if.end56.while.body_crit_edge ]
  %len.0148 = phi i32 [ %conv16, %while.body.lr.ph ], [ %sub, %if.end56.while.body_crit_edge ]
  %call45 = tail call i32 @spi_nor_write_enable(ptr noundef %mtd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end48, label %while.body.erase_err_crit_edge

while.body.erase_err_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %erase_err

if.end48:                                         ; preds = %while.body
  %call49 = tail call i32 @spi_nor_erase_sector(ptr noundef %mtd, i32 noundef %addr.0149)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.end52, label %if.end48.erase_err_crit_edge

if.end48.erase_err_crit_edge:                     ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #17
  br label %erase_err

if.end52:                                         ; preds = %if.end48
  %call.i120 = tail call fastcc i32 @spi_nor_wait_till_ready_with_timeout(ptr noundef %mtd, i32 noundef 4000) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i120)
  %tobool54.not = icmp eq i32 %call.i120, 0
  br i1 %tobool54.not, label %if.end56, label %if.end52.erase_err_crit_edge

if.end52.erase_err_crit_edge:                     ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #17
  br label %erase_err

if.end56:                                         ; preds = %if.end52
  %34 = ptrtoint ptr %erasesize57 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %erasesize57, align 8
  %add = add i32 %35, %addr.0149
  %sub = sub i32 %len.0148, %35
  %tobool44.not = icmp eq i32 %sub, 0
  br i1 %tobool44.not, label %if.end56.if.end66_crit_edge, label %if.end56.while.body_crit_edge

if.end56.while.body_crit_edge:                    ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body

if.end56.if.end66_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end66

if.else59:                                        ; preds = %if.else
  %conv60 = and i64 %16, 4294967295
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %erase_list.i) #15
  %36 = getelementptr inbounds %struct.list_head, ptr %erase_list.i, i32 0, i32 1
  %37 = ptrtoint ptr %erase_list.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %erase_list.i, ptr %erase_list.i, align 4
  %38 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %erase_list.i, ptr %36, align 4
  %erase_map.i.i = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %31, i32 0, i32 8
  %39 = ptrtoint ptr %erase_map.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %erase_map.i.i, align 8
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %40, align 8
  %and.i.i.i = and i64 %42, -64
  %size.i.i.i = getelementptr inbounds %struct.spi_nor_erase_region, ptr %40, i32 0, i32 1
  %43 = ptrtoint ptr %size.i.i.i to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %size.i.i.i, align 8
  %add.i.i.i = add i64 %and.i.i.i, %44
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i.i.i, i64 %conv60)
  %cmp19.i.i.i = icmp ule i64 %and.i.i.i, %conv60
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i.i.i, i64 %conv60)
  %cmp1.not20.i.i.i = icmp ugt i64 %add.i.i.i, %conv60
  %or.cond21.i.i.i = select i1 %cmp19.i.i.i, i1 %cmp1.not20.i.i.i, i1 false
  br i1 %or.cond21.i.i.i, label %if.else59.spi_nor_find_erase_region.exit.i.i_crit_edge, label %if.else59.while.body.i.i.i_crit_edge

if.else59.while.body.i.i.i_crit_edge:             ; preds = %if.else59
  br label %while.body.i.i.i

if.else59.spi_nor_find_erase_region.exit.i.i_crit_edge: ; preds = %if.else59
  call void @__sanitizer_cov_trace_pc() #17
  br label %spi_nor_find_erase_region.exit.i.i

while.body.i.i.i:                                 ; preds = %if.end.i.i.i.while.body.i.i.i_crit_edge, %if.else59.while.body.i.i.i_crit_edge
  %region.022.i.i.i = phi ptr [ %incdec.ptr.i.i.i.i, %if.end.i.i.i.while.body.i.i.i_crit_edge ], [ %40, %if.else59.while.body.i.i.i_crit_edge ]
  %45 = ptrtoint ptr %region.022.i.i.i to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %region.022.i.i.i, align 8
  %and.i.i.i.i.i = and i64 %46, 16
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i.i.i)
  %tobool.not.i.i.i.i = icmp ne i64 %and.i.i.i.i.i, 0
  %incdec.ptr.i.i.i.i = getelementptr %struct.spi_nor_erase_region, ptr %region.022.i.i.i, i32 1
  %tobool.not18.i.i.i = icmp eq ptr %incdec.ptr.i.i.i.i, null
  %tobool.not.i.i.i = or i1 %tobool.not18.i.i.i, %tobool.not.i.i.i.i
  br i1 %tobool.not.i.i.i, label %while.body.i.i.i.if.then.i.i_crit_edge, label %if.end.i.i.i

while.body.i.i.i.if.then.i.i_crit_edge:           ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i.i

if.end.i.i.i:                                     ; preds = %while.body.i.i.i
  %47 = ptrtoint ptr %incdec.ptr.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %incdec.ptr.i.i.i.i, align 8
  %and4.i.i.i = and i64 %48, -64
  %size5.i.i.i = getelementptr %struct.spi_nor_erase_region, ptr %region.022.i.i.i, i32 1, i32 1
  %49 = ptrtoint ptr %size5.i.i.i to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %size5.i.i.i, align 8
  %add6.i.i.i = add i64 %and4.i.i.i, %50
  call void @__sanitizer_cov_trace_cmp8(i64 %and4.i.i.i, i64 %conv60)
  %cmp.i.i.i = icmp ule i64 %and4.i.i.i, %conv60
  call void @__sanitizer_cov_trace_cmp8(i64 %add6.i.i.i, i64 %conv60)
  %cmp1.not.i.i.i = icmp ugt i64 %add6.i.i.i, %conv60
  %or.cond.i.i.i = select i1 %cmp.i.i.i, i1 %cmp1.not.i.i.i, i1 false
  br i1 %or.cond.i.i.i, label %if.end.i.i.i.spi_nor_find_erase_region.exit.i.i_crit_edge, label %if.end.i.i.i.while.body.i.i.i_crit_edge

if.end.i.i.i.while.body.i.i.i_crit_edge:          ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body.i.i.i

if.end.i.i.i.spi_nor_find_erase_region.exit.i.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %spi_nor_find_erase_region.exit.i.i

spi_nor_find_erase_region.exit.i.i:               ; preds = %if.end.i.i.i.spi_nor_find_erase_region.exit.i.i_crit_edge, %if.else59.spi_nor_find_erase_region.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %40, %if.else59.spi_nor_find_erase_region.exit.i.i_crit_edge ], [ %incdec.ptr.i.i.i.i, %if.end.i.i.i.spi_nor_find_erase_region.exit.i.i_crit_edge ]
  %cmp.i63.i.i = icmp ugt ptr %retval.0.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i63.i.i, label %spi_nor_find_erase_region.exit.i.i.if.then.i.i_crit_edge, label %if.end.i.i

spi_nor_find_erase_region.exit.i.i.if.then.i.i_crit_edge: ; preds = %spi_nor_find_erase_region.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %spi_nor_find_erase_region.exit.i.i.if.then.i.i_crit_edge, %while.body.i.i.i.if.then.i.i_crit_edge
  %retval.0.i87.i.i = phi ptr [ %retval.0.i.i.i, %spi_nor_find_erase_region.exit.i.i.if.then.i.i_crit_edge ], [ inttoptr (i32 -22 to ptr), %while.body.i.i.i.if.then.i.i_crit_edge ]
  %51 = ptrtoint ptr %retval.0.i87.i.i to i32
  br label %spi_nor_init_erase_cmd_list.exit.i

if.end.i.i:                                       ; preds = %spi_nor_find_erase_region.exit.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv16)
  %tobool.not98.i.i = icmp eq i32 %conv16, 0
  br i1 %tobool.not98.i.i, label %if.end.i.i.if.end.i_crit_edge, label %while.body.lr.ph.i.i

if.end.i.i.if.end.i_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

while.body.lr.ph.i.i:                             ; preds = %if.end.i.i
  %52 = ptrtoint ptr %retval.0.i.i.i to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %retval.0.i.i.i, align 8
  %and.i64.i.i = and i64 %53, -64
  %size.i65.i.i = getelementptr inbounds %struct.spi_nor_erase_region, ptr %retval.0.i.i.i, i32 0, i32 1
  %54 = ptrtoint ptr %size.i65.i.i to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %size.i65.i.i, align 8
  %add.i66.i.i = add i64 %and.i64.i.i, %55
  %arrayidx.i.i.i = getelementptr %struct.spi_nor_flash_parameter, ptr %31, i32 0, i32 8, i32 2, i32 3
  %size_mask.i.i.i.i = getelementptr %struct.spi_nor_flash_parameter, ptr %31, i32 0, i32 8, i32 2, i32 3, i32 2
  %arrayidx.1.i.i.i = getelementptr %struct.spi_nor_flash_parameter, ptr %31, i32 0, i32 8, i32 2, i32 2
  %size_mask.i.1.i.i.i = getelementptr %struct.spi_nor_flash_parameter, ptr %31, i32 0, i32 8, i32 2, i32 2, i32 2
  %arrayidx.2.i.i.i = getelementptr %struct.spi_nor_flash_parameter, ptr %31, i32 0, i32 8, i32 2, i32 1
  %size_mask.i.2.i.i.i = getelementptr %struct.spi_nor_flash_parameter, ptr %31, i32 0, i32 8, i32 2, i32 1, i32 2
  %arrayidx.3.i.i.i = getelementptr %struct.spi_nor_flash_parameter, ptr %31, i32 0, i32 8, i32 2
  %size_mask.i.3.i.i.i = getelementptr %struct.spi_nor_flash_parameter, ptr %31, i32 0, i32 8, i32 2, i32 0, i32 2
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %if.end30.i.i.while.body.i.i_crit_edge, %while.body.lr.ph.i.i
  %region_end.0105.i.i = phi i64 [ %add.i66.i.i, %while.body.lr.ph.i.i ], [ %region_end.1.i.i, %if.end30.i.i.while.body.i.i_crit_edge ]
  %cmd.0104.i.i = phi ptr [ null, %while.body.lr.ph.i.i ], [ %cmd.1.i.i, %if.end30.i.i.while.body.i.i_crit_edge ]
  %region.0103.i.i = phi ptr [ %retval.0.i.i.i, %while.body.lr.ph.i.i ], [ %region.1.i.i, %if.end30.i.i.while.body.i.i_crit_edge ]
  %prev_erase.0102.i.i = phi ptr [ null, %while.body.lr.ph.i.i ], [ %retval.0.i70.i.i, %if.end30.i.i.while.body.i.i_crit_edge ]
  %len.addr.0100.i.i = phi i32 [ %conv16, %while.body.lr.ph.i.i ], [ %sub.i.i, %if.end30.i.i.while.body.i.i_crit_edge ]
  %addr.addr.099.i.i = phi i64 [ %conv60, %while.body.lr.ph.i.i ], [ %add.i.i, %if.end30.i.i.while.body.i.i_crit_edge ]
  %56 = ptrtoint ptr %region.0103.i.i to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %region.0103.i.i, align 8
  %58 = trunc i64 %57 to i32
  %size.i67.i.i = getelementptr inbounds %struct.spi_nor_erase_region, ptr %region.0103.i.i, i32 0, i32 1
  %conv.i.i.i.i = trunc i64 %addr.addr.099.i.i to i32
  %and5.i.i.i = and i64 %57, 32
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and5.i.i.i)
  %tobool6.not.i.i.i = icmp eq i64 %and5.i.i.i, 0
  %conv7.i.i.i = zext i32 %len.addr.0100.i.i to i64
  %and3.i.i.i = and i32 %58, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i.i)
  %tobool.not.i68.i.i = icmp eq i32 %and3.i.i.i, 0
  br i1 %tobool.not.i68.i.i, label %while.body.i.i.for.inc.i.i.i_crit_edge, label %if.end.i69.i.i

while.body.i.i.for.inc.i.i.i_crit_edge:           ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i.i.i

if.end.i69.i.i:                                   ; preds = %while.body.i.i
  br i1 %tobool6.not.i.i.i, label %if.end.i69.i.i.if.end11.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.end.i69.i.i.if.end11.i.i.i_crit_edge:          ; preds = %if.end.i69.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end11.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end.i69.i.i
  %59 = ptrtoint ptr %size.i67.i.i to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %size.i67.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %60, i64 %conv7.i.i.i)
  %cmp8.not.i.i.i = icmp ugt i64 %60, %conv7.i.i.i
  br i1 %cmp8.not.i.i.i, label %land.lhs.true.i.i.i.if.end11.i.i.i_crit_edge, label %land.lhs.true.i.i.i.spi_nor_find_best_erase_type.exit.i.i_crit_edge

land.lhs.true.i.i.i.spi_nor_find_best_erase_type.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %spi_nor_find_best_erase_type.exit.i.i

land.lhs.true.i.i.i.if.end11.i.i.i_crit_edge:     ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end11.i.i.i

if.end11.i.i.i:                                   ; preds = %land.lhs.true.i.i.i.if.end11.i.i.i_crit_edge, %if.end.i69.i.i.if.end11.i.i.i_crit_edge
  %61 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %62, i32 %len.addr.0100.i.i)
  %cmp13.i.i.i = icmp ugt i32 %62, %len.addr.0100.i.i
  br i1 %cmp13.i.i.i, label %if.end11.i.i.i.for.inc.i.i.i_crit_edge, label %if.end16.i.i.i

if.end11.i.i.i.for.inc.i.i.i_crit_edge:           ; preds = %if.end11.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i.i.i

if.end16.i.i.i:                                   ; preds = %if.end11.i.i.i
  %63 = ptrtoint ptr %size_mask.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %size_mask.i.i.i.i, align 4
  %and.i.i.i.i = and i32 %64, %conv.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool17.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool17.not.i.i.i, label %if.end16.i.i.i.spi_nor_find_best_erase_type.exit.i.i_crit_edge, label %if.end16.i.i.i.for.inc.i.i.i_crit_edge

if.end16.i.i.i.for.inc.i.i.i_crit_edge:           ; preds = %if.end16.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i.i.i

if.end16.i.i.i.spi_nor_find_best_erase_type.exit.i.i_crit_edge: ; preds = %if.end16.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %spi_nor_find_best_erase_type.exit.i.i

for.inc.i.i.i:                                    ; preds = %if.end16.i.i.i.for.inc.i.i.i_crit_edge, %if.end11.i.i.i.for.inc.i.i.i_crit_edge, %while.body.i.i.for.inc.i.i.i_crit_edge
  %and3.1.i.i.i = and i32 %58, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.1.i.i.i)
  %tobool.not.1.i.i.i = icmp eq i32 %and3.1.i.i.i, 0
  br i1 %tobool.not.1.i.i.i, label %for.inc.i.i.i.for.inc.1.i.i.i_crit_edge, label %if.end.1.i.i.i

for.inc.i.i.i.for.inc.1.i.i.i_crit_edge:          ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.1.i.i.i

if.end.1.i.i.i:                                   ; preds = %for.inc.i.i.i
  br i1 %tobool6.not.i.i.i, label %if.end.1.i.i.i.if.end11.1.i.i.i_crit_edge, label %land.lhs.true.1.i.i.i

if.end.1.i.i.i.if.end11.1.i.i.i_crit_edge:        ; preds = %if.end.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end11.1.i.i.i

land.lhs.true.1.i.i.i:                            ; preds = %if.end.1.i.i.i
  %65 = ptrtoint ptr %size.i67.i.i to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %size.i67.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %66, i64 %conv7.i.i.i)
  %cmp8.not.1.i.i.i = icmp ugt i64 %66, %conv7.i.i.i
  br i1 %cmp8.not.1.i.i.i, label %land.lhs.true.1.i.i.i.if.end11.1.i.i.i_crit_edge, label %land.lhs.true.1.i.i.i.spi_nor_find_best_erase_type.exit.i.i_crit_edge

land.lhs.true.1.i.i.i.spi_nor_find_best_erase_type.exit.i.i_crit_edge: ; preds = %land.lhs.true.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %spi_nor_find_best_erase_type.exit.i.i

land.lhs.true.1.i.i.i.if.end11.1.i.i.i_crit_edge: ; preds = %land.lhs.true.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end11.1.i.i.i

if.end11.1.i.i.i:                                 ; preds = %land.lhs.true.1.i.i.i.if.end11.1.i.i.i_crit_edge, %if.end.1.i.i.i.if.end11.1.i.i.i_crit_edge
  %67 = ptrtoint ptr %arrayidx.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx.1.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %68, i32 %len.addr.0100.i.i)
  %cmp13.1.i.i.i = icmp ugt i32 %68, %len.addr.0100.i.i
  br i1 %cmp13.1.i.i.i, label %if.end11.1.i.i.i.for.inc.1.i.i.i_crit_edge, label %if.end16.1.i.i.i

if.end11.1.i.i.i.for.inc.1.i.i.i_crit_edge:       ; preds = %if.end11.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.1.i.i.i

if.end16.1.i.i.i:                                 ; preds = %if.end11.1.i.i.i
  %69 = ptrtoint ptr %size_mask.i.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %size_mask.i.1.i.i.i, align 4
  %and.i.1.i.i.i = and i32 %70, %conv.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.1.i.i.i)
  %tobool17.not.1.i.i.i = icmp eq i32 %and.i.1.i.i.i, 0
  br i1 %tobool17.not.1.i.i.i, label %if.end16.1.i.i.i.spi_nor_find_best_erase_type.exit.i.i_crit_edge, label %if.end16.1.i.i.i.for.inc.1.i.i.i_crit_edge

if.end16.1.i.i.i.for.inc.1.i.i.i_crit_edge:       ; preds = %if.end16.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.1.i.i.i

if.end16.1.i.i.i.spi_nor_find_best_erase_type.exit.i.i_crit_edge: ; preds = %if.end16.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %spi_nor_find_best_erase_type.exit.i.i

for.inc.1.i.i.i:                                  ; preds = %if.end16.1.i.i.i.for.inc.1.i.i.i_crit_edge, %if.end11.1.i.i.i.for.inc.1.i.i.i_crit_edge, %for.inc.i.i.i.for.inc.1.i.i.i_crit_edge
  %and3.2.i.i.i = and i32 %58, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.2.i.i.i)
  %tobool.not.2.i.i.i = icmp eq i32 %and3.2.i.i.i, 0
  br i1 %tobool.not.2.i.i.i, label %for.inc.1.i.i.i.for.inc.2.i.i.i_crit_edge, label %if.end.2.i.i.i

for.inc.1.i.i.i.for.inc.2.i.i.i_crit_edge:        ; preds = %for.inc.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.2.i.i.i

if.end.2.i.i.i:                                   ; preds = %for.inc.1.i.i.i
  br i1 %tobool6.not.i.i.i, label %if.end.2.i.i.i.if.end11.2.i.i.i_crit_edge, label %land.lhs.true.2.i.i.i

if.end.2.i.i.i.if.end11.2.i.i.i_crit_edge:        ; preds = %if.end.2.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end11.2.i.i.i

land.lhs.true.2.i.i.i:                            ; preds = %if.end.2.i.i.i
  %71 = ptrtoint ptr %size.i67.i.i to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %size.i67.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %72, i64 %conv7.i.i.i)
  %cmp8.not.2.i.i.i = icmp ugt i64 %72, %conv7.i.i.i
  br i1 %cmp8.not.2.i.i.i, label %land.lhs.true.2.i.i.i.if.end11.2.i.i.i_crit_edge, label %land.lhs.true.2.i.i.i.spi_nor_find_best_erase_type.exit.i.i_crit_edge

land.lhs.true.2.i.i.i.spi_nor_find_best_erase_type.exit.i.i_crit_edge: ; preds = %land.lhs.true.2.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %spi_nor_find_best_erase_type.exit.i.i

land.lhs.true.2.i.i.i.if.end11.2.i.i.i_crit_edge: ; preds = %land.lhs.true.2.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end11.2.i.i.i

if.end11.2.i.i.i:                                 ; preds = %land.lhs.true.2.i.i.i.if.end11.2.i.i.i_crit_edge, %if.end.2.i.i.i.if.end11.2.i.i.i_crit_edge
  %73 = ptrtoint ptr %arrayidx.2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx.2.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %74, i32 %len.addr.0100.i.i)
  %cmp13.2.i.i.i = icmp ugt i32 %74, %len.addr.0100.i.i
  br i1 %cmp13.2.i.i.i, label %if.end11.2.i.i.i.for.inc.2.i.i.i_crit_edge, label %if.end16.2.i.i.i

if.end11.2.i.i.i.for.inc.2.i.i.i_crit_edge:       ; preds = %if.end11.2.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.2.i.i.i

if.end16.2.i.i.i:                                 ; preds = %if.end11.2.i.i.i
  %75 = ptrtoint ptr %size_mask.i.2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %size_mask.i.2.i.i.i, align 4
  %and.i.2.i.i.i = and i32 %76, %conv.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.2.i.i.i)
  %tobool17.not.2.i.i.i = icmp eq i32 %and.i.2.i.i.i, 0
  br i1 %tobool17.not.2.i.i.i, label %if.end16.2.i.i.i.spi_nor_find_best_erase_type.exit.i.i_crit_edge, label %if.end16.2.i.i.i.for.inc.2.i.i.i_crit_edge

if.end16.2.i.i.i.for.inc.2.i.i.i_crit_edge:       ; preds = %if.end16.2.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.2.i.i.i

if.end16.2.i.i.i.spi_nor_find_best_erase_type.exit.i.i_crit_edge: ; preds = %if.end16.2.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %spi_nor_find_best_erase_type.exit.i.i

for.inc.2.i.i.i:                                  ; preds = %if.end16.2.i.i.i.for.inc.2.i.i.i_crit_edge, %if.end11.2.i.i.i.for.inc.2.i.i.i_crit_edge, %for.inc.1.i.i.i.for.inc.2.i.i.i_crit_edge
  %and3.3.i.i.i = and i32 %58, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.3.i.i.i)
  %tobool.not.3.i.i.i = icmp eq i32 %and3.3.i.i.i, 0
  br i1 %tobool.not.3.i.i.i, label %for.inc.2.i.i.i.destroy_erase_cmd_list.i.i_crit_edge, label %if.end.3.i.i.i

for.inc.2.i.i.i.destroy_erase_cmd_list.i.i_crit_edge: ; preds = %for.inc.2.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %destroy_erase_cmd_list.i.i

if.end.3.i.i.i:                                   ; preds = %for.inc.2.i.i.i
  br i1 %tobool6.not.i.i.i, label %if.end.3.i.i.i.if.end11.3.i.i.i_crit_edge, label %land.lhs.true.3.i.i.i

if.end.3.i.i.i.if.end11.3.i.i.i_crit_edge:        ; preds = %if.end.3.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end11.3.i.i.i

land.lhs.true.3.i.i.i:                            ; preds = %if.end.3.i.i.i
  %77 = ptrtoint ptr %size.i67.i.i to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %size.i67.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %78, i64 %conv7.i.i.i)
  %cmp8.not.3.i.i.i = icmp ugt i64 %78, %conv7.i.i.i
  br i1 %cmp8.not.3.i.i.i, label %land.lhs.true.3.i.i.i.if.end11.3.i.i.i_crit_edge, label %land.lhs.true.3.i.i.i.spi_nor_find_best_erase_type.exit.i.i_crit_edge

land.lhs.true.3.i.i.i.spi_nor_find_best_erase_type.exit.i.i_crit_edge: ; preds = %land.lhs.true.3.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %spi_nor_find_best_erase_type.exit.i.i

land.lhs.true.3.i.i.i.if.end11.3.i.i.i_crit_edge: ; preds = %land.lhs.true.3.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end11.3.i.i.i

if.end11.3.i.i.i:                                 ; preds = %land.lhs.true.3.i.i.i.if.end11.3.i.i.i_crit_edge, %if.end.3.i.i.i.if.end11.3.i.i.i_crit_edge
  %79 = ptrtoint ptr %arrayidx.3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %arrayidx.3.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %80, i32 %len.addr.0100.i.i)
  %cmp13.3.i.i.i = icmp ugt i32 %80, %len.addr.0100.i.i
  br i1 %cmp13.3.i.i.i, label %if.end11.3.i.i.i.destroy_erase_cmd_list.i.i_crit_edge, label %if.end16.3.i.i.i

if.end11.3.i.i.i.destroy_erase_cmd_list.i.i_crit_edge: ; preds = %if.end11.3.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %destroy_erase_cmd_list.i.i

if.end16.3.i.i.i:                                 ; preds = %if.end11.3.i.i.i
  %81 = ptrtoint ptr %size_mask.i.3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %size_mask.i.3.i.i.i, align 4
  %and.i.3.i.i.i = and i32 %82, %conv.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.3.i.i.i)
  %tobool17.not.3.i.i.i = icmp eq i32 %and.i.3.i.i.i, 0
  br i1 %tobool17.not.3.i.i.i, label %if.end16.3.i.i.i.spi_nor_find_best_erase_type.exit.i.i_crit_edge, label %if.end16.3.i.i.i.destroy_erase_cmd_list.i.i_crit_edge

if.end16.3.i.i.i.destroy_erase_cmd_list.i.i_crit_edge: ; preds = %if.end16.3.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %destroy_erase_cmd_list.i.i

if.end16.3.i.i.i.spi_nor_find_best_erase_type.exit.i.i_crit_edge: ; preds = %if.end16.3.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %spi_nor_find_best_erase_type.exit.i.i

spi_nor_find_best_erase_type.exit.i.i:            ; preds = %if.end16.3.i.i.i.spi_nor_find_best_erase_type.exit.i.i_crit_edge, %land.lhs.true.3.i.i.i.spi_nor_find_best_erase_type.exit.i.i_crit_edge, %if.end16.2.i.i.i.spi_nor_find_best_erase_type.exit.i.i_crit_edge, %land.lhs.true.2.i.i.i.spi_nor_find_best_erase_type.exit.i.i_crit_edge, %if.end16.1.i.i.i.spi_nor_find_best_erase_type.exit.i.i_crit_edge, %land.lhs.true.1.i.i.i.spi_nor_find_best_erase_type.exit.i.i_crit_edge, %if.end16.i.i.i.spi_nor_find_best_erase_type.exit.i.i_crit_edge, %land.lhs.true.i.i.i.spi_nor_find_best_erase_type.exit.i.i_crit_edge
  %retval.0.i70.i.i = phi ptr [ %arrayidx.i.i.i, %land.lhs.true.i.i.i.spi_nor_find_best_erase_type.exit.i.i_crit_edge ], [ %arrayidx.i.i.i, %if.end16.i.i.i.spi_nor_find_best_erase_type.exit.i.i_crit_edge ], [ %arrayidx.1.i.i.i, %land.lhs.true.1.i.i.i.spi_nor_find_best_erase_type.exit.i.i_crit_edge ], [ %arrayidx.1.i.i.i, %if.end16.1.i.i.i.spi_nor_find_best_erase_type.exit.i.i_crit_edge ], [ %arrayidx.2.i.i.i, %land.lhs.true.2.i.i.i.spi_nor_find_best_erase_type.exit.i.i_crit_edge ], [ %arrayidx.2.i.i.i, %if.end16.2.i.i.i.spi_nor_find_best_erase_type.exit.i.i_crit_edge ], [ %arrayidx.3.i.i.i, %land.lhs.true.3.i.i.i.spi_nor_find_best_erase_type.exit.i.i_crit_edge ], [ %arrayidx.3.i.i.i, %if.end16.3.i.i.i.spi_nor_find_best_erase_type.exit.i.i_crit_edge ]
  %tobool5.not.i.i = icmp eq ptr %retval.0.i70.i.i, null
  br i1 %tobool5.not.i.i, label %spi_nor_find_best_erase_type.exit.i.i.destroy_erase_cmd_list.i.i_crit_edge, label %if.end7.i.i

spi_nor_find_best_erase_type.exit.i.i.destroy_erase_cmd_list.i.i_crit_edge: ; preds = %spi_nor_find_best_erase_type.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %destroy_erase_cmd_list.i.i

if.end7.i.i:                                      ; preds = %spi_nor_find_best_erase_type.exit.i.i
  %cmp.not.i.i121 = icmp eq ptr %prev_erase.0102.i.i, %retval.0.i70.i.i
  br i1 %cmp.not.i.i121, label %lor.lhs.false.i.i, label %if.end7.i.i.if.then12.i.i_crit_edge

if.end7.i.i.if.then12.i.i_crit_edge:              ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then12.i.i

lor.lhs.false.i.i:                                ; preds = %if.end7.i.i
  %83 = ptrtoint ptr %prev_erase.0102.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %prev_erase.0102.i.i, align 4
  %size8.i.i = getelementptr inbounds %struct.spi_nor_erase_command, ptr %cmd.0104.i.i, i32 0, i32 2
  %85 = ptrtoint ptr %size8.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %size8.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %84, i32 %86)
  %cmp9.not.i.i = icmp ne i32 %84, %86
  %tobool6.not.i.not.i.i = xor i1 %tobool6.not.i.i.i, true
  %brmerge.i.i = select i1 %cmp9.not.i.i, i1 true, i1 %tobool6.not.i.not.i.i
  br i1 %brmerge.i.i, label %lor.lhs.false.i.i.if.then12.i.i_crit_edge, label %if.else.i.i122

lor.lhs.false.i.i.if.then12.i.i_crit_edge:        ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then12.i.i

if.then12.i.i:                                    ; preds = %lor.lhs.false.i.i.if.then12.i.i_crit_edge, %if.end7.i.i.if.then12.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %87 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %87, i32 noundef 3264, i32 noundef 20) #21
  %tobool.not.i71.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i71.i.i, label %if.then12.i.i.if.then15.i.i_crit_edge, label %if.end.i73.i.i

if.then12.i.i.if.then15.i.i_crit_edge:            ; preds = %if.then12.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then15.i.i

if.end.i73.i.i:                                   ; preds = %if.then12.i.i
  %88 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store volatile ptr %call7.i.i.i.i, ptr %call7.i.i.i.i, align 8
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i.i, i32 0, i32 1
  %89 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %call7.i.i.i.i, ptr %prev.i.i.i.i, align 4
  %opcode.i.i.i = getelementptr inbounds %struct.spi_nor_erase_type, ptr %retval.0.i70.i.i, i32 0, i32 3
  %90 = ptrtoint ptr %opcode.i.i.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %opcode.i.i.i, align 4
  %opcode2.i.i.i = getelementptr inbounds %struct.spi_nor_erase_command, ptr %call7.i.i.i.i, i32 0, i32 3
  %92 = ptrtoint ptr %opcode2.i.i.i to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %91, ptr %opcode2.i.i.i, align 8
  %count.i.i.i = getelementptr inbounds %struct.spi_nor_erase_command, ptr %call7.i.i.i.i, i32 0, i32 1
  %93 = ptrtoint ptr %count.i.i.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 1, ptr %count.i.i.i, align 8
  %94 = ptrtoint ptr %region.0103.i.i to i32
  call void @__asan_load8_noabort(i32 %94)
  %95 = load i64, ptr %region.0103.i.i, align 8
  %and.i72.i.i = and i64 %95, 32
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i72.i.i)
  %tobool3.not.i.i.i = icmp eq i64 %and.i72.i.i, 0
  br i1 %tobool3.not.i.i.i, label %if.else.i.i.i, label %if.then4.i.i.i

if.then4.i.i.i:                                   ; preds = %if.end.i73.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %96 = ptrtoint ptr %size.i67.i.i to i32
  call void @__asan_load8_noabort(i32 %96)
  %97 = load i64, ptr %size.i67.i.i, align 8
  %conv.i.i.i = trunc i64 %97 to i32
  br label %spi_nor_init_erase_cmd.exit.i.i

if.else.i.i.i:                                    ; preds = %if.end.i73.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %98 = ptrtoint ptr %retval.0.i70.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %retval.0.i70.i.i, align 4
  br label %spi_nor_init_erase_cmd.exit.i.i

spi_nor_init_erase_cmd.exit.i.i:                  ; preds = %if.else.i.i.i, %if.then4.i.i.i
  %conv.sink.i.i.i = phi i32 [ %conv.i.i.i, %if.then4.i.i.i ], [ %99, %if.else.i.i.i ]
  %size5.i75.i.i = getelementptr inbounds %struct.spi_nor_erase_command, ptr %call7.i.i.i.i, i32 0, i32 2
  %100 = ptrtoint ptr %size5.i75.i.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %conv.sink.i.i.i, ptr %size5.i75.i.i, align 4
  %cmp.i77.i.i = icmp ugt ptr %call7.i.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i77.i.i, label %spi_nor_init_erase_cmd.exit.i.i.if.then15.i.i_crit_edge, label %if.end17.i.i

spi_nor_init_erase_cmd.exit.i.i.if.then15.i.i_crit_edge: ; preds = %spi_nor_init_erase_cmd.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then15.i.i

if.then15.i.i:                                    ; preds = %spi_nor_init_erase_cmd.exit.i.i.if.then15.i.i_crit_edge, %if.then12.i.i.if.then15.i.i_crit_edge
  %retval.0.i7694.i.i = phi ptr [ %call7.i.i.i.i, %spi_nor_init_erase_cmd.exit.i.i.if.then15.i.i_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.then12.i.i.if.then15.i.i_crit_edge ]
  %101 = ptrtoint ptr %retval.0.i7694.i.i to i32
  br label %destroy_erase_cmd_list.i.i

if.end17.i.i:                                     ; preds = %spi_nor_init_erase_cmd.exit.i.i
  %102 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %36, align 4
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i.i, ptr noundef %103, ptr noundef nonnull %erase_list.i) #15
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end17.i.i.if.end18.i.i_crit_edge

if.end17.i.i.if.end18.i.i_crit_edge:              ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end18.i.i

if.end.i.i.i.i:                                   ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %104 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %call7.i.i.i.i, ptr %36, align 4
  %105 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %erase_list.i, ptr %call7.i.i.i.i, align 8
  %106 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %103, ptr %prev.i.i.i.i, align 4
  %107 = ptrtoint ptr %103 to i32
  call void @__asan_store4_noabort(i32 %107)
  store volatile ptr %call7.i.i.i.i, ptr %103, align 4
  br label %if.end18.i.i

if.else.i.i122:                                   ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %count.i.i = getelementptr inbounds %struct.spi_nor_erase_command, ptr %cmd.0104.i.i, i32 0, i32 1
  %108 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %count.i.i, align 4
  %inc.i.i = add i32 %109, 1
  store i32 %inc.i.i, ptr %count.i.i, align 4
  br label %if.end18.i.i

if.end18.i.i:                                     ; preds = %if.else.i.i122, %if.end.i.i.i.i, %if.end17.i.i.if.end18.i.i_crit_edge
  %cmd.1.i.i = phi ptr [ %cmd.0104.i.i, %if.else.i.i122 ], [ %call7.i.i.i.i, %if.end17.i.i.if.end18.i.i_crit_edge ], [ %call7.i.i.i.i, %if.end.i.i.i.i ]
  %size19.i.i = getelementptr inbounds %struct.spi_nor_erase_command, ptr %cmd.1.i.i, i32 0, i32 2
  %110 = ptrtoint ptr %size19.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %size19.i.i, align 4
  %conv.i.i123 = zext i32 %111 to i64
  %add.i.i = add i64 %addr.addr.099.i.i, %conv.i.i123
  %sub.i.i = sub i32 %len.addr.0100.i.i, %111
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %tobool21.not.i.i = icmp eq i32 %sub.i.i, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i.i, i64 %region_end.0105.i.i)
  %cmp22.not.i.i = icmp ult i64 %add.i.i, %region_end.0105.i.i
  %or.cond.i.i = select i1 %tobool21.not.i.i, i1 true, i1 %cmp22.not.i.i
  br i1 %or.cond.i.i, label %if.end18.i.i.if.end30.i.i_crit_edge, label %if.then24.i.i

if.end18.i.i.if.end30.i.i_crit_edge:              ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end30.i.i

if.then24.i.i:                                    ; preds = %if.end18.i.i
  %112 = ptrtoint ptr %region.0103.i.i to i32
  call void @__asan_load8_noabort(i32 %112)
  %113 = load i64, ptr %region.0103.i.i, align 8
  %and.i.i78.i.i = and i64 %113, 16
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i78.i.i)
  %tobool.not.i79.i.i = icmp ne i64 %and.i.i78.i.i, 0
  %incdec.ptr.i.i.i = getelementptr %struct.spi_nor_erase_region, ptr %region.0103.i.i, i32 1
  %tobool26.not95.i.i = icmp eq ptr %incdec.ptr.i.i.i, null
  %tobool26.not.i.i = or i1 %tobool26.not95.i.i, %tobool.not.i79.i.i
  br i1 %tobool26.not.i.i, label %if.then24.i.i.destroy_erase_cmd_list.i.i_crit_edge, label %if.end28.i.i

if.then24.i.i.destroy_erase_cmd_list.i.i_crit_edge: ; preds = %if.then24.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %destroy_erase_cmd_list.i.i

if.end28.i.i:                                     ; preds = %if.then24.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %114 = ptrtoint ptr %incdec.ptr.i.i.i to i32
  call void @__asan_load8_noabort(i32 %114)
  %115 = load i64, ptr %incdec.ptr.i.i.i, align 8
  %and.i81.i.i = and i64 %115, -64
  %size.i82.i.i = getelementptr %struct.spi_nor_erase_region, ptr %region.0103.i.i, i32 1, i32 1
  %116 = ptrtoint ptr %size.i82.i.i to i32
  call void @__asan_load8_noabort(i32 %116)
  %117 = load i64, ptr %size.i82.i.i, align 8
  %add.i83.i.i = add i64 %and.i81.i.i, %117
  br label %if.end30.i.i

if.end30.i.i:                                     ; preds = %if.end28.i.i, %if.end18.i.i.if.end30.i.i_crit_edge
  %region.1.i.i = phi ptr [ %incdec.ptr.i.i.i, %if.end28.i.i ], [ %region.0103.i.i, %if.end18.i.i.if.end30.i.i_crit_edge ]
  %region_end.1.i.i = phi i64 [ %add.i83.i.i, %if.end28.i.i ], [ %region_end.0105.i.i, %if.end18.i.i.if.end30.i.i_crit_edge ]
  br i1 %tobool21.not.i.i, label %if.end30.i.i.if.end.i_crit_edge, label %if.end30.i.i.while.body.i.i_crit_edge

if.end30.i.i.while.body.i.i_crit_edge:            ; preds = %if.end30.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body.i.i

if.end30.i.i.if.end.i_crit_edge:                  ; preds = %if.end30.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

destroy_erase_cmd_list.i.i:                       ; preds = %if.then24.i.i.destroy_erase_cmd_list.i.i_crit_edge, %if.then15.i.i, %spi_nor_find_best_erase_type.exit.i.i.destroy_erase_cmd_list.i.i_crit_edge, %if.end16.3.i.i.i.destroy_erase_cmd_list.i.i_crit_edge, %if.end11.3.i.i.i.destroy_erase_cmd_list.i.i_crit_edge, %for.inc.2.i.i.i.destroy_erase_cmd_list.i.i_crit_edge
  %ret.0.i.i = phi i32 [ %101, %if.then15.i.i ], [ -22, %for.inc.2.i.i.i.destroy_erase_cmd_list.i.i_crit_edge ], [ -22, %if.end11.3.i.i.i.destroy_erase_cmd_list.i.i_crit_edge ], [ -22, %if.end16.3.i.i.i.destroy_erase_cmd_list.i.i_crit_edge ], [ -22, %spi_nor_find_best_erase_type.exit.i.i.destroy_erase_cmd_list.i.i_crit_edge ], [ -22, %if.then24.i.i.destroy_erase_cmd_list.i.i_crit_edge ]
  %118 = ptrtoint ptr %erase_list.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %erase_list.i, align 4
  %cmp.not18.i.i.i = icmp eq ptr %119, %erase_list.i
  br i1 %cmp.not18.i.i.i, label %destroy_erase_cmd_list.i.i.spi_nor_init_erase_cmd_list.exit.i_crit_edge, label %destroy_erase_cmd_list.i.i.for.body.i.i.i_crit_edge

destroy_erase_cmd_list.i.i.for.body.i.i.i_crit_edge: ; preds = %destroy_erase_cmd_list.i.i
  br label %for.body.i.i.i

destroy_erase_cmd_list.i.i.spi_nor_init_erase_cmd_list.exit.i_crit_edge: ; preds = %destroy_erase_cmd_list.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %spi_nor_init_erase_cmd_list.exit.i

for.body.i.i.i:                                   ; preds = %list_del.exit.i.i.i.for.body.i.i.i_crit_edge, %destroy_erase_cmd_list.i.i.for.body.i.i.i_crit_edge
  %cmd.019.i.i.i = phi ptr [ %next.0.i.i.i, %list_del.exit.i.i.i.for.body.i.i.i_crit_edge ], [ %119, %destroy_erase_cmd_list.i.i.for.body.i.i.i_crit_edge ]
  %120 = ptrtoint ptr %cmd.019.i.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %next.0.i.i.i = load ptr, ptr %cmd.019.i.i.i, align 4
  %call.i.i.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %cmd.019.i.i.i) #15
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %for.body.i.i.i.list_del.exit.i.i.i_crit_edge

for.body.i.i.i.list_del.exit.i.i.i_crit_edge:     ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del.exit.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %cmd.019.i.i.i, i32 0, i32 1
  %121 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %prev.i.i.i.i.i, align 4
  %123 = ptrtoint ptr %cmd.019.i.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %cmd.019.i.i.i, align 4
  %prev1.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %124, i32 0, i32 1
  %125 = ptrtoint ptr %prev1.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr %122, ptr %prev1.i.i.i.i.i.i, align 4
  %126 = ptrtoint ptr %122 to i32
  call void @__asan_store4_noabort(i32 %126)
  store volatile ptr %124, ptr %122, align 4
  br label %list_del.exit.i.i.i

list_del.exit.i.i.i:                              ; preds = %if.end.i.i.i.i.i, %for.body.i.i.i.list_del.exit.i.i.i_crit_edge
  %127 = ptrtoint ptr %cmd.019.i.i.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr inttoptr (i32 256 to ptr), ptr %cmd.019.i.i.i, align 4
  %prev.i.i84.i.i = getelementptr inbounds %struct.list_head, ptr %cmd.019.i.i.i, i32 0, i32 1
  %128 = ptrtoint ptr %prev.i.i84.i.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i84.i.i, align 4
  call void @kfree(ptr noundef %cmd.019.i.i.i) #15
  %cmp.not.i.i.i = icmp eq ptr %next.0.i.i.i, %erase_list.i
  br i1 %cmp.not.i.i.i, label %list_del.exit.i.i.i.spi_nor_init_erase_cmd_list.exit.i_crit_edge, label %list_del.exit.i.i.i.for.body.i.i.i_crit_edge

list_del.exit.i.i.i.for.body.i.i.i_crit_edge:     ; preds = %list_del.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i.i.i

list_del.exit.i.i.i.spi_nor_init_erase_cmd_list.exit.i_crit_edge: ; preds = %list_del.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %spi_nor_init_erase_cmd_list.exit.i

spi_nor_init_erase_cmd_list.exit.i:               ; preds = %list_del.exit.i.i.i.spi_nor_init_erase_cmd_list.exit.i_crit_edge, %destroy_erase_cmd_list.i.i.spi_nor_init_erase_cmd_list.exit.i_crit_edge, %if.then.i.i
  %retval.0.i.i = phi i32 [ %51, %if.then.i.i ], [ %ret.0.i.i, %destroy_erase_cmd_list.i.i.spi_nor_init_erase_cmd_list.exit.i_crit_edge ], [ %ret.0.i.i, %list_del.exit.i.i.i.spi_nor_init_erase_cmd_list.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %tobool.not.i124 = icmp eq i32 %retval.0.i.i, 0
  br i1 %tobool.not.i124, label %spi_nor_init_erase_cmd_list.exit.i.if.end.i_crit_edge, label %spi_nor_init_erase_cmd_list.exit.i.spi_nor_erase_multi_sectors.exit.thread143_crit_edge

spi_nor_init_erase_cmd_list.exit.i.spi_nor_erase_multi_sectors.exit.thread143_crit_edge: ; preds = %spi_nor_init_erase_cmd_list.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %spi_nor_erase_multi_sectors.exit.thread143

spi_nor_init_erase_cmd_list.exit.i.if.end.i_crit_edge: ; preds = %spi_nor_init_erase_cmd_list.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

if.end.i:                                         ; preds = %spi_nor_init_erase_cmd_list.exit.i.if.end.i_crit_edge, %if.end30.i.i.if.end.i_crit_edge, %if.end.i.i.if.end.i_crit_edge
  %129 = ptrtoint ptr %erase_list.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %erase_list.i, align 4
  %cmp.not66.i = icmp eq ptr %130, %erase_list.i
  br i1 %cmp.not66.i, label %if.end.i.spi_nor_erase_multi_sectors.exit.thread_crit_edge, label %for.body.lr.ph.i

if.end.i.spi_nor_erase_multi_sectors.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %spi_nor_erase_multi_sectors.exit.thread

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %erase_opcode.i = getelementptr inbounds %struct.spi_nor, ptr %mtd, i32 0, i32 9
  br label %for.body.i

for.body.i:                                       ; preds = %list_del.exit.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %addr.addr.069.i = phi i64 [ %conv60, %for.body.lr.ph.i ], [ %addr.addr.1.lcssa.i, %list_del.exit.i.for.body.i_crit_edge ]
  %cmd.067.i = phi ptr [ %130, %for.body.lr.ph.i ], [ %next1.070.i, %list_del.exit.i.for.body.i_crit_edge ]
  %131 = ptrtoint ptr %cmd.067.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %next1.070.i = load ptr, ptr %cmd.067.i, align 4
  %opcode.i = getelementptr inbounds %struct.spi_nor_erase_command, ptr %cmd.067.i, i32 0, i32 3
  %132 = ptrtoint ptr %opcode.i to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %opcode.i, align 4
  %134 = ptrtoint ptr %erase_opcode.i to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 %133, ptr %erase_opcode.i, align 1
  %count.i = getelementptr inbounds %struct.spi_nor_erase_command, ptr %cmd.067.i, i32 0, i32 1
  %135 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %136)
  %tobool8.not63.i = icmp eq i32 %136, 0
  br i1 %tobool8.not63.i, label %for.body.i.while.end.i_crit_edge, label %while.body.lr.ph.i

for.body.i.while.end.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end.i

while.body.lr.ph.i:                               ; preds = %for.body.i
  %size.i = getelementptr inbounds %struct.spi_nor_erase_command, ptr %cmd.067.i, i32 0, i32 2
  br label %while.body.i

while.body.i:                                     ; preds = %if.end20.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %addr.addr.164.i = phi i64 [ %addr.addr.069.i, %while.body.lr.ph.i ], [ %add.i125, %if.end20.i.while.body.i_crit_edge ]
  %call9.i = call i32 @spi_nor_write_enable(ptr noundef %mtd) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %if.end12.i, label %while.body.i.destroy_erase_cmd_list.i_crit_edge

while.body.i.destroy_erase_cmd_list.i_crit_edge:  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %destroy_erase_cmd_list.i

if.end12.i:                                       ; preds = %while.body.i
  %conv.i = trunc i64 %addr.addr.164.i to i32
  %call13.i = call i32 @spi_nor_erase_sector(ptr noundef %mtd, i32 noundef %conv.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %if.end16.i, label %if.end12.i.destroy_erase_cmd_list.i_crit_edge

if.end12.i.destroy_erase_cmd_list.i_crit_edge:    ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %destroy_erase_cmd_list.i

if.end16.i:                                       ; preds = %if.end12.i
  %call.i.i = call fastcc i32 @spi_nor_wait_till_ready_with_timeout(ptr noundef %mtd, i32 noundef 4000) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool18.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool18.not.i, label %if.end20.i, label %if.end16.i.destroy_erase_cmd_list.i_crit_edge

if.end16.i.destroy_erase_cmd_list.i_crit_edge:    ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %destroy_erase_cmd_list.i

if.end20.i:                                       ; preds = %if.end16.i
  %137 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %size.i, align 4
  %conv21.i = zext i32 %138 to i64
  %add.i125 = add i64 %addr.addr.164.i, %conv21.i
  %139 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %count.i, align 4
  %dec.i = add i32 %140, -1
  store i32 %dec.i, ptr %count.i, align 4
  %tobool8.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool8.not.i, label %if.end20.i.while.end.i_crit_edge, label %if.end20.i.while.body.i_crit_edge

if.end20.i.while.body.i_crit_edge:                ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body.i

if.end20.i.while.end.i_crit_edge:                 ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end.i

while.end.i:                                      ; preds = %if.end20.i.while.end.i_crit_edge, %for.body.i.while.end.i_crit_edge
  %addr.addr.1.lcssa.i = phi i64 [ %addr.addr.069.i, %for.body.i.while.end.i_crit_edge ], [ %add.i125, %if.end20.i.while.end.i_crit_edge ]
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %cmd.067.i) #15
  br i1 %call.i.i.i, label %if.end.i.i52.i, label %while.end.i.list_del.exit.i_crit_edge

while.end.i.list_del.exit.i_crit_edge:            ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del.exit.i

if.end.i.i52.i:                                   ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i51.i = getelementptr inbounds %struct.list_head, ptr %cmd.067.i, i32 0, i32 1
  %141 = ptrtoint ptr %prev.i.i51.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %prev.i.i51.i, align 4
  %143 = ptrtoint ptr %cmd.067.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %cmd.067.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %144, i32 0, i32 1
  %145 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr %142, ptr %prev1.i.i.i.i, align 4
  %146 = ptrtoint ptr %142 to i32
  call void @__asan_store4_noabort(i32 %146)
  store volatile ptr %144, ptr %142, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i52.i, %while.end.i.list_del.exit.i_crit_edge
  %147 = ptrtoint ptr %cmd.067.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr inttoptr (i32 256 to ptr), ptr %cmd.067.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %cmd.067.i, i32 0, i32 1
  %148 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  call void @kfree(ptr noundef %cmd.067.i) #15
  %cmp.not.i = icmp eq ptr %next1.070.i, %erase_list.i
  br i1 %cmp.not.i, label %list_del.exit.i.spi_nor_erase_multi_sectors.exit.thread_crit_edge, label %list_del.exit.i.for.body.i_crit_edge

list_del.exit.i.for.body.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

list_del.exit.i.spi_nor_erase_multi_sectors.exit.thread_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %spi_nor_erase_multi_sectors.exit.thread

destroy_erase_cmd_list.i:                         ; preds = %if.end16.i.destroy_erase_cmd_list.i_crit_edge, %if.end12.i.destroy_erase_cmd_list.i_crit_edge, %while.body.i.destroy_erase_cmd_list.i_crit_edge
  %ret.0.i = phi i32 [ %call9.i, %while.body.i.destroy_erase_cmd_list.i_crit_edge ], [ %call13.i, %if.end12.i.destroy_erase_cmd_list.i_crit_edge ], [ %call.i.i, %if.end16.i.destroy_erase_cmd_list.i_crit_edge ]
  %149 = ptrtoint ptr %erase_list.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %erase_list.i, align 4
  %cmp.not18.i.i = icmp eq ptr %150, %erase_list.i
  br i1 %cmp.not18.i.i, label %destroy_erase_cmd_list.i.spi_nor_erase_multi_sectors.exit.thread143_crit_edge, label %destroy_erase_cmd_list.i.for.body.i.i_crit_edge

destroy_erase_cmd_list.i.for.body.i.i_crit_edge:  ; preds = %destroy_erase_cmd_list.i
  br label %for.body.i.i

destroy_erase_cmd_list.i.spi_nor_erase_multi_sectors.exit.thread143_crit_edge: ; preds = %destroy_erase_cmd_list.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %spi_nor_erase_multi_sectors.exit.thread143

for.body.i.i:                                     ; preds = %list_del.exit.i.i.for.body.i.i_crit_edge, %destroy_erase_cmd_list.i.for.body.i.i_crit_edge
  %cmd.019.i.i = phi ptr [ %next.0.i.i, %list_del.exit.i.i.for.body.i.i_crit_edge ], [ %150, %destroy_erase_cmd_list.i.for.body.i.i_crit_edge ]
  %151 = ptrtoint ptr %cmd.019.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %next.0.i.i = load ptr, ptr %cmd.019.i.i, align 4
  %call.i.i.i53.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %cmd.019.i.i) #15
  br i1 %call.i.i.i53.i, label %if.end.i.i.i55.i, label %for.body.i.i.list_del.exit.i.i_crit_edge

for.body.i.i.list_del.exit.i.i_crit_edge:         ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del.exit.i.i

if.end.i.i.i55.i:                                 ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i.i54.i = getelementptr inbounds %struct.list_head, ptr %cmd.019.i.i, i32 0, i32 1
  %152 = ptrtoint ptr %prev.i.i.i54.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %prev.i.i.i54.i, align 4
  %154 = ptrtoint ptr %cmd.019.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %cmd.019.i.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %155, i32 0, i32 1
  %156 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store ptr %153, ptr %prev1.i.i.i.i.i, align 4
  %157 = ptrtoint ptr %153 to i32
  call void @__asan_store4_noabort(i32 %157)
  store volatile ptr %155, ptr %153, align 4
  br label %list_del.exit.i.i

list_del.exit.i.i:                                ; preds = %if.end.i.i.i55.i, %for.body.i.i.list_del.exit.i.i_crit_edge
  %158 = ptrtoint ptr %cmd.019.i.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store ptr inttoptr (i32 256 to ptr), ptr %cmd.019.i.i, align 4
  %prev.i.i56.i = getelementptr inbounds %struct.list_head, ptr %cmd.019.i.i, i32 0, i32 1
  %159 = ptrtoint ptr %prev.i.i56.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i56.i, align 4
  call void @kfree(ptr noundef %cmd.019.i.i) #15
  %cmp.not.i57.i = icmp eq ptr %next.0.i.i, %erase_list.i
  br i1 %cmp.not.i57.i, label %spi_nor_erase_multi_sectors.exit, label %list_del.exit.i.i.for.body.i.i_crit_edge

list_del.exit.i.i.for.body.i.i_crit_edge:         ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i.i

spi_nor_erase_multi_sectors.exit.thread:          ; preds = %list_del.exit.i.spi_nor_erase_multi_sectors.exit.thread_crit_edge, %if.end.i.spi_nor_erase_multi_sectors.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %erase_list.i) #15
  br label %if.end66

spi_nor_erase_multi_sectors.exit.thread143:       ; preds = %destroy_erase_cmd_list.i.spi_nor_erase_multi_sectors.exit.thread143_crit_edge, %spi_nor_init_erase_cmd_list.exit.i.spi_nor_erase_multi_sectors.exit.thread143_crit_edge
  %retval.0.i126.ph = phi i32 [ %ret.0.i, %destroy_erase_cmd_list.i.spi_nor_erase_multi_sectors.exit.thread143_crit_edge ], [ %retval.0.i.i, %spi_nor_init_erase_cmd_list.exit.i.spi_nor_erase_multi_sectors.exit.thread143_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %erase_list.i) #15
  br label %erase_err

spi_nor_erase_multi_sectors.exit:                 ; preds = %list_del.exit.i.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %erase_list.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %tobool62.not = icmp eq i32 %ret.0.i, 0
  br i1 %tobool62.not, label %spi_nor_erase_multi_sectors.exit.if.end66_crit_edge, label %spi_nor_erase_multi_sectors.exit.erase_err_crit_edge

spi_nor_erase_multi_sectors.exit.erase_err_crit_edge: ; preds = %spi_nor_erase_multi_sectors.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %erase_err

spi_nor_erase_multi_sectors.exit.if.end66_crit_edge: ; preds = %spi_nor_erase_multi_sectors.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end66

if.end66:                                         ; preds = %spi_nor_erase_multi_sectors.exit.if.end66_crit_edge, %spi_nor_erase_multi_sectors.exit.thread, %if.end56.if.end66_crit_edge, %while.cond.preheader.if.end66_crit_edge, %if.end32.if.end66_crit_edge
  %call67 = call i32 @spi_nor_write_disable(ptr noundef %mtd)
  br label %erase_err

erase_err:                                        ; preds = %if.end66, %spi_nor_erase_multi_sectors.exit.erase_err_crit_edge, %spi_nor_erase_multi_sectors.exit.thread143, %if.end52.erase_err_crit_edge, %if.end48.erase_err_crit_edge, %while.body.erase_err_crit_edge, %if.end32.erase_err_crit_edge, %if.end28.erase_err_crit_edge, %if.then24.erase_err_crit_edge
  %ret.1 = phi i32 [ %call67, %if.end66 ], [ %ret.0.i, %spi_nor_erase_multi_sectors.exit.erase_err_crit_edge ], [ %retval.0.i126.ph, %spi_nor_erase_multi_sectors.exit.thread143 ], [ %call38, %if.end32.erase_err_crit_edge ], [ %call29, %if.end28.erase_err_crit_edge ], [ %call25, %if.then24.erase_err_crit_edge ], [ %call.i120, %if.end52.erase_err_crit_edge ], [ %call49, %if.end48.erase_err_crit_edge ], [ %call45, %while.body.erase_err_crit_edge ]
  %160 = ptrtoint ptr %controller_ops.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %controller_ops.i, align 8
  %tobool.not.i128 = icmp eq ptr %161, null
  br i1 %tobool.not.i128, label %erase_err.spi_nor_unlock_and_unprep.exit_crit_edge, label %land.lhs.true.i130

erase_err.spi_nor_unlock_and_unprep.exit_crit_edge: ; preds = %erase_err
  call void @__sanitizer_cov_trace_pc() #17
  br label %spi_nor_unlock_and_unprep.exit

land.lhs.true.i130:                               ; preds = %erase_err
  %unprepare.i = getelementptr inbounds %struct.spi_nor_controller_ops, ptr %161, i32 0, i32 1
  %162 = ptrtoint ptr %unprepare.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %unprepare.i, align 4
  %tobool2.not.i129 = icmp eq ptr %163, null
  br i1 %tobool2.not.i129, label %land.lhs.true.i130.spi_nor_unlock_and_unprep.exit_crit_edge, label %if.then.i131

land.lhs.true.i130.spi_nor_unlock_and_unprep.exit_crit_edge: ; preds = %land.lhs.true.i130
  call void @__sanitizer_cov_trace_pc() #17
  br label %spi_nor_unlock_and_unprep.exit

if.then.i131:                                     ; preds = %land.lhs.true.i130
  call void @__sanitizer_cov_trace_pc() #17
  call void %163(ptr noundef %mtd) #15
  br label %spi_nor_unlock_and_unprep.exit

spi_nor_unlock_and_unprep.exit:                   ; preds = %if.then.i131, %land.lhs.true.i130.spi_nor_unlock_and_unprep.exit_crit_edge, %erase_err.spi_nor_unlock_and_unprep.exit_crit_edge
  call void @mutex_unlock(ptr noundef %lock.i) #15
  br label %cleanup68

cleanup68:                                        ; preds = %spi_nor_unlock_and_unprep.exit, %spi_nor_lock_and_prep.exit, %div_u64_rem.exit.cleanup68_crit_edge
  %retval.0 = phi i32 [ %ret.1, %spi_nor_unlock_and_unprep.exit ], [ -22, %div_u64_rem.exit.cleanup68_crit_edge ], [ %call.i, %spi_nor_lock_and_prep.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spi_nor_read(ptr noundef %mtd, i64 noundef %from, i32 noundef %len, ptr nocapture noundef %retlen, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @spi_nor_read.__UNIQUE_ID_ddebug263, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@spi_nor_read, %if.then)) #15
          to label %do.end [label %if.then], !srcloc !272

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %dev = getelementptr inbounds %struct.spi_nor, ptr %mtd, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %conv = trunc i64 %from to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @spi_nor_read.__UNIQUE_ID_ddebug263, ptr noundef %1, ptr noundef nonnull @.str.100, i32 noundef %conv, i32 noundef %len) #15
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %lock.i = getelementptr inbounds %struct.spi_nor, ptr %mtd, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #15
  %controller_ops.i = getelementptr inbounds %struct.spi_nor, ptr %mtd, i32 0, i32 20
  %2 = ptrtoint ptr %controller_ops.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %controller_ops.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %do.end.spi_nor_lock_and_prep.exit_crit_edge, label %land.lhs.true.i

do.end.spi_nor_lock_and_prep.exit_crit_edge:      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %spi_nor_lock_and_prep.exit

land.lhs.true.i:                                  ; preds = %do.end
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %tobool2.not.i = icmp eq ptr %5, null
  br i1 %tobool2.not.i, label %land.lhs.true.i.spi_nor_lock_and_prep.exit_crit_edge, label %if.then.i

land.lhs.true.i.spi_nor_lock_and_prep.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %spi_nor_lock_and_prep.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  %call.i = tail call i32 %5(ptr noundef %mtd) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool5.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool5.not.i, label %if.then.i.spi_nor_lock_and_prep.exit_crit_edge, label %if.then.i.cleanup52_crit_edge

if.then.i.cleanup52_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup52

if.then.i.spi_nor_lock_and_prep.exit_crit_edge:   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %spi_nor_lock_and_prep.exit

spi_nor_lock_and_prep.exit:                       ; preds = %if.then.i.spi_nor_lock_and_prep.exit_crit_edge, %land.lhs.true.i.spi_nor_lock_and_prep.exit_crit_edge, %do.end.spi_nor_lock_and_prep.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool8.not96 = icmp eq i32 %len, 0
  br i1 %tobool8.not96, label %spi_nor_lock_and_prep.exit.read_err_crit_edge, label %while.body.lr.ph

spi_nor_lock_and_prep.exit.read_err_crit_edge:    ; preds = %spi_nor_lock_and_prep.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %read_err

while.body.lr.ph:                                 ; preds = %spi_nor_lock_and_prep.exit
  %params.i = getelementptr inbounds %struct.spi_nor, ptr %mtd, i32 0, i32 21
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %from.addr.099 = phi i64 [ %from, %while.body.lr.ph ], [ %add51, %cleanup.while.body_crit_edge ]
  %len.addr.098 = phi i32 [ %len, %while.body.lr.ph ], [ %sub, %cleanup.while.body_crit_edge ]
  %buf.addr.097 = phi ptr [ %buf, %while.body.lr.ph ], [ %add.ptr, %cleanup.while.body_crit_edge ]
  %6 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %params.i, align 4
  %convert_addr.i = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %7, i32 0, i32 13
  %8 = ptrtoint ptr %convert_addr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %convert_addr.i, align 4
  %tobool.not.i77 = icmp eq ptr %9, null
  %conv.i = trunc i64 %from.addr.099 to i32
  br i1 %tobool.not.i77, label %while.body.spi_nor_convert_addr.exit_crit_edge, label %if.end.i

while.body.spi_nor_convert_addr.exit_crit_edge:   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %spi_nor_convert_addr.exit

if.end.i:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  %call.i78 = tail call i32 %9(ptr noundef %mtd, i32 noundef %conv.i) #15
  br label %spi_nor_convert_addr.exit

spi_nor_convert_addr.exit:                        ; preds = %if.end.i, %while.body.spi_nor_convert_addr.exit_crit_edge
  %retval.0.i79 = phi i32 [ %call.i78, %if.end.i ], [ %conv.i, %while.body.spi_nor_convert_addr.exit_crit_edge ]
  %conv10 = zext i32 %retval.0.i79 to i64
  %call11 = tail call i32 @spi_nor_read_data(ptr noundef %mtd, i64 noundef %conv10, i32 noundef %len.addr.098, ptr noundef %buf.addr.097)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp = icmp eq i32 %call11, 0
  br i1 %cmp, label %spi_nor_convert_addr.exit.read_err_crit_edge, label %if.end14

spi_nor_convert_addr.exit.read_err_crit_edge:     ; preds = %spi_nor_convert_addr.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %read_err

if.end14:                                         ; preds = %spi_nor_convert_addr.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp15 = icmp slt i32 %call11, 0
  br i1 %cmp15, label %if.end14.read_err_crit_edge, label %if.end18

if.end14.read_err_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #17
  br label %read_err

if.end18:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_cmp4(i32 %len.addr.098, i32 %call11)
  %cmp19 = icmp ult i32 %len.addr.098, %call11
  br i1 %cmp19, label %do.end36, label %if.end18.cleanup_crit_edge, !prof !276

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end36:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1931, i32 noundef 9, ptr noundef null) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end36, %if.end18.cleanup_crit_edge
  %10 = ptrtoint ptr %retlen to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %retlen, align 4
  %add = add i32 %11, %call11
  store i32 %add, ptr %retlen, align 4
  %add.ptr = getelementptr i8, ptr %buf.addr.097, i32 %call11
  %conv5095 = zext i32 %call11 to i64
  %add51 = add i64 %from.addr.099, %conv5095
  %sub = sub i32 %len.addr.098, %call11
  %tobool8.not = icmp eq i32 %sub, 0
  br i1 %tobool8.not, label %cleanup.read_err_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body

cleanup.read_err_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #17
  br label %read_err

read_err:                                         ; preds = %cleanup.read_err_crit_edge, %if.end14.read_err_crit_edge, %spi_nor_convert_addr.exit.read_err_crit_edge, %spi_nor_lock_and_prep.exit.read_err_crit_edge
  %ret.1 = phi i32 [ 0, %spi_nor_lock_and_prep.exit.read_err_crit_edge ], [ %call11, %if.end14.read_err_crit_edge ], [ -5, %spi_nor_convert_addr.exit.read_err_crit_edge ], [ 0, %cleanup.read_err_crit_edge ]
  %12 = ptrtoint ptr %controller_ops.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %controller_ops.i, align 8
  %tobool.not.i81 = icmp eq ptr %13, null
  br i1 %tobool.not.i81, label %read_err.cleanup52_crit_edge, label %land.lhs.true.i83

read_err.cleanup52_crit_edge:                     ; preds = %read_err
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup52

land.lhs.true.i83:                                ; preds = %read_err
  %unprepare.i = getelementptr inbounds %struct.spi_nor_controller_ops, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %unprepare.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %unprepare.i, align 4
  %tobool2.not.i82 = icmp eq ptr %15, null
  br i1 %tobool2.not.i82, label %land.lhs.true.i83.cleanup52_crit_edge, label %if.then.i84

land.lhs.true.i83.cleanup52_crit_edge:            ; preds = %land.lhs.true.i83
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup52

if.then.i84:                                      ; preds = %land.lhs.true.i83
  call void @__sanitizer_cov_trace_pc() #17
  tail call void %15(ptr noundef %mtd) #15
  br label %cleanup52

cleanup52:                                        ; preds = %if.then.i84, %land.lhs.true.i83.cleanup52_crit_edge, %read_err.cleanup52_crit_edge, %if.then.i.cleanup52_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.then.i.cleanup52_crit_edge ], [ %ret.1, %read_err.cleanup52_crit_edge ], [ %ret.1, %land.lhs.true.i83.cleanup52_crit_edge ], [ %ret.1, %if.then.i84 ]
  tail call void @mutex_unlock(ptr noundef %lock.i) #15
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spi_nor_write(ptr noundef %mtd, i64 noundef %to, i32 noundef %len, ptr nocapture noundef %retlen, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %params = getelementptr inbounds %struct.spi_nor, ptr %mtd, i32 0, i32 21
  %0 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %params, align 4
  %page_size1 = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %page_size1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %page_size1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @spi_nor_write.__UNIQUE_ID_ddebug264, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@spi_nor_write, %if.then)) #15
          to label %do.end [label %if.then], !srcloc !272

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %dev = getelementptr inbounds %struct.spi_nor, ptr %mtd, i32 0, i32 2
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %conv = trunc i64 %to to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @spi_nor_write.__UNIQUE_ID_ddebug264, ptr noundef %5, ptr noundef nonnull @.str.102, i32 noundef %conv, i32 noundef %len) #15
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %lock.i = getelementptr inbounds %struct.spi_nor, ptr %mtd, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #15
  %controller_ops.i = getelementptr inbounds %struct.spi_nor, ptr %mtd, i32 0, i32 20
  %6 = ptrtoint ptr %controller_ops.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %controller_ops.i, align 8
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %do.end.spi_nor_lock_and_prep.exit_crit_edge, label %land.lhs.true.i

do.end.spi_nor_lock_and_prep.exit_crit_edge:      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %spi_nor_lock_and_prep.exit

land.lhs.true.i:                                  ; preds = %do.end
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %tobool2.not.i = icmp eq ptr %9, null
  br i1 %tobool2.not.i, label %land.lhs.true.i.spi_nor_lock_and_prep.exit_crit_edge, label %if.then.i

land.lhs.true.i.spi_nor_lock_and_prep.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %spi_nor_lock_and_prep.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  %call.i = tail call i32 %9(ptr noundef %mtd) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool5.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool5.not.i, label %if.then.i.spi_nor_lock_and_prep.exit_crit_edge, label %if.then.i.cleanup238_crit_edge

if.then.i.cleanup238_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup238

if.then.i.spi_nor_lock_and_prep.exit_crit_edge:   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %spi_nor_lock_and_prep.exit

spi_nor_lock_and_prep.exit:                       ; preds = %if.then.i.spi_nor_lock_and_prep.exit_crit_edge, %land.lhs.true.i.spi_nor_lock_and_prep.exit_crit_edge, %do.end.spi_nor_lock_and_prep.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp398.not = icmp eq i32 %len, 0
  br i1 %cmp398.not, label %spi_nor_lock_and_prep.exit.write_err_crit_edge, label %for.body.lr.ph

spi_nor_lock_and_prep.exit.write_err_crit_edge:   ; preds = %spi_nor_lock_and_prep.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %write_err

for.body.lr.ph:                                   ; preds = %spi_nor_lock_and_prep.exit
  %10 = tail call i32 @llvm.ctpop.i32(i32 %3) #15, !range !273
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %.not397 = icmp eq i32 %10, 1
  %sub = add i32 %3, -1
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %i.0399 = phi i32 [ 0, %for.body.lr.ph ], [ %add236, %cleanup.for.body_crit_edge ]
  %conv10 = zext i32 %i.0399 to i64
  %add = add i64 %conv10, %to
  br i1 %.not397, label %if.then12, label %if.else188

if.then12:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  %11 = trunc i64 %add to i32
  %conv14 = and i32 %sub, %11
  br label %if.end210

if.else188:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add)
  %cmp190 = icmp ult i64 %add, 4294967296
  br i1 %cmp190, label %if.then198, label %if.else204, !prof !274

if.then198:                                       ; preds = %if.else188
  call void @__sanitizer_cov_trace_pc() #17
  %conv199 = trunc i64 %add to i32
  %rem200 = urem i32 %conv199, %3
  br label %if.end210

if.else204:                                       ; preds = %if.else188
  call void @__sanitizer_cov_trace_pc() #17
  %12 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %3, i64 %add) #20, !srcloc !275
  %asmresult.i357 = extractvalue { i64, i64 } %12, 0
  %shr.i = lshr i64 %asmresult.i357, 32
  %conv.i = trunc i64 %shr.i to i32
  %.pre = trunc i64 %add to i32
  br label %if.end210

if.end210:                                        ; preds = %if.else204, %if.then198, %if.then12
  %conv.i359.pre-phi = phi i32 [ %conv199, %if.then198 ], [ %.pre, %if.else204 ], [ %11, %if.then12 ]
  %page_offset.0 = phi i32 [ %rem200, %if.then198 ], [ %conv.i, %if.else204 ], [ %conv14, %if.then12 ]
  %sub211 = sub i32 %3, %page_offset.0
  %sub212 = sub i32 %len, %i.0399
  %13 = tail call i32 @llvm.umin.i32(i32 %sub211, i32 %sub212)
  %14 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %params, align 4
  %convert_addr.i = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %15, i32 0, i32 13
  %16 = ptrtoint ptr %convert_addr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %convert_addr.i, align 4
  %tobool.not.i358 = icmp eq ptr %17, null
  br i1 %tobool.not.i358, label %if.end210.spi_nor_convert_addr.exit_crit_edge, label %if.end.i

if.end210.spi_nor_convert_addr.exit_crit_edge:    ; preds = %if.end210
  call void @__sanitizer_cov_trace_pc() #17
  br label %spi_nor_convert_addr.exit

if.end.i:                                         ; preds = %if.end210
  call void @__sanitizer_cov_trace_pc() #17
  %call.i360 = tail call i32 %17(ptr noundef %mtd, i32 noundef %conv.i359.pre-phi) #15
  br label %spi_nor_convert_addr.exit

spi_nor_convert_addr.exit:                        ; preds = %if.end.i, %if.end210.spi_nor_convert_addr.exit_crit_edge
  %retval.0.i361 = phi i32 [ %call.i360, %if.end.i ], [ %conv.i359.pre-phi, %if.end210.spi_nor_convert_addr.exit_crit_edge ]
  %call222 = tail call i32 @spi_nor_write_enable(ptr noundef %mtd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call222)
  %tobool223.not = icmp eq i32 %call222, 0
  br i1 %tobool223.not, label %if.end225, label %spi_nor_convert_addr.exit.write_err_crit_edge

spi_nor_convert_addr.exit.write_err_crit_edge:    ; preds = %spi_nor_convert_addr.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %write_err

if.end225:                                        ; preds = %spi_nor_convert_addr.exit
  %conv221 = zext i32 %retval.0.i361 to i64
  %add.ptr = getelementptr i8, ptr %buf, i32 %i.0399
  %call226 = tail call i32 @spi_nor_write_data(ptr noundef %mtd, i64 noundef %conv221, i32 noundef %13, ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call226)
  %cmp227 = icmp slt i32 %call226, 0
  br i1 %cmp227, label %if.end225.write_err_crit_edge, label %if.end230

if.end225.write_err_crit_edge:                    ; preds = %if.end225
  call void @__sanitizer_cov_trace_pc() #17
  br label %write_err

if.end230:                                        ; preds = %if.end225
  %call.i362 = tail call fastcc i32 @spi_nor_wait_till_ready_with_timeout(ptr noundef %mtd, i32 noundef 4000) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i362)
  %tobool232.not = icmp eq i32 %call.i362, 0
  br i1 %tobool232.not, label %cleanup, label %if.end230.write_err_crit_edge

if.end230.write_err_crit_edge:                    ; preds = %if.end230
  call void @__sanitizer_cov_trace_pc() #17
  br label %write_err

cleanup:                                          ; preds = %if.end230
  %18 = ptrtoint ptr %retlen to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %retlen, align 4
  %add235 = add i32 %19, %call226
  store i32 %add235, ptr %retlen, align 4
  %add236 = add i32 %call226, %i.0399
  %cmp = icmp ult i32 %add236, %len
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %cleanup.write_err_crit_edge

cleanup.write_err_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #17
  br label %write_err

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

write_err:                                        ; preds = %cleanup.write_err_crit_edge, %if.end230.write_err_crit_edge, %if.end225.write_err_crit_edge, %spi_nor_convert_addr.exit.write_err_crit_edge, %spi_nor_lock_and_prep.exit.write_err_crit_edge
  %ret.2 = phi i32 [ 0, %spi_nor_lock_and_prep.exit.write_err_crit_edge ], [ %call.i362, %if.end230.write_err_crit_edge ], [ %call226, %if.end225.write_err_crit_edge ], [ %call222, %spi_nor_convert_addr.exit.write_err_crit_edge ], [ 0, %cleanup.write_err_crit_edge ]
  %20 = ptrtoint ptr %controller_ops.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %controller_ops.i, align 8
  %tobool.not.i364 = icmp eq ptr %21, null
  br i1 %tobool.not.i364, label %write_err.cleanup238_crit_edge, label %land.lhs.true.i366

write_err.cleanup238_crit_edge:                   ; preds = %write_err
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup238

land.lhs.true.i366:                               ; preds = %write_err
  %unprepare.i = getelementptr inbounds %struct.spi_nor_controller_ops, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %unprepare.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %unprepare.i, align 4
  %tobool2.not.i365 = icmp eq ptr %23, null
  br i1 %tobool2.not.i365, label %land.lhs.true.i366.cleanup238_crit_edge, label %if.then.i367

land.lhs.true.i366.cleanup238_crit_edge:          ; preds = %land.lhs.true.i366
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup238

if.then.i367:                                     ; preds = %land.lhs.true.i366
  call void @__sanitizer_cov_trace_pc() #17
  tail call void %23(ptr noundef %mtd) #15
  br label %cleanup238

cleanup238:                                       ; preds = %if.then.i367, %land.lhs.true.i366.cleanup238_crit_edge, %write_err.cleanup238_crit_edge, %if.then.i.cleanup238_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.then.i.cleanup238_crit_edge ], [ %ret.2, %write_err.cleanup238_crit_edge ], [ %ret.2, %land.lhs.true.i366.cleanup238_crit_edge ], [ %ret.2, %if.then.i367 ]
  tail call void @mutex_unlock(ptr noundef %lock.i) #15
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spi_nor_suspend(ptr noundef %mtd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %params.i = getelementptr inbounds %struct.spi_nor, ptr %mtd, i32 0, i32 21
  %0 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %params.i, align 4
  %octal_dtr_enable.i = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %octal_dtr_enable.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %octal_dtr_enable.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.end.i:                                         ; preds = %entry
  %read_proto.i = getelementptr inbounds %struct.spi_nor, ptr %mtd, i32 0, i32 13
  %4 = ptrtoint ptr %read_proto.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %read_proto.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17303560, i32 %5)
  %cmp.i = icmp eq i32 %5, 17303560
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end.i.if.end_crit_edge

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true.i:                                  ; preds = %if.end.i
  %write_proto.i = getelementptr inbounds %struct.spi_nor, ptr %mtd, i32 0, i32 14
  %6 = ptrtoint ptr %write_proto.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %write_proto.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 17303560, i32 %7)
  %cmp1.i = icmp eq i32 %7, 17303560
  br i1 %cmp1.i, label %if.end3.i, label %land.lhs.true.i.if.end_crit_edge

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.end3.i:                                        ; preds = %land.lhs.true.i
  %flags.i = getelementptr inbounds %struct.spi_nor, ptr %mtd, i32 0, i32 17
  %8 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %9, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool4.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool4.not.i, label %if.end3.i.if.end_crit_edge, label %if.end6.i

if.end3.i.if.end_crit_edge:                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.end6.i:                                        ; preds = %if.end3.i
  %call.i = tail call i32 %3(ptr noundef %mtd, i1 noundef zeroext false) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool10.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool10.not.i, label %if.end12.i, label %do.end

if.end12.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #17
  %reg_proto.i = getelementptr inbounds %struct.spi_nor, ptr %mtd, i32 0, i32 15
  %10 = ptrtoint ptr %reg_proto.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 65793, ptr %reg_proto.i, align 4
  br label %if.end

do.end:                                           ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #17
  %dev = getelementptr inbounds %struct.spi_nor, ptr %mtd, i32 0, i32 2
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.103) #18
  br label %if.end

if.end:                                           ; preds = %do.end, %if.end12.i, %if.end3.i.if.end_crit_edge, %land.lhs.true.i.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %retval.0.i6 = phi i32 [ %call.i, %do.end ], [ 0, %entry.if.end_crit_edge ], [ 0, %land.lhs.true.i.if.end_crit_edge ], [ 0, %if.end.i.if.end_crit_edge ], [ 0, %if.end3.i.if.end_crit_edge ], [ 0, %if.end12.i ]
  ret i32 %retval.0.i6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @spi_nor_resume(ptr noundef %mtd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.spi_nor, ptr %mtd, i32 0, i32 2
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %call2 = tail call fastcc i32 @spi_nor_init(ptr noundef %mtd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.105) #18
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spi_nor_get_device(ptr nocapture noundef readonly %mtd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %entry
  %mtd.addr.0.i = phi ptr [ %mtd, %entry ], [ %1, %while.cond.i.while.cond.i_crit_edge ]
  %parent.i = getelementptr inbounds %struct.mtd_info, ptr %mtd.addr.0.i, i32 0, i32 62
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %mtd_get_master.exit, label %while.cond.i.while.cond.i_crit_edge

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.cond.i

mtd_get_master.exit:                              ; preds = %while.cond.i
  %spimem = getelementptr inbounds %struct.spi_nor, ptr %mtd.addr.0.i, i32 0, i32 3
  %2 = ptrtoint ptr %spimem to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %spimem, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %mtd_get_master.exit
  call void @__sanitizer_cov_trace_pc() #17
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %controller = getelementptr inbounds %struct.spi_device, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %controller, align 8
  %parent = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 1
  br label %if.end

if.else:                                          ; preds = %mtd_get_master.exit
  call void @__sanitizer_cov_trace_pc() #17
  %dev4 = getelementptr inbounds %struct.spi_nor, ptr %mtd.addr.0.i, i32 0, i32 2
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %dev.0.in = phi ptr [ %parent, %if.then ], [ %dev4, %if.else ]
  %8 = ptrtoint ptr %dev.0.in to i32
  call void @__asan_load4_noabort(i32 %8)
  %dev.0 = load ptr, ptr %dev.0.in, align 4
  %driver = getelementptr inbounds %struct.device, ptr %dev.0, i32 0, i32 6
  %9 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %driver, align 4
  %owner = getelementptr inbounds %struct.device_driver, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %owner, align 4
  %call5 = tail call zeroext i1 @try_module_get(ptr noundef %12) #15
  %. = select i1 %call5, i32 0, i32 -19
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @spi_nor_put_device(ptr nocapture noundef readonly %mtd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %entry
  %mtd.addr.0.i = phi ptr [ %mtd, %entry ], [ %1, %while.cond.i.while.cond.i_crit_edge ]
  %parent.i = getelementptr inbounds %struct.mtd_info, ptr %mtd.addr.0.i, i32 0, i32 62
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %mtd_get_master.exit, label %while.cond.i.while.cond.i_crit_edge

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.cond.i

mtd_get_master.exit:                              ; preds = %while.cond.i
  %spimem = getelementptr inbounds %struct.spi_nor, ptr %mtd.addr.0.i, i32 0, i32 3
  %2 = ptrtoint ptr %spimem to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %spimem, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %mtd_get_master.exit
  call void @__sanitizer_cov_trace_pc() #17
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %controller = getelementptr inbounds %struct.spi_device, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %controller, align 8
  %parent = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 1
  br label %if.end

if.else:                                          ; preds = %mtd_get_master.exit
  call void @__sanitizer_cov_trace_pc() #17
  %dev4 = getelementptr inbounds %struct.spi_nor, ptr %mtd.addr.0.i, i32 0, i32 2
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %dev.0.in = phi ptr [ %parent, %if.then ], [ %dev4, %if.else ]
  %8 = ptrtoint ptr %dev.0.in to i32
  call void @__asan_load4_noabort(i32 %8)
  %dev.0 = load ptr, ptr %dev.0.in, align 4
  %driver = getelementptr inbounds %struct.device, ptr %dev.0, i32 0, i32 6
  %9 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %driver, align 4
  %owner = getelementptr inbounds %struct.device_driver, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %owner, align 4
  tail call void @module_put(ptr noundef %12) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @spi_nor_erase_chip(ptr noundef %nor) unnamed_addr #0 align 64 {
entry:
  %op = alloca %struct.spi_mem_op, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @spi_nor_erase_chip.__UNIQUE_ID_ddebug256, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@spi_nor_erase_chip, %if.then)) #15
          to label %do.end [label %if.then], !srcloc !272

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %dev = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %size = getelementptr inbounds %struct.mtd_info, ptr %nor, i32 0, i32 2
  %2 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %size, align 8
  %shr = lshr i64 %3, 10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @spi_nor_erase_chip.__UNIQUE_ID_ddebug256, ptr noundef %1, ptr noundef nonnull @.str.97, i64 noundef %shr) #15
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %spimem = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 3
  %4 = ptrtoint ptr %spimem to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %spimem, align 8
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %if.else, label %if.end.i

if.end.i:                                         ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %op) #15
  %6 = call ptr @memset(ptr %op, i32 0, i32 48)
  %7 = ptrtoint ptr %op to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %op, align 8
  %8 = getelementptr inbounds { i8, i8, i8, [1 x i8], i16 }, ptr %op, i32 0, i32 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 199, ptr %8, align 4
  %write_proto = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 14
  %10 = ptrtoint ptr %write_proto to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %write_proto, align 8
  %and.i.i = lshr i32 %11, 16
  %conv.i.i = trunc i32 %and.i.i to i8
  %buswidth.i = getelementptr inbounds %struct.anon.71, ptr %op, i32 0, i32 1
  %12 = ptrtoint ptr %buswidth.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv.i.i, ptr %buswidth.i, align 1
  %dummy.i = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 2
  %13 = ptrtoint ptr %dummy.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %dummy.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool5.not.i = icmp eq i8 %14, 0
  br i1 %tobool5.not.i, label %if.end.i.if.end10.i_crit_edge, label %if.then6.i

if.end.i.if.end10.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end10.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %and.i70.i = lshr i32 %11, 8
  %conv.i71.i = trunc i32 %and.i70.i to i8
  %buswidth9.i = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 2, i32 1
  %15 = ptrtoint ptr %buswidth9.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv.i71.i, ptr %buswidth9.i, align 1
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then6.i, %if.end.i.if.end10.i_crit_edge
  %nbytes11.i = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 3
  %16 = ptrtoint ptr %nbytes11.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nbytes11.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool12.not.i = icmp eq i32 %17, 0
  br i1 %tobool12.not.i, label %if.end10.i.if.end17.i_crit_edge, label %if.then13.i

if.end10.i.if.end17.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end17.i

if.then13.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #17
  %data.i = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3
  %conv.i72.i = trunc i32 %11 to i8
  %18 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv.i72.i, ptr %data.i, align 4
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.then13.i, %if.end10.i.if.end17.i_crit_edge
  %and.i73.i = and i32 %11, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i73.i)
  %tobool.i.not.i = icmp eq i32 %and.i73.i, 0
  br i1 %tobool.i.not.i, label %if.end17.i.spi_nor_spimem_setup_op.exit_crit_edge, label %if.then19.i

if.end17.i.spi_nor_spimem_setup_op.exit_crit_edge: ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %spi_nor_spimem_setup_op.exit

if.then19.i:                                      ; preds = %if.end17.i
  %dtr.i = getelementptr inbounds %struct.anon.71, ptr %op, i32 0, i32 2
  %19 = ptrtoint ptr %dtr.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %bf.load.i = load i8, ptr %dtr.i, align 2
  %bf.set.i = or i8 %bf.load.i, -128
  store i8 %bf.set.i, ptr %dtr.i, align 2
  %dtr22.i = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1, i32 2
  %20 = ptrtoint ptr %dtr22.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %bf.load23.i = load i8, ptr %dtr22.i, align 2
  %bf.set25.i = or i8 %bf.load23.i, -128
  store i8 %bf.set25.i, ptr %dtr22.i, align 2
  %dtr27.i = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 2, i32 2
  %21 = ptrtoint ptr %dtr27.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %bf.load28.i = load i8, ptr %dtr27.i, align 2
  %bf.set30.i = or i8 %bf.load28.i, -128
  store i8 %bf.set30.i, ptr %dtr27.i, align 2
  %dtr32.i = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 1
  %22 = ptrtoint ptr %dtr32.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %bf.load33.i = load i8, ptr %dtr32.i, align 1
  %bf.set35.i = or i8 %bf.load33.i, -128
  store i8 %bf.set35.i, ptr %dtr32.i, align 1
  %mul.i = shl i8 %14, 1
  %23 = ptrtoint ptr %dummy.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %mul.i, ptr %dummy.i, align 8
  %cmd_ext_type.i.i = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 18
  %24 = ptrtoint ptr %cmd_ext_type.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cmd_ext_type.i.i, align 8
  %26 = zext i32 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.143)
  switch i32 %25, label %do.end.i.i [
    i32 2, label %sw.bb.i.i
    i32 1, label %sw.bb2.i.i
  ]

sw.bb.i.i:                                        ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #17
  %27 = ptrtoint ptr %8 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %8, align 4
  %conv.i74.i = trunc i16 %28 to i8
  %neg.i.i = xor i8 %conv.i74.i, -1
  br label %spi_nor_get_cmd_ext.exit.i

sw.bb2.i.i:                                       ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #17
  %29 = ptrtoint ptr %8 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %8, align 4
  %conv5.i.i = trunc i16 %30 to i8
  br label %spi_nor_get_cmd_ext.exit.i

do.end.i.i:                                       ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #17
  %dev.i.i = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 2
  %31 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.32) #18
  br label %spi_nor_get_cmd_ext.exit.i

spi_nor_get_cmd_ext.exit.i:                       ; preds = %do.end.i.i, %sw.bb2.i.i, %sw.bb.i.i
  %retval.0.i.i = phi i8 [ 0, %do.end.i.i ], [ %conv5.i.i, %sw.bb2.i.i ], [ %neg.i.i, %sw.bb.i.i ]
  %33 = ptrtoint ptr %8 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %8, align 4
  %shl.i = shl i16 %34, 8
  %conv42.i = zext i8 %retval.0.i.i to i16
  %or.i = or i16 %shl.i, %conv42.i
  store i16 %or.i, ptr %8, align 4
  %35 = ptrtoint ptr %op to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 2, ptr %op, align 8
  br label %spi_nor_spimem_setup_op.exit

spi_nor_spimem_setup_op.exit:                     ; preds = %spi_nor_get_cmd_ext.exit.i, %if.end17.i.spi_nor_spimem_setup_op.exit_crit_edge
  %36 = ptrtoint ptr %spimem to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %spimem, align 8
  %call6 = call i32 @spi_mem_exec_op(ptr noundef %37, ptr noundef nonnull %op) #15
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %op) #15
  br label %if.end8

if.else:                                          ; preds = %do.end
  %reg_proto.i = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 15
  %38 = ptrtoint ptr %reg_proto.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %reg_proto.i, align 4
  %and.i.i41 = and i32 %39, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i41)
  %tobool.i.not.i42 = icmp eq i32 %and.i.i41, 0
  br i1 %tobool.i.not.i42, label %if.end.i43, label %if.else.do.body11_crit_edge

if.else.do.body11_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body11

if.end.i43:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  %controller_ops.i = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 20
  %40 = ptrtoint ptr %controller_ops.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %controller_ops.i, align 8
  %write_reg.i = getelementptr inbounds %struct.spi_nor_controller_ops, ptr %41, i32 0, i32 3
  %42 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %write_reg.i, align 4
  %call1.i = tail call i32 %43(ptr noundef %nor, i8 noundef zeroext -57, ptr noundef null, i32 noundef 0) #15
  br label %if.end8

if.end8:                                          ; preds = %if.end.i43, %spi_nor_spimem_setup_op.exit
  %ret.0 = phi i32 [ %call6, %spi_nor_spimem_setup_op.exit ], [ %call1.i, %if.end.i43 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool9.not = icmp eq i32 %ret.0, 0
  br i1 %tobool9.not, label %if.end8.if.end28_crit_edge, label %if.end8.do.body11_crit_edge

if.end8.do.body11_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body11

if.end8.if.end28_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end28

do.body11:                                        ; preds = %if.end8.do.body11_crit_edge, %if.else.do.body11_crit_edge
  %ret.048 = phi i32 [ %ret.0, %if.end8.do.body11_crit_edge ], [ -95, %if.else.do.body11_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @spi_nor_erase_chip.__UNIQUE_ID_ddebug257, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@spi_nor_erase_chip, %if.then23)) #15
          to label %if.end28 [label %if.then23], !srcloc !272

if.then23:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #17
  %dev24 = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 2
  %44 = ptrtoint ptr %dev24 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev24, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @spi_nor_erase_chip.__UNIQUE_ID_ddebug257, ptr noundef %45, ptr noundef nonnull @.str.98, i32 noundef %ret.048) #15
  br label %if.end28

if.end28:                                         ; preds = %if.then23, %do.body11, %if.end8.if.end28_crit_edge
  %ret.049 = phi i32 [ %ret.048, %if.then23 ], [ 0, %if.end8.if.end28_crit_edge ], [ %ret.048, %do.body11 ]
  ret i32 %ret.049
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_mem_driver_register_with_owner(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spi_nor_probe(ptr noundef %spimem) #0 align 64 {
entry:
  %info.i119 = alloca %struct.spi_mem_dirmap_info, align 8
  %info.i = alloca %struct.spi_mem_dirmap_info, align 8
  %hwcaps = alloca %struct.spi_nor_hwcaps, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %spimem to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spimem, align 4
  %platform_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %platform_data.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hwcaps) #15
  %4 = ptrtoint ptr %hwcaps to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 16777215, ptr %hwcaps, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef 1584, i32 noundef 3520) #15
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %spimem4 = getelementptr inbounds %struct.spi_nor, ptr %call.i, i32 0, i32 3
  %5 = ptrtoint ptr %spimem4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %spimem, ptr %spimem4, align 8
  %dev6 = getelementptr inbounds %struct.spi_nor, ptr %call.i, i32 0, i32 2
  %6 = ptrtoint ptr %dev6 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %1, ptr %dev6, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  %7 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %of_node, align 8
  %of_node.i.i = getelementptr inbounds %struct.mtd_info, ptr %call.i, i32 0, i32 56, i32 27
  %9 = ptrtoint ptr %of_node.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %of_node.i.i, align 8
  %name.i.i = getelementptr inbounds %struct.mtd_info, ptr %call.i, i32 0, i32 13
  %10 = ptrtoint ptr %name.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %11, null
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.end.spi_nor_set_flash_node.exit_crit_edge

if.end.spi_nor_set_flash_node.exit_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %spi_nor_set_flash_node.exit

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %call.i.i = tail call i32 @of_property_read_string(ptr noundef %8, ptr noundef nonnull @.str.108, ptr noundef %name.i.i) #15
  br label %spi_nor_set_flash_node.exit

spi_nor_set_flash_node.exit:                      ; preds = %if.then.i.i, %if.end.spi_nor_set_flash_node.exit_crit_edge
  %drvpriv.i = getelementptr inbounds %struct.spi_mem, ptr %spimem, i32 0, i32 1
  %12 = ptrtoint ptr %drvpriv.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i, ptr %drvpriv.i, align 4
  %tobool8.not = icmp eq ptr %3, null
  br i1 %tobool8.not, label %spi_nor_set_flash_node.exit.if.end13_crit_edge, label %land.lhs.true

spi_nor_set_flash_node.exit.if.end13_crit_edge:   ; preds = %spi_nor_set_flash_node.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end13

land.lhs.true:                                    ; preds = %spi_nor_set_flash_node.exit
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %3, align 4
  %tobool9.not = icmp eq ptr %14, null
  br i1 %tobool9.not, label %land.lhs.true.if.end13_crit_edge, label %if.end21.thread

land.lhs.true.if.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end13

if.end21.thread:                                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  %15 = ptrtoint ptr %name.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %name.i.i, align 8
  br label %land.lhs.true23

if.end13:                                         ; preds = %land.lhs.true.if.end13_crit_edge, %spi_nor_set_flash_node.exit.if.end13_crit_edge
  %16 = ptrtoint ptr %name.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pr = load ptr, ptr %name.i.i, align 8
  %tobool16.not = icmp eq ptr %.pr, null
  br i1 %tobool16.not, label %if.then17, label %if.end13.if.end21_crit_edge

if.end13.if.end21_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end21

if.then17:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #17
  %call18 = tail call ptr @spi_mem_get_name(ptr noundef %spimem) #15
  %17 = ptrtoint ptr %name.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call18, ptr %name.i.i, align 8
  br label %if.end21

if.end21:                                         ; preds = %if.then17, %if.end13.if.end21_crit_edge
  br i1 %tobool8.not, label %if.end21.if.else_crit_edge, label %if.end21.land.lhs.true23_crit_edge

if.end21.land.lhs.true23_crit_edge:               ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true23

if.end21.if.else_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else

land.lhs.true23:                                  ; preds = %if.end21.land.lhs.true23_crit_edge, %if.end21.thread
  %type = getelementptr inbounds %struct.flash_platform_data, ptr %3, i32 0, i32 3
  %18 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %type, align 4
  %tobool24.not = icmp eq ptr %19, null
  br i1 %tobool24.not, label %land.lhs.true23.if.else_crit_edge, label %land.lhs.true23.if.end34_crit_edge

land.lhs.true23.if.end34_crit_edge:               ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end34

land.lhs.true23.if.else_crit_edge:                ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else

if.else:                                          ; preds = %land.lhs.true23.if.else_crit_edge, %if.end21.if.else_crit_edge
  %modalias = getelementptr inbounds %struct.spi_device, ptr %1, i32 0, i32 11
  %call27 = tail call i32 @strcmp(ptr noundef %modalias, ptr noundef nonnull dereferenceable(8) @.str.107) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  %.modalias = select i1 %tobool28.not, ptr null, ptr %modalias
  br label %if.end34

if.end34:                                         ; preds = %if.else, %land.lhs.true23.if.end34_crit_edge
  %flash_name.0 = phi ptr [ %19, %land.lhs.true23.if.end34_crit_edge ], [ %.modalias, %if.else ]
  %call35 = call i32 @spi_nor_scan(ptr noundef nonnull %call.i, ptr noundef %flash_name.0, ptr noundef nonnull %hwcaps)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end38, label %if.end34.cleanup_crit_edge

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end38:                                         ; preds = %if.end34
  %params = getelementptr inbounds %struct.spi_nor, ptr %call.i, i32 0, i32 21
  %20 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %params, align 4
  %page_size = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %page_size to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %page_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %23)
  %cmp = icmp ugt i32 %23, 4096
  br i1 %cmp, label %if.then39, label %if.end38.if.end51_crit_edge

if.end38.if.end51_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end51

if.then39:                                        ; preds = %if.end38
  %bouncebuf_size = getelementptr inbounds %struct.spi_nor, ptr %call.i, i32 0, i32 5
  %24 = ptrtoint ptr %bouncebuf_size to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %bouncebuf_size, align 8
  %25 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev6, align 4
  %bouncebuf = getelementptr inbounds %struct.spi_nor, ptr %call.i, i32 0, i32 4
  %27 = ptrtoint ptr %bouncebuf to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %bouncebuf, align 4
  call void @devm_kfree(ptr noundef %26, ptr noundef %28) #15
  %29 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev6, align 4
  %31 = ptrtoint ptr %bouncebuf_size to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %bouncebuf_size, align 8
  %call45 = call noalias ptr @devm_kmalloc(ptr noundef %30, i32 noundef %32, i32 noundef 3264) #15
  %33 = ptrtoint ptr %bouncebuf to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call45, ptr %bouncebuf, align 4
  %tobool48.not = icmp eq ptr %call45, null
  br i1 %tobool48.not, label %if.then39.cleanup_crit_edge, label %if.then39.if.end51_crit_edge

if.then39.if.end51_crit_edge:                     ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end51

if.then39.cleanup_crit_edge:                      ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end51:                                         ; preds = %if.then39.if.end51_crit_edge, %if.end38.if.end51_crit_edge
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %info.i) #15
  %34 = getelementptr inbounds i8, ptr %info.i, i32 56
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 -1, ptr %34, align 8, !annotation !277
  %36 = call ptr @memset(ptr %info.i, i32 0, i32 48)
  %37 = ptrtoint ptr %info.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 1, ptr %info.i, align 8
  %opcode.i = getelementptr inbounds %struct.anon.71, ptr %info.i, i32 0, i32 3
  %read_opcode.i = getelementptr inbounds %struct.spi_nor, ptr %call.i, i32 0, i32 10
  %38 = ptrtoint ptr %read_opcode.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %read_opcode.i, align 2
  %conv.i = zext i8 %39 to i16
  %40 = ptrtoint ptr %opcode.i to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %conv.i, ptr %opcode.i, align 4
  %addr.i = getelementptr inbounds %struct.spi_mem_op, ptr %info.i, i32 0, i32 1
  %addr_width.i = getelementptr inbounds %struct.spi_nor, ptr %call.i, i32 0, i32 8
  %41 = ptrtoint ptr %addr_width.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %addr_width.i, align 4
  %43 = ptrtoint ptr %addr.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %42, ptr %addr.i, align 8
  %dummy.i = getelementptr inbounds %struct.spi_mem_op, ptr %info.i, i32 0, i32 2
  %read_dummy.i = getelementptr inbounds %struct.spi_nor, ptr %call.i, i32 0, i32 11
  %44 = ptrtoint ptr %read_dummy.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %read_dummy.i, align 1
  %46 = ptrtoint ptr %dummy.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %45, ptr %dummy.i, align 8
  %dir.i = getelementptr inbounds %struct.spi_mem_op, ptr %info.i, i32 0, i32 3, i32 2
  %47 = ptrtoint ptr %dir.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 1, ptr %dir.i, align 8
  %offset.i = getelementptr inbounds %struct.spi_mem_dirmap_info, ptr %info.i, i32 0, i32 1
  %48 = ptrtoint ptr %offset.i to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 0, ptr %offset.i, align 8
  %49 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %params, align 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %50, align 8
  store i64 %52, ptr %34, align 8
  %read_proto.i = getelementptr inbounds %struct.spi_nor, ptr %call.i, i32 0, i32 13
  %53 = ptrtoint ptr %read_proto.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %read_proto.i, align 4
  %and.i.i.i = lshr i32 %54, 16
  %conv.i.i.i = trunc i32 %and.i.i.i to i8
  %buswidth.i.i = getelementptr inbounds %struct.anon.71, ptr %info.i, i32 0, i32 1
  %55 = ptrtoint ptr %buswidth.i.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %conv.i.i.i, ptr %buswidth.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool.not.i.i117 = icmp eq i8 %42, 0
  br i1 %tobool.not.i.i117, label %if.end51.if.end.i.i_crit_edge, label %if.then.i.i118

if.end51.if.end.i.i_crit_edge:                    ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i

if.then.i.i118:                                   ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #17
  %and.i68.i.i = lshr i32 %54, 8
  %conv.i69.i.i = trunc i32 %and.i68.i.i to i8
  %buswidth3.i.i = getelementptr inbounds %struct.spi_mem_op, ptr %info.i, i32 0, i32 1, i32 1
  %56 = ptrtoint ptr %buswidth3.i.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %conv.i69.i.i, ptr %buswidth3.i.i, align 1
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i118, %if.end51.if.end.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool5.not.i.i = icmp eq i8 %45, 0
  br i1 %tobool5.not.i.i, label %if.end.i.i.if.end10.i.i_crit_edge, label %if.then6.i.i

if.end.i.i.if.end10.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end10.i.i

if.then6.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %and.i70.i.i = lshr i32 %54, 8
  %conv.i71.i.i = trunc i32 %and.i70.i.i to i8
  %buswidth9.i.i = getelementptr inbounds %struct.spi_mem_op, ptr %info.i, i32 0, i32 2, i32 1
  %57 = ptrtoint ptr %buswidth9.i.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %conv.i71.i.i, ptr %buswidth9.i.i, align 1
  br label %if.end10.i.i

if.end10.i.i:                                     ; preds = %if.then6.i.i, %if.end.i.i.if.end10.i.i_crit_edge
  %and.i73.i.i = and i32 %54, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i73.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i73.i.i, 0
  br i1 %tobool.i.not.i.i, label %if.end10.i.i.spi_nor_spimem_setup_op.exit.i_crit_edge, label %if.then19.i.i

if.end10.i.i.spi_nor_spimem_setup_op.exit.i_crit_edge: ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %spi_nor_spimem_setup_op.exit.i

if.then19.i.i:                                    ; preds = %if.end10.i.i
  %dtr.i.i = getelementptr inbounds %struct.anon.71, ptr %info.i, i32 0, i32 2
  %58 = ptrtoint ptr %dtr.i.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %bf.load.i.i = load i8, ptr %dtr.i.i, align 2
  %bf.set.i.i = or i8 %bf.load.i.i, -128
  store i8 %bf.set.i.i, ptr %dtr.i.i, align 2
  %dtr22.i.i = getelementptr inbounds %struct.spi_mem_op, ptr %info.i, i32 0, i32 1, i32 2
  %59 = ptrtoint ptr %dtr22.i.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %bf.load23.i.i = load i8, ptr %dtr22.i.i, align 2
  %bf.set25.i.i = or i8 %bf.load23.i.i, -128
  store i8 %bf.set25.i.i, ptr %dtr22.i.i, align 2
  %dtr27.i.i = getelementptr inbounds %struct.spi_mem_op, ptr %info.i, i32 0, i32 2, i32 2
  %60 = ptrtoint ptr %dtr27.i.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %bf.load28.i.i = load i8, ptr %dtr27.i.i, align 2
  %bf.set30.i.i = or i8 %bf.load28.i.i, -128
  store i8 %bf.set30.i.i, ptr %dtr27.i.i, align 2
  %dtr32.i.i = getelementptr inbounds %struct.spi_mem_op, ptr %info.i, i32 0, i32 3, i32 1
  %61 = ptrtoint ptr %dtr32.i.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %bf.load33.i.i = load i8, ptr %dtr32.i.i, align 1
  %bf.set35.i.i = or i8 %bf.load33.i.i, -128
  store i8 %bf.set35.i.i, ptr %dtr32.i.i, align 1
  %cmd_ext_type.i.i.i = getelementptr inbounds %struct.spi_nor, ptr %call.i, i32 0, i32 18
  %62 = ptrtoint ptr %cmd_ext_type.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %cmd_ext_type.i.i.i, align 8
  %64 = zext i32 %63 to i64
  call void @__sanitizer_cov_trace_switch(i64 %64, ptr @__sancov_gen_cov_switch_values.144)
  switch i32 %63, label %do.end.i.i.i [
    i32 2, label %sw.bb.i.i.i
    i32 1, label %if.then19.i.i.spi_nor_get_cmd_ext.exit.i.i_crit_edge
  ]

if.then19.i.i.spi_nor_get_cmd_ext.exit.i.i_crit_edge: ; preds = %if.then19.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %spi_nor_get_cmd_ext.exit.i.i

sw.bb.i.i.i:                                      ; preds = %if.then19.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %neg.i.i.i = xor i8 %39, -1
  br label %spi_nor_get_cmd_ext.exit.i.i

do.end.i.i.i:                                     ; preds = %if.then19.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %65 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dev6, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %66, ptr noundef nonnull @.str.32) #18
  br label %spi_nor_get_cmd_ext.exit.i.i

spi_nor_get_cmd_ext.exit.i.i:                     ; preds = %do.end.i.i.i, %sw.bb.i.i.i, %if.then19.i.i.spi_nor_get_cmd_ext.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i8 [ 0, %do.end.i.i.i ], [ %neg.i.i.i, %sw.bb.i.i.i ], [ %39, %if.then19.i.i.spi_nor_get_cmd_ext.exit.i.i_crit_edge ]
  %67 = ptrtoint ptr %opcode.i to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %opcode.i, align 4
  %shl.i.i = shl i16 %68, 8
  %conv42.i.i = zext i8 %retval.0.i.i.i to i16
  %or.i.i = or i16 %shl.i.i, %conv42.i.i
  store i16 %or.i.i, ptr %opcode.i, align 4
  %69 = ptrtoint ptr %info.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 2, ptr %info.i, align 8
  br label %spi_nor_spimem_setup_op.exit.i

spi_nor_spimem_setup_op.exit.i:                   ; preds = %spi_nor_get_cmd_ext.exit.i.i, %if.end10.i.i.spi_nor_spimem_setup_op.exit.i_crit_edge
  %70 = ptrtoint ptr %read_dummy.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %read_dummy.i, align 1
  %conv9.i = zext i8 %71 to i16
  %buswidth.i = getelementptr inbounds %struct.spi_mem_op, ptr %info.i, i32 0, i32 2, i32 1
  %72 = ptrtoint ptr %buswidth.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %buswidth.i, align 1
  %conv11.i = zext i8 %73 to i16
  %mul.i = mul nuw i16 %conv11.i, %conv9.i
  %div45.i = lshr i16 %mul.i, 3
  %conv12.i = trunc i16 %div45.i to i8
  %74 = ptrtoint ptr %dummy.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %conv12.i, ptr %dummy.i, align 8
  %75 = ptrtoint ptr %read_proto.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %read_proto.i, align 4
  %and.i.i = and i32 %76, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %spi_nor_spimem_setup_op.exit.i.spi_nor_create_read_dirmap.exit_crit_edge, label %if.then.i

spi_nor_spimem_setup_op.exit.i.spi_nor_create_read_dirmap.exit_crit_edge: ; preds = %spi_nor_spimem_setup_op.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %spi_nor_create_read_dirmap.exit

if.then.i:                                        ; preds = %spi_nor_spimem_setup_op.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  %mul19.i = shl i8 %conv12.i, 1
  %77 = ptrtoint ptr %dummy.i to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %mul19.i, ptr %dummy.i, align 8
  br label %spi_nor_create_read_dirmap.exit

spi_nor_create_read_dirmap.exit:                  ; preds = %if.then.i, %spi_nor_spimem_setup_op.exit.i.spi_nor_create_read_dirmap.exit_crit_edge
  %data.i = getelementptr inbounds %struct.spi_mem_op, ptr %info.i, i32 0, i32 3
  %conv.i.i = trunc i32 %76 to i8
  %78 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %conv.i.i, ptr %data.i, align 4
  %79 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dev6, align 4
  %81 = ptrtoint ptr %spimem4 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %spimem4, align 8
  %call25.i = call ptr @devm_spi_mem_dirmap_create(ptr noundef %80, ptr noundef %82, ptr noundef nonnull %info.i) #15
  %dirmap.i = getelementptr inbounds %struct.spi_nor, ptr %call.i, i32 0, i32 22
  %83 = ptrtoint ptr %dirmap.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %call25.i, ptr %dirmap.i, align 8
  %cmp.i.i.i.not = icmp ugt ptr %call25.i, inttoptr (i32 -4096 to ptr)
  %84 = ptrtoint ptr %call25.i to i32
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %info.i) #15
  br i1 %cmp.i.i.i.not, label %spi_nor_create_read_dirmap.exit.cleanup_crit_edge, label %if.end55

spi_nor_create_read_dirmap.exit.cleanup_crit_edge: ; preds = %spi_nor_create_read_dirmap.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end55:                                         ; preds = %spi_nor_create_read_dirmap.exit
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %info.i119) #15
  %85 = call ptr @memset(ptr %info.i119, i32 0, i32 56)
  %86 = ptrtoint ptr %info.i119 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 1, ptr %info.i119, align 8
  %opcode.i120 = getelementptr inbounds %struct.anon.71, ptr %info.i119, i32 0, i32 3
  %program_opcode.i = getelementptr inbounds %struct.spi_nor, ptr %call.i, i32 0, i32 12
  %87 = ptrtoint ptr %program_opcode.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %program_opcode.i, align 8
  %conv.i121 = zext i8 %88 to i16
  %89 = ptrtoint ptr %opcode.i120 to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 %conv.i121, ptr %opcode.i120, align 4
  %addr.i122 = getelementptr inbounds %struct.spi_mem_op, ptr %info.i119, i32 0, i32 1
  %90 = ptrtoint ptr %addr_width.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %addr_width.i, align 4
  %92 = ptrtoint ptr %addr.i122 to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %91, ptr %addr.i122, align 8
  %dir.i124 = getelementptr inbounds %struct.spi_mem_op, ptr %info.i119, i32 0, i32 3, i32 2
  %93 = ptrtoint ptr %dir.i124 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 2, ptr %dir.i124, align 8
  %length.i125 = getelementptr inbounds %struct.spi_mem_dirmap_info, ptr %info.i119, i32 0, i32 2
  %94 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %params, align 4
  %96 = ptrtoint ptr %95 to i32
  call void @__asan_load8_noabort(i32 %96)
  %97 = load i64, ptr %95, align 8
  %98 = ptrtoint ptr %length.i125 to i32
  call void @__asan_store8_noabort(i32 %98)
  store i64 %97, ptr %length.i125, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -83, i8 %88)
  %cmp.i = icmp eq i8 %88, -83
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end55.if.end.i_crit_edge

if.end55.if.end.i_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.end55
  %sst_write_second.i = getelementptr inbounds %struct.spi_nor, ptr %call.i, i32 0, i32 16
  %99 = ptrtoint ptr %sst_write_second.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %sst_write_second.i, align 8, !range !271
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %100)
  %tobool.not.i = icmp eq i8 %100, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %if.end.i.thread

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

if.end.i.thread:                                  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  %101 = ptrtoint ptr %addr.i122 to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 0, ptr %addr.i122, align 8
  %write_proto.i177 = getelementptr inbounds %struct.spi_nor, ptr %call.i, i32 0, i32 14
  %102 = ptrtoint ptr %write_proto.i177 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %write_proto.i177, align 8
  %and.i.i.i128178 = lshr i32 %103, 16
  %conv.i.i.i129179 = trunc i32 %and.i.i.i128178 to i8
  %buswidth.i.i130180 = getelementptr inbounds %struct.anon.71, ptr %info.i119, i32 0, i32 1
  %104 = ptrtoint ptr %buswidth.i.i130180 to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 %conv.i.i.i129179, ptr %buswidth.i.i130180, align 1
  br label %if.end.i.i137

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %if.end55.if.end.i_crit_edge
  %105 = ptrtoint ptr %addr.i122 to i32
  call void @__asan_load1_noabort(i32 %105)
  %.pr176 = load i8, ptr %addr.i122, align 8
  %write_proto.i = getelementptr inbounds %struct.spi_nor, ptr %call.i, i32 0, i32 14
  %106 = ptrtoint ptr %write_proto.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %write_proto.i, align 8
  %and.i.i.i128 = lshr i32 %107, 16
  %conv.i.i.i129 = trunc i32 %and.i.i.i128 to i8
  %buswidth.i.i130 = getelementptr inbounds %struct.anon.71, ptr %info.i119, i32 0, i32 1
  %108 = ptrtoint ptr %buswidth.i.i130 to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 %conv.i.i.i129, ptr %buswidth.i.i130, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr176)
  %tobool.not.i.i131 = icmp eq i8 %.pr176, 0
  br i1 %tobool.not.i.i131, label %if.end.i.if.end.i.i137_crit_edge, label %if.then.i.i135

if.end.i.if.end.i.i137_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i137

if.then.i.i135:                                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %and.i68.i.i132 = lshr i32 %107, 8
  %conv.i69.i.i133 = trunc i32 %and.i68.i.i132 to i8
  %buswidth3.i.i134 = getelementptr inbounds %struct.spi_mem_op, ptr %info.i119, i32 0, i32 1, i32 1
  %109 = ptrtoint ptr %buswidth3.i.i134 to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 %conv.i69.i.i133, ptr %buswidth3.i.i134, align 1
  br label %if.end.i.i137

if.end.i.i137:                                    ; preds = %if.then.i.i135, %if.end.i.if.end.i.i137_crit_edge, %if.end.i.thread
  %110 = phi i32 [ %103, %if.end.i.thread ], [ %107, %if.then.i.i135 ], [ %107, %if.end.i.if.end.i.i137_crit_edge ]
  %write_proto.i182 = phi ptr [ %write_proto.i177, %if.end.i.thread ], [ %write_proto.i, %if.then.i.i135 ], [ %write_proto.i, %if.end.i.if.end.i.i137_crit_edge ]
  %dummy.i.i = getelementptr inbounds %struct.spi_mem_op, ptr %info.i119, i32 0, i32 2
  %111 = ptrtoint ptr %dummy.i.i to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %dummy.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %112)
  %tobool5.not.i.i136 = icmp eq i8 %112, 0
  br i1 %tobool5.not.i.i136, label %if.end.i.i137.if.end10.i.i144_crit_edge, label %if.then6.i.i141

if.end.i.i137.if.end10.i.i144_crit_edge:          ; preds = %if.end.i.i137
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end10.i.i144

if.then6.i.i141:                                  ; preds = %if.end.i.i137
  call void @__sanitizer_cov_trace_pc() #17
  %and.i70.i.i138 = lshr i32 %110, 8
  %conv.i71.i.i139 = trunc i32 %and.i70.i.i138 to i8
  %buswidth9.i.i140 = getelementptr inbounds %struct.spi_mem_op, ptr %info.i119, i32 0, i32 2, i32 1
  %113 = ptrtoint ptr %buswidth9.i.i140 to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 %conv.i71.i.i139, ptr %buswidth9.i.i140, align 1
  br label %if.end10.i.i144

if.end10.i.i144:                                  ; preds = %if.then6.i.i141, %if.end.i.i137.if.end10.i.i144_crit_edge
  %and.i73.i.i142 = and i32 %110, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i73.i.i142)
  %tobool.i.not.i.i143 = icmp eq i32 %and.i73.i.i142, 0
  br i1 %tobool.i.not.i.i143, label %if.end10.i.i144.spi_nor_create_write_dirmap.exit_crit_edge, label %if.then19.i.i158

if.end10.i.i144.spi_nor_create_write_dirmap.exit_crit_edge: ; preds = %if.end10.i.i144
  call void @__sanitizer_cov_trace_pc() #17
  br label %spi_nor_create_write_dirmap.exit

if.then19.i.i158:                                 ; preds = %if.end10.i.i144
  %dtr.i.i145 = getelementptr inbounds %struct.anon.71, ptr %info.i119, i32 0, i32 2
  %114 = ptrtoint ptr %dtr.i.i145 to i32
  call void @__asan_load1_noabort(i32 %114)
  %bf.load.i.i146 = load i8, ptr %dtr.i.i145, align 2
  %bf.set.i.i147 = or i8 %bf.load.i.i146, -128
  store i8 %bf.set.i.i147, ptr %dtr.i.i145, align 2
  %dtr22.i.i148 = getelementptr inbounds %struct.spi_mem_op, ptr %info.i119, i32 0, i32 1, i32 2
  %115 = ptrtoint ptr %dtr22.i.i148 to i32
  call void @__asan_load1_noabort(i32 %115)
  %bf.load23.i.i149 = load i8, ptr %dtr22.i.i148, align 2
  %bf.set25.i.i150 = or i8 %bf.load23.i.i149, -128
  store i8 %bf.set25.i.i150, ptr %dtr22.i.i148, align 2
  %dtr27.i.i151 = getelementptr inbounds %struct.spi_mem_op, ptr %info.i119, i32 0, i32 2, i32 2
  %116 = ptrtoint ptr %dtr27.i.i151 to i32
  call void @__asan_load1_noabort(i32 %116)
  %bf.load28.i.i152 = load i8, ptr %dtr27.i.i151, align 2
  %bf.set30.i.i153 = or i8 %bf.load28.i.i152, -128
  store i8 %bf.set30.i.i153, ptr %dtr27.i.i151, align 2
  %dtr32.i.i154 = getelementptr inbounds %struct.spi_mem_op, ptr %info.i119, i32 0, i32 3, i32 1
  %117 = ptrtoint ptr %dtr32.i.i154 to i32
  call void @__asan_load1_noabort(i32 %117)
  %bf.load33.i.i155 = load i8, ptr %dtr32.i.i154, align 1
  %bf.set35.i.i156 = or i8 %bf.load33.i.i155, -128
  store i8 %bf.set35.i.i156, ptr %dtr32.i.i154, align 1
  %mul.i.i = shl i8 %112, 1
  %118 = ptrtoint ptr %dummy.i.i to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 %mul.i.i, ptr %dummy.i.i, align 8
  %cmd_ext_type.i.i.i157 = getelementptr inbounds %struct.spi_nor, ptr %call.i, i32 0, i32 18
  %119 = ptrtoint ptr %cmd_ext_type.i.i.i157 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %cmd_ext_type.i.i.i157, align 8
  %121 = zext i32 %120 to i64
  call void @__sanitizer_cov_trace_switch(i64 %121, ptr @__sancov_gen_cov_switch_values.145)
  switch i32 %120, label %do.end.i.i.i162 [
    i32 2, label %sw.bb.i.i.i160
    i32 1, label %if.then19.i.i158.spi_nor_get_cmd_ext.exit.i.i167_crit_edge
  ]

if.then19.i.i158.spi_nor_get_cmd_ext.exit.i.i167_crit_edge: ; preds = %if.then19.i.i158
  call void @__sanitizer_cov_trace_pc() #17
  br label %spi_nor_get_cmd_ext.exit.i.i167

sw.bb.i.i.i160:                                   ; preds = %if.then19.i.i158
  call void @__sanitizer_cov_trace_pc() #17
  %neg.i.i.i159 = xor i8 %88, -1
  br label %spi_nor_get_cmd_ext.exit.i.i167

do.end.i.i.i162:                                  ; preds = %if.then19.i.i158
  call void @__sanitizer_cov_trace_pc() #17
  %122 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %dev6, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %123, ptr noundef nonnull @.str.32) #18
  br label %spi_nor_get_cmd_ext.exit.i.i167

spi_nor_get_cmd_ext.exit.i.i167:                  ; preds = %do.end.i.i.i162, %sw.bb.i.i.i160, %if.then19.i.i158.spi_nor_get_cmd_ext.exit.i.i167_crit_edge
  %retval.0.i.i.i163 = phi i8 [ 0, %do.end.i.i.i162 ], [ %neg.i.i.i159, %sw.bb.i.i.i160 ], [ %88, %if.then19.i.i158.spi_nor_get_cmd_ext.exit.i.i167_crit_edge ]
  %124 = ptrtoint ptr %opcode.i120 to i32
  call void @__asan_load2_noabort(i32 %124)
  %125 = load i16, ptr %opcode.i120, align 4
  %shl.i.i164 = shl i16 %125, 8
  %conv42.i.i165 = zext i8 %retval.0.i.i.i163 to i16
  %or.i.i166 = or i16 %shl.i.i164, %conv42.i.i165
  store i16 %or.i.i166, ptr %opcode.i120, align 4
  %126 = ptrtoint ptr %info.i119 to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 2, ptr %info.i119, align 8
  br label %spi_nor_create_write_dirmap.exit

spi_nor_create_write_dirmap.exit:                 ; preds = %spi_nor_get_cmd_ext.exit.i.i167, %if.end10.i.i144.spi_nor_create_write_dirmap.exit_crit_edge
  %data.i168 = getelementptr inbounds %struct.spi_mem_op, ptr %info.i119, i32 0, i32 3
  %127 = ptrtoint ptr %write_proto.i182 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %write_proto.i182, align 8
  %conv.i.i169 = trunc i32 %128 to i8
  %129 = ptrtoint ptr %data.i168 to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 %conv.i.i169, ptr %data.i168, align 4
  %130 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %dev6, align 4
  %132 = ptrtoint ptr %spimem4 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %spimem4, align 8
  %call16.i = call ptr @devm_spi_mem_dirmap_create(ptr noundef %131, ptr noundef %133, ptr noundef nonnull %info.i119) #15
  %wdesc.i = getelementptr inbounds %struct.spi_nor, ptr %call.i, i32 0, i32 22, i32 1
  %134 = ptrtoint ptr %wdesc.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr %call16.i, ptr %wdesc.i, align 4
  %cmp.i.i.i172.not = icmp ugt ptr %call16.i, inttoptr (i32 -4096 to ptr)
  %135 = ptrtoint ptr %call16.i to i32
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %info.i119) #15
  br i1 %cmp.i.i.i172.not, label %spi_nor_create_write_dirmap.exit.cleanup_crit_edge, label %if.end59

spi_nor_create_write_dirmap.exit.cleanup_crit_edge: ; preds = %spi_nor_create_write_dirmap.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end59:                                         ; preds = %spi_nor_create_write_dirmap.exit
  br i1 %tobool8.not, label %if.end59.cond.end65_crit_edge, label %cond.true63

if.end59.cond.end65_crit_edge:                    ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end65

cond.true63:                                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #17
  %parts = getelementptr inbounds %struct.flash_platform_data, ptr %3, i32 0, i32 1
  %136 = ptrtoint ptr %parts to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %parts, align 4
  %nr_parts = getelementptr inbounds %struct.flash_platform_data, ptr %3, i32 0, i32 2
  %138 = ptrtoint ptr %nr_parts to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %nr_parts, align 4
  br label %cond.end65

cond.end65:                                       ; preds = %cond.true63, %if.end59.cond.end65_crit_edge
  %cond184 = phi ptr [ %137, %cond.true63 ], [ null, %if.end59.cond.end65_crit_edge ]
  %cond66 = phi i32 [ %139, %cond.true63 ], [ 0, %if.end59.cond.end65_crit_edge ]
  %call67 = call i32 @mtd_device_parse_register(ptr noundef nonnull %call.i, ptr noundef null, ptr noundef null, ptr noundef %cond184, i32 noundef %cond66) #15
  br label %cleanup

cleanup:                                          ; preds = %cond.end65, %spi_nor_create_write_dirmap.exit.cleanup_crit_edge, %spi_nor_create_read_dirmap.exit.cleanup_crit_edge, %if.then39.cleanup_crit_edge, %if.end34.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call67, %cond.end65 ], [ -12, %entry.cleanup_crit_edge ], [ %call35, %if.end34.cleanup_crit_edge ], [ -12, %if.then39.cleanup_crit_edge ], [ %84, %spi_nor_create_read_dirmap.exit.cleanup_crit_edge ], [ %135, %spi_nor_create_write_dirmap.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hwcaps) #15
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spi_nor_remove(ptr nocapture noundef readonly %spimem) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %drvpriv.i = getelementptr inbounds %struct.spi_mem, ptr %spimem, i32 0, i32 1
  %0 = ptrtoint ptr %drvpriv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drvpriv.i, align 4
  tail call void @spi_nor_restore(ptr noundef %1)
  %call1 = tail call i32 @mtd_device_unregister(ptr noundef %1) #15
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @spi_nor_shutdown(ptr nocapture noundef readonly %spimem) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %drvpriv.i = getelementptr inbounds %struct.spi_mem, ptr %spimem, i32 0, i32 1
  %0 = ptrtoint ptr %drvpriv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drvpriv.i, align 4
  tail call void @spi_nor_restore(ptr noundef %1)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @spi_mem_get_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_device_parse_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_spi_mem_dirmap_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #15

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #16 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 125)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #16 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 125)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind readonly }
attributes #11 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { argmemonly nofree nounwind readonly willreturn }
attributes #15 = { nounwind }
attributes #16 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #17 = { nomerge }
attributes #18 = { cold nounwind }
attributes #19 = { nobuiltin nounwind }
attributes #20 = { nounwind readnone }
attributes #21 = { nounwind allocsize(2) }
attributes #22 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !16, !17, !18, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !47, !49, !50, !51, !53, !55, !57, !58, !60, !61, !62, !63, !64, !65, !67, !68, !70, !71, !73, !75, !76, !78, !79, !81, !83, !85, !87, !88, !89, !90, !91, !93, !94, !95, !97, !98, !99, !100, !102, !103, !104, !106, !107, !108, !110, !111, !112, !113, !115, !116, !117, !119, !120, !121, !123, !124, !125, !127, !128, !129, !131, !132, !134, !135, !136, !138, !139, !140, !142, !143, !144, !146, !147, !148, !149, !150, !152, !153, !155, !156, !157, !158, !160, !161, !162, !164, !165, !166, !167, !169, !171, !172, !173, !175, !176, !177, !179, !180, !181, !182, !184, !186, !187, !189, !190, !191, !193, !194, !196, !197, !199, !200, !202, !204, !206, !207, !208, !210, !212, !214, !215, !216, !218, !219, !221, !222, !224, !225, !226, !228, !229, !230, !232, !233, !235, !236, !237, !239, !240, !241, !243, !244, !245, !246, !248, !249, !250, !251, !253, !255, !257, !259}
!llvm.named.register.sp = !{!261}
!llvm.module.flags = !{!262, !263, !264, !265, !266, !267, !268, !269}
!llvm.ident = !{!270}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/mtd/spi-nor/core.c", i32 336, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @spi_nor_write_enable.__UNIQUE_ID_ddebug236, !1, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/mtd/spi-nor/core.c", i32 367, i32 3}
!8 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @spi_nor_write_disable.__UNIQUE_ID_ddebug237, !7, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/mtd/spi-nor/core.c", i32 410, i32 3}
!12 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @spi_nor_read_sr.__UNIQUE_ID_ddebug238, !11, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/mtd/spi-nor/core.c", i32 488, i32 3}
!16 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @spi_nor_read_cr.__UNIQUE_ID_ddebug240, !15, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!18 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/mtd/spi-nor/core.c", i32 526, i32 3}
!20 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @spi_nor_set_4byte_addr_mode.__UNIQUE_ID_ddebug241, !19, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!22 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/mtd/spi-nor/core.c", i32 596, i32 3}
!24 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @spi_nor_write_ear.__UNIQUE_ID_ddebug243, !23, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!26 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/mtd/spi-nor/core.c", i32 629, i32 3}
!28 = !{ptr @.str.15, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @spi_nor_xread_sr.__UNIQUE_ID_ddebug244, !27, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!30 = !{ptr @.str.16, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/mtd/spi-nor/core.c", i32 886, i32 3}
!32 = !{ptr @.str.17, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @spi_nor_global_block_unlock.__UNIQUE_ID_ddebug248, !31, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!34 = !{ptr @.str.18, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/mtd/spi-nor/core.c", i32 925, i32 3}
!36 = !{ptr @.str.19, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @spi_nor_write_sr.__UNIQUE_ID_ddebug249, !35, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!38 = !{ptr @.str.20, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/mtd/spi-nor/core.c", i32 1061, i32 3}
!40 = !{ptr @.str.21, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @spi_nor_write_16bit_cr_and_check.__UNIQUE_ID_ddebug252, !39, !"__UNIQUE_ID_ddebug252", i1 false, i1 false}
!42 = !{ptr @.str.22, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/mtd/spi-nor/core.c", i32 1073, i32 3}
!44 = !{ptr @spi_nor_write_16bit_cr_and_check.__UNIQUE_ID_ddebug253, !43, !"__UNIQUE_ID_ddebug253", i1 false, i1 false}
!45 = !{ptr @spi_nor_convert_3to4_read.spi_nor_3to4_read, !46, !"spi_nor_3to4_read", i1 false, i1 false}
!46 = !{!"../drivers/mtd/spi-nor/core.c", i32 1218, i32 18}
!47 = !{ptr @.str.23, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/mtd/spi-nor/core.c", i32 1824, i32 3}
!49 = !{ptr @.str.24, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @spi_nor_sr2_bit7_quad_enable.__UNIQUE_ID_ddebug261, !48, !"__UNIQUE_ID_ddebug261", i1 false, i1 false}
!51 = !{ptr @spi_nor_hwcaps_read2cmd.hwcaps_read2cmd, !52, !"hwcaps_read2cmd", i1 false, i1 false}
!52 = !{!"../drivers/mtd/spi-nor/core.c", i32 2059, i32 19}
!53 = !{ptr @__ksymtab_spi_nor_restore, !54, !"__ksymtab_spi_nor_restore", i1 false, i1 false}
!54 = !{!"../drivers/mtd/spi-nor/core.c", i32 3110, i32 1}
!55 = !{ptr @spi_nor_scan.__key, !56, !"__key", i1 false, i1 false}
!56 = !{!"../drivers/mtd/spi-nor/core.c", i32 3236, i32 2}
!57 = !{ptr @.str.25, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.26, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/mtd/spi-nor/core.c", i32 3262, i32 2}
!60 = !{ptr @.str.27, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.28, !59, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @spi_nor_scan._entry, !59, !"_entry", i1 false, i1 false}
!64 = !{ptr @spi_nor_scan._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.30, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/mtd/spi-nor/core.c", i32 3265, i32 2}
!67 = !{ptr @spi_nor_scan.__UNIQUE_ID_ddebug274, !66, !"__UNIQUE_ID_ddebug274", i1 false, i1 false}
!68 = !{ptr @.str.31, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/mtd/spi-nor/core.c", i32 3273, i32 4}
!70 = !{ptr @spi_nor_scan.__UNIQUE_ID_ddebug275, !69, !"__UNIQUE_ID_ddebug275", i1 false, i1 false}
!71 = !{ptr @__ksymtab_spi_nor_scan, !72, !"__ksymtab_spi_nor_scan", i1 false, i1 false}
!72 = !{!"../drivers/mtd/spi-nor/core.c", i32 3283, i32 1}
!73 = !{ptr @__initcall__kmod_spi_nor__276_3520_spi_nor_driver_init6, !74, !"__initcall__kmod_spi_nor__276_3520_spi_nor_driver_init6", i1 false, i1 false}
!74 = !{!"../drivers/mtd/spi-nor/core.c", i32 3520, i32 1}
!75 = !{ptr @__exitcall_spi_nor_driver_exit, !74, !"__exitcall_spi_nor_driver_exit", i1 false, i1 false}
!76 = !{ptr @__UNIQUE_ID_file277, !77, !"__UNIQUE_ID_file277", i1 false, i1 false}
!77 = !{!"../drivers/mtd/spi-nor/core.c", i32 3522, i32 1}
!78 = !{ptr @__UNIQUE_ID_license278, !77, !"__UNIQUE_ID_license278", i1 false, i1 false}
!79 = !{ptr @__UNIQUE_ID_author279, !80, !"__UNIQUE_ID_author279", i1 false, i1 false}
!80 = !{!"../drivers/mtd/spi-nor/core.c", i32 3523, i32 1}
!81 = !{ptr @__UNIQUE_ID_author280, !82, !"__UNIQUE_ID_author280", i1 false, i1 false}
!82 = !{!"../drivers/mtd/spi-nor/core.c", i32 3524, i32 1}
!83 = !{ptr @__UNIQUE_ID_description281, !84, !"__UNIQUE_ID_description281", i1 false, i1 false}
!84 = !{!"../drivers/mtd/spi-nor/core.c", i32 3525, i32 1}
!85 = !{ptr @.str.32, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/mtd/spi-nor/core.c", i32 68, i32 3}
!87 = !{ptr @.str.33, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @.str.34, !86, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @spi_nor_get_cmd_ext._entry, !86, !"_entry", i1 false, i1 false}
!90 = !{ptr @spi_nor_get_cmd_ext._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.35, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/mtd/spi-nor/core.c", i32 838, i32 2}
!93 = !{ptr @.str.36, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @spi_nor_wait_till_ready_with_timeout.__UNIQUE_ID_ddebug247, !92, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!95 = !{ptr @.str.37, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/mtd/spi-nor/core.c", i32 696, i32 4}
!97 = !{ptr @.str.38, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @spi_nor_sr_ready._entry, !96, !"_entry", i1 false, i1 false}
!99 = !{ptr @spi_nor_sr_ready._entry_ptr, !96, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.40, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/mtd/spi-nor/core.c", i32 698, i32 4}
!102 = !{ptr @spi_nor_sr_ready._entry.39, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @spi_nor_sr_ready._entry_ptr.41, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.42, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/mtd/spi-nor/core.c", i32 676, i32 3}
!106 = !{ptr @.str.43, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @spi_nor_clear_sr.__UNIQUE_ID_ddebug245, !105, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!108 = !{ptr @.str.44, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/mtd/spi-nor/core.c", i32 761, i32 4}
!110 = !{ptr @.str.45, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @spi_nor_fsr_ready._entry, !109, !"_entry", i1 false, i1 false}
!112 = !{ptr @spi_nor_fsr_ready._entry_ptr, !109, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.47, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/mtd/spi-nor/core.c", i32 763, i32 4}
!115 = !{ptr @spi_nor_fsr_ready._entry.46, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @spi_nor_fsr_ready._entry_ptr.48, !114, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.50, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/mtd/spi-nor/core.c", i32 766, i32 4}
!119 = !{ptr @spi_nor_fsr_ready._entry.49, !118, !"_entry", i1 false, i1 false}
!120 = !{ptr @spi_nor_fsr_ready._entry_ptr.51, !118, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.52, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/mtd/spi-nor/core.c", i32 454, i32 3}
!123 = !{ptr @.str.53, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @spi_nor_read_fsr.__UNIQUE_ID_ddebug239, !122, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!125 = !{ptr @.str.54, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/mtd/spi-nor/core.c", i32 742, i32 3}
!127 = !{ptr @.str.55, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @spi_nor_clear_fsr.__UNIQUE_ID_ddebug246, !126, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!129 = !{ptr @.str.56, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/mtd/spi-nor/core.c", i32 1020, i32 3}
!131 = !{ptr @spi_nor_write_16bit_sr_and_check.__UNIQUE_ID_ddebug251, !130, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!132 = !{ptr @.str.57, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/mtd/spi-nor/core.c", i32 955, i32 3}
!134 = !{ptr @.str.58, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @spi_nor_write_sr1_and_check.__UNIQUE_ID_ddebug250, !133, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!136 = !{ptr @.str.59, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/mtd/spi-nor/core.c", i32 1165, i32 3}
!138 = !{ptr @.str.60, !137, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @spi_nor_read_sr2.__UNIQUE_ID_ddebug255, !137, !"__UNIQUE_ID_ddebug255", i1 false, i1 false}
!140 = !{ptr @.str.61, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/mtd/spi-nor/core.c", i32 1129, i32 3}
!142 = !{ptr @.str.62, !141, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @spi_nor_write_sr2.__UNIQUE_ID_ddebug254, !141, !"__UNIQUE_ID_ddebug254", i1 false, i1 false}
!144 = !{ptr @.str.63, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/mtd/spi-nor/core.c", i32 3017, i32 3}
!146 = !{ptr @.str.64, !145, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @.str.65, !145, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @spi_nor_soft_reset._entry, !145, !"_entry", i1 false, i1 false}
!149 = !{ptr @spi_nor_soft_reset._entry_ptr, !145, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @spi_nor_soft_reset._entry.66, !151, !"_entry", i1 false, i1 false}
!151 = !{!"../drivers/mtd/spi-nor/core.c", i32 3030, i32 3}
!152 = !{ptr @spi_nor_soft_reset._entry_ptr.67, !151, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @.str.68, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/mtd/spi-nor/core.c", i32 2014, i32 3}
!155 = !{ptr @.str.69, !154, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @spi_nor_check._entry, !154, !"_entry", i1 false, i1 false}
!157 = !{ptr @spi_nor_check._entry_ptr, !154, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.71, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/mtd/spi-nor/core.c", i32 2019, i32 3}
!160 = !{ptr @spi_nor_check._entry.70, !159, !"_entry", i1 false, i1 false}
!161 = !{ptr @spi_nor_check._entry_ptr.72, !159, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.73, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/mtd/spi-nor/core.c", i32 3160, i32 4}
!164 = !{ptr @.str.74, !163, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @spi_nor_get_flash_info._entry, !163, !"_entry", i1 false, i1 false}
!166 = !{ptr @spi_nor_get_flash_info._entry_ptr, !163, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @manufacturers, !168, !"manufacturers", i1 false, i1 false}
!168 = !{!"../drivers/mtd/spi-nor/core.c", i32 1831, i32 43}
!169 = !{ptr @.str.75, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/mtd/spi-nor/core.c", i32 1886, i32 3}
!171 = !{ptr @.str.76, !170, !"<string literal>", i1 false, i1 false}
!172 = !{ptr @spi_nor_read_id.__UNIQUE_ID_ddebug262, !170, !"__UNIQUE_ID_ddebug262", i1 false, i1 false}
!173 = !{ptr @.str.77, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/mtd/spi-nor/core.c", i32 1900, i32 2}
!175 = !{ptr @spi_nor_read_id._entry, !174, !"_entry", i1 false, i1 false}
!176 = !{ptr @spi_nor_read_id._entry_ptr, !174, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @.str.78, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/mtd/spi-nor/core.c", i32 2875, i32 4}
!179 = !{ptr @.str.79, !178, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @spi_nor_init_params._entry, !178, !"_entry", i1 false, i1 false}
!181 = !{ptr @spi_nor_init_params._entry_ptr, !178, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @.str.80, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/mtd/spi-nor/core.c", i32 2805, i32 40}
!184 = !{ptr @.str.81, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/mtd/spi-nor/core.c", i32 562, i32 3}
!186 = !{ptr @spansion_set_4byte_addr_mode.__UNIQUE_ID_ddebug242, !185, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!187 = !{ptr @.str.82, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/mtd/spi-nor/core.c", i32 2454, i32 4}
!189 = !{ptr @.str.83, !188, !"<string literal>", i1 false, i1 false}
!190 = !{ptr @spi_nor_default_setup.__UNIQUE_ID_ddebug267, !188, !"__UNIQUE_ID_ddebug267", i1 false, i1 false}
!191 = !{ptr @.str.84, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/mtd/spi-nor/core.c", i32 2463, i32 3}
!193 = !{ptr @spi_nor_default_setup.__UNIQUE_ID_ddebug268, !192, !"__UNIQUE_ID_ddebug268", i1 false, i1 false}
!194 = !{ptr @.str.85, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/mtd/spi-nor/core.c", i32 2471, i32 3}
!196 = !{ptr @spi_nor_default_setup.__UNIQUE_ID_ddebug269, !195, !"__UNIQUE_ID_ddebug269", i1 false, i1 false}
!197 = !{ptr @.str.86, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/mtd/spi-nor/core.c", i32 2479, i32 3}
!199 = !{ptr @spi_nor_default_setup.__UNIQUE_ID_ddebug270, !198, !"__UNIQUE_ID_ddebug270", i1 false, i1 false}
!200 = !{ptr @spi_nor_hwcaps_pp2cmd.hwcaps_pp2cmd, !201, !"hwcaps_pp2cmd", i1 false, i1 false}
!201 = !{!"../drivers/mtd/spi-nor/core.c", i32 2084, i32 19}
!202 = !{ptr @.str.87, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/mtd/spi-nor/core.c", i32 2646, i32 32}
!204 = !{ptr @.str.88, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/mtd/spi-nor/core.c", i32 2517, i32 3}
!206 = !{ptr @.str.89, !205, !"<string literal>", i1 false, i1 false}
!207 = !{ptr @spi_nor_set_addr_width.__UNIQUE_ID_ddebug271, !205, !"__UNIQUE_ID_ddebug271", i1 false, i1 false}
!208 = !{ptr @spi_nor_convert_3to4_program.spi_nor_3to4_program, !209, !"spi_nor_3to4_program", i1 false, i1 false}
!209 = !{!"../drivers/mtd/spi-nor/core.c", i32 1239, i32 18}
!210 = !{ptr @spi_nor_convert_3to4_erase.spi_nor_3to4_erase, !211, !"spi_nor_3to4_erase", i1 false, i1 false}
!211 = !{!"../drivers/mtd/spi-nor/core.c", i32 1253, i32 18}
!212 = !{ptr @.str.90, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/mtd/spi-nor/core.c", i32 2945, i32 3}
!214 = !{ptr @.str.91, !213, !"<string literal>", i1 false, i1 false}
!215 = !{ptr @spi_nor_init.__UNIQUE_ID_ddebug272, !213, !"__UNIQUE_ID_ddebug272", i1 false, i1 false}
!216 = !{ptr @.str.92, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/mtd/spi-nor/core.c", i32 2951, i32 3}
!218 = !{ptr @spi_nor_init.__UNIQUE_ID_ddebug273, !217, !"__UNIQUE_ID_ddebug273", i1 false, i1 false}
!219 = distinct !{null, !220, !"__already_done", i1 false, i1 false}
!220 = !{!"../drivers/mtd/spi-nor/core.c", i32 2980, i32 3}
!221 = !{ptr @.str.93, !220, !"<string literal>", i1 false, i1 false}
!222 = !{ptr @.str.94, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/mtd/spi-nor/core.c", i32 1651, i32 2}
!224 = !{ptr @.str.95, !223, !"<string literal>", i1 false, i1 false}
!225 = !{ptr @spi_nor_erase.__UNIQUE_ID_ddebug258, !223, !"__UNIQUE_ID_ddebug258", i1 false, i1 false}
!226 = !{ptr @.str.96, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/mtd/spi-nor/core.c", i32 1180, i32 2}
!228 = !{ptr @.str.97, !227, !"<string literal>", i1 false, i1 false}
!229 = !{ptr @spi_nor_erase_chip.__UNIQUE_ID_ddebug256, !227, !"__UNIQUE_ID_ddebug256", i1 false, i1 false}
!230 = !{ptr @.str.98, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/mtd/spi-nor/core.c", i32 1199, i32 3}
!232 = !{ptr @spi_nor_erase_chip.__UNIQUE_ID_ddebug257, !231, !"__UNIQUE_ID_ddebug257", i1 false, i1 false}
!233 = !{ptr @.str.99, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/mtd/spi-nor/core.c", i32 1911, i32 2}
!235 = !{ptr @.str.100, !234, !"<string literal>", i1 false, i1 false}
!236 = !{ptr @spi_nor_read.__UNIQUE_ID_ddebug263, !234, !"__UNIQUE_ID_ddebug263", i1 false, i1 false}
!237 = !{ptr @.str.101, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/mtd/spi-nor/core.c", i32 1957, i32 2}
!239 = !{ptr @.str.102, !238, !"<string literal>", i1 false, i1 false}
!240 = !{ptr @spi_nor_write.__UNIQUE_ID_ddebug264, !238, !"__UNIQUE_ID_ddebug264", i1 false, i1 false}
!241 = !{ptr @.str.103, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/mtd/spi-nor/core.c", i32 3051, i32 3}
!243 = !{ptr @.str.104, !242, !"<string literal>", i1 false, i1 false}
!244 = !{ptr @spi_nor_suspend._entry, !242, !"_entry", i1 false, i1 false}
!245 = !{ptr @spi_nor_suspend._entry_ptr, !242, !"_entry_ptr", i1 false, i1 false}
!246 = !{ptr @.str.105, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/mtd/spi-nor/core.c", i32 3066, i32 3}
!248 = !{ptr @.str.106, !247, !"<string literal>", i1 false, i1 false}
!249 = !{ptr @spi_nor_resume._entry, !247, !"_entry", i1 false, i1 false}
!250 = !{ptr @spi_nor_resume._entry_ptr, !247, !"_entry_ptr", i1 false, i1 false}
!251 = !{ptr @.str.107, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/mtd/spi-nor/core.c", i32 3510, i32 12}
!253 = !{ptr @spi_nor_driver, !254, !"spi_nor_driver", i1 false, i1 false}
!254 = !{!"../drivers/mtd/spi-nor/core.c", i32 3507, i32 30}
!255 = !{ptr @spi_nor_dev_ids, !256, !"spi_nor_dev_ids", i1 false, i1 false}
!256 = !{!"../drivers/mtd/spi-nor/core.c", i32 3447, i32 35}
!257 = !{ptr @spi_nor_of_table, !258, !"spi_nor_of_table", i1 false, i1 false}
!258 = !{!"../drivers/mtd/spi-nor/core.c", i32 3492, i32 34}
!259 = !{ptr @.str.108, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../include/linux/mtd/mtd.h", i32 464, i32 31}
!261 = !{!"sp"}
!262 = !{i32 1, !"wchar_size", i32 2}
!263 = !{i32 1, !"min_enum_size", i32 4}
!264 = !{i32 8, !"branch-target-enforcement", i32 0}
!265 = !{i32 8, !"sign-return-address", i32 0}
!266 = !{i32 8, !"sign-return-address-all", i32 0}
!267 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!268 = !{i32 7, !"uwtable", i32 1}
!269 = !{i32 7, !"frame-pointer", i32 2}
!270 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!271 = !{i8 0, i8 2}
!272 = !{i64 2149047504, i64 2149047509, i64 2149047522, i64 2149047566, i64 2149047600, i64 2149047621}
!273 = !{i32 0, i32 33}
!274 = !{!"branch_weights", i32 2000, i32 1}
!275 = !{i64 2148280551, i64 2148280831, i64 2148281165, i64 2148281499}
!276 = !{!"branch_weights", i32 1, i32 2000}
!277 = !{!"auto-init"}
