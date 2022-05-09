; ModuleID = '/llk/IR_all_yes/drivers/staging/rts5208/rtsx_card.c_pt.bc'
source_filename = "../drivers/staging/rts5208/rtsx_card.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.rtsx_chip = type { ptr, i32, i8, ptr, ptr, i32, i32, ptr, i32, i32, ptr, [8 x %struct.sense_data_t], i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, [8 x i8], [8 x i32], [8 x ptr], [8 x i32], [32 x i8], [8 x i8], [8 x i32], i32, i32, i32, %struct.sd_info, %struct.xd_info, %struct.ms_info, %struct.spi_info, i32, i32, i32, i32, i32, i32, [12 x i8], i8, i8, i8, i32, i32, i32, i16, i16, i8, i32, i32, [2 x i8], i32, i32, i32, i32, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i32 }
%struct.sense_data_t = type { i8, i8, i8, [4 x i8], i8, [4 x i8], i8, i8, i8, [3 x i8] }
%struct.sd_info = type { i16, i8, i8, i32, i32, [16 x i8], [8 x i8], i32, i32, i32, i16, i32, i32, i32, i32, i32, i8, [17 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.xd_info = type { i8, i8, i8, i8, i8, i16, i8, i8, i32, ptr, i32, %struct.xd_delay_write_tag, i32, i32 }
%struct.xd_delay_write_tag = type { i32, i32, i32, i8, i8 }
%struct.ms_info = type { i16, i8, i8, i16, i16, i32, i8, i8, i8, ptr, i32, i32, i32, i16, [96 x i8], [48 x i8], i8, i8, i32, i32, i16, i32, %struct.ms_delay_write_tag, i32, i32, [16 x i8], i8, i32 }
%struct.ms_delay_write_tag = type { i16, i16, i16, i8, i8 }
%struct.spi_info = type { i8, i8, i16, i8, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.78, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.78 = type { ptr }
%struct.rtsx_dev = type { ptr, i32, ptr, i32, %struct.spinlock, ptr, ptr, %struct.completion, %struct.completion, %struct.completion, %struct.completion, %struct.completion, %struct.wait_queue_head, %struct.mutex, ptr, i32, i8, i8, ptr, i32, ptr }
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
%struct.scsi_cmnd = type { %struct.scsi_request, ptr, %struct.list_head, %struct.delayed_work, %struct.callback_head, i32, i32, i32, i32, i32, i8, i8, i8, i8, i16, i32, ptr, %struct.scsi_data_buffer, ptr, i32, i32, ptr, %struct.scsi_pointer, ptr, i32, i32, i32, i32 }
%struct.scsi_request = type { [16 x i8], ptr, i16, i32, i32, i32, i32, ptr }
%struct.scsi_data_buffer = type { %struct.sg_table, i32 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.scsi_pointer = type { ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.scsi_device = type <{ ptr, ptr, %struct.list_head, %struct.list_head, %struct.sbitmap, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, %struct.list_head, i16, i16, i16, i16, i32, i32, i32, i32, i32, i64, i32, i32, ptr, i8, i8, i8, i8, %struct.mutex, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x i8], i64, i32, i48, i32, i8, [3 x i8], %struct.atomic_t, [1 x i32], [1 x i32], %struct.list_head, %struct.work_struct, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, [4 x i8], %struct.device, %struct.device, %struct.execute_work, %struct.work_struct, ptr, ptr, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.mutex, i32, ptr, [0 x i32], [4 x i8] }>
%struct.sbitmap = type { i32, i32, i32, i8, ptr, ptr }
%struct.execute_work = type { %struct.work_struct }

@try_to_switch_sdio_ctrl.__UNIQUE_ID_ddebug287 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 22, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rts5208\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"try_to_switch_sdio_ctrl\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/staging/rts5208/rtsx_card.c\00", [60 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"reg 0xFF34: 0x%x, reg 0xFF38: 0x%x\0A\00", [60 x i8] zeroinitializer }, align 32
@dynamic_configure_sdio_aspm.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.5, i8 0, i8 30, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"dynamic_configure_sdio_aspm\00", [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"SDIO enter ASPM!\0A\00", [46 x i8] zeroinitializer }, align 32
@dynamic_configure_sdio_aspm.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.6, i8 0, i8 32, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"SDIO exit ASPM!\0A\00", [47 x i8] zeroinitializer }, align 32
@do_reset_sd_card.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.2, ptr @.str.8, i8 0, i8 35, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"do_reset_sd_card\00", [47 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: %d, card2lun = 0x%x\0A\00", [39 x i8] zeroinitializer }, align 32
@do_reset_xd_card.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.2, ptr @.str.8, i8 0, i8 49, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"do_reset_xd_card\00", [47 x i8] zeroinitializer }, align 32
@do_reset_ms_card.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.2, ptr @.str.8, i8 0, i8 61, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"do_reset_ms_card\00", [47 x i8] zeroinitializer }, align 32
@rtsx_init_cards.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.2, ptr @.str.14, i8 0, i8 -127, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rtsx_init_cards\00", [16 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Reset chip in polling thread!\0A\00", [33 x i8] zeroinitializer }, align 32
@rtsx_init_cards.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.2, ptr @.str.15, i8 0, i8 -121, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"chip->need_release = 0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@rtsx_init_cards.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.2, ptr @.str.16, i8 0, i8 -106, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"chip->card_exist = 0x%x\0A\00", [39 x i8] zeroinitializer }, align 32
@rtsx_init_cards.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.2, ptr @.str.17, i8 0, i8 -104, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"chip->need_reset = 0x%x\0A\00", [39 x i8] zeroinitializer }, align 32
@rtsx_init_cards.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.2, ptr @.str.18, i8 0, i8 -102, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"chip->need_reinit = 0x%x\0A\00", [38 x i8] zeroinitializer }, align 32
@switch_ssc_clock.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.2, ptr @.str.20, i8 0, i8 -97, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"switch_ssc_clock\00", [47 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Switch SSC clock to %dMHz (cur_clk = %d)\0A\00", [54 x i8] zeroinitializer }, align 32
@switch_ssc_clock.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.2, ptr @.str.21, i8 0, i8 -94, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"n = %d, div = %d\0A\00", [46 x i8] zeroinitializer }, align 32
@switch_ssc_clock.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.2, ptr @.str.22, i8 0, i8 -91, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ssc_depth = %d\0A\00", [16 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@switch_normal_clock.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.23, ptr @.str.2, ptr @.str.24, i8 0, i8 -81, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"switch_normal_clock\00", [44 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Switch clock to 20MHz\0A\00", [41 x i8] zeroinitializer }, align 32
@switch_normal_clock.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.23, ptr @.str.2, ptr @.str.25, i8 0, i8 -79, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Switch clock to 30MHz\0A\00", [41 x i8] zeroinitializer }, align 32
@switch_normal_clock.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.23, ptr @.str.2, ptr @.str.26, i8 0, i8 -77, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Switch clock to 40MHz\0A\00", [41 x i8] zeroinitializer }, align 32
@switch_normal_clock.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.23, ptr @.str.2, ptr @.str.27, i8 0, i8 -75, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Switch clock to 50MHz\0A\00", [41 x i8] zeroinitializer }, align 32
@switch_normal_clock.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.23, ptr @.str.2, ptr @.str.28, i8 0, i8 -74, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Switch clock to 60MHz\0A\00", [41 x i8] zeroinitializer }, align 32
@switch_normal_clock.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.23, ptr @.str.2, ptr @.str.29, i8 0, i8 -72, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Switch clock to 80MHz\0A\00", [41 x i8] zeroinitializer }, align 32
@switch_normal_clock.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.23, ptr @.str.2, ptr @.str.30, i8 0, i8 -70, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Switch clock to 100MHz\0A\00", [40 x i8] zeroinitializer }, align 32
@switch_normal_clock.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.23, ptr @.str.2, ptr @.str.31, i8 0, i8 -68, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Switch clock to 120MHz\0A\00", [40 x i8] zeroinitializer }, align 32
@switch_normal_clock.__UNIQUE_ID_ddebug312 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.23, ptr @.str.2, ptr @.str.32, i8 0, i8 -67, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Switch clock to 150MHz\0A\00", [40 x i8] zeroinitializer }, align 32
@switch_normal_clock.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.23, ptr @.str.2, ptr @.str.33, i8 0, i8 -65, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Switch clock to 200MHz\0A\00", [40 x i8] zeroinitializer }, align 32
@switch_normal_clock.__UNIQUE_ID_ddebug314 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.23, ptr @.str.2, ptr @.str.34, i8 0, i8 -63, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Try to switch to an illegal clock (%d)\0A\00", [56 x i8] zeroinitializer }, align 32
@card_rw.__UNIQUE_ID_ddebug315 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.35, ptr @.str.2, ptr @.str.36, i8 0, i8 -16, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"card_rw\00", [24 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"RW fail, but no need to retry\0A\00", [33 x i8] zeroinitializer }, align 32
@card_rw.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.35, ptr @.str.2, ptr @.str.37, i8 0, i8 -14, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Retry RW, (i = %d)\0A\00", [44 x i8] zeroinitializer }, align 32
@detect_card_cd.__UNIQUE_ID_ddebug317 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.38, ptr @.str.2, ptr @.str.39, i8 1, i8 15, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"detect_card_cd\00", [17 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Wrong card type: 0x%x\0A\00", [41 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [12 x i64] [i64 10, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10]
@__sancov_gen_cov_switch_values.40 = internal global [5 x i64] [i64 3, i64 32, i64 4, i64 8, i64 16]
@__sancov_gen_cov_switch_values.41 = internal global [5 x i64] [i64 3, i64 32, i64 4, i64 8, i64 16]
@__sancov_gen_cov_switch_values.42 = internal global [4 x i64] [i64 2, i64 16, i64 21000, i64 21128]
@__sancov_gen_cov_switch_values.43 = internal global [5 x i64] [i64 3, i64 32, i64 4, i64 8, i64 16]
@__sancov_gen_cov_switch_values.44 = internal global [5 x i64] [i64 3, i64 32, i64 4, i64 8, i64 16]
@__sancov_gen_cov_switch_values.45 = internal global [6 x i64] [i64 4, i64 32, i64 4, i64 8, i64 16, i64 128]
@__sancov_gen_cov_switch_values.46 = internal global [4 x i64] [i64 2, i64 16, i64 21000, i64 21128]
@__sancov_gen_cov_switch_values.47 = internal global [5 x i64] [i64 3, i64 32, i64 4, i64 8, i64 16]
@__sancov_gen_cov_switch_values.48 = internal global [5 x i64] [i64 3, i64 32, i64 4, i64 8, i64 16]
@__sancov_gen_cov_switch_values.49 = internal global [5 x i64] [i64 3, i64 8, i64 4, i64 8, i64 16]
@__sancov_gen_cov_switch_values.50 = internal global [5 x i64] [i64 3, i64 8, i64 4, i64 8, i64 16]
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 87, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 123, i32 4 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 130, i32 4 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 142, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 196, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 244, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 517, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 541, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 600, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 608, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 615, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 636, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 651, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 662, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 703, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 710, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 717, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 724, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 731, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 738, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 745, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 752, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 759, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 766, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 773, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 963, i32 5 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 971, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.163 = private constant [39 x i8] c"../drivers/staging/rts5208/rtsx_card.c\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 1084, i32 3 }
@llvm.compiler.used = appending global [38 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39], section "llvm.metadata"
@0 = internal global [38 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @do_remaining_work(ptr noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ms_card3 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42
  %card_ready = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 21
  %0 = ptrtoint ptr %card_ready to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %card_ready, align 2
  %2 = and i8 %1, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %entry.if.end7_crit_edge, label %if.then

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.then:                                          ; preds = %entry
  %seq_mode = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 7
  %3 = ptrtoint ptr %seq_mode to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %seq_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool4.not = icmp eq i32 %4, 0
  br i1 %tobool4.not, label %if.else, label %do.body

do.body:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %idle_counter = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 55
  %5 = ptrtoint ptr %idle_counter to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %idle_counter, align 4
  %rtsx_stat = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 56
  %6 = ptrtoint ptr %rtsx_stat to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2, ptr %rtsx_stat, align 4
  %cleanup_counter = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 11
  %7 = ptrtoint ptr %cleanup_counter to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cleanup_counter, align 4
  %inc = add i32 %8, 1
  store i32 %inc, ptr %cleanup_counter, align 4
  br label %if.end7

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %cleanup_counter6 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 11
  %9 = ptrtoint ptr %cleanup_counter6 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %cleanup_counter6, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.else, %do.body, %entry.if.end7_crit_edge
  %10 = and i8 %1, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool11.not = icmp eq i8 %10, 0
  br i1 %tobool11.not, label %if.end7.if.end25_crit_edge, label %if.then12

if.end7.if.end25_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

if.then12:                                        ; preds = %if.end7
  %delay_write_flag = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 41, i32 11, i32 4
  %11 = ptrtoint ptr %delay_write_flag to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %delay_write_flag, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool13.not = icmp eq i8 %12, 0
  br i1 %tobool13.not, label %if.else22, label %do.body15

do.body15:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  %idle_counter16 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 55
  %13 = ptrtoint ptr %idle_counter16 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %idle_counter16, align 4
  %rtsx_stat17 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 56
  %14 = ptrtoint ptr %rtsx_stat17 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 2, ptr %rtsx_stat17, align 4
  %cleanup_counter20 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 41, i32 12
  %15 = ptrtoint ptr %cleanup_counter20 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cleanup_counter20, align 4
  %inc21 = add i32 %16, 1
  store i32 %inc21, ptr %cleanup_counter20, align 4
  br label %if.end25

if.else22:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  %cleanup_counter23 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 41, i32 12
  %17 = ptrtoint ptr %cleanup_counter23 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %cleanup_counter23, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.else22, %do.body15, %if.end7.if.end25_crit_edge
  %18 = and i8 %1, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool29.not = icmp eq i8 %18, 0
  br i1 %tobool29.not, label %if.end25.if.end64_crit_edge, label %if.then30

if.end25.if.end64_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end64

if.then30:                                        ; preds = %if.end25
  %19 = ptrtoint ptr %ms_card3 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %ms_card3, align 4
  %21 = and i16 %20, 255
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %21)
  %cmp = icmp eq i16 %21, 1
  br i1 %cmp, label %if.then34, label %if.else48

if.then34:                                        ; preds = %if.then30
  %seq_mode35 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42, i32 17
  %22 = ptrtoint ptr %seq_mode35 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %seq_mode35, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool36.not = icmp eq i8 %23, 0
  br i1 %tobool36.not, label %if.else45, label %do.body38

do.body38:                                        ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #9
  %idle_counter39 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 55
  %24 = ptrtoint ptr %idle_counter39 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %idle_counter39, align 4
  %rtsx_stat40 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 56
  %25 = ptrtoint ptr %rtsx_stat40 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 2, ptr %rtsx_stat40, align 4
  %cleanup_counter43 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42, i32 23
  %26 = ptrtoint ptr %cleanup_counter43 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cleanup_counter43, align 4
  %inc44 = add i32 %27, 1
  store i32 %inc44, ptr %cleanup_counter43, align 4
  br label %if.end64

if.else45:                                        ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #9
  %cleanup_counter46 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42, i32 23
  %28 = ptrtoint ptr %cleanup_counter46 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %cleanup_counter46, align 4
  br label %if.end64

if.else48:                                        ; preds = %if.then30
  %delay_write_flag50 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42, i32 22, i32 4
  %29 = ptrtoint ptr %delay_write_flag50 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %delay_write_flag50, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool51.not = icmp eq i8 %30, 0
  br i1 %tobool51.not, label %if.else60, label %do.body53

do.body53:                                        ; preds = %if.else48
  call void @__sanitizer_cov_trace_pc() #9
  %idle_counter54 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 55
  %31 = ptrtoint ptr %idle_counter54 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %idle_counter54, align 4
  %rtsx_stat55 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 56
  %32 = ptrtoint ptr %rtsx_stat55 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 2, ptr %rtsx_stat55, align 4
  %cleanup_counter58 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42, i32 23
  %33 = ptrtoint ptr %cleanup_counter58 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %cleanup_counter58, align 4
  %inc59 = add i32 %34, 1
  store i32 %inc59, ptr %cleanup_counter58, align 4
  br label %if.end64

if.else60:                                        ; preds = %if.else48
  call void @__sanitizer_cov_trace_pc() #9
  %cleanup_counter61 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42, i32 23
  %35 = ptrtoint ptr %cleanup_counter61 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %cleanup_counter61, align 4
  br label %if.end64

if.end64:                                         ; preds = %if.else60, %do.body53, %if.else45, %do.body38, %if.end25.if.end64_crit_edge
  %cleanup_counter65 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 40, i32 11
  %36 = ptrtoint ptr %cleanup_counter65 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %cleanup_counter65, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %37)
  %cmp66 = icmp sgt i32 %37, 1
  br i1 %cmp66, label %if.then68, label %if.end64.if.end69_crit_edge

if.end64.if.end69_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

if.then68:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @sd_cleanup_work(ptr noundef %chip) #7
  br label %if.end69

if.end69:                                         ; preds = %if.then68, %if.end64.if.end69_crit_edge
  %cleanup_counter70 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 41, i32 12
  %38 = ptrtoint ptr %cleanup_counter70 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %cleanup_counter70, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %39)
  %cmp71 = icmp sgt i32 %39, 1
  br i1 %cmp71, label %if.then73, label %if.end69.if.end74_crit_edge

if.end69.if.end74_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end74

if.then73:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @xd_cleanup_work(ptr noundef %chip) #7
  br label %if.end74

if.end74:                                         ; preds = %if.then73, %if.end69.if.end74_crit_edge
  %cleanup_counter75 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 42, i32 23
  %40 = ptrtoint ptr %cleanup_counter75 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %cleanup_counter75, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %41)
  %cmp76 = icmp sgt i32 %41, 1
  br i1 %cmp76, label %if.then78, label %if.end74.if.end79_crit_edge

if.end74.if.end79_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end79

if.then78:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @ms_cleanup_work(ptr noundef %chip) #7
  br label %if.end79

if.end79:                                         ; preds = %if.then78, %if.end74.if.end79_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sd_cleanup_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xd_cleanup_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ms_cleanup_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @try_to_switch_sdio_ctrl(ptr noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  %reg1 = alloca i8, align 1
  %reg2 = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg1) #7
  %0 = ptrtoint ptr %reg1 to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %reg1, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg2) #7
  %1 = ptrtoint ptr %reg2 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %reg2, align 1
  %call = call i32 @rtsx_read_register(ptr noundef %chip, i16 noundef zeroext -204, ptr noundef nonnull %reg1) #7
  %call1 = call i32 @rtsx_read_register(ptr noundef %chip, i16 noundef zeroext -200, ptr noundef nonnull %reg2) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @try_to_switch_sdio_ctrl.__UNIQUE_ID_ddebug287, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@try_to_switch_sdio_ctrl, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !110

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  %6 = ptrtoint ptr %reg1 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %reg1, align 1
  %conv = zext i8 %7 to i32
  %8 = ptrtoint ptr %reg2 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %reg2, align 1
  %conv6 = zext i8 %9 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @try_to_switch_sdio_ctrl.__UNIQUE_ID_ddebug287, ptr noundef %dev.i, ptr noundef nonnull @.str.3, i32 noundef %conv, i32 noundef %conv6) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %10 = ptrtoint ptr %reg1 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %reg1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %11)
  %tobool8.not = icmp ult i8 %11, 64
  br i1 %tobool8.not, label %do.end.if.end15_crit_edge, label %land.lhs.true

do.end.if.end15_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

land.lhs.true:                                    ; preds = %do.end
  %12 = ptrtoint ptr %reg2 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %reg2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %13)
  %tobool11.not = icmp ult i8 %13, 64
  br i1 %tobool11.not, label %land.lhs.true.if.end15_crit_edge, label %if.then12

land.lhs.true.if.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

if.then12:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %sd_int = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 52
  %14 = ptrtoint ptr %sd_int to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %sd_int, align 1
  %call13 = call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -661, i8 noundef zeroext -1, i8 noundef zeroext 3) #7
  %call14 = call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -395, i8 noundef zeroext 6, i8 noundef zeroext 0) #7
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %land.lhs.true.if.end15_crit_edge, %do.end.if.end15_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg2) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg1) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtsx_read_register(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtsx_write_register(ptr noundef, i16 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dynamic_configure_sdio_aspm(ptr noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  %buf = alloca [12 x i8], align 1
  %reg = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %buf) #7
  %0 = getelementptr inbounds [12 x i8], ptr %buf, i32 0, i32 1
  %1 = getelementptr inbounds [12 x i8], ptr %buf, i32 0, i32 2
  %2 = getelementptr inbounds [12 x i8], ptr %buf, i32 0, i32 3
  %3 = getelementptr inbounds [12 x i8], ptr %buf, i32 0, i32 4
  %4 = getelementptr inbounds [12 x i8], ptr %buf, i32 0, i32 5
  %5 = getelementptr inbounds [12 x i8], ptr %buf, i32 0, i32 6
  %6 = getelementptr inbounds [12 x i8], ptr %buf, i32 0, i32 7
  %7 = getelementptr inbounds [12 x i8], ptr %buf, i32 0, i32 8
  %8 = getelementptr inbounds [12 x i8], ptr %buf, i32 0, i32 9
  %9 = getelementptr inbounds [12 x i8], ptr %buf, i32 0, i32 10
  %10 = getelementptr inbounds [12 x i8], ptr %buf, i32 0, i32 11
  %11 = call ptr @memset(ptr %buf, i32 255, i32 12)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg) #7
  %12 = ptrtoint ptr %reg to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -1, ptr %reg, align 1, !annotation !111
  %call = call i32 @rtsx_read_register(ptr noundef %chip, i16 noundef zeroext -248, ptr noundef nonnull %buf) #7
  %call.1 = call i32 @rtsx_read_register(ptr noundef %chip, i16 noundef zeroext -247, ptr noundef %0) #7
  %call.2 = call i32 @rtsx_read_register(ptr noundef %chip, i16 noundef zeroext -246, ptr noundef %1) #7
  %call.3 = call i32 @rtsx_read_register(ptr noundef %chip, i16 noundef zeroext -245, ptr noundef %2) #7
  %call.4 = call i32 @rtsx_read_register(ptr noundef %chip, i16 noundef zeroext -244, ptr noundef %3) #7
  %call.5 = call i32 @rtsx_read_register(ptr noundef %chip, i16 noundef zeroext -243, ptr noundef %4) #7
  %call.6 = call i32 @rtsx_read_register(ptr noundef %chip, i16 noundef zeroext -242, ptr noundef %5) #7
  %call.7 = call i32 @rtsx_read_register(ptr noundef %chip, i16 noundef zeroext -241, ptr noundef %6) #7
  %call.8 = call i32 @rtsx_read_register(ptr noundef %chip, i16 noundef zeroext -240, ptr noundef %7) #7
  %call.9 = call i32 @rtsx_read_register(ptr noundef %chip, i16 noundef zeroext -239, ptr noundef %8) #7
  %call.10 = call i32 @rtsx_read_register(ptr noundef %chip, i16 noundef zeroext -238, ptr noundef %9) #7
  %call.11 = call i32 @rtsx_read_register(ptr noundef %chip, i16 noundef zeroext -237, ptr noundef %10) #7
  %call1 = call i32 @rtsx_read_register(ptr noundef %chip, i16 noundef zeroext -219, ptr noundef nonnull %reg) #7
  %sdio_raw_data = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 50
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(12) %buf, ptr noundef dereferenceable(12) %sdio_raw_data, i32 12) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp4.not = icmp eq i32 %bcmp, 0
  br i1 %cmp4.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %13 = ptrtoint ptr %reg to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %reg, align 1
  %15 = and i8 %14, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not = icmp eq i8 %15, 0
  br i1 %tobool.not, label %if.else, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %sdio_counter = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 49
  %16 = ptrtoint ptr %sdio_counter to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %sdio_counter, align 4
  %sdio_idle = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 48
  %17 = ptrtoint ptr %sdio_idle to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %sdio_idle, align 4
  br label %if.end19

if.else:                                          ; preds = %lor.lhs.false
  %sdio_idle7 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 48
  %18 = ptrtoint ptr %sdio_idle7 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sdio_idle7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool8.not = icmp eq i32 %19, 0
  br i1 %tobool8.not, label %if.then9, label %if.else.if.end19_crit_edge

if.else.if.end19_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.then9:                                         ; preds = %if.else
  %sdio_counter10 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 49
  %20 = ptrtoint ptr %sdio_counter10 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %sdio_counter10, align 4
  %inc11 = add i32 %21, 1
  store i32 %inc11, ptr %sdio_counter10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %inc11)
  %cmp13 = icmp sgt i32 %inc11, 9
  br i1 %cmp13, label %if.then15, label %if.then9.if.end19_crit_edge

if.then9.if.end19_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.then15:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %sdio_counter10 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %sdio_counter10, align 4
  %23 = ptrtoint ptr %sdio_idle7 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %sdio_idle7, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then15, %if.then9.if.end19_crit_edge, %if.else.if.end19_crit_edge, %if.then
  %24 = call ptr @memcpy(ptr %sdio_raw_data, ptr %buf, i32 12)
  %sdio_idle23 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 48
  %25 = ptrtoint ptr %sdio_idle23 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %sdio_idle23, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool24.not = icmp eq i32 %26, 0
  %sdio_aspm42 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 47
  %27 = ptrtoint ptr %sdio_aspm42 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %sdio_aspm42, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool43.not = icmp eq i32 %28, 0
  br i1 %tobool24.not, label %if.else41, label %if.then25

if.then25:                                        ; preds = %if.end19
  br i1 %tobool43.not, label %do.body, label %if.then25.if.end65_crit_edge

if.then25.if.end65_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end65

do.body:                                          ; preds = %if.then25
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dynamic_configure_sdio_aspm.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dynamic_configure_sdio_aspm, %if.then32)) #7
          to label %do.end [label %if.then32], !srcloc !110

if.then32:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %chip, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %32, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dynamic_configure_sdio_aspm.__UNIQUE_ID_ddebug288, ptr noundef %dev.i, ptr noundef nonnull @.str.5) #7
  br label %do.end

do.end:                                           ; preds = %if.then32, %do.body
  %arrayidx35 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 62, i32 1
  %33 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx35, align 1
  %shl = shl i8 %34, 2
  %or = or i8 %shl, 48
  br label %if.end65.sink.split

if.else41:                                        ; preds = %if.end19
  br i1 %tobool43.not, label %if.else41.if.end65_crit_edge, label %do.body45

if.else41.if.end65_crit_edge:                     ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end65

do.body45:                                        ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dynamic_configure_sdio_aspm.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dynamic_configure_sdio_aspm, %if.then57)) #7
          to label %if.end65.sink.split [label %if.then57], !srcloc !110

if.then57:                                        ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #9
  %35 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %chip, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %36, align 4
  %dev.i92 = getelementptr inbounds %struct.pci_dev, ptr %38, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dynamic_configure_sdio_aspm.__UNIQUE_ID_ddebug289, ptr noundef %dev.i92, ptr noundef nonnull @.str.6) #7
  br label %if.end65.sink.split

if.end65.sink.split:                              ; preds = %if.then57, %do.body45, %do.end
  %.sink96 = phi i8 [ %or, %do.end ], [ 48, %do.body45 ], [ 48, %if.then57 ]
  %.sink = phi i32 [ 1, %do.end ], [ 0, %do.body45 ], [ 0, %if.then57 ]
  %call62 = call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -425, i8 noundef zeroext -4, i8 noundef zeroext %.sink96) #7
  %39 = ptrtoint ptr %sdio_aspm42 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %.sink, ptr %sdio_aspm42, align 4
  br label %if.end65

if.end65:                                         ; preds = %if.end65.sink.split, %if.else41.if.end65_crit_edge, %if.then25.if.end65_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %buf) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @do_reset_sd_card(ptr noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @do_reset_sd_card.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@do_reset_sd_card, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !110

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %sd_reset_counter = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 27
  %4 = ptrtoint ptr %sd_reset_counter to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sd_reset_counter, align 4
  %arrayidx = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 34, i32 4
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 4
  %conv = zext i8 %7 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @do_reset_sd_card.__UNIQUE_ID_ddebug290, ptr noundef %dev.i, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.7, i32 noundef %5, i32 noundef %conv) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %arrayidx5 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 34, i32 4
  %8 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx5, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %9)
  %cmp = icmp ugt i8 %9, 7
  br i1 %cmp, label %if.then8, label %if.end10

if.then8:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %need_reset = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 15
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %need_reset) #7
  %sd_reset_counter9 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 27
  %10 = ptrtoint ptr %sd_reset_counter9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %sd_reset_counter9, align 4
  %sd_show_cnt = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 37
  %11 = ptrtoint ptr %sd_show_cnt to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %sd_show_cnt, align 4
  br label %cleanup

if.end10:                                         ; preds = %do.end
  %conv6 = zext i8 %9 to i32
  %arrayidx13 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 36, i32 %conv6
  %12 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %arrayidx13, align 4
  %idle_counter = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 55
  %13 = ptrtoint ptr %idle_counter to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %idle_counter, align 4
  %rtsx_stat = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 56
  %14 = ptrtoint ptr %rtsx_stat to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 2, ptr %rtsx_stat, align 4
  %call17 = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -661, i8 noundef zeroext -1, i8 noundef zeroext 0) #7
  %call18 = tail call i32 @reset_sd_card(ptr noundef %chip) #7
  %need_release = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 14
  %15 = ptrtoint ptr %need_release to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %need_release, align 4
  %and = and i32 %16, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool19.not = icmp eq i32 %and, 0
  br i1 %tobool19.not, label %if.end21, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end21:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp22 = icmp eq i32 %call18, 0
  br i1 %cmp22, label %if.then24, label %if.else

if.then24:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  %need_reset25 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 15
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %need_reset25) #7
  %sd_reset_counter26 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 27
  %17 = ptrtoint ptr %sd_reset_counter26 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %sd_reset_counter26, align 4
  %sd_show_cnt27 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 37
  %18 = ptrtoint ptr %sd_show_cnt27 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %sd_show_cnt27, align 4
  %card_ready = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 21
  %19 = ptrtoint ptr %card_ready to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %card_ready, align 2
  %21 = or i8 %20, 4
  store i8 %21, ptr %card_ready, align 2
  %card_fail = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 22
  %22 = ptrtoint ptr %card_fail to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %card_fail, align 1
  %24 = and i8 %23, -5
  store i8 %24, ptr %card_fail, align 1
  %25 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx5, align 4
  %idxprom35 = zext i8 %26 to i32
  %arrayidx36 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 32, i32 %idxprom35
  %27 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @sd_rw, ptr %arrayidx36, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end21
  %sd_io = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 51
  %28 = ptrtoint ptr %sd_io to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %sd_io, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool38.not = icmp eq i8 %29, 0
  br i1 %tobool38.not, label %lor.lhs.false, label %if.else.if.then42_crit_edge

if.else.if.then42_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then42

lor.lhs.false:                                    ; preds = %if.else
  %sd_reset_counter39 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 27
  %30 = ptrtoint ptr %sd_reset_counter39 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %sd_reset_counter39, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %31)
  %cmp40 = icmp sgt i32 %31, 2
  br i1 %cmp40, label %lor.lhs.false.if.then42_crit_edge, label %if.else46

lor.lhs.false.if.then42_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then42

if.then42:                                        ; preds = %lor.lhs.false.if.then42_crit_edge, %if.else.if.then42_crit_edge
  %need_reset43 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 15
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %need_reset43) #7
  %sd_reset_counter44 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 27
  %32 = ptrtoint ptr %sd_reset_counter44 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %sd_reset_counter44, align 4
  %sd_show_cnt45 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 37
  %33 = ptrtoint ptr %sd_show_cnt45 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %sd_show_cnt45, align 4
  br label %if.end48

if.else46:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  %inc = add nsw i32 %31, 1
  %34 = ptrtoint ptr %sd_reset_counter39 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %inc, ptr %sd_reset_counter39, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.else46, %if.then42
  %card_ready49 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 21
  %35 = ptrtoint ptr %card_ready49 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %card_ready49, align 2
  %37 = and i8 %36, -5
  store i8 %37, ptr %card_ready49, align 2
  %card_fail53 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 22
  %38 = ptrtoint ptr %card_fail53 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %card_fail53, align 1
  %40 = or i8 %39, 4
  store i8 %40, ptr %card_fail53, align 1
  %41 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx5, align 4
  %idxprom59 = zext i8 %42 to i32
  %arrayidx60 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 31, i32 %idxprom59
  %43 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %arrayidx60, align 4
  %44 = load i8, ptr %arrayidx5, align 4
  %idxprom64 = zext i8 %44 to i32
  %arrayidx65 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 32, i32 %idxprom64
  %45 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %arrayidx65, align 4
  %call66 = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -683, i8 noundef zeroext 4, i8 noundef zeroext 0) #7
  %ft2_fast_mode = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 131
  %46 = ptrtoint ptr %ft2_fast_mode to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %ft2_fast_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool67.not = icmp eq i32 %47, 0
  br i1 %tobool67.not, label %if.then68, label %if.end48.if.end70_crit_edge

if.end48.if.end70_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end70

if.then68:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -688, i8 noundef zeroext 3, i8 noundef zeroext 3) #7
  br label %if.end70

if.end70:                                         ; preds = %if.then68, %if.end48.if.end70_crit_edge
  %48 = ptrtoint ptr %sd_io to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %sd_io, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool72.not = icmp eq i8 %49, 0
  br i1 %tobool72.not, label %if.else74, label %if.then73

if.then73:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #9
  %sd_int = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 52
  %50 = ptrtoint ptr %sd_int to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 0, ptr %sd_int, align 1
  tail call void @try_to_switch_sdio_ctrl(ptr noundef %chip)
  br label %cleanup

if.else74:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #9
  %call.i117 = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -663, i8 noundef zeroext 4, i8 noundef zeroext 0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.else74, %if.then73, %if.then24, %if.end10.cleanup_crit_edge, %if.then8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_sd_card(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sd_rw(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @card_power_off(ptr noundef %chip, i8 noundef zeroext %card) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lun_mode = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 67
  %0 = ptrtoint ptr %lun_mode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %lun_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp = icmp eq i8 %1, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %card)
  %cmp4 = icmp eq i8 %card, 8
  %or.cond = and i1 %cmp4, %cmp
  %val.0 = select i1 %or.cond, i8 12, i8 3
  %call = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -688, i8 noundef zeroext %val.0, i8 noundef zeroext %val.0) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @disable_card_clock(ptr noundef %chip, i8 noundef zeroext %card) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %and = lshr i8 %card, 3
  %0 = and i8 %and, 2
  %1 = and i8 %card, 12
  %2 = or i8 %1, %0
  %call = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -663, i8 noundef zeroext %2, i8 noundef zeroext 0) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @do_reset_xd_card(ptr noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @do_reset_xd_card.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@do_reset_xd_card, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !110

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %xd_reset_counter = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 28
  %4 = ptrtoint ptr %xd_reset_counter to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %xd_reset_counter, align 4
  %arrayidx = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 34, i32 16
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 4
  %conv = zext i8 %7 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @do_reset_xd_card.__UNIQUE_ID_ddebug291, ptr noundef %dev.i, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, i32 noundef %5, i32 noundef %conv) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %arrayidx5 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 34, i32 16
  %8 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx5, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %9)
  %cmp = icmp ugt i8 %9, 7
  br i1 %cmp, label %if.then8, label %if.end10

if.then8:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %need_reset = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 15
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %need_reset) #7
  %xd_reset_counter9 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 28
  %10 = ptrtoint ptr %xd_reset_counter9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %xd_reset_counter9, align 4
  %xd_show_cnt = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 38
  %11 = ptrtoint ptr %xd_show_cnt to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %xd_show_cnt, align 4
  br label %cleanup

if.end10:                                         ; preds = %do.end
  %conv6 = zext i8 %9 to i32
  %arrayidx13 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 36, i32 %conv6
  %12 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %arrayidx13, align 4
  %idle_counter = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 55
  %13 = ptrtoint ptr %idle_counter to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %idle_counter, align 4
  %rtsx_stat = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 56
  %14 = ptrtoint ptr %rtsx_stat to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 2, ptr %rtsx_stat, align 4
  %call17 = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -661, i8 noundef zeroext -1, i8 noundef zeroext 0) #7
  %call18 = tail call i32 @reset_xd_card(ptr noundef %chip) #7
  %need_release = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 14
  %15 = ptrtoint ptr %need_release to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %need_release, align 4
  %and = and i32 %16, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool19.not = icmp eq i32 %and, 0
  br i1 %tobool19.not, label %if.end21, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end21:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp22 = icmp eq i32 %call18, 0
  br i1 %cmp22, label %if.then24, label %if.else

if.then24:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  %need_reset25 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 15
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %need_reset25) #7
  %xd_reset_counter26 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 28
  %17 = ptrtoint ptr %xd_reset_counter26 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %xd_reset_counter26, align 4
  %card_ready = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 21
  %18 = ptrtoint ptr %card_ready to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %card_ready, align 2
  %20 = or i8 %19, 16
  store i8 %20, ptr %card_ready, align 2
  %card_fail = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 22
  %21 = ptrtoint ptr %card_fail to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %card_fail, align 1
  %23 = and i8 %22, -17
  store i8 %23, ptr %card_fail, align 1
  %24 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx5, align 4
  %idxprom34 = zext i8 %25 to i32
  %arrayidx35 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 32, i32 %idxprom34
  %26 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @xd_rw, ptr %arrayidx35, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end21
  %xd_reset_counter36 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 28
  %27 = ptrtoint ptr %xd_reset_counter36 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %xd_reset_counter36, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %28)
  %cmp37 = icmp sgt i32 %28, 2
  br i1 %cmp37, label %if.then39, label %if.else43

if.then39:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %need_reset40 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 15
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %need_reset40) #7
  %29 = ptrtoint ptr %xd_reset_counter36 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %xd_reset_counter36, align 4
  %xd_show_cnt42 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 38
  %30 = ptrtoint ptr %xd_show_cnt42 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %xd_show_cnt42, align 4
  br label %if.end45

if.else43:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %inc = add nsw i32 %28, 1
  %31 = ptrtoint ptr %xd_reset_counter36 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %inc, ptr %xd_reset_counter36, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.else43, %if.then39
  %card_ready46 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 21
  %32 = ptrtoint ptr %card_ready46 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %card_ready46, align 2
  %34 = and i8 %33, -17
  store i8 %34, ptr %card_ready46, align 2
  %card_fail50 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 22
  %35 = ptrtoint ptr %card_fail50 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %card_fail50, align 1
  %37 = or i8 %36, 16
  store i8 %37, ptr %card_fail50, align 1
  %38 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx5, align 4
  %idxprom56 = zext i8 %39 to i32
  %arrayidx57 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 31, i32 %idxprom56
  %40 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %arrayidx57, align 4
  %41 = load i8, ptr %arrayidx5, align 4
  %idxprom61 = zext i8 %41 to i32
  %arrayidx62 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 32, i32 %idxprom61
  %42 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr null, ptr %arrayidx62, align 4
  %call63 = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -683, i8 noundef zeroext 2, i8 noundef zeroext 0) #7
  %ft2_fast_mode = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 131
  %43 = ptrtoint ptr %ft2_fast_mode to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %ft2_fast_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool64.not = icmp eq i32 %44, 0
  br i1 %tobool64.not, label %if.then65, label %if.end45.if.end67_crit_edge

if.end45.if.end67_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end67

if.then65:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -688, i8 noundef zeroext 3, i8 noundef zeroext 3) #7
  br label %if.end67

if.end67:                                         ; preds = %if.then65, %if.end45.if.end67_crit_edge
  %call.i104 = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -663, i8 noundef zeroext 2, i8 noundef zeroext 0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end67, %if.then24, %if.end10.cleanup_crit_edge, %if.then8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_xd_card(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xd_rw(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @do_reset_ms_card(ptr noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @do_reset_ms_card.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@do_reset_ms_card, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !110

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %ms_reset_counter = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 29
  %4 = ptrtoint ptr %ms_reset_counter to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ms_reset_counter, align 4
  %arrayidx = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 34, i32 8
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 4
  %conv = zext i8 %7 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @do_reset_ms_card.__UNIQUE_ID_ddebug292, ptr noundef %dev.i, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.10, i32 noundef %5, i32 noundef %conv) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %arrayidx5 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 34, i32 8
  %8 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx5, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %9)
  %cmp = icmp ugt i8 %9, 7
  br i1 %cmp, label %if.then8, label %if.end10

if.then8:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %need_reset = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 15
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %need_reset) #7
  %ms_reset_counter9 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 29
  %10 = ptrtoint ptr %ms_reset_counter9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %ms_reset_counter9, align 4
  %ms_show_cnt = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 39
  %11 = ptrtoint ptr %ms_show_cnt to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %ms_show_cnt, align 4
  br label %cleanup

if.end10:                                         ; preds = %do.end
  %conv6 = zext i8 %9 to i32
  %arrayidx13 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 36, i32 %conv6
  %12 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %arrayidx13, align 4
  %idle_counter = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 55
  %13 = ptrtoint ptr %idle_counter to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %idle_counter, align 4
  %rtsx_stat = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 56
  %14 = ptrtoint ptr %rtsx_stat to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 2, ptr %rtsx_stat, align 4
  %call17 = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -661, i8 noundef zeroext -1, i8 noundef zeroext 0) #7
  %call18 = tail call i32 @reset_ms_card(ptr noundef %chip) #7
  %need_release = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 14
  %15 = ptrtoint ptr %need_release to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %need_release, align 4
  %and = and i32 %16, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool19.not = icmp eq i32 %and, 0
  br i1 %tobool19.not, label %if.end21, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end21:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp22 = icmp eq i32 %call18, 0
  br i1 %cmp22, label %if.then24, label %if.else

if.then24:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  %need_reset25 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 15
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %need_reset25) #7
  %ms_reset_counter26 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 29
  %17 = ptrtoint ptr %ms_reset_counter26 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %ms_reset_counter26, align 4
  %card_ready = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 21
  %18 = ptrtoint ptr %card_ready to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %card_ready, align 2
  %20 = or i8 %19, 8
  store i8 %20, ptr %card_ready, align 2
  %card_fail = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 22
  %21 = ptrtoint ptr %card_fail to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %card_fail, align 1
  %23 = and i8 %22, -9
  store i8 %23, ptr %card_fail, align 1
  %24 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx5, align 4
  %idxprom34 = zext i8 %25 to i32
  %arrayidx35 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 32, i32 %idxprom34
  %26 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @ms_rw, ptr %arrayidx35, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end21
  %ms_reset_counter36 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 29
  %27 = ptrtoint ptr %ms_reset_counter36 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %ms_reset_counter36, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %28)
  %cmp37 = icmp sgt i32 %28, 2
  br i1 %cmp37, label %if.then39, label %if.else43

if.then39:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %need_reset40 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 15
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %need_reset40) #7
  %29 = ptrtoint ptr %ms_reset_counter36 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %ms_reset_counter36, align 4
  %ms_show_cnt42 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 39
  %30 = ptrtoint ptr %ms_show_cnt42 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %ms_show_cnt42, align 4
  br label %if.end45

if.else43:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %inc = add nsw i32 %28, 1
  %31 = ptrtoint ptr %ms_reset_counter36 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %inc, ptr %ms_reset_counter36, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.else43, %if.then39
  %card_ready46 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 21
  %32 = ptrtoint ptr %card_ready46 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %card_ready46, align 2
  %34 = and i8 %33, -9
  store i8 %34, ptr %card_ready46, align 2
  %card_fail50 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 22
  %35 = ptrtoint ptr %card_fail50 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %card_fail50, align 1
  %37 = or i8 %36, 8
  store i8 %37, ptr %card_fail50, align 1
  %38 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx5, align 4
  %idxprom56 = zext i8 %39 to i32
  %arrayidx57 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 31, i32 %idxprom56
  %40 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %arrayidx57, align 4
  %41 = load i8, ptr %arrayidx5, align 4
  %idxprom61 = zext i8 %41 to i32
  %arrayidx62 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 32, i32 %idxprom61
  %42 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr null, ptr %arrayidx62, align 4
  %call63 = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -683, i8 noundef zeroext 8, i8 noundef zeroext 0) #7
  %ft2_fast_mode = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 131
  %43 = ptrtoint ptr %ft2_fast_mode to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %ft2_fast_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool64.not = icmp eq i32 %44, 0
  br i1 %tobool64.not, label %if.then65, label %if.end45.if.end67_crit_edge

if.end45.if.end67_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end67

if.then65:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  %lun_mode.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 67
  %45 = ptrtoint ptr %lun_mode.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %lun_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %46)
  %cmp.i = icmp eq i8 %46, 1
  %val.0.i = select i1 %cmp.i, i8 12, i8 3
  %call.i = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -688, i8 noundef zeroext %val.0.i, i8 noundef zeroext %val.0.i) #7
  br label %if.end67

if.end67:                                         ; preds = %if.then65, %if.end45.if.end67_crit_edge
  %call.i104 = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -663, i8 noundef zeroext 8, i8 noundef zeroext 0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end67, %if.then24, %if.end10.cleanup_crit_edge, %if.then8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_ms_card(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ms_rw(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtsx_power_off_card(ptr noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %card_ready = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 21
  %0 = ptrtoint ptr %card_ready to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %card_ready, align 2
  %2 = and i8 %1, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %sd_io = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 51
  %3 = ptrtoint ptr %sd_io to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %sd_io, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool2.not = icmp eq i8 %4, 0
  br i1 %tobool2.not, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void @sd_cleanup_work(ptr noundef %chip) #7
  %call = tail call i32 @sd_power_off_card3v3(ptr noundef %chip) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.if.end_crit_edge
  %5 = ptrtoint ptr %card_ready to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %card_ready, align 2
  %7 = and i8 %6, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool6.not = icmp eq i8 %7, 0
  br i1 %tobool6.not, label %if.end.if.end9_crit_edge, label %if.then7

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @xd_cleanup_work(ptr noundef %chip) #7
  %call8 = tail call i32 @xd_power_off_card3v3(ptr noundef %chip) #7
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end.if.end9_crit_edge
  %8 = ptrtoint ptr %card_ready to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %card_ready, align 2
  %10 = and i8 %9, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool13.not = icmp eq i8 %10, 0
  br i1 %tobool13.not, label %if.end9.if.end16_crit_edge, label %if.then14

if.end9.if.end16_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

if.then14:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @ms_cleanup_work(ptr noundef %chip) #7
  %call15 = tail call i32 @ms_power_off_card3v3(ptr noundef %chip) #7
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.end9.if.end16_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sd_power_off_card3v3(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xd_power_off_card3v3(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ms_power_off_card3v3(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtsx_release_cards(ptr noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 4
  %remap_addr = getelementptr inbounds %struct.rtsx_dev, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %remap_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %remap_addr, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 20
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !112
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !113
  %int_reg = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 1
  %6 = ptrtoint ptr %int_reg to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %int_reg, align 4
  %card_ready = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 21
  %7 = ptrtoint ptr %card_ready to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %card_ready, align 2
  %9 = and i8 %8, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %sd_io = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 51
  %10 = ptrtoint ptr %sd_io to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %sd_io, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool2.not = icmp eq i8 %11, 0
  br i1 %tobool2.not, label %lor.lhs.false.if.end8_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.lhs.false.if.end8_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %and4 = and i32 %5, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.then.if.end_crit_edge, label %if.then6

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @sd_cleanup_work(ptr noundef %chip) #7
  br label %if.end

if.end:                                           ; preds = %if.then6, %if.then.if.end_crit_edge
  %call7 = tail call i32 @release_sd_card(ptr noundef %chip) #7
  br label %if.end8

if.end8:                                          ; preds = %if.end, %lor.lhs.false.if.end8_crit_edge
  %12 = ptrtoint ptr %card_ready to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %card_ready, align 2
  %14 = and i8 %13, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool12.not = icmp eq i8 %14, 0
  br i1 %tobool12.not, label %if.end8.if.end20_crit_edge, label %if.then13

if.end8.if.end20_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

if.then13:                                        ; preds = %if.end8
  %15 = ptrtoint ptr %int_reg to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %int_reg, align 4
  %and15 = and i32 %16, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.then13.if.end18_crit_edge, label %if.then17

if.then13.if.end18_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

if.then17:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @xd_cleanup_work(ptr noundef %chip) #7
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.then13.if.end18_crit_edge
  %call19 = tail call i32 @release_xd_card(ptr noundef %chip) #7
  br label %if.end20

if.end20:                                         ; preds = %if.end18, %if.end8.if.end20_crit_edge
  %17 = ptrtoint ptr %card_ready to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %card_ready, align 2
  %19 = and i8 %18, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool24.not = icmp eq i8 %19, 0
  br i1 %tobool24.not, label %if.end20.if.end32_crit_edge, label %if.then25

if.end20.if.end32_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

if.then25:                                        ; preds = %if.end20
  %20 = ptrtoint ptr %int_reg to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %int_reg, align 4
  %and27 = and i32 %21, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %if.then25.if.end30_crit_edge, label %if.then29

if.then25.if.end30_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

if.then29:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @ms_cleanup_work(ptr noundef %chip) #7
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %if.then25.if.end30_crit_edge
  %call31 = tail call i32 @release_ms_card(ptr noundef %chip) #7
  br label %if.end32

if.end32:                                         ; preds = %if.end30, %if.end20.if.end32_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @release_sd_card(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @release_xd_card(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @release_ms_card(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtsx_reset_cards(ptr noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %need_reset = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 15
  %0 = ptrtoint ptr %need_reset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %need_reset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end65_crit_edge, label %do.body

entry.if.end65_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end65

do.body:                                          ; preds = %entry
  %idle_counter = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 55
  %2 = ptrtoint ptr %idle_counter to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %idle_counter, align 4
  %rtsx_stat = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 56
  %3 = ptrtoint ptr %rtsx_stat to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 2, ptr %rtsx_stat, align 4
  %call = tail call i32 @rtsx_force_power_on(ptr noundef %chip, i8 noundef zeroext 3) #7
  tail call void @rtsx_disable_aspm(ptr noundef %chip) #7
  %4 = ptrtoint ptr %need_reset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %need_reset, align 4
  %and = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %do.body.if.end6_crit_edge, label %land.lhs.true

do.body.if.end6_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

land.lhs.true:                                    ; preds = %do.body
  %chip_insert_with_sdio = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 63
  %6 = ptrtoint ptr %chip_insert_with_sdio to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %chip_insert_with_sdio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool3.not = icmp eq i32 %7, 0
  br i1 %tobool3.not, label %land.lhs.true.if.end6_crit_edge, label %if.then4

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.then4:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %need_reset) #7
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %land.lhs.true.if.end6_crit_edge, %do.body.if.end6_crit_edge
  %8 = ptrtoint ptr %need_reset to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %need_reset, align 4
  %and8 = and i32 %9, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.end6.if.end16_crit_edge, label %if.then10

if.end6.if.end16_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

if.then10:                                        ; preds = %if.end6
  %card_exist = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 20
  %10 = ptrtoint ptr %card_exist to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %card_exist, align 1
  %12 = or i8 %11, 16
  store i8 %12, ptr %card_exist, align 1
  %xd_show_cnt = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 38
  %13 = ptrtoint ptr %xd_show_cnt to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %xd_show_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %14)
  %cmp = icmp sgt i32 %14, 9
  br i1 %cmp, label %if.then13, label %if.else

if.then13:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @do_reset_xd_card(ptr noundef %chip)
  br label %if.end16

if.else:                                          ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  %inc = add nsw i32 %14, 1
  %15 = ptrtoint ptr %xd_show_cnt to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %inc, ptr %xd_show_cnt, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.then13, %if.end6.if.end16_crit_edge
  %product_id = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 58
  %16 = ptrtoint ptr %product_id to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %product_id, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 21128, i16 %17)
  %cmp18 = icmp eq i16 %17, 21128
  br i1 %cmp18, label %land.lhs.true20, label %if.end16.if.end32_crit_edge

if.end16.if.end32_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

land.lhs.true20:                                  ; preds = %if.end16
  %baro_pkg = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 73
  %18 = ptrtoint ptr %baro_pkg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %baro_pkg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp21 = icmp eq i32 %19, 0
  br i1 %cmp21, label %if.then23, label %land.lhs.true20.if.end32_crit_edge

land.lhs.true20.if.end32_crit_edge:               ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

if.then23:                                        ; preds = %land.lhs.true20
  %card_exist24 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 20
  %20 = ptrtoint ptr %card_exist24 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %card_exist24, align 1
  %22 = and i8 %21, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool27.not = icmp eq i8 %22, 0
  br i1 %tobool27.not, label %if.then23.if.end32_crit_edge, label %if.then28

if.then23.if.end32_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

if.then28:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %need_reset) #7
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %need_reset) #7
  br label %if.end32

if.end32:                                         ; preds = %if.then28, %if.then23.if.end32_crit_edge, %land.lhs.true20.if.end32_crit_edge, %if.end16.if.end32_crit_edge
  %23 = ptrtoint ptr %need_reset to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %need_reset, align 4
  %and34 = and i32 %24, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %if.end32.if.end49_crit_edge, label %if.then36

if.end32.if.end49_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end49

if.then36:                                        ; preds = %if.end32
  %card_exist37 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 20
  %25 = ptrtoint ptr %card_exist37 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %card_exist37, align 1
  %27 = or i8 %26, 4
  store i8 %27, ptr %card_exist37, align 1
  %sd_show_cnt = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 37
  %28 = ptrtoint ptr %sd_show_cnt to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %sd_show_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %29)
  %cmp41 = icmp sgt i32 %29, 9
  br i1 %cmp41, label %if.then43, label %if.else45

if.then43:                                        ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #9
  %call44 = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -460, i8 noundef zeroext -128, i8 noundef zeroext -128) #7
  tail call void @do_reset_sd_card(ptr noundef %chip)
  br label %if.end49

if.else45:                                        ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #9
  %inc47 = add nsw i32 %29, 1
  %30 = ptrtoint ptr %sd_show_cnt to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %inc47, ptr %sd_show_cnt, align 4
  br label %if.end49

if.end49:                                         ; preds = %if.else45, %if.then43, %if.end32.if.end49_crit_edge
  %31 = ptrtoint ptr %need_reset to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %need_reset, align 4
  %and51 = and i32 %32, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %tobool52.not = icmp eq i32 %and51, 0
  br i1 %tobool52.not, label %if.end49.if.end65_crit_edge, label %if.then53

if.end49.if.end65_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end65

if.then53:                                        ; preds = %if.end49
  %card_exist54 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 20
  %33 = ptrtoint ptr %card_exist54 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %card_exist54, align 1
  %35 = or i8 %34, 8
  store i8 %35, ptr %card_exist54, align 1
  %ms_show_cnt = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 39
  %36 = ptrtoint ptr %ms_show_cnt to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %ms_show_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %37)
  %cmp58 = icmp sgt i32 %37, 9
  br i1 %cmp58, label %if.then60, label %if.else61

if.then60:                                        ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @do_reset_ms_card(ptr noundef %chip)
  br label %if.end65

if.else61:                                        ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #9
  %inc63 = add nsw i32 %37, 1
  %38 = ptrtoint ptr %ms_show_cnt to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %inc63, ptr %ms_show_cnt, align 4
  br label %if.end65

if.end65:                                         ; preds = %if.else61, %if.then60, %if.end49.if.end65_crit_edge, %entry.if.end65_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtsx_force_power_on(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtsx_disable_aspm(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtsx_reinit_cards(ptr noundef %chip, i32 noundef %reset_chip) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %idle_counter = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 55
  %0 = ptrtoint ptr %idle_counter to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %idle_counter, align 4
  %rtsx_stat = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 56
  %1 = ptrtoint ptr %rtsx_stat to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 2, ptr %rtsx_stat, align 4
  %call = tail call i32 @rtsx_force_power_on(ptr noundef %chip, i8 noundef zeroext 3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %reset_chip)
  %tobool.not = icmp eq i32 %reset_chip, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = tail call i32 @rtsx_reset_chip(ptr noundef %chip) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %2 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip, align 4
  %remap_addr = getelementptr inbounds %struct.rtsx_dev, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %remap_addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %remap_addr, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 20
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !112
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !113
  %int_reg = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 1
  %8 = ptrtoint ptr %int_reg to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %int_reg, align 4
  %and = and i32 %7, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %if.end.if.end79_crit_edge, label %land.lhs.true

if.end.if.end79_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end79

land.lhs.true:                                    ; preds = %if.end
  %need_reinit = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 16
  %9 = ptrtoint ptr %need_reinit to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %need_reinit, align 4
  %and5 = and i32 %10, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %land.lhs.true.if.end79_crit_edge, label %if.then7

land.lhs.true.if.end79_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end79

if.then7:                                         ; preds = %land.lhs.true
  %sd_io.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 51
  %11 = ptrtoint ptr %sd_io.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %sd_io.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.i = icmp eq i8 %12, 0
  br i1 %tobool.not.i, label %if.then7.release_sdio.exit_crit_edge, label %if.then.i

if.then7.release_sdio.exit_crit_edge:             ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  br label %release_sdio.exit

if.then.i:                                        ; preds = %if.then7
  %call.i = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -684, i8 noundef zeroext 68, i8 noundef zeroext 68) #7
  %chip_insert_with_sdio.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 63
  %13 = ptrtoint ptr %chip_insert_with_sdio.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %chip_insert_with_sdio.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool1.not.i = icmp eq i32 %14, 0
  br i1 %tobool1.not.i, label %if.then.i.if.end8.i_crit_edge, label %if.then2.i

if.then.i.if.end8.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.i

if.then2.i:                                       ; preds = %if.then.i
  %15 = ptrtoint ptr %chip_insert_with_sdio.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %chip_insert_with_sdio.i, align 4
  %product_id.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 58
  %16 = ptrtoint ptr %product_id.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %product_id.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 21128, i16 %17)
  %cmp.i = icmp eq i16 %17, 21128
  br i1 %cmp.i, label %if.then5.i, label %if.else.i

if.then5.i:                                       ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #9
  %call6.i = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -422, i8 noundef zeroext 8, i8 noundef zeroext 0) #7
  br label %if.end8.i

if.else.i:                                        ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #9
  %call7.i = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -400, i8 noundef zeroext -128, i8 noundef zeroext 0) #7
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.else.i, %if.then5.i, %if.then.i.if.end8.i_crit_edge
  %call9.i = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -661, i8 noundef zeroext 2, i8 noundef zeroext 0) #7
  %18 = ptrtoint ptr %sd_io.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %sd_io.i, align 4
  br label %release_sdio.exit

release_sdio.exit:                                ; preds = %if.end8.i, %if.then7.release_sdio.exit_crit_edge
  %call8 = tail call i32 @release_sd_card(ptr noundef %chip) #7
  br label %__here

__here:                                           ; preds = %release_sdio.exit
  call void @__sanitizer_cov_trace_pc() #9
  %19 = tail call i32 @llvm.read_register.i32(metadata !100) #7
  %and.i = and i32 %19, -16384
  %20 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %22, i32 0, i32 212
  %23 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 ptrtoint (ptr blockaddress(@rtsx_reinit_cards, %__here) to i32), ptr %task_state_change, align 4
  %24 = load ptr, ptr %task, align 8
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile i32 1, ptr %24, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !114
  %call75 = tail call i32 @schedule_timeout(i32 noundef 10) #7
  %card_exist = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 20
  %26 = ptrtoint ptr %card_exist to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %card_exist, align 1
  %28 = or i8 %27, 4
  store i8 %28, ptr %card_exist, align 1
  tail call void @do_reset_sd_card(ptr noundef %chip)
  br label %if.end79

if.end79:                                         ; preds = %__here, %land.lhs.true.if.end79_crit_edge, %if.end.if.end79_crit_edge
  %29 = ptrtoint ptr %int_reg to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %int_reg, align 4
  %and81 = and i32 %30, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and81)
  %tobool82.not = icmp eq i32 %and81, 0
  br i1 %tobool82.not, label %if.end79.if.end178_crit_edge, label %land.lhs.true83

if.end79.if.end178_crit_edge:                     ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end178

land.lhs.true83:                                  ; preds = %if.end79
  %need_reinit84 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 16
  %31 = ptrtoint ptr %need_reinit84 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %need_reinit84, align 4
  %and85 = and i32 %32, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and85)
  %tobool86.not = icmp eq i32 %and85, 0
  br i1 %tobool86.not, label %land.lhs.true83.if.end178_crit_edge, label %if.then87

land.lhs.true83.if.end178_crit_edge:              ; preds = %land.lhs.true83
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end178

if.then87:                                        ; preds = %land.lhs.true83
  %call88 = tail call i32 @release_xd_card(ptr noundef %chip) #7
  br label %__here141

__here141:                                        ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #9
  %33 = tail call i32 @llvm.read_register.i32(metadata !100) #7
  %and.i307 = and i32 %33, -16384
  %34 = inttoptr i32 %and.i307 to ptr
  %task144 = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %task144 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %task144, align 8
  %task_state_change145 = getelementptr inbounds %struct.task_struct, ptr %36, i32 0, i32 212
  %37 = ptrtoint ptr %task_state_change145 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 ptrtoint (ptr blockaddress(@rtsx_reinit_cards, %__here141) to i32), ptr %task_state_change145, align 4
  %38 = load ptr, ptr %task144, align 8
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile i32 1, ptr %38, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !115
  %call171 = tail call i32 @schedule_timeout(i32 noundef 10) #7
  %card_exist174 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 20
  %40 = ptrtoint ptr %card_exist174 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %card_exist174, align 1
  %42 = or i8 %41, 16
  store i8 %42, ptr %card_exist174, align 1
  tail call void @do_reset_xd_card(ptr noundef %chip)
  br label %if.end178

if.end178:                                        ; preds = %__here141, %land.lhs.true83.if.end178_crit_edge, %if.end79.if.end178_crit_edge
  %43 = ptrtoint ptr %int_reg to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %int_reg, align 4
  %and180 = and i32 %44, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and180)
  %tobool181.not = icmp eq i32 %and180, 0
  br i1 %tobool181.not, label %if.end178.if.end277_crit_edge, label %land.lhs.true182

if.end178.if.end277_crit_edge:                    ; preds = %if.end178
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end277

land.lhs.true182:                                 ; preds = %if.end178
  %need_reinit183 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 16
  %45 = ptrtoint ptr %need_reinit183 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %need_reinit183, align 4
  %and184 = and i32 %46, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and184)
  %tobool185.not = icmp eq i32 %and184, 0
  br i1 %tobool185.not, label %land.lhs.true182.if.end277_crit_edge, label %if.then186

land.lhs.true182.if.end277_crit_edge:             ; preds = %land.lhs.true182
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end277

if.then186:                                       ; preds = %land.lhs.true182
  %call187 = tail call i32 @release_ms_card(ptr noundef %chip) #7
  br label %__here240

__here240:                                        ; preds = %if.then186
  call void @__sanitizer_cov_trace_pc() #9
  %47 = tail call i32 @llvm.read_register.i32(metadata !100) #7
  %and.i308 = and i32 %47, -16384
  %48 = inttoptr i32 %and.i308 to ptr
  %task243 = getelementptr inbounds %struct.thread_info, ptr %48, i32 0, i32 2
  %49 = ptrtoint ptr %task243 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %task243, align 8
  %task_state_change244 = getelementptr inbounds %struct.task_struct, ptr %50, i32 0, i32 212
  %51 = ptrtoint ptr %task_state_change244 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 ptrtoint (ptr blockaddress(@rtsx_reinit_cards, %__here240) to i32), ptr %task_state_change244, align 4
  %52 = load ptr, ptr %task243, align 8
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile i32 1, ptr %52, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !116
  %call270 = tail call i32 @schedule_timeout(i32 noundef 10) #7
  %card_exist273 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 20
  %54 = ptrtoint ptr %card_exist273 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %card_exist273, align 1
  %56 = or i8 %55, 8
  store i8 %56, ptr %card_exist273, align 1
  tail call void @do_reset_ms_card(ptr noundef %chip)
  br label %if.end277

if.end277:                                        ; preds = %__here240, %land.lhs.true182.if.end277_crit_edge, %if.end178.if.end277_crit_edge
  %need_reinit278 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 16
  %57 = ptrtoint ptr %need_reinit278 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %need_reinit278, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtsx_reset_chip(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtsx_init_cards(ptr noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rtsx_flag = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 53
  %0 = ptrtoint ptr %rtsx_flag to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %rtsx_flag, align 2
  %2 = and i8 %1, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %entry.if.end12_crit_edge, label %land.lhs.true

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

land.lhs.true:                                    ; preds = %entry
  %rtsx_stat = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 56
  %3 = ptrtoint ptr %rtsx_stat to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %rtsx_stat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %4)
  %cmp.not = icmp eq i32 %4, 3
  br i1 %cmp.not, label %land.lhs.true.if.end12_crit_edge, label %do.body

land.lhs.true.if.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

do.body:                                          ; preds = %land.lhs.true
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtsx_init_cards.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtsx_init_cards, %if.then5)) #7
          to label %do.end [label %if.then5], !srcloc !110

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %chip, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtsx_init_cards.__UNIQUE_ID_ddebug296, ptr noundef %dev.i, ptr noundef nonnull @.str.14) #7
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  %call7 = tail call i32 @rtsx_reset_chip(ptr noundef %chip) #7
  %9 = ptrtoint ptr %rtsx_flag to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %rtsx_flag, align 2
  %11 = and i8 %10, -2
  store i8 %11, ptr %rtsx_flag, align 2
  br label %if.end12

if.end12:                                         ; preds = %do.end, %land.lhs.true.if.end12_crit_edge, %entry.if.end12_crit_edge
  %need_release = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 14
  %12 = ptrtoint ptr %need_release to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %need_release, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool13.not = icmp eq i32 %13, 0
  br i1 %tobool13.not, label %if.end12.if.end211_crit_edge, label %if.then14

if.end12.if.end211_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end211

if.then14:                                        ; preds = %if.end12
  %product_id = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 58
  %14 = ptrtoint ptr %product_id to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %product_id, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 21128, i16 %15)
  %cmp16 = icmp eq i16 %15, 21128
  br i1 %cmp16, label %land.lhs.true18, label %if.then14.if.end28_crit_edge

if.then14.if.end28_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

land.lhs.true18:                                  ; preds = %if.then14
  %baro_pkg = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 73
  %16 = ptrtoint ptr %baro_pkg to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %baro_pkg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp19 = icmp eq i32 %17, 0
  br i1 %cmp19, label %if.then21, label %land.lhs.true18.if.end28_crit_edge

land.lhs.true18.if.end28_crit_edge:               ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

if.then21:                                        ; preds = %land.lhs.true18
  %int_reg = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 1
  %18 = ptrtoint ptr %int_reg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %int_reg, align 4
  %and22 = and i32 %19, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.then21.if.end28_crit_edge, label %if.then24

if.then21.if.end28_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

if.then24:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %need_release) #7
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %need_release) #7
  br label %if.end28

if.end28:                                         ; preds = %if.then24, %if.then21.if.end28_crit_edge, %land.lhs.true18.if.end28_crit_edge, %if.then14.if.end28_crit_edge
  %card_exist = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 20
  %20 = ptrtoint ptr %card_exist to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %card_exist, align 1
  %22 = and i8 %21, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool31.not = icmp eq i8 %22, 0
  br i1 %tobool31.not, label %land.lhs.true32, label %if.end28.if.end36_crit_edge

if.end28.if.end36_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

land.lhs.true32:                                  ; preds = %if.end28
  %sd_io = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 51
  %23 = ptrtoint ptr %sd_io to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %sd_io, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool33.not = icmp eq i8 %24, 0
  br i1 %tobool33.not, label %if.then34, label %land.lhs.true32.if.end36_crit_edge

land.lhs.true32.if.end36_crit_edge:               ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

if.then34:                                        ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %need_release) #7
  br label %if.end36

if.end36:                                         ; preds = %if.then34, %land.lhs.true32.if.end36_crit_edge, %if.end28.if.end36_crit_edge
  %25 = ptrtoint ptr %card_exist to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %card_exist, align 1
  %27 = and i8 %26, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool40.not = icmp eq i8 %27, 0
  br i1 %tobool40.not, label %if.then41, label %if.end36.if.end43_crit_edge

if.end36.if.end43_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43

if.then41:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %need_release) #7
  br label %if.end43

if.end43:                                         ; preds = %if.then41, %if.end36.if.end43_crit_edge
  %28 = ptrtoint ptr %card_exist to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %card_exist, align 1
  %30 = and i8 %29, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool47.not = icmp eq i8 %30, 0
  br i1 %tobool47.not, label %if.then48, label %if.end43.do.body51_crit_edge

if.end43.do.body51_crit_edge:                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body51

if.then48:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %need_release) #7
  br label %do.body51

do.body51:                                        ; preds = %if.then48, %if.end43.do.body51_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtsx_init_cards.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtsx_init_cards, %if.then63)) #7
          to label %do.end67 [label %if.then63], !srcloc !110

if.then63:                                        ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #9
  %31 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %chip, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 4
  %dev.i338 = getelementptr inbounds %struct.pci_dev, ptr %34, i32 0, i32 44
  %35 = ptrtoint ptr %need_release to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %need_release, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtsx_init_cards.__UNIQUE_ID_ddebug297, ptr noundef %dev.i338, ptr noundef nonnull @.str.15, i32 noundef %36) #7
  br label %do.end67

do.end67:                                         ; preds = %if.then63, %do.body51
  %37 = ptrtoint ptr %need_release to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %need_release, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool69.not = icmp eq i32 %38, 0
  br i1 %tobool69.not, label %do.end67.if.end86_crit_edge, label %if.then70

do.end67.if.end86_crit_edge:                      ; preds = %do.end67
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end86

if.then70:                                        ; preds = %do.end67
  %ocp_stat = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 19
  %39 = ptrtoint ptr %ocp_stat to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %ocp_stat, align 4
  %41 = and i8 %40, 12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool73.not = icmp eq i8 %41, 0
  br i1 %tobool73.not, label %if.then70.if.end78_crit_edge, label %if.then74

if.then70.if.end78_crit_edge:                     ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end78

if.then74:                                        ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #9
  %call75 = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -1001, i8 noundef zeroext 10, i8 noundef zeroext 10) #7
  br label %if.end78

if.end78:                                         ; preds = %if.then74, %if.then70.if.end78_crit_edge
  %42 = ptrtoint ptr %ocp_stat to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %ocp_stat, align 4
  %43 = ptrtoint ptr %need_release to i32
  call void @__asan_load4_noabort(i32 %43)
  %.pr = load i32, ptr %need_release, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool80.not = icmp eq i32 %.pr, 0
  br i1 %tobool80.not, label %if.end78.if.end86_crit_edge, label %do.body82

if.end78.if.end86_crit_edge:                      ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end86

do.body82:                                        ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #9
  %idle_counter = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 55
  %44 = ptrtoint ptr %idle_counter to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %idle_counter, align 4
  %rtsx_stat83 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 56
  %45 = ptrtoint ptr %rtsx_stat83 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 2, ptr %rtsx_stat83, align 4
  %call85 = tail call i32 @rtsx_force_power_on(ptr noundef %chip, i8 noundef zeroext 3) #7
  br label %if.end86

if.end86:                                         ; preds = %do.body82, %if.end78.if.end86_crit_edge, %do.end67.if.end86_crit_edge
  %46 = ptrtoint ptr %need_release to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %need_release, align 4
  %and88 = and i32 %47, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and88)
  %tobool89.not = icmp eq i32 %and88, 0
  br i1 %tobool89.not, label %if.end86.if.end111_crit_edge, label %if.then90

if.end86.if.end111_crit_edge:                     ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end111

if.then90:                                        ; preds = %if.end86
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %need_release) #7
  %48 = ptrtoint ptr %card_exist to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %card_exist, align 1
  %50 = and i8 %49, -5
  store i8 %50, ptr %card_exist, align 1
  %card_ejected = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 23
  %51 = ptrtoint ptr %card_ejected to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %card_ejected, align 4
  %53 = and i8 %52, -5
  store i8 %53, ptr %card_ejected, align 4
  %card_fail = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 22
  %54 = ptrtoint ptr %card_fail to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %card_fail, align 1
  %56 = and i8 %55, -5
  store i8 %56, ptr %card_fail, align 1
  %arrayidx = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 34, i32 4
  %57 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx, align 4
  %conv102 = zext i8 %58 to i32
  %shl = shl nuw i32 1, %conv102
  %lun_mc = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 25
  %59 = ptrtoint ptr %lun_mc to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %lun_mc, align 2
  %61 = trunc i32 %shl to i8
  %62 = xor i8 %61, -1
  %conv105 = and i8 %60, %62
  store i8 %conv105, ptr %lun_mc, align 2
  %arrayidx108 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 36, i32 %conv102
  %63 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 0, ptr %arrayidx108, align 4
  %call109 = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -460, i8 noundef zeroext -128, i8 noundef zeroext -128) #7
  %sd_io.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 51
  %64 = ptrtoint ptr %sd_io.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %sd_io.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool.not.i = icmp eq i8 %65, 0
  br i1 %tobool.not.i, label %if.then90.release_sdio.exit_crit_edge, label %if.then.i

if.then90.release_sdio.exit_crit_edge:            ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #9
  br label %release_sdio.exit

if.then.i:                                        ; preds = %if.then90
  %call.i = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -684, i8 noundef zeroext 68, i8 noundef zeroext 68) #7
  %chip_insert_with_sdio.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 63
  %66 = ptrtoint ptr %chip_insert_with_sdio.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %chip_insert_with_sdio.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool1.not.i = icmp eq i32 %67, 0
  br i1 %tobool1.not.i, label %if.then.i.if.end8.i_crit_edge, label %if.then2.i

if.then.i.if.end8.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.i

if.then2.i:                                       ; preds = %if.then.i
  %68 = ptrtoint ptr %chip_insert_with_sdio.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 0, ptr %chip_insert_with_sdio.i, align 4
  %69 = ptrtoint ptr %product_id to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %product_id, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 21128, i16 %70)
  %cmp.i = icmp eq i16 %70, 21128
  br i1 %cmp.i, label %if.then5.i, label %if.else.i

if.then5.i:                                       ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #9
  %call6.i = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -422, i8 noundef zeroext 8, i8 noundef zeroext 0) #7
  br label %if.end8.i

if.else.i:                                        ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #9
  %call7.i = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -400, i8 noundef zeroext -128, i8 noundef zeroext 0) #7
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.else.i, %if.then5.i, %if.then.i.if.end8.i_crit_edge
  %call9.i = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -661, i8 noundef zeroext 2, i8 noundef zeroext 0) #7
  %71 = ptrtoint ptr %sd_io.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 0, ptr %sd_io.i, align 4
  br label %release_sdio.exit

release_sdio.exit:                                ; preds = %if.end8.i, %if.then90.release_sdio.exit_crit_edge
  %call110 = tail call i32 @release_sd_card(ptr noundef %chip) #7
  br label %if.end111

if.end111:                                        ; preds = %release_sdio.exit, %if.end86.if.end111_crit_edge
  %72 = ptrtoint ptr %need_release to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %need_release, align 4
  %and113 = and i32 %73, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and113)
  %tobool114.not = icmp eq i32 %and113, 0
  br i1 %tobool114.not, label %if.end111.if.end155_crit_edge, label %if.then115

if.end111.if.end155_crit_edge:                    ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end155

if.then115:                                       ; preds = %if.end111
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %need_release) #7
  %74 = ptrtoint ptr %card_exist to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %card_exist, align 1
  %76 = and i8 %75, -17
  store i8 %76, ptr %card_exist, align 1
  %card_ejected121 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 23
  %77 = ptrtoint ptr %card_ejected121 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %card_ejected121, align 4
  %79 = and i8 %78, -17
  store i8 %79, ptr %card_ejected121, align 4
  %card_fail125 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 22
  %80 = ptrtoint ptr %card_fail125 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %card_fail125, align 1
  %82 = and i8 %81, -17
  store i8 %82, ptr %card_fail125, align 1
  %arrayidx130 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 34, i32 16
  %83 = ptrtoint ptr %arrayidx130 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %arrayidx130, align 4
  %conv131 = zext i8 %84 to i32
  %shl132 = shl nuw i32 1, %conv131
  %lun_mc134 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 25
  %85 = ptrtoint ptr %lun_mc134 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %lun_mc134, align 2
  %87 = trunc i32 %shl132 to i8
  %88 = xor i8 %87, -1
  %conv137 = and i8 %86, %88
  store i8 %conv137, ptr %lun_mc134, align 2
  %arrayidx142 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 36, i32 %conv131
  %89 = ptrtoint ptr %arrayidx142 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 0, ptr %arrayidx142, align 4
  %call143 = tail call i32 @release_xd_card(ptr noundef %chip) #7
  %90 = ptrtoint ptr %product_id to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %product_id, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 21128, i16 %91)
  %cmp146 = icmp eq i16 %91, 21128
  br i1 %cmp146, label %land.lhs.true148, label %if.then115.if.end155_crit_edge

if.then115.if.end155_crit_edge:                   ; preds = %if.then115
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end155

land.lhs.true148:                                 ; preds = %if.then115
  %baro_pkg149 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 73
  %92 = ptrtoint ptr %baro_pkg149 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %baro_pkg149, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %cmp150 = icmp eq i32 %93, 0
  br i1 %cmp150, label %if.then152, label %land.lhs.true148.if.end155_crit_edge

land.lhs.true148.if.end155_crit_edge:             ; preds = %land.lhs.true148
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end155

if.then152:                                       ; preds = %land.lhs.true148
  call void @__sanitizer_cov_trace_pc() #9
  %call153 = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -416, i8 noundef zeroext -64, i8 noundef zeroext -64) #7
  br label %if.end155

if.end155:                                        ; preds = %if.then152, %land.lhs.true148.if.end155_crit_edge, %if.then115.if.end155_crit_edge, %if.end111.if.end155_crit_edge
  %94 = ptrtoint ptr %need_release to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %need_release, align 4
  %and157 = and i32 %95, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and157)
  %tobool158.not = icmp eq i32 %and157, 0
  br i1 %tobool158.not, label %if.end155.do.body189_crit_edge, label %if.then159

if.end155.do.body189_crit_edge:                   ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body189

if.then159:                                       ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %need_release) #7
  %96 = ptrtoint ptr %card_exist to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %card_exist, align 1
  %98 = and i8 %97, -9
  store i8 %98, ptr %card_exist, align 1
  %card_ejected165 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 23
  %99 = ptrtoint ptr %card_ejected165 to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %card_ejected165, align 4
  %101 = and i8 %100, -9
  store i8 %101, ptr %card_ejected165, align 4
  %card_fail169 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 22
  %102 = ptrtoint ptr %card_fail169 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %card_fail169, align 1
  %104 = and i8 %103, -9
  store i8 %104, ptr %card_fail169, align 1
  %arrayidx174 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 34, i32 8
  %105 = ptrtoint ptr %arrayidx174 to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %arrayidx174, align 4
  %conv175 = zext i8 %106 to i32
  %shl176 = shl nuw i32 1, %conv175
  %lun_mc178 = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 25
  %107 = ptrtoint ptr %lun_mc178 to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %lun_mc178, align 2
  %109 = trunc i32 %shl176 to i8
  %110 = xor i8 %109, -1
  %conv181 = and i8 %108, %110
  store i8 %conv181, ptr %lun_mc178, align 2
  %arrayidx186 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 36, i32 %conv175
  %111 = ptrtoint ptr %arrayidx186 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 0, ptr %arrayidx186, align 4
  %call187 = tail call i32 @release_ms_card(ptr noundef %chip) #7
  br label %do.body189

do.body189:                                       ; preds = %if.then159, %if.end155.do.body189_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtsx_init_cards.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtsx_init_cards, %if.then201)) #7
          to label %do.end206 [label %if.then201], !srcloc !110

if.then201:                                       ; preds = %do.body189
  call void @__sanitizer_cov_trace_pc() #9
  %112 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %chip, align 4
  %114 = ptrtoint ptr %113 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %113, align 4
  %dev.i339 = getelementptr inbounds %struct.pci_dev, ptr %115, i32 0, i32 44
  %116 = ptrtoint ptr %card_exist to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %card_exist, align 1
  %conv204 = zext i8 %117 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtsx_init_cards.__UNIQUE_ID_ddebug298, ptr noundef %dev.i339, ptr noundef nonnull @.str.16, i32 noundef %conv204) #7
  br label %do.end206

do.end206:                                        ; preds = %if.then201, %do.body189
  %118 = ptrtoint ptr %card_exist to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %card_exist, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %119)
  %tobool208.not = icmp eq i8 %119, 0
  br i1 %tobool208.not, label %if.then209, label %do.end206.if.end211_crit_edge

do.end206.if.end211_crit_edge:                    ; preds = %do.end206
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end211

if.then209:                                       ; preds = %do.end206
  call void @__sanitizer_cov_trace_pc() #9
  %120 = ptrtoint ptr %product_id to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %product_id, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 21128, i16 %121)
  %cmp.i341 = icmp ne i16 %121, 21128
  %.conv3.i = zext i1 %cmp.i341 to i8
  %call10.i = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -680, i8 noundef zeroext 1, i8 noundef zeroext %.conv3.i) #7
  br label %if.end211

if.end211:                                        ; preds = %if.then209, %do.end206.if.end211_crit_edge, %if.end12.if.end211_crit_edge
  %need_reset = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 15
  %122 = ptrtoint ptr %need_reset to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %need_reset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %123)
  %tobool212.not = icmp eq i32 %123, 0
  br i1 %tobool212.not, label %if.end211.if.end231_crit_edge, label %do.body214

if.end211.if.end231_crit_edge:                    ; preds = %if.end211
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end231

do.body214:                                       ; preds = %if.end211
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtsx_init_cards.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtsx_init_cards, %if.then226)) #7
          to label %do.end230 [label %if.then226], !srcloc !110

if.then226:                                       ; preds = %do.body214
  call void @__sanitizer_cov_trace_pc() #9
  %124 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %chip, align 4
  %126 = ptrtoint ptr %125 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %125, align 4
  %dev.i342 = getelementptr inbounds %struct.pci_dev, ptr %127, i32 0, i32 44
  %128 = ptrtoint ptr %need_reset to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %need_reset, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtsx_init_cards.__UNIQUE_ID_ddebug299, ptr noundef %dev.i342, ptr noundef nonnull @.str.17, i32 noundef %129) #7
  br label %do.end230

do.end230:                                        ; preds = %if.then226, %do.body214
  tail call void @rtsx_reset_cards(ptr noundef %chip)
  br label %if.end231

if.end231:                                        ; preds = %do.end230, %if.end211.if.end231_crit_edge
  %need_reinit = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 16
  %130 = ptrtoint ptr %need_reinit to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %need_reinit, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %131)
  %tobool232.not = icmp eq i32 %131, 0
  br i1 %tobool232.not, label %if.end231.if.end251_crit_edge, label %do.body234

if.end231.if.end251_crit_edge:                    ; preds = %if.end231
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end251

do.body234:                                       ; preds = %if.end231
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtsx_init_cards.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtsx_init_cards, %if.then246)) #7
          to label %do.end250 [label %if.then246], !srcloc !110

if.then246:                                       ; preds = %do.body234
  call void @__sanitizer_cov_trace_pc() #9
  %132 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %chip, align 4
  %134 = ptrtoint ptr %133 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %133, align 4
  %dev.i343 = getelementptr inbounds %struct.pci_dev, ptr %135, i32 0, i32 44
  %136 = ptrtoint ptr %need_reinit to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %need_reinit, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtsx_init_cards.__UNIQUE_ID_ddebug300, ptr noundef %dev.i343, ptr noundef nonnull @.str.18, i32 noundef %137) #7
  br label %do.end250

do.end250:                                        ; preds = %if.then246, %do.body234
  tail call void @rtsx_reinit_cards(ptr noundef %chip, i32 noundef 0)
  br label %if.end251

if.end251:                                        ; preds = %do.end250, %if.end231.if.end251_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @turn_off_led(ptr noundef %chip, i8 noundef zeroext %gpio) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %product_id = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 58
  %0 = ptrtoint ptr %product_id to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %product_id, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 21128, i16 %1)
  %cmp = icmp eq i16 %1, 21128
  %conv2 = zext i8 %gpio to i32
  %shl = shl nuw i32 1, %conv2
  %conv3 = trunc i32 %shl to i8
  %.conv3 = select i1 %cmp, i8 0, i8 %conv3
  %call10 = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -680, i8 noundef zeroext %conv3, i8 noundef zeroext %.conv3) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @switch_ssc_clock(ptr noundef %chip, i32 noundef %clk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = trunc i32 %clk to i8
  %conv = add i8 %0, -2
  %cur_clk = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 12
  %1 = ptrtoint ptr %cur_clk to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %cur_clk, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %clk)
  %cmp = icmp eq i32 %2, %clk
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @switch_ssc_clock.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@switch_ssc_clock, %if.then5)) #7
          to label %do.end [label %if.then5], !srcloc !110

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %chip, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44
  %7 = ptrtoint ptr %cur_clk to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cur_clk, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @switch_ssc_clock.__UNIQUE_ID_ddebug301, ptr noundef %dev.i, ptr noundef nonnull @.str.20, i32 noundef %clk, i32 noundef %8) #7
  br label %do.end

do.end:                                           ; preds = %if.then5, %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %clk)
  %cmp9 = icmp slt i32 %clk, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 120, i8 %conv)
  %cmp13 = icmp ugt i8 %conv, 120
  %or.cond = or i1 %cmp9, %cmp13
  br i1 %or.cond, label %do.end.cleanup_crit_edge, label %if.end16

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end16:                                         ; preds = %do.end
  %div17150 = udiv i32 125, %clk
  %9 = trunc i32 %div17150 to i8
  %10 = tail call i8 @llvm.umin.i8(i8 %9, i8 4)
  %11 = add nuw nsw i8 %10, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 60, i8 %conv)
  %cmp26152 = icmp ult i8 %conv, 60
  br i1 %cmp26152, label %while.body, label %if.end16.do.body36_crit_edge

if.end16.do.body36_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body36

while.body:                                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %add33 = shl nuw nsw i8 %conv, 1
  %sub34 = add nuw nsw i8 %add33, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 29, i8 %conv)
  %cmp26 = icmp ult i8 %conv, 29
  %add33.1 = shl nuw nsw i8 %sub34, 1
  %sub34.1 = or i8 %add33.1, 2
  %div.0153.lcssa = select i1 %cmp26, i8 3, i8 2
  %sub34.lcssa = select i1 %cmp26, i8 %sub34.1, i8 %sub34
  br label %do.body36

do.body36:                                        ; preds = %while.body, %if.end16.do.body36_crit_edge
  %n.0.lcssa151 = phi i8 [ %conv, %if.end16.do.body36_crit_edge ], [ %sub34.lcssa, %while.body ]
  %div.0.lcssa = phi i8 [ 1, %if.end16.do.body36_crit_edge ], [ %div.0153.lcssa, %while.body ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @switch_ssc_clock.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@switch_ssc_clock, %if.then48)) #7
          to label %do.end54 [label %if.then48], !srcloc !110

if.then48:                                        ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #9
  %conv24.le = zext i8 %n.0.lcssa151 to i32
  %12 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %chip, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %dev.i145 = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 44
  %conv51 = zext i8 %div.0.lcssa to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @switch_ssc_clock.__UNIQUE_ID_ddebug302, ptr noundef %dev.i145, ptr noundef nonnull @.str.21, i32 noundef %conv24.le, i32 noundef %conv51) #7
  br label %do.end54

do.end54:                                         ; preds = %if.then48, %do.body36
  %ssc_en = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 116
  %16 = ptrtoint ptr %ssc_en to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ssc_en, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool55.not = icmp eq i32 %17, 0
  %sub58 = add i8 %n.0.lcssa151, -2
  %not.tobool55.not = xor i1 %tobool55.not, true
  %ssc_depth.0 = zext i1 %not.tobool55.not to i8
  %n.1 = select i1 %tobool55.not, i8 %n.0.lcssa151, i8 %sub58
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @switch_ssc_clock.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@switch_ssc_clock, %if.then73)) #7
          to label %do.end78 [label %if.then73], !srcloc !110

if.then73:                                        ; preds = %do.end54
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %chip, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %dev.i146 = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 44
  %conv75 = zext i1 %not.tobool55.not to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @switch_ssc_clock.__UNIQUE_ID_ddebug303, ptr noundef %dev.i146, ptr noundef nonnull @.str.22, i32 noundef %conv75) #7
  br label %do.end78

do.end78:                                         ; preds = %if.then73, %do.end54
  %ci = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 6
  %22 = ptrtoint ptr %ci to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %ci, align 4
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -1022, i8 noundef zeroext 1, i8 noundef zeroext 1) #7
  %shl = shl nuw nsw i8 %div.0.lcssa, 4
  %or = or i8 %shl, %11
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -1021, i8 noundef zeroext -1, i8 noundef zeroext %or) #7
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -1007, i8 noundef zeroext -128, i8 noundef zeroext 0) #7
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -1006, i8 noundef zeroext 3, i8 noundef zeroext %ssc_depth.0) #7
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -1009, i8 noundef zeroext -1, i8 noundef zeroext %n.1) #7
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -1007, i8 noundef zeroext -128, i8 noundef zeroext -128) #7
  %call85 = tail call i32 @rtsx_send_cmd(ptr noundef %chip, i8 noundef zeroext 0, i32 noundef 2000) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %cmp86 = icmp slt i32 %call85, 0
  br i1 %cmp86, label %do.end78.cleanup_crit_edge, label %if.end89

do.end78.cleanup_crit_edge:                       ; preds = %do.end78
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end89:                                         ; preds = %do.end78
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 2147480) #7
  %call90 = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -1022, i8 noundef zeroext 1, i8 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %tobool91.not = icmp eq i32 %call90, 0
  br i1 %tobool91.not, label %if.end93, label %if.end89.cleanup_crit_edge

if.end89.cleanup_crit_edge:                       ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end93:                                         ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %cur_clk to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %clk, ptr %cur_clk, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end93, %if.end89.cleanup_crit_edge, %do.end78.cleanup_crit_edge, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end93 ], [ 0, %entry.cleanup_crit_edge ], [ 1, %do.end.cleanup_crit_edge ], [ 10, %do.end78.cleanup_crit_edge ], [ %call90, %if.end89.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtsx_add_cmd(ptr noundef, i8 noundef zeroext, i16 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtsx_send_cmd(ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @switch_normal_clock(ptr noundef %chip, i32 noundef %clk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cur_clk = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 12
  %0 = ptrtoint ptr %cur_clk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cur_clk, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %clk)
  %cmp = icmp eq i32 %1, %clk
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = zext i32 %clk to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %clk, label %do.body169 [
    i32 1, label %do.body
    i32 2, label %do.body8
    i32 3, label %do.body26
    i32 4, label %do.body44
    i32 5, label %do.body62
    i32 6, label %do.body80
    i32 7, label %do.body98
    i32 8, label %do.body116
    i32 9, label %do.body134
    i32 10, label %do.body152
  ]

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @switch_normal_clock.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@switch_normal_clock, %if.then4)) #7
          to label %sw.epilog [label %if.then4], !srcloc !110

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %chip, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @switch_normal_clock.__UNIQUE_ID_ddebug304, ptr noundef %dev.i, ptr noundef nonnull @.str.24) #7
  br label %sw.epilog

do.body8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @switch_normal_clock.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@switch_normal_clock, %if.then20)) #7
          to label %sw.epilog [label %if.then20], !srcloc !110

if.then20:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %chip, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %dev.i300 = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @switch_normal_clock.__UNIQUE_ID_ddebug305, ptr noundef %dev.i300, ptr noundef nonnull @.str.25) #7
  br label %sw.epilog

do.body26:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @switch_normal_clock.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@switch_normal_clock, %if.then38)) #7
          to label %sw.epilog [label %if.then38], !srcloc !110

if.then38:                                        ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %chip, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %dev.i301 = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @switch_normal_clock.__UNIQUE_ID_ddebug306, ptr noundef %dev.i301, ptr noundef nonnull @.str.26) #7
  br label %sw.epilog

do.body44:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @switch_normal_clock.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@switch_normal_clock, %if.then56)) #7
          to label %sw.epilog [label %if.then56], !srcloc !110

if.then56:                                        ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %chip, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %dev.i302 = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @switch_normal_clock.__UNIQUE_ID_ddebug307, ptr noundef %dev.i302, ptr noundef nonnull @.str.27) #7
  br label %sw.epilog

do.body62:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @switch_normal_clock.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@switch_normal_clock, %if.then74)) #7
          to label %sw.epilog [label %if.then74], !srcloc !110

if.then74:                                        ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %chip, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %dev.i303 = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @switch_normal_clock.__UNIQUE_ID_ddebug308, ptr noundef %dev.i303, ptr noundef nonnull @.str.28) #7
  br label %sw.epilog

do.body80:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @switch_normal_clock.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@switch_normal_clock, %if.then92)) #7
          to label %sw.epilog [label %if.then92], !srcloc !110

if.then92:                                        ; preds = %do.body80
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %chip, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 4
  %dev.i304 = getelementptr inbounds %struct.pci_dev, ptr %26, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @switch_normal_clock.__UNIQUE_ID_ddebug309, ptr noundef %dev.i304, ptr noundef nonnull @.str.29) #7
  br label %sw.epilog

do.body98:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @switch_normal_clock.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@switch_normal_clock, %if.then110)) #7
          to label %sw.epilog [label %if.then110], !srcloc !110

if.then110:                                       ; preds = %do.body98
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %chip, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 4
  %dev.i305 = getelementptr inbounds %struct.pci_dev, ptr %30, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @switch_normal_clock.__UNIQUE_ID_ddebug310, ptr noundef %dev.i305, ptr noundef nonnull @.str.30) #7
  br label %sw.epilog

do.body116:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @switch_normal_clock.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@switch_normal_clock, %if.then128)) #7
          to label %sw.epilog [label %if.then128], !srcloc !110

if.then128:                                       ; preds = %do.body116
  call void @__sanitizer_cov_trace_pc() #9
  %31 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %chip, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 4
  %dev.i306 = getelementptr inbounds %struct.pci_dev, ptr %34, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @switch_normal_clock.__UNIQUE_ID_ddebug311, ptr noundef %dev.i306, ptr noundef nonnull @.str.31) #7
  br label %sw.epilog

do.body134:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @switch_normal_clock.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@switch_normal_clock, %if.then146)) #7
          to label %sw.epilog [label %if.then146], !srcloc !110

if.then146:                                       ; preds = %do.body134
  call void @__sanitizer_cov_trace_pc() #9
  %35 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %chip, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %36, align 4
  %dev.i307 = getelementptr inbounds %struct.pci_dev, ptr %38, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @switch_normal_clock.__UNIQUE_ID_ddebug312, ptr noundef %dev.i307, ptr noundef nonnull @.str.32) #7
  br label %sw.epilog

do.body152:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @switch_normal_clock.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@switch_normal_clock, %if.then164)) #7
          to label %sw.epilog [label %if.then164], !srcloc !110

if.then164:                                       ; preds = %do.body152
  call void @__sanitizer_cov_trace_pc() #9
  %39 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %chip, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %40, align 4
  %dev.i308 = getelementptr inbounds %struct.pci_dev, ptr %42, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @switch_normal_clock.__UNIQUE_ID_ddebug313, ptr noundef %dev.i308, ptr noundef nonnull @.str.33) #7
  br label %sw.epilog

do.body169:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @switch_normal_clock.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@switch_normal_clock, %if.then181)) #7
          to label %cleanup [label %if.then181], !srcloc !110

if.then181:                                       ; preds = %do.body169
  call void @__sanitizer_cov_trace_pc() #9
  %43 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %chip, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %44, align 4
  %dev.i309 = getelementptr inbounds %struct.pci_dev, ptr %46, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @switch_normal_clock.__UNIQUE_ID_ddebug314, ptr noundef %dev.i309, ptr noundef nonnull @.str.34, i32 noundef %clk) #7
  br label %cleanup

sw.epilog:                                        ; preds = %if.then164, %do.body152, %if.then146, %do.body134, %if.then128, %do.body116, %if.then110, %do.body98, %if.then92, %do.body80, %if.then74, %do.body62, %if.then56, %do.body44, %if.then38, %do.body26, %if.then20, %do.body8, %if.then4, %do.body
  %mcu_cnt.0 = phi i8 [ 7, %if.then4 ], [ 7, %if.then20 ], [ 7, %if.then38 ], [ 6, %if.then56 ], [ 6, %if.then74 ], [ 5, %if.then92 ], [ 5, %if.then110 ], [ 5, %if.then128 ], [ 4, %if.then146 ], [ 4, %if.then164 ], [ 7, %do.body ], [ 7, %do.body8 ], [ 7, %do.body26 ], [ 6, %do.body44 ], [ 6, %do.body62 ], [ 5, %do.body80 ], [ 5, %do.body98 ], [ 5, %do.body116 ], [ 4, %do.body134 ], [ 4, %do.body152 ]
  %div.0 = phi i8 [ 48, %if.then4 ], [ 48, %if.then20 ], [ 32, %if.then38 ], [ 32, %if.then56 ], [ 32, %if.then74 ], [ 16, %if.then92 ], [ 16, %if.then110 ], [ 16, %if.then128 ], [ 16, %if.then146 ], [ 16, %if.then164 ], [ 48, %do.body ], [ 48, %do.body8 ], [ 32, %do.body26 ], [ 32, %do.body44 ], [ 32, %do.body62 ], [ 16, %do.body80 ], [ 16, %do.body98 ], [ 16, %do.body116 ], [ 16, %do.body134 ], [ 16, %do.body152 ]
  %sel.0 = phi i8 [ 0, %if.then4 ], [ 2, %if.then20 ], [ 0, %if.then38 ], [ 1, %if.then56 ], [ 2, %if.then74 ], [ 0, %if.then92 ], [ 1, %if.then110 ], [ 2, %if.then128 ], [ 3, %if.then146 ], [ 4, %if.then164 ], [ 0, %do.body ], [ 2, %do.body8 ], [ 0, %do.body26 ], [ 1, %do.body44 ], [ 2, %do.body62 ], [ 0, %do.body80 ], [ 1, %do.body98 ], [ 2, %do.body116 ], [ 3, %do.body134 ], [ 4, %do.body152 ]
  %call186 = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -1022, i8 noundef zeroext -1, i8 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call186)
  %tobool187.not = icmp eq i32 %call186, 0
  br i1 %tobool187.not, label %if.end200, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end200:                                        ; preds = %sw.epilog
  %or = or i8 %div.0, %mcu_cnt.0
  %call203 = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -1021, i8 noundef zeroext -1, i8 noundef zeroext %or) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call203)
  %tobool204.not = icmp eq i32 %call203, 0
  br i1 %tobool204.not, label %if.end206, label %if.end200.cleanup_crit_edge

if.end200.cleanup_crit_edge:                      ; preds = %if.end200
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end206:                                        ; preds = %if.end200
  %call207 = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -1020, i8 noundef zeroext -1, i8 noundef zeroext %sel.0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call207)
  %tobool208.not = icmp eq i32 %call207, 0
  br i1 %tobool208.not, label %if.end221, label %if.end206.cleanup_crit_edge

if.end206.cleanup_crit_edge:                      ; preds = %if.end206
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end221:                                        ; preds = %if.end206
  %call222 = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -1022, i8 noundef zeroext -1, i8 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call222)
  %tobool223.not = icmp eq i32 %call222, 0
  br i1 %tobool223.not, label %if.end225, label %if.end221.cleanup_crit_edge

if.end221.cleanup_crit_edge:                      ; preds = %if.end221
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end225:                                        ; preds = %if.end221
  call void @__sanitizer_cov_trace_pc() #9
  %47 = ptrtoint ptr %cur_clk to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %clk, ptr %cur_clk, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end225, %if.end221.cleanup_crit_edge, %if.end206.cleanup_crit_edge, %if.end200.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %if.then181, %do.body169, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end225 ], [ 0, %entry.cleanup_crit_edge ], [ 1, %if.then181 ], [ %call186, %sw.epilog.cleanup_crit_edge ], [ %call203, %if.end200.cleanup_crit_edge ], [ %call207, %if.end206.cleanup_crit_edge ], [ %call222, %if.end221.cleanup_crit_edge ], [ 1, %do.body169 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @trans_dma_enable(i32 noundef %dir, ptr noundef %chip, i32 noundef %byte_cnt, i8 noundef zeroext %pack_size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %pack_size)
  %cmp = icmp ugt i8 %pack_size, 48
  %spec.store.select = select i1 %cmp, i8 32, i8 %pack_size
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -479, i8 noundef zeroext -128, i8 noundef zeroext -128) #7
  %shr = lshr i32 %byte_cnt, 24
  %conv2 = trunc i32 %shr to i8
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -469, i8 noundef zeroext -1, i8 noundef zeroext %conv2) #7
  %shr3 = lshr i32 %byte_cnt, 16
  %conv4 = trunc i32 %shr3 to i8
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -470, i8 noundef zeroext -1, i8 noundef zeroext %conv4) #7
  %shr5 = lshr i32 %byte_cnt, 8
  %conv6 = trunc i32 %shr5 to i8
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -471, i8 noundef zeroext -1, i8 noundef zeroext %conv6) #7
  %conv7 = trunc i32 %byte_cnt to i8
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -472, i8 noundef zeroext -1, i8 noundef zeroext %conv7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %dir)
  %cmp8 = icmp eq i32 %dir, 2
  %. = select i1 %cmp8, i8 3, i8 1
  %0 = or i8 %spec.store.select, %.
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -468, i8 noundef zeroext 51, i8 noundef zeroext %0) #7
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -677, i8 noundef zeroext 1, i8 noundef zeroext 0) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @enable_card_clock(ptr noundef %chip, i8 noundef zeroext %card) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %and = lshr i8 %card, 3
  %0 = and i8 %and, 2
  %1 = and i8 %card, 12
  %2 = or i8 %1, %0
  %call = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -663, i8 noundef zeroext %2, i8 noundef zeroext %2) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @card_power_on(ptr noundef %chip, i8 noundef zeroext %card) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lun_mode = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 67
  %0 = ptrtoint ptr %lun_mode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %lun_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp = icmp eq i8 %1, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %card)
  %cmp4 = icmp eq i8 %card, 8
  %or.cond = and i1 %cmp4, %cmp
  %mask.0 = select i1 %or.cond, i8 12, i8 3
  %val1.0 = select i1 %or.cond, i8 4, i8 1
  %ci = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 6
  %2 = ptrtoint ptr %ci to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %ci, align 4
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -688, i8 noundef zeroext %mask.0, i8 noundef zeroext %val1.0) #7
  %call = tail call i32 @rtsx_send_cmd(ptr noundef %chip, i8 noundef zeroext 0, i32 noundef 100) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp6.not = icmp eq i32 %call, 0
  br i1 %cmp6.not, label %cond.false15, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cond.false15:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %pmos_pwr_on_interval = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 127
  %3 = ptrtoint ptr %pmos_pwr_on_interval to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %pmos_pwr_on_interval, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %5(i32 noundef %4) #7
  %6 = ptrtoint ptr %ci to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %ci, align 4
  tail call void @rtsx_add_cmd(ptr noundef %chip, i8 noundef zeroext 1, i16 noundef zeroext -688, i8 noundef zeroext %mask.0, i8 noundef zeroext 0) #7
  %call19 = tail call i32 @rtsx_send_cmd(ptr noundef %chip, i8 noundef zeroext 0, i32 noundef 100) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20.not = icmp ne i32 %call19, 0
  %. = zext i1 %cmp20.not to i32
  br label %cleanup

cleanup:                                          ; preds = %cond.false15, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup_crit_edge ], [ %., %cond.false15 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @card_rw(ptr noundef %srb, ptr noundef %chip, i32 noundef %sec_addr, i16 noundef zeroext %sec_cnt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %lun2 = getelementptr inbounds %struct.scsi_device, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %lun2 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %lun2, align 8
  %conv = trunc i64 %3 to i32
  %arrayidx = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 32, i32 %conv
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %rw_need_retry = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 17
  %cur_card = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 13
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %i.083 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.inc.for.body_crit_edge ]
  %6 = ptrtoint ptr %rw_need_retry to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %rw_need_retry, align 4
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  %call = tail call i32 %8(ptr noundef %srb, ptr noundef %chip, i32 noundef %sec_addr, i16 noundef zeroext %sec_cnt) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp6.not = icmp eq i32 %call, 0
  br i1 %cmp6.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %for.body
  %call9 = tail call i32 @rtsx_check_chip_exist(ptr noundef %chip) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10.not = icmp eq i32 %call9, 0
  br i1 %cmp10.not, label %if.end13, label %if.then12

if.then12:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @rtsx_release_chip(ptr noundef %chip) #7
  br label %cleanup

if.end13:                                         ; preds = %if.then8
  %9 = ptrtoint ptr %cur_card to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cur_card, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %10, label %do.body.i [
    i32 4, label %if.end13.if.end13.i_crit_edge
    i32 8, label %if.then2.i
    i32 16, label %if.then5.i
  ]

if.end13.if.end13.i_crit_edge:                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13.i

if.then2.i:                                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13.i

if.then5.i:                                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13.i

do.body.i:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @detect_card_cd.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@card_rw, %detect_card_cd.exit.thread)) #7
          to label %detect_card_cd.exit [label %detect_card_cd.exit.thread], !srcloc !110

detect_card_cd.exit.thread:                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %chip, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @detect_card_cd.__UNIQUE_ID_ddebug317, ptr noundef %dev.i.i, ptr noundef nonnull @.str.39, i32 noundef %10) #7
  br label %cleanup

if.end13.i:                                       ; preds = %if.then5.i, %if.then2.i, %if.end13.if.end13.i_crit_edge
  %card_cd.0.i = phi i32 [ 131072, %if.then2.i ], [ 262144, %if.then5.i ], [ 65536, %if.end13.if.end13.i_crit_edge ]
  %16 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %chip, align 4
  %remap_addr.i = getelementptr inbounds %struct.rtsx_dev, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %19, i32 20
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !112
  %21 = shl i32 %20, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !113
  %and.i = and i32 %21, %card_cd.0.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool15.not.i = icmp eq i32 %and.i, 0
  %..i = zext i1 %tobool15.not.i to i32
  br label %detect_card_cd.exit

detect_card_cd.exit:                              ; preds = %if.end13.i, %do.body.i
  %retval.0.i70 = phi i32 [ %..i, %if.end13.i ], [ 1, %do.body.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i70)
  %cmp15.not = icmp eq i32 %retval.0.i70, 0
  br i1 %cmp15.not, label %if.end18, label %detect_card_cd.exit.cleanup_crit_edge

detect_card_cd.exit.cleanup_crit_edge:            ; preds = %detect_card_cd.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end18:                                         ; preds = %detect_card_cd.exit
  %22 = ptrtoint ptr %rw_need_retry to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rw_need_retry, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool20.not = icmp eq i32 %23, 0
  br i1 %tobool20.not, label %do.body, label %do.body32

do.body:                                          ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @card_rw.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@card_rw, %if.then26)) #7
          to label %cleanup [label %if.then26], !srcloc !110

if.then26:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %chip, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %27, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @card_rw.__UNIQUE_ID_ddebug315, ptr noundef %dev.i, ptr noundef nonnull @.str.36) #7
  br label %cleanup

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %rw_need_retry to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %rw_need_retry, align 4
  br label %cleanup

do.body32:                                        ; preds = %if.end18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @card_rw.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@card_rw, %if.then44)) #7
          to label %for.inc [label %if.then44], !srcloc !110

if.then44:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %chip, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 4
  %dev.i71 = getelementptr inbounds %struct.pci_dev, ptr %32, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @card_rw.__UNIQUE_ID_ddebug316, ptr noundef %dev.i71, ptr noundef nonnull @.str.37, i32 noundef %i.083) #7
  br label %for.inc

for.inc:                                          ; preds = %if.then44, %do.body32
  %inc = add nuw nsw i32 %i.083, 1
  %exitcond.not = icmp eq i32 %inc, 3
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.else, %if.then26, %do.body, %detect_card_cd.exit.cleanup_crit_edge, %detect_card_cd.exit.thread, %if.then12, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then12 ], [ 1, %entry.cleanup_crit_edge ], [ %call, %if.then26 ], [ 0, %if.else ], [ 1, %detect_card_cd.exit.thread ], [ %call, %do.body ], [ %call, %for.inc.cleanup_crit_edge ], [ 1, %detect_card_cd.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtsx_check_chip_exist(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtsx_release_chip(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @detect_card_cd(ptr nocapture noundef readonly %chip, i32 noundef %card) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %card to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %card, label %do.body [
    i32 4, label %entry.if.end13_crit_edge
    i32 8, label %if.then2
    i32 16, label %if.then5
  ]

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.then2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.then5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @detect_card_cd.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@detect_card_cd, %if.then9)) #7
          to label %cleanup [label %if.then9], !srcloc !110

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %1 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %chip, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @detect_card_cd.__UNIQUE_ID_ddebug317, ptr noundef %dev.i, ptr noundef nonnull @.str.39, i32 noundef %card) #7
  br label %cleanup

if.end13:                                         ; preds = %if.then5, %if.then2, %entry.if.end13_crit_edge
  %card_cd.0 = phi i32 [ 131072, %if.then2 ], [ 262144, %if.then5 ], [ 65536, %entry.if.end13_crit_edge ]
  %5 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %chip, align 4
  %remap_addr = getelementptr inbounds %struct.rtsx_dev, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %remap_addr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %remap_addr, align 4
  %add.ptr = getelementptr i8, ptr %8, i32 20
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !112
  %10 = shl i32 %9, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !113
  %and = and i32 %10, %card_cd.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool15.not = icmp eq i32 %and, 0
  %. = zext i1 %tobool15.not to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.then9, %do.body
  %retval.0 = phi i32 [ 1, %if.then9 ], [ %., %if.end13 ], [ 1, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @card_share_mode(ptr noundef %chip, i32 noundef %card) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %product_id = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 58
  %0 = ptrtoint ptr %product_id to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %product_id, align 2
  %2 = zext i16 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.42)
  switch i16 %1, label %entry.cleanup_crit_edge [
    i16 21000, label %if.then
    i16 21128, label %if.then21
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %entry
  %3 = zext i32 %card to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %card, label %if.then.cleanup_crit_edge [
    i32 4, label %if.then.if.end39_crit_edge
    i32 8, label %if.then8
    i32 16, label %if.then12
  ]

if.then.if.end39_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then8:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39

if.then12:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39

if.then21:                                        ; preds = %entry
  %4 = zext i32 %card to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %card, label %if.then21.cleanup_crit_edge [
    i32 4, label %if.then21.if.end39_crit_edge
    i32 8, label %if.then28
    i32 16, label %if.then32
  ]

if.then21.if.end39_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39

if.then21.cleanup_crit_edge:                      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then28:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39

if.then32:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39

if.end39:                                         ; preds = %if.then32, %if.then28, %if.then21.if.end39_crit_edge, %if.then12, %if.then8, %if.then.if.end39_crit_edge
  %mask.0 = phi i8 [ 15, %if.then8 ], [ 15, %if.then12 ], [ 3, %if.then28 ], [ 3, %if.then32 ], [ 15, %if.then.if.end39_crit_edge ], [ 3, %if.then21.if.end39_crit_edge ]
  %value.0 = phi i8 [ 8, %if.then8 ], [ 2, %if.then12 ], [ 2, %if.then28 ], [ 0, %if.then32 ], [ 4, %if.then.if.end39_crit_edge ], [ 1, %if.then21.if.end39_crit_edge ]
  %call = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -686, i8 noundef zeroext %mask.0, i8 noundef zeroext %value.0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end39, %if.then21.cleanup_crit_edge, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then.cleanup_crit_edge ], [ 1, %if.then21.cleanup_crit_edge ], [ 1, %entry.cleanup_crit_edge ], [ %call, %if.end39 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @select_card(ptr noundef %chip, i32 noundef %card) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cur_card = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 13
  %0 = ptrtoint ptr %cur_card to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cur_card, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %card)
  %cmp.not = icmp eq i32 %1, %card
  br i1 %cmp.not, label %entry.if.end23_crit_edge, label %if.then

entry.if.end23_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

if.then:                                          ; preds = %entry
  %2 = zext i32 %card to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %card, label %if.then.cleanup24_crit_edge [
    i32 4, label %if.then.if.end15_crit_edge
    i32 8, label %if.then5
    i32 16, label %if.then8
    i32 128, label %if.then11
  ]

if.then.if.end15_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

if.then.cleanup24_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup24

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

if.then8:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

if.then11:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

if.end15:                                         ; preds = %if.then11, %if.then8, %if.then5, %if.then.if.end15_crit_edge
  %mod.0 = phi i8 [ 3, %if.then5 ], [ 1, %if.then8 ], [ 4, %if.then11 ], [ 2, %if.then.if.end15_crit_edge ]
  %call = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -676, i8 noundef zeroext 7, i8 noundef zeroext %mod.0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end17, label %if.end15.cleanup24_crit_edge

if.end15.cleanup24_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup24

if.end17:                                         ; preds = %if.end15
  %3 = ptrtoint ptr %cur_card to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %card, ptr %cur_card, align 4
  %product_id.i = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 58
  %4 = ptrtoint ptr %product_id.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %product_id.i, align 2
  %6 = zext i16 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.46)
  switch i16 %5, label %if.end17.cleanup24_crit_edge [
    i16 21000, label %if.then.i
    i16 21128, label %if.then21.i
  ]

if.end17.cleanup24_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup24

if.then.i:                                        ; preds = %if.end17
  %7 = zext i32 %card to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.47)
  switch i32 %card, label %if.then.i.cleanup24_crit_edge [
    i32 4, label %if.then.i.cleanup_crit_edge
    i32 8, label %if.then8.i
    i32 16, label %if.then12.i
  ]

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i.cleanup24_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup24

if.then8.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then12.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then21.i:                                      ; preds = %if.end17
  %8 = zext i32 %card to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.48)
  switch i32 %card, label %if.then21.i.cleanup24_crit_edge [
    i32 4, label %if.then21.i.cleanup_crit_edge
    i32 8, label %if.then28.i
    i32 16, label %if.then32.i
  ]

if.then21.i.cleanup_crit_edge:                    ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then21.i.cleanup24_crit_edge:                  ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup24

if.then28.i:                                      ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then32.i:                                      ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %if.then32.i, %if.then28.i, %if.then21.i.cleanup_crit_edge, %if.then12.i, %if.then8.i, %if.then.i.cleanup_crit_edge
  %mask.0.i = phi i8 [ 15, %if.then8.i ], [ 15, %if.then12.i ], [ 3, %if.then28.i ], [ 3, %if.then32.i ], [ 15, %if.then.i.cleanup_crit_edge ], [ 3, %if.then21.i.cleanup_crit_edge ]
  %value.0.i = phi i8 [ 8, %if.then8.i ], [ 2, %if.then12.i ], [ 2, %if.then28.i ], [ 0, %if.then32.i ], [ 4, %if.then.i.cleanup_crit_edge ], [ 1, %if.then21.i.cleanup_crit_edge ]
  %call.i = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -686, i8 noundef zeroext %mask.0.i, i8 noundef zeroext %value.0.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp20.not = icmp eq i32 %call.i, 0
  br i1 %cmp20.not, label %cleanup.if.end23_crit_edge, label %cleanup.cleanup24_crit_edge

cleanup.cleanup24_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup24

cleanup.if.end23_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

if.end23:                                         ; preds = %cleanup.if.end23_crit_edge, %entry.if.end23_crit_edge
  br label %cleanup24

cleanup24:                                        ; preds = %if.end23, %cleanup.cleanup24_crit_edge, %if.then21.i.cleanup24_crit_edge, %if.then.i.cleanup24_crit_edge, %if.end17.cleanup24_crit_edge, %if.end15.cleanup24_crit_edge, %if.then.cleanup24_crit_edge
  %retval.1 = phi i32 [ 0, %if.end23 ], [ 1, %cleanup.cleanup24_crit_edge ], [ %call, %if.end15.cleanup24_crit_edge ], [ 1, %if.then.cleanup24_crit_edge ], [ 1, %if.then.i.cleanup24_crit_edge ], [ 1, %if.then21.i.cleanup24_crit_edge ], [ 1, %if.end17.cleanup24_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @toggle_gpio(ptr noundef %chip, i8 noundef zeroext %gpio) local_unnamed_addr #0 align 64 {
entry:
  %temp_reg = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %temp_reg) #7
  %0 = ptrtoint ptr %temp_reg to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %temp_reg, align 1, !annotation !111
  %call = call i32 @rtsx_read_register(ptr noundef %chip, i16 noundef zeroext -680, ptr noundef nonnull %temp_reg) #7
  %conv = zext i8 %gpio to i32
  %shl = shl nuw i32 1, %conv
  %1 = ptrtoint ptr %temp_reg to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %temp_reg, align 1
  %3 = trunc i32 %shl to i8
  %conv2 = xor i8 %2, %3
  store i8 %conv2, ptr %temp_reg, align 1
  %call3 = call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -680, i8 noundef zeroext -1, i8 noundef zeroext %conv2) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %temp_reg) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @turn_on_led(ptr noundef %chip, i8 noundef zeroext %gpio) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %product_id = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 58
  %0 = ptrtoint ptr %product_id to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %product_id, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 21128, i16 %1)
  %cmp = icmp eq i16 %1, 21128
  %conv2 = zext i8 %gpio to i32
  %shl = shl nuw i32 1, %conv2
  %conv3 = trunc i32 %shl to i8
  %conv3. = select i1 %cmp, i8 %conv3, i8 0
  %call10 = tail call i32 @rtsx_write_register(ptr noundef %chip, i16 noundef zeroext -680, i8 noundef zeroext %conv3, i8 noundef zeroext %conv3.) #7
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @check_card_exist(ptr nocapture noundef readonly %chip, i32 noundef %lun) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %card_exist = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 20
  %0 = ptrtoint ptr %card_exist to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %card_exist, align 1
  %arrayidx = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 35, i32 %lun
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %and3 = and i8 %3, %1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and3)
  %tobool.not = icmp ne i8 %and3, 0
  %. = zext i1 %tobool.not to i32
  ret i32 %.
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @check_card_ready(ptr nocapture noundef readonly %chip, i32 noundef %lun) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %card_ready = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 21
  %0 = ptrtoint ptr %card_ready to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %card_ready, align 2
  %arrayidx = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 35, i32 %lun
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %and3 = and i8 %3, %1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and3)
  %tobool.not = icmp ne i8 %and3, 0
  %. = zext i1 %tobool.not to i32
  ret i32 %.
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @check_card_wp(ptr nocapture noundef readonly %chip, i32 noundef %lun) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %card_wp = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 24
  %0 = ptrtoint ptr %card_wp to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %card_wp, align 1
  %arrayidx = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 35, i32 %lun
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %and3 = and i8 %3, %1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and3)
  %tobool.not = icmp ne i8 %and3, 0
  %. = zext i1 %tobool.not to i32
  ret i32 %.
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @get_lun_card(ptr nocapture noundef readonly %chip, i32 noundef %lun) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %card_ready = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 21
  %0 = ptrtoint ptr %card_ready to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %card_ready, align 2
  %arrayidx = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 35, i32 %lun
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %and31 = and i8 %3, %1
  %4 = zext i8 %and31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.49)
  switch i8 %and31, label %if.end23 [
    i8 16, label %entry.return_crit_edge
    i8 4, label %entry.return_crit_edge32
    i8 8, label %entry.return_crit_edge33
  ]

entry.return_crit_edge33:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge32:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end23:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

return:                                           ; preds = %if.end23, %entry.return_crit_edge, %entry.return_crit_edge32, %entry.return_crit_edge33
  %retval.0 = phi i8 [ 0, %if.end23 ], [ %and31, %entry.return_crit_edge ], [ %and31, %entry.return_crit_edge32 ], [ %and31, %entry.return_crit_edge33 ]
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @eject_card(ptr noundef %chip, i32 noundef %lun) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @do_remaining_work(ptr noundef %chip)
  %card_ready = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 21
  %0 = ptrtoint ptr %card_ready to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %card_ready, align 2
  %arrayidx = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 35, i32 %lun
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %and76 = and i8 %3, %1
  %4 = zext i8 %and76 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.50)
  switch i8 %and76, label %entry.if.end52_crit_edge [
    i8 4, label %if.then
    i8 16, label %if.then18
    i8 8, label %if.then39
  ]

entry.if.end52_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end52

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @release_sd_card(ptr noundef %chip) #7
  br label %if.end52.sink.split

if.then18:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call19 = tail call i32 @release_xd_card(ptr noundef %chip) #7
  br label %if.end52.sink.split

if.then39:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call40 = tail call i32 @release_ms_card(ptr noundef %chip) #7
  br label %if.end52.sink.split

if.end52.sink.split:                              ; preds = %if.then39, %if.then18, %if.then
  %5 = xor i8 %and76, -1
  %card_ejected = getelementptr inbounds %struct.rtsx_chip, ptr %chip, i32 0, i32 23
  %6 = ptrtoint ptr %card_ejected to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %card_ejected, align 4
  %8 = or i8 %7, %and76
  store i8 %8, ptr %card_ejected, align 4
  %9 = ptrtoint ptr %card_ready to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %card_ready, align 2
  %11 = and i8 %10, %5
  store i8 %11, ptr %card_ready, align 2
  %arrayidx29 = getelementptr %struct.rtsx_chip, ptr %chip, i32 0, i32 31, i32 %lun
  %12 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %arrayidx29, align 4
  br label %if.end52

if.end52:                                         ; preds = %if.end52.sink.split, %entry.if.end52_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind readonly }
attributes #6 = { argmemonly nofree nounwind readonly willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !15, !16, !17, !19, !20, !22, !23, !25, !27, !29, !31, !32, !33, !35, !36, !38, !39, !41, !42, !44, !45, !47, !48, !49, !51, !52, !54, !55, !57, !58, !59, !61, !62, !64, !65, !67, !68, !70, !71, !73, !74, !76, !77, !79, !80, !82, !83, !85, !86, !88, !89, !91, !92, !93, !95, !96, !98, !99}
!llvm.named.register.sp = !{!100}
!llvm.module.flags = !{!101, !102, !103, !104, !105, !106, !107, !108}
!llvm.ident = !{!109}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/staging/rts5208/rtsx_card.c", i32 87, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @try_to_switch_sdio_ctrl.__UNIQUE_ID_ddebug287, !1, !"__UNIQUE_ID_ddebug287", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/staging/rts5208/rtsx_card.c", i32 123, i32 4}
!8 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @dynamic_configure_sdio_aspm.__UNIQUE_ID_ddebug288, !7, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/staging/rts5208/rtsx_card.c", i32 130, i32 4}
!12 = !{ptr @dynamic_configure_sdio_aspm.__UNIQUE_ID_ddebug289, !11, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/staging/rts5208/rtsx_card.c", i32 142, i32 2}
!15 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @do_reset_sd_card.__UNIQUE_ID_ddebug290, !14, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!17 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/staging/rts5208/rtsx_card.c", i32 196, i32 2}
!19 = !{ptr @do_reset_xd_card.__UNIQUE_ID_ddebug291, !18, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/staging/rts5208/rtsx_card.c", i32 244, i32 2}
!22 = !{ptr @do_reset_ms_card.__UNIQUE_ID_ddebug292, !21, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!23 = distinct !{null, !24, !"__already_done", i1 false, i1 false}
!24 = !{!"../drivers/staging/rts5208/rtsx_card.c", i32 412, i32 3}
!25 = distinct !{null, !26, !"__already_done", i1 false, i1 false}
!26 = !{!"../drivers/staging/rts5208/rtsx_card.c", i32 421, i32 3}
!27 = distinct !{null, !28, !"__already_done", i1 false, i1 false}
!28 = !{!"../drivers/staging/rts5208/rtsx_card.c", i32 430, i32 3}
!29 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/staging/rts5208/rtsx_card.c", i32 517, i32 3}
!31 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @rtsx_init_cards.__UNIQUE_ID_ddebug296, !30, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!33 = !{ptr @.str.15, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/staging/rts5208/rtsx_card.c", i32 541, i32 3}
!35 = !{ptr @rtsx_init_cards.__UNIQUE_ID_ddebug297, !34, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/staging/rts5208/rtsx_card.c", i32 600, i32 3}
!38 = !{ptr @rtsx_init_cards.__UNIQUE_ID_ddebug298, !37, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!39 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/staging/rts5208/rtsx_card.c", i32 608, i32 3}
!41 = !{ptr @rtsx_init_cards.__UNIQUE_ID_ddebug299, !40, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!42 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/staging/rts5208/rtsx_card.c", i32 615, i32 3}
!44 = !{ptr @rtsx_init_cards.__UNIQUE_ID_ddebug300, !43, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!45 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/staging/rts5208/rtsx_card.c", i32 636, i32 2}
!47 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @switch_ssc_clock.__UNIQUE_ID_ddebug301, !46, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!49 = !{ptr @.str.21, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/staging/rts5208/rtsx_card.c", i32 651, i32 2}
!51 = !{ptr @switch_ssc_clock.__UNIQUE_ID_ddebug302, !50, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!52 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/staging/rts5208/rtsx_card.c", i32 662, i32 2}
!54 = !{ptr @switch_ssc_clock.__UNIQUE_ID_ddebug303, !53, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!55 = !{ptr @.str.23, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/staging/rts5208/rtsx_card.c", i32 703, i32 3}
!57 = !{ptr @.str.24, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @switch_normal_clock.__UNIQUE_ID_ddebug304, !56, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!59 = !{ptr @.str.25, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/staging/rts5208/rtsx_card.c", i32 710, i32 3}
!61 = !{ptr @switch_normal_clock.__UNIQUE_ID_ddebug305, !60, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!62 = !{ptr @.str.26, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/staging/rts5208/rtsx_card.c", i32 717, i32 3}
!64 = !{ptr @switch_normal_clock.__UNIQUE_ID_ddebug306, !63, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!65 = !{ptr @.str.27, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/staging/rts5208/rtsx_card.c", i32 724, i32 3}
!67 = !{ptr @switch_normal_clock.__UNIQUE_ID_ddebug307, !66, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!68 = !{ptr @.str.28, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/staging/rts5208/rtsx_card.c", i32 731, i32 3}
!70 = !{ptr @switch_normal_clock.__UNIQUE_ID_ddebug308, !69, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!71 = !{ptr @.str.29, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/staging/rts5208/rtsx_card.c", i32 738, i32 3}
!73 = !{ptr @switch_normal_clock.__UNIQUE_ID_ddebug309, !72, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!74 = !{ptr @.str.30, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/staging/rts5208/rtsx_card.c", i32 745, i32 3}
!76 = !{ptr @switch_normal_clock.__UNIQUE_ID_ddebug310, !75, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!77 = !{ptr @.str.31, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/staging/rts5208/rtsx_card.c", i32 752, i32 3}
!79 = !{ptr @switch_normal_clock.__UNIQUE_ID_ddebug311, !78, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!80 = !{ptr @.str.32, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/staging/rts5208/rtsx_card.c", i32 759, i32 3}
!82 = !{ptr @switch_normal_clock.__UNIQUE_ID_ddebug312, !81, !"__UNIQUE_ID_ddebug312", i1 false, i1 false}
!83 = !{ptr @.str.33, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/staging/rts5208/rtsx_card.c", i32 766, i32 3}
!85 = !{ptr @switch_normal_clock.__UNIQUE_ID_ddebug313, !84, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!86 = !{ptr @.str.34, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/staging/rts5208/rtsx_card.c", i32 773, i32 3}
!88 = !{ptr @switch_normal_clock.__UNIQUE_ID_ddebug314, !87, !"__UNIQUE_ID_ddebug314", i1 false, i1 false}
!89 = !{ptr @.str.35, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/staging/rts5208/rtsx_card.c", i32 963, i32 5}
!91 = !{ptr @.str.36, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @card_rw.__UNIQUE_ID_ddebug315, !90, !"__UNIQUE_ID_ddebug315", i1 false, i1 false}
!93 = !{ptr @.str.37, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/staging/rts5208/rtsx_card.c", i32 971, i32 3}
!95 = !{ptr @card_rw.__UNIQUE_ID_ddebug316, !94, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!96 = !{ptr @.str.38, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/staging/rts5208/rtsx_card.c", i32 1084, i32 3}
!98 = !{ptr @.str.39, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @detect_card_cd.__UNIQUE_ID_ddebug317, !97, !"__UNIQUE_ID_ddebug317", i1 false, i1 false}
!100 = !{!"sp"}
!101 = !{i32 1, !"wchar_size", i32 2}
!102 = !{i32 1, !"min_enum_size", i32 4}
!103 = !{i32 8, !"branch-target-enforcement", i32 0}
!104 = !{i32 8, !"sign-return-address", i32 0}
!105 = !{i32 8, !"sign-return-address-all", i32 0}
!106 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!107 = !{i32 7, !"uwtable", i32 1}
!108 = !{i32 7, !"frame-pointer", i32 2}
!109 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!110 = !{i64 2148297139, i64 2148297144, i64 2148297157, i64 2148297201, i64 2148297235, i64 2148297256}
!111 = !{!"auto-init"}
!112 = !{i64 5973806}
!113 = !{i64 2153514155}
!114 = !{i64 2155210900}
!115 = !{i64 2155216121}
!116 = !{i64 2155221342}
