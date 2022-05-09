; ModuleID = '/llk/IR_all_yes/drivers/staging/rts5208/rtsx_chip.c_pt.bc'
source_filename = "../drivers/staging/rts5208/rtsx_chip.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.rtsx_dev = type { ptr, i32, ptr, i32, %struct.spinlock, ptr, ptr, %struct.completion, %struct.completion, %struct.completion, %struct.completion, %struct.completion, %struct.wait_queue_head, %struct.mutex, ptr, i32, i8, i8, ptr, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.rtsx_chip = type { ptr, i32, i8, ptr, ptr, i32, i32, ptr, i32, i32, ptr, [8 x %struct.sense_data_t], i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, [8 x i8], [8 x i32], [8 x ptr], [8 x i32], [32 x i8], [8 x i8], [8 x i32], i32, i32, i32, %struct.sd_info, %struct.xd_info, %struct.ms_info, %struct.spi_info, i32, i32, i32, i32, i32, i32, [12 x i8], i8, i8, i8, i32, i32, i32, i16, i16, i8, i32, i32, [2 x i8], i32, i32, i32, i32, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i32 }
%struct.sense_data_t = type { i8, i8, i8, [4 x i8], i8, [4 x i8], i8, i8, i8, [3 x i8] }
%struct.sd_info = type { i16, i8, i8, i32, i32, [16 x i8], [8 x i8], i32, i32, i32, i16, i32, i32, i32, i32, i32, i8, [17 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.xd_info = type { i8, i8, i8, i8, i8, i16, i8, i8, i32, ptr, i32, %struct.xd_delay_write_tag, i32, i32 }
%struct.xd_delay_write_tag = type { i32, i32, i32, i8, i8 }
%struct.ms_info = type { i16, i8, i8, i16, i16, i32, i8, i8, i8, ptr, i32, i32, i32, i16, [96 x i8], [48 x i8], i8, i8, i32, i32, i16, i32, %struct.ms_delay_write_tag, i32, i32, [16 x i8], i8, i32 }
%struct.ms_delay_write_tag = type { i16, i16, i16, i8, i8 }
%struct.spi_info = type { i8, i8, i16, i8, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.78, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
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
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.78 = type { ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.61, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
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
%union.anon.61 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@rtsx_enable_bus_int.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 16, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rts5208\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rtsx_enable_bus_int\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/staging/rts5208/rtsx_chip.c\00", [60 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"lun2card[%d] = 0x%02x\0A\00", [41 x i8] zeroinitializer }, align 32
@rtsx_enable_bus_int.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 22, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"RTSX_BIER: 0x%08x\0A\00", [45 x i8] zeroinitializer }, align 32
@rtsx_reset_chip.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.6, i8 0, i8 124, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rtsx_reset_chip\00", [16 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"In %s, chip->int_reg = 0x%x\0A\00", [35 x i8] zeroinitializer }, align 32
@rtsx_reset_chip.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.7, i8 0, i8 126, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"chip->need_reset = 0x%x (%s)\0A\00", [34 x i8] zeroinitializer }, align 32
@rtsx_reset_chip.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.8, i8 0, i8 -123, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"In %s, chip->need_reset = 0x%x\0A\00", [32 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@rtsx_init_chip.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.2, ptr @.str.10, i8 0, i8 -66, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rtsx_init_chip\00", [17 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Vendor ID: 0x%04x, Product ID: 0x%04x\0A\00", [57 x i8] zeroinitializer }, align 32
@rtsx_init_chip.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.2, ptr @.str.11, i8 0, i8 -56, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sd_speed_prior = 0x%08x\0A\00", [39 x i8] zeroinitializer }, align 32
@rtsx_init_chip.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.2, ptr @.str.12, i8 0, i8 -54, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sd_current_prior = 0x%08x\0A\00", [37 x i8] zeroinitializer }, align 32
@rtsx_init_chip.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.2, ptr @.str.13, i8 0, i8 -50, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"chip->use_hw_setting = %d\0A\00", [37 x i8] zeroinitializer }, align 32
@rtsx_init_chip.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.2, ptr @.str.14, i8 0, i8 -46, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"chip->asic_code = %d\0A\00", [42 x i8] zeroinitializer }, align 32
@rtsx_init_chip.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.2, ptr @.str.15, i8 0, i8 -46, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"chip->ic_version = 0x%x\0A\00", [39 x i8] zeroinitializer }, align 32
@rtsx_init_chip.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.2, ptr @.str.16, i8 0, i8 -45, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"chip->phy_debug_mode = %d\0A\00", [37 x i8] zeroinitializer }, align 32
@rtsx_init_chip.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.2, ptr @.str.17, i8 0, i8 -45, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"chip->aux_pwr_exist = %d\0A\00", [38 x i8] zeroinitializer }, align 32
@rtsx_init_chip.__UNIQUE_ID_ddebug312 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.2, ptr @.str.18, i8 0, i8 -44, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"chip->sdio_func_exist = %d\0A\00", [36 x i8] zeroinitializer }, align 32
@rtsx_init_chip.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.2, ptr @.str.19, i8 0, i8 -44, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"chip->hw_bypass_sd = %d\0A\00", [39 x i8] zeroinitializer }, align 32
@rtsx_init_chip.__UNIQUE_ID_ddebug314 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.2, ptr @.str.20, i8 0, i8 -43, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"chip->aspm_l0s_l1_en = %d\0A\00", [37 x i8] zeroinitializer }, align 32
@rtsx_init_chip.__UNIQUE_ID_ddebug315 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.2, ptr @.str.21, i8 0, i8 -43, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"chip->lun_mode = %d\0A\00", [43 x i8] zeroinitializer }, align 32
@rtsx_init_chip.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.2, ptr @.str.22, i8 0, i8 -43, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"chip->auto_delink_en = %d\0A\00", [37 x i8] zeroinitializer }, align 32
@rtsx_init_chip.__UNIQUE_ID_ddebug317 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.2, ptr @.str.23, i8 0, i8 -42, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"chip->ss_en = %d\0A\00", [46 x i8] zeroinitializer }, align 32
@rtsx_init_chip.__UNIQUE_ID_ddebug318 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.2, ptr @.str.24, i8 0, i8 -42, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"chip->baro_pkg = %d\0A\00", [43 x i8] zeroinitializer }, align 32
@rtsx_stop_cmd.__UNIQUE_ID_ddebug327 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.25, ptr @.str.2, ptr @.str.26, i8 1, i8 63, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rtsx_stop_cmd\00", [18 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"BAR (0x%02x): 0x%08x\0A\00", [42 x i8] zeroinitializer }, align 32
@rtsx_stop_cmd.__UNIQUE_ID_ddebug328 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.25, ptr @.str.2, ptr @.str.27, i8 1, i8 66, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"0x%04X: 0x%02x\0A\00", [16 x i8] zeroinitializer }, align 32
@rtsx_write_cfg_seq.__UNIQUE_ID_ddebug329 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.2, ptr @.str.29, i8 1, i8 107, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rtsx_write_cfg_seq\00", [45 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dw_len = %d\0A\00", [19 x i8] zeroinitializer }, align 32
@rtsx_write_cfg_seq.__UNIQUE_ID_ddebug330 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.2, ptr @.str.30, i8 1, i8 113, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"rts5208: \00", [22 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@rtsx_write_cfg_seq.__UNIQUE_ID_ddebug331 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.2, ptr @.str.30, i8 1, i8 113, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@rtsx_read_cfg_seq.__UNIQUE_ID_ddebug332 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.32, ptr @.str.2, ptr @.str.29, i8 1, i8 121, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rtsx_read_cfg_seq\00", [46 x i8] zeroinitializer }, align 32
@rtsx_write_efuse.__UNIQUE_ID_ddebug333 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.33, ptr @.str.2, ptr @.str.34, i8 1, i8 -97, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rtsx_write_efuse\00", [47 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Write 0x%x to 0x%x\0A\00", [44 x i8] zeroinitializer }, align 32
@rtsx_enter_ss.__UNIQUE_ID_ddebug338 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.36, ptr @.str.2, ptr @.str.37, i8 1, i8 -71, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rtsx_enter_ss\00", [18 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Enter Selective Suspend State!\0A\00", [32 x i8] zeroinitializer }, align 32
@rtsx_exit_ss.__UNIQUE_ID_ddebug339 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.38, ptr @.str.2, ptr @.str.39, i8 1, i8 -62, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rtsx_exit_ss\00", [19 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Exit Selective Suspend State!\0A\00", [33 x i8] zeroinitializer }, align 32
@rtsx_do_before_power_down.__UNIQUE_ID_ddebug340 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.40, ptr @.str.2, ptr @.str.41, i8 1, i8 -34, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rtsx_do_before_power_down\00", [38 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s, pm_stat = %d\0A\00", [46 x i8] zeroinitializer }, align 32
@rtsx_do_before_power_down.__UNIQUE_ID_ddebug341 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.40, ptr @.str.2, ptr @.str.42, i8 1, i8 -25, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Host enter S1\0A\00", [17 x i8] zeroinitializer }, align 32
@rtsx_do_before_power_down.__UNIQUE_ID_ddebug343 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.40, ptr @.str.2, ptr @.str.43, i8 1, i8 -24, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Host enter S3\0A\00", [17 x i8] zeroinitializer }, align 32
@rtsx_enable_aspm.__UNIQUE_ID_ddebug344 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.44, ptr @.str.2, ptr @.str.45, i8 1, i8 -19, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rtsx_enable_aspm\00", [47 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Try to enable ASPM\0A\00", [44 x i8] zeroinitializer }, align 32
@rtsx_disable_aspm.__UNIQUE_ID_ddebug345 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.46, ptr @.str.2, ptr @.str.47, i8 1, i8 -12, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rtsx_disable_aspm\00", [46 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Try to disable ASPM\0A\00", [43 x i8] zeroinitializer }, align 32
@rtsx_pre_handle_sdio_new.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.48, ptr @.str.2, ptr @.str.49, i8 0, i8 41, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rtsx_pre_handle_sdio_new\00", [39 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"chip->sdio_in_charge = %d\0A\00", [37 x i8] zeroinitializer }, align 32
@rtsx_pre_handle_sdio_new.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.48, ptr @.str.2, ptr @.str.50, i8 0, i8 42, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"chip->driver_first_load = %d\0A\00", [34 x i8] zeroinitializer }, align 32
@rtsx_pre_handle_sdio_new.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.48, ptr @.str.2, ptr @.str.51, i8 0, i8 42, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sw_bypass_sd = %d\0A\00", [45 x i8] zeroinitializer }, align 32
@rtsx_pre_handle_sdio_new.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.48, ptr @.str.2, ptr @.str.52, i8 0, i8 50, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Chip inserted with SDIO!\0A\00", [38 x i8] zeroinitializer }, align 32
@rts5208_init.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.53, ptr @.str.2, ptr @.str.54, i8 0, i8 -93, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rts5208_init\00", [19 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Value of phy register 0x1C is 0x%x\0A\00", [60 x i8] zeroinitializer }, align 32
@rts5208_init.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.53, ptr @.str.2, ptr @.str.55, i8 0, i8 -89, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"PDINFO: 0x%x\0A\00", [18 x i8] zeroinitializer }, align 32
@rts5288_init.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.56, ptr @.str.2, ptr @.str.55, i8 0, i8 -78, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rts5288_init\00", [19 x i8] zeroinitializer }, align 32
@rts5288_init.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.56, ptr @.str.2, ptr @.str.57, i8 0, i8 -76, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"CARD_SHARE_MODE: 0x%x\0A\00", [41 x i8] zeroinitializer }, align 32
@rts5288_init.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.56, ptr @.str.2, ptr @.str.58, i8 0, i8 -73, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Max function number: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@rtsx_manage_aspm.__UNIQUE_ID_ddebug320 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.59, ptr @.str.2, ptr @.str.60, i8 1, i8 7, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rtsx_manage_aspm\00", [47 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"SDIO enter ASPM!\0A\00", [46 x i8] zeroinitializer }, align 32
@rtsx_manage_idle.__UNIQUE_ID_ddebug321 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.61, ptr @.str.2, ptr @.str.62, i8 1, i8 11, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rtsx_manage_idle\00", [47 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Idle state!\0A\00", [19 x i8] zeroinitializer }, align 32
@rtsx_manage_2lun_mode.__UNIQUE_ID_ddebug322 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.63, ptr @.str.2, ptr @.str.64, i8 1, i8 17, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rtsx_manage_2lun_mode\00", [42 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Over current, OCPSTAT is 0x%x\0A\00", [33 x i8] zeroinitializer }, align 32
@rtsx_manage_1lun_mode.__UNIQUE_ID_ddebug323 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.65, ptr @.str.2, ptr @.str.64, i8 1, i8 23, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rtsx_manage_1lun_mode\00", [42 x i8] zeroinitializer }, align 32
@rtsx_delink_stage.__UNIQUE_ID_ddebug326 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.66, ptr @.str.2, ptr @.str.67, i8 1, i8 41, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.66 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rtsx_delink_stage\00", [46 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Try to do force delink\0A\00", [40 x i8] zeroinitializer }, align 32
@rtsx_delink_stage1.__UNIQUE_ID_ddebug324 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.68, ptr @.str.2, ptr @.str.69, i8 1, i8 30, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.68 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rtsx_delink_stage1\00", [45 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"False card inserted, do force delink\0A\00", [58 x i8] zeroinitializer }, align 32
@rtsx_delink_stage1.__UNIQUE_ID_ddebug325 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.68, ptr @.str.2, ptr @.str.70, i8 1, i8 30, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.70 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"No card inserted, do delink\0A\00", [35 x i8] zeroinitializer }, align 32
@rtsx_handle_pm_dstate.__UNIQUE_ID_ddebug336 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.71, ptr @.str.2, ptr @.str.72, i8 1, i8 -79, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.71 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rtsx_handle_pm_dstate\00", [42 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%04x set pm_dstate to %d\0A\00", [38 x i8] zeroinitializer }, align 32
@rtsx_handle_pm_dstate.__UNIQUE_ID_ddebug337 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.71, ptr @.str.2, ptr @.str.73, i8 1, i8 -76, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.73 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"pm_dstate of function %d: 0x%x\0A\00", [32 x i8] zeroinitializer }, align 32
@rtsx_monitor_aspm_config.__UNIQUE_ID_ddebug319 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.74, ptr @.str.2, ptr @.str.75, i8 0, i8 -20, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.74 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rtsx_monitor_aspm_config\00", [39 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"aspm_level[0] = 0x%02x, aspm_level[1] = 0x%02x\0A\00", [48 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 21000, i64 21128]
@__sancov_gen_cov_switch_values.76 = internal global [4 x i64] [i64 2, i64 16, i64 21000, i64 21128]
@__sancov_gen_cov_switch_values.77 = internal global [4 x i64] [i64 2, i64 16, i64 21000, i64 21128]
@__sancov_gen_cov_switch_values.78 = internal global [4 x i64] [i64 2, i64 16, i64 21000, i64 21128]
@__sancov_gen_cov_switch_values.79 = internal global [4 x i64] [i64 2, i64 16, i64 21000, i64 21128]
@__sancov_gen_cov_switch_values.80 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.81 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 5]
@__sancov_gen_cov_switch_values.82 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.83 = internal global [4 x i64] [i64 2, i64 16, i64 21000, i64 21128]
@__sancov_gen_cov_switch_values.84 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 65, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 90, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 495, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 504, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 532, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 762, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 802, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 808, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 824, i32 2 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 841, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 842, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 843, i32 2 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 845, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 847, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 849, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 851, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 853, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 854, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 856, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 857, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 1279, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 1289, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 1453, i32 2 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 1476, i32 2 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 1509, i32 2 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 1662, i32 3 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 1766, i32 2 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 1801, i32 2 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 1915, i32 2 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 1948, i32 3 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 1955, i32 3 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 1973, i32 3 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 2001, i32 3 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 166, i32 2 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 168, i32 2 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 170, i32 2 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 202, i32 4 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 654, i32 3 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 670, i32 2 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 714, i32 2 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 720, i32 2 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 733, i32 2 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 1054, i32 2 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 1071, i32 2 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 1094, i32 3 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 1117, i32 2 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 1191, i32 3 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 1145, i32 3 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 1147, i32 3 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 1732, i32 2 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 1744, i32 3 }
@___asan_gen_.307 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.308 = private constant [39 x i8] c"../drivers/staging/rts5208/rtsx_chip.c\00", align 1
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 943, i32 3 }
@llvm.compiler.used = appending global [75 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75], section "llvm.metadata"
@0 = internal global [75 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtsx_enable_card_int(ptr nocapture noundef readonly %chip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 4
  %remap_addr = getelementptr inbounds %struct.rtsx_dev, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %remap_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %remap_addr, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 24
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !207
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !208
  %max_lun = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 2
  %6 = ptrtoint ptr %max_lun to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %max_lun, align 4
  %conv = zext i8 %7 to i32
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.042 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %reg.041 = phi i32 [ %5, %entry ], [ %21, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 35, i32 %i.042
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx, align 1
  %10 = and i8 %9, 16
  %11 = zext i8 %10 to i32
  %12 = shl nuw nsw i32 %11, 23
  %13 = or i32 %12, %reg.041
  %14 = and i8 %9, 4
  %15 = zext i8 %14 to i32
  %16 = shl nuw nsw i32 %15, 23
  %17 = or i32 %13, %16
  %18 = and i8 %9, 8
  %19 = zext i8 %18 to i32
  %20 = shl nuw nsw i32 %19, 23
  %21 = or i32 %17, %20
  %inc = add nuw nsw i32 %i.042, 1
  %exitcond = icmp eq i32 %i.042, %conv
  br i1 %exitcond, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %hw_bypass_sd = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 76
  %22 = ptrtoint ptr %hw_bypass_sd to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %hw_bypass_sd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool19.not = icmp eq i32 %23, 0
  %and21 = and i32 %21, -33554433
  %spec.select40 = select i1 %tobool19.not, i32 %21, i32 %and21
  %24 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %chip, align 4
  %remap_addr24 = getelementptr inbounds %struct.rtsx_dev, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %remap_addr24 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %remap_addr24, align 4
  %add.ptr25 = getelementptr i8, ptr %27, i32 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !209
  tail call void @arm_heavy_mb() #6
  %28 = tail call i32 @llvm.bswap.i32(i32 %spec.select40) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25, i32 %28) #6, !srcloc !210
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtsx_enable_bus_int(ptr nocapture noundef readonly %chip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %max_lun = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 2
  br label %do.body

do.body:                                          ; preds = %do.end.do.body_crit_edge, %entry
  %reg.094 = phi i32 [ 805306368, %entry ], [ %19, %do.end.do.body_crit_edge ]
  %i.092 = phi i32 [ 0, %entry ], [ %inc, %do.end.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtsx_enable_bus_int.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtsx_enable_bus_int, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !211

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %arrayidx = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 35, i32 %i.092
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %conv5 = zext i8 %5 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtsx_enable_bus_int.__UNIQUE_ID_ddebug288, ptr noundef %dev.i, ptr noundef nonnull @.str.3, i32 noundef %i.092, i32 noundef %conv5) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %do.body
  %arrayidx7 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 35, i32 %i.092
  %6 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx7, align 1
  %8 = and i8 %7, 16
  %9 = zext i8 %8 to i32
  %10 = shl nuw nsw i32 %9, 23
  %11 = or i32 %10, %reg.094
  %12 = and i8 %7, 4
  %13 = zext i8 %12 to i32
  %14 = shl nuw nsw i32 %13, 23
  %15 = or i32 %11, %14
  %16 = and i8 %7, 8
  %17 = zext i8 %16 to i32
  %18 = shl nuw nsw i32 %17, 23
  %19 = or i32 %15, %18
  %inc = add nuw nsw i32 %i.092, 1
  %20 = ptrtoint ptr %max_lun to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %max_lun, align 4
  %conv = zext i8 %21 to i32
  %cmp.not.not = icmp ult i32 %i.092, %conv
  br i1 %cmp.not.not, label %do.end.do.body_crit_edge, label %for.end

do.end.do.body_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

for.end:                                          ; preds = %do.end
  %hw_bypass_sd = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 76
  %22 = ptrtoint ptr %hw_bypass_sd to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %hw_bypass_sd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool28.not = icmp eq i32 %23, 0
  %and30 = and i32 %19, -33554433
  %spec.select84 = select i1 %tobool28.not, i32 %19, i32 %and30
  %ic_version = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 59
  %24 = ptrtoint ptr %ic_version to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %ic_version, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %25)
  %cmp33 = icmp ugt i8 %25, 1
  %or36 = or i32 %spec.select84, 16777216
  %reg.5 = select i1 %cmp33, i32 %or36, i32 %spec.select84
  %adma_mode = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 64
  %26 = ptrtoint ptr %adma_mode to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %adma_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool39.not = icmp eq i32 %27, 0
  %reg.6.v = select i1 %tobool39.not, i32 1082130432, i32 8388608
  %reg.6 = or i32 %reg.5, %reg.6.v
  %28 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %chip, align 4
  %remap_addr = getelementptr inbounds %struct.rtsx_dev, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %remap_addr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %remap_addr, align 4
  %add.ptr = getelementptr i8, ptr %31, i32 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !209
  tail call void @arm_heavy_mb() #6
  %32 = tail call i32 @llvm.bswap.i32(i32 %reg.6) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %32) #6, !srcloc !210
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtsx_enable_bus_int.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtsx_enable_bus_int, %if.then55)) #6
          to label %do.end59 [label %if.then55], !srcloc !211

if.then55:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %33 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %chip, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 4
  %dev.i88 = getelementptr inbounds %struct.pci_dev, ptr %36, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtsx_enable_bus_int.__UNIQUE_ID_ddebug289, ptr noundef %dev.i88, ptr noundef nonnull @.str.4, i32 noundef %reg.6) #6
  br label %do.end59

do.end59:                                         ; preds = %if.then55, %for.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtsx_disable_bus_int(ptr nocapture noundef readonly %chip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 4
  %remap_addr = getelementptr inbounds %struct.rtsx_dev, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %remap_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %remap_addr, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !209
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #6, !srcloc !210
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtsx_reset_chip(ptr noundef %chip) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %host_cmds_addr = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 5
  %0 = ptrtoint ptr %host_cmds_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %host_cmds_addr, align 4
  %2 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip, align 4
  %remap_addr = getelementptr inbounds %struct.rtsx_dev, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %remap_addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %remap_addr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !209
  tail call void @arm_heavy_mb() #6
  %6 = tail call i32 @llvm.bswap.i32(i32 %1) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %6) #6, !srcloc !210
  tail call void @rtsx_disable_aspm(ptr noundef %chip)
  %7 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %chip, align 4
  %remap_addr.i = getelementptr inbounds %struct.rtsx_dev, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %10, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !209
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 221438) #6, !srcloc !210
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.029.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 1024
  br i1 %exitcond.not.i, label %for.cond.i.cleanup_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %entry
  %i.029.i = phi i32 [ 0, %entry ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %11 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %chip, align 4
  %remap_addr8.i = getelementptr inbounds %struct.rtsx_dev, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %remap_addr8.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %remap_addr8.i, align 4
  %add.ptr9.i = getelementptr i8, ptr %14, i32 16
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i) #6, !srcloc !207
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !208
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %16)
  %cmp11.i = icmp sgt i32 %16, -1
  br i1 %cmp11.i, label %rtsx_write_register.exit, label %for.cond.i

rtsx_write_register.exit:                         ; preds = %for.body.i
  %conv15.i = and i32 %16, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv15.i)
  %cmp16.not.i.not = icmp eq i32 %conv15.i, 0
  br i1 %cmp16.not.i.not, label %if.end, label %rtsx_write_register.exit.cleanup_crit_edge

rtsx_write_register.exit.cleanup_crit_edge:       ; preds = %rtsx_write_register.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %rtsx_write_register.exit
  %17 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %chip, align 4
  %remap_addr.i574 = getelementptr inbounds %struct.rtsx_dev, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %remap_addr.i574 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %remap_addr.i574, align 4
  %add.ptr.i575 = getelementptr i8, ptr %20, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !209
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i575, i32 1993213) #6, !srcloc !210
  br label %for.body.i583

for.cond.i578:                                    ; preds = %for.body.i583
  %inc.i576 = add nuw nsw i32 %i.029.i579, 1
  %exitcond.not.i577 = icmp eq i32 %inc.i576, 1024
  br i1 %exitcond.not.i577, label %for.cond.i578.cleanup_crit_edge, label %for.cond.i578.for.body.i583_crit_edge

for.cond.i578.for.body.i583_crit_edge:            ; preds = %for.cond.i578
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i583

for.cond.i578.cleanup_crit_edge:                  ; preds = %for.cond.i578
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.i583:                                    ; preds = %for.cond.i578.for.body.i583_crit_edge, %if.end
  %i.029.i579 = phi i32 [ 0, %if.end ], [ %inc.i576, %for.cond.i578.for.body.i583_crit_edge ]
  %21 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %chip, align 4
  %remap_addr8.i580 = getelementptr inbounds %struct.rtsx_dev, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %remap_addr8.i580 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %remap_addr8.i580, align 4
  %add.ptr9.i581 = getelementptr i8, ptr %24, i32 16
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i581) #6, !srcloc !207
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !208
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %26)
  %cmp11.i582 = icmp sgt i32 %26, -1
  br i1 %cmp11.i582, label %rtsx_write_register.exit589, label %for.cond.i578

rtsx_write_register.exit589:                      ; preds = %for.body.i583
  %conv15.i584 = and i32 %26, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv15.i584)
  %cmp16.not.i585.not = icmp eq i32 %conv15.i584, 0
  br i1 %cmp16.not.i585.not, label %if.end5, label %rtsx_write_register.exit589.cleanup_crit_edge

rtsx_write_register.exit589.cleanup_crit_edge:    ; preds = %rtsx_write_register.exit589
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %rtsx_write_register.exit589
  %lun_mode = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 67
  %27 = ptrtoint ptr %lun_mode to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %lun_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %28)
  %cmp = icmp eq i8 %28, 1
  %29 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %chip, align 4
  %remap_addr.i590 = getelementptr inbounds %struct.rtsx_dev, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %remap_addr.i590 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %remap_addr.i590, align 4
  %add.ptr.i591 = getelementptr i8, ptr %32, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  tail call void @arm_heavy_mb() #6
  br i1 %cmp, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i591, i32 393468) #6, !srcloc !210
  br label %for.body.i599

for.cond.i594:                                    ; preds = %for.body.i599
  %inc.i592 = add nuw nsw i32 %i.029.i595, 1
  %exitcond.not.i593 = icmp eq i32 %inc.i592, 1024
  br i1 %exitcond.not.i593, label %for.cond.i594.cleanup_crit_edge, label %for.cond.i594.for.body.i599_crit_edge

for.cond.i594.for.body.i599_crit_edge:            ; preds = %for.cond.i594
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i599

for.cond.i594.cleanup_crit_edge:                  ; preds = %for.cond.i594
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.i599:                                    ; preds = %for.cond.i594.for.body.i599_crit_edge, %if.then7
  %i.029.i595 = phi i32 [ 0, %if.then7 ], [ %inc.i592, %for.cond.i594.for.body.i599_crit_edge ]
  %33 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %chip, align 4
  %remap_addr8.i596 = getelementptr inbounds %struct.rtsx_dev, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %remap_addr8.i596 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %remap_addr8.i596, align 4
  %add.ptr9.i597 = getelementptr i8, ptr %36, i32 16
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i597) #6, !srcloc !207
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !208
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %38)
  %cmp11.i598 = icmp sgt i32 %38, -1
  br i1 %cmp11.i598, label %rtsx_write_register.exit605, label %for.cond.i594

rtsx_write_register.exit605:                      ; preds = %for.body.i599
  %conv15.i600 = and i32 %38, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv15.i600)
  %cmp16.not.i601.not = icmp eq i32 %conv15.i600, 0
  br i1 %cmp16.not.i601.not, label %rtsx_write_register.exit605.if.end16_crit_edge, label %rtsx_write_register.exit605.cleanup_crit_edge

rtsx_write_register.exit605.cleanup_crit_edge:    ; preds = %rtsx_write_register.exit605
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

rtsx_write_register.exit605.if.end16_crit_edge:   ; preds = %rtsx_write_register.exit605
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

if.else:                                          ; preds = %if.end5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i591, i32 67502332) #6, !srcloc !210
  br label %for.body.i615

for.cond.i610:                                    ; preds = %for.body.i615
  %inc.i608 = add nuw nsw i32 %i.029.i611, 1
  %exitcond.not.i609 = icmp eq i32 %inc.i608, 1024
  br i1 %exitcond.not.i609, label %for.cond.i610.cleanup_crit_edge, label %for.cond.i610.for.body.i615_crit_edge

for.cond.i610.for.body.i615_crit_edge:            ; preds = %for.cond.i610
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i615

for.cond.i610.cleanup_crit_edge:                  ; preds = %for.cond.i610
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.i615:                                    ; preds = %for.cond.i610.for.body.i615_crit_edge, %if.else
  %i.029.i611 = phi i32 [ 0, %if.else ], [ %inc.i608, %for.cond.i610.for.body.i615_crit_edge ]
  %39 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %chip, align 4
  %remap_addr8.i612 = getelementptr inbounds %struct.rtsx_dev, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %remap_addr8.i612 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %remap_addr8.i612, align 4
  %add.ptr9.i613 = getelementptr i8, ptr %42, i32 16
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i613) #6, !srcloc !207
  %44 = tail call i32 @llvm.bswap.i32(i32 %43) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !208
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %44)
  %cmp11.i614 = icmp sgt i32 %44, -1
  br i1 %cmp11.i614, label %rtsx_write_register.exit621, label %for.cond.i610

rtsx_write_register.exit621:                      ; preds = %for.body.i615
  %conv15.i616 = and i32 %44, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %conv15.i616)
  %cmp16.not.i617.not = icmp eq i32 %conv15.i616, 4
  br i1 %cmp16.not.i617.not, label %rtsx_write_register.exit621.if.end16_crit_edge, label %rtsx_write_register.exit621.cleanup_crit_edge

rtsx_write_register.exit621.cleanup_crit_edge:    ; preds = %rtsx_write_register.exit621
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

rtsx_write_register.exit621.if.end16_crit_edge:   ; preds = %rtsx_write_register.exit621
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

if.end16:                                         ; preds = %rtsx_write_register.exit621.if.end16_crit_edge, %rtsx_write_register.exit605.if.end16_crit_edge
  %45 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %chip, align 4
  %remap_addr.i622 = getelementptr inbounds %struct.rtsx_dev, ptr %46, i32 0, i32 2
  %47 = ptrtoint ptr %remap_addr.i622 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %remap_addr.i622, align 4
  %add.ptr.i623 = getelementptr i8, ptr %48, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !209
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i623, i32 674765052) #6, !srcloc !210
  br label %for.body.i631

for.cond.i626:                                    ; preds = %for.body.i631
  %inc.i624 = add nuw nsw i32 %i.029.i627, 1
  %exitcond.not.i625 = icmp eq i32 %inc.i624, 1024
  br i1 %exitcond.not.i625, label %for.cond.i626.cleanup_crit_edge, label %for.cond.i626.for.body.i631_crit_edge

for.cond.i626.for.body.i631_crit_edge:            ; preds = %for.cond.i626
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i631

for.cond.i626.cleanup_crit_edge:                  ; preds = %for.cond.i626
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.i631:                                    ; preds = %for.cond.i626.for.body.i631_crit_edge, %if.end16
  %i.029.i627 = phi i32 [ 0, %if.end16 ], [ %inc.i624, %for.cond.i626.for.body.i631_crit_edge ]
  %49 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %chip, align 4
  %remap_addr8.i628 = getelementptr inbounds %struct.rtsx_dev, ptr %50, i32 0, i32 2
  %51 = ptrtoint ptr %remap_addr8.i628 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %remap_addr8.i628, align 4
  %add.ptr9.i629 = getelementptr i8, ptr %52, i32 16
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i629) #6, !srcloc !207
  %54 = tail call i32 @llvm.bswap.i32(i32 %53) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !208
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %54)
  %cmp11.i630 = icmp sgt i32 %54, -1
  br i1 %cmp11.i630, label %rtsx_write_register.exit637, label %for.cond.i626

rtsx_write_register.exit637:                      ; preds = %for.body.i631
  %conv15.i632 = and i32 %54, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %conv15.i632)
  %cmp16.not.i633.not = icmp eq i32 %conv15.i632, 40
  br i1 %cmp16.not.i633.not, label %if.end20, label %rtsx_write_register.exit637.cleanup_crit_edge

rtsx_write_register.exit637.cleanup_crit_edge:    ; preds = %rtsx_write_register.exit637
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end20:                                         ; preds = %rtsx_write_register.exit637
  %call21 = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -999, i8 noundef zeroext -64, i8 noundef zeroext -128)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end24:                                         ; preds = %if.end20
  %call25 = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -1003, i8 noundef zeroext -1, i8 noundef zeroext 40)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end28, label %if.end24.cleanup_crit_edge

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end28:                                         ; preds = %if.end24
  %product_id = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 58
  %55 = ptrtoint ptr %product_id to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %product_id, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 21128, i16 %56)
  %cmp30 = icmp eq i16 %56, 21128
  br i1 %cmp30, label %if.end28.if.end37_crit_edge, label %if.then32

if.end28.if.end37_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

if.then32:                                        ; preds = %if.end28
  %call33 = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -681, i8 noundef zeroext -1, i8 noundef zeroext 3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.then32.if.end37_crit_edge, label %if.then32.cleanup_crit_edge

if.then32.cleanup_crit_edge:                      ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then32.if.end37_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

if.end37:                                         ; preds = %if.then32.if.end37_crit_edge, %if.end28.if.end37_crit_edge
  %call38 = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -680, i8 noundef zeroext -1, i8 noundef zeroext 3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end41, label %if.end37.cleanup_crit_edge

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end41:                                         ; preds = %if.end37
  %call42 = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -421, i8 noundef zeroext 10, i8 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.end45, label %if.end41.cleanup_crit_edge

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end45:                                         ; preds = %if.end41
  %card_drive_sel = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 110
  %57 = ptrtoint ptr %card_drive_sel to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %card_drive_sel, align 4
  %call46 = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -685, i8 noundef zeroext -1, i8 noundef zeroext %58)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end49, label %if.end45.cleanup_crit_edge

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end49:                                         ; preds = %if.end45
  %asic_code = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 74
  %59 = ptrtoint ptr %asic_code to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %asic_code, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool50.not = icmp eq i32 %60, 0
  br i1 %tobool50.not, label %if.end49.if.end60_crit_edge, label %if.then51

if.end49.if.end60_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end60

if.then51:                                        ; preds = %if.end49
  %call52 = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -1007, i8 noundef zeroext -1, i8 noundef zeroext 80)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.end55, label %if.then51.cleanup_crit_edge

if.then51.cleanup_crit_edge:                      ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end55:                                         ; preds = %if.then51
  %call56 = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -1006, i8 noundef zeroext -1, i8 noundef zeroext 18)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.end55.if.end60_crit_edge, label %if.end55.cleanup_crit_edge

if.end55.cleanup_crit_edge:                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end55.if.end60_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end60

if.end60:                                         ; preds = %if.end55.if.end60_crit_edge, %if.end49.if.end60_crit_edge
  %call61 = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -421, i8 noundef zeroext 22, i8 noundef zeroext 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.end64, label %if.end60.cleanup_crit_edge

if.end60.cleanup_crit_edge:                       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end64:                                         ; preds = %if.end60
  %aspm_l0s_l1_en = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 68
  %61 = ptrtoint ptr %aspm_l0s_l1_en to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %aspm_l0s_l1_en, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool65.not = icmp eq i8 %62, 0
  br i1 %tobool65.not, label %if.else72, label %if.then66

if.then66:                                        ; preds = %if.end64
  %call67 = tail call fastcc i32 @rtsx_reset_aspm(ptr noundef %chip)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %cmp68.not = icmp eq i32 %call67, 0
  br i1 %cmp68.not, label %if.then66.if.end93_crit_edge, label %if.then66.cleanup_crit_edge

if.then66.cleanup_crit_edge:                      ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then66.if.end93_crit_edge:                     ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end93

if.else72:                                        ; preds = %if.end64
  %63 = ptrtoint ptr %asic_code to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %asic_code, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool74.not = icmp eq i32 %64, 0
  br i1 %tobool74.not, label %if.else72.if.end85_crit_edge, label %land.lhs.true

if.else72.if.end85_crit_edge:                     ; preds = %if.else72
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end85

land.lhs.true:                                    ; preds = %if.else72
  %65 = ptrtoint ptr %product_id to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %product_id, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 21000, i16 %66)
  %cmp77 = icmp eq i16 %66, 21000
  br i1 %cmp77, label %if.then79, label %land.lhs.true.if.end85_crit_edge

land.lhs.true.if.end85_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end85

if.then79:                                        ; preds = %land.lhs.true
  %call80 = tail call i32 @rtsx_write_phy_register(ptr noundef %chip, i8 noundef zeroext 7, i16 noundef zeroext 297)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %cmp81.not = icmp eq i32 %call80, 0
  br i1 %cmp81.not, label %if.then79.if.end85_crit_edge, label %if.then79.cleanup_crit_edge

if.then79.cleanup_crit_edge:                      ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then79.if.end85_crit_edge:                     ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end85

if.end85:                                         ; preds = %if.then79.if.end85_crit_edge, %land.lhs.true.if.end85_crit_edge, %if.else72.if.end85_crit_edge
  %67 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %chip, align 4
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %68, align 4
  %71 = ptrtoint ptr %aspm_l0s_l1_en to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %aspm_l0s_l1_en, align 1
  %call88 = tail call i32 @pci_write_config_byte(ptr noundef %70, i32 noundef 128, i8 noundef zeroext %72) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88)
  %cmp89.not = icmp eq i32 %call88, 0
  br i1 %cmp89.not, label %if.end85.if.end93_crit_edge, label %if.end85.cleanup_crit_edge

if.end85.cleanup_crit_edge:                       ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end85.if.end93_crit_edge:                      ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end93

if.end93:                                         ; preds = %if.end85.if.end93_crit_edge, %if.then66.if.end93_crit_edge
  %73 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %chip, align 4
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %74, align 4
  %call96 = tail call i32 @pci_write_config_byte(ptr noundef %76, i32 noundef 129, i8 noundef zeroext 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call96)
  %cmp97.not = icmp eq i32 %call96, 0
  br i1 %cmp97.not, label %if.end100, label %if.end93.cleanup_crit_edge

if.end93.cleanup_crit_edge:                       ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end100:                                        ; preds = %if.end93
  %sdio_func_exist = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 77
  %77 = ptrtoint ptr %sdio_func_exist to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %sdio_func_exist, align 4
  %and = and i32 %78, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool101.not = icmp eq i32 %and, 0
  br i1 %tobool101.not, label %if.end100.if.end113_crit_edge, label %if.then102

if.end100.if.end113_crit_edge:                    ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end113

if.then102:                                       ; preds = %if.end100
  %79 = ptrtoint ptr %product_id to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %product_id, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 21128, i16 %80)
  %cmp105 = icmp eq i16 %80, 21128
  %conv107 = select i1 %cmp105, i8 2, i8 1
  %call108 = tail call i32 @rtsx_write_cfg_dw(ptr noundef %chip, i8 noundef zeroext %conv107, i16 noundef zeroext 192, i32 noundef 65280, i32 noundef 256)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call108)
  %cmp109.not = icmp eq i32 %call108, 0
  br i1 %cmp109.not, label %if.then102.if.end113_crit_edge, label %if.then102.cleanup_crit_edge

if.then102.cleanup_crit_edge:                     ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then102.if.end113_crit_edge:                   ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end113

if.end113:                                        ; preds = %if.then102.if.end113_crit_edge, %if.end100.if.end113_crit_edge
  %81 = ptrtoint ptr %product_id to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %product_id, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 21128, i16 %82)
  %cmp116 = icmp eq i16 %82, 21128
  br i1 %cmp116, label %land.lhs.true118, label %if.end113.if.end133_crit_edge

if.end113.if.end133_crit_edge:                    ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end133

land.lhs.true118:                                 ; preds = %if.end113
  %83 = ptrtoint ptr %sdio_func_exist to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %sdio_func_exist, align 4
  %and120 = and i32 %84, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and120)
  %tobool121.not = icmp eq i32 %and120, 0
  br i1 %tobool121.not, label %if.then122, label %land.lhs.true118.if.end133_crit_edge

land.lhs.true118.if.end133_crit_edge:             ; preds = %land.lhs.true118
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end133

if.then122:                                       ; preds = %land.lhs.true118
  %call123 = tail call i32 @rtsx_write_cfg_dw(ptr noundef %chip, i8 noundef zeroext 2, i16 noundef zeroext 192, i32 noundef 65535, i32 noundef 259)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call123)
  %cmp124.not = icmp eq i32 %call123, 0
  br i1 %cmp124.not, label %if.end127, label %if.then122.cleanup_crit_edge

if.then122.cleanup_crit_edge:                     ; preds = %if.then122
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end127:                                        ; preds = %if.then122
  %call128 = tail call i32 @rtsx_write_cfg_dw(ptr noundef %chip, i8 noundef zeroext 2, i16 noundef zeroext 132, i32 noundef 255, i32 noundef 3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call128)
  %cmp129.not = icmp eq i32 %call128, 0
  br i1 %cmp129.not, label %if.end127.if.end133_crit_edge, label %if.end127.cleanup_crit_edge

if.end127.cleanup_crit_edge:                      ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end127.if.end133_crit_edge:                    ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end133

if.end133:                                        ; preds = %if.end127.if.end133_crit_edge, %land.lhs.true118.if.end133_crit_edge, %if.end113.if.end133_crit_edge
  %call134 = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -479, i8 noundef zeroext 32, i8 noundef zeroext 32)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call134)
  %tobool135.not = icmp eq i32 %call134, 0
  br i1 %tobool135.not, label %if.end137, label %if.end133.cleanup_crit_edge

if.end133.cleanup_crit_edge:                      ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end137:                                        ; preds = %if.end133
  %call138 = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -420, i8 noundef zeroext -1, i8 noundef zeroext -128)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call138)
  %tobool139.not = icmp eq i32 %call138, 0
  br i1 %tobool139.not, label %if.end141, label %if.end137.cleanup_crit_edge

if.end137.cleanup_crit_edge:                      ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end141:                                        ; preds = %if.end137
  %call142 = tail call fastcc i32 @rtsx_enable_pcie_intr(ptr noundef %chip)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call142)
  %cmp143.not = icmp eq i32 %call142, 0
  br i1 %cmp143.not, label %if.end146, label %if.end141.cleanup_crit_edge

if.end141.cleanup_crit_edge:                      ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end146:                                        ; preds = %if.end141
  %need_reset = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 15
  %85 = ptrtoint ptr %need_reset to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 0, ptr %need_reset, align 4
  %86 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %chip, align 4
  %remap_addr148 = getelementptr inbounds %struct.rtsx_dev, ptr %87, i32 0, i32 2
  %88 = ptrtoint ptr %remap_addr148 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %remap_addr148, align 4
  %add.ptr149 = getelementptr i8, ptr %89, i32 20
  %90 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr149) #6, !srcloc !207
  %91 = tail call i32 @llvm.bswap.i32(i32 %90) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !208
  %int_reg = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 1
  %92 = ptrtoint ptr %int_reg to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %91, ptr %int_reg, align 4
  %hw_bypass_sd = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 76
  %93 = ptrtoint ptr %hw_bypass_sd to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %hw_bypass_sd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %tobool151.not = icmp eq i32 %94, 0
  br i1 %tobool151.not, label %do.body, label %if.end146.nextcard_crit_edge

if.end146.nextcard_crit_edge:                     ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #8
  br label %nextcard

do.body:                                          ; preds = %if.end146
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtsx_reset_chip.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtsx_reset_chip, %if.then158)) #6
          to label %do.end [label %if.then158], !srcloc !211

if.then158:                                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %95 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %chip, align 4
  %97 = ptrtoint ptr %96 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %96, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %98, i32 0, i32 44
  %99 = ptrtoint ptr %int_reg to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %int_reg, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtsx_reset_chip.__UNIQUE_ID_ddebug294, ptr noundef %dev.i, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.5, i32 noundef %100) #6
  br label %do.end

do.end:                                           ; preds = %if.then158, %do.body
  %101 = ptrtoint ptr %int_reg to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %int_reg, align 4
  %and163 = and i32 %102, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and163)
  %tobool164.not = icmp eq i32 %and163, 0
  br i1 %tobool164.not, label %if.else201, label %if.then165

if.then165:                                       ; preds = %do.end
  %103 = ptrtoint ptr %product_id to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %product_id, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 21000, i16 %104)
  %cmp168 = icmp eq i16 %104, 21000
  br i1 %cmp168, label %land.lhs.true170, label %if.then165.if.else176_crit_edge

if.then165.if.else176_crit_edge:                  ; preds = %if.then165
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else176

land.lhs.true170:                                 ; preds = %if.then165
  %ic_version = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 59
  %105 = ptrtoint ptr %ic_version to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %ic_version, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %106)
  %cmp172 = icmp ult i8 %106, 2
  br i1 %cmp172, label %if.then174, label %land.lhs.true170.if.else176_crit_edge

land.lhs.true170.if.else176_crit_edge:            ; preds = %land.lhs.true170
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else176

if.then174:                                       ; preds = %land.lhs.true170
  call void @__sanitizer_cov_trace_pc() #8
  %call175 = tail call fastcc i32 @rtsx_pre_handle_sdio_old(ptr noundef %chip)
  br label %do.body179

if.else176:                                       ; preds = %land.lhs.true170.if.else176_crit_edge, %if.then165.if.else176_crit_edge
  %call177 = tail call fastcc i32 @rtsx_pre_handle_sdio_new(ptr noundef %chip)
  br label %do.body179

do.body179:                                       ; preds = %if.else176, %if.then174
  %retval1.0 = phi i32 [ %call175, %if.then174 ], [ %call177, %if.else176 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtsx_reset_chip.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtsx_reset_chip, %if.then191)) #6
          to label %do.end196 [label %if.then191], !srcloc !211

if.then191:                                       ; preds = %do.body179
  call void @__sanitizer_cov_trace_pc() #8
  %107 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %chip, align 4
  %109 = ptrtoint ptr %108 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %108, align 4
  %dev.i638 = getelementptr inbounds %struct.pci_dev, ptr %110, i32 0, i32 44
  %111 = ptrtoint ptr %need_reset to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %need_reset, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtsx_reset_chip.__UNIQUE_ID_ddebug295, ptr noundef %dev.i638, ptr noundef nonnull @.str.7, i32 noundef %112, ptr noundef nonnull @.str.5) #6
  br label %do.end196

do.end196:                                        ; preds = %if.then191, %do.body179
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval1.0)
  %cmp197.not = icmp eq i32 %retval1.0, 0
  br i1 %cmp197.not, label %do.end196.nextcard_crit_edge, label %do.end196.cleanup_crit_edge

do.end196.cleanup_crit_edge:                      ; preds = %do.end196
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end196.nextcard_crit_edge:                     ; preds = %do.end196
  call void @__sanitizer_cov_trace_pc() #8
  br label %nextcard

if.else201:                                       ; preds = %do.end
  %sd_io = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 51
  %113 = ptrtoint ptr %sd_io to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 0, ptr %sd_io, align 4
  %call202 = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -661, i8 noundef zeroext 3, i8 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call202)
  %tobool203.not = icmp eq i32 %call202, 0
  br i1 %tobool203.not, label %if.else201.nextcard_crit_edge, label %if.else201.cleanup_crit_edge

if.else201.cleanup_crit_edge:                     ; preds = %if.else201
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.else201.nextcard_crit_edge:                    ; preds = %if.else201
  call void @__sanitizer_cov_trace_pc() #8
  br label %nextcard

nextcard:                                         ; preds = %if.else201.nextcard_crit_edge, %do.end196.nextcard_crit_edge, %if.end146.nextcard_crit_edge
  %114 = ptrtoint ptr %int_reg to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %int_reg, align 4
  %and208 = and i32 %115, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and208)
  %tobool209.not = icmp eq i32 %and208, 0
  br i1 %tobool209.not, label %nextcard.if.end212_crit_edge, label %if.then210

nextcard.if.end212_crit_edge:                     ; preds = %nextcard
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end212

if.then210:                                       ; preds = %nextcard
  call void @__sanitizer_cov_trace_pc() #8
  %116 = ptrtoint ptr %need_reset to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %need_reset, align 4
  %or = or i32 %117, 16
  store i32 %or, ptr %need_reset, align 4
  br label %if.end212

if.end212:                                        ; preds = %if.then210, %nextcard.if.end212_crit_edge
  %and214 = and i32 %115, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and214)
  %tobool215.not = icmp eq i32 %and214, 0
  br i1 %tobool215.not, label %if.end212.if.end219_crit_edge, label %if.then216

if.end212.if.end219_crit_edge:                    ; preds = %if.end212
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end219

if.then216:                                       ; preds = %if.end212
  call void @__sanitizer_cov_trace_pc() #8
  %118 = ptrtoint ptr %need_reset to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %need_reset, align 4
  %or218 = or i32 %119, 8
  store i32 %or218, ptr %need_reset, align 4
  br label %if.end219

if.end219:                                        ; preds = %if.then216, %if.end212.if.end219_crit_edge
  %and221 = and i32 %115, 458752
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and221)
  %tobool222.not = icmp eq i32 %and221, 0
  br i1 %tobool222.not, label %if.end219.do.body229_crit_edge, label %if.then223

if.end219.do.body229_crit_edge:                   ; preds = %if.end219
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body229

if.then223:                                       ; preds = %if.end219
  %call224 = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -1007, i8 noundef zeroext -128, i8 noundef zeroext -128)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call224)
  %tobool225.not = icmp eq i32 %call224, 0
  br i1 %tobool225.not, label %if.then223.do.body229_crit_edge, label %if.then223.cleanup_crit_edge

if.then223.cleanup_crit_edge:                     ; preds = %if.then223
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then223.do.body229_crit_edge:                  ; preds = %if.then223
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body229

do.body229:                                       ; preds = %if.then223.do.body229_crit_edge, %if.end219.do.body229_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtsx_reset_chip.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtsx_reset_chip, %if.then241)) #6
          to label %do.end246 [label %if.then241], !srcloc !211

if.then241:                                       ; preds = %do.body229
  call void @__sanitizer_cov_trace_pc() #8
  %120 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %chip, align 4
  %122 = ptrtoint ptr %121 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %121, align 4
  %dev.i639 = getelementptr inbounds %struct.pci_dev, ptr %123, i32 0, i32 44
  %124 = ptrtoint ptr %need_reset to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %need_reset, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtsx_reset_chip.__UNIQUE_ID_ddebug296, ptr noundef %dev.i639, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.5, i32 noundef %125) #6
  br label %do.end246

do.end246:                                        ; preds = %if.then241, %do.body229
  %call247 = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -1004, i8 noundef zeroext 1, i8 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call247)
  %tobool248.not = icmp eq i32 %call247, 0
  br i1 %tobool248.not, label %if.end250, label %do.end246.cleanup_crit_edge

do.end246.cleanup_crit_edge:                      ; preds = %do.end246
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end250:                                        ; preds = %do.end246
  %126 = ptrtoint ptr %product_id to i32
  call void @__asan_load2_noabort(i32 %126)
  %127 = load i16, ptr %product_id, align 2
  %128 = zext i16 %127 to i64
  call void @__sanitizer_cov_trace_switch(i64 %128, ptr @__sancov_gen_cov_switch_values)
  switch i16 %127, label %if.end250.if.end264_crit_edge [
    i16 21000, label %if.end250.if.then259_crit_edge
    i16 21128, label %if.end250.if.then259_crit_edge727
  ]

if.end250.if.then259_crit_edge727:                ; preds = %if.end250
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then259

if.end250.if.then259_crit_edge:                   ; preds = %if.end250
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then259

if.end250.if.end264_crit_edge:                    ; preds = %if.end250
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end264

if.then259:                                       ; preds = %if.end250.if.then259_crit_edge, %if.end250.if.then259_crit_edge727
  %call260 = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -400, i8 noundef zeroext 3, i8 noundef zeroext 3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call260)
  %tobool261.not = icmp eq i32 %call260, 0
  br i1 %tobool261.not, label %if.then259.if.end264_crit_edge, label %if.then259.cleanup_crit_edge

if.then259.cleanup_crit_edge:                     ; preds = %if.then259
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then259.if.end264_crit_edge:                   ; preds = %if.then259
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end264

if.end264:                                        ; preds = %if.then259.if.end264_crit_edge, %if.end250.if.end264_crit_edge
  %remote_wakeup_en = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 81
  %129 = ptrtoint ptr %remote_wakeup_en to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %remote_wakeup_en, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %130)
  %tobool265.not = icmp eq i32 %130, 0
  br i1 %tobool265.not, label %if.end264.if.else280_crit_edge, label %land.lhs.true266

if.end264.if.else280_crit_edge:                   ; preds = %if.end264
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else280

land.lhs.true266:                                 ; preds = %if.end264
  %auto_delink_en = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 65
  %131 = ptrtoint ptr %auto_delink_en to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %auto_delink_en, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %132)
  %tobool267.not = icmp eq i32 %132, 0
  br i1 %tobool267.not, label %if.then268, label %land.lhs.true266.if.else280_crit_edge

land.lhs.true266.if.else280_crit_edge:            ; preds = %land.lhs.true266
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else280

if.then268:                                       ; preds = %land.lhs.true266
  %call269 = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -428, i8 noundef zeroext 7, i8 noundef zeroext 7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call269)
  %tobool270.not = icmp eq i32 %call269, 0
  br i1 %tobool270.not, label %if.end272, label %if.then268.cleanup_crit_edge

if.then268.cleanup_crit_edge:                     ; preds = %if.then268
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end272:                                        ; preds = %if.then268
  %aux_pwr_exist = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 78
  %133 = ptrtoint ptr %aux_pwr_exist to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %aux_pwr_exist, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %134)
  %tobool273.not = icmp eq i32 %134, 0
  br i1 %tobool273.not, label %if.end272.if.end289_crit_edge, label %if.then274

if.end272.if.end289_crit_edge:                    ; preds = %if.end272
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end289

if.then274:                                       ; preds = %if.end272
  %call275 = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -426, i8 noundef zeroext -1, i8 noundef zeroext 51)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call275)
  %tobool276.not = icmp eq i32 %call275, 0
  br i1 %tobool276.not, label %if.then274.if.end289_crit_edge, label %if.then274.cleanup_crit_edge

if.then274.cleanup_crit_edge:                     ; preds = %if.then274
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then274.if.end289_crit_edge:                   ; preds = %if.then274
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end289

if.else280:                                       ; preds = %land.lhs.true266.if.else280_crit_edge, %if.end264.if.else280_crit_edge
  %call281 = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -428, i8 noundef zeroext 7, i8 noundef zeroext 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call281)
  %tobool282.not = icmp eq i32 %call281, 0
  br i1 %tobool282.not, label %if.end284, label %if.else280.cleanup_crit_edge

if.else280.cleanup_crit_edge:                     ; preds = %if.else280
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end284:                                        ; preds = %if.else280
  %call285 = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -426, i8 noundef zeroext -1, i8 noundef zeroext 48)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call285)
  %tobool286.not = icmp eq i32 %call285, 0
  br i1 %tobool286.not, label %if.end284.if.end289_crit_edge, label %if.end284.cleanup_crit_edge

if.end284.cleanup_crit_edge:                      ; preds = %if.end284
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end284.if.end289_crit_edge:                    ; preds = %if.end284
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end289

if.end289:                                        ; preds = %if.end284.if.end289_crit_edge, %if.then274.if.end289_crit_edge, %if.end272.if.end289_crit_edge
  %135 = ptrtoint ptr %product_id to i32
  call void @__asan_load2_noabort(i32 %135)
  %136 = load i16, ptr %product_id, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 21000, i16 %136)
  %cmp292 = icmp eq i16 %136, 21000
  br i1 %cmp292, label %land.lhs.true294, label %if.end289.if.end304_crit_edge

if.end289.if.end304_crit_edge:                    ; preds = %if.end289
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end304

land.lhs.true294:                                 ; preds = %if.end289
  %ic_version295 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 59
  %137 = ptrtoint ptr %ic_version295 to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %ic_version295, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %138)
  %cmp297 = icmp ugt i8 %138, 2
  br i1 %cmp297, label %if.then299, label %land.lhs.true294.if.end304_crit_edge

land.lhs.true294.if.end304_crit_edge:             ; preds = %land.lhs.true294
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end304

if.then299:                                       ; preds = %land.lhs.true294
  %call300 = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -439, i8 noundef zeroext 28, i8 noundef zeroext 20)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call300)
  %tobool301.not = icmp eq i32 %call300, 0
  br i1 %tobool301.not, label %if.then299.if.end304_crit_edge, label %if.then299.cleanup_crit_edge

if.then299.cleanup_crit_edge:                     ; preds = %if.then299
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then299.if.end304_crit_edge:                   ; preds = %if.then299
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end304

if.end304:                                        ; preds = %if.then299.if.end304_crit_edge, %land.lhs.true294.if.end304_crit_edge, %if.end289.if.end304_crit_edge
  %139 = ptrtoint ptr %asic_code to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %asic_code, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %140)
  %tobool306.not = icmp eq i32 %140, 0
  br i1 %tobool306.not, label %if.end304.if.end318_crit_edge, label %land.lhs.true307

if.end304.if.end318_crit_edge:                    ; preds = %if.end304
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end318

land.lhs.true307:                                 ; preds = %if.end304
  %141 = ptrtoint ptr %product_id to i32
  call void @__asan_load2_noabort(i32 %141)
  %142 = load i16, ptr %product_id, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 21000, i16 %142)
  %cmp310 = icmp eq i16 %142, 21000
  br i1 %cmp310, label %if.then312, label %land.lhs.true307.if.end318_crit_edge

land.lhs.true307.if.end318_crit_edge:             ; preds = %land.lhs.true307
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end318

if.then312:                                       ; preds = %land.lhs.true307
  %call313 = tail call i32 @rtsx_clr_phy_reg_bit(ptr noundef %chip, i8 noundef zeroext 28, i8 noundef zeroext 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call313)
  %cmp314.not = icmp eq i32 %call313, 0
  br i1 %cmp314.not, label %if.then312.if.end318_crit_edge, label %if.then312.cleanup_crit_edge

if.then312.cleanup_crit_edge:                     ; preds = %if.then312
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then312.if.end318_crit_edge:                   ; preds = %if.then312
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end318

if.end318:                                        ; preds = %if.then312.if.end318_crit_edge, %land.lhs.true307.if.end318_crit_edge, %if.end304.if.end318_crit_edge
  %ft2_fast_mode = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 131
  %143 = ptrtoint ptr %ft2_fast_mode to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %ft2_fast_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %144)
  %tobool319.not = icmp eq i32 %144, 0
  br i1 %tobool319.not, label %if.end318.if.end414_crit_edge, label %if.then320

if.end318.if.end414_crit_edge:                    ; preds = %if.end318
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end414

if.then320:                                       ; preds = %if.end318
  %call321 = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -688, i8 noundef zeroext -1, i8 noundef zeroext 5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call321)
  %tobool322.not = icmp eq i32 %call321, 0
  br i1 %tobool322.not, label %cond.false330, label %if.then320.cleanup_crit_edge

if.then320.cleanup_crit_edge:                     ; preds = %if.then320
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cond.false330:                                    ; preds = %if.then320
  %pmos_pwr_on_interval = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 127
  %145 = ptrtoint ptr %pmos_pwr_on_interval to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %pmos_pwr_on_interval, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %147 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %147(i32 noundef %146) #6
  %call333 = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -688, i8 noundef zeroext -1, i8 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call333)
  %tobool334.not = icmp eq i32 %call333, 0
  br i1 %tobool334.not, label %__here, label %cond.false330.cleanup_crit_edge

cond.false330.cleanup_crit_edge:                  ; preds = %cond.false330
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

__here:                                           ; preds = %cond.false330
  call void @__sanitizer_cov_trace_pc() #8
  %148 = tail call i32 @llvm.read_register.i32(metadata !197) #6
  %and.i = and i32 %148, -16384
  %149 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %149, i32 0, i32 2
  %150 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %151, i32 0, i32 212
  %152 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 ptrtoint (ptr blockaddress(@rtsx_reset_chip, %__here) to i32), ptr %task_state_change, align 4
  %153 = load ptr, ptr %task, align 8
  %154 = ptrtoint ptr %153 to i32
  call void @__asan_store4_noabort(i32 %154)
  store volatile i32 1, ptr %153, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !212
  %call411 = tail call i32 @schedule_timeout(i32 noundef 20) #6
  br label %if.end414

if.end414:                                        ; preds = %__here, %if.end318.if.end414_crit_edge
  tail call void @rtsx_reset_cards(ptr noundef %chip) #6
  %driver_first_load = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 60
  %155 = ptrtoint ptr %driver_first_load to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 0, ptr %driver_first_load, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end414, %cond.false330.cleanup_crit_edge, %if.then320.cleanup_crit_edge, %if.then312.cleanup_crit_edge, %if.then299.cleanup_crit_edge, %if.end284.cleanup_crit_edge, %if.else280.cleanup_crit_edge, %if.then274.cleanup_crit_edge, %if.then268.cleanup_crit_edge, %if.then259.cleanup_crit_edge, %do.end246.cleanup_crit_edge, %if.then223.cleanup_crit_edge, %if.else201.cleanup_crit_edge, %do.end196.cleanup_crit_edge, %if.end141.cleanup_crit_edge, %if.end137.cleanup_crit_edge, %if.end133.cleanup_crit_edge, %if.end127.cleanup_crit_edge, %if.then122.cleanup_crit_edge, %if.then102.cleanup_crit_edge, %if.end93.cleanup_crit_edge, %if.end85.cleanup_crit_edge, %if.then79.cleanup_crit_edge, %if.then66.cleanup_crit_edge, %if.end60.cleanup_crit_edge, %if.end55.cleanup_crit_edge, %if.then51.cleanup_crit_edge, %if.end45.cleanup_crit_edge, %if.end41.cleanup_crit_edge, %if.end37.cleanup_crit_edge, %if.then32.cleanup_crit_edge, %if.end24.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %rtsx_write_register.exit637.cleanup_crit_edge, %for.cond.i626.cleanup_crit_edge, %rtsx_write_register.exit621.cleanup_crit_edge, %for.cond.i610.cleanup_crit_edge, %rtsx_write_register.exit605.cleanup_crit_edge, %for.cond.i594.cleanup_crit_edge, %rtsx_write_register.exit589.cleanup_crit_edge, %for.cond.i578.cleanup_crit_edge, %rtsx_write_register.exit.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end414 ], [ 1, %rtsx_write_register.exit.cleanup_crit_edge ], [ 1, %rtsx_write_register.exit589.cleanup_crit_edge ], [ 1, %rtsx_write_register.exit605.cleanup_crit_edge ], [ 1, %rtsx_write_register.exit621.cleanup_crit_edge ], [ 1, %rtsx_write_register.exit637.cleanup_crit_edge ], [ %call21, %if.end20.cleanup_crit_edge ], [ %call25, %if.end24.cleanup_crit_edge ], [ %call33, %if.then32.cleanup_crit_edge ], [ %call38, %if.end37.cleanup_crit_edge ], [ %call42, %if.end41.cleanup_crit_edge ], [ %call46, %if.end45.cleanup_crit_edge ], [ %call52, %if.then51.cleanup_crit_edge ], [ %call56, %if.end55.cleanup_crit_edge ], [ %call61, %if.end60.cleanup_crit_edge ], [ 1, %if.then66.cleanup_crit_edge ], [ 1, %if.then79.cleanup_crit_edge ], [ 1, %if.end85.cleanup_crit_edge ], [ 1, %if.end93.cleanup_crit_edge ], [ 1, %if.then102.cleanup_crit_edge ], [ 1, %if.then122.cleanup_crit_edge ], [ 1, %if.end127.cleanup_crit_edge ], [ %call134, %if.end133.cleanup_crit_edge ], [ %call138, %if.end137.cleanup_crit_edge ], [ 1, %if.end141.cleanup_crit_edge ], [ 1, %do.end196.cleanup_crit_edge ], [ %call202, %if.else201.cleanup_crit_edge ], [ %call224, %if.then223.cleanup_crit_edge ], [ %call247, %do.end246.cleanup_crit_edge ], [ %call260, %if.then259.cleanup_crit_edge ], [ %call269, %if.then268.cleanup_crit_edge ], [ %call275, %if.then274.cleanup_crit_edge ], [ %call281, %if.else280.cleanup_crit_edge ], [ %call285, %if.end284.cleanup_crit_edge ], [ %call300, %if.then299.cleanup_crit_edge ], [ 1, %if.then312.cleanup_crit_edge ], [ %call321, %if.then320.cleanup_crit_edge ], [ %call333, %cond.false330.cleanup_crit_edge ], [ 2, %for.cond.i626.cleanup_crit_edge ], [ 2, %for.cond.i594.cleanup_crit_edge ], [ 2, %for.cond.i610.cleanup_crit_edge ], [ 2, %for.cond.i578.cleanup_crit_edge ], [ 2, %for.cond.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtsx_disable_aspm(ptr nocapture noundef %chip) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %product_id = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 58
  %0 = ptrtoint ptr %product_id to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %product_id, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 21000, i16 %1)
  %cmp = icmp eq i16 %1, 21000
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @rtsx_monitor_aspm_config(ptr noundef %chip)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %aspm_l0s_l1_en = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 68
  %2 = ptrtoint ptr %aspm_l0s_l1_en to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %aspm_l0s_l1_en, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end.if.end107_crit_edge, label %land.lhs.true

if.end.if.end107_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end107

land.lhs.true:                                    ; preds = %if.end
  %dynamic_aspm = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 85
  %4 = ptrtoint ptr %dynamic_aspm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dynamic_aspm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool3.not = icmp eq i32 %5, 0
  br i1 %tobool3.not, label %land.lhs.true.if.end107_crit_edge, label %land.lhs.true4

land.lhs.true.if.end107_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end107

land.lhs.true4:                                   ; preds = %land.lhs.true
  %aspm_enabled = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 46
  %6 = ptrtoint ptr %aspm_enabled to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %aspm_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool5.not = icmp eq i32 %7, 0
  br i1 %tobool5.not, label %land.lhs.true4.if.end107_crit_edge, label %do.body

land.lhs.true4.if.end107_crit_edge:               ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end107

do.body:                                          ; preds = %land.lhs.true4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtsx_disable_aspm.__UNIQUE_ID_ddebug345, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtsx_disable_aspm, %if.then10)) #6
          to label %do.end [label %if.then10], !srcloc !211

if.then10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %chip, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtsx_disable_aspm.__UNIQUE_ID_ddebug345, ptr noundef %dev.i, ptr noundef nonnull @.str.47) #6
  br label %do.end

do.end:                                           ; preds = %if.then10, %do.body
  %12 = ptrtoint ptr %aspm_enabled to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %aspm_enabled, align 4
  %asic_code = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 74
  %13 = ptrtoint ptr %asic_code to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %asic_code, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool14.not = icmp eq i32 %14, 0
  br i1 %tobool14.not, label %do.end.if.end22_crit_edge, label %land.lhs.true15

do.end.if.end22_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

land.lhs.true15:                                  ; preds = %do.end
  %15 = ptrtoint ptr %product_id to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %product_id, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 21000, i16 %16)
  %cmp18 = icmp eq i16 %16, 21000
  br i1 %cmp18, label %if.then20, label %land.lhs.true15.if.else_crit_edge

land.lhs.true15.if.else_crit_edge:                ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.then20:                                        ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #8
  %call21 = tail call i32 @rtsx_write_phy_register(ptr noundef %chip, i8 noundef zeroext 7, i16 noundef zeroext 297)
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %do.end.if.end22_crit_edge
  %17 = ptrtoint ptr %product_id to i32
  call void @__asan_load2_noabort(i32 %17)
  %.pr = load i16, ptr %product_id, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 21000, i16 %.pr)
  %cmp25 = icmp eq i16 %.pr, 21000
  br i1 %cmp25, label %if.then27, label %if.end22.if.else_crit_edge

if.end22.if.else_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.then27:                                        ; preds = %if.end22
  %18 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %chip, align 4
  %remap_addr.i = getelementptr inbounds %struct.rtsx_dev, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %21, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !209
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 821254142) #6, !srcloc !210
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then27
  %i.029.i = phi i32 [ 0, %if.then27 ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %22 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %chip, align 4
  %remap_addr8.i = getelementptr inbounds %struct.rtsx_dev, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %remap_addr8.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %remap_addr8.i, align 4
  %add.ptr9.i = getelementptr i8, ptr %25, i32 16
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i) #6, !srcloc !207
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !208
  %.mask = and i32 %26, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask)
  %cmp11.i = icmp eq i32 %.mask, 0
  %inc.i = add nuw nsw i32 %i.029.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %inc.i)
  %exitcond.not.i = icmp eq i32 %inc.i, 1024
  %or.cond = select i1 %cmp11.i, i1 true, i1 %exitcond.not.i
  br i1 %or.cond, label %for.body.i.__here_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.body.i.__here_crit_edge:                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__here

if.else:                                          ; preds = %if.end22.if.else_crit_edge, %land.lhs.true15.if.else_crit_edge
  %27 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %chip, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 4
  %call29 = tail call i32 @pci_write_config_byte(ptr noundef %30, i32 noundef 128, i8 noundef zeroext 0) #6
  br label %__here

__here:                                           ; preds = %if.else, %for.body.i.__here_crit_edge
  %31 = tail call i32 @llvm.read_register.i32(metadata !197) #6
  %and.i = and i32 %31, -16384
  %32 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %34, i32 0, i32 212
  %35 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 ptrtoint (ptr blockaddress(@rtsx_disable_aspm, %__here) to i32), ptr %task_state_change, align 4
  %36 = load ptr, ptr %task, align 8
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile i32 1, ptr %36, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !213
  %call104 = tail call i32 @schedule_timeout(i32 noundef 0) #6
  br label %if.end107

if.end107:                                        ; preds = %__here, %land.lhs.true4.if.end107_crit_edge, %land.lhs.true.if.end107_crit_edge, %if.end.if.end107_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtsx_write_register(ptr nocapture noundef readonly %chip, i16 noundef zeroext %addr, i8 noundef zeroext %mask, i8 noundef zeroext %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i16 %addr, 16383
  %and = zext i16 %0 to i32
  %shl = shl nuw nsw i32 %and, 16
  %conv1 = zext i8 %mask to i32
  %shl2 = shl nuw nsw i32 %conv1, 8
  %or = or i32 %shl, %shl2
  %conv4 = zext i8 %data to i32
  %or3 = or i32 %or, %conv4
  %or5 = or i32 %or3, -1073741824
  %1 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %chip, align 4
  %remap_addr = getelementptr inbounds %struct.rtsx_dev, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %remap_addr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %remap_addr, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !209
  tail call void @arm_heavy_mb() #6
  %5 = tail call i32 @llvm.bswap.i32(i32 %or5) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %5) #6, !srcloc !210
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.029, 1
  %exitcond.not = icmp eq i32 %inc, 1024
  br i1 %exitcond.not, label %for.cond.cleanup_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry
  %i.029 = phi i32 [ 0, %entry ], [ %inc, %for.cond.for.body_crit_edge ]
  %6 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chip, align 4
  %remap_addr8 = getelementptr inbounds %struct.rtsx_dev, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %remap_addr8 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %remap_addr8, align 4
  %add.ptr9 = getelementptr i8, ptr %9, i32 16
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9) #6, !srcloc !207
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !208
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %cmp11 = icmp sgt i32 %11, -1
  br i1 %cmp11, label %if.then, label %for.cond

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %conv15 = and i32 %11, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %conv15, i32 %conv4)
  %cmp16.not = icmp ne i32 %conv15, %conv4
  %. = zext i1 %cmp16.not to i32
  br label %cleanup

cleanup:                                          ; preds = %if.then, %for.cond.cleanup_crit_edge
  %retval.0 = phi i32 [ %., %if.then ], [ 2, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rtsx_reset_aspm(ptr nocapture noundef %chip) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dynamic_aspm = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 85
  %0 = ptrtoint ptr %dynamic_aspm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dynamic_aspm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end9, label %if.then

if.then:                                          ; preds = %entry
  %sdio_func_exist = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 77
  %2 = ptrtoint ptr %sdio_func_exist to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sdio_func_exist, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.then.cleanup_crit_edge, label %lor.lhs.false

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.then
  %product_id = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 58
  %4 = ptrtoint ptr %product_id to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %product_id, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 21128, i16 %5)
  %cmp = icmp eq i16 %5, 21128
  br i1 %cmp, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  %aspm_l0s_l1_en = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 68
  %6 = ptrtoint ptr %aspm_l0s_l1_en to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %aspm_l0s_l1_en, align 1
  %conv4 = zext i8 %7 to i32
  %call = tail call i32 @rtsx_write_cfg_dw(ptr noundef %chip, i8 noundef zeroext 2, i16 noundef zeroext 192, i32 noundef 255, i32 noundef %conv4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp5.not = icmp ne i32 %call, 0
  %. = zext i1 %cmp5.not to i32
  br label %cleanup

if.end9:                                          ; preds = %entry
  %product_id10 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 58
  %8 = ptrtoint ptr %product_id10 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %product_id10, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 21000, i16 %9)
  %cmp12 = icmp eq i16 %9, 21000
  br i1 %cmp12, label %if.then14, label %if.end9.if.end19_crit_edge

if.end9.if.end19_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

if.then14:                                        ; preds = %if.end9
  %10 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %chip, align 4
  %remap_addr.i = getelementptr inbounds %struct.rtsx_dev, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %13, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !209
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 1073698814) #6, !srcloc !210
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.029.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 1024
  br i1 %exitcond.not.i, label %for.cond.i.cleanup_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %if.then14
  %i.029.i = phi i32 [ 0, %if.then14 ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %14 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %chip, align 4
  %remap_addr8.i = getelementptr inbounds %struct.rtsx_dev, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %remap_addr8.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %remap_addr8.i, align 4
  %add.ptr9.i = getelementptr i8, ptr %17, i32 16
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i) #6, !srcloc !207
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !208
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %19)
  %cmp11.i = icmp sgt i32 %19, -1
  br i1 %cmp11.i, label %rtsx_write_register.exit, label %for.cond.i

rtsx_write_register.exit:                         ; preds = %for.body.i
  %conv15.i = and i32 %19, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %conv15.i)
  %cmp16.not.i.not = icmp eq i32 %conv15.i, 63
  br i1 %cmp16.not.i.not, label %rtsx_write_register.exit.if.end19_crit_edge, label %rtsx_write_register.exit.cleanup_crit_edge

rtsx_write_register.exit.cleanup_crit_edge:       ; preds = %rtsx_write_register.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

rtsx_write_register.exit.if.end19_crit_edge:      ; preds = %rtsx_write_register.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

if.end19:                                         ; preds = %rtsx_write_register.exit.if.end19_crit_edge, %if.end9.if.end19_crit_edge
  %20 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %chip, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %aspm_l0s_l1_en20 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 68
  %24 = ptrtoint ptr %aspm_l0s_l1_en20 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %aspm_l0s_l1_en20, align 1
  %call21 = tail call i32 @pci_write_config_byte(ptr noundef %23, i32 noundef 128, i8 noundef zeroext %25) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22.not = icmp eq i32 %call21, 0
  br i1 %cmp22.not, label %if.end25, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end25:                                         ; preds = %if.end19
  %26 = ptrtoint ptr %aspm_l0s_l1_en20 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %aspm_l0s_l1_en20, align 1
  %aspm_level = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 62
  %28 = ptrtoint ptr %aspm_level to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %aspm_level, align 4
  %sdio_func_exist27 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 77
  %29 = ptrtoint ptr %sdio_func_exist27 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %sdio_func_exist27, align 4
  %and28 = and i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %if.end25.if.end46_crit_edge, label %if.then30

if.end25.if.end46_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end46

if.then30:                                        ; preds = %if.end25
  %arrayidx33 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 62, i32 1
  %31 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %27, ptr %arrayidx33, align 1
  %32 = ptrtoint ptr %product_id10 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %product_id10, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 21128, i16 %33)
  %cmp36 = icmp eq i16 %33, 21128
  %conv38 = select i1 %cmp36, i8 2, i8 1
  %conv40 = zext i8 %27 to i32
  %call41 = tail call i32 @rtsx_write_cfg_dw(ptr noundef %chip, i8 noundef zeroext %conv38, i16 noundef zeroext 192, i32 noundef 255, i32 noundef %conv40)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %cmp42.not = icmp eq i32 %call41, 0
  br i1 %cmp42.not, label %if.then30.if.end46_crit_edge, label %if.then30.cleanup_crit_edge

if.then30.cleanup_crit_edge:                      ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then30.if.end46_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end46

if.end46:                                         ; preds = %if.then30.if.end46_crit_edge, %if.end25.if.end46_crit_edge
  %aspm_enabled = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 46
  %34 = ptrtoint ptr %aspm_enabled to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 1, ptr %aspm_enabled, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end46, %if.then30.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %rtsx_write_register.exit.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge, %if.end, %lor.lhs.false.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end46 ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %if.then.cleanup_crit_edge ], [ %., %if.end ], [ 1, %rtsx_write_register.exit.cleanup_crit_edge ], [ 1, %if.end19.cleanup_crit_edge ], [ 1, %if.then30.cleanup_crit_edge ], [ 2, %for.cond.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtsx_write_phy_register(ptr nocapture noundef readonly %chip, i8 noundef zeroext %addr, i16 noundef zeroext %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i16 %val, 255
  %conv4.i = zext i16 %0 to i32
  %or5.i = or i32 %conv4.i, -29491456
  %1 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %chip, align 4
  %remap_addr.i = getelementptr inbounds %struct.rtsx_dev, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !209
  tail call void @arm_heavy_mb() #6
  %5 = tail call i32 @llvm.bswap.i32(i32 %or5.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %5) #6, !srcloc !210
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.029.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 1024
  br i1 %exitcond.not.i, label %for.cond.i.cleanup_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %entry
  %i.029.i = phi i32 [ 0, %entry ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %6 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chip, align 4
  %remap_addr8.i = getelementptr inbounds %struct.rtsx_dev, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %remap_addr8.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %remap_addr8.i, align 4
  %add.ptr9.i = getelementptr i8, ptr %9, i32 16
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i) #6, !srcloc !207
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !208
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %cmp11.i = icmp sgt i32 %11, -1
  br i1 %cmp11.i, label %rtsx_write_register.exit, label %for.cond.i

rtsx_write_register.exit:                         ; preds = %for.body.i
  %conv15.i = and i32 %11, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %conv15.i, i32 %conv4.i)
  %cmp16.not.i.not = icmp eq i32 %conv15.i, %conv4.i
  br i1 %cmp16.not.i.not, label %if.end, label %rtsx_write_register.exit.cleanup_crit_edge

rtsx_write_register.exit.cleanup_crit_edge:       ; preds = %rtsx_write_register.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %rtsx_write_register.exit
  %12 = lshr i16 %val, 8
  %conv3 = zext i16 %12 to i32
  %or5.i48 = or i32 %conv3, -29425920
  %13 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %chip, align 4
  %remap_addr.i49 = getelementptr inbounds %struct.rtsx_dev, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %remap_addr.i49 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %remap_addr.i49, align 4
  %add.ptr.i50 = getelementptr i8, ptr %16, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !209
  tail call void @arm_heavy_mb() #6
  %17 = tail call i32 @llvm.bswap.i32(i32 %or5.i48) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i50, i32 %17) #6, !srcloc !210
  br label %for.body.i58

for.cond.i53:                                     ; preds = %for.body.i58
  %inc.i51 = add nuw nsw i32 %i.029.i54, 1
  %exitcond.not.i52 = icmp eq i32 %inc.i51, 1024
  br i1 %exitcond.not.i52, label %for.cond.i53.cleanup_crit_edge, label %for.cond.i53.for.body.i58_crit_edge

for.cond.i53.for.body.i58_crit_edge:              ; preds = %for.cond.i53
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i58

for.cond.i53.cleanup_crit_edge:                   ; preds = %for.cond.i53
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.i58:                                     ; preds = %for.cond.i53.for.body.i58_crit_edge, %if.end
  %i.029.i54 = phi i32 [ 0, %if.end ], [ %inc.i51, %for.cond.i53.for.body.i58_crit_edge ]
  %18 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %chip, align 4
  %remap_addr8.i55 = getelementptr inbounds %struct.rtsx_dev, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %remap_addr8.i55 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %remap_addr8.i55, align 4
  %add.ptr9.i56 = getelementptr i8, ptr %21, i32 16
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i56) #6, !srcloc !207
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !208
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %23)
  %cmp11.i57 = icmp sgt i32 %23, -1
  br i1 %cmp11.i57, label %rtsx_write_register.exit64, label %for.cond.i53

rtsx_write_register.exit64:                       ; preds = %for.body.i58
  %conv15.i59 = and i32 %23, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %conv15.i59, i32 %conv3)
  %cmp16.not.i60.not = icmp eq i32 %conv15.i59, %conv3
  br i1 %cmp16.not.i60.not, label %if.end7, label %rtsx_write_register.exit64.cleanup_crit_edge

rtsx_write_register.exit64.cleanup_crit_edge:     ; preds = %rtsx_write_register.exit64
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7:                                          ; preds = %rtsx_write_register.exit64
  %conv4.i65 = zext i8 %addr to i32
  %or5.i67 = or i32 %conv4.i65, -29360384
  %24 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %chip, align 4
  %remap_addr.i68 = getelementptr inbounds %struct.rtsx_dev, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %remap_addr.i68 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %remap_addr.i68, align 4
  %add.ptr.i69 = getelementptr i8, ptr %27, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !209
  tail call void @arm_heavy_mb() #6
  %28 = tail call i32 @llvm.bswap.i32(i32 %or5.i67) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i69, i32 %28) #6, !srcloc !210
  br label %for.body.i77

for.cond.i72:                                     ; preds = %for.body.i77
  %inc.i70 = add nuw nsw i32 %i.029.i73, 1
  %exitcond.not.i71 = icmp eq i32 %inc.i70, 1024
  br i1 %exitcond.not.i71, label %for.cond.i72.cleanup_crit_edge, label %for.cond.i72.for.body.i77_crit_edge

for.cond.i72.for.body.i77_crit_edge:              ; preds = %for.cond.i72
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i77

for.cond.i72.cleanup_crit_edge:                   ; preds = %for.cond.i72
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.i77:                                     ; preds = %for.cond.i72.for.body.i77_crit_edge, %if.end7
  %i.029.i73 = phi i32 [ 0, %if.end7 ], [ %inc.i70, %for.cond.i72.for.body.i77_crit_edge ]
  %29 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %chip, align 4
  %remap_addr8.i74 = getelementptr inbounds %struct.rtsx_dev, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %remap_addr8.i74 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %remap_addr8.i74, align 4
  %add.ptr9.i75 = getelementptr i8, ptr %32, i32 16
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i75) #6, !srcloc !207
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !208
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %34)
  %cmp11.i76 = icmp sgt i32 %34, -1
  br i1 %cmp11.i76, label %rtsx_write_register.exit83, label %for.cond.i72

rtsx_write_register.exit83:                       ; preds = %for.body.i77
  %conv15.i78 = and i32 %34, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %conv15.i78, i32 %conv4.i65)
  %cmp16.not.i79.not = icmp eq i32 %conv15.i78, %conv4.i65
  br i1 %cmp16.not.i79.not, label %if.end11, label %rtsx_write_register.exit83.cleanup_crit_edge

rtsx_write_register.exit83.cleanup_crit_edge:     ; preds = %rtsx_write_register.exit83
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end11:                                         ; preds = %rtsx_write_register.exit83
  %35 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %chip, align 4
  %remap_addr.i84 = getelementptr inbounds %struct.rtsx_dev, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %remap_addr.i84 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %remap_addr.i84, align 4
  %add.ptr.i85 = getelementptr i8, ptr %38, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !209
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i85, i32 -2113979138) #6, !srcloc !210
  br label %for.body.i93

for.cond.i88:                                     ; preds = %for.body.i93
  %inc.i86 = add nuw nsw i32 %i.029.i89, 1
  %exitcond.not.i87 = icmp eq i32 %inc.i86, 1024
  br i1 %exitcond.not.i87, label %for.cond.i88.cleanup_crit_edge, label %for.cond.i88.for.body.i93_crit_edge

for.cond.i88.for.body.i93_crit_edge:              ; preds = %for.cond.i88
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i93

for.cond.i88.cleanup_crit_edge:                   ; preds = %for.cond.i88
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.i93:                                     ; preds = %for.cond.i88.for.body.i93_crit_edge, %if.end11
  %i.029.i89 = phi i32 [ 0, %if.end11 ], [ %inc.i86, %for.cond.i88.for.body.i93_crit_edge ]
  %39 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %chip, align 4
  %remap_addr8.i90 = getelementptr inbounds %struct.rtsx_dev, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %remap_addr8.i90 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %remap_addr8.i90, align 4
  %add.ptr9.i91 = getelementptr i8, ptr %42, i32 16
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i91) #6, !srcloc !207
  %44 = tail call i32 @llvm.bswap.i32(i32 %43) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !208
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %44)
  %cmp11.i92 = icmp sgt i32 %44, -1
  br i1 %cmp11.i92, label %rtsx_write_register.exit99, label %for.cond.i88

rtsx_write_register.exit99:                       ; preds = %for.body.i93
  %conv15.i94 = and i32 %44, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 129, i32 %conv15.i94)
  %cmp16.not.i95.not = icmp eq i32 %conv15.i94, 129
  br i1 %cmp16.not.i95.not, label %rtsx_write_register.exit99.for.body_crit_edge, label %rtsx_write_register.exit99.cleanup_crit_edge

rtsx_write_register.exit99.cleanup_crit_edge:     ; preds = %rtsx_write_register.exit99
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

rtsx_write_register.exit99.for.body_crit_edge:    ; preds = %rtsx_write_register.exit99
  br label %for.body

for.cond:                                         ; preds = %if.end20
  %inc = add nuw nsw i32 %i.0134, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 99999, i32 %i.0134)
  %cmp = icmp ult i32 %i.0134, 99999
  %exitcond.not = icmp eq i32 %inc, 100000
  br i1 %exitcond.not, label %for.cond.for.end_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %rtsx_write_register.exit99.for.body_crit_edge
  %cmp135 = phi i1 [ %cmp, %for.cond.for.body_crit_edge ], [ true, %rtsx_write_register.exit99.for.body_crit_edge ]
  %i.0134 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %rtsx_write_register.exit99.for.body_crit_edge ]
  %45 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %chip, align 4
  %remap_addr.i101 = getelementptr inbounds %struct.rtsx_dev, ptr %46, i32 0, i32 2
  %47 = ptrtoint ptr %remap_addr.i101 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %remap_addr.i101, align 4
  %add.ptr.i102 = getelementptr i8, ptr %48, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !209
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i102, i32 15550) #6, !srcloc !210
  br label %for.body.i106

for.cond.i105:                                    ; preds = %for.body.i106
  %inc.i103 = add nuw nsw i32 %i.033.i, 1
  %exitcond.not.i104 = icmp eq i32 %inc.i103, 1024
  br i1 %exitcond.not.i104, label %for.cond.i105.cleanup_crit_edge, label %for.cond.i105.for.body.i106_crit_edge

for.cond.i105.for.body.i106_crit_edge:            ; preds = %for.cond.i105
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i106

for.cond.i105.cleanup_crit_edge:                  ; preds = %for.cond.i105
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.i106:                                    ; preds = %for.cond.i105.for.body.i106_crit_edge, %for.body
  %i.033.i = phi i32 [ 0, %for.body ], [ %inc.i103, %for.cond.i105.for.body.i106_crit_edge ]
  %49 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %chip, align 4
  %remap_addr3.i = getelementptr inbounds %struct.rtsx_dev, ptr %50, i32 0, i32 2
  %51 = ptrtoint ptr %remap_addr3.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %remap_addr3.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %52, i32 16
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i) #6, !srcloc !207
  %54 = tail call i32 @llvm.bswap.i32(i32 %53) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !208
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %54)
  %cmp6.i = icmp sgt i32 %54, -1
  br i1 %cmp6.i, label %if.end20, label %for.cond.i105

if.end20:                                         ; preds = %for.body.i106
  %55 = and i32 %54, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool22.not = icmp eq i32 %55, 0
  br i1 %tobool22.not, label %if.end20.for.end_crit_edge, label %for.cond

if.end20.for.end_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %if.end20.for.end_crit_edge, %for.cond.for.end_crit_edge
  %cmp.lcssa = phi i1 [ %cmp135, %if.end20.for.end_crit_edge ], [ %cmp, %for.cond.for.end_crit_edge ]
  %not.cmp = xor i1 %cmp.lcssa, true
  %. = zext i1 %not.cmp to i32
  br label %cleanup

cleanup:                                          ; preds = %for.end, %for.cond.i105.cleanup_crit_edge, %rtsx_write_register.exit99.cleanup_crit_edge, %for.cond.i88.cleanup_crit_edge, %rtsx_write_register.exit83.cleanup_crit_edge, %for.cond.i72.cleanup_crit_edge, %rtsx_write_register.exit64.cleanup_crit_edge, %for.cond.i53.cleanup_crit_edge, %rtsx_write_register.exit.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %rtsx_write_register.exit.cleanup_crit_edge ], [ 1, %rtsx_write_register.exit64.cleanup_crit_edge ], [ 1, %rtsx_write_register.exit83.cleanup_crit_edge ], [ 1, %rtsx_write_register.exit99.cleanup_crit_edge ], [ %., %for.end ], [ 2, %for.cond.i105.cleanup_crit_edge ], [ 2, %for.cond.i88.cleanup_crit_edge ], [ 2, %for.cond.i72.cleanup_crit_edge ], [ 2, %for.cond.i53.cleanup_crit_edge ], [ 2, %for.cond.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_byte(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtsx_write_cfg_dw(ptr nocapture noundef readonly %chip, i8 noundef zeroext %func_no, i16 noundef zeroext %addr, i32 noundef %mask, i32 noundef %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %if.end9.for.body_crit_edge, %entry
  %i.0180 = phi i32 [ 0, %entry ], [ %inc, %if.end9.for.body_crit_edge ]
  %mode.0179 = phi i8 [ 0, %entry ], [ %mode.1, %if.end9.for.body_crit_edge ]
  %val.addr.0177 = phi i32 [ %val, %entry ], [ %shr10, %if.end9.for.body_crit_edge ]
  %mask.addr.0176 = phi i32 [ %mask, %entry ], [ %shr, %if.end9.for.body_crit_edge ]
  %and = and i32 %mask.addr.0176, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.if.end9_crit_edge, label %if.then

for.body.if.end9_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.then:                                          ; preds = %for.body
  %conv = shl i32 %i.0180, 16
  %0 = add nuw nsw i32 %conv, 1043791872
  %conv4.i = and i32 %and, %val.addr.0177
  %or.i = or i32 %0, %conv4.i
  %or5.i = or i32 %or.i, -1073676544
  %1 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %chip, align 4
  %remap_addr.i = getelementptr inbounds %struct.rtsx_dev, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !209
  tail call void @arm_heavy_mb() #6
  %5 = tail call i32 @llvm.bswap.i32(i32 %or5.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %5) #6, !srcloc !210
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.029.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 1024
  br i1 %exitcond.not.i, label %for.cond.i.cleanup_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %if.then
  %i.029.i = phi i32 [ 0, %if.then ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %6 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chip, align 4
  %remap_addr8.i = getelementptr inbounds %struct.rtsx_dev, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %remap_addr8.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %remap_addr8.i, align 4
  %add.ptr9.i = getelementptr i8, ptr %9, i32 16
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i) #6, !srcloc !207
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !208
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %cmp11.i = icmp sgt i32 %11, -1
  br i1 %cmp11.i, label %rtsx_write_register.exit, label %for.cond.i

rtsx_write_register.exit:                         ; preds = %for.body.i
  %conv15.i = and i32 %11, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %conv15.i, i32 %conv4.i)
  %cmp16.not.i.not = icmp eq i32 %conv15.i, %conv4.i
  br i1 %cmp16.not.i.not, label %if.end, label %rtsx_write_register.exit.cleanup_crit_edge

rtsx_write_register.exit.cleanup_crit_edge:       ; preds = %rtsx_write_register.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %rtsx_write_register.exit
  call void @__sanitizer_cov_trace_pc() #8
  %shl = shl nuw i32 1, %i.0180
  %12 = trunc i32 %shl to i8
  %conv8 = or i8 %mode.0179, %12
  br label %if.end9

if.end9:                                          ; preds = %if.end, %for.body.if.end9_crit_edge
  %mode.1 = phi i8 [ %conv8, %if.end ], [ %mode.0179, %for.body.if.end9_crit_edge ]
  %shr = lshr i32 %mask.addr.0176, 8
  %shr10 = lshr i32 %val.addr.0177, 8
  %inc = add nuw nsw i32 %i.0180, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %for.end, label %if.end9.for.body_crit_edge

if.end9.for.body_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %mode.1)
  %tobool11.not = icmp eq i8 %mode.1, 0
  br i1 %tobool11.not, label %for.end.cleanup_crit_edge, label %if.then12

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then12:                                        ; preds = %for.end
  %13 = and i16 %addr, 255
  %conv4.i82 = zext i16 %13 to i32
  %or5.i84 = or i32 %conv4.i82, -30015744
  %14 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %chip, align 4
  %remap_addr.i85 = getelementptr inbounds %struct.rtsx_dev, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %remap_addr.i85 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %remap_addr.i85, align 4
  %add.ptr.i86 = getelementptr i8, ptr %17, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !209
  tail call void @arm_heavy_mb() #6
  %18 = tail call i32 @llvm.bswap.i32(i32 %or5.i84) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i86, i32 %18) #6, !srcloc !210
  br label %for.body.i94

for.cond.i89:                                     ; preds = %for.body.i94
  %inc.i87 = add nuw nsw i32 %i.029.i90, 1
  %exitcond.not.i88 = icmp eq i32 %inc.i87, 1024
  br i1 %exitcond.not.i88, label %for.cond.i89.cleanup_crit_edge, label %for.cond.i89.for.body.i94_crit_edge

for.cond.i89.for.body.i94_crit_edge:              ; preds = %for.cond.i89
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i94

for.cond.i89.cleanup_crit_edge:                   ; preds = %for.cond.i89
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.i94:                                     ; preds = %for.cond.i89.for.body.i94_crit_edge, %if.then12
  %i.029.i90 = phi i32 [ 0, %if.then12 ], [ %inc.i87, %for.cond.i89.for.body.i94_crit_edge ]
  %19 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %chip, align 4
  %remap_addr8.i91 = getelementptr inbounds %struct.rtsx_dev, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %remap_addr8.i91 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %remap_addr8.i91, align 4
  %add.ptr9.i92 = getelementptr i8, ptr %22, i32 16
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i92) #6, !srcloc !207
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !208
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %24)
  %cmp11.i93 = icmp sgt i32 %24, -1
  br i1 %cmp11.i93, label %rtsx_write_register.exit100, label %for.cond.i89

rtsx_write_register.exit100:                      ; preds = %for.body.i94
  %conv15.i95 = and i32 %24, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %conv15.i95, i32 %conv4.i82)
  %cmp16.not.i96.not = icmp eq i32 %conv15.i95, %conv4.i82
  br i1 %cmp16.not.i96.not, label %if.end17, label %rtsx_write_register.exit100.cleanup_crit_edge

rtsx_write_register.exit100.cleanup_crit_edge:    ; preds = %rtsx_write_register.exit100
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end17:                                         ; preds = %rtsx_write_register.exit100
  %25 = lshr i16 %addr, 8
  %conv20 = zext i16 %25 to i32
  %or5.i103 = or i32 %conv20, -29950208
  %26 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %chip, align 4
  %remap_addr.i104 = getelementptr inbounds %struct.rtsx_dev, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %remap_addr.i104 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %remap_addr.i104, align 4
  %add.ptr.i105 = getelementptr i8, ptr %29, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !209
  tail call void @arm_heavy_mb() #6
  %30 = tail call i32 @llvm.bswap.i32(i32 %or5.i103) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i105, i32 %30) #6, !srcloc !210
  br label %for.body.i113

for.cond.i108:                                    ; preds = %for.body.i113
  %inc.i106 = add nuw nsw i32 %i.029.i109, 1
  %exitcond.not.i107 = icmp eq i32 %inc.i106, 1024
  br i1 %exitcond.not.i107, label %for.cond.i108.cleanup_crit_edge, label %for.cond.i108.for.body.i113_crit_edge

for.cond.i108.for.body.i113_crit_edge:            ; preds = %for.cond.i108
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i113

for.cond.i108.cleanup_crit_edge:                  ; preds = %for.cond.i108
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.i113:                                    ; preds = %for.cond.i108.for.body.i113_crit_edge, %if.end17
  %i.029.i109 = phi i32 [ 0, %if.end17 ], [ %inc.i106, %for.cond.i108.for.body.i113_crit_edge ]
  %31 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %chip, align 4
  %remap_addr8.i110 = getelementptr inbounds %struct.rtsx_dev, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %remap_addr8.i110 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %remap_addr8.i110, align 4
  %add.ptr9.i111 = getelementptr i8, ptr %34, i32 16
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i111) #6, !srcloc !207
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !208
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %36)
  %cmp11.i112 = icmp sgt i32 %36, -1
  br i1 %cmp11.i112, label %rtsx_write_register.exit119, label %for.cond.i108

rtsx_write_register.exit119:                      ; preds = %for.body.i113
  %conv15.i114 = and i32 %36, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %conv15.i114, i32 %conv20)
  %cmp16.not.i115.not = icmp eq i32 %conv15.i114, %conv20
  br i1 %cmp16.not.i115.not, label %if.end24, label %rtsx_write_register.exit119.cleanup_crit_edge

rtsx_write_register.exit119.cleanup_crit_edge:    ; preds = %rtsx_write_register.exit119
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end24:                                         ; preds = %rtsx_write_register.exit119
  %37 = shl i8 %func_no, 4
  %38 = and i8 %37, 48
  %39 = or i8 %38, %mode.1
  %or3081 = or i8 %39, -128
  %conv4.i120 = zext i8 %or3081 to i32
  %or5.i122 = or i32 %conv4.i120, -29622528
  %40 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %chip, align 4
  %remap_addr.i123 = getelementptr inbounds %struct.rtsx_dev, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %remap_addr.i123 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %remap_addr.i123, align 4
  %add.ptr.i124 = getelementptr i8, ptr %43, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !209
  tail call void @arm_heavy_mb() #6
  %44 = tail call i32 @llvm.bswap.i32(i32 %or5.i122) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i124, i32 %44) #6, !srcloc !210
  br label %for.body.i132

for.cond.i127:                                    ; preds = %for.body.i132
  %inc.i125 = add nuw nsw i32 %i.029.i128, 1
  %exitcond.not.i126 = icmp eq i32 %inc.i125, 1024
  br i1 %exitcond.not.i126, label %for.cond.i127.cleanup_crit_edge, label %for.cond.i127.for.body.i132_crit_edge

for.cond.i127.for.body.i132_crit_edge:            ; preds = %for.cond.i127
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i132

for.cond.i127.cleanup_crit_edge:                  ; preds = %for.cond.i127
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.i132:                                    ; preds = %for.cond.i127.for.body.i132_crit_edge, %if.end24
  %i.029.i128 = phi i32 [ 0, %if.end24 ], [ %inc.i125, %for.cond.i127.for.body.i132_crit_edge ]
  %45 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %chip, align 4
  %remap_addr8.i129 = getelementptr inbounds %struct.rtsx_dev, ptr %46, i32 0, i32 2
  %47 = ptrtoint ptr %remap_addr8.i129 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %remap_addr8.i129, align 4
  %add.ptr9.i130 = getelementptr i8, ptr %48, i32 16
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i130) #6, !srcloc !207
  %50 = tail call i32 @llvm.bswap.i32(i32 %49) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !208
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %50)
  %cmp11.i131 = icmp sgt i32 %50, -1
  br i1 %cmp11.i131, label %rtsx_write_register.exit138, label %for.cond.i127

rtsx_write_register.exit138:                      ; preds = %for.body.i132
  %conv15.i133 = and i32 %50, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %conv15.i133, i32 %conv4.i120)
  %cmp16.not.i134.not = icmp eq i32 %conv15.i133, %conv4.i120
  br i1 %cmp16.not.i134.not, label %rtsx_write_register.exit138.for.body39_crit_edge, label %rtsx_write_register.exit138.cleanup_crit_edge

rtsx_write_register.exit138.cleanup_crit_edge:    ; preds = %rtsx_write_register.exit138
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

rtsx_write_register.exit138.for.body39_crit_edge: ; preds = %rtsx_write_register.exit138
  br label %for.body39

for.body39:                                       ; preds = %if.end43.for.body39_crit_edge, %rtsx_write_register.exit138.for.body39_crit_edge
  %i.1182 = phi i32 [ %inc51, %if.end43.for.body39_crit_edge ], [ 0, %rtsx_write_register.exit138.for.body39_crit_edge ]
  %51 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %chip, align 4
  %remap_addr.i140 = getelementptr inbounds %struct.rtsx_dev, ptr %52, i32 0, i32 2
  %53 = ptrtoint ptr %remap_addr.i140 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %remap_addr.i140, align 4
  %add.ptr.i141 = getelementptr i8, ptr %54, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !209
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i141, i32 15294) #6, !srcloc !210
  br label %for.body.i145

for.cond.i144:                                    ; preds = %for.body.i145
  %inc.i142 = add nuw nsw i32 %i.033.i, 1
  %exitcond.not.i143 = icmp eq i32 %inc.i142, 1024
  br i1 %exitcond.not.i143, label %for.cond.i144.cleanup_crit_edge, label %for.cond.i144.for.body.i145_crit_edge

for.cond.i144.for.body.i145_crit_edge:            ; preds = %for.cond.i144
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i145

for.cond.i144.cleanup_crit_edge:                  ; preds = %for.cond.i144
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.i145:                                    ; preds = %for.cond.i144.for.body.i145_crit_edge, %for.body39
  %i.033.i = phi i32 [ 0, %for.body39 ], [ %inc.i142, %for.cond.i144.for.body.i145_crit_edge ]
  %55 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %chip, align 4
  %remap_addr3.i = getelementptr inbounds %struct.rtsx_dev, ptr %56, i32 0, i32 2
  %57 = ptrtoint ptr %remap_addr3.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %remap_addr3.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %58, i32 16
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i) #6, !srcloc !207
  %60 = tail call i32 @llvm.bswap.i32(i32 %59) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !208
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %60)
  %cmp6.i = icmp sgt i32 %60, -1
  br i1 %cmp6.i, label %if.end43, label %for.cond.i144

if.end43:                                         ; preds = %for.body.i145
  %61 = and i32 %60, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %cmp46 = icmp eq i32 %61, 0
  %inc51 = add nuw nsw i32 %i.1182, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %inc51)
  %exitcond198.not = icmp eq i32 %inc51, 1024
  %or.cond = select i1 %cmp46, i1 true, i1 %exitcond198.not
  br i1 %or.cond, label %if.end43.cleanup_crit_edge, label %if.end43.for.body39_crit_edge

if.end43.for.body39_crit_edge:                    ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body39

if.end43.cleanup_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %if.end43.cleanup_crit_edge, %for.cond.i144.cleanup_crit_edge, %rtsx_write_register.exit138.cleanup_crit_edge, %for.cond.i127.cleanup_crit_edge, %rtsx_write_register.exit119.cleanup_crit_edge, %for.cond.i108.cleanup_crit_edge, %rtsx_write_register.exit100.cleanup_crit_edge, %for.cond.i89.cleanup_crit_edge, %for.end.cleanup_crit_edge, %rtsx_write_register.exit.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %rtsx_write_register.exit100.cleanup_crit_edge ], [ 1, %rtsx_write_register.exit119.cleanup_crit_edge ], [ 1, %rtsx_write_register.exit138.cleanup_crit_edge ], [ 0, %for.end.cleanup_crit_edge ], [ 2, %for.cond.i144.cleanup_crit_edge ], [ 0, %if.end43.cleanup_crit_edge ], [ 2, %for.cond.i127.cleanup_crit_edge ], [ 2, %for.cond.i108.cleanup_crit_edge ], [ 2, %for.cond.i89.cleanup_crit_edge ], [ 2, %for.cond.i.cleanup_crit_edge ], [ 1, %rtsx_write_register.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rtsx_enable_pcie_intr(ptr nocapture noundef readonly %chip) unnamed_addr #0 align 64 {
entry:
  %reg = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %asic_code = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 74
  %0 = ptrtoint ptr %asic_code to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %asic_code, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %product_id = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 58
  %2 = ptrtoint ptr %product_id to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %product_id, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 21000, i16 %3)
  %cmp = icmp eq i16 %3, 21000
  br i1 %cmp, label %if.end, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void @rtsx_enable_bus_int(ptr noundef %chip)
  br label %cleanup47

if.end:                                           ; preds = %lor.lhs.false
  %phy_debug_mode = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 75
  %4 = ptrtoint ptr %phy_debug_mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %phy_debug_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool2.not = icmp eq i32 %5, 0
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  %6 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chip, align 4
  %remap_addr.i = getelementptr inbounds %struct.rtsx_dev, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !209
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 7820030) #6, !srcloc !210
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.029.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 1024
  br i1 %exitcond.not.i, label %for.cond.i.cleanup47_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.cond.i.cleanup47_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup47

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %if.then3
  %i.029.i = phi i32 [ 0, %if.then3 ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %10 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %chip, align 4
  %remap_addr8.i = getelementptr inbounds %struct.rtsx_dev, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %remap_addr8.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %remap_addr8.i, align 4
  %add.ptr9.i = getelementptr i8, ptr %13, i32 16
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i) #6, !srcloc !207
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !208
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %cmp11.i = icmp sgt i32 %15, -1
  br i1 %cmp11.i, label %rtsx_write_register.exit, label %for.cond.i

rtsx_write_register.exit:                         ; preds = %for.body.i
  %conv15.i = and i32 %15, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv15.i)
  %cmp16.not.i.not = icmp eq i32 %conv15.i, 0
  br i1 %cmp16.not.i.not, label %if.end6, label %rtsx_write_register.exit.cleanup47_crit_edge

rtsx_write_register.exit.cleanup47_crit_edge:     ; preds = %rtsx_write_register.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup47

if.end6:                                          ; preds = %rtsx_write_register.exit
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %chip, align 4
  %remap_addr.i69 = getelementptr inbounds %struct.rtsx_dev, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %remap_addr.i69 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %remap_addr.i69, align 4
  %add.ptr.i70 = getelementptr i8, ptr %19, i32 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !209
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i70, i32 0) #6, !srcloc !210
  br label %if.end7

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @rtsx_enable_bus_int(ptr noundef %chip)
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.end6
  %ic_version = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 59
  %20 = ptrtoint ptr %ic_version to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %ic_version, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %21)
  %cmp9 = icmp ugt i8 %21, 2
  br i1 %cmp9, label %if.then11, label %if.end7.if.end39_crit_edge

if.end7.if.end39_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39

if.then11:                                        ; preds = %if.end7
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg) #6
  %22 = ptrtoint ptr %reg to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 -1, ptr %reg, align 2, !annotation !214
  %call12 = call i32 @rtsx_read_phy_register(ptr noundef %chip, i8 noundef zeroext 0, ptr noundef nonnull %reg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13.not = icmp eq i32 %call12, 0
  br i1 %cmp13.not, label %if.end16, label %cleanup47.critedge

if.end16:                                         ; preds = %if.then11
  %23 = ptrtoint ptr %reg to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %reg, align 2
  %25 = and i16 %24, -385
  %26 = or i16 %25, 128
  store i16 %26, ptr %reg, align 2
  %call21 = call i32 @rtsx_write_phy_register(ptr noundef %chip, i8 noundef zeroext 0, i16 noundef zeroext %26)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22.not = icmp eq i32 %call21, 0
  br i1 %cmp22.not, label %if.end25, label %cleanup47.critedge67

if.end25:                                         ; preds = %if.end16
  %call26 = call i32 @rtsx_read_phy_register(ptr noundef %chip, i8 noundef zeroext 28, ptr noundef nonnull %reg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp27.not = icmp eq i32 %call26, 0
  br i1 %cmp27.not, label %if.end30, label %cleanup47.critedge68

if.end30:                                         ; preds = %if.end25
  %27 = ptrtoint ptr %reg to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %reg, align 2
  %29 = and i16 %28, -9
  store i16 %29, ptr %reg, align 2
  %call34 = call i32 @rtsx_write_phy_register(ptr noundef %chip, i8 noundef zeroext 28, i16 noundef zeroext %29)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %cmp35.not = icmp eq i32 %call34, 0
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg) #6
  br i1 %cmp35.not, label %if.end30.if.end39_crit_edge, label %if.end30.cleanup47_crit_edge

if.end30.cleanup47_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup47

if.end30.if.end39_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39

if.end39:                                         ; preds = %if.end30.if.end39_crit_edge, %if.end7.if.end39_crit_edge
  %driver_first_load = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 60
  %30 = ptrtoint ptr %driver_first_load to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %driver_first_load, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool40.not = icmp eq i32 %31, 0
  br i1 %tobool40.not, label %if.end39.cleanup47_crit_edge, label %land.lhs.true

if.end39.cleanup47_crit_edge:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup47

land.lhs.true:                                    ; preds = %if.end39
  %32 = ptrtoint ptr %ic_version to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %ic_version, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %33)
  %cmp43 = icmp ult i8 %33, 2
  br i1 %cmp43, label %if.then45, label %land.lhs.true.cleanup47_crit_edge

land.lhs.true.cleanup47_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup47

if.then45:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  call fastcc void @rtsx_calibration(ptr noundef %chip)
  br label %cleanup47

cleanup47.critedge:                               ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg) #6
  br label %cleanup47

cleanup47.critedge67:                             ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg) #6
  br label %cleanup47

cleanup47.critedge68:                             ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg) #6
  br label %cleanup47

cleanup47:                                        ; preds = %cleanup47.critedge68, %cleanup47.critedge67, %cleanup47.critedge, %if.then45, %land.lhs.true.cleanup47_crit_edge, %if.end39.cleanup47_crit_edge, %if.end30.cleanup47_crit_edge, %rtsx_write_register.exit.cleanup47_crit_edge, %for.cond.i.cleanup47_crit_edge, %if.then
  %retval.1 = phi i32 [ 1, %if.end30.cleanup47_crit_edge ], [ 0, %if.then ], [ 1, %rtsx_write_register.exit.cleanup47_crit_edge ], [ 1, %cleanup47.critedge ], [ 1, %cleanup47.critedge67 ], [ 1, %cleanup47.critedge68 ], [ 0, %if.then45 ], [ 0, %land.lhs.true.cleanup47_crit_edge ], [ 0, %if.end39.cleanup47_crit_edge ], [ 2, %for.cond.i.cleanup47_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rtsx_pre_handle_sdio_old(ptr nocapture noundef %chip) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ignore_sd = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 82
  %0 = ptrtoint ptr %ignore_sd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ignore_sd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.else24_crit_edge, label %land.lhs.true

entry.if.else24_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else24

land.lhs.true:                                    ; preds = %entry
  %sdio_func_exist = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 77
  %2 = ptrtoint ptr %sdio_func_exist to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sdio_func_exist, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %land.lhs.true.if.else24_crit_edge, label %if.then

land.lhs.true.if.else24_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else24

if.then:                                          ; preds = %land.lhs.true
  %asic_code = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 74
  %4 = ptrtoint ptr %asic_code to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %asic_code, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool3.not = icmp eq i32 %5, 0
  %6 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chip, align 4
  %remap_addr.i45 = getelementptr inbounds %struct.rtsx_dev, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %remap_addr.i45 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %remap_addr.i45, align 4
  %add.ptr.i46 = getelementptr i8, ptr %9, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  tail call void @arm_heavy_mb() #6
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.then
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i46, i32 -654351107) #6, !srcloc !210
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.029.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 1024
  br i1 %exitcond.not.i, label %for.cond.i.cleanup_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %if.then4
  %i.029.i = phi i32 [ 0, %if.then4 ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %10 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %chip, align 4
  %remap_addr8.i = getelementptr inbounds %struct.rtsx_dev, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %remap_addr8.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %remap_addr8.i, align 4
  %add.ptr9.i = getelementptr i8, ptr %13, i32 16
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i) #6, !srcloc !207
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !208
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %cmp11.i = icmp sgt i32 %15, -1
  br i1 %cmp11.i, label %rtsx_write_register.exit, label %for.cond.i

rtsx_write_register.exit:                         ; preds = %for.body.i
  %conv15.i = and i32 %15, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 216, i32 %conv15.i)
  %cmp16.not.i.not = icmp eq i32 %conv15.i, 216
  br i1 %cmp16.not.i.not, label %rtsx_write_register.exit.if.end11_crit_edge, label %rtsx_write_register.exit.cleanup_crit_edge

rtsx_write_register.exit.cleanup_crit_edge:       ; preds = %rtsx_write_register.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

rtsx_write_register.exit.if.end11_crit_edge:      ; preds = %rtsx_write_register.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.else:                                          ; preds = %if.then
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i46, i32 -134275588) #6, !srcloc !210
  br label %for.body.i54

for.cond.i49:                                     ; preds = %for.body.i54
  %inc.i47 = add nuw nsw i32 %i.029.i50, 1
  %exitcond.not.i48 = icmp eq i32 %inc.i47, 1024
  br i1 %exitcond.not.i48, label %for.cond.i49.cleanup_crit_edge, label %for.cond.i49.for.body.i54_crit_edge

for.cond.i49.for.body.i54_crit_edge:              ; preds = %for.cond.i49
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i54

for.cond.i49.cleanup_crit_edge:                   ; preds = %for.cond.i49
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.i54:                                     ; preds = %for.cond.i49.for.body.i54_crit_edge, %if.else
  %i.029.i50 = phi i32 [ 0, %if.else ], [ %inc.i47, %for.cond.i49.for.body.i54_crit_edge ]
  %16 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %chip, align 4
  %remap_addr8.i51 = getelementptr inbounds %struct.rtsx_dev, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %remap_addr8.i51 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %remap_addr8.i51, align 4
  %add.ptr9.i52 = getelementptr i8, ptr %19, i32 16
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i52) #6, !srcloc !207
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !208
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %21)
  %cmp11.i53 = icmp sgt i32 %21, -1
  br i1 %cmp11.i53, label %rtsx_write_register.exit60, label %for.cond.i49

rtsx_write_register.exit60:                       ; preds = %for.body.i54
  %conv15.i55 = and i32 %21, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 247, i32 %conv15.i55)
  %cmp16.not.i56.not = icmp eq i32 %conv15.i55, 247
  br i1 %cmp16.not.i56.not, label %rtsx_write_register.exit60.if.end11_crit_edge, label %rtsx_write_register.exit60.cleanup_crit_edge

rtsx_write_register.exit60.cleanup_crit_edge:     ; preds = %rtsx_write_register.exit60
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

rtsx_write_register.exit60.if.end11_crit_edge:    ; preds = %rtsx_write_register.exit60
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.end11:                                         ; preds = %rtsx_write_register.exit60.if.end11_crit_edge, %rtsx_write_register.exit.if.end11_crit_edge
  %22 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %chip, align 4
  %remap_addr.i61 = getelementptr inbounds %struct.rtsx_dev, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %remap_addr.i61 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %remap_addr.i61, align 4
  %add.ptr.i62 = getelementptr i8, ptr %25, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !209
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i62, i32 83841789) #6, !srcloc !210
  br label %for.body.i70

for.cond.i65:                                     ; preds = %for.body.i70
  %inc.i63 = add nuw nsw i32 %i.029.i66, 1
  %exitcond.not.i64 = icmp eq i32 %inc.i63, 1024
  br i1 %exitcond.not.i64, label %for.cond.i65.cleanup_crit_edge, label %for.cond.i65.for.body.i70_crit_edge

for.cond.i65.for.body.i70_crit_edge:              ; preds = %for.cond.i65
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i70

for.cond.i65.cleanup_crit_edge:                   ; preds = %for.cond.i65
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.i70:                                     ; preds = %for.cond.i65.for.body.i70_crit_edge, %if.end11
  %i.029.i66 = phi i32 [ 0, %if.end11 ], [ %inc.i63, %for.cond.i65.for.body.i70_crit_edge ]
  %26 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %chip, align 4
  %remap_addr8.i67 = getelementptr inbounds %struct.rtsx_dev, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %remap_addr8.i67 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %remap_addr8.i67, align 4
  %add.ptr9.i68 = getelementptr i8, ptr %29, i32 16
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i68) #6, !srcloc !207
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !208
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %31)
  %cmp11.i69 = icmp sgt i32 %31, -1
  br i1 %cmp11.i69, label %rtsx_write_register.exit76, label %for.cond.i65

rtsx_write_register.exit76:                       ; preds = %for.body.i70
  %conv15.i71 = and i32 %31, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %conv15.i71)
  %cmp16.not.i72.not = icmp eq i32 %conv15.i71, 4
  br i1 %cmp16.not.i72.not, label %if.end15, label %rtsx_write_register.exit76.cleanup_crit_edge

rtsx_write_register.exit76.cleanup_crit_edge:     ; preds = %rtsx_write_register.exit76
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end15:                                         ; preds = %rtsx_write_register.exit76
  %32 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %chip, align 4
  %remap_addr.i77 = getelementptr inbounds %struct.rtsx_dev, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %remap_addr.i77 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %remap_addr.i77, align 4
  %add.ptr.i78 = getelementptr i8, ptr %35, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !209
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i78, i32 16854271) #6, !srcloc !210
  br label %for.body.i86

for.cond.i81:                                     ; preds = %for.body.i86
  %inc.i79 = add nuw nsw i32 %i.029.i82, 1
  %exitcond.not.i80 = icmp eq i32 %inc.i79, 1024
  br i1 %exitcond.not.i80, label %for.cond.i81.cleanup_crit_edge, label %for.cond.i81.for.body.i86_crit_edge

for.cond.i81.for.body.i86_crit_edge:              ; preds = %for.cond.i81
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i86

for.cond.i81.cleanup_crit_edge:                   ; preds = %for.cond.i81
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.i86:                                     ; preds = %for.cond.i81.for.body.i86_crit_edge, %if.end15
  %i.029.i82 = phi i32 [ 0, %if.end15 ], [ %inc.i79, %for.cond.i81.for.body.i86_crit_edge ]
  %36 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %chip, align 4
  %remap_addr8.i83 = getelementptr inbounds %struct.rtsx_dev, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %remap_addr8.i83 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %remap_addr8.i83, align 4
  %add.ptr9.i84 = getelementptr i8, ptr %39, i32 16
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i84) #6, !srcloc !207
  %41 = tail call i32 @llvm.bswap.i32(i32 %40) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !208
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %41)
  %cmp11.i85 = icmp sgt i32 %41, -1
  br i1 %cmp11.i85, label %rtsx_write_register.exit92, label %for.cond.i81

rtsx_write_register.exit92:                       ; preds = %for.body.i86
  %conv15.i87 = and i32 %41, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %conv15.i87)
  %cmp16.not.i88.not = icmp eq i32 %conv15.i87, 1
  br i1 %cmp16.not.i88.not, label %if.end19, label %rtsx_write_register.exit92.cleanup_crit_edge

rtsx_write_register.exit92.cleanup_crit_edge:     ; preds = %rtsx_write_register.exit92
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end19:                                         ; preds = %rtsx_write_register.exit92
  %call20 = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -661, i8 noundef zeroext -1, i8 noundef zeroext 3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end23:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  %sd_int = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 52
  %42 = ptrtoint ptr %sd_int to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 1, ptr %sd_int, align 1
  %sd_io = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 51
  %43 = ptrtoint ptr %sd_io to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 1, ptr %sd_io, align 4
  br label %cleanup

if.else24:                                        ; preds = %land.lhs.true.if.else24_crit_edge, %entry.if.else24_crit_edge
  %need_reset = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 15
  %44 = ptrtoint ptr %need_reset to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %need_reset, align 4
  %or = or i32 %45, 4
  store i32 %or, ptr %need_reset, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else24, %if.end23, %if.end19.cleanup_crit_edge, %rtsx_write_register.exit92.cleanup_crit_edge, %for.cond.i81.cleanup_crit_edge, %rtsx_write_register.exit76.cleanup_crit_edge, %for.cond.i65.cleanup_crit_edge, %rtsx_write_register.exit60.cleanup_crit_edge, %for.cond.i49.cleanup_crit_edge, %rtsx_write_register.exit.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %rtsx_write_register.exit.cleanup_crit_edge ], [ 1, %rtsx_write_register.exit60.cleanup_crit_edge ], [ 1, %rtsx_write_register.exit76.cleanup_crit_edge ], [ 1, %rtsx_write_register.exit92.cleanup_crit_edge ], [ %call20, %if.end19.cleanup_crit_edge ], [ 0, %if.else24 ], [ 0, %if.end23 ], [ 2, %for.cond.i81.cleanup_crit_edge ], [ 2, %for.cond.i65.cleanup_crit_edge ], [ 2, %for.cond.i49.cleanup_crit_edge ], [ 2, %for.cond.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rtsx_pre_handle_sdio_new(ptr noundef %chip) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_first_load = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 60
  %0 = ptrtoint ptr %driver_first_load to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %driver_first_load, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.else26, label %if.then

if.then:                                          ; preds = %entry
  %product_id = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 58
  %2 = ptrtoint ptr %product_id to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %product_id, align 2
  %4 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.76)
  switch i16 %3, label %if.then.do.body_crit_edge [
    i16 21128, label %if.then3
    i16 21000, label %if.then14
  ]

if.then.do.body_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.then3:                                         ; preds = %if.then
  %5 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %chip, align 4
  %remap_addr.i = getelementptr inbounds %struct.rtsx_dev, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %8, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !209
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 23230) #6, !srcloc !210
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.033.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 1024
  br i1 %exitcond.not.i, label %for.cond.i.cleanup179_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.cond.i.cleanup179_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup179

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %if.then3
  %i.033.i = phi i32 [ 0, %if.then3 ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %9 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %chip, align 4
  %remap_addr3.i = getelementptr inbounds %struct.rtsx_dev, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %remap_addr3.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %remap_addr3.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %12, i32 16
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i) #6, !srcloc !207
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !208
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %14)
  %cmp6.i = icmp sgt i32 %14, -1
  br i1 %cmp6.i, label %if.end, label %for.cond.i

if.end:                                           ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %15 = and i32 %14, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool7.not = icmp ne i32 %15, 0
  br label %do.body

if.then14:                                        ; preds = %if.then
  %16 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %chip, align 4
  %remap_addr.i246 = getelementptr inbounds %struct.rtsx_dev, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %remap_addr.i246 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %remap_addr.i246, align 4
  %add.ptr.i247 = getelementptr i8, ptr %19, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !209
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i247, i32 28862) #6, !srcloc !210
  br label %for.body.i255

for.cond.i250:                                    ; preds = %for.body.i255
  %inc.i248 = add nuw nsw i32 %i.033.i251, 1
  %exitcond.not.i249 = icmp eq i32 %inc.i248, 1024
  br i1 %exitcond.not.i249, label %for.cond.i250.cleanup179_crit_edge, label %for.cond.i250.for.body.i255_crit_edge

for.cond.i250.for.body.i255_crit_edge:            ; preds = %for.cond.i250
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i255

for.cond.i250.cleanup179_crit_edge:               ; preds = %for.cond.i250
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup179

for.body.i255:                                    ; preds = %for.cond.i250.for.body.i255_crit_edge, %if.then14
  %i.033.i251 = phi i32 [ 0, %if.then14 ], [ %inc.i248, %for.cond.i250.for.body.i255_crit_edge ]
  %20 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %chip, align 4
  %remap_addr3.i252 = getelementptr inbounds %struct.rtsx_dev, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %remap_addr3.i252 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %remap_addr3.i252, align 4
  %add.ptr4.i253 = getelementptr i8, ptr %23, i32 16
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i253) #6, !srcloc !207
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !208
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %25)
  %cmp6.i254 = icmp sgt i32 %25, -1
  br i1 %cmp6.i254, label %if.end18, label %for.cond.i250

if.end18:                                         ; preds = %for.body.i255
  call void @__sanitizer_cov_trace_pc() #8
  %26 = and i32 %25, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool21.not = icmp ne i32 %26, 0
  br label %do.body

if.else26:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %sdio_in_charge = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 61
  %27 = ptrtoint ptr %sdio_in_charge to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %sdio_in_charge, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool27.not = icmp ne i32 %28, 0
  br label %do.body

do.body:                                          ; preds = %if.else26, %if.end18, %if.end, %if.then.do.body_crit_edge
  %sw_bypass_sd.0.off0 = phi i1 [ %tobool7.not, %if.end ], [ false, %if.then.do.body_crit_edge ], [ %tobool21.not, %if.end18 ], [ %tobool27.not, %if.else26 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtsx_pre_handle_sdio_new.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtsx_pre_handle_sdio_new, %if.then36)) #6
          to label %do.body40 [label %if.then36], !srcloc !211

if.then36:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %29 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %chip, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %32, i32 0, i32 44
  %sdio_in_charge38 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 61
  %33 = ptrtoint ptr %sdio_in_charge38 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %sdio_in_charge38, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtsx_pre_handle_sdio_new.__UNIQUE_ID_ddebug290, ptr noundef %dev.i, ptr noundef nonnull @.str.49, i32 noundef %34) #6
  br label %do.body40

do.body40:                                        ; preds = %if.then36, %do.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtsx_pre_handle_sdio_new.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtsx_pre_handle_sdio_new, %if.then52)) #6
          to label %do.body58 [label %if.then52], !srcloc !211

if.then52:                                        ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #8
  %35 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %chip, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %36, align 4
  %dev.i260 = getelementptr inbounds %struct.pci_dev, ptr %38, i32 0, i32 44
  %39 = ptrtoint ptr %driver_first_load to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %driver_first_load, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtsx_pre_handle_sdio_new.__UNIQUE_ID_ddebug291, ptr noundef %dev.i260, ptr noundef nonnull @.str.50, i32 noundef %40) #6
  br label %do.body58

do.body58:                                        ; preds = %if.then52, %do.body40
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtsx_pre_handle_sdio_new.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtsx_pre_handle_sdio_new, %if.then70)) #6
          to label %do.end76 [label %if.then70], !srcloc !211

if.then70:                                        ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #8
  %41 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %chip, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %42, align 4
  %dev.i261 = getelementptr inbounds %struct.pci_dev, ptr %44, i32 0, i32 44
  %conv73 = zext i1 %sw_bypass_sd.0.off0 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtsx_pre_handle_sdio_new.__UNIQUE_ID_ddebug292, ptr noundef %dev.i261, ptr noundef nonnull @.str.51, i32 noundef %conv73) #6
  br label %do.end76

do.end76:                                         ; preds = %if.then70, %do.body58
  %45 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %chip, align 4
  %remap_addr.i262 = getelementptr inbounds %struct.rtsx_dev, ptr %46, i32 0, i32 2
  %47 = ptrtoint ptr %remap_addr.i262 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %remap_addr.i262, align 4
  %add.ptr.i263 = getelementptr i8, ptr %48, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  tail call void @arm_heavy_mb() #6
  br i1 %sw_bypass_sd.0.off0, label %if.then78, label %if.else171

if.then78:                                        ; preds = %do.end76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i263, i32 10174) #6, !srcloc !210
  br label %for.body.i271

for.cond.i266:                                    ; preds = %for.body.i271
  %inc.i264 = add nuw nsw i32 %i.033.i267, 1
  %exitcond.not.i265 = icmp eq i32 %inc.i264, 1024
  br i1 %exitcond.not.i265, label %for.cond.i266.cleanup179_crit_edge, label %for.cond.i266.for.body.i271_crit_edge

for.cond.i266.for.body.i271_crit_edge:            ; preds = %for.cond.i266
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i271

for.cond.i266.cleanup179_crit_edge:               ; preds = %for.cond.i266
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup179

for.body.i271:                                    ; preds = %for.cond.i266.for.body.i271_crit_edge, %if.then78
  %i.033.i267 = phi i32 [ 0, %if.then78 ], [ %inc.i264, %for.cond.i266.for.body.i271_crit_edge ]
  %49 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %chip, align 4
  %remap_addr3.i268 = getelementptr inbounds %struct.rtsx_dev, ptr %50, i32 0, i32 2
  %51 = ptrtoint ptr %remap_addr3.i268 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %remap_addr3.i268, align 4
  %add.ptr4.i269 = getelementptr i8, ptr %52, i32 16
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i269) #6, !srcloc !207
  %54 = tail call i32 @llvm.bswap.i32(i32 %53) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !208
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %54)
  %cmp6.i270 = icmp sgt i32 %54, -1
  br i1 %cmp6.i270, label %if.end82, label %for.cond.i266

if.end82:                                         ; preds = %for.body.i271
  %55 = and i32 %54, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool86.not = icmp eq i32 %55, 0
  br i1 %tobool86.not, label %do.body114, label %if.then87

if.then87:                                        ; preds = %if.end82
  %product_id88 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 58
  %56 = ptrtoint ptr %product_id88 to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %product_id88, align 2
  %58 = zext i16 %57 to i64
  call void @__sanitizer_cov_trace_switch(i64 %58, ptr @__sancov_gen_cov_switch_values.77)
  switch i16 %57, label %if.then87.if.end108_crit_edge [
    i16 21128, label %if.then92
    i16 21000, label %if.then102
  ]

if.then87.if.end108_crit_edge:                    ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end108

if.then92:                                        ; preds = %if.then87
  %59 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %chip, align 4
  %remap_addr.i276 = getelementptr inbounds %struct.rtsx_dev, ptr %60, i32 0, i32 2
  %61 = ptrtoint ptr %remap_addr.i276 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %remap_addr.i276, align 4
  %add.ptr.i277 = getelementptr i8, ptr %62, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !209
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i277, i32 547582) #6, !srcloc !210
  br label %for.body.i281

for.cond.i280:                                    ; preds = %for.body.i281
  %inc.i278 = add nuw nsw i32 %i.029.i, 1
  %exitcond.not.i279 = icmp eq i32 %inc.i278, 1024
  br i1 %exitcond.not.i279, label %for.cond.i280.cleanup179_crit_edge, label %for.cond.i280.for.body.i281_crit_edge

for.cond.i280.for.body.i281_crit_edge:            ; preds = %for.cond.i280
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i281

for.cond.i280.cleanup179_crit_edge:               ; preds = %for.cond.i280
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup179

for.body.i281:                                    ; preds = %for.cond.i280.for.body.i281_crit_edge, %if.then92
  %i.029.i = phi i32 [ 0, %if.then92 ], [ %inc.i278, %for.cond.i280.for.body.i281_crit_edge ]
  %63 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %chip, align 4
  %remap_addr8.i = getelementptr inbounds %struct.rtsx_dev, ptr %64, i32 0, i32 2
  %65 = ptrtoint ptr %remap_addr8.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %remap_addr8.i, align 4
  %add.ptr9.i = getelementptr i8, ptr %66, i32 16
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i) #6, !srcloc !207
  %68 = tail call i32 @llvm.bswap.i32(i32 %67) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !208
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %68)
  %cmp11.i = icmp sgt i32 %68, -1
  br i1 %cmp11.i, label %rtsx_write_register.exit, label %for.cond.i280

rtsx_write_register.exit:                         ; preds = %for.body.i281
  %conv15.i = and i32 %68, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv15.i)
  %cmp16.not.i.not = icmp eq i32 %conv15.i, 0
  br i1 %cmp16.not.i.not, label %rtsx_write_register.exit.if.end108_crit_edge, label %rtsx_write_register.exit.cleanup179_crit_edge

rtsx_write_register.exit.cleanup179_crit_edge:    ; preds = %rtsx_write_register.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup179

rtsx_write_register.exit.if.end108_crit_edge:     ; preds = %rtsx_write_register.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end108

if.then102:                                       ; preds = %if.then87
  %69 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %chip, align 4
  %remap_addr.i283 = getelementptr inbounds %struct.rtsx_dev, ptr %70, i32 0, i32 2
  %71 = ptrtoint ptr %remap_addr.i283 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %remap_addr.i283, align 4
  %add.ptr.i284 = getelementptr i8, ptr %72, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !209
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i284, i32 8417534) #6, !srcloc !210
  br label %for.body.i292

for.cond.i287:                                    ; preds = %for.body.i292
  %inc.i285 = add nuw nsw i32 %i.029.i288, 1
  %exitcond.not.i286 = icmp eq i32 %inc.i285, 1024
  br i1 %exitcond.not.i286, label %for.cond.i287.cleanup179_crit_edge, label %for.cond.i287.for.body.i292_crit_edge

for.cond.i287.for.body.i292_crit_edge:            ; preds = %for.cond.i287
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i292

for.cond.i287.cleanup179_crit_edge:               ; preds = %for.cond.i287
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup179

for.body.i292:                                    ; preds = %for.cond.i287.for.body.i292_crit_edge, %if.then102
  %i.029.i288 = phi i32 [ 0, %if.then102 ], [ %inc.i285, %for.cond.i287.for.body.i292_crit_edge ]
  %73 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %chip, align 4
  %remap_addr8.i289 = getelementptr inbounds %struct.rtsx_dev, ptr %74, i32 0, i32 2
  %75 = ptrtoint ptr %remap_addr8.i289 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %remap_addr8.i289, align 4
  %add.ptr9.i290 = getelementptr i8, ptr %76, i32 16
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i290) #6, !srcloc !207
  %78 = tail call i32 @llvm.bswap.i32(i32 %77) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !208
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %78)
  %cmp11.i291 = icmp sgt i32 %78, -1
  br i1 %cmp11.i291, label %rtsx_write_register.exit298, label %for.cond.i287

rtsx_write_register.exit298:                      ; preds = %for.body.i292
  %conv15.i293 = and i32 %78, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv15.i293)
  %cmp16.not.i294.not = icmp eq i32 %conv15.i293, 0
  br i1 %cmp16.not.i294.not, label %rtsx_write_register.exit298.if.end108_crit_edge, label %rtsx_write_register.exit298.cleanup179_crit_edge

rtsx_write_register.exit298.cleanup179_crit_edge: ; preds = %rtsx_write_register.exit298
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup179

rtsx_write_register.exit298.if.end108_crit_edge:  ; preds = %rtsx_write_register.exit298
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end108

if.end108:                                        ; preds = %rtsx_write_register.exit298.if.end108_crit_edge, %rtsx_write_register.exit.if.end108_crit_edge, %if.then87.if.end108_crit_edge
  %conv4.i = and i32 %54, 255
  %or5.i = or i32 %conv4.i, -30933248
  %79 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %chip, align 4
  %remap_addr.i299 = getelementptr inbounds %struct.rtsx_dev, ptr %80, i32 0, i32 2
  %81 = ptrtoint ptr %remap_addr.i299 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %remap_addr.i299, align 4
  %add.ptr.i300 = getelementptr i8, ptr %82, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !209
  tail call void @arm_heavy_mb() #6
  %83 = tail call i32 @llvm.bswap.i32(i32 %or5.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i300, i32 %83) #6, !srcloc !210
  br label %for.body.i308

for.cond.i303:                                    ; preds = %for.body.i308
  %inc.i301 = add nuw nsw i32 %i.029.i304, 1
  %exitcond.not.i302 = icmp eq i32 %inc.i301, 1024
  br i1 %exitcond.not.i302, label %for.cond.i303.cleanup179_crit_edge, label %for.cond.i303.for.body.i308_crit_edge

for.cond.i303.for.body.i308_crit_edge:            ; preds = %for.cond.i303
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i308

for.cond.i303.cleanup179_crit_edge:               ; preds = %for.cond.i303
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup179

for.body.i308:                                    ; preds = %for.cond.i303.for.body.i308_crit_edge, %if.end108
  %i.029.i304 = phi i32 [ 0, %if.end108 ], [ %inc.i301, %for.cond.i303.for.body.i308_crit_edge ]
  %84 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %chip, align 4
  %remap_addr8.i305 = getelementptr inbounds %struct.rtsx_dev, ptr %85, i32 0, i32 2
  %86 = ptrtoint ptr %remap_addr8.i305 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %remap_addr8.i305, align 4
  %add.ptr9.i306 = getelementptr i8, ptr %87, i32 16
  %88 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i306) #6, !srcloc !207
  %89 = tail call i32 @llvm.bswap.i32(i32 %88) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !208
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %89)
  %cmp11.i307 = icmp sgt i32 %89, -1
  br i1 %cmp11.i307, label %rtsx_write_register.exit314, label %for.cond.i303

rtsx_write_register.exit314:                      ; preds = %for.body.i308
  %conv15.i309 = and i32 %89, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %conv15.i309, i32 %conv4.i)
  %cmp16.not.i310.not = icmp eq i32 %conv15.i309, %conv4.i
  br i1 %cmp16.not.i310.not, label %if.end112, label %rtsx_write_register.exit314.cleanup179_crit_edge

rtsx_write_register.exit314.cleanup179_crit_edge: ; preds = %rtsx_write_register.exit314
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup179

if.end112:                                        ; preds = %rtsx_write_register.exit314
  call void @__sanitizer_cov_trace_pc() #8
  %need_reset = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 15
  %90 = ptrtoint ptr %need_reset to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %need_reset, align 4
  %or = or i32 %91, 4
  store i32 %or, ptr %need_reset, align 4
  br label %cleanup179

do.body114:                                       ; preds = %if.end82
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtsx_pre_handle_sdio_new.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtsx_pre_handle_sdio_new, %if.then126)) #6
          to label %do.end130 [label %if.then126], !srcloc !211

if.then126:                                       ; preds = %do.body114
  call void @__sanitizer_cov_trace_pc() #8
  %92 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %chip, align 4
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %93, align 4
  %dev.i315 = getelementptr inbounds %struct.pci_dev, ptr %95, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtsx_pre_handle_sdio_new.__UNIQUE_ID_ddebug293, ptr noundef %dev.i315, ptr noundef nonnull @.str.52) #6
  br label %do.end130

do.end130:                                        ; preds = %if.then126, %do.body114
  %asic_code = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 74
  %96 = ptrtoint ptr %asic_code to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %asic_code, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %tobool131.not = icmp eq i32 %97, 0
  br i1 %tobool131.not, label %if.else138, label %if.then132

if.then132:                                       ; preds = %do.end130
  %call133 = tail call i32 @sd_pull_ctl_enable(ptr noundef %chip) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call133)
  %cmp134.not = icmp eq i32 %call133, 0
  br i1 %cmp134.not, label %if.then132.if.end143_crit_edge, label %if.then132.cleanup179_crit_edge

if.then132.cleanup179_crit_edge:                  ; preds = %if.then132
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup179

if.then132.if.end143_crit_edge:                   ; preds = %if.then132
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end143

if.else138:                                       ; preds = %do.end130
  %98 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %chip, align 4
  %remap_addr.i316 = getelementptr inbounds %struct.rtsx_dev, ptr %99, i32 0, i32 2
  %100 = ptrtoint ptr %remap_addr.i316 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %remap_addr.i316, align 4
  %add.ptr.i317 = getelementptr i8, ptr %101, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !209
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i317, i32 2629116) #6, !srcloc !210
  br label %for.body.i325

for.cond.i320:                                    ; preds = %for.body.i325
  %inc.i318 = add nuw nsw i32 %i.029.i321, 1
  %exitcond.not.i319 = icmp eq i32 %inc.i318, 1024
  br i1 %exitcond.not.i319, label %for.cond.i320.cleanup179_crit_edge, label %for.cond.i320.for.body.i325_crit_edge

for.cond.i320.for.body.i325_crit_edge:            ; preds = %for.cond.i320
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i325

for.cond.i320.cleanup179_crit_edge:               ; preds = %for.cond.i320
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup179

for.body.i325:                                    ; preds = %for.cond.i320.for.body.i325_crit_edge, %if.else138
  %i.029.i321 = phi i32 [ 0, %if.else138 ], [ %inc.i318, %for.cond.i320.for.body.i325_crit_edge ]
  %102 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %chip, align 4
  %remap_addr8.i322 = getelementptr inbounds %struct.rtsx_dev, ptr %103, i32 0, i32 2
  %104 = ptrtoint ptr %remap_addr8.i322 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %remap_addr8.i322, align 4
  %add.ptr9.i323 = getelementptr i8, ptr %105, i32 16
  %106 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i323) #6, !srcloc !207
  %107 = tail call i32 @llvm.bswap.i32(i32 %106) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !208
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %107)
  %cmp11.i324 = icmp sgt i32 %107, -1
  br i1 %cmp11.i324, label %rtsx_write_register.exit331, label %for.cond.i320

rtsx_write_register.exit331:                      ; preds = %for.body.i325
  %conv15.i326 = and i32 %107, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv15.i326)
  %cmp16.not.i327.not = icmp eq i32 %conv15.i326, 0
  br i1 %cmp16.not.i327.not, label %rtsx_write_register.exit331.if.end143_crit_edge, label %rtsx_write_register.exit331.cleanup179_crit_edge

rtsx_write_register.exit331.cleanup179_crit_edge: ; preds = %rtsx_write_register.exit331
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup179

rtsx_write_register.exit331.if.end143_crit_edge:  ; preds = %rtsx_write_register.exit331
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end143

if.end143:                                        ; preds = %rtsx_write_register.exit331.if.end143_crit_edge, %if.then132.if.end143_crit_edge
  %call144 = tail call i32 @card_share_mode(ptr noundef %chip, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call144)
  %cmp145.not = icmp eq i32 %call144, 0
  br i1 %cmp145.not, label %if.end148, label %if.end143.cleanup179_crit_edge

if.end143.cleanup179_crit_edge:                   ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup179

if.end148:                                        ; preds = %if.end143
  %product_id149 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 58
  %108 = ptrtoint ptr %product_id149 to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %product_id149, align 2
  %110 = zext i16 %109 to i64
  call void @__sanitizer_cov_trace_switch(i64 %110, ptr @__sancov_gen_cov_switch_values.78)
  switch i16 %109, label %if.end148.if.end169_crit_edge [
    i16 21128, label %if.then153
    i16 21000, label %if.then163
  ]

if.end148.if.end169_crit_edge:                    ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end169

if.then153:                                       ; preds = %if.end148
  %call154 = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -422, i8 noundef zeroext 8, i8 noundef zeroext 8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call154)
  %tobool155.not = icmp eq i32 %call154, 0
  br i1 %tobool155.not, label %if.then153.if.end169_crit_edge, label %if.then153.cleanup179_crit_edge

if.then153.cleanup179_crit_edge:                  ; preds = %if.then153
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup179

if.then153.if.end169_crit_edge:                   ; preds = %if.then153
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end169

if.then163:                                       ; preds = %if.end148
  %call164 = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -400, i8 noundef zeroext -128, i8 noundef zeroext -128)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call164)
  %tobool165.not = icmp eq i32 %call164, 0
  br i1 %tobool165.not, label %if.then163.if.end169_crit_edge, label %if.then163.cleanup179_crit_edge

if.then163.cleanup179_crit_edge:                  ; preds = %if.then163
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup179

if.then163.if.end169_crit_edge:                   ; preds = %if.then163
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end169

if.end169:                                        ; preds = %if.then163.if.end169_crit_edge, %if.then153.if.end169_crit_edge, %if.end148.if.end169_crit_edge
  %chip_insert_with_sdio = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 63
  %111 = ptrtoint ptr %chip_insert_with_sdio to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 1, ptr %chip_insert_with_sdio, align 4
  %sd_io = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 51
  %112 = ptrtoint ptr %sd_io to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 1, ptr %sd_io, align 4
  br label %cleanup179

if.else171:                                       ; preds = %do.end76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i263, i32 134752254) #6, !srcloc !210
  br label %for.body.i341

for.cond.i336:                                    ; preds = %for.body.i341
  %inc.i334 = add nuw nsw i32 %i.029.i337, 1
  %exitcond.not.i335 = icmp eq i32 %inc.i334, 1024
  br i1 %exitcond.not.i335, label %for.cond.i336.cleanup179_crit_edge, label %for.cond.i336.for.body.i341_crit_edge

for.cond.i336.for.body.i341_crit_edge:            ; preds = %for.cond.i336
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i341

for.cond.i336.cleanup179_crit_edge:               ; preds = %for.cond.i336
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup179

for.body.i341:                                    ; preds = %for.cond.i336.for.body.i341_crit_edge, %if.else171
  %i.029.i337 = phi i32 [ 0, %if.else171 ], [ %inc.i334, %for.cond.i336.for.body.i341_crit_edge ]
  %113 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %chip, align 4
  %remap_addr8.i338 = getelementptr inbounds %struct.rtsx_dev, ptr %114, i32 0, i32 2
  %115 = ptrtoint ptr %remap_addr8.i338 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %remap_addr8.i338, align 4
  %add.ptr9.i339 = getelementptr i8, ptr %116, i32 16
  %117 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i339) #6, !srcloc !207
  %118 = tail call i32 @llvm.bswap.i32(i32 %117) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !208
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %118)
  %cmp11.i340 = icmp sgt i32 %118, -1
  br i1 %cmp11.i340, label %rtsx_write_register.exit347, label %for.cond.i336

rtsx_write_register.exit347:                      ; preds = %for.body.i341
  %conv15.i342 = and i32 %118, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %conv15.i342)
  %cmp16.not.i343.not = icmp eq i32 %conv15.i342, 8
  br i1 %cmp16.not.i343.not, label %if.end175, label %rtsx_write_register.exit347.cleanup179_crit_edge

rtsx_write_register.exit347.cleanup179_crit_edge: ; preds = %rtsx_write_register.exit347
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup179

if.end175:                                        ; preds = %rtsx_write_register.exit347
  call void @__sanitizer_cov_trace_pc() #8
  %need_reset176 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 15
  %119 = ptrtoint ptr %need_reset176 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %need_reset176, align 4
  %or177 = or i32 %120, 4
  store i32 %or177, ptr %need_reset176, align 4
  br label %cleanup179

cleanup179:                                       ; preds = %if.end175, %rtsx_write_register.exit347.cleanup179_crit_edge, %for.cond.i336.cleanup179_crit_edge, %if.end169, %if.then163.cleanup179_crit_edge, %if.then153.cleanup179_crit_edge, %if.end143.cleanup179_crit_edge, %rtsx_write_register.exit331.cleanup179_crit_edge, %for.cond.i320.cleanup179_crit_edge, %if.then132.cleanup179_crit_edge, %if.end112, %rtsx_write_register.exit314.cleanup179_crit_edge, %for.cond.i303.cleanup179_crit_edge, %rtsx_write_register.exit298.cleanup179_crit_edge, %for.cond.i287.cleanup179_crit_edge, %rtsx_write_register.exit.cleanup179_crit_edge, %for.cond.i280.cleanup179_crit_edge, %for.cond.i266.cleanup179_crit_edge, %for.cond.i250.cleanup179_crit_edge, %for.cond.i.cleanup179_crit_edge
  %retval.1 = phi i32 [ 1, %rtsx_write_register.exit347.cleanup179_crit_edge ], [ 0, %if.end169 ], [ 0, %if.end112 ], [ 0, %if.end175 ], [ %call164, %if.then163.cleanup179_crit_edge ], [ %call154, %if.then153.cleanup179_crit_edge ], [ 1, %if.end143.cleanup179_crit_edge ], [ 1, %rtsx_write_register.exit331.cleanup179_crit_edge ], [ 1, %if.then132.cleanup179_crit_edge ], [ 1, %rtsx_write_register.exit314.cleanup179_crit_edge ], [ 1, %rtsx_write_register.exit298.cleanup179_crit_edge ], [ 1, %rtsx_write_register.exit.cleanup179_crit_edge ], [ 2, %for.cond.i320.cleanup179_crit_edge ], [ 2, %for.cond.i303.cleanup179_crit_edge ], [ 2, %for.cond.i280.cleanup179_crit_edge ], [ 2, %for.cond.i287.cleanup179_crit_edge ], [ 2, %for.cond.i266.cleanup179_crit_edge ], [ 2, %for.cond.i336.cleanup179_crit_edge ], [ 2, %for.cond.i.cleanup179_crit_edge ], [ 2, %for.cond.i250.cleanup179_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtsx_clr_phy_reg_bit(ptr nocapture noundef readonly %chip, i8 noundef zeroext %reg, i8 noundef zeroext %bit) local_unnamed_addr #0 align 64 {
entry:
  %value = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %value) #6
  %0 = ptrtoint ptr %value to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %value, align 2, !annotation !214
  %call = call i32 @rtsx_read_phy_register(ptr noundef %chip, i8 noundef zeroext %reg, ptr noundef nonnull %value)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %value to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %value, align 2
  %conv = zext i16 %2 to i32
  %conv2 = zext i8 %bit to i32
  %shl = shl nuw i32 1, %conv2
  %and = and i32 %shl, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.if.end14_crit_edge, label %if.then3

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

if.then3:                                         ; preds = %if.end
  %3 = trunc i32 %shl to i16
  %4 = xor i16 %3, -1
  %conv8 = and i16 %2, %4
  %5 = ptrtoint ptr %value to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %conv8, ptr %value, align 2
  %call9 = call i32 @rtsx_write_phy_register(ptr noundef %chip, i8 noundef zeroext %reg, i16 noundef zeroext %conv8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10.not = icmp eq i32 %call9, 0
  br i1 %cmp10.not, label %if.then3.if.end14_crit_edge, label %if.then3.cleanup_crit_edge

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then3.if.end14_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

if.end14:                                         ; preds = %if.then3.if.end14_crit_edge, %if.end.if.end14_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.then3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end14 ], [ 1, %entry.cleanup_crit_edge ], [ 1, %if.then3.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %value) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtsx_init_chip(ptr noundef %chip) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sd_card1 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtsx_init_chip.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtsx_init_chip, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !211

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %vendor_id = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 57
  %4 = ptrtoint ptr %vendor_id to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %vendor_id, align 4
  %conv = zext i16 %5 to i32
  %product_id = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 58
  %6 = ptrtoint ptr %product_id to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %product_id, align 2
  %conv8 = zext i16 %7 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtsx_init_chip.__UNIQUE_ID_ddebug303, ptr noundef %dev.i, ptr noundef nonnull @.str.10, i32 noundef %conv, i32 noundef %conv8) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %ic_version = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 59
  %8 = ptrtoint ptr %ic_version to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %ic_version, align 4
  %xd_reset_counter = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 28
  %9 = ptrtoint ptr %xd_reset_counter to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %xd_reset_counter, align 4
  %sd_reset_counter = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 27
  %10 = ptrtoint ptr %sd_reset_counter to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %sd_reset_counter, align 4
  %ms_reset_counter = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 29
  %11 = ptrtoint ptr %ms_reset_counter to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %ms_reset_counter, align 4
  %xd_show_cnt = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 38
  %12 = call ptr @memset(ptr %sd_card1, i32 0, i32 388)
  %13 = ptrtoint ptr %xd_show_cnt to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 10, ptr %xd_show_cnt, align 4
  %sd_show_cnt = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 37
  %14 = ptrtoint ptr %sd_show_cnt to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 10, ptr %sd_show_cnt, align 4
  %ms_show_cnt = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 39
  %15 = ptrtoint ptr %ms_show_cnt to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 10, ptr %ms_show_cnt, align 4
  %sd_io = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 51
  %16 = ptrtoint ptr %sd_io to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %sd_io, align 4
  %auto_delink_cnt = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 44
  %17 = ptrtoint ptr %auto_delink_cnt to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %auto_delink_cnt, align 4
  %auto_delink_allowed = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 45
  %18 = ptrtoint ptr %auto_delink_allowed to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %auto_delink_allowed, align 4
  %idle_counter = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 55
  %19 = ptrtoint ptr %idle_counter to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %idle_counter, align 4
  %rtsx_stat = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 56
  %20 = ptrtoint ptr %rtsx_stat to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %rtsx_stat, align 4
  %aspm_enabled = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 46
  %chip_insert_with_sdio = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 63
  %21 = ptrtoint ptr %chip_insert_with_sdio to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %chip_insert_with_sdio, align 4
  %cur_card = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 13
  %22 = ptrtoint ptr %cur_card to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %cur_card, align 4
  %phy_debug_mode = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 75
  %23 = ptrtoint ptr %phy_debug_mode to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %phy_debug_mode, align 4
  %sdio_func_exist = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 77
  %24 = ptrtoint ptr %sdio_func_exist to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %sdio_func_exist, align 4
  %25 = call ptr @memset(ptr %aspm_enabled, i32 0, i32 28)
  tail call void @set_sense_type(ptr noundef %chip, i32 noundef 0, i32 noundef 0) #6
  %arrayidx = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 36, i32 0
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %arrayidx, align 4
  tail call void @set_sense_type(ptr noundef %chip, i32 noundef 1, i32 noundef 0) #6
  %arrayidx.1 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 36, i32 1
  %27 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %arrayidx.1, align 4
  tail call void @set_sense_type(ptr noundef %chip, i32 noundef 2, i32 noundef 0) #6
  %arrayidx.2 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 36, i32 2
  %28 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %arrayidx.2, align 4
  tail call void @set_sense_type(ptr noundef %chip, i32 noundef 3, i32 noundef 0) #6
  %arrayidx.3 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 36, i32 3
  %29 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %arrayidx.3, align 4
  tail call void @set_sense_type(ptr noundef %chip, i32 noundef 4, i32 noundef 0) #6
  %arrayidx.4 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 36, i32 4
  %30 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %arrayidx.4, align 4
  tail call void @set_sense_type(ptr noundef %chip, i32 noundef 5, i32 noundef 0) #6
  %arrayidx.5 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 36, i32 5
  %31 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %arrayidx.5, align 4
  tail call void @set_sense_type(ptr noundef %chip, i32 noundef 6, i32 noundef 0) #6
  %arrayidx.6 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 36, i32 6
  %32 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %arrayidx.6, align 4
  tail call void @set_sense_type(ptr noundef %chip, i32 noundef 7, i32 noundef 0) #6
  %arrayidx.7 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 36, i32 7
  %33 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %arrayidx.7, align 4
  %sd_speed_prior = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 144
  %34 = ptrtoint ptr %sd_speed_prior to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %sd_speed_prior, align 4
  %conv1.i = and i32 %35, 255
  %36 = add nsw i32 %conv1.i, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %36)
  %37 = icmp ult i32 %36, -4
  br i1 %37, label %do.end.if.then15_crit_edge, label %for.cond.i

do.end.if.then15_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then15

for.cond.i:                                       ; preds = %do.end
  %shr.1.i = lshr i32 %35, 8
  %conv1.1.i = and i32 %shr.1.i, 255
  %38 = add nsw i32 %conv1.1.i, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %38)
  %39 = icmp ult i32 %38, -4
  br i1 %39, label %for.cond.i.if.then15_crit_edge, label %for.cond.1.i

for.cond.i.if.then15_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then15

for.cond.1.i:                                     ; preds = %for.cond.i
  %shr.2.i = lshr i32 %35, 16
  %conv1.2.i = and i32 %shr.2.i, 255
  %40 = add nsw i32 %conv1.2.i, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %40)
  %41 = icmp ult i32 %40, -4
  %shr.3.i = lshr i32 %35, 24
  %42 = add nsw i32 %shr.3.i, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %42)
  %43 = icmp ult i32 %42, -4
  %or.cond = select i1 %41, i1 true, i1 %43
  br i1 %or.cond, label %for.cond.1.i.if.then15_crit_edge, label %for.cond.1.i.do.body18_crit_edge

for.cond.1.i.do.body18_crit_edge:                 ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body18

for.cond.1.i.if.then15_crit_edge:                 ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then15

if.then15:                                        ; preds = %for.cond.1.i.if.then15_crit_edge, %for.cond.i.if.then15_crit_edge, %do.end.if.then15_crit_edge
  %44 = ptrtoint ptr %sd_speed_prior to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 17039875, ptr %sd_speed_prior, align 4
  br label %do.body18

do.body18:                                        ; preds = %if.then15, %for.cond.1.i.do.body18_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtsx_init_chip.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtsx_init_chip, %if.then30)) #6
          to label %do.end35 [label %if.then30], !srcloc !211

if.then30:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #8
  %45 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %chip, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %46, align 4
  %dev.i598 = getelementptr inbounds %struct.pci_dev, ptr %48, i32 0, i32 44
  %49 = ptrtoint ptr %sd_speed_prior to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %sd_speed_prior, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtsx_init_chip.__UNIQUE_ID_ddebug304, ptr noundef %dev.i598, ptr noundef nonnull @.str.11, i32 noundef %50) #6
  br label %do.end35

do.end35:                                         ; preds = %if.then30, %do.body18
  %sd_current_prior = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 145
  %51 = ptrtoint ptr %sd_current_prior to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %sd_current_prior, align 4
  %53 = and i32 %52, -50529028
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %.not = icmp eq i32 %53, 0
  br i1 %.not, label %do.end35.do.body41_crit_edge, label %if.then38

do.end35.do.body41_crit_edge:                     ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body41

if.then38:                                        ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #8
  %54 = ptrtoint ptr %sd_current_prior to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 66051, ptr %sd_current_prior, align 4
  br label %do.body41

do.body41:                                        ; preds = %if.then38, %do.end35.do.body41_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtsx_init_chip.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtsx_init_chip, %if.then53)) #6
          to label %do.end58 [label %if.then53], !srcloc !211

if.then53:                                        ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #8
  %55 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %chip, align 4
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %56, align 4
  %dev.i599 = getelementptr inbounds %struct.pci_dev, ptr %58, i32 0, i32 44
  %59 = ptrtoint ptr %sd_current_prior to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %sd_current_prior, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtsx_init_chip.__UNIQUE_ID_ddebug305, ptr noundef %dev.i599, ptr noundef nonnull @.str.12, i32 noundef %60) #6
  br label %do.end58

do.end58:                                         ; preds = %if.then53, %do.body41
  %sd_ddr_tx_phase = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 123
  %61 = ptrtoint ptr %sd_ddr_tx_phase to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %sd_ddr_tx_phase, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %62)
  %63 = icmp ugt i32 %62, 31
  br i1 %63, label %if.then64, label %do.end58.if.end66_crit_edge

do.end58.if.end66_crit_edge:                      ; preds = %do.end58
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end66

if.then64:                                        ; preds = %do.end58
  call void @__sanitizer_cov_trace_pc() #8
  %64 = ptrtoint ptr %sd_ddr_tx_phase to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 0, ptr %sd_ddr_tx_phase, align 4
  br label %if.end66

if.end66:                                         ; preds = %if.then64, %do.end58.if.end66_crit_edge
  %mmc_ddr_tx_phase = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 124
  %65 = ptrtoint ptr %mmc_ddr_tx_phase to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %mmc_ddr_tx_phase, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %66)
  %67 = icmp ugt i32 %66, 31
  br i1 %67, label %if.then73, label %if.end66.if.end75_crit_edge

if.end66.if.end75_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end75

if.then73:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #8
  %68 = ptrtoint ptr %mmc_ddr_tx_phase to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 0, ptr %mmc_ddr_tx_phase, align 4
  br label %if.end75

if.end75:                                         ; preds = %if.then73, %if.end66.if.end75_crit_edge
  %69 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %chip, align 4
  %remap_addr.i = getelementptr inbounds %struct.rtsx_dev, ptr %70, i32 0, i32 2
  %71 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %72, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !209
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 65788) #6, !srcloc !210
  br label %for.body.i

for.cond.i600:                                    ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.029.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 1024
  br i1 %exitcond.not.i, label %for.cond.i600.cleanup_crit_edge, label %for.cond.i600.for.body.i_crit_edge

for.cond.i600.for.body.i_crit_edge:               ; preds = %for.cond.i600
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.cond.i600.cleanup_crit_edge:                  ; preds = %for.cond.i600
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i600.for.body.i_crit_edge, %if.end75
  %i.029.i = phi i32 [ 0, %if.end75 ], [ %inc.i, %for.cond.i600.for.body.i_crit_edge ]
  %73 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %chip, align 4
  %remap_addr8.i = getelementptr inbounds %struct.rtsx_dev, ptr %74, i32 0, i32 2
  %75 = ptrtoint ptr %remap_addr8.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %remap_addr8.i, align 4
  %add.ptr9.i = getelementptr i8, ptr %76, i32 16
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i) #6, !srcloc !207
  %78 = tail call i32 @llvm.bswap.i32(i32 %77) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !208
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %78)
  %cmp11.i = icmp sgt i32 %78, -1
  br i1 %cmp11.i, label %rtsx_write_register.exit, label %for.cond.i600

rtsx_write_register.exit:                         ; preds = %for.body.i
  %conv15.i = and i32 %78, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv15.i)
  %cmp16.not.i.not = icmp eq i32 %conv15.i, 0
  br i1 %cmp16.not.i.not, label %__here, label %rtsx_write_register.exit.cleanup_crit_edge

rtsx_write_register.exit.cleanup_crit_edge:       ; preds = %rtsx_write_register.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

__here:                                           ; preds = %rtsx_write_register.exit
  %79 = tail call i32 @llvm.read_register.i32(metadata !197) #6
  %and.i = and i32 %79, -16384
  %80 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %80, i32 0, i32 2
  %81 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %82, i32 0, i32 212
  %83 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 ptrtoint (ptr blockaddress(@rtsx_init_chip, %__here) to i32), ptr %task_state_change, align 4
  %84 = load ptr, ptr %task, align 8
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_store4_noabort(i32 %85)
  store volatile i32 1, ptr %84, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !215
  %call154 = tail call i32 @schedule_timeout(i32 noundef 20) #6
  %86 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %chip, align 4
  %remap_addr.i602 = getelementptr inbounds %struct.rtsx_dev, ptr %87, i32 0, i32 2
  %88 = ptrtoint ptr %remap_addr.i602 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %remap_addr.i602, align 4
  %add.ptr.i603 = getelementptr i8, ptr %89, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !209
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i603, i32 117900284) #6, !srcloc !210
  br label %for.body.i611

for.cond.i606:                                    ; preds = %for.body.i611
  %inc.i604 = add nuw nsw i32 %i.029.i607, 1
  %exitcond.not.i605 = icmp eq i32 %inc.i604, 1024
  br i1 %exitcond.not.i605, label %for.cond.i606.cleanup_crit_edge, label %for.cond.i606.for.body.i611_crit_edge

for.cond.i606.for.body.i611_crit_edge:            ; preds = %for.cond.i606
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i611

for.cond.i606.cleanup_crit_edge:                  ; preds = %for.cond.i606
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.i611:                                    ; preds = %for.cond.i606.for.body.i611_crit_edge, %__here
  %i.029.i607 = phi i32 [ 0, %__here ], [ %inc.i604, %for.cond.i606.for.body.i611_crit_edge ]
  %90 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %chip, align 4
  %remap_addr8.i608 = getelementptr inbounds %struct.rtsx_dev, ptr %91, i32 0, i32 2
  %92 = ptrtoint ptr %remap_addr8.i608 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %remap_addr8.i608, align 4
  %add.ptr9.i609 = getelementptr i8, ptr %93, i32 16
  %94 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i609) #6, !srcloc !207
  %95 = tail call i32 @llvm.bswap.i32(i32 %94) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !208
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %95)
  %cmp11.i610 = icmp sgt i32 %95, -1
  br i1 %cmp11.i610, label %rtsx_write_register.exit617, label %for.cond.i606

rtsx_write_register.exit617:                      ; preds = %for.body.i611
  %conv15.i612 = and i32 %95, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %conv15.i612)
  %cmp16.not.i613.not = icmp eq i32 %conv15.i612, 7
  br i1 %cmp16.not.i613.not, label %do.body161, label %rtsx_write_register.exit617.cleanup_crit_edge

rtsx_write_register.exit617.cleanup_crit_edge:    ; preds = %rtsx_write_register.exit617
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body161:                                       ; preds = %rtsx_write_register.exit617
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtsx_init_chip.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtsx_init_chip, %if.then173)) #6
          to label %do.end177 [label %if.then173], !srcloc !211

if.then173:                                       ; preds = %do.body161
  call void @__sanitizer_cov_trace_pc() #8
  %96 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %chip, align 4
  %98 = ptrtoint ptr %97 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %97, align 4
  %dev.i618 = getelementptr inbounds %struct.pci_dev, ptr %99, i32 0, i32 44
  %use_hw_setting = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 83
  %100 = ptrtoint ptr %use_hw_setting to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %use_hw_setting, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtsx_init_chip.__UNIQUE_ID_ddebug307, ptr noundef %dev.i618, ptr noundef nonnull @.str.13, i32 noundef %101) #6
  br label %do.end177

do.end177:                                        ; preds = %if.then173, %do.body161
  %product_id178 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 58
  %102 = ptrtoint ptr %product_id178 to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %product_id178, align 2
  %104 = zext i16 %103 to i64
  call void @__sanitizer_cov_trace_switch(i64 %104, ptr @__sancov_gen_cov_switch_values.79)
  switch i16 %103, label %do.end177.if.end199_crit_edge [
    i16 21000, label %if.then182
    i16 21128, label %if.then192
  ]

do.end177.if.end199_crit_edge:                    ; preds = %do.end177
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end199

if.then182:                                       ; preds = %do.end177
  %call183 = tail call fastcc i32 @rts5208_init(ptr noundef %chip)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call183)
  %cmp184.not = icmp eq i32 %call183, 0
  br i1 %cmp184.not, label %if.then182.if.end199_crit_edge, label %if.then182.cleanup_crit_edge

if.then182.cleanup_crit_edge:                     ; preds = %if.then182
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then182.if.end199_crit_edge:                   ; preds = %if.then182
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end199

if.then192:                                       ; preds = %do.end177
  %call193 = tail call fastcc i32 @rts5288_init(ptr noundef %chip)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call193)
  %cmp194.not = icmp eq i32 %call193, 0
  br i1 %cmp194.not, label %if.then192.if.end199_crit_edge, label %if.then192.cleanup_crit_edge

if.then192.cleanup_crit_edge:                     ; preds = %if.then192
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then192.if.end199_crit_edge:                   ; preds = %if.then192
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end199

if.end199:                                        ; preds = %if.then192.if.end199_crit_edge, %if.then182.if.end199_crit_edge, %do.end177.if.end199_crit_edge
  %ss_en = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 66
  %105 = ptrtoint ptr %ss_en to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %ss_en, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %106)
  %cmp200 = icmp eq i32 %106, 2
  br i1 %cmp200, label %if.then202, label %if.end199.do.body205_crit_edge

if.end199.do.body205_crit_edge:                   ; preds = %if.end199
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body205

if.then202:                                       ; preds = %if.end199
  call void @__sanitizer_cov_trace_pc() #8
  %107 = ptrtoint ptr %ss_en to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 0, ptr %ss_en, align 4
  br label %do.body205

do.body205:                                       ; preds = %if.then202, %if.end199.do.body205_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtsx_init_chip.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtsx_init_chip, %if.then217)) #6
          to label %do.body222 [label %if.then217], !srcloc !211

if.then217:                                       ; preds = %do.body205
  call void @__sanitizer_cov_trace_pc() #8
  %108 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %chip, align 4
  %110 = ptrtoint ptr %109 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %109, align 4
  %dev.i619 = getelementptr inbounds %struct.pci_dev, ptr %111, i32 0, i32 44
  %asic_code = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 74
  %112 = ptrtoint ptr %asic_code to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %asic_code, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtsx_init_chip.__UNIQUE_ID_ddebug308, ptr noundef %dev.i619, ptr noundef nonnull @.str.14, i32 noundef %113) #6
  br label %do.body222

do.body222:                                       ; preds = %if.then217, %do.body205
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtsx_init_chip.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtsx_init_chip, %if.then234)) #6
          to label %do.body241 [label %if.then234], !srcloc !211

if.then234:                                       ; preds = %do.body222
  call void @__sanitizer_cov_trace_pc() #8
  %114 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %chip, align 4
  %116 = ptrtoint ptr %115 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %115, align 4
  %dev.i620 = getelementptr inbounds %struct.pci_dev, ptr %117, i32 0, i32 44
  %118 = ptrtoint ptr %ic_version to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %ic_version, align 4
  %conv237 = zext i8 %119 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtsx_init_chip.__UNIQUE_ID_ddebug309, ptr noundef %dev.i620, ptr noundef nonnull @.str.15, i32 noundef %conv237) #6
  br label %do.body241

do.body241:                                       ; preds = %if.then234, %do.body222
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtsx_init_chip.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtsx_init_chip, %if.then253)) #6
          to label %do.body259 [label %if.then253], !srcloc !211

if.then253:                                       ; preds = %do.body241
  call void @__sanitizer_cov_trace_pc() #8
  %120 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %chip, align 4
  %122 = ptrtoint ptr %121 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %121, align 4
  %dev.i621 = getelementptr inbounds %struct.pci_dev, ptr %123, i32 0, i32 44
  %124 = ptrtoint ptr %phy_debug_mode to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %phy_debug_mode, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtsx_init_chip.__UNIQUE_ID_ddebug310, ptr noundef %dev.i621, ptr noundef nonnull @.str.16, i32 noundef %125) #6
  br label %do.body259

do.body259:                                       ; preds = %if.then253, %do.body241
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtsx_init_chip.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtsx_init_chip, %if.then271)) #6
          to label %do.body276 [label %if.then271], !srcloc !211

if.then271:                                       ; preds = %do.body259
  call void @__sanitizer_cov_trace_pc() #8
  %126 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %chip, align 4
  %128 = ptrtoint ptr %127 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %127, align 4
  %dev.i622 = getelementptr inbounds %struct.pci_dev, ptr %129, i32 0, i32 44
  %aux_pwr_exist = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 78
  %130 = ptrtoint ptr %aux_pwr_exist to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %aux_pwr_exist, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtsx_init_chip.__UNIQUE_ID_ddebug311, ptr noundef %dev.i622, ptr noundef nonnull @.str.17, i32 noundef %131) #6
  br label %do.body276

do.body276:                                       ; preds = %if.then271, %do.body259
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtsx_init_chip.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtsx_init_chip, %if.then288)) #6
          to label %do.body294 [label %if.then288], !srcloc !211

if.then288:                                       ; preds = %do.body276
  call void @__sanitizer_cov_trace_pc() #8
  %132 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %chip, align 4
  %134 = ptrtoint ptr %133 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %133, align 4
  %dev.i623 = getelementptr inbounds %struct.pci_dev, ptr %135, i32 0, i32 44
  %136 = ptrtoint ptr %sdio_func_exist to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %sdio_func_exist, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtsx_init_chip.__UNIQUE_ID_ddebug312, ptr noundef %dev.i623, ptr noundef nonnull @.str.18, i32 noundef %137) #6
  br label %do.body294

do.body294:                                       ; preds = %if.then288, %do.body276
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtsx_init_chip.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtsx_init_chip, %if.then306)) #6
          to label %do.body311 [label %if.then306], !srcloc !211

if.then306:                                       ; preds = %do.body294
  call void @__sanitizer_cov_trace_pc() #8
  %138 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %chip, align 4
  %140 = ptrtoint ptr %139 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %139, align 4
  %dev.i624 = getelementptr inbounds %struct.pci_dev, ptr %141, i32 0, i32 44
  %hw_bypass_sd = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 76
  %142 = ptrtoint ptr %hw_bypass_sd to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %hw_bypass_sd, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtsx_init_chip.__UNIQUE_ID_ddebug313, ptr noundef %dev.i624, ptr noundef nonnull @.str.19, i32 noundef %143) #6
  br label %do.body311

do.body311:                                       ; preds = %if.then306, %do.body294
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtsx_init_chip.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtsx_init_chip, %if.then323)) #6
          to label %do.body329 [label %if.then323], !srcloc !211

if.then323:                                       ; preds = %do.body311
  call void @__sanitizer_cov_trace_pc() #8
  %144 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %chip, align 4
  %146 = ptrtoint ptr %145 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %145, align 4
  %dev.i625 = getelementptr inbounds %struct.pci_dev, ptr %147, i32 0, i32 44
  %aspm_l0s_l1_en = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 68
  %148 = ptrtoint ptr %aspm_l0s_l1_en to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %aspm_l0s_l1_en, align 1
  %conv325 = zext i8 %149 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtsx_init_chip.__UNIQUE_ID_ddebug314, ptr noundef %dev.i625, ptr noundef nonnull @.str.20, i32 noundef %conv325) #6
  br label %do.body329

do.body329:                                       ; preds = %if.then323, %do.body311
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtsx_init_chip.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtsx_init_chip, %if.then341)) #6
          to label %do.body347 [label %if.then341], !srcloc !211

if.then341:                                       ; preds = %do.body329
  call void @__sanitizer_cov_trace_pc() #8
  %150 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %chip, align 4
  %152 = ptrtoint ptr %151 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %151, align 4
  %dev.i626 = getelementptr inbounds %struct.pci_dev, ptr %153, i32 0, i32 44
  %lun_mode = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 67
  %154 = ptrtoint ptr %lun_mode to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %lun_mode, align 4
  %conv343 = zext i8 %155 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtsx_init_chip.__UNIQUE_ID_ddebug315, ptr noundef %dev.i626, ptr noundef nonnull @.str.21, i32 noundef %conv343) #6
  br label %do.body347

do.body347:                                       ; preds = %if.then341, %do.body329
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtsx_init_chip.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtsx_init_chip, %if.then359)) #6
          to label %do.body364 [label %if.then359], !srcloc !211

if.then359:                                       ; preds = %do.body347
  call void @__sanitizer_cov_trace_pc() #8
  %156 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %chip, align 4
  %158 = ptrtoint ptr %157 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %157, align 4
  %dev.i627 = getelementptr inbounds %struct.pci_dev, ptr %159, i32 0, i32 44
  %auto_delink_en = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 65
  %160 = ptrtoint ptr %auto_delink_en to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %auto_delink_en, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtsx_init_chip.__UNIQUE_ID_ddebug316, ptr noundef %dev.i627, ptr noundef nonnull @.str.22, i32 noundef %161) #6
  br label %do.body364

do.body364:                                       ; preds = %if.then359, %do.body347
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtsx_init_chip.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtsx_init_chip, %if.then376)) #6
          to label %do.body382 [label %if.then376], !srcloc !211

if.then376:                                       ; preds = %do.body364
  call void @__sanitizer_cov_trace_pc() #8
  %162 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %chip, align 4
  %164 = ptrtoint ptr %163 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %163, align 4
  %dev.i628 = getelementptr inbounds %struct.pci_dev, ptr %165, i32 0, i32 44
  %166 = ptrtoint ptr %ss_en to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %ss_en, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtsx_init_chip.__UNIQUE_ID_ddebug317, ptr noundef %dev.i628, ptr noundef nonnull @.str.23, i32 noundef %167) #6
  br label %do.body382

do.body382:                                       ; preds = %if.then376, %do.body364
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtsx_init_chip.__UNIQUE_ID_ddebug318, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtsx_init_chip, %if.then394)) #6
          to label %do.end398 [label %if.then394], !srcloc !211

if.then394:                                       ; preds = %do.body382
  call void @__sanitizer_cov_trace_pc() #8
  %168 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %chip, align 4
  %170 = ptrtoint ptr %169 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %169, align 4
  %dev.i629 = getelementptr inbounds %struct.pci_dev, ptr %171, i32 0, i32 44
  %baro_pkg = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 73
  %172 = ptrtoint ptr %baro_pkg to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %baro_pkg, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtsx_init_chip.__UNIQUE_ID_ddebug318, ptr noundef %dev.i629, ptr noundef nonnull @.str.24, i32 noundef %173) #6
  br label %do.end398

do.end398:                                        ; preds = %if.then394, %do.body382
  %lun_mode399 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 67
  %174 = ptrtoint ptr %lun_mode399 to i32
  call void @__asan_load1_noabort(i32 %174)
  %175 = load i8, ptr %lun_mode399, align 4
  %176 = zext i8 %175 to i64
  call void @__sanitizer_cov_trace_switch(i64 %176, ptr @__sancov_gen_cov_switch_values.80)
  switch i8 %175, label %if.else428 [
    i8 1, label %if.then403
    i8 2, label %if.then418
  ]

if.then403:                                       ; preds = %do.end398
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx404 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 34, i32 4
  %177 = ptrtoint ptr %arrayidx404 to i32
  call void @__asan_store1_noabort(i32 %177)
  store i8 0, ptr %arrayidx404, align 4
  %arrayidx406 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 34, i32 8
  %178 = ptrtoint ptr %arrayidx406 to i32
  call void @__asan_store1_noabort(i32 %178)
  store i8 1, ptr %arrayidx406, align 4
  %arrayidx408 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 34, i32 16
  %179 = ptrtoint ptr %arrayidx408 to i32
  call void @__asan_store1_noabort(i32 %179)
  store i8 -1, ptr %arrayidx408, align 4
  %lun2card = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 35
  %180 = ptrtoint ptr %lun2card to i32
  call void @__asan_store1_noabort(i32 %180)
  store i8 4, ptr %lun2card, align 4
  %arrayidx411 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 35, i32 1
  %181 = ptrtoint ptr %arrayidx411 to i32
  call void @__asan_store1_noabort(i32 %181)
  store i8 8, ptr %arrayidx411, align 1
  %max_lun = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 2
  %182 = ptrtoint ptr %max_lun to i32
  call void @__asan_store1_noabort(i32 %182)
  store i8 1, ptr %max_lun, align 4
  %183 = ptrtoint ptr %sdio_func_exist to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %sdio_func_exist, align 4
  %or = or i32 %184, 2
  store i32 %or, ptr %sdio_func_exist, align 4
  br label %if.end439

if.then418:                                       ; preds = %do.end398
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx420 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 34, i32 4
  %185 = ptrtoint ptr %arrayidx420 to i32
  call void @__asan_store1_noabort(i32 %185)
  store i8 0, ptr %arrayidx420, align 4
  %arrayidx422 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 34, i32 8
  %186 = ptrtoint ptr %arrayidx422 to i32
  call void @__asan_store1_noabort(i32 %186)
  store i8 0, ptr %arrayidx422, align 4
  %arrayidx424 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 34, i32 16
  %187 = ptrtoint ptr %arrayidx424 to i32
  call void @__asan_store1_noabort(i32 %187)
  store i8 -1, ptr %arrayidx424, align 4
  %lun2card425 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 35
  %188 = ptrtoint ptr %lun2card425 to i32
  call void @__asan_store1_noabort(i32 %188)
  store i8 12, ptr %lun2card425, align 4
  %max_lun427 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 2
  %189 = ptrtoint ptr %max_lun427 to i32
  call void @__asan_store1_noabort(i32 %189)
  store i8 0, ptr %max_lun427, align 4
  br label %if.end439

if.else428:                                       ; preds = %do.end398
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx430 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 34, i32 16
  %190 = ptrtoint ptr %arrayidx430 to i32
  call void @__asan_store1_noabort(i32 %190)
  store i8 0, ptr %arrayidx430, align 4
  %arrayidx432 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 34, i32 4
  %191 = ptrtoint ptr %arrayidx432 to i32
  call void @__asan_store1_noabort(i32 %191)
  store i8 0, ptr %arrayidx432, align 4
  %arrayidx434 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 34, i32 8
  %192 = ptrtoint ptr %arrayidx434 to i32
  call void @__asan_store1_noabort(i32 %192)
  store i8 0, ptr %arrayidx434, align 4
  %lun2card435 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 35
  %193 = ptrtoint ptr %lun2card435 to i32
  call void @__asan_store1_noabort(i32 %193)
  store i8 28, ptr %lun2card435, align 4
  %max_lun437 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 2
  %194 = ptrtoint ptr %max_lun437 to i32
  call void @__asan_store1_noabort(i32 %194)
  store i8 0, ptr %max_lun437, align 4
  br label %if.end439

if.end439:                                        ; preds = %if.else428, %if.then418, %if.then403
  %call440 = tail call i32 @rtsx_reset_chip(ptr noundef %chip)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call440)
  %cmp441.not = icmp ne i32 %call440, 0
  %. = zext i1 %cmp441.not to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end439, %if.then192.cleanup_crit_edge, %if.then182.cleanup_crit_edge, %rtsx_write_register.exit617.cleanup_crit_edge, %for.cond.i606.cleanup_crit_edge, %rtsx_write_register.exit.cleanup_crit_edge, %for.cond.i600.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %rtsx_write_register.exit.cleanup_crit_edge ], [ 1, %rtsx_write_register.exit617.cleanup_crit_edge ], [ 1, %if.then182.cleanup_crit_edge ], [ 1, %if.then192.cleanup_crit_edge ], [ %., %if.end439 ], [ 2, %for.cond.i606.cleanup_crit_edge ], [ 2, %for.cond.i600.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_sense_type(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rts5208_init(ptr noundef %chip) unnamed_addr #0 align 64 {
entry:
  %reg = alloca i16, align 2
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg) #6
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %reg, align 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #6
  %1 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %chip, align 4
  %remap_addr.i = getelementptr inbounds %struct.rtsx_dev, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !209
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 50529532) #6, !srcloc !210
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.029.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 1024
  br i1 %exitcond.not.i, label %for.cond.i.cleanup_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %entry
  %i.029.i = phi i32 [ 0, %entry ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %5 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %chip, align 4
  %remap_addr8.i = getelementptr inbounds %struct.rtsx_dev, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %remap_addr8.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %remap_addr8.i, align 4
  %add.ptr9.i = getelementptr i8, ptr %8, i32 16
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i) #6, !srcloc !207
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !208
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %cmp11.i = icmp sgt i32 %10, -1
  br i1 %cmp11.i, label %rtsx_write_register.exit, label %for.cond.i

rtsx_write_register.exit:                         ; preds = %for.body.i
  %conv15.i = and i32 %10, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %conv15.i)
  %cmp16.not.i.not = icmp eq i32 %conv15.i, 3
  br i1 %cmp16.not.i.not, label %if.end, label %rtsx_write_register.exit.cleanup_crit_edge

rtsx_write_register.exit.cleanup_crit_edge:       ; preds = %rtsx_write_register.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %rtsx_write_register.exit
  %11 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %chip, align 4
  %remap_addr.i130 = getelementptr inbounds %struct.rtsx_dev, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %remap_addr.i130 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %remap_addr.i130, align 4
  %add.ptr.i131 = getelementptr i8, ptr %14, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !209
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i131, i32 1212) #6, !srcloc !210
  br label %for.body.i135

for.cond.i134:                                    ; preds = %for.body.i135
  %inc.i132 = add nuw nsw i32 %i.033.i, 1
  %exitcond.not.i133 = icmp eq i32 %inc.i132, 1024
  br i1 %exitcond.not.i133, label %for.cond.i134.cleanup_crit_edge, label %for.cond.i134.for.body.i135_crit_edge

for.cond.i134.for.body.i135_crit_edge:            ; preds = %for.cond.i134
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i135

for.cond.i134.cleanup_crit_edge:                  ; preds = %for.cond.i134
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.i135:                                    ; preds = %for.cond.i134.for.body.i135_crit_edge, %if.end
  %i.033.i = phi i32 [ 0, %if.end ], [ %inc.i132, %for.cond.i134.for.body.i135_crit_edge ]
  %15 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %chip, align 4
  %remap_addr3.i = getelementptr inbounds %struct.rtsx_dev, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %remap_addr3.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %remap_addr3.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %18, i32 16
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i) #6, !srcloc !207
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !208
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %20)
  %cmp6.i = icmp sgt i32 %20, -1
  br i1 %cmp6.i, label %if.end5, label %for.cond.i134

if.end5:                                          ; preds = %for.body.i135
  %conv17.i = trunc i32 %20 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv17.i)
  %cmp = icmp eq i8 %conv17.i, 0
  %cond = zext i1 %cmp to i32
  %asic_code = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 74
  %21 = ptrtoint ptr %asic_code to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %cond, ptr %asic_code, align 4
  br i1 %cmp, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.end5
  %call10 = call i32 @rtsx_read_phy_register(ptr noundef %chip, i8 noundef zeroext 28, ptr noundef nonnull %reg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11.not = icmp eq i32 %call10, 0
  br i1 %cmp11.not, label %do.body, label %if.then9.cleanup_crit_edge

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %if.then9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rts5208_init.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rts5208_init, %if.then19)) #6
          to label %do.end [label %if.then19], !srcloc !211

if.then19:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %chip, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %25, i32 0, i32 44
  %26 = ptrtoint ptr %reg to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %reg, align 2
  %conv21 = zext i16 %27 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rts5208_init.__UNIQUE_ID_ddebug298, ptr noundef %dev.i, ptr noundef nonnull @.str.54, i32 noundef %conv21) #6
  br label %do.end

do.end:                                           ; preds = %if.then19, %do.body
  %28 = ptrtoint ptr %reg to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %reg, align 2
  %30 = trunc i16 %29 to i8
  %31 = lshr i8 %30, 4
  %conv24 = and i8 %31, 7
  %ic_version = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 59
  %32 = ptrtoint ptr %ic_version to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv24, ptr %ic_version, align 4
  %33 = and i16 %29, 1
  %34 = zext i16 %33 to i32
  br label %if.end35

if.else:                                          ; preds = %if.end5
  %35 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %val, align 1
  %36 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %chip, align 4
  %remap_addr.i138 = getelementptr inbounds %struct.rtsx_dev, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %remap_addr.i138 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %remap_addr.i138, align 4
  %add.ptr.i139 = getelementptr i8, ptr %39, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !209
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i139, i32 32958) #6, !srcloc !210
  br label %for.body.i147

for.cond.i142:                                    ; preds = %for.body.i147
  %inc.i140 = add nuw nsw i32 %i.033.i143, 1
  %exitcond.not.i141 = icmp eq i32 %inc.i140, 1024
  br i1 %exitcond.not.i141, label %for.cond.i142.cleanup_crit_edge, label %for.cond.i142.for.body.i147_crit_edge

for.cond.i142.for.body.i147_crit_edge:            ; preds = %for.cond.i142
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i147

for.cond.i142.cleanup_crit_edge:                  ; preds = %for.cond.i142
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.i147:                                    ; preds = %for.cond.i142.for.body.i147_crit_edge, %if.else
  %i.033.i143 = phi i32 [ 0, %if.else ], [ %inc.i140, %for.cond.i142.for.body.i147_crit_edge ]
  %40 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %chip, align 4
  %remap_addr3.i144 = getelementptr inbounds %struct.rtsx_dev, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %remap_addr3.i144 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %remap_addr3.i144, align 4
  %add.ptr4.i145 = getelementptr i8, ptr %43, i32 16
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i145) #6, !srcloc !207
  %45 = tail call i32 @llvm.bswap.i32(i32 %44) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !208
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %45)
  %cmp6.i146 = icmp sgt i32 %45, -1
  br i1 %cmp6.i146, label %if.end32, label %for.cond.i142

if.end32:                                         ; preds = %for.body.i147
  call void @__sanitizer_cov_trace_pc() #8
  %conv17.i149 = trunc i32 %45 to i8
  %ic_version33 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 59
  %46 = ptrtoint ptr %ic_version33 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %conv17.i149, ptr %ic_version33, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.end32, %do.end
  %.sink = phi i32 [ 0, %if.end32 ], [ %34, %do.end ]
  %phy_debug_mode34 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 75
  %47 = ptrtoint ptr %phy_debug_mode34 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %.sink, ptr %phy_debug_mode34, align 4
  %48 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %chip, align 4
  %remap_addr.i153 = getelementptr inbounds %struct.rtsx_dev, ptr %49, i32 0, i32 2
  %50 = ptrtoint ptr %remap_addr.i153 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %remap_addr.i153, align 4
  %add.ptr.i154 = getelementptr i8, ptr %51, i32 16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !209
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i154, i32 444) #6, !srcloc !210
  br label %for.body.i162

for.cond.i157:                                    ; preds = %for.body.i162
  %inc.i155 = add nuw nsw i32 %i.033.i158, 1
  %exitcond.not.i156 = icmp eq i32 %inc.i155, 1024
  br i1 %exitcond.not.i156, label %for.cond.i157.cleanup_crit_edge, label %for.cond.i157.for.body.i162_crit_edge

for.cond.i157.for.body.i162_crit_edge:            ; preds = %for.cond.i157
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i162

for.cond.i157.cleanup_crit_edge:                  ; preds = %for.cond.i157
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.i162:                                    ; preds = %for.cond.i157.for.body.i162_crit_edge, %if.end35
  %i.033.i158 = phi i32 [ 0, %if.end35 ], [ %inc.i155, %for.cond.i157.for.body.i162_crit_edge ]
  %52 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %chip, align 4
  %remap_addr3.i159 = getelementptr inbounds %struct.rtsx_dev, ptr %53, i32 0, i32 2
  %54 = ptrtoint ptr %remap_addr3.i159 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %remap_addr3.i159, align 4
  %add.ptr4.i160 = getelementptr i8, ptr %55, i32 16
  %56 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i160) #6, !srcloc !207
  %57 = call i32 @llvm.bswap.i32(i32 %56) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !208
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %57)
  %cmp6.i161 = icmp sgt i32 %57, -1
  br i1 %cmp6.i161, label %do.body40, label %for.cond.i157

do.body40:                                        ; preds = %for.body.i162
  %conv17.i164 = trunc i32 %57 to i8
  %58 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %conv17.i164, ptr %val, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rts5208_init.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rts5208_init, %if.then52)) #6
          to label %do.end57 [label %if.then52], !srcloc !211

if.then52:                                        ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #8
  %59 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %chip, align 4
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %60, align 4
  %dev.i167 = getelementptr inbounds %struct.pci_dev, ptr %62, i32 0, i32 44
  %63 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %val, align 1
  %conv54 = zext i8 %64 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rts5208_init.__UNIQUE_ID_ddebug299, ptr noundef %dev.i167, ptr noundef nonnull @.str.55, i32 noundef %conv54) #6
  br label %do.end57

do.end57:                                         ; preds = %if.then52, %do.body40
  %65 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %val, align 1
  %67 = and i8 %66, 1
  %68 = zext i8 %67 to i32
  %aux_pwr_exist = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 78
  %69 = ptrtoint ptr %aux_pwr_exist to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %aux_pwr_exist, align 4
  %call62 = call i32 @rtsx_read_register(ptr noundef %chip, i16 noundef zeroext -432, ptr noundef nonnull %val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %if.end65, label %do.end57.cleanup_crit_edge

do.end57.cleanup_crit_edge:                       ; preds = %do.end57
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end65:                                         ; preds = %do.end57
  %70 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %val, align 1
  %72 = and i8 %71, 1
  %73 = zext i8 %72 to i32
  %hw_bypass_sd = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 76
  %74 = ptrtoint ptr %hw_bypass_sd to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %hw_bypass_sd, align 4
  %75 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %chip, align 4
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %76, align 4
  %call70 = call i32 @pci_read_config_byte(ptr noundef %78, i32 noundef 14, ptr noundef nonnull %val) #6
  %79 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %val, align 1
  %sdio_func_exist76 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 77
  %81 = ptrtoint ptr %sdio_func_exist76 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %sdio_func_exist76, align 4
  %and77 = and i32 %82, -2
  %.lobit209 = lshr i8 %80, 7
  %83 = zext i8 %.lobit209 to i32
  %and77.sink = or i32 %and77, %83
  store i32 %and77.sink, ptr %sdio_func_exist76, align 4
  %use_hw_setting = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 83
  %84 = ptrtoint ptr %use_hw_setting to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %use_hw_setting, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %tobool79.not = icmp eq i32 %85, 0
  br i1 %tobool79.not, label %if.end65.cleanup_crit_edge, label %if.then80

if.end65.cleanup_crit_edge:                       ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then80:                                        ; preds = %if.end65
  %call81 = call i32 @rtsx_read_register(ptr noundef %chip, i16 noundef zeroext -421, ptr noundef nonnull %val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %if.end84, label %if.then80.cleanup_crit_edge

if.then80.cleanup_crit_edge:                      ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end84:                                         ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #8
  %86 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %val, align 1
  %.lobit = lshr i8 %87, 7
  %88 = zext i8 %.lobit to i32
  %auto_delink_en = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 65
  %89 = ptrtoint ptr %auto_delink_en to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %88, ptr %auto_delink_en, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end84, %if.then80.cleanup_crit_edge, %if.end65.cleanup_crit_edge, %do.end57.cleanup_crit_edge, %for.cond.i157.cleanup_crit_edge, %for.cond.i142.cleanup_crit_edge, %if.then9.cleanup_crit_edge, %for.cond.i134.cleanup_crit_edge, %rtsx_write_register.exit.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %rtsx_write_register.exit.cleanup_crit_edge ], [ 1, %if.then9.cleanup_crit_edge ], [ %call62, %do.end57.cleanup_crit_edge ], [ %call81, %if.then80.cleanup_crit_edge ], [ 0, %if.end84 ], [ 0, %if.end65.cleanup_crit_edge ], [ 2, %for.cond.i157.cleanup_crit_edge ], [ 2, %for.cond.i142.cleanup_crit_edge ], [ 2, %for.cond.i134.cleanup_crit_edge ], [ 2, %for.cond.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rts5288_init(ptr noundef %chip) unnamed_addr #0 align 64 {
entry:
  %val = alloca i8, align 1
  %lval = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lval) #6
  %0 = ptrtoint ptr %lval to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %lval, align 4
  %1 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %chip, align 4
  %remap_addr.i = getelementptr inbounds %struct.rtsx_dev, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !209
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 50529532) #6, !srcloc !210
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.029.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 1024
  br i1 %exitcond.not.i, label %for.cond.i.cleanup_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %entry
  %i.029.i = phi i32 [ 0, %entry ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %5 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %chip, align 4
  %remap_addr8.i = getelementptr inbounds %struct.rtsx_dev, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %remap_addr8.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %remap_addr8.i, align 4
  %add.ptr9.i = getelementptr i8, ptr %8, i32 16
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i) #6, !srcloc !207
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !208
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %cmp11.i = icmp sgt i32 %10, -1
  br i1 %cmp11.i, label %rtsx_write_register.exit, label %for.cond.i

rtsx_write_register.exit:                         ; preds = %for.body.i
  %conv15.i = and i32 %10, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %conv15.i)
  %cmp16.not.i.not = icmp eq i32 %conv15.i, 3
  br i1 %cmp16.not.i.not, label %if.end, label %rtsx_write_register.exit.cleanup_crit_edge

rtsx_write_register.exit.cleanup_crit_edge:       ; preds = %rtsx_write_register.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %rtsx_write_register.exit
  %11 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %val, align 1
  %12 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %chip, align 4
  %remap_addr.i154 = getelementptr inbounds %struct.rtsx_dev, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %remap_addr.i154 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %remap_addr.i154, align 4
  %add.ptr.i155 = getelementptr i8, ptr %15, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !209
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i155, i32 1212) #6, !srcloc !210
  br label %for.body.i159

for.cond.i158:                                    ; preds = %for.body.i159
  %inc.i156 = add nuw nsw i32 %i.033.i, 1
  %exitcond.not.i157 = icmp eq i32 %inc.i156, 1024
  br i1 %exitcond.not.i157, label %for.cond.i158.cleanup_crit_edge, label %for.cond.i158.for.body.i159_crit_edge

for.cond.i158.for.body.i159_crit_edge:            ; preds = %for.cond.i158
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i159

for.cond.i158.cleanup_crit_edge:                  ; preds = %for.cond.i158
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.i159:                                    ; preds = %for.cond.i158.for.body.i159_crit_edge, %if.end
  %i.033.i = phi i32 [ 0, %if.end ], [ %inc.i156, %for.cond.i158.for.body.i159_crit_edge ]
  %16 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %chip, align 4
  %remap_addr3.i = getelementptr inbounds %struct.rtsx_dev, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %remap_addr3.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %remap_addr3.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %19, i32 16
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i) #6, !srcloc !207
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !208
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %21)
  %cmp6.i = icmp sgt i32 %21, -1
  br i1 %cmp6.i, label %if.end5, label %for.cond.i158

if.end5:                                          ; preds = %for.body.i159
  %conv17.i = trunc i32 %21 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv17.i)
  %cmp = icmp eq i8 %conv17.i, 0
  %cond = zext i1 %cmp to i32
  %asic_code = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 74
  %22 = ptrtoint ptr %asic_code to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %cond, ptr %asic_code, align 4
  %ic_version = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 59
  %23 = ptrtoint ptr %ic_version to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %ic_version, align 4
  %phy_debug_mode = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 75
  %24 = ptrtoint ptr %phy_debug_mode to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %phy_debug_mode, align 4
  %25 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %chip, align 4
  %remap_addr.i162 = getelementptr inbounds %struct.rtsx_dev, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %remap_addr.i162 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %remap_addr.i162, align 4
  %add.ptr.i163 = getelementptr i8, ptr %28, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !209
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i163, i32 444) #6, !srcloc !210
  br label %for.body.i171

for.cond.i166:                                    ; preds = %for.body.i171
  %inc.i164 = add nuw nsw i32 %i.033.i167, 1
  %exitcond.not.i165 = icmp eq i32 %inc.i164, 1024
  br i1 %exitcond.not.i165, label %for.cond.i166.cleanup_crit_edge, label %for.cond.i166.for.body.i171_crit_edge

for.cond.i166.for.body.i171_crit_edge:            ; preds = %for.cond.i166
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i171

for.cond.i166.cleanup_crit_edge:                  ; preds = %for.cond.i166
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.i171:                                    ; preds = %for.cond.i166.for.body.i171_crit_edge, %if.end5
  %i.033.i167 = phi i32 [ 0, %if.end5 ], [ %inc.i164, %for.cond.i166.for.body.i171_crit_edge ]
  %29 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %chip, align 4
  %remap_addr3.i168 = getelementptr inbounds %struct.rtsx_dev, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %remap_addr3.i168 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %remap_addr3.i168, align 4
  %add.ptr4.i169 = getelementptr i8, ptr %32, i32 16
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i169) #6, !srcloc !207
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !208
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %34)
  %cmp6.i170 = icmp sgt i32 %34, -1
  br i1 %cmp6.i170, label %do.body, label %for.cond.i166

do.body:                                          ; preds = %for.body.i171
  %conv17.i173 = trunc i32 %34 to i8
  %35 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv17.i173, ptr %val, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rts5288_init.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rts5288_init, %if.then15)) #6
          to label %do.end [label %if.then15], !srcloc !211

if.then15:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %36 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %chip, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %39, i32 0, i32 44
  %40 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %val, align 1
  %conv17 = zext i8 %41 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rts5288_init.__UNIQUE_ID_ddebug300, ptr noundef %dev.i, ptr noundef nonnull @.str.55, i32 noundef %conv17) #6
  br label %do.end

do.end:                                           ; preds = %if.then15, %do.body
  %42 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %val, align 1
  %44 = and i8 %43, 1
  %45 = zext i8 %44 to i32
  %aux_pwr_exist = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 78
  %46 = ptrtoint ptr %aux_pwr_exist to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %aux_pwr_exist, align 4
  %47 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %chip, align 4
  %remap_addr.i177 = getelementptr inbounds %struct.rtsx_dev, ptr %48, i32 0, i32 2
  %49 = ptrtoint ptr %remap_addr.i177 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %remap_addr.i177, align 4
  %add.ptr.i178 = getelementptr i8, ptr %50, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !209
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i178, i32 21181) #6, !srcloc !210
  br label %for.body.i186

for.cond.i181:                                    ; preds = %for.body.i186
  %inc.i179 = add nuw nsw i32 %i.033.i182, 1
  %exitcond.not.i180 = icmp eq i32 %inc.i179, 1024
  br i1 %exitcond.not.i180, label %for.cond.i181.cleanup_crit_edge, label %for.cond.i181.for.body.i186_crit_edge

for.cond.i181.for.body.i186_crit_edge:            ; preds = %for.cond.i181
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i186

for.cond.i181.cleanup_crit_edge:                  ; preds = %for.cond.i181
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.i186:                                    ; preds = %for.cond.i181.for.body.i186_crit_edge, %do.end
  %i.033.i182 = phi i32 [ 0, %do.end ], [ %inc.i179, %for.cond.i181.for.body.i186_crit_edge ]
  %51 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %chip, align 4
  %remap_addr3.i183 = getelementptr inbounds %struct.rtsx_dev, ptr %52, i32 0, i32 2
  %53 = ptrtoint ptr %remap_addr3.i183 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %remap_addr3.i183, align 4
  %add.ptr4.i184 = getelementptr i8, ptr %54, i32 16
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i184) #6, !srcloc !207
  %56 = tail call i32 @llvm.bswap.i32(i32 %55) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !208
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %56)
  %cmp6.i185 = icmp sgt i32 %56, -1
  br i1 %cmp6.i185, label %do.body26, label %for.cond.i181

do.body26:                                        ; preds = %for.body.i186
  %conv17.i188 = trunc i32 %56 to i8
  %57 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %conv17.i188, ptr %val, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rts5288_init.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rts5288_init, %if.then38)) #6
          to label %do.end43 [label %if.then38], !srcloc !211

if.then38:                                        ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #8
  %58 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %chip, align 4
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %59, align 4
  %dev.i191 = getelementptr inbounds %struct.pci_dev, ptr %61, i32 0, i32 44
  %62 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %val, align 1
  %conv40 = zext i8 %63 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rts5288_init.__UNIQUE_ID_ddebug301, ptr noundef %dev.i191, ptr noundef nonnull @.str.57, i32 noundef %conv40) #6
  br label %do.end43

do.end43:                                         ; preds = %if.then38, %do.body26
  %64 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %val, align 1
  %66 = lshr i8 %65, 2
  %.lobit = and i8 %66, 1
  %67 = xor i8 %.lobit, 1
  %68 = zext i8 %67 to i32
  %baro_pkg = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 73
  %69 = ptrtoint ptr %baro_pkg to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %baro_pkg, align 4
  %call48 = call i32 @rtsx_read_register(ptr noundef %chip, i16 noundef zeroext -422, ptr noundef nonnull %val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end51, label %do.end43.cleanup_crit_edge

do.end43.cleanup_crit_edge:                       ; preds = %do.end43
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end51:                                         ; preds = %do.end43
  %70 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %val, align 1
  %72 = lshr i8 %71, 4
  %.lobit144 = and i8 %72, 1
  %73 = zext i8 %.lobit144 to i32
  %hw_bypass_sd = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 76
  %74 = ptrtoint ptr %hw_bypass_sd to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %hw_bypass_sd, align 4
  %call56 = call i32 @rtsx_read_cfg_dw(ptr noundef %chip, i8 noundef zeroext 0, i16 noundef zeroext 1816, ptr noundef nonnull %lval)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %cmp57.not = icmp eq i32 %call56, 0
  br i1 %cmp57.not, label %if.end60, label %if.end51.cleanup_crit_edge

if.end51.cleanup_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end60:                                         ; preds = %if.end51
  %75 = ptrtoint ptr %lval to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %lval, align 4
  %shr = lshr i32 %76, 29
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rts5288_init.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rts5288_init, %if.then75)) #6
          to label %do.end80 [label %if.then75], !srcloc !211

if.then75:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #8
  %77 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %chip, align 4
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %78, align 4
  %dev.i192 = getelementptr inbounds %struct.pci_dev, ptr %80, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rts5288_init.__UNIQUE_ID_ddebug302, ptr noundef %dev.i192, ptr noundef nonnull @.str.58, i32 noundef %shr) #6
  br label %do.end80

do.end80:                                         ; preds = %if.then75, %if.end60
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %shr)
  %cmp82 = icmp eq i32 %shr, 2
  %sdio_func_exist = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 77
  %81 = ptrtoint ptr %sdio_func_exist to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %sdio_func_exist, align 4
  %and86 = and i32 %82, -2
  %masksel = zext i1 %cmp82 to i32
  %and86.sink = or i32 %and86, %masksel
  store i32 %and86.sink, ptr %sdio_func_exist, align 4
  %use_hw_setting = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 83
  %83 = ptrtoint ptr %use_hw_setting to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %use_hw_setting, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %tobool88.not = icmp eq i32 %84, 0
  br i1 %tobool88.not, label %do.end80.cleanup_crit_edge, label %if.then89

do.end80.cleanup_crit_edge:                       ; preds = %do.end80
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then89:                                        ; preds = %do.end80
  %call90 = call i32 @rtsx_read_register(ptr noundef %chip, i16 noundef zeroext -421, ptr noundef nonnull %val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %tobool91.not = icmp eq i32 %call90, 0
  br i1 %tobool91.not, label %if.end93, label %if.then89.cleanup_crit_edge

if.then89.cleanup_crit_edge:                      ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end93:                                         ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #8
  %85 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %val, align 1
  %.lobit145 = lshr i8 %86, 7
  %87 = zext i8 %.lobit145 to i32
  %auto_delink_en = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 65
  %88 = ptrtoint ptr %auto_delink_en to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %87, ptr %auto_delink_en, align 4
  %89 = ptrtoint ptr %baro_pkg to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %baro_pkg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %90)
  %cmp99 = icmp eq i32 %90, 1
  %lun_mode = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 67
  %. = select i1 %cmp99, i8 2, i8 0
  %91 = ptrtoint ptr %lun_mode to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 %., ptr %lun_mode, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end93, %if.then89.cleanup_crit_edge, %do.end80.cleanup_crit_edge, %if.end51.cleanup_crit_edge, %do.end43.cleanup_crit_edge, %for.cond.i181.cleanup_crit_edge, %for.cond.i166.cleanup_crit_edge, %for.cond.i158.cleanup_crit_edge, %rtsx_write_register.exit.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %rtsx_write_register.exit.cleanup_crit_edge ], [ %call48, %do.end43.cleanup_crit_edge ], [ 1, %if.end51.cleanup_crit_edge ], [ %call90, %if.then89.cleanup_crit_edge ], [ 0, %do.end80.cleanup_crit_edge ], [ 0, %if.end93 ], [ 2, %for.cond.i181.cleanup_crit_edge ], [ 2, %for.cond.i166.cleanup_crit_edge ], [ 2, %for.cond.i158.cleanup_crit_edge ], [ 2, %for.cond.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lval) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtsx_release_chip(ptr noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @xd_free_l2p_tbl(ptr noundef %chip) #6
  tail call void @ms_free_l2p_tbl(ptr noundef %chip) #6
  %card_exist = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 20
  %0 = ptrtoint ptr %card_exist to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %card_exist, align 1
  %card_ready = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 21
  %1 = ptrtoint ptr %card_ready to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %card_ready, align 2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xd_free_l2p_tbl(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ms_free_l2p_tbl(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtsx_polling_func(ptr noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  %val.i.i = alloca i32, align 4
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %rtsx_stat = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 56
  %0 = ptrtoint ptr %rtsx_stat to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rtsx_stat, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.81)
  switch i32 %1, label %if.end4 [
    i32 5, label %entry.return_crit_edge
    i32 4, label %entry.delink_stage_crit_edge
  ]

entry.delink_stage_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %delink_stage

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end4:                                          ; preds = %entry
  %polling_config = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 133
  %3 = ptrtoint ptr %polling_config to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %polling_config, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.end4.if.end6_crit_edge, label %if.then5

if.end4.if.end6_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then5:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #6
  %5 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %val, align 1, !annotation !214
  %6 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chip, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %call = call i32 @pci_read_config_byte(ptr noundef %9, i32 noundef 0, ptr noundef nonnull %val) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #6
  %10 = ptrtoint ptr %rtsx_stat to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pr = load i32, ptr %rtsx_stat, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end4.if.end6_crit_edge
  %11 = phi i32 [ %.pr, %if.then5 ], [ %1, %if.end4.if.end6_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %11)
  %cmp8 = icmp eq i32 %11, 3
  br i1 %cmp8, label %if.end6.return_crit_edge, label %if.end10

if.end6.return_crit_edge:                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end10:                                         ; preds = %if.end6
  %ocp_int.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 18
  %12 = ptrtoint ptr %ocp_int.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ocp_int.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i = icmp eq i32 %13, 0
  br i1 %tobool.not.i, label %if.end10.rtsx_manage_ocp.exit_crit_edge, label %if.end.i

if.end10.rtsx_manage_ocp.exit_crit_edge:          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtsx_manage_ocp.exit

if.end.i:                                         ; preds = %if.end10
  %ocp_stat.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 19
  %14 = ptrtoint ptr %ocp_stat.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %ocp_stat.i, align 1
  %15 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %chip, align 4
  %remap_addr.i.i = getelementptr inbounds %struct.rtsx_dev, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %remap_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %remap_addr.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %18, i32 16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !209
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 5820) #6, !srcloc !210
  br label %for.body.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i
  %inc.i.i = add nuw nsw i32 %i.033.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 1024
  br i1 %exitcond.not.i.i, label %for.cond.i.i.rtsx_read_register.exit.i_crit_edge, label %for.cond.i.i.for.body.i.i_crit_edge

for.cond.i.i.for.body.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

for.cond.i.i.rtsx_read_register.exit.i_crit_edge: ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtsx_read_register.exit.i

for.body.i.i:                                     ; preds = %for.cond.i.i.for.body.i.i_crit_edge, %if.end.i
  %i.033.i.i = phi i32 [ 0, %if.end.i ], [ %inc.i.i, %for.cond.i.i.for.body.i.i_crit_edge ]
  %19 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %chip, align 4
  %remap_addr3.i.i = getelementptr inbounds %struct.rtsx_dev, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %remap_addr3.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %remap_addr3.i.i, align 4
  %add.ptr4.i.i = getelementptr i8, ptr %22, i32 16
  %23 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i.i) #6, !srcloc !207
  %24 = call i32 @llvm.bswap.i32(i32 %23) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !208
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %24)
  %cmp6.i.i = icmp sgt i32 %24, -1
  br i1 %cmp6.i.i, label %for.end.i.i, label %for.cond.i.i

for.end.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv17.i.i = trunc i32 %24 to i8
  %25 = ptrtoint ptr %ocp_stat.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv17.i.i, ptr %ocp_stat.i, align 1
  br label %rtsx_read_register.exit.i

rtsx_read_register.exit.i:                        ; preds = %for.end.i.i, %for.cond.i.i.rtsx_read_register.exit.i_crit_edge
  %card_exist.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 20
  %26 = ptrtoint ptr %card_exist.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %card_exist.i, align 1
  %conv.i = zext i8 %27 to i32
  %and.i = and i32 %conv.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %if.else.i, label %if.then2.i

if.then2.i:                                       ; preds = %rtsx_read_register.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i = call i32 @sd_power_off_card3v3(ptr noundef %chip) #6
  br label %if.end19.i

if.else.i:                                        ; preds = %rtsx_read_register.exit.i
  %and6.i = and i32 %conv.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp eq i32 %and6.i, 0
  br i1 %tobool7.not.i, label %if.else10.i, label %if.then8.i

if.then8.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  %call9.i = call i32 @ms_power_off_card3v3(ptr noundef %chip) #6
  br label %if.end19.i

if.else10.i:                                      ; preds = %if.else.i
  %and13.i = and i32 %conv.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool14.not.i = icmp eq i32 %and13.i, 0
  br i1 %tobool14.not.i, label %if.else10.i.if.end19.i_crit_edge, label %if.then15.i

if.else10.i.if.end19.i_crit_edge:                 ; preds = %if.else10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19.i

if.then15.i:                                      ; preds = %if.else10.i
  call void @__sanitizer_cov_trace_pc() #8
  %call16.i = call i32 @xd_power_off_card3v3(ptr noundef %chip) #6
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.then15.i, %if.else10.i.if.end19.i_crit_edge, %if.then8.i, %if.then2.i
  %28 = ptrtoint ptr %ocp_int.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %ocp_int.i, align 4
  br label %rtsx_manage_ocp.exit

rtsx_manage_ocp.exit:                             ; preds = %if.end19.i, %if.end10.rtsx_manage_ocp.exit_crit_edge
  %sd_erase_status.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 25
  %29 = ptrtoint ptr %sd_erase_status.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %sd_erase_status.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool.not.i43 = icmp eq i8 %30, 0
  br i1 %tobool.not.i43, label %rtsx_manage_ocp.exit.rtsx_manage_sd_lock.exit_crit_edge, label %if.end.i45

rtsx_manage_ocp.exit.rtsx_manage_sd_lock.exit_crit_edge: ; preds = %rtsx_manage_ocp.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtsx_manage_sd_lock.exit

if.end.i45:                                       ; preds = %rtsx_manage_ocp.exit
  %card_exist.i44 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 20
  %31 = ptrtoint ptr %card_exist.i44 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %card_exist.i44, align 1
  %33 = and i8 %32, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool2.not.i = icmp eq i8 %33, 0
  br i1 %tobool2.not.i, label %if.else.i57, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i45
  %34 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %chip, align 4
  %remap_addr.i.i46 = getelementptr inbounds %struct.rtsx_dev, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %remap_addr.i.i46 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %remap_addr.i.i46, align 4
  %add.ptr.i.i47 = getelementptr i8, ptr %37, i32 16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !209
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i47, i32 12477) #6, !srcloc !210
  br label %for.body.i.i55

for.cond.i.i50:                                   ; preds = %for.body.i.i55
  %inc.i.i48 = add nuw nsw i32 %i.033.i.i51, 1
  %exitcond.not.i.i49 = icmp eq i32 %inc.i.i48, 1024
  br i1 %exitcond.not.i.i49, label %for.cond.i.i50.rtsx_manage_sd_lock.exit_crit_edge, label %for.cond.i.i50.for.body.i.i55_crit_edge

for.cond.i.i50.for.body.i.i55_crit_edge:          ; preds = %for.cond.i.i50
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i55

for.cond.i.i50.rtsx_manage_sd_lock.exit_crit_edge: ; preds = %for.cond.i.i50
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtsx_manage_sd_lock.exit

for.body.i.i55:                                   ; preds = %for.cond.i.i50.for.body.i.i55_crit_edge, %if.then3.i
  %i.033.i.i51 = phi i32 [ 0, %if.then3.i ], [ %inc.i.i48, %for.cond.i.i50.for.body.i.i55_crit_edge ]
  %38 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %chip, align 4
  %remap_addr3.i.i52 = getelementptr inbounds %struct.rtsx_dev, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %remap_addr3.i.i52 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %remap_addr3.i.i52, align 4
  %add.ptr4.i.i53 = getelementptr i8, ptr %41, i32 16
  %42 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i.i53) #6, !srcloc !207
  %43 = call i32 @llvm.bswap.i32(i32 %42) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !208
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %43)
  %cmp6.i.i54 = icmp sgt i32 %43, -1
  br i1 %cmp6.i.i54, label %rtsx_read_register.exit.i56, label %for.cond.i.i50

rtsx_read_register.exit.i56:                      ; preds = %for.body.i.i55
  %44 = and i32 %43, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool6.not.i = icmp eq i32 %44, 0
  br i1 %tobool6.not.i, label %rtsx_read_register.exit.i56.rtsx_manage_sd_lock.exit_crit_edge, label %if.then7.i

rtsx_read_register.exit.i56.rtsx_manage_sd_lock.exit_crit_edge: ; preds = %rtsx_read_register.exit.i56
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtsx_manage_sd_lock.exit

if.then7.i:                                       ; preds = %rtsx_read_register.exit.i56
  call void @__sanitizer_cov_trace_pc() #8
  %45 = ptrtoint ptr %sd_erase_status.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 0, ptr %sd_erase_status.i, align 1
  %sd_lock_notify.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 26
  %46 = ptrtoint ptr %sd_lock_notify.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 1, ptr %sd_lock_notify.i, align 2
  %need_reinit.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 16
  %47 = ptrtoint ptr %need_reinit.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %need_reinit.i, align 4
  %or.i = or i32 %48, 4
  store i32 %or.i, ptr %need_reinit.i, align 4
  br label %rtsx_manage_sd_lock.exit

if.else.i57:                                      ; preds = %if.end.i45
  call void @__sanitizer_cov_trace_pc() #8
  %49 = ptrtoint ptr %sd_erase_status.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 0, ptr %sd_erase_status.i, align 1
  br label %rtsx_manage_sd_lock.exit

rtsx_manage_sd_lock.exit:                         ; preds = %if.else.i57, %if.then7.i, %rtsx_read_register.exit.i56.rtsx_manage_sd_lock.exit_crit_edge, %for.cond.i.i50.rtsx_manage_sd_lock.exit_crit_edge, %rtsx_manage_ocp.exit.rtsx_manage_sd_lock.exit_crit_edge
  call void @rtsx_init_cards(ptr noundef %chip) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #6
  %50 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 -1, ptr %val.i.i, align 4, !annotation !214
  %ss_en.i.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 66
  %51 = ptrtoint ptr %ss_en.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %ss_en.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool.not.i.i = icmp eq i32 %52, 0
  br i1 %tobool.not.i.i, label %rtsx_manage_sd_lock.exit.rtsx_is_ss_allowed.exit.thread.i_crit_edge, label %lor.lhs.false.i.i

rtsx_manage_sd_lock.exit.rtsx_is_ss_allowed.exit.thread.i_crit_edge: ; preds = %rtsx_manage_sd_lock.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtsx_is_ss_allowed.exit.thread.i

lor.lhs.false.i.i:                                ; preds = %rtsx_manage_sd_lock.exit
  %product_id.i.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 58
  %53 = ptrtoint ptr %product_id.i.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %product_id.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 21128, i16 %54)
  %cmp.i.i = icmp eq i16 %54, 21128
  br i1 %cmp.i.i, label %lor.lhs.false.i.i.rtsx_is_ss_allowed.exit.thread.i_crit_edge, label %if.end.i.i

lor.lhs.false.i.i.rtsx_is_ss_allowed.exit.thread.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtsx_is_ss_allowed.exit.thread.i

if.end.i.i:                                       ; preds = %lor.lhs.false.i.i
  %sdio_func_exist.i.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 77
  %55 = ptrtoint ptr %sdio_func_exist.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %sdio_func_exist.i.i, align 4
  %57 = and i32 %56, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %57)
  %58 = icmp eq i32 %57, 1
  br i1 %58, label %if.then6.i.i, label %if.end.i.i.lor.lhs.false.i_crit_edge

if.end.i.i.lor.lhs.false.i_crit_edge:             ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false.i

if.then6.i.i:                                     ; preds = %if.end.i.i
  %call.i.i = call i32 @rtsx_read_cfg_dw(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext 4, ptr noundef nonnull %val.i.i) #6
  %59 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %val.i.i, align 4
  %and7.i.i = and i32 %60, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i.i)
  %tobool8.not.i.i = icmp eq i32 %and7.i.i, 0
  br i1 %tobool8.not.i.i, label %if.then6.i.i.lor.lhs.false.i_crit_edge, label %if.then6.i.i.rtsx_is_ss_allowed.exit.thread.i_crit_edge

if.then6.i.i.rtsx_is_ss_allowed.exit.thread.i_crit_edge: ; preds = %if.then6.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtsx_is_ss_allowed.exit.thread.i

if.then6.i.i.lor.lhs.false.i_crit_edge:           ; preds = %if.then6.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false.i

rtsx_is_ss_allowed.exit.thread.i:                 ; preds = %if.then6.i.i.rtsx_is_ss_allowed.exit.thread.i_crit_edge, %lor.lhs.false.i.i.rtsx_is_ss_allowed.exit.thread.i_crit_edge, %rtsx_manage_sd_lock.exit.rtsx_is_ss_allowed.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #6
  br label %rtsx_manage_ss.exit

lor.lhs.false.i:                                  ; preds = %if.then6.i.i.lor.lhs.false.i_crit_edge, %if.end.i.i.lor.lhs.false.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #6
  %sd_io.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 51
  %61 = ptrtoint ptr %sd_io.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %sd_io.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool.not.i58 = icmp eq i8 %62, 0
  br i1 %tobool.not.i58, label %if.end.i59, label %lor.lhs.false.i.rtsx_manage_ss.exit_crit_edge

lor.lhs.false.i.rtsx_manage_ss.exit_crit_edge:    ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtsx_manage_ss.exit

if.end.i59:                                       ; preds = %lor.lhs.false.i
  %63 = ptrtoint ptr %rtsx_stat to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %rtsx_stat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %64)
  %cmp.not.i = icmp eq i32 %64, 1
  %ss_counter4.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 54
  br i1 %cmp.not.i, label %if.end3.i, label %if.then2.i60

if.then2.i60:                                     ; preds = %if.end.i59
  call void @__sanitizer_cov_trace_pc() #8
  %65 = ptrtoint ptr %ss_counter4.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 0, ptr %ss_counter4.i, align 4
  br label %rtsx_manage_ss.exit

if.end3.i:                                        ; preds = %if.end.i59
  %66 = ptrtoint ptr %ss_counter4.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %ss_counter4.i, align 4
  %ss_idle_period.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 84
  %68 = ptrtoint ptr %ss_idle_period.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %ss_idle_period.i, align 4
  %div.i = sdiv i32 %69, 30
  call void @__sanitizer_cov_trace_cmp4(i32 %67, i32 %div.i)
  %cmp5.i = icmp slt i32 %67, %div.i
  br i1 %cmp5.i, label %if.then7.i61, label %if.else.i62

if.then7.i61:                                     ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #8
  %inc.i = add nsw i32 %67, 1
  %70 = ptrtoint ptr %ss_counter4.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %inc.i, ptr %ss_counter4.i, align 4
  br label %rtsx_manage_ss.exit

if.else.i62:                                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #8
  %71 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %chip, align 4
  %reg_lock.i.i = getelementptr inbounds %struct.rtsx_dev, ptr %72, i32 0, i32 4
  call void @_raw_spin_lock(ptr noundef %reg_lock.i.i) #6
  call void @rtsx_enter_ss(ptr noundef %chip) #6
  call void @_raw_spin_unlock(ptr noundef %reg_lock.i.i) #6
  br label %rtsx_manage_ss.exit

rtsx_manage_ss.exit:                              ; preds = %if.else.i62, %if.then7.i61, %if.then2.i60, %lor.lhs.false.i.rtsx_manage_ss.exit_crit_edge, %rtsx_is_ss_allowed.exit.thread.i
  call fastcc void @rtsx_manage_aspm(ptr noundef %chip)
  call fastcc void @rtsx_manage_idle(ptr noundef %chip)
  %73 = ptrtoint ptr %rtsx_stat to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %rtsx_stat, align 4
  %75 = zext i32 %74 to i64
  call void @__sanitizer_cov_trace_switch(i64 %75, ptr @__sancov_gen_cov_switch_values.82)
  switch i32 %74, label %rtsx_manage_ss.exit.sw.epilog_crit_edge [
    i32 2, label %sw.bb
    i32 1, label %sw.bb12
  ]

rtsx_manage_ss.exit.sw.epilog_crit_edge:          ; preds = %rtsx_manage_ss.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %rtsx_manage_ss.exit
  %card_exist.i63 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 20
  %76 = ptrtoint ptr %card_exist.i63 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %card_exist.i63, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %tobool.not.i64 = icmp eq i8 %77, 0
  br i1 %tobool.not.i64, label %sw.bb.rtsx_blink_led.exit_crit_edge, label %land.lhs.true.i

sw.bb.rtsx_blink_led.exit_crit_edge:              ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtsx_blink_led.exit

land.lhs.true.i:                                  ; preds = %sw.bb
  %blink_led.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 141
  %78 = ptrtoint ptr %blink_led.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %blink_led.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %79)
  %tobool2.not.i65 = icmp eq i8 %79, 0
  br i1 %tobool2.not.i65, label %land.lhs.true.i.rtsx_blink_led.exit_crit_edge, label %if.then.i

land.lhs.true.i.rtsx_blink_led.exit_crit_edge:    ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtsx_blink_led.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  %led_toggle_counter.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 26
  %80 = ptrtoint ptr %led_toggle_counter.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %led_toggle_counter.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %81)
  %cmp.i = icmp slt i32 %81, 6
  br i1 %cmp.i, label %if.then4.i, label %if.else.i67

if.then4.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %inc.i66 = add nsw i32 %81, 1
  %82 = ptrtoint ptr %led_toggle_counter.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %inc.i66, ptr %led_toggle_counter.i, align 4
  br label %rtsx_blink_led.exit

if.else.i67:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %83 = ptrtoint ptr %led_toggle_counter.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 0, ptr %led_toggle_counter.i, align 4
  call void @toggle_gpio(ptr noundef %chip, i8 noundef zeroext 0) #6
  br label %rtsx_blink_led.exit

rtsx_blink_led.exit:                              ; preds = %if.else.i67, %if.then4.i, %land.lhs.true.i.rtsx_blink_led.exit_crit_edge, %sw.bb.rtsx_blink_led.exit_crit_edge
  call void @do_remaining_work(ptr noundef %chip) #6
  br label %sw.epilog

sw.bb12:                                          ; preds = %rtsx_manage_ss.exit
  %sd_io = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 51
  %84 = ptrtoint ptr %sd_io to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %sd_io, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %85)
  %tobool13.not = icmp eq i8 %85, 0
  br i1 %tobool13.not, label %sw.bb12.if.end16_crit_edge, label %land.lhs.true

sw.bb12.if.end16_crit_edge:                       ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

land.lhs.true:                                    ; preds = %sw.bb12
  %sd_int = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 52
  %86 = ptrtoint ptr %sd_int to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %sd_int, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %tobool14.not = icmp eq i8 %87, 0
  br i1 %tobool14.not, label %if.then15, label %land.lhs.true.if.end16_crit_edge

land.lhs.true.if.end16_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

if.then15:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  call void @try_to_switch_sdio_ctrl(ptr noundef %chip) #6
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %land.lhs.true.if.end16_crit_edge, %sw.bb12.if.end16_crit_edge
  call void @rtsx_enable_aspm(ptr noundef %chip)
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end16, %rtsx_blink_led.exit, %rtsx_manage_ss.exit.sw.epilog_crit_edge
  %lun_mode = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 67
  %88 = ptrtoint ptr %lun_mode to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %lun_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %89)
  %cmp18 = icmp eq i8 %89, 1
  br i1 %cmp18, label %if.then20, label %if.else

if.then20:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  call fastcc void @rtsx_manage_2lun_mode(ptr noundef %chip)
  br label %delink_stage

if.else:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  call fastcc void @rtsx_manage_1lun_mode(ptr noundef %chip)
  br label %delink_stage

delink_stage:                                     ; preds = %if.else, %if.then20, %entry.delink_stage_crit_edge
  call fastcc void @rtsx_delink_stage(ptr noundef %chip)
  br label %return

return:                                           ; preds = %delink_stage, %if.end6.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_byte(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtsx_init_cards(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rtsx_manage_aspm(ptr noundef %chip) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %product_id = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 58
  %0 = ptrtoint ptr %product_id to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %product_id, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 21000, i16 %1)
  %cmp = icmp eq i16 %1, 21000
  br i1 %cmp, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call fastcc void @rtsx_monitor_aspm_config(ptr noundef %chip)
  %sdio_func_exist = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 77
  %2 = ptrtoint ptr %sdio_func_exist to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sdio_func_exist, align 4
  %4 = and i32 %3, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %lor.lhs.false5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false5:                                   ; preds = %if.end
  %aspm_l0s_l1_en = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 68
  %6 = ptrtoint ptr %aspm_l0s_l1_en to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %aspm_l0s_l1_en, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool6.not = icmp eq i8 %7, 0
  br i1 %tobool6.not, label %lor.lhs.false5.cleanup_crit_edge, label %lor.lhs.false7

lor.lhs.false5.cleanup_crit_edge:                 ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false7:                                   ; preds = %lor.lhs.false5
  %dynamic_aspm = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 85
  %8 = ptrtoint ptr %dynamic_aspm to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dynamic_aspm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool8.not = icmp eq i32 %9, 0
  br i1 %tobool8.not, label %lor.lhs.false7.cleanup_crit_edge, label %if.end10

lor.lhs.false7.cleanup_crit_edge:                 ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end10:                                         ; preds = %lor.lhs.false7
  %sd_io = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 51
  %10 = ptrtoint ptr %sd_io to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %sd_io, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool11.not = icmp eq i8 %11, 0
  br i1 %tobool11.not, label %if.end13, label %if.then12

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @dynamic_configure_sdio_aspm(ptr noundef %chip) #6
  br label %cleanup

if.end13:                                         ; preds = %if.end10
  %sdio_aspm = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 47
  %12 = ptrtoint ptr %sdio_aspm to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sdio_aspm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool14.not = icmp eq i32 %13, 0
  br i1 %tobool14.not, label %do.body, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %if.end13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtsx_manage_aspm.__UNIQUE_ID_ddebug320, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtsx_manage_aspm, %if.then20)) #6
          to label %do.end [label %if.then20], !srcloc !211

if.then20:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %chip, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtsx_manage_aspm.__UNIQUE_ID_ddebug320, ptr noundef %dev.i, ptr noundef nonnull @.str.60) #6
  br label %do.end

do.end:                                           ; preds = %if.then20, %do.body
  %arrayidx = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 62, i32 1
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx, align 1
  %shl = shl i8 %19, 2
  %or = or i8 %shl, 48
  %call25 = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -425, i8 noundef zeroext -4, i8 noundef zeroext %or)
  %20 = ptrtoint ptr %sdio_aspm to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %sdio_aspm, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end13.cleanup_crit_edge, %if.then12, %lor.lhs.false7.cleanup_crit_edge, %lor.lhs.false5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rtsx_manage_idle(ptr noundef %chip) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %idle_counter = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 55
  %0 = ptrtoint ptr %idle_counter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %idle_counter, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %1)
  %cmp = icmp slt i32 %1, 10
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %inc = add nsw i32 %1, 1
  %2 = ptrtoint ptr %idle_counter to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %inc, ptr %idle_counter, align 4
  br label %if.end20

if.end:                                           ; preds = %entry
  %rtsx_stat = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 56
  %3 = ptrtoint ptr %rtsx_stat to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %rtsx_stat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp2 = icmp eq i32 %4, 1
  br i1 %cmp2, label %if.end.if.end20_crit_edge, label %do.body

if.end.if.end20_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtsx_manage_idle.__UNIQUE_ID_ddebug321, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtsx_manage_idle, %if.then7)) #6
          to label %do.body10 [label %if.then7], !srcloc !211

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %chip, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtsx_manage_idle.__UNIQUE_ID_ddebug321, ptr noundef %dev.i, ptr noundef nonnull @.str.62) #6
  br label %do.body10

do.body10:                                        ; preds = %if.then7, %do.body
  %9 = ptrtoint ptr %rtsx_stat to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %rtsx_stat, align 4
  %led_toggle_counter = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 26
  %10 = ptrtoint ptr %led_toggle_counter to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %led_toggle_counter, align 4
  %call13 = tail call i32 @rtsx_force_power_on(ptr noundef %chip, i8 noundef zeroext 1)
  tail call void @turn_off_led(ptr noundef %chip, i8 noundef zeroext 0) #6
  %auto_power_down = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 122
  %11 = ptrtoint ptr %auto_power_down to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %auto_power_down, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool14.not = icmp eq i32 %12, 0
  br i1 %tobool14.not, label %do.body10.if.end20_crit_edge, label %land.lhs.true

do.body10.if.end20_crit_edge:                     ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

land.lhs.true:                                    ; preds = %do.body10
  %card_ready = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 21
  %13 = ptrtoint ptr %card_ready to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %card_ready, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool15.not = icmp eq i8 %14, 0
  br i1 %tobool15.not, label %land.lhs.true16, label %land.lhs.true.if.end20_crit_edge

land.lhs.true.if.end20_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

land.lhs.true16:                                  ; preds = %land.lhs.true
  %sd_io = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 51
  %15 = ptrtoint ptr %sd_io to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %sd_io, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool17.not = icmp eq i8 %16, 0
  br i1 %tobool17.not, label %if.then18, label %land.lhs.true16.if.end20_crit_edge

land.lhs.true16.if.end20_crit_edge:               ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

if.then18:                                        ; preds = %land.lhs.true16
  %lun_mode.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 67
  %17 = ptrtoint ptr %lun_mode.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %lun_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %18)
  %cmp.i = icmp eq i8 %18, 1
  %or5.i.i = select i1 %cmp.i, i32 -67107065, i32 -67108093
  %19 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %chip, align 4
  %remap_addr.i.i = getelementptr inbounds %struct.rtsx_dev, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %remap_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %remap_addr.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %22, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !209
  tail call void @arm_heavy_mb() #6
  %23 = tail call i32 @llvm.bswap.i32(i32 %or5.i.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %23) #6, !srcloc !210
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.then18
  %i.029.i.i = phi i32 [ 0, %if.then18 ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %24 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %chip, align 4
  %remap_addr8.i.i = getelementptr inbounds %struct.rtsx_dev, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %remap_addr8.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %remap_addr8.i.i, align 4
  %add.ptr9.i.i = getelementptr i8, ptr %27, i32 16
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i.i) #6, !srcloc !207
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !208
  %.mask = and i32 %28, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask)
  %cmp11.i.i = icmp eq i32 %.mask, 0
  %inc.i.i = add nuw nsw i32 %i.029.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %inc.i.i)
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 1024
  %or.cond = select i1 %cmp11.i.i, i1 true, i1 %exitcond.not.i.i
  br i1 %or.cond, label %for.body.i.i.if.end20_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

for.body.i.i.if.end20_crit_edge:                  ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

if.end20:                                         ; preds = %for.body.i.i.if.end20_crit_edge, %land.lhs.true16.if.end20_crit_edge, %land.lhs.true.if.end20_crit_edge, %do.body10.if.end20_crit_edge, %if.end.if.end20_crit_edge, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_remaining_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @try_to_switch_sdio_ctrl(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtsx_enable_aspm(ptr nocapture noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %aspm_l0s_l1_en = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 68
  %0 = ptrtoint ptr %aspm_l0s_l1_en to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %aspm_l0s_l1_en, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end42_crit_edge, label %land.lhs.true

entry.if.end42_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end42

land.lhs.true:                                    ; preds = %entry
  %dynamic_aspm = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 85
  %2 = ptrtoint ptr %dynamic_aspm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dynamic_aspm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %land.lhs.true.if.end42_crit_edge, label %land.lhs.true2

land.lhs.true.if.end42_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end42

land.lhs.true2:                                   ; preds = %land.lhs.true
  %aspm_enabled = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 46
  %4 = ptrtoint ptr %aspm_enabled to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %aspm_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool3.not = icmp eq i32 %5, 0
  br i1 %tobool3.not, label %do.body, label %land.lhs.true2.if.end42_crit_edge

land.lhs.true2.if.end42_crit_edge:                ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end42

do.body:                                          ; preds = %land.lhs.true2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtsx_enable_aspm.__UNIQUE_ID_ddebug344, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtsx_enable_aspm, %if.then7)) #6
          to label %do.end [label %if.then7], !srcloc !211

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chip, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtsx_enable_aspm.__UNIQUE_ID_ddebug344, ptr noundef %dev.i, ptr noundef nonnull @.str.45) #6
  br label %do.end

do.end:                                           ; preds = %if.then7, %do.body
  %10 = ptrtoint ptr %aspm_enabled to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %aspm_enabled, align 4
  %asic_code = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 74
  %11 = ptrtoint ptr %asic_code to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %asic_code, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool10.not = icmp eq i32 %12, 0
  br i1 %tobool10.not, label %do.end.if.end16_crit_edge, label %land.lhs.true11

do.end.if.end16_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

land.lhs.true11:                                  ; preds = %do.end
  %product_id = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 58
  %13 = ptrtoint ptr %product_id to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %product_id, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 21000, i16 %14)
  %cmp = icmp eq i16 %14, 21000
  br i1 %cmp, label %if.then14, label %land.lhs.true11.if.end16_crit_edge

land.lhs.true11.if.end16_crit_edge:               ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

if.then14:                                        ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #8
  %call15 = tail call i32 @rtsx_write_phy_register(ptr noundef %chip, i8 noundef zeroext 7, i16 noundef zeroext 0)
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %land.lhs.true11.if.end16_crit_edge, %do.end.if.end16_crit_edge
  %product_id17 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 58
  %15 = ptrtoint ptr %product_id17 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %product_id17, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 21000, i16 %16)
  %cmp19 = icmp eq i16 %16, 21000
  br i1 %cmp19, label %if.then21, label %if.else

if.then21:                                        ; preds = %if.end16
  %aspm_level = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 62
  %17 = ptrtoint ptr %aspm_level to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %aspm_level, align 4
  %conv4.i = zext i8 %18 to i32
  %or5.i = or i32 %conv4.i, -27790544
  %19 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %chip, align 4
  %remap_addr.i = getelementptr inbounds %struct.rtsx_dev, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %22, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !209
  tail call void @arm_heavy_mb() #6
  %23 = tail call i32 @llvm.bswap.i32(i32 %or5.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %23) #6, !srcloc !210
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then21
  %i.029.i = phi i32 [ 0, %if.then21 ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %24 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %chip, align 4
  %remap_addr8.i = getelementptr inbounds %struct.rtsx_dev, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %remap_addr8.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %remap_addr8.i, align 4
  %add.ptr9.i = getelementptr i8, ptr %27, i32 16
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i) #6, !srcloc !207
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !208
  %.mask = and i32 %28, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask)
  %cmp11.i = icmp eq i32 %.mask, 0
  %inc.i = add nuw nsw i32 %i.029.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %inc.i)
  %exitcond.not.i = icmp eq i32 %inc.i, 1024
  %or.cond = select i1 %cmp11.i, i1 true, i1 %exitcond.not.i
  br i1 %or.cond, label %for.body.i.if.end27_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.body.i.if.end27_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27

if.else:                                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  %29 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %chip, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 4
  %33 = ptrtoint ptr %aspm_l0s_l1_en to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %aspm_l0s_l1_en, align 1
  %call26 = tail call i32 @pci_write_config_byte(ptr noundef %32, i32 noundef 128, i8 noundef zeroext %34) #6
  br label %if.end27

if.end27:                                         ; preds = %if.else, %for.body.i.if.end27_crit_edge
  %sdio_func_exist = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 77
  %35 = ptrtoint ptr %sdio_func_exist to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %sdio_func_exist, align 4
  %and = and i32 %36, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool28.not = icmp eq i32 %and, 0
  br i1 %tobool28.not, label %if.end27.if.end42_crit_edge, label %if.then29

if.end27.if.end42_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end42

if.then29:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  %37 = ptrtoint ptr %aspm_l0s_l1_en to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %aspm_l0s_l1_en, align 1
  %conv31 = zext i8 %38 to i32
  %or32 = or i32 %conv31, 256
  %39 = ptrtoint ptr %product_id17 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %product_id17, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 21128, i16 %40)
  %cmp36 = icmp eq i16 %40, 21128
  %conv38 = select i1 %cmp36, i8 2, i8 1
  %call40 = tail call i32 @rtsx_write_cfg_dw(ptr noundef %chip, i8 noundef zeroext %conv38, i16 noundef zeroext 192, i32 noundef 4095, i32 noundef %or32)
  br label %if.end42

if.end42:                                         ; preds = %if.then29, %if.end27.if.end42_crit_edge, %land.lhs.true2.if.end42_crit_edge, %land.lhs.true.if.end42_crit_edge, %entry.if.end42_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rtsx_manage_2lun_mode(ptr noundef %chip) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ocp_stat = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 19
  %0 = ptrtoint ptr %ocp_stat to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ocp_stat, align 4
  %and = and i8 %1, 6
  %2 = and i8 %1, 96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and)
  %tobool.not = icmp eq i8 %and, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool8.not = icmp eq i8 %2, 0
  %3 = and i8 %1, 102
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %entry.if.end16_crit_edge, label %do.body

entry.if.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtsx_manage_2lun_mode.__UNIQUE_ID_ddebug322, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtsx_manage_2lun_mode, %if.then12)) #6
          to label %if.end16 [label %if.then12], !srcloc !211

if.then12:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %chip, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 44
  %9 = ptrtoint ptr %ocp_stat to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %ocp_stat, align 4
  %conv15 = zext i8 %10 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtsx_manage_2lun_mode.__UNIQUE_ID_ddebug322, ptr noundef %dev.i, ptr noundef nonnull @.str.64, i32 noundef %conv15) #6
  br label %if.end16

if.end16:                                         ; preds = %if.then12, %do.body, %entry.if.end16_crit_edge
  br i1 %tobool.not, label %if.end16.if.end27_crit_edge, label %land.lhs.true

if.end16.if.end27_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27

land.lhs.true:                                    ; preds = %if.end16
  %card_exist = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 20
  %11 = ptrtoint ptr %card_exist to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %card_exist, align 1
  %13 = and i8 %12, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool21.not = icmp eq i8 %13, 0
  br i1 %tobool21.not, label %land.lhs.true.if.end27_crit_edge, label %if.then22

land.lhs.true.if.end27_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27

if.then22:                                        ; preds = %land.lhs.true
  %14 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %chip, align 4
  %remap_addr.i = getelementptr inbounds %struct.rtsx_dev, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %17, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !209
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 284157) #6, !srcloc !210
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then22
  %i.029.i = phi i32 [ 0, %if.then22 ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %18 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %chip, align 4
  %remap_addr8.i = getelementptr inbounds %struct.rtsx_dev, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %remap_addr8.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %remap_addr8.i, align 4
  %add.ptr9.i = getelementptr i8, ptr %21, i32 16
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i) #6, !srcloc !207
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !208
  %.mask = and i32 %22, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask)
  %cmp11.i = icmp eq i32 %.mask, 0
  %inc.i = add nuw nsw i32 %i.029.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %inc.i)
  %exitcond.not.i = icmp eq i32 %inc.i, 1024
  %or.cond = select i1 %cmp11.i, i1 true, i1 %exitcond.not.i
  br i1 %or.cond, label %rtsx_write_register.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

rtsx_write_register.exit:                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %call24 = tail call i32 @card_power_off(ptr noundef %chip, i8 noundef zeroext 4) #6
  %card_fail = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 22
  %23 = ptrtoint ptr %card_fail to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %card_fail, align 1
  %25 = or i8 %24, 4
  store i8 %25, ptr %card_fail, align 1
  br label %if.end27

if.end27:                                         ; preds = %rtsx_write_register.exit, %land.lhs.true.if.end27_crit_edge, %if.end16.if.end27_crit_edge
  br i1 %tobool8.not, label %if.end27.if.end42_crit_edge, label %land.lhs.true30

if.end27.if.end42_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end42

land.lhs.true30:                                  ; preds = %if.end27
  %card_exist31 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 20
  %26 = ptrtoint ptr %card_exist31 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %card_exist31, align 1
  %28 = and i8 %27, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool34.not = icmp eq i8 %28, 0
  br i1 %tobool34.not, label %land.lhs.true30.if.end42_crit_edge, label %if.then35

land.lhs.true30.if.end42_crit_edge:               ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end42

if.then35:                                        ; preds = %land.lhs.true30
  %29 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %chip, align 4
  %remap_addr.i57 = getelementptr inbounds %struct.rtsx_dev, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %remap_addr.i57 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %remap_addr.i57, align 4
  %add.ptr.i58 = getelementptr i8, ptr %32, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !209
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i58, i32 546301) #6, !srcloc !210
  br label %for.body.i66

for.body.i66:                                     ; preds = %for.body.i66.for.body.i66_crit_edge, %if.then35
  %i.029.i62 = phi i32 [ 0, %if.then35 ], [ %inc.i59, %for.body.i66.for.body.i66_crit_edge ]
  %33 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %chip, align 4
  %remap_addr8.i63 = getelementptr inbounds %struct.rtsx_dev, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %remap_addr8.i63 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %remap_addr8.i63, align 4
  %add.ptr9.i64 = getelementptr i8, ptr %36, i32 16
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i64) #6, !srcloc !207
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !208
  %.mask74 = and i32 %37, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask74)
  %cmp11.i65 = icmp eq i32 %.mask74, 0
  %inc.i59 = add nuw nsw i32 %i.029.i62, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %inc.i59)
  %exitcond.not.i60 = icmp eq i32 %inc.i59, 1024
  %or.cond75 = select i1 %cmp11.i65, i1 true, i1 %exitcond.not.i60
  br i1 %or.cond75, label %rtsx_write_register.exit72, label %for.body.i66.for.body.i66_crit_edge

for.body.i66.for.body.i66_crit_edge:              ; preds = %for.body.i66
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i66

rtsx_write_register.exit72:                       ; preds = %for.body.i66
  call void @__sanitizer_cov_trace_pc() #8
  %call37 = tail call i32 @card_power_off(ptr noundef %chip, i8 noundef zeroext 8) #6
  %card_fail38 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 22
  %38 = ptrtoint ptr %card_fail38 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %card_fail38, align 1
  %40 = or i8 %39, 8
  store i8 %40, ptr %card_fail38, align 1
  br label %if.end42

if.end42:                                         ; preds = %rtsx_write_register.exit72, %land.lhs.true30.if.end42_crit_edge, %if.end27.if.end42_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rtsx_manage_1lun_mode(ptr noundef %chip) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ocp_stat = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 19
  %0 = ptrtoint ptr %ocp_stat to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ocp_stat, align 4
  %2 = and i8 %1, 6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %do.body

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtsx_manage_1lun_mode.__UNIQUE_ID_ddebug323, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtsx_manage_1lun_mode, %if.then4)) #6
          to label %do.end [label %if.then4], !srcloc !211

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %chip, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44
  %7 = ptrtoint ptr %ocp_stat to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %ocp_stat, align 4
  %conv7 = zext i8 %8 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtsx_manage_1lun_mode.__UNIQUE_ID_ddebug323, ptr noundef %dev.i, ptr noundef nonnull @.str.64, i32 noundef %conv7) #6
  br label %do.end

do.end:                                           ; preds = %if.then4, %do.body
  %card_exist = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 20
  %9 = ptrtoint ptr %card_exist to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %card_exist, align 1
  %conv9 = zext i8 %10 to i32
  %and10 = and i32 %conv9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.else, label %if.then12

if.then12:                                        ; preds = %do.end
  %11 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %chip, align 4
  %remap_addr.i = getelementptr inbounds %struct.rtsx_dev, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %14, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !209
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 284157) #6, !srcloc !210
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then12
  %i.029.i = phi i32 [ 0, %if.then12 ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %15 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %chip, align 4
  %remap_addr8.i = getelementptr inbounds %struct.rtsx_dev, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %remap_addr8.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %remap_addr8.i, align 4
  %add.ptr9.i = getelementptr i8, ptr %18, i32 16
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i) #6, !srcloc !207
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !208
  %.mask = and i32 %19, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask)
  %cmp11.i = icmp eq i32 %.mask, 0
  %inc.i = add nuw nsw i32 %i.029.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %inc.i)
  %exitcond.not.i = icmp eq i32 %inc.i, 1024
  %or.cond = select i1 %cmp11.i, i1 true, i1 %exitcond.not.i
  br i1 %or.cond, label %for.body.i.if.end39.sink.split_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.body.i.if.end39.sink.split_crit_edge:         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39.sink.split

if.else:                                          ; preds = %do.end
  %and18 = and i32 %conv9, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.else26, label %if.then20

if.then20:                                        ; preds = %if.else
  %20 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %chip, align 4
  %remap_addr.i54 = getelementptr inbounds %struct.rtsx_dev, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %remap_addr.i54 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %remap_addr.i54, align 4
  %add.ptr.i55 = getelementptr i8, ptr %23, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !209
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i55, i32 546301) #6, !srcloc !210
  br label %for.body.i63

for.body.i63:                                     ; preds = %for.body.i63.for.body.i63_crit_edge, %if.then20
  %i.029.i59 = phi i32 [ 0, %if.then20 ], [ %inc.i56, %for.body.i63.for.body.i63_crit_edge ]
  %24 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %chip, align 4
  %remap_addr8.i60 = getelementptr inbounds %struct.rtsx_dev, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %remap_addr8.i60 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %remap_addr8.i60, align 4
  %add.ptr9.i61 = getelementptr i8, ptr %27, i32 16
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i61) #6, !srcloc !207
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !208
  %.mask87 = and i32 %28, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask87)
  %cmp11.i62 = icmp eq i32 %.mask87, 0
  %inc.i56 = add nuw nsw i32 %i.029.i59, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %inc.i56)
  %exitcond.not.i57 = icmp eq i32 %inc.i56, 1024
  %or.cond89 = select i1 %cmp11.i62, i1 true, i1 %exitcond.not.i57
  br i1 %or.cond89, label %for.body.i63.if.end39.sink.split_crit_edge, label %for.body.i63.for.body.i63_crit_edge

for.body.i63.for.body.i63_crit_edge:              ; preds = %for.body.i63
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i63

for.body.i63.if.end39.sink.split_crit_edge:       ; preds = %for.body.i63
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39.sink.split

if.else26:                                        ; preds = %if.else
  %and29 = and i32 %conv9, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %if.else26.if.end39_crit_edge, label %if.then31

if.else26.if.end39_crit_edge:                     ; preds = %if.else26
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39

if.then31:                                        ; preds = %if.else26
  %29 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %chip, align 4
  %remap_addr.i70 = getelementptr inbounds %struct.rtsx_dev, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %remap_addr.i70 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %remap_addr.i70, align 4
  %add.ptr.i71 = getelementptr i8, ptr %32, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !209
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i71, i32 153085) #6, !srcloc !210
  br label %for.body.i79

for.body.i79:                                     ; preds = %for.body.i79.for.body.i79_crit_edge, %if.then31
  %i.029.i75 = phi i32 [ 0, %if.then31 ], [ %inc.i72, %for.body.i79.for.body.i79_crit_edge ]
  %33 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %chip, align 4
  %remap_addr8.i76 = getelementptr inbounds %struct.rtsx_dev, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %remap_addr8.i76 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %remap_addr8.i76, align 4
  %add.ptr9.i77 = getelementptr i8, ptr %36, i32 16
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i77) #6, !srcloc !207
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !208
  %.mask88 = and i32 %37, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask88)
  %cmp11.i78 = icmp eq i32 %.mask88, 0
  %inc.i72 = add nuw nsw i32 %i.029.i75, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %inc.i72)
  %exitcond.not.i73 = icmp eq i32 %inc.i72, 1024
  %or.cond90 = select i1 %cmp11.i78, i1 true, i1 %exitcond.not.i73
  br i1 %or.cond90, label %for.body.i79.if.end39.sink.split_crit_edge, label %for.body.i79.for.body.i79_crit_edge

for.body.i79.for.body.i79_crit_edge:              ; preds = %for.body.i79
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i79

for.body.i79.if.end39.sink.split_crit_edge:       ; preds = %for.body.i79
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39.sink.split

if.end39.sink.split:                              ; preds = %for.body.i79.if.end39.sink.split_crit_edge, %for.body.i63.if.end39.sink.split_crit_edge, %for.body.i.if.end39.sink.split_crit_edge
  %.sink92 = phi i8 [ 16, %for.body.i79.if.end39.sink.split_crit_edge ], [ 8, %for.body.i63.if.end39.sink.split_crit_edge ], [ 4, %for.body.i.if.end39.sink.split_crit_edge ]
  %card_fail = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 22
  %38 = ptrtoint ptr %card_fail to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %card_fail, align 1
  %40 = or i8 %39, %.sink92
  store i8 %40, ptr %card_fail, align 1
  br label %if.end39

if.end39:                                         ; preds = %if.end39.sink.split, %if.else26.if.end39_crit_edge
  %call40 = tail call i32 @card_power_off(ptr noundef %chip, i8 noundef zeroext 4) #6
  br label %return

return:                                           ; preds = %if.end39, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rtsx_delink_stage(ptr nocapture noundef %chip) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %auto_delink_en = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 65
  %0 = ptrtoint ptr %auto_delink_en to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %auto_delink_en, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %auto_delink_allowed = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 45
  %2 = ptrtoint ptr %auto_delink_allowed to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %auto_delink_allowed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false2

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %card_ready = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 21
  %4 = ptrtoint ptr %card_ready to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %card_ready, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool3.not = icmp eq i8 %5, 0
  br i1 %tobool3.not, label %lor.lhs.false4, label %lor.lhs.false2.if.then_crit_edge

lor.lhs.false2.if.then_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %card_ejected = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 23
  %6 = ptrtoint ptr %card_ejected to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %card_ejected, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool6.not = icmp eq i8 %7, 0
  br i1 %tobool6.not, label %lor.lhs.false7, label %lor.lhs.false4.if.then_crit_edge

lor.lhs.false4.if.then_crit_edge:                 ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

lor.lhs.false7:                                   ; preds = %lor.lhs.false4
  %sd_io = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 51
  %8 = ptrtoint ptr %sd_io to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %sd_io, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool9.not = icmp eq i8 %9, 0
  br i1 %tobool9.not, label %if.end, label %lor.lhs.false7.if.then_crit_edge

lor.lhs.false7.if.then_crit_edge:                 ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false7.if.then_crit_edge, %lor.lhs.false4.if.then_crit_edge, %lor.lhs.false2.if.then_crit_edge, %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %auto_delink_cnt = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 44
  %10 = ptrtoint ptr %auto_delink_cnt to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %auto_delink_cnt, align 4
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false7
  %auto_delink_in_L1 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 138
  %11 = ptrtoint ptr %auto_delink_in_L1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %auto_delink_in_L1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool10.not = icmp eq i32 %12, 0
  br i1 %tobool10.not, label %if.end.land.end_crit_edge, label %land.rhs

if.end.land.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.end

land.rhs:                                         ; preds = %if.end
  %aspm_l0s_l1_en = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 68
  %13 = ptrtoint ptr %aspm_l0s_l1_en to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %aspm_l0s_l1_en, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool12.not = icmp eq i8 %14, 0
  br i1 %tobool12.not, label %lor.rhs, label %land.rhs.land.end_crit_edge

land.rhs.land.end_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.end

lor.rhs:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  %ss_en = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 66
  %15 = ptrtoint ptr %ss_en to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ss_en, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool13 = icmp ne i32 %16, 0
  br label %land.end

land.end:                                         ; preds = %lor.rhs, %land.rhs.land.end_crit_edge, %if.end.land.end_crit_edge
  %17 = phi i1 [ false, %if.end.land.end_crit_edge ], [ true, %land.rhs.land.end_crit_edge ], [ %tobool13, %lor.rhs ]
  %land.ext = zext i1 %17 to i32
  %delink_stage1_step = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 135
  %18 = ptrtoint ptr %delink_stage1_step to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %delink_stage1_step, align 4
  %delink_stage2_step = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 136
  %20 = ptrtoint ptr %delink_stage2_step to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %delink_stage2_step, align 4
  %add = add i32 %21, %19
  %delink_stage3_step = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 137
  %22 = ptrtoint ptr %delink_stage3_step to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %delink_stage3_step, align 4
  %add14 = add i32 %add, %23
  %auto_delink_cnt15 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 44
  %24 = ptrtoint ptr %auto_delink_cnt15 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %auto_delink_cnt15, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %add14)
  %cmp = icmp sgt i32 %25, %add14
  br i1 %cmp, label %land.end.cleanup_crit_edge, label %if.end18

land.end.cleanup_crit_edge:                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end18:                                         ; preds = %land.end
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %19)
  %cmp20 = icmp eq i32 %25, %19
  br i1 %cmp20, label %if.then22, label %if.end18.if.end23_crit_edge

if.end18.if.end23_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

if.then22:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @rtsx_delink_stage1(ptr noundef %chip, i32 noundef %land.ext, i32 noundef %add14)
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %if.end18.if.end23_crit_edge
  %26 = ptrtoint ptr %auto_delink_cnt15 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %auto_delink_cnt15, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %add)
  %cmp25 = icmp eq i32 %27, %add
  br i1 %cmp25, label %do.body, label %if.end23.if.end45_crit_edge

if.end23.if.end45_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end45

do.body:                                          ; preds = %if.end23
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtsx_delink_stage.__UNIQUE_ID_ddebug326, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtsx_delink_stage, %if.then31)) #6
          to label %do.end [label %if.then31], !srcloc !211

if.then31:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %28 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %chip, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %31, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtsx_delink_stage.__UNIQUE_ID_ddebug326, ptr noundef %dev.i, ptr noundef nonnull @.str.67) #6
  br label %do.end

do.end:                                           ; preds = %if.then31, %do.body
  br i1 %17, label %if.then35, label %do.end.if.end36_crit_edge

do.end.if.end36_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36

if.then35:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @rtsx_exit_L1(ptr noundef %chip)
  br label %if.end36

if.end36:                                         ; preds = %if.then35, %do.end.if.end36_crit_edge
  %asic_code = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 74
  %32 = ptrtoint ptr %asic_code to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %asic_code, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool37.not = icmp eq i32 %33, 0
  br i1 %tobool37.not, label %if.end36.if.end43_crit_edge, label %land.lhs.true

if.end36.if.end43_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43

land.lhs.true:                                    ; preds = %if.end36
  %product_id = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 58
  %34 = ptrtoint ptr %product_id to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %product_id, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 21000, i16 %35)
  %cmp39 = icmp eq i16 %35, 21000
  br i1 %cmp39, label %if.then41, label %land.lhs.true.if.end43_crit_edge

land.lhs.true.if.end43_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43

if.then41:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %call42 = tail call i32 @rtsx_set_phy_reg_bit(ptr noundef %chip, i8 noundef zeroext 28, i8 noundef zeroext 2)
  br label %if.end43

if.end43:                                         ; preds = %if.then41, %land.lhs.true.if.end43_crit_edge, %if.end36.if.end43_crit_edge
  %call44 = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -421, i8 noundef zeroext 10, i8 noundef zeroext 10)
  br label %if.end45

if.end45:                                         ; preds = %if.end43, %if.end23.if.end45_crit_edge
  %36 = ptrtoint ptr %auto_delink_cnt15 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %auto_delink_cnt15, align 4
  %inc = add i32 %37, 1
  store i32 %inc, ptr %auto_delink_cnt15, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end45, %land.end.cleanup_crit_edge, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtsx_stop_cmd(ptr nocapture noundef readonly %chip, i32 noundef %card) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %do.end.for.body_crit_edge, %entry
  %i.089 = phi i32 [ 0, %entry ], [ %inc, %do.end.for.body_crit_edge ]
  %mul = shl i32 %i.089, 2
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 4
  %remap_addr = getelementptr inbounds %struct.rtsx_dev, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %remap_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %remap_addr, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 %mul
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !207
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !208
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtsx_stop_cmd.__UNIQUE_ID_ddebug327, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtsx_stop_cmd, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !211

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #6
  %6 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chip, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtsx_stop_cmd.__UNIQUE_ID_ddebug327, ptr noundef %dev.i, ptr noundef nonnull @.str.26, i32 noundef %mul, i32 noundef %5) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %for.body
  %inc = add nuw nsw i32 %i.089, 1
  %exitcond.not = icmp eq i32 %inc, 9
  br i1 %exitcond.not, label %for.end, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %do.end
  %10 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %chip, align 4
  %remap_addr6 = getelementptr inbounds %struct.rtsx_dev, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %remap_addr6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %remap_addr6, align 4
  %add.ptr7 = getelementptr i8, ptr %13, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !209
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 16) #6, !srcloc !210
  %14 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %chip, align 4
  %remap_addr9 = getelementptr inbounds %struct.rtsx_dev, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %remap_addr9 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %remap_addr9, align 4
  %add.ptr10 = getelementptr i8, ptr %17, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !209
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 16) #6, !srcloc !210
  br label %for.body13

for.body13:                                       ; preds = %do.end37.for.body13_crit_edge, %for.end
  %i.190 = phi i32 [ 0, %for.end ], [ %inc39, %do.end37.for.body13_crit_edge ]
  %18 = trunc i32 %i.190 to i16
  %conv17 = add i16 %18, -480
  %19 = and i16 %conv17, 16383
  %and.i = zext i16 %19 to i32
  %shl.i = shl nuw nsw i32 %and.i, 16
  %or.i = or i32 %shl.i, -2147483648
  %20 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %chip, align 4
  %remap_addr.i = getelementptr inbounds %struct.rtsx_dev, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %23, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !209
  tail call void @arm_heavy_mb() #6
  %24 = tail call i32 @llvm.bswap.i32(i32 %or.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %24) #6, !srcloc !210
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.033.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 1024
  br i1 %exitcond.not.i, label %for.cond.i.rtsx_read_register.exit_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.cond.i.rtsx_read_register.exit_crit_edge:     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtsx_read_register.exit

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body13
  %i.033.i = phi i32 [ 0, %for.body13 ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %25 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %chip, align 4
  %remap_addr3.i = getelementptr inbounds %struct.rtsx_dev, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %remap_addr3.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %remap_addr3.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %28, i32 16
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i) #6, !srcloc !207
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !208
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %30)
  %cmp6.i = icmp sgt i32 %30, -1
  br i1 %cmp6.i, label %for.body.i.rtsx_read_register.exit_crit_edge, label %for.cond.i

for.body.i.rtsx_read_register.exit_crit_edge:     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtsx_read_register.exit

rtsx_read_register.exit:                          ; preds = %for.body.i.rtsx_read_register.exit_crit_edge, %for.cond.i.rtsx_read_register.exit_crit_edge
  %val.0 = phi i32 [ 0, %for.cond.i.rtsx_read_register.exit_crit_edge ], [ %30, %for.body.i.rtsx_read_register.exit_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtsx_stop_cmd.__UNIQUE_ID_ddebug328, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtsx_stop_cmd, %if.then31)) #6
          to label %do.end37 [label %if.then31], !srcloc !211

if.then31:                                        ; preds = %rtsx_read_register.exit
  call void @__sanitizer_cov_trace_pc() #8
  %31 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %chip, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 4
  %dev.i61 = getelementptr inbounds %struct.pci_dev, ptr %34, i32 0, i32 44
  %conv33 = zext i16 %conv17 to i32
  %conv34 = and i32 %val.0, 255
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtsx_stop_cmd.__UNIQUE_ID_ddebug328, ptr noundef %dev.i61, ptr noundef nonnull @.str.27, i32 noundef %conv33, i32 noundef %conv34) #6
  br label %do.end37

do.end37:                                         ; preds = %if.then31, %rtsx_read_register.exit
  %inc39 = add nuw nsw i32 %i.190, 1
  %exitcond91.not = icmp eq i32 %inc39, 16
  br i1 %exitcond91.not, label %for.end40, label %do.end37.for.body13_crit_edge

do.end37.for.body13_crit_edge:                    ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body13

for.end40:                                        ; preds = %do.end37
  %35 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %chip, align 4
  %remap_addr.i62 = getelementptr inbounds %struct.rtsx_dev, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %remap_addr.i62 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %remap_addr.i62, align 4
  %add.ptr.i63 = getelementptr i8, ptr %38, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !209
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i63, i32 -2139083522) #6, !srcloc !210
  br label %for.body.i67

for.body.i67:                                     ; preds = %for.body.i67.for.body.i67_crit_edge, %for.end40
  %i.029.i = phi i32 [ 0, %for.end40 ], [ %inc.i64, %for.body.i67.for.body.i67_crit_edge ]
  %39 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %chip, align 4
  %remap_addr8.i = getelementptr inbounds %struct.rtsx_dev, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %remap_addr8.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %remap_addr8.i, align 4
  %add.ptr9.i = getelementptr i8, ptr %42, i32 16
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i) #6, !srcloc !207
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !208
  %.mask = and i32 %43, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask)
  %cmp11.i = icmp eq i32 %.mask, 0
  %inc.i64 = add nuw nsw i32 %i.029.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %inc.i64)
  %exitcond.not.i65 = icmp eq i32 %inc.i64, 1024
  %or.cond = select i1 %cmp11.i, i1 true, i1 %exitcond.not.i65
  br i1 %or.cond, label %rtsx_write_register.exit, label %for.body.i67.for.body.i67_crit_edge

for.body.i67.for.body.i67_crit_edge:              ; preds = %for.body.i67
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i67

rtsx_write_register.exit:                         ; preds = %for.body.i67
  %44 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %chip, align 4
  %remap_addr.i69 = getelementptr inbounds %struct.rtsx_dev, ptr %45, i32 0, i32 2
  %46 = ptrtoint ptr %remap_addr.i69 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %remap_addr.i69, align 4
  %add.ptr.i70 = getelementptr i8, ptr %47, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !209
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i70, i32 -2139081474) #6, !srcloc !210
  br label %for.body.i78

for.body.i78:                                     ; preds = %for.body.i78.for.body.i78_crit_edge, %rtsx_write_register.exit
  %i.029.i74 = phi i32 [ 0, %rtsx_write_register.exit ], [ %inc.i71, %for.body.i78.for.body.i78_crit_edge ]
  %48 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %chip, align 4
  %remap_addr8.i75 = getelementptr inbounds %struct.rtsx_dev, ptr %49, i32 0, i32 2
  %50 = ptrtoint ptr %remap_addr8.i75 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %remap_addr8.i75, align 4
  %add.ptr9.i76 = getelementptr i8, ptr %51, i32 16
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i76) #6, !srcloc !207
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !208
  %.mask87 = and i32 %52, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask87)
  %cmp11.i77 = icmp eq i32 %.mask87, 0
  %inc.i71 = add nuw nsw i32 %i.029.i74, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %inc.i71)
  %exitcond.not.i72 = icmp eq i32 %inc.i71, 1024
  %or.cond88 = select i1 %cmp11.i77, i1 true, i1 %exitcond.not.i72
  br i1 %or.cond88, label %rtsx_write_register.exit84, label %for.body.i78.for.body.i78_crit_edge

for.body.i78.for.body.i78_crit_edge:              ; preds = %for.body.i78
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i78

rtsx_write_register.exit84:                       ; preds = %for.body.i78
  call void @__sanitizer_cov_trace_pc() #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtsx_read_register(ptr nocapture noundef readonly %chip, i16 noundef zeroext %addr, ptr noundef writeonly %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %data, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %data, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %1 = and i16 %addr, 16383
  %and = zext i16 %1 to i32
  %shl = shl nuw nsw i32 %and, 16
  %or = or i32 %shl, -2147483648
  %2 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip, align 4
  %remap_addr = getelementptr inbounds %struct.rtsx_dev, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %remap_addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %remap_addr, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !209
  tail call void @arm_heavy_mb() #6
  %6 = tail call i32 @llvm.bswap.i32(i32 %or) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %6) #6, !srcloc !210
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.033, 1
  %exitcond.not = icmp eq i32 %inc, 1024
  br i1 %exitcond.not, label %for.cond.cleanup_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.end
  %i.033 = phi i32 [ 0, %if.end ], [ %inc, %for.cond.for.body_crit_edge ]
  %7 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %chip, align 4
  %remap_addr3 = getelementptr inbounds %struct.rtsx_dev, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %remap_addr3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %remap_addr3, align 4
  %add.ptr4 = getelementptr i8, ptr %10, i32 16
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #6, !srcloc !207
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !208
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %12)
  %cmp6 = icmp sgt i32 %12, -1
  br i1 %cmp6, label %for.end, label %for.cond

for.end:                                          ; preds = %for.body
  br i1 %tobool.not, label %for.end.cleanup_crit_edge, label %if.then15

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then15:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %conv17 = trunc i32 %12 to i8
  %13 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv17, ptr %data, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then15, %for.end.cleanup_crit_edge, %for.cond.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end.cleanup_crit_edge ], [ 0, %if.then15 ], [ 2, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtsx_read_cfg_dw(ptr nocapture noundef readonly %chip, i8 noundef zeroext %func_no, i16 noundef zeroext %addr, ptr noundef writeonly %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i16 %addr, 255
  %conv4.i = zext i16 %0 to i32
  %or5.i = or i32 %conv4.i, -30015744
  %1 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %chip, align 4
  %remap_addr.i = getelementptr inbounds %struct.rtsx_dev, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !209
  tail call void @arm_heavy_mb() #6
  %5 = tail call i32 @llvm.bswap.i32(i32 %or5.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %5) #6, !srcloc !210
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.029.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 1024
  br i1 %exitcond.not.i, label %for.cond.i.cleanup_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %entry
  %i.029.i = phi i32 [ 0, %entry ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %6 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chip, align 4
  %remap_addr8.i = getelementptr inbounds %struct.rtsx_dev, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %remap_addr8.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %remap_addr8.i, align 4
  %add.ptr9.i = getelementptr i8, ptr %9, i32 16
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i) #6, !srcloc !207
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !208
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %cmp11.i = icmp sgt i32 %11, -1
  br i1 %cmp11.i, label %rtsx_write_register.exit, label %for.cond.i

rtsx_write_register.exit:                         ; preds = %for.body.i
  %conv15.i = and i32 %11, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %conv15.i, i32 %conv4.i)
  %cmp16.not.i.not = icmp eq i32 %conv15.i, %conv4.i
  br i1 %cmp16.not.i.not, label %if.end, label %rtsx_write_register.exit.cleanup_crit_edge

rtsx_write_register.exit.cleanup_crit_edge:       ; preds = %rtsx_write_register.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %rtsx_write_register.exit
  %12 = lshr i16 %addr, 8
  %conv3 = zext i16 %12 to i32
  %or5.i69 = or i32 %conv3, -29950208
  %13 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %chip, align 4
  %remap_addr.i70 = getelementptr inbounds %struct.rtsx_dev, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %remap_addr.i70 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %remap_addr.i70, align 4
  %add.ptr.i71 = getelementptr i8, ptr %16, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !209
  tail call void @arm_heavy_mb() #6
  %17 = tail call i32 @llvm.bswap.i32(i32 %or5.i69) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i71, i32 %17) #6, !srcloc !210
  br label %for.body.i79

for.cond.i74:                                     ; preds = %for.body.i79
  %inc.i72 = add nuw nsw i32 %i.029.i75, 1
  %exitcond.not.i73 = icmp eq i32 %inc.i72, 1024
  br i1 %exitcond.not.i73, label %for.cond.i74.cleanup_crit_edge, label %for.cond.i74.for.body.i79_crit_edge

for.cond.i74.for.body.i79_crit_edge:              ; preds = %for.cond.i74
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i79

for.cond.i74.cleanup_crit_edge:                   ; preds = %for.cond.i74
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.i79:                                     ; preds = %for.cond.i74.for.body.i79_crit_edge, %if.end
  %i.029.i75 = phi i32 [ 0, %if.end ], [ %inc.i72, %for.cond.i74.for.body.i79_crit_edge ]
  %18 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %chip, align 4
  %remap_addr8.i76 = getelementptr inbounds %struct.rtsx_dev, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %remap_addr8.i76 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %remap_addr8.i76, align 4
  %add.ptr9.i77 = getelementptr i8, ptr %21, i32 16
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i77) #6, !srcloc !207
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !208
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %23)
  %cmp11.i78 = icmp sgt i32 %23, -1
  br i1 %cmp11.i78, label %rtsx_write_register.exit85, label %for.cond.i74

rtsx_write_register.exit85:                       ; preds = %for.body.i79
  %conv15.i80 = and i32 %23, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %conv15.i80, i32 %conv3)
  %cmp16.not.i81.not = icmp eq i32 %conv15.i80, %conv3
  br i1 %cmp16.not.i81.not, label %if.end7, label %rtsx_write_register.exit85.cleanup_crit_edge

rtsx_write_register.exit85.cleanup_crit_edge:     ; preds = %rtsx_write_register.exit85
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7:                                          ; preds = %rtsx_write_register.exit85
  %24 = shl i8 %func_no, 4
  %25 = and i8 %24, 48
  %26 = or i8 %25, -128
  %conv4.i86 = zext i8 %26 to i32
  %or5.i88 = or i32 %conv4.i86, -29622528
  %27 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %chip, align 4
  %remap_addr.i89 = getelementptr inbounds %struct.rtsx_dev, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %remap_addr.i89 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %remap_addr.i89, align 4
  %add.ptr.i90 = getelementptr i8, ptr %30, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !209
  tail call void @arm_heavy_mb() #6
  %31 = tail call i32 @llvm.bswap.i32(i32 %or5.i88) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i90, i32 %31) #6, !srcloc !210
  br label %for.body.i98

for.cond.i93:                                     ; preds = %for.body.i98
  %inc.i91 = add nuw nsw i32 %i.029.i94, 1
  %exitcond.not.i92 = icmp eq i32 %inc.i91, 1024
  br i1 %exitcond.not.i92, label %for.cond.i93.cleanup_crit_edge, label %for.cond.i93.for.body.i98_crit_edge

for.cond.i93.for.body.i98_crit_edge:              ; preds = %for.cond.i93
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i98

for.cond.i93.cleanup_crit_edge:                   ; preds = %for.cond.i93
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.i98:                                     ; preds = %for.cond.i93.for.body.i98_crit_edge, %if.end7
  %i.029.i94 = phi i32 [ 0, %if.end7 ], [ %inc.i91, %for.cond.i93.for.body.i98_crit_edge ]
  %32 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %chip, align 4
  %remap_addr8.i95 = getelementptr inbounds %struct.rtsx_dev, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %remap_addr8.i95 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %remap_addr8.i95, align 4
  %add.ptr9.i96 = getelementptr i8, ptr %35, i32 16
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i96) #6, !srcloc !207
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !208
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %37)
  %cmp11.i97 = icmp sgt i32 %37, -1
  br i1 %cmp11.i97, label %rtsx_write_register.exit104, label %for.cond.i93

rtsx_write_register.exit104:                      ; preds = %for.body.i98
  %conv15.i99 = and i32 %37, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %conv15.i99, i32 %conv4.i86)
  %cmp16.not.i100.not = icmp eq i32 %conv15.i99, %conv4.i86
  br i1 %cmp16.not.i100.not, label %rtsx_write_register.exit104.for.body_crit_edge, label %rtsx_write_register.exit104.cleanup_crit_edge

rtsx_write_register.exit104.cleanup_crit_edge:    ; preds = %rtsx_write_register.exit104
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

rtsx_write_register.exit104.for.body_crit_edge:   ; preds = %rtsx_write_register.exit104
  br label %for.body

for.body:                                         ; preds = %if.end18.for.body_crit_edge, %rtsx_write_register.exit104.for.body_crit_edge
  %i.0157 = phi i32 [ %inc, %if.end18.for.body_crit_edge ], [ 0, %rtsx_write_register.exit104.for.body_crit_edge ]
  %38 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %chip, align 4
  %remap_addr.i106 = getelementptr inbounds %struct.rtsx_dev, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %remap_addr.i106 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %remap_addr.i106, align 4
  %add.ptr.i107 = getelementptr i8, ptr %41, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !209
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i107, i32 15294) #6, !srcloc !210
  br label %for.body.i111

for.cond.i110:                                    ; preds = %for.body.i111
  %inc.i108 = add nuw nsw i32 %i.033.i, 1
  %exitcond.not.i109 = icmp eq i32 %inc.i108, 1024
  br i1 %exitcond.not.i109, label %for.cond.i110.cleanup_crit_edge, label %for.cond.i110.for.body.i111_crit_edge

for.cond.i110.for.body.i111_crit_edge:            ; preds = %for.cond.i110
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i111

for.cond.i110.cleanup_crit_edge:                  ; preds = %for.cond.i110
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.i111:                                    ; preds = %for.cond.i110.for.body.i111_crit_edge, %for.body
  %i.033.i = phi i32 [ 0, %for.body ], [ %inc.i108, %for.cond.i110.for.body.i111_crit_edge ]
  %42 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %chip, align 4
  %remap_addr3.i = getelementptr inbounds %struct.rtsx_dev, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %remap_addr3.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %remap_addr3.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %45, i32 16
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i) #6, !srcloc !207
  %47 = tail call i32 @llvm.bswap.i32(i32 %46) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !208
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %47)
  %cmp6.i = icmp sgt i32 %47, -1
  br i1 %cmp6.i, label %if.end18, label %for.cond.i110

if.end18:                                         ; preds = %for.body.i111
  %48 = and i32 %47, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp21 = icmp eq i32 %48, 0
  %inc = add nuw nsw i32 %i.0157, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %inc)
  %exitcond.not = icmp eq i32 %inc, 1024
  %or.cond = select i1 %cmp21, i1 true, i1 %exitcond.not
  br i1 %or.cond, label %for.end, label %if.end18.for.body_crit_edge

if.end18.for.body_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %if.end18
  %49 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %chip, align 4
  %remap_addr.i114 = getelementptr inbounds %struct.rtsx_dev, ptr %50, i32 0, i32 2
  %51 = ptrtoint ptr %remap_addr.i114 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %remap_addr.i114, align 4
  %add.ptr.i115 = getelementptr i8, ptr %52, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !209
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i115, i32 14270) #6, !srcloc !210
  br label %for.body.i123

for.cond.i118:                                    ; preds = %for.body.i123
  %inc.i116 = add nuw nsw i32 %i.033.i119, 1
  %exitcond.not.i117 = icmp eq i32 %inc.i116, 1024
  br i1 %exitcond.not.i117, label %for.cond.i118.cleanup_crit_edge, label %for.cond.i118.for.body.i123_crit_edge

for.cond.i118.for.body.i123_crit_edge:            ; preds = %for.cond.i118
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i123

for.cond.i118.cleanup_crit_edge:                  ; preds = %for.cond.i118
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.i123:                                    ; preds = %for.cond.i118.for.body.i123_crit_edge, %for.end
  %i.033.i119 = phi i32 [ 0, %for.end ], [ %inc.i116, %for.cond.i118.for.body.i123_crit_edge ]
  %53 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %chip, align 4
  %remap_addr3.i120 = getelementptr inbounds %struct.rtsx_dev, ptr %54, i32 0, i32 2
  %55 = ptrtoint ptr %remap_addr3.i120 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %remap_addr3.i120, align 4
  %add.ptr4.i121 = getelementptr i8, ptr %56, i32 16
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i121) #6, !srcloc !207
  %58 = tail call i32 @llvm.bswap.i32(i32 %57) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !208
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %58)
  %cmp6.i122 = icmp sgt i32 %58, -1
  br i1 %cmp6.i122, label %if.end33, label %for.cond.i118

if.end33:                                         ; preds = %for.body.i123
  %conv34 = and i32 %58, 255
  %59 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %chip, align 4
  %remap_addr.i114.1 = getelementptr inbounds %struct.rtsx_dev, ptr %60, i32 0, i32 2
  %61 = ptrtoint ptr %remap_addr.i114.1 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %remap_addr.i114.1, align 4
  %add.ptr.i115.1 = getelementptr i8, ptr %62, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !209
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i115.1, i32 14526) #6, !srcloc !210
  br label %for.body.i123.1

for.body.i123.1:                                  ; preds = %for.cond.i118.1.for.body.i123.1_crit_edge, %if.end33
  %i.033.i119.1 = phi i32 [ 0, %if.end33 ], [ %inc.i116.1, %for.cond.i118.1.for.body.i123.1_crit_edge ]
  %63 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %chip, align 4
  %remap_addr3.i120.1 = getelementptr inbounds %struct.rtsx_dev, ptr %64, i32 0, i32 2
  %65 = ptrtoint ptr %remap_addr3.i120.1 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %remap_addr3.i120.1, align 4
  %add.ptr4.i121.1 = getelementptr i8, ptr %66, i32 16
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i121.1) #6, !srcloc !207
  %68 = tail call i32 @llvm.bswap.i32(i32 %67) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !208
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %68)
  %cmp6.i122.1 = icmp sgt i32 %68, -1
  br i1 %cmp6.i122.1, label %if.end33.1, label %for.cond.i118.1

for.cond.i118.1:                                  ; preds = %for.body.i123.1
  %inc.i116.1 = add nuw nsw i32 %i.033.i119.1, 1
  %exitcond.not.i117.1 = icmp eq i32 %inc.i116.1, 1024
  br i1 %exitcond.not.i117.1, label %for.cond.i118.1.cleanup_crit_edge, label %for.cond.i118.1.for.body.i123.1_crit_edge

for.cond.i118.1.for.body.i123.1_crit_edge:        ; preds = %for.cond.i118.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i123.1

for.cond.i118.1.cleanup_crit_edge:                ; preds = %for.cond.i118.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end33.1:                                       ; preds = %for.body.i123.1
  %conv34.1 = shl i32 %68, 8
  %shl35.1 = and i32 %conv34.1, 65280
  %or36.1 = or i32 %shl35.1, %conv34
  %69 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %chip, align 4
  %remap_addr.i114.2 = getelementptr inbounds %struct.rtsx_dev, ptr %70, i32 0, i32 2
  %71 = ptrtoint ptr %remap_addr.i114.2 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %remap_addr.i114.2, align 4
  %add.ptr.i115.2 = getelementptr i8, ptr %72, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !209
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i115.2, i32 14782) #6, !srcloc !210
  br label %for.body.i123.2

for.body.i123.2:                                  ; preds = %for.cond.i118.2.for.body.i123.2_crit_edge, %if.end33.1
  %i.033.i119.2 = phi i32 [ 0, %if.end33.1 ], [ %inc.i116.2, %for.cond.i118.2.for.body.i123.2_crit_edge ]
  %73 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %chip, align 4
  %remap_addr3.i120.2 = getelementptr inbounds %struct.rtsx_dev, ptr %74, i32 0, i32 2
  %75 = ptrtoint ptr %remap_addr3.i120.2 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %remap_addr3.i120.2, align 4
  %add.ptr4.i121.2 = getelementptr i8, ptr %76, i32 16
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i121.2) #6, !srcloc !207
  %78 = tail call i32 @llvm.bswap.i32(i32 %77) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !208
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %78)
  %cmp6.i122.2 = icmp sgt i32 %78, -1
  br i1 %cmp6.i122.2, label %if.end33.2, label %for.cond.i118.2

for.cond.i118.2:                                  ; preds = %for.body.i123.2
  %inc.i116.2 = add nuw nsw i32 %i.033.i119.2, 1
  %exitcond.not.i117.2 = icmp eq i32 %inc.i116.2, 1024
  br i1 %exitcond.not.i117.2, label %for.cond.i118.2.cleanup_crit_edge, label %for.cond.i118.2.for.body.i123.2_crit_edge

for.cond.i118.2.for.body.i123.2_crit_edge:        ; preds = %for.cond.i118.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i123.2

for.cond.i118.2.cleanup_crit_edge:                ; preds = %for.cond.i118.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end33.2:                                       ; preds = %for.body.i123.2
  %conv34.2 = shl i32 %78, 16
  %shl35.2 = and i32 %conv34.2, 16711680
  %or36.2 = or i32 %shl35.2, %or36.1
  %79 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %chip, align 4
  %remap_addr.i114.3 = getelementptr inbounds %struct.rtsx_dev, ptr %80, i32 0, i32 2
  %81 = ptrtoint ptr %remap_addr.i114.3 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %remap_addr.i114.3, align 4
  %add.ptr.i115.3 = getelementptr i8, ptr %82, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !209
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i115.3, i32 15038) #6, !srcloc !210
  br label %for.body.i123.3

for.body.i123.3:                                  ; preds = %for.cond.i118.3.for.body.i123.3_crit_edge, %if.end33.2
  %i.033.i119.3 = phi i32 [ 0, %if.end33.2 ], [ %inc.i116.3, %for.cond.i118.3.for.body.i123.3_crit_edge ]
  %83 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %chip, align 4
  %remap_addr3.i120.3 = getelementptr inbounds %struct.rtsx_dev, ptr %84, i32 0, i32 2
  %85 = ptrtoint ptr %remap_addr3.i120.3 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %remap_addr3.i120.3, align 4
  %add.ptr4.i121.3 = getelementptr i8, ptr %86, i32 16
  %87 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i121.3) #6, !srcloc !207
  %88 = tail call i32 @llvm.bswap.i32(i32 %87) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !208
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %88)
  %cmp6.i122.3 = icmp sgt i32 %88, -1
  br i1 %cmp6.i122.3, label %if.end33.3, label %for.cond.i118.3

for.cond.i118.3:                                  ; preds = %for.body.i123.3
  %inc.i116.3 = add nuw nsw i32 %i.033.i119.3, 1
  %exitcond.not.i117.3 = icmp eq i32 %inc.i116.3, 1024
  br i1 %exitcond.not.i117.3, label %for.cond.i118.3.cleanup_crit_edge, label %for.cond.i118.3.for.body.i123.3_crit_edge

for.cond.i118.3.for.body.i123.3_crit_edge:        ; preds = %for.cond.i118.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i123.3

for.cond.i118.3.cleanup_crit_edge:                ; preds = %for.cond.i118.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end33.3:                                       ; preds = %for.body.i123.3
  %tobool40.not = icmp eq ptr %val, null
  br i1 %tobool40.not, label %if.end33.3.cleanup_crit_edge, label %if.then41

if.end33.3.cleanup_crit_edge:                     ; preds = %if.end33.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then41:                                        ; preds = %if.end33.3
  call void @__sanitizer_cov_trace_pc() #8
  %shl35.3 = shl i32 %88, 24
  %or36.3 = or i32 %shl35.3, %or36.2
  %89 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %or36.3, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then41, %if.end33.3.cleanup_crit_edge, %for.cond.i118.3.cleanup_crit_edge, %for.cond.i118.2.cleanup_crit_edge, %for.cond.i118.1.cleanup_crit_edge, %for.cond.i118.cleanup_crit_edge, %for.cond.i110.cleanup_crit_edge, %rtsx_write_register.exit104.cleanup_crit_edge, %for.cond.i93.cleanup_crit_edge, %rtsx_write_register.exit85.cleanup_crit_edge, %for.cond.i74.cleanup_crit_edge, %rtsx_write_register.exit.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %rtsx_write_register.exit.cleanup_crit_edge ], [ 1, %rtsx_write_register.exit85.cleanup_crit_edge ], [ 1, %rtsx_write_register.exit104.cleanup_crit_edge ], [ 0, %if.then41 ], [ 0, %if.end33.3.cleanup_crit_edge ], [ 2, %for.cond.i118.3.cleanup_crit_edge ], [ 2, %for.cond.i118.2.cleanup_crit_edge ], [ 2, %for.cond.i118.1.cleanup_crit_edge ], [ 2, %for.cond.i118.cleanup_crit_edge ], [ 2, %for.cond.i110.cleanup_crit_edge ], [ 2, %for.cond.i93.cleanup_crit_edge ], [ 2, %for.cond.i74.cleanup_crit_edge ], [ 2, %for.cond.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtsx_write_cfg_seq(ptr nocapture noundef readonly %chip, i8 noundef zeroext %func, i16 noundef zeroext %addr, ptr noundef readonly %buf, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %rem = and i16 %addr, 3
  %sub = and i16 %addr, -4
  %tobool.not = icmp eq ptr %buf, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv3 = zext i16 %rem to i32
  %add = add i32 %conv3, %len
  %0 = and i32 %add, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool8.not = icmp ne i32 %0, 0
  %div = sdiv i32 %add, 4
  %add12 = zext i1 %tobool8.not to i32
  %dw_len.0 = add nsw i32 %div, %add12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtsx_write_cfg_seq.__UNIQUE_ID_ddebug329, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtsx_write_cfg_seq, %if.then20)) #6
          to label %do.end [label %if.then20], !srcloc !211

if.then20:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %chip, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtsx_write_cfg_seq.__UNIQUE_ID_ddebug329, ptr noundef %dev.i, ptr noundef nonnull @.str.29, i32 noundef %dw_len.0) #6
  br label %do.end

do.end:                                           ; preds = %if.then20, %if.end
  %5 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %dw_len.0, i32 4) #6
  %6 = extractvalue { i32, i1 } %5, 1
  %7 = extractvalue { i32, i1 } %5, 0
  %retval.0.i150 = select i1 %6, i32 -1, i32 %7
  %call24 = tail call noalias ptr @vzalloc(i32 noundef %retval.0.i150) #9
  %tobool25.not = icmp eq ptr %call24, null
  br i1 %tobool25.not, label %do.end.cleanup_crit_edge, label %if.end27

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end27:                                         ; preds = %do.end
  %call28 = tail call noalias ptr @vzalloc(i32 noundef %retval.0.i150) #9
  %tobool29.not = icmp eq ptr %call28, null
  br i1 %tobool29.not, label %if.end27.cleanup.sink.split_crit_edge, label %for.cond.preheader

if.end27.cleanup.sink.split_crit_edge:            ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

for.cond.preheader:                               ; preds = %if.end27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp154 = icmp sgt i32 %len, 0
  br i1 %cmp154, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.do.body48_crit_edge

for.cond.preheader.do.body48_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body48

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %offset.0157 = phi i16 [ %spec.select143, %for.body.for.body_crit_edge ], [ %rem, %for.cond.preheader.for.body_crit_edge ]
  %j.0156 = phi i32 [ %spec.select, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %i.0155 = phi i32 [ %inc47, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %conv33 = zext i16 %offset.0157 to i32
  %mul = shl nuw nsw i32 %conv33, 3
  %shl = shl i32 255, %mul
  %arrayidx = getelementptr i32, ptr %call28, i32 %j.0156
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %or = or i32 %9, %shl
  store i32 %or, ptr %arrayidx, align 4
  %arrayidx34 = getelementptr i8, ptr %buf, i32 %i.0155
  %10 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx34, align 1
  %conv35 = zext i8 %11 to i32
  %shl38 = shl i32 %conv35, %mul
  %arrayidx39 = getelementptr i32, ptr %call24, i32 %j.0156
  %12 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx39, align 4
  %or40 = or i32 %shl38, %13
  store i32 %or40, ptr %arrayidx39, align 4
  %inc = add i16 %offset.0157, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %inc)
  %cmp42 = icmp eq i16 %inc, 4
  %inc45 = zext i1 %cmp42 to i32
  %spec.select = add i32 %j.0156, %inc45
  %spec.select143 = select i1 %cmp42, i16 0, i16 %inc
  %inc47 = add nuw nsw i32 %i.0155, 1
  %exitcond.not = icmp eq i32 %inc47, %len
  br i1 %exitcond.not, label %for.body.do.body48_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.do.body48_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body48

do.body48:                                        ; preds = %for.body.do.body48_crit_edge, %for.cond.preheader.do.body48_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtsx_write_cfg_seq.__UNIQUE_ID_ddebug330, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtsx_write_cfg_seq, %if.then60)) #6
          to label %do.body64 [label %if.then60], !srcloc !211

if.then60:                                        ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @print_hex_dump(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.30, i32 noundef 0, i32 noundef 16, i32 noundef 1, ptr noundef nonnull %call28, i32 noundef %retval.0.i150, i1 noundef zeroext true) #6
  br label %do.body64

do.body64:                                        ; preds = %if.then60, %do.body48
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtsx_write_cfg_seq.__UNIQUE_ID_ddebug331, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtsx_write_cfg_seq, %if.then76)) #6
          to label %do.end79 [label %if.then76], !srcloc !211

if.then76:                                        ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @print_hex_dump(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.30, i32 noundef 0, i32 noundef 16, i32 noundef 1, ptr noundef nonnull %call24, i32 noundef %retval.0.i150, i1 noundef zeroext true) #6
  br label %do.end79

do.end79:                                         ; preds = %if.then76, %do.body64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dw_len.0)
  %cmp81158 = icmp sgt i32 %dw_len.0, 0
  br i1 %cmp81158, label %do.end79.for.body83_crit_edge, label %do.end79.cleanup.sink.split.sink.split_crit_edge

do.end79.cleanup.sink.split.sink.split_crit_edge: ; preds = %do.end79
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.sink.split

do.end79.for.body83_crit_edge:                    ; preds = %do.end79
  br label %for.body83

for.cond80:                                       ; preds = %for.body83
  %inc96 = add nuw nsw i32 %i.1159, 1
  %exitcond160.not = icmp eq i32 %inc96, %dw_len.0
  br i1 %exitcond160.not, label %for.cond80.cleanup.sink.split.sink.split_crit_edge, label %for.cond80.for.body83_crit_edge

for.cond80.for.body83_crit_edge:                  ; preds = %for.cond80
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body83

for.cond80.cleanup.sink.split.sink.split_crit_edge: ; preds = %for.cond80
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.sink.split

for.body83:                                       ; preds = %for.cond80.for.body83_crit_edge, %do.end79.for.body83_crit_edge
  %i.1159 = phi i32 [ %inc96, %for.cond80.for.body83_crit_edge ], [ 0, %do.end79.for.body83_crit_edge ]
  %i.1.tr = trunc i32 %i.1159 to i16
  %14 = shl i16 %i.1.tr, 2
  %conv87 = add i16 %14, %sub
  %arrayidx88 = getelementptr i32, ptr %call28, i32 %i.1159
  %15 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx88, align 4
  %arrayidx89 = getelementptr i32, ptr %call24, i32 %i.1159
  %17 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx89, align 4
  %call90 = tail call i32 @rtsx_write_cfg_dw(ptr noundef %chip, i8 noundef zeroext %func, i16 noundef zeroext %conv87, i32 noundef %16, i32 noundef %18)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %cmp91.not = icmp eq i32 %call90, 0
  br i1 %cmp91.not, label %for.cond80, label %for.body83.cleanup.sink.split.sink.split_crit_edge

for.body83.cleanup.sink.split.sink.split_crit_edge: ; preds = %for.body83
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.sink.split

cleanup.sink.split.sink.split:                    ; preds = %for.body83.cleanup.sink.split.sink.split_crit_edge, %for.cond80.cleanup.sink.split.sink.split_crit_edge, %do.end79.cleanup.sink.split.sink.split_crit_edge
  %retval.0.ph.ph = phi i32 [ 0, %do.end79.cleanup.sink.split.sink.split_crit_edge ], [ 1, %for.body83.cleanup.sink.split.sink.split_crit_edge ], [ 0, %for.cond80.cleanup.sink.split.sink.split_crit_edge ]
  tail call void @vfree(ptr noundef nonnull %call24) #6
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %cleanup.sink.split.sink.split, %if.end27.cleanup.sink.split_crit_edge
  %call28.sink = phi ptr [ %call24, %if.end27.cleanup.sink.split_crit_edge ], [ %call28, %cleanup.sink.split.sink.split ]
  %retval.0.ph = phi i32 [ 3, %if.end27.cleanup.sink.split_crit_edge ], [ %retval.0.ph.ph, %cleanup.sink.split.sink.split ]
  tail call void @vfree(ptr noundef nonnull %call28.sink) #6
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 3, %entry.cleanup_crit_edge ], [ 3, %do.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vzalloc(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtsx_read_cfg_seq(ptr nocapture noundef readonly %chip, i8 noundef zeroext %func, i16 noundef zeroext %addr, ptr noundef writeonly %buf, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %rem = and i16 %addr, 3
  %conv3 = zext i16 %rem to i32
  %sub = and i16 %addr, -4
  %add = add i32 %conv3, %len
  %0 = and i32 %add, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp ne i32 %0, 0
  %div = sdiv i32 %add, 4
  %add10 = zext i1 %tobool.not to i32
  %dw_len.0 = add nsw i32 %div, %add10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtsx_read_cfg_seq.__UNIQUE_ID_ddebug332, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtsx_read_cfg_seq, %if.then17)) #6
          to label %do.end [label %if.then17], !srcloc !211

if.then17:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %chip, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtsx_read_cfg_seq.__UNIQUE_ID_ddebug332, ptr noundef %dev.i, ptr noundef nonnull @.str.29, i32 noundef %dw_len.0) #6
  br label %do.end

do.end:                                           ; preds = %if.then17, %entry
  %5 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %dw_len.0, i32 4) #6
  %6 = extractvalue { i32, i1 } %5, 1
  %7 = extractvalue { i32, i1 } %5, 0
  %retval.0.i86 = select i1 %6, i32 -1, i32 %7
  %call21 = tail call noalias ptr @vmalloc(i32 noundef %retval.0.i86) #9
  %tobool22.not = icmp eq ptr %call21, null
  br i1 %tobool22.not, label %do.end.cleanup_crit_edge, label %for.cond.preheader

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.preheader:                               ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dw_len.0)
  %cmp88 = icmp sgt i32 %dw_len.0, 0
  br i1 %cmp88, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.089, 1
  %exitcond.not = icmp eq i32 %inc, %dw_len.0
  br i1 %exitcond.not, label %for.cond.for.end_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.089 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %i.0.tr = trunc i32 %i.089 to i16
  %8 = shl i16 %i.0.tr, 2
  %conv28 = add i16 %8, %sub
  %add.ptr = getelementptr i32, ptr %call21, i32 %i.089
  %call29 = tail call i32 @rtsx_read_cfg_dw(ptr noundef %chip, i8 noundef zeroext %func, i16 noundef zeroext %conv28, ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp30.not = icmp eq i32 %call29, 0
  br i1 %cmp30.not, label %for.cond, label %for.body.cleanup.sink.split_crit_edge

for.body.cleanup.sink.split_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %tobool34.not = icmp ne ptr %buf, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp3790 = icmp sgt i32 %len, 0
  %or.cond = and i1 %tobool34.not, %cmp3790
  br i1 %or.cond, label %for.end.for.body39_crit_edge, label %for.end.cleanup.sink.split_crit_edge

for.end.cleanup.sink.split_crit_edge:             ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

for.end.for.body39_crit_edge:                     ; preds = %for.end
  br label %for.body39

for.body39:                                       ; preds = %for.body39.for.body39_crit_edge, %for.end.for.body39_crit_edge
  %j.093 = phi i32 [ %spec.select85, %for.body39.for.body39_crit_edge ], [ 0, %for.end.for.body39_crit_edge ]
  %i.192 = phi i32 [ %inc52, %for.body39.for.body39_crit_edge ], [ 0, %for.end.for.body39_crit_edge ]
  %offset.091 = phi i16 [ %spec.select, %for.body39.for.body39_crit_edge ], [ %rem, %for.end.for.body39_crit_edge ]
  %arrayidx = getelementptr i32, ptr %call21, i32 %j.093
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %conv40 = zext i16 %offset.091 to i32
  %mul41 = shl nuw nsw i32 %conv40, 3
  %shr = lshr i32 %10, %mul41
  %conv42 = trunc i32 %shr to i8
  %arrayidx43 = getelementptr i8, ptr %buf, i32 %i.192
  %11 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv42, ptr %arrayidx43, align 1
  %inc44 = add i16 %offset.091, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %inc44)
  %cmp46 = icmp eq i16 %inc44, 4
  %spec.select = select i1 %cmp46, i16 0, i16 %inc44
  %inc49 = zext i1 %cmp46 to i32
  %spec.select85 = add i32 %j.093, %inc49
  %inc52 = add nuw nsw i32 %i.192, 1
  %exitcond94.not = icmp eq i32 %inc52, %len
  br i1 %exitcond94.not, label %for.body39.cleanup.sink.split_crit_edge, label %for.body39.for.body39_crit_edge

for.body39.for.body39_crit_edge:                  ; preds = %for.body39
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body39

for.body39.cleanup.sink.split_crit_edge:          ; preds = %for.body39
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %for.body39.cleanup.sink.split_crit_edge, %for.end.cleanup.sink.split_crit_edge, %for.body.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ 0, %for.end.cleanup.sink.split_crit_edge ], [ 0, %for.body39.cleanup.sink.split_crit_edge ], [ 1, %for.body.cleanup.sink.split_crit_edge ]
  tail call void @vfree(ptr noundef nonnull %call21) #6
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 3, %do.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtsx_read_phy_register(ptr nocapture noundef readonly %chip, i8 noundef zeroext %addr, ptr noundef writeonly %val) local_unnamed_addr #0 align 64 {
entry:
  %tmp = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp) #6
  %0 = ptrtoint ptr %tmp to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %tmp, align 1, !annotation !214
  %conv4.i = zext i8 %addr to i32
  %or5.i = or i32 %conv4.i, -29360384
  %1 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %chip, align 4
  %remap_addr.i = getelementptr inbounds %struct.rtsx_dev, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !209
  tail call void @arm_heavy_mb() #6
  %5 = tail call i32 @llvm.bswap.i32(i32 %or5.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %5) #6, !srcloc !210
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.029.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 1024
  br i1 %exitcond.not.i, label %for.cond.i.cleanup_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %entry
  %i.029.i = phi i32 [ 0, %entry ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %6 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chip, align 4
  %remap_addr8.i = getelementptr inbounds %struct.rtsx_dev, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %remap_addr8.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %remap_addr8.i, align 4
  %add.ptr9.i = getelementptr i8, ptr %9, i32 16
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i) #6, !srcloc !207
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !208
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %cmp11.i = icmp sgt i32 %11, -1
  br i1 %cmp11.i, label %rtsx_write_register.exit, label %for.cond.i

rtsx_write_register.exit:                         ; preds = %for.body.i
  %conv15.i = and i32 %11, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %conv15.i, i32 %conv4.i)
  %cmp16.not.i.not = icmp eq i32 %conv15.i, %conv4.i
  br i1 %cmp16.not.i.not, label %if.end, label %rtsx_write_register.exit.cleanup_crit_edge

rtsx_write_register.exit.cleanup_crit_edge:       ; preds = %rtsx_write_register.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %rtsx_write_register.exit
  %12 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %chip, align 4
  %remap_addr.i52 = getelementptr inbounds %struct.rtsx_dev, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %remap_addr.i52 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %remap_addr.i52, align 4
  %add.ptr.i53 = getelementptr i8, ptr %15, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !209
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i53, i32 -2130756354) #6, !srcloc !210
  br label %for.body.i61

for.cond.i56:                                     ; preds = %for.body.i61
  %inc.i54 = add nuw nsw i32 %i.029.i57, 1
  %exitcond.not.i55 = icmp eq i32 %inc.i54, 1024
  br i1 %exitcond.not.i55, label %for.cond.i56.cleanup_crit_edge, label %for.cond.i56.for.body.i61_crit_edge

for.cond.i56.for.body.i61_crit_edge:              ; preds = %for.cond.i56
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i61

for.cond.i56.cleanup_crit_edge:                   ; preds = %for.cond.i56
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.i61:                                     ; preds = %for.cond.i56.for.body.i61_crit_edge, %if.end
  %i.029.i57 = phi i32 [ 0, %if.end ], [ %inc.i54, %for.cond.i56.for.body.i61_crit_edge ]
  %16 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %chip, align 4
  %remap_addr8.i58 = getelementptr inbounds %struct.rtsx_dev, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %remap_addr8.i58 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %remap_addr8.i58, align 4
  %add.ptr9.i59 = getelementptr i8, ptr %19, i32 16
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i59) #6, !srcloc !207
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !208
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %21)
  %cmp11.i60 = icmp sgt i32 %21, -1
  br i1 %cmp11.i60, label %rtsx_write_register.exit67, label %for.cond.i56

rtsx_write_register.exit67:                       ; preds = %for.body.i61
  %conv15.i62 = and i32 %21, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %conv15.i62)
  %cmp16.not.i63.not = icmp eq i32 %conv15.i62, 128
  br i1 %cmp16.not.i63.not, label %rtsx_write_register.exit67.for.body_crit_edge, label %rtsx_write_register.exit67.cleanup_crit_edge

rtsx_write_register.exit67.cleanup_crit_edge:     ; preds = %rtsx_write_register.exit67
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

rtsx_write_register.exit67.for.body_crit_edge:    ; preds = %rtsx_write_register.exit67
  br label %for.body

for.cond:                                         ; preds = %if.end9
  %inc = add nuw nsw i32 %i.0111, 1
  %exitcond.not = icmp eq i32 %inc, 100000
  br i1 %exitcond.not, label %for.cond.cleanup_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %rtsx_write_register.exit67.for.body_crit_edge
  %i.0111 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %rtsx_write_register.exit67.for.body_crit_edge ]
  %22 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %chip, align 4
  %remap_addr.i69 = getelementptr inbounds %struct.rtsx_dev, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %remap_addr.i69 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %remap_addr.i69, align 4
  %add.ptr.i70 = getelementptr i8, ptr %25, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !209
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i70, i32 15550) #6, !srcloc !210
  br label %for.body.i74

for.cond.i73:                                     ; preds = %for.body.i74
  %inc.i71 = add nuw nsw i32 %i.033.i, 1
  %exitcond.not.i72 = icmp eq i32 %inc.i71, 1024
  br i1 %exitcond.not.i72, label %for.cond.i73.cleanup_crit_edge, label %for.cond.i73.for.body.i74_crit_edge

for.cond.i73.for.body.i74_crit_edge:              ; preds = %for.cond.i73
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i74

for.cond.i73.cleanup_crit_edge:                   ; preds = %for.cond.i73
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.i74:                                     ; preds = %for.cond.i73.for.body.i74_crit_edge, %for.body
  %i.033.i = phi i32 [ 0, %for.body ], [ %inc.i71, %for.cond.i73.for.body.i74_crit_edge ]
  %26 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %chip, align 4
  %remap_addr3.i = getelementptr inbounds %struct.rtsx_dev, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %remap_addr3.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %remap_addr3.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %29, i32 16
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i) #6, !srcloc !207
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !208
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %31)
  %cmp6.i = icmp sgt i32 %31, -1
  br i1 %cmp6.i, label %if.end9, label %for.cond.i73

if.end9:                                          ; preds = %for.body.i74
  %32 = and i32 %31, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool10.not = icmp eq i32 %32, 0
  br i1 %tobool10.not, label %if.end15, label %for.cond

if.end15:                                         ; preds = %if.end9
  %33 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %chip, align 4
  %remap_addr.i77 = getelementptr inbounds %struct.rtsx_dev, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %remap_addr.i77 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %remap_addr.i77, align 4
  %add.ptr.i78 = getelementptr i8, ptr %36, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !209
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i78, i32 15806) #6, !srcloc !210
  br label %for.body.i86

for.cond.i81:                                     ; preds = %for.body.i86
  %inc.i79 = add nuw nsw i32 %i.033.i82, 1
  %exitcond.not.i80 = icmp eq i32 %inc.i79, 1024
  br i1 %exitcond.not.i80, label %for.cond.i81.cleanup_crit_edge, label %for.cond.i81.for.body.i86_crit_edge

for.cond.i81.for.body.i86_crit_edge:              ; preds = %for.cond.i81
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i86

for.cond.i81.cleanup_crit_edge:                   ; preds = %for.cond.i81
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.i86:                                     ; preds = %for.cond.i81.for.body.i86_crit_edge, %if.end15
  %i.033.i82 = phi i32 [ 0, %if.end15 ], [ %inc.i79, %for.cond.i81.for.body.i86_crit_edge ]
  %37 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %chip, align 4
  %remap_addr3.i83 = getelementptr inbounds %struct.rtsx_dev, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %remap_addr3.i83 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %remap_addr3.i83, align 4
  %add.ptr4.i84 = getelementptr i8, ptr %40, i32 16
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i84) #6, !srcloc !207
  %42 = tail call i32 @llvm.bswap.i32(i32 %41) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !208
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %42)
  %cmp6.i85 = icmp sgt i32 %42, -1
  br i1 %cmp6.i85, label %if.end19, label %for.cond.i81

if.end19:                                         ; preds = %for.body.i86
  %conv17.i88 = trunc i32 %42 to i8
  %43 = ptrtoint ptr %tmp to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %conv17.i88, ptr %tmp, align 1
  %call21 = call i32 @rtsx_read_register(ptr noundef %chip, i16 noundef zeroext -450, ptr noundef nonnull %tmp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end24:                                         ; preds = %if.end19
  %tobool29.not = icmp eq ptr %val, null
  br i1 %tobool29.not, label %if.end24.cleanup_crit_edge, label %if.then30

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then30:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  %44 = ptrtoint ptr %tmp to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %tmp, align 1
  %conv26 = zext i8 %45 to i16
  %shl = shl nuw i16 %conv26, 8
  %46 = trunc i32 %42 to i16
  %conv27 = and i16 %46, 255
  %or = or i16 %shl, %conv27
  %47 = ptrtoint ptr %val to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %or, ptr %val, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.then30, %if.end24.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %for.cond.i81.cleanup_crit_edge, %for.cond.i73.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %rtsx_write_register.exit67.cleanup_crit_edge, %for.cond.i56.cleanup_crit_edge, %rtsx_write_register.exit.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %rtsx_write_register.exit.cleanup_crit_edge ], [ 1, %rtsx_write_register.exit67.cleanup_crit_edge ], [ %call21, %if.end19.cleanup_crit_edge ], [ 0, %if.then30 ], [ 0, %if.end24.cleanup_crit_edge ], [ 2, %for.cond.i81.cleanup_crit_edge ], [ 2, %for.cond.i73.cleanup_crit_edge ], [ 1, %for.cond.cleanup_crit_edge ], [ 2, %for.cond.i56.cleanup_crit_edge ], [ 2, %for.cond.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtsx_read_efuse(ptr nocapture noundef readonly %chip, i8 noundef zeroext %addr, ptr noundef writeonly %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = or i8 %addr, -128
  %conv4.i = zext i8 %0 to i32
  %or5.i = or i32 %conv4.i, -64880896
  %1 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %chip, align 4
  %remap_addr.i = getelementptr inbounds %struct.rtsx_dev, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !209
  tail call void @arm_heavy_mb() #6
  %5 = tail call i32 @llvm.bswap.i32(i32 %or5.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %5) #6, !srcloc !210
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.029.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 1024
  br i1 %exitcond.not.i, label %for.cond.i.cleanup_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %entry
  %i.029.i = phi i32 [ 0, %entry ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %6 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chip, align 4
  %remap_addr8.i = getelementptr inbounds %struct.rtsx_dev, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %remap_addr8.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %remap_addr8.i, align 4
  %add.ptr9.i = getelementptr i8, ptr %9, i32 16
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i) #6, !srcloc !207
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !208
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %cmp11.i = icmp sgt i32 %11, -1
  br i1 %cmp11.i, label %rtsx_write_register.exit, label %for.cond.i

rtsx_write_register.exit:                         ; preds = %for.body.i
  %conv15.i = and i32 %11, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %conv15.i, i32 %conv4.i)
  %cmp16.not.i.not = icmp eq i32 %conv15.i, %conv4.i
  br i1 %cmp16.not.i.not, label %rtsx_write_register.exit.for.body_crit_edge, label %rtsx_write_register.exit.cleanup_crit_edge

rtsx_write_register.exit.cleanup_crit_edge:       ; preds = %rtsx_write_register.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

rtsx_write_register.exit.for.body_crit_edge:      ; preds = %rtsx_write_register.exit
  br label %for.body

for.body:                                         ; preds = %if.end11.for.body_crit_edge, %rtsx_write_register.exit.for.body_crit_edge
  %i.081 = phi i32 [ %inc, %if.end11.for.body_crit_edge ], [ 0, %rtsx_write_register.exit.for.body_crit_edge ]
  %12 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %chip, align 4
  %remap_addr.i36 = getelementptr inbounds %struct.rtsx_dev, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %remap_addr.i36 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %remap_addr.i36, align 4
  %add.ptr.i37 = getelementptr i8, ptr %15, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !209
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i37, i32 8636) #6, !srcloc !210
  br label %for.body.i41

for.cond.i40:                                     ; preds = %for.body.i41
  %inc.i38 = add nuw nsw i32 %i.033.i, 1
  %exitcond.not.i39 = icmp eq i32 %inc.i38, 1024
  br i1 %exitcond.not.i39, label %for.cond.i40.cleanup_crit_edge, label %for.cond.i40.for.body.i41_crit_edge

for.cond.i40.for.body.i41_crit_edge:              ; preds = %for.cond.i40
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i41

for.cond.i40.cleanup_crit_edge:                   ; preds = %for.cond.i40
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.i41:                                     ; preds = %for.cond.i40.for.body.i41_crit_edge, %for.body
  %i.033.i = phi i32 [ 0, %for.body ], [ %inc.i38, %for.cond.i40.for.body.i41_crit_edge ]
  %16 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %chip, align 4
  %remap_addr3.i = getelementptr inbounds %struct.rtsx_dev, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %remap_addr3.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %remap_addr3.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %19, i32 16
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i) #6, !srcloc !207
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !208
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %21)
  %cmp6.i = icmp sgt i32 %21, -1
  br i1 %cmp6.i, label %if.end7, label %for.cond.i40

if.end7:                                          ; preds = %for.body.i41
  %22 = and i32 %21, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool9.not = icmp eq i32 %22, 0
  br i1 %tobool9.not, label %if.end16, label %if.end11

if.end11:                                         ; preds = %if.end7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 214748) #6
  %inc = add nuw nsw i32 %i.081, 1
  %exitcond.not = icmp eq i32 %inc, 100
  br i1 %exitcond.not, label %if.end11.cleanup_crit_edge, label %if.end11.for.body_crit_edge

if.end11.for.body_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end16:                                         ; preds = %if.end7
  %24 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %chip, align 4
  %remap_addr.i44 = getelementptr inbounds %struct.rtsx_dev, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %remap_addr.i44 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %remap_addr.i44, align 4
  %add.ptr.i45 = getelementptr i8, ptr %27, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !209
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i45, i32 8892) #6, !srcloc !210
  br label %for.body.i53

for.cond.i48:                                     ; preds = %for.body.i53
  %inc.i46 = add nuw nsw i32 %i.033.i49, 1
  %exitcond.not.i47 = icmp eq i32 %inc.i46, 1024
  br i1 %exitcond.not.i47, label %for.cond.i48.cleanup_crit_edge, label %for.cond.i48.for.body.i53_crit_edge

for.cond.i48.for.body.i53_crit_edge:              ; preds = %for.cond.i48
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i53

for.cond.i48.cleanup_crit_edge:                   ; preds = %for.cond.i48
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.i53:                                     ; preds = %for.cond.i48.for.body.i53_crit_edge, %if.end16
  %i.033.i49 = phi i32 [ 0, %if.end16 ], [ %inc.i46, %for.cond.i48.for.body.i53_crit_edge ]
  %28 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %chip, align 4
  %remap_addr3.i50 = getelementptr inbounds %struct.rtsx_dev, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %remap_addr3.i50 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %remap_addr3.i50, align 4
  %add.ptr4.i51 = getelementptr i8, ptr %31, i32 16
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i51) #6, !srcloc !207
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !208
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %33)
  %cmp6.i52 = icmp sgt i32 %33, -1
  br i1 %cmp6.i52, label %if.end20, label %for.cond.i48

if.end20:                                         ; preds = %for.body.i53
  %tobool21.not = icmp eq ptr %val, null
  br i1 %tobool21.not, label %if.end20.cleanup_crit_edge, label %if.then22

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then22:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  %conv17.i55 = trunc i32 %33 to i8
  %34 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv17.i55, ptr %val, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then22, %if.end20.cleanup_crit_edge, %for.cond.i48.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %for.cond.i40.cleanup_crit_edge, %rtsx_write_register.exit.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %rtsx_write_register.exit.cleanup_crit_edge ], [ 0, %if.then22 ], [ 0, %if.end20.cleanup_crit_edge ], [ 2, %for.cond.i48.cleanup_crit_edge ], [ 2, %for.cond.i40.cleanup_crit_edge ], [ 2, %if.end11.cleanup_crit_edge ], [ 2, %for.cond.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtsx_write_efuse(ptr nocapture noundef readonly %chip, i8 noundef zeroext %addr, i8 noundef zeroext %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %val to i32
  %conv17 = zext i8 %addr to i32
  %0 = or i8 %addr, -96
  %conv4.i236 = zext i8 %0 to i32
  %or5.i238 = or i32 %conv4.i236, -64880896
  %1 = tail call i32 @llvm.bswap.i32(i32 %or5.i238) #6
  br label %for.body

for.body:                                         ; preds = %for.inc209.for.body_crit_edge, %entry
  %i.0292 = phi i32 [ 0, %entry ], [ %inc210, %for.inc209.for.body_crit_edge ]
  %tmp.0291 = phi i8 [ -1, %entry ], [ %tmp.1, %for.inc209.for.body_crit_edge ]
  %shl = shl nuw nsw i32 1, %i.0292
  %and = and i32 %shl, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %for.body.for.inc209_crit_edge

for.body.for.inc209_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc209

if.end:                                           ; preds = %for.body
  %2 = trunc i32 %shl to i8
  %3 = xor i8 %2, -1
  %conv9 = and i8 %tmp.0291, %3
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtsx_write_efuse.__UNIQUE_ID_ddebug333, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtsx_write_efuse, %if.then14)) #6
          to label %do.end [label %if.then14], !srcloc !211

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chip, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  %conv16 = zext i8 %conv9 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtsx_write_efuse.__UNIQUE_ID_ddebug333, ptr noundef %dev.i, ptr noundef nonnull @.str.34, i32 noundef %conv16, i32 noundef %conv17) #6
  br label %do.end

do.end:                                           ; preds = %if.then14, %if.end
  %conv4.i = zext i8 %conv9 to i32
  %or5.i = or i32 %conv4.i, -64815360
  %8 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %chip, align 4
  %remap_addr.i = getelementptr inbounds %struct.rtsx_dev, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !209
  tail call void @arm_heavy_mb() #6
  %12 = tail call i32 @llvm.bswap.i32(i32 %or5.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %12) #6, !srcloc !210
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.029.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 1024
  br i1 %exitcond.not.i, label %for.cond.i.cleanup_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %do.end
  %i.029.i = phi i32 [ 0, %do.end ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %13 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %chip, align 4
  %remap_addr8.i = getelementptr inbounds %struct.rtsx_dev, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %remap_addr8.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %remap_addr8.i, align 4
  %add.ptr9.i = getelementptr i8, ptr %16, i32 16
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i) #6, !srcloc !207
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !208
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %18)
  %cmp11.i = icmp sgt i32 %18, -1
  br i1 %cmp11.i, label %rtsx_write_register.exit, label %for.cond.i

rtsx_write_register.exit:                         ; preds = %for.body.i
  %conv15.i = and i32 %18, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %conv15.i, i32 %conv4.i)
  %cmp16.not.i.not = icmp eq i32 %conv15.i, %conv4.i
  br i1 %cmp16.not.i.not, label %if.end22, label %rtsx_write_register.exit.cleanup_crit_edge

rtsx_write_register.exit.cleanup_crit_edge:       ; preds = %rtsx_write_register.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end22:                                         ; preds = %rtsx_write_register.exit
  %19 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %chip, align 4
  %remap_addr.i239 = getelementptr inbounds %struct.rtsx_dev, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %remap_addr.i239 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %remap_addr.i239, align 4
  %add.ptr.i240 = getelementptr i8, ptr %22, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !209
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i240, i32 %1) #6, !srcloc !210
  br label %for.body.i248

for.cond.i243:                                    ; preds = %for.body.i248
  %inc.i241 = add nuw nsw i32 %i.029.i244, 1
  %exitcond.not.i242 = icmp eq i32 %inc.i241, 1024
  br i1 %exitcond.not.i242, label %for.cond.i243.cleanup_crit_edge, label %for.cond.i243.for.body.i248_crit_edge

for.cond.i243.for.body.i248_crit_edge:            ; preds = %for.cond.i243
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i248

for.cond.i243.cleanup_crit_edge:                  ; preds = %for.cond.i243
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.i248:                                    ; preds = %for.cond.i243.for.body.i248_crit_edge, %if.end22
  %i.029.i244 = phi i32 [ 0, %if.end22 ], [ %inc.i241, %for.cond.i243.for.body.i248_crit_edge ]
  %23 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %chip, align 4
  %remap_addr8.i245 = getelementptr inbounds %struct.rtsx_dev, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %remap_addr8.i245 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %remap_addr8.i245, align 4
  %add.ptr9.i246 = getelementptr i8, ptr %26, i32 16
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i246) #6, !srcloc !207
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !208
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %28)
  %cmp11.i247 = icmp sgt i32 %28, -1
  br i1 %cmp11.i247, label %rtsx_write_register.exit254, label %for.cond.i243

rtsx_write_register.exit254:                      ; preds = %for.body.i248
  %conv15.i249 = and i32 %28, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %conv15.i249, i32 %conv4.i236)
  %cmp16.not.i250.not = icmp eq i32 %conv15.i249, %conv4.i236
  br i1 %cmp16.not.i250.not, label %rtsx_write_register.exit254.for.body32_crit_edge, label %rtsx_write_register.exit254.cleanup_crit_edge

rtsx_write_register.exit254.cleanup_crit_edge:    ; preds = %rtsx_write_register.exit254
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

rtsx_write_register.exit254.for.body32_crit_edge: ; preds = %rtsx_write_register.exit254
  br label %for.body32

for.body32:                                       ; preds = %__here.for.body32_crit_edge, %rtsx_write_register.exit254.for.body32_crit_edge
  %j.0287 = phi i32 [ %inc, %__here.for.body32_crit_edge ], [ 0, %rtsx_write_register.exit254.for.body32_crit_edge ]
  %29 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %chip, align 4
  %remap_addr.i256 = getelementptr inbounds %struct.rtsx_dev, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %remap_addr.i256 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %remap_addr.i256, align 4
  %add.ptr.i257 = getelementptr i8, ptr %32, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !209
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i257, i32 8636) #6, !srcloc !210
  br label %for.body.i261

for.cond.i260:                                    ; preds = %for.body.i261
  %inc.i258 = add nuw nsw i32 %i.033.i, 1
  %exitcond.not.i259 = icmp eq i32 %inc.i258, 1024
  br i1 %exitcond.not.i259, label %for.cond.i260.cleanup_crit_edge, label %for.cond.i260.for.body.i261_crit_edge

for.cond.i260.for.body.i261_crit_edge:            ; preds = %for.cond.i260
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i261

for.cond.i260.cleanup_crit_edge:                  ; preds = %for.cond.i260
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.i261:                                    ; preds = %for.cond.i260.for.body.i261_crit_edge, %for.body32
  %i.033.i = phi i32 [ 0, %for.body32 ], [ %inc.i258, %for.cond.i260.for.body.i261_crit_edge ]
  %33 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %chip, align 4
  %remap_addr3.i = getelementptr inbounds %struct.rtsx_dev, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %remap_addr3.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %remap_addr3.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %36, i32 16
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i) #6, !srcloc !207
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !208
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %38)
  %cmp6.i = icmp sgt i32 %38, -1
  br i1 %cmp6.i, label %if.end36, label %for.cond.i260

if.end36:                                         ; preds = %for.body.i261
  %39 = and i32 %38, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool39.not = icmp eq i32 %39, 0
  br i1 %tobool39.not, label %__here176, label %__here

__here:                                           ; preds = %if.end36
  %40 = tail call i32 @llvm.read_register.i32(metadata !197) #6
  %and.i = and i32 %40, -16384
  %41 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %43, i32 0, i32 212
  %44 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 ptrtoint (ptr blockaddress(@rtsx_write_efuse, %__here) to i32), ptr %task_state_change, align 4
  %45 = load ptr, ptr %task, align 8
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile i32 1, ptr %45, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !216
  %call116 = tail call i32 @schedule_timeout(i32 noundef 0) #6
  %inc = add nuw nsw i32 %j.0287, 1
  %exitcond.not = icmp eq i32 %inc, 100
  br i1 %exitcond.not, label %__here.cleanup_crit_edge, label %__here.for.body32_crit_edge

__here.for.body32_crit_edge:                      ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body32

__here.cleanup_crit_edge:                         ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

__here176:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  %47 = tail call i32 @llvm.read_register.i32(metadata !197) #6
  %and.i263 = and i32 %47, -16384
  %48 = inttoptr i32 %and.i263 to ptr
  %task179 = getelementptr inbounds %struct.thread_info, ptr %48, i32 0, i32 2
  %49 = ptrtoint ptr %task179 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %task179, align 8
  %task_state_change180 = getelementptr inbounds %struct.task_struct, ptr %50, i32 0, i32 212
  %51 = ptrtoint ptr %task_state_change180 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 ptrtoint (ptr blockaddress(@rtsx_write_efuse, %__here176) to i32), ptr %task_state_change180, align 4
  %52 = load ptr, ptr %task179, align 8
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile i32 1, ptr %52, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !217
  %call206 = tail call i32 @schedule_timeout(i32 noundef 0) #6
  br label %for.inc209

for.inc209:                                       ; preds = %__here176, %for.body.for.inc209_crit_edge
  %tmp.1 = phi i8 [ %conv9, %__here176 ], [ %tmp.0291, %for.body.for.inc209_crit_edge ]
  %inc210 = add nuw nsw i32 %i.0292, 1
  %exitcond302.not = icmp eq i32 %inc210, 8
  br i1 %exitcond302.not, label %for.inc209.cleanup_crit_edge, label %for.inc209.for.body_crit_edge

for.inc209.for.body_crit_edge:                    ; preds = %for.inc209
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc209.cleanup_crit_edge:                     ; preds = %for.inc209
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %for.inc209.cleanup_crit_edge, %__here.cleanup_crit_edge, %for.cond.i260.cleanup_crit_edge, %rtsx_write_register.exit254.cleanup_crit_edge, %for.cond.i243.cleanup_crit_edge, %rtsx_write_register.exit.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 2, %for.cond.i260.cleanup_crit_edge ], [ 2, %__here.cleanup_crit_edge ], [ 2, %for.cond.i243.cleanup_crit_edge ], [ 2, %for.cond.i.cleanup_crit_edge ], [ 0, %for.inc209.cleanup_crit_edge ], [ 1, %rtsx_write_register.exit254.cleanup_crit_edge ], [ 1, %rtsx_write_register.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtsx_set_phy_reg_bit(ptr nocapture noundef readonly %chip, i8 noundef zeroext %reg, i8 noundef zeroext %bit) local_unnamed_addr #0 align 64 {
entry:
  %value = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %value) #6
  %0 = ptrtoint ptr %value to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %value, align 2, !annotation !214
  %call = call i32 @rtsx_read_phy_register(ptr noundef %chip, i8 noundef zeroext %reg, ptr noundef nonnull %value)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %value to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %value, align 2
  %conv = zext i16 %2 to i32
  %conv2 = zext i8 %bit to i32
  %shl = shl nuw i32 1, %conv2
  %and = and i32 %shl, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp3 = icmp eq i32 %and, 0
  br i1 %cmp3, label %if.then5, label %if.end.if.end15_crit_edge

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

if.then5:                                         ; preds = %if.end
  %3 = trunc i32 %shl to i16
  %conv9 = or i16 %2, %3
  %4 = ptrtoint ptr %value to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %conv9, ptr %value, align 2
  %call10 = call i32 @rtsx_write_phy_register(ptr noundef %chip, i8 noundef zeroext %reg, i16 noundef zeroext %conv9)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11.not = icmp eq i32 %call10, 0
  br i1 %cmp11.not, label %if.then5.if.end15_crit_edge, label %if.then5.cleanup_crit_edge

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then5.if.end15_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

if.end15:                                         ; preds = %if.then5.if.end15_crit_edge, %if.end.if.end15_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.then5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end15 ], [ 1, %entry.cleanup_crit_edge ], [ 1, %if.then5.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %value) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtsx_enter_L1(ptr nocapture noundef readonly %chip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @rtsx_handle_pm_dstate(ptr noundef %chip)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rtsx_handle_pm_dstate(ptr nocapture noundef readonly %chip) unnamed_addr #0 align 64 {
entry:
  %ultmp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ultmp) #6
  %0 = ptrtoint ptr %ultmp to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %ultmp, align 4, !annotation !214
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtsx_handle_pm_dstate.__UNIQUE_ID_ddebug336, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtsx_handle_pm_dstate, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !211

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %chip, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  %product_id = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 58
  %5 = ptrtoint ptr %product_id to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %product_id, align 2
  %conv = zext i16 %6 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtsx_handle_pm_dstate.__UNIQUE_ID_ddebug336, ptr noundef %dev.i, ptr noundef nonnull @.str.72, i32 noundef %conv, i32 noundef 2) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %sdio_func_exist = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 77
  %7 = ptrtoint ptr %sdio_func_exist to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %sdio_func_exist, align 4
  %and = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %do.end.if.end33_crit_edge, label %if.then6

do.end.if.end33_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33

if.then6:                                         ; preds = %do.end
  %product_id7 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 58
  %9 = ptrtoint ptr %product_id7 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %product_id7, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 21128, i16 %10)
  %cmp = icmp eq i16 %10, 21128
  %. = select i1 %cmp, i8 2, i8 1
  %call12 = call i32 @rtsx_read_cfg_dw(ptr noundef %chip, i8 noundef zeroext %., i16 noundef zeroext 132, ptr noundef nonnull %ultmp)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtsx_handle_pm_dstate.__UNIQUE_ID_ddebug337, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtsx_handle_pm_dstate, %if.then25)) #6
          to label %do.end30 [label %if.then25], !srcloc !211

if.then25:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %chip, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %dev.i4 = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44
  %conv27 = zext i8 %. to i32
  %15 = ptrtoint ptr %ultmp to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ultmp, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtsx_handle_pm_dstate.__UNIQUE_ID_ddebug337, ptr noundef %dev.i4, ptr noundef nonnull @.str.73, i32 noundef %conv27, i32 noundef %16) #6
  br label %do.end30

do.end30:                                         ; preds = %if.then25, %if.then6
  %call32 = call i32 @rtsx_write_cfg_dw(ptr noundef %chip, i8 noundef zeroext %., i16 noundef zeroext 132, i32 noundef 255, i32 noundef 2)
  br label %if.end33

if.end33:                                         ; preds = %do.end30, %do.end.if.end33_crit_edge
  %17 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %chip, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %call34 = call i32 @pci_write_config_byte(ptr noundef %20, i32 noundef 68, i8 noundef zeroext 2) #6
  %21 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %chip, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  %call37 = call i32 @pci_write_config_byte(ptr noundef %24, i32 noundef 69, i8 noundef zeroext 0) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ultmp) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtsx_exit_L1(ptr nocapture noundef readonly %chip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call = tail call i32 @pci_write_config_byte(ptr noundef %3, i32 noundef 68, i8 noundef zeroext 0) #6
  %4 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chip, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %call3 = tail call i32 @pci_write_config_byte(ptr noundef %7, i32 noundef 69, i8 noundef zeroext 0) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtsx_enter_ss(ptr noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtsx_enter_ss.__UNIQUE_ID_ddebug338, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtsx_enter_ss, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !211

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtsx_enter_ss.__UNIQUE_ID_ddebug338, ptr noundef %dev.i, ptr noundef nonnull @.str.37) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %4 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chip, align 4
  %remap_addr.i = getelementptr inbounds %struct.rtsx_dev, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !209
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 538976766) #6, !srcloc !210
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %do.end
  %i.029.i = phi i32 [ 0, %do.end ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %8 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %chip, align 4
  %remap_addr8.i = getelementptr inbounds %struct.rtsx_dev, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %remap_addr8.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %remap_addr8.i, align 4
  %add.ptr9.i = getelementptr i8, ptr %11, i32 16
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i) #6, !srcloc !207
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !208
  %.mask = and i32 %12, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask)
  %cmp11.i = icmp eq i32 %.mask, 0
  %inc.i = add nuw nsw i32 %i.029.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %inc.i)
  %exitcond.not.i = icmp eq i32 %inc.i, 1024
  %or.cond89 = select i1 %cmp11.i, i1 true, i1 %exitcond.not.i
  br i1 %or.cond89, label %rtsx_write_register.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

rtsx_write_register.exit:                         ; preds = %for.body.i
  %power_down_in_ss = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 69
  %13 = ptrtoint ptr %power_down_in_ss to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %power_down_in_ss, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool5.not = icmp eq i32 %14, 0
  br i1 %tobool5.not, label %rtsx_write_register.exit.if.end8_crit_edge, label %if.then6

rtsx_write_register.exit.if.end8_crit_edge:       ; preds = %rtsx_write_register.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.then6:                                         ; preds = %rtsx_write_register.exit
  tail call void @rtsx_power_off_card(ptr noundef %chip) #6
  %lun_mode.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 67
  %15 = ptrtoint ptr %lun_mode.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %lun_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %16)
  %cmp.i = icmp eq i8 %16, 1
  %or5.i.i = select i1 %cmp.i, i32 -67107065, i32 -67108093
  %17 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %chip, align 4
  %remap_addr.i.i = getelementptr inbounds %struct.rtsx_dev, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %remap_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %remap_addr.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %20, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !209
  tail call void @arm_heavy_mb() #6
  %21 = tail call i32 @llvm.bswap.i32(i32 %or5.i.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %21) #6, !srcloc !210
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.then6
  %i.029.i.i = phi i32 [ 0, %if.then6 ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %22 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %chip, align 4
  %remap_addr8.i.i = getelementptr inbounds %struct.rtsx_dev, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %remap_addr8.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %remap_addr8.i.i, align 4
  %add.ptr9.i.i = getelementptr i8, ptr %25, i32 16
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i.i) #6, !srcloc !207
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !208
  %.mask86 = and i32 %26, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask86)
  %cmp11.i.i = icmp eq i32 %.mask86, 0
  %inc.i.i = add nuw nsw i32 %i.029.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %inc.i.i)
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 1024
  %or.cond = select i1 %cmp11.i.i, i1 true, i1 %exitcond.not.i.i
  br i1 %or.cond, label %for.body.i.i.if.end8_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

for.body.i.i.if.end8_crit_edge:                   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.end8:                                          ; preds = %for.body.i.i.if.end8_crit_edge, %rtsx_write_register.exit.if.end8_crit_edge
  %sdio_func_exist = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 77
  %27 = ptrtoint ptr %sdio_func_exist to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %sdio_func_exist, align 4
  %and = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %if.end8.if.end14_crit_edge, label %if.then10

if.end8.if.end14_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  %product_id = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 58
  %29 = ptrtoint ptr %product_id to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %product_id, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 21128, i16 %30)
  %cmp = icmp eq i16 %30, 21128
  %conv12 = select i1 %cmp, i8 2, i8 1
  %call13 = tail call i32 @rtsx_write_cfg_dw(ptr noundef %chip, i8 noundef zeroext %conv12, i16 noundef zeroext 192, i32 noundef 65280, i32 noundef 256)
  br label %if.end14

if.end14:                                         ; preds = %if.then10, %if.end8.if.end14_crit_edge
  %auto_delink_en = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 65
  %31 = ptrtoint ptr %auto_delink_en to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %auto_delink_en, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool15.not = icmp eq i32 %32, 0
  br i1 %tobool15.not, label %if.else, label %if.then16

if.then16:                                        ; preds = %if.end14
  %33 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %chip, align 4
  %remap_addr.i53 = getelementptr inbounds %struct.rtsx_dev, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %remap_addr.i53 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %remap_addr.i53, align 4
  %add.ptr.i54 = getelementptr i8, ptr %36, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !209
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i54, i32 16867582) #6, !srcloc !210
  br label %for.body.i62

for.body.i62:                                     ; preds = %for.body.i62.for.body.i62_crit_edge, %if.then16
  %i.029.i58 = phi i32 [ 0, %if.then16 ], [ %inc.i55, %for.body.i62.for.body.i62_crit_edge ]
  %37 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %chip, align 4
  %remap_addr8.i59 = getelementptr inbounds %struct.rtsx_dev, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %remap_addr8.i59 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %remap_addr8.i59, align 4
  %add.ptr9.i60 = getelementptr i8, ptr %40, i32 16
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i60) #6, !srcloc !207
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !208
  %.mask87 = and i32 %41, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask87)
  %cmp11.i61 = icmp eq i32 %.mask87, 0
  %inc.i55 = add nuw nsw i32 %i.029.i58, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %inc.i55)
  %exitcond.not.i56 = icmp eq i32 %inc.i55, 1024
  %or.cond90 = select i1 %cmp11.i61, i1 true, i1 %exitcond.not.i56
  br i1 %or.cond90, label %for.body.i62.if.end27_crit_edge, label %for.body.i62.for.body.i62_crit_edge

for.body.i62.for.body.i62_crit_edge:              ; preds = %for.body.i62
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i62

for.body.i62.if.end27_crit_edge:                  ; preds = %for.body.i62
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27

if.else:                                          ; preds = %if.end14
  %phy_debug_mode = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 75
  %42 = ptrtoint ptr %phy_debug_mode to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %phy_debug_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool18.not = icmp eq i32 %43, 0
  br i1 %tobool18.not, label %if.then19, label %if.else.if.end25_crit_edge

if.else.if.end25_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

if.then19:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %44 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %chip, align 4
  %remap_addr = getelementptr inbounds %struct.rtsx_dev, ptr %45, i32 0, i32 2
  %46 = ptrtoint ptr %remap_addr to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %remap_addr, align 4
  %add.ptr = getelementptr i8, ptr %47, i32 24
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !207
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !208
  %49 = or i32 %48, 14
  %50 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %chip, align 4
  %remap_addr23 = getelementptr inbounds %struct.rtsx_dev, ptr %51, i32 0, i32 2
  %52 = ptrtoint ptr %remap_addr23 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %remap_addr23, align 4
  %add.ptr24 = getelementptr i8, ptr %53, i32 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !209
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24, i32 %49) #6, !srcloc !210
  br label %if.end25

if.end25:                                         ; preds = %if.then19, %if.else.if.end25_crit_edge
  %54 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %chip, align 4
  %remap_addr.i69 = getelementptr inbounds %struct.rtsx_dev, ptr %55, i32 0, i32 2
  %56 = ptrtoint ptr %remap_addr.i69 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %remap_addr.i69, align 4
  %add.ptr.i70 = getelementptr i8, ptr %57, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !209
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i70, i32 154622) #6, !srcloc !210
  br label %for.body.i78

for.body.i78:                                     ; preds = %for.body.i78.for.body.i78_crit_edge, %if.end25
  %i.029.i74 = phi i32 [ 0, %if.end25 ], [ %inc.i71, %for.body.i78.for.body.i78_crit_edge ]
  %58 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %chip, align 4
  %remap_addr8.i75 = getelementptr inbounds %struct.rtsx_dev, ptr %59, i32 0, i32 2
  %60 = ptrtoint ptr %remap_addr8.i75 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %remap_addr8.i75, align 4
  %add.ptr9.i76 = getelementptr i8, ptr %61, i32 16
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i76) #6, !srcloc !207
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !208
  %.mask88 = and i32 %62, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask88)
  %cmp11.i77 = icmp eq i32 %.mask88, 0
  %inc.i71 = add nuw nsw i32 %i.029.i74, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %inc.i71)
  %exitcond.not.i72 = icmp eq i32 %inc.i71, 1024
  %or.cond91 = select i1 %cmp11.i77, i1 true, i1 %exitcond.not.i72
  br i1 %or.cond91, label %for.body.i78.if.end27_crit_edge, label %for.body.i78.for.body.i78_crit_edge

for.body.i78.for.body.i78_crit_edge:              ; preds = %for.body.i78
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i78

for.body.i78.if.end27_crit_edge:                  ; preds = %for.body.i78
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27

if.end27:                                         ; preds = %for.body.i78.if.end27_crit_edge, %for.body.i62.if.end27_crit_edge
  tail call fastcc void @rtsx_handle_pm_dstate(ptr noundef %chip) #6
  %rtsx_flag = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 53
  %63 = ptrtoint ptr %rtsx_flag to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %rtsx_flag, align 2
  %65 = and i8 %64, -2
  store i8 %65, ptr %rtsx_flag, align 2
  %idle_counter = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 55
  %66 = ptrtoint ptr %idle_counter to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 0, ptr %idle_counter, align 4
  %rtsx_stat = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 56
  %67 = ptrtoint ptr %rtsx_stat to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 3, ptr %rtsx_stat, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtsx_power_off_card(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtsx_force_power_down(ptr nocapture noundef readonly %chip, i8 noundef zeroext %ctl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i8 %ctl, 1
  %0 = and i8 %ctl, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool6.not = icmp eq i8 %0, 0
  br i1 %tobool6.not, label %if.end18, label %if.end18.thread

if.end18.thread:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %lun_mode = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 67
  %1 = ptrtoint ptr %lun_mode to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %lun_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %2)
  %cmp = icmp eq i8 %2, 1
  %spec.select35.v = select i1 %cmp, i8 6, i8 2
  %spec.select35 = or i8 %spec.select35.v, %and
  %phi.cast = zext i8 %spec.select35 to i32
  br label %if.then20

if.end18:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and)
  %tobool19.not = icmp eq i8 %and, 0
  br i1 %tobool19.not, label %if.end18.if.end25_crit_edge, label %if.end18.if.then20_crit_edge

if.end18.if.then20_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then20

if.end18.if.end25_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

if.then20:                                        ; preds = %if.end18.if.then20_crit_edge, %if.end18.thread
  %mask.138 = phi i32 [ %phi.cast, %if.end18.thread ], [ 1, %if.end18.if.then20_crit_edge ]
  %or.i = mul nuw nsw i32 %mask.138, 257
  %or5.i = or i32 %or.i, -67108864
  %3 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %chip, align 4
  %remap_addr.i = getelementptr inbounds %struct.rtsx_dev, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !209
  tail call void @arm_heavy_mb() #6
  %7 = tail call i32 @llvm.bswap.i32(i32 %or5.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %7) #6, !srcloc !210
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.029.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 1024
  br i1 %exitcond.not.i, label %for.cond.i.cleanup_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %if.then20
  %i.029.i = phi i32 [ 0, %if.then20 ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %8 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %chip, align 4
  %remap_addr8.i = getelementptr inbounds %struct.rtsx_dev, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %remap_addr8.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %remap_addr8.i, align 4
  %add.ptr9.i = getelementptr i8, ptr %11, i32 16
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i) #6, !srcloc !207
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !208
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %cmp11.i = icmp sgt i32 %13, -1
  br i1 %cmp11.i, label %rtsx_write_register.exit, label %for.cond.i

rtsx_write_register.exit:                         ; preds = %for.body.i
  %conv15.i = and i32 %13, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %conv15.i, i32 %mask.138)
  %cmp16.not.i.not = icmp eq i32 %conv15.i, %mask.138
  br i1 %cmp16.not.i.not, label %rtsx_write_register.exit.if.end25_crit_edge, label %rtsx_write_register.exit.cleanup_crit_edge

rtsx_write_register.exit.cleanup_crit_edge:       ; preds = %rtsx_write_register.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

rtsx_write_register.exit.if.end25_crit_edge:      ; preds = %rtsx_write_register.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

if.end25:                                         ; preds = %rtsx_write_register.exit.if.end25_crit_edge, %if.end18.if.end25_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %rtsx_write_register.exit.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end25 ], [ 1, %rtsx_write_register.exit.cleanup_crit_edge ], [ 1, %for.cond.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtsx_exit_ss(ptr noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtsx_exit_ss.__UNIQUE_ID_ddebug339, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtsx_exit_ss, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !211

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtsx_exit_ss.__UNIQUE_ID_ddebug339, ptr noundef %dev.i, ptr noundef nonnull @.str.39) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %4 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chip, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %call.i = tail call i32 @pci_write_config_byte(ptr noundef %7, i32 noundef 68, i8 noundef zeroext 0) #6
  %8 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %chip, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %call3.i = tail call i32 @pci_write_config_byte(ptr noundef %11, i32 noundef 69, i8 noundef zeroext 0) #6
  %power_down_in_ss = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 69
  %12 = ptrtoint ptr %power_down_in_ss to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %power_down_in_ss, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool4.not = icmp eq i32 %13, 0
  br i1 %tobool4.not, label %do.end.if.end7_crit_edge, label %if.then5

do.end.if.end7_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.then5:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %call6 = tail call i32 @rtsx_force_power_on(ptr noundef %chip, i8 noundef zeroext 3)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 214748000) #6
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %do.end.if.end7_crit_edge
  %rtsx_flag = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 53
  %15 = ptrtoint ptr %rtsx_flag to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %rtsx_flag, align 2
  %17 = and i8 %16, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool8.not = icmp eq i8 %17, 0
  br i1 %tobool8.not, label %if.else, label %if.then9

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %need_reinit = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 16
  %18 = ptrtoint ptr %need_reinit to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 28, ptr %need_reinit, align 4
  tail call void @rtsx_reinit_cards(ptr noundef %chip, i32 noundef 1) #6
  %19 = ptrtoint ptr %rtsx_flag to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %rtsx_flag, align 2
  %21 = and i8 %20, -2
  store i8 %21, ptr %rtsx_flag, align 2
  br label %if.end19

if.else:                                          ; preds = %if.end7
  %22 = ptrtoint ptr %power_down_in_ss to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %power_down_in_ss, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool15.not = icmp eq i32 %23, 0
  br i1 %tobool15.not, label %if.else.if.end19_crit_edge, label %if.then16

if.else.if.end19_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

if.then16:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %need_reinit17 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 16
  %24 = ptrtoint ptr %need_reinit17 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 28, ptr %need_reinit17, align 4
  tail call void @rtsx_reinit_cards(ptr noundef %chip, i32 noundef 0) #6
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %if.else.if.end19_crit_edge, %if.then9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtsx_force_power_on(ptr nocapture noundef readonly %chip, i8 noundef zeroext %ctl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i8 %ctl, 1
  %0 = and i8 %ctl, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool6.not = icmp eq i8 %0, 0
  br i1 %tobool6.not, label %if.end18, label %if.end18.thread

if.end18.thread:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %lun_mode = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 67
  %1 = ptrtoint ptr %lun_mode to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %lun_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %2)
  %cmp = icmp eq i8 %2, 1
  %spec.select109.v = select i1 %cmp, i8 6, i8 2
  %spec.select109 = or i8 %spec.select109.v, %and
  %phi.cast = zext i8 %spec.select109 to i32
  %phi.bo = shl nuw nsw i32 %phi.cast, 8
  %phi.bo116 = or i32 %phi.bo, -67108864
  br label %if.then20

if.end18:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and)
  %tobool19.not = icmp eq i8 %and, 0
  br i1 %tobool19.not, label %if.end18.cleanup_crit_edge, label %if.end18.if.then20_crit_edge

if.end18.if.then20_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then20

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then20:                                        ; preds = %if.end18.if.then20_crit_edge, %if.end18.thread
  %mask.1112 = phi i32 [ %phi.bo116, %if.end18.thread ], [ -67108608, %if.end18.if.then20_crit_edge ]
  %3 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %chip, align 4
  %remap_addr.i = getelementptr inbounds %struct.rtsx_dev, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !209
  tail call void @arm_heavy_mb() #6
  %7 = tail call i32 @llvm.bswap.i32(i32 %mask.1112) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %7) #6, !srcloc !210
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.029.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 1024
  br i1 %exitcond.not.i, label %for.cond.i.cleanup_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %if.then20
  %i.029.i = phi i32 [ 0, %if.then20 ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %8 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %chip, align 4
  %remap_addr8.i = getelementptr inbounds %struct.rtsx_dev, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %remap_addr8.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %remap_addr8.i, align 4
  %add.ptr9.i = getelementptr i8, ptr %11, i32 16
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i) #6, !srcloc !207
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !208
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %cmp11.i = icmp sgt i32 %13, -1
  br i1 %cmp11.i, label %rtsx_write_register.exit, label %for.cond.i

rtsx_write_register.exit:                         ; preds = %for.body.i
  %conv15.i = and i32 %13, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv15.i)
  %cmp16.not.i.not = icmp eq i32 %conv15.i, 0
  br i1 %cmp16.not.i.not, label %if.end24, label %rtsx_write_register.exit.cleanup_crit_edge

rtsx_write_register.exit.cleanup_crit_edge:       ; preds = %rtsx_write_register.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end24:                                         ; preds = %rtsx_write_register.exit
  %product_id = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 58
  %14 = ptrtoint ptr %product_id to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %product_id, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 21128, i16 %15)
  %cmp26 = icmp eq i16 %15, 21128
  br i1 %cmp26, label %__here, label %if.end24.cleanup_crit_edge

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

__here:                                           ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  %16 = tail call i32 @llvm.read_register.i32(metadata !197) #6
  %and.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %19, i32 0, i32 212
  %20 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 ptrtoint (ptr blockaddress(@rtsx_force_power_on, %__here) to i32), ptr %task_state_change, align 4
  %21 = load ptr, ptr %task, align 8
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile i32 1, ptr %21, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !218
  %call94 = tail call i32 @schedule_timeout(i32 noundef 20) #6
  br label %cleanup

cleanup:                                          ; preds = %__here, %if.end24.cleanup_crit_edge, %rtsx_write_register.exit.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge, %if.end18.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %rtsx_write_register.exit.cleanup_crit_edge ], [ 0, %if.end24.cleanup_crit_edge ], [ 0, %__here ], [ 0, %if.end18.cleanup_crit_edge ], [ 1, %for.cond.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtsx_reinit_cards(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtsx_pre_handle_interrupt(ptr noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ss_en = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 66
  %0 = ptrtoint ptr %ss_en to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ss_en, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end3_crit_edge, label %if.then

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3

if.then:                                          ; preds = %entry
  %ss_counter = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 54
  %2 = ptrtoint ptr %ss_counter to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %ss_counter, align 4
  %rtsx_stat = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 56
  %3 = ptrtoint ptr %rtsx_stat to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %rtsx_stat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %4)
  %cmp = icmp eq i32 %4, 3
  br i1 %cmp, label %if.then1, label %if.then.if.end3_crit_edge

if.then.if.end3_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3

if.then1:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %chip, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %call.i = tail call i32 @pci_write_config_byte(ptr noundef %8, i32 noundef 68, i8 noundef zeroext 0) #6
  %9 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %chip, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %call3.i = tail call i32 @pci_write_config_byte(ptr noundef %12, i32 noundef 69, i8 noundef zeroext 0) #6
  %idle_counter = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 55
  %13 = ptrtoint ptr %idle_counter to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %idle_counter, align 4
  %14 = ptrtoint ptr %rtsx_stat to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 2, ptr %rtsx_stat, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.then1, %if.then.if.end3_crit_edge, %entry.if.end3_crit_edge
  %exit_ss.0.off0 = phi i1 [ false, %if.then1 ], [ true, %if.then.if.end3_crit_edge ], [ true, %entry.if.end3_crit_edge ]
  %15 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %chip, align 4
  %remap_addr = getelementptr inbounds %struct.rtsx_dev, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %remap_addr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %remap_addr, align 4
  %add.ptr = getelementptr i8, ptr %18, i32 24
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !207
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !208
  %21 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %chip, align 4
  %remap_addr5 = getelementptr inbounds %struct.rtsx_dev, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %remap_addr5 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %remap_addr5, align 4
  %add.ptr6 = getelementptr i8, ptr %24, i32 20
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #6, !srcloc !207
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !208
  %int_reg = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 1
  %27 = ptrtoint ptr %int_reg to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %int_reg, align 4
  %and = and i32 %26, %20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp9 = icmp eq i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %25)
  %cmp11 = icmp eq i32 %25, -1
  %or.cond = or i1 %cmp11, %cmp9
  br i1 %or.cond, label %if.end3.cleanup_crit_edge, label %if.end13

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end13:                                         ; preds = %if.end3
  %or = or i32 %20, 8388607
  %and15 = and i32 %26, %or
  %28 = ptrtoint ptr %int_reg to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %and15, ptr %int_reg, align 4
  %and16 = and i32 %and15, 234881024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.end13.if.end83_crit_edge, label %if.then18

if.end13.if.end83_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end83

if.then18:                                        ; preds = %if.end13
  %auto_delink_cnt = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 44
  %29 = ptrtoint ptr %auto_delink_cnt to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %auto_delink_cnt, align 4
  %and19 = and i32 %and15, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  %and29 = and i32 %26, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool20.not, label %if.else27, label %if.then21

if.then21:                                        ; preds = %if.then18
  br i1 %tobool30.not, label %if.else, label %if.then24

if.then24:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #8
  %need_reset = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 15
  tail call void @_set_bit(i32 noundef 2, ptr noundef %need_reset) #6
  br label %if.end33

if.else:                                          ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #8
  %need_release = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 14
  tail call void @_set_bit(i32 noundef 2, ptr noundef %need_release) #6
  %sd_reset_counter = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 27
  %30 = ptrtoint ptr %sd_reset_counter to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %sd_reset_counter, align 4
  %sd_show_cnt = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 37
  %31 = ptrtoint ptr %sd_show_cnt to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %sd_show_cnt, align 4
  %need_reset25 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 15
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %need_reset25) #6
  br label %if.end33

if.else27:                                        ; preds = %if.then18
  %or.cond148 = select i1 %exit_ss.0.off0, i1 true, i1 %tobool30.not
  br i1 %or.cond148, label %if.else27.if.end33_crit_edge, label %if.then31

if.else27.if.end33_crit_edge:                     ; preds = %if.else27
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33

if.then31:                                        ; preds = %if.else27
  call void @__sanitizer_cov_trace_pc() #8
  %need_reinit = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 16
  tail call void @_set_bit(i32 noundef 2, ptr noundef %need_reinit) #6
  br label %if.end33

if.end33:                                         ; preds = %if.then31, %if.else27.if.end33_crit_edge, %if.else, %if.then24
  %product_id = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 58
  %32 = ptrtoint ptr %product_id to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %product_id, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 21128, i16 %33)
  %cmp34 = icmp eq i16 %33, 21128
  br i1 %cmp34, label %lor.lhs.false36, label %if.end33.if.then39_crit_edge

if.end33.if.then39_crit_edge:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then39

lor.lhs.false36:                                  ; preds = %if.end33
  %baro_pkg = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 73
  %34 = ptrtoint ptr %baro_pkg to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %baro_pkg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp37 = icmp eq i32 %35, 0
  br i1 %cmp37, label %lor.lhs.false36.if.then39_crit_edge, label %lor.lhs.false36.if.end61_crit_edge

lor.lhs.false36.if.end61_crit_edge:               ; preds = %lor.lhs.false36
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end61

lor.lhs.false36.if.then39_crit_edge:              ; preds = %lor.lhs.false36
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then39

if.then39:                                        ; preds = %lor.lhs.false36.if.then39_crit_edge, %if.end33.if.then39_crit_edge
  %and40 = and i32 %and15, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  %and55 = and i32 %26, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %tobool56.not = icmp eq i32 %and55, 0
  br i1 %tobool41.not, label %if.else51, label %if.then42

if.then42:                                        ; preds = %if.then39
  br i1 %tobool56.not, label %if.else47, label %if.then45

if.then45:                                        ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #8
  %need_reset46 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 15
  tail call void @_set_bit(i32 noundef 4, ptr noundef %need_reset46) #6
  br label %if.end61

if.else47:                                        ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #8
  %need_release48 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 14
  tail call void @_set_bit(i32 noundef 4, ptr noundef %need_release48) #6
  %xd_reset_counter = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 28
  %36 = ptrtoint ptr %xd_reset_counter to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %xd_reset_counter, align 4
  %xd_show_cnt = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 38
  %37 = ptrtoint ptr %xd_show_cnt to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %xd_show_cnt, align 4
  %need_reset49 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 15
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %need_reset49) #6
  br label %if.end61

if.else51:                                        ; preds = %if.then39
  %or.cond150 = select i1 %exit_ss.0.off0, i1 true, i1 %tobool56.not
  br i1 %or.cond150, label %if.else51.if.end61_crit_edge, label %if.then57

if.else51.if.end61_crit_edge:                     ; preds = %if.else51
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end61

if.then57:                                        ; preds = %if.else51
  call void @__sanitizer_cov_trace_pc() #8
  %need_reinit58 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 16
  tail call void @_set_bit(i32 noundef 4, ptr noundef %need_reinit58) #6
  br label %if.end61

if.end61:                                         ; preds = %if.then57, %if.else51.if.end61_crit_edge, %if.else47, %if.then45, %lor.lhs.false36.if.end61_crit_edge
  %and62 = and i32 %and15, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62)
  %tobool63.not = icmp eq i32 %and62, 0
  %and77 = and i32 %26, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and77)
  %tobool78.not = icmp eq i32 %and77, 0
  br i1 %tobool63.not, label %if.else73, label %if.then64

if.then64:                                        ; preds = %if.end61
  br i1 %tobool78.not, label %if.else69, label %if.then67

if.then67:                                        ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #8
  %need_reset68 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 15
  tail call void @_set_bit(i32 noundef 3, ptr noundef %need_reset68) #6
  br label %if.end83

if.else69:                                        ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #8
  %need_release70 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 14
  tail call void @_set_bit(i32 noundef 3, ptr noundef %need_release70) #6
  %ms_reset_counter = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 29
  %38 = ptrtoint ptr %ms_reset_counter to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %ms_reset_counter, align 4
  %ms_show_cnt = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 39
  %39 = ptrtoint ptr %ms_show_cnt to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %ms_show_cnt, align 4
  %need_reset71 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 15
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %need_reset71) #6
  br label %if.end83

if.else73:                                        ; preds = %if.end61
  %or.cond152 = select i1 %exit_ss.0.off0, i1 true, i1 %tobool78.not
  br i1 %or.cond152, label %if.else73.if.end83_crit_edge, label %if.then79

if.else73.if.end83_crit_edge:                     ; preds = %if.else73
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end83

if.then79:                                        ; preds = %if.else73
  call void @__sanitizer_cov_trace_pc() #8
  %need_reinit80 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 16
  tail call void @_set_bit(i32 noundef 3, ptr noundef %need_reinit80) #6
  br label %if.end83

if.end83:                                         ; preds = %if.then79, %if.else73.if.end83_crit_edge, %if.else69, %if.then67, %if.end13.if.end83_crit_edge
  %and84 = and i32 %and15, 8388608
  %ocp_int85 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 18
  %40 = ptrtoint ptr %ocp_int85 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %and84, ptr %ocp_int85, align 4
  %sd_io = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 51
  %41 = ptrtoint ptr %sd_io to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %sd_io, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool87.not = icmp eq i8 %42, 0
  br i1 %tobool87.not, label %if.end83.cleanup_crit_edge, label %land.lhs.true88

if.end83.cleanup_crit_edge:                       ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true88:                                  ; preds = %if.end83
  %43 = ptrtoint ptr %int_reg to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %int_reg, align 4
  %and90 = and i32 %44, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and90)
  %tobool91.not = icmp eq i32 %and90, 0
  br i1 %tobool91.not, label %land.lhs.true88.cleanup_crit_edge, label %if.then92

land.lhs.true88.cleanup_crit_edge:                ; preds = %land.lhs.true88
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then92:                                        ; preds = %land.lhs.true88
  call void @__sanitizer_cov_trace_pc() #8
  %and94 = and i32 %44, -1073741825
  %45 = ptrtoint ptr %int_reg to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %and94, ptr %int_reg, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then92, %land.lhs.true88.cleanup_crit_edge, %if.end83.cleanup_crit_edge, %if.end3.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end3.cleanup_crit_edge ], [ 0, %if.then92 ], [ 0, %land.lhs.true88.cleanup_crit_edge ], [ 0, %if.end83.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtsx_do_before_power_down(ptr noundef %chip, i32 noundef %pm_stat) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtsx_do_before_power_down.__UNIQUE_ID_ddebug340, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtsx_do_before_power_down, %if.then)) #6
          to label %do.body4 [label %if.then], !srcloc !211

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtsx_do_before_power_down.__UNIQUE_ID_ddebug340, ptr noundef %dev.i, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.40, i32 noundef %pm_stat) #6
  br label %do.body4

do.body4:                                         ; preds = %if.then, %entry
  %idle_counter = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 55
  %4 = ptrtoint ptr %idle_counter to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %idle_counter, align 4
  %rtsx_stat = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 56
  %5 = ptrtoint ptr %rtsx_stat to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 5, ptr %rtsx_stat, align 4
  %call7 = tail call i32 @rtsx_force_power_on(ptr noundef %chip, i8 noundef zeroext 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp.not = icmp eq i32 %call7, 0
  br i1 %cmp.not, label %if.end9, label %do.body4.cleanup_crit_edge

do.body4.cleanup_crit_edge:                       ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end9:                                          ; preds = %do.body4
  tail call void @rtsx_release_cards(ptr noundef %chip) #6
  %6 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chip, align 4
  %remap_addr.i = getelementptr inbounds %struct.rtsx_dev, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !209
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #6, !srcloc !210
  tail call void @turn_off_led(ptr noundef %chip, i8 noundef zeroext 0) #6
  %sd_io = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 51
  %10 = ptrtoint ptr %sd_io to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %sd_io, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool10.not = icmp eq i8 %11, 0
  br i1 %tobool10.not, label %if.end9.if.end26_crit_edge, label %if.then11

if.end9.if.end26_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

if.then11:                                        ; preds = %if.end9
  %sdio_in_charge = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 61
  %12 = ptrtoint ptr %sdio_in_charge to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %sdio_in_charge, align 4
  %product_id = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 58
  %13 = ptrtoint ptr %product_id to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %product_id, align 2
  %15 = zext i16 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.83)
  switch i16 %14, label %if.then11.if.end26_crit_edge [
    i16 21000, label %if.then14
    i16 21128, label %if.then21
  ]

if.then11.if.end26_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

if.then14:                                        ; preds = %if.then11
  %16 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %chip, align 4
  %remap_addr.i211 = getelementptr inbounds %struct.rtsx_dev, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %remap_addr.i211 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %remap_addr.i211, align 4
  %add.ptr.i212 = getelementptr i8, ptr %19, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !209
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i212, i32 134752254) #6, !srcloc !210
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then14
  %i.029.i = phi i32 [ 0, %if.then14 ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %20 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %chip, align 4
  %remap_addr8.i = getelementptr inbounds %struct.rtsx_dev, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %remap_addr8.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %remap_addr8.i, align 4
  %add.ptr9.i = getelementptr i8, ptr %23, i32 16
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i) #6, !srcloc !207
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !208
  %.mask338 = and i32 %24, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask338)
  %cmp11.i = icmp eq i32 %.mask338, 0
  %inc.i = add nuw nsw i32 %i.029.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %inc.i)
  %exitcond.not.i = icmp eq i32 %inc.i, 1024
  %or.cond340 = select i1 %cmp11.i, i1 true, i1 %exitcond.not.i
  br i1 %or.cond340, label %rtsx_write_register.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

rtsx_write_register.exit:                         ; preds = %for.body.i
  %25 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %chip, align 4
  %remap_addr.i214 = getelementptr inbounds %struct.rtsx_dev, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %remap_addr.i214 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %remap_addr.i214, align 4
  %add.ptr.i215 = getelementptr i8, ptr %28, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !209
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i215, i32 -2139066114) #6, !srcloc !210
  br label %for.body.i223

for.body.i223:                                    ; preds = %for.body.i223.for.body.i223_crit_edge, %rtsx_write_register.exit
  %i.029.i219 = phi i32 [ 0, %rtsx_write_register.exit ], [ %inc.i216, %for.body.i223.for.body.i223_crit_edge ]
  %29 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %chip, align 4
  %remap_addr8.i220 = getelementptr inbounds %struct.rtsx_dev, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %remap_addr8.i220 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %remap_addr8.i220, align 4
  %add.ptr9.i221 = getelementptr i8, ptr %32, i32 16
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i221) #6, !srcloc !207
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !208
  %.mask339 = and i32 %33, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask339)
  %cmp11.i222 = icmp eq i32 %.mask339, 0
  %inc.i216 = add nuw nsw i32 %i.029.i219, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %inc.i216)
  %exitcond.not.i217 = icmp eq i32 %inc.i216, 1024
  %or.cond341 = select i1 %cmp11.i222, i1 true, i1 %exitcond.not.i217
  br i1 %or.cond341, label %for.body.i223.if.end26_crit_edge, label %for.body.i223.for.body.i223_crit_edge

for.body.i223.for.body.i223_crit_edge:            ; preds = %for.body.i223
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i223

for.body.i223.if.end26_crit_edge:                 ; preds = %for.body.i223
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

if.then21:                                        ; preds = %if.then11
  %34 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %chip, align 4
  %remap_addr.i230 = getelementptr inbounds %struct.rtsx_dev, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %remap_addr.i230 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %remap_addr.i230, align 4
  %add.ptr.i231 = getelementptr i8, ptr %37, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !209
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i231, i32 134752254) #6, !srcloc !210
  br label %for.body.i239

for.body.i239:                                    ; preds = %for.body.i239.for.body.i239_crit_edge, %if.then21
  %i.029.i235 = phi i32 [ 0, %if.then21 ], [ %inc.i232, %for.body.i239.for.body.i239_crit_edge ]
  %38 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %chip, align 4
  %remap_addr8.i236 = getelementptr inbounds %struct.rtsx_dev, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %remap_addr8.i236 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %remap_addr8.i236, align 4
  %add.ptr9.i237 = getelementptr i8, ptr %41, i32 16
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i237) #6, !srcloc !207
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !208
  %.mask = and i32 %42, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask)
  %cmp11.i238 = icmp eq i32 %.mask, 0
  %inc.i232 = add nuw nsw i32 %i.029.i235, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %inc.i232)
  %exitcond.not.i233 = icmp eq i32 %inc.i232, 1024
  %or.cond342 = select i1 %cmp11.i238, i1 true, i1 %exitcond.not.i233
  br i1 %or.cond342, label %rtsx_write_register.exit245, label %for.body.i239.for.body.i239_crit_edge

for.body.i239.for.body.i239_crit_edge:            ; preds = %for.body.i239
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i239

rtsx_write_register.exit245:                      ; preds = %for.body.i239
  %43 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %chip, align 4
  %remap_addr.i246 = getelementptr inbounds %struct.rtsx_dev, ptr %44, i32 0, i32 2
  %45 = ptrtoint ptr %remap_addr.i246 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %remap_addr.i246, align 4
  %add.ptr.i247 = getelementptr i8, ptr %46, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !209
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i247, i32 134765310) #6, !srcloc !210
  br label %for.body.i255

for.body.i255:                                    ; preds = %for.body.i255.for.body.i255_crit_edge, %rtsx_write_register.exit245
  %i.029.i251 = phi i32 [ 0, %rtsx_write_register.exit245 ], [ %inc.i248, %for.body.i255.for.body.i255_crit_edge ]
  %47 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %chip, align 4
  %remap_addr8.i252 = getelementptr inbounds %struct.rtsx_dev, ptr %48, i32 0, i32 2
  %49 = ptrtoint ptr %remap_addr8.i252 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %remap_addr8.i252, align 4
  %add.ptr9.i253 = getelementptr i8, ptr %50, i32 16
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i253) #6, !srcloc !207
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !208
  %.mask332 = and i32 %51, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask332)
  %cmp11.i254 = icmp eq i32 %.mask332, 0
  %inc.i248 = add nuw nsw i32 %i.029.i251, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %inc.i248)
  %exitcond.not.i249 = icmp eq i32 %inc.i248, 1024
  %or.cond343 = select i1 %cmp11.i254, i1 true, i1 %exitcond.not.i249
  br i1 %or.cond343, label %for.body.i255.if.end26_crit_edge, label %for.body.i255.for.body.i255_crit_edge

for.body.i255.for.body.i255_crit_edge:            ; preds = %for.body.i255
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i255

for.body.i255.if.end26_crit_edge:                 ; preds = %for.body.i255
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

if.end26:                                         ; preds = %for.body.i255.if.end26_crit_edge, %for.body.i223.if.end26_crit_edge, %if.then11.if.end26_crit_edge, %if.end9.if.end26_crit_edge
  %product_id27 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 58
  %52 = ptrtoint ptr %product_id27 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %product_id27, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 21000, i16 %53)
  %cmp29 = icmp eq i16 %53, 21000
  br i1 %cmp29, label %land.lhs.true, label %if.end26.if.end36_crit_edge

if.end26.if.end36_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36

land.lhs.true:                                    ; preds = %if.end26
  %ic_version = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 59
  %54 = ptrtoint ptr %ic_version to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %ic_version, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %55)
  %cmp32 = icmp ugt i8 %55, 2
  br i1 %cmp32, label %if.then34, label %land.lhs.true.if.end36_crit_edge

land.lhs.true.if.end36_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36

if.then34:                                        ; preds = %land.lhs.true
  %56 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %chip, align 4
  %remap_addr.i262 = getelementptr inbounds %struct.rtsx_dev, ptr %57, i32 0, i32 2
  %58 = ptrtoint ptr %remap_addr.i262 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %remap_addr.i262, align 4
  %add.ptr.i263 = getelementptr i8, ptr %59, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !209
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i263, i32 134760958) #6, !srcloc !210
  br label %for.body.i271

for.body.i271:                                    ; preds = %for.body.i271.for.body.i271_crit_edge, %if.then34
  %i.029.i267 = phi i32 [ 0, %if.then34 ], [ %inc.i264, %for.body.i271.for.body.i271_crit_edge ]
  %60 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %chip, align 4
  %remap_addr8.i268 = getelementptr inbounds %struct.rtsx_dev, ptr %61, i32 0, i32 2
  %62 = ptrtoint ptr %remap_addr8.i268 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %remap_addr8.i268, align 4
  %add.ptr9.i269 = getelementptr i8, ptr %63, i32 16
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i269) #6, !srcloc !207
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !208
  %.mask337 = and i32 %64, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask337)
  %cmp11.i270 = icmp eq i32 %.mask337, 0
  %inc.i264 = add nuw nsw i32 %i.029.i267, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %inc.i264)
  %exitcond.not.i265 = icmp eq i32 %inc.i264, 1024
  %or.cond344 = select i1 %cmp11.i270, i1 true, i1 %exitcond.not.i265
  br i1 %or.cond344, label %for.body.i271.if.end36_crit_edge, label %for.body.i271.for.body.i271_crit_edge

for.body.i271.for.body.i271_crit_edge:            ; preds = %for.body.i271
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i271

for.body.i271.if.end36_crit_edge:                 ; preds = %for.body.i271
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36

if.end36:                                         ; preds = %for.body.i271.if.end36_crit_edge, %land.lhs.true.if.end36_crit_edge, %if.end26.if.end36_crit_edge
  %65 = zext i32 %pm_stat to i64
  call void @__sanitizer_cov_trace_switch(i64 %65, ptr @__sancov_gen_cov_switch_values.84)
  switch i32 %pm_stat, label %if.end36.if.end163_crit_edge [
    i32 1, label %do.body40
    i32 3, label %if.then61
  ]

if.end36.if.end163_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end163

do.body40:                                        ; preds = %if.end36
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtsx_do_before_power_down.__UNIQUE_ID_ddebug341, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtsx_do_before_power_down, %if.then52)) #6
          to label %do.end56 [label %if.then52], !srcloc !211

if.then52:                                        ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #8
  %66 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %chip, align 4
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %67, align 4
  %dev.i278 = getelementptr inbounds %struct.pci_dev, ptr %69, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtsx_do_before_power_down.__UNIQUE_ID_ddebug341, ptr noundef %dev.i278, ptr noundef nonnull @.str.42) #6
  br label %do.end56

do.end56:                                         ; preds = %if.then52, %do.body40
  %70 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %chip, align 4
  %remap_addr.i279 = getelementptr inbounds %struct.rtsx_dev, ptr %71, i32 0, i32 2
  %72 = ptrtoint ptr %remap_addr.i279 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %remap_addr.i279, align 4
  %add.ptr.i280 = getelementptr i8, ptr %73, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !209
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i280, i32 16998654) #6, !srcloc !210
  br label %for.body.i288

for.body.i288:                                    ; preds = %for.body.i288.for.body.i288_crit_edge, %do.end56
  %i.029.i284 = phi i32 [ 0, %do.end56 ], [ %inc.i281, %for.body.i288.for.body.i288_crit_edge ]
  %74 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %chip, align 4
  %remap_addr8.i285 = getelementptr inbounds %struct.rtsx_dev, ptr %75, i32 0, i32 2
  %76 = ptrtoint ptr %remap_addr8.i285 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %remap_addr8.i285, align 4
  %add.ptr9.i286 = getelementptr i8, ptr %77, i32 16
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i286) #6, !srcloc !207
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !208
  %.mask336 = and i32 %78, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask336)
  %cmp11.i287 = icmp eq i32 %.mask336, 0
  %inc.i281 = add nuw nsw i32 %i.029.i284, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %inc.i281)
  %exitcond.not.i282 = icmp eq i32 %inc.i281, 1024
  %or.cond345 = select i1 %cmp11.i287, i1 true, i1 %exitcond.not.i282
  br i1 %or.cond345, label %for.body.i288.if.end163_crit_edge, label %for.body.i288.for.body.i288_crit_edge

for.body.i288.for.body.i288_crit_edge:            ; preds = %for.body.i288
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i288

for.body.i288.if.end163_crit_edge:                ; preds = %for.body.i288
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end163

if.then61:                                        ; preds = %if.end36
  %s3_pwr_off_delay = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 129
  %79 = ptrtoint ptr %s3_pwr_off_delay to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %s3_pwr_off_delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %cmp62 = icmp sgt i32 %80, 0
  br i1 %cmp62, label %__here, label %if.then61.do.body144_crit_edge

if.then61.do.body144_crit_edge:                   ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body144

__here:                                           ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #8
  %81 = tail call i32 @llvm.read_register.i32(metadata !197) #6
  %and.i = and i32 %81, -16384
  %82 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %82, i32 0, i32 2
  %83 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %84, i32 0, i32 212
  %85 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 ptrtoint (ptr blockaddress(@rtsx_do_before_power_down, %__here) to i32), ptr %task_state_change, align 4
  %86 = load ptr, ptr %task, align 8
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_store4_noabort(i32 %87)
  store volatile i32 1, ptr %86, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !219
  %88 = ptrtoint ptr %s3_pwr_off_delay to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %s3_pwr_off_delay, align 4
  %mul = mul i32 %89, 100
  %div = sdiv i32 %mul, 1000
  %call140 = tail call i32 @schedule_timeout(i32 noundef %div) #6
  br label %do.body144

do.body144:                                       ; preds = %__here, %if.then61.do.body144_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtsx_do_before_power_down.__UNIQUE_ID_ddebug343, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtsx_do_before_power_down, %if.then156)) #6
          to label %do.end160 [label %if.then156], !srcloc !211

if.then156:                                       ; preds = %do.body144
  call void @__sanitizer_cov_trace_pc() #8
  %90 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %chip, align 4
  %92 = ptrtoint ptr %91 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %91, align 4
  %dev.i295 = getelementptr inbounds %struct.pci_dev, ptr %93, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtsx_do_before_power_down.__UNIQUE_ID_ddebug343, ptr noundef %dev.i295, ptr noundef nonnull @.str.43) #6
  br label %do.end160

do.end160:                                        ; preds = %if.then156, %do.body144
  %94 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %chip, align 4
  %remap_addr.i296 = getelementptr inbounds %struct.rtsx_dev, ptr %95, i32 0, i32 2
  %96 = ptrtoint ptr %remap_addr.i296 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %remap_addr.i296, align 4
  %add.ptr.i297 = getelementptr i8, ptr %97, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !209
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i297, i32 33775870) #6, !srcloc !210
  br label %for.body.i305

for.body.i305:                                    ; preds = %for.body.i305.for.body.i305_crit_edge, %do.end160
  %i.029.i301 = phi i32 [ 0, %do.end160 ], [ %inc.i298, %for.body.i305.for.body.i305_crit_edge ]
  %98 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %chip, align 4
  %remap_addr8.i302 = getelementptr inbounds %struct.rtsx_dev, ptr %99, i32 0, i32 2
  %100 = ptrtoint ptr %remap_addr8.i302 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %remap_addr8.i302, align 4
  %add.ptr9.i303 = getelementptr i8, ptr %101, i32 16
  %102 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i303) #6, !srcloc !207
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !208
  %.mask333 = and i32 %102, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask333)
  %cmp11.i304 = icmp eq i32 %.mask333, 0
  %inc.i298 = add nuw nsw i32 %i.029.i301, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %inc.i298)
  %exitcond.not.i299 = icmp eq i32 %inc.i298, 1024
  %or.cond346 = select i1 %cmp11.i304, i1 true, i1 %exitcond.not.i299
  br i1 %or.cond346, label %for.body.i305.if.end163_crit_edge, label %for.body.i305.for.body.i305_crit_edge

for.body.i305.for.body.i305_crit_edge:            ; preds = %for.body.i305
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i305

for.body.i305.if.end163_crit_edge:                ; preds = %for.body.i305
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end163

if.end163:                                        ; preds = %for.body.i305.if.end163_crit_edge, %for.body.i288.if.end163_crit_edge, %if.end36.if.end163_crit_edge
  %do_delink_before_power_down = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 132
  %103 = ptrtoint ptr %do_delink_before_power_down to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %do_delink_before_power_down, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %tobool164.not = icmp eq i32 %104, 0
  br i1 %tobool164.not, label %if.end163.if.end169_crit_edge, label %land.lhs.true165

if.end163.if.end169_crit_edge:                    ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end169

land.lhs.true165:                                 ; preds = %if.end163
  %auto_delink_en = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 65
  %105 = ptrtoint ptr %auto_delink_en to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %auto_delink_en, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %tobool166.not = icmp eq i32 %106, 0
  br i1 %tobool166.not, label %land.lhs.true165.if.end169_crit_edge, label %if.then167

land.lhs.true165.if.end169_crit_edge:             ; preds = %land.lhs.true165
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end169

if.then167:                                       ; preds = %land.lhs.true165
  %107 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %chip, align 4
  %remap_addr.i312 = getelementptr inbounds %struct.rtsx_dev, ptr %108, i32 0, i32 2
  %109 = ptrtoint ptr %remap_addr.i312 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %remap_addr.i312, align 4
  %add.ptr.i313 = getelementptr i8, ptr %110, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !209
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i313, i32 33709054) #6, !srcloc !210
  br label %for.body.i321

for.body.i321:                                    ; preds = %for.body.i321.for.body.i321_crit_edge, %if.then167
  %i.029.i317 = phi i32 [ 0, %if.then167 ], [ %inc.i314, %for.body.i321.for.body.i321_crit_edge ]
  %111 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %chip, align 4
  %remap_addr8.i318 = getelementptr inbounds %struct.rtsx_dev, ptr %112, i32 0, i32 2
  %113 = ptrtoint ptr %remap_addr8.i318 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %remap_addr8.i318, align 4
  %add.ptr9.i319 = getelementptr i8, ptr %114, i32 16
  %115 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i319) #6, !srcloc !207
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !208
  %.mask334 = and i32 %115, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask334)
  %cmp11.i320 = icmp eq i32 %.mask334, 0
  %inc.i314 = add nuw nsw i32 %i.029.i317, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %inc.i314)
  %exitcond.not.i315 = icmp eq i32 %inc.i314, 1024
  %or.cond347 = select i1 %cmp11.i320, i1 true, i1 %exitcond.not.i315
  br i1 %or.cond347, label %for.body.i321.if.end169_crit_edge, label %for.body.i321.for.body.i321_crit_edge

for.body.i321.for.body.i321_crit_edge:            ; preds = %for.body.i321
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i321

for.body.i321.if.end169_crit_edge:                ; preds = %for.body.i321
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end169

if.end169:                                        ; preds = %for.body.i321.if.end169_crit_edge, %land.lhs.true165.if.end169_crit_edge, %if.end163.if.end169_crit_edge
  %lun_mode.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 67
  %116 = ptrtoint ptr %lun_mode.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %lun_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %117)
  %cmp.i = icmp eq i8 %117, 1
  %or5.i.i = select i1 %cmp.i, i32 -67107065, i32 -67108093
  %118 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %chip, align 4
  %remap_addr.i.i = getelementptr inbounds %struct.rtsx_dev, ptr %119, i32 0, i32 2
  %120 = ptrtoint ptr %remap_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %remap_addr.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %121, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !209
  tail call void @arm_heavy_mb() #6
  %122 = tail call i32 @llvm.bswap.i32(i32 %or5.i.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %122) #6, !srcloc !210
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end169
  %i.029.i.i = phi i32 [ 0, %if.end169 ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %123 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %chip, align 4
  %remap_addr8.i.i = getelementptr inbounds %struct.rtsx_dev, ptr %124, i32 0, i32 2
  %125 = ptrtoint ptr %remap_addr8.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %remap_addr8.i.i, align 4
  %add.ptr9.i.i = getelementptr i8, ptr %126, i32 16
  %127 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i.i) #6, !srcloc !207
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !208
  %.mask335 = and i32 %127, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask335)
  %cmp11.i.i = icmp eq i32 %.mask335, 0
  %inc.i.i = add nuw nsw i32 %i.029.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %inc.i.i)
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 1024
  %or.cond = select i1 %cmp11.i.i, i1 true, i1 %exitcond.not.i.i
  br i1 %or.cond, label %rtsx_force_power_down.exit, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

rtsx_force_power_down.exit:                       ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %cur_clk = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 12
  %128 = ptrtoint ptr %cur_clk to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 0, ptr %cur_clk, align 4
  %cur_card = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 13
  %129 = ptrtoint ptr %cur_card to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 0, ptr %cur_card, align 4
  %card_exist = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 20
  %130 = ptrtoint ptr %card_exist to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 0, ptr %card_exist, align 1
  br label %cleanup

cleanup:                                          ; preds = %rtsx_force_power_down.exit, %do.body4.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtsx_release_cards(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @turn_off_led(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rtsx_monitor_aspm_config(ptr nocapture noundef %chip) unnamed_addr #0 align 64 {
entry:
  %tmp = alloca i32, align 4
  %reg0 = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp) #6
  %0 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %tmp, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg0) #6
  %1 = ptrtoint ptr %reg0 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %reg0, align 1
  %2 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call = call i32 @pci_read_config_byte(ptr noundef %5, i32 noundef 128, ptr noundef nonnull %reg0) #6
  %aspm_level = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 62
  %6 = ptrtoint ptr %aspm_level to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %aspm_level, align 4
  %8 = ptrtoint ptr %reg0 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %reg0, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %7, i8 %9)
  %cmp.not = icmp eq i8 %7, %9
  br i1 %cmp.not, label %if.end, label %if.end.thread

if.end:                                           ; preds = %entry
  %sdio_func_exist = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 77
  %10 = ptrtoint ptr %sdio_func_exist to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sdio_func_exist, align 4
  %12 = and i32 %11, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %if.end.if.then8_crit_edge, label %if.end.if.end70_crit_edge

if.end.if.end70_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end70

if.end.if.then8_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then8

if.end.thread:                                    ; preds = %entry
  %14 = ptrtoint ptr %aspm_level to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %9, ptr %aspm_level, align 4
  %sdio_func_exist101 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 77
  %15 = ptrtoint ptr %sdio_func_exist101 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %sdio_func_exist101, align 4
  %17 = and i32 %16, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %if.end.thread.if.then8_crit_edge, label %if.else.thread

if.end.thread.if.then8_crit_edge:                 ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then8

if.else.thread:                                   ; preds = %if.end.thread
  %19 = and i8 %9, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool32.not102.not = icmp eq i8 %19, 0
  br i1 %tobool32.not102.not, label %if.else.thread.do.body_crit_edge, label %if.else.thread.if.then39_crit_edge

if.else.thread.if.then39_crit_edge:               ; preds = %if.else.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then39

if.else.thread.do.body_crit_edge:                 ; preds = %if.else.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.then8:                                         ; preds = %if.end.thread.if.then8_crit_edge, %if.end.if.then8_crit_edge
  %call9 = call i32 @rtsx_read_cfg_dw(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext 192, ptr noundef nonnull %tmp)
  %20 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tmp, align 4
  %arrayidx12 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 62, i32 1
  %22 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx12, align 1
  %24 = trunc i32 %21 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %23, i8 %24)
  %cmp15.not = icmp eq i8 %23, %24
  br i1 %cmp15.not, label %if.end35, label %if.end35.thread

if.end35.thread:                                  ; preds = %if.then8
  %25 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %arrayidx12, align 1
  %26 = ptrtoint ptr %reg0 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %reg0, align 1
  %28 = and i8 %27, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool23.not104 = icmp ne i8 %28, 0
  %and26105 = and i32 %21, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26105)
  %tobool27.not106 = icmp ne i32 %and26105, 0
  %or.cond96107 = select i1 %tobool23.not104, i1 %tobool27.not106, i1 false
  br i1 %or.cond96107, label %if.end35.thread.if.then39_crit_edge, label %if.end35.thread.do.body_crit_edge

if.end35.thread.do.body_crit_edge:                ; preds = %if.end35.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.end35.thread.if.then39_crit_edge:              ; preds = %if.end35.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then39

if.end35:                                         ; preds = %if.then8
  br i1 %cmp.not, label %if.end35.if.end70_crit_edge, label %if.then37

if.end35.if.end70_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end70

if.then37:                                        ; preds = %if.end35
  %29 = ptrtoint ptr %reg0 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %reg0, align 1
  %31 = and i8 %30, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool23.not = icmp ne i8 %31, 0
  %and26 = and i32 %21, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp ne i32 %and26, 0
  %or.cond96 = select i1 %tobool23.not, i1 %tobool27.not, i1 false
  br i1 %or.cond96, label %if.then37.if.then39_crit_edge, label %if.then37.do.body_crit_edge

if.then37.do.body_crit_edge:                      ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.then37.if.then39_crit_edge:                    ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then39

if.then39:                                        ; preds = %if.then37.if.then39_crit_edge, %if.end35.thread.if.then39_crit_edge, %if.else.thread.if.then39_crit_edge
  %aspm_l0s_l1_en = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 68
  %32 = ptrtoint ptr %aspm_l0s_l1_en to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 3, ptr %aspm_l0s_l1_en, align 1
  br label %do.body

do.body:                                          ; preds = %if.then39, %if.then37.do.body_crit_edge, %if.end35.thread.do.body_crit_edge, %if.else.thread.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtsx_monitor_aspm_config.__UNIQUE_ID_ddebug319, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtsx_monitor_aspm_config, %if.then46)) #6
          to label %do.end [label %if.then46], !srcloc !211

if.then46:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %33 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %chip, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %36, i32 0, i32 44
  %37 = ptrtoint ptr %aspm_level to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %aspm_level, align 4
  %conv50 = zext i8 %38 to i32
  %arrayidx52 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 62, i32 1
  %39 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx52, align 1
  %conv53 = zext i8 %40 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtsx_monitor_aspm_config.__UNIQUE_ID_ddebug319, ptr noundef %dev.i, ptr noundef nonnull @.str.75, i32 noundef %conv50, i32 noundef %conv53) #6
  br label %do.end

do.end:                                           ; preds = %if.then46, %do.body
  %aspm_l0s_l1_en55 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 68
  %41 = ptrtoint ptr %aspm_l0s_l1_en55 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %aspm_l0s_l1_en55, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool56.not = icmp eq i8 %42, 0
  br i1 %tobool56.not, label %if.else58, label %do.end.if.end60_crit_edge

do.end.if.end60_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end60

if.else58:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %sdio_aspm = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 47
  %43 = ptrtoint ptr %sdio_aspm to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %sdio_aspm, align 4
  br label %if.end60

if.end60:                                         ; preds = %if.else58, %do.end.if.end60_crit_edge
  %.sink = phi i32 [ 0, %if.else58 ], [ 1, %do.end.if.end60_crit_edge ]
  %44 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 46
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %.sink, ptr %44, align 4
  %46 = ptrtoint ptr %aspm_level to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %aspm_level, align 4
  %arrayidx65 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 62, i32 1
  %48 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx65, align 1
  %shl = shl i8 %49, 2
  %50 = or i8 %47, %shl
  %conv4.i = zext i8 %50 to i32
  %or5.i = or i32 %conv4.i, -27787472
  %51 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %chip, align 4
  %remap_addr.i = getelementptr inbounds %struct.rtsx_dev, ptr %52, i32 0, i32 2
  %53 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %54, i32 16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !209
  call void @arm_heavy_mb() #6
  %55 = call i32 @llvm.bswap.i32(i32 %or5.i) #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %55) #6, !srcloc !210
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end60
  %i.029.i = phi i32 [ 0, %if.end60 ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %56 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %chip, align 4
  %remap_addr8.i = getelementptr inbounds %struct.rtsx_dev, ptr %57, i32 0, i32 2
  %58 = ptrtoint ptr %remap_addr8.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %remap_addr8.i, align 4
  %add.ptr9.i = getelementptr i8, ptr %59, i32 16
  %60 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i) #6, !srcloc !207
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !208
  %.mask = and i32 %60, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask)
  %cmp11.i = icmp eq i32 %.mask, 0
  %inc.i = add nuw nsw i32 %i.029.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %inc.i)
  %exitcond.not.i = icmp eq i32 %inc.i, 1024
  %or.cond = select i1 %cmp11.i, i1 true, i1 %exitcond.not.i
  br i1 %or.cond, label %for.body.i.if.end70_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.body.i.if.end70_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end70

if.end70:                                         ; preds = %for.body.i.if.end70_crit_edge, %if.end35.if.end70_crit_edge, %if.end.if.end70_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg0) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtsx_read_ppbuf(ptr noundef %chip, ptr noundef writeonly %buf, i32 noundef %buf_len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %buf, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %div = sdiv i32 %buf_len, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %buf_len)
  %cmp59 = icmp sgt i32 %buf_len, 255
  br i1 %cmp59, label %for.body.lr.ph, label %for.cond.preheader.for.end12_crit_edge

for.cond.preheader.for.end12_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end12

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %ci = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 6
  %host_cmds_ptr.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %if.end8.for.body_crit_edge, %for.body.lr.ph
  %ptr.062 = phi ptr [ %buf, %for.body.lr.ph ], [ %add.ptr, %if.end8.for.body_crit_edge ]
  %reg_addr.061 = phi i16 [ -1536, %for.body.lr.ph ], [ %inc, %if.end8.for.body_crit_edge ]
  %i.060 = phi i32 [ 0, %for.body.lr.ph ], [ %inc11, %if.end8.for.body_crit_edge ]
  %0 = ptrtoint ptr %ci to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %ci, align 4
  br label %for.body4

for.body4:                                        ; preds = %for.body4.for.body4_crit_edge, %for.body
  %reg_addr.158 = phi i16 [ %reg_addr.061, %for.body ], [ %inc, %for.body4.for.body4_crit_edge ]
  %j.057 = phi i32 [ 0, %for.body ], [ %inc5, %for.body4.for.body4_crit_edge ]
  %inc = add i16 %reg_addr.158, 1
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 0, i16 noundef zeroext %reg_addr.158, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  %inc5 = add nuw nsw i32 %j.057, 1
  %exitcond.not = icmp eq i32 %inc5, 256
  br i1 %exitcond.not, label %for.end, label %for.body4.for.body4_crit_edge

for.body4.for.body4_crit_edge:                    ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body4

for.end:                                          ; preds = %for.body4
  %call = tail call i32 @rtsx_send_cmd(ptr noundef %chip, i8 noundef zeroext 0, i32 noundef 250) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp6 = icmp slt i32 %call, 0
  br i1 %cmp6, label %for.end.cleanup_crit_edge, label %if.end8

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8:                                          ; preds = %for.end
  %1 = ptrtoint ptr %host_cmds_ptr.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %host_cmds_ptr.i, align 4
  %3 = call ptr @memcpy(ptr %ptr.062, ptr %2, i32 256)
  %add.ptr = getelementptr i8, ptr %ptr.062, i32 256
  %inc11 = add nuw nsw i32 %i.060, 1
  %exitcond68.not = icmp eq i32 %inc11, %div
  br i1 %exitcond68.not, label %if.end8.for.end12_crit_edge, label %if.end8.for.body_crit_edge

if.end8.for.body_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

if.end8.for.end12_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end12

for.end12:                                        ; preds = %if.end8.for.end12_crit_edge, %for.cond.preheader.for.end12_crit_edge
  %reg_addr.0.lcssa = phi i16 [ -1536, %for.cond.preheader.for.end12_crit_edge ], [ %inc, %if.end8.for.end12_crit_edge ]
  %ptr.0.lcssa = phi ptr [ %buf, %for.cond.preheader.for.end12_crit_edge ], [ %add.ptr, %if.end8.for.end12_crit_edge ]
  %4 = mul i32 %div, 256
  %rem.decomposed = sub i32 %buf_len, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.decomposed)
  %tobool13.not = icmp eq i32 %rem.decomposed, 0
  br i1 %tobool13.not, label %for.end12.if.end28_crit_edge, label %if.then14

for.end12.if.end28_crit_edge:                     ; preds = %for.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

if.then14:                                        ; preds = %for.end12
  %ci15 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 6
  %5 = ptrtoint ptr %ci15 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %ci15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.decomposed)
  %cmp1864 = icmp sgt i32 %rem.decomposed, 0
  br i1 %cmp1864, label %if.then14.for.body19_crit_edge, label %if.then14.for.end23_crit_edge

if.then14.for.end23_crit_edge:                    ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end23

if.then14.for.body19_crit_edge:                   ; preds = %if.then14
  br label %for.body19

for.body19:                                       ; preds = %for.body19.for.body19_crit_edge, %if.then14.for.body19_crit_edge
  %reg_addr.266 = phi i16 [ %inc20, %for.body19.for.body19_crit_edge ], [ %reg_addr.0.lcssa, %if.then14.for.body19_crit_edge ]
  %j.165 = phi i32 [ %inc22, %for.body19.for.body19_crit_edge ], [ 0, %if.then14.for.body19_crit_edge ]
  %inc20 = add i16 %reg_addr.266, 1
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 0, i16 noundef zeroext %reg_addr.266, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  %inc22 = add nuw nsw i32 %j.165, 1
  %exitcond69.not = icmp eq i32 %inc22, %rem.decomposed
  br i1 %exitcond69.not, label %for.body19.for.end23_crit_edge, label %for.body19.for.body19_crit_edge

for.body19.for.body19_crit_edge:                  ; preds = %for.body19
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body19

for.body19.for.end23_crit_edge:                   ; preds = %for.body19
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end23

for.end23:                                        ; preds = %for.body19.for.end23_crit_edge, %if.then14.for.end23_crit_edge
  %call24 = tail call i32 @rtsx_send_cmd(ptr noundef %chip, i8 noundef zeroext 0, i32 noundef 250) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp25 = icmp slt i32 %call24, 0
  br i1 %cmp25, label %for.end23.cleanup_crit_edge, label %for.end23.if.end28_crit_edge

for.end23.if.end28_crit_edge:                     ; preds = %for.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

for.end23.cleanup_crit_edge:                      ; preds = %for.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end28:                                         ; preds = %for.end23.if.end28_crit_edge, %for.end12.if.end28_crit_edge
  %host_cmds_ptr.i54 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 4
  %6 = ptrtoint ptr %host_cmds_ptr.i54 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %host_cmds_ptr.i54, align 4
  %8 = call ptr @memcpy(ptr %ptr.0.lcssa, ptr %7, i32 %rem.decomposed)
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %for.end23.cleanup_crit_edge, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end28 ], [ 10, %entry.cleanup_crit_edge ], [ 1, %for.end23.cleanup_crit_edge ], [ 1, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtsx_add_cmd(ptr noundef, i8 noundef zeroext, i16 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtsx_send_cmd(ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtsx_write_ppbuf(ptr noundef %chip, ptr noundef readonly %buf, i32 noundef %buf_len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %buf, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %div = sdiv i32 %buf_len, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %buf_len)
  %cmp55 = icmp sgt i32 %buf_len, 255
  br i1 %cmp55, label %for.body.lr.ph, label %for.cond.preheader.for.end11_crit_edge

for.cond.preheader.for.end11_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end11

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %ci = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 6
  br label %for.body

for.cond:                                         ; preds = %for.end
  %inc10 = add nuw nsw i32 %i.056, 1
  %exitcond66.not = icmp eq i32 %inc10, %div
  br i1 %exitcond66.not, label %for.cond.for.end11_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.cond.for.end11_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end11

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %ptr.058 = phi ptr [ %buf, %for.body.lr.ph ], [ %incdec.ptr, %for.cond.for.body_crit_edge ]
  %reg_addr.057 = phi i16 [ -1536, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %i.056 = phi i32 [ 0, %for.body.lr.ph ], [ %inc10, %for.cond.for.body_crit_edge ]
  %0 = ptrtoint ptr %ci to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %ci, align 4
  br label %for.body4

for.body4:                                        ; preds = %for.body4.for.body4_crit_edge, %for.body
  %ptr.154 = phi ptr [ %ptr.058, %for.body ], [ %incdec.ptr, %for.body4.for.body4_crit_edge ]
  %reg_addr.153 = phi i16 [ %reg_addr.057, %for.body ], [ %inc, %for.body4.for.body4_crit_edge ]
  %j.052 = phi i32 [ 0, %for.body ], [ %inc5, %for.body4.for.body4_crit_edge ]
  %inc = add i16 %reg_addr.153, 1
  %1 = ptrtoint ptr %ptr.154 to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %ptr.154, align 1
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext %reg_addr.153, i8 noundef zeroext -1, i8 noundef zeroext %2) #6
  %incdec.ptr = getelementptr i8, ptr %ptr.154, i32 1
  %inc5 = add nuw nsw i32 %j.052, 1
  %exitcond.not = icmp eq i32 %inc5, 256
  br i1 %exitcond.not, label %for.end, label %for.body4.for.body4_crit_edge

for.body4.for.body4_crit_edge:                    ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body4

for.end:                                          ; preds = %for.body4
  %call = tail call i32 @rtsx_send_cmd(ptr noundef %chip, i8 noundef zeroext 0, i32 noundef 250) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp6 = icmp slt i32 %call, 0
  br i1 %cmp6, label %for.end.cleanup_crit_edge, label %for.cond

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.end11:                                        ; preds = %for.cond.for.end11_crit_edge, %for.cond.preheader.for.end11_crit_edge
  %reg_addr.0.lcssa = phi i16 [ -1536, %for.cond.preheader.for.end11_crit_edge ], [ %inc, %for.cond.for.end11_crit_edge ]
  %ptr.0.lcssa = phi ptr [ %buf, %for.cond.preheader.for.end11_crit_edge ], [ %incdec.ptr, %for.cond.for.end11_crit_edge ]
  %3 = mul i32 %div, 256
  %rem.decomposed = sub i32 %buf_len, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.decomposed)
  %tobool12.not = icmp eq i32 %rem.decomposed, 0
  br i1 %tobool12.not, label %for.end11.if.end28_crit_edge, label %if.then13

for.end11.if.end28_crit_edge:                     ; preds = %for.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

if.then13:                                        ; preds = %for.end11
  %ci14 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 6
  %4 = ptrtoint ptr %ci14 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %ci14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.decomposed)
  %cmp1760 = icmp sgt i32 %rem.decomposed, 0
  br i1 %cmp1760, label %if.then13.for.body18_crit_edge, label %if.then13.for.end23_crit_edge

if.then13.for.end23_crit_edge:                    ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end23

if.then13.for.body18_crit_edge:                   ; preds = %if.then13
  br label %for.body18

for.body18:                                       ; preds = %for.body18.for.body18_crit_edge, %if.then13.for.body18_crit_edge
  %ptr.263 = phi ptr [ %incdec.ptr20, %for.body18.for.body18_crit_edge ], [ %ptr.0.lcssa, %if.then13.for.body18_crit_edge ]
  %reg_addr.262 = phi i16 [ %inc19, %for.body18.for.body18_crit_edge ], [ %reg_addr.0.lcssa, %if.then13.for.body18_crit_edge ]
  %j.161 = phi i32 [ %inc22, %for.body18.for.body18_crit_edge ], [ 0, %if.then13.for.body18_crit_edge ]
  %inc19 = add i16 %reg_addr.262, 1
  %5 = ptrtoint ptr %ptr.263 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %ptr.263, align 1
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext %reg_addr.262, i8 noundef zeroext -1, i8 noundef zeroext %6) #6
  %incdec.ptr20 = getelementptr i8, ptr %ptr.263, i32 1
  %inc22 = add nuw nsw i32 %j.161, 1
  %exitcond67.not = icmp eq i32 %inc22, %rem.decomposed
  br i1 %exitcond67.not, label %for.body18.for.end23_crit_edge, label %for.body18.for.body18_crit_edge

for.body18.for.body18_crit_edge:                  ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body18

for.body18.for.end23_crit_edge:                   ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end23

for.end23:                                        ; preds = %for.body18.for.end23_crit_edge, %if.then13.for.end23_crit_edge
  %call24 = tail call i32 @rtsx_send_cmd(ptr noundef %chip, i8 noundef zeroext 0, i32 noundef 250) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp25 = icmp slt i32 %call24, 0
  br i1 %cmp25, label %for.end23.cleanup_crit_edge, label %for.end23.if.end28_crit_edge

for.end23.if.end28_crit_edge:                     ; preds = %for.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

for.end23.cleanup_crit_edge:                      ; preds = %for.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end28:                                         ; preds = %for.end23.if.end28_crit_edge, %for.end11.if.end28_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %for.end23.cleanup_crit_edge, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end28 ], [ 10, %entry.cleanup_crit_edge ], [ 1, %for.end23.cleanup_crit_edge ], [ 1, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtsx_check_chip_exist(ptr nocapture noundef readonly %chip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 4
  %remap_addr = getelementptr inbounds %struct.rtsx_dev, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %remap_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %remap_addr, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #6, !srcloc !207
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !208
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %cmp = icmp eq i32 %4, -1
  %. = zext i1 %cmp to i32
  ret i32 %.
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rtsx_calibration(ptr nocapture noundef readonly %chip) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtsx_write_phy_register(ptr noundef %chip, i8 noundef zeroext 27, i16 noundef zeroext 4958)
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %0 = tail call i32 @llvm.read_register.i32(metadata !197) #6
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 212
  %4 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 ptrtoint (ptr blockaddress(@rtsx_calibration, %__here) to i32), ptr %task_state_change, align 4
  %5 = load ptr, ptr %task, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile i32 1, ptr %5, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !220
  %call62 = tail call i32 @schedule_timeout(i32 noundef 1) #6
  %call65 = tail call i32 @rtsx_write_phy_register(ptr noundef %chip, i8 noundef zeroext 0, i16 noundef zeroext 640)
  %call66 = tail call i32 @rtsx_write_phy_register(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext 28946)
  %call67 = tail call i32 @rtsx_write_phy_register(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext 28944)
  %call68 = tail call i32 @rtsx_write_phy_register(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext 28946)
  %call69 = tail call i32 @rtsx_write_phy_register(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext 28947)
  %call70 = tail call i32 @rtsx_write_phy_register(ptr noundef %chip, i8 noundef zeroext 0, i16 noundef zeroext 648)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sd_pull_ctl_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @card_share_mode(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtsx_reset_cards(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sd_power_off_card3v3(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ms_power_off_card3v3(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xd_power_off_card3v3(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @dynamic_configure_sdio_aspm(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @toggle_gpio(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @card_power_off(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rtsx_delink_stage1(ptr nocapture noundef %chip, i32 noundef %enter_L1, i32 noundef %stage3_cnt) unnamed_addr #0 align 64 {
entry:
  %value.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %idle_counter = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 55
  %0 = ptrtoint ptr %idle_counter to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %idle_counter, align 4
  %rtsx_stat = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 56
  %1 = ptrtoint ptr %rtsx_stat to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 4, ptr %rtsx_stat, align 4
  %asic_code = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 74
  %2 = ptrtoint ptr %asic_code to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %asic_code, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %product_id = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 58
  %4 = ptrtoint ptr %product_id to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %product_id, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 21000, i16 %5)
  %cmp = icmp eq i16 %5, 21000
  br i1 %cmp, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %value.i) #6
  %6 = ptrtoint ptr %value.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 -1, ptr %value.i, align 2, !annotation !214
  %call.i = call i32 @rtsx_read_phy_register(ptr noundef %chip, i8 noundef zeroext 28, ptr noundef nonnull %value.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.then.rtsx_set_phy_reg_bit.exit_crit_edge

if.then.rtsx_set_phy_reg_bit.exit_crit_edge:      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtsx_set_phy_reg_bit.exit

if.end.i:                                         ; preds = %if.then
  %7 = ptrtoint ptr %value.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %value.i, align 2
  %9 = and i16 %8, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %cmp3.i = icmp eq i16 %9, 0
  br i1 %cmp3.i, label %if.then5.i, label %if.end.i.rtsx_set_phy_reg_bit.exit_crit_edge

if.end.i.rtsx_set_phy_reg_bit.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtsx_set_phy_reg_bit.exit

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv9.i = or i16 %8, 4
  %10 = ptrtoint ptr %value.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv9.i, ptr %value.i, align 2
  %call10.i = call i32 @rtsx_write_phy_register(ptr noundef %chip, i8 noundef zeroext 28, i16 noundef zeroext %conv9.i) #6
  br label %rtsx_set_phy_reg_bit.exit

rtsx_set_phy_reg_bit.exit:                        ; preds = %if.then5.i, %if.end.i.rtsx_set_phy_reg_bit.exit_crit_edge, %if.then.rtsx_set_phy_reg_bit.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %value.i) #6
  br label %if.end

if.end:                                           ; preds = %rtsx_set_phy_reg_bit.exit, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %card_exist = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 20
  %11 = ptrtoint ptr %card_exist to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %card_exist, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool2.not = icmp eq i8 %12, 0
  br i1 %tobool2.not, label %do.body14, label %do.body4

do.body4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtsx_delink_stage1.__UNIQUE_ID_ddebug324, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtsx_delink_stage1, %if.then9)) #6
          to label %if.end31 [label %if.then9], !srcloc !211

if.then9:                                         ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %chip, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtsx_delink_stage1.__UNIQUE_ID_ddebug324, ptr noundef %dev.i, ptr noundef nonnull @.str.69) #6
  br label %if.end31

do.body14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtsx_delink_stage1.__UNIQUE_ID_ddebug325, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtsx_delink_stage1, %if.then26)) #6
          to label %if.end31 [label %if.then26], !srcloc !211

if.then26:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %chip, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %dev.i71 = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtsx_delink_stage1.__UNIQUE_ID_ddebug325, ptr noundef %dev.i71, ptr noundef nonnull @.str.70) #6
  br label %if.end31

if.end31:                                         ; preds = %if.then26, %do.body14, %if.then9, %do.body4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enter_L1)
  %tobool32.not = icmp eq i32 %enter_L1, 0
  br i1 %tobool32.not, label %if.end44.critedge, label %if.then33

if.then33:                                        ; preds = %if.end31
  %21 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %chip, align 4
  %remap_addr.i = getelementptr inbounds %struct.rtsx_dev, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %24, i32 16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !209
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 16998654) #6, !srcloc !210
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then33
  %i.029.i = phi i32 [ 0, %if.then33 ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %25 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %chip, align 4
  %remap_addr8.i = getelementptr inbounds %struct.rtsx_dev, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %remap_addr8.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %remap_addr8.i, align 4
  %add.ptr9.i = getelementptr i8, ptr %28, i32 16
  %29 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i) #6, !srcloc !207
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !208
  %.mask = and i32 %29, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask)
  %cmp11.i = icmp eq i32 %.mask, 0
  %inc.i = add nuw nsw i32 %i.029.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %inc.i)
  %exitcond.not.i = icmp eq i32 %inc.i, 1024
  %or.cond = select i1 %cmp11.i, i1 true, i1 %exitcond.not.i
  br i1 %or.cond, label %rtsx_write_register.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

rtsx_write_register.exit:                         ; preds = %for.body.i
  %30 = ptrtoint ptr %card_exist to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %card_exist, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool37.not.c = icmp eq i8 %31, 0
  %or5.i = select i1 %tobool37.not.c, i32 -27588086, i32 -27590142
  %32 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %chip, align 4
  %remap_addr.i73 = getelementptr inbounds %struct.rtsx_dev, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %remap_addr.i73 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %remap_addr.i73, align 4
  %add.ptr.i74 = getelementptr i8, ptr %35, i32 16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !209
  call void @arm_heavy_mb() #6
  %36 = call i32 @llvm.bswap.i32(i32 %or5.i) #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i74, i32 %36) #6, !srcloc !210
  br label %for.body.i82

for.body.i82:                                     ; preds = %for.body.i82.for.body.i82_crit_edge, %rtsx_write_register.exit
  %i.029.i78 = phi i32 [ 0, %rtsx_write_register.exit ], [ %inc.i75, %for.body.i82.for.body.i82_crit_edge ]
  %37 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %chip, align 4
  %remap_addr8.i79 = getelementptr inbounds %struct.rtsx_dev, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %remap_addr8.i79 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %remap_addr8.i79, align 4
  %add.ptr9.i80 = getelementptr i8, ptr %40, i32 16
  %41 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i80) #6, !srcloc !207
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !208
  %.mask113 = and i32 %41, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask113)
  %cmp11.i81 = icmp eq i32 %.mask113, 0
  %inc.i75 = add nuw nsw i32 %i.029.i78, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %inc.i75)
  %exitcond.not.i76 = icmp eq i32 %inc.i75, 1024
  %or.cond115 = select i1 %cmp11.i81, i1 true, i1 %exitcond.not.i76
  br i1 %or.cond115, label %rtsx_write_register.exit88, label %for.body.i82.for.body.i82_crit_edge

for.body.i82.for.body.i82_crit_edge:              ; preds = %for.body.i82
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i82

rtsx_write_register.exit88:                       ; preds = %for.body.i82
  call void @__sanitizer_cov_trace_pc() #8
  call fastcc void @rtsx_handle_pm_dstate(ptr noundef %chip) #6
  br label %if.end44

if.end44.critedge:                                ; preds = %if.end31
  %42 = ptrtoint ptr %card_exist to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %card_exist, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool37.not.c64 = icmp eq i8 %43, 0
  %or5.i94 = select i1 %tobool37.not.c64, i32 -27588086, i32 -27590142
  %44 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %chip, align 4
  %remap_addr.i95 = getelementptr inbounds %struct.rtsx_dev, ptr %45, i32 0, i32 2
  %46 = ptrtoint ptr %remap_addr.i95 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %remap_addr.i95, align 4
  %add.ptr.i96 = getelementptr i8, ptr %47, i32 16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !209
  call void @arm_heavy_mb() #6
  %48 = call i32 @llvm.bswap.i32(i32 %or5.i94) #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i96, i32 %48) #6, !srcloc !210
  br label %for.body.i104

for.body.i104:                                    ; preds = %for.body.i104.for.body.i104_crit_edge, %if.end44.critedge
  %i.029.i100 = phi i32 [ 0, %if.end44.critedge ], [ %inc.i97, %for.body.i104.for.body.i104_crit_edge ]
  %49 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %chip, align 4
  %remap_addr8.i101 = getelementptr inbounds %struct.rtsx_dev, ptr %50, i32 0, i32 2
  %51 = ptrtoint ptr %remap_addr8.i101 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %remap_addr8.i101, align 4
  %add.ptr9.i102 = getelementptr i8, ptr %52, i32 16
  %53 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i102) #6, !srcloc !207
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !208
  %.mask114 = and i32 %53, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask114)
  %cmp11.i103 = icmp eq i32 %.mask114, 0
  %inc.i97 = add nuw nsw i32 %i.029.i100, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %inc.i97)
  %exitcond.not.i98 = icmp eq i32 %inc.i97, 1024
  %or.cond116 = select i1 %cmp11.i103, i1 true, i1 %exitcond.not.i98
  br i1 %or.cond116, label %for.body.i104.if.end44_crit_edge, label %for.body.i104.for.body.i104_crit_edge

for.body.i104.for.body.i104_crit_edge:            ; preds = %for.body.i104
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i104

for.body.i104.if.end44_crit_edge:                 ; preds = %for.body.i104
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end44

if.end44:                                         ; preds = %for.body.i104.if.end44_crit_edge, %rtsx_write_register.exit88
  %54 = ptrtoint ptr %card_exist to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %card_exist, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool46.not = icmp eq i8 %55, 0
  br i1 %tobool46.not, label %if.end44.if.end48_crit_edge, label %if.then47

if.end44.if.end48_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end48

if.then47:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  %add = add i32 %stage3_cnt, 1
  %auto_delink_cnt = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 44
  %56 = ptrtoint ptr %auto_delink_cnt to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %add, ptr %auto_delink_cnt, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.then47, %if.end44.if.end48_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 75)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 75)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !11, !12, !13, !15, !16, !18, !19, !21, !23, !24, !25, !27, !28, !30, !31, !33, !35, !36, !38, !39, !41, !42, !44, !45, !47, !48, !50, !51, !53, !54, !56, !57, !59, !60, !62, !63, !65, !66, !68, !69, !71, !72, !73, !75, !76, !78, !79, !80, !82, !83, !84, !86, !88, !89, !91, !92, !93, !95, !97, !99, !100, !101, !103, !104, !105, !107, !108, !109, !111, !112, !114, !116, !117, !119, !120, !121, !123, !124, !125, !127, !129, !131, !133, !134, !135, !137, !138, !140, !141, !143, !144, !146, !147, !148, !150, !151, !153, !154, !156, !157, !159, !160, !162, !163, !164, !166, !167, !168, !170, !171, !172, !174, !175, !177, !178, !179, !181, !182, !183, !185, !186, !188, !189, !190, !192, !193, !195, !196}
!llvm.named.register.sp = !{!197}
!llvm.module.flags = !{!198, !199, !200, !201, !202, !203, !204, !205}
!llvm.ident = !{!206}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/staging/rts5208/rtsx_chip.c", i32 65, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @rtsx_enable_bus_int.__UNIQUE_ID_ddebug288, !1, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/staging/rts5208/rtsx_chip.c", i32 90, i32 2}
!8 = !{ptr @rtsx_enable_bus_int.__UNIQUE_ID_ddebug289, !7, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/staging/rts5208/rtsx_chip.c", i32 495, i32 2}
!11 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @rtsx_reset_chip.__UNIQUE_ID_ddebug294, !10, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/staging/rts5208/rtsx_chip.c", i32 504, i32 3}
!15 = !{ptr @rtsx_reset_chip.__UNIQUE_ID_ddebug295, !14, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/staging/rts5208/rtsx_chip.c", i32 532, i32 2}
!18 = !{ptr @rtsx_reset_chip.__UNIQUE_ID_ddebug296, !17, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!19 = distinct !{null, !20, !"__already_done", i1 false, i1 false}
!20 = !{!"../drivers/staging/rts5208/rtsx_chip.c", i32 590, i32 3}
!21 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/staging/rts5208/rtsx_chip.c", i32 762, i32 2}
!23 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @rtsx_init_chip.__UNIQUE_ID_ddebug303, !22, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!25 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/staging/rts5208/rtsx_chip.c", i32 802, i32 2}
!27 = !{ptr @rtsx_init_chip.__UNIQUE_ID_ddebug304, !26, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!28 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/staging/rts5208/rtsx_chip.c", i32 808, i32 2}
!30 = !{ptr @rtsx_init_chip.__UNIQUE_ID_ddebug305, !29, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!31 = distinct !{null, !32, !"__already_done", i1 false, i1 false}
!32 = !{!"../drivers/staging/rts5208/rtsx_chip.c", i32 820, i32 2}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/staging/rts5208/rtsx_chip.c", i32 824, i32 2}
!35 = !{ptr @rtsx_init_chip.__UNIQUE_ID_ddebug307, !34, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/staging/rts5208/rtsx_chip.c", i32 841, i32 2}
!38 = !{ptr @rtsx_init_chip.__UNIQUE_ID_ddebug308, !37, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!39 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/staging/rts5208/rtsx_chip.c", i32 842, i32 2}
!41 = !{ptr @rtsx_init_chip.__UNIQUE_ID_ddebug309, !40, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!42 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/staging/rts5208/rtsx_chip.c", i32 843, i32 2}
!44 = !{ptr @rtsx_init_chip.__UNIQUE_ID_ddebug310, !43, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!45 = !{ptr @.str.17, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/staging/rts5208/rtsx_chip.c", i32 845, i32 2}
!47 = !{ptr @rtsx_init_chip.__UNIQUE_ID_ddebug311, !46, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!48 = !{ptr @.str.18, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/staging/rts5208/rtsx_chip.c", i32 847, i32 2}
!50 = !{ptr @rtsx_init_chip.__UNIQUE_ID_ddebug312, !49, !"__UNIQUE_ID_ddebug312", i1 false, i1 false}
!51 = !{ptr @.str.19, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/staging/rts5208/rtsx_chip.c", i32 849, i32 2}
!53 = !{ptr @rtsx_init_chip.__UNIQUE_ID_ddebug313, !52, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!54 = !{ptr @.str.20, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/staging/rts5208/rtsx_chip.c", i32 851, i32 2}
!56 = !{ptr @rtsx_init_chip.__UNIQUE_ID_ddebug314, !55, !"__UNIQUE_ID_ddebug314", i1 false, i1 false}
!57 = !{ptr @.str.21, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/staging/rts5208/rtsx_chip.c", i32 853, i32 2}
!59 = !{ptr @rtsx_init_chip.__UNIQUE_ID_ddebug315, !58, !"__UNIQUE_ID_ddebug315", i1 false, i1 false}
!60 = !{ptr @.str.22, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/staging/rts5208/rtsx_chip.c", i32 854, i32 2}
!62 = !{ptr @rtsx_init_chip.__UNIQUE_ID_ddebug316, !61, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!63 = !{ptr @.str.23, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/staging/rts5208/rtsx_chip.c", i32 856, i32 2}
!65 = !{ptr @rtsx_init_chip.__UNIQUE_ID_ddebug317, !64, !"__UNIQUE_ID_ddebug317", i1 false, i1 false}
!66 = !{ptr @.str.24, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/staging/rts5208/rtsx_chip.c", i32 857, i32 2}
!68 = !{ptr @rtsx_init_chip.__UNIQUE_ID_ddebug318, !67, !"__UNIQUE_ID_ddebug318", i1 false, i1 false}
!69 = !{ptr @.str.25, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/staging/rts5208/rtsx_chip.c", i32 1279, i32 3}
!71 = !{ptr @.str.26, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @rtsx_stop_cmd.__UNIQUE_ID_ddebug327, !70, !"__UNIQUE_ID_ddebug327", i1 false, i1 false}
!73 = !{ptr @.str.27, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/staging/rts5208/rtsx_chip.c", i32 1289, i32 3}
!75 = !{ptr @rtsx_stop_cmd.__UNIQUE_ID_ddebug328, !74, !"__UNIQUE_ID_ddebug328", i1 false, i1 false}
!76 = !{ptr @.str.28, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/staging/rts5208/rtsx_chip.c", i32 1453, i32 2}
!78 = !{ptr @.str.29, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @rtsx_write_cfg_seq.__UNIQUE_ID_ddebug329, !77, !"__UNIQUE_ID_ddebug329", i1 false, i1 false}
!80 = !{ptr @.str.30, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/staging/rts5208/rtsx_chip.c", i32 1476, i32 2}
!82 = !{ptr @rtsx_write_cfg_seq.__UNIQUE_ID_ddebug330, !81, !"__UNIQUE_ID_ddebug330", i1 false, i1 false}
!83 = !{ptr @.str.31, !81, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @rtsx_write_cfg_seq.__UNIQUE_ID_ddebug331, !85, !"__UNIQUE_ID_ddebug331", i1 false, i1 false}
!85 = !{!"../drivers/staging/rts5208/rtsx_chip.c", i32 1477, i32 2}
!86 = !{ptr @.str.32, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/staging/rts5208/rtsx_chip.c", i32 1509, i32 2}
!88 = !{ptr @rtsx_read_cfg_seq.__UNIQUE_ID_ddebug332, !87, !"__UNIQUE_ID_ddebug332", i1 false, i1 false}
!89 = !{ptr @.str.33, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/staging/rts5208/rtsx_chip.c", i32 1662, i32 3}
!91 = !{ptr @.str.34, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @rtsx_write_efuse.__UNIQUE_ID_ddebug333, !90, !"__UNIQUE_ID_ddebug333", i1 false, i1 false}
!93 = distinct !{null, !94, !"__already_done", i1 false, i1 false}
!94 = !{!"../drivers/staging/rts5208/rtsx_chip.c", i32 1678, i32 4}
!95 = distinct !{null, !96, !"__already_done", i1 false, i1 false}
!96 = !{!"../drivers/staging/rts5208/rtsx_chip.c", i32 1684, i32 3}
!97 = !{ptr @.str.36, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/staging/rts5208/rtsx_chip.c", i32 1766, i32 2}
!99 = !{ptr @.str.37, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @rtsx_enter_ss.__UNIQUE_ID_ddebug338, !98, !"__UNIQUE_ID_ddebug338", i1 false, i1 false}
!101 = !{ptr @.str.38, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/staging/rts5208/rtsx_chip.c", i32 1801, i32 2}
!103 = !{ptr @.str.39, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @rtsx_exit_ss.__UNIQUE_ID_ddebug339, !102, !"__UNIQUE_ID_ddebug339", i1 false, i1 false}
!105 = !{ptr @.str.40, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/staging/rts5208/rtsx_chip.c", i32 1915, i32 2}
!107 = !{ptr @.str.41, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @rtsx_do_before_power_down.__UNIQUE_ID_ddebug340, !106, !"__UNIQUE_ID_ddebug340", i1 false, i1 false}
!109 = !{ptr @.str.42, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/staging/rts5208/rtsx_chip.c", i32 1948, i32 3}
!111 = !{ptr @rtsx_do_before_power_down.__UNIQUE_ID_ddebug341, !110, !"__UNIQUE_ID_ddebug341", i1 false, i1 false}
!112 = distinct !{null, !113, !"__already_done", i1 false, i1 false}
!113 = !{!"../drivers/staging/rts5208/rtsx_chip.c", i32 1953, i32 4}
!114 = !{ptr @.str.43, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/staging/rts5208/rtsx_chip.c", i32 1955, i32 3}
!116 = !{ptr @rtsx_do_before_power_down.__UNIQUE_ID_ddebug343, !115, !"__UNIQUE_ID_ddebug343", i1 false, i1 false}
!117 = !{ptr @.str.44, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/staging/rts5208/rtsx_chip.c", i32 1973, i32 3}
!119 = !{ptr @.str.45, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @rtsx_enable_aspm.__UNIQUE_ID_ddebug344, !118, !"__UNIQUE_ID_ddebug344", i1 false, i1 false}
!121 = !{ptr @.str.46, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/staging/rts5208/rtsx_chip.c", i32 2001, i32 3}
!123 = !{ptr @.str.47, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @rtsx_disable_aspm.__UNIQUE_ID_ddebug345, !122, !"__UNIQUE_ID_ddebug345", i1 false, i1 false}
!125 = distinct !{null, !126, !"__already_done", i1 false, i1 false}
!126 = !{!"../drivers/staging/rts5208/rtsx_chip.c", i32 2012, i32 3}
!127 = distinct !{null, !128, !"__already_done", i1 false, i1 false}
!128 = !{!"../drivers/staging/rts5208/rtsx_chip.c", i32 2131, i32 4}
!129 = distinct !{null, !130, !"__already_done", i1 false, i1 false}
!130 = !{!"../drivers/staging/rts5208/rtsx_chip.c", i32 26, i32 2}
!131 = !{ptr @.str.48, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/staging/rts5208/rtsx_chip.c", i32 166, i32 2}
!133 = !{ptr @.str.49, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @rtsx_pre_handle_sdio_new.__UNIQUE_ID_ddebug290, !132, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!135 = !{ptr @.str.50, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/staging/rts5208/rtsx_chip.c", i32 168, i32 2}
!137 = !{ptr @rtsx_pre_handle_sdio_new.__UNIQUE_ID_ddebug291, !136, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!138 = !{ptr @.str.51, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/staging/rts5208/rtsx_chip.c", i32 170, i32 2}
!140 = !{ptr @rtsx_pre_handle_sdio_new.__UNIQUE_ID_ddebug292, !139, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!141 = !{ptr @.str.52, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/staging/rts5208/rtsx_chip.c", i32 202, i32 4}
!143 = !{ptr @rtsx_pre_handle_sdio_new.__UNIQUE_ID_ddebug293, !142, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!144 = !{ptr @.str.53, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/staging/rts5208/rtsx_chip.c", i32 654, i32 3}
!146 = !{ptr @.str.54, !145, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @rts5208_init.__UNIQUE_ID_ddebug298, !145, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!148 = !{ptr @.str.55, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/staging/rts5208/rtsx_chip.c", i32 670, i32 2}
!150 = !{ptr @rts5208_init.__UNIQUE_ID_ddebug299, !149, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!151 = !{ptr @.str.56, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/staging/rts5208/rtsx_chip.c", i32 714, i32 2}
!153 = !{ptr @rts5288_init.__UNIQUE_ID_ddebug300, !152, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!154 = !{ptr @.str.57, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/staging/rts5208/rtsx_chip.c", i32 720, i32 2}
!156 = !{ptr @rts5288_init.__UNIQUE_ID_ddebug301, !155, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!157 = !{ptr @.str.58, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/staging/rts5208/rtsx_chip.c", i32 733, i32 2}
!159 = !{ptr @rts5288_init.__UNIQUE_ID_ddebug302, !158, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!160 = !{ptr @.str.59, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/staging/rts5208/rtsx_chip.c", i32 1054, i32 2}
!162 = !{ptr @.str.60, !161, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @rtsx_manage_aspm.__UNIQUE_ID_ddebug320, !161, !"__UNIQUE_ID_ddebug320", i1 false, i1 false}
!164 = !{ptr @.str.61, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/staging/rts5208/rtsx_chip.c", i32 1071, i32 2}
!166 = !{ptr @.str.62, !165, !"<string literal>", i1 false, i1 false}
!167 = !{ptr @rtsx_manage_idle.__UNIQUE_ID_ddebug321, !165, !"__UNIQUE_ID_ddebug321", i1 false, i1 false}
!168 = !{ptr @.str.63, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/staging/rts5208/rtsx_chip.c", i32 1094, i32 3}
!170 = !{ptr @.str.64, !169, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @rtsx_manage_2lun_mode.__UNIQUE_ID_ddebug322, !169, !"__UNIQUE_ID_ddebug322", i1 false, i1 false}
!172 = !{ptr @.str.65, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/staging/rts5208/rtsx_chip.c", i32 1117, i32 2}
!174 = !{ptr @rtsx_manage_1lun_mode.__UNIQUE_ID_ddebug323, !173, !"__UNIQUE_ID_ddebug323", i1 false, i1 false}
!175 = !{ptr @.str.66, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/staging/rts5208/rtsx_chip.c", i32 1191, i32 3}
!177 = !{ptr @.str.67, !176, !"<string literal>", i1 false, i1 false}
!178 = !{ptr @rtsx_delink_stage.__UNIQUE_ID_ddebug326, !176, !"__UNIQUE_ID_ddebug326", i1 false, i1 false}
!179 = !{ptr @.str.68, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/staging/rts5208/rtsx_chip.c", i32 1145, i32 3}
!181 = !{ptr @.str.69, !180, !"<string literal>", i1 false, i1 false}
!182 = !{ptr @rtsx_delink_stage1.__UNIQUE_ID_ddebug324, !180, !"__UNIQUE_ID_ddebug324", i1 false, i1 false}
!183 = !{ptr @.str.70, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/staging/rts5208/rtsx_chip.c", i32 1147, i32 3}
!185 = !{ptr @rtsx_delink_stage1.__UNIQUE_ID_ddebug325, !184, !"__UNIQUE_ID_ddebug325", i1 false, i1 false}
!186 = !{ptr @.str.71, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/staging/rts5208/rtsx_chip.c", i32 1732, i32 2}
!188 = !{ptr @.str.72, !187, !"<string literal>", i1 false, i1 false}
!189 = !{ptr @rtsx_handle_pm_dstate.__UNIQUE_ID_ddebug336, !187, !"__UNIQUE_ID_ddebug336", i1 false, i1 false}
!190 = !{ptr @.str.73, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/staging/rts5208/rtsx_chip.c", i32 1744, i32 3}
!192 = !{ptr @rtsx_handle_pm_dstate.__UNIQUE_ID_ddebug337, !191, !"__UNIQUE_ID_ddebug337", i1 false, i1 false}
!193 = !{ptr @.str.74, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/staging/rts5208/rtsx_chip.c", i32 943, i32 3}
!195 = !{ptr @.str.75, !194, !"<string literal>", i1 false, i1 false}
!196 = !{ptr @rtsx_monitor_aspm_config.__UNIQUE_ID_ddebug319, !194, !"__UNIQUE_ID_ddebug319", i1 false, i1 false}
!197 = !{!"sp"}
!198 = !{i32 1, !"wchar_size", i32 2}
!199 = !{i32 1, !"min_enum_size", i32 4}
!200 = !{i32 8, !"branch-target-enforcement", i32 0}
!201 = !{i32 8, !"sign-return-address", i32 0}
!202 = !{i32 8, !"sign-return-address-all", i32 0}
!203 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!204 = !{i32 7, !"uwtable", i32 1}
!205 = !{i32 7, !"frame-pointer", i32 2}
!206 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!207 = !{i64 5995530}
!208 = !{i64 2153535879}
!209 = !{i64 2153537234}
!210 = !{i64 5995112}
!211 = !{i64 2148318863, i64 2148318868, i64 2148318881, i64 2148318925, i64 2148318959, i64 2148318980}
!212 = !{i64 2155241372}
!213 = !{i64 2155387174}
!214 = !{!"auto-init"}
!215 = !{i64 2155266066}
!216 = !{i64 2155341322}
!217 = !{i64 2155346282}
!218 = !{i64 2155392441}
!219 = !{i64 2155375017}
!220 = !{i64 2155205153}
